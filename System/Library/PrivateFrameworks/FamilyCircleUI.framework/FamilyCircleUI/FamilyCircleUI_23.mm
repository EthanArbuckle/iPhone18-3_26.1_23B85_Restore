uint64_t sub_21BDC9BF0()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  sub_21BDCEF64(v6, v5);
  type metadata accessor for AgeRangeError(0);
  v0[10] = -4006;
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
  sub_21BE25A6C();
  v7 = v0[9];
  v8 = sub_21BE25A7C();

  [sub_21BDC7650() dismissWithError:v8 response:0];
  swift_unknownObjectRelease();
  v9 = v0[22];
  v10 = v0[15];
  sub_21BDC83CC();

  v11 = v0[1];

  return v11();
}

id sub_21BDC9D64(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t sub_21BDC9DA4(uint64_t a1)
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

  return sub_21BDC9500(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[44] = a5;
  v6[45] = v5;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v8 = sub_21BE25D1C();
  v6[47] = v8;
  v9 = *(v8 - 8);
  v6[48] = v9;
  v10 = *(v9 + 64) + 15;
  v6[49] = swift_task_alloc();
  v11 = sub_21BE26A4C();
  v6[50] = v11;
  v12 = *(v11 - 8);
  v6[51] = v12;
  v13 = *(v12 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  sub_21BE28D7C();
  v6[55] = sub_21BE28D6C();
  v15 = sub_21BE28D0C();
  v6[56] = v15;
  v6[57] = v14;

  return MEMORY[0x2822009F8](sub_21BDCA028, v15, v14);
}

uint64_t sub_21BDCA028()
{
  v79 = v0;
  v1 = v0[45];
  swift_getKeyPath();
  v0[37] = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 ageRangeResponse], (v0[58] = v4) != 0))
  {
    v5 = v4;
    v6 = v0[45];
    v81 = AgeRangeAlertFlowStore.getAppMetadata()();
    if (v81.bundleID.value._object)
    {
      object = v81.bundleID.value._object;
      if (v81.appID.value._object)
      {
        countAndFlagsBits = v81.bundleID.value._countAndFlagsBits;
        v9 = v0[54];
        sub_21BE261CC();

        v10 = sub_21BE26A2C();
        v11 = sub_21BE28FCC();

        v12 = os_log_type_enabled(v10, v11);
        v13 = v0[54];
        v14 = v0[50];
        v15 = v0[51];
        if (v12)
        {
          v76 = v0[54];
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v78 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_21BB3D81C(countAndFlagsBits, object, &v78);
          _os_log_impl(&dword_21BB35000, v10, v11, "Extension: bundleID from xpc connection: %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v17);
          MEMORY[0x21CF05C50](v17, -1, -1);
          MEMORY[0x21CF05C50](v16, -1, -1);

          (*(v15 + 8))(v76, v14);
        }

        else
        {

          (*(v15 + 8))(v13, v14);
        }

        v49 = v0[48];
        v48 = v0[49];
        v51 = v0[46];
        v50 = v0[47];
        v52 = v0[43];
        v53 = v0[44];
        v77 = [v5 lowerbound];
        v75 = [v5 upperbound];
        sub_21BE25CEC();
        (*(v49 + 56))(v51, 1, 1, v50);
        v74 = [v5 validationLevel];
        v54 = sub_21BE289CC();
        v55 = sub_21BE289CC();

        v56 = sub_21BE25CAC();
        if ((*(v49 + 48))(v51, 1, v50) == 1)
        {
          v57 = 0;
        }

        else
        {
          v59 = v0[47];
          v58 = v0[48];
          v60 = v0[46];
          v57 = sub_21BE25CAC();
          (*(v58 + 8))(v60, v59);
        }

        v61 = v0[48];
        v72 = v0[47];
        v73 = v0[49];
        v62 = v0[41];
        v0[59] = [objc_allocWithZone(MEMORY[0x277D08200]) initWithAltDSID:v54 bundleID:v55 lowerbound:v77 upperbound:v75 response:v62 responseType:1 createdAt:v56 invalidatedAt:v57 validationLevel:v74];

        (*(v61 + 8))(v73, v72);
        if (v62 == 1 && !v0[42])
        {
          v63 = v0 + 10;
          v67 = v0[40];
          v68 = sub_21BE289CC();
          v0[60] = v68;

          v69 = [v5 lowerbound];
          v0[61] = v69;
          v70 = [v5 upperbound];
          v0[62] = v70;
          v0[10] = v0;
          v0[11] = sub_21BDCA8B0;
          v71 = swift_continuation_init();
          v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
          v0[26] = MEMORY[0x277D85DD0];
          v0[27] = 1107296256;
          v0[28] = sub_21BCF8794;
          v0[29] = &block_descriptor_26;
          v0[30] = v71;
          [v67 postAgeRangeNotificationWith:v68 lowerAgeBound:v69 upperAgeBound:v70 completion:v0 + 26];
        }

        else
        {

          v63 = v0 + 2;
          v64 = v0[59];
          v65 = v0[40];
          v0[2] = v0;
          v0[3] = sub_21BDCAB18;
          v66 = swift_continuation_init();
          v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
          v0[18] = MEMORY[0x277D85DD0];
          v0[19] = 1107296256;
          v0[20] = sub_21BCF8794;
          v0[21] = &block_descriptor_57;
          v0[22] = v66;
          [v65 saveAgeRangeWith:v64 completion:v0 + 18];
        }

        return MEMORY[0x282200938](v63);
      }
    }

    v33 = v0[55];

    v34 = v0[53];
    sub_21BE261CC();
    v35 = sub_21BE26A2C();
    v36 = sub_21BE28FCC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_21BB35000, v35, v36, "Extension: Failed to save age range from extension, nil bundleID", v37, 2u);
      MEMORY[0x21CF05C50](v37, -1, -1);
    }

    v38 = v0[53];
    v39 = v0[50];
    v40 = v0[51];

    (*(v40 + 8))(v38, v39);
    type metadata accessor for AgeRangeError(0);
    v0[39] = -4014;
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
    sub_21BE25A6C();
    v41 = v0[38];
    swift_willThrow();

    v43 = v0[53];
    v42 = v0[54];
    v44 = v0[52];
    v45 = v0[49];
    v46 = v0[46];

    v32 = v0[1];
  }

  else
  {
    v18 = v0[55];
    v19 = v0[52];

    sub_21BE261CC();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FCC();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[51];
    v23 = v0[52];
    v25 = v0[50];
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21BB35000, v20, v21, "Extension: Skipping saving age range from extension, nil ageRangeResponse", v26, 2u);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    (*(v24 + 8))(v23, v25);
    v28 = v0[53];
    v27 = v0[54];
    v29 = v0[52];
    v30 = v0[49];
    v31 = v0[46];

    v32 = v0[1];
  }

  return v32();
}

uint64_t sub_21BDCA8B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 504) = v3;
  v4 = *(v1 + 456);
  v5 = *(v1 + 448);
  if (v3)
  {
    v6 = sub_21BDCACF8;
  }

  else
  {
    v6 = sub_21BDCA9E0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDCA9E0()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);

  v3 = *(v0 + 472);
  v4 = *(v0 + 320);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BDCAB18;
  v5 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_21BCF8794;
  *(v0 + 168) = &block_descriptor_57;
  *(v0 + 176) = v5;
  [v4 saveAgeRangeWith:v3 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BDCAB18()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 512) = v3;
  v4 = *(v1 + 456);
  v5 = *(v1 + 448);
  if (v3)
  {
    v6 = sub_21BDCADCC;
  }

  else
  {
    v6 = sub_21BDCAC48;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDCAC48()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);

  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);
  v6 = *(v0 + 392);
  v7 = *(v0 + 368);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21BDCACF8()
{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[55];

  swift_willThrow();

  v8 = v0[63];
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];

  v14 = v0[1];

  return v14();
}

uint64_t sub_21BDCADCC()
{
  v1 = v0[64];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[55];

  swift_willThrow();

  v5 = v0[64];
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[46];

  v11 = v0[1];

  return v11();
}

void AgeRangeAlertFlowStore.handleSecondaryButtonAction(ageRangeContext:ageRangeController:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  swift_getKeyPath();
  v22[1] = v3;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v13 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v14 = *&v3[v13];
  if (v14)
  {
    v15 = v14;
    if ([v15 flowType] == 3)
    {
      [sub_21BDC7650() dismissWithError:0 response:0];
      swift_unknownObjectRelease();
      sub_21BDC83CC();
    }

    else
    {
      v16 = sub_21BE28DAC();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_21BE28D7C();
      sub_21BDC9D64(v10, v11);
      v17 = v3;
      v18 = a2;
      v19 = sub_21BE28D6C();
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D85700];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v10;
      v20[5] = v11;
      v20[6] = v12;
      v20[7] = v17;
      v20[8] = v18;
      sub_21BBA932C(0, 0, v9, &unk_21BE4D5B8, v20);
    }
  }
}

uint64_t sub_21BDCB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  sub_21BE28D7C();
  v8[15] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v8[16] = v10;
  v8[17] = v9;

  return MEMORY[0x2822009F8](sub_21BDCB194, v10, v9);
}

uint64_t sub_21BDCB194()
{
  v1 = v0[10];
  if (v1 && v1[2])
  {
    v2 = v0[11];
    v3 = v0[12];
    v5 = v1[4];
    v4 = v1[5];
    v0[18] = v4;
    sub_21BDC9D64(v1, v2);

    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_21BDCB384;
    v8 = v0[13];
    v7 = v0[14];

    return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v7, 2, 1, v5, v4);
  }

  else
  {
    v10 = v0[15];
    v11 = v0[13];

    type metadata accessor for AgeRangeError(0);
    v0[5] = -4004;
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
    sub_21BE25A6C();
    v12 = v0[4];
    v13 = sub_21BE25A7C();

    [sub_21BDC7650() dismissWithError:v13 response:0];
    swift_unknownObjectRelease();
    v14 = v0[13];
    sub_21BDC83CC();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21BDCB384()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[16];
    v5 = v3[17];

    return MEMORY[0x2822009F8](sub_21BDCB7C4, v4, v5);
  }

  else
  {
    v6 = v3[18];
    v7 = v3[14];

    v8 = v7;
    v9 = swift_task_alloc();
    v3[21] = v9;
    *v9 = v3;
    v9[1] = sub_21BDCB518;
    v10 = v3[14];

    return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)((v3 + 2), v10);
  }
}

uint64_t sub_21BDCB518()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21BDCB638, v4, v3);
}

uint64_t sub_21BDCB638()
{
  v20 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);

  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 27);
  v16 = *(v0 + 16);
  v17 = v4;
  v18 = v5;
  v19 = v6;
  sub_21BD5EA88(&v16);
  type metadata accessor for AgeRangeError(0);
  *(v0 + 72) = -4003;
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
  sub_21BE25A6C();
  v7 = *(v0 + 64);
  v8 = sub_21BE25A7C();

  v9 = sub_21BDC7650();
  if (v1)
  {
  }

  else
  {
    [v9 dismissWithError:v8 response:0];
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  sub_21BDC83CC();
  sub_21BDCEF64(v13, v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_21BDCB7C4()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  sub_21BDCEF64(v6, v5);
  type metadata accessor for AgeRangeError(0);
  v0[7] = -4006;
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
  sub_21BE25A6C();
  v7 = v0[6];
  v8 = sub_21BE25A7C();

  [sub_21BDC7650() dismissWithError:v8 response:0];
  swift_unknownObjectRelease();
  v9 = v0[20];
  v10 = v0[13];
  sub_21BDC83CC();

  v11 = v0[1];

  return v11();
}

Swift::tuple_bundleID_String_optional_appID_String_optional __swiftcall AgeRangeAlertFlowStore.getAppMetadata()()
{
  v1 = v0;
  v2 = sub_21BE2632C();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  v59 = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  v56 = v19;
  sub_21BE25F1C();

  v20 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = [v21 bundleID];
    if (v22)
    {
      v52 = v11;
      v23 = v22;
      v24 = sub_21BE28A0C();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        sub_21BE261CC();
        v28 = sub_21BE26A2C();
        v29 = sub_21BE28FCC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_21BB35000, v28, v29, "Using bundleID and appID override from request model", v30, 2u);
          MEMORY[0x21CF05C50](v30, -1, -1);
        }

        (*(v12 + 8))(v18, v52);

        v31 = v24;
        v32 = v26;
        goto LABEL_18;
      }

      v11 = v52;
    }
  }

  sub_21BE261CC();
  v33 = sub_21BE26A2C();
  v34 = sub_21BE28FCC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v11;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_21BB35000, v33, v34, "Using bundleID and appID from xpcConnection", v36, 2u);
    v37 = v36;
    v11 = v35;
    MEMORY[0x21CF05C50](v37, -1, -1);
  }

  (*(v12 + 8))(v16, v11);
  swift_getKeyPath();
  v58 = v1;
  sub_21BE25F1C();

  v38 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  sub_21BBA3854(v1 + v38, v10, &qword_27CDBD190, &qword_21BE4D528);
  v39 = v55;
  v40 = *(v55 + 48);
  if (v40(v10, 1, v2))
  {
    sub_21BB3A4CC(v10, &qword_27CDBD190, &qword_21BE4D528);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v41 = v53;
    (*(v39 + 16))(v53, v10, v2);
    sub_21BB3A4CC(v10, &qword_27CDBD190, &qword_21BE4D528);
    v31 = sub_21BE2631C();
    v42 = v39;
    v32 = v43;
    (*(v42 + 8))(v41, v2);
  }

  swift_getKeyPath();
  v57 = v1;
  sub_21BE25F1C();

  v44 = v54;
  sub_21BBA3854(v1 + v38, v54, &qword_27CDBD190, &qword_21BE4D528);
  if (v40(v44, 1, v2))
  {
    sub_21BB3A4CC(v44, &qword_27CDBD190, &qword_21BE4D528);
    v24 = 0;
    v26 = 0;
  }

  else
  {
    v45 = v55;
    v46 = v53;
    (*(v55 + 16))(v53, v44, v2);
    sub_21BB3A4CC(v44, &qword_27CDBD190, &qword_21BE4D528);
    v24 = sub_21BE262FC();
    v26 = v47;
    (*(v45 + 8))(v46, v2);
  }

LABEL_18:
  v48 = v31;
  v49 = v32;
  v50 = v24;
  v51 = v26;
  result.appID.value._object = v51;
  result.appID.value._countAndFlagsBits = v50;
  result.bundleID.value._object = v49;
  result.bundleID.value._countAndFlagsBits = v48;
  return result;
}

uint64_t AgeRangeAlertFlowStore.handleShareAgeRangeAction(with:selectedState:sharedState:altDSIDList:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 320) = a4;
  *(v5 + 328) = v4;
  *(v5 + 536) = a2;
  *(v5 + 304) = a1;
  *(v5 + 312) = a3;
  v6 = sub_21BE26A4C();
  *(v5 + 336) = v6;
  v7 = *(v6 - 8);
  *(v5 + 344) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = sub_21BE28D7C();
  *(v5 + 376) = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  *(v5 + 384) = v10;
  *(v5 + 392) = v9;

  return MEMORY[0x2822009F8](sub_21BDCC05C, v10, v9);
}

uint64_t sub_21BDCC05C()
{
  v22 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 320);
  sub_21BE261CC();

  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);
  if (v5)
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 536);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v10;
    *(v11 + 8) = 2080;
    v13 = MEMORY[0x21CF03DF0](v9, MEMORY[0x277D837D0]);
    v15 = sub_21BB3D81C(v13, v14, &v21);

    *(v11 + 10) = v15;
    _os_log_impl(&dword_21BB35000, v3, v4, "Share age range button clicked for state: %d, altDSIDList: %s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  v16 = *(v8 + 8);
  v16(v6, v7);
  *(v0 + 400) = v16;
  v17 = *(v0 + 368);
  *(v0 + 408) = sub_21BE28D6C();
  v19 = sub_21BE28D0C();
  *(v0 + 416) = v19;
  *(v0 + 424) = v18;

  return MEMORY[0x2822009F8](sub_21BDCC22C, v19, v18);
}

uint64_t sub_21BDCC22C()
{
  v1 = *(*(v0 + 320) + 16);
  *(v0 + 432) = v1;
  if (v1)
  {
    v2 = *(v0 + 328);
    v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
    *(v0 + 440) = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    *(v0 + 448) = v3;
    swift_beginAccess();
    *(v0 + 456) = 0;
    v5 = *(v0 + 440);
    v4 = *(v0 + 448);
    v6 = *(v0 + 320);
    v7 = *(v0 + 328);
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);

    v10 = sub_21BE289CC();
    *(v0 + 464) = v10;

    swift_getKeyPath();
    *(v0 + 264) = v7;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v11 = *(v7 + v4);
    if (v11)
    {
      v12 = *(v7 + v4);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v12 = sub_21BE293EC();
    }

    *(v0 + 472) = v12;
    v16 = *(v0 + 536);
    v17 = *(v0 + 304);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCCA74;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_33;
    *(v0 + 112) = v18;
    v19 = v11;
    [v17 setGlobalStateForAltDSID:v16 forAltDSID:v10 privacyVersion:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v13 = *(v0 + 408);

    v14 = *(v0 + 384);
    v15 = *(v0 + 392);

    return MEMORY[0x2822009F8](sub_21BDCC4C4, v14, v15);
  }
}

uint64_t sub_21BDCC4C4()
{
  v1 = *(v0 + 536);
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v7 = *(v0 + 376);
      v8 = *(v0 + 328);

      swift_getKeyPath();
      *(v0 + 272) = v8;
      sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
      sub_21BE25F1C();

      v9 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
      swift_beginAccess();
      v10 = *(v8 + v9);
      if (v10 && ![v10 entryPoint])
      {
        v42 = *(v0 + 312);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 540) = 1;

        sub_21BE26CBC();
        goto LABEL_24;
      }
    }

    else
    {
      if (v1 != 3)
      {
        v24 = *(v0 + 376);
        v25 = *(v0 + 352);

        sub_21BE261CC();
        v26 = sub_21BE26A2C();
        v27 = sub_21BE28FDC();
        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 400);
        v31 = *(v0 + 344);
        v30 = *(v0 + 352);
        v32 = *(v0 + 336);
        if (v28)
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_21BB35000, v26, v27, "Age sharing global state shouldn't be unknown here - this is an error", v33, 2u);
          MEMORY[0x21CF05C50](v33, -1, -1);
        }

        v29(v30, v32);
        goto LABEL_24;
      }

      v2 = *(v0 + 376);
      v3 = *(v0 + 328);

      swift_getKeyPath();
      *(v0 + 296) = v3;
      sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
      sub_21BE25F1C();

      v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
      swift_beginAccess();
      v5 = *(v3 + v4);
      if (v5 && ![v5 entryPoint])
      {
        if (qword_27CDB4F38 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 328);
        [sub_21BDC7650() dismissWithError:qword_27CDB8BF8 response:0];
        goto LABEL_22;
      }
    }

    v11 = *(v0 + 328);
    [sub_21BDC7650() dismissWithError:0 response:0];
LABEL_22:
    swift_unknownObjectRelease();
    v40 = *(v0 + 328);
    sub_21BDC83CC();
    goto LABEL_24;
  }

  v12 = *(v0 + 328);
  swift_getKeyPath();
  *(v0 + 488) = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *(v0 + 280) = v12;
  *(v0 + 496) = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v13 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (!v14 || (v15 = *(v0 + 432), v16 = [v14 entryPoint], !v15) || v16)
  {
    v35 = *(v0 + 488);
    v34 = *(v0 + 496);
    v36 = *(v0 + 376);
    v37 = *(v0 + 328);

    swift_getKeyPath();
    *(v0 + 288) = v37;
    sub_21BE25F1C();

    v38 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
    swift_beginAccess();
    v39 = [*(v37 + v38) ageRangeResponse];
    [sub_21BDC7650() dismissWithError:0 response:v39];
    swift_unknownObjectRelease();
    v41 = *(v0 + 328);
    sub_21BDC83CC();

LABEL_24:
    v44 = *(v0 + 352);
    v43 = *(v0 + 360);

    v45 = *(v0 + 8);

    return v45();
  }

  v17 = *(v0 + 320);
  *(v0 + 504) = 0;
  v18 = *(v17 + 40);
  *(v0 + 512) = v18;
  v19 = *(v17 + 32);

  v20 = swift_task_alloc();
  *(v0 + 520) = v20;
  *v20 = v0;
  v20[1] = sub_21BDCCF2C;
  v21 = *(v0 + 328);
  v22 = *(v0 + 304);

  return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v22, 1, 0, v19, v18);
}

uint64_t sub_21BDCCA74()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 480) = v3;
  v4 = *(v1 + 424);
  v5 = *(v1 + 416);
  if (v3)
  {
    v6 = sub_21BDCCE2C;
  }

  else
  {
    v6 = sub_21BDCCBA4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDCCBA4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);

  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 408);

    v5 = *(v0 + 384);
    v6 = *(v0 + 392);

    return MEMORY[0x2822009F8](sub_21BDCC4C4, v5, v6);
  }

  else
  {
    v7 = *(v0 + 448);
    v8 = *(v0 + 456) + 1;
    *(v0 + 456) = v8;
    v9 = *(v0 + 440);
    v10 = *(v0 + 328);
    v11 = *(v0 + 320) + 16 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);

    v14 = sub_21BE289CC();
    *(v0 + 464) = v14;

    swift_getKeyPath();
    *(v0 + 264) = v10;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v15 = *(v10 + v7);
    if (v15)
    {
      v16 = *(v10 + v7);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v16 = sub_21BE293EC();
    }

    *(v0 + 472) = v16;
    v17 = *(v0 + 536);
    v18 = *(v0 + 304);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCCA74;
    v19 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_33;
    *(v0 + 112) = v19;
    v20 = v15;
    [v18 setGlobalStateForAltDSID:v17 forAltDSID:v14 privacyVersion:v16 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BDCCE2C()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[51];

  swift_willThrow();

  v5 = v0[48];
  v6 = v0[49];

  return MEMORY[0x2822009F8](sub_21BDCCEAC, v5, v6);
}

uint64_t sub_21BDCCEAC()
{
  v1 = v0[60];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BDCCF2C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v9 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = v2[64];

    v5 = v2[48];
    v6 = v2[49];
    v7 = sub_21BDCD250;
  }

  else
  {
    v5 = v2[48];
    v6 = v2[49];
    v7 = sub_21BDCD048;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BDCD048()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[54];

  if (v2 + 1 == v3)
  {
    v4 = v0[66];
    v6 = v0[61];
    v5 = v0[62];
    v7 = v0[47];
    v8 = v0[41];

    swift_getKeyPath();
    v0[36] = v8;
    sub_21BE25F1C();

    v9 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
    swift_beginAccess();
    v10 = [*(v8 + v9) ageRangeResponse];
    v11 = sub_21BDC7650();
    if (v4)
    {
    }

    else
    {
      [v11 dismissWithError:0 response:v10];
      swift_unknownObjectRelease();
    }

    v20 = v0[41];
    sub_21BDC83CC();

    v22 = v0[44];
    v21 = v0[45];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v12 = v0[63] + 1;
    v0[63] = v12;
    v13 = v0[40] + 16 * v12;
    v14 = *(v13 + 40);
    v0[64] = v14;
    v15 = *(v13 + 32);

    v16 = swift_task_alloc();
    v0[65] = v16;
    *v16 = v0;
    v16[1] = sub_21BDCCF2C;
    v17 = v0[41];
    v18 = v0[38];

    return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v18, 1, 0, v15, v14);
  }
}

uint64_t sub_21BDCD250()
{
  v1 = v0[66];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];

  v5 = v0[1];

  return v5();
}

uint64_t AgeRangeAlertFlowStore.setShareState(state:with:for:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = v3;
  *(v4 + 168) = a2;
  *(v4 + 272) = a1;
  sub_21BE28D7C();
  *(v4 + 192) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v4 + 200) = v6;
  *(v4 + 208) = v5;

  return MEMORY[0x2822009F8](sub_21BDCD370, v6, v5);
}

uint64_t sub_21BDCD370()
{
  v1 = *(*(v0 + 176) + 16);
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
    *(v0 + 224) = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    *(v0 + 232) = v3;
    swift_beginAccess();
    *(v0 + 240) = 0;
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = *(v6 + 32);
    v8 = *(v6 + 40);

    v10 = sub_21BE289CC();
    *(v0 + 248) = v10;

    swift_getKeyPath();
    *(v0 + 80) = v7;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v11 = *(v7 + v4);
    if (v11)
    {
      v12 = *(v7 + v4);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v12 = sub_21BE293EC();
    }

    *(v0 + 256) = v12;
    v16 = *(v0 + 168);
    v17 = *(v0 + 272);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCD608;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_44_0;
    *(v0 + 112) = v18;
    v19 = v11;
    [v16 setGlobalStateForAltDSID:v17 forAltDSID:v10 privacyVersion:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v13 = *(v0 + 192);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_21BDCD608()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 208);
  v5 = *(v1 + 200);
  if (v3)
  {
    v6 = sub_21BDCD9C0;
  }

  else
  {
    v6 = sub_21BDCD738;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDCD738()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);

  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 192);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 240) + 1;
    *(v0 + 240) = v8;
    v9 = *(v0 + 224);
    v10 = *(v0 + 184);
    v11 = *(v0 + 176) + 16 * v8;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);

    v14 = sub_21BE289CC();
    *(v0 + 248) = v14;

    swift_getKeyPath();
    *(v0 + 80) = v10;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v15 = *(v10 + v7);
    if (v15)
    {
      v16 = *(v10 + v7);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v16 = sub_21BE293EC();
    }

    *(v0 + 256) = v16;
    v17 = *(v0 + 168);
    v18 = *(v0 + 272);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCD608;
    v19 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_44_0;
    *(v0 + 112) = v19;
    v20 = v15;
    [v17 setGlobalStateForAltDSID:v18 forAltDSID:v14 privacyVersion:v16 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BDCD9C0()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[24];

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[33];

  return v5();
}

uint64_t AgeRangeAlertFlowStore.handleContinueAction(with:sharedState:altDSIDList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_21BE26A4C();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = sub_21BE28D7C();
  v4[34] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[35] = v9;
  v4[36] = v8;

  return MEMORY[0x2822009F8](sub_21BDCDB3C, v9, v8);
}

uint64_t sub_21BDCDB3C()
{
  v1 = v0[32];
  sub_21BE261CC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Continue tapped, setting state to askFirst", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];

  (*(v8 + 8))(v6, v7);
  v0[37] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v0[38] = v10;
  v0[39] = v9;

  return MEMORY[0x2822009F8](sub_21BDCDC6C, v10, v9);
}

uint64_t sub_21BDCDC6C()
{
  v1 = *(v0[28] + 16);
  v0[40] = v1;
  if (v1)
  {
    v2 = v0[29];
    v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
    v0[41] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    v0[42] = v3;
    swift_beginAccess();
    v0[43] = 0;
    v5 = v0[41];
    v4 = v0[42];
    v6 = v0[28];
    v7 = v0[29];
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);

    v10 = sub_21BE289CC();
    v0[44] = v10;

    swift_getKeyPath();
    v0[24] = v7;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v11 = *(v7 + v4);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v12 = sub_21BE293EC();
    }

    v0[45] = v12;
    v16 = v0[26];
    v0[2] = v0;
    v0[3] = sub_21BDCE0B0;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BCF8794;
    v0[13] = &block_descriptor_48;
    v0[14] = v17;
    v18 = v11;
    [v16 setGlobalStateForAltDSID:2 forAltDSID:v10 privacyVersion:v12 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[37];

    v14 = v0[35];
    v15 = v0[36];

    return MEMORY[0x2822009F8](sub_21BDCDEF8, v14, v15);
  }
}

uint64_t sub_21BDCDEF8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);

  swift_getKeyPath();
  *(v0 + 200) = v2;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 && ![v4 entryPoint])
  {
    v7 = *(v0 + 216);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 376) = 1;

    sub_21BE26CBC();
  }

  else
  {
    v5 = *(v0 + 232);
    [sub_21BDC7650() dismissWithError:0 response:0];
    swift_unknownObjectRelease();
    v6 = *(v0 + 232);
    sub_21BDC83CC();
  }

  v8 = *(v0 + 256);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BDCE0B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 368) = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 304);
  if (v3)
  {
    v6 = sub_21BDCE45C;
  }

  else
  {
    v6 = sub_21BDCE1E0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDCE1E0()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);

  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 296);

    v5 = *(v0 + 280);
    v6 = *(v0 + 288);

    return MEMORY[0x2822009F8](sub_21BDCDEF8, v5, v6);
  }

  else
  {
    v7 = *(v0 + 336);
    v8 = *(v0 + 344) + 1;
    *(v0 + 344) = v8;
    v9 = *(v0 + 328);
    v10 = *(v0 + 232);
    v11 = *(v0 + 224) + 16 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);

    v14 = sub_21BE289CC();
    *(v0 + 352) = v14;

    swift_getKeyPath();
    *(v0 + 192) = v10;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v15 = *(v10 + v7);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v16 = sub_21BE293EC();
    }

    *(v0 + 360) = v16;
    v17 = *(v0 + 208);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCE0B0;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_48;
    *(v0 + 112) = v18;
    v19 = v15;
    [v17 setGlobalStateForAltDSID:2 forAltDSID:v14 privacyVersion:v16 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BDCE45C()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[37];

  swift_willThrow();

  v5 = v0[35];
  v6 = v0[36];

  return MEMORY[0x2822009F8](sub_21BDCE4DC, v5, v6);
}

uint64_t sub_21BDCE4DC()
{
  v1 = v0[34];
  v2 = v0[32];

  v3 = v0[1];
  v4 = v0[46];

  return v3();
}

unint64_t sub_21BDCE54C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21BE29ACC();
  sub_21BE28ABC();
  v6 = sub_21BE29B0C();

  return sub_21BBB349C(a1, a2, v6);
}

void *sub_21BDCE5C4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21BDCE5E4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21BDCE614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, &v13, &qword_27CDB57D8, &qword_21BE32860);
      v5 = v13;
      v6 = v14;
      result = sub_21BDCE54C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21BB414D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BDCE7A0(uint64_t a1)
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
  v11[1] = sub_21BBB7EB8;

  return sub_21BDCB0F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21BDCE87C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BDCE910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_21BDCE96C()
{
  sub_21BDCEA48();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21BE25F5C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BDCEA48()
{
  if (!qword_27CDBD250)
  {
    sub_21BE2632C();
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBD250);
    }
  }
}

void sub_21BDCEAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE2870C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE2874C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v14 = sub_21BE28D7C();
    MEMORY[0x28223BE20](v14);
    *(&v20 - 2) = a1;
    *(&v20 - 1) = a2;
    sub_21BDC8D50(sub_21BDCEEC4, (&v20 - 4));
  }

  else
  {
    v15 = dispatch_semaphore_create(0);
    sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
    v21 = v5;
    v22 = v9;
    v20 = sub_21BE2925C();
    sub_21BE2873C();
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = v15;
    aBlock[4] = sub_21BDCEE74;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BB42A18;
    aBlock[3] = &block_descriptor_74_0;
    v17 = _Block_copy(aBlock);

    v18 = v15;

    aBlock[0] = MEMORY[0x277D84F90];
    sub_21BDCEF1C(&qword_280BD69E0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
    sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
    sub_21BE294DC();
    v19 = v20;
    MEMORY[0x21CF04410](0, v13, v8, v17);
    _Block_release(v17);

    (*(v21 + 8))(v8, v4);
    (*(v10 + 8))(v13, v22);
    sub_21BE2936C();
  }
}

uint64_t sub_21BDCEE74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  return sub_21BE2937C();
}

uint64_t block_copy_helper_72_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BDCEEC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21BDCEEF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21BDCEF1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21BDCEF64(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_21BDCEFAC()
{
  result = qword_27CDBD268;
  if (!qword_27CDBD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD268);
  }

  return result;
}

uint64_t sub_21BDCF000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21BDCF070()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection) = v4;

  return v4;
}

unint64_t sub_21BDCF0D0()
{
  result = qword_27CDBD270;
  if (!qword_27CDBD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD270);
  }

  return result;
}

uint64_t sub_21BDCF180(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  v17 = sub_21BC2C520;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21BBB1C7C;
  v16 = &block_descriptor_58;
  v7 = _Block_copy(&v13);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v17 = sub_21BDD3BD8;
  v18 = v8;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21BDCF570;
  v16 = &block_descriptor_53_0;
  v9 = _Block_copy(&v13);

  v10 = [a1 sinkWithCompletion:v7 receiveInput:v9];

  _Block_release(v9);
  _Block_release(v7);
  v11 = *(v3 + 16);
  *(v3 + 16) = v10;

  return v3;
}

void sub_21BDCF308(uint64_t a1, void (*a2)(id))
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  swift_unknownObjectRetain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 eventBody];
    swift_unknownObjectRelease();
    if (v12)
    {
      sub_21BE2612C();
      v13 = sub_21BE26A2C();
      v14 = sub_21BE28FCC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21BB35000, v13, v14, "Event received ", v15, 2u);
        MEMORY[0x21CF05C50](v15, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
      a2(v12);

      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_21BE2612C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21BB35000, v16, v17, "Event received wrong type", v18, 2u);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
}

uint64_t sub_21BDCF570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_21BDCF5D0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v4 = sub_21BE25D6C();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21BE2922C();
  v8 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v9 = sub_21BE2874C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_21BE2924C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21BE295EC();

  v30 = 0xD00000000000001DLL;
  v31 = 0x800000021BE61F70;
  MEMORY[0x21CF03CA0](a1, a2);
  (*(v12 + 104))(v15, *MEMORY[0x277D85268], v11);
  sub_21BE2872C();
  v30 = MEMORY[0x277D84F90];
  sub_21BDD389C(&unk_280BD6938, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8278, &qword_21BE3B5F8);
  sub_21BB3B038(&qword_280BD6998, &qword_27CDB8278, &qword_21BE3B5F8);
  sub_21BE294DC();
  v16 = sub_21BE2927C();
  sub_21BE25D5C();
  v17 = sub_21BE25D2C();
  v19 = v18;
  (*(v28 + 8))(v7, v29);
  v30 = v17;
  v31 = v19;
  MEMORY[0x21CF03CA0](46, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v25, v26);
  v20 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v21 = sub_21BE289CC();

  v22 = [v20 initWithIdentifier:v21 targetQueue:v16 waking:0];

  return v22;
}

void FamilySettingsView.init()(uint64_t a1@<X8>)
{
  *a1 = sub_21BDCFB14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_21BDCF9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  (*(v8 + 32))(v11 + v10, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_21BE2633C();
}

id sub_21BDCFB14()
{
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_280BD7CD0;

  return v1;
}

uint64_t FamilySettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v110 = *MEMORY[0x277D85DE8];
  v3 = sub_21BE25B9C();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25DFC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21BE25A9C();
  v89 = *(v90 - 8);
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE289BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_21BE25AAC();
  v87 = *(v94 - 8);
  v88 = v94 - 8;
  v101 = v87;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v104 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21BE2884C();
  v103 = *(v105 - 8);
  v16 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_21BE2757C();
  v18 = *(v84 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD278, &qword_21BE4D950);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v80 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD280, &qword_21BE4D958);
  v82 = *(v25 - 1);
  v26 = *(v82 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD288, &qword_21BE4D960);
  v83 = *(v99 - 1);
  v29 = *(v83 + 64);
  MEMORY[0x28223BE20](v99);
  v31 = &v80 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD290, &qword_21BE4D968);
  v92 = *(v32 - 8);
  v93 = v32;
  v33 = *(v92 + 64);
  MEMORY[0x28223BE20](v32);
  v100 = &v80 - v34;
  v36 = *v2;
  v35 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 16);
  sub_21BDD074C(v24);
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  *(v37 + 32) = v2;
  v38 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD298, &qword_21BE4D970) + 36)];
  *v38 = sub_21BDD0E90;
  v38[1] = v37;
  v38[2] = 0;
  v38[3] = 0;
  sub_21BDD0E9C(v36, v35, v2);
  v39 = sub_21BE271CC();
  v40 = sub_21BE27B7C();
  v41 = &v24[v21[9]];
  *v41 = v39;
  v41[8] = v40;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v80 = objc_opt_self();
  v43 = [v80 bundleForClass_];
  v44 = sub_21BE2599C();
  v46 = v45;

  v106 = v44;
  v107 = v46;
  v47 = sub_21BDD0EAC();
  v48 = sub_21BB41FA4();
  v49 = MEMORY[0x277D837D0];
  sub_21BE27F9C();

  sub_21BB3A4CC(v24, &qword_27CDBD278, &qword_21BE4D950);
  v50 = v81;
  v51 = v84;
  (*(v18 + 104))(v81, *MEMORY[0x277CDDDC0], v84);
  v106 = v21;
  v107 = v49;
  v108 = v47;
  v109 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE280AC();
  (*(v18 + 8))(v50, v51);
  (*(v82 + 8))(v28, v25);
  v106 = v25;
  v107 = OpaqueTypeConformance2;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v99;
  v84 = v53;
  sub_21BE2804C();
  (*(v83 + 8))(v31, v54);
  v55 = v102;
  *v102 = 0xD000000000000021;
  v55[1] = 0x800000021BE5B760;
  v56 = *MEMORY[0x277D4D788];
  (*(v103 + 104))();
  sub_21BE289AC();
  type metadata accessor for FamilyChecklistStore();
  v83 = swift_getObjCClassFromMetadata();
  v57 = v80;
  v58 = [v80 bundleForClass_];
  v59 = [v58 bundleURL];

  v60 = v86;
  sub_21BE25B5C();

  v61 = *MEMORY[0x277CC9118];
  v89 = *(v89 + 104);
  v62 = v90;
  (v89)(v60, v61, v90);
  sub_21BE25DBC();
  sub_21BE25ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2E8, &qword_21BE4D990);
  v63 = *(v87 + 72);
  v64 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  *(swift_allocObject() + 16) = xmmword_21BE32770;
  sub_21BE289AC();
  v65 = [v57 bundleForClass_];
  v66 = [v65 bundleURL];

  sub_21BE25B5C();
  (v89)(v60, v61, v62);
  sub_21BE25DBC();
  sub_21BE25ABC();
  v67 = objc_opt_self();
  v106 = 0;
  v68 = [v67 urlDestinationTo:1 error:&v106];
  v69 = v106;
  if (v68)
  {
    v70 = v68;
    v71 = v95;
    sub_21BE25B5C();
    v72 = v69;

    v106 = v99;
    v107 = v84;
    swift_getOpaqueTypeConformance2();
    v73 = v102;
    v74 = v104;
    v75 = v93;
    v76 = v100;
    sub_21BE27E5C();

    (*(v97 + 8))(v71, v98);
    (*(v101 + 8))(v74, v94);
    (*(v103 + 8))(v73, v105);
    result = (*(v92 + 8))(v76, v75);
    v78 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v79 = v106;
    sub_21BE25A8C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDD074C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD378, &unk_21BE4DC60);
  v1 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v3 = (&v29 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v29 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2D8, &qword_21BE4D988);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v29 - v10;
  type metadata accessor for FamilySettingsApplication();
  sub_21BDD389C(&qword_27CDBD370, type metadata accessor for FamilySettingsApplication);
  v12 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v13 = v36;
  if (v38 >> 62)
  {
    if (v38 >> 62 != 1)
    {
      *v11 = sub_21BE2770C();
      *(v11 + 1) = 0;
      v11[16] = 1;
      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD380, qword_21BE4DD00) + 44)];
      v21 = v29;
      sub_21BE26EEC();
      v23 = v30;
      v22 = v31;
      v24 = *(v31 + 16);
      v25 = v32;
      v24(v30, v21, v32);
      *v20 = 0;
      v20[8] = 1;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBB0, &qword_21BE48610);
      v24(&v20[*(v26 + 48)], v23, v25);
      v27 = &v20[*(v26 + 64)];
      *v27 = 0;
      v27[8] = 1;
      v28 = *(v22 + 8);
      v28(v21, v25);
      v28(v23, v25);
      sub_21BBA3854(v11, v3, &qword_27CDBD2D8, &qword_21BE4D988);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDBD2D0, &qword_27CDBD2D8, &qword_21BE4D988);
      sub_21BDD1100();
      sub_21BE2784C();
      return sub_21BB3A4CC(v11, &qword_27CDBD2D8, &qword_21BE4D988);
    }

    v32 = v37;
  }

  else
  {
    v32 = v37;
  }

  v14 = sub_21BE26EAC();
  v15 = *&v14[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager];

  v16 = sub_21BE26EAC();
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v17 = sub_21BE270CC();
  *v3 = v13;
  v3[1] = v15;
  v3[2] = v32;
  v3[3] = v17;
  v3[4] = v18;
  swift_storeEnumTagMultiPayload();
  sub_21BB3B038(&qword_27CDBD2D0, &qword_27CDBD2D8, &qword_21BE4D988);
  sub_21BDD1100();
  return sub_21BE2784C();
}

void sub_21BDD0CF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  type metadata accessor for FamilySettingsApplication();
  sub_21BDD389C(&qword_27CDBD370, type metadata accessor for FamilySettingsApplication);
  v4 = sub_21BE26EAC();
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_21BE28D7C();
  v6 = v4;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BC54908(0, 0, v3, &unk_21BE4DC58, v8);
}

void sub_21BDD0E90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21BDD0CF8();
}

id sub_21BDD0E9C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t sub_21BDD0EAC()
{
  result = qword_27CDBD2A0;
  if (!qword_27CDBD2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD278, &qword_21BE4D950);
    sub_21BDD0F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD2A0);
  }

  return result;
}

unint64_t sub_21BDD0F38()
{
  result = qword_27CDBD2A8;
  if (!qword_27CDBD2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD298, &qword_21BE4D970);
    sub_21BDD0FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD2A8);
  }

  return result;
}

unint64_t sub_21BDD0FC4()
{
  result = qword_27CDBD2B0;
  if (!qword_27CDBD2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD2B8, &qword_21BE4D978);
    sub_21BDD1048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD2B0);
  }

  return result;
}

unint64_t sub_21BDD1048()
{
  result = qword_27CDBD2C0;
  if (!qword_27CDBD2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD2C8, &qword_21BE4D980);
    sub_21BB3B038(&qword_27CDBD2D0, &qword_27CDBD2D8, &qword_21BE4D988);
    sub_21BDD1100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD2C0);
  }

  return result;
}

unint64_t sub_21BDD1100()
{
  result = qword_27CDBD2E0;
  if (!qword_27CDBD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD2E0);
  }

  return result;
}

uint64_t sub_21BDD1180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BDD11C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

id sub_21BDD121C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2F8, &unk_21BE4DBA8);
  sub_21BE27B1C();
  v5 = *(v8 + 16);

  v6 = objc_opt_self();
  return sub_21BDD1814(v4, v5, v2, v3, v1, [v6 sharedInstance]);
}

void sub_21BDD1304(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v1[1] accountStore];
  v5 = [objc_allocWithZone(MEMORY[0x277CEC808]) initWithAccountStore:v4 grandSlamAccount:v3 appTokenID:*MEMORY[0x277CEC6F0]];

  if (v5)
  {
    type metadata accessor for FamilySettingsView.Content.Coordinator();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDD13A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDD14C8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BDD1404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDD14C8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BDD1468()
{
  sub_21BDD14C8();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BDD14C8()
{
  result = qword_27CDBD2F0;
  if (!qword_27CDBD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD2F0);
  }

  return result;
}

void *sub_21BDD151C(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[2] = 0;
  a2[3] = a1;
  a2[4] = &protocol witness table for LocationViewModel;
  v9 = [objc_opt_self() findMyLocationChangeStream];
  v10 = [v9 publisher];

  v11 = sub_21BDCF5D0(0x6E6F697461636F6CLL, 0xE800000000000000);
  v12 = [v10 subscribeOn_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7830, &unk_21BE388C0);
  swift_allocObject();
  v13 = v12;

  v14 = sub_21BDCF180(v13, sub_21BDD3BD0, a2);
  v15 = a2[2];
  a2[2] = v14;

  sub_21BE2612C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21BB35000, v16, v17, "LocationShareListener started", v18, 2u);
    MEMORY[0x21CF05C50](v18, -1, -1);
    v19 = v13;
  }

  else
  {
    v19 = v16;
    v16 = v13;
  }

  (*(v5 + 8))(v8, v4);
  return a2;
}

uint64_t sub_21BDD1774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;

  sub_21BE2633C();
}

id sub_21BDD1814(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v72 = a6;
  v82 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v69 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v77 = *(v78 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v73 = &v69 - v15;
  v16 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
  *&v17[v18] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v19 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  *&v17[v19] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  swift_unknownObjectWeakInit();
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = 0;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler] = 0;
  v20 = &v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v21 = qword_280BD79E0;
  v20[3] = type metadata accessor for FamilyCircleStore(0);
  v20[4] = &protocol witness table for FamilyCircleStore;
  *v20 = v21;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v22 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v22 = MEMORY[0x277D84FA0];
  }

  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_cancellables] = v22;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter] = 0;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController] = 0;
  v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled] = 0;
  v23 = type metadata accessor for FamilySignpost();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_timeToView] = sub_21BC84D18(0x746E6F4377656976, 0xEF3272656C6C6F72, "initToView", 10, 2);
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount] = a1;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner] = a2;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_pictureStore] = a4;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_accountManager] = a5;
  v26 = objc_allocWithZone(type metadata accessor for FAFamilyLandingPageViewModel());
  v27 = a1;
  v28 = a2;
  v29 = a4;
  v30 = a5;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_viewModel] = FAFamilyLandingPageViewModel.init(appleAccount:)(v27);
  v31 = qword_27CDD4290;
  if (qword_27CDD4290)
  {
    v32 = qword_27CDD4290;
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    v33 = type metadata accessor for ScreenTimeConfiguration();
    memset(v84, 0, sizeof(v84));
    v85 = 0;
    v34 = [objc_allocWithZone(v33) init];
    v35 = objc_allocWithZone(type metadata accessor for LocationViewModel());
    v32 = sub_21BDD21D4(v34, &v88, v86, v84, v35);
  }

  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_locationViewModel] = v32;
  v36 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v37 = v31;
  v38 = [v36 init];
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton] = v38;
  v39 = [objc_allocWithZone(FAFamilySettingsViewControllerHelper) initWithAppleAccount:v27 grandSlamSigner:v28 familyPictureStore:v29 accountManager:v30];
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_familySettingsHelper] = v39;
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] = v72;
  v71 = v29;
  v70 = v28;
  v72 = v30;
  if (qword_280BD7508 != -1)
  {
    swift_once();
  }

  v40 = qword_280BDCB60;
  v41 = [objc_allocWithZone(FAAppleCardUtilities) init];
  v42 = type metadata accessor for AppleCardStore();
  *(&v89 + 1) = v42;
  v90 = &off_282D9A530;
  *&v88 = v40;
  v43 = objc_allocWithZone(type metadata accessor for AppleCardFamilySettingsViewModel());
  v44 = __swift_mutable_project_boxed_opaque_existential_1(&v88, v42);
  v45 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v69 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v47;

  v50 = sub_21BDD2ECC(v21, v41, v49, v43);

  __swift_destroy_boxed_opaque_existential_0Tm(&v88);
  *&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCardFamilySettingsViewModel] = v50;
  v83.receiver = v17;
  v83.super_class = v16;
  v51 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  sub_21BB3A35C(v51 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore, &v88);
  v52 = *(&v89 + 1);
  v53 = v90;
  __swift_project_boxed_opaque_existential_1Tm(&v88, *(&v89 + 1));
  v54 = v53[4];
  v55 = v51;
  v56 = v73;
  v54(v52, v53);
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = sub_21BE2635C();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v62 = v74;
  v63 = v78;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v64 = v79;
  v65 = v76;
  sub_21BE26CFC();
  (*(v75 + 8))(v62, v65);
  v66 = swift_allocObject();
  v66[2] = v61;
  v66[3] = &unk_21BE32BB0;
  v66[4] = v57;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v67 = v81;
  sub_21BE26D1C();

  (*(v80 + 8))(v64, v67);
  (*(v77 + 8))(v56, v63);
  __swift_destroy_boxed_opaque_existential_0Tm(&v88);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  return v55;
}

char *sub_21BDD21D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v102 = a3;
  v103 = a4;
  v104 = a2;
  v101 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8);
  v98 = v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v11);
  v95 = v81 - v13;
  v91 = sub_21BE2652C();
  v90 = *(v91 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BE2653C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9810, &unk_21BE405A0);
  v86 = *(v87 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = v81 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  v83 = *(v84 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = v81 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v81 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  v81[0] = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v81 - v31;
  v33 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__familyMembersSharingLocationWithMe;
  *&v108 = sub_21BBB561C(MEMORY[0x277D84F90]);
  v81[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8238, &unk_21BE4DC00);
  sub_21BE26C6C();
  v34 = *(v29 + 32);
  v34(&a5[v33], v32, v28);
  v35 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__parentCanToggleChildsLocation;
  LOBYTE(v108) = 0;
  sub_21BE26C6C();
  v36 = *(v24 + 32);
  v36(&a5[v35], v27, v23);
  v37 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__disableLocationToggles;
  LOBYTE(v108) = 0;
  sub_21BE26C6C();
  v36(&a5[v37], v27, v23);
  v38 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__sharingLocationWithFamilyMembers;
  v39 = MEMORY[0x277D84F90];
  *&v108 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  v40 = v82;
  sub_21BE26C6C();
  (*(v83 + 32))(&a5[v38], v40, v84);
  v41 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__childCanModifyLocationStatus;
  *&v108 = sub_21BBB561C(v39);
  sub_21BE26C6C();
  v34(&a5[v41], v32, v81[0]);
  v42 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__membersAutomaticallySharing;
  *&v108 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F0, &qword_21BE4DC10);
  v43 = v85;
  sub_21BE26C6C();
  (*(v86 + 32))(&a5[v42], v43, v87);
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener] = 0;
  if (v39 >> 62 && sub_21BE2951C())
  {
    v44 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v44 = MEMORY[0x277D84FA0];
  }

  v46 = v103;
  v45 = v104;
  v47 = v101;
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_cancellables] = v44;
  a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled] = 0;
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_screenTimeConnection] = v47;
  sub_21BBA3854(v45, &v106, &qword_27CDBD338, &qword_21BE4DC18);
  if (v107)
  {
    sub_21BB3D104(&v106, &v108);
    swift_unknownObjectRetain();
  }

  else
  {
    v48 = qword_280BD79D8;
    swift_unknownObjectRetain();
    if (v48 == -1)
    {
      v49 = qword_280BD79E0;
      v109 = type metadata accessor for FamilyCircleStore(0);
      v110 = &protocol witness table for FamilyCircleStore;
      *&v108 = v49;
    }

    else
    {
      swift_once();
      v77 = v107;
      v78 = qword_280BD79E0;
      v109 = type metadata accessor for FamilyCircleStore(0);
      v110 = &protocol witness table for FamilyCircleStore;
      *&v108 = v78;

      if (v77)
      {
        sub_21BB3A4CC(&v106, &qword_27CDBD338, &qword_21BE4DC18);
      }
    }
  }

  sub_21BB3D104(&v108, &a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore]);
  (*(v90 + 104))(v88, *MEMORY[0x277D09060], v91);
  sub_21BE2654C();
  v50 = sub_21BE2661C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_21BE2662C();
  v54 = &a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession];
  v54[3] = v50;
  v54[4] = &protocol witness table for Session;
  *v54 = v53;
  sub_21BBA3854(v46, &v106, &qword_27CDB8AA0, &qword_21BE4DC20);
  if (v107)
  {
    sub_21BB3D104(&v106, &v108);
  }

  else if (qword_280BD76F0 == -1)
  {
    v55 = qword_280BDCB98;
    v109 = type metadata accessor for ServicesStore();
    v110 = &off_282D8FEE0;
    *&v108 = v55;
  }

  else
  {
    swift_once();
    v79 = v107;
    v80 = qword_280BDCB98;
    v109 = type metadata accessor for ServicesStore();
    v110 = &off_282D8FEE0;
    *&v108 = v80;

    if (v79)
    {
      sub_21BB3A4CC(&v106, &qword_27CDB8AA0, &qword_21BE4DC20);
    }
  }

  sub_21BB3D104(&v108, &a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore]);
  v56 = type metadata accessor for LocationViewModel();
  v105.receiver = a5;
  v105.super_class = v56;
  v57 = objc_msgSendSuper2(&v105, sel_init);
  type metadata accessor for LocationShareListener();
  v58 = swift_allocObject();
  v59 = v57;
  v60 = sub_21BDD151C(v59, v58);
  v61 = *&v59[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener];
  *&v59[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener] = v60;

  sub_21BB3A35C(&v59[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore], &v108);
  __swift_project_boxed_opaque_existential_1Tm(&v108, v109);
  v62 = off_282D8FEF0;
  type metadata accessor for ServicesStore();
  v63 = v95;
  v62();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_21BE2635C();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0);
  sub_21BDD3A64();
  v69 = v92;
  v70 = v97;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0);
  v71 = v98;
  v72 = v94;
  sub_21BE26CFC();
  (*(v93 + 8))(v69, v72);
  v73 = swift_allocObject();
  v73[2] = v68;
  v73[3] = &unk_21BE4DC28;
  v73[4] = v64;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8);

  v74 = v100;
  sub_21BE26D1C();

  (*(v99 + 8))(v71, v74);
  (*(v96 + 8))(v63, v70);
  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  if (qword_27CDD4290)
  {

    v47 = v59;
  }

  else
  {
    qword_27CDD4290 = v59;
  }

  v75 = v103;

  sub_21BB3A4CC(v75, &qword_27CDB8AA0, &qword_21BE4DC20);
  sub_21BB3A4CC(v102, &qword_27CDBD368, &qword_21BE4DC38);
  sub_21BB3A4CC(v104, &qword_27CDBD338, &qword_21BE4DC18);
  return v59;
}

id sub_21BDD2ECC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v54 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD300, &qword_21BE4DBB8);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD308, &qword_21BE4DBC0);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v49 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8268, &unk_21BE3B3A8);
  v51 = *(v52 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v15 = &v49 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v50);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v67[3] = type metadata accessor for FamilyCircleStore(0);
  v67[4] = &protocol witness table for FamilyCircleStore;
  v67[0] = a1;
  v65 = type metadata accessor for AppleCardStore();
  v66 = &off_282D9A530;
  v53 = v65;
  v64[0] = a3;
  v25 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__showShareAppleCardFlow;
  LOBYTE(v61) = 0;
  sub_21BE26C6C();
  v26 = *(v21 + 32);
  v26(&a4[v25], v24, v20);
  v27 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__showAppleCardFamilyScreen;
  LOBYTE(v61) = 0;
  sub_21BE26C6C();
  v26(&a4[v27], v24, v20);
  v28 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__subLabel;
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_21BE26C6C();
  (*(v16 + 32))(&a4[v28], v19, v50);
  v29 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__sharingCardWithFamilyMembers;
  v30 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8228, &qword_21BE3B0E0);
  sub_21BE26C6C();
  (*(v51 + 32))(&a4[v29], v15, v52);
  v31 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__shouldHideShareCardButton;
  LOBYTE(v61) = 0;
  sub_21BE26C6C();
  v26(&a4[v31], v24, v20);
  v32 = &a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__persistedCache];
  *v32 = sub_21BBDC524;
  *(v32 + 1) = 0;
  v32[16] = 0;
  if (v30 >> 62 && sub_21BE2951C())
  {
    v33 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *&a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_cancellables] = v33;
  sub_21BB3A35C(v67, &a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_familyCircleStore]);
  *&a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities] = v54;
  sub_21BB3A35C(v64, &a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardStore]);
  v34 = type metadata accessor for AppleCardFamilySettingsViewModel();
  v63.receiver = a4;
  v63.super_class = v34;
  swift_unknownObjectRetain();
  v35 = objc_msgSendSuper2(&v63, sel_init);
  __swift_project_boxed_opaque_existential_1Tm(v64, v65);
  v36 = off_282D9A550;
  v37 = v35;
  v38 = v55;
  v36();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = sub_21BE2635C();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD310, &qword_27CDBD308, &qword_21BE4DBC0);
  sub_21BDD389C(&qword_280BD89D8, MEMORY[0x277CC9578]);
  v45 = v57;
  v44 = v58;
  sub_21BE26D0C();
  v46 = swift_allocObject();
  v46[2] = v43;
  v46[3] = &unk_21BE4DBC8;
  v46[4] = v39;
  sub_21BB3B038(&qword_27CDBD318, &qword_27CDBD300, &qword_21BE4DBB8);

  v47 = v60;
  sub_21BE26D1C();

  (*(v59 + 8))(v44, v47);
  (*(v56 + 8))(v38, v45);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v67);
  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  return v37;
}

void sub_21BDD3654(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2F8, &unk_21BE4DBA8);
  sub_21BE27B1C();
  v6 = [a4 accountStore];
  v7 = [objc_allocWithZone(MEMORY[0x277CEC808]) initWithAccountStore:v6 grandSlamAccount:a3 appTokenID:*MEMORY[0x277CEC6F0]];

  if (v7)
  {
    v8 = *(v10 + 16);
    *(v10 + 16) = v7;

    sub_21BE27B1C();
    v9 = *(v10 + 16);

    sub_21BBA87D4(v9, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDD376C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBA7464(a1, v1);
}

uint64_t sub_21BDD3804(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BC69A5C(a1, v1);
}

uint64_t sub_21BDD389C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDD38F0()
{
  v2 = *(sub_21BE25D1C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD51674(v4, v5, v0 + v3);
}

uint64_t sub_21BDD39CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BCCE954(a1, v1);
}

unint64_t sub_21BDD3A64()
{
  result = qword_27CDBD348;
  if (!qword_27CDBD348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76A8, &qword_21BE38780);
    sub_21BB3CC48(&qword_27CDBD350, &unk_27CDB6550, 0x277D08338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD348);
  }

  return result;
}

uint64_t sub_21BDD3B20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

uint64_t sub_21BDD3BE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD41744();
}

uint64_t type metadata accessor for StaticSelectableCellTemplate()
{
  result = qword_27CDBD388;
  if (!qword_27CDBD388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BDD3D10()
{
  sub_21BDD3FA8(319, &qword_280BD89E0, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21BB3FA80(319, &qword_280BD69C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21BB3FA80(319, &qword_27CDBD398, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21BDD3F44();
        if (v3 <= 0x3F)
        {
          v4 = MEMORY[0x277D839B0];
          sub_21BB3FA80(319, &qword_27CDBADA0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_21BDD3FA8(319, &qword_27CDBD3A8, sub_21BC19578);
            if (v6 <= 0x3F)
            {
              sub_21BC08FA8();
              if (v7 <= 0x3F)
              {
                sub_21BB3FA80(319, &qword_280BD6A00, v4, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_21BE2934C();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21BDD3F44()
{
  if (!qword_27CDBD3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5A90, &unk_21BE33000);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBD3A0);
    }
  }
}

void sub_21BDD3FA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE2946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21BDD3FFC()
{
  result = qword_27CDB5750;
  if (!qword_27CDB5750)
  {
    type metadata accessor for ServicesStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5750);
  }

  return result;
}

uint64_t sub_21BDD4070()
{
  v1 = type metadata accessor for StaticSelectableCellTemplate();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = v0 + *(v2 + 76);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v23) = v11;
  v24 = v12;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v13 = v0 + *(v2 + 52);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v13) = *(v13 + 16);
  v23 = v14;
  v24 = v15;
  v25 = v13;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();
  sub_21BE28D8C();
  v16 = sub_21BE28DAC();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  sub_21BDD6CD4(v0, v5);
  sub_21BE28D7C();
  v17 = sub_21BE28D6C();
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_21BDD6D38(v5, v19 + v18);
  sub_21BBA932C(0, 0, v9, &unk_21BE4DE88, v19);
}

uint64_t sub_21BDD42C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  v5 = sub_21BE25FCC();
  v4[51] = v5;
  v6 = *(v5 - 8);
  v4[52] = v6;
  v7 = *(v6 + 64) + 15;
  v4[53] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v4[54] = v8;
  v9 = *(v8 - 8);
  v4[55] = v9;
  v10 = *(v9 + 64) + 15;
  v4[56] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v12 = sub_21BE25B9C();
  v4[59] = v12;
  v13 = *(v12 - 8);
  v4[60] = v13;
  v14 = *(v13 + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  sub_21BE28D7C();
  v4[63] = sub_21BE28D6C();
  v16 = sub_21BE28D0C();
  v4[64] = v16;
  v4[65] = v15;

  return MEMORY[0x2822009F8](sub_21BDD44C0, v16, v15);
}

uint64_t sub_21BDD44C0()
{
  v67 = v0;
  v1 = *(v0 + 400);
  v2 = type metadata accessor for StaticSelectableCellTemplate();
  v3 = v2;
  v4 = (v1 + *(v2 + 36));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    v6 = *(v0 + 472);
    v7 = *(v0 + 480);
    v8 = *(v0 + 464);
    sub_21BBA3854(v1 + *(v2 + 20), v8, &unk_27CDB57F0, &qword_21BE328A0);
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      v36 = *(v0 + 400);
      (*(*(v0 + 480) + 32))(*(v0 + 496), *(v0 + 464), *(v0 + 472));
      v37 = v3[7];
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 528) = Strong;
      v31 = *(v0 + 496);
      if (Strong)
      {
        v39 = Strong;
        v40 = *(v0 + 400);
        v41 = sub_21BE25B2C();
        *(v0 + 536) = v41;
        v42 = *v40;
        v43 = v40[1];
        v44 = sub_21BE289CC();
        *(v0 + 544) = v44;
        *(v0 + 80) = v0;
        *(v0 + 88) = sub_21BDD4C2C;
        v45 = swift_continuation_init();
        *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
        *(v0 + 296) = MEMORY[0x277D85DD0];
        *(v0 + 304) = 1107296256;
        *(v0 + 312) = sub_21BD44BD8;
        *(v0 + 320) = &block_descriptor_16;
        *(v0 + 328) = v45;
        [v39 didSelectSubscriptionWithURLMemberDetails:v41 familyMemberDSID:v44 serviceName:v5 completion:v0 + 296];
        v35 = v0 + 80;
        goto LABEL_12;
      }

LABEL_15:
      v46 = *(v0 + 504);
      (*(*(v0 + 480) + 8))(v31, *(v0 + 472));

      v48 = *(v0 + 416);
      v47 = *(v0 + 424);
      v49 = *(v0 + 408);
      (*(v48 + 104))(v47, *MEMORY[0x277D07F38], v49);
      v50 = MEMORY[0x21CF01150](v47);
      (*(v48 + 8))(v47, v49);
      if (v50)
      {
        if (v51 = *(v0 + 400), *v51 == 0xD000000000000010) && 0x800000021BE55930 == v51[1] || (sub_21BE2995C())
        {
          v52 = [objc_opt_self() defaultCenter];
          if (qword_27CDB4EC0 != -1)
          {
            swift_once();
          }

          [v52 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];
        }
      }

      if (qword_27CDB4F68 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 400);
      v55 = *v53;
      v54 = v53[1];
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BE32770;
      *(inited + 32) = 0x6976614E77656976;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = &protocol witness table for String;
      *(inited + 40) = 0xEF6F546465746167;
      *(inited + 48) = v55;
      *(inited + 56) = v54;

      v57 = sub_21BBB5E60(inited);
      swift_setDeallocating();
      sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
      sub_21BCA55DC(&v66, v57);

      goto LABEL_25;
    }

    sub_21BB3A4CC(*(v0 + 464), &unk_27CDB57F0, &qword_21BE328A0);
    v1 = *(v0 + 400);
  }

  v9 = *(v0 + 472);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  sub_21BBA3854(v1 + v3[5], v11, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 504);
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);

    sub_21BB3A4CC(v13, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FDC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "Attempting to present view w/o URL", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    v19 = *(v0 + 440);
    v18 = *(v0 + 448);
    v20 = *(v0 + 432);
    v21 = *(v0 + 400);

    (*(v19 + 8))(v18, v20);
    v22 = (v21 + v3[11]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v22) = *(v22 + 16);
    *(v0 + 360) = v23;
    *(v0 + 368) = v24;
    *(v0 + 376) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
    v25 = (v21 + v3[17]);
    v26 = *v25;
    v27 = *(v25 + 1);
    *(v0 + 384) = v26;
    *(v0 + 392) = v27;
    *(v0 + 378) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
LABEL_25:
    v59 = *(v0 + 488);
    v58 = *(v0 + 496);
    v61 = *(v0 + 456);
    v60 = *(v0 + 464);
    v62 = *(v0 + 448);
    v63 = *(v0 + 424);

    v64 = *(v0 + 8);

    return v64();
  }

  v28 = *(v0 + 400);
  (*(*(v0 + 480) + 32))(*(v0 + 488), *(v0 + 456), *(v0 + 472));
  v29 = v3[7];
  v30 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 552) = v30;
  v31 = *(v0 + 488);
  if (!v30)
  {
    goto LABEL_15;
  }

  v32 = v30;
  v33 = sub_21BE25B2C();
  *(v0 + 560) = v33;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BDD5040;
  v34 = swift_continuation_init();
  *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
  *(v0 + 232) = MEMORY[0x277D85DD0];
  *(v0 + 240) = 1107296256;
  *(v0 + 248) = sub_21BD44BD8;
  *(v0 + 256) = &block_descriptor_59;
  *(v0 + 264) = v34;
  [v32 didSelectSubscriptionWithURL:v33 completion:v0 + 232];
  v35 = v0 + 16;
LABEL_12:

  return MEMORY[0x282200938](v35);
}

uint64_t sub_21BDD4C2C()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BDD4D34, v2, v1);
}

uint64_t sub_21BDD4D34()
{
  v28 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[59];
  v7 = v0[60];

  (*(v7 + 8))(v5, v6);
  swift_unknownObjectRelease();

  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[51];
  (*(v9 + 104))(v8, *MEMORY[0x277D07F38], v10);
  LOBYTE(v6) = MEMORY[0x21CF01150](v8);
  (*(v9 + 8))(v8, v10);
  if (v6)
  {
    v11 = v0[50];
    v12 = *v11 == 0xD000000000000010 && 0x800000021BE55930 == v11[1];
    if (v12 || (sub_21BE2995C() & 1) != 0)
    {
      v13 = [objc_opt_self() defaultCenter];
      if (qword_27CDB4EC0 != -1)
      {
        swift_once();
      }

      [v13 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];
    }
  }

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v14 = v0[50];
  v16 = *v14;
  v15 = v14[1];
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = v16;
  *(inited + 56) = v15;

  v18 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v27, v18);

  v20 = v0[61];
  v19 = v0[62];
  v22 = v0[57];
  v21 = v0[58];
  v23 = v0[56];
  v24 = v0[53];

  v25 = v0[1];

  return v25();
}

uint64_t sub_21BDD5040()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BDD5148, v2, v1);
}

uint64_t sub_21BDD5148()
{
  v27 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[59];

  (*(v5 + 8))(v4, v6);
  swift_unknownObjectRelease();

  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[51];
  (*(v8 + 104))(v7, *MEMORY[0x277D07F38], v9);
  LOBYTE(v6) = MEMORY[0x21CF01150](v7);
  (*(v8 + 8))(v7, v9);
  if (v6)
  {
    v10 = v0[50];
    v11 = *v10 == 0xD000000000000010 && 0x800000021BE55930 == v10[1];
    if (v11 || (sub_21BE2995C() & 1) != 0)
    {
      v12 = [objc_opt_self() defaultCenter];
      if (qword_27CDB4EC0 != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];
    }
  }

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v13 = v0[50];
  v15 = *v13;
  v14 = v13[1];
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = v15;
  *(inited + 56) = v14;

  v17 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v26, v17);

  v19 = v0[61];
  v18 = v0[62];
  v21 = v0[57];
  v20 = v0[58];
  v22 = v0[56];
  v23 = v0[53];

  v24 = v0[1];

  return v24();
}

uint64_t sub_21BDD5448@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3E8, &qword_21BE4DDC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3F0, &qword_21BE4DDD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-v13];
  *v10 = sub_21BE275DC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3F8, &unk_21BE4DDD8);
  sub_21BDD5704(v1, &v10[*(v15 + 44)]);
  v16 = type metadata accessor for StaticSelectableCellTemplate();
  v17 = v1 + *(v16 + 68);
  v18 = *v17;
  v19 = *(v17 + 1);
  v25[16] = v18;
  v26 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v20 = 0;
  if ((v25[15] & 1) == 0)
  {
    sub_21BBA3854(v1 + *(v16 + 20), v6, &unk_27CDB57F0, &qword_21BE328A0);
    v21 = sub_21BE25B9C();
    v20 = (*(*(v21 - 8) + 48))(v6, 1, v21) != 1;
    sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
  }

  KeyPath = swift_getKeyPath();
  sub_21BBB7D84(v10, v14, &qword_27CDBD3E8, &qword_21BE4DDC8);
  v23 = &v14[*(v11 + 36)];
  *v23 = v20;
  *(v23 + 1) = KeyPath;
  v23[16] = 0;
  sub_21BBB7D84(v14, a1, &qword_27CDBD3F0, &qword_21BE4DDD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD400, &qword_21BE4DE18);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void sub_21BDD5704(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD38, &unk_21BE453B0);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 8);
  MEMORY[0x28223BE20](v4);
  v58 = (&v54 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v7 = *(*(v55 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD408, &qword_21BE4DE20);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v64 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v21 = *a1;
  v22 = a1[1];

  v60 = sub_21BDA6580();
  v59 = sub_21BE2771C();
  v23 = 1;
  v82 = 1;
  sub_21BDD5F30(a1, v83);
  *&v81[7] = v83[0];
  *&v81[23] = v83[1];
  *&v81[39] = v83[2];
  *&v81[55] = v83[3];
  v63 = v82;
  sub_21BE286AC();
  sub_21BE2725C();
  v24 = type metadata accessor for StaticSelectableCellTemplate();
  v25 = a1 + *(v24 + 68);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v67) = v26;
  v68 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (LOBYTE(v65[0]) == 1)
  {
    sub_21BBA3854(a1 + *(v24 + 20), v14, &unk_27CDB57F0, &qword_21BE328A0);
    v28 = sub_21BE25B9C();
    v29 = (*(*(v28 - 8) + 48))(v14, 1, v28);
    sub_21BB3A4CC(v14, &unk_27CDB57F0, &qword_21BE328A0);
    if (v29 != 1)
    {
      v30 = v56;
      sub_21BE26EEC();
      *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)) = 257;
      v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36));
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
      v33 = *MEMORY[0x277CDF438];
      v34 = sub_21BE26E7C();
      (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
      *v31 = swift_getKeyPath();
      sub_21BE286BC();
      sub_21BE26F2C();
      v35 = (v30 + *(v55 + 36));
      v36 = v83[5];
      *v35 = v83[4];
      v35[1] = v36;
      v35[2] = v83[6];
      v37 = v57;
      sub_21BBA3854(v30, v57, &qword_27CDB5DF0, &unk_21BE33810);
      v38 = v58;
      *v58 = 0;
      *(v38 + 8) = 1;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD60, &qword_21BE45410);
      sub_21BBA3854(v37, v38 + *(v39 + 48), &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v30, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v37, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BBB7D84(v38, v20, &qword_27CDBAD38, &unk_21BE453B0);
      v23 = 0;
    }
  }

  (*(v61 + 7))(v20, v23, 1, v62);
  if (v60 == 16)
  {
    v40 = 0;
  }

  else
  {
    v40 = &unk_282D874A0;
  }

  v62 = v40;
  if (v60 == 16)
  {
    v41 = 0;
  }

  else
  {
    v41 = &unk_282D87470;
  }

  if (v60 == 16)
  {
    v42 = 0;
  }

  else
  {
    v42 = v60 | 0x600;
  }

  v43 = v64;
  sub_21BBA3854(v20, v64, &qword_27CDBD408, &qword_21BE4DE20);
  *a2 = v42;
  *(a2 + 8) = 0;
  *(a2 + 16) = v41;
  *(a2 + 24) = v40;
  *(a2 + 32) = 0;
  v44 = v59;
  v65[0] = v59;
  v65[1] = 0;
  v45 = v63;
  v66[0] = v63;
  *&v66[17] = *&v81[16];
  *&v66[33] = *&v81[32];
  *&v66[49] = *&v81[48];
  *&v66[64] = *&v81[63];
  *&v66[1] = *v81;
  *&v66[88] = v75;
  *&v66[104] = v76;
  *&v66[72] = v74;
  v61 = v20;
  *&v66[168] = v80;
  *&v66[152] = v79;
  *&v66[136] = v78;
  *&v66[120] = v77;
  v46 = *v66;
  *(a2 + 40) = v59;
  v47 = *&v66[64];
  *(a2 + 104) = *&v66[48];
  v48 = *&v66[16];
  *(a2 + 88) = *&v66[32];
  *(a2 + 72) = v48;
  *(a2 + 56) = v46;
  v49 = *&v66[128];
  *(a2 + 168) = *&v66[112];
  v50 = *&v66[80];
  *(a2 + 152) = *&v66[96];
  *(a2 + 136) = v50;
  *(a2 + 120) = v47;
  v51 = *&v66[144];
  v52 = *&v66[160];
  *(a2 + 232) = *&v66[176];
  *(a2 + 216) = v52;
  *(a2 + 200) = v51;
  *(a2 + 184) = v49;
  v53 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD410, &qword_21BE4DE28) + 64);
  sub_21BBA3854(v43, v53, &qword_27CDBD408, &qword_21BE4DE20);
  sub_21BDD6E08(v42, 0, v41);
  sub_21BBA3854(v65, &v67, &qword_27CDBD418, &unk_21BE4DE30);
  sub_21BB3A4CC(v61, &qword_27CDBD408, &qword_21BE4DE20);
  sub_21BB3A4CC(v43, &qword_27CDBD408, &qword_21BE4DE20);
  v67 = v44;
  v68 = 0;
  v69 = v45;
  v71 = *&v81[16];
  v72 = *&v81[32];
  *v73 = *&v81[48];
  *&v73[15] = *&v81[63];
  v70 = *v81;
  *&v73[23] = v74;
  *&v73[39] = v75;
  *&v73[55] = v76;
  *&v73[119] = v80;
  *&v73[103] = v79;
  *&v73[87] = v78;
  *&v73[71] = v77;
  sub_21BB3A4CC(&v67, &qword_27CDBD418, &unk_21BE4DE30);
  sub_21BDD6E54(v42, 0, v41);
}

uint64_t sub_21BDD5F30@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_21BB41FA4();

  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v36 = v10;
  v35 = v11;
  v13 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  v14 = (a1 + *(type metadata accessor for StaticSelectableCellTemplate() + 32));
  if (v14[1])
  {
    v37 = *v14;
    v38 = v14[1];

    v15 = sub_21BE27DBC();
    v17 = v16;
    v19 = v18;
    sub_21BE27BEC();
    v20 = sub_21BE27D9C();
    v22 = v21;
    v34 = v13;
    v24 = v23;

    sub_21BBC7C7C(v15, v17, v19 & 1);

    sub_21BE2833C();
    v25 = sub_21BE27D4C();
    v27 = v26;
    LOBYTE(v17) = v28;
    v30 = v29;

    v31 = v24 & 1;
    v13 = v34;
    sub_21BBC7C7C(v20, v22, v31);

    v32 = v17 & 1;
    sub_21BBA4A38(v25, v27, v17 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v32 = 0;
    v30 = 0;
  }

  sub_21BBA4A38(v9, v36, v35 & 1);

  sub_21BC75900(v25, v27, v32, v30);
  sub_21BC75944(v25, v27, v32, v30);
  *a2 = v9;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v32;
  *(a2 + 56) = v30;
  sub_21BC75944(v25, v27, v32, v30);
  sub_21BBC7C7C(v9, v36, v35 & 1);
}

uint64_t sub_21BDD61B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3B0, &qword_21BE4DDA8);
  v42 = *(v47 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v47);
  v41 = &v40 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3B8, &qword_21BE4DDB0);
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v40 - v6;
  v7 = type metadata accessor for StaticSelectableCellTemplate();
  v40 = *(v7 - 1);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3C0, &qword_21BE4DDB8);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = (v1 + v7[12]);
  v17 = *v16;
  v18 = v16[1];
  if (v18)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v39 = v18;
  }

  else
  {
    v22 = *v1;
    v21 = v1[1];
    type metadata accessor for ConfirmChildAgeViewModel();
    v23 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v39 = v21;
  }

  v24 = sub_21BE2599C();
  v26 = v25;

  v27 = *(v2 + v7[13]);
  if (v27)
  {
    sub_21BBA3854(v2 + v7[5], v15, &unk_27CDB57F0, &qword_21BE328A0);
    v28 = sub_21BE25B9C();
    if ((*(*(v28 - 8) + 48))(v15, 1, v28) == 1)
    {
      v29 = v27;
      sub_21BB3A4CC(v15, &unk_27CDB57F0, &qword_21BE328A0);
      sub_21BDD6CD4(v2, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = v44;
      sub_21BDD5448(&v11[*(v44 + 56)]);

      sub_21BC5E088(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      *(v11 + 1) = v29;
      v11[*(v30 + 60)] = 0;
      v31 = &v11[*(v30 + 64)];
      *v31 = 0;
      *(v31 + 1) = 0;
      v31[16] = 1;
      *v11 = 1;
      sub_21BBA3854(v11, v45, &qword_27CDBD3C0, &qword_21BE4DDB8);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDBD3D8, &qword_27CDBD3C0, &qword_21BE4DDB8);
      sub_21BB3B038(&qword_27CDBD3E0, &qword_27CDBD3B0, &qword_21BE4DDA8);
      sub_21BE2784C();
      return sub_21BB3A4CC(v11, &qword_27CDBD3C0, &qword_21BE4DDB8);
    }

    sub_21BB3A4CC(v15, &unk_27CDB57F0, &qword_21BE328A0);
  }

  sub_21BDD6CD4(v2, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v34 = swift_allocObject();
  v35 = sub_21BDD6D38(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  MEMORY[0x28223BE20](v35);
  *(&v40 - 4) = v2;
  *(&v40 - 3) = v24;
  v39 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3C8, &qword_21BE4DDC0);
  sub_21BB3B038(&qword_27CDBD3D0, &qword_27CDBD3C8, &qword_21BE4DDC0);
  v36 = v41;
  sub_21BE2843C();

  v37 = v42;
  v38 = v47;
  (*(v42 + 16))(v45, v36, v47);
  swift_storeEnumTagMultiPayload();
  sub_21BB3B038(&qword_27CDBD3D8, &qword_27CDBD3C0, &qword_21BE4DDB8);
  sub_21BB3B038(&qword_27CDBD3E0, &qword_27CDBD3B0, &qword_21BE4DDA8);
  sub_21BE2784C();
  return (*(v37 + 8))(v36, v38);
}

void *sub_21BDD6870(uint64_t a1)
{
  v2 = type metadata accessor for StaticSelectableCellTemplate();
  v3 = (a1 + *(v2 + 44));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v11 = v4;
  v12 = v5;
  v13 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  result = MEMORY[0x21CF036E0](&v10, v6);
  if ((v10 & 1) == 0)
  {
    v8 = a1 + *(v2 + 40);
    if (*v8)
    {
      v9 = *(v8 + 8);
      (*v8)(result);
    }

    return sub_21BDD4070();
  }

  return result;
}

uint64_t sub_21BDD6910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticSelectableCellTemplate();
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD400, &qword_21BE4DE18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD420, &qword_21BE4DE78);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  sub_21BDD5448(v11);
  sub_21BE286AC();
  sub_21BE2725C();
  sub_21BBB7D84(v11, v16, &qword_27CDBD400, &qword_21BE4DE18);
  v17 = &v16[*(v13 + 44)];
  v18 = v36;
  *(v17 + 4) = v35;
  *(v17 + 5) = v18;
  *(v17 + 6) = v37;
  v19 = v32;
  *v17 = v31;
  *(v17 + 1) = v19;
  v20 = v34;
  *(v17 + 2) = v33;
  *(v17 + 3) = v20;
  v21 = *(v5 + 80);
  sub_21BDD6CD4(a1, v7);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = swift_allocObject();
  sub_21BDD6D38(v7, v23 + v22);
  sub_21BBB7D84(v16, a2, &qword_27CDBD420, &qword_21BE4DE78);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3C8, &qword_21BE4DDC0);
  v25 = *(v24 + 52);
  v26 = sub_21BE2934C();
  result = (*(*(v26 - 8) + 16))(a2 + v25, a1 + v21, v26);
  v28 = (a2 + *(v24 + 56));
  *v28 = sub_21BDD70A4;
  v28[1] = v23;
  return result;
}

uint64_t sub_21BDD6BE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticSelectableCellTemplate();
  v4 = (a2 + *(v3 + 68));
  v5 = *v4;
  v6 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  result = sub_21BE283FC();
  if (v12 == 1)
  {
    v8 = (a2 + *(v3 + 44));
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
    return sub_21BE2840C();
  }

  return result;
}

uint64_t sub_21BDD6CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSelectableCellTemplate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDD6D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSelectableCellTemplate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21BDD6D9C()
{
  v1 = *(type metadata accessor for StaticSelectableCellTemplate() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BDD6870(v2);
}

uint64_t sub_21BDD6DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_21BDD6910(v1[2], a1);
}

uint64_t sub_21BDD6E08(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
  }

  return result;
}

void sub_21BDD6E54(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t objectdestroyTm_39()
{
  v1 = type metadata accessor for StaticSelectableCellTemplate();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  MEMORY[0x21CF05D90](v3 + v1[7]);
  v8 = *(v3 + v1[8] + 8);

  v9 = (v3 + v1[10]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = (v3 + v1[11]);
  v12 = *v11;

  v13 = v11[1];

  v14 = *(v3 + v1[12] + 8);

  v15 = *(v3 + v1[15] + 8);

  v16 = *(v3 + v1[17] + 8);

  v17 = v1[18];
  v18 = sub_21BE2934C();
  (*(*(v18 - 8) + 8))(v3 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_21BDD70A4(uint64_t a1)
{
  v3 = *(type metadata accessor for StaticSelectableCellTemplate() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BDD6BE8(a1, v4);
}

uint64_t sub_21BDD7114(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticSelectableCellTemplate() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BDD42C0(a1, v6, v7, v1 + v5);
}

unint64_t sub_21BDD7204()
{
  result = qword_27CDBD428;
  if (!qword_27CDBD428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDBD430, qword_21BE4DE98);
    sub_21BB3B038(&qword_27CDBD3D8, &qword_27CDBD3C0, &qword_21BE4DDB8);
    sub_21BB3B038(&qword_27CDBD3E0, &qword_27CDBD3B0, &qword_21BE4DDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD428);
  }

  return result;
}

uint64_t sub_21BDD72F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21BDD739C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_21BDD7DE8();
}

id sub_21BDD7408()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v32.receiver = v0;
  v32.super_class = type metadata accessor for FAHostingController();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v4 = *(v0 + *((*v1 & *v0) + 0x60));
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  result = [v4 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  [v6 addSubview_];

  result = [v4 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21BE397B0;
  result = [v4 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = result;
  v13 = [result topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  result = [v4 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  result = [v4 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = result;
  v21 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = result;
  v23 = [result leadingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  result = [v4 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = result;
  v26 = [result trailingAnchor];

  result = [v0 view];
  if (result)
  {
    v27 = result;
    v28 = objc_opt_self();
    v29 = [v27 trailingAnchor];

    v30 = [v26 constraintEqualToAnchor_];
    *(v9 + 56) = v30;
    sub_21BC47284();
    v31 = sub_21BE28C1C();

    [v28 activateConstraints_];

    return [v4 didMoveToParentViewController_];
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_21BDD786C(void *a1)
{
  v1 = a1;
  sub_21BDD7408();
}

id sub_21BDD78B4(char a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = *((v5 & v3) + 0x50);
  v11 = *((v5 & v3) + 0x58);
  v12 = type metadata accessor for FAHostingController();
  v22.receiver = v1;
  v22.super_class = v12;
  result = objc_msgSendSuper2(&v22, sel_viewWillAppear_, a1 & 1);
  v14 = (v1 + *((*v4 & *v1) + 0x68));
  v15 = *v14;
  if (*v14)
  {
    v16 = v14[1];
    v17 = sub_21BE28DAC();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_21BE28D7C();
    sub_21BB3D80C(v15);
    sub_21BB3D80C(v15);
    v18 = v1;
    v19 = sub_21BE28D6C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v15;
    v20[5] = v16;
    v20[6] = v18;
    sub_21BBA932C(0, 0, v9, &unk_21BE4DF18, v20);
    sub_21BB5AEC4(v15);
  }

  return result;
}

uint64_t sub_21BDD7A9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21BE28D7C();
  v6[3] = sub_21BE28D6C();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_21BBAFDA8;

  return v12(a6);
}

void sub_21BDD7BB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_21BDD78B4(a3);
}

void sub_21BDD7C0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_21BDD7E44();
}

id sub_21BDD7C7C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FAHostingController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21BDD7CEC(uint64_t *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  v5 = (a1 + *((*v2 & *a1) + 0x68));
  v6 = v5[1];
  sub_21BB5AEC4(*v5);
  v7 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v8 = a1 + *((*v2 & *a1) + 0x70);

  return v7(v8);
}

uint64_t sub_21BDD7E74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BDD7A9C(a1, v4, v5, v6, v7, v8);
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21BDD7F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BDD7FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDD8048()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);

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

uint64_t sub_21BDD8188@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v14 = swift_allocBox();
  sub_21BDD8048();
  type metadata accessor for ChecklistStateVars();
  sub_21BBEAC94();
  sub_21BE2864C();
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  sub_21BB3A35C((v1 + 7), v16);
  v15[0] = v4;
  v15[1] = v3;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v7;
  v15[5] = v8;
  v15[6] = v9;
  v15[7] = sub_21BDD88C0;
  v15[8] = v14;
  v15[9] = 0;
  v16[5] = 0;

  v10 = v9;

  v11 = sub_21BE26E9C();
  LOBYTE(v9) = v12;
  sub_21BBC7A18(v15, a1);
  *(a1 + 128) = 1;
  *(a1 + 136) = v11;
  *(a1 + 144) = v9 & 1;
  sub_21BBC7A74(v15);
}

uint64_t sub_21BDD82D8()
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

uint64_t sub_21BDD841C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = swift_allocBox();
  sub_21BDD82D8();
  type metadata accessor for ChecklistStateVars();
  sub_21BBEAC94();
  sub_21BE2864C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_21BE2599C();
  v25 = v8;
  v26 = v7;

  v9 = [v5 &selRef:ObjCClassFromMetadata :0x800000021BE62010 launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  v10 = sub_21BE2599C();
  v12 = v11;

  v27 = v10;
  v28 = v12;
  v13 = sub_21BE28B8C();
  v15 = v14;
  v16 = *v1;

  v17 = [v5 bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  sub_21BB3A35C((v1 + 1), v37);
  v27 = v26;
  v28 = v25;
  v29 = v13;
  v30 = v15;
  v31 = v16;
  v32 = sub_21BDD8910;
  v33 = v3;
  v34 = v18;
  v35 = v20;
  v36 = 0;
  v37[5] = 0;
  v21 = sub_21BE26E9C();
  v23 = v22;
  sub_21BBC7968(&v27, a1);
  *(a1 + 128) = 0;
  *(a1 + 136) = v21;
  *(a1 + 144) = v23 & 1;
  sub_21BBC79C4(&v27);
}

uint64_t sub_21BDD86D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 21) == 1)
  {
    *(v6 + 21) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BBEAC94();
    sub_21BE25F0C();
  }
}

unint64_t sub_21BDD8940()
{
  result = qword_27CDBD4C8;
  if (!qword_27CDBD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD4C8);
  }

  return result;
}

uint64_t sub_21BDD8994(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21BDD8940();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21BDD8AA8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_21BE278EC();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v31 = v7;
  v32 = v8;
  sub_21BB41FA4();

  v9 = sub_21BE27DBC();
  v11 = v10;
  v13 = v12;
  sub_21BE27CDC();
  v14 = sub_21BE27D9C();
  v16 = v15;
  v18 = v17;

  sub_21BBC7C7C(v9, v11, v13 & 1);

  v19 = sub_21BE27D3C();
  v21 = v20;
  LOBYTE(v9) = v22;
  v24 = v23;
  sub_21BBC7C7C(v14, v16, v18 & 1);

  v31 = v19;
  v32 = v21;
  v33 = v9 & 1;
  v34 = v24;
  sub_21BE278DC();
  sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8]);
  v25 = v28;
  sub_21BE27ECC();
  (*(v29 + 8))(v6, v25);
  sub_21BBC7C7C(v19, v21, v9 & 1);
}

uint64_t sub_21BDD8CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD698, &qword_21BE4E558);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD678, &qword_21BE4E538);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = *(v2 + 40);
  if (v13)
  {
    v40 = a1;
    v14 = *(v2 + 48);
    sub_21BBC7968(v2, &v46);
    v15 = swift_allocObject();
    v39 = v8;
    v38 = &v38;
    v16 = v51;
    *(v15 + 80) = v50;
    *(v15 + 96) = v16;
    v17 = v53;
    *(v15 + 112) = v52;
    *(v15 + 128) = v17;
    v18 = v47;
    *(v15 + 16) = v46;
    *(v15 + 32) = v18;
    v19 = v49;
    *(v15 + 48) = v48;
    *(v15 + 64) = v19;
    *(v15 + 144) = v13;
    *(v15 + 152) = v14;
    MEMORY[0x28223BE20](v15);
    *(&v38 - 2) = v2;
    sub_21BC5A604(v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6A0, &qword_21BE4E570);
    v20 = sub_21BE278EC();
    v21 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8]);
    v41 = MEMORY[0x277CE0BD8];
    v42 = v20;
    v43 = MEMORY[0x277CE0BC8];
    v44 = v21;
    swift_getOpaqueTypeConformance2();
    sub_21BE2843C();
    v22 = v39;
    (*(v9 + 16))(v7, v12, v39);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD688, &qword_21BE4E540);
    sub_21BB3B038(&qword_27CDBD670, &qword_27CDBD678, &qword_21BE4E538);
    sub_21BB3B038(&qword_27CDBD680, &qword_27CDBD688, &qword_21BE4E540);
    sub_21BE2784C();
    sub_21BB5AEC4(v13);
    return (*(v9 + 8))(v12, v22);
  }

  else
  {
    sub_21BBC7968(v2, &v46);
    v24 = swift_allocObject();
    v25 = v51;
    v24[5] = v50;
    v24[6] = v25;
    v26 = v53;
    v24[7] = v52;
    v24[8] = v26;
    v27 = v47;
    v24[1] = v46;
    v24[2] = v27;
    v28 = v49;
    v24[3] = v48;
    v24[4] = v28;
    sub_21BBC7968(v2, &v46);
    v29 = swift_allocObject();
    v30 = v51;
    v29[5] = v50;
    v29[6] = v30;
    v31 = v53;
    v29[7] = v52;
    v29[8] = v31;
    v32 = v47;
    v29[1] = v46;
    v29[2] = v32;
    v33 = v49;
    v29[3] = v48;
    v29[4] = v33;
    v45 = 0;
    sub_21BE283EC();
    v34 = v41;
    v35 = v42;
    type metadata accessor for NavigationManager();
    sub_21BDE10A8(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    v36 = sub_21BE26E9C();
    *v7 = &unk_21BE4E568;
    *(v7 + 1) = v24;
    *(v7 + 2) = sub_21BDE0BEC;
    *(v7 + 3) = v29;
    v7[32] = v34;
    *(v7 + 5) = v35;
    *(v7 + 6) = v36;
    v7[56] = v37 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD688, &qword_21BE4E540);
    sub_21BB3B038(&qword_27CDBD670, &qword_27CDBD678, &qword_21BE4E538);
    sub_21BB3B038(&qword_27CDBD680, &qword_27CDBD688, &qword_21BE4E540);
    return sub_21BE2784C();
  }
}

uint64_t sub_21BDD9268(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDD9300, v4, v3);
}

uint64_t sub_21BDD9300()
{
  v1 = v0[4];

  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_21BC25DC8((v3 + 80));
  sub_21BB3A35C(v3 + 80, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_21BDD93BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE25FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD638, &qword_21BE4E4F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = sub_21BE2869C();
  v37 = v16;
  v38 = v15;
  sub_21BDD99C0(a1, &v55);
  v84 = v65;
  v85 = v66;
  v80 = v61;
  v81 = v62;
  v82 = v63;
  v83 = v64;
  v76 = v57;
  v77 = v58;
  v78 = v59;
  v79 = v60;
  v74 = v55;
  v75 = v56;
  v87[10] = v65;
  v87[11] = v66;
  v87[6] = v61;
  v87[7] = v62;
  v87[8] = v63;
  v87[9] = v64;
  v87[2] = v57;
  v87[3] = v58;
  v87[4] = v59;
  v87[5] = v60;
  v86 = v67;
  v88 = v67;
  v87[0] = v55;
  v87[1] = v56;
  sub_21BBA3854(&v74, &v41, &qword_27CDBD578, &qword_21BE4E3E0);
  sub_21BB3A4CC(v87, &qword_27CDBD578, &qword_21BE4E3E0);
  v98 = v83;
  v99 = v84;
  v100 = v85;
  v94 = v79;
  v95 = v80;
  v101 = v86;
  v96 = v81;
  v97 = v82;
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v89 = v74;
  v90 = v75;
  *v14 = sub_21BE2771C();
  *(v14 + 1) = 0x4000000000000000;
  v14[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD640, &qword_21BE4E500);
  sub_21BDDA058(a1, &v14[*(v17 + 44)]);
  sub_21BB3A35C((a1 + 10), v69);
  LOBYTE(v41) = 0;
  sub_21BE283EC();
  BYTE8(v70) = v55;
  v71 = *(&v55 + 1);
  (*(v5 + 104))(v8, *MEMORY[0x277D07F38], v4);
  v18 = MEMORY[0x21CF01150](v8);
  (*(v5 + 8))(v8, v4);
  if (v18)
  {
    v19 = v69[0];
    v20 = v69[1];
    v21 = v70;
    v22 = v71;
  }

  else
  {
    sub_21BDE0954(v69);
    v22 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  v72[0] = v19;
  v72[1] = v20;
  v72[2] = v21;
  v73 = v22;
  v23 = v39;
  sub_21BBA3854(v14, v39, &qword_27CDBD638, &qword_21BE4E4F8);
  sub_21BBA3854(v72, v40, &qword_27CDBD648, &qword_21BE4E508);
  v24 = v37;
  v25 = v38;
  *&v41 = v38;
  *(&v41 + 1) = v37;
  v52 = v99;
  v53 = v100;
  v48 = v95;
  v49 = v96;
  v50 = v97;
  v51 = v98;
  v44 = v91;
  v45 = v92;
  v46 = v93;
  v47 = v94;
  v42 = v89;
  v43 = v90;
  v26 = v99;
  v27 = v100;
  v28 = v97;
  *(a2 + 160) = v98;
  *(a2 + 176) = v26;
  *(a2 + 192) = v27;
  v29 = v48;
  v30 = v49;
  v31 = v46;
  *(a2 + 96) = v47;
  *(a2 + 112) = v29;
  v54 = v101;
  *(a2 + 208) = v101;
  *(a2 + 128) = v30;
  *(a2 + 144) = v28;
  v32 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v32;
  *(a2 + 64) = v45;
  *(a2 + 80) = v31;
  v33 = v42;
  *a2 = v41;
  *(a2 + 16) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD650, &qword_21BE4E510);
  sub_21BBA3854(v23, a2 + v34[12], &qword_27CDBD638, &qword_21BE4E4F8);
  v35 = a2 + v34[16];
  *v35 = 0;
  *(v35 + 8) = 256;
  sub_21BBA3854(v40, a2 + v34[20], &qword_27CDBD648, &qword_21BE4E508);
  sub_21BBA3854(&v41, &v55, &qword_27CDBD590, &qword_21BE4E3F8);
  sub_21BB3A4CC(v72, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v14, &qword_27CDBD638, &qword_21BE4E4F8);
  sub_21BB3A4CC(v40, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v23, &qword_27CDBD638, &qword_21BE4E4F8);
  *&v55 = v25;
  *(&v55 + 1) = v24;
  v66 = v99;
  v67 = v100;
  v68 = v101;
  v62 = v95;
  v63 = v96;
  v65 = v98;
  v64 = v97;
  v58 = v91;
  v59 = v92;
  v61 = v94;
  v60 = v93;
  v57 = v90;
  v56 = v89;
  return sub_21BB3A4CC(&v55, &qword_27CDBD590, &qword_21BE4E3F8);
}

uint64_t sub_21BDD99C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2838C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[15];
  v56 = v5;
  v57 = v7;
  if (v10)
  {
    swift_retain_n();
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v88 + 6) = v96;
    *(&v88[1] + 6) = v97;
    *(&v88[2] + 6) = v98;
    v63 = v10;
    *v64 = 1;
    *&v64[2] = v88[0];
    *&v64[18] = v88[1];
    *&v64[34] = v88[2];
    *&v64[48] = *(&v98 + 1);
    v80 = v10;
    v81 = *v64;
    v82 = *&v64[16];
    v83 = *&v64[32];
    *&v84 = *(&v98 + 1);
    LOBYTE(v78[0]) = 0;
    BYTE8(v84) = 0;
    sub_21BBA3854(&v63, v88, &qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v11 = &qword_27CDBD610;
    v12 = &qword_21BE4E4D8;
  }

  else
  {
    v13 = a1[4];
    if (!v13)
    {
      v17 = 0;
      v61 = 0u;
      v62 = 0u;
      v58 = 255;
      v59 = 0u;
      v60 = 0u;
      v18 = a1[9];
      if (v18)
      {
        goto LABEL_6;
      }

LABEL_8:
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v34 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v33 = 0;
      v28 = 0;
      v30 = 0;
      v38 = 0;
      v32 = 0;
      goto LABEL_9;
    }

    v14 = v7;
    v15 = v13;
    sub_21BE2836C();
    (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v14);
    v16 = sub_21BE283CC();

    (*(v5 + 8))(v9, v14);
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v88 + 6) = v96;
    *(&v88[1] + 6) = v97;
    *(&v88[2] + 6) = v98;
    v63 = v16;
    *v64 = 1;
    *&v64[2] = v88[0];
    *&v64[18] = v88[1];
    *&v64[34] = v88[2];
    *&v64[48] = *(&v98 + 1);
    v80 = v16;
    v81 = *v64;
    v82 = *&v64[16];
    v83 = *&v64[32];
    *&v84 = *(&v98 + 1);
    LOBYTE(v78[0]) = 1;
    BYTE8(v84) = 1;
    sub_21BBA3854(&v63, v88, &qword_27CDB9C50, &qword_21BE41700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v11 = &qword_27CDB9C50;
    v12 = &qword_21BE41700;
  }

  sub_21BB3A4CC(&v63, v11, v12);
  v61 = v88[1];
  v62 = v88[0];
  v59 = v88[3];
  v60 = v88[2];
  v17 = v89;
  v58 = v90;
  v18 = a1[9];
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = v18;
  v20 = sub_21BE2869C();
  v53 = v21;
  v54 = v20;
  v22 = v19;
  v55 = v17;
  v52 = v22;
  sub_21BE2836C();
  v24 = v56;
  v23 = v57;
  (*(v56 + 104))(v9, *MEMORY[0x277CE0FE0], v57);
  v51 = sub_21BE283CC();

  (*(v24 + 8))(v9, v23);
  sub_21BE2869C();
  sub_21BE26F2C();
  LOBYTE(v88[0]) = 1;
  v25 = v100;
  v57 = v99;
  v26 = v101;
  v27 = v102;
  v29 = v103;
  v28 = v104;
  v30 = sub_21BE282DC();
  v31 = sub_21BE27B7C();

  v32 = 1;
  v33 = v29;
  v34 = v57;
  v35 = v51;
  v37 = v53;
  v36 = v54;
  v17 = v55;
  v38 = v31;
  v18 = 0x402A000000000000;
LABEL_9:
  v78[0] = v62;
  v78[1] = v61;
  v78[2] = v60;
  v79[0] = v59;
  *&v79[1] = v17;
  v39 = v58;
  BYTE8(v79[1]) = v58;
  v68 = v60;
  v69[0] = v59;
  *(v69 + 9) = *(v79 + 9);
  v66 = v62;
  v67 = v61;
  *&v80 = v36;
  *(&v80 + 1) = v37;
  v81 = v35;
  *&v82 = v32;
  *(&v82 + 1) = v34;
  *&v83 = v25;
  *(&v83 + 1) = v26;
  *&v84 = v27;
  *(&v84 + 1) = v33;
  *&v85 = v28;
  *(&v85 + 1) = v30;
  *&v86 = v38;
  *(&v86 + 1) = v18;
  v87 = v18;
  v72 = v82;
  v73 = v83;
  v70 = v80;
  v71 = v35;
  v77 = v18;
  v75 = v85;
  v76 = v86;
  v74 = v84;
  v40 = v62;
  v41 = v61;
  v42 = v69[0];
  *(a2 + 32) = v60;
  *(a2 + 48) = v42;
  *a2 = v40;
  *(a2 + 16) = v41;
  v43 = v69[1];
  v44 = v70;
  v45 = v72;
  *(a2 + 96) = v71;
  *(a2 + 112) = v45;
  *(a2 + 64) = v43;
  *(a2 + 80) = v44;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  v49 = v76;
  *(a2 + 192) = v77;
  *(a2 + 160) = v48;
  *(a2 + 176) = v49;
  *(a2 + 128) = v46;
  *(a2 + 144) = v47;
  *&v88[0] = v36;
  *(&v88[0] + 1) = v37;
  v88[1] = v35;
  *&v88[2] = v32;
  *(&v88[2] + 1) = v34;
  *&v88[3] = v25;
  *(&v88[3] + 1) = v26;
  v89 = v27;
  v90 = v33;
  v91 = v28;
  v92 = v30;
  v93 = v38;
  v94 = v18;
  v95 = v18;
  sub_21BBA3854(v78, &v63, &qword_27CDBD600, &qword_21BE4E4C0);
  sub_21BBA3854(&v80, &v63, &qword_27CDBD608, &unk_21BE4E4C8);
  sub_21BB3A4CC(v88, &qword_27CDBD608, &unk_21BE4E4C8);
  v63 = v62;
  *v64 = v61;
  *&v64[16] = v60;
  *&v64[32] = v59;
  *&v64[48] = v17;
  v65 = v39;
  return sub_21BB3A4CC(&v63, &qword_27CDBD600, &qword_21BE4E4C0);
}

uint64_t sub_21BDDA058@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD658, &qword_21BE4E518);
  v3 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD660, &unk_21BE4E520);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v100 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v91 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v97 = *(v96 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F80, &qword_21BE4E530);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v98 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v107 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = &v91 - v21;
  v92 = a1;
  v22 = a1[1];
  v104 = *a1;
  v116 = v104;
  v117 = v22;
  v105 = sub_21BB41FA4();

  v23 = sub_21BE27DBC();
  v25 = v24;
  v27 = v26;
  sub_21BE27CDC();
  v28 = sub_21BE27D9C();
  v30 = v29;
  v32 = v31;

  sub_21BBC7C7C(v23, v25, v27 & 1);

  v33 = sub_21BE27D3C();
  v35 = v34;
  v37 = v36;
  sub_21BBC7C7C(v28, v30, v32 & 1);

  sub_21BE2832C();
  v38 = sub_21BE27D4C();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_21BBC7C7C(v33, v35, v37 & 1);

  v116 = v38;
  v117 = v40;
  v118 = v42 & 1;
  v120 = v44;
  sub_21BE2809C();
  sub_21BBC7C7C(v38, v40, v42 & 1);

  v45 = v92;
  v46 = v92[3];
  v116 = v92[2];
  v117 = v46;

  v47 = sub_21BE27DBC();
  v49 = v48;
  LOBYTE(v35) = v50;
  sub_21BE27BEC();
  v51 = sub_21BE27D9C();
  v53 = v52;
  v55 = v54;

  sub_21BBC7C7C(v47, v49, v35 & 1);

  sub_21BE2833C();
  v93 = sub_21BE27D4C();
  v105 = v56;
  v58 = v57;
  v94 = v59;

  sub_21BBC7C7C(v51, v53, v55 & 1);

  LODWORD(v104) = sub_21BE27B9C();
  sub_21BE26E0C();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v103 = v58 & 1;
  LOBYTE(v116) = v58 & 1;
  LOBYTE(v112) = 0;
  v68 = v95;
  sub_21BE285AC();
  v69 = sub_21BE27B7C();
  v70 = v96;
  v71 = v68 + *(v96 + 36);
  *v71 = v69;
  *(v71 + 8) = 0;
  *(v71 + 16) = 0;
  *(v71 + 24) = xmmword_21BE4E160;
  *(v71 + 40) = 0;
  v72 = v106;
  sub_21BDE0984(v68, v106);
  (*(v97 + 56))(v72, 0, 1, v70);
  v73 = v99;
  sub_21BDD8CDC(v99);
  v74 = v45[13];
  v75 = v45[14];
  __swift_project_boxed_opaque_existential_1Tm(v45 + 10, v74);
  v76 = (*(v75 + 32))(v74, v75);
  v116 = sub_21BC5A608(v76);
  v117 = v77;
  MEMORY[0x21CF03CA0](0x70757465732ELL, 0xE600000000000000);
  sub_21BDE09F4();
  v78 = v108;
  sub_21BE2809C();

  sub_21BB3A4CC(v73, &qword_27CDBD658, &qword_21BE4E518);
  v79 = v107;
  sub_21BBA3854(v109, v107, &qword_27CDB99C0, &qword_21BE40C00);
  v80 = v98;
  sub_21BBA3854(v72, v98, &qword_27CDB9F80, &qword_21BE4E530);
  v81 = v100;
  sub_21BBA3854(v78, v100, &qword_27CDBD660, &unk_21BE4E520);
  v82 = v102;
  sub_21BBA3854(v79, v102, &qword_27CDB99C0, &qword_21BE40C00);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD690, &unk_21BE4E548);
  v84 = (v82 + v83[12]);
  v85 = v93;
  *&v112 = v93;
  *(&v112 + 1) = v105;
  LOBYTE(v113) = v103;
  *(&v113 + 1) = v111[0];
  DWORD1(v113) = *(v111 + 3);
  v86 = v94;
  *(&v113 + 1) = v94;
  LOBYTE(v114) = v104;
  *(&v114 + 1) = *v110;
  DWORD1(v114) = *&v110[3];
  *(&v114 + 1) = v61;
  *v115 = v63;
  *&v115[8] = v65;
  *&v115[16] = v67;
  v115[24] = 0;
  v87 = v112;
  v88 = v113;
  *(v84 + 57) = *&v115[9];
  v89 = *v115;
  v84[2] = v114;
  v84[3] = v89;
  *v84 = v87;
  v84[1] = v88;
  sub_21BBA3854(v80, v82 + v83[16], &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BBA3854(v81, v82 + v83[20], &qword_27CDBD660, &unk_21BE4E520);
  sub_21BBA3854(&v112, &v116, &qword_27CDB7940, &qword_21BE47630);
  sub_21BB3A4CC(v108, &qword_27CDBD660, &unk_21BE4E520);
  sub_21BB3A4CC(v106, &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BB3A4CC(v109, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BB3A4CC(v81, &qword_27CDBD660, &unk_21BE4E520);
  sub_21BB3A4CC(v80, &qword_27CDB9F80, &qword_21BE4E530);
  v116 = v85;
  v117 = v105;
  v118 = v103;
  *v119 = v111[0];
  *&v119[3] = *(v111 + 3);
  v120 = v86;
  v121 = v104;
  *v122 = *v110;
  *&v122[3] = *&v110[3];
  v123 = v61;
  v124 = v63;
  v125 = v65;
  v126 = v67;
  v127 = 0;
  sub_21BB3A4CC(&v116, &qword_27CDB7940, &qword_21BE47630);
  return sub_21BB3A4CC(v107, &qword_27CDB99C0, &qword_21BE40C00);
}

uint64_t sub_21BDDA9C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21BE275CC();
  *(a1 + 8) = 0x4029000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD630, &qword_21BE4E4F0);
  return sub_21BDD93BC(v1, a1 + *(v3 + 44));
}

uint64_t sub_21BDDAA38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD570, &qword_21BE4E3D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = sub_21BE2869C();
  v13 = v12;
  sub_21BDDAD8C(a1, &v65);
  v46 = v75;
  v47 = v76;
  v42 = v71;
  v43 = v72;
  v44 = v73;
  v45 = v74;
  v38 = v67;
  v39 = v68;
  v40 = v69;
  v41 = v70;
  v36 = v65;
  v37 = v66;
  v49[10] = v75;
  v49[11] = v76;
  v49[6] = v71;
  v49[7] = v72;
  v49[8] = v73;
  v49[9] = v74;
  v49[2] = v67;
  v49[3] = v68;
  v49[4] = v69;
  v49[5] = v70;
  v48 = v77;
  v50 = v77;
  v49[0] = v65;
  v49[1] = v66;
  sub_21BBA3854(&v36, &v51, &qword_27CDBD578, &qword_21BE4E3E0);
  sub_21BB3A4CC(v49, &qword_27CDBD578, &qword_21BE4E3E0);
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v23 = v36;
  v24 = v37;
  *v10 = sub_21BE2771C();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD580, &qword_21BE4E3E8);
  sub_21BDDB424(a1, &v10[*(v14 + 44)]);
  sub_21BBA3854(v10, v8, &qword_27CDBD570, &qword_21BE4E3D8);
  *&v51 = v11;
  *(&v51 + 1) = v13;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  v54 = v25;
  v55 = v26;
  v56 = v27;
  v57 = v28;
  v52 = v23;
  v53 = v24;
  v15 = v33;
  *(a2 + 160) = v32;
  *(a2 + 176) = v15;
  *(a2 + 192) = v63;
  *(a2 + 208) = v64;
  v16 = v58;
  *(a2 + 96) = v57;
  *(a2 + 112) = v16;
  v17 = v60;
  *(a2 + 128) = v59;
  *(a2 + 144) = v17;
  v18 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v18;
  v19 = v56;
  *(a2 + 64) = v55;
  *(a2 + 80) = v19;
  v20 = v52;
  *a2 = v51;
  *(a2 + 16) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD588, &qword_21BE4E3F0);
  sub_21BBA3854(v8, a2 + *(v21 + 48), &qword_27CDBD570, &qword_21BE4E3D8);
  sub_21BBA3854(&v51, &v65, &qword_27CDBD590, &qword_21BE4E3F8);
  sub_21BB3A4CC(v10, &qword_27CDBD570, &qword_21BE4E3D8);
  sub_21BB3A4CC(v8, &qword_27CDBD570, &qword_21BE4E3D8);
  *&v65 = v11;
  *(&v65 + 1) = v13;
  v76 = v33;
  v77 = v34;
  v78 = v35;
  v72 = v29;
  v73 = v30;
  v74 = v31;
  v75 = v32;
  v68 = v25;
  v69 = v26;
  v70 = v27;
  v71 = v28;
  v66 = v23;
  v67 = v24;
  return sub_21BB3A4CC(&v65, &qword_27CDBD590, &qword_21BE4E3F8);
}

uint64_t sub_21BDDAD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2838C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[15];
  v56 = v5;
  v57 = v7;
  if (v10)
  {
    swift_retain_n();
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v88 + 6) = v96;
    *(&v88[1] + 6) = v97;
    *(&v88[2] + 6) = v98;
    v63 = v10;
    *v64 = 1;
    *&v64[2] = v88[0];
    *&v64[18] = v88[1];
    *&v64[34] = v88[2];
    *&v64[48] = *(&v98 + 1);
    v80 = v10;
    v81 = *v64;
    v82 = *&v64[16];
    v83 = *&v64[32];
    *&v84 = *(&v98 + 1);
    LOBYTE(v78[0]) = 0;
    BYTE8(v84) = 0;
    sub_21BBA3854(&v63, v88, &qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v11 = &qword_27CDBD610;
    v12 = &qword_21BE4E4D8;
  }

  else
  {
    v13 = a1[6];
    if (!v13)
    {
      v17 = 0;
      v61 = 0u;
      v62 = 0u;
      v58 = 255;
      v59 = 0u;
      v60 = 0u;
      v18 = a1[9];
      if (v18)
      {
        goto LABEL_6;
      }

LABEL_8:
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v34 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v33 = 0;
      v28 = 0;
      v30 = 0;
      v38 = 0;
      v32 = 0;
      goto LABEL_9;
    }

    v14 = v7;
    v15 = v13;
    sub_21BE2836C();
    (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v14);
    v16 = sub_21BE283CC();

    (*(v5 + 8))(v9, v14);
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v88 + 6) = v96;
    *(&v88[1] + 6) = v97;
    *(&v88[2] + 6) = v98;
    v63 = v16;
    *v64 = 1;
    *&v64[2] = v88[0];
    *&v64[18] = v88[1];
    *&v64[34] = v88[2];
    *&v64[48] = *(&v98 + 1);
    v80 = v16;
    v81 = *v64;
    v82 = *&v64[16];
    v83 = *&v64[32];
    *&v84 = *(&v98 + 1);
    LOBYTE(v78[0]) = 1;
    BYTE8(v84) = 1;
    sub_21BBA3854(&v63, v88, &qword_27CDB9C50, &qword_21BE41700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v11 = &qword_27CDB9C50;
    v12 = &qword_21BE41700;
  }

  sub_21BB3A4CC(&v63, v11, v12);
  v61 = v88[1];
  v62 = v88[0];
  v59 = v88[3];
  v60 = v88[2];
  v17 = v89;
  v58 = v90;
  v18 = a1[9];
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = v18;
  v20 = sub_21BE2869C();
  v53 = v21;
  v54 = v20;
  v22 = v19;
  v55 = v17;
  v52 = v22;
  sub_21BE2836C();
  v24 = v56;
  v23 = v57;
  (*(v56 + 104))(v9, *MEMORY[0x277CE0FE0], v57);
  v51 = sub_21BE283CC();

  (*(v24 + 8))(v9, v23);
  sub_21BE2869C();
  sub_21BE26F2C();
  LOBYTE(v88[0]) = 1;
  v25 = v100;
  v57 = v99;
  v26 = v101;
  v27 = v102;
  v29 = v103;
  v28 = v104;
  v30 = sub_21BE282DC();
  v31 = sub_21BE27B7C();

  v32 = 1;
  v33 = v29;
  v34 = v57;
  v35 = v51;
  v37 = v53;
  v36 = v54;
  v17 = v55;
  v38 = v31;
  v18 = 0x402A000000000000;
LABEL_9:
  v78[0] = v62;
  v78[1] = v61;
  v78[2] = v60;
  v79[0] = v59;
  *&v79[1] = v17;
  v39 = v58;
  BYTE8(v79[1]) = v58;
  v68 = v60;
  v69[0] = v59;
  *(v69 + 9) = *(v79 + 9);
  v66 = v62;
  v67 = v61;
  *&v80 = v36;
  *(&v80 + 1) = v37;
  v81 = v35;
  *&v82 = v32;
  *(&v82 + 1) = v34;
  *&v83 = v25;
  *(&v83 + 1) = v26;
  *&v84 = v27;
  *(&v84 + 1) = v33;
  *&v85 = v28;
  *(&v85 + 1) = v30;
  *&v86 = v38;
  *(&v86 + 1) = v18;
  v87 = v18;
  v72 = v82;
  v73 = v83;
  v70 = v80;
  v71 = v35;
  v77 = v18;
  v75 = v85;
  v76 = v86;
  v74 = v84;
  v40 = v62;
  v41 = v61;
  v42 = v69[0];
  *(a2 + 32) = v60;
  *(a2 + 48) = v42;
  *a2 = v40;
  *(a2 + 16) = v41;
  v43 = v69[1];
  v44 = v70;
  v45 = v72;
  *(a2 + 96) = v71;
  *(a2 + 112) = v45;
  *(a2 + 64) = v43;
  *(a2 + 80) = v44;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  v49 = v76;
  *(a2 + 192) = v77;
  *(a2 + 160) = v48;
  *(a2 + 176) = v49;
  *(a2 + 128) = v46;
  *(a2 + 144) = v47;
  *&v88[0] = v36;
  *(&v88[0] + 1) = v37;
  v88[1] = v35;
  *&v88[2] = v32;
  *(&v88[2] + 1) = v34;
  *&v88[3] = v25;
  *(&v88[3] + 1) = v26;
  v89 = v27;
  v90 = v33;
  v91 = v28;
  v92 = v30;
  v93 = v38;
  v94 = v18;
  v95 = v18;
  sub_21BBA3854(v78, &v63, &qword_27CDBD600, &qword_21BE4E4C0);
  sub_21BBA3854(&v80, &v63, &qword_27CDBD608, &unk_21BE4E4C8);
  sub_21BB3A4CC(v88, &qword_27CDBD608, &unk_21BE4E4C8);
  v63 = v62;
  *v64 = v61;
  *&v64[16] = v60;
  *&v64[32] = v59;
  *&v64[48] = v17;
  v65 = v39;
  return sub_21BB3A4CC(&v63, &qword_27CDBD600, &qword_21BE4E4C0);
}

uint64_t sub_21BDDB424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD598, &qword_21BE4E400);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - v7;
  *v8 = sub_21BE275DC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5A0, &qword_21BE4E408) + 44);
  v60 = v8;
  sub_21BDDBA18(a1, &v8[v9]);
  v10 = a1[3];
  if (v10)
  {
    v11 = a1[2];
    if (qword_27CDB4FF8 != -1)
    {
      v54 = a1[2];
      v55 = a1[3];
      swift_once();
      v11 = v54;
      v10 = v55;
    }

    v12 = qword_27CDD43A8;
    v64 = 0;
    sub_21BDDBE94(v11, v10, &v95);
    v75 = v105;
    v76 = v106;
    v71 = v101;
    v72 = v102;
    v73 = v103;
    v74 = v104;
    v67 = v97;
    v68 = v98;
    v69 = v99;
    v70 = v100;
    v65 = v95;
    v66 = v96;
    v89 = v105;
    v90 = v106;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v88 = v104;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    *&v77 = v107;
    *&v91 = v107;
    v79 = v95;
    v80 = v96;
    sub_21BBA3854(&v65, &v93, &qword_27CDBD5B8, &qword_21BE4E420);
    sub_21BB3A4CC(&v79, &qword_27CDBD5B8, &qword_21BE4E420);
    *(&v63[9] + 7) = v74;
    *(&v63[10] + 7) = v75;
    *(&v63[11] + 7) = v76;
    *(&v63[12] + 7) = v77;
    *(&v63[5] + 7) = v70;
    *(&v63[6] + 7) = v71;
    *(&v63[7] + 7) = v72;
    *(&v63[8] + 7) = v73;
    *(&v63[1] + 7) = v66;
    *(&v63[2] + 7) = v67;
    *(&v63[3] + 7) = v68;
    *(&v63[4] + 7) = v69;
    *(v63 + 7) = v65;
    *(&v94[9] + 1) = v63[9];
    *(&v94[10] + 1) = v63[10];
    *(&v94[11] + 1) = v63[11];
    v94[12] = *(&v63[11] + 15);
    *(&v94[5] + 1) = v63[5];
    *(&v94[6] + 1) = v63[6];
    *(&v94[7] + 1) = v63[7];
    *(&v94[8] + 1) = v63[8];
    *(&v94[1] + 1) = v63[1];
    *(&v94[2] + 1) = v63[2];
    *(&v94[3] + 1) = v63[3];
    *(&v94[4] + 1) = v63[4];
    *&v93 = v12;
    *(&v93 + 1) = 0x4008000000000000;
    LOBYTE(v94[0]) = v64;
    *(v94 + 1) = v63[0];
    nullsub_1(&v93);
    v105 = v94[9];
    v106 = v94[10];
    v107 = v94[11];
    v108 = v94[12];
    v101 = v94[5];
    v102 = v94[6];
    v103 = v94[7];
    v104 = v94[8];
    v97 = v94[1];
    v98 = v94[2];
    v99 = v94[3];
    v100 = v94[4];
    v95 = v93;
    v96 = v94[0];
  }

  else
  {
    sub_21BDDD458(&v95);
  }

  v13 = a1[4];
  v14 = a1[5];
  *&v93 = v13;
  *(&v93 + 1) = v14;
  sub_21BB41FA4();

  v15 = sub_21BE27DBC();
  v17 = v16;
  v19 = v18;
  sub_21BE27BEC();
  v20 = sub_21BE27D9C();
  v56 = v21;
  v57 = v20;
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v15, v17, v19 & 1);

  sub_21BE2833C();
  v26 = v57;
  v27 = sub_21BE27D4C();
  v29 = v28;
  v59 = v30;
  v58 = v31;

  sub_21BBC7C7C(v26, v23, v25 & 1);

  v32 = v60;
  v33 = v62;
  sub_21BBA3854(v60, v62, &qword_27CDBD598, &qword_21BE4E400);
  v75 = v105;
  v76 = v106;
  v77 = v107;
  v78 = v108;
  v71 = v101;
  v72 = v102;
  v73 = v103;
  v74 = v104;
  v67 = v97;
  v68 = v98;
  v69 = v99;
  v70 = v100;
  v65 = v95;
  v66 = v96;
  v34 = v33;
  v35 = v61;
  sub_21BBA3854(v34, v61, &qword_27CDBD598, &qword_21BE4E400);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5A8, &qword_21BE4E410);
  v37 = *(v36 + 48);
  v38 = v74;
  v89 = v75;
  v90 = v76;
  v39 = v76;
  v40 = v77;
  v91 = v77;
  v92 = v78;
  v41 = v71;
  v42 = v70;
  v85 = v71;
  v86 = v72;
  v43 = v72;
  v44 = v73;
  v87 = v73;
  v88 = v74;
  v45 = v68;
  v46 = v69;
  v83 = v69;
  v84 = v70;
  v47 = v67;
  v48 = v66;
  v81 = v67;
  v82 = v68;
  v49 = v65;
  v79 = v65;
  v80 = v66;
  v50 = (v35 + v37);
  v50[10] = v75;
  v50[11] = v39;
  v51 = v78;
  v50[12] = v40;
  v50[13] = v51;
  v50[6] = v41;
  v50[7] = v43;
  v50[8] = v44;
  v50[9] = v38;
  v50[2] = v47;
  v50[3] = v45;
  v50[4] = v46;
  v50[5] = v42;
  *v50 = v49;
  v50[1] = v48;
  v52 = v35 + *(v36 + 64);
  *v52 = v27;
  *(v52 + 8) = v29;
  LOBYTE(v35) = v59 & 1;
  *(v52 + 16) = v59 & 1;
  *(v52 + 24) = v58;
  sub_21BBA3854(&v79, &v93, &qword_27CDBD5B0, &qword_21BE4E418);
  sub_21BBA4A38(v27, v29, v35);

  sub_21BB3A4CC(v32, &qword_27CDBD598, &qword_21BE4E400);
  sub_21BBC7C7C(v27, v29, v35);

  v94[9] = v75;
  v94[10] = v76;
  v94[11] = v77;
  v94[12] = v78;
  v94[5] = v71;
  v94[6] = v72;
  v94[7] = v73;
  v94[8] = v74;
  v94[1] = v67;
  v94[2] = v68;
  v94[3] = v69;
  v94[4] = v70;
  v93 = v65;
  v94[0] = v66;
  sub_21BB3A4CC(&v93, &qword_27CDBD5B0, &qword_21BE4E418);
  return sub_21BB3A4CC(v62, &qword_27CDBD598, &qword_21BE4E400);
}

uint64_t sub_21BDDBA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  v3 = *(*(v50 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - v11;
  v12 = a1[1];
  v48 = *a1;
  v55 = v48;
  v56 = v12;
  sub_21BB41FA4();

  v13 = sub_21BE27DBC();
  v15 = v14;
  v17 = v16;
  sub_21BE27CDC();
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  v23 = sub_21BE27D3C();
  v25 = v24;
  v27 = v26;
  sub_21BBC7C7C(v18, v20, v22 & 1);

  sub_21BE2832C();
  v28 = sub_21BE27D4C();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_21BBC7C7C(v23, v25, v27 & 1);

  v55 = v28;
  v56 = v30;
  LOBYTE(v23) = v32 & 1;
  v35 = v49;
  LOBYTE(v57) = v23;
  v58 = v34;
  sub_21BE2809C();
  sub_21BBC7C7C(v28, v30, v23);

  v36 = sub_21BE2837C();
  v37 = sub_21BE27BEC();
  KeyPath = swift_getKeyPath();
  v55 = v36;
  v56 = KeyPath;
  v57 = v37;
  sub_21BE27C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E8, &qword_21BE4F170);
  sub_21BDE06D4();
  sub_21BE27EAC();

  if (qword_27CDB4E80 != -1)
  {
    swift_once();
  }

  v39 = qword_27CDD41F0;
  v40 = sub_21BE2826C();
  v41 = v51;
  *(v35 + *(v50 + 36)) = v40;
  v42 = v54;
  sub_21BBA3854(v54, v41, &qword_27CDB99C0, &qword_21BE40C00);
  v43 = v52;
  sub_21BBA3854(v35, v52, &qword_27CDBD5E0, &unk_21BE4E4A8);
  v44 = v53;
  sub_21BBA3854(v41, v53, &qword_27CDB99C0, &qword_21BE40C00);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5F8, &qword_21BE4E4B8);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_21BBA3854(v43, v44 + *(v45 + 64), &qword_27CDBD5E0, &unk_21BE4E4A8);
  sub_21BB3A4CC(v35, &qword_27CDBD5E0, &unk_21BE4E4A8);
  sub_21BB3A4CC(v42, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BB3A4CC(v43, &qword_27CDBD5E0, &unk_21BE4E4A8);
  return sub_21BB3A4CC(v41, &qword_27CDB99C0, &qword_21BE40C00);
}

uint64_t sub_21BDDBE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21BE2869C();
  v35 = v7;
  v36 = v6;
  sub_21BDDC24C(&v63);
  v41 = v67;
  v42 = v68;
  v43 = v69;
  v44 = v70;
  v37 = v63;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  v45[0] = v63;
  v45[1] = v64;
  v45[2] = v65;
  v45[3] = v66;
  v45[4] = v67;
  v45[5] = v68;
  v45[6] = v69;
  v45[7] = v70;
  sub_21BBA3854(&v37, &v54, &qword_27CDBD5C0, &qword_21BE4E428);
  sub_21BB3A4CC(v45, &qword_27CDBD5C0, &qword_21BE4E428);
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  *&v63 = a1;
  *(&v63 + 1) = a2;
  sub_21BB41FA4();

  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11;
  sub_21BE27BEC();
  v13 = sub_21BE27D9C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  sub_21BE27C4C();
  v18 = sub_21BE27D3C();
  v20 = v19;
  LOBYTE(v8) = v21;
  sub_21BBC7C7C(v13, v15, v17 & 1);

  sub_21BE2833C();
  v22 = sub_21BE27D4C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_21BBC7C7C(v18, v20, v8 & 1);

  if (qword_27CDB4FF8 != -1)
  {
    swift_once();
  }

  v29 = qword_27CDD43A8;
  *&v54 = v36;
  *(&v54 + 1) = v35;
  v59 = v50;
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v30 = v52;
  *(a3 + 96) = v51;
  *(a3 + 112) = v30;
  *(a3 + 128) = v62;
  v31 = v57;
  *(a3 + 32) = v56;
  *(a3 + 48) = v31;
  v32 = v59;
  *(a3 + 64) = v58;
  *(a3 + 80) = v32;
  v33 = v55;
  *a3 = v54;
  *(a3 + 16) = v33;
  *(a3 + 144) = v22;
  *(a3 + 152) = v24;
  *(a3 + 160) = v26 & 1;
  *(a3 + 168) = v28;
  *(a3 + 176) = v29;
  *(a3 + 184) = sub_21BDDC570;
  *(a3 + 192) = 0;
  sub_21BBA3854(&v54, &v63, &qword_27CDBD5C8, &unk_21BE4E430);
  sub_21BBA4A38(v22, v24, v26 & 1);

  sub_21BBC7C7C(v22, v24, v26 & 1);

  *&v63 = v36;
  *(&v63 + 1) = v35;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v71 = v53;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  return sub_21BB3A4CC(&v63, &qword_27CDBD5C8, &unk_21BE4E430);
}

uint64_t sub_21BDDC24C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = [objc_opt_self() systemGreenColor];
  v7 = sub_21BE2826C();
  KeyPath = swift_getKeyPath();
  sub_21BE2869C();
  sub_21BE26F2C();
  if (qword_27CDB4FF8 != -1)
  {
    swift_once();
  }

  v9 = qword_27CDD43A8;
  v10 = sub_21BE2837C();
  sub_21BE27C2C();
  v11 = *MEMORY[0x277CE09A0];
  v12 = sub_21BE27C1C();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  v14 = sub_21BE27C5C();
  sub_21BB3A4CC(v5, &qword_27CDB8858, &qword_21BE3CA18);
  v15 = swift_getKeyPath();
  v16 = sub_21BE282FC();
  v17 = swift_getKeyPath();
  *&v26[0] = KeyPath;
  *(&v26[0] + 1) = v7;
  v18 = v23;
  v26[1] = v23;
  v26[2] = v24;
  v19 = v25;
  v26[3] = v25;
  *&v27 = v9;
  *(&v27 + 1) = sub_21BDDC544;
  v28 = 0;
  *(a1 + 32) = v24;
  *(a1 + 48) = v19;
  v20 = v26[0];
  *(a1 + 64) = v27;
  *a1 = v20;
  *(a1 + 16) = v18;
  *(a1 + 80) = 0;
  *(a1 + 88) = v10;
  *(a1 + 96) = v15;
  *(a1 + 104) = v14;
  *(a1 + 112) = v17;
  *(a1 + 120) = v16;
  sub_21BBA3854(v26, v29, &qword_27CDBD5D0, &qword_21BE4E4A0);
  v29[0] = KeyPath;
  v29[1] = v7;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v9;
  v34 = sub_21BDDC544;
  v35 = 0;
  return sub_21BB3A4CC(v29, &qword_27CDBD5D0, &qword_21BE4E4A0);
}

double sub_21BDDC570()
{
  sub_21BE2711C();
  v1 = v0;
  v2 = sub_21BE275AC();
  v3 = MEMORY[0x21CF022D0](v2);
  v4 = sub_21BE275BC();
  return (v1 - (v3 - MEMORY[0x21CF022D0](v4))) * 0.5;
}

uint64_t sub_21BDDC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4E0, &qword_21BE4E360);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4E8, &qword_21BE4E368);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4F0, &qword_21BE4E370);
  v11 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v13 = &v56 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4F8, &qword_21BE4E378);
  v14 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD500, &qword_21BE4E380);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD508, &qword_21BE4E388);
  v20 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v22 = &v56 - v21;
  v23 = *(a1 + 56);
  if (v23)
  {
    v24 = *(a1 + 64);
    sub_21BBC7A18(a1, &v67);
    v25 = swift_allocObject();
    v57 = v13;
    v26 = v74;
    v27 = v72;
    *(v25 + 80) = v71;
    *(v25 + 96) = v27;
    *(v25 + 112) = v73;
    *(v25 + 128) = v26;
    v28 = v68;
    *(v25 + 16) = v67;
    *(v25 + 32) = v28;
    v29 = v70;
    *(v25 + 48) = v69;
    *(v25 + 64) = v29;
    *(v25 + 144) = v23;
    *(v25 + 152) = v24;
    MEMORY[0x28223BE20](v25);
    *(&v56 - 2) = a1;
    sub_21BC5A604(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD540, &qword_21BE4E3B0);
    sub_21BDDD374();
    sub_21BE2843C();
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD560, &qword_21BE4E3C8);
    v30 = sub_21BE2721C();
    v31 = sub_21BB3B038(&qword_27CDBD530, &qword_27CDBD4E8, &qword_21BE4E368);
    v32 = sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    *&v67 = v6;
    *(&v67 + 1) = v30;
    *&v68 = v31;
    *(&v68 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v57;
    sub_21BE2784C();
    (*(v7 + 8))(v10, v6);
    v34 = &qword_27CDBD4F0;
    v35 = &qword_21BE4E370;
    sub_21BBA3854(v33, v61, &qword_27CDBD4F0, &qword_21BE4E370);
    swift_storeEnumTagMultiPayload();
    sub_21BDDD0E4();
    sub_21BDDD228();
    sub_21BE2784C();
    sub_21BB5AEC4(v23);
    v36 = v33;
  }

  else
  {
    sub_21BBC7A18(a1, &v67);
    v37 = swift_allocObject();
    v38 = v72;
    v37[5] = v71;
    v37[6] = v38;
    v39 = v74;
    v37[7] = v73;
    v37[8] = v39;
    v40 = v68;
    v37[1] = v67;
    v37[2] = v40;
    v41 = v70;
    v37[3] = v69;
    v37[4] = v41;
    sub_21BBC7A18(a1, &v67);
    v42 = swift_allocObject();
    v43 = v72;
    v42[5] = v71;
    v42[6] = v43;
    v44 = v74;
    v42[7] = v73;
    v42[8] = v44;
    v45 = v68;
    v42[1] = v67;
    v42[2] = v45;
    v46 = v70;
    v42[3] = v69;
    v42[4] = v46;
    v64 = 0;
    sub_21BE283EC();
    v47 = v65;
    v48 = v66;
    type metadata accessor for NavigationManager();
    sub_21BDE10A8(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    v49 = sub_21BE26E9C();
    v65 = v50 & 1;
    *v19 = &unk_21BE4E398;
    *(v19 + 1) = v37;
    *(v19 + 2) = sub_21BDDD0DC;
    *(v19 + 3) = v42;
    v19[32] = v47;
    *(v19 + 5) = v48;
    *(v19 + 6) = v49;
    v19[56] = v50 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD510, &qword_21BE4E3A0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD518, &qword_21BE4E3A8);
    v52 = sub_21BE2721C();
    v53 = sub_21BB3B038(&qword_27CDBD520, &qword_27CDBD518, &qword_21BE4E3A8);
    v54 = sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    *&v67 = v51;
    *(&v67 + 1) = v52;
    *&v68 = v53;
    *(&v68 + 1) = v54;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    v34 = &qword_27CDBD508;
    v35 = &qword_21BE4E388;
    sub_21BBA3854(v22, v61, &qword_27CDBD508, &qword_21BE4E388);
    swift_storeEnumTagMultiPayload();
    sub_21BDDD0E4();
    sub_21BDDD228();
    sub_21BE2784C();
    v36 = v22;
  }

  return sub_21BB3A4CC(v36, v34, v35);
}

uint64_t sub_21BDDCDBC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27CDB4E70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_21BC25DC8((a1 + 80));
  return a2(v3);
}

uint64_t sub_21BDDCE40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275CC();
  *(a2 + 8) = 0x4029000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD568, &qword_21BE4E3D0);
  sub_21BDDAA38(a1, a2 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD540, &qword_21BE4E3B0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21BDDCEB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDE1448, v4, v3);
}

uint64_t sub_21BDDCF4C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275CC();
  *(a2 + 8) = 0x4029000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD568, &qword_21BE4E3D0);
  sub_21BDDAA38(a1, a2 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD540, &qword_21BE4E3B0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21BDDCFC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDDCEB4(a1, v1 + 16);
}

uint64_t objectdestroyTm_40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 72))
  {
    v4 = *(v0 + 80);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v5 = *(v0 + 136);

  return swift_deallocObject();
}

unint64_t sub_21BDDD0E4()
{
  result = qword_27CDBD528;
  if (!qword_27CDBD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD4F0, &qword_21BE4E370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD4E8, &qword_21BE4E368);
    sub_21BE2721C();
    sub_21BB3B038(&qword_27CDBD530, &qword_27CDBD4E8, &qword_21BE4E368);
    sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD528);
  }

  return result;
}

unint64_t sub_21BDDD228()
{
  result = qword_27CDBD538;
  if (!qword_27CDBD538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD508, &qword_21BE4E388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD518, &qword_21BE4E3A8);
    sub_21BE2721C();
    sub_21BB3B038(&qword_27CDBD520, &qword_27CDBD518, &qword_21BE4E3A8);
    sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD538);
  }

  return result;
}

unint64_t sub_21BDDD374()
{
  result = qword_27CDBD548;
  if (!qword_27CDBD548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD540, &qword_21BE4E3B0);
    sub_21BB3B038(&qword_27CDBD550, &qword_27CDBD558, &unk_21BE4E3B8);
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD548);
  }

  return result;
}

double sub_21BDDD458(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_21BDDD4A8()
{
  sub_21BDE0680();
  result = sub_21BE275EC();
  qword_27CDD43A8 = result;
  return result;
}

uint64_t sub_21BDDD4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD770, &qword_21BE4E7D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v60 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD778, &qword_21BE4E7E0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v66 = v60 - v9;
  v10 = sub_21BE278EC();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v60 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD780, &qword_21BE4E7E8);
  v18 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v21 = v60 - v20;
  v22 = *(v2 + 56);
  if (v22)
  {
    v23 = *(v2 + 64);
    v61 = v21;
    v60[0] = v19;
    sub_21BC8777C(v2, &v71);
    v24 = swift_allocObject();
    v60[2] = v3;
    v25 = v75;
    *(v24 + 80) = v74;
    *(v24 + 96) = v25;
    v26 = v77;
    *(v24 + 112) = v76;
    *(v24 + 128) = v26;
    v27 = v72;
    *(v24 + 16) = v71;
    *(v24 + 32) = v27;
    v28 = *&v73[16];
    *(v24 + 48) = *v73;
    *(v24 + 64) = v28;
    *(v24 + 144) = v22;
    *(v24 + 152) = v23;
    v60[1] = v23;
    MEMORY[0x28223BE20](v24);
    v60[-2] = v2;
    sub_21BC5A604(v22);

    sub_21BE2843C();
    v29 = v63;
    sub_21BE278DC();
    v30 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    v31 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8]);
    v32 = v61;
    sub_21BE27ECC();
    (*(v62 + 8))(v29, v10);
    (*(v14 + 8))(v17, v13);
    v63 = v22;
    v33 = v60[0];
    v34 = v13;
    v35 = v65;
    (*(v60[0] + 16))(v66, v32, v65);
    swift_storeEnumTagMultiPayload();
    *&v71 = v34;
    *(&v71 + 1) = v10;
    *&v72 = v30;
    *(&v72 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD788, &qword_21BE4E800);
    v37 = sub_21BB3B038(&qword_27CDBD790, &qword_27CDBD788, &qword_21BE4E800);
    *&v71 = v36;
    *(&v71 + 1) = v10;
    *&v72 = v37;
    *(&v72 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    sub_21BB5AEC4(v63);
    return (*(v33 + 8))(v61, v35);
  }

  else
  {
    sub_21BC8777C(v2, &v71);
    v39 = swift_allocObject();
    v40 = v75;
    v39[5] = v74;
    v39[6] = v40;
    v41 = v77;
    v39[7] = v76;
    v39[8] = v41;
    v42 = v72;
    v39[1] = v71;
    v39[2] = v42;
    v43 = *&v73[16];
    v39[3] = *v73;
    v39[4] = v43;
    sub_21BC8777C(v2, &v71);
    v44 = swift_allocObject();
    v45 = v75;
    v44[5] = v74;
    v44[6] = v45;
    v46 = v77;
    v44[7] = v76;
    v44[8] = v46;
    v47 = v72;
    v44[1] = v71;
    v44[2] = v47;
    v48 = *&v73[16];
    v44[3] = *v73;
    v44[4] = v48;
    v78 = 0;
    sub_21BE283EC();
    v49 = v68;
    v50 = v10;
    v51 = *(&v68 + 1);
    type metadata accessor for NavigationManager();
    v61 = v13;
    sub_21BDE10A8(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    v52 = sub_21BE26E9C();
    v78 = v53 & 1;
    *&v68 = &unk_21BE4E7F8;
    *(&v68 + 1) = v39;
    *&v69 = sub_21BDE1428;
    *(&v69 + 1) = v44;
    v70[0] = v49;
    *&v70[8] = v51;
    *&v70[16] = v52;
    v70[24] = v53 & 1;
    v54 = v63;
    sub_21BE278DC();
    v55 = v62;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD788, &qword_21BE4E800);
    v57 = sub_21BB3B038(&qword_27CDBD790, &qword_27CDBD788, &qword_21BE4E800);
    v58 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8]);
    sub_21BE27ECC();
    (*(v55 + 8))(v54, v50);
    v71 = v68;
    v72 = v69;
    *v73 = *v70;
    *&v73[9] = *&v70[9];
    sub_21BB3A4CC(&v71, &qword_27CDBD788, &qword_21BE4E800);
    (*(v4 + 16))(v66, v7, v3);
    swift_storeEnumTagMultiPayload();
    v59 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    *&v68 = v61;
    *(&v68 + 1) = v50;
    *&v69 = v59;
    *(&v69 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    *&v68 = v56;
    *(&v68 + 1) = v50;
    *&v69 = v57;
    *(&v69 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BDDDE40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27CDB4E70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_21BC25DC8((a1 + 88));
  return a2(v3);
}

uint64_t sub_21BDDDEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  sub_21BB41FA4();

  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE27CDC();
  v8 = sub_21BE27D9C();
  v10 = v9;
  v12 = v11;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  v13 = sub_21BE27D3C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21BBC7C7C(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_21BDDDFE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDDE080, v4, v3);
}

uint64_t sub_21BDDE080()
{
  v1 = v0[4];

  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_21BC25DC8((v3 + 88));
  sub_21BB3A35C(v3 + 88, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_21BDDE13C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  sub_21BB41FA4();

  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE27CDC();
  v8 = sub_21BE27D9C();
  v10 = v9;
  v12 = v11;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  v13 = sub_21BE27D3C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21BBC7C7C(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_21BDDE260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE25FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD730, &qword_21BE4E798);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-v14];
  *v15 = sub_21BE275CC();
  *(v15 + 1) = 0x4029000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD738, &qword_21BE4E7A0);
  sub_21BDDE554(v2, &v15[*(v16 + 44)]);
  sub_21BB3A35C(v2 + 88, v25);
  v24[15] = 0;
  sub_21BE283EC();
  BYTE8(v26) = v28[0];
  v27 = *(&v28[0] + 1);
  (*(v5 + 104))(v8, *MEMORY[0x277D07F38], v4);
  LOBYTE(v2) = MEMORY[0x21CF01150](v8);
  (*(v5 + 8))(v8, v4);
  if (v2)
  {
    v17 = v25[0];
    v18 = v25[1];
    v19 = v26;
    v20 = v27;
  }

  else
  {
    sub_21BDE0954(v25);
    v20 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v29 = v20;
  sub_21BBA3854(v15, v13, &qword_27CDBD730, &qword_21BE4E798);
  sub_21BBA3854(v28, v25, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BBA3854(v13, a1, &qword_27CDBD730, &qword_21BE4E798);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD740, &qword_21BE4E7A8);
  v22 = a1 + *(v21 + 48);
  *v22 = 0;
  *(v22 + 8) = 256;
  sub_21BBA3854(v25, a1 + *(v21 + 64), &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v28, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v15, &qword_27CDBD730, &qword_21BE4E798);
  sub_21BB3A4CC(v25, &qword_27CDBD648, &qword_21BE4E508);
  return sub_21BB3A4CC(v13, &qword_27CDBD730, &qword_21BE4E798);
}

uint64_t sub_21BDDE554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD748, &qword_21BE4E7B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-v9];
  v11 = sub_21BE2838C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a1 + 48);
  sub_21BE2836C();
  (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v11);
  v17 = sub_21BE283CC();

  (*(v12 + 8))(v15, v11);
  sub_21BE2869C();
  sub_21BE26F2C();
  LOBYTE(v28[0]) = 1;
  *&v25[3] = *&v25[27];
  *&v25[11] = *&v25[35];
  *&v25[19] = *&v25[43];
  *v10 = sub_21BE2771C();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD750, &qword_21BE4E7B8);
  sub_21BDDE8BC(a1, &v10[*(v18 + 44)]);
  sub_21BBA3854(v10, v8, &qword_27CDBD748, &qword_21BE4E7B0);
  v26 = v17;
  *v27 = 1;
  *&v27[2] = *v25;
  *&v27[18] = *&v25[8];
  *&v27[34] = *&v25[16];
  *&v27[48] = *&v25[23];
  v19 = *v27;
  v20 = *&v27[16];
  v21 = *&v27[32];
  *(a2 + 64) = *&v25[23];
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  *a2 = v17;
  *(a2 + 16) = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD758, &qword_21BE4E7C0);
  sub_21BBA3854(v8, a2 + *(v22 + 48), &qword_27CDBD748, &qword_21BE4E7B0);
  sub_21BBA3854(&v26, v28, &qword_27CDB9C50, &qword_21BE41700);
  sub_21BB3A4CC(v10, &qword_27CDBD748, &qword_21BE4E7B0);
  sub_21BB3A4CC(v8, &qword_27CDBD748, &qword_21BE4E7B0);
  v28[0] = v17;
  v28[1] = 0;
  v29 = 1;
  v30 = *v25;
  v31 = *&v25[8];
  *v32 = *&v25[16];
  *&v32[14] = *&v25[23];
  return sub_21BB3A4CC(v28, &qword_27CDB9C50, &qword_21BE41700);
}

uint64_t sub_21BDDE8BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD760, &qword_21BE4E7C8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v119 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v125 = &v110[-v7];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v8 = *(*(v116 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v116);
  v126 = &v110[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v117 = &v110[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v127 = &v110[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v128 = &v110[-v16];
  v120 = a1;
  v17 = a1[1];
  v123 = *a1;
  v135 = v123;
  v136 = v17;
  v18 = sub_21BB41FA4();

  v124 = v18;
  v19 = sub_21BE27DBC();
  v21 = v20;
  v23 = v22;
  sub_21BE27CDC();
  v24 = sub_21BE27D9C();
  v26 = v25;
  v28 = v27;

  sub_21BBC7C7C(v19, v21, v23 & 1);

  v29 = sub_21BE27D3C();
  v31 = v30;
  v33 = v32;
  sub_21BBC7C7C(v24, v26, v28 & 1);

  sub_21BE2832C();
  v34 = sub_21BE27D4C();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_21BBC7C7C(v29, v31, v33 & 1);

  v135 = v34;
  v136 = v36;
  v137 = v38 & 1;
  v139 = v40;
  sub_21BE2809C();
  v41 = v120;
  sub_21BBC7C7C(v34, v36, v38 & 1);

  v42 = v41[3];
  if (v42)
  {
    v135 = v41[2];
    v136 = v42;

    v43 = sub_21BE27DBC();
    v45 = v44;
    v47 = v46;
    sub_21BE27BEC();
    v48 = sub_21BE27D9C();
    v50 = v49;
    v52 = v51;

    sub_21BBC7C7C(v43, v45, v47 & 1);

    sub_21BE27C4C();
    v53 = sub_21BE27D3C();
    v55 = v54;
    v57 = v56;
    sub_21BBC7C7C(v48, v50, v52 & 1);

    sub_21BE2833C();
    v58 = sub_21BE27D4C();
    v60 = v59;
    LOBYTE(v50) = v61;
    v63 = v62;

    v64 = v53;
    v41 = v120;
    sub_21BBC7C7C(v64, v55, v57 & 1);

    v115 = v58;
    v114 = v60;
    v112 = v50 & 1;
    sub_21BBA4A38(v58, v60, v50 & 1);
    v113 = v63;
  }

  else
  {
    v115 = 0;
    v114 = 0;
    v112 = 0;
    v113 = 0;
  }

  v65 = v41[5];
  v135 = v41[4];
  v136 = v65;

  v66 = sub_21BE27DBC();
  v68 = v67;
  v70 = v69;
  sub_21BE27BEC();
  v71 = sub_21BE27D9C();
  v73 = v72;
  v75 = v74;

  sub_21BBC7C7C(v66, v68, v70 & 1);

  sub_21BE2833C();
  v123 = sub_21BE27D4C();
  v122 = v76;
  LOBYTE(v68) = v77;
  v124 = v78;

  sub_21BBC7C7C(v71, v73, v75 & 1);

  v121 = sub_21BE27B9C();
  sub_21BE26E0C();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  LOBYTE(v71) = v68 & 1;
  LOBYTE(v135) = v68 & 1;
  v111 = v68 & 1;
  LOBYTE(v131) = 0;
  v87 = v117;
  sub_21BE285AC();
  v88 = sub_21BE27B9C();
  sub_21BE26E0C();
  v89 = v87 + *(v116 + 36);
  *v89 = v88;
  *(v89 + 8) = v90;
  *(v89 + 16) = v91;
  *(v89 + 24) = v92;
  *(v89 + 32) = v93;
  *(v89 + 40) = 0;
  v94 = v125;
  sub_21BDDD4D8(v125);
  v95 = v127;
  sub_21BBA3854(v128, v127, &qword_27CDB99C0, &qword_21BE40C00);
  v96 = v126;
  sub_21BBA3854(v87, v126, &qword_27CDB9EC8, &qword_21BE42428);
  v97 = v119;
  sub_21BBA3854(v94, v119, &qword_27CDBD760, &qword_21BE4E7C8);
  v98 = v118;
  sub_21BBA3854(v95, v118, &qword_27CDB99C0, &qword_21BE40C00);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD768, &qword_21BE4E7D0);
  v100 = (v98 + v99[12]);
  v101 = v115;
  v102 = v114;
  *v100 = v115;
  v100[1] = v102;
  v103 = v112;
  v104 = v113;
  v100[2] = v112;
  v100[3] = v104;
  v105 = (v98 + v99[16]);
  *&v131 = v123;
  *(&v131 + 1) = v122;
  LOBYTE(v132) = v71;
  *(&v132 + 1) = *v130;
  DWORD1(v132) = *&v130[3];
  *(&v132 + 1) = v124;
  LOBYTE(v133) = v121;
  DWORD1(v133) = *&v129[3];
  *(&v133 + 1) = *v129;
  *(&v133 + 1) = v80;
  *v134 = v82;
  *&v134[8] = v84;
  *&v134[16] = v86;
  v134[24] = 0;
  v106 = v131;
  v107 = v132;
  *(v105 + 57) = *&v134[9];
  v108 = *v134;
  v105[2] = v133;
  v105[3] = v108;
  *v105 = v106;
  v105[1] = v107;
  sub_21BBA3854(v96, v98 + v99[20], &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BBA3854(v97, v98 + v99[24], &qword_27CDBD760, &qword_21BE4E7C8);
  sub_21BC75900(v101, v102, v103, v104);
  sub_21BBA3854(&v131, &v135, &qword_27CDB7940, &qword_21BE47630);
  sub_21BC75944(v101, v102, v103, v104);
  sub_21BB3A4CC(v125, &qword_27CDBD760, &qword_21BE4E7C8);
  sub_21BB3A4CC(v87, &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BB3A4CC(v128, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BB3A4CC(v97, &qword_27CDBD760, &qword_21BE4E7C8);
  sub_21BB3A4CC(v126, &qword_27CDB9EC8, &qword_21BE42428);
  v135 = v123;
  v136 = v122;
  v137 = v111;
  *v138 = *v130;
  *&v138[3] = *&v130[3];
  v139 = v124;
  v140 = v121;
  *v141 = *v129;
  *&v141[3] = *&v129[3];
  v142 = v80;
  v143 = v82;
  v144 = v84;
  v145 = v86;
  v146 = 0;
  sub_21BB3A4CC(&v135, &qword_27CDB7940, &qword_21BE47630);
  sub_21BC75944(v101, v102, v103, v104);
  return sub_21BB3A4CC(v127, &qword_27CDB99C0, &qword_21BE40C00);
}

uint64_t sub_21BDDF288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_21BE278EC();
  v57 = *(v3 - 8);
  v4 = v57[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6E0, &qword_21BE4E660);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6E8, &qword_21BE4E668);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6F0, &qword_21BE4E670);
  v15 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v54 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6F8, &qword_21BE4E678);
  v60 = *(v65 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x28223BE20](v65);
  v59 = &v54 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD700, &qword_21BE4E680);
  v19 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v54 - v20;
  v21 = v1[3];
  v22 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v21);
  if ((*(v22 + 24))(v21, v22))
  {
    swift_storeEnumTagMultiPayload();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v24 = sub_21BDE0EE4();
    v25 = sub_21BB41FA4();
    v26 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    *&v67 = v64;
    *(&v67 + 1) = MEMORY[0x277D837D0];
    *&v68 = v23;
    *(&v68 + 1) = MEMORY[0x277CE0BD8];
    *&v69 = v24;
    *(&v69 + 1) = v25;
    v70 = v26;
    v71 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    return sub_21BE2784C();
  }

  else
  {
    sub_21BDE0DA0(v1, &v67);
    v28 = swift_allocObject();
    v29 = v68;
    *(v28 + 16) = v67;
    *(v28 + 32) = v29;
    *(v28 + 48) = v69;
    *(v28 + 64) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
    sub_21BDE0DE0();
    sub_21BE2843C();
    sub_21BE278DC();
    v30 = sub_21BB3B038(&qword_27CDBD710, &qword_27CDBD6E0, &qword_21BE4E660);
    v31 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8]);
    sub_21BE27ECC();
    (v57[1])(v6, v3);
    (*(v56 + 8))(v10, v7);
    v32 = v1[3];
    v33 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v1, v32);
    v34 = (*(v33 + 32))(v32, v33);
    *&v67 = sub_21BC5A608(v34);
    *(&v67 + 1) = v35;
    MEMORY[0x21CF03CA0](0x65736F6C632ELL, 0xE600000000000000);
    *&v67 = v7;
    *(&v67 + 1) = v3;
    *&v68 = v30;
    *(&v68 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_21BE2809C();

    (*(v58 + 8))(v14, v11);
    v36 = v1[3];
    v37 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    sub_21BBE7DA8(v36, v37);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass_];
    v40 = sub_21BE2599C();
    v42 = v41;
    v58 = v41;

    v74 = v40;
    v75 = v42;
    v43 = v2[6];
    v72 = *(v2 + 40);
    v73 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v44 = sub_21BE2841C();
    v57 = &v54;
    LODWORD(v56) = v68;
    v45 = MEMORY[0x28223BE20](v44);
    MEMORY[0x28223BE20](v45);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
    v46 = sub_21BDE0EE4();
    v47 = sub_21BB41FA4();
    v53 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    v48 = v64;
    v49 = v59;
    v50 = v62;
    sub_21BE280EC();

    sub_21BB3A4CC(v50, &qword_27CDBD6F0, &qword_21BE4E670);
    v51 = v60;
    v52 = v65;
    (*(v60 + 16))(v63, v49, v65);
    swift_storeEnumTagMultiPayload();
    *&v67 = v48;
    *(&v67 + 1) = MEMORY[0x277D837D0];
    *&v68 = v55;
    *(&v68 + 1) = MEMORY[0x277CE0BD8];
    *&v69 = v46;
    *(&v69 + 1) = v47;
    v70 = v53;
    v71 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v51 + 8))(v49, v52);
  }
}

uint64_t sub_21BDDFC1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BDDFC7C@<X0>(uint64_t a1@<X8>)
{
  sub_21BE2837C();
  sub_21BE27BEC();
  swift_getKeyPath();
  sub_21BE27C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E8, &qword_21BE4F170);
  sub_21BDE06D4();
  sub_21BE27EAC();

  if (qword_27CDB4E80 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDD41F0;
  v3 = sub_21BE2826C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_21BDDFDAC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v43 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_21BBE7DA8(v17, v18);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  v22 = sub_21BE2599C();
  v24 = v23;

  v50 = v22;
  v51 = v24;
  sub_21BDE0DA0(a1, v48);
  v25 = swift_allocObject();
  v26 = v48[1];
  *(v25 + 16) = v48[0];
  *(v25 + 32) = v26;
  *(v25 + 48) = v48[2];
  *(v25 + 64) = v49;
  sub_21BB41FA4();
  sub_21BE2845C();
  v27 = [v20 bundleForClass_];
  v28 = sub_21BE2599C();
  v30 = v29;

  *&v48[0] = v28;
  *(&v48[0] + 1) = v30;
  v31 = v44;
  sub_21BE26DEC();
  v32 = sub_21BE26DFC();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v43;
  sub_21BE2844C();
  v34 = v7[2];
  v35 = v45;
  v36 = v16;
  v34(v45, v16, v6);
  v37 = v46;
  v38 = v33;
  v34(v46, v33, v6);
  v39 = v47;
  v34(v47, v35, v6);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v34(&v39[*(v40 + 48)], v37, v6);
  v41 = v7[1];
  v41(v38, v6);
  v41(v36, v6);
  v41(v37, v6);
  return (v41)(v35, v6);
}

uint64_t sub_21BDE0258(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  if (sub_21BBE7DA8(v2, v3))
  {
    if (qword_27CDB4E20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = off_27CDB59A8;
    v5 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v1, v5);

    v7 = sub_21BBE7CF8(v5, v6);
    v9 = v8;
    swift_getKeyPath();
    sub_21BDE10A8(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences);

    sub_21BE25F1C();

    swift_getKeyPath();
    sub_21BE25F3C();

    swift_beginAccess();
    v10 = v7;
    v1 = 0;
    v11 = sub_21BBBE5E4(v4 + 6, v10, v9);

    v12 = *(v4[6] + 16);
    if (v12 >= v11)
    {
      sub_21BBBE860(v11, v12);
      swift_endAccess();
      swift_getKeyPath();
      sub_21BE25F2C();

      sub_21BBBB83C();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_27CDB4E20 != -1)
  {
LABEL_11:
    swift_once();
  }

  swift_beginAccess();
  v14 = v1[3];
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v14);

  v16 = sub_21BBE7CF8(v14, v15);
  sub_21BBBC2DC(v16, v17);

  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  return sub_21BC2685C(v1);
}

uint64_t sub_21BDE055C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  sub_21BBE7DA8(v3, v4);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

unint64_t sub_21BDE0680()
{
  result = qword_27CDBD5D8;
  if (!qword_27CDBD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD5D8);
  }

  return result;
}

unint64_t sub_21BDE06D4()
{
  result = qword_27CDBD5F0;
  if (!qword_27CDBD5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD5E8, &qword_21BE4F170);
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD5F0);
  }

  return result;
}

unint64_t sub_21BDE078C()
{
  result = qword_27CDBD618;
  if (!qword_27CDBD618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD610, &qword_21BE4E4D8);
    sub_21BDE08E4(&qword_27CDBD620, &qword_27CDBD628, &unk_21BE4E4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD618);
  }

  return result;
}

unint64_t sub_21BDE0838()
{
  result = qword_27CDB9C48;
  if (!qword_27CDB9C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE08E4(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9C48);
  }

  return result;
}

uint64_t sub_21BDE08E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDE0984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BDE09F4()
{
  result = qword_27CDBD668;
  if (!qword_27CDBD668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD658, &qword_21BE4E518);
    sub_21BB3B038(&qword_27CDBD670, &qword_27CDBD678, &qword_21BE4E538);
    sub_21BB3B038(&qword_27CDBD680, &qword_27CDBD688, &qword_21BE4E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD668);
  }

  return result;
}

uint64_t sub_21BDE0AD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDD9268(a1, v1 + 16);
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v5 = *(v0 + 136);

  return swift_deallocObject();
}

unint64_t sub_21BDE0C74()
{
  result = qword_27CDBD6B0;
  if (!qword_27CDBD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6B8, &qword_21BE4E5C8);
    sub_21BDE0CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD6B0);
  }

  return result;
}

unint64_t sub_21BDE0CF8()
{
  result = qword_27CDBD6C0;
  if (!qword_27CDBD6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6C8, &qword_21BE4E5D0);
    sub_21BDDD0E4();
    sub_21BDDD228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD6C0);
  }

  return result;
}

unint64_t sub_21BDE0DE0()
{
  result = qword_27CDBD708;
  if (!qword_27CDBD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD5E8, &qword_21BE4F170);
    sub_21BDE06D4();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBB680, qword_27CDBB688, &unk_21BE476A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD708);
  }

  return result;
}

unint64_t sub_21BDE0EE4()
{
  result = qword_27CDBD718;
  if (!qword_27CDBD718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6F0, &qword_21BE4E670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6E0, &qword_21BE4E660);
    sub_21BE278EC();
    sub_21BB3B038(&qword_27CDBD710, &qword_27CDBD6E0, &qword_21BE4E660);
    sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_21BDE10A8(&qword_27CDB6790, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD718);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21BDE10A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDE10F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BDE1138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BDE11A8()
{
  result = qword_27CDBD720;
  if (!qword_27CDBD720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD728, &qword_21BE4E740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6F0, &qword_21BE4E670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    sub_21BDE0EE4();
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD720);
  }

  return result;
}

uint64_t sub_21BDE131C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BDDDFE8(a1, v1 + 16);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 72))
  {
    v4 = *(v0 + 80);
  }

  v5 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

  return swift_deallocObject();
}

double sub_21BDE1480@<D0>(void *a1@<X0>, void *a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_21BE2770C();
  v26 = 0;
  sub_21BDE16C8(a2, a1, a3, __src);
  memcpy(__dst, __src, 0x1D1uLL);
  memcpy(v29, __src, 0x1D1uLL);
  sub_21BBA3854(__dst, v23, &qword_27CDBD7A8, &qword_21BE4E8B8);
  sub_21BB3A4CC(v29, &qword_27CDBD7A8, &qword_21BE4E8B8);
  memcpy(&v25[7], __dst, 0x1D1uLL);
  v9 = v26;
  sub_21BE2869C();
  sub_21BE2725C();
  *&v27[55] = *&__src[48];
  *&v27[71] = *&__src[64];
  *&v27[87] = *&__src[80];
  *&v27[103] = *&__src[96];
  *&v27[7] = *__src;
  *&v27[23] = *&__src[16];
  *&v27[39] = *&__src[32];
  LOBYTE(a2) = sub_21BE27B9C();
  v10 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != a2)
  {
    v10 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  memcpy((a4 + 17), v25, 0x1D8uLL);
  v19 = *&v27[80];
  *(a4 + 553) = *&v27[64];
  *(a4 + 569) = v19;
  *(a4 + 585) = *&v27[96];
  *(a4 + 600) = *&v27[111];
  v20 = *&v27[16];
  *(a4 + 489) = *v27;
  *(a4 + 505) = v20;
  result = *&v27[32];
  v22 = *&v27[48];
  *(a4 + 521) = *&v27[32];
  *(a4 + 537) = v22;
  *(a4 + 608) = v10;
  *(a4 + 616) = v12;
  *(a4 + 624) = v14;
  *(a4 + 632) = v16;
  *(a4 + 640) = v18;
  *(a4 + 648) = 0;
  return result;
}

uint64_t sub_21BDE16C8@<X0>(id a1@<X2>, void *a2@<X0>, char a3@<W3>, uint64_t a4@<X8>)
{
  v6 = [a1 profilePictureForFamilyMember:a2 pictureDiameter:240.0];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21BE25BFC();
    v48 = v9;
    v49 = v8;

    v47 = 0;
    v46 = 0x4054000000000000;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 2;
  }

  sub_21BE2869C();
  sub_21BE26F2C();
  v43 = v102;
  v44 = v100;
  v39 = v101;
  v40 = v103;
  v41 = v105;
  v42 = v104;
  v62 = 1;
  v61 = v101;
  v60 = v103;
  v53 = sub_21BE2770C();
  LOBYTE(v83) = 1;
  v54 = sub_21BE275DC();
  LOBYTE(v79) = 0;
  sub_21BDE1DA8(a2, a3 & 1, &v94);
  v71 = *&v96[96];
  v72 = *&v96[112];
  v73 = *&v96[128];
  v67 = *&v96[32];
  v68 = *&v96[48];
  v69 = *&v96[64];
  v70 = *&v96[80];
  v63 = v94;
  v64 = v95;
  v65 = *v96;
  v66 = *&v96[16];
  v75[8] = *&v96[96];
  v75[9] = *&v96[112];
  v75[10] = *&v96[128];
  v75[4] = *&v96[32];
  v75[5] = *&v96[48];
  v75[6] = *&v96[64];
  v75[7] = *&v96[80];
  v75[0] = v94;
  v75[1] = v95;
  v74 = *&v96[144];
  v76 = *&v96[144];
  v75[2] = *v96;
  v75[3] = *&v96[16];
  sub_21BBA3854(&v63, __src, &qword_27CDBD7B0, &qword_21BE4E8C0);
  sub_21BB3A4CC(v75, &qword_27CDBD7B0, &qword_21BE4E8C0);
  *&v58[135] = v71;
  *&v58[151] = v72;
  *&v58[167] = v73;
  *&v58[71] = v67;
  *&v58[87] = v68;
  *&v58[103] = v69;
  *&v58[119] = v70;
  *&v58[7] = v63;
  *&v58[23] = v64;
  *&v58[39] = v65;
  *&v58[183] = v74;
  *&v58[55] = v66;
  v51 = v83;
  v52 = v79;
  sub_21BE2868C();
  sub_21BE26F2C();
  *&v59[6] = v106;
  *&v59[22] = v107;
  *&v59[38] = v108;
  *&v94 = sub_21BDB53B8();
  *(&v94 + 1) = v10;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v13 = v12;
  v15 = v14;
  sub_21BE27CAC();
  v16 = sub_21BE27D9C();
  v18 = v17;
  v20 = v19;

  sub_21BBC7C7C(v11, v13, v15 & 1);

  sub_21BE2833C();
  *&v38 = sub_21BE27D4C();
  *(&v38 + 1) = v21;
  v23 = v22;
  v50 = v24;

  sub_21BBC7C7C(v16, v18, v20 & 1);

  v37 = sub_21BE27B8C();
  sub_21BE26E0C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v94) = v23 & 1;
  __src[0] = v53;
  __src[1] = 0;
  LOBYTE(__src[2]) = v51;
  *(&__src[2] + 1) = *v77;
  HIDWORD(__src[2]) = *&v77[3];
  __src[3] = v54;
  __src[4] = 0x4014000000000000;
  LOBYTE(__src[5]) = v52;
  *(&__src[9] + 1) = *&v58[32];
  *(&__src[11] + 1) = *&v58[48];
  *(&__src[5] + 1) = *v58;
  *(&__src[7] + 1) = *&v58[16];
  *(&__src[17] + 1) = *&v58[96];
  *(&__src[19] + 1) = *&v58[112];
  *(&__src[13] + 1) = *&v58[64];
  *(&__src[15] + 1) = *&v58[80];
  *(&__src[26] + 2) = *&v58[169];
  *(&__src[23] + 1) = *&v58[144];
  *(&__src[25] + 1) = *&v58[160];
  *(&__src[21] + 1) = *&v58[128];
  *(&__src[32] + 2) = *&v59[32];
  *(&__src[28] + 2) = *v59;
  *(&__src[30] + 2) = *&v59[16];
  __src[34] = *&v59[46];
  memcpy(&v55[6], __src, 0x118uLL);
  v79 = v38;
  LOBYTE(v80) = v23 & 1;
  *(&v80 + 1) = *v57;
  DWORD1(v80) = *&v57[3];
  *(&v80 + 1) = v50;
  LOBYTE(v81) = v37;
  *(&v81 + 1) = *v56;
  DWORD1(v81) = *&v56[3];
  *(&v81 + 1) = v26;
  *v82 = v28;
  *&v82[8] = v30;
  *&v82[16] = v32;
  v82[24] = 0;
  v33 = v46;
  *a4 = v49;
  *(a4 + 8) = v48;
  *(a4 + 16) = v46;
  *(a4 + 24) = v46;
  *(a4 + 32) = v47;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = v44;
  *(a4 + 64) = v39;
  *(a4 + 72) = v43;
  *(a4 + 80) = v40;
  *(a4 + 88) = v42;
  *(a4 + 96) = v41;
  *(a4 + 104) = 257;
  memcpy((a4 + 106), v55, 0x11EuLL);
  v34 = *v82;
  *(a4 + 424) = v81;
  *(a4 + 440) = v34;
  *(a4 + 449) = *&v82[9];
  v35 = v80;
  *(a4 + 392) = v79;
  *(a4 + 408) = v35;
  v83 = v38;
  v84 = v23 & 1;
  *v85 = *v57;
  *&v85[3] = *&v57[3];
  v86 = v50;
  v87 = v37;
  *&v88[3] = *&v56[3];
  *v88 = *v56;
  v89 = v26;
  v90 = v28;
  v91 = v30;
  v92 = v32;
  v93 = 0;
  sub_21BDE2268(v49, v48, v33, v33, v47);
  sub_21BBA3854(__src, &v94, &qword_27CDBD7B8, &unk_21BE4E8C8);
  sub_21BBA3854(&v79, &v94, &qword_27CDB7940, &qword_21BE47630);
  sub_21BB3A4CC(&v83, &qword_27CDB7940, &qword_21BE47630);
  *&v96[137] = *&v58[128];
  v97 = *&v58[144];
  *v98 = *&v58[160];
  *&v98[9] = *&v58[169];
  *&v96[73] = *&v58[64];
  *&v96[89] = *&v58[80];
  *&v96[105] = *&v58[96];
  *&v96[121] = *&v58[112];
  *&v96[9] = *v58;
  *&v96[25] = *&v58[16];
  *&v96[41] = *&v58[32];
  *&v96[57] = *&v58[48];
  *v99 = *&v59[32];
  *&v98[25] = *v59;
  v94 = v53;
  LOBYTE(v95) = v51;
  *(&v95 + 1) = *v77;
  DWORD1(v95) = *&v77[3];
  *(&v95 + 1) = v54;
  *v96 = 0x4014000000000000;
  v96[8] = v52;
  *&v98[41] = *&v59[16];
  *&v99[14] = *&v59[46];
  sub_21BB3A4CC(&v94, &qword_27CDBD7B8, &unk_21BE4E8C8);
  return sub_21BDE227C(v49, v48, v33, v33, v47);
}

uint64_t sub_21BDE1DA8@<X0>(void *a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  *&v55 = sub_21BDE2290(a1);
  *(&v55 + 1) = v3;
  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE27C7C();
  v9 = sub_21BE27D9C();
  v11 = v10;
  v13 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BE27C2C();
  v14 = sub_21BE27D3C();
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_21BBC7C7C(v9, v11, v13 & 1);

  sub_21BE2832C();
  v18 = sub_21BE27D4C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v14, v16, v4 & 1);

  if (a2)
  {
    v34 = sub_21BE2770C();
    v44 = 1;
    sub_21BDE2194(&v55);
    v41 = v59;
    v42 = v60;
    v43[0] = v61[0];
    *(v43 + 10) = *(v61 + 10);
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v51[0] = v61[0];
    *(v51 + 10) = *(v61 + 10);
    sub_21BBA3854(&v37, &v53, &qword_27CDBD7C8, &unk_21BE4E8E0);
    sub_21BB3A4CC(&v45, &qword_27CDBD7C8, &unk_21BE4E8E0);
    *&v36[71] = v41;
    *&v36[87] = v42;
    *&v36[103] = v43[0];
    *&v36[113] = *(v43 + 10);
    *&v36[7] = v37;
    *&v36[23] = v38;
    *&v36[39] = v39;
    *&v36[55] = v40;
    *&v54[65] = *&v36[64];
    *&v54[49] = *&v36[48];
    *&v54[33] = *&v36[32];
    *&v54[17] = *&v36[16];
    *&v54[113] = *&v36[112];
    *&v54[97] = *&v36[96];
    *&v54[81] = *&v36[80];
    v53 = v34;
    v54[0] = v44;
    v54[129] = BYTE9(v43[1]);
    *&v54[1] = *v36;
    nullsub_1(&v53);
    v61[0] = *&v54[80];
    v61[1] = *&v54[96];
    v62 = *&v54[112];
    v63 = *&v54[128];
    v57 = *&v54[16];
    v58 = *&v54[32];
    v59 = *&v54[48];
    v60 = *&v54[64];
    v55 = v53;
    v56 = *v54;
  }

  else
  {
    sub_21BDE2464(&v55);
  }

  v25 = v60;
  *&v54[80] = v61[0];
  *&v54[96] = v61[1];
  v26 = v61[1];
  *&v54[112] = v62;
  v28 = v56;
  *&v54[16] = v57;
  v27 = v57;
  *&v54[32] = v58;
  v29 = v58;
  *&v54[48] = v59;
  v30 = v59;
  *&v54[64] = v60;
  v53 = v55;
  *v54 = v56;
  v51[0] = v61[0];
  v51[1] = v61[1];
  v51[2] = v62;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v45 = v55;
  v31 = v55;
  v46 = v56;
  *(a3 + 128) = v61[0];
  *(a3 + 144) = v26;
  *(a3 + 160) = v62;
  *(a3 + 64) = v27;
  *(a3 + 80) = v29;
  *(a3 + 96) = v30;
  *(a3 + 112) = v25;
  *&v54[128] = v63;
  v44 = v22 & 1;
  v52 = v63;
  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  *(a3 + 176) = v63;
  *(a3 + 32) = v31;
  *(a3 + 48) = v28;
  sub_21BBA4A38(v18, v20, v22 & 1);

  sub_21BBA3854(&v45, &v37, &qword_27CDBD7C0, &qword_21BE4E8D8);
  sub_21BB3A4CC(&v53, &qword_27CDBD7C0, &qword_21BE4E8D8);
  sub_21BBC7C7C(v18, v20, v22 & 1);
}

double sub_21BDE2194@<D0>(uint64_t a1@<X8>)
{
  sub_21BE2869C();
  sub_21BE26F2C();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 1536;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_282D874D0;
  *(a1 + 40) = &unk_282D87500;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = v3;
  *(a1 + 80) = v4;
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  result = *&v7;
  *(a1 + 104) = v7;
  *(a1 + 120) = 257;
  return result;
}

uint64_t sub_21BDE2268(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    return sub_21BBBEE74(a1, a2);
  }

  return a1;
}

uint64_t sub_21BDE227C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    return sub_21BBBEF94(a1, a2);
  }

  return a1;
}

uint64_t sub_21BDE2290(void *a1)
{
  v2 = [a1 fullName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
    v6 = v5;

    if ([a1 isMe])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21BE32770;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_21BBBEFE8();
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = objc_opt_self();

      v10 = [v9 bundleForClass_];
      sub_21BE2599C();

      v4 = sub_21BE289DC();
    }
  }

  else
  {
    v11 = [a1 inviteEmail];
    if (v11)
    {
      v12 = v11;
      v4 = sub_21BE28A0C();
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

double sub_21BDE2464(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_21BDE2484()
{
  result = qword_27CDBD7D0;
  if (!qword_27CDBD7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD7D8, &qword_21BE4E8F0);
    sub_21BDE2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD7D0);
  }

  return result;
}

unint64_t sub_21BDE2510()
{
  result = qword_27CDBD7E0;
  if (!qword_27CDBD7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD7E8, &qword_21BE4E8F8);
    sub_21BDE259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD7E0);
  }

  return result;
}

unint64_t sub_21BDE259C()
{
  result = qword_27CDBD7F0;
  if (!qword_27CDBD7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD7F8, &unk_21BE4E900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD7F0);
  }

  return result;
}

uint64_t FamilyNavigationHost.init(usesNavigationStack:initialPath:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for FamilyNavigationHost();
  v11 = *(v10 + 40);
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 44);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for NavigationManager();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  result = NavigationManager.init(usesNavigationStack:path:)(a1, a2);
  *a5 = result;
  a5[1] = 0;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_21BDE2714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21BDE27D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BC54C6C(v4);
}

uint64_t sub_21BDE2800()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD8B8, qword_21BE4EA80);
  sub_21BE283FC();
  return v2;
}

uint64_t sub_21BDE2850()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD8B8, qword_21BE4EA80);
  sub_21BE2841C();
  return v2;
}

uint64_t sub_21BDE28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_21BBA3854(v2 + *(a1 + 40), &v18 - v12, &qword_27CDB68C0, &qword_21BE4E940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE2693C();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_21BE28FEC();
    v17 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_21BDE2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_21BBA3854(v2 + *(a1 + 44), &v18 - v12, &unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE2690C();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_21BE28FEC();
    v17 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t FamilyNavigationHost.init(navigationManager:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FamilyNavigationHost();
  v9 = *(v8 + 40);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 44);
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = 0;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t FamilyNavigationHost.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v74 = *(a1 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](a1);
  v73 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE2693C();
  v66 = v5;
  v76 = *(v5 - 8);
  v6 = *(v76 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v72 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationManager();
  v13 = *(a1 + 24);
  v14 = sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  v81 = v9;
  v82 = v12;
  v15 = v9;
  v56 = v9;
  v60 = v12;
  v83 = v13;
  v84 = v14;
  v57 = v13;
  v16 = v14;
  v59 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = OpaqueTypeMetadata2;
  v71 = *(OpaqueTypeMetadata2 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v58 = &v54 - v19;
  v81 = v15;
  v82 = v12;
  v83 = v13;
  v84 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeConformance2;
  v63 = sub_21BDE3AFC(&qword_27CDBD800, MEMORY[0x277D402D0]);
  v81 = OpaqueTypeMetadata2;
  v82 = v5;
  v83 = OpaqueTypeConformance2;
  v84 = v63;
  v67 = MEMORY[0x277CE0E30];
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = *(v21 - 8);
  v68 = v21;
  v69 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v55 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v62 = &v54 - v26;
  v27 = *(v2 + 24);
  v54 = *(v2 + 16);
  v28 = sub_21BDE2850();
  v30 = v29;
  v32 = v31;
  swift_getKeyPath();
  v81 = v28;
  v82 = v30;
  v83 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD808, &qword_21BE4E9A8);
  sub_21BE2855C();

  v34 = v78;
  v33 = v79;
  v35 = v80;

  v36 = v61;
  v54(v34, v33, v35);

  sub_21BDE2800();
  v37 = v58;
  v38 = v56;
  v39 = v57;
  sub_21BE27EEC();

  (*(v70 + 8))(v36, v38);
  v40 = v72;
  sub_21BDE28A4(a1, v72);
  v42 = v73;
  v41 = v74;
  (*(v74 + 16))(v73, v2, a1);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 24) = v39;
  (*(v41 + 32))(v44 + v43, v42, a1);
  v45 = v55;
  v47 = v65;
  v46 = v66;
  v48 = v64;
  v49 = v63;
  sub_21BE281BC();

  (*(v76 + 8))(v40, v46);
  (*(v71 + 8))(v37, v47);
  v81 = v47;
  v82 = v46;
  v83 = v48;
  v84 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v62;
  v51 = v68;
  sub_21BD37338(v45);
  v52 = *(v69 + 8);
  v52(v45, v51);
  sub_21BD37338(v50);
  return (v52)(v50, v51);
}

uint64_t sub_21BDE3450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = sub_21BE2693C();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE2690C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for FamilyNavigationHost();
  v23 = a3;
  sub_21BDE2AA8(v15, v14);
  (*(v8 + 104))(v12, *MEMORY[0x277D40278], v7);
  sub_21BDE3AFC(&qword_27CDB66C8, MEMORY[0x277D40290]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  v16 = *(v8 + 8);
  v16(v12, v7);
  result = (v16)(v14, v7);
  if (v27 == v26)
  {
    v18 = sub_21BDE2800();
    v19 = v25;
    (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v25);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    (*(v4 + 32))(v21 + v20, v6, v19);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v23 - 4) = v18;
    *(&v23 - 3) = sub_21BDE3B44;
    *(&v23 - 2) = v21;
    v27 = v18;
    sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BDE37EC()
{
  sub_21BDE3BB4();
  sub_21BDE3C08();
  sub_21BC177EC();
  return sub_21BE2692C();
}

uint64_t sub_21BDE384C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for FamilyNavigationHost() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_21BDE3450(a1, a2, v8);
}

void sub_21BDE392C()
{
  sub_21BDE3A98(319, &qword_27CDBD898, type metadata accessor for NavigationManager, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_21BC41568();
    if (v1 <= 0x3F)
    {
      sub_21BDE3A98(319, &qword_27CDBD8A0, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21BDE3A98(319, &qword_27CDB6908, MEMORY[0x277D40290], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BDE3A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21BDE3AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDE3B44()
{
  v0 = *(*(sub_21BE2693C() - 8) + 80);

  return sub_21BDE37EC();
}

unint64_t sub_21BDE3BB4()
{
  result = qword_27CDBD8A8;
  if (!qword_27CDBD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8A8);
  }

  return result;
}

unint64_t sub_21BDE3C08()
{
  result = qword_27CDBD8B0;
  if (!qword_27CDBD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8B0);
  }

  return result;
}

uint64_t sub_21BDE3C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE27B9C();
  result = sub_21BE271CC();
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

double sub_21BDE3C90@<D0>(_OWORD *a1@<X8>)
{
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = *(v1 + 17);
  v8 = *(v1 + 33);
  v9 = *(v1 + 49);
  sub_21BDE4C8C(v1, v10);
  sub_21BDE4CC4();
  sub_21BDE4D18();
  sub_21BE2784C();
  v3 = v10[1];
  *a1 = v10[0];
  a1[1] = v3;
  a1[2] = v11[0];
  result = *(v11 + 10);
  *(a1 + 42) = *(v11 + 10);
  return result;
}

double sub_21BDE3D70@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_21BDE3C90(a1);
}

_BYTE *sub_21BDE3DB4()
{
  type metadata accessor for ICloudPlusViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner] = 1;
  return result;
}

uint64_t sub_21BDE3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDE4EEC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BDE3E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDE4EEC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BDE3EBC()
{
  sub_21BDE4EEC();
  sub_21BE27ABC();
  __break(1u);
}

void sub_21BDE3EE4(uint64_t a1@<X8>)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = sub_21BCE6070(0x535F44554F4C4349, 0xEE00454741524F54, v14[1]);

  if (v7)
  {
    v8 = [v7 actionURLString];
    if (v8)
    {
      v9 = v8;
      sub_21BE28A0C();

      sub_21BE25B7C();
    }

    else
    {
      sub_21BE2978C();
      __break(1u);
    }
  }

  else
  {
    sub_21BE261BC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "No iCloud subscription found in service store", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v13 = sub_21BE25B9C();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_21BDE431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_21BE25B9C();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_21BE28D7C();
  v4[11] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v4[12] = v13;
  v4[13] = v12;

  return MEMORY[0x2822009F8](sub_21BDE44A4, v13, v12);
}

uint64_t sub_21BDE44A4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_21BDE3EE4(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[3];

    sub_21BC12FE4(v6);
    [v7 dismissViewControllerAnimated:1 completion:0];
    sub_21BE261BC();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FDC();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v8, v9, "No iCloud subscription service in Service Store", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v15 = v0[10];
    v16 = v0[6];
    v17 = v0[7];

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    if (qword_280BD79D8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v20 = v0[2];
    if (v20)
    {
      v21 = v0[3];
      type metadata accessor for IcloudPlusFamilyFlow();
      v22 = swift_allocObject();
      v0[14] = v22;
      *(v22 + 16) = v20;
      v23 = *(v21 + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow);
      *(v21 + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = v22;

      v24 = swift_task_alloc();
      v0[15] = v24;
      *v24 = v0;
      v24[1] = sub_21BDE47E8;
      v25 = v0[10];
      v26 = v0[3];

      return sub_21BBB7ED0(v26, v25);
    }

    else
    {
      return sub_21BE2978C();
    }
  }
}

uint64_t sub_21BDE47E8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BDE492C, v5, v4);
}

uint64_t sub_21BDE492C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

id sub_21BDE4B18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICloudPlusViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDE4B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDE431C(a1, v4, v5, v6);
}

unint64_t sub_21BDE4CC4()
{
  result = qword_27CDBD8C8;
  if (!qword_27CDBD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8C8);
  }

  return result;
}

unint64_t sub_21BDE4D18()
{
  result = qword_27CDBD8D0;
  if (!qword_27CDBD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8D0);
  }

  return result;
}

unint64_t sub_21BDE4D7C()
{
  result = qword_27CDBD8D8;
  if (!qword_27CDBD8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD8E0, &qword_21BE4EC78);
    sub_21BDE4CC4();
    sub_21BDE4D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8D8);
  }

  return result;
}

unint64_t sub_21BDE4E08()
{
  result = qword_27CDBD8E8;
  if (!qword_27CDBD8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD8F0, &qword_21BE4EC80);
    sub_21BDE4E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8E8);
  }

  return result;
}

unint64_t sub_21BDE4E94()
{
  result = qword_27CDBD8F8;
  if (!qword_27CDBD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD8F8);
  }

  return result;
}

unint64_t sub_21BDE4EEC()
{
  result = qword_27CDBD900;
  if (!qword_27CDBD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD900);
  }

  return result;
}

id sub_21BDE4F40()
{
  v1 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE25B2C();
  v22[0] = 0;
  v8 = [v1 isApplicationAvailableToOpenURL:v7 error:v22];

  if (v8)
  {
    v9 = v22[0];
  }

  else
  {
    v10 = v22[0];
    v11 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v12 = v11;
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_21BB35000, v13, v14, "Error checking application availability: %@", v15, 0xCu);
      sub_21BC9E984(v16);
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_21BDE51A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_21BE29ACC();
    sub_21BC5C62C(a1);
    sub_21BE28ABC();

    v5 = sub_21BE29B0C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E75;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v10 = 0x696D694C6D6D6F63;
            v9 = 0xEE006D6574497374;
            break;
          case 2:
            v10 = 0xD000000000000013;
            v9 = 0x800000021BE543D0;
            break;
          case 3:
            v10 = 0xD000000000000014;
            v9 = 0x800000021BE543F0;
            break;
          case 4:
            v10 = 0x6E6F697461636F6CLL;
            v9 = 0xEC0000006D657449;
            break;
          case 5:
            v10 = 0xD000000000000013;
            v9 = 0x800000021BE54420;
            break;
          case 6:
            v10 = 0x69636966656E6562;
            v9 = 0xEF6D657449797261;
            break;
          case 7:
            v9 = 0xEE006D6574497375;
            v10 = 0x6C5064756F6C4369;
            break;
          case 8:
            v9 = 0xE800000000000000;
            v10 = 0x6D657449656D6F68;
            break;
          case 9:
            v10 = 0xD000000000000013;
            v9 = 0x800000021BE54460;
            break;
          case 0xA:
            v10 = 0x736143656C707061;
            v9 = 0xED00006D65744968;
            break;
          case 0xB:
            v10 = 0x49746361746E6F63;
            v9 = 0xEB000000006D6574;
            break;
          case 0xC:
            v10 = 0xD000000000000012;
            v9 = 0x800000021BE54490;
            break;
          case 0xD:
            v10 = 0xD000000000000015;
            v9 = 0x800000021BE544B0;
            break;
          case 0xE:
            v10 = 0xD000000000000018;
            v9 = 0x800000021BE544D0;
            break;
          case 0xF:
            v10 = 0xD000000000000012;
            v9 = 0x800000021BE544F0;
            break;
          default:
            break;
        }

        v11 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E75;
        switch(a1)
        {
          case 1:
            v11 = 0xEE006D6574497374;
            if (v10 == 0x696D694C6D6D6F63)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 2:
            v11 = 0x800000021BE543D0;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 3:
            v11 = 0x800000021BE543F0;
            if (v10 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v11 = 0xEC0000006D657449;
            if (v10 != 0x6E6F697461636F6CLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v11 = 0x800000021BE54420;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v11 = 0xEF6D657449797261;
            if (v10 != 0x69636966656E6562)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v11 = 0xEE006D6574497375;
            if (v10 != 0x6C5064756F6C4369)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v11 = 0xE800000000000000;
            if (v10 != 0x6D657449656D6F68)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v11 = 0x800000021BE54460;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v12 = 0x736143656C707061;
            v11 = 0xED00006D65744968;
            goto LABEL_48;
          case 11:
            v11 = 0xEB000000006D6574;
            if (v10 != 0x49746361746E6F63)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            v11 = 0x800000021BE54490;
            if (v10 != 0xD000000000000012)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v11 = 0x800000021BE544B0;
            if (v10 != 0xD000000000000015)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 14:
            v11 = 0x800000021BE544D0;
            if (v10 != 0xD000000000000018)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 15:
            v11 = 0x800000021BE544F0;
            if (v10 != 0xD000000000000012)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
LABEL_48:
            if (v10 != v12)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v9 == v11)
            {

              v13 = 1;
              return v13 & 1;
            }

LABEL_50:
            v13 = sub_21BE2995C();

            if (v13)
            {
              return v13 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v13 & 1;
            }

            break;
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}