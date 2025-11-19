id sub_21BCC5DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21BE275DC();
  v32 = 0;
  sub_21BCC6030(a2, &v23);
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v42[3] = v26;
  v42[4] = v27;
  v42[5] = v28;
  v42[6] = v29;
  v43 = v30;
  sub_21BBA3854(&v34, v22, &qword_27CDB9548, &qword_21BE3FA50);
  sub_21BB3A4CC(v42, &qword_27CDB9548, &qword_21BE3FA50);
  *&v31[71] = v38;
  *&v31[87] = v39;
  *&v31[103] = v40;
  *&v31[7] = v34;
  *&v31[23] = v35;
  *&v31[39] = v36;
  *&v31[119] = v41;
  *&v31[55] = v37;
  v6 = v32;
  sub_21BE286AC();
  sub_21BE2725C();
  v7 = *(a2 + 24);
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v9 = swift_allocObject();
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  v11 = *(a2 + 48);
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = v11;
  *(v9 + 80) = a1;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  v12 = *&v31[16];
  *(a3 + 17) = *v31;
  *(a3 + 33) = v12;
  v13 = *&v31[48];
  *(a3 + 49) = *&v31[32];
  *(a3 + 65) = v13;
  v14 = *&v31[64];
  v15 = *&v31[80];
  v16 = v23;
  *(a3 + 128) = *&v31[111];
  *(a3 + 144) = v16;
  *(a3 + 113) = *&v31[96];
  *(a3 + 97) = v15;
  *(a3 + 81) = v14;
  v17 = v27;
  *(a3 + 192) = v26;
  *(a3 + 208) = v17;
  v18 = v25;
  *(a3 + 160) = v24;
  *(a3 + 176) = v18;
  v19 = v29;
  *(a3 + 224) = v28;
  *(a3 + 240) = v19;
  *(a3 + 256) = (v7 & 1) == 0;
  *(a3 + 264) = KeyPath;
  *(a3 + 272) = 0;
  *(a3 + 280) = sub_21BCC7A90;
  *(a3 + 288) = v9;
  sub_21BCC7A58(a2, v22);

  return a1;
}

void sub_21BCC6030(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_27CDB4E58;
  v5 = *a1;
  if (v4 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v6 = 40.0;
  }

  else
  {
    v6 = 38.0;
  }

  sub_21BBDAF04();
  sub_21BCC7290(&qword_280BD8A20, sub_21BBDAF04);
  v7 = sub_21BE2727C();
  v9 = v8;
  v10 = sub_21BE2771C();
  LOBYTE(v26[0]) = 1;
  sub_21BCC624C(a1, v22);
  *&v21[55] = v23;
  *&v21[39] = v22[2];
  *&v21[23] = v22[1];
  *&v21[7] = v22[0];
  v11 = v26[0];
  v24 = v10;
  v25[0] = v26[0];
  v12 = *v21;
  *&v25[1] = *v21;
  *&v25[64] = *(&v23 + 1);
  *&v25[49] = *&v21[48];
  v13 = *&v21[32];
  *&v25[33] = *&v21[32];
  v14 = *&v21[16];
  *&v25[17] = *&v21[16];
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  v15 = *v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  v16 = *&v25[48];
  *(a2 + 80) = *&v25[32];
  *(a2 + 96) = v16;
  v17 = *&v25[16];
  *(a2 + 112) = *&v25[64];
  *(a2 + 64) = v17;
  v26[0] = v10;
  v26[1] = 0;
  v27 = v11;
  v28 = v12;
  *&v31[15] = *&v21[63];
  *v31 = *&v21[48];
  v30 = v13;
  v29 = v14;
  v18 = v7;
  v19 = v5;
  sub_21BBA3854(&v24, &v20, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v26, &qword_27CDB9550, &qword_21BE3FAA0);
}

uint64_t sub_21BCC624C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v39 = *a1;
  v40[0] = v3;
  *(v40 + 9) = *(a1 + 25);
  sub_21BCC7B5C(&v39, &v37);
  *&v37 = sub_21BE2917C();
  *(&v37 + 1) = v4;
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE2832C();
  v10 = sub_21BE27D4C();
  v34 = v11;
  v35 = v10;
  v33 = v12;
  v36 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  v37 = v39;
  v38[0] = v40[0];
  *(v38 + 9) = *(v40 + 9);
  v14 = sub_21BCC64B8(&v37);
  v16 = v15;

  *&v37 = v14;
  *(&v37 + 1) = v16;
  v17 = sub_21BE27DBC();
  v19 = v18;
  LOBYTE(v16) = v20;
  sub_21BE27BEC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v17, v19, v16 & 1);

  sub_21BE2833C();
  v26 = sub_21BE27D4C();
  v28 = v27;
  LOBYTE(v5) = v29;
  v31 = v30;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  LOBYTE(v37) = v33 & 1;
  v41 = v5 & 1;
  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v5 & 1;
  *(a2 + 56) = v31;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BBA4A38(v26, v28, v5 & 1);

  sub_21BBC7C7C(v26, v28, v5 & 1);

  sub_21BBC7C7C(v35, v34, v33 & 1);
}

uint64_t sub_21BCC64B8(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
LABEL_6:
    v3 = sub_21BE2599C();

    return v3;
  }

  v3 = *(a1 + 8);
  if ((*(a1 + 40) & 1) == 0 && *(a1 + 32) == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v4 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    goto LABEL_6;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 16);

  return v3;
}

uint64_t sub_21BCC6620(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-v7];
  if ((*(a1 + 24) & 1) == 0)
  {
    v9 = sub_21BE28DAC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_21BE28D7C();
    sub_21BCC7A58(a1, v16);
    v10 = a2;
    v11 = sub_21BE28D6C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    v14 = *(a1 + 16);
    *(v12 + 32) = *a1;
    *(v12 + 48) = v14;
    v15 = *(a1 + 48);
    *(v12 + 64) = *(a1 + 32);
    *(v12 + 80) = v15;
    *(v12 + 96) = a2;
    sub_21BBA932C(0, 0, v8, &unk_21BE3FA90, v12);
  }

  return result;
}

uint64_t sub_21BCC676C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 80) = sub_21BE28D7C();
  *(v5 + 88) = sub_21BE28D6C();
  v8 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  v9 = a4[3];
  *(v5 + 48) = a4[2];
  *(v5 + 64) = v9;
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 96) = v11;
  *v11 = v5;
  v11[1] = sub_21BCC6840;

  return sub_21BCC69DC(v10, a5);
}

uint64_t sub_21BCC6840()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCC697C, v5, v4);
}

uint64_t sub_21BCC697C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCC69DC(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v4 = sub_21BE26A4C();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *(v2 + 56);
  v3[22] = v7;
  v3[23] = v8;
  sub_21BE28D7C();
  v3[24] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v3[25] = v10;
  v3[26] = v9;

  return MEMORY[0x2822009F8](sub_21BCC6AD4, v10, v9);
}

uint64_t sub_21BCC6AD4()
{
  v1 = v0[19];
  if (v1 && (v2 = [v1 topViewController], (v0[27] = v2) != 0))
  {
    v3 = v2;
    v4 = v0[18];
    v5 = *(v0[23] + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities);
    v0[28] = v5;
    swift_unknownObjectRetain();
    v6 = [v4 altDSID];
    if (v6)
    {
      v7 = v6;
      sub_21BE28A0C();
    }

    v12 = sub_21BE289CC();
    v0[29] = v12;

    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_21BCC6CF4;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBDC4C4;
    v0[13] = &block_descriptor_49;
    v0[14] = v13;
    [v5 presentAppleCardSharingDetailsForAltDSID:v12 viewController:v3 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[24];

    v9 = v0[22];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21BCC6CF4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BCC6DFC, v2, v1);
}

uint64_t sub_21BCC6DFC()
{
  v22 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);

  v6 = *(v0 + 240);
  swift_unknownObjectRelease();

  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_21BB35000, v7, v8, "AppleCardFamilyView presentAppleCardSharingDetails %{BOOL}d", v9, 8u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 160);

  (*(v11 + 8))(v10, v12);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 216);
  v17[0] = 0;
  v18 = xmmword_21BE33DF0;
  v19 = 0;
  v20 = 0;
  v21 = 513;
  sub_21BD23430(v17);

  v14 = *(v0 + 176);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BCC6F94@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v12[0] = *v1;
  v12[1] = v3;
  v4 = v1[3];
  v12[2] = v1[2];
  v12[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v7 = v1[3];
  v5[3] = v1[2];
  v5[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[8] = v8;
  sub_21BCC7A58(v12, v11);
  result = sub_21BE283EC();
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_21BCC7A50;
  a1[3] = v5;
  return result;
}

unint64_t sub_21BCC70CC()
{
  result = qword_27CDB94A8;
  if (!qword_27CDB94A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB94A0, &qword_21BE3F830);
    sub_21BCC7158();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB94A8);
  }

  return result;
}

unint64_t sub_21BCC7158()
{
  result = qword_27CDB94B0;
  if (!qword_27CDB94B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB94B8, &qword_21BE3F838);
    sub_21BCC71DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB94B0);
  }

  return result;
}

unint64_t sub_21BCC71DC()
{
  result = qword_27CDB94C0;
  if (!qword_27CDB94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB94C0);
  }

  return result;
}

uint64_t sub_21BCC7230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_21BCC5C8C(a1, *(v2 + 24), a2);
}

unint64_t sub_21BCC723C()
{
  result = qword_27CDB94D8;
  if (!qword_27CDB94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB94D8);
  }

  return result;
}

uint64_t sub_21BCC7290(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BCC72E8()
{
  result = qword_27CDB9508;
  if (!qword_27CDB9508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7DA0, &qword_21BE39C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9508);
  }

  return result;
}

uint64_t sub_21BCC736C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21BBA6A64;

  return sub_21BCC5924(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21BCC7448(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_21BE26A4C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  sub_21BE28D7C();
  v2[23] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[24] = v7;
  v2[25] = v6;

  return MEMORY[0x2822009F8](sub_21BCC753C, v7, v6);
}

uint64_t sub_21BCC753C()
{
  v1 = v0[18];
  if (v1 && (v2 = [v1 topViewController], (v0[26] = v2) != 0))
  {
    v3 = v2;
    v4 = *(v0[19] + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities);
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_21BCC76E4;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBDC4C4;
    v0[13] = &block_descriptor_25;
    v0[14] = v5;
    [v4 presentAppleCardUserInvitationFlowWithViewController:v3 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = v0[23];

    v7 = v0[22];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21BCC76E4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BCC77EC, v2, v1);
}

uint64_t sub_21BCC77EC()
{
  v20 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  v4 = *(v0 + 216);

  sub_21BE2614C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4;
    _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilyView presentAppleCardUserInvitationFlow %{BOOL}d", v7, 8u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 160);

  (*(v9 + 8))(v8, v10);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 208);
  v15[0] = 0;
  v16 = xmmword_21BE33DF0;
  v17 = 0;
  v18 = 0;
  v19 = 512;
  sub_21BD23430(v15);

  v12 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_21BCC797C()
{
  result = qword_27CDB9528;
  if (!qword_27CDB9528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9530, &qword_21BE3F9F0);
    sub_21BB3B038(&qword_27CDB9538, &qword_27CDB9540, &qword_21BE3F9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9528);
  }

  return result;
}

uint64_t sub_21BCC7A9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCC676C(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_21BCC7BC0()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  return v2;
}

uint64_t sub_21BCC7C18()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  return v2;
}

uint64_t sub_21BCC7C74()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t NavigationControllerLink.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v23[0] = *v1;
  v23[1] = v3;
  v24[0] = v1[2];
  *(v24 + 9) = *(v1 + 41);
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v5;
  v6 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = v1[2];
  *(v4 + 73) = *(v1 + 41);
  (*(*(a1 - 8) + 16))(&v19, v23, a1);
  v7 = sub_21BE2846C();
  v8 = sub_21BE2721C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21BCC83F4();
  v19 = v7;
  v20 = v8;
  v21 = WitnessTable;
  v22 = v10;
  swift_getOpaqueTypeMetadata2();
  v19 = v7;
  v20 = v8;
  v21 = WitnessTable;
  v22 = v10;
  swift_getOpaqueTypeConformance2();
  v15 = sub_21BD614C8();
  v16 = v11;
  v17 = v12;
  v18 = v13;
  type metadata accessor for NavigationControllerReader();
  swift_getWitnessTable();
  sub_21BD37338(&v15);

  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18 = v22;
  sub_21BD37338(&v15);
}

uint64_t sub_21BCC7FE8@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a1;
  v43 = a5;
  v8 = sub_21BE2721C();
  v36 = v8;
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE2846C();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  v34 = sub_21BCC83F4();
  v47 = v11;
  v48 = v8;
  v49 = WitnessTable;
  v50 = v34;
  v38 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v39 + 64);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = a2[1];
  *(v23 + 32) = *a2;
  *(v23 + 48) = v24;
  *(v23 + 64) = a2[2];
  *(v23 + 73) = *(a2 + 41);
  v25 = v37;
  *(v23 + 96) = v37;
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v26 = type metadata accessor for NavigationControllerLink();
  (*(*(v26 - 8) + 16))(&v47, a2, v26);
  v27 = v25;
  sub_21BE2843C();
  v28 = v40;
  sub_21BE2720C();
  v29 = v36;
  v30 = v35;
  v31 = v34;
  sub_21BE27ECC();
  (*(v42 + 8))(v28, v29);
  (*(v41 + 8))(v14, v11);
  v47 = v11;
  v48 = v29;
  v49 = v30;
  v50 = v31;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338(v20);
  v32 = *(v39 + 8);
  v32(v20, OpaqueTypeMetadata2);
  sub_21BD37338(v22);
  return (v32)(v22, OpaqueTypeMetadata2);
}

unint64_t sub_21BCC83F4()
{
  result = qword_27CDBC430;
  if (!qword_27CDBC430)
  {
    sub_21BE2721C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC430);
  }

  return result;
}

uint64_t sub_21BCC8490(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  v21[2] = *a1;
  v21[3] = v8;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  v9 = type metadata accessor for NavigationControllerLink();
  sub_21BCC7C74();
  v10 = a1[1];
  v20[4] = *a1;
  v20[5] = v10;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v11 = sub_21BCC7C18();
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a2;
  v17 = a1[1];
  *(v16 + 40) = *a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = a1[2];
  *(v16 + 81) = *(a1 + 41);
  v18 = a2;
  (*(*(v9 - 8) + 16))(v20, a1, v9);
  sub_21BC57A64(v11, v13, v15 & 1, &unk_21BE3FBF8, v16);
}

uint64_t sub_21BCC8608(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21BCC86A0, v4, v3);
}

uint64_t sub_21BCC86A0()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = *v2;
    v4 = v2[1];
    v5 = v1;
    v11 = (v3 + *v3);
    v6 = v3[1];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_21BCC87E8;

    return v11(v5);
  }

  else
  {
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21BCC87E8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_21BCC8990;
  }

  else
  {
    v7 = sub_21BCC8924;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BCC8924()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BCC8990()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_21BCC89FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16[-v9];
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  v13 = *(v8 + 40);
  v16[16] = *(v8 + 32) & 1;
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v12(v16[15]);
  sub_21BD37338(v7);
  v14 = *(v3 + 8);
  v14(v7, a2);
  sub_21BD37338(v10);
  return (v14)(v10, a2);
}

uint64_t sub_21BCC8B7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BCC8BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCC8608(v4, (v0 + 5));
}

uint64_t Link.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21BE283EC();
  *(a5 + 32) = v12;
  *(a5 + 40) = v13;
  type metadata accessor for NavigationManager();
  sub_21BC16738();
  result = sub_21BE26E9C();
  *(a5 + 48) = result;
  *(a5 + 56) = v11 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  return result;
}

uint64_t sub_21BCC8D78()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t Link.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = a1 + 3;
  v22[0] = a1 + 5;
  v5 = a1[2];
  v6 = a1[4];
  v7 = sub_21BE2846C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v15 = v2[1];
  v27[0] = *v2;
  v27[1] = v15;
  v28[0] = v2[2];
  *(v28 + 9) = *(v2 + 41);
  v16 = swift_allocObject();
  *&v17 = v5;
  *(&v17 + 1) = *v4;
  *&v18 = v6;
  *(&v18 + 1) = *v22[0];
  v16[1] = v17;
  v16[2] = v18;
  v19 = v2[1];
  v16[3] = *v2;
  v16[4] = v19;
  v16[5] = v2[2];
  *(v16 + 89) = *(v2 + 41);
  v24 = v18;
  v23 = v17;
  v25 = v27;
  (*(*(a1 - 1) + 16))(v26, v27, a1);
  sub_21BE2843C();
  swift_getWitnessTable();
  sub_21BD37338(v12);
  v20 = *(v8 + 8);
  v20(v12, v7);
  sub_21BD37338(v14);
  return (v20)(v14, v7);
}

uint64_t sub_21BCC9124(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a1;
  v13 = a1[1];
  *v14 = a1[2];
  *&v14[9] = *(a1 + 41);
  type metadata accessor for Link();
  sub_21BCC8D78();
  v8 = sub_21BCC7C18();
  sub_21BC56624(v8, v10, v9 & 1, *a1, *(a1 + 1), a3, a5);
}

uint64_t sub_21BCC91F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  v13 = *(v8 + 32);
  v14 = *(v8 + 40);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  type metadata accessor for Link();
  LOBYTE(v22) = v13 & 1;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v12(v26);
  sub_21BD37338(v7);
  v19 = *(v3 + 8);
  v19(v7, a2);
  sub_21BD37338(v10);
  return (v19)(v10, a2);
}

uint64_t sub_21BCC9384()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_21BCC91F4(v0[6], v0[2]);
}

uint64_t sub_21BCC9394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BCC93DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BCC945C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9668, &qword_21BE3FDE8) + 36);
  v8 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  *&v7[*(v8 + 24)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *v7 = 1;

  sub_21BE283EC();
  v7[8] = v14;
  *(v7 + 2) = v15;
  v9 = *(v8 + 28);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v10 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE8 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  *a3 = a1;
  a3[1] = a2;
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v11 = sub_21BE26BFC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9670, &unk_21BE3FE40);
  v13 = (a3 + *(result + 36));
  *v13 = v11;
  v13[1] = v14;
  return result;
}

uint64_t sub_21BCC969C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96F0, &qword_21BE3FF80);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v34 = sub_21BE275DC();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  *&v37 = v12;
  *(&v37 + 1) = v14;
  sub_21BB41FA4();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v33 = v18;
  v20 = v19;
  sub_21BE2869C();
  sub_21BE26F2C();
  v36 = 1;
  *&v35[5] = v37;
  *&v35[21] = v38;
  *&v35[37] = v39;
  *v9 = sub_21BE275DC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96F8, &qword_21BE3FF88) + 44)];
  sub_21BE26EEC();
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v24 = *MEMORY[0x277CDF420];
  v25 = sub_21BE26E7C();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  v26 = sub_21BE282DC();
  v27 = sub_21BE27B7C();
  v28 = &v9[*(v3 + 44)];
  *v28 = v26;
  v28[8] = v27;
  sub_21BBA3854(v9, v7, &qword_27CDB96F0, &qword_21BE3FF80);
  v29 = *&v35[16];
  *(a1 + 67) = *v35;
  *a1 = v34;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  LOBYTE(v26) = v33 & 1;
  *(a1 + 40) = v33 & 1;
  *(a1 + 48) = v20;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 257;
  *(a1 + 83) = v29;
  *(a1 + 99) = *&v35[32];
  *(a1 + 112) = *&v35[45];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9700, &qword_21BE3FFC8);
  sub_21BBA3854(v7, a1 + *(v30 + 64), &qword_27CDB96F0, &qword_21BE3FF80);
  sub_21BBA4A38(v15, v17, v26);

  sub_21BB3A4CC(v9, &qword_27CDB96F0, &qword_21BE3FF80);
  sub_21BB3A4CC(v7, &qword_27CDB96F0, &qword_21BE3FF80);
  sub_21BBC7C7C(v15, v17, v26);
}

uint64_t sub_21BCC9A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_21BE2869C();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96D0, &qword_21BE3FF60);
  return sub_21BCC9A98(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_21BCC9A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96D8, &qword_21BE3FF68);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  *v13 = sub_21BE2770C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96E0, &qword_21BE3FF70);
  sub_21BCC969C(&v13[*(v14 + 44)]);
  v15 = sub_21BE282DC();
  v16 = sub_21BE27B7C();
  v17 = &v13[*(v7 + 44)];
  *v17 = v15;
  v17[8] = v16;

  v18 = sub_21BE271CC();
  LOBYTE(v15) = sub_21BE27B7C();
  sub_21BBA3854(v13, v11, &qword_27CDB96D8, &qword_21BE3FF68);
  sub_21BBA3854(v11, a3, &qword_27CDB96D8, &qword_21BE3FF68);
  v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96E8, &qword_21BE3FF78) + 48);
  *v19 = a1;
  *(v19 + 8) = a2;
  *(v19 + 16) = v18;
  *(v19 + 24) = v15;

  sub_21BB3A4CC(v13, &qword_27CDB96D8, &qword_21BE3FF68);

  return sub_21BB3A4CC(v11, &qword_27CDB96D8, &qword_21BE3FF68);
}

uint64_t sub_21BCC9C44()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96C0, &qword_21BE3FF58);
  sub_21BB3B038(&qword_27CDB96C8, &qword_27CDB96C0, &qword_21BE3FF58);
  return sub_21BE271BC();
}

uint64_t sub_21BCC9CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  sub_21BBA3854(v1 + *(v12 + 24), v11, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE26F5C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BCC9EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[1] = a2;
  v5 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96A8, &qword_21BE3FF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = *(v6 + 36);
  sub_21BCCAAEC(v3, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_21BCCAB50(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96B0, &unk_21BE3FF48);
  (*(*(v16 - 8) + 16))(v12, a1, v16);
  v27[0] = v9;
  v17 = *(v9 + 52);
  v18 = sub_21BE2934C();
  (*(*(v18 - 8) + 16))(&v12[v17], v3 + v13, v18);
  v19 = &v12[*(v9 + 56)];
  *v19 = sub_21BCCABB4;
  v19[1] = v15;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_21BE2599C();
  v24 = v23;

  v30 = v22;
  v31 = v24;
  v25 = *(v3 + 16);
  v28 = *(v3 + 8);
  v29 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v27[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB96B8, &qword_27CDB96A8, &qword_21BE3FF40);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  sub_21BE280EC();

  return sub_21BB3A4CC(v12, &qword_27CDB96A8, &qword_21BE3FF40);
}

uint64_t sub_21BCCA2F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BCCA354(uint64_t a1)
{
  v2 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_21BE2599C();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  sub_21BE26DEC();
  v14 = sub_21BE26DFC();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  sub_21BCCAAEC(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_21BCCAB50(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_21BB41FA4();
  return sub_21BE2844C();
}

uint64_t sub_21BCCA590(uint64_t a1)
{
  v2 = sub_21BE26F5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 16);
  v9[16] = *(a1 + 8);
  v10 = v7;
  v9[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  result = sub_21BE2840C();
  if (*a1 == 1)
  {
    sub_21BCC9CEC(v6);
    sub_21BE26F4C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21BCCA6B0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t type metadata accessor for HandleInviteErrorAlertViewModifier()
{
  result = qword_27CDB9678;
  if (!qword_27CDB9678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCCA818()
{
  sub_21BB403C0();
  if (v0 <= 0x3F)
  {
    sub_21BB40410();
    if (v1 <= 0x3F)
    {
      sub_21BE2934C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21BCCA8C4()
{
  result = qword_27CDB9688;
  if (!qword_27CDB9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9670, &unk_21BE3FE40);
    sub_21BCCA97C();
    sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9688);
  }

  return result;
}

unint64_t sub_21BCCA97C()
{
  result = qword_27CDB9690;
  if (!qword_27CDB9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9668, &qword_21BE3FDE8);
    sub_21BCCAA08();
    sub_21BCCAA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9690);
  }

  return result;
}

unint64_t sub_21BCCAA08()
{
  result = qword_27CDB9698;
  if (!qword_27CDB9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9698);
  }

  return result;
}

unint64_t sub_21BCCAA5C()
{
  result = qword_27CDB96A0;
  if (!qword_27CDB96A0)
  {
    type metadata accessor for HandleInviteErrorAlertViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB96A0);
  }

  return result;
}

uint64_t sub_21BCCAAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCCAB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCCABB4(uint64_t a1)
{
  v3 = *(type metadata accessor for HandleInviteErrorAlertViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BCCA2F4(a1, v4);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 16);

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = *(v1 + 28);
  v9 = sub_21BE2934C();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_21BCCAD90()
{
  v1 = *(type metadata accessor for HandleInviteErrorAlertViewModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BCCA590(v2);
}

uint64_t sub_21BCCAE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB8A28;

  return v11(a1, a2, a3);
}

uint64_t sub_21BCCAF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BCCB0A8;

  return v11(a1, a2, a3);
}

uint64_t sub_21BCCB0A8(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_21BCCB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21BBB7EB8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21BCCB2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_21BE25CDC();
    v12 = sub_21BE25D1C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_21BE25D1C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_21BB3A4CC(v9, &qword_27CDB9720, &unk_21BE39F00);
}

uint64_t sub_21BCCB434()
{
  v1 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v8 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB66B0, &qword_21BE40060);
  v9 = sub_21BE28C1C();
  v10 = [v8 initWithKeysToFetch_];

  v22[0] = 0;
  v11 = [v7 contactCountForFetchRequest:v10 error:v22];

  if (v11)
  {
    v12 = v22[0];
    v13 = [v11 integerValue];

    *(v1 + 16) = v13;
    *(v1 + 24) = 0;
  }

  else
  {
    v14 = v22[0];
    v15 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "Failed to fetch contact count", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_21BCCB6AC(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BCCB798, 0, 0);
}

uint64_t sub_21BCCB798()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
  v2 = [objc_allocWithZone(MEMORY[0x277D4BA98]) init];
  *(v0 + 16) = 0;
  v3 = [v2 currentConfigurationForUser:v1 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;
    v6 = [v3 screenTimeState];

    v7 = v6 == 1;
  }

  else
  {
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = v4;
    v12 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE261BC();
    v13 = v12;
    sub_21BC51D50(v12);

    (*(v9 + 8))(v8, v10);
    v7 = 0;
  }

  v14 = *(v0 + 56);
  **(v0 + 24) = v7;

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_21BCCB970(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BCCBA68, 0, 0);
}

uint64_t sub_21BCCBA68()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) dsid];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
    v4 = [objc_allocWithZone(MEMORY[0x277D4BA98]) init];
    *(v0 + 16) = 0;
    v5 = [v4 currentConfigurationForUser:v3 error:v0 + 16];

    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = v6;
      v8 = [v5 contactManagementState];

      v9 = 0;
      goto LABEL_9;
    }

    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 40);
    v27 = v6;
    v28 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE261BC();
    v29 = v28;
    sub_21BC51D50(v28);

    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v10 = *(v0 + 64);
    v11 = *(v0 + 32);
    sub_21BE261BC();
    v12 = v11;
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    if (v15)
    {
      v19 = *(v0 + 32);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE5BF20, v36);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v19;
      *v21 = v19;
      v23 = v19;
      _os_log_impl(&dword_21BB35000, v13, v14, "%s %@ has no dsid", v20, 0x16u);
      sub_21BB3A4CC(v21, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  v8 = 0;
  v9 = 1;
LABEL_9:
  v31 = *(v0 + 56);
  v30 = *(v0 + 64);
  v32 = *(v0 + 24);
  *v32 = v8;
  *(v32 + 8) = v9;

  v33 = *(v0 + 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33();
}

uint64_t sub_21BCCBDD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21BCCBDF0, 0, 0);
}

uint64_t sub_21BCCBDF0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_21BE25D1C();
  *v4 = v0;
  v4[1] = sub_21BC523B4;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000002DLL, 0x800000021BE5BEF0, sub_21BCCC340, v2, v5);
}

void sub_21BCCBEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_21BCCC348;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCCB2E0;
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  [v9 lastCommunicationLimitsModifcationDateForDSID:a2 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_21BCCC0C0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_21BE25D1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2)
  {
    v21 = a2;
    v16 = a2;
  }

  else
  {
    sub_21BC1E1AC(a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      (*(v9 + 16))(v13, v15, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
      sub_21BE28D2C();
      return (*(v9 + 8))(v15, v8);
    }

    sub_21BB3A4CC(v7, &qword_27CDB9720, &unk_21BE39F00);
    sub_21BCCC3D4();
    v17 = swift_allocError();
    *v18 = 0;
    v21 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
  return sub_21BE28D1C();
}

uint64_t sub_21BCCC348(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070) - 8) + 80);

  return sub_21BCCC0C0(a1, a2);
}

unint64_t sub_21BCCC3D4()
{
  result = qword_27CDB9728;
  if (!qword_27CDB9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9728);
  }

  return result;
}

uint64_t sub_21BCCC428(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCCC4F4, 0, 0);
}

uint64_t sub_21BCCC4F4()
{
  v1 = [*(v0 + 16) dsid];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE261EC();
    v5 = v4;
    v6 = swift_allocObject();
    *(v0 + 64) = v6;
    *(v6 + 16) = v2;
    v7 = *(MEMORY[0x277CE4600] + 4);
    v8 = v2;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_21BCCC700;
    v10 = MEMORY[0x277D839B0];

    return MEMORY[0x2821372C0](v0 + 88, v3, v5, &unk_21BE400A0, v6, v10);
  }

  else
  {
    v11 = *(v0 + 48);
    sub_21BE261BC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 48);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "Member has no DSID", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);

    v21 = *(v0 + 8);

    return v21(0);
  }
}

uint64_t sub_21BCCC700()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_21BCCC894;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_21BCCC81C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BCCC81C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_21BCCC894()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  sub_21BE261AC();
  v7 = v1;
  sub_21BC51D50(v1);

  (*(v5 + 8))(v4, v6);
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_21BCCC980(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BCCB6AC(a1, v4);
}

unint64_t sub_21BCCCA34()
{
  result = qword_27CDB9738;
  if (!qword_27CDB9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9738);
  }

  return result;
}

uint64_t sub_21BCCCA8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v31 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {

    if (i < 1 || ((v1 = sub_21BCD11F4(), v2 = sub_21BE2905C(), v1, v2 >> 62) ? (v3 = sub_21BE2951C()) : (v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), , i == v3))
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v6 = sub_21BE2599C();

      return v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21BE32770;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v7 = v31;
    if (v31 >> 62)
    {
      break;
    }

    v8 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_27;
    }

LABEL_10:
    v9 = 0;
    v30 = v31 & 0xC000000000000001;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v30)
      {
        v11 = MEMORY[0x21CF047C0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v31 = sub_21BE2917C();
      v14 = sub_21BE28B8C();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21BBBC990(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_21BBBC990((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      ++v9;
      if (v13 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v8 = sub_21BE2951C();
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_27:
  v20 = MEMORY[0x277D837D0];

  type metadata accessor for ConfirmChildAgeViewModel();
  v21 = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v24 = sub_21BE2897C();
  v26 = v25;

  *(v29 + 56) = v20;
  *(v29 + 64) = sub_21BBBEFE8();
  *(v29 + 32) = v24;
  *(v29 + 40) = v26;

  v27 = [v22 bundleForClass_];
  sub_21BE2599C();

  v6 = sub_21BE289DC();

  return v6;
}

uint64_t sub_21BCCCFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = *(MEMORY[0x277D093B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_21BBB7EB8;

  return MEMORY[0x28215FAD0](a1, a2, a3, a4, a5);
}

uint64_t sub_21BCCD0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = *(MEMORY[0x277D09328] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_21BBA6A64;

  return MEMORY[0x28215FA38](a1, a2, a3, a4);
}

uint64_t sub_21BCCD18C()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D09430] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBDEAC0;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_21BCCD220()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D09330] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBDE3D4;

  return MEMORY[0x28215FA40]();
}

uint64_t static LocationViewModel.shared.getter()
{
  swift_beginAccess();
  v0 = qword_27CDB9740;
  v1 = qword_27CDB9740;
  return v0;
}

void static LocationViewModel.shared.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_27CDB9740;
  qword_27CDB9740 = a1;
}

void sub_21BCCD44C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = qword_27CDB9740;
  qword_27CDB9740 = v1;
  v3 = v1;
}

uint64_t (*sub_21BCCD4F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCD59C;
}

uint64_t sub_21BCCD5A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9758, &qword_21BE401D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BCCD740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9758, &qword_21BE401D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BCCD878(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9758, &qword_21BE401D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__familyMembersSharingLocationWithMe;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCD9E8;
}

uint64_t sub_21BCCDA64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t (*sub_21BCCDACC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

void sub_21BCCDB70(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21BCCDBD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCCDC54(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9770, &unk_21BE40228);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BCCDDF4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCCDE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9770, &unk_21BE40228);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BCCDFA4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9770, &unk_21BE40228);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__sharingLocationWithFamilyMembers;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCD9C24;
}

void sub_21BCCE114(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_21BE26C8C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_21BE26C8C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_21BCCE2A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

id LocationViewModel.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_21BBA9018(0, 0, v4, &unk_21BE40240, v6);

  v8 = type metadata accessor for LocationViewModel();
  v10.receiver = v7;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_21BCCE438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BCCE458, 0, 0);
}

uint64_t sub_21BCCE458()
{
  sub_21BE28D7C();
  *(v0 + 32) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCCE4EC, v2, v1);
}

uint64_t sub_21BCCE4EC()
{
  v2 = v0[3];
  v1 = v0[4];

  v0[5] = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener);

  return MEMORY[0x2822009F8](sub_21BCCE56C, 0, 0);
}

uint64_t sub_21BCCE56C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_21BC2CC60();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCCE954(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BCCE9EC, v4, v3);
}

uint64_t sub_21BCCE9EC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BCD2AA8();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BCCEADC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21BCCEB74, v4, v3);
}

uint64_t sub_21BCCEB74()
{
  v1 = [*(v0 + 16) dsid];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_21BCCEC64;
    v4 = *(v0 + 24);

    return sub_21BCD0C44(v2);
  }

  else
  {
    v6 = *(v0 + 32);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_21BCCEC64(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_21BCCED8C, v5, v4);
}

uint64_t sub_21BCCED8C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  if (v1)
  {
    v3 = *(v0 + 72);
    if ([v3 BOOLValue])
    {
      v4 = *(*(v0 + 24) + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_screenTimeConnection);
      if (qword_27CDB4E60 != -1)
      {
        swift_once();
      }

      v5 = sub_21BE289CC();
      v6 = [v4 isRestrictedForFeature_];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + 56);
    v8 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v6;
    v9 = v8;
    sub_21BE26CBC();
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BCCEEEC()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BCD4000();
}

uint64_t sub_21BCCEF98()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21BCCF08C, v6, v5);
}

uint64_t sub_21BCCF08C()
{
  v14 = v0;
  v1 = v0[5];
  sub_21BE2616C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000016, 0x800000021BE5C000, &v13);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Some location sharing change event has occurred", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_21BCCF224;
  v11 = v0[2];

  return sub_21BCD31DC();
}

uint64_t sub_21BCCF224()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_21BCCF364;
  v5 = *(v1 + 16);

  return sub_21BCD4000();
}

uint64_t sub_21BCCF364()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBCCE5C, v4, v3);
}

uint64_t sub_21BCCF484(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_21BE26A4C();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = sub_21BE28D7C();
  v2[25] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x2822009F8](sub_21BCCF594, v7, v6);
}

uint64_t sub_21BCCF594()
{
  v34 = v0;
  if ([*(v0 + 136) memberType] && (v1 = objc_msgSend(*(v0 + 136), sel_dsid), (*(v0 + 224) = v1) != 0))
  {
    v2 = *(v0 + 192);
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = sub_21BE26C9C();
    v7 = v6;
    v8 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v7;
    *v7 = 0x8000000000000000;
    sub_21BC7FDF0(1, v4, isUniquelyReferenced_nonNull_native);
    v10 = *v7;
    *v7 = v33;

    v5(v0 + 16, 0);

    *(v0 + 232) = sub_21BE28D6C();
    v12 = sub_21BE28D0C();
    *(v0 + 240) = v12;
    *(v0 + 248) = v11;

    return MEMORY[0x2822009F8](sub_21BCCF8CC, v12, v11);
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 168);
    v15 = *(v0 + 136);

    sub_21BE2616C();
    v16 = v15;
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FCC();

    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (v19)
    {
      v23 = *(v0 + 136);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C450, &v33);
      *(v24 + 12) = 2112;
      *(v24 + 14) = v23;
      *v25 = v23;
      v27 = v23;
      _os_log_impl(&dword_21BB35000, v17, v18, "%s %@ not a child", v24, 0x16u);
      sub_21BB3A4CC(v25, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_21BCCF8CC()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[18];
  v4 = sub_21BE28D6C();
  v0[32] = v4;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[34] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9800, &qword_21BE40580);
  *v7 = v0;
  v7[1] = sub_21BCCF9F4;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 13, v4, v9, 0xD000000000000029, 0x800000021BE5C480, sub_21BCD70A8, v5, v8);
}

uint64_t sub_21BCCF9F4()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v8 = *v0;

  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_21BCCFB54, v6, v5);
}

uint64_t sub_21BCCFB54()
{
  v1 = *(v0 + 232);

  *(v0 + 280) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21BCCFBC8, v2, v3);
}

uint64_t sub_21BCCFBC8()
{
  v68 = v0;
  v1 = *(v0 + 113);
  v2 = *(v0 + 200);

  if (v1)
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 176);
    v5 = *(v0 + 136);
    sub_21BE2616C();
    v6 = v5;
    sub_21BCD70B0(v3, 1);
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();
    sub_21BCD70BC(v3, 1);

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 280);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    if (v9)
    {
      v63 = *(v0 + 280);
      v65 = *(v0 + 224);
      v14 = *(v0 + 136);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67 = v62;
      *v15 = 136315650;
      *(v15 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C450, &v67);
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v17 = v11;
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 96);
      v21 = sub_21BE29A5C();
      v61 = v12;
      v23 = sub_21BB3D81C(v21, v22, &v67);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2112;
      *(v15 + 24) = v14;
      *v16 = v14;
      v24 = v14;
      _os_log_impl(&dword_21BB35000, v7, v8, "%s unable to add child can modify %s for %@", v15, 0x20u);
      sub_21BB3A4CC(v16, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v62, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);

      sub_21BCD70BC(v63, 1);
      (*(v13 + 8))(v17, v61);
      goto LABEL_15;
    }

    sub_21BCD70BC(v10, 1);
    v52 = *(v13 + 8);
    v53 = v11;
    goto LABEL_14;
  }

  v25 = *(v0 + 280);
  v26 = *(v0 + 144);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v27 = *(v0 + 128);
  if (*(v27 + 16) && (v28 = sub_21BBB31A4(*(v0 + 136)), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + v28);

    if (v30 == (v25 & 1))
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = sub_21BE26C9C();
  v35 = v34;
  v36 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v35;
  *v35 = 0x8000000000000000;
  sub_21BC7FDF0(v25 & 1, v32, isUniquelyReferenced_nonNull_native);
  v38 = *v35;
  *v35 = v67;

  v33(v0 + 48, 0);

LABEL_10:
  v39 = *(v0 + 184);
  v40 = *(v0 + 136);
  sub_21BE2616C();
  v41 = v40;
  v42 = sub_21BE26A2C();
  v43 = sub_21BE28FCC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 280);
    v45 = *(v0 + 224);
    v46 = *(v0 + 160);
    v64 = *(v0 + 152);
    v66 = *(v0 + 184);
    v47 = *(v0 + 136);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v67 = v50;
    *v48 = 136315650;
    *(v48 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C450, &v67);
    *(v48 + 12) = 2112;
    *(v48 + 14) = v47;
    *v49 = v47;
    *(v48 + 22) = 1024;
    *(v48 + 24) = v44 & 1;
    v51 = v47;
    _os_log_impl(&dword_21BB35000, v42, v43, "%s %@ isLocationModificationAllowed: %{BOOL}d", v48, 0x1Cu);
    sub_21BB3A4CC(v49, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x21CF05C50](v50, -1, -1);
    MEMORY[0x21CF05C50](v48, -1, -1);

    (*(v46 + 8))(v66, v64);
    goto LABEL_15;
  }

  v54 = *(v0 + 184);
  v12 = *(v0 + 152);
  v55 = *(v0 + 160);

  v52 = *(v55 + 8);
  v53 = v54;
LABEL_14:
  v52(v53, v12);
LABEL_15:
  v57 = *(v0 + 176);
  v56 = *(v0 + 184);
  v58 = *(v0 + 168);

  v59 = *(v0 + 8);

  return v59();
}

void sub_21BCD0138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &aBlock - v13;
  v15 = [objc_allocWithZone(FALocationSharingModificationClient) init];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
    (*(v11 + 16))(v14, a1, v10);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    (*(v11 + 32))(v19 + v18, v14, v10);
    v29 = sub_21BCD70C8;
    v30 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21BD197D4;
    v28 = &block_descriptor_107;
    v20 = _Block_copy(&aBlock);

    [v16 isLocationSharingModificationAllowedForUserID:v17 completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    sub_21BE2616C();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000029, 0x800000021BE5C480, &aBlock);
      _os_log_impl(&dword_21BB35000, v21, v22, "%s no location sharing client found", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    aBlock = MEMORY[0x21CF01210](0xD00000000000003CLL, 0x800000021BE5C4B0, 0xD000000000000010, 0x800000021BE573A0, 500);
    LOBYTE(v26) = 1;
    sub_21BE28D2C();
  }
}

uint64_t sub_21BCD04F0(char a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2616C();
  if (a2)
  {
    sub_21BC51D50(a2);
    (*(v5 + 8))(v8, v4);
    v15 = a2;
    v16 = 1;
    v9 = a2;
  }

  else
  {
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21BB3D81C(0xD000000000000043, 0x800000021BE5C540, &v15);
      _os_log_impl(&dword_21BB35000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v15 = (a1 & 1);
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  return sub_21BE28D2C();
}

uint64_t sub_21BCD0724(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_21BCD0818, v7, v6);
}

uint64_t sub_21BCD0818()
{
  v19 = v0;
  v1 = [*(v0 + 16) dsid];
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_21BCD0A20;
    v4 = *(v0 + 24);

    return sub_21BCD0C44(v2);
  }

  else
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_21BE2616C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FDC();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5C430, &v18);
      _os_log_impl(&dword_21BB35000, v8, v9, "%s No DSID ", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v16 = *(v0 + 48);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_21BCD0A20(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_21BCD0B48, v5, v4);
}

uint64_t sub_21BCD0B48()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  if (v1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 80);
    v5 = *(v0 + 24);
    v6 = [v3 BOOLValue];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = v6;
    v7 = v5;
    sub_21BE26CBC();
  }

  else
  {
  }

  v8 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BCD0C44(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_21BE26A4C();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  sub_21BE28D7C();
  v2[28] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x2822009F8](sub_21BCD0D38, v7, v6);
}

uint64_t sub_21BCD0D38()
{
  v1 = v0[23];
  v2 = *(v0[24] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_screenTimeConnection);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BCD0E6C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_127;
  v0[14] = v3;
  [v2 isContentPrivacyEnabledForDSID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCD0E6C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_21BCD100C;
  }

  else
  {
    v6 = sub_21BCD0F9C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCD0F9C()
{
  v1 = v0[28];

  v2 = v0[21];
  v3 = v0[27];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_21BCD100C()
{
  v26 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);

  swift_willThrow();
  sub_21BE2614C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 208);
    v24 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = sub_21BE29A5C();
    v17 = sub_21BB3D81C(v15, v16, &v25);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_21BB35000, v5, v6, "Unable to get content and privacy restriction settings %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v8 + 8))(v24, v9);
  }

  else
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22(0);
}

id sub_21BCD11F4()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore + 24];
  v7 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore], v6);
  result = (*(v7 + 8))(v6, v7);
  if (!result)
  {
    sub_21BE2614C();
    v9 = v0;
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_21BB35000, v10, v11, "%{public}@ tried to access familyCircle before loading it. Retuning empty circle", v12, 0xCu);
      sub_21BB3A4CC(v13, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BCD13E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [v10 appleID];
  if (v11)
  {
    v12 = v11;
    sub_21BE28A0C();

    sub_21BCD716C(MEMORY[0x277D84F90]);
    sub_21BE265BC();
    v13 = sub_21BE265CC();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }

  else
  {
    sub_21BE2616C();
    v15 = v10;
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[1] = v2;
      v20 = v19;
      v24[0] = swift_slowAlloc();
      v25 = v24[0];
      *v18 = 136315394;
      *(v18 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE5C640, &v25);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v20 = v15;
      v21 = v15;
      _os_log_impl(&dword_21BB35000, v16, v17, "%s, trying to share location but destination member has no appleID %@", v18, 0x16u);
      sub_21BB3A4CC(v20, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v20, -1, -1);
      v22 = v24[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v24[0]);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v23 = sub_21BE265CC();
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }
}

uint64_t sub_21BCD16E0()
{
  v1[2] = v0;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BCD1778, v3, v2);
}

uint64_t sub_21BCD1778()
{
  v1 = v0[2];
  v2 = sub_21BCD11F4();
  v3 = sub_21BE290AC();
  v0[6] = v3;

  if (v3 >> 62)
  {
    result = sub_21BE2951C();
    v0[7] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[8] = 0;
        v5 = v0[6];
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CF047C0](0);
        }

        else
        {
          v6 = *(v5 + 32);
        }

        v7 = v6;
        v0[9] = v6;
        v8 = swift_task_alloc();
        v0[10] = v8;
        *v8 = v0;
        v8[1] = sub_21BCD18DC;
        v9 = v0[2];

        return sub_21BCCF484(v7);
      }

      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v10 = v0[6];
  v11 = v0[3];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BCD18DC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BCD19FC, v4, v3);
}

uint64_t sub_21BCD19FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 64) + 1;
    *(v0 + 64) = v7;
    v8 = *(v0 + 48);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CF047C0]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v10 = v9;
    *(v0 + 72) = v9;
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = sub_21BCD18DC;
    v12 = *(v0 + 16);

    return sub_21BCCF484(v10);
  }
}

uint64_t sub_21BCD1B24(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_21BE26A4C();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_21BE28D7C();
  v2[28] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x2822009F8](sub_21BCD1C48, v7, v6);
}

uint64_t sub_21BCD1C48()
{
  v66 = v0;
  v1 = v0[20];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v0[18];
  if (*(v2 + 16) && (v3 = sub_21BBB31A4(v0[19]), (v4 & 1) != 0))
  {
    v5 = v0[19];
    v6 = *(*(v2 + 56) + v3);

    v7 = [v5 dsid];
    v0[31] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(FALocationSharingModificationClient) init];
      v0[32] = v9;
      if (v9)
      {
        v10 = v9;
        v11 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
        v0[33] = v11;
        v0[2] = v0;
        v0[3] = sub_21BCD23A0;
        v12 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_21BCF8794;
        v0[13] = &block_descriptor_91;
        v0[14] = v12;
        [v10 setLocationSharingModificationAllowed:v6 ^ 1u forUserID:v11 completionHandler:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      v44 = v0[28];
      v45 = v0[26];

      sub_21BE2616C();
      v46 = sub_21BE26A2C();
      v47 = sub_21BE28FDC();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[26];
      v50 = v0[21];
      v51 = v0[22];
      if (v48)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v65[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, v65);
        _os_log_impl(&dword_21BB35000, v46, v47, "%s no location sharing client found", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x21CF05C50](v53, -1, -1);
        MEMORY[0x21CF05C50](v52, -1, -1);

        (*(v51 + 8))(v49, v50);
      }

      else
      {

        (*(v51 + 8))(v49, v50);
      }

      v54 = MEMORY[0x21CF01210](0xD000000000000044, 0x800000021BE5C380, 0xD000000000000010, 0x800000021BE573A0, 500);
      swift_willThrow();
      v55 = v0[31];
      v57 = v0[22];
      v56 = v0[23];
      v58 = v0[21];
      sub_21BE2616C();
      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      v59 = v54;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0xD000000000000031, 0x800000021BE5C340);
      MEMORY[0x21CF03CA0](0xD00000000000003BLL, 0x800000021BE5C3D0);
      v60 = [v55 description];
      v61 = sub_21BE28A0C();
      v63 = v62;

      MEMORY[0x21CF03CA0](v61, v63);

      MEMORY[0x21CF03CA0](4203808, 0xE300000000000000);
      sub_21BC51D50(v54);

      (*(v57 + 8))(v56, v58);
    }

    else
    {
      v34 = v0[28];
      v35 = v0[25];

      sub_21BE2616C();
      v36 = sub_21BE26A2C();
      v37 = sub_21BE28FDC();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[25];
      v40 = v0[21];
      v41 = v0[22];
      if (v38)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, v65);
        _os_log_impl(&dword_21BB35000, v36, v37, "%s No DSID ", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x21CF05C50](v43, -1, -1);
        MEMORY[0x21CF05C50](v42, -1, -1);
      }

      (*(v41 + 8))(v39, v40);
    }
  }

  else
  {
    v13 = v0[28];
    v14 = v0[24];
    v15 = v0[19];

    sub_21BE2616C();
    v16 = v15;
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FFC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[24];
    v21 = v0[21];
    v22 = v0[22];
    if (v19)
    {
      v23 = v0[19];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v65[0] = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, v65);
      *(v24 + 12) = 2112;
      *(v24 + 14) = v23;
      *v25 = v23;
      v27 = v23;
      _os_log_impl(&dword_21BB35000, v17, v18, "%s %@ has no locationStatus in map", v24, 0x16u);
      sub_21BB3A4CC(v25, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
  }

  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[24];
  v30 = v0[25];
  v32 = v0[23];

  v33 = v0[1];

  return v33();
}

uint64_t sub_21BCD23A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_21BCD28C0;
  }

  else
  {
    v6 = sub_21BCD24D0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCD24D0()
{
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_21BCD2564;
  v2 = v0[19];
  v3 = v0[20];

  return sub_21BCCF484(v2);
}

uint64_t sub_21BCD2564()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_21BCD2684, v4, v3);
}

uint64_t sub_21BCD2684()
{
  v30 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[19];

  sub_21BE2616C();
  v4 = v3;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v11 = v0[27];
  v12 = v0[21];
  v13 = v0[22];
  if (v7)
  {
    v14 = v0[19];
    v28 = v0[27];
    v15 = swift_slowAlloc();
    v26 = v9;
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, &v29);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v14;
    v18 = v14;
    _os_log_impl(&dword_21BB35000, v5, v6, "%s %@ toggle completed", v15, 0x16u);
    sub_21BB3A4CC(v16, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);

    (*(v13 + 8))(v28, v27);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v20 = v0[26];
  v19 = v0[27];
  v22 = v0[24];
  v21 = v0[25];
  v23 = v0[23];

  v24 = v0[1];

  return v24();
}

uint64_t sub_21BCD28C0()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[28];

  swift_willThrow();

  v5 = v0[34];
  v6 = v0[31];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  sub_21BE2616C();
  v10 = v5;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000031, 0x800000021BE5C340);
  MEMORY[0x21CF03CA0](0xD00000000000003BLL, 0x800000021BE5C3D0);
  v11 = [v6 description];
  v12 = sub_21BE28A0C();
  v14 = v13;

  MEMORY[0x21CF03CA0](v12, v14);

  MEMORY[0x21CF03CA0](4203808, 0xE300000000000000);
  sub_21BC51D50(v5);

  (*(v8 + 8))(v7, v9);
  v16 = v0[26];
  v15 = v0[27];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21BCD2AA8()
{
  v1[4] = v0;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_21BCD2BB4;

  return sub_21BCD4000();
}

uint64_t sub_21BCD2BB4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v3;
  v4[1] = sub_21BCD2CF4;
  v5 = *(v1 + 32);

  return sub_21BCD31DC();
}

uint64_t sub_21BCD2CF4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_21BCD2E34;
  v5 = *(v1 + 32);

  return sub_21BCD16E0();
}

uint64_t sub_21BCD2E34()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCD2F70, v5, v4);
}

uint64_t sub_21BCD2F70()
{
  v1 = v0[9];
  v2 = v0[4];

  __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore), *(v2 + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore + 24));
  v3 = off_282D8FF00;
  type metadata accessor for ServicesStore();
  v4 = v3(0xD000000000000011, 0x800000021BE57B00);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 subscriberDSIDs];
    if (v6)
    {
      v7 = v6;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v8 = sub_21BE28C3C();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v18 = v0[4];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[3] = v8;
    v19 = v18;
    sub_21BE26CBC();
  }

  else
  {
    v9 = v0[7];
    sub_21BE2616C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Can't get location service in loadAllData, clearing data!", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v14 = v0[6];
    v13 = v0[7];
    v16 = v0[4];
    v15 = v0[5];

    (*(v14 + 8))(v13, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    v0[2] = MEMORY[0x277D84F90];
    v17 = v16;
    sub_21BE26CBC();
  }

  v20 = v0[7];
  *(v0[4] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled) = 1;

  v21 = v0[1];

  return v21();
}

uint64_t sub_21BCD31DC()
{
  v1[19] = v0;
  v2 = sub_21BE26A4C();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_21BE265CC();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = sub_21BE2658C();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  sub_21BE28D7C();
  v1[30] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v1[31] = v12;
  v1[32] = v11;

  return MEMORY[0x2822009F8](sub_21BCD3394, v12, v11);
}

uint64_t sub_21BCD3394()
{
  v1 = (*(v0 + 152) + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = sub_21BCD34C4;

  return v8(v2, v3);
}

uint64_t sub_21BCD34C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 256);
  v8 = *(v3 + 248);
  if (v1)
  {
    v9 = sub_21BCD3DE0;
  }

  else
  {
    v9 = sub_21BCD3608;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BCD3608()
{
  v99 = v0;
  v1 = v0[34];
  v2 = v0[30];

  v90 = v1;
  v91 = v0;
  v94 = *(v1 + 16);
  if (v94)
  {
    v3 = v0[19];
    v4 = sub_21BCD11F4();
    v5 = sub_21BE2905C();

    if (v5 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
    {
      v7 = 0;
      v89 = v0 + 16;
      v84 = v5 & 0xC000000000000001;
      v80 = v5 & 0xFFFFFFFFFFFFFF8;
      v81 = v0 + 12;
      v79 = v5 + 32;
      v87 = (v0[25] + 8);
      v88 = v0[28];
      v8 = v0[35];
      v82 = v5;
      v83 = i;
      while (1)
      {
        if (v84)
        {
          v18 = MEMORY[0x21CF047C0](v7, v5);
        }

        else
        {
          if (v7 >= *(v80 + 16))
          {
            goto LABEL_43;
          }

          v18 = *(v79 + 8 * v7);
        }

        v19 = v18;
        v20 = __OFADD__(v7, 1);
        v21 = v7 + 1;
        if (v20)
        {
          goto LABEL_40;
        }

        v85 = v21;
        v22 = v0[19];
        swift_getKeyPath();
        swift_getKeyPath();
        v23 = v19;
        v24 = sub_21BE26C9C();
        v26 = v25;
        v27 = *v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98[0] = *v26;
        v29 = v98[0];
        *v26 = 0x8000000000000000;
        v86 = v23;
        v30 = sub_21BBB31A4(v23);
        v32 = *(v29 + 16);
        v33 = (v31 & 1) == 0;
        v20 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v20)
        {
          break;
        }

        v35 = v31;
        if (*(v29 + 24) >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v60 = v30;
            sub_21BC815D4();
            v30 = v60;
            v0 = v91;
          }

          v17 = v86;
          v37 = v98[0];
          if (v35)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_21BC7D26C(v34, isUniquelyReferenced_nonNull_native);
          v17 = v86;
          v30 = sub_21BBB31A4(v86);
          if ((v35 & 1) != (v36 & 1))
          {
            sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

            return sub_21BE299FC();
          }

          v37 = v98[0];
          if (v35)
          {
LABEL_18:
            *(v37[7] + v30) = 0;

            goto LABEL_24;
          }
        }

        v37[(v30 >> 6) + 8] |= 1 << v30;
        *(v37[6] + 8 * v30) = v17;
        *(v37[7] + v30) = 0;
        v38 = v37[2];
        v20 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v20)
        {
          goto LABEL_42;
        }

        v37[2] = v39;
LABEL_24:
        v40 = *v26;
        *v26 = v37;

        v24();

        v41 = [v17 appleID];
        if (v41)
        {
          v42 = v41;
          v92 = sub_21BE28A0C();
          v95 = v43;

          v44 = 0;
          do
          {
            v93 = v44;
            if (v94 == v44)
            {
              break;
            }

            if (v44 >= *(v90 + 16))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v45 = v0[29];
            v46 = v0[26];
            v97 = v0[27];
            v47 = v0[24];
            (*(v88 + 16))(v45, v0[34] + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v44);
            v96 = v44 + 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21BE32770;
            sub_21BE2657C();
            v49 = sub_21BE2659C();
            v51 = v50;
            v5 = v87;
            v52 = *v87;
            (*v87)(v46, v47);
            *(inited + 32) = v49;
            *(inited + 40) = v51;
            sub_21BE2657C();
            v53 = sub_21BE265AC();
            v52(v46, v47);
            v0 = v91;
            v98[0] = inited;
            sub_21BDE57E8(v53);
            v91[16] = v92;
            v91[17] = v95;
            v54 = swift_task_alloc();
            *(v54 + 16) = v89;
            LOBYTE(v47) = sub_21BC9BF08(sub_21BC69628, v54, inited);

            (*(v88 + 8))(v45, v97);
            v44 = v96;
          }

          while ((v47 & 1) == 0);
          v55 = v0[19];

          swift_getKeyPath();
          swift_getKeyPath();
          sub_21BE26CAC();

          v56 = v0[18];
          v17 = v86;
          if (*(v56 + 16) && (v57 = sub_21BBB31A4(v86), (v58 & 1) != 0))
          {
            v59 = *(*(v56 + 56) + v57);

            v0 = v91;
            if ((((v94 != v93) ^ v59) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
          }

          v9 = v0[19];
          swift_getKeyPath();
          swift_getKeyPath();
          v10 = v86;
          v11 = sub_21BE26C9C();
          v13 = v12;
          v14 = *v12;
          v15 = swift_isUniquelyReferenced_nonNull_native();
          v98[0] = *v13;
          *v13 = 0x8000000000000000;
          sub_21BC7FDF0(v94 != v93, v10, v15);

          v16 = *v13;
          *v13 = v98[0];

          v11(v81, 0);
          v17 = v86;

LABEL_7:
          v5 = v82;
        }

        v7 = v85;

        if (v85 == v83)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_45:
    v73 = v0[34];
  }

  else
  {
    v61 = v0[34];
    v62 = v0[23];

    sub_21BE2616C();
    v63 = sub_21BE26A2C();
    v64 = sub_21BE28FCC();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v0[23];
    v67 = v0;
    v68 = v0[21];
    v69 = v67[20];
    if (v65)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v98[0] = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C5C0, v98);
      _os_log_impl(&dword_21BB35000, v63, v64, "%s No one shares with me", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x21CF05C50](v71, -1, -1);
      MEMORY[0x21CF05C50](v70, -1, -1);
    }

    (*(v68 + 8))(v66, v69);
    v0 = v91;
  }

  v74 = v0[29];
  v75 = v0[26];
  v77 = v0[22];
  v76 = v0[23];

  v78 = v0[1];

  return v78();
}

uint64_t sub_21BCD3DE0()
{
  v24 = v0;
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[22];

  sub_21BE2616C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[35];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C5C0, &v23);
    *(v12 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_21BB35000, v5, v6, "%s Error getting friends sharing with me: %@", v12, 0x16u);
    sub_21BB3A4CC(v13, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v17 = v0[29];
  v18 = v0[26];
  v20 = v0[22];
  v19 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_21BCD4000()
{
  v1[11] = v0;
  v2 = sub_21BE26A4C();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_21BE265CC();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = sub_21BE2658C();
  v1[18] = v8;
  v9 = *(v8 - 8);
  v1[19] = v9;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  sub_21BE28D7C();
  v1[21] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v1[22] = v12;
  v1[23] = v11;

  return MEMORY[0x2822009F8](sub_21BCD41AC, v12, v11);
}

uint64_t sub_21BCD41AC()
{
  v1 = (*(v0 + 88) + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_21BCD42DC;

  return v8(v2, v3);
}

uint64_t sub_21BCD42DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 184);
  v8 = *(v3 + 176);
  if (v1)
  {
    v9 = sub_21BCD48B0;
  }

  else
  {
    v9 = sub_21BCD4420;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BCD4420()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  v3 = sub_21BCD11F4();
  v4 = [v3 members];

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v5 = sub_21BE28C3C();

  v54 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v38 = v5;
    v5 += 32;
    v45 = (v46[16] + 8);
    v53 = v46[19];
    v10 = v46[26];
    v48 = v46[25];
    v11 = &selRef_fa_URLByAddingAirdropInviteParams;
    v41 = v8;
    v42 = i;
    v39 = v5;
    v40 = v9;
    while (1)
    {
      if (v8)
      {
        v12 = MEMORY[0x21CF047C0](v7, v38);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_23;
        }

        v12 = *(v5 + 8 * v7);
      }

      v13 = v12;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      if (([v12 v11[268]] & 1) == 0)
      {
        v15 = [v13 appleID];
        if (v15)
        {
          v43 = v13;
          v44 = v7;
          v5 = v15;
          v47 = sub_21BE28A0C();
          v50 = v16;

          v17 = 0;
          v49 = *(v48 + 16);
          while (v49 != v17)
          {
            if (v17 >= *(v48 + 16))
            {
              __break(1u);
              goto LABEL_22;
            }

            v18 = v46[20];
            v19 = v46[17];
            v52 = v46[18];
            v20 = v46[15];
            (*(v53 + 16))(v18, v46[25] + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v17++);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21BE32770;
            sub_21BE2657C();
            v22 = sub_21BE2659C();
            v24 = v23;
            v51 = v10;
            v25 = *v45;
            (*v45)(v19, v20);
            *(inited + 32) = v22;
            *(inited + 40) = v24;
            sub_21BE2657C();
            v26 = sub_21BE265AC();
            v25(v19, v20);
            sub_21BDE57E8(v26);
            v5 = inited;
            v46[8] = v47;
            v46[9] = v50;
            v27 = swift_task_alloc();
            *(v27 + 16) = v46 + 8;
            LOBYTE(inited) = sub_21BC9BF08(sub_21BBF0CC4, v27, inited);
            v10 = v51;

            (*(v53 + 8))(v18, v52);
            if (inited)
            {

              sub_21BE296BC();
              v28 = *(v54 + 16);
              sub_21BE296EC();
              sub_21BE296FC();
              sub_21BE296CC();
              goto LABEL_17;
            }
          }

LABEL_17:
          v8 = v41;
          i = v42;
          v7 = v44;
          v5 = v39;
          v9 = v40;
          v11 = &selRef_fa_URLByAddingAirdropInviteParams;
          if (v44 != v42)
          {
            continue;
          }

LABEL_20:
          v29 = v54;
          goto LABEL_26;
        }
      }

      if (v7 == i)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_26:
  v30 = v46[25];
  v31 = v46[11];

  swift_getKeyPath();
  swift_getKeyPath();
  v46[10] = v29;
  v32 = v31;
  sub_21BE26CBC();
  v33 = v46[20];
  v34 = v46[17];
  v35 = v46[14];

  v36 = v46[1];

  return v36();
}

uint64_t sub_21BCD48B0()
{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[14];

  sub_21BE2614C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_21BB3D81C(0xD000000000000026, 0x800000021BE5C590, &v22);
    *(v12 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_21BB35000, v5, v6, "%s Error getting friends I'm sharing with: %@", v12, 0x16u);
    sub_21BB3A4CC(v13, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[14];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21BCD4AC8(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 361) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v5 = sub_21BE26A4C();
  *(v3 + 240) = v5;
  v6 = *(v5 - 8);
  *(v3 + 248) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = sub_21BE28D7C();
  *(v3 + 296) = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  *(v3 + 304) = v9;
  *(v3 + 312) = v8;

  return MEMORY[0x2822009F8](sub_21BCD4C20, v9, v8);
}

uint64_t sub_21BCD4C20()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 361);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF8, &unk_21BE40470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v5 = *MEMORY[0x277D081F0];
  *(inited + 32) = *MEMORY[0x277D081F0];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = v3;
  v6 = v5;
  sub_21BBB6848(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB58A0, &qword_21BE32998);
  v7 = objc_allocWithZone(MEMORY[0x277D08350]);
  type metadata accessor for FAUpdateMemberFlagKey(0);
  sub_21BC54630();
  v8 = sub_21BE288EC();

  v9 = [v7 initWithFamilyMemberDSID:v1 flags:v8];
  *(v0 + 320) = v9;

  v10 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled;
  *(v0 + 328) = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled;
  *(v2 + v10) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 360;
  *(v0 + 24) = sub_21BCD4E4C;
  v11 = swift_continuation_init();
  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
  *(v0 + 152) = MEMORY[0x277D85DD0];
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_21BD63750;
  *(v0 + 176) = &block_descriptor_27;
  *(v0 + 184) = v11;
  [v9 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BCD4E4C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 304);
  if (v3)
  {
    v6 = sub_21BCD57E0;
  }

  else
  {
    v6 = sub_21BCD4F7C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCD4F7C()
{
  v38 = v0;
  if (*(v0 + 360))
  {
    v1 = *(v0 + 280);
    sub_21BE2616C();
    v2 = sub_21BE26A2C();
    v3 = sub_21BE28FCC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 280);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, v37);
      _os_log_impl(&dword_21BB35000, v2, v3, "%s blocking sleep ... ", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21CF05C50](v9, -1, -1);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    v10 = *(v7 + 8);
    v10(v5, v6);
    *(v0 + 344) = v10;
    v11 = *(MEMORY[0x277D857E8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 352) = v12;
    *v12 = v0;
    v12[1] = sub_21BCD5350;

    return MEMORY[0x282200480](2000000000);
  }

  else
  {
    v13 = *(v0 + 296);

    v14 = MEMORY[0x21CF01210](0xD00000000000003ELL, 0x800000021BE5C2B0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 240);
    sub_21BE2616C();
    v18 = v14;
    sub_21BC51D50(v14);

    v19 = *(v16 + 8);
    v19(v15, v17);
    v20 = *(v0 + 264);
    sub_21BE2616C();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FFC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 320);
    v25 = *(v0 + 264);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    if (v23)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, v37);
      *(v28 + 12) = 1024;
      *(v28 + 14) = 0;
      _os_log_impl(&dword_21BB35000, v21, v22, "%s Automatic location sharing flag request result success: %{BOOL}d", v28, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x21CF05C50](v29, -1, -1);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    v19(v25, v26);
    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 232);

    v35 = *(v0 + 8);

    return v35(0);
  }
}

uint64_t sub_21BCD5350()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 304);
    v6 = *(v2 + 312);
    v7 = sub_21BCD9C1C;
  }

  else
  {
    v5 = *(v2 + 304);
    v6 = *(v2 + 312);
    v7 = sub_21BCD5474;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BCD5474()
{
  v41 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[28];

  if ((*(v3 + v1) & 1) == 0)
  {
    v4 = v0[34];
    sub_21BE2616C();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FCC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[43];
    v9 = v0[34];
    v10 = v0[30];
    v11 = v0[31];
    if (v7)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, &v40);
      _os_log_impl(&dword_21BB35000, v5, v6, "%s No reload was detected, forcing bg refresh", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v8(v9, v10);
    v14 = v0[36];
    v16 = v0[28];
    v15 = v0[29];
    v17 = sub_21BE28DAC();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = v16;
    v19 = sub_21BE28D6C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    sub_21BBA932C(0, 0, v15, &unk_21BE40490, v20);
  }

  v22 = v0[43];
  v23 = v0[33];
  sub_21BE2616C();
  v24 = sub_21BE26A2C();
  v25 = sub_21BE28FFC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[40];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[31];
  if (v26)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, &v40);
    *(v31 + 12) = 1024;
    *(v31 + 14) = 1;
    _os_log_impl(&dword_21BB35000, v24, v25, "%s Automatic location sharing flag request result success: %{BOOL}d", v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x21CF05C50](v32, -1, -1);
    MEMORY[0x21CF05C50](v31, -1, -1);
  }

  v22(v28, v29);
  v34 = v0[34];
  v33 = v0[35];
  v36 = v0[32];
  v35 = v0[33];
  v37 = v0[29];

  v38 = v0[1];

  return v38(1);
}

uint64_t sub_21BCD57E0()
{
  v27 = v0;
  v1 = v0[42];
  v2 = v0[37];

  swift_willThrow();
  v3 = v0[42];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  sub_21BE2616C();
  v7 = v3;
  sub_21BC51D50(v3);

  v8 = *(v5 + 8);
  v8(v4, v6);
  v9 = v0[33];
  sub_21BE2616C();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[40];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[31];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, &v26);
    *(v17 + 12) = 1024;
    *(v17 + 14) = 0;
    _os_log_impl(&dword_21BB35000, v10, v11, "%s Automatic location sharing flag request result success: %{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x21CF05C50](v18, -1, -1);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  v8(v14, v15);
  v20 = v0[34];
  v19 = v0[35];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[29];

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_21BCD5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[10] = v10;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_21BCD5B38, v10, v9);
}

uint64_t sub_21BCD5B38()
{
  v1 = v0[8];
  v0[12] = *__swift_project_boxed_opaque_existential_1Tm((v0[3] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore), *(v0[3] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore + 24));
  v0[13] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[14] = v3;
  v0[15] = v2;

  return MEMORY[0x2822009F8](sub_21BCD5BE4, v3, v2);
}

void sub_21BCD5BE4()
{
  v1 = *(v0[12] + 40);
  v0[16] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21BCD5CF8;
    v6 = v0[7];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BCD5CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 144) = v0;

  sub_21BB3A4CC(v5, &qword_27CDB5790, &qword_21BE32800);

  v7 = *(v2 + 120);
  v8 = *(v2 + 112);
  if (v0)
  {
    v9 = sub_21BCD5E84;
  }

  else
  {
    v9 = sub_21BBF5340;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BCD5E84()
{
  v1 = v0[13];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822009F8](sub_21BCD5EE8, v2, v3);
}

uint64_t sub_21BCD5EE8()
{
  v1 = v0[18];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  sub_21BE2616C();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v4 + 8))(v3, v5);
  v8 = v0[6];
  v7 = v0[7];

  v9 = v0[1];

  return v9();
}

id LocationViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21BCD6060@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BCD60A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BCCEF98();
}

uint64_t sub_21BCD6190@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BCD6220(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

char *_s14FamilyCircleUI17LocationViewModelC06createF0ACyFZ_0()
{
  v0 = qword_27CDD4290;
  if (qword_27CDD4290)
  {
    v1 = qword_27CDD4290;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v2 = [objc_allocWithZone(type metadata accessor for ScreenTimeConfiguration()) init];
    v3 = objc_allocWithZone(type metadata accessor for LocationViewModel());
    v1 = sub_21BDD21D4(v2, v9, v7, &v6, v3);
    v0 = 0;
  }

  v4 = v0;
  return v1;
}

uint64_t sub_21BCD633C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCCE438(a1, v4, v5, v6);
}

uint64_t type metadata accessor for LocationViewModel()
{
  result = qword_27CDB97C8;
  if (!qword_27CDB97C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of FMLSessionProtocol.sendFriendshipOffer(to:from:end:isFromGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_21BBA6A64;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of FMLSessionProtocol.stopSharingMyLocation(with:from:isFromGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_21BBB7EB8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of FMLSessionProtocol.friendsSharingLocationsWithMe()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FMLSessionProtocol.friendsFollowingMyLocation()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8C3C;

  return v9(a1, a2);
}

void sub_21BCD691C()
{
  sub_21BB3A6E8(319, &qword_27CDB97D8, &qword_27CDB8238, &unk_21BE4DC00);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_21BB3D064();
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_21BB3A6E8(319, &qword_27CDB97E0, &qword_27CDB5CC8, &qword_21BE36190);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_21BB3A6E8(319, &qword_27CDB97E8, &qword_27CDB97F0, &qword_21BE4DC10);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of LocationViewModel.computeLocationSharingToggles(selectedMember:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x228);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return v8(a1);
}

uint64_t dispatch thunk of LocationViewModel.notifyLocationChange()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x238);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return v6();
}

uint64_t sub_21BCD6FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCD5A08(a1, v4, v5, v6);
}

id sub_21BCD70B0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_21BCD70BC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_21BCD70C8(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588) - 8) + 80);

  return sub_21BCD04F0(a1, a2);
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21BCD716C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9820, &qword_21BE405E0);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BDCE54C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21BCD7270(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_21BE2655C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_21BE2656C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_21BE26A4C();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9818, &qword_21BE405C8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v14 = sub_21BE265CC();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = sub_21BE28D7C();
  v2[25] = sub_21BE28D6C();
  v18 = sub_21BE28D0C();
  v2[26] = v18;
  v2[27] = v17;

  return MEMORY[0x2822009F8](sub_21BCD751C, v18, v17);
}

uint64_t sub_21BCD751C()
{
  v67 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v3 = 0;
    v4 = v0[21];
    v61 = v1 & 0xFFFFFFFFFFFFFF8;
    v64 = v1 & 0xC000000000000001;
    v58 = v0[4] + 32;
    v59 = (v4 + 48);
    v56 = v4;
    v1 = v4 + 32;
    v5 = MEMORY[0x277D84F90];
    v57 = i;
    while (1)
    {
      if (v64)
      {
        v6 = MEMORY[0x21CF047C0](v3, v0[4]);
      }

      else
      {
        if (v3 >= *(v61 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(v58 + 8 * v3);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = v5;
      v11 = v0[19];
      v10 = v0[20];
      v66[0] = v6;
      sub_21BCD13E4(v66, v11);

      if ((*v59)(v11, 1, v10) == 1)
      {
        sub_21BB3A4CC(v0[19], &qword_27CDB9818, &qword_21BE405C8);
        v5 = v9;
      }

      else
      {
        v13 = v0[22];
        v12 = v0[23];
        v14 = v0[20];
        v15 = *v1;
        (*v1)(v12, v0[19], v14);
        v15(v13, v12, v14);
        v5 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_21BBBD7CC(0, v9[2] + 1, 1, v9);
        }

        v17 = v5[2];
        v16 = v5[3];
        if (v17 >= v16 >> 1)
        {
          v5 = sub_21BBBD7CC(v16 > 1, v17 + 1, 1, v5);
        }

        v18 = v0[22];
        v19 = v0[20];
        v5[2] = v17 + 1;
        v15(v5 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v17, v18, v19);
        i = v57;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:
  v0[28] = v5;
  v20 = v0[17];
  v21 = v0[5];
  sub_21BE2616C();
  v22 = v21;

  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FFC();

  v65 = v5;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v5;
    v26 = v0[20];
    v27 = v0[14];
    v60 = v0[13];
    v62 = v0[17];
    v28 = v0[5];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v66[0] = v31;
    *v29 = 138543618;
    *(v29 + 4) = v28;
    *v30 = v28;
    *(v29 + 12) = 2080;
    v32 = v28;
    v33 = MEMORY[0x21CF03DF0](v25, v26);
    v35 = sub_21BB3D81C(v33, v34, v66);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_21BB35000, v23, v24, "%{public}@ Sending friendship offer to %s", v29, 0x16u);
    sub_21BB3A4CC(v30, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x21CF05C50](v31, -1, -1);
    MEMORY[0x21CF05C50](v29, -1, -1);

    v36 = *(v27 + 8);
    v36(v62, v60);
  }

  else
  {
    v37 = v0[17];
    v39 = v0[13];
    v38 = v0[14];

    v36 = *(v38 + 8);
    v36(v37, v39);
  }

  v0[29] = v36;
  v41 = v0[20];
  v40 = v0[21];
  v42 = v0[18];
  v44 = v0[8];
  v43 = v0[9];
  v45 = v0[7];
  v46 = (v0[5] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession);
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1Tm(v46, v47);
  (*(v40 + 56))(v42, 1, 1, v41);
  (*(v44 + 104))(v43, *MEMORY[0x277D09108], v45);
  v49 = *(v48 + 8);
  v63 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  v0[30] = v51;
  *v51 = v0;
  v51[1] = sub_21BCD7A70;
  v52 = v0[18];
  v53 = v0[12];
  v54 = v0[9];

  return (v63)(v53, v65, v52, v54, 0, v47, v48);
}

uint64_t sub_21BCD7A70()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 64);
  v18 = *v1;
  *(*v1 + 248) = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[18];
    (*v5)(v2[9], v2[7]);
    sub_21BB3A4CC(v6, &qword_27CDB9818, &qword_21BE405C8);
    v7 = v2[26];
    v8 = v2[27];
    v9 = sub_21BCD7E30;
  }

  else
  {
    v10 = v2[28];
    v11 = v2[18];
    v13 = v2[11];
    v12 = v2[12];
    v15 = v2[9];
    v14 = v2[10];
    v16 = v2[7];

    (*v5)(v15, v16);
    sub_21BB3A4CC(v11, &qword_27CDB9818, &qword_21BE405C8);
    (*(v13 + 8))(v12, v14);
    v7 = v2[26];
    v8 = v2[27];
    v9 = sub_21BCD7C48;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BCD7C48()
{
  v1 = v0[25];

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[9];
  v10 = v0[5];
  v9 = v0[6];
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = v10;
  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_21BBA932C(0, 0, v9, &unk_21BE405D8, v14);

  v16 = [objc_opt_self() defaultCenter];
  [v16 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

  v17 = v0[1];

  return v17(1);
}

uint64_t sub_21BCD7E30()
{
  v46 = v0;
  v1 = *(v0 + 248);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);

    v7 = *(v0 + 24);
    v8 = [v7 code];
    if (v8 == 204)
    {
      v9 = *(v0 + 120);
      sub_21BE2616C();
      v10 = sub_21BE26A2C();
      v11 = sub_21BE28FDC();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 232);
      v15 = *(v0 + 112);
      v14 = *(v0 + 120);
      v16 = *(v0 + 104);
      if (v12)
      {
        v43 = *(v0 + 232);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v45 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE5C640, &v45);
        _os_log_impl(&dword_21BB35000, v10, v11, "%s Ignoring 204 error code from findMy", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x21CF05C50](v18, -1, -1);
        MEMORY[0x21CF05C50](v17, -1, -1);

        v43(v14, v16);
      }

      else
      {

        v13(v14, v16);
      }
    }

    else
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 128);
      v21 = *(v0 + 104);
      v22 = *(v0 + 112);
      sub_21BE2616C();
      v23 = v7;
      sub_21BC51D50(v7);

      v19(v20, v21);
    }

    v44 = v8 == 204;

    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v26 = *(v0 + 176);
    v28 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v40 = *(v0 + 120);
    v41 = *(v0 + 96);
    v42 = *(v0 + 72);
    v32 = *(v0 + 40);
    v31 = *(v0 + 48);
    v33 = sub_21BE28DAC();
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    v34 = v32;
    v35 = sub_21BE28D6C();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v34;
    sub_21BBA932C(0, 0, v31, &unk_21BE405D8, v36);

    v38 = [objc_opt_self() defaultCenter];
    [v38 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

    v39 = *(v0 + 8);

    return v39(v44);
  }

  return result;
}

uint64_t sub_21BCD8268()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BCCEEEC();
}

uint64_t sub_21BCD831C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_21BE26A4C();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9818, &qword_21BE405C8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v8 = sub_21BE2656C();
  v2[20] = v8;
  v9 = *(v8 - 8);
  v2[21] = v9;
  v10 = *(v9 + 64) + 15;
  v2[22] = swift_task_alloc();
  v11 = sub_21BE265CC();
  v2[23] = v11;
  v12 = *(v11 - 8);
  v2[24] = v12;
  v13 = *(v12 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v14 = sub_21BE2658C();
  v2[27] = v14;
  v15 = *(v14 - 8);
  v2[28] = v15;
  v16 = *(v15 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = sub_21BE28D7C();
  v2[33] = sub_21BE28D6C();
  v18 = sub_21BE28D0C();
  v2[34] = v18;
  v2[35] = v17;

  return MEMORY[0x2822009F8](sub_21BCD85C8, v18, v17);
}

uint64_t sub_21BCD85C8()
{
  v1 = v0[12];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_24:
    v3 = sub_21BE2951C();
    v4 = v0[12];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[12];
  }

  v0[36] = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v4 + 32;
    v26 = MEMORY[0x277D84F90];
    do
    {
      v1 = v5;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x21CF047C0](v1, v0[12]);
        }

        else
        {
          if (v1 >= *(v2 + 16))
          {
            goto LABEL_23;
          }

          v8 = *(v7 + 8 * v1);
        }

        v9 = v8;
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v10 = [v8 appleID];
        if (v10)
        {
          break;
        }

        ++v1;
        if (v5 == v3)
        {
          goto LABEL_19;
        }
      }

      v11 = v10;
      v12 = sub_21BE28A0C();
      v25 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_21BBBC990(0, *(v26 + 2) + 1, 1, v26);
      }

      v15 = *(v26 + 2);
      v14 = *(v26 + 3);
      if (v15 >= v14 >> 1)
      {
        v26 = sub_21BBBC990((v14 > 1), v15 + 1, 1, v26);
      }

      *(v26 + 2) = v15 + 1;
      v16 = &v26[16 * v15];
      *(v16 + 4) = v12;
      *(v16 + 5) = v25;
      v0[36] = v26;
    }

    while (v5 != v3);
  }

LABEL_19:
  v17 = v0[13];
  v18 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession;
  v0[37] = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession;
  v19 = *(v17 + v18 + 24);
  v20 = *(v17 + v18 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v17 + v18), v19);
  v21 = *(v20 + 32);
  v27 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[38] = v23;
  *v23 = v0;
  v23[1] = sub_21BCD8874;

  return v27(v19, v20);
}

uint64_t sub_21BCD8874(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v7 = *(v3 + 280);
  v8 = *(v3 + 272);
  if (v1)
  {
    v9 = sub_21BCD9350;
  }

  else
  {
    v9 = sub_21BCD89B8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

void sub_21BCD89B8()
{
  v1 = v0[39];
  v2 = MEMORY[0x277D84F90];
  v68 = *(v1 + 16);
  if (v68)
  {
    v3 = 0;
    v4 = v0[28];
    v66 = (v0[24] + 8);
    v67 = v4;
    v61 = (v4 + 8);
    v62 = (v4 + 32);
    v5 = v0[40];
    v65 = v0[36] + 40;
    v6 = MEMORY[0x277D84F90];
    v63 = v0[39];
    v64 = v0[36];
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_28:
        __break(1u);
        return;
      }

      v74 = v6;
      v9 = v0[26];
      v10 = v0[23];
      v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v69 = *(v67 + 72);
      (*(v67 + 16))(v0[31], v0[39] + v70 + v69 * v3, v0[27]);
      v72 = v3 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BE32770;
      sub_21BE2657C();
      v12 = sub_21BE2659C();
      v14 = v13;
      v15 = *v66;
      (*v66)(v9, v10);
      *(inited + 32) = v12;
      *(inited + 40) = v14;
      sub_21BE2657C();
      v16 = sub_21BE265AC();
      v15(v9, v10);
      sub_21BDE57E8(v16);
      v17 = inited;
      v18 = *(v64 + 16);

      v19 = -v18;
      v20 = -1;
      v21 = v65;
      do
      {
        if (v19 + v20 == -1)
        {
          v7 = v0[31];
          v8 = v0[27];
          swift_bridgeObjectRelease_n();
          (*v61)(v7, v8);
          v6 = v74;
          v1 = v63;
          goto LABEL_4;
        }

        if (++v20 >= *(v64 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v22 = v21 + 2;
        v23 = *v21;
        v0[8] = *(v21 - 1);
        v0[9] = v23;
        v24 = swift_task_alloc();
        *(v24 + 16) = v0 + 8;

        v25 = sub_21BC9BF08(sub_21BC69628, v24, v17);

        v21 = v22;
      }

      while ((v25 & 1) == 0);
      v27 = v0[30];
      v26 = v0[31];
      v28 = v0[27];
      swift_bridgeObjectRelease_n();
      v29 = *v62;
      (*v62)(v27, v26, v28);
      v6 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21BC59D34(0, *(v74 + 16) + 1, 1);
        v6 = v74;
      }

      v1 = v63;
      v31 = *(v6 + 16);
      v30 = *(v6 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_21BC59D34(v30 > 1, v31 + 1, 1);
        v6 = v74;
      }

      v32 = v0[30];
      v33 = v0[27];
      *(v6 + 16) = v31 + 1;
      v29(v6 + v70 + v31 * v69, v32, v33);
LABEL_4:
      v3 = v72;
      if (v72 != v68)
      {
        continue;
      }

      break;
    }

    v34 = v0[39];
    v2 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v35 = v0[36];

  v36 = *(v6 + 16);
  if (v36)
  {
    v37 = v0[28];
    v38 = v0[24];
    sub_21BC59D14(0, v36, 0);
    v39 = v2;
    v40 = *(v37 + 16);
    v37 += 16;
    v73 = v40;
    v41 = v6 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v71 = *(v37 + 56);
    v42 = (v37 - 8);
    do
    {
      v43 = v0[29];
      v44 = v0[27];
      v45 = v0[25];
      v73(v43, v41, v44);
      sub_21BE2657C();
      (*v42)(v43, v44);
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_21BC59D14(v46 > 1, v47 + 1, 1);
      }

      v48 = v0[25];
      v49 = v0[23];
      *(v39 + 16) = v47 + 1;
      (*(v38 + 32))(v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v47, v48, v49);
      v41 += v71;
      --v36;
    }

    while (v36);
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v0[41] = v39;
  v50 = v0[23];
  v51 = v0[24];
  v52 = v0[19];
  v53 = (v0[13] + v0[37]);
  v54 = v53[3];
  v55 = v53[4];
  __swift_project_boxed_opaque_existential_1Tm(v53, v54);
  (*(v51 + 56))(v52, 1, 1, v50);
  v56 = *(v55 + 16);
  v75 = (v56 + *v56);
  v57 = v56[1];
  v58 = swift_task_alloc();
  v0[42] = v58;
  *v58 = v0;
  v58[1] = sub_21BCD8FD4;
  v59 = v0[22];
  v60 = v0[19];

  (v75)(v59, v39, v60, 0, v54, v55);
}

uint64_t sub_21BCD8FD4()
{
  v2 = *v1;
  v3 = (*v1)[42];
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[41];
  if (v0)
  {
    sub_21BB3A4CC(v2[19], &qword_27CDB9818, &qword_21BE405C8);

    v6 = v2[34];
    v7 = v2[35];
    v8 = sub_21BCD9758;
  }

  else
  {
    v10 = v2[21];
    v9 = v2[22];
    v12 = v2[19];
    v11 = v2[20];

    sub_21BB3A4CC(v12, &qword_27CDB9818, &qword_21BE405C8);
    (*(v10 + 8))(v9, v11);
    v6 = v2[34];
    v7 = v2[35];
    v8 = sub_21BCD916C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21BCD916C()
{
  v1 = v0[33];

  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[18];
  v19 = v0[19];
  v20 = v0[17];
  v21 = v0[16];
  v10 = v0[13];
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = v10;
  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_21BBA932C(0, 0, v9, &unk_21BE405F0, v14);

  v16 = [objc_opt_self() defaultCenter];
  [v16 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

  v17 = v0[1];

  return v17(1);
}

uint64_t sub_21BCD9350()
{
  v42 = v0;
  v1 = *(v0 + 288);

  v2 = *(v0 + 320);
  *(v0 + 80) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 264);

    v6 = *(v0 + 88);
    v7 = [v6 code];
    if (v7 == 204)
    {
      v8 = *(v0 + 128);
      sub_21BE2616C();
      v9 = sub_21BE26A2C();
      v10 = sub_21BE28FDC();
      v11 = os_log_type_enabled(v9, v10);
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = *(v0 + 112);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v41 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_21BB3D81C(0xD00000000000001DLL, 0x800000021BE5C6A0, &v41);
        _os_log_impl(&dword_21BB35000, v9, v10, "%s Ignoring 204 error code from findMy", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x21CF05C50](v16, -1, -1);
        MEMORY[0x21CF05C50](v15, -1, -1);
      }

      else
      {
      }

      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v17 = *(v0 + 136);
      v18 = *(v0 + 112);
      v19 = *(v0 + 120);
      sub_21BE2616C();
      v20 = v6;
      sub_21BC51D50(v6);

      (*(v19 + 8))(v17, v18);
    }

    v40 = v7 == 204;

    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v23 = *(v0 + 232);
    v24 = *(v0 + 240);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    v27 = *(v0 + 176);
    v28 = *(v0 + 144);
    v37 = *(v0 + 152);
    v38 = *(v0 + 136);
    v39 = *(v0 + 128);
    v29 = *(v0 + 104);
    v30 = sub_21BE28DAC();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = v29;
    v32 = sub_21BE28D6C();
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v31;
    sub_21BBA932C(0, 0, v28, &unk_21BE405F0, v33);

    v35 = [objc_opt_self() defaultCenter];
    [v35 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

    v36 = *(v0 + 8);

    return v36(v40);
  }

  return result;
}

uint64_t sub_21BCD9758()
{
  v41 = v0;
  v1 = *(v0 + 344);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 264);

    v5 = *(v0 + 88);
    v6 = [v5 code];
    if (v6 == 204)
    {
      v7 = *(v0 + 128);
      sub_21BE2616C();
      v8 = sub_21BE26A2C();
      v9 = sub_21BE28FDC();
      v10 = os_log_type_enabled(v8, v9);
      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = *(v0 + 112);
      if (v10)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v40 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_21BB3D81C(0xD00000000000001DLL, 0x800000021BE5C6A0, &v40);
        _os_log_impl(&dword_21BB35000, v8, v9, "%s Ignoring 204 error code from findMy", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x21CF05C50](v15, -1, -1);
        MEMORY[0x21CF05C50](v14, -1, -1);
      }

      else
      {
      }

      (*(v12 + 8))(v11, v13);
    }

    else
    {
      v16 = *(v0 + 136);
      v17 = *(v0 + 112);
      v18 = *(v0 + 120);
      sub_21BE2616C();
      v19 = v5;
      sub_21BC51D50(v5);

      (*(v18 + 8))(v16, v17);
    }

    v39 = v6 == 204;

    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v24 = *(v0 + 200);
    v25 = *(v0 + 208);
    v26 = *(v0 + 176);
    v27 = *(v0 + 144);
    v36 = *(v0 + 152);
    v37 = *(v0 + 136);
    v38 = *(v0 + 128);
    v28 = *(v0 + 104);
    v29 = sub_21BE28DAC();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    v30 = v28;
    v31 = sub_21BE28D6C();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v30;
    sub_21BBA932C(0, 0, v27, &unk_21BE405F0, v32);

    v34 = [objc_opt_self() defaultCenter];
    [v34 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

    v35 = *(v0 + 8);

    return v35(v39);
  }

  return result;
}

uint64_t sub_21BCD9B58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCCEEEC();
}

uint64_t sub_21BCD9C28()
{
  v0 = sub_21BE26A4C();
  __swift_allocate_value_buffer(v0, qword_27CDD42A0);
  __swift_project_value_buffer(v0, qword_27CDD42A0);
  return sub_21BE26A3C();
}

uint64_t sub_21BCD9CA8()
{
  v0 = sub_21BE26A4C();
  __swift_allocate_value_buffer(v0, qword_27CDD42B8);
  v1 = __swift_project_value_buffer(v0, qword_27CDD42B8);
  if (qword_27CDB4F78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CDD42A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21BCD9D70()
{
  v1[2] = v0;
  v2 = sub_21BE265CC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_21BE2658C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCD9E8C, 0, 0);
}

uint64_t sub_21BCD9E8C()
{
  v0[9] = *(v0[2] + OBJC_IVAR____TtC14FamilyCircleUI19FindMyLocateSession_session);
  v1 = *(MEMORY[0x277D09330] + 4);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21BCD9F3C;

  return MEMORY[0x28215FA40]();
}

uint64_t sub_21BCD9F3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v8 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = sub_21BCDA36C;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_21BCDA058;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21BCDA058()
{
  v40 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    v39 = MEMORY[0x277D84F90];
    sub_21BC599DC(0, v2, 0);
    v5 = v39;
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v36 = *(v3 + 56);
    v37 = v6;
    v38 = v0;
    v34 = (v3 - 8);
    v35 = (v4 + 8);
    do
    {
      v8 = v0[8];
      v9 = v5;
      v11 = v0[5];
      v10 = v0[6];
      v12 = v0[3];
      v37(v8, v7, v10);
      sub_21BE2657C();
      v13 = sub_21BE2659C();
      v15 = v14;
      (*v35)(v11, v12);
      v16 = v10;
      v5 = v9;
      (*v34)(v8, v16);
      v39 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21BC599DC((v17 > 1), v18 + 1, 1);
        v5 = v39;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v7 += v36;
      --v2;
      v0 = v38;
    }

    while (v2);
    v20 = v38[11];
  }

  else
  {
    v21 = v0[11];

    v5 = MEMORY[0x277D84F90];
  }

  if (qword_27CDB4F80 != -1)
  {
    swift_once();
  }

  v22 = sub_21BE26A4C();
  __swift_project_value_buffer(v22, qword_27CDD42B8);

  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FFC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    v27 = MEMORY[0x21CF03DF0](v5, MEMORY[0x277D837D0]);
    v29 = sub_21BB3D81C(v27, v28, &v39);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_21BB35000, v23, v24, "Successfully got handles following my location: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x21CF05C50](v26, -1, -1);
    MEMORY[0x21CF05C50](v25, -1, -1);
  }

  v30 = v0[8];
  v31 = v0[5];

  v32 = v0[1];

  return v32(v5);
}

uint64_t sub_21BCDA36C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_21BCDA558(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21BCDA600;

  return sub_21BCD9D70();
}

uint64_t sub_21BCDA600()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_21BE25A7C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_21BE28C1C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_21BE2652C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE2653C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OBJC_IVAR____TtC14FamilyCircleUI19FindMyLocateSession_session;
  (*(v3 + 104))(v6, *MEMORY[0x277D09060], v2);
  sub_21BE2654C();
  v10 = sub_21BE2661C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = sub_21BE2662C();
  Session = type metadata accessor for FindMyLocateSession();
  v15.receiver = v1;
  v15.super_class = Session;
  return objc_msgSendSuper2(&v15, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of FindMyLocateSession.handlesFollowingMyLocation()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB8C3C;

  return v6();
}

uint64_t sub_21BCDAC2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BCDA558(v2, v3);
}

uint64_t type metadata accessor for CommLimitsNotManagedCell()
{
  result = qword_27CDB9830;
  if (!qword_27CDB9830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCDAD4C()
{
  sub_21BCB057C();
  if (v0 <= 0x3F)
  {
    sub_21BCB04E8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CommLimitsItem(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BCDAE14()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BCDAF54()
{
  v1 = v0 + *(type metadata accessor for CommLimitsNotManagedCell() + 32);
  v2 = type metadata accessor for CommLimitsItem(0);
  v3 = *(v1 + *(v2 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  v5 = *(v1 + *(v2 + 24));
  v6 = sub_21BE2917C();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = [v10 bundleForClass_];
  sub_21BE2599C();

  v12 = sub_21BE289DC();

  return v12;
}

void sub_21BCDB11C(void *a1)
{
  v3 = v1 + *(type metadata accessor for CommLimitsNotManagedCell() + 32);
  v4 = [*(v3 + *(type metadata accessor for CommLimitsItem(0) + 24)) dsid];
  if (v4)
  {
    if (a1)
    {
      v10 = v4;
      v5 = objc_opt_self();
      v6 = a1;
      v7 = [v5 communicationLimitsViewControllerForDSID_];
      [v6 pushViewController:v7 animated:1];

      v8 = sub_21BCDAE14();
      swift_beginAccess();
      if (*(v8 + 23))
      {

        *(v8 + 23) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
        sub_21BE25F0C();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21BCDB338()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + *(type metadata accessor for CommLimitsNotManagedCell() + 32);
    v3 = *(v2 + *(type metadata accessor for CommLimitsItem(0) + 24));
    v4 = v1;
    v5 = [v4 profilePictureForFamilyMember:v3 pictureDiameter:40.0];
    if (v5)
    {
      v6 = v5;
      v7 = sub_21BE25BFC();
      v9 = v8;

      v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v11 = sub_21BE25BCC();
      v12 = [v10 initWithData_];

      sub_21BBBEF94(v7, v9);
    }

    else
    {

      return 0;
    }

    return v12;
  }

  else
  {
    v14 = *(v0 + 24);
    sub_21BBDAF04();
    sub_21BCB11C0(&qword_280BD8A20, sub_21BBDAF04);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

id sub_21BCDB484@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CommLimitsNotManagedCell();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BCDBA50(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsNotManagedCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BCDB8E4(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v19 = v8;
  sub_21BE283EC();
  v9 = v17;
  v10 = v18;
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  v16 = qword_27CDB7E50;
  v11 = sub_21BCDAE14();
  swift_getKeyPath();
  v17 = v11;
  sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE25F1C();

  swift_beginAccess();
  v12 = *(v11 + 23);

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = sub_21BCDB948;
  *(a1 + 24) = v7;
  v13 = v16;
  *(a1 + 32) = v16;
  *(a1 + 40) = v12;

  return v13;
}

uint64_t sub_21BCDB6E0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CommLimitsNotManagedCell();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v26 = a2[6];
  v27 = v10;

  v25 = sub_21BCB0780();
  sub_21BCDBA50(a2, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsNotManagedCell);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_21BCDB8E4(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v15 = a1;
  v16 = sub_21BCDAF54();
  v18 = v17;
  v19 = sub_21BCDB338();
  v20 = *(v7 + 40);
  a3[13] = type metadata accessor for CommLimitsItem(0);
  a3[14] = sub_21BCB11C0(&qword_27CDB9008, type metadata accessor for CommLimitsItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 10);
  result = sub_21BCDBA50(a2 + v20, boxed_opaque_existential_1, type metadata accessor for CommLimitsItem);
  v23 = v26;
  *a3 = v27;
  a3[1] = v11;
  a3[2] = v23;
  a3[3] = v12;
  a3[4] = v25;
  a3[5] = sub_21BCDB9C8;
  a3[6] = v14;
  a3[7] = v16;
  a3[8] = v18;
  a3[9] = v19;
  a3[15] = 0;
  return result;
}

uint64_t sub_21BCDB8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsNotManagedCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCDB948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CommLimitsNotManagedCell() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BCDB6E0(a1, v6, a2);
}

uint64_t sub_21BCDBA50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BCDBAB8()
{
  result = qword_27CDB9840;
  if (!qword_27CDB9840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9848, qword_21BE40728);
    sub_21BBC925C();
    sub_21BCB1380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9840);
  }

  return result;
}

id FASettingsPresetsTableViewDecorator.__allocating_init(tableView:ruiTableView:parentViewController:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  swift_unknownObjectUnownedInit();
  *&v7[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC] = 0;
  *&v7[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView] = a2;
  swift_unknownObjectUnownedAssign();
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithTableView_, a1);
  swift_unknownObjectRelease();

  return v9;
}

id FASettingsPresetsTableViewDecorator.init(tableView:ruiTableView:parentViewController:)(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC] = 0;
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView] = a2;
  swift_unknownObjectUnownedAssign();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for FASettingsPresetsTableViewDecorator();
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithTableView_, a1);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_21BCDBD80(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView) sections];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ([v3 count] > a1 && (v5 = objc_msgSend(v4, sel_objectAtIndexedSubscript_, a1), sub_21BE294BC(), swift_unknownObjectRelease(), sub_21BCDCB3C(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v18[0];
    v7 = [v18[0] attributes];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = sub_21BE2890C();

    v15 = sub_21BE28A0C();
    v16 = v10;
    sub_21BE2958C();
    if (!*(v9 + 16) || (v11 = sub_21BBB31E8(v17), (v12 & 1) == 0))
    {

      sub_21BBB7238(v17);
      return 0;
    }

    sub_21BB3DCD4(*(v9 + 56) + 32 * v11, v18);
    sub_21BBB7238(v17);

    if (swift_dynamicCast())
    {
      if (v15 == 0xD000000000000013 && 0x800000021BE5C920 == v16)
      {

        return 1;
      }

      v14 = sub_21BE2995C();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21BCDBFC0(uint64_t a1, uint64_t a2)
{
  if (sub_21BCDBD80(a2))
  {
    return 1;
  }

  result = [v2 dataSource];
  if (result)
  {
    v6 = [result tableView:a1 numberOfRowsInSection:a2];
    swift_unknownObjectRelease();
    return v6;
  }

  return result;
}

uint64_t sub_21BCDC0E8()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC;
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC);
LABEL_5:
    v12 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9868, &qword_21BE40778));
  v6 = sub_21BE2774C();
  Strong = swift_unknownObjectUnownedLoadStrong();
  [v6 willMoveToParentViewController_];

  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v6;
    [v9 addChildViewController_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_21BCDC1D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21BE25EEC();
  if (sub_21BCDBD80(v4))
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    v6 = sub_21BCDC0E8();
    v7 = [v6 view];

    if (v7)
    {
      [v7 removeFromSuperview];

      v8 = [v5 contentView];
      v9 = OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC;
      v10 = [*&v2[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC] view];
      if (v10)
      {
        v11 = v10;
        [v8 addSubview_];

        v12 = [*&v2[v9] view];
        if (v12)
        {
          v13 = v12;
          [v12 setTranslatesAutoresizingMaskIntoConstraints_];

          v14 = [*&v2[v9] view];
          if (v14)
          {
            v16 = v14;
            LODWORD(v15) = 1148846080;
            [v14 setContentCompressionResistancePriority:1 forAxis:v15];

            v17 = [*&v2[v9] view];
            if (v17)
            {
              v18 = v17;
              v19 = [v17 topAnchor];

              v20 = [v5 contentView];
              v21 = [v20 topAnchor];

              v22 = [v19 constraintEqualToAnchor_];
              [v22 setActive_];

              v23 = [*&v2[v9] view];
              if (v23)
              {
                v24 = v23;
                v25 = [v23 bottomAnchor];

                v26 = [v5 contentView];
                v27 = [v26 bottomAnchor];

                v28 = [v25 constraintEqualToAnchor_];
                [v28 setActive_];

                v29 = [*&v2[v9] view];
                if (v29)
                {
                  v30 = v29;
                  v31 = [v29 leadingAnchor];

                  v32 = [v5 contentView];
                  v33 = [v32 leadingAnchor];

                  v34 = [v31 constraintEqualToAnchor_];
                  [v34 setActive_];

                  v35 = [*&v2[v9] view];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = [v35 trailingAnchor];

                    v38 = [v5 contentView];
                    v39 = [v38 trailingAnchor];

                    v40 = [v37 constraintEqualToAnchor_];
                    [v40 setActive_];

                    v41 = *&v2[v9];
                    Strong = swift_unknownObjectUnownedLoadStrong();
                    v43 = v41;
                    [v43 didMoveToParentViewController_];

                    return;
                  }

                  goto LABEL_23;
                }

LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                return;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v44 = [v1 dataSource];
  if (v44)
  {
    v45 = v44;
    v46 = sub_21BE25ECC();
    [v45 tableView:a1 cellForRowAtIndexPath:v46];
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = objc_allocWithZone(MEMORY[0x277D75B48]);

    [v47 init];
  }
}

void sub_21BCDC7F4(uint64_t a1)
{
  v3 = sub_21BE25EEC();
  if ((sub_21BCDBD80(v3) & 1) == 0)
  {
    v4 = [v1 delegate];
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        v6 = sub_21BE25ECC();
        [v5 tableView:a1 heightForRowAtIndexPath:v6];
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  v7 = *MEMORY[0x277D76F30];
}

id FASettingsPresetsTableViewDecorator.__allocating_init(tableView:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithTableView_];
  swift_unknownObjectRelease();
  return v2;
}

id FASettingsPresetsTableViewDecorator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FASettingsPresetsTableViewDecorator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21BCDCB3C()
{
  result = qword_27CDB9870;
  if (!qword_27CDB9870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB9870);
  }

  return result;
}

uint64_t sub_21BCDCB88()
{
  v0 = type metadata accessor for FAImageProvider();
  v14[3] = v0;
  v14[4] = &off_282D8FB28;
  v14[0] = swift_allocObject();
  v1 = type metadata accessor for FAFamilyImageLoader();
  v2 = objc_allocWithZone(v1);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v0);
  v4 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v13[3] = v0;
  v13[4] = &off_282D8FB28;
  v13[0] = v8;
  v9 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults] = sub_21BBB52D8(MEMORY[0x277D84F90]);
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter] = 0x405E000000000000;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__loaders] = sub_21BBB6600(v9);
  sub_21BE25F4C();
  sub_21BB3A35C(v13, &v2[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider]);
  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  off_27CDB9878 = v10;
  return result;
}

id static FAFamilyImageLoader.shared.getter()
{
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  v1 = off_27CDB9878;

  return v1;
}

uint64_t sub_21BCDD13C()
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F0C();
}

uint64_t type metadata accessor for FAFamilyImageLoader()
{
  result = qword_27CDB98B8;
  if (!qword_27CDB98B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_21BCDD280(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BC75D70();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCDCEF4();
  return sub_21BCDD388;
}

double sub_21BCDD3F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_21BCDD4B0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BC75D70();
  sub_21BE25F1C();

  v1 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21BCDD53C(double a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BC75D70();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BCDD640()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_21BCDD6A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BC75D70();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCDD394();
  return sub_21BCDD7AC;
}

uint64_t sub_21BCDD7CC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_21BCDD854@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21BCDD8F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F0C();
}

uint64_t sub_21BCDD97C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t sub_21BCDD9E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21BC75D70();
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider;
  swift_beginAccess();
  return sub_21BB3A35C(v5 + v3, a1);
}

uint64_t sub_21BCDDA80(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a2, v16);
  v3 = v17;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v14 = type metadata accessor for FAImageProvider();
  v15 = &off_282D8FB28;
  *&v13 = v9;
  v10 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + v10));
  sub_21BB3D104(&v13, a1 + v10);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

id sub_21BCDDBB8()
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  swift_getKeyPath();
  v14 = v0;
  sub_21BE25F1C();

  v1 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v2 = *(v14 + v1);
  v3 = objc_opt_self();
  v4 = sub_21BE289CC();
  v5 = sub_21BE289CC();
  v6 = [v3 profilePictureForContact:0 serverImageData:0 firstName:v4 lastName:v5 diameter:v2];

  v7 = sub_21BE25BFC();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v11 = sub_21BE25BCC();
  v12 = [v10 initWithData_];

  sub_21BBBEF94(v7, v9);
  return v12;
}

uint64_t sub_21BCDDD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  v10 = sub_21BE26A4C();
  v7[36] = v10;
  v11 = *(v10 - 8);
  v7[37] = v11;
  v12 = *(v11 + 64) + 15;
  v7[38] = swift_task_alloc();
  sub_21BE28D7C();
  v7[39] = sub_21BE28D6C();
  v14 = sub_21BE28D0C();
  v7[40] = v14;
  v7[41] = v13;

  return MEMORY[0x2822009F8](sub_21BCDDEE0, v14, v13);
}

uint64_t sub_21BCDDEE0()
{
  v44 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 224);
  sub_21BE2614C();

  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FBC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);
  if (v5)
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v42 = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_21BB3D81C(0xD00000000000009DLL, 0x800000021BE5CA70, &v42);
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_21BB3D81C(v10, v9, &v42);
    _os_log_impl(&dword_21BB35000, v3, v4, "%{private}s Fetching remote photo for member %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v13 = *(v0 + 264);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v42 = qword_27CDB9880;
  v43 = off_27CDB9888;

  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v15, v14);
  v17 = v42;
  v16 = v43;
  *(v0 + 336) = v42;
  *(v0 + 344) = v16;
  swift_getKeyPath();
  *(v0 + 352) = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader___observationRegistrar;
  *(v0 + 144) = v13;
  *(v0 + 360) = sub_21BC75D70();
  sub_21BE25F1C();

  v18 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__loaders;
  *(v0 + 368) = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__loaders;
  swift_beginAccess();
  v19 = *(v13 + v18);
  if (*(v19 + 16))
  {
    v20 = *(v13 + v18);

    v21 = sub_21BBB3108(v17, v16);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);

      goto LABEL_8;
    }
  }

  v24 = *(v0 + 264);
  v26 = *(v0 + 216);
  v25 = *(v0 + 224);
  (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
  v40 = v17;
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v25;
  v27[4] = v24;
  *(v0 + 112) = xmmword_21BE40790;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98C8, &qword_21BE408F0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = v24;
  v23 = sub_21BE262AC();
  swift_getKeyPath();
  *(v0 + 152) = v31;

  sub_21BE25F1C();

  *(v0 + 160) = v31;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  v32 = *(v13 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v13 + v18);
  *(v13 + v18) = 0x8000000000000000;
  sub_21BC80370(v23, v40, v16, isUniquelyReferenced_nonNull_native);

  *(v13 + v18) = v42;
  swift_endAccess();
  *(v0 + 168) = v31;
  swift_getKeyPath();
  sub_21BE25F2C();

LABEL_8:
  *(v0 + 376) = v23;
  v34 = *(v0 + 272);
  v35 = sub_21BE28DAC();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = *(MEMORY[0x277D07FD0] + 4);
  v41 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

  v37 = swift_task_alloc();
  *(v0 + 384) = v37;
  *v37 = v0;
  v37[1] = sub_21BCDE410;
  v38 = *(v0 + 272);

  return v41(v0 + 128, v38);
}

uint64_t sub_21BCDE410()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 384);
  v5 = *v1;

  v6 = *(v2 + 376);
  v7 = *(v2 + 272);
  if (v0)
  {

    sub_21BBDE578(v7);
    v8 = *(v3 + 320);
    v9 = *(v3 + 328);
    v10 = sub_21BCDE8A8;
  }

  else
  {
    sub_21BBDE578(v7);

    v8 = *(v3 + 320);
    v9 = *(v3 + 328);
    v10 = sub_21BCDE580;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BCDE580()
{
  v1 = v0[39];

  v31 = v0[17];
  v32 = v0[16];
  v2 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[33];
  swift_getKeyPath();
  v0[22] = v7;
  sub_21BE25F1C();

  v0[23] = v7;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  sub_21BD402B0(0, v6, v5);
  swift_endAccess();
  v0[24] = v7;
  swift_getKeyPath();
  sub_21BE25F2C();

  swift_getKeyPath();
  v0[25] = v7;
  sub_21BE25F1C();

  swift_getKeyPath();
  v0[26] = v7;
  sub_21BE25F1C();

  v8 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v9 = 0;
  v10 = *(v7 + v8);
  if (v31 >> 60 != 15)
  {
    v9 = sub_21BE25BCC();
  }

  v11 = v0[47];
  v12 = v0[38];
  v29 = v0[35];
  v30 = v0[34];
  v14 = v0[31];
  v13 = v0[32];
  v16 = v0[29];
  v15 = v0[30];
  v17 = objc_opt_self();
  v18 = sub_21BE289CC();
  v19 = sub_21BE289CC();
  v20 = [v17 profilePictureForContact:0 serverImageData:v9 firstName:v18 lastName:v19 diameter:v10];

  v21 = sub_21BE25BFC();
  v23 = v22;

  v24 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v25 = sub_21BE25BCC();
  v26 = [v24 initWithData_];

  sub_21BBBEF94(v21, v23);

  sub_21BBBF0B4(v32, v31);

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_21BCDE8A8()
{
  v1 = v0[39];

  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[42];
  v7 = v0[33];
  swift_getKeyPath();
  v0[22] = v7;
  sub_21BE25F1C();

  v0[23] = v7;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  sub_21BD402B0(0, v6, v4);
  swift_endAccess();
  v0[24] = v7;
  swift_getKeyPath();
  sub_21BE25F2C();

  swift_getKeyPath();
  v0[25] = v7;
  sub_21BE25F1C();

  swift_getKeyPath();
  v0[26] = v7;
  sub_21BE25F1C();

  v8 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = v0[47];
  v11 = v0[38];
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[31];
  v14 = v0[32];
  v17 = v0[29];
  v16 = v0[30];
  v18 = objc_opt_self();
  v19 = sub_21BE289CC();
  v20 = sub_21BE289CC();
  v21 = [v18 profilePictureForContact:0 serverImageData:0 firstName:v19 lastName:v20 diameter:v9];

  v22 = sub_21BE25BFC();
  v24 = v23;

  v25 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v26 = sub_21BE25BCC();
  v27 = [v25 initWithData_];

  sub_21BBBEF94(v22, v24);

  sub_21BBBF0B4(0, 0xF000000000000000);

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_21BCDEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_21BE28D7C();
  v4[7] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21BCDEC2C, v6, v5);
}

uint64_t sub_21BCDEC2C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v11 = *(v0 + 32);
  v3 = sub_21BE28D6C();
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v11;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D0, &qword_21BE40920);
  *v6 = v0;
  v6[1] = sub_21BCDED60;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v8, v3, v9, 0xD000000000000019, 0x800000021BE5CB10, sub_21BCE00DC, v4, v7);
}

uint64_t sub_21BCDED60()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_21BCDEE84;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_21BBB16EC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BCDEE84()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

void sub_21BCDEEFC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v58 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v52 - v8;
  v9 = sub_21BE26A4C();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  swift_getKeyPath();
  aBlock[0] = a4;
  sub_21BC75D70();
  sub_21BE25F1C();

  v15 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults;
  swift_beginAccess();
  v16 = *&a4[v15];

  sub_21BCA3434(v17);

  v18 = objc_allocWithZone(MEMORY[0x277D08270]);
  v56 = a3;
  v19 = sub_21BE289CC();
  v20 = sub_21BE288EC();

  v21 = [v18 initWithMemberAltDSID:v19 ephemeralAuthResults:v20];

  if (v21)
  {
    v53 = v21;
    v22 = [objc_allocWithZone(sub_21BE2645C()) init];
    v23 = [objc_opt_self() memberPhotoRequest404CacheDurationHours];
    v24 = 1;
    v25 = [v23 getCacheDurationforMemberPhoto404Response_];

    if (v25)
    {
      v24 = sub_21BE2644C();
    }

    sub_21BE2614C();
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52 = v22;
      v29 = v28;
      *v28 = 67109120;
      *(v28 + 4) = v25 != 0;
      _os_log_impl(&dword_21BB35000, v26, v27, "FAFamilyImageLoader shouldCache404Response %{BOOL}d", v28, 8u);
      v30 = v29;
      v22 = v52;
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v59 + 8))(v61, v60);
    if (v24)
    {
      v31 = v25 != 0;
      v33 = v54;
      v32 = v55;
      v34 = v22;
      v35 = v7;
      v36 = v57;
      (*(v55 + 16))(v54, v58, v57);
      v37 = a2;
      v38 = (*(v32 + 80) + 48) & ~*(v32 + 80);
      v39 = (v35 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v31;
      *(v40 + 24) = v34;
      *(v40 + 32) = v37;
      *(v40 + 40) = v56;
      (*(v32 + 32))(v40 + v38, v33, v36);
      *(v40 + v39) = a4;
      aBlock[4] = sub_21BCE013C;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BCDFBD0;
      aBlock[3] = &block_descriptor_28;
      v41 = _Block_copy(aBlock);
      v42 = v34;

      v43 = a4;

      v44 = v53;
      [v53 performRequestWithHandler_];

      _Block_release(v41);
    }

    else
    {
      sub_21BCE00E8();
      v50 = swift_allocError();
      *v51 = 2;
      aBlock[0] = v50;
      sub_21BE28D1C();
    }
  }

  else
  {
    sub_21BE2614C();
    v45 = sub_21BE26A2C();
    v46 = sub_21BE28FDC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_21BB35000, v45, v46, "failed to create photoRequest. Should never happen", v47, 2u);
      MEMORY[0x21CF05C50](v47, -1, -1);
    }

    (*(v59 + 8))(v14, v60);
    sub_21BCE00E8();
    v48 = swift_allocError();
    *v49 = 1;
    aBlock[0] = v48;
    sub_21BE28D1C();
  }
}

void sub_21BCDF4DC(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a6;
  v76[5] = *MEMORY[0x277D85DE8];
  v15 = sub_21BE26A4C();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v70 - v23;
  if (a4)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    if ([a2 statusCode] == 404)
    {
      sub_21BE2643C();
    }
  }

  else if (!a2)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    if (a3)
    {
      v26 = a2;
      v27 = a3;
      sub_21BE2614C();
      v28 = a1;
      v29 = v26;
      v30 = sub_21BE26A2C();
      v31 = sub_21BE28FDC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v71 = a8;
        v34 = v33;
        *v32 = 138412546;
        *(v32 + 4) = v29;
        *(v32 + 12) = 2112;
        *(v32 + 14) = v28;
        *v33 = a2;
        v33[1] = a1;
        v35 = v29;
        v36 = v28;
        _os_log_impl(&dword_21BB35000, v30, v31, "photoResponse has unexpected type %@ request: %@", v32, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v34, -1, -1);
        MEMORY[0x21CF05C50](v32, -1, -1);
      }

      (*(v72 + 8))(v24, v73);
      *&v74 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
      sub_21BE28D1C();
    }

    else
    {
      v50 = v25;
      v74 = 0u;
      v75 = 0u;
      v51 = a2;
      v52 = [v50 cropRect];
      if (v52)
      {
        v53 = v52;
        [v52 getValue_];
      }

      v54 = [v50 photoData];
      if (v54)
      {
        v55 = v54;
        v56 = sub_21BE25BFC();
        v58 = v57;

        v59 = sub_21BE25BCC();
        sub_21BBBEF94(v56, v58);
      }

      else
      {
        v59 = 0;
      }

      v60 = objc_opt_self();
      swift_getKeyPath();
      v76[2] = a9;
      sub_21BC75D70();
      sub_21BE25F1C();

      v61 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
      swift_beginAccess();
      v62 = [v60 circularImageData:v59 withDiameter:*(a9 + v61) crop:{v74, v75}];

      if (v62)
      {
        v63 = sub_21BE25BFC();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0xF000000000000000;
      }

      sub_21BE2614C();

      v66 = sub_21BE26A2C();
      v67 = sub_21BE28FCC();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v76[0] = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_21BB3D81C(v71, a7, v76);
        _os_log_impl(&dword_21BB35000, v66, v67, "FAFamilyImageLoader image loaded for  altDSID: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x21CF05C50](v69, -1, -1);
        MEMORY[0x21CF05C50](v68, -1, -1);
      }

      (*(v72 + 8))(v22, v73);
      v76[0] = v63;
      v76[1] = v65;
      sub_21BBBF0A0(v63, v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
      sub_21BE28D2C();

      sub_21BBBF0B4(v63, v65);
    }

    goto LABEL_17;
  }

LABEL_11:
  sub_21BE2614C();
  v37 = a1;
  v38 = a2;
  v39 = sub_21BE26A2C();
  v40 = sub_21BE28FDC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v71 = a8;
    v43 = v42;
    *v41 = 138412546;
    *(v41 + 4) = v38;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v37;
    *v42 = a2;
    v42[1] = a1;
    v44 = v38;
    v45 = v37;
    _os_log_impl(&dword_21BB35000, v39, v40, "photoResponse has unexpected type %@ request: %@", v41, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v43, -1, -1);
    MEMORY[0x21CF05C50](v41, -1, -1);
  }

  (*(v72 + 8))(v19, v73);
  if (a3)
  {
    v46 = a3;
  }

  else
  {
    sub_21BCE00E8();
    v46 = swift_allocError();
    *v47 = 0;
  }

  *&v74 = v46;
  v48 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
  sub_21BE28D1C();
LABEL_17:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_21BCDFBD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

id FAFamilyImageLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyImageLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAFamilyImageLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BCDFDE8()
{
  result = sub_21BE25F5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BCE0028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BCDEB8C(a1, v4, v5, v6);
}

unint64_t sub_21BCE00E8()
{
  result = qword_27CDB98E0;
  if (!qword_27CDB98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB98E0);
  }

  return result;
}

void sub_21BCE013C(void *a1, void *a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  sub_21BCDF4DC(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_21BCE0240()
{
  result = qword_27CDB98E8[0];
  if (!qword_27CDB98E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB98E8);
  }

  return result;
}

void sub_21BCE02B4(uint64_t a1)
{
  sub_21BCB05D4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_21BCE071C(319, &qword_27CDB7BA8, type metadata accessor for FamilyPictureStore, &qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);
      if (v5 <= 0x3F)
      {
        sub_21BCE071C(319, &qword_27CDB9970, type metadata accessor for FamilyCircleStore, &qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21BCE03BC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_21BCE051C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          v20[1] = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_21BCE071C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_21BC1AD2C(a4, a5);
    v8 = sub_21BE270DC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21BCE07E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9978, &qword_21BE40A90);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21BE2848C();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_21BE2719C();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v25 = swift_getWitnessTable();
  v38 = v25;
  v39 = MEMORY[0x277CDF918];
  v12 = swift_getWitnessTable();
  v36 = v8;
  v37 = v12;
  v26 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(v28 + 24);
  v33 = v3;
  v34 = v21;
  v35 = v29;
  sub_21BE275DC();
  sub_21BE2847C();
  LOBYTE(v3) = sub_21BE27BCC();
  sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v3)
  {
    sub_21BE27BBC();
  }

  sub_21BE2816C();
  (*(v31 + 8))(v7, v4);
  v22 = v26;
  sub_21BE27DFC();
  (*(v30 + 8))(v11, v8);
  v36 = v8;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338(v18);
  v23 = *(v14 + 8);
  v23(v18, OpaqueTypeMetadata2);
  sub_21BD37338(v20);
  return (v23)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_21BCE0C0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  if (!*(v13 + 8))
  {
    v31 = type metadata accessor for FamilyMemberAbstractRowRUI();
LABEL_34:
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    goto LABEL_35;
  }

  v60 = *(v13 + 8);
  v56 = &v50 - v14;
  v59 = *v6;
  v57 = type metadata accessor for FamilyMemberAbstractRowRUI();
  v58 = v6;
  v16 = *(v6 + *(v57 + 44) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21BE26CAC();

  if (!v76)
  {
LABEL_33:
    v15 = v56;
    v31 = v57;
    v6 = v58;
    goto LABEL_34;
  }

  v50 = v76;
  v17 = [v76 members];
  sub_21BBE66D8();
  v18 = sub_21BE28C3C();

  v54 = a4;
  v55 = v8;
  v52 = a3;
  v53 = v12;
  v51 = v5;
  if (v18 >> 62)
  {
LABEL_31:
    v19 = sub_21BE2951C();
    if (v19)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_32:

    v5 = v51;
    a3 = v52;
    v8 = v55;
    v12 = v53;
    goto LABEL_33;
  }

LABEL_5:
  v20 = 0;
  v61 = v18 & 0xC000000000000001;
  while (1)
  {
    if (v61)
    {
      v21 = MEMORY[0x21CF047C0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v24 = [v21 altDSID];
    if (!v24)
    {
      goto LABEL_6;
    }

    v25 = v24;
    v26 = sub_21BE28A0C();
    v28 = v27;

    if (v26 == v59 && v60 == v28)
    {
      break;
    }

    v30 = sub_21BE2995C();

    if (v30)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_32;
    }
  }

LABEL_21:

  v32 = *(v58 + *(v57 + 40) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21BE26CAC();

  v33 = v76;
  v34 = sub_21BE289CC();
  v35 = [v33 profilePictureForFamilyMemberWithAltDSID:v34 pictureDiameter:24.0];

  v8 = v55;
  a3 = v52;
  v12 = v53;
  if (!v35)
  {

    v5 = v51;
    goto LABEL_33;
  }

  v36 = sub_21BE25BFC();
  v38 = v37;

  v15 = v56;
  if (qword_27CDB4E58 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v39 = 40.0;
  }

  else
  {
    v39 = 38.0;
  }

  sub_21BBBEE74(v36, v38);
  *&v76 = sub_21BC1FF18(v22);
  *(&v76 + 1) = v40;
  sub_21BB41FA4();
  v41 = sub_21BE27DBC();
  v43 = v42;
  v45 = v44;
  v47 = v46 & 1;
  LOBYTE(v74[0]) = v46 & 1;
  sub_21BBBEE74(v36, v38);
  sub_21BBA4A38(v41, v43, v47);

  sub_21BBBEE74(v36, v38);
  sub_21BBA4A38(v41, v43, v47);

  sub_21BBC7C7C(v41, v43, v47);

  sub_21BBBEF94(v36, v38);
  sub_21BBBEF94(v36, v38);
  LOBYTE(v68) = v47;
  sub_21BBC7C7C(v41, v43, v74[0]);

  sub_21BBBEF94(v36, v38);
  *&v76 = v36;
  *(&v76 + 1) = v38;
  *&v77 = v39;
  *(&v77 + 1) = v39;
  LOBYTE(v78) = 1;
  *(&v78 + 1) = v41;
  *&v79 = v43;
  BYTE8(v79) = v47;
  v80 = v45;
  v5 = v51;
  a3 = v52;
  v8 = v55;
  v12 = v53;
  v31 = v57;
  v6 = v58;
LABEL_35:
  sub_21BD37338(v6 + *(v31 + 36));
  v70 = v78;
  v71 = v79;
  v68 = v76;
  v69 = v77;
  v66 = 0;
  v67 = 1;
  v72 = v80;
  v73[0] = &v68;
  v73[1] = &v66;
  (*(v8 + 16))(v12, v15, v5);
  v73[2] = v12;
  sub_21BCE1294(&v76, v74);
  v65[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9978, &qword_21BE40A90);
  v65[1] = MEMORY[0x277CE1180];
  v65[2] = v5;
  v62 = sub_21BCE1304();
  v63 = MEMORY[0x277CE1170];
  v64 = a3;
  sub_21BDFE148(v73, 3uLL, v65);
  sub_21BCE13EC(&v76);
  v48 = *(v8 + 8);
  v48(v15, v5);
  v48(v12, v5);
  v74[2] = v70;
  v74[3] = v71;
  v75 = v72;
  v74[0] = v68;
  v74[1] = v69;
  return sub_21BCE13EC(v74);
}

uint64_t sub_21BCE1294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9978, &qword_21BE40A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BCE1304()
{
  result = qword_27CDB9980;
  if (!qword_27CDB9980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9978, &qword_21BE40A90);
    sub_21BCE1388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9980);
  }

  return result;
}

unint64_t sub_21BCE1388()
{
  result = qword_27CDB9988;
  if (!qword_27CDB9988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9990, &qword_21BE40A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9988);
  }

  return result;
}

uint64_t sub_21BCE13EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9978, &qword_21BE40A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FamilyMemberImageMarqueeView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9998, &qword_21BE40B30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  *v6 = sub_21BE2770C();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99A0, &qword_21BE40B38);
  sub_21BCE15B0(v8, v9, &v6[*(v11 + 44)]);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BB51074(v6, a1);
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99A8, &qword_21BE40B40) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_21BCE15B0@<X0>(void *a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v89 = a3;
  v5 = sub_21BE276EC();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v80 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v8 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C8, &qword_21BE40C08);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99D0, &qword_21BE40C10);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v85 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  sub_21BE2869C();
  sub_21BE26F2C();
  v78 = v102;
  v79 = v100[7];
  v76 = v105;
  v77 = v104;
  v120 = 1;
  v119 = v101;
  v118 = v103;
  v21 = *(a2 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v22 = v100[0];
  if (!v100[0])
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v23 = [v22 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v24 = sub_21BE28C3C();

  v25 = type metadata accessor for FAImageMarqueeViewModel();
  v26 = swift_allocObject();
  v98 = sub_21BC2AC78(v24);
  sub_21BC29DF8(&v98);

  *(v26 + 16) = v98;
  v99[3] = v25;
  v99[4] = &off_282D8B0F8;
  v99[0] = v26;
  sub_21BB3A35C(v99, v100);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v27 = a1;
  v28 = sub_21BE270CC();
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_0Tm(v99);
  v100[5] = v28;
  v100[6] = v30;
  sub_21BCE1F14();
  sub_21BE27F5C();
  sub_21BCE1F68(v100);
  sub_21BE2869C();
  sub_21BE26F2C();
  v74 = v108;
  v75 = v106;
  v72 = v111;
  v73 = v110;
  v94 = 1;
  v93 = v107;
  v92 = v109;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  v33 = sub_21BE2599C();
  v35 = v34;

  v112 = v33;
  v113 = v35;
  sub_21BB41FA4();
  v36 = sub_21BE27DBC();
  v38 = v37;
  LOBYTE(v35) = v39;
  sub_21BE27C0C();
  v40 = sub_21BE27D9C();
  v42 = v41;
  v44 = v43;
  v90 = v20;
  v46 = v45;

  sub_21BBC7C7C(v36, v38, v35 & 1);

  v112 = v40;
  v113 = v42;
  LOBYTE(v38) = v44 & 1;
  LOBYTE(v114) = v44 & 1;
  v115 = v46;
  v47 = v80;
  sub_21BE276DC();
  v48 = v81;
  sub_21BE2808C();
  (*(v83 + 8))(v47, v84);
  sub_21BBC7C7C(v40, v42, v38);

  sub_21BCE1FBC();
  v49 = v91;
  sub_21BE280BC();
  sub_21BB3A4CC(v48, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BE2869C();
  sub_21BE26F2C();
  v83 = v114;
  v84 = v112;
  v81 = v117;
  v82 = v116;
  v97 = 1;
  v96 = v113;
  v95 = v115;
  LOBYTE(v36) = v120;
  LOBYTE(v47) = v119;
  v66 = v118;
  v50 = v85;
  sub_21BCE2048(v90, v85);
  v67 = v94;
  v68 = v93;
  v69 = v92;
  v51 = v86;
  v52 = v87;
  v53 = *(v87 + 16);
  v54 = v49;
  v55 = v88;
  v53(v86, v54, v88);
  v70 = v97;
  v71 = v96;
  LODWORD(v80) = v95;
  v56 = v89;
  *v89 = 0;
  *(v56 + 8) = v36;
  v57 = v78;
  v56[2] = v79;
  *(v56 + 24) = v47;
  v56[4] = v57;
  *(v56 + 40) = v66;
  v58 = v76;
  v56[6] = v77;
  v56[7] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99E8, &unk_21BE40C60);
  sub_21BCE2048(v50, v56 + v59[12]);
  v60 = v56 + v59[16];
  *v60 = 0;
  v60[8] = v67;
  *(v60 + 2) = v75;
  v60[24] = v68;
  *(v60 + 4) = v74;
  v60[40] = v69;
  v61 = v72;
  *(v60 + 6) = v73;
  *(v60 + 7) = v61;
  v53(v56 + v59[20], v51, v55);
  v62 = v56 + v59[24];
  *v62 = 0;
  v62[8] = v70;
  *(v62 + 2) = v84;
  v62[24] = v71;
  *(v62 + 4) = v83;
  v62[40] = v80;
  v63 = v81;
  *(v62 + 6) = v82;
  *(v62 + 7) = v63;
  v64 = *(v52 + 8);
  v64(v91, v55);
  sub_21BB3A4CC(v90, &qword_27CDB99D0, &qword_21BE40C10);
  v64(v51, v55);
  return sub_21BB3A4CC(v50, &qword_27CDB99D0, &qword_21BE40C10);
}

unint64_t sub_21BCE1E24()
{
  result = qword_27CDB99B0;
  if (!qword_27CDB99B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB99A8, &qword_21BE40B40);
    sub_21BCE1EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB99B0);
  }

  return result;
}

unint64_t sub_21BCE1EB0()
{
  result = qword_27CDB99B8;
  if (!qword_27CDB99B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9998, &qword_21BE40B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB99B8);
  }

  return result;
}

unint64_t sub_21BCE1F14()
{
  result = qword_27CDB99D8;
  if (!qword_27CDB99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB99D8);
  }

  return result;
}

unint64_t sub_21BCE1FBC()
{
  result = qword_27CDB99E0;
  if (!qword_27CDB99E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB99C0, &qword_21BE40C00);
    sub_21BBF7AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB99E0);
  }

  return result;
}

uint64_t sub_21BCE2048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99D0, &qword_21BE40C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCE20B8()
{
  swift_getKeyPath();
  sub_21BCE3F04(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel);
  sub_21BE25F1C();

  return *(v0 + 16);
}

uint64_t sub_21BCE2158(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCE3F04(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BCE2268()
{
  v1 = sub_21BE26A4C();
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  sub_21BE28D7C();
  v0[22] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[23] = v5;
  v0[24] = v4;

  return MEMORY[0x2822009F8](sub_21BCE2364, v5, v4);
}