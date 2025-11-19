uint64_t sub_2529439A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252943C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 56))(v7, a1, a2, 0, MEMORY[0x277D84F90], 0, 0, a3, a4);
  result = sub_252927BEC(v7, a5);
  *(a5 + 40) = 0;
  return result;
}

uint64_t sub_252943C9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D18);
  sub_252CC3D90(0xD000000000000031, 0x8000000252E6A180, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  v7 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D47140]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C130;
  *(v9 + 32) = v8;
  sub_252947E10();
  v10 = v8;
  v11 = sub_252E37254();

  [v7 setViews_];

  [v7 setDialogPhase_];
  [v7 setTemporary_];
  v12 = sub_252E33C44();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_252E34204();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14 = MEMORY[0x277D5C1D8];
  a1[3] = v13;
  a1[4] = v14;
  __swift_allocate_boxed_opaque_existential_0(a1);
  MEMORY[0x2530A9F60](v7, v5, MEMORY[0x277D84F90], v16);

  sub_25293847C(v16, &qword_27F5403A0, &unk_252E3CE30);
  return sub_25293847C(v5, &qword_27F540390, &qword_252E3C448);
}

uint64_t sub_252943F48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v87 = a4;
  v89 = a1;
  v8 = sub_252E32F04();
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v90 = v8;
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v84 = sub_252E36F04();
  v83 = sub_252E36F04();
  v15 = sub_252E36F04();
  v16 = [objc_opt_self() 0x1FB4263F8];
  v86 = a2;
  v17 = v16;

  v85 = a3;
  v18 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_252E33844();
  v19 = sub_252E32E94();
  v21 = v20;
  v80 = *(v88 + 8);
  v81 = v88 + 8;
  v80(v11, v90);
  v94[0] = v19;
  v94[1] = v21;
  v93[0] = 45;
  v93[1] = 0xE100000000000000;
  v91 = 95;
  v92 = 0xE100000000000000;
  sub_252947DBC();
  sub_252E377B4();

  v22 = sub_252E36F04();

  v24 = v83;
  v23 = v84;
  v25 = [v14 localizedStringForKey:v84 table:v83 bundle:v17 languageCode:v22];

  a2 = v86;
  if (v25)
  {
    v26 = sub_252E36F34();
    v28 = v27;

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544D60);
    sub_252929E74(a5, v94);

    v30 = sub_252E36AC4();
    v31 = sub_252E374C4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_252BE2CE0(v26, v28, v93);
      *(v32 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      sub_252E33844();
      v34 = sub_252E32E94();
      v36 = v35;
      v80(v11, v90);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v37 = sub_252BE2CE0(v34, v36, v93);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_252917000, v30, v31, "Get localized string with label: %s for locale %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v33, -1, -1);
      v38 = v32;
      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
LABEL_7:
    v82 = a5;
    v39 = [v12 sharedInstance];
    if (v39)
    {
      v40 = v39;
      v41 = v89;
      v42 = sub_252E36F04();
      v43 = a2;
      v44 = sub_252E36F04();
      v45 = sub_252E36F04();
      v46 = [objc_opt_self() bundleWithIdentifier_];

      v47 = sub_252E36F04();
      v48 = [v40 localizedStringForKey:v42 table:v44 bundle:v46 languageCode:v47];

      a2 = v43;
      if (v48)
      {
        v26 = sub_252E36F34();
        v50 = v49;

        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v51 = sub_252E36AD4();
        __swift_project_value_buffer(v51, qword_27F544D60);
        sub_252929E74(v82, v94);

        v52 = sub_252E36AC4();
        v53 = sub_252E374D4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          LODWORD(v86) = v53;
          v55 = a2;
          v56 = v54;
          v87 = swift_slowAlloc();
          v93[0] = v87;
          *v56 = 136315394;
          *(v56 + 4) = sub_252BE2CE0(v41, v55, v93);
          *(v56 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          v57 = v11;
          sub_252E33844();
          v58 = sub_252E32E94();
          v60 = v59;
          (*(v88 + 8))(v57, v90);
          __swift_destroy_boxed_opaque_existential_1(v94);
          v61 = sub_252BE2CE0(v58, v60, v93);

          *(v56 + 14) = v61;
          _os_log_impl(&dword_252917000, v52, v86, "Unable to get localized string for %s label for locale: %s", v56, 0x16u);
          v62 = v87;
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v62, -1, -1);
          MEMORY[0x2530AED00](v56, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v94);
        }

        v30 = sub_252E36AC4();
        v75 = sub_252E374D4();

        if (!os_log_type_enabled(v30, v75))
        {
          goto LABEL_24;
        }

        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v94[0] = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_252BE2CE0(v26, v50, v94);
        _os_log_impl(&dword_252917000, v30, v75, "Use fallback en_US label: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x2530AED00](v77, -1, -1);
        v38 = v76;
LABEL_23:
        MEMORY[0x2530AED00](v38, -1, -1);
LABEL_24:

        return v26;
      }
    }

    v63 = v90;
    v64 = v88;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v65 = sub_252E36AD4();
    __swift_project_value_buffer(v65, qword_27F544D60);
    sub_252929E74(v82, v94);

    v66 = sub_252E36AC4();
    v67 = sub_252E374D4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = a2;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v93[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = sub_252BE2CE0(v89, v68, v93);
      *(v69 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      sub_252E33844();
      v71 = sub_252E32E94();
      v73 = v72;
      (*(v64 + 8))(v11, v63);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v74 = sub_252BE2CE0(v71, v73, v93);

      *(v69 + 14) = v74;
      _os_log_impl(&dword_252917000, v66, v67, "Unable to get localized string for %s label for locale: %s and en_US", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v70, -1, -1);
      MEMORY[0x2530AED00](v69, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v94);
    }

    return 0;
  }

  return v26;
}

id sub_25294495C()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
  sub_252E32E74();
  sub_252E32E24();
  (*(v1 + 8))(v4, v0);
  v6 = sub_252E36F04();

  [v5 setAceId_];

  v7 = sub_252E36F04();
  [v5 setDialogIdentifier_];

  v8 = sub_252E36F04();
  [v5 setText_];

  v9 = v5;
  [v9 setCanUseServerTTS_];
  v10 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  [v10 setDialogPhase_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C130;
  *(v11 + 32) = v9;
  sub_252947E10();
  v12 = sub_252E37254();

  [v10 setViews_];

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544D18);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6A360);
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E6A340);
  sub_252CC3D90(v15, v16, 0xD00000000000006ELL, 0x8000000252E6A1C0);

  return v10;
}

id sub_252944C78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252E32CA4();
  v5 = sub_252E32CB4();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(v3, 1, v5) != 1)
  {
    v7 = sub_252E32C74();
    (*(v6 + 8))(v3, v5);
  }

  [v4 setPunchOutUri_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403C0, &unk_252E3C470);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C3C0;
  v9 = *MEMORY[0x277D48B28];
  v10 = sub_252E36F34();
  v11 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = *MEMORY[0x277D48B20];
  v14 = sub_252E36F34();
  *(v8 + 88) = v11;
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  v16 = sub_252E37254();

  [v4 setLaunchOptions_];

  return v4;
}

uint64_t sub_252944E64@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v32 = a7;
  v11 = sub_252E33C84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (v31 - v19);
  if (a3)
  {
    v31[0] = a1;
    v31[1] = a2;
    v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v21 + 16), &v35);

    __swift_project_boxed_opaque_existential_1(&v35, v37);
    v22 = sub_252E338C4();
    v18 = __swift_destroy_boxed_opaque_existential_1(&v35);
    if (v22)
    {
      goto LABEL_5;
    }

    v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v23 + 16), &v35);

    __swift_project_boxed_opaque_existential_1(&v35, v37);
    v24 = sub_252E338F4();
    v18 = __swift_destroy_boxed_opaque_existential_1(&v35);
    if (v24 & 1) != 0 || (v25 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(), sub_252929E74((v25 + 16), &v35), , __swift_project_boxed_opaque_existential_1(&v35, v37), v26 = sub_252E338D4(), v18 = __swift_destroy_boxed_opaque_existential_1(&v35), (v26))
    {
LABEL_5:
      a1 = v31[0];
      goto LABEL_6;
    }

    v18 = sub_25297A2A8();
    a1 = v31[0];
    if (v18)
    {
      if (a4 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_14;
        }
      }

      else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:

        goto LABEL_6;
      }

      v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v30 + 16), &v35);

      sub_252946EB4(&v35);
      v18 = __swift_destroy_boxed_opaque_existential_1(&v35);
    }
  }

LABEL_6:
  a1(v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v27 = *v20;
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v20, v11);
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_2814B09D8);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6420746C75736552, 0xEF0A3A676F6C6169);
    sub_252E37AE4();
    sub_252CC4A5C(v35, v36, 1, 0xD00000000000006ELL, 0x8000000252E6A1C0);

    sub_252945BD8(v34, v32);

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_252945294@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_252E33C44();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E33C84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v33 - v19);
  a2(v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544D18);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E6A430);
    v41[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v42, v43, 0xD00000000000006ELL, 0x8000000252E6A1C0, 0xD00000000000001FLL, 0x8000000252E6A460, 224);

    return swift_willThrow();
  }

  else
  {
    v33 = v12;
    v34 = v8;
    (*(v12 + 32))(v15, v20, v11);
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_2814B09D8);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6420746C75736552, 0xEF0A3A676F6C6169);
    sub_252E37AE4();
    sub_252CC4A5C(v42, v43, 1, 0xD00000000000006ELL, 0x8000000252E6A1C0);

    sub_252CBDDD4();
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v24, qword_27F544D18);
    sub_252CC3D90(0xD000000000000032, 0x8000000252E6A480, 0xD00000000000006ELL, 0x8000000252E6A1C0);
    v25 = v36;
    sub_252A6097C(v35, v36);
    v26 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v26 + 16), &v42);

    v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v27 + 16), v41);

    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_252E33874();
    v28 = v38;
    v29 = v34;
    (*(v38 + 16))(v7, v25, v34);
    (*(v28 + 56))(v7, 0, 1, v29);
    v30 = sub_252E34204();
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    v31 = MEMORY[0x277D5C1D8];
    v32 = v37;
    v37[3] = v30;
    v32[4] = v31;
    __swift_allocate_boxed_opaque_existential_0(v32);
    sub_252E33A94();

    sub_25293847C(v39, &qword_27F5403A0, &unk_252E3CE30);
    sub_25293847C(v7, &qword_27F540390, &qword_252E3C448);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    (*(v28 + 8))(v25, v29);
    (*(v33 + 8))(v15, v11);
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }
}

uint64_t sub_2529458C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D18);
  sub_252CC3D90(0xD000000000000022, 0x8000000252E6A400, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  v9 = sub_25294495C();
  v10 = v9;
  v11 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  if (a1)
  {
    v23 = v9;
    v12 = sub_252944C78();
    MEMORY[0x2530AD700]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v11 = v26;
    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v24[0] = 0xD000000000000028;
    *(&v24[0] + 1) = 0x8000000252E6A3D0;
    v13 = v12;
    v14 = [v13 description];
    v15 = sub_252E36F34();
    v17 = v16;

    MEMORY[0x2530AD570](v15, v17);

    sub_252CC3D90(*&v24[0], *(&v24[0] + 1), 0xD00000000000006ELL, 0x8000000252E6A1C0);

    v10 = v23;
  }

  v18 = sub_252E33C44();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = sub_252E34204();
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v20 = MEMORY[0x277D5C1D8];
  a2[3] = v19;
  a2[4] = v20;
  __swift_allocate_boxed_opaque_existential_0(a2);
  MEMORY[0x2530A9F60](v10, v7, v11, v24);

  sub_25293847C(v24, &qword_27F5403A0, &unk_252E3CE30);
  return sub_25293847C(v7, &qword_27F540390, &qword_252E3C448);
}

void sub_252945BD8(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 16), &v23);

  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  sub_252E33874();
  v5 = sub_252E33994();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_252E33984();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v8 = sub_252E33974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C130;
  *(v9 + 32) = v8;
  v22 = v9;
  if (a1)
  {
    v10 = v8;
    v11 = sub_252944C78();
    MEMORY[0x2530AD700]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D18);
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v23 = 0xD000000000000028;
    *(&v23 + 1) = 0x8000000252E6A3D0;
    v13 = v11;
    v14 = [v13 description];
    v15 = sub_252E36F34();
    v17 = v16;

    MEMORY[0x2530AD570](v15, v17);

    sub_252CC3D90(v23, *(&v23 + 1), 0xD00000000000006ELL, 0x8000000252E6A1C0);
  }

  else
  {
    v18 = v8;
  }

  v19 = sub_252E34204();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v20 = MEMORY[0x277D5C1D8];
  a2[3] = v19;
  a2[4] = v20;
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_252E341E4();
}

uint64_t sub_252945EB4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v51 = sub_252E33C44();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B0, &unk_252E3C460);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v48 - v20;
  v22 = sub_252E34204();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252929E74(a2, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
  v27 = swift_dynamicCast();
  v28 = *(v23 + 56);
  if (!v27)
  {
    v28(v21, 1, 1, v22);
    sub_25293847C(v21, &qword_27F5403B0, &unk_252E3C460);
    v33 = a2;
    v34 = a3;
    return sub_252929E74(v33, v34);
  }

  v49 = a3;
  v28(v21, 0, 1, v22);
  (*(v23 + 32))(v26, v21, v22);
  v29 = sub_252C91044(a1, 0);
  if (!*(v29 + 16))
  {
    (*(v23 + 8))(v26, v22);

    v33 = a2;
    v34 = v49;
    return sub_252929E74(v33, v34);
  }

  sub_252E341C4();
  v30 = v12;
  v31 = *(v12 + 48);
  v32 = v51;
  if (v31(v11, 1, v51) == 1)
  {
    sub_252E33C34();
    if (v31(v11, 1, v32) != 1)
    {
      sub_25293847C(v11, &qword_27F540390, &qword_252E3C448);
    }
  }

  else
  {
    (*(v30 + 32))(v17, v11, v32);
  }

  swift_bridgeObjectRetain_n();
  sub_252E33B94();
  v36 = sub_252E33B84();

  if (v36)
  {

    v37 = sub_252E33B74();
    if (*v38)
    {
      sub_25297AE58(v29);
    }

    else
    {
    }

    v37(&v53, 0);
  }

  else
  {
    sub_252E33B94();
  }

  if (qword_27F53F550 != -1)
  {
    swift_once();
  }

  v39 = sub_252E36AD4();
  v48 = __swift_project_value_buffer(v39, qword_27F544E98);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_252E379F4();

  v53 = 0xD000000000000028;
  v54 = 0x8000000252E6A3A0;
  v40 = *(v30 + 16);
  v40(v50, v17, v32);
  v41 = sub_252E36F94();
  v50 = v17;
  v42 = v32;
  v43 = v30;
  MEMORY[0x2530AD570](v41);

  sub_252CC3D90(v53, v54, 0xD00000000000006ELL, 0x8000000252E6A1C0);

  sub_252E341F4();
  sub_252E341B4();
  v44 = v52;
  v45 = v50;
  v40(v52, v50, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v46 = MEMORY[0x277D5C1D8];
  v47 = v49;
  v49[3] = v22;
  v47[4] = v46;
  __swift_allocate_boxed_opaque_existential_0(v47);
  sub_252E341D4();
  (*(v43 + 8))(v45, v42);
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_2529464C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403A8, &qword_252E3C458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = sub_252E33C44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B0, &unk_252E3C460);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  v23 = sub_252E34204();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252929E74(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
  v28 = swift_dynamicCast();
  v29 = *(v24 + 56);
  if (v28)
  {
    v29(v22, 0, 1, v23);
    (*(v24 + 32))(v27, v22, v23);
    sub_252E341C4();
    v30 = *(v15 + 48);
    if (v30(v13, 1, v14) == 1)
    {
      sub_252E33C34();
      if (v30(v13, 1, v14) != 1)
      {
        sub_25293847C(v13, &qword_27F540390, &qword_252E3C448);
      }
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
    }

    v32 = sub_252E34134();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v7, v37, v32);
    (*(v33 + 56))(v7, 0, 1, v32);
    sub_252E33BB4();
    sub_252E341F4();
    sub_252E341B4();
    v34 = v38;
    (*(v15 + 16))(v38, v18, v14);
    (*(v15 + 56))(v34, 0, 1, v14);
    v35 = MEMORY[0x277D5C1D8];
    v36 = v39;
    v39[3] = v23;
    v36[4] = v35;
    __swift_allocate_boxed_opaque_existential_0(v36);
    sub_252E341D4();
    (*(v15 + 8))(v18, v14);
    return (*(v24 + 8))(v27, v23);
  }

  else
  {
    v29(v22, 1, 1, v23);
    sub_25293847C(v22, &qword_27F5403B0, &unk_252E3C460);
    return sub_252929E74(a1, v39);
  }
}

uint64_t sub_2529469B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25294495C();
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E6A310, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  v4 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C3D0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = sub_252E34204();
  v7 = MEMORY[0x277D5C1D8];
  a1[3] = v6;
  a1[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_252E341E4();
}

uint64_t sub_252946AF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_252946B5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_252929E74(v3 + 16, a1);
}

uint64_t sub_252946BA8(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  sub_252927BEC(a1, v3 + 16);
  return swift_endAccess();
}

uint64_t (*sub_252946C04())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_252946C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_252929E74(v3 + 56, a1);
}

uint64_t sub_252946CA8(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  sub_252927BEC(a1, v3 + 56);
  return swift_endAccess();
}

uint64_t (*sub_252946D04())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_252946D94@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E6A230, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  return sub_2529469B8(a1);
}

uint64_t sub_252946EB4(uint64_t a1)
{
  v2 = sub_252E32F04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 16), v39);

  v8 = sub_252943F48(0x4D4F485F4E45504FLL, 0xED00005050415F45, 0x656D614E707041, 0xE700000000000000, v39);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v10)
  {
    v37 = v3;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    sub_252929E74(a1, v39);

    v12 = sub_252E36AC4();
    v13 = sub_252E374C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v2;
      v36 = a1;
      v16 = v15;
      v38 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_252BE2CE0(v8, v10, &v38);
      *(v14 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_252E33844();
      v17 = sub_252E32E94();
      v19 = v18;
      (*(v37 + 8))(v6, v35);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v20 = sub_252BE2CE0(v17, v19, &v38);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_252917000, v12, v13, "Building Home App button with label: %s for locale %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v16, -1, -1);
      MEMORY[0x2530AED00](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    sub_252E33734();
    sub_252E33704();
    v30 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
    v31 = sub_252E36F04();
    [v30 setLaunchId_];

    sub_252E33724();

    v32 = sub_252E33714();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D60);
    sub_252929E74(a1, v39);
    v22 = sub_252E36AC4();
    v23 = sub_252E374D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_252E33844();
      v26 = sub_252E32E94();
      v28 = v27;
      (*(v3 + 8))(v6, v2);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v29 = sub_252BE2CE0(v26, v28, &v38);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_252917000, v22, v23, "Unable to get localized string for OPEN_HOME_APP label for locale: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2530AED00](v25, -1, -1);
      MEMORY[0x2530AED00](v24, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    return MEMORY[0x277D84F90];
  }

  return v32;
}

uint64_t sub_2529473E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v87 = a4;
  v89 = a1;
  v8 = sub_252E32F04();
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v90 = v8;
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v84 = sub_252E36F04();
  v83 = sub_252E36F04();
  v15 = sub_252E36F04();
  v16 = [objc_opt_self() 0x1FB4263F8];
  v86 = a2;
  v17 = v16;

  v85 = a3;
  v18 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_252E33844();
  v19 = sub_252E32E94();
  v21 = v20;
  v80 = *(v88 + 8);
  v81 = v88 + 8;
  v80(v11, v90);
  v94[0] = v19;
  v94[1] = v21;
  v93[0] = 45;
  v93[1] = 0xE100000000000000;
  v91 = 95;
  v92 = 0xE100000000000000;
  sub_252947DBC();
  sub_252E377B4();

  v22 = sub_252E36F04();

  v24 = v83;
  v23 = v84;
  v25 = [v14 localizedStringForKey:v84 table:v83 bundle:v17 languageCode:v22];

  a2 = v86;
  if (v25)
  {
    v26 = sub_252E36F34();
    v28 = v27;

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544D60);
    sub_252929E74(a5, v94);

    v30 = sub_252E36AC4();
    v31 = sub_252E374C4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_252BE2CE0(v26, v28, v93);
      *(v32 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      sub_252E33844();
      v34 = sub_252E32E94();
      v36 = v35;
      v80(v11, v90);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v37 = sub_252BE2CE0(v34, v36, v93);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_252917000, v30, v31, "Get localized string with label: %s for locale %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v33, -1, -1);
      v38 = v32;
      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
LABEL_7:
    v82 = a5;
    v39 = [v12 sharedInstance];
    if (v39)
    {
      v40 = v39;
      v41 = v89;
      v42 = sub_252E36F04();
      v43 = a2;
      v44 = sub_252E36F04();
      v45 = sub_252E36F04();
      v46 = [objc_opt_self() bundleWithIdentifier_];

      v47 = sub_252E36F04();
      v48 = [v40 localizedStringForKey:v42 table:v44 bundle:v46 languageCode:v47];

      a2 = v43;
      if (v48)
      {
        v26 = sub_252E36F34();
        v50 = v49;

        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v51 = sub_252E36AD4();
        __swift_project_value_buffer(v51, qword_27F544D60);
        sub_252929E74(v82, v94);

        v52 = sub_252E36AC4();
        v53 = sub_252E374D4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          LODWORD(v86) = v53;
          v55 = a2;
          v56 = v54;
          v87 = swift_slowAlloc();
          v93[0] = v87;
          *v56 = 136315394;
          *(v56 + 4) = sub_252BE2CE0(v41, v55, v93);
          *(v56 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          v57 = v11;
          sub_252E33844();
          v58 = sub_252E32E94();
          v60 = v59;
          (*(v88 + 8))(v57, v90);
          __swift_destroy_boxed_opaque_existential_1(v94);
          v61 = sub_252BE2CE0(v58, v60, v93);

          *(v56 + 14) = v61;
          _os_log_impl(&dword_252917000, v52, v86, "Unable to get localized string for %s label for locale: %s", v56, 0x16u);
          v62 = v87;
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v62, -1, -1);
          MEMORY[0x2530AED00](v56, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v94);
        }

        v30 = sub_252E36AC4();
        v75 = sub_252E374D4();

        if (!os_log_type_enabled(v30, v75))
        {
          goto LABEL_24;
        }

        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v94[0] = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_252BE2CE0(v26, v50, v94);
        _os_log_impl(&dword_252917000, v30, v75, "Use fallback en_US label: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x2530AED00](v77, -1, -1);
        v38 = v76;
LABEL_23:
        MEMORY[0x2530AED00](v38, -1, -1);
LABEL_24:

        return v26;
      }
    }

    v63 = v90;
    v64 = v88;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v65 = sub_252E36AD4();
    __swift_project_value_buffer(v65, qword_27F544D60);
    sub_252929E74(v82, v94);

    v66 = sub_252E36AC4();
    v67 = sub_252E374D4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = a2;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v93[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = sub_252BE2CE0(v89, v68, v93);
      *(v69 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      sub_252E33844();
      v71 = sub_252E32E94();
      v73 = v72;
      (*(v64 + 8))(v11, v63);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v74 = sub_252BE2CE0(v71, v73, v93);

      *(v69 + 14) = v74;
      _os_log_impl(&dword_252917000, v66, v67, "Unable to get localized string for %s label for locale: %s and en_US", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v70, -1, -1);
      MEMORY[0x2530AED00](v69, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v94);
    }

    return 0;
  }

  return v26;
}

unint64_t sub_252947DBC()
{
  result = qword_2814B0290;
  if (!qword_2814B0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B0290);
  }

  return result;
}

unint64_t sub_252947E10()
{
  result = qword_27F540398;
  if (!qword_27F540398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540398);
  }

  return result;
}

void sub_252947E5C(unsigned __int8 a1)
{
  v2 = sub_252E32CB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_252C96F38(a1);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_252E32CA4();
    if ((*(v3 + 48))(v10, 1, v2) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_252E32C74();
      (*(v3 + 8))(v10, v2);
    }

    [v15 setPunchOutUri_];

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);

    v24 = v15;
    v25 = sub_252E36AC4();
    v26 = sub_252E374C4();

    v27 = os_log_type_enabled(v25, v26);
    v39 = v13;
    if (!v27)
    {

      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v28 = 136315394;
    *(v28 + 4) = sub_252BE2CE0(v13, v14, &v40);
    *(v28 + 12) = 2080;
    v29 = [v24 punchOutUri];

    if (v29)
    {
      sub_252E32C94();

      v30 = sub_252E32C64();
      v32 = v31;
      (*(v3 + 8))(v6, v2);
      v33 = sub_252BE2CE0(v30, v32, &v40);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_252917000, v25, v26, "Building button with label: %s and url: %s", v28, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v34, -1, -1);
      MEMORY[0x2530AED00](v28, -1, -1);
LABEL_23:

      sub_252E33734();
      v35 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v35 + 16), &v40);

      sub_252E33704();
      __swift_destroy_boxed_opaque_existential_1(&v40);
      v36 = v24;
      sub_252E33724();

      sub_252E33714();

      return;
    }

    __break(1u);
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_252E379F4();

    v40 = 0xD000000000000020;
    v41 = 0x8000000252E6A260;
    v17 = "GOTO_APPLE_SUPPORT";
    v18 = "WEATHER_QUERY_GENERIC_LOCATIONS";
    v19 = 0xD000000000000015;
    if (a1 != 2)
    {
      v19 = 0xD00000000000001FLL;
      v18 = "led for the key ";
    }

    v20 = 0xD000000000000012;
    if (a1)
    {
      v17 = "LINK_HOME_HUB_SUPPORT";
    }

    else
    {
      v20 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (a1 <= 1u)
    {
      v22 = v17;
    }

    else
    {
      v22 = v18;
    }

    MEMORY[0x2530AD570](v21, v22 | 0x8000000000000000);

    sub_2529515FC(6, 13, v40, v41);
  }
}

id sub_25294833C(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24[-v8];
  v10 = 0xE700000000000000;
  v11 = 0x72656767697274;
  v12 = 0xE400000000000000;
  v13 = 1836019570;
  v14 = 0xE900000000000079;
  v15 = 0x726F737365636361;
  if (a1 != 3)
  {
    v15 = 0x65636976726573;
    v14 = 0xE700000000000000;
  }

  if (a1 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (a1)
  {
    v11 = 1701670760;
    v10 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (a1 <= 1u)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  strcpy(v24, "com.apple.Home");
  v24[15] = -18;
  MEMORY[0x2530AD570](3092282, 0xE300000000000000);
  MEMORY[0x2530AD570](v16, v17);
  MEMORY[0x2530AD570](47, 0xE100000000000000);
  if (a3)
  {
    v18 = a3;
  }

  else
  {
    a2 = 0;
    v18 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](a2, v18);

  v19 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252E32CA4();

  v20 = sub_252E32CB4();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v9, 1, v20) != 1)
  {
    v22 = sub_252E32C74();
    (*(v21 + 8))(v9, v20);
  }

  [v19 setPunchOutUri_];

  return v19;
}

id sub_2529485B0(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4];
  v6 = 0xE700000000000000;
  v7 = 0x6574616D696C63;
  v8 = 0xE500000000000000;
  v9 = 0x616964656DLL;
  v10 = 0xE800000000000000;
  v11 = 0x7974697275636573;
  if (a1 != 3)
  {
    v11 = 0x7265746177;
    v10 = 0xE500000000000000;
  }

  if (a1 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (a1)
  {
    v7 = 0x73746867696CLL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (a1 <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  strcpy(v19, "com.apple.Home");
  v19[15] = -18;
  MEMORY[0x2530AD570](3092282, 0xE300000000000000);
  MEMORY[0x2530AD570](0x726F737365636361, 0xED00006570797479);
  MEMORY[0x2530AD570](47, 0xE100000000000000);

  MEMORY[0x2530AD570](v12, v13);
  swift_bridgeObjectRelease_n();
  v14 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252E32CA4();

  v15 = sub_252E32CB4();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v5, 1, v15) != 1)
  {
    v17 = sub_252E32C74();
    (*(v16 + 8))(v5, v15);
  }

  [v14 setPunchOutUri_];

  return v14;
}

uint64_t DeviceQuantifierSemantic.rawValue.getter()
{
  v1 = *v0;
  v2 = 6647407;
  v3 = 7105633;
  v4 = 1752461154;
  if (v1 != 3)
  {
    v4 = 0x747065637865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670771;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HomeAutomationInternal::DeviceQuantifierSemantic_optional __swiftcall DeviceQuantifierSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252948914()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529489D4()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252948A80()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252948B48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6647407;
  v5 = 0xE300000000000000;
  v6 = 7105633;
  v7 = 0xE400000000000000;
  v8 = 1752461154;
  if (v2 != 3)
  {
    v8 = 0x747065637865;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670771;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

BOOL sub_252948BC8(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_252948C08(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_252948C48(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

uint64_t sub_252948D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529491C8();
  v5 = sub_25294921C();
  v6 = sub_252949270();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t sub_252948DB8(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t _s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 6647407;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v6 = 1701670771;
    }

    else
    {
      v6 = 6647407;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else if (v3 == 2)
  {
    v5 = 0xE300000000000000;
    v6 = 7105633;
  }

  else if (v3 == 3)
  {
    v5 = 0xE400000000000000;
    v6 = 1752461154;
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x747065637865;
  }

  v7 = 0xE300000000000000;
  v8 = 0xE300000000000000;
  v9 = 7105633;
  v10 = 0xE400000000000000;
  v11 = 1752461154;
  if (v4 != 3)
  {
    v11 = 0x747065637865;
    v10 = 0xE600000000000000;
  }

  if (v4 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*a2)
  {
    v2 = 1701670771;
    v7 = 0xE400000000000000;
  }

  if (*a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (*a2 <= 1u)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v6 == v12 && v5 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_252E37DB4();
  }

  return v14 & 1;
}

unint64_t sub_252948F0C()
{
  result = qword_27F5403C8;
  if (!qword_27F5403C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5403C8);
  }

  return result;
}

unint64_t sub_252948F64()
{
  result = qword_27F5403D0;
  if (!qword_27F5403D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5403D0);
  }

  return result;
}

unint64_t sub_252948FBC()
{
  result = qword_27F5403D8;
  if (!qword_27F5403D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5403E0, &qword_252E3C5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5403D8);
  }

  return result;
}

unint64_t sub_252949024()
{
  result = qword_27F5403E8;
  if (!qword_27F5403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5403E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceQuantifierSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceQuantifierSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2529491C8()
{
  result = qword_27F5403F0;
  if (!qword_27F5403F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5403F0);
  }

  return result;
}

unint64_t sub_25294921C()
{
  result = qword_27F5403F8;
  if (!qword_27F5403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5403F8);
  }

  return result;
}

unint64_t sub_252949270()
{
  result = qword_27F540400;
  if (!qword_27F540400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540400);
  }

  return result;
}

uint64_t sub_2529492C8(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v3[57] = v4;
  v5 = *(v4 - 8);
  v3[58] = v5;
  v3[59] = *(v5 + 64);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v6 = sub_252E33C44();
  v3[62] = v6;
  v7 = *(v6 - 8);
  v3[63] = v7;
  v8 = *(v7 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540338, &qword_252E3C340) - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v10 = sub_252E36AD4();
  v3[70] = v10;
  v11 = *(v10 - 8);
  v3[71] = v11;
  v12 = *(v11 + 64) + 15;
  v3[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529494CC, 0, 0);
}

uint64_t sub_2529494CC()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 560), qword_27F544DA8);
  sub_252CC3D90(0xD000000000000029, 0x8000000252E6A550, 0xD00000000000009ALL, 0x8000000252E6A580);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 440);
  v5 = __swift_project_value_buffer(v3, qword_27F544C70);
  *(v0 + 416) = [v4 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0x6B73615472657355, 0xEB000000000A203ALL, 0xD00000000000009ALL, 0x8000000252E6A580);

  (*(v2 + 16))(v1, v5, v3);
  v7 = [v4 filters];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for HomeFilter();
    v9 = sub_252E37264();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v14 = *(v0 + 464);
  v115 = *(v0 + 456);
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  *(v0 + 424) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(0x3A737265746C6946, 0xEA00000000000A20, 0xD00000000000009ALL, 0x8000000252E6A580);

  (*(v11 + 8))(v10, v12);
  v18 = *(v16 + 64);
  *(v16 + 64) = v15;
  v19 = v15;

  (*(v14 + 56))(v13, 1, 1, v115);
  sub_252B680FC();
  LODWORD(v14) = sub_252B64884();

  if (v14 == 3 && (v20 = [*(v0 + 440) userTask]) != 0 && ((v21 = v20, v22 = objc_msgSend(v20, sel_attribute), v21, v23 = vdupq_n_s64(v22), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A54F0, v23), vceqq_s64(unk_2864A5500, v23)))) & 1) != 0) || qword_2864A5510 == v22))
  {
    v55 = *(v0 + 448);
    sub_252929E74(v55 + 24, v0 + 376);
    v56 = *(v55 + 112);
    v57 = swift_task_alloc();
    *(v0 + 584) = v57;
    *v57 = v0;
    v57[1] = sub_25294A144;
    v58 = *(v0 + 432);
    v59 = *(v0 + 440);

    return sub_252D099D8(v58, v55 + 72, v0 + 376, v56, v59);
  }

  else
  {
    v24 = *(v0 + 440);
    if (sub_252C4B680(0x1E))
    {
      v25 = *(v0 + 536);
      v26 = *(v0 + 448);
      sub_252929E74(v26 + 24, v0 + 296);
      v27 = *(v26 + 112);
      sub_252B680FC();
      v28 = sub_252B64C90();

      v30 = *(v0 + 320);
      v29 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v30);
      sub_252929E74(v26 + 72, v0 + 336);
      v31 = swift_allocObject();
      *(v0 + 600) = v31;
      sub_252927BEC((v0 + 336), v31 + 16);
      *(v31 + 56) = v28 & 1;
      sub_252A6097C(v27, v25);
      v32 = swift_task_alloc();
      *(v0 + 608) = v32;
      *v32 = v0;
      v32[1] = sub_25294A260;
      v33 = *(v0 + 536);
      v34 = *(v0 + 432);
      v35 = &unk_252E3C828;
      v36 = v31;
LABEL_17:
      v44 = v30;
      v45 = v29;
LABEL_18:

      return sub_252BDB3DC(v34, v35, v36, v33, v44, v45);
    }

    v37 = *(v0 + 440);
    if (sub_252C4B680(0x27))
    {
      v38 = *(v0 + 528);
      v39 = *(v0 + 448);
      sub_252929E74(v39 + 24, v0 + 216);
      v40 = *(v39 + 112);
      v30 = *(v0 + 240);
      v29 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v30);
      sub_252929E74(v39 + 72, v0 + 256);
      v41 = swift_allocObject();
      *(v0 + 624) = v41;
      sub_252927BEC((v0 + 256), v41 + 16);
      sub_252A6097C(v40, v38);
      v42 = swift_task_alloc();
      *(v0 + 632) = v42;
      *v42 = v0;
      v42[1] = sub_25294A4EC;
      v33 = *(v0 + 528);
      v34 = *(v0 + 432);
      v43 = &unk_252E3C820;
LABEL_16:
      v35 = v43;
      v36 = v41;
      goto LABEL_17;
    }

    v47 = *(sub_252B680FC() + 48);

    if (v47 == 1)
    {
      v49 = *(v0 + 440);
      v48 = *(v0 + 448);
      sub_252929E74(v48 + 24, v0 + 136);
      v50 = *(v48 + 112);
      v51 = [v49 userTask];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 taskType];

        v54 = v53 == 2;
      }

      else
      {
        v76 = *(v0 + 440);
        sub_252C515AC();
        v54 = 0;
      }

      v77 = *(v0 + 520);
      v78 = *(v0 + 448);
      v79 = *(v0 + 160);
      v80 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v79);
      sub_252929E74(v78 + 72, v0 + 176);
      v81 = swift_allocObject();
      *(v0 + 648) = v81;
      sub_252927BEC((v0 + 176), v81 + 16);
      *(v81 + 56) = v54;
      sub_252A6097C(v50, v77);
      v82 = swift_task_alloc();
      *(v0 + 656) = v82;
      *v82 = v0;
      v82[1] = sub_25294A778;
      v33 = *(v0 + 520);
      v34 = *(v0 + 432);
      v35 = &unk_252E3C818;
      v36 = v81;
      v44 = v79;
      v45 = v80;
      goto LABEL_18;
    }

    v60 = *(sub_252B680FC() + 49);

    if (v60 == 1)
    {
      v61 = *(v0 + 512);
      v62 = *(v0 + 448);
      sub_252929E74(v62 + 24, v0 + 56);
      v63 = *(v62 + 112);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v30);
      sub_252929E74(v62 + 72, v0 + 96);
      v41 = swift_allocObject();
      *(v0 + 672) = v41;
      sub_252927BEC((v0 + 96), v41 + 16);
      sub_252A6097C(v63, v61);
      v64 = swift_task_alloc();
      *(v0 + 680) = v64;
      *v64 = v0;
      v64[1] = sub_25294AAF4;
      v33 = *(v0 + 512);
      v34 = *(v0 + 432);
      v43 = &unk_252E3C810;
      goto LABEL_16;
    }

    v65 = *(v0 + 544);
    v67 = *(v0 + 456);
    v66 = *(v0 + 464);
    sub_252938414(*(v0 + 552), v65, &qword_27F540338, &qword_252E3C340);
    if ((*(v66 + 48))(v65, 1, v67) == 1)
    {
      v68 = *(v0 + 552);
      v69 = *(v0 + 440);
      sub_25293847C(*(v0 + 544), &qword_27F540338, &qword_252E3C340);
      sub_252E379F4();

      v70 = [v69 description];
      v71 = sub_252E36F34();
      v73 = v72;

      MEMORY[0x2530AD570](v71, v73);

      sub_252CC4050(0xD000000000000020, 0x8000000252E6A620, 0xD00000000000009ALL, 0x8000000252E6A580, 0xD000000000000029, 0x8000000252E6A650, 79);

      sub_2529515FC(0, 2, 0xD00000000000001ALL, 0x8000000252E6A680);
      type metadata accessor for HomeAutomationError();
      sub_25294B540(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
      swift_allocError();
      *v74 = v69;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v75 = v69;
      sub_25293847C(v68, &qword_27F540338, &qword_252E3C340);
      v96 = *(v0 + 576);
      v97 = *(v0 + 552);
      v98 = *(v0 + 544);
      v99 = *(v0 + 536);
      v100 = *(v0 + 528);
      v101 = *(v0 + 520);
      v102 = *(v0 + 512);
      v104 = *(v0 + 480);
      v103 = *(v0 + 488);
    }

    else
    {
      v83 = *(v0 + 480);
      v84 = *(v0 + 488);
      v86 = *(v0 + 464);
      v85 = *(v0 + 472);
      v87 = *(v0 + 448);
      v88 = *(v0 + 432);
      sub_25294B588(*(v0 + 544), v84);
      sub_252929E74(v87 + 24, v0 + 16);
      v89 = *(v0 + 40);
      v90 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v89);
      v91 = *(v87 + 112);
      sub_252938414(v84, v83, &qword_27F540330, &unk_252E3C7F0);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = swift_allocObject();
      sub_25294B588(v83, v93 + v92);
      (*(v90 + 80))(v91, sub_25293DE58, v93, v89, v90);
      v94 = *(v0 + 552);
      v95 = *(v0 + 488);

      sub_25293847C(v95, &qword_27F540330, &unk_252E3C7F0);
      sub_25293847C(v94, &qword_27F540338, &qword_252E3C340);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v106 = *(v0 + 576);
      v107 = *(v0 + 552);
      v108 = *(v0 + 544);
      v109 = *(v0 + 536);
      v110 = *(v0 + 528);
      v111 = *(v0 + 520);
      v112 = *(v0 + 512);
      v114 = *(v0 + 480);
      v113 = *(v0 + 488);
    }

    v105 = *(v0 + 8);

    return v105();
  }
}

uint64_t sub_25294A144()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v6 = *v1;
  *(v2 + 592) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 376));
  if (v0)
  {
    v4 = sub_25294AD80;
  }

  else
  {
    v4 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25294A260()
{
  v2 = *v1;
  v3 = (*v1)[76];
  v4 = (*v1)[63];
  v12 = *v1;
  (*v1)[77] = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[75];
    (*v5)(v2[67], v2[62]);

    v7 = sub_25294A3E8;
  }

  else
  {
    v8 = v2[75];
    v9 = v2[67];
    v10 = v2[62];

    (*v5)(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v2 + 37);
    v7 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25294A3E8()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);
  v2 = v0[77];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25294A4EC()
{
  v2 = *v1;
  v3 = (*v1)[79];
  v4 = (*v1)[63];
  v12 = *v1;
  (*v1)[80] = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[78];
    (*v5)(v2[66], v2[62]);

    v7 = sub_25294A674;
  }

  else
  {
    v8 = v2[78];
    v9 = v2[66];
    v10 = v2[62];

    (*v5)(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v2 + 27);
    v7 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25294A674()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);
  v2 = v0[80];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25294A778()
{
  v2 = *v1;
  v3 = (*v1)[82];
  v4 = (*v1)[63];
  v12 = *v1;
  (*v1)[83] = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[81];
    (*v5)(v2[65], v2[62]);

    v7 = sub_25294A9F0;
  }

  else
  {
    v8 = v2[81];
    v9 = v2[65];
    v10 = v2[62];

    (*v5)(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v2 + 17);
    v7 = sub_25294A900;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25294A900()
{
  sub_25293847C(v0[69], &qword_27F540338, &qword_252E3C340);
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];
  v9 = v0[60];
  v8 = v0[61];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25294A9F0()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);
  v2 = v0[83];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25294AAF4()
{
  v2 = *v1;
  v3 = (*v1)[85];
  v4 = (*v1)[63];
  v12 = *v1;
  (*v1)[86] = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[84];
    (*v5)(v2[64], v2[62]);

    v7 = sub_25294AC7C;
  }

  else
  {
    v8 = v2[84];
    v9 = v2[64];
    v10 = v2[62];

    (*v5)(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v7 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25294AC7C()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);
  v2 = v0[86];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25294AD80()
{
  sub_25293847C(v0[69], &qword_27F540338, &qword_252E3C340);
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v10 = v0[60];
  v9 = v0[61];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25294AE78()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 112);

  return swift_deallocClassInstance();
}

unint64_t sub_25294AEF8()
{
  result = qword_27F540408;
  if (!qword_27F540408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540410, qword_252E54EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540408);
  }

  return result;
}

uint64_t sub_25294AF5C()
{
  swift_getWitnessTable();

  return sub_252BEF6A8();
}

uint64_t sub_25294AFC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C548A4(a1, a2);
}

uint64_t sub_25294B080(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_2529492C8(a1, v4);
}

uint64_t sub_25294B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomePromptForConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_25294B1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomePromptForConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_25294B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B648] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25293B808;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_25294B364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B640] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_25294B418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t sub_25294B4E8(uint64_t a1, uint64_t a2)
{
  result = sub_25294B540(&qword_27F540418, a2, type metadata accessor for ControlHomePromptForConfirmationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25294B540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25294B588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25294B5F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D0AAFC(v0 + 16);
}

uint64_t sub_25294B68C()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252D0A55C(v0 + 16, v2);
}

uint64_t sub_25294B728()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D0A404(v0 + 16);
}

uint64_t sub_25294B7BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_25294B8B8()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252D0A274(v0 + 16, v2);
}

double HomeEntity.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  *(v0 + 40) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  return result;
}

double HomeEntity.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  *(v0 + 40) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  return result;
}

uint64_t sub_25294B9E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 24);
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t sub_25294BA3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_25294BA84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2529AA3C0(0, v2, 0);
    v3 = v12;
    v5 = (a1 + 32);
    v6 = *(v12 + 16);
    do
    {
      v8 = *v5++;
      v7 = v8;
      v13 = v3;
      v9 = *(v3 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_2529AA3C0((v9 > 1), v6 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6++ + 32) = v7;
      --v2;
    }

    while (v2);
  }

  v10 = *(v1 + 56);
  *(v1 + 56) = v3;
}

uint64_t sub_25294BB7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 80);
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }
}

uint64_t sub_25294BBC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 96);
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }
}

uint64_t sub_25294BC14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 112);
    *(v2 + 104) = a1;
    *(v2 + 112) = a2;
  }
}

uint64_t sub_25294BC60(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 120);
    *(v1 + 120) = a1;
  }
}

id sub_25294BCA8()
{
  type metadata accessor for HomeEntity();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];

    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  [v3 setHomeEntityName_];

  [v3 setType_];
  if (v0[6])
  {
    v7 = v0[5];
    v8 = v0[6];

    v9 = sub_252E36F04();
  }

  else
  {
    v9 = 0;
  }

  [v3 setEntityIdentifier_];

  v10 = v0[7];

  v11 = sub_252E37254();

  [v3 setDeviceTypes_];

  [v3 setSceneType_];
  if (v0[12])
  {
    v12 = v0[11];
    v13 = v0[12];

    v14 = sub_252E36F04();
  }

  else
  {
    v14 = 0;
  }

  [v3 setHome_];

  if (v0[10])
  {
    v15 = v0[9];
    v16 = v0[10];

    v17 = sub_252E36F04();
  }

  else
  {
    v17 = 0;
  }

  [v3 setRoom_];

  v18 = v0[15];

  v19 = sub_252E37254();

  [v3 setZones_];

  if (v0[14])
  {
    v20 = v0[13];

    v21 = sub_252E36F04();
  }

  else
  {
    v21 = 0;
  }

  [v3 setGroup_];

  return v3;
}

uint64_t sub_25294BF30()
{
  v2 = v0[2];
  v1 = v0[3];
  v18 = v0[5];
  v19 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  v20 = v0[9];
  v21 = v0[8];
  v5 = v0[10];
  v6 = v0[12];
  v22 = v0[11];
  v23 = v0[13];
  v8 = v0[14];
  v7 = v0[15];
  type metadata accessor for HomeEntity.Builder();
  v9 = swift_allocObject();
  *(v9 + 32) = 7;
  *(v9 + 40) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 48) = 0;
  *(v9 + 56) = v10;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 120) = v10;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;

  v11 = *(v9 + 48);
  *(v9 + 32) = v19;
  *(v9 + 40) = v18;
  *(v9 + 48) = v4;

  v12 = *(v9 + 56);
  *(v9 + 56) = v3;

  v13 = *(v9 + 80);
  *(v9 + 64) = v21;
  *(v9 + 72) = v20;
  *(v9 + 80) = v5;

  v14 = *(v9 + 96);
  *(v9 + 88) = v22;
  *(v9 + 96) = v6;

  v15 = *(v9 + 112);
  *(v9 + 104) = v23;
  *(v9 + 112) = v8;

  v16 = *(v9 + 120);
  *(v9 + 120) = v7;

  return v9;
}

void *HomeEntity.Builder.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];

  return v0;
}

uint64_t HomeEntity.Builder.__deallocating_deinit()
{
  HomeEntity.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t static AssistantServicesInterface.deviceSupportsNLv4()()
{
  if (AFDeviceSupportsHybridUOD())
  {
    return 1;
  }

  else
  {
    return AFDeviceSupportsFullSiriUOD();
  }
}

uint64_t getEnumTagSinglePayload for AssistantServicesInterface(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AssistantServicesInterface(_WORD *result, int a2, int a3)
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

uint64_t sub_25294C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v64 - v5;
  v70 = type metadata accessor for HomeAutomationNLV3Intent();
  v6 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34164();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E358D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v21 = *(v9 + 16);
  v65 = a1;
  v22 = a1;
  v23 = v21;
  v21(v12, v22, v8);
  v24 = (*(v9 + 88))(v12, v8);
  if (v24 == *MEMORY[0x277D5C128])
  {
    LODWORD(v65) = *MEMORY[0x277D5C128];
    (*(v9 + 96))(v12, v8);
LABEL_5:
    v66 = v9;
    v67 = v8;
    v26 = *(v14 + 32);
    v26(v20, v12, v13);
    v26(v18, v20, v13);
    v27 = v71;
    HomeAutomationNLV3Intent.init(_:)(v18, v71);
    _s7BuilderCMa();
    inited = swift_initStackObject();
    v29 = MEMORY[0x277D84F90];
    inited[3] = 0;
    inited[4] = 0;
    inited[2] = v29;
    v30 = v68;
    if (qword_27F53F7B0 != -1)
    {
      swift_once();
    }

    sub_25294E89C();
    sub_252E34BE4();
    v31 = v73;
    if (v73)
    {
      v32 = v72;
      v33 = MEMORY[0x277D5E5C8];
      v34 = sub_252E34604();
      v36 = v35;
      *v30 = v32;
      v30[1] = v31;
      v37 = *v33;
      v38 = sub_252E34944();
      v39 = *(v38 - 8);
      (*(v39 + 104))(v30, v37, v38);
      (*(v39 + 56))(v30, 0, 1, v38);
      v27 = v71;

      sub_25296C588(v34, v36, v30, MEMORY[0x277D84F90]);

      sub_25293847C(v30, &qword_27F540460, &qword_252E5E960);
    }

    if (qword_27F53F7F0 != -1)
    {
      swift_once();
    }

    v40 = sub_252E34BF4();
    sub_25296CA70(v40);

    if (qword_27F53F868 != -1)
    {
      swift_once();
    }

    v41 = sub_252E34BF4();
    sub_25296CADC(v41);

    if (qword_27F53F828 != -1)
    {
      swift_once();
    }

    v42 = sub_252E34BF4();
    sub_25296CAB8(v42);

    if (qword_27F53F818 != -1)
    {
      swift_once();
    }

    v43 = sub_252E34BF4();
    sub_25296CA94(v43);

    if (qword_27F53F820 != -1)
    {
      swift_once();
    }

    sub_252E34BE4();
    v44 = v73;
    if (v73)
    {
      v45 = v72;
      v46 = sub_252E34604();
      v48 = v47;
      *v30 = v45;
      v30[1] = v44;
      v49 = *MEMORY[0x277D5E5C8];
      v50 = sub_252E34944();
      v51 = *(v50 - 8);
      (*(v51 + 104))(v30, v49, v50);
      (*(v51 + 56))(v30, 0, 1, v50);
      v27 = v71;

      sub_25296C588(v46, v48, v30, MEMORY[0x277D84F90]);

      sub_25293847C(v30, &qword_27F540460, &qword_252E5E960);
    }

    if (qword_27F53F7A0 != -1)
    {
      swift_once();
    }

    v52 = sub_252E34BF4();
    sub_25296D2B0(v52);

    if (qword_27F53F810 != -1)
    {
      swift_once();
    }

    v53 = sub_252E34BF4();
    sub_25296D4D0(v53);

    if (qword_27F53F7E8 != -1)
    {
      swift_once();
    }

    sub_252E34BE4();
    v54 = v72;
    if (v72 != 21)
    {
      v55 = sub_252E34604();
      v57 = v56;
      v74 = v54;
      PlaceHintSemantic.rawValue.getter();
      sub_252E34924();
      v58 = *MEMORY[0x277D5E5D8];
      v59 = sub_252E34944();
      v60 = *(v59 - 8);
      (*(v60 + 104))(v30, v58, v59);
      (*(v60 + 56))(v30, 0, 1, v59);
      sub_25296C588(v55, v57, v30, MEMORY[0x277D84F90]);

      sub_25293847C(v30, &qword_27F540460, &qword_252E5E960);
    }

    v61 = v69;
    sub_25296CCC4(v69);

    sub_25294E8F4(v27);
    return (*(v66 + 104))(v61, v65, v67);
  }

  if (v24 == *MEMORY[0x277D5C158])
  {
    LODWORD(v65) = *MEMORY[0x277D5C128];
    (*(v9 + 96))(v12, v8);
    v25 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

    goto LABEL_5;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v63 = sub_252E36AD4();
  __swift_project_value_buffer(v63, qword_27F544D60);
  sub_252CC4050(0xD000000000000043, 0x8000000252E6A820, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000018, 0x8000000252E6A870, 41);
  v23(v69, v65, v8);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25294CF38@<X0>(const void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v56 = a3;
  v55 = sub_252E34164();
  v57 = *(v55 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v49 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540440, &qword_252E3C8B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v48 - v8;
  v50 = sub_252E341A4();
  v53 = *(v50 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v52 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_252E34224();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540448, &unk_252E3C8B8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v48 - v18;
  v20 = sub_252E34284();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v48 - v26;
  memcpy(v59, a1, 0x1F8uLL);
  v28 = sub_25294E950(v59, 0x67696C6873616C66, 0xEA00000000007468, 0x747465536C6F6F62, 0xEF656D614E676E69);
  if (v28)
  {
    v29 = v28;
    sub_252E344C4();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_25293847C(v19, &qword_27F540448, &unk_252E3C8B8);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544D90);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_252E379F4();

      v59[0] = 0xD00000000000002ELL;
      v59[1] = 0x8000000252E6A7C0;
      v58 = v29;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F540450, &qword_252E3C8C8);
      v31 = sub_252E36F94();
      MEMORY[0x2530AD570](v31);

      sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000026, 0x8000000252E6A790, 55);

      swift_unknownObjectRelease();
      return (*(v57 + 16))(v56, v54, v55);
    }

    else
    {
      (*(v21 + 32))(v27, v19, v20);
      v38 = v51;
      (*(v12 + 104))(v15, *MEMORY[0x277D5DA78], v51);
      (*(v21 + 16))(v25, v27, v20);
      v39 = *(v12 + 16);
      v54 = v15;
      v39(v9, v15, v38);
      (*(v12 + 56))(v9, 0, 1, v38);
      v40 = v52;
      sub_252E34194();
      v41 = v56;
      v42 = v40;
      v43 = v50;
      (*(v53 + 16))(v56, v42, v50);
      v44 = v55;
      (*(v57 + 104))(v41, *MEMORY[0x277D5C160], v55);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      v48[1] = __swift_project_value_buffer(v45, qword_27F544D60);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_252E379F4();

      v59[0] = 0xD000000000000029;
      v59[1] = 0x8000000252E6A7F0;
      v46 = v49;
      (*(v57 + 16))(v49, v41, v44);
      v47 = sub_252AD2138(v46);
      MEMORY[0x2530AD570](v47);

      sub_252CC3D90(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E6A720);
      swift_unknownObjectRelease();

      (*(v53 + 8))(v52, v43);
      (*(v12 + 8))(v54, v51);
      return (*(v21 + 8))(v27, v20);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544D60);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6A6E0, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000026, 0x8000000252E6A790, 50);
    v34 = v56;
    v35 = *(v57 + 16);
    v36 = v54;
    v37 = v55;

    return v35(v34, v36, v37);
  }
}

uint64_t sub_25294D744@<X0>(const void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v56 = a3;
  v55 = sub_252E34164();
  v57 = *(v55 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v49 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540440, &qword_252E3C8B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v48 - v8;
  v50 = sub_252E341A4();
  v53 = *(v50 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v52 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_252E34224();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540448, &unk_252E3C8B8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v48 - v18;
  v20 = sub_252E34284();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v48 - v26;
  memcpy(v59, a1, 0x1F8uLL);
  v28 = sub_25294E950(v59, 0x6B636F6C6E75, 0xE600000000000000, 0x74416D6574737973, 0xEF65747562697274);
  if (v28)
  {
    v29 = v28;
    sub_252E344C4();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_25293847C(v19, &qword_27F540448, &unk_252E3C8B8);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544D90);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_252E379F4();

      v59[0] = 0xD00000000000002ELL;
      v59[1] = 0x8000000252E6A7C0;
      v58 = v29;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F540450, &qword_252E3C8C8);
      v31 = sub_252E36F94();
      MEMORY[0x2530AD570](v31);

      sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E6A720, 0xD00000000000001FLL, 0x8000000252E6A890, 102);

      swift_unknownObjectRelease();
      return (*(v57 + 16))(v56, v54, v55);
    }

    else
    {
      (*(v21 + 32))(v27, v19, v20);
      v38 = v51;
      (*(v12 + 104))(v15, *MEMORY[0x277D5DA78], v51);
      (*(v21 + 16))(v25, v27, v20);
      v39 = *(v12 + 16);
      v54 = v15;
      v39(v9, v15, v38);
      (*(v12 + 56))(v9, 0, 1, v38);
      v40 = v52;
      sub_252E34194();
      v41 = v56;
      v42 = v40;
      v43 = v50;
      (*(v53 + 16))(v56, v42, v50);
      v44 = v55;
      (*(v57 + 104))(v41, *MEMORY[0x277D5C160], v55);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      v48[1] = __swift_project_value_buffer(v45, qword_27F544D60);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_252E379F4();

      v59[0] = 0xD000000000000029;
      v59[1] = 0x8000000252E6A8B0;
      v46 = v49;
      (*(v57 + 16))(v49, v41, v44);
      v47 = sub_252AD2138(v46);
      MEMORY[0x2530AD570](v47);

      sub_252CC3D90(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E6A720);
      swift_unknownObjectRelease();

      (*(v53 + 8))(v52, v43);
      (*(v12 + 8))(v54, v51);
      return (*(v21 + 8))(v27, v20);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544D60);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6A6E0, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD00000000000001FLL, 0x8000000252E6A890, 97);
    v34 = v56;
    v35 = *(v57 + 16);
    v36 = v54;
    v37 = v55;

    return v35(v34, v36, v37);
  }
}

uint64_t sub_25294DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E35074();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_252E35064();
  sub_252E35054();
  v13 = *(a3 + 16);
  if (v13)
  {
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = a3 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    v16(v8, v17, v4);
    while (1)
    {
      if (sub_252E35044())
      {
        sub_252E34634();
      }

      (*(v15 - 8))(v8, v4);
      v17 += v18;
      if (!--v13)
      {
        break;
      }

      v14(v8, v17, v4);
    }
  }

  return v12;
}

uint64_t sub_25294E0C8@<X0>(const void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v56 = a3;
  v55 = sub_252E34164();
  v57 = *(v55 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v49 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540440, &qword_252E3C8B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v48 - v8;
  v50 = sub_252E341A4();
  v53 = *(v50 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v52 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_252E34224();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540448, &unk_252E3C8B8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v48 - v18;
  v20 = sub_252E34284();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v48 - v26;
  memcpy(v59, a1, 0x1F8uLL);
  v28 = sub_25294ED00(v59);
  if (v28)
  {
    v29 = v28;
    sub_252E344C4();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_25293847C(v19, &qword_27F540448, &unk_252E3C8B8);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544D90);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_252E379F4();

      v59[0] = 0xD00000000000002ELL;
      v59[1] = 0x8000000252E6A7C0;
      v58 = v29;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F540450, &qword_252E3C8C8);
      v31 = sub_252E36F94();
      MEMORY[0x2530AD570](v31);

      sub_252CC4050(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000030, 0x8000000252E6A8E0, 149);

      swift_unknownObjectRelease();
      return (*(v57 + 16))(v56, v54, v55);
    }

    else
    {
      (*(v21 + 32))(v27, v19, v20);
      v38 = v51;
      (*(v12 + 104))(v15, *MEMORY[0x277D5DA78], v51);
      (*(v21 + 16))(v25, v27, v20);
      v39 = *(v12 + 16);
      v54 = v15;
      v39(v9, v15, v38);
      (*(v12 + 56))(v9, 0, 1, v38);
      v40 = v52;
      sub_252E34194();
      v41 = v56;
      v42 = v40;
      v43 = v50;
      (*(v53 + 16))(v56, v42, v50);
      v44 = v55;
      (*(v57 + 104))(v41, *MEMORY[0x277D5C160], v55);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      v48[1] = __swift_project_value_buffer(v45, qword_27F544D60);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_252E379F4();

      v59[0] = 0xD000000000000026;
      v59[1] = 0x8000000252E6A920;
      v46 = v49;
      (*(v57 + 16))(v49, v41, v44);
      v47 = sub_252AD2138(v46);
      MEMORY[0x2530AD570](v47);

      sub_252CC3D90(v59[0], v59[1], 0xD00000000000006FLL, 0x8000000252E6A720);
      swift_unknownObjectRelease();

      (*(v53 + 8))(v52, v43);
      (*(v12 + 8))(v54, v51);
      return (*(v21 + 8))(v27, v20);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544D60);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6A6E0, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000030, 0x8000000252E6A8E0, 144);
    v34 = v56;
    v35 = *(v57 + 16);
    v36 = v54;
    v37 = v55;

    return v35(v34, v36, v37);
  }
}

unint64_t sub_25294E89C()
{
  result = qword_27F540470;
  if (!qword_27F540470)
  {
    type metadata accessor for HomeAutomationNLV3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540470);
  }

  return result;
}

uint64_t sub_25294E8F4(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationNLV3Intent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25294E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[1] = a4;
  v38[2] = a5;
  v39 = a2;
  v40 = a3;
  v6 = sub_252E34B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 384) == 22)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 192);
  v42 = *(a1 + 384);
  v41 = 0;
  v12 = HomeAutomationIntent.UsoTaskType.rawValue.getter();
  v14 = v13;
  if (v12 == HomeAutomationIntent.UsoTaskType.rawValue.getter() && v14 == v15)
  {

    goto LABEL_6;
  }

  v16 = sub_252E37DB4();

  if ((v16 & 1) == 0)
  {
LABEL_15:
    v26 = sub_252E35474();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v25 = sub_252E35464();
LABEL_16:
    v29 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540250, &qword_252E3C080);
    v30 = sub_252E34804();
    v31 = *(v30 - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_252E3C290;
    (*(v7 + 104))(v10, *MEMORY[0x277D5E690], v6);
    sub_252E34B64();
    (*(v7 + 8))(v10, v6);
    v36 = v39;
    v35 = v40;
    sub_252E347D4();
    sub_25294DF48(v36, v35, v34);
    swift_setDeallocating();
    (*(v31 + 8))(v34 + v33, v30);
    swift_deallocClassInstance();
    sub_252E355D4();
    v37 = sub_252B0EB38(v29);

    return v37;
  }

LABEL_6:
  v17 = *(v11 + 16);

  v19 = 0;
  while (1)
  {
    if (v17 == v19)
    {

      v22 = sub_252E353C4();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_252E353B4();
      goto LABEL_16;
    }

    if (v19 >= *(v11 + 16))
    {
      break;
    }

    v43 = *(v11 + v19 + 32);
    if (StateSemantic.rawValue.getter() == 6710895 && v21 == 0xE300000000000000)
    {

LABEL_14:

      goto LABEL_15;
    }

    ++v19;
    v20 = sub_252E37DB4();

    if (v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_25294ED00(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_252A0EA50();
  v2 = sub_252C75D58(v1);

  if (*(v2 + 16) == 1)
  {
    v3 = sub_252DB4F48(v2);
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      v6 = v3 - 2;
      if ((v3 - 2) <= 3)
      {
        v7 = *&aDalgoodmdaliml[8 * v6];
        v8 = *&aDalgoodmdaliml[8 * v6 + 32];
        v9 = sub_252E34BC4();
        v10 = *(v9 + 48);
        v11 = *(v9 + 52);
        swift_allocObject();
        v12 = MEMORY[0x2530AB060](0x6E61435F69726973, 0xEB0000000064656ELL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_252E3C130;
        v14 = sub_252E34DF4();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        *(v13 + 32) = sub_252E34DE4();
        sub_252E34BB4();

        v17 = sub_252E34B34();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();
        v20 = MEMORY[0x2530AAFD0](0x6E61435F69726973, 0xEB0000000064656ELL, 0x6E6F69746361, 0xE600000000000000);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_252E3C130;
        *(v21 + 32) = v12;

        sub_252E34B24();

        v22 = sub_252B0EB38(v20);

        return v22;
      }
    }
  }

  else
  {
  }

  return 0;
}

void *sub_25294EF38(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_25294EF84(a1);
}

void *sub_25294EF84(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v56 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v56;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Group();
    v17 = *(*v60 + 48);
    v18 = *(*v60 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v57[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v58) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v56;
  v22 = v6;
  v23 = v57[0];
  LOBYTE(v57[0]) = 2;
  v52 = sub_252E37C04();
  v53 = v23;
  v54 = v24;
  LOBYTE(v57[0]) = 3;
  v25 = sub_252E37BA4();
  v46 = v15;
  v48 = v11;
  v50 = v26;
  v51 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529D9D18();

  MEMORY[0x28223BE20](v30);
  v32 = v52;
  v31 = v53;
  *(&v44 - 6) = v22;
  *(&v44 - 5) = v32;
  *(&v44 - 4) = v54;
  *(&v44 - 3) = v27;
  v45 = v27;
  *(&v44 - 2) = v50;
  *(&v44 - 1) = v31;
  v33 = sub_2529A3DE8(sub_252950AB4, (&v44 - 8), v29);
  v47 = 0;

  v49 = v33;
  if (!v33)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
    sub_252CC4050(0xD000000000000022, 0x8000000252E6A980, 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 43);
    strcpy(v57, "identifier: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);

    v57[0] = 0x203A656D616ELL;
    v57[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_252E379F4();

    v57[0] = 0xD000000000000015;
    v57[1] = 0x8000000252E6AA20;
    v58 = v45;
    v59 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v41 = sub_252E36F94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    strcpy(v57, "entityType: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    v58 = v53;
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    v14 = v39;
    sub_252CC4050(v57[0], v57[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v46 + 8))(v48, v7);
    (*(v55 + 8))(v22, v51);
    v16 = v21;
    goto LABEL_4;
  }

  v34 = v49;

  v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate);

  v14 = v60;
  *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v35;
  sub_252929E74(v21, v57);
  v36 = v47;
  v37 = Entity.init(from:)(v57);
  if (v36)
  {
    (*(v15 + 8))(v48, v7);

    (*(v55 + 8))(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v37;
    (*(v15 + 8))(v48, v7);

    v43 = *(v55 + 8);

    v43(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

BOOL sub_25294F7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 4;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 4;
      }
    }
  }

  return 0;
}

uint64_t sub_25294F8D8(void *a1)
{
  v2 = v1;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = sub_2529F1D14(a1);

  v8 = v2;
  v7[2] = &v8;
  LOBYTE(v2) = sub_252A00B58(sub_2529509E4, v7, v5);

  return v2 & 1;
}

uint64_t sub_25294F970()
{
  v37 = sub_252E32E84();
  v1 = *(v37 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v37);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) services];
  sub_252950854();
  v6 = sub_252E37264();

  v38 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v8 = 0;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v36 = v6 & 0xC000000000000001;
    v32 = v1 + 4;
    v33 = i;
    v34 = v6;
    while (1)
    {
      if (v36)
      {
        v9 = MEMORY[0x2530ADF00](v8, v6);
      }

      else
      {
        if (v8 >= *(v35 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v1 = v9;
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = type metadata accessor for Service();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v1;
      v15 = v1;
      v16 = [v15 uniqueIdentifier];
      v17 = v4;
      sub_252E32E64();

      v18 = [v15 name];
      v19 = sub_252E36F34();
      v21 = v20;

      v22 = [v15 assistantIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_252E36F34();
        v1 = v25;
      }

      else
      {

        v24 = 0;
        v1 = 0;
      }

      v4 = v17;
      v26 = (*v32)(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v17, v37);
      v27 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v27 = v19;
      v27[1] = v21;
      *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v28 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v28 = v24;
      v28[1] = v1;
      MEMORY[0x2530AD700](v26);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v8;
      v6 = v34;
      if (v10 == v33)
      {
        v29 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_20:

  return v29;
}

BOOL sub_25294FCB4(uint64_t a1)
{
  v25 = a1;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) services];
  sub_252950854();
  v11 = sub_252E37264();

  v12 = v11;
  if (v11 >> 62)
  {
LABEL_15:
    v23 = v12;
    v26 = v12 & 0xFFFFFFFFFFFFFF8;
    v27 = sub_252E378C4();
    v12 = v23;
  }

  else
  {
    v26 = v11 & 0xFFFFFFFFFFFFFF8;
    v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v24 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v14 = v12 & 0xC000000000000001;
  v15 = (v3 + 8);
  do
  {
    v3 = v13;
    if (v27 == v13)
    {
      break;
    }

    if (v14)
    {
      v16 = v12;
      v12 = MEMORY[0x2530ADF00](v13);
    }

    else
    {
      if (v13 >= *(v26 + 16))
      {
        goto LABEL_14;
      }

      v16 = v12;
      v12 = *(v12 + 8 * v13 + 32);
    }

    v17 = v12;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v18 = [v12 uniqueIdentifier];
    sub_252E32E64();

    v19 = [*(v25 + v24) uniqueIdentifier];
    sub_252E32E64();

    LOBYTE(v19) = sub_252E32E54();
    v20 = *v15;
    (*v15)(v7, v2);
    v20(v9, v2);
    v13 = v3 + 1;
    v12 = v16;
  }

  while ((v19 & 1) == 0);
  v21 = v27 != v3;

  return v21;
}

uint64_t sub_25294FF40()
{
  v1 = v0;
  v48 = sub_252E32E84();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate);
  v6 = &off_279711000;
  v7 = [v5 services];
  sub_252950854();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      v36 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v37 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      return v36;
    }

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_252E379F4();
    v10 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
    v12 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v11 = *(v10 + 8);

    v51 = v12;
    v52 = v11;
    MEMORY[0x2530AD570](0x6976726573207B20, 0xED0000203A736563);
    v13 = [v5 v6[280]];
    v14 = sub_252E37264();

    v50 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      break;
    }

    v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_24;
    }

LABEL_6:
    v15 = 0;
    v46 = v14 & 0xFFFFFFFFFFFFFF8;
    v47 = v14 & 0xC000000000000001;
    v44 = (v2 + 32);
    v45 = v14;
    while (1)
    {
      if (v47)
      {
        v16 = MEMORY[0x2530ADF00](v15, v14);
      }

      else
      {
        if (v15 >= *(v46 + 16))
        {
          goto LABEL_21;
        }

        v16 = *(v14 + 8 * v15 + 32);
      }

      v17 = v16;
      v6 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = type metadata accessor for Service();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v17;
      v21 = v17;
      v22 = [v21 uniqueIdentifier];
      sub_252E32E64();

      v23 = [v21 name];
      v24 = sub_252E36F34();
      v26 = v25;

      v27 = [v21 assistantIdentifier];
      if (v27)
      {
        v5 = v27;
        v28 = sub_252E36F34();
        v30 = v29;
      }

      else
      {

        v28 = 0;
        v30 = 0;
      }

      v31 = (*v44)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v49, v48);
      v32 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v32 = v24;
      v32[1] = v26;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v33 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v33 = v28;
      v33[1] = v30;
      MEMORY[0x2530AD700](v31);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v15;
      v14 = v45;
      if (v6 == v1)
      {
        v35 = v50;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v1 = sub_252E378C4();
  if (v1)
  {
    goto LABEL_6;
  }

LABEL_24:
  v35 = MEMORY[0x277D84F90];
LABEL_25:

  v38 = type metadata accessor for Service();
  v39 = MEMORY[0x2530AD730](v35, v38);
  v41 = v40;

  MEMORY[0x2530AD570](v39, v41);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return v51;
}

char *sub_2529503B8()
{
  v1 = v0;
  v2 = sub_25294F970();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529508A0();
    sub_252E36EA4();

    v14 = sub_252AD24A4();
    v16 = v15;

    sub_252E379F4();
    v18 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v17 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](0x72657320200A7B20, 0xEF0A3A7365636976);
    MEMORY[0x2530AD570](v14, v16);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
    v19 = sub_252AD24A4();

    return v19;
  }

  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v20 = v0;
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = sub_252CDC7C8();
      v10 = v9;

      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2529AA3A0((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v21 + 16) = v12 + 1;
      v13 = v21 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v4 != v6);

    v1 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t Group.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Group.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_2529507DC(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_2529AA3A0(result, v5, 0);
  }

  return result;
}

unint64_t sub_252950854()
{
  result = qword_27F540478;
  if (!qword_27F540478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540478);
  }

  return result;
}

unint64_t sub_2529508A0()
{
  result = qword_27F541110;
  if (!qword_27F541110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541110);
  }

  return result;
}

uint64_t type metadata accessor for Group()
{
  result = qword_2814B06D0;
  if (!qword_2814B06D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252950A0C()
{
  result = qword_27F540490;
  if (!qword_27F540490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540490);
  }

  return result;
}

unint64_t sub_252950A60()
{
  result = qword_27F5404A0;
  if (!qword_27F5404A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5404A0);
  }

  return result;
}

uint64_t sub_252950ADC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_252E32E84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252950B20()
{
  result = qword_27F5404B0;
  if (!qword_27F5404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5404B0);
  }

  return result;
}

unint64_t sub_252950B74(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x486C6F72746E6F63;
    v7 = 0x7265766F63736964;
    v8 = 0x6574616D6F747561;
    if (a1 != 3)
    {
      v8 = 0x636E797361;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656D6F48776F6873;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6553746E65746E69;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4C74696B656D6F68;
    v4 = 0x636972656E6567;
    if (a1 != 6)
    {
      v4 = 0x6F6C466472617567;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_252950D0C(char a1)
{
  result = 0x6C6156736465656ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 9:
      v3 = 5;
      goto LABEL_14;
    case 3:
      return 0x6769626D61736964;
    case 4:
      return 0x746E496573726170;
    case 5:
      return 0x4964696C61766E69;
    case 6:
    case 7:
    case 8:
    case 12:
      return 0x7463657078656E75;
    case 10:
      return 0xD000000000000013;
    case 11:
    case 13:
      return 0xD000000000000011;
    case 14:
      return 0x6D6D6F4361686173;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x6E65746E49707061;
    case 17:
      v3 = 9;
      goto LABEL_14;
    case 18:
    case 20:
      v3 = 11;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    case 19:
      result = 0x5074694B656D6F68;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_252950F64(unsigned __int8 a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544D60);
  sub_252CC3D90(0xD000000000000018, 0x8000000252E6AA50, 0xD00000000000006CLL, 0x8000000252E6AA70);
  v8 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v9 = sub_252E36F04();
  sub_252950B74(a1);
  v10 = sub_252E36F04();

  v11 = 0;
  if (a2 != 21)
  {
    sub_252950D0C(a2);
    v11 = sub_252E36F04();
  }

  if (a4)
  {
    v12 = sub_252E36F04();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_252E36F04();
  v14 = [v8 signatureWithDomain:v9 type:v10 subType:v11 subtypeContext:v12 detectedProcess:v13 triggerThresholdValues:0];

  if (v14)
  {
    v15 = v14;
    sub_252E36E34();
  }

  sub_252E379F4();

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404B8, &qword_252E3C950);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC4050(0xD00000000000001ALL, 0x8000000252E6AB20, 0xD00000000000006CLL, 0x8000000252E6AA70, 0xD000000000000024, 0x8000000252E6AB40, 76);
}

uint64_t sub_252951444()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E6AD20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C0, qword_252E3C958);
  v1 = sub_252E36F94();
  MEMORY[0x2530AD570](v1);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006CLL, 0x8000000252E6AA70);
}

uint64_t sub_25295156C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_252E36E44();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_2529515FC(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v4 = sub_252E36CA4();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_252E37564();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E37534();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_252E36D04();
  v31 = *(v14 - 8);
  v32 = v14;
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252936DF8();
  sub_252E36CC4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_252951AC0(&qword_2814B0220, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v26);
  v18 = sub_252E37594();
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v27;
  *(v19 + 17) = v20;
  v21 = v30;
  *(v19 + 24) = v29;
  *(v19 + 32) = v21;
  aBlock[4] = sub_252951A98;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  sub_252E36CD4();
  v36 = MEMORY[0x277D84F90];
  sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v24 = v33;
  v23 = v34;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v17, v24, v22);
  _Block_release(v22);

  (*(v35 + 8))(v24, v23);
  (*(v31 + 8))(v17, v32);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252951AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252951B10(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 isExcludeFilter];
      sub_252956D08();
      v8 = sub_252E37674();
      if (v7)
      {
        v9 = sub_252E37694();

        if (v9)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 0;
}

unint64_t sub_252951C74(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v3;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_252C32AF0(&v40, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_252E378C4();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_252E378C4();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v37 > 0)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v37)
      {
        goto LABEL_46;
      }

      v36 = v5;
      v20 = v14 + 8 * v16 + 32;
      v31 = v14;
      if (v6)
      {
        if (v18 < 1)
        {
          goto LABEL_48;
        }

        sub_252956D54();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404E0, &unk_252E3C990);
          v22 = sub_2529FBD80(v38, i, v9);
          v24 = *v23;
          (v22)(v38, 0);
          *(v20 + 8 * i) = v24;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeCleaningJob();
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v36;
      if (v37 >= 1)
      {
        v25 = *(v31 + 16);
        v7 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v7)
        {
          goto LABEL_47;
        }

        *(v31 + 16) = v26;
      }

LABEL_5:
      if (v4 == v32)
      {
        return v5;
      }
    }

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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

char *sub_252951FD4(unint64_t a1)
{
  v2 = v1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_21:
  v5 = sub_252E378C4();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v6 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](i, a1);
      }

      else
      {
        if (i >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 roomName];
      if (v10)
      {
        break;
      }

      if (v6 == v5)
      {
        return v20;
      }
    }

    v19 = v2;
    v11 = v10;
    v12 = sub_252E36F34();
    v18 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_2529F7A80(0, *(v20 + 2) + 1, 1, v20);
    }

    v15 = *(v20 + 2);
    v14 = *(v20 + 3);
    if (v15 >= v14 >> 1)
    {
      v20 = sub_2529F7A80((v14 > 1), v15 + 1, 1, v20);
    }

    *(v20 + 2) = v15 + 1;
    v16 = &v20[16 * v15];
    v2 = v19;
    *(v16 + 4) = v12;
    *(v16 + 5) = v18;
  }

  while (v6 != v5);
  return v20;
}

char *sub_25295217C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_252E36324();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v26 = &v25 - v10;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v12 = 0;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 & 0xC000000000000001;
    v29 = (v27 + 48);
    v30 = (v27 + 56);
    v35 = MEMORY[0x277D84F90];
    v28 = (v27 + 32);
    v31 = i;
    while (1)
    {
      if (v33)
      {
        v13 = MEMORY[0x2530ADF00](v12, a1);
      }

      else
      {
        if (v12 >= *(v32 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 zoneName];
      if (v16)
      {
        v17 = v16;
        sub_252E36F34();

        sub_252E37024();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      (*v30)(v5, v18, 1, v6);

      if ((*v29)(v5, 1, v6) == 1)
      {
        sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v19 = *v28;
        v20 = v26;
        (*v28)(v26, v5, v6);
        v19(v34, v20, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_2529F7F74(0, *(v35 + 2) + 1, 1, v35);
        }

        v22 = *(v35 + 2);
        v21 = *(v35 + 3);
        if (v22 >= v21 >> 1)
        {
          v35 = sub_2529F7F74(v21 > 1, v22 + 1, 1, v35);
        }

        v23 = v35;
        *(v35 + 2) = v22 + 1;
        v19(&v23[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22], v34, v6);
      }

      ++v12;
      if (v15 == v31)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_252952520(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_252E36324();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - v10;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v12 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v33 = (v31 + 48);
    v34 = (v31 + 56);
    v32 = (v31 + 32);
    v13 = MEMORY[0x277D84F90];
    v29 = a1;
    while (1)
    {
      if (v36)
      {
        v14 = MEMORY[0x2530ADF00](v12, a1);
      }

      else
      {
        if (v12 >= *(v35 + 16))
        {
          goto LABEL_24;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 deviceType];
      if (qword_27F53F2A0 != -1)
      {
        v26 = v17;
        swift_once();
        v17 = v26;
      }

      v18 = off_27F541CD0;
      if (*(off_27F541CD0 + 2) && (v19 = sub_252A488EC(v17), (v20 & 1) != 0))
      {
        v38 = *(v18[7] + v19);
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      (*v34)(v5, v21, 1, v6);

      if ((*v33)(v5, 1, v6) == 1)
      {
        sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v22 = *v32;
        v23 = v30;
        (*v32)(v30, v5, v6);
        v22(v37, v23, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, *(v13 + 2) + 1, 1, v13);
        }

        v25 = *(v13 + 2);
        v24 = *(v13 + 3);
        if (v25 >= v24 >> 1)
        {
          v13 = sub_2529F7F74(v24 > 1, v25 + 1, 1, v13);
        }

        *(v13 + 2) = v25 + 1;
        v22(&v13[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25], v37, v6);
        a1 = v29;
      }

      ++v12;
      if (v16 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_2529528EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30 = &v26 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (v11 + 56);
  v31 = (v11 + 48);
  v29 = v11;
  v15 = (v11 + 32);
  v16 = (a1 + 40);
  v17 = MEMORY[0x277D84F90];
  v27 = (v11 + 56);
  v28 = v10;
  do
  {
    v19 = *(v16 - 1);
    v18 = *v16;

    sub_252E37024();
    (*v14)(v5, 0, 1, v6);

    if ((*v31)(v5, 1, v6) == 1)
    {
      sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v20 = *v15;
      v21 = v30;
      (*v15)(v30, v5, v6);
      v20(v10, v21, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2529F7F74(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v17 = sub_2529F7F74(v22 > 1, v23 + 1, 1, v17);
      }

      v17[2] = v23 + 1;
      v24 = v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23;
      v10 = v28;
      v20(v24, v28, v6);
      v14 = v27;
    }

    v16 += 2;
    --v13;
  }

  while (v13);
  return v17;
}

uint64_t sub_252952BC4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = *(*(a1 + 48) + (__clz(__rbit64(v5)) | (v8 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F80DC(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2529F80DC((v12 > 1), v13 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 16) = v13 + 1;
        *(v9 + v13 + 32) = v11;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

char *sub_252952D0C(uint64_t a1)
{
  v34 = sub_252E36324();
  v2 = *(*(v34 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v32 = &v28 - v7;
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = (a1 + 32);
  v30 = v8;
  v33 = (v8 + 32);
  v12 = MEMORY[0x277D84F90];
  v13 = &unk_27F541000;
  v29 = v5;
  do
  {
    v15 = *v11++;
    v14 = v15;
    if (qword_27F53F2A0 != -1)
    {
      v26 = v14;
      swift_once();
      v14 = v26;
    }

    v16 = v13[410];
    if (*(v16 + 16))
    {
      v17 = sub_252A488EC(v14);
      if (v18)
      {
        v35 = *(*(v16 + 56) + v17);
        AccessoryTypeSemantic.rawValue.getter();
        v19 = v32;
        sub_252E362F4();
        v20 = *v33;
        v21 = v31;
        v22 = v19;
        v23 = v34;
        (*v33)(v31, v22, v34);
        v20(v5, v21, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F7F74(0, *(v12 + 2) + 1, 1, v12);
        }

        v25 = *(v12 + 2);
        v24 = *(v12 + 3);
        v13 = &unk_27F541000;
        if (v25 >= v24 >> 1)
        {
          v12 = sub_2529F7F74(v24 > 1, v25 + 1, 1, v12);
        }

        *(v12 + 2) = v25 + 1;
        v5 = v29;
        v20(&v12[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25], v29, v34);
      }
    }

    --v10;
  }

  while (v10);
  return v12;
}

void *sub_252952FA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 homeName];
      if (v7)
      {

        v8 = [v5 isExcludeFilter];
        sub_252956D08();
        v9 = sub_252E37674();
        v10 = v9;
        if (!v8)
        {

          return v5;
        }

        v11 = sub_252E37694();

        if ((v11 & 1) == 0)
        {
          return v5;
        }
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_252953124(uint64_t a1)
{
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v16[1] = v1;
    v17 = MEMORY[0x277D84F90];
    sub_2529AA4E0(0, v8, 0);
    v9 = v17;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_252E37024();

      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA4E0(v13 > 1, v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v7, v3);
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_2529532C8@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    memcpy(v15, __src, sizeof(v15));
    v6 = sub_252AEFEB0();
  }

  memcpy(__srca, __dst, sizeof(__srca));
  GEOLocationCoordinate2DMake(__srca);
  memcpy(v13, __srca, sizeof(v13));
  sub_2529353AC(__dst, v15);
  v7 = a2;
  v8 = sub_252D8ACB0(v13);
  memcpy(v15, v13, sizeof(v15));
  sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
  v9 = v8;
  v10 = 1;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
LABEL_10:
      sub_252E37024();
      v10 = 0;
    }
  }

  else if (v9 <= 4 || v9 == 5)
  {
    goto LABEL_10;
  }

  v11 = sub_252E36324();
  return (*(*(v11 - 8) + 56))(a3, v10, 1, v11);
}

uint64_t sub_252953488(void *a1, uint64_t a2, void *a3)
{
  v420 = a3;
  v5 = sub_252E32FF4();
  v427 = *(v5 - 8);
  v428 = v5;
  v6 = *(v427 + 64);
  MEMORY[0x28223BE20](v5);
  v426 = &v418 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E32BA4();
  v429 = *(v8 - 8);
  v430 = v8;
  v9 = *(v429 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v425 = &v418 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v431 = &v418 - v13;
  MEMORY[0x28223BE20](v12);
  v433 = &v418 - v14;
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v447 = &v418 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v448 = &v418 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v449 = &v418 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v423 = &v418 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v450 = &v418 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v443 = &v418 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v439 = &v418 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v437 = &v418 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v444 = (&v418 - v35);
  MEMORY[0x28223BE20](v34);
  v456 = &v418 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v434 = &v418 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v435 = &v418 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v424 = &v418 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v432 = &v418 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v454 = &v418 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v442 = &v418 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v418 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v418 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v418 - v57;
  memcpy(v461, a2, 0x1F8uLL);
  v59 = *(v16 + 56);
  v438 = v58;
  v59(v58, 1, 1, v15);
  v59(v56, 1, 1, v15);
  v436 = v53;
  v59(v53, 1, 1, v15);
  v457 = v15;
  v440 = v56;
  v452 = v59;
  v453 = v16 + 56;
  v455 = v16;
  v419 = a1;
  if (!a1)
  {
    v441 = 0;
    LODWORD(v423) = 0;
    LODWORD(v442) = 0;
    LODWORD(v437) = 0;
    LODWORD(v433) = 0;
    LODWORD(v439) = 0;
    LODWORD(v424) = 0;
    LODWORD(v429) = 0;
    v432 = 0;
    LODWORD(v427) = 0;
    LODWORD(v428) = 0;
    LODWORD(v430) = 0;
    LODWORD(v431) = 0;
    LODWORD(v443) = 0;
    LODWORD(v425) = 0;
    LODWORD(v426) = 0;
    v76 = 0;
    LODWORD(v445) = 0;
    v77 = 0;
    v421 = 0;
    v422 = 709;
    v450 = MEMORY[0x277D84F90];
    v456 = MEMORY[0x277D84F90];
    v444 = MEMORY[0x277D84F90];
    v420 = MEMORY[0x277D84F90];
    v446 = MEMORY[0x277D84F90];
    goto LABEL_241;
  }

  v441 = a1;
  v60 = [v441 filters];
  if (!v60)
  {
    v65 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_53;
    }

    goto LABEL_27;
  }

  v61 = v60;
  type metadata accessor for HomeFilter();
  v62 = sub_252E37264();

  if (v62 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v64 = 0;
    v445 = v62 & 0xFFFFFFFFFFFFFF8;
    v446 = v62 & 0xC000000000000001;
    v451 = v16 + 32;
    v65 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v446)
      {
        v66 = MEMORY[0x2530ADF00](v64, v62);
      }

      else
      {
        if (v64 >= *(v445 + 16))
        {
          goto LABEL_23;
        }

        v66 = *(v62 + 8 * v64 + 32);
      }

      v67 = v66;
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      v69 = [v66 homeEntityName];
      if (v69)
      {
        v70 = v69;
        v71 = i;
        sub_252E36F34();

        v72 = v444;
        sub_252E37024();

        v73 = *v451;
        (*v451)(v456, v72, v457);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_2529F7F74(0, v65[2] + 1, 1, v65);
        }

        v75 = v65[2];
        v74 = v65[3];
        v16 = v455;
        if (v75 >= v74 >> 1)
        {
          v65 = sub_2529F7F74(v74 > 1, v75 + 1, 1, v65);
        }

        v65[2] = v75 + 1;
        v73(v65 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v75, v456, v457);
        i = v71;
      }

      else
      {
      }

      ++v64;
      if (v68 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v65 = MEMORY[0x277D84F90];
LABEL_26:

  v15 = v457;
  v56 = v440;
  if (!v65[2])
  {
LABEL_27:

    v78 = [v441 filters];
    if (v78)
    {
      v79 = v78;
      type metadata accessor for HomeFilter();
      v80 = sub_252E37264();

      if (v80 >> 62)
      {
        goto LABEL_50;
      }

      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (j = v442; v81; j = v442)
      {
        v83 = 0;
        v456 = (v80 & 0xC000000000000001);
        v451 = v80 & 0xFFFFFFFFFFFFFF8;
        v84 = (v16 + 48);
        v444 = MEMORY[0x277D84F90];
        v85 = (v16 + 32);
        v446 = v80;
        while (1)
        {
          if (v456)
          {
            v86 = MEMORY[0x2530ADF00](v83, v80);
          }

          else
          {
            if (v83 >= *(v451 + 16))
            {
              goto LABEL_49;
            }

            v86 = *(v80 + 8 * v83 + 32);
          }

          v87 = v86;
          v88 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          v16 = v81;
          v89 = [v86 outerDeviceName];
          if (v89)
          {
            v90 = v89;
            sub_252E36F34();

            sub_252E37024();
            j = v442;

            v91 = 0;
          }

          else
          {
            v91 = 1;
          }

          v92 = v457;
          v452(j, v91, 1, v457);

          if ((*v84)(j, 1, v92) == 1)
          {
            sub_25293847C(j, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
            v93 = *v85;
            v94 = v437;
            (*v85)(v437, j, v92);
            v93(v439, v94, v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v444 = sub_2529F7F74(0, v444[2] + 1, 1, v444);
            }

            v96 = v444[2];
            v95 = v444[3];
            if (v96 >= v95 >> 1)
            {
              v444 = sub_2529F7F74(v95 > 1, v96 + 1, 1, v444);
            }

            v97 = v444;
            v444[2] = v96 + 1;
            v93(&v97[((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v96], v439, v457);
          }

          ++v83;
          v81 = v16;
          v80 = v446;
          if (v88 == v16)
          {
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v81 = sub_252E378C4();
      }

      v444 = MEMORY[0x277D84F90];
LABEL_52:

      v15 = v457;
      v56 = v440;
      v65 = v444;
      v16 = v455;
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }
  }

LABEL_53:
  v444 = v65;
  v98 = v441;
  v99 = [v441 filters];
  if (v99)
  {
    v100 = v99;
    type metadata accessor for HomeFilter();
    v101 = sub_252E37264();

    if (v101 >> 62)
    {
      goto LABEL_76;
    }

    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (k = v454; v102; k = v454)
    {
      v104 = 0;
      v451 = v101 & 0xC000000000000001;
      v446 = v101 & 0xFFFFFFFFFFFFFF8;
      v105 = v16;
      v16 += 48;
      v456 = MEMORY[0x277D84F90];
      v106 = (v105 + 32);
      v445 = v102;
      while (1)
      {
        if (v451)
        {
          v107 = v101;
          v108 = MEMORY[0x2530ADF00](v104, v101);
        }

        else
        {
          if (v104 >= *(v446 + 16))
          {
            goto LABEL_75;
          }

          v107 = v101;
          v108 = *(v101 + 8 * v104 + 32);
        }

        v109 = v108;
        v110 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          break;
        }

        v111 = [v108 roomName];
        if (v111)
        {
          v112 = v111;
          sub_252E36F34();

          k = v454;
          sub_252E37024();
          v15 = v457;

          v113 = 0;
        }

        else
        {
          v113 = 1;
        }

        v452(k, v113, 1, v15);

        if ((*v16)(k, 1, v15) == 1)
        {
          sub_25293847C(k, &qword_27F540298, &unk_252E3C270);
        }

        else
        {
          v114 = *v106;
          v115 = v443;
          (*v106)(v443, k, v15);
          v114(v450, v115, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v456 = sub_2529F7F74(0, *(v456 + 2) + 1, 1, v456);
          }

          v117 = *(v456 + 2);
          v116 = *(v456 + 3);
          if (v117 >= v116 >> 1)
          {
            v456 = sub_2529F7F74(v116 > 1, v117 + 1, 1, v456);
          }

          v118 = v455;
          v119 = v456;
          *(v456 + 2) = v117 + 1;
          v114(&v119[((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v117], v450, v15);
          k = v454;
        }

        ++v104;
        v101 = v107;
        if (v110 == v445)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v102 = sub_252E378C4();
    }

    v456 = MEMORY[0x277D84F90];
LABEL_78:

    v56 = v440;
    v98 = v441;
    v16 = v455;
  }

  else
  {
    v456 = MEMORY[0x277D84F90];
  }

  v120 = [v98 filters];
  if (v120)
  {
    v121 = v120;
    type metadata accessor for HomeFilter();
    v122 = sub_252E37264();

    v123 = 0;
    v450 = sub_25295217C(v122);
  }

  else
  {
    v123 = 0;
    v450 = MEMORY[0x277D84F90];
  }

  v124 = [v98 userTask];
  v125 = v124;
  v126 = v56;
  if (v124)
  {
    v127 = [v124 attribute];
  }

  else
  {
    v127 = 0;
  }

  v128 = v432;
  static SemanticMapper.getSemanticKey(for:)(v127, v125 == 0, v432);
  v129 = v438;
  sub_25293847C(v438, &qword_27F540298, &unk_252E3C270);
  sub_2529439A0(v128, v129);
  v130 = [v98 filters];
  if (v130)
  {
    v131 = v130;
    type metadata accessor for HomeFilter();
    v132 = sub_252E37264();

    v446 = sub_252952520(v132);
  }

  else
  {
    v446 = MEMORY[0x277D84F90];
  }

  v133 = v126;
  v454 = type metadata accessor for HomeStore();
  v134 = static HomeStore.shared.getter();
  v135 = sub_2529D8DC0();

  a2 = 0x279711000;
  if (v135 >> 62)
  {
    v136 = sub_252E378C4();
  }

  else
  {
    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v136 < 2 || (v137 = [v98 filters]) == 0)
  {
    LODWORD(v445) = 0;
    v145 = v433;
    goto LABEL_114;
  }

  v138 = v137;
  type metadata accessor for HomeFilter();
  v139 = sub_252E37264();

  v140 = sub_252952FA8(v139);

  if (!v140)
  {
    LODWORD(v445) = 0;
    a2 = 0x279711000;
    v145 = v433;
    goto LABEL_114;
  }

  v141 = [v140 homeName];
  if (v141)
  {
    v142 = v141;
    sub_252E36F34();

    v143 = v424;
    sub_252E37024();

    v144 = 0;
  }

  else
  {
    v144 = 1;
    v143 = v424;
  }

  v452(v143, v144, 1, v15);
  sub_252956C98(v143, v133);
  if ((*(v16 + 48))(v133, 1, v15))
  {
    v146 = 0;
    v147 = 0;
  }

  else
  {
    v148 = v423;
    (*(v16 + 16))(v423, v133, v15);
    v149 = sub_252E36304();
    v150 = v15;
    v146 = v149;
    v147 = v151;
    (*(v16 + 8))(v148, v150);
  }

  v145 = v433;
  v152 = static HomeStore.shared.getter();
  v153 = sub_2529D9114();

  if (!v153)
  {
    if (!v147)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  v155 = *(v153 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v154 = *(v153 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  if (!v147)
  {

    if (!v154)
    {
      LODWORD(v445) = 0;
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  if (!v154)
  {
LABEL_108:

LABEL_111:

    v156 = 1;
LABEL_112:
    LODWORD(v445) = v156;
    goto LABEL_113;
  }

  if (v146 != v155 || v147 != v154)
  {
    v394 = sub_252E37DB4();

    v156 = v394 ^ 1;
    goto LABEL_112;
  }

LABEL_109:

  LODWORD(v445) = 0;
LABEL_113:
  a2 = 0x279711000;
LABEL_114:
  v157 = v431;
  v158 = [v98 time];
  if (!v158)
  {
    v451 = 0;
    goto LABEL_124;
  }

  v159 = v158;
  v160 = [v158 startDateComponents];
  if (!v160)
  {
    goto LABEL_121;
  }

  v161 = v160;
  sub_252E32B24();

  v162 = [v159 endDateComponents];
  if (!v162)
  {
    (*(v429 + 8))(v145, v430);
LABEL_121:

    v451 = 0;
    goto LABEL_124;
  }

  v418 = 0;
  v163 = v162;
  sub_252E32B24();

  v164 = v426;
  sub_252E32FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
  v165 = sub_252E32FE4();
  v166 = *(v165 - 8);
  v167 = *(v166 + 72);
  v168 = (*(v166 + 80) + 32) & ~*(v166 + 80);
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_252E3C290;
  (*(v166 + 104))(v169 + v168, *MEMORY[0x277CC99A8], v165);
  sub_2529FE09C(v169);
  swift_setDeallocating();
  (*(v166 + 8))(v169 + v168, v165);
  swift_deallocClassInstance();
  v170 = v425;
  sub_252E32F34();

  (*(v427 + 8))(v164, v428);
  sub_252E32B74();
  LOBYTE(v169) = v171;
  v172 = *(v429 + 8);
  v173 = v170;
  v174 = v430;
  v172(v173, v430);
  if (v169)
  {

    v172(v157, v174);
    v172(v145, v174);
    v451 = 0;
  }

  else
  {
    v175 = sub_252E36274();
    v176 = *(v175 + 48);
    v177 = *(v175 + 52);
    swift_allocObject();
    sub_252E36264();
    sub_252E36254();

    v451 = sub_252E36244();

    v172(v157, v174);
    v172(v145, v174);
  }

  v123 = v418;
  a2 = &off_279711000;
LABEL_124:
  v178 = [v441 filters];
  v56 = v440;
  if (v178)
  {
    v179 = v178;
    type metadata accessor for HomeFilter();
    v180 = sub_252E37264();

    v181 = sub_252951FD4(v180);
  }

  else
  {
    v181 = MEMORY[0x277D84F90];
  }

  v182 = sub_252C75848(v181);

  v183 = [v441 *(a2 + 1712)];
  if (!v183)
  {
    goto LABEL_168;
  }

  v184 = v183;
  v185 = [v183 attribute];

  if (v185 > 8)
  {
    if (v185 > 12)
    {
      if (v185 == 13)
      {
        v205 = [v441 *(a2 + 1712)];
        if (v205 && (v206 = v205, v207 = [v205 value], v206, v207))
        {
          v208 = [v207 stringValue];

          if (v208)
          {
            v209 = sub_252E36F34();
            v211 = v210;

            if (v209 == 0x4D5241534944 && v211 == 0xE600000000000000)
            {

              LODWORD(v443) = 1;
            }

            else
            {
              LODWORD(v443) = sub_252E37DB4();
            }
          }

          else
          {
            LODWORD(v443) = 0;
          }

          a2 = &off_279711000;
        }

        else
        {
          LODWORD(v443) = 0;
        }

        v395 = [v441 *(a2 + 1712)];
        if (v395 && (v396 = v395, v397 = [v395 value], v396, v397) && (v398 = objc_msgSend(v397, sel_stringValue), v397, v398))
        {
          v399 = sub_252E36F34();
          v401 = v400;

          if (v399 == 0x4D52415F59415741 && v401 == 0xE800000000000000)
          {

            LODWORD(v431) = 1;
          }

          else
          {
            LODWORD(v431) = sub_252E37DB4();
          }

          a2 = &off_279711000;
        }

        else
        {
          LODWORD(v431) = 0;
        }

        v402 = [v441 *(a2 + 1712)];
        if (v402 && (v403 = v402, v404 = [v402 value], v403, v404))
        {
          v405 = [v404 stringValue];

          if (v405)
          {
            v406 = sub_252E36F34();
            v408 = v407;

            if (v406 == 0x4D52415F59415453 && v408 == 0xE800000000000000)
            {

              LODWORD(v430) = 1;
            }

            else
            {
              LODWORD(v430) = sub_252E37DB4();
            }
          }

          else
          {
            LODWORD(v430) = 0;
          }

          a2 = &off_279711000;
        }

        else
        {
          LODWORD(v430) = 0;
        }

        v409 = [v441 *(a2 + 1712)];
        if (!v409 || (v410 = v409, v411 = [v409 value], v410, !v411))
        {
          v77 = v123;
          LODWORD(v442) = 0;
          LODWORD(v437) = 0;
          LODWORD(v433) = 0;
          LODWORD(v439) = 0;
          v196 = 0;
          LODWORD(v429) = 0;
          v432 = 0;
          LODWORD(v427) = 0;
          LODWORD(v428) = 0;
          goto LABEL_171;
        }

        v77 = v123;
        v412 = [v411 stringValue];

        if (v412)
        {
          v413 = sub_252E36F34();
          v415 = v414;

          if (v413 == 0x52415F544847494ELL && v415 == 0xE90000000000004DLL)
          {

            LODWORD(v442) = 0;
            LODWORD(v437) = 0;
            LODWORD(v433) = 0;
            LODWORD(v439) = 0;
            v196 = 0;
            v432 = 0;
            LODWORD(v427) = 0;
            LODWORD(v428) = 0;
            LODWORD(v425) = 0;
            LODWORD(v426) = 0;
            LODWORD(v429) = 1;
            a2 = 0x279711000;
            goto LABEL_172;
          }

          LODWORD(v429) = sub_252E37DB4();

          LODWORD(v442) = 0;
          LODWORD(v437) = 0;
          LODWORD(v433) = 0;
          LODWORD(v439) = 0;
          v196 = 0;
        }

        else
        {
          LODWORD(v442) = 0;
          LODWORD(v437) = 0;
          LODWORD(v433) = 0;
          LODWORD(v439) = 0;
          v196 = 0;
          LODWORD(v429) = 0;
        }

        v432 = 0;
        LODWORD(v427) = 0;
        LODWORD(v428) = 0;
LABEL_329:
        LODWORD(v425) = 0;
        LODWORD(v426) = 0;
        a2 = 0x279711000;
        goto LABEL_172;
      }

      if (v185 != 27)
      {
        goto LABEL_168;
      }

      v193 = [v441 *(a2 + 1712)];
      if (v193 && (v194 = v193, v195 = [v193 value], v194, v195))
      {
        LODWORD(v439) = [v195 BOOLValue];
      }

      else
      {
        LODWORD(v439) = 0;
      }

      v249 = [v441 userTask];
      v77 = v123;
      if (v249)
      {
        v250 = v249;
        v251 = [v249 value];

        if (v251)
        {
          v252 = [v251 BOOLValue];

          LODWORD(v442) = 0;
          LODWORD(v437) = 0;
          v196 = 0;
          LODWORD(v429) = 0;
          v432 = 0;
          LODWORD(v427) = 0;
          LODWORD(v428) = 0;
          LODWORD(v430) = 0;
          LODWORD(v431) = 0;
          LODWORD(v443) = 0;
          LODWORD(v425) = 0;
          LODWORD(v426) = 0;
          LODWORD(v433) = v252 ^ 1;
          a2 = 0x279711000;
          goto LABEL_172;
        }
      }

      LODWORD(v442) = 0;
      LODWORD(v437) = 0;
      LODWORD(v433) = 0;
    }

    else
    {
      if (v185 != 9)
      {
        if (v185 == 10)
        {
          v186 = [v441 *(a2 + 1712)];
          if (v186 && (v187 = v186, v188 = [v186 value], v187, v188))
          {
            LODWORD(v428) = [v188 BOOLValue];
          }

          else
          {
            LODWORD(v428) = 0;
          }

          v245 = [v441 *(a2 + 1712)];
          v77 = v123;
          if (v245 && (v246 = v245, v247 = [v245 value], v246, v247))
          {
            v248 = [v247 BOOLValue];

            LODWORD(v442) = 0;
            LODWORD(v433) = 0;
            LODWORD(v439) = 0;
            v196 = 0;
            LODWORD(v429) = 0;
            v432 = 0;
            LODWORD(v430) = 0;
            LODWORD(v431) = 0;
            LODWORD(v443) = 0;
            LODWORD(v425) = 0;
            LODWORD(v426) = 0;
            LODWORD(v427) = v248 ^ 1;
          }

          else
          {
            LODWORD(v442) = 0;
            LODWORD(v433) = 0;
            LODWORD(v439) = 0;
            v196 = 0;
            LODWORD(v429) = 0;
            v432 = 0;
            LODWORD(v427) = 0;
            LODWORD(v430) = 0;
            LODWORD(v431) = 0;
            LODWORD(v443) = 0;
            LODWORD(v425) = 0;
            LODWORD(v426) = 0;
          }

          LODWORD(v437) = 1;
          goto LABEL_172;
        }

LABEL_168:
        v77 = v123;
        goto LABEL_169;
      }

      v197 = [v441 *(a2 + 1712)];
      if (v197)
      {
        v198 = v197;
        v199 = [v197 value];

        if (v199)
        {
          v200 = [v199 type];

          if (v200 == 4)
          {
            v201 = [v441 userTask];
            if (v201)
            {
              v202 = v201;
              v76 = [v201 value];

              if (v76)
              {
                v203 = [v76 integerValue];
                v204 = [v76 integerValue];
                if (v203 == 100)
                {
                  LODWORD(v427) = v204 == 0;
                  v77 = v123;

                  LODWORD(v442) = 0;
                  LODWORD(v437) = 0;
                  LODWORD(v433) = 0;
                  LODWORD(v439) = 0;
                  v196 = 0;
                  LODWORD(v429) = 0;
                  v432 = 0;
                  LODWORD(v430) = 0;
                  LODWORD(v431) = 0;
                  LODWORD(v443) = 0;
                  LODWORD(v425) = 0;
                  LODWORD(v426) = 0;
                  LODWORD(v428) = 1;
                  a2 = 0x279711000;
                  goto LABEL_172;
                }

                goto LABEL_369;
              }
            }
          }
        }
      }

      a2 = &off_279711000;
      v212 = [v441 userTask];
      if (!v212)
      {
        goto LABEL_168;
      }

      v213 = v212;
      v214 = [v212 value];

      if (v214)
      {
        v215 = [v214 type];

        if (v215 == 2)
        {
          v216 = [v441 userTask];
          if (v216)
          {
            v217 = v216;
            v76 = [v216 value];

            if (v76)
            {
              [v76 doubleValue];
              v219 = v218;
              [v76 doubleValue];
              a2 = 0x279711000;
              if (v219 != 100.0)
              {
                goto LABEL_375;
              }

              LODWORD(v427) = v220 == 0.0;
              v77 = v123;

              LODWORD(v442) = 0;
              LODWORD(v437) = 0;
              LODWORD(v433) = 0;
              LODWORD(v439) = 0;
              v196 = 0;
              LODWORD(v429) = 0;
              v432 = 0;
              LODWORD(v430) = 0;
              LODWORD(v431) = 0;
              LODWORD(v443) = 0;
              LODWORD(v425) = 0;
              LODWORD(v426) = 0;
              LODWORD(v428) = 1;
              goto LABEL_172;
            }
          }
        }
      }

      v77 = v123;
      LODWORD(v442) = 0;
      LODWORD(v437) = 0;
      LODWORD(v433) = 0;
      LODWORD(v439) = 0;
    }

    v196 = 0;
    LODWORD(v429) = 0;
    v432 = 0;
    LODWORD(v427) = 0;
    LODWORD(v428) = 0;
    LODWORD(v430) = 0;
    LODWORD(v431) = 0;
    LODWORD(v443) = 0;
    goto LABEL_329;
  }

  if (v185 == 1)
  {
    v77 = v123;
    LODWORD(v442) = 0;
    LODWORD(v437) = 0;
    LODWORD(v433) = 0;
    LODWORD(v439) = 0;
    LODWORD(v429) = 0;
    v432 = 0;
    LODWORD(v427) = 0;
    LODWORD(v428) = 0;
    LODWORD(v430) = 0;
    LODWORD(v431) = 0;
    LODWORD(v443) = 0;
    LODWORD(v425) = 0;
    LODWORD(v426) = 0;
    v196 = 1;
    goto LABEL_172;
  }

  if (v185 == 6)
  {
    v77 = v123;
    LODWORD(v437) = 0;
    LODWORD(v433) = 0;
    LODWORD(v439) = 0;
    v196 = 0;
    LODWORD(v429) = 0;
    v432 = 0;
    LODWORD(v427) = 0;
    LODWORD(v428) = 0;
    LODWORD(v430) = 0;
    LODWORD(v431) = 0;
    LODWORD(v443) = 0;
    LODWORD(v425) = 0;
    LODWORD(v426) = 0;
    LODWORD(v442) = 1;
    goto LABEL_172;
  }

  if (v185 != 8)
  {
    goto LABEL_168;
  }

  v189 = [v441 *(a2 + 1712)];
  if (v189 && (v190 = v189, v191 = [v189 value], v190, v191))
  {
    v192 = [v191 BOOLValue];

    LODWORD(v426) = v192 ^ 1;
  }

  else
  {
    LODWORD(v426) = 0;
  }

  v253 = [v441 *(a2 + 1712)];
  v77 = v123;
  if (v253 && (v254 = v253, v255 = [v253 value], v254, v255))
  {
    LODWORD(v425) = [v255 BOOLValue];

    LODWORD(v442) = 0;
    LODWORD(v437) = 0;
    LODWORD(v433) = 0;
    LODWORD(v439) = 0;
    v196 = 0;
    LODWORD(v429) = 0;
    v432 = 0;
    LODWORD(v427) = 0;
    LODWORD(v428) = 0;
    LODWORD(v430) = 0;
    LODWORD(v431) = 0;
    LODWORD(v443) = 0;
  }

  else
  {
    LODWORD(v442) = 0;
    LODWORD(v437) = 0;
    LODWORD(v433) = 0;
    LODWORD(v439) = 0;
    v196 = 0;
    LODWORD(v429) = 0;
    v432 = 0;
    LODWORD(v427) = 0;
    LODWORD(v428) = 0;
    LODWORD(v430) = 0;
    LODWORD(v431) = 0;
    LODWORD(v443) = 0;
    LODWORD(v425) = 0;
  }

LABEL_172:
  if (*(v182 + 16) == 1)
  {
    v221 = sub_252DA0998(v182);
    v223 = v222;

    if (!v223)
    {
      LODWORD(v424) = 0;
      v228 = v441;
LABEL_185:
      a2 = &off_279711000;
      goto LABEL_186;
    }

    v224 = static HomeStore.shared.getter();
    v225 = sub_2529F219C();
    v227 = v226;

    v228 = v441;
    if (v227)
    {
      sub_252956C8C(v225, 1);
    }

    else if (v225)
    {
      v229 = *&v225[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

      v230 = [v229 room];
      if (v230)
      {
        v231 = v230;
        v232 = type metadata accessor for Room();
        v233 = *(v232 + 48);
        v234 = *(v232 + 52);
        swift_allocObject();
        v235 = sub_2529A1E08(v231);
        sub_252956C8C(v225, 0);
        if (v221 == *(v235 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && v223 == *(v235 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {

          sub_252956C8C(v225, 0);

          LODWORD(v424) = 1;
        }

        else
        {
          LODWORD(v424) = sub_252E37DB4();

          sub_252956C8C(v225, 0);
        }

        goto LABEL_185;
      }

      sub_252956C8C(v225, 0);

      sub_252956C8C(v225, 0);
      goto LABEL_184;
    }

LABEL_184:
    LODWORD(v424) = 0;
    goto LABEL_185;
  }

  LODWORD(v424) = 0;
  v228 = v441;
LABEL_186:
  v236 = [v228 *(a2 + 1712)];
  if (!v236 || (v237 = v236, v238 = [v236 attribute], v237, v238 != 5))
  {
    v422 = 709;
    goto LABEL_214;
  }

  v239 = [v228 *(a2 + 1712)];
  if (!v239)
  {
    goto LABEL_212;
  }

  v240 = v239;
  v241 = [v239 value];

  if (!v241)
  {
    v239 = 0;
    goto LABEL_213;
  }

  v242 = [v241 stringValue];

  if (!v242)
  {
    v239 = 0;
LABEL_212:
    v241 = 0;
    goto LABEL_213;
  }

  v243 = sub_252E36F34();
  v241 = v244;

  v239 = v243;
LABEL_213:
  sub_252C55FB4(v239, v241, v460);

  LODWORD(v422) = LOWORD(v460[0]);
  HIDWORD(v422) = LOWORD(v460[0]) != 709;
LABEL_214:
  v421 = v196 | sub_252C4D664(5);
  v256 = [v228 *(a2 + 1712)];
  if (!v256)
  {
    sub_252C515AC();

    v441 = 0;
    LODWORD(v423) = 0;
    v420 = MEMORY[0x277D84F90];
    v59 = v452;
    goto LABEL_240;
  }

  v257 = v256;
  v258 = [v256 attribute];

  if (v258 != 67)
  {

    v441 = 0;
    LODWORD(v423) = 0;
LABEL_239:
    v420 = MEMORY[0x277D84F90];
    v59 = v452;
    goto LABEL_240;
  }

  LODWORD(v423) = sub_252C4B68C();
  if (!v420)
  {
LABEL_238:

    v441 = 0;
    goto LABEL_239;
  }

  a2 = v420;
  v259 = [a2 entityResponses];
  if (v259)
  {
    v260 = v259;
    type metadata accessor for HomeEntityResponse();
    v261 = sub_252E37264();

    v262 = sub_252951C74(v261);

    if (!(v262 >> 62))
    {
      goto LABEL_219;
    }
  }

  else
  {
    v262 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_219:
      result = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_220;
      }

LABEL_224:
      if (sub_252C4B68C())
      {
        goto LABEL_225;
      }

      goto LABEL_238;
    }
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_224;
  }

LABEL_220:
  if ((v262 & 0xC000000000000001) != 0)
  {
    v264 = MEMORY[0x2530ADF00](0, v262);
  }

  else
  {
    if (!*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v264 = *(v262 + 32);
  }

  v265 = v264;
  v266 = [v264 runState];

  if (v266 != 2)
  {
    goto LABEL_224;
  }

LABEL_225:
  v267 = [v228 userTask];
  if (!v267)
  {
    sub_252C515AC();
LABEL_319:
    v385 = sub_2529A7F24(0, v262);
    v59 = v452;
    if (v385 != 13)
    {
      sub_252A79DB4(v385);
      v386 = v435;
      sub_252E37024();

      v387 = v436;
      sub_25293847C(v436, &qword_27F540298, &unk_252E3C270);
      v59(v386, 0, 1, v457);
      v388 = v386;
      goto LABEL_321;
    }

    goto LABEL_322;
  }

  v268 = v267;
  v269 = [v267 taskType];

  if (v269 != 1)
  {
    goto LABEL_319;
  }

  v270 = [v228 userTask];
  v59 = v452;
  if (v270)
  {
    v271 = v270;
    v272 = [v270 value];

    if (v272)
    {
      v273 = [v272 cleaningJob];

      if (v273)
      {
        v76 = v273;
        LOBYTE(v274) = sub_2529A7F24(v273, v262);

        if (v274 != 13)
        {
          goto LABEL_367;
        }
      }
    }
  }

  while (1)
  {
LABEL_322:
    v389 = sub_2529A8628(v262);

    if (*(v389 + 16))
    {
      v390 = sub_252953124(v389);

      v420 = v390;
      v391 = v390[2];
      v392 = v391 >= 2;
      v393 = (v391 - 2);
      if (!v392)
      {
        v393 = 0;
      }

      v441 = v393;
    }

    else
    {

      v441 = 0;
      v420 = MEMORY[0x277D84F90];
    }

LABEL_240:
    v76 = v451;
LABEL_241:
    memcpy(v460, v461, sizeof(v460));
    v204 = sub_252956B94(v460);
    v451 = v76;
    if (v204 == 1)
    {
      break;
    }

    v418 = v77;
    v123 = v460[4];
    v278 = *(v460[4] + 16);
    if (!v278)
    {
      a2 = 0;
LABEL_260:
      v282 = 0;
      v283 = v460[24];
      v56 = *(v460[24] + 16);
      v182 = 41;
      while (1)
      {
        LODWORD(v454) = v56 != v282;
        if (v56 == v282)
        {
          goto LABEL_267;
        }

        if (v282 >= *(v283 + 16))
        {
          break;
        }

        LOBYTE(v458[0]) = *(v283 + 32 + v282);
        v459 = 41;
        v285 = StateSemantic.rawValue.getter();
        v123 = v286;
        v287 = StateSemantic.rawValue.getter();
        v76 = v288;
        if (v285 == v287 && v123 == v288)
        {

LABEL_267:
          v289 = v419;
          if (v419)
          {
            v276 = v452;
            v277 = v435;
            goto LABEL_300;
          }

          v290 = v460[19];
          v291 = *(v460[19] + 16);
          if (v291)
          {
            v182 = 0;
            v56 = v460[19] + 40;
            v76 = MEMORY[0x277D84F90];
            while (v182 < *(v290 + 16))
            {
              v293 = *(v56 - 8);
              v292 = *v56;

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v76 = sub_2529F7F74(0, v76[2] + 1, 1, v76);
              }

              v295 = v76[2];
              v294 = v76[3];
              v123 = v295 + 1;
              if (v295 >= v294 >> 1)
              {
                v76 = sub_2529F7F74(v294 > 1, v295 + 1, 1, v76);
              }

              ++v182;
              v76[2] = v123;
              (*(v455 + 32))(v76 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v295, v449, v457);
              v56 += 16;
              if (v291 == v182)
              {
                goto LABEL_279;
              }
            }

            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            if (v220 == 0.0)
            {
LABEL_376:
              v77 = v123;

              LODWORD(v442) = 0;
              LODWORD(v437) = 0;
              LODWORD(v433) = 0;
              LODWORD(v439) = 0;
              v196 = 0;
              LODWORD(v429) = 0;
              v432 = 0;
              LODWORD(v428) = 0;
              LODWORD(v430) = 0;
              LODWORD(v431) = 0;
              LODWORD(v443) = 0;
              LODWORD(v425) = 0;
              LODWORD(v426) = 0;
              LODWORD(v427) = 1;
              goto LABEL_172;
            }

LABEL_370:
            v77 = v123;
            v417 = sub_252D0842C();

            if (v417)
            {
              v432 = *(v417 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

              LODWORD(v442) = 0;
              LODWORD(v437) = 0;
              LODWORD(v433) = 0;
              LODWORD(v439) = 0;
              v196 = 0;
              LODWORD(v429) = 0;
LABEL_170:
              LODWORD(v427) = 0;
              LODWORD(v428) = 0;
              LODWORD(v430) = 0;
              LODWORD(v431) = 0;
              LODWORD(v443) = 0;
LABEL_171:
              LODWORD(v425) = 0;
              LODWORD(v426) = 0;
              goto LABEL_172;
            }

LABEL_169:
            LODWORD(v442) = 0;
            LODWORD(v437) = 0;
            LODWORD(v433) = 0;
            LODWORD(v439) = 0;
            v196 = 0;
            LODWORD(v429) = 0;
            v432 = 0;
            goto LABEL_170;
          }

          v76 = MEMORY[0x277D84F90];
LABEL_279:
          v296 = v460[21];
          v182 = *(v460[21] + 16);
          if (v182)
          {
            v297 = 0;
            v456 = (v455 + 32);
            v56 = v460[21] + 40;
            v123 = MEMORY[0x277D84F90];
            while (v297 < *(v296 + 16))
            {
              v299 = *(v56 - 8);
              v298 = *v56;

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v123 = sub_2529F7F74(0, *(v123 + 16) + 1, 1, v123);
              }

              v301 = *(v123 + 16);
              v300 = *(v123 + 24);
              if (v301 >= v300 >> 1)
              {
                v123 = sub_2529F7F74(v300 > 1, v301 + 1, 1, v123);
              }

              ++v297;
              *(v123 + 16) = v301 + 1;
              (*(v455 + 32))(v123 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v301, v448, v457);
              v56 += 16;
              if (v182 == v297)
              {
                goto LABEL_289;
              }
            }

            goto LABEL_373;
          }

          v123 = MEMORY[0x277D84F90];
LABEL_289:
          v458[0] = v76;
          v76 = v458;
          sub_25297AE2C(v123);
          v444 = v458[0];
          v302 = v460[13];
          v303 = *(v460[13] + 16);
          if (v303)
          {
            v304 = 0;
            v56 = v455 + 32;
            v305 = (v460[13] + 40);
            v456 = MEMORY[0x277D84F90];
            while (v304 < *(v302 + 16))
            {
              v307 = *(v305 - 1);
              v306 = *v305;

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v456 = sub_2529F7F74(0, *(v456 + 2) + 1, 1, v456);
              }

              v123 = *(v456 + 2);
              v308 = *(v456 + 3);
              v76 = (v123 + 1);
              if (v123 >= v308 >> 1)
              {
                v456 = sub_2529F7F74(v308 > 1, v123 + 1, 1, v456);
              }

              ++v304;
              v309 = v455;
              v310 = v456;
              *(v456 + 2) = v76;
              (*(v309 + 32))(&v310[((*(v309 + 80) + 32) & ~*(v309 + 80)) + *(v309 + 72) * v123], v447, v457);
              v305 += 2;
              if (v303 == v304)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_374;
          }

          v456 = MEMORY[0x277D84F90];
LABEL_299:

          v312 = v418;
          v450 = sub_2529528EC(v311);

          v314 = sub_2529FE6F0(v313, MEMORY[0x277D84FA0]);

          v316 = sub_2529FE6F0(v315, v314);

          v317 = sub_252952BC4(v316);

          v318 = sub_252A47B1C(v317);

          v446 = sub_252952D0C(v318);
          v418 = v312;

          v276 = v452;
          v277 = v435;
          v289 = v419;
LABEL_300:
          memcpy(v458, v460, 0x1F8uLL);
          LODWORD(v455) = sub_252CDFDD4();
          memcpy(v458, v460, 0x1F8uLL);
          v319 = sub_252A0E1E8();
          v320 = v457;
          if ((v319 & 1) != 0 || LOBYTE(v460[5]) != 4)
          {
            LODWORD(v449) = 1;
            if (!v289)
            {
              goto LABEL_308;
            }
          }

          else
          {
            LODWORD(v449) = 0;
            if (!v289)
            {
LABEL_308:
              type metadata accessor for HomeAutomationIntentContext(0);
              memcpy(v458, v460, 0x1F8uLL);
              sub_2529532C8(v458, v289, v277);
              v324 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
              v325 = *(v324 + 48);
              v326 = *(v324 + 52);
              v327 = swift_allocObject();
              v328 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
              v276(v327 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v320);
              swift_beginAccess();
              sub_252956BAC(v277, v327 + v328);
              swift_endAccess();
              sub_25293847C(v277, &qword_27F540298, &unk_252E3C270);
              v329 = type metadata accessor for HomeAutomationHomeLocation(0);
              v330 = *(v329 + 48);
              v331 = *(v329 + 52);
              v275 = swift_allocObject();
              *(v275 + 16) = 0;
              sub_252956C1C(v327 + v328, v275 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
              swift_setDeallocating();
              v332 = v327 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
              goto LABEL_314;
            }
          }

          v321 = [v289 filters];
          if (!v321)
          {
            goto LABEL_308;
          }

          v322 = v321;
          type metadata accessor for HomeFilter();
          v323 = sub_252E37264();

          LOBYTE(v322) = sub_252951B10(v323);

          if (v322)
          {
            sub_25293847C(v461, &qword_27F5404C8, &unk_252E3FD60);
            v275 = 0;
            v56 = v440;
            goto LABEL_315;
          }

          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v333 = sub_252E36AD4();
          __swift_project_value_buffer(v333, qword_27F544D18);
          v334 = sub_252E36AC4();
          v335 = sub_252E374C4();
          if (os_log_type_enabled(v334, v335))
          {
            v336 = swift_slowAlloc();
            *v336 = 0;
            _os_log_impl(&dword_252917000, v334, v335, "calling to set smallest container", v336, 2u);
            MEMORY[0x2530AED00](v336, -1, -1);
          }

          type metadata accessor for HomeAutomationIntentContext(0);
          memcpy(v458, v460, 0x1F8uLL);
          sub_2529532C8(v458, v289, v277);
          v337 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
          v338 = *(v337 + 48);
          v339 = *(v337 + 52);
          v327 = swift_allocObject();
          v340 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
          v276(v327 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v320);
          swift_beginAccess();
          sub_252956BAC(v277, v327 + v340);
          swift_endAccess();
          v341 = v276;
          sub_25293847C(v277, &qword_27F540298, &unk_252E3C270);
          v342 = type metadata accessor for HomeAutomationHomeLocation(0);
          v343 = *(v342 + 48);
          v344 = *(v342 + 52);
          v345 = swift_allocObject();
          *(v345 + 16) = 0;
          sub_252956C1C(v327 + v340, v345 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
          swift_setDeallocating();
          v332 = v327 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
          v275 = v345;
          v276 = v341;
LABEL_314:
          sub_25293847C(v332, &qword_27F540298, &unk_252E3C270);
          v346 = *(*v327 + 48);
          v347 = *(*v327 + 52);
          swift_deallocClassInstance();
          sub_25293847C(v461, &qword_27F5404C8, &unk_252E3FD60);
          v56 = v440;
          goto LABEL_315;
        }

        ++v282;
        v284 = sub_252E37DB4();

        if (v284)
        {
          goto LABEL_267;
        }
      }

      __break(1u);
LABEL_369:
      a2 = 0x279711000;
      if (!v204)
      {
        goto LABEL_376;
      }

      goto LABEL_370;
    }

    v279 = 0;
    v274 = v460[4] + 32;
    v262 = v278 - 1;
    v77 = 6647407;
    v59 = 0xE400000000000000;
    v56 = 1701670771;
    while (v279 < *(v123 + 16))
    {
      v280 = *(v274 + v279);
      if (v280 <= 1)
      {
        if (*(v274 + v279))
        {
          v76 = 0xE400000000000000;
        }

        else
        {
          v76 = 0xE300000000000000;
        }
      }

      else if (v280 == 3)
      {
        v76 = 0xE400000000000000;
      }

      else
      {
        if (v280 != 4)
        {

          a2 = 1;
          goto LABEL_260;
        }

        v76 = 0xE600000000000000;
      }

      a2 = sub_252E37DB4();

      if ((a2 & 1) == 0 && v262 != v279++)
      {
        continue;
      }

      goto LABEL_260;
    }

    __break(1u);
LABEL_367:
    sub_252A79DB4(v274);
    sub_252A79DB4(v274);
    v416 = v435;
    sub_252E362F4();

    v387 = v436;
    sub_25293847C(v436, &qword_27F540298, &unk_252E3C270);
    v59(v416, 0, 1, v457);
    v388 = v416;
LABEL_321:
    sub_2529439A0(v388, v387);
  }

  LODWORD(v455) = 0;
  LODWORD(v449) = 0;
  LODWORD(v454) = 0;
  v275 = 0;
  LOBYTE(a2) = 0;
  v276 = v59;
  v277 = v435;
LABEL_315:
  v348 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
  v349 = *(v348 + 48);
  v350 = *(v348 + 52);
  swift_allocObject();
  v351 = sub_2529930C0();
  *(v351 + 16) = a2 & 1;
  v352 = *(v351 + 24);
  *(v351 + 24) = v275;
  v448 = v275;

  *(v351 + 32) = v445 & 1;
  v353 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_attribute;
  swift_beginAccess();
  sub_252956BAC(v438, v351 + v353);
  swift_endAccess();
  v354 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v444;

  v355 = sub_252985AA4(v456);

  v356 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_roomNames);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_roomNames) = v355;

  v357 = sub_252985AA4(v450);

  v358 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_zoneNames);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_zoneNames) = v357;

  sub_252956C1C(v56, v277);
  v359 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v360 = *(v359 + 48);
  v361 = *(v359 + 52);
  v362 = swift_allocObject();
  v363 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v364 = 1;
  v276(v362 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v457);
  swift_beginAccess();
  sub_252956BAC(v277, v362 + v363);
  swift_endAccess();
  sub_25293847C(v277, &qword_27F540298, &unk_252E3C270);
  v365 = type metadata accessor for HomeAutomationHomeLocation(0);
  v366 = *(v365 + 48);
  v367 = *(v365 + 52);
  v368 = swift_allocObject();
  *(v368 + 16) = 0;
  sub_252956C1C(v362 + v363, v368 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v362 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  v369 = *(*v362 + 48);
  v370 = *(*v362 + 52);
  swift_deallocClassInstance();
  v371 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = v368;

  v372 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_deviceTypes);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_deviceTypes) = v446;

  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSensorTrippedRequest) = v454;
  v373 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_userDefinedDuration);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_userDefinedDuration) = v451;

  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = v428;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = v427;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest) = v425;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest) = v426;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isDisarmRequest) = v443 & 1;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmAwayRequest) = v431 & 1;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmStayRequest) = v430 & 1;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmNightRequest) = v429 & 1;
  v374 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numericValue);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numericValue) = v432;

  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isInCurrentRoom) = v424 & 1;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest) = BYTE4(v422);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isScheduleRequest) = v449;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSceneRequest) = v421 & 1;
  v375 = v434;
  if (v422 != 709)
  {
    LOWORD(v458[0]) = v422;
    HueSemantic.rawValue.getter();
    sub_252E362F4();
    v364 = 0;
  }

  v452(v375, v364, 1, v457);
  v376 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor;
  swift_beginAccess();
  sub_252956BAC(v375, v351 + v376);
  swift_endAccess();
  sub_25293847C(v375, &qword_27F540298, &unk_252E3C270);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOnRequest) = v439;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOffRequest) = v433;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest) = v437;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTemperatureRequest) = v442;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isRVC) = v455 & 1;
  v377 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_secondaryCleanMode;
  swift_beginAccess();
  v378 = v436;
  sub_252956BAC(v436, v351 + v377);
  swift_endAccess();
  v379 = sub_252985AA4(v420);

  v380 = *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_serviceAreaNames);
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_serviceAreaNames) = v379;

  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isJobResumed) = v423 & 1;
  *(v351 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numOverflowServiceAreas) = v441;
  v381 = type metadata accessor for HomeAutomationIntentContext(0);
  v382 = *(v381 + 48);
  v383 = *(v381 + 52);
  swift_allocObject();
  v384 = sub_252996D9C(v351);

  sub_25293847C(v378, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v438, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v440, &qword_27F540298, &unk_252E3C270);
  return v384;
}

uint64_t sub_252956B94(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252956BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_252956C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_252956C8C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_252956C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_252956D08()
{
  result = qword_27F5404D8;
  if (!qword_27F5404D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5404D8);
  }

  return result;
}

unint64_t sub_252956D54()
{
  result = qword_27F5404E8;
  if (!qword_27F5404E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5404E0, &unk_252E3C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5404E8);
  }

  return result;
}

uint64_t sub_252956DB8()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_252956E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v24);
    v25 = sub_252E36324();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      v27 = v24;
LABEL_6:
      result = sub_252938BBC(v27);
LABEL_7:
      v29 = v47;
      *v47 = 0u;
      *(v29 + 1) = 0u;
      return result;
    }

    v30 = v47;
    v47[3] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    return (*(v26 + 32))(boxed_opaque_existential_0, v24, v25);
  }

  else
  {
    if ((a1 != 0x676E697274536F74 || a2 != 0xE800000000000000) && (sub_252E37DB4() & 1) == 0)
    {
      if (a1 == 0xD000000000000011 && 0x8000000252E66B50 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v16);
        v36 = sub_252E36324();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);
        if (v38(v16, 1, v36) == 1)
        {
          sub_252938BBC(v16);
          (*(v37 + 56))(v19, 1, 1, v36);
        }

        else
        {
          sub_2529862C8(1, v19);
          (*(v37 + 8))(v16, v36);
          if (v38(v19, 1, v36) != 1)
          {
            v42 = v47;
            v47[3] = v36;
            v43 = __swift_allocate_boxed_opaque_existential_0(v42);
            return (*(v37 + 32))(v43, v19, v36);
          }
        }

        v27 = v19;
        goto LABEL_6;
      }

      if (a1 != 0xD000000000000013 || 0x8000000252E66B30 != a2)
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v10);
      v39 = sub_252E36324();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (v41(v10, 1, v39) == 1)
      {
        sub_252938BBC(v10);
        (*(v40 + 56))(v13, 1, 1, v39);
      }

      else
      {
        sub_2529862C8(0, v13);
        (*(v40 + 8))(v10, v39);
        if (v41(v13, 1, v39) != 1)
        {
          v44 = v47;
          v47[3] = v39;
          v45 = __swift_allocate_boxed_opaque_existential_0(v44);
          return (*(v40 + 32))(v45, v13, v39);
        }
      }

      v27 = v13;
      goto LABEL_6;
    }

    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v22);
    v32 = sub_252E36324();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v22, 1, v32) == 1)
    {
      v27 = v22;
      goto LABEL_6;
    }

    v34 = v47;
    v47[3] = v32;
    v35 = __swift_allocate_boxed_opaque_existential_0(v34);
    return (*(v33 + 32))(v35, v22, v32);
  }
}

uint64_t sub_2529573C4()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252957420()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252957468@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2529574E0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252957538(uint64_t a1)
{
  v2 = sub_252957E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252957574(uint64_t a1)
{
  v2 = sub_252957E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2529575B0()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_252957644()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2529576E0()
{
  if (!qword_27F540500)
  {
    sub_252E36324();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F540500);
    }
  }
}

uint64_t sub_252957760(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252957798()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_252957828(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v19 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540528, &qword_252E3CAE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v1[2] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252957E30();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationHomeLocation(0);
    v15 = *(*v1 + 12);
    v16 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    sub_252E36324();
    sub_252957DE8(&qword_27F540538, MEMORY[0x277D55C48]);
    v14 = v19;
    sub_252E37BE4();
    (*(v13 + 8))(v11, v7);
    sub_2529439A0(v14, v1 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void *sub_252957ABC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_252957B04(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

id *sub_252957B74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationHomeLocation(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_252957828(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252957BD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540540, &qword_252E3CAE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252957E30();
  sub_252E37F84();
  sub_252E36324();
  sub_252957DE8(&qword_27F540548, MEMORY[0x277D55C48]);
  sub_252E37CD4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_252957DE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252957E30()
{
  result = qword_27F540530;
  if (!qword_27F540530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540530);
  }

  return result;
}

unint64_t sub_252957E98()
{
  result = qword_27F540550;
  if (!qword_27F540550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540550);
  }

  return result;
}

unint64_t sub_252957EF0()
{
  result = qword_27F540558;
  if (!qword_27F540558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540558);
  }

  return result;
}

unint64_t sub_252957F48()
{
  result = qword_27F540560;
  if (!qword_27F540560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540560);
  }

  return result;
}

uint64_t sub_252957F9C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295806C, 0, 0);
}

uint64_t sub_25295806C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A4D4, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_252958250()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_25295A650;
  }

  else
  {
    v3 = sub_25295A654;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252958364(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252958434, 0, 0);
}

uint64_t sub_252958434()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_252958618(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529586E8, 0, 0);
}

uint64_t sub_2529586E8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_2529588CC(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295899C, 0, 0);
}

uint64_t sub_25295899C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_252958B80(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252958C50, 0, 0);
}

uint64_t sub_252958C50()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958E34;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_252958E34()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_252958FC0;
  }

  else
  {
    v3 = sub_252958F48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252958F48()
{
  v1 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252958FC0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[23];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252959034(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252959104, 0, 0);
}

uint64_t sub_252959104()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_2529592E8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529593B8, 0, 0);
}

uint64_t sub_2529593B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_25295959C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295966C, 0, 0);
}

uint64_t sub_25295966C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_252959850(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252959920, 0, 0);
}

uint64_t sub_252959920()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  sub_25295A464(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_25294B588(v1, v8 + v7);
  sub_252943BD0(sub_25295A658, v8, 1, v5, v6);
  v9 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v9 + 72, (v0 + 12));
  v10 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v10, v11);
}

uint64_t sub_252959B04()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_252959B84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_25295A0A4)(a2);
}

void *sub_252959C34@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockLargeDurationHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

id sub_252959C70(void *a1)
{
  v2 = sub_252E32FF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E32BA4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  result = [a1 time];
  if (result)
  {
    v24 = result;
    v25 = [result startDateComponents];
    if (v25)
    {
      v42 = v3;
      v43 = v6;
      v26 = v25;
      sub_252E32B24();

      v27 = v8[4];
      v27(v22, v20, v7);
      v28 = [v24 endDateComponents];
      if (v28)
      {
        v29 = v28;
        sub_252E32B24();

        v27(v17, v14, v7);
        sub_252E32FC4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
        v30 = sub_252E32FE4();
        v31 = *(v30 - 8);
        v32 = *(v31 + 72);
        v33 = *(v31 + 80);
        v41 = v2;
        v34 = (v33 + 32) & ~v33;
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_252E3C290;
        (*(v31 + 104))(v35 + v34, *MEMORY[0x277CC99A0], v30);
        sub_2529FE09C(v35);
        swift_setDeallocating();
        (*(v31 + 8))(v35 + v34, v30);
        swift_deallocClassInstance();
        v36 = v43;
        v37 = v44;
        sub_252E32F34();

        (*(v42 + 8))(v36, v41);
        v38 = sub_252E32B64();
        LOBYTE(v35) = v39;

        v40 = v8[1];
        v40(v37, v7);
        v40(v17, v7);
        v40(v22, v7);
        if (v35)
        {
          return 0;
        }

        else
        {
          return (v38 > 60);
        }
      }

      (v8[1])(v22, v7);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25295A0A4()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295A140, 0, 0);
}

uint64_t sub_25295A140()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);

  sub_252E362B4();

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25295A234;
  v5 = v0[2];
  v4 = v0[3];

  return sub_252957F9C(v4);
}

uint64_t sub_25295A234()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_25295A3FC(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25295A398, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_25295A398()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_25295A3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25295A464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25295A5D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252D19298(v4, a1);
}

uint64_t sub_25295A670(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v73 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = (v1 + 32 + 504 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= v2)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        result = memcpy(v77, v5, 0x1F8uLL);
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_81;
        }

        if (*(v77[13] + 16) && !*(v77[17] + 16))
        {
          break;
        }

        ++v6;
        v5 += 504;
        if (v3 == v2)
        {
          goto LABEL_14;
        }
      }

      sub_2529353AC(v77, v76);
      v7 = v4;
      v74[0] = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2529AA480(0, *(v4 + 16) + 1, 1);
        v7 = v74[0];
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2529AA480((v8 > 1), v9 + 1, 1);
        v7 = v74[0];
      }

      *(v7 + 16) = v9 + 1;
      v4 = v7;
      result = memcpy((v7 + 504 * v9 + 32), v77, 0x1F8uLL);
      v2 = v73;
    }

    while (v3 != v73);
LABEL_14:
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_15:
    v12 = (v1 + 32 + 504 * v10);
    v13 = v10;
    v14 = v73;
    while (v13 < v14)
    {
      result = memcpy(v77, v12, 0x1F8uLL);
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_83;
      }

      if (*(v77[17] + 16) && !*(v77[13] + 16))
      {
        sub_2529353AC(v77, v76);
        v15 = v11;
        v74[0] = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v11 + 16) + 1, 1);
          v15 = v74[0];
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2529AA480((v16 > 1), v17 + 1, 1);
          v15 = v74[0];
        }

        *(v15 + 16) = v17 + 1;
        v11 = v15;
        result = memcpy((v15 + 504 * v17 + 32), v77, 0x1F8uLL);
        if (v10 != v73)
        {
          goto LABEL_15;
        }

LABEL_26:
        v18 = v4;
        result = v11;
        v19 = *(v4 + 16);
        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_46;
      }

      ++v13;
      v12 += 504;
      v14 = v73;
      if (v10 == v73)
      {
        goto LABEL_26;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v18 = MEMORY[0x277D84F90];
  result = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
LABEL_29:
    if (*(result + 16))
    {
      v70 = v1;
      v64 = result;
      v20 = 0;
      v21 = MEMORY[0x277D84F90];
      v22 = 136;
      v71 = 0;
      v72 = v18;
      while (v20 < *(v18 + 16))
      {
        v23 = *(v18 + v22);
        v24 = *(v23 + 16);
        v25 = *(v21 + 16);
        v26 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          goto LABEL_85;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v26 > *(v21 + 24) >> 1)
        {
          if (v25 <= v26)
          {
            v27 = v25 + v24;
          }

          else
          {
            v27 = v25;
          }

          result = sub_2529F7A80(result, v27, 1, v21);
          v21 = result;
        }

        v18 = v72;
        if (*(v23 + 16))
        {
          if ((*(v21 + 24) >> 1) - *(v21 + 16) < v24)
          {
            goto LABEL_88;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v28 = *(v21 + 16);
            v29 = __OFADD__(v28, v24);
            v30 = v28 + v24;
            if (v29)
            {
              goto LABEL_91;
            }

            *(v21 + 16) = v30;
          }
        }

        else
        {

          if (v24)
          {
            goto LABEL_86;
          }
        }

        ++v20;
        v22 += 504;
        if (v19 == v20)
        {
          v31 = v73;
          if (v73)
          {
            v32 = 0;
            v65 = v70 + 32;
            v67 = v21 + 32;
            v63 = MEMORY[0x277D84F90];
            v66 = v21;
            while (v32 < v31)
            {
              v33 = (v65 + 504 * v32);
              result = memcpy(v77, v33, 0x1F8uLL);
              v29 = __OFADD__(v32++, 1);
              if (v29)
              {
                goto LABEL_90;
              }

              v34 = memcpy(v76, v33, sizeof(v76));
              MEMORY[0x28223BE20](v34);
              v62 = v76;
              sub_2529353AC(v77, v74);
              v35 = v18;
              v36 = v71;
              result = sub_2529EDA1C(sub_25295AD78, v61, v35);
              if (result & 1) != 0 || (v37 = memcpy(v76, v77, sizeof(v76)), MEMORY[0x28223BE20](v37), v62 = v76, result = sub_2529EDA1C(sub_25295AD98, v61, v64), (result))
              {
                v68 = *(v21 + 16);
                if (v68)
                {
                  v38 = 0;
                  v70 = v32;
                  while (2)
                  {
                    if (v38 >= *(v21 + 16))
                    {
                      goto LABEL_87;
                    }

                    v71 = v36;
                    v39 = (v67 + 16 * v38);
                    v41 = *v39;
                    v40 = v39[1];
                    v69 = v38 + 1;
                    v42 = v77[41];
                    v43 = *(v77[41] + 16);

                    v44 = (v42 + 40);
                    v45 = -v43;
                    v46 = -1;
                    while (v45 + v46 != -1)
                    {
                      if (++v46 >= *(v42 + 16))
                      {
                        __break(1u);
                        goto LABEL_80;
                      }

                      v47 = *(v44 - 1);
                      v48 = *v44;
                      v49 = sub_252E36FA4();
                      v51 = v50;
                      if (v49 == sub_252E36FA4() && v51 == v52)
                      {

LABEL_72:

                        result = sub_252935408(v77);
                        v18 = v72;
                        v31 = v73;
                        v32 = v70;
                        v60 = v70 == v73;
                        v21 = v66;
                        goto LABEL_73;
                      }

                      v44 += 2;
                      v54 = sub_252E37DB4();

                      if (v54)
                      {
                        goto LABEL_72;
                      }
                    }

                    v38 = v69;
                    v31 = v73;
                    v21 = v66;
                    v32 = v70;
                    v36 = v71;
                    if (v69 != v68)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              v55 = v63;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v75 = v55;
              v71 = v36;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2529AA480(0, *(v63 + 16) + 1, 1);
                v63 = v75;
              }

              v58 = *(v63 + 16);
              v57 = *(v63 + 24);
              if (v58 >= v57 >> 1)
              {
                sub_2529AA480((v57 > 1), v58 + 1, 1);
                v63 = v75;
              }

              v59 = v63;
              *(v63 + 16) = v58 + 1;
              result = memcpy((v59 + 504 * v58 + 32), v77, 0x1F8uLL);
              v60 = v32 == v31;
              v18 = v72;
LABEL_73:
              if (v60)
              {
                goto LABEL_77;
              }
            }

            goto LABEL_89;
          }

          v63 = MEMORY[0x277D84F90];
LABEL_77:

          return v63;
        }
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return result;
    }
  }

LABEL_46:

  return MEMORY[0x277D84F90];
}