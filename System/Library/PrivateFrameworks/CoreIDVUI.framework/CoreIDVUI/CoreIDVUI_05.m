uint64_t sub_2457F9DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EB8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v33 - v14;
  sub_24577A354(v8);
  v16 = *(v8 + 8);
  sub_24580EF4C(v8, type metadata accessor for IdentityProofing.ViewStyleFormat);
  *v11 = v16;
  *(v11 + 1) = 0x4020000000000000;
  v11[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EC0);
  sub_2457FACF0(v1, &v11[*(v17 + 44)]);
  sub_24577A354(v6);
  sub_24580EF4C(v6, type metadata accessor for IdentityProofing.ViewStyleFormat);
  sub_24590F904();
  sub_24577ABC4(v11, v15, &qword_27EE29EB0);
  v18 = &v15[*(v13 + 44)];
  v19 = v33[5];
  *(v18 + 4) = v33[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v33[6];
  v20 = v33[1];
  *v18 = v33[0];
  *(v18 + 1) = v20;
  v21 = v33[3];
  *(v18 + 2) = v33[2];
  *(v18 + 3) = v21;
  v22 = sub_24590FFA4();
  sub_24590F594();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_24577ABC4(v15, a1, &qword_27EE29EB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EA8);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_2457FA078()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  sub_24590E154();
  sub_24590E3D4();
  if (*(v0 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }

  v5 = [objc_opt_self() standardUserDefaults];
  sub_24590D994();
  v6 = sub_245910F94();

  if ((v6 & 1) == 0)
  {
    return sub_245802784("NFCScanViewConfig Starting NFC Session", &unk_285886F58, &unk_245919058, "NFCScanViewConfig NFC scanning already completed; not starting");
  }

  v7 = sub_245910D64();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  sub_245910D34();

  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  sub_24586CFCC(0, 0, v4, &unk_245919350, v10);

  v8(v4, 1, 1, v7);

  v12 = sub_245910D24();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = v1;
  sub_2458B90EC(0, 0, v4, &unk_245919360, v13);
}

uint64_t sub_2457FA380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_245800518();
  v5 = sub_245910D64();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_245910D34();

  v6 = sub_245910D24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_2458B90EC(0, 0, v4, &unk_245919340, v7);
}

uint64_t sub_2457FA4AC(uint64_t a1)
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(a1 + 120) == 1)
  {
    sub_245800DF0();
  }

  return sub_245802784("NFCScanViewConfig Starting NFC Session", &unk_285886F58, &unk_245919058, "NFCScanViewConfig NFC scanning already completed; not starting");
}

uint64_t sub_2457FA590@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = _s11NFCScanViewVMa(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = sub_24590FB14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(v5 + 28) + 8);

  if ((v12 & 1) == 0)
  {
    sub_245910F74();
    v13 = sub_24590FF74();
    v22 = a1;
    v14 = v6;
    v15 = v13;
    sub_24590F314();

    v6 = v14;
    a1 = v22;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  type metadata accessor for PassportNFCGuideView.ViewConfig();
  swift_allocObject();

  v17 = sub_24581240C(v16);

  sub_24580F49C(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s11NFCScanViewVMa);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_24580F504(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_24580F49C(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s11NFCScanViewVMa);
  v20 = swift_allocObject();
  result = sub_24580F504(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  *a2 = v17;
  a2[1] = sub_24580F958;
  a2[2] = v19;
  a2[3] = sub_24580F970;
  a2[4] = v20;
  a2[5] = 0;
  a2[6] = 0;
  return result;
}

uint64_t sub_2457FA864(uint64_t a1)
{
  v2 = sub_24590FB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(_s11NFCScanViewVMa(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_245910F74();
    v9 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v13;
  }

  if (*(v7 + 122) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 2) = v7;
    *(&v12 - 8) = 0;
    v13 = v7;
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  else
  {
    *(v7 + 122) = 0;
  }
}

uint64_t sub_2457FAA9C(uint64_t a1)
{
  v2 = sub_24590FB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(_s11NFCScanViewVMa(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_245910F74();
    v9 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v11[1];
  }

  sub_24590E1A4();
  sub_24590E3D4();
  if (*(v7 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }

  else
  {
  }
}

uint64_t sub_2457FACF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EC8);
  v6 = MEMORY[0x28223BE20](v64);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v57 - v8;
  v9 = sub_24590FB14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29ED0);
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = *(_s11NFCScanViewVMa(0) + 20);
  v61 = a1;
  v19 = *(a1 + v18 + 8);

  if ((v19 & 1) == 0)
  {
    sub_245910F74();
    v20 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  sub_2457F942C();
  v22 = v21;

  LODWORD(v70) = v22;
  BYTE4(v70) = 0;
  v76 = 1065353216;
  sub_24580FC18();
  v62 = v17;
  sub_24590F624();

  v60 = v19;
  if ((v19 & 1) == 0)
  {
    sub_245910F74();
    v23 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  v58 = v10;
  v59 = v9;
  v24 = sub_2457FB39C();
  v26 = v25;

  v70 = v24;
  v71 = v26;
  sub_245778CE8();
  v27 = sub_2459101A4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_24577A354(v5);
  v34 = v5[88];
  sub_24580EF4C(v5, type metadata accessor for IdentityProofing.ViewStyleFormat);
  KeyPath = swift_getKeyPath();
  v70 = v27;
  v71 = v29;
  v31 &= 1u;
  v72 = v31;
  v73 = v33;
  v74 = KeyPath;
  v75 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EE0);
  sub_24580FC6C();
  v36 = v69;
  sub_2459102C4();
  sub_24580FD24(v27, v29, v31);

  v37 = sub_245910024();
  v38 = swift_getKeyPath();
  v39 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F00) + 36)];
  *v39 = v38;
  v39[1] = v37;
  LODWORD(v37) = sub_24590FE34();
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F08) + 36)] = v37;
  v40 = sub_245910724();

  if ((v60 & 1) == 0)
  {
    sub_245910F74();
    v41 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v58 + 8))(v12, v59);
  }

  v42 = sub_2457FB39C();
  v44 = v43;

  v45 = v65;
  v46 = v69;
  v47 = &v69[*(v64 + 36)];
  *v47 = v40;
  v47[1] = v42;
  v47[2] = v44;
  v48 = *(v45 + 16);
  v49 = v62;
  v50 = v63;
  v51 = v66;
  v48(v63, v62, v66);
  v52 = v67;
  sub_245778F2C(v46, v67, &qword_27EE29EC8);
  v53 = v68;
  v48(v68, v50, v51);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F10);
  sub_245778F2C(v52, &v53[*(v54 + 48)], &qword_27EE29EC8);
  sub_245778F94(v46, &qword_27EE29EC8);
  v55 = *(v45 + 8);
  v55(v49, v51);
  sub_245778F94(v52, &qword_27EE29EC8);
  return (v55)(v50, v51);
}

uint64_t sub_2457FB39C()
{
  v1 = 0xD00000000000002FLL;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2457F942C();
  if (v6 >= 0.0 && v6 < 0.15)
  {
    v8 = "ription.still.reading";
    if (*(v0 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v6 >= 0.333 && v6 <= 0.666)
    {
      v8 = "ription.almost.done";
      v1 = 0xD000000000000035;
      if (!*(v0 + 24))
      {
        goto LABEL_15;
      }

LABEL_10:
      v9 = sub_24586C880(v1, v8 | 0x8000000000000000);
      if (v10)
      {
        v11 = v9;

        return v11;
      }

      goto LABEL_15;
    }

    if (v6 < 1.0)
    {
      return 32;
    }

    v8 = "rt.nfc.chip.button.replay";
    v1 = 0xD000000000000033;
    if (*(v0 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_15:
  sub_24590C714();

  v13 = sub_24590F344();
  v14 = sub_245910F64();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    v17 = sub_2458CC378(v1, v8 | 0x8000000000000000, &v19);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_245767000, v13, v14, "NFCScanViewConfig failed to localized string id: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245D77B40](v16, -1, -1);
    MEMORY[0x245D77B40](v15, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2457FB63C(uint64_t a1)
{
  v2 = sub_24590FB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(_s11NFCScanViewVMa(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  v9 = v7;
  if ((v8 & 1) == 0)
  {
    sub_245910F74();
    v10 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v9 = v16;
  }

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;

  sub_245910634();
  v15[7] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F90);
  sub_245910604();

  if ((v8 & 1) == 0)
  {
    sub_245910F74();
    v13 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v16;
  }

  sub_24590E3B4();
  sub_24590DFF4();
  sub_24590E154();
  if (*(v7 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }
}

uint64_t sub_2457FB9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590FB14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F48);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v11 = (a1 + *(_s11NFCScanViewVMa(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    sub_245910F74();
    v14 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v12 = *&v33[0];
  }

  v16 = *(v12 + 136);
  v15 = *(v12 + 144);

  *&v33[0] = v16;
  *(&v33[0] + 1) = v15;
  sub_245778CE8();
  sub_245910564();
  v17 = sub_245910014();
  KeyPath = swift_getKeyPath();
  v19 = &v10[*(v8 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_245910074();
  sub_24580FEC0();
  sub_245910204();
  sub_245778F94(v10, &qword_27EE29F48);
  sub_2459106E4();
  sub_24590F684();
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F40) + 36));
  v21 = v33[1];
  *v20 = v33[0];
  v20[1] = v21;
  v20[2] = v33[2];
  v22 = sub_24590FFA4();
  sub_24590F594();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F28);
  v32 = a2 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

double sub_2457FBD04()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v0 + 201) > 1u || *(v0 + 201))
  {
    v2 = sub_245911714();

    v1 = v2 ^ 1;
  }

  else
  {

    v1 = 0;
  }

  swift_getKeyPath();
  sub_24590C2A4();

  result = 1.0;
  if ((*(v0 + 121) | v1))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2457FBE94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  return sub_2457ACB24(v1 + 32, a1);
}

uint64_t sub_2457FBF54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  return sub_2457ACB24(v3 + 32, a2);
}

uint64_t sub_2457FC014(uint64_t a1)
{
  sub_2457ACB24(a1, v2);
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C294();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2457FC0F4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 32), a2);
  return swift_endAccess();
}

uint64_t sub_2457FC158()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();
}

uint64_t sub_2457FC1FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(v3 + 72);
}

uint64_t sub_2457FC2A8(uint64_t a1)
{
  if (!*(v1 + 72))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_245910DB4();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 72) = a1;
}

uint64_t sub_2457FC430()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
}

uint64_t sub_2457FC4E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_2457FC5A8(uint64_t a1)
{
  swift_beginAccess();
  if (sub_24580D5B8(*(v1 + 88), a1))
  {
    *(v1 + 88) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }
}

uint64_t sub_2457FC6DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

void *sub_2457FC744()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id sub_2457FC7EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_2457FC8A4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24579D5E0(0, &qword_27EE29CE8);
  v5 = v4;
  v6 = a1;
  v7 = sub_245911294();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void *sub_2457FCA34()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

id sub_2457FCADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

void sub_2457FCB94(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 104);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24579D5E0(0, &qword_27EE29CE8);
  v5 = v4;
  v6 = a1;
  v7 = sub_245911294();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 104);
LABEL_8:
  *(v2 + 104) = a1;
}

uint64_t sub_2457FCD24()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  return *(v0 + 112);
}

uint64_t sub_2457FCDC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_2457FCE6C(uint64_t result)
{
  if (*(v1 + 112) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  return result;
}

uint64_t sub_2457FCF70@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a1 = *(v1 + 120);
  return result;
}

uint64_t sub_2457FD018(_BYTE *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20]();
  v5 = v12 - v4;
  v6 = *(v2 + 120);
  *(v2 + 120) = *a1;
  swift_getKeyPath();
  v12[1] = v2;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (v6 != *(v2 + 120))
  {
    v8 = sub_245910D64();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_245910D34();

    v9 = sub_245910D24();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v2;
    sub_2458B90EC(0, 0, v5, &unk_245918FC8, v10);
  }

  return result;
}

uint64_t sub_2457FD1D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_2457FD278(_BYTE *a1)
{
  if (*(v1 + 120) == *a1)
  {
    LOBYTE(v3) = *a1;
    return sub_2457FD018(&v3);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }
}

uint64_t sub_2457FD390()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  return *(v0 + 121);
}

uint64_t sub_2457FD430(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20]();
  v5 = v12 - v4;
  v6 = *(v2 + 121);
  *(v2 + 121) = a1;
  swift_getKeyPath();
  v12[1] = v2;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (v6 != *(v2 + 121))
  {
    v8 = sub_245910D64();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_245910D34();

    v9 = sub_245910D24();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v2;
    sub_2458B90EC(0, 0, v5, &unk_245918F90, v10);
  }

  return result;
}

uint64_t sub_2457FD5E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(v3 + 121);
  return result;
}

uint64_t sub_2457FD68C(char a1)
{
  if (*(v1 + 121) == (a1 & 1))
  {
    v3 = a1 & 1;

    return sub_2457FD430(v3);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }
}

uint64_t sub_2457FD7C0()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  return *(v0 + 122);
}

uint64_t sub_2457FD860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(v3 + 122);
  return result;
}

uint64_t sub_2457FD908(uint64_t result)
{
  if (*(v1 + 122) == (result & 1))
  {
    *(v1 + 122) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  return result;
}

uint64_t sub_2457FDA18@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(a1 + 121);
  return result;
}

uint64_t sub_2457FDAC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == *(a4 + 121))
  {
    return sub_2457FD430(*a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C294();
}

uint64_t sub_2457FDBD8@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(a1 + 122);
  return result;
}

unsigned __int8 *sub_2457FDC80(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (v4 == *(a4 + 122))
  {
    *(a4 + 122) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  return result;
}

uint64_t sub_2457FDD94()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v1 = *(v0 + 152);
  sub_245771BB4(v1);
  return v1;
}

uint64_t sub_2457FDE48@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2458095E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_245771BB4(v4);
}

uint64_t sub_2457FDF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2458095B0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245771BB4(v1);
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C294();
  sub_245771C34(v4);
}

uint64_t sub_2457FE090@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  *a2 = *(v3 + 201);
  return result;
}

uint64_t sub_2457FE138(unsigned __int8 a1)
{
  result = sub_2457F8100(*(v1 + 201), a1);
  if (result)
  {
    *(v1 + 201) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  return result;
}

uint64_t sub_2457FE24C()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v5 = *(v0 + 120);
  if (v5 > 6)
  {
    if (*(v0 + 120) > 9u)
    {
LABEL_7:
      v7 = 0x80000002459285E0;
      v6 = 0xD00000000000002ELL;
      if (!*(v0 + 24))
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v10 = 0xE000000000000000;
    v11 = 0xD000000000000031;
    if (v5 == 8)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0x80000002459284C0;
    }

    if (v5 == 7)
    {
      v6 = 0xD000000000000030;
    }

    else
    {
      v6 = v11;
    }

    if (v5 == 7)
    {
      v7 = 0x8000000245928530;
    }

    else
    {
      v7 = v10;
    }

    if (!*(v0 + 24))
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*(v0 + 120) <= 3u)
    {
      if (v5 < 2)
      {
        v6 = 0xD00000000000002BLL;
        v7 = 0x8000000245928610;
        if (!*(v0 + 24))
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      goto LABEL_7;
    }

    v8 = 0x8000000245928570;
    v9 = 0xD000000000000035;
    if (v5 != 5)
    {
      v9 = 0xD00000000000002BLL;
      v8 = 0x8000000245928500;
    }

    if (v5 == 4)
    {
      v6 = 0xD00000000000002BLL;
    }

    else
    {
      v6 = v9;
    }

    if (v5 == 4)
    {
      v7 = 0x80000002459285B0;
    }

    else
    {
      v7 = v8;
    }

    if (!*(v0 + 24))
    {
      goto LABEL_31;
    }
  }

LABEL_29:
  v12 = sub_24586C880(v6, v7);
  if (v13)
  {
    v14 = v12;

    return v14;
  }

LABEL_31:
  sub_24590C714();

  v16 = sub_24590F344();
  v17 = sub_245910F64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    v20 = sub_2458CC378(v6, v7, &v22);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_245767000, v16, v17, "NFCScanViewConfig failed to localized string id: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245D77B40](v19, -1, -1);
    MEMORY[0x245D77B40](v18, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t sub_2457FE5DC()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 24))
  {
    goto LABEL_27;
  }

  swift_getKeyPath();
  v30 = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v6 = *(v0 + 120);
  if (v6 > 6)
  {
    if (*(v0 + 120) > 9u)
    {
LABEL_7:
      v8 = 0x8000000245928450;
      v7 = 0xD000000000000031;
      goto LABEL_25;
    }

    v11 = 0xE000000000000000;
    v12 = 0xD000000000000034;
    if (v6 == 8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0x8000000245928330;
    }

    if (v6 == 7)
    {
      v7 = 0xD000000000000033;
    }

    else
    {
      v7 = v12;
    }

    if (v6 == 7)
    {
      v8 = 0x8000000245928370;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    if (*(v0 + 120) <= 3u)
    {
      if (v6 < 2)
      {
        v7 = 0xD00000000000002ELL;
        v8 = 0x8000000245928490;
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    v9 = 0x80000002459283E0;
    v10 = 0xD000000000000038;
    if (v6 != 5)
    {
      v10 = 0xD00000000000002ELL;
      v9 = 0x80000002459283B0;
    }

    if (v6 == 4)
    {
      v7 = 0xD00000000000002ELL;
    }

    else
    {
      v7 = v10;
    }

    if (v6 == 4)
    {
      v8 = 0x8000000245928420;
    }

    else
    {
      v8 = v9;
    }
  }

LABEL_25:
  v13 = sub_24586C880(v7, v8);
  v15 = v14;

  if (v15)
  {
    return v13;
  }

LABEL_27:
  sub_24590C714();

  v17 = sub_24590F344();
  v18 = sub_245910F64();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    swift_getKeyPath();
    v29 = v1;
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C2A4();

    v21 = *(v1 + 120);
    if (v21 > 6)
    {
      if (*(v1 + 120) <= 9u)
      {
        v26 = 0xE000000000000000;
        v27 = 0xD000000000000034;
        if (v21 == 8)
        {
          v27 = 0;
        }

        else
        {
          v26 = 0x8000000245928330;
        }

        if (v21 == 7)
        {
          v22 = 0xD000000000000033;
        }

        else
        {
          v22 = v27;
        }

        if (v21 == 7)
        {
          v23 = 0x8000000245928370;
        }

        else
        {
          v23 = v26;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (*(v1 + 120) > 3u)
      {
        v24 = 0x80000002459283E0;
        v25 = 0xD000000000000038;
        if (v21 != 5)
        {
          v25 = 0xD00000000000002ELL;
          v24 = 0x80000002459283B0;
        }

        if (v21 == 4)
        {
          v22 = 0xD00000000000002ELL;
        }

        else
        {
          v22 = v25;
        }

        if (v21 == 4)
        {
          v23 = 0x8000000245928420;
        }

        else
        {
          v23 = v24;
        }

        goto LABEL_51;
      }

      if (v21 < 2)
      {
        v22 = 0xD00000000000002ELL;
        v23 = 0x8000000245928490;
LABEL_51:
        v28 = sub_2458CC378(v22, v23, &v30);

        *(v19 + 4) = v28;
        _os_log_impl(&dword_245767000, v17, v18, "NFCScanViewConfig failed to localized string id: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x245D77B40](v20, -1, -1);
        MEMORY[0x245D77B40](v19, -1, -1);
        goto LABEL_52;
      }
    }

    v23 = 0x8000000245928450;
    v22 = 0xD000000000000031;
    goto LABEL_51;
  }

LABEL_52:

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2457FEAB8()
{
  v1 = 0xD00000000000002CLL;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v6 = *(v0 + 120);
  v7 = "rt.nfc.chip.button.continue";
  if ((v6 - 5) >= 2 && v6 != 9)
  {
    result = 0;
    if (v6 != 4)
    {
      return result;
    }

    v7 = "on.try.again.later";
    v1 = 0xD00000000000002BLL;
  }

  if (*(v0 + 24) && (v9 = sub_24586C880(v1, v7 | 0x8000000000000000), v10))
  {
    v11 = v9;

    return v11;
  }

  else
  {
    sub_24590C714();

    v12 = sub_24590F344();
    v13 = sub_245910F64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      v16 = sub_2458CC378(v1, v7 | 0x8000000000000000, &v18);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_245767000, v12, v13, "NFCScanViewConfig failed to localized primary button string id: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D77B40](v15, -1, -1);
      MEMORY[0x245D77B40](v14, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_2457FED70()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v5 = *(v0 + 120);
  v6 = "READ-INITIALIZED";
  v7 = 0xD000000000000031;
  if (v5 == 9)
  {
    v7 = 0xD000000000000032;
    v6 = "on.need.more.help";
  }

  if (v5 == 7)
  {
    v8 = 0xD000000000000032;
  }

  else
  {
    v8 = v7;
  }

  if (v5 == 7)
  {
    v9 = "on.need.more.help";
  }

  else
  {
    v9 = v6;
  }

  if (*(v0 + 24) && (v10 = sub_24586C880(v8, v9 | 0x8000000000000000), v11))
  {
    v12 = v10;

    return v12;
  }

  else
  {
    sub_24590C714();

    v14 = sub_24590F344();
    v15 = sub_245910F64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      v18 = sub_2458CC378(v8, v9 | 0x8000000000000000, &v20);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_245767000, v14, v15, "NFCScanViewConfig failed to localized secondary button string id: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D77B40](v17, -1, -1);
      MEMORY[0x245D77B40](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

void sub_2457FF01C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  swift_getKeyPath();
  v35 = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v12 = *(v0 + 120);
  if ((v12 - 5) >= 2 && v12 != 9)
  {
    if (v12 == 4)
    {
      sub_24590C714();
      v13 = sub_24590F344();
      v14 = sub_245910F84();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v34 = v6;
        v16 = v15;
        *v15 = 0;
        _os_log_impl(&dword_245767000, v13, v14, "NFCScanViewConfig Continue button selected", v15, 2u);
        v17 = v16;
        v6 = v34;
        MEMORY[0x245D77B40](v17, -1, -1);
      }

      v18 = *(v6 + 8);
      v18(v11, v5);
      swift_getKeyPath();
      v35 = v1;
      sub_24590C2A4();

      v19 = *(v1 + 152);
      if (v19 && (v20 = , v21 = v19(v20), sub_245771C34(v19), v21))
      {
        v22 = sub_245910D64();
        (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
        sub_245910D34();

        v23 = v21;
        v24 = sub_245910D24();
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D85700];
        v25[2] = v24;
        v25[3] = v26;
        v25[4] = v1;
        v25[5] = v23;
        sub_2458B93DC(0, 0, v4, &unk_245919048, v25);
      }

      else
      {
        sub_24590C714();
        v30 = sub_24590F344();
        v31 = sub_245910F64();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_245767000, v30, v31, "NFCScanViewConfig navigation controller not available; failed to navigate to next view", v32, 2u);
          MEMORY[0x245D77B40](v32, -1, -1);
        }

        v18(v9, v5);
      }
    }

    return;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v35 = v0;
  sub_24590C294();

  if (*(v0 + 121) == 1)
  {
    sub_2457FD430(1);
  }

  else
  {
    v28 = swift_getKeyPath();
    MEMORY[0x28223BE20](v28);
    v35 = v0;
    sub_24590C294();
  }

  sub_245802784("NFCScanViewConfig Starting NFC Session", &unk_285886F58, &unk_245919058, "NFCScanViewConfig NFC scanning already completed; not starting");
  sub_24590E3B4();
  sub_24590E084();
  swift_getKeyPath();
  v35 = v0;
  sub_24590C2A4();

  v29 = *(v0 + 120);
  if (v29 > 6)
  {
    if (v29 == 7)
    {
      sub_24590E114();
      goto LABEL_25;
    }

    if (v29 == 9)
    {
      sub_24590E1E4();
      goto LABEL_25;
    }

LABEL_22:
    sub_24590E154();
    goto LABEL_25;
  }

  if (v29 == 5)
  {
    sub_24590E124();
    goto LABEL_25;
  }

  if (v29 != 6)
  {
    goto LABEL_22;
  }

  sub_24590E174();
LABEL_25:
  if (*(v0 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }
}

uint64_t sub_2457FF6DC()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v1 = *(v0 + 120);
  if (v1 != 9 && v1 != 7)
  {
    swift_getKeyPath();
    sub_24590C2A4();

    [*(v0 + 96) invalidate];
    if (*(v0 + 121))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24590C294();
    }

    else
    {
      sub_2457FD430(0);
    }

    if (*(v0 + 122) == 1)
    {
      *(v0 + 122) = 1;
    }

    else
    {
      v5 = swift_getKeyPath();
      MEMORY[0x28223BE20](v5);
      sub_24590C294();
    }

    sub_245800518();
    sub_24590E3B4();
    sub_24590E064();
    swift_getKeyPath();
    sub_24590C2A4();

    v6 = *(v0 + 120);
    if (v6 > 6)
    {
      if (v6 != 7)
      {
        if (v6 == 9)
        {
          sub_24590E1E4();
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      sub_24590E114();
    }

    else
    {
      if (v6 != 5)
      {
        if (v6 == 6)
        {
          sub_24590E174();
          goto LABEL_34;
        }

LABEL_31:
        sub_24590E154();
        goto LABEL_34;
      }

      sub_24590E124();
    }

LABEL_34:
    if (*(v0 + 24))
    {

      sub_24590CDA4();
      sub_24590E1B4();
      sub_24590E484();
    }

    goto LABEL_36;
  }

  sub_24590E3B4();
  sub_24590E054();
  swift_getKeyPath();
  sub_24590C2A4();

  v3 = *(v0 + 120);
  if (v3 > 6)
  {
    if (v3 != 7)
    {
      if (v3 == 9)
      {
        sub_24590E1E4();
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    sub_24590E114();
  }

  else
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {
        sub_24590E174();
        goto LABEL_29;
      }

LABEL_26:
      sub_24590E154();
      goto LABEL_29;
    }

    sub_24590E124();
  }

LABEL_29:
  if (*(v0 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();

    return sub_245883548(0);
  }

LABEL_36:
}

void sub_2457FFBF8()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "NFCScanViewConfig cancel button pressed; displaying confirmation alert", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  swift_getKeyPath();
  v19[1] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v13 = *(v1 + 152);
  if (v13 && (v14 = , v15 = v13(v14), sub_245771C34(v13), v15))
  {
    if (*(v1 + 24))
    {
      sub_245887AB8(v15, 0xD000000000000012, 0x8000000245926590, 0, 0, 0);
    }
  }

  else
  {
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F64();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "NFCScanViewConfig navigation controller not available; failed to present cancellation alert", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    v12(v6, v2);
  }
}

uint64_t sub_2457FFEC0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_245771C34(*(v0 + 152));

  v2 = OBJC_IVAR____TtCO9CoreIDVUI16IdentityProofing17NFCScanViewConfig___observationRegistrar;
  v3 = sub_24590C2E4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_2457FFFD4()
{
  sub_2457FFEC0();

  return swift_deallocClassInstance();
}

uint64_t sub_245800054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_245910D34();
  v4[3] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2458000EC, v6, v5);
}

uint64_t sub_2458000EC()
{
  if (*(v0[2] + 24))
  {
    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_2458001C0;

    return sub_245880A8C(0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2458001C0(void *a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_2458002E8;
  }

  else
  {

    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_2457B5318;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2458002E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24580034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_245910D34();
  *(v4 + 32) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458003E4, v6, v5);
}

uint64_t sub_2458003E4()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v2 = *(v1 + 152);
  if (v2)
  {

    v4 = v2(v3);
    sub_245771C34(v2);
  }

  else
  {
    v4 = 0;
  }

  if (*(v0[3] + 24))
  {
    sub_24586CA74(v4, 2, 0, 0);
  }

  v5 = v0[1];

  return v5();
}

id sub_245800518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "NFCScanViewConfig cleaning up NFC Session", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_getKeyPath();
  v17 = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v1 + 72) && (, sub_245910DD4(), , *(v1 + 72)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v16 - 2) = v1;
    *(&v16 - 1) = 0;
    v17 = v1;
    sub_24590C294();
  }

  else
  {
    *(v1 + 72) = 0;
  }

  v13 = sub_245910D64();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_2458B90EC(0, 0, v4, &unk_245918F30, v14);

  swift_getKeyPath();
  v17 = v1;
  sub_24590C2A4();

  [*(v1 + 96) invalidate];
  swift_getKeyPath();
  v17 = v1;
  sub_24590C2A4();

  return [*(v1 + 104) invalidate];
}

uint64_t sub_2458008E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_245910D34();
  v4[18] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[19] = v6;
  v4[20] = v5;

  return MEMORY[0x2822009F8](sub_245800980, v6, v5);
}

uint64_t sub_245800980()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[21] = OBJC_IVAR____TtCO9CoreIDVUI16IdentityProofing17NFCScanViewConfig___observationRegistrar;
  v0[15] = v1;
  v0[22] = sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  sub_2457ACB24(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_245800B50;

  return v6(v0 + 7, v2, v3);
}

uint64_t sub_245800B50()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_245800C70, v3, v2);
}

uint64_t sub_245800C70()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  result = sub_24590C594();
  v2 = *(v0 + 80);
  if (v2 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v0 + 84);
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v0 + 84) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_12;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 136);
  swift_getKeyPath();
  *(v0 + 128) = v4;
  sub_24590C2A4();

  sub_24590C4D4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_245800DF0()
{
  v1 = sub_2459107E4();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245910814();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v7 = sub_245911034();
  aBlock[4] = sub_24580D7F4;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_104;
  v8 = _Block_copy(aBlock);

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245809CFC(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245778BD8(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

uint64_t sub_2458010D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29CF0);
  v4[20] = swift_task_alloc();
  v5 = sub_24590EA74();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245801254, 0, 0);
}

uint64_t sub_245801254()
{
  v1 = v0[18];
  swift_getKeyPath();
  v0[28] = OBJC_IVAR____TtCO9CoreIDVUI16IdentityProofing17NFCScanViewConfig___observationRegistrar;
  v0[13] = v1;
  v0[29] = sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  sub_2457ACB24(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_24580141C;

  return v6(v2, v3);
}

uint64_t sub_24580141C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2458017B0;
  }

  else
  {
    v2 = sub_245801530;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245801530()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_245801C10();
  swift_getKeyPath();
  v0[15] = v1;
  sub_24590C2A4();

  if (*(v1 + 120) == 7)
  {
    v2 = v0[27];
    v3 = v0[18];
    v4 = sub_245910D64();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_245910D34();

    v5 = sub_245910D24();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D85700];
    v6[2] = v5;
    v6[3] = v7;
    v6[4] = v3;
    sub_2458B90EC(0, 0, v2, &unk_245919078, v6);
  }

  v8 = v0[18];
  swift_getKeyPath();
  v0[16] = v8;
  sub_24590C2A4();

  [*(v8 + 104) invalidate];
  if (*(v8 + 104))
  {
    v9 = v0[18];
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v0[17] = v9;
    sub_24590C294();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2458017B0()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_getErrorValue();
  sub_2459117E4();
  (*(v4 + 104))(v1, *MEMORY[0x277CFFBA8], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v7 = *(v6 + 48);
  sub_245778F2C(v2, v5, &qword_27EE2A800);
  sub_245778F2C(v1, v5 + v7, &qword_27EE2A800);
  v8 = *(v4 + 48);
  v9 = v8(v5, 1, v3);
  v10 = v0[21];
  if (v9 != 1)
  {
    sub_245778F2C(v0[20], v0[26], &qword_27EE2A800);
    v12 = v8(v5 + v7, 1, v10);
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[24];
    if (v12 != 1)
    {
      v19 = v0[22];
      v20 = v0[23];
      v21 = v0[21];
      v32 = v0[20];
      (*(v19 + 32))(v20, v5 + v7, v21);
      sub_245809CFC(&qword_27EE29CF8, MEMORY[0x277CFFE20]);
      v22 = sub_245910934();
      sub_245778F94(v15, &qword_27EE2A800);
      sub_245778F94(v14, &qword_27EE2A800);
      v23 = *(v19 + 8);
      v23(v20, v21);
      v23(v13, v21);
      sub_245778F94(v32, &qword_27EE2A800);
      if (v22)
      {
        goto LABEL_9;
      }

LABEL_7:
      v18 = v0[31];
      goto LABEL_10;
    }

    v16 = v0[21];
    v17 = v0[22];
    sub_245778F94(v0[24], &qword_27EE2A800);
    sub_245778F94(v14, &qword_27EE2A800);
    (*(v17 + 8))(v13, v16);
LABEL_6:
    sub_245778F94(v0[20], &qword_27EE29CF0);
    goto LABEL_7;
  }

  v11 = v0[25];
  sub_245778F94(v0[24], &qword_27EE2A800);
  sub_245778F94(v11, &qword_27EE2A800);
  if (v8(v5 + v7, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_245778F94(v0[20], &qword_27EE2A800);
LABEL_9:
  v18 = v0[31];
  v24 = v0[27];
  v25 = v0[18];
  v26 = sub_245910D64();
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  sub_245910D34();

  v27 = sub_245910D24();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v25;
  sub_2458B90EC(0, 0, v24, &unk_245919068, v28);

LABEL_10:

  v30 = v0[1];

  return v30();
}

uint64_t sub_245801C10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  swift_getKeyPath();
  v13 = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (!*(v0 + 72) || (swift_getKeyPath(), v13 = v0, sub_24590C2A4(), result = , *(v0 + 72)) && (, isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) != 0))
  {
    v7 = sub_245910D64();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_245910D34();

    v8 = sub_245910D24();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v1;
    v11 = sub_2458B90EC(0, 0, v4, &unk_245919088, v9);
    return sub_2457FC2A8(v11);
  }

  return result;
}

uint64_t sub_245801E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_245910D34();
  *(v4 + 32) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245801EA8, v6, v5);
}

uint64_t sub_245801EA8()
{
  v10 = v0;
  v1 = v0[3];

  v2 = *(v1 + 120);
  v3 = v0[3];
  if (v2 == 1)
  {
    v9[0] = 1;
    sub_2457FD018(v9);
  }

  else
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[2] = v3;
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  v5 = v0[3];
  if (*(v5 + 121) == 1)
  {
    sub_2457FD430(1);
  }

  else
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[2] = v5;
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2458020B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_245910D34();
  *(v4 + 32) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245802150, v6, v5);
}

uint64_t sub_245802150()
{
  v7 = v0;
  v1 = v0[3];

  if (*(v1 + 120) == 7)
  {
    v6[0] = 7;
    sub_2457FD018(v6);
  }

  else
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 7;
    v0[2] = v2;
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C294();
  }

  sub_2458022A4();
  v4 = v0[1];

  return v4();
}

uint64_t sub_2458022A4()
{
  v1 = v0;
  v2 = sub_2459107E4();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_245910814();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v12 = *(v0 + 104);
  if (v12)
  {
    v13 = v12;
    if ([v13 isValid])
    {
      sub_24590C714();
      v14 = sub_24590F344();
      v15 = sub_245910F54();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_245767000, v14, v15, "PassportNFCReader retry timer has already started, not starting a new one.", v16, 2u);
        MEMORY[0x245D77B40](v16, -1, -1);
      }

      return (*(v9 + 8))(v11, v8);
    }
  }

  v18 = *(v0 + 24);
  if (v18 && (v19 = *(v18 + 312)) != 0 && (v20 = v19, v21 = sub_24590D7B4(), v23 = v22, v20, (v23 & 1) == 0) && (v24 = sub_245805E64(v21), (v25 & 1) == 0))
  {
    v26 = v24;
  }

  else
  {
    v26 = 0x4014000000000000;
  }

  sub_24579D5E0(0, &qword_27EE2ABC0);
  v27 = sub_245911034();
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  *(v28 + 24) = v26;
  aBlock[4] = sub_245809D44;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245809CFC(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245778BD8(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v7, v4, v29);
  _Block_release(v29);

  (*(v31 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v30);
}

uint64_t sub_245802784(const char *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v27[1] = a2;
  v28 = a3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  v11 = sub_24590F354();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  swift_getKeyPath();
  v29 = v4;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v4 + 120) == 4)
  {
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F84();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v18, v19, a4, v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    sub_24590C714();
    v22 = sub_24590F344();
    v23 = sub_245910F84();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_245767000, v22, v23, a1, v24, 2u);
      MEMORY[0x245D77B40](v24, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    v25 = sub_245910D64();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v7;

    sub_2458B90EC(0, 0, v10, v28, v26);
  }
}

uint64_t sub_245802AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29CF0);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v4[18] = swift_task_alloc();
  v5 = sub_24590EA74();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245802C54, 0, 0);
}

uint64_t sub_245802C54()
{
  v1 = v0[15];
  swift_getKeyPath();
  v0[13] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  sub_2457ACB24(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_245802E14;

  return v6(v2, v3);
}

uint64_t sub_245802E14()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_245802FD0;
  }

  else
  {
    v2 = sub_245802F28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245802F28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245802FD0()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_getErrorValue();
  sub_2459117E4();
  (*(v4 + 104))(v1, *MEMORY[0x277CFFBA8], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v7 = *(v6 + 48);
  sub_245778F2C(v2, v5, &qword_27EE2A800);
  sub_245778F2C(v1, v5 + v7, &qword_27EE2A800);
  v8 = *(v4 + 48);
  v9 = v8(v5, 1, v3);
  v10 = v0[19];
  if (v9 != 1)
  {
    sub_245778F2C(v0[17], v0[24], &qword_27EE2A800);
    v12 = v8(v5 + v7, 1, v10);
    v14 = v0[23];
    v13 = v0[24];
    v15 = v0[22];
    if (v12 != 1)
    {
      v19 = v0[20];
      v20 = v0[21];
      v21 = v0[19];
      v32 = v0[17];
      (*(v19 + 32))(v20, v5 + v7, v21);
      sub_245809CFC(&qword_27EE29CF8, MEMORY[0x277CFFE20]);
      v22 = sub_245910934();
      sub_245778F94(v15, &qword_27EE2A800);
      sub_245778F94(v14, &qword_27EE2A800);
      v23 = *(v19 + 8);
      v23(v20, v21);
      v23(v13, v21);
      sub_245778F94(v32, &qword_27EE2A800);
      if (v22)
      {
        goto LABEL_9;
      }

LABEL_7:
      v18 = v0[26];
      goto LABEL_10;
    }

    v16 = v0[19];
    v17 = v0[20];
    sub_245778F94(v0[22], &qword_27EE2A800);
    sub_245778F94(v14, &qword_27EE2A800);
    (*(v17 + 8))(v13, v16);
LABEL_6:
    sub_245778F94(v0[17], &qword_27EE29CF0);
    goto LABEL_7;
  }

  v11 = v0[23];
  sub_245778F94(v0[22], &qword_27EE2A800);
  sub_245778F94(v11, &qword_27EE2A800);
  if (v8(v5 + v7, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_245778F94(v0[17], &qword_27EE2A800);
LABEL_9:
  v18 = v0[26];
  v24 = v0[18];
  v25 = v0[15];
  v26 = sub_245910D64();
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  sub_245910D34();

  v27 = sub_245910D24();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v25;
  sub_2458B90EC(0, 0, v24, &unk_245919020, v28);

LABEL_10:

  v30 = v0[1];

  return v30();
}

uint64_t sub_245803450()
{
  v1 = v0[11];
  swift_getKeyPath();
  v0[10] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  sub_2457ACB24(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_245803610;

  return v6(v2, v3);
}

uint64_t sub_245803610()
{

  return MEMORY[0x2822009F8](sub_24580370C, 0, 0);
}

uint64_t sub_24580370C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24580376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_245910D34();
  v5[5] = sub_245910D24();
  v7 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245803808, v7, v6);
}

uint64_t sub_245803808()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + 24);
  if (v2)
  {
    sub_24586CA74(*(v0 + 32), 2, 0, 0);
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_245803898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v5 = sub_24590F354();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D00);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D08);
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = sub_245910D34();
  v4[34] = sub_245910D24();
  v9 = sub_245910CD4();
  v4[35] = v9;
  v4[36] = v8;

  return MEMORY[0x2822009F8](sub_245803AA4, v9, v8);
}

uint64_t sub_245803AA4()
{
  v1 = v0[21];
  swift_getKeyPath();
  v0[37] = OBJC_IVAR____TtCO9CoreIDVUI16IdentityProofing17NFCScanViewConfig___observationRegistrar;
  v0[13] = v1;
  v0[38] = sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  sub_2457ACB24(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_245803C74;
  v5 = v0[32];

  return v7(v5, v2, v3);
}

uint64_t sub_245803C74()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_245803D94, v3, v2);
}

uint64_t sub_245803D94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_245910D84();
  v0[40] = 0;
  v1 = sub_245910D24();
  v0[41] = v1;
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_245803E78;
  v3 = v0[27];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 43, v1, v4, v3);
}

uint64_t sub_245803E78()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_245803FBC, v3, v2);
}

uint64_t sub_245803FBC()
{
  if (v0[43] == 14)
  {
    v2 = v0[31];
    v1 = v0[32];
    v4 = v0[29];
    v3 = v0[30];
    v5 = v0[27];
    v6 = v0[28];

    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v1, v3);

    v7 = v0[1];

    return v7();
  }

  v9 = v0[43];
  v10 = HIDWORD(v9);
  sub_24590C714();
  v11 = sub_24590F344();
  v12 = sub_245910F54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(&v9 + 1);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v0[20] = v15;
    *v14 = 136315394;
    v16 = 0xE800000000000000;
    v17 = 0x4554414954494E49;
    v46 = HIDWORD(v9);
    v47 = v9;
    switch(v18)
    {
      case 1:
        v17 = 0x474E495441434F4CLL;
        break;
      case 2:
        v16 = 0x8000000245928230;
        v17 = 0xD000000000000010;
        break;
      case 3:
        v16 = 0xEB00000000535345;
        v17 = 0x4343412D44414552;
        break;
      case 4:
        v16 = 0xED00004554454C50;
        goto LABEL_10;
      case 5:
        v16 = 0xE700000000000000;
        v17 = 0x54554F454D4954;
        break;
      case 6:
        v16 = 0xE900000000000054;
        v17 = 0x534F4C2D50494843;
        break;
      case 7:
        v16 = 0xEE00544F482D4F4FLL;
        v17 = 0x542D524544414552;
        break;
      case 8:
        v16 = 0xEB0000000044454CLL;
        v17 = 0x4941462D44414552;
        break;
      case 9:
        v16 = 0xEF4B524F5754454ELL;
        v17 = 0x2D474E495353494DLL;
        break;
      case 10:
        v16 = 0xEC00000045544143;
        v17 = 0x49544E4548545541;
        break;
      case 11:
LABEL_10:
        v17 = 0x4D4F432D44414552;
        break;
      case 12:
        v17 = 0x5A49532D44414552;
        v16 = 0xE900000000000045;
        break;
      case 13:
        v16 = 0xE700000000000000;
        v17 = 0x47442D44414552;
        break;
      default:
        break;
    }

    v22 = v0[25];
    v9 = v0[26];
    v10 = v0[24];
    v23 = sub_2458CC378(v17, v16, v0 + 20);

    *(v14 + 4) = v23;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v13;
    _os_log_impl(&dword_245767000, v11, v12, "NFCScanViewConfig received event: %s, progress: %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245D77B40](v15, -1, -1);
    MEMORY[0x245D77B40](v14, -1, -1);

    (*(v22 + 8))(v9, v10);
    LODWORD(v10) = v46;
    LOBYTE(v9) = v47;
  }

  else
  {
    v19 = v0[25];
    v20 = v0[26];
    v21 = v0[24];

    (*(v19 + 8))(v20, v21);
  }

  v24 = v0[38];
  v25 = v0[21];
  swift_getKeyPath();
  v0[14] = v25;
  sub_24590C2A4();

  v0[15] = v25;
  swift_getKeyPath();
  sub_24590C2C4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v25 + 88);
  v0[16] = v27;
  *(v25 + 88) = 0x8000000000000000;
  v28 = sub_24588CAA8(v9);
  v32 = *(v27 + 16);
  v33 = (v29 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v24) = v29;
  if (*(v27 + 24) >= v35)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_29:
      v36 = v0[16];
      if (v24)
      {
LABEL_30:
        *(v36[7] + 4 * v28) = v10;
        goto LABEL_35;
      }

LABEL_33:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + v28) = v9;
      *(v36[7] + 4 * v28) = v10;
      v38 = v36[2];
      v34 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v34)
      {
        __break(1u);
        return MEMORY[0x2822003E8](v28, v29, v30, v31);
      }

      v36[2] = v39;
LABEL_35:
      v40 = v0[21];
      *(v40 + 88) = v36;
      swift_endAccess();
      v0[17] = v40;
      swift_getKeyPath();
      sub_24590C2B4();

      swift_getKeyPath();
      v0[18] = v40;
      sub_24590C2A4();

      v41 = v0[40];
      if (*(v40 + 120) != v9)
      {
        v42 = v0[21];
        swift_getKeyPath();
        v43 = swift_task_alloc();
        *(v43 + 16) = v42;
        *(v43 + 24) = v9;
        v0[19] = v42;
        sub_24590C294();
      }

      v0[40] = v41;
      v44 = sub_245910D24();
      v0[41] = v44;
      v45 = swift_task_alloc();
      v0[42] = v45;
      *v45 = v0;
      v45[1] = sub_245803E78;
      v31 = v0[27];
      v30 = MEMORY[0x277D85700];
      v28 = (v0 + 43);
      v29 = v44;

      return MEMORY[0x2822003E8](v28, v29, v30, v31);
    }

LABEL_32:
    v37 = v28;
    sub_24580CF5C();
    v28 = v37;
    v36 = v0[16];
    if (v24)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  sub_24580BE98(v35, isUniquelyReferenced_nonNull_native);
  v28 = sub_24588CAA8(v9);
  if ((v24 & 1) == (v29 & 1))
  {
    goto LABEL_29;
  }

  return sub_245911774();
}

uint64_t sub_2458046D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_245910D34();
  *(v4 + 32) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245804770, v6, v5);
}

uint64_t sub_245804770()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if ((*(v1 + 121) & 1) == 0)
  {
    v2 = v0[3];
    swift_getKeyPath();
    v0[2] = v2;
    sub_24590C2A4();

    if (*(v2 + 201) > 1u || *(v2 + 201))
    {
      v3 = sub_245911714();

      if ((v3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v4 = v0[3];
    swift_getKeyPath();
    v0[2] = v4;
    sub_24590C2A4();

    if (!*(v4 + 120))
    {
      v5 = v0[3];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 1;
      v0[2] = v5;
      sub_24590C294();
    }
  }

LABEL_8:
  v7 = v0[3];
  swift_getKeyPath();
  v0[2] = v7;
  sub_24590C2A4();

  if (*(v7 + 201) > 1u || *(v7 + 201))
  {
    v8 = sub_245911714();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v9 = v0[3];
  swift_getKeyPath();
  v0[2] = v9;
  sub_24590C2A4();

  if (*(v9 + 120) == 1)
  {
    v10 = v0[3];
    swift_getKeyPath();
    v0[2] = v10;
    sub_24590C2A4();

    v11 = v0[3];
    if (*(v1 + 121) == 1)
    {
      swift_getKeyPath();
      v0[2] = v11;
      sub_24590C2A4();

      [*(v11 + 96) invalidate];
    }

    else
    {
      sub_245800DF0();
    }
  }

LABEL_16:
  v12 = v0[1];

  return v12();
}

uint64_t sub_245804B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_245910D34();
  *(v4 + 32) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245804C10, v6, v5);
}

uint64_t sub_245804C10()
{
  v7 = v0;
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v2 = *(v1 + 120);
  if (v2 <= 4)
  {
    switch(v2)
    {
      case 1u:
        sub_245804DB4();
        break;
      case 2u:
        sub_245805018();
        break;
      case 4u:
        sub_245805324();
        break;
    }
  }

  else
  {
    if (v2 - 5 < 3)
    {
LABEL_5:
      v3 = v0[3];
      swift_getKeyPath();
      v0[2] = v3;
      sub_24590C2A4();

      v6 = *(v1 + 120);
      sub_245805820(&v6);
      goto LABEL_13;
    }

    if (v2 != 8)
    {
      if (v2 != 9)
      {
        goto LABEL_13;
      }

      goto LABEL_5;
    }

    sub_2458056AC();
  }

LABEL_13:
  v4 = v0[1];

  return v4();
}

uint64_t sub_245804DB4()
{
  if (*(v0 + 201) > 1u || *(v0 + 201))
  {
    v1 = sub_245911714();

    if (v1)
    {
      *(v0 + 201) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
      sub_24590C294();
    }
  }

  else
  {

    *(v0 + 201) = 0;
  }

  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v0 + 121))
  {
    return sub_245800DF0();
  }

  swift_getKeyPath();
  sub_24590C2A4();

  v3 = *(v0 + 96);
  if (!v3)
  {
    return sub_245800DF0();
  }

  result = [v3 isValid];
  if ((result & 1) == 0)
  {
    return sub_245800DF0();
  }

  return result;
}

id sub_245805018()
{
  sub_24590E414();
  sub_24590E154();
  if (*(v0 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }

  AudioServicesPlaySystemSound(0x542u);
  if (*(v0 + 201) <= 1u && *(v0 + 201))
  {

    goto LABEL_8;
  }

  v1 = sub_245911714();

  if (v1)
  {
LABEL_8:
    *(v0 + 201) = 1;
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C294();

LABEL_9:
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  return [*(v0 + 96) invalidate];
}

uint64_t sub_245805324()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  AudioServicesPlaySystemSound(0x543u);
  if (*(v0 + 201) == 2)
  {

LABEL_4:
    *(v0 + 201) = 2;
    goto LABEL_6;
  }

  v5 = sub_245911714();

  if (v5)
  {
    goto LABEL_4;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v12[1] = v0;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C294();

LABEL_6:
  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_245910D34();

  v8 = sub_245910D24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  sub_2458B90EC(0, 0, v4, &unk_245919038, v9);

  sub_24590E424();
  sub_24590E154();
  if (*(v1 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }
}

void sub_2458056AC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = sub_245910D34();
    MEMORY[0x28223BE20](v2);
    v8[2] = v1;
    v8[3] = 0;
    v3 = sub_245809110(sub_2457F7CA8, v8, "CoreIDVUI/IdentityProofingFlowManager.swift", 43);
    swift_getKeyPath();
    v8[4] = v0;
    sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
    sub_24590C2A4();

    v4 = *(v0 + 152);
    if (v4)
    {

      v6 = v4(v5);
      sub_245771C34(v4);
      if (v6)
      {
        v7 = v6;
        sub_24586D558(v3, v6);

        v3 = v7;
      }
    }
  }
}

uint64_t sub_245805820(unsigned __int8 *a1)
{
  v2 = *a1;
  AudioServicesPlaySystemSound(0x544u);
  if (*(v1 + 201) > 2u)
  {
  }

  else
  {
    v3 = sub_245911714();

    if ((v3 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
      sub_24590C294();

      goto LABEL_6;
    }
  }

  *(v1 + 201) = 3;
LABEL_6:
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_getKeyPath();
  sub_24590C2C4();

  swift_beginAccess();
  *(v1 + 88) = MEMORY[0x277D84F98];

  swift_getKeyPath();
  sub_24590C2B4();

  if ((v2 - 5) > 1)
  {
    sub_245800518();
  }

  else
  {
    sub_245802784("NFCScanViewConfig Restarting NFC Session if needed", &unk_285886E18, &unk_245919000, "NFCScanViewConfig NFC scanning already completed; not restarting");
  }

  swift_getKeyPath();
  sub_24590C2A4();

  v5 = *(v1 + 120);
  if (v5 > 6)
  {
    if (v5 != 7)
    {
      if (v5 == 9)
      {
        sub_24590E1E4();
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    sub_24590E114();
  }

  else
  {
    if (v5 != 5)
    {
      if (v5 == 6)
      {
        sub_24590E174();
        goto LABEL_19;
      }

LABEL_16:
      sub_24590E154();
      goto LABEL_19;
    }

    sub_24590E124();
  }

LABEL_19:
  sub_24590E3D4();
  if (*(v1 + 24))
  {

    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();
  }
}

uint64_t sub_245805C68(uint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11[1] = a1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  [*(a1 + 96) invalidate];
  v6 = [objc_opt_self() scheduledTimerWithTimeInterval:a1 target:sel_onTimeOut selector:0 userInfo:0 repeats:10.0];
  sub_2457FC8A4(v6);
  sub_24590C714();
  v7 = sub_24590F344();
  v8 = sub_245910F54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245767000, v7, v8, "PassportNFCReader fired timer for UI timeout", v9, 2u);
    MEMORY[0x245D77B40](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_245805E64(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void sub_245805EC4(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  [*(a1 + 104) invalidate];
  v4 = [objc_opt_self() scheduledTimerWithTimeInterval:a1 target:sel_onRetryStartSession selector:0 userInfo:0 repeats:a2];
  sub_2457FCB94(v4);
}

uint64_t sub_245805FBC()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "NFCScanViewConfig Timeout UI fired", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  swift_getKeyPath();
  v22 = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v1 + 120) == 1)
  {
    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "NFCScanViewConfig setting state to timeout", v16, 2u);
      MEMORY[0x245D77B40](v16, -1, -1);
    }

    v12(v6, v2);
    swift_getKeyPath();
    v22 = v1;
    sub_24590C2A4();

    v22 = v1;
    swift_getKeyPath();
    sub_24590C2C4();

    v17 = *(v1 + 112);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 112) = v19;
      v22 = v1;
      swift_getKeyPath();
      sub_24590C2B4();

      if (*(v1 + 120) == 5)
      {
        LOBYTE(v22) = 5;
        return sub_2457FD018(&v22);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v21 - 2) = v1;
        *(&v21 - 8) = 5;
        v22 = v1;
        sub_24590C294();
      }
    }
  }

  return result;
}

uint64_t sub_245806394()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "NFCScanViewConfig Retry start NFC session fired", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  swift_getKeyPath();
  v17[1] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v1 + 120) == 7)
  {
    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "NFCScanViewConfig attempting to start NFC session after thermal issue", v16, 2u);
      MEMORY[0x245D77B40](v16, -1, -1);
    }

    v12(v6, v2);
    return sub_245802784("NFCScanViewConfig Starting NFC Session", &unk_285886F58, &unk_245919058, "NFCScanViewConfig NFC scanning already completed; not starting");
  }

  return result;
}

uint64_t sub_245806648(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_24580668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_24590F354();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_245910D34();
  v4[23] = sub_245910D24();
  v7 = sub_245910CD4();
  v4[24] = v7;
  v4[25] = v6;

  return MEMORY[0x2822009F8](sub_24580678C, v7, v6);
}

uint64_t sub_24580678C()
{
  v1 = v0[18];
  swift_getKeyPath();
  v0[16] = v1;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  swift_beginAccess();
  sub_2457ACB24(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24580694C;

  return v6(v2, v3);
}

uint64_t sub_24580694C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v4[27] = a2;

  v5 = v3[25];
  v6 = v3[24];

  return MEMORY[0x2822009F8](sub_245806A74, v6, v5);
}

uint64_t sub_245806A74()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (*(v1 + 24))
  {
    v2 = v0[14];
    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_245806C24;
    v4 = v0[27];

    return sub_24587CF9C(v2, v4);
  }

  else
  {

    sub_24590C714();
    v6 = sub_24590F344();
    v7 = sub_245910F54();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[22];
    v10 = v0[19];
    v11 = v0[20];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245767000, v6, v7, "NFCScanViewConfig successfully executed prepareForProofingIdentity", v12, 2u);
      MEMORY[0x245D77B40](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_245806C24()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_245806E94;
  }

  else
  {
    v5 = sub_245806D7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_245806D7C()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "NFCScanViewConfig successfully executed prepareForProofingIdentity", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_245806E94()
{
  v20 = v0;
  v1 = *(v0 + 232);

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 160);
    v18 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "NFCScanViewConfig Received an error during prepareForProofingIdentity. Ignoring the error as it is non fatal. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2458070FC()
{
  result = sub_24590C2E4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_245807274()
{
  v1 = *(*v0 + 208);

  return v1;
}

uint64_t sub_2458072F0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v1 + 120) - 4 >= 6)
  {
    return 1;
  }

  else
  {
    return (0x101000000uLL >> (8 * (*(v1 + 120) - 4)));
  }
}

uint64_t sub_2458073B0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  if (*(v1 + 120) - 1 > 8)
  {
    return 1;
  }

  else
  {
    return byte_24591948A[(*(v1 + 120) - 1)];
  }
}

BOOL sub_245807474()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  return *(v1 + 120) == 4;
}

id sub_2458075F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong navigationController];

  return v2;
}

uint64_t sub_245807668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_24580AA2C(0, v8[2] + 1, 1, v8);
    *(a2 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_24580AA2C(v10 > 1, v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 112) = v8;
  return result;
}

uint64_t sub_2458077E8()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245807884, v0, 0);
}

uint64_t sub_245807884()
{
  v1 = v0[2];
  if (*(v1 + 128) == 1)
  {
    if (*(v1 + 120))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
      sub_245910DD4();
    }

    v2 = v0[2];
    v3 = v0[3];
    *(v1 + 120) = 0;

    v4 = sub_245910D64();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = sub_245809CFC(&qword_27EE29DC8, type metadata accessor for PreviewNFCPassportReader);
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = v2;
    swift_retain_n();
    *(v1 + 120) = sub_24586CFCC(0, 0, v3, &unk_245919200, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_245807A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_245911594();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = sub_2459115A4();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245807C4C, a4, 0);
}

uint64_t sub_245807C4C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  *(v0 + 33) = byte_285882DC0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  v3 = *(v2 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v14 = *(v1 + 16);
    v15 = *(v1 + 72);

    do
    {
      v6 = *(v0 + 33);
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 152);
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      v12 = *(v0 + 72);
      v14(v7, v5, v9);
      *(v0 + 36) = v6;
      *(v0 + 40) = 0;
      sub_245910D74();
      (*(v11 + 8))(v10, v12);
      (*(v8 + 8))(v7, v9);
      v5 += v15;
      --v4;
    }

    while (v4);
  }

  sub_2459117A4();
  *(v0 + 48) = xmmword_245918B80;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_245807DC8, 0, 0);
}

uint64_t sub_245807DC8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_245809CFC(&qword_27EE29DD0, MEMORY[0x277D85928]);
  sub_245911784();
  sub_245809CFC(&qword_27EE29DD8, MEMORY[0x277D858F8]);
  sub_2459115B4();
  v5 = *(v2 + 8);
  v0[24] = v5;
  v0[25] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_245807F4C;
  v8 = v0[15];
  v7 = v0[16];

  return MEMORY[0x2822008C8](v8, v0 + 2, v7, v4);
}

uint64_t sub_245807F4C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    (*(v2 + 192))(*(v2 + 120), *(v2 + 96));
    v3 = sub_2458082F4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 192);
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 120);
    v9 = *(v2 + 128);
    v10 = *(v2 + 96);
    v11 = *(v2 + 64);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_2458080B0;
    v4 = v11;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2458080B0()
{
  v1 = *(v0 + 184);
  if (v1 == 100)
  {
    v2 = *(v0 + 176);
    v3 = v2 + 1;
    if (v2 == 6)
    {

      v4 = *(v0 + 8);

      return v4();
    }

    v6 = 0;
    *(v0 + 176) = v3;
    *(v0 + 33) = *(&unk_285882DA0 + v3 + 32);
  }

  else
  {
    v6 = v1 + 1;
  }

  *(v0 + 184) = v6;
  v7 = *(*(v0 + 64) + 112);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v6 / 100.0;
    v10 = *(v0 + 160);
    v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 16);
    v20 = *(v10 + 72);

    do
    {
      v12 = *(v0 + 33);
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 152);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v18 = *(v0 + 72);
      v19(v13, v11, v15);
      *(v0 + 36) = v12;
      *(v0 + 40) = v9;
      sub_245910D74();
      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
      v11 += v20;
      --v8;
    }

    while (v8);
  }

  sub_2459117A4();
  *(v0 + 48) = xmmword_245918B80;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_245807DC8, 0, 0);
}

uint64_t sub_2458082F4()
{
  v1 = v0[8];
  (*(v0[17] + 8))(v0[18], v0[16]);

  return MEMORY[0x2822009F8](sub_245808370, v1, 0);
}

uint64_t sub_245808370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245808408()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458084A4, v0, 0);
}

uint64_t sub_2458084A4()
{
  v1 = v0[2];
  if (*(v1 + 128) == 1)
  {
    if (*(v1 + 120))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
      sub_245910DD4();
    }

    v2 = v0[2];
    v3 = v0[3];
    *(v1 + 120) = 0;

    v4 = sub_245910D64();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = sub_245809CFC(&qword_27EE29DC8, type metadata accessor for PreviewNFCPassportReader);
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = v2;
    swift_retain_n();
    *(v1 + 120) = sub_24586CFCC(0, 0, v3, &unk_2459191F8, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_245808670(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458087E0, v1, 0);
}

uint64_t sub_2458087E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  *(v1 + 128) = v2;
  v3 = *(v1 + 120);
  if (v2 == 1)
  {
    if (v3)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
      sub_245910DD4();
    }

    v16 = *(v0 + 72);
    v17 = *(v0 + 16);
    *(v1 + 120) = 0;

    v18 = sub_245910D64();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v19 = sub_245809CFC(&qword_27EE29DC8, type metadata accessor for PreviewNFCPassportReader);
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = v19;
    v20[4] = v17;
    swift_retain_n();
    *(v1 + 120) = sub_24586CFCC(0, 0, v16, &unk_2459191F0, v20);
  }

  else if (v3)
  {
    v4 = *(v0 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();

    *(v1 + 120) = 0;

    v5 = *(v4 + 112);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v0 + 56);
      v9 = *(v7 + 16);
      v8 = v7 + 16;
      v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v23 = *(v8 + 56);
      v24 = v9;
      v11 = (*(v0 + 32) + 8);

      do
      {
        v12 = *(v0 + 64);
        v14 = *(v0 + 40);
        v13 = *(v0 + 48);
        v15 = *(v0 + 24);
        v24(v12, v10, v13);
        *(v0 + 80) = 6;
        *(v0 + 84) = 0;
        sub_245910D74();
        (*v11)(v14, v15);
        (*(v8 - 8))(v12, v13);
        v10 += v23;
        --v6;
      }

      while (v6);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_245808AF8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_245808B64(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D18);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x2822009F8](sub_245808C30, v5, 0);
}

uint64_t sub_245808C30()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A7E0);
  (*(v3 + 104))(v1, *MEMORY[0x277D85778], v2);
  sub_245910DA4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_245808D14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457A18F4;

  return sub_2458077E8();
}

uint64_t sub_245808DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457AA49C;

  return sub_245808408();
}

uint64_t sub_245808E34()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_245808E54, v2, 0);
}

uint64_t sub_245808E54()
{
  v1 = *(v0 + 16);
  if (*(v1 + 120))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();
  }

  *(v1 + 120) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245808F10(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return (*(v1 + 8))();
}

uint64_t sub_245808F30()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_245808F50, v2, 0);
}

uint64_t sub_245808F50()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v5 = *(v0 + 8);

  return v5(v3, v2);
}

uint64_t sub_245808FD4@<X0>(_BYTE *a1@<X8>)
{
  sub_24580EE50();
  result = sub_24590FB24();
  *a1 = v3;
  return result;
}

uint64_t sub_2458090B0(uint64_t a1)
{
  sub_2457ACB24(a1, v3);
  sub_2457ACB24(v3, &v2);
  sub_24580EEA4();
  sub_24590FB34();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_245809110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_245910D24();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_24580D7B0(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_2459114D4();
  MEMORY[0x245D76160](0xD00000000000003FLL, 0x8000000245927A20);
  v12 = sub_2459118D4();
  MEMORY[0x245D76160](v12);

  MEMORY[0x245D76160](46, 0xE100000000000000);
  result = sub_2459115D4();
  __break(1u);
  return result;
}

uint64_t sub_2458092C8(uint64_t a1, uint64_t a2)
{
  sub_245910D24();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_24580DBD0();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_2459114D4();
    MEMORY[0x245D76160](0xD00000000000003FLL, 0x8000000245927A20);
    v8 = sub_2459118D4();
    MEMORY[0x245D76160](v8);

    MEMORY[0x245D76160](46, 0xE100000000000000);
    result = sub_2459115D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_245809490(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_24580F49C(a1, &v9 - v6, type metadata accessor for IdentityProofing.ViewStyleFormat);
  sub_24580F49C(v7, v5, type metadata accessor for IdentityProofing.ViewStyleFormat);
  sub_24580EEF8();
  sub_24590FB34();
  return sub_24580EF4C(v7, type metadata accessor for IdentityProofing.ViewStyleFormat);
}

uint64_t sub_2458095E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_245809660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245803430(a1, v4, v5, v6);
}

void sub_24580972C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  v4 = v2;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_24580999C()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_2458099D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458046D8(a1, v4, v5, v6);
}

uint64_t sub_245809AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245804B78(a1, v4, v5, v6);
}

uint64_t sub_245809B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245802AD0(a1, v4, v5, v6);
}

uint64_t sub_245809C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458020B8(a1, v4, v5, v6);
}

uint64_t sub_245809CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245809D68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_245809E60;

  return v6(a1);
}

uint64_t sub_245809E60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_245809F58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E28);
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

char *sub_24580A074(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_24580A178(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
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

char *sub_24580A284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D38);
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

void *sub_24580A3A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24580A4D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C68);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24580A5DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E00);
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

char *sub_24580A724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_24580A850(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

size_t sub_24580AA2C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D28);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24580AC1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24580AD20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C78);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24580AE24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DB0);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_24580AF28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C70);
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

char *sub_24580B044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C98);
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

char *sub_24580B138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DA0);
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

char *sub_24580B258(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D48);
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

uint64_t sub_24580B378(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D98);
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_2457AA3F0(v21, v31);
      }

      else
      {
        sub_2457816F0(v21, v31);
      }

      result = MEMORY[0x245D76E40](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      result = sub_2457AA3F0(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24580B5F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D90);
  v33 = a2;
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_24578FB80(v34, *(&v34 + 1));
      }

      sub_245911824();
      sub_245910AF4();
      result = sub_245911864();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24580B8B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D40);
  v46 = a2;
  v6 = sub_245911614();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v42 = v2;
    v43 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    v45 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = *(v5 + 56) + 48 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = *(v27 + 40);
      if ((v46 & 1) == 0)
      {

        sub_24580DBF8(v28, v29, v30, v31, v32, v33);
      }

      v48 = v32;
      v7 = v45;
      sub_245911824();
      sub_245910AF4();
      result = sub_245911864();
      v34 = -1 << *(v45 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v15 = v31;
        v16 = v48;
        v17 = v33;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
      v16 = v48;
      v17 = v33;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v45 + 48) + 16 * v14);
      *v18 = v49;
      v18[1] = v26;
      v19 = *(v45 + 56) + 48 * v14;
      *v19 = v28;
      *(v19 + 8) = v29;
      *(v19 + 16) = v30;
      *(v19 + 24) = v15;
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;
      ++*(v45 + 16);
      v5 = v44;
      v11 = v47;
    }

    v21 = v8;
    result = v43;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v43[v8];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24580BBE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DF0);
  v33 = a2;
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2457AA3F0(v24, v34);
      }

      else
      {
        sub_2457816F0(v24, v34);
      }

      sub_245911824();
      sub_245910AF4();
      result = sub_245911864();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2457AA3F0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24580BE98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D10);
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      sub_245911824();
      MEMORY[0x245D76E70](v20);
      result = sub_245911864();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_24580C11C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DE0);
  v35 = a2;
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_245911824();
      sub_245910AF4();
      result = sub_245911864();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24580C3C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DB8);
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_245911814();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24580C624(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DA8);
  v37 = a2;
  result = sub_245911614();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_245911824();
      sub_245910AF4();
      result = sub_245911864();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_24580C8E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D98);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 4 * v17);
        sub_2457816F0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 4 * v17) = v18;
        result = sub_2457AA3F0(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24580CA60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D90);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_24578FB80(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24580CBE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D40);
  v29 = v0;
  v1 = *v0;
  v30 = sub_245911604();
  v31 = v1;
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v15 *= 48;
        v20 = *(v31 + 56) + v15;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = (*(v30 + 48) + v16);
        *v27 = v19;
        v27[1] = v18;
        v28 = *(v30 + 56) + v15;
        *v28 = v21;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;

        result = sub_24580DBF8(v21, v22, v23, v24, v25, v26);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

void *sub_24580CDB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DF0);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2457816F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2457AA3F0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_24580CF5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D10);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_24580D0A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DE0);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24580D214()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DB8);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24580D364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DA8);
  v2 = *v0;
  v3 = sub_245911604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24580D4DC(uint64_t a1)
{
  v2 = sub_24590D724();
  if (sub_24590D814())
  {
    v3 = sub_24590D834();
    (*(*(v2 - 8) + 8))(a1, v2);
    if (v3)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = sub_24590D824();
    (*(*(v2 - 8) + 8))(a1, v2);
    if (v5)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24580D5B8(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 14;
    if (v13 != 14)
    {
      v15 = *(*(v3 + 56) + 4 * v12);
      result = sub_24588CAA8(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 4 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
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

uint64_t sub_24580D6FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24580668C(a1, v4, v5, v6);
}

void *sub_24580D7B0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_24580D7FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

uint64_t sub_24580D838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_24580376C(a1, v4, v5, v7, v6);
}

uint64_t sub_24580D8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458010D0(a1, v4, v5, v6);
}

uint64_t sub_24580D9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458020B8(a1, v4, v5, v6);
}

uint64_t sub_24580DA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245801E10(a1, v4, v5, v6);
}

uint64_t sub_24580DB14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245803898(a1, v4, v5, v6);
}

id sub_24580DBF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{

  if (a6)
  {
    v9 = a3;
  }

  else
  {
    v9 = a5;
  }

  return v9;
}

uint64_t sub_24580DC48(uint64_t a1)
{
  v2 = sub_24590E9E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E20);
    v9 = sub_2459114B4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_245809CFC(&qword_27EE28ED8, MEMORY[0x277CFF8C8]);
      v16 = sub_245910904();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_245809CFC(&qword_27EE28EE0, MEMORY[0x277CFF8C8]);
          v23 = sub_245910934();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24580DF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v51 = a8;
  v49 = a6;
  v50 = a7;
  v48 = a5;
  v13 = sub_24590F354();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v16 - 8);
  v52 = &v45 - v17;
  v18 = sub_24590D724();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v54[3] = type metadata accessor for PassportNFCReader();
  v54[4] = &off_285888EC8;
  v54[0] = a4;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = MEMORY[0x277D84F98];
  *(a9 + 96) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 120) = 0;
  *(a9 + 121) = 1;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  sub_24590D714();
  (*(v19 + 16))(v22, v24, v18);
  v25 = sub_24580D4DC(v22);
  (*(v19 + 8))(v24, v18);
  if (v25 == 3)
  {
    v26 = 2;
  }

  else
  {
    v26 = v25;
  }

  *(a9 + 168) = v26;
  *(a9 + 201) = 0;
  *(a9 + 208) = 0;
  *(a9 + 216) = 0;
  *(a9 + 224) = 0;
  *(a9 + 232) = sub_24580F080(&unk_285882A38, &qword_27EE29D88);
  sub_24590C2D4();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 128) = a3;
  sub_2457ACB24(v54, a9 + 32);
  v27 = v49;
  *(a9 + 176) = v48;
  *(a9 + 184) = v27;
  *(a9 + 192) = v50;
  *(a9 + 200) = v51 & 1;
  if (a2)
  {
    v28 = a1;

    v29 = sub_24586C880(0xD000000000000029, 0x8000000245928640);
    if (v30)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v31 = a1;
  }

  sub_24590C714();
  v32 = sub_24590F344();
  v33 = sub_245910F64();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v53 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_2458CC378(0xD000000000000029, 0x8000000245928640, &v53);
    _os_log_impl(&dword_245767000, v32, v33, "NFCScanViewConfig failed to localized string id: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245D77B40](v35, -1, -1);
    MEMORY[0x245D77B40](v34, -1, -1);
  }

  (*(v46 + 8))(v15, v47);
  v29 = 0;
  v30 = 0xE000000000000000;
LABEL_11:
  *(a9 + 136) = v29;
  *(a9 + 144) = v30;
  v36 = sub_245910D64();
  v37 = v52;
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  sub_245910D34();

  v38 = sub_245910D24();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = a9;
  sub_2458B90EC(0, 0, v37, &unk_2459191A0, v39);

  v41 = objc_opt_self();
  v42 = [v41 defaultCenter];
  [v42 addObserver:a9 selector:sel_appDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  v43 = [v41 defaultCenter];
  [v43 addObserver:a9 selector:sel_appWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  __swift_destroy_boxed_opaque_existential_1(v54);
  return a9;
}

uint64_t sub_24580E4BC(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a3;
  v83 = a5;
  v84 = _s11NFCScanViewVMa(0);
  MEMORY[0x28223BE20](v84);
  v9 = (&v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D50);
  MEMORY[0x28223BE20](v85);
  v87 = &v79 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D58);
  v11 = MEMORY[0x28223BE20](v86);
  v88 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v79 - v13;
  v14 = a1[5];
  v15 = a1[3];
  v130 = a1[4];
  v131 = v14;
  v16 = a1[5];
  v132 = a1[6];
  v17 = a1[1];
  v127[0] = *a1;
  v127[1] = v17;
  v18 = a1[3];
  v20 = *a1;
  v19 = a1[1];
  v128 = a1[2];
  v129 = v18;
  v138 = v130;
  v139 = v16;
  v140 = a1[6];
  v134 = v20;
  v135 = v19;
  v133 = *(a1 + 112);
  v141 = *(a1 + 112);
  v136 = v128;
  v137 = v15;
  type metadata accessor for PassportNFCReader();
  swift_allocObject();

  sub_24578FE88(v127, &v119);
  v89 = a4;
  v81 = sub_245835D70(&v134, a4);
  swift_beginAccess();
  v21 = *(a2 + 112);
  v139 = *(a2 + 96);
  v140 = v21;
  v22 = *(a2 + 80);
  v141 = *(a2 + 128);
  v23 = *(a2 + 32);
  v134 = *(a2 + 16);
  v135 = v23;
  v24 = *(a2 + 64);
  v136 = *(a2 + 48);
  v137 = v24;
  v138 = v22;
  v25 = v21;
  if (*(&v134 + 1))
  {
    v119 = v134;
    v26 = *(a2 + 80);
    v122 = *(a2 + 64);
    v123 = v26;
    v124 = *(a2 + 96);
    v27 = *(a2 + 48);
    v120 = *(a2 + 32);
    v121 = v27;
    v28 = *(a2 + 120);
    *&v125 = v25;
    *(&v125 + 1) = v28;
    v126 = *(a2 + 128);
    sub_245778F2C(&v134, v117, &qword_27EE29C10);

    sub_245778F94(&v119, &qword_27EE29C10);
  }

  else
  {
    v119 = v134;
    v29 = *(a2 + 80);
    v122 = *(a2 + 64);
    v123 = v29;
    v124 = *(a2 + 96);
    v30 = *(a2 + 48);
    v120 = *(a2 + 32);
    v121 = v30;
    v31 = *(a2 + 120);
    *&v125 = v25;
    *(&v125 + 1) = v31;
    v126 = *(a2 + 128);
    sub_245778F2C(&v134, v117, &qword_27EE29C10);
    sub_245778F94(&v119, &qword_27EE29C10);
    v25 = MEMORY[0x277D84F90];
  }

  v32 = *(a2 + 96);
  v123 = *(a2 + 80);
  v124 = v32;
  v125 = *(a2 + 112);
  v126 = *(a2 + 128);
  v33 = *(a2 + 32);
  v119 = *(a2 + 16);
  v120 = v33;
  v34 = *(a2 + 64);
  v121 = *(a2 + 48);
  v122 = v34;
  v35 = *(&v119 + 1);
  v36 = v119;
  if (*(&v119 + 1))
  {

    v79 = v35;
    v80 = v36;
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v109[0] = v36;
  v109[1] = v35;
  v37 = *(a2 + 112);
  v114 = *(a2 + 96);
  v115 = v37;
  v116 = *(a2 + 128);
  v38 = *(a2 + 48);
  v110 = *(a2 + 32);
  v111 = v38;
  v39 = *(a2 + 80);
  v112 = *(a2 + 64);
  v113 = v39;
  sub_245778F2C(&v119, v117, &qword_27EE29C10);
  sub_245778F94(v109, &qword_27EE29C10);
  v40 = *(a2 + 96);
  v117[4] = *(a2 + 80);
  v117[5] = v40;
  v117[6] = *(a2 + 112);
  v118 = *(a2 + 128);
  v41 = *(a2 + 32);
  v117[0] = *(a2 + 16);
  v117[1] = v41;
  v42 = *(a2 + 64);
  v117[2] = *(a2 + 48);
  v117[3] = v42;
  v43 = *(&v42 + 1);
  v44 = v42;
  if (*(&v117[0] + 1))
  {
    v101 = v117[0];
    v45 = *(a2 + 48);
    v102 = *(a2 + 32);
    v103 = v45;
    v104 = v42;
    v46 = *(a2 + 96);
    v105 = *(a2 + 80);
    v106 = v46;
    v107 = *(a2 + 112);
    v108 = *(a2 + 128);
    sub_245778F2C(v117, v93, &qword_27EE29C10);

    sub_245778F94(&v101, &qword_27EE29C10);
  }

  else
  {
    v101 = *&v117[0];
    v47 = *(a2 + 48);
    v102 = *(a2 + 32);
    v103 = v47;
    v104 = v42;
    v48 = *(a2 + 96);
    v105 = *(a2 + 80);
    v106 = v48;
    v107 = *(a2 + 112);
    v108 = *(a2 + 128);
    sub_245778F2C(v117, v93, &qword_27EE29C10);
    sub_245778F94(&v101, &qword_27EE29C10);
    v43 = 0xE300000000000000;
    v44 = 4281173;
  }

  v49 = *(a2 + 96);
  v105 = *(a2 + 80);
  v106 = v49;
  v107 = *(a2 + 112);
  v108 = *(a2 + 128);
  v50 = *(a2 + 32);
  v101 = *(a2 + 16);
  v102 = v50;
  v51 = *(a2 + 64);
  v103 = *(a2 + 48);
  v104 = v51;
  v52 = *(&v101 + 1);
  v53 = v101;
  if (*(&v101 + 1))
  {

    v54 = v53;
    v55 = v52;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v93[0] = v53;
  v93[1] = v52;
  v56 = *(a2 + 112);
  v98 = *(a2 + 96);
  v99 = v56;
  v100 = *(a2 + 128);
  v57 = *(a2 + 48);
  v94 = *(a2 + 32);
  v95 = v57;
  v58 = *(a2 + 80);
  v96 = *(a2 + 64);
  v97 = v58;
  sub_245778F2C(&v101, v92, &qword_27EE29C10);
  sub_245778F94(v93, &qword_27EE29C10);
  v59 = sub_2458214FC(v44, v43, v54, v55);

  v60 = (v59 == 2) | v59;
  v61 = _s17NFCScanViewConfigCMa(0);
  v62 = swift_allocObject();
  v63 = v89;

  v64 = v83;

  v65 = v82;
  v66 = sub_24580DF68(v65, v63, v64, v81, v25, v80, v79, v60 & 1, v62);

  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8);
  swift_storeEnumTagMultiPayload();
  v67 = v9 + *(v84 + 20);
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  *v67 = sub_24590F5D4();
  v67[8] = v68 & 1;
  sub_245809CFC(&qword_27EE29D60, _s11NFCScanViewVMa);
  v69 = v87;
  sub_245910234();
  v92[3] = v61;
  v92[4] = &off_285886CD0;
  v92[0] = v66;

  sub_24580EF4C(v9, _s11NFCScanViewVMa);
  KeyPath = swift_getKeyPath();
  v71 = (v69 + *(v85 + 36));
  sub_2457ACB24(v92, (v71 + 1));
  *v71 = KeyPath;
  __swift_destroy_boxed_opaque_existential_1(v92);
  LOBYTE(v71) = (*(v63 + 144) & 3) == 2;
  v72 = swift_getKeyPath();
  v73 = v90;
  sub_24577ABC4(v69, v90, &qword_27EE29D50);
  v74 = v73 + *(v86 + 36);
  *v74 = v72;
  *(v74 + 8) = v71;
  sub_245778F2C(v73, v88, &qword_27EE29D58);
  v75 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D68));
  v76 = sub_24590FC44();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakCopyInit();
  v77 = swift_getKeyPath();
  MEMORY[0x28223BE20](v77);
  *(&v79 - 4) = v66;
  *(&v79 - 3) = sub_24580EDFC;
  v91 = v66;
  sub_24590C294();

  MEMORY[0x245D77C60](v92);
  sub_245778F94(v73, &qword_27EE29D58);

  return v76;
}

uint64_t sub_24580EE04()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 152);
  *(v2 + 152) = v1;
  *(v2 + 160) = v3;
  sub_245771BB4(v1);
  return sub_245771C34(v4);
}

unint64_t sub_24580EE50()
{
  result = qword_27EE29D70;
  if (!qword_27EE29D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29D70);
  }

  return result;
}

unint64_t sub_24580EEA4()
{
  result = qword_27EE29D78;
  if (!qword_27EE29D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29D78);
  }

  return result;
}

unint64_t sub_24580EEF8()
{
  result = qword_27EE29D80;
  if (!qword_27EE29D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29D80);
  }

  return result;
}

uint64_t sub_24580EF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24580EFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245807A50(a1, v4, v5, v6);
}

uint64_t sub_24580F080(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2459114B4();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_245911824();
      MEMORY[0x245D76E70](v11);
      result = sub_245911864();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24580F1B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DE8);
    v3 = sub_2459114B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_245911824();

      sub_245910AF4();
      result = sub_245911864();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_245911714();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_24580F344()
{
  sub_24580F400(319, &qword_27EE29E48, type metadata accessor for IdentityProofing.ViewStyleFormat);
  if (v0 <= 0x3F)
  {
    sub_24580F400(319, &qword_27EE29E50, _s17NFCScanViewConfigCMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24580F400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24590F5C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24580F49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24580F504(uint64_t a1, uint64_t a2)
{
  v4 = _s11NFCScanViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24580F568@<X0>(uint64_t **a1@<X8>)
{
  v3 = *(_s11NFCScanViewVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2457FA590(v4, a1);
}

unint64_t sub_24580F5D8()
{
  result = qword_27EE29E78;
  if (!qword_27EE29E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29E58);
    sub_24580F664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29E78);
  }

  return result;
}

unint64_t sub_24580F664()
{
  result = qword_27EE29E80;
  if (!qword_27EE29E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29E68);
    sub_245778BD8(&qword_27EE29E88, &qword_27EE29E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29E80);
  }

  return result;
}

unint64_t sub_24580F71C()
{
  result = qword_27EE29E90;
  if (!qword_27EE29E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29E70);
    sub_24580F7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29E90);
  }

  return result;
}

unint64_t sub_24580F7A8()
{
  result = qword_27EE29E98;
  if (!qword_27EE29E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29E98);
  }

  return result;
}

uint64_t objectdestroy_206Tm()
{
  v1 = *(_s11NFCScanViewVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(type metadata accessor for IdentityProofing.ViewStyleFormat() + 76);
    v5 = sub_24590FDA4();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_24580F988(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11NFCScanViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24580F9FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2458008E8(a1, v4, v5, v6);
}

uint64_t sub_24580FAB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_245800054(a1, v4, v5, v6);
}

uint64_t sub_24580FB64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24580034C(a1, v4, v5, v6);
}

unint64_t sub_24580FC18()
{
  result = qword_27EE29ED8;
  if (!qword_27EE29ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29ED8);
  }

  return result;
}

unint64_t sub_24580FC6C()
{
  result = qword_27EE29EE8;
  if (!qword_27EE29EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29EE0);
    sub_245778BD8(&qword_27EE29EF0, &qword_27EE29EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29EE8);
  }

  return result;
}

uint64_t sub_24580FD24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24580FD6C()
{
  result = qword_27EE29F30;
  if (!qword_27EE29F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29F28);
    sub_24580FDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29F30);
  }

  return result;
}

unint64_t sub_24580FDF8()
{
  result = qword_27EE29F38;
  if (!qword_27EE29F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29F48);
    sub_24580FEC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29F38);
  }

  return result;
}

unint64_t sub_24580FEC0()
{
  result = qword_27EE29F50;
  if (!qword_27EE29F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29F48);
    sub_245778BD8(&qword_27EE29F58, &qword_27EE29F60);
    sub_245778BD8(&qword_27EE28B90, &qword_27EE28B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29F50);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24581009C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EA0);
  v3 = type metadata accessor for PassportNFCGuideContent(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_245916CF0;
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v7 = v6 + v4;
  v8 = qword_27EE32B38;
  sub_24590F2C4();
  v9 = sub_24590F2F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v2, 0, 1, v9);
  v30 = v6;
  sub_24577ABC4(v2, v7, &qword_27EE29F98);
  v13 = (v7 + *(v3 + 20));
  *v13 = 0xD00000000000003ALL;
  v13[1] = 0x80000002459287C0;
  v14 = (v7 + *(v3 + 24));
  *v14 = 0xD00000000000003DLL;
  v14[1] = 0x8000000245928800;
  v15 = qword_27EE32B38;
  sub_24590F2C4();
  v11(v2, 0, 1, v9);
  v28 = v11;
  v29 = v12;
  sub_24577ABC4(v2, v7 + v5, &qword_27EE29F98);
  v16 = (v7 + v5 + *(v3 + 20));
  *v16 = 0xD00000000000003DLL;
  v16[1] = 0x8000000245928860;
  v17 = (v7 + v5 + *(v3 + 24));
  *v17 = 0xD000000000000040;
  v17[1] = 0x80000002459288A0;
  v18 = v7 + 2 * v5;
  v19 = qword_27EE32B38;
  sub_24590F2C4();
  v11(v2, 0, 1, v9);
  sub_24577ABC4(v2, v18, &qword_27EE29F98);
  v20 = (v18 + *(v3 + 20));
  *v20 = 0xD00000000000003BLL;
  v20[1] = 0x8000000245928910;
  v21 = (v18 + *(v3 + 24));
  *v21 = 0xD00000000000003ELL;
  v21[1] = 0x8000000245928950;
  v22 = v7 + 3 * v5;
  v23 = qword_27EE32B38;
  sub_24590F2C4();
  v28(v2, 0, 1, v9);
  result = sub_24577ABC4(v2, v22, &qword_27EE29F98);
  v25 = (v22 + *(v3 + 20));
  *v25 = 0xD000000000000036;
  v25[1] = 0x80000002459289B0;
  v26 = (v22 + *(v3 + 24));
  *v26 = 0xD000000000000039;
  v26[1] = 0x80000002459289F0;
  qword_27EE32BF8 = v30;
  return result;
}

uint64_t sub_245810504@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_245810518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FC8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v14[10] = a1;
  v14[11] = a2;
  v14[12] = a3;
  sub_24590FF94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FF0);
  sub_245812A4C();
  sub_24590F5A4();
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FD0);
  sub_245778BD8(&qword_27EE29FD8, &qword_27EE29FC8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FE0);
  v12 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0);
  v14[14] = v11;
  v14[15] = v12;
  swift_getOpaqueTypeConformance2();
  sub_2459103C4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_245810758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24590FBD4();
  *(a2 + 8) = 0x4040000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A030);
  sub_245810860(a1, (a2 + *(v4 + 44)));
  v5 = sub_24590FFD4();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A008) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  v7 = sub_24590FFC4();
  sub_24590F594();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FF0);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_245810860@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A038);
  v44 = *(v45 - 8);
  v4 = MEMORY[0x28223BE20](v45);
  v43 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v46 = &v36[-v6];
  v40 = a1;
  v7 = *(a1 + 24);
  v54 = *(a1 + 16);
  v55 = v7;
  sub_245778CE8();

  v8 = sub_2459101A4();
  v10 = v9;
  v12 = v11;
  sub_245910004();
  v13 = sub_245910184();
  v15 = v14;
  LOBYTE(a1) = v16;

  sub_24580FD24(v8, v10, v12 & 1);

  sub_245910054();
  v17 = sub_245910144();
  v38 = v17;
  v19 = v18;
  LOBYTE(v8) = v20;
  v42 = v21;
  sub_24580FD24(v13, v15, a1 & 1);

  KeyPath = swift_getKeyPath();
  v41 = sub_24590FFA4();
  LOBYTE(v54) = v8 & 1;
  LODWORD(v8) = v8 & 1;
  v37 = v8;
  LOBYTE(v50) = 1;
  v54 = *(v40 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A040);
  type metadata accessor for GuideView(0);
  sub_245778BD8(&qword_27EE2A048, &qword_27EE2A040);
  sub_245812BC8(&qword_27EE2A050, type metadata accessor for GuideView);
  sub_245812BC8(&qword_27EE2A058, type metadata accessor for PassportNFCGuideContent);
  v22 = v46;
  sub_245910674();
  v23 = v44;
  v24 = *(v44 + 16);
  v25 = v43;
  v26 = v45;
  v24(v43, v22, v45);
  *&v50 = v17;
  *(&v50 + 1) = v19;
  LOBYTE(v51) = v8;
  *(&v51 + 1) = *v49;
  DWORD1(v51) = *&v49[3];
  v27 = v42;
  v28 = KeyPath;
  *(&v51 + 1) = v42;
  *&v52 = KeyPath;
  BYTE8(v52) = 0;
  HIDWORD(v52) = *&v48[3];
  *(&v52 + 9) = *v48;
  LOBYTE(v8) = v41;
  v53[0] = v41;
  *&v53[4] = *&v47[3];
  *&v53[1] = *v47;
  memset(&v53[8], 0, 32);
  v53[40] = 1;
  v29 = v51;
  *a2 = v50;
  a2[1] = v29;
  v30 = v52;
  v31 = *v53;
  v32 = *&v53[16];
  *(a2 + 73) = *&v53[25];
  a2[3] = v31;
  a2[4] = v32;
  a2[2] = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A060);
  v24(a2 + *(v33 + 48), v25, v26);
  sub_245778F2C(&v50, &v54, &qword_27EE2A068);
  v34 = *(v23 + 8);
  v34(v46, v26);
  v34(v25, v26);
  v54 = v38;
  v55 = v19;
  v56 = v37;
  *v57 = *v49;
  *&v57[3] = *&v49[3];
  v58 = v27;
  v59 = v28;
  v60 = 0;
  *v61 = *v48;
  *&v61[3] = *&v48[3];
  v62 = v8;
  *&v63[3] = *&v47[3];
  *v63 = *v47;
  v65 = 0u;
  v64 = 0u;
  v66 = 1;
  return sub_245778F94(&v54, &qword_27EE2A068);
}

uint64_t sub_245810DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_245778F2C(a1, a2, &qword_27EE29F98);
  v4 = type metadata accessor for PassportNFCGuideContent(0);
  v5 = *(v4 + 24);
  v6 = (a1 + *(v4 + 20));
  v8 = *v6;
  v7 = v6[1];
  v10 = *(a1 + v5);
  v9 = *(a1 + v5 + 8);
  v11 = type metadata accessor for GuideView(0);
  v12 = (a2 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v7;
  v13 = (a2 + *(v11 + 24));
  *v13 = v10;
  v13[1] = v9;
}