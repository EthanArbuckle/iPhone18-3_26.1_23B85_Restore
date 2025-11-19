unint64_t sub_257D275A8()
{
  result = qword_27F8F82D8;
  if (!qword_27F8F82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F82D8);
  }

  return result;
}

unint64_t sub_257D27640()
{
  result = qword_281544810;
  if (!qword_281544810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544810);
  }

  return result;
}

id sub_257D27694(void *a1)
{
  result = [a1 tag];
  if (result <= 3)
  {
    v3 = result;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_2815447E0;

      if (v4 != -1)
      {
        v5 = swift_once();
      }

      MEMORY[0x28223BE20](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9A40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v3;
      sub_257EB110C(inited);
      sub_257D5A210(v16, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = qword_2815447E0;

      if (v7 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
      sub_257ECFD50();

      v9 = *(v16 + 16);
      if (v9)
      {
        v10 = (v16 + 32);
        v11 = MEMORY[0x277D84F90];
        do
        {
          v15 = *v10++;
          v14 = v15;
          if (v15 != v3)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF29A4(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_257BF29A4((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + v13 + 32) = v14;
          }

          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      sub_257D5A210(v11, 1);
    }
  }

  return result;
}

uint64_t sub_257D27A74(void *a1, void *a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348;
  v9 = [a1 isOn];
  v10 = v8 + *a2;
  swift_beginAccess();
  v14 = v9;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11);
  *&v13[-16] = &v14;
  *&v13[-8] = v10;
  sub_257ECFD40();
  (*(v5 + 8))(v7, v4);
  return swift_endAccess();
}

uint64_t sub_257D27C4C(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

void *sub_257D27C8C()
{
  if (vabdd_f64(0.0, *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness)) <= 0.01)
  {
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness);
    LOBYTE(v25) = 0;
    v2 = &off_28690CEA0;
    v3 = &type metadata for DisplayFilter;
  }

  v27 = v3;
  v28 = v2;
  v24 = v1;
  if (vabdd_f64(1.0, *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast)) <= 0.01)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast);
    LOBYTE(v30) = 1;
    v5 = &off_28690CEA0;
    v6 = &type metadata for DisplayFilter;
  }

  v32 = v6;
  v33 = v5;
  v29 = v4;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter) == 12)
  {
    v7 = 0;
    v8 = 0;
    memset(v34, 0, sizeof(v34));
  }

  else
  {
    v34[0] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter);
    v8 = &off_28690CD28;
    v7 = &type metadata for ColorFilter;
  }

  v35 = v7;
  v36 = v8;
  sub_257D281E4(&v24, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_257BE40E4(&v17, v20);
    v9 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCD80(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_257BFCD80((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    sub_257BE40E4(v20, &v9[5 * v11 + 4]);
  }

  else
  {
    sub_257D28254(&v17);
    v9 = MEMORY[0x277D84F90];
  }

  sub_257D281E4(&v29, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_257BE40E4(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCD80(0, v9[2] + 1, 1, v9);
    }

    v13 = v9[2];
    v12 = v9[3];
    if (v13 >= v12 >> 1)
    {
      v9 = sub_257BFCD80((v12 > 1), v13 + 1, 1, v9);
    }

    v9[2] = v13 + 1;
    sub_257BE40E4(v20, &v9[5 * v13 + 4]);
  }

  else
  {
    sub_257D28254(&v17);
  }

  sub_257D281E4(v34, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_257BE40E4(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCD80(0, v9[2] + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = sub_257BFCD80((v14 > 1), v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    sub_257BE40E4(v20, &v9[5 * v15 + 4]);
  }

  else
  {
    sub_257D28254(&v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8);
  swift_arrayDestroy();
  return v9;
}

id sub_257D2818C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LensFilteringViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D281E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D28254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MFReaderCustomFontPickerMenu()
{
  result = qword_27F8F8320;
  if (!qword_27F8F8320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257D2834C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFReaderCustomFontPickerMenu();
  sub_257BE401C(v1 + *(v10 + 20), v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_257D28554()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_257ECF500();
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257D2A9C0(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83E8);
  sub_257D2A80C();
  sub_257D2A860();
  sub_257BDAB08();
  return sub_257ECEF00();
}

uint64_t sub_257D28768()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8408);
  sub_257BD2D4C(&unk_27F8F8410, &qword_27F8F8400);
  sub_257D2A80C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F67E0);
  sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_257ECEF80();
}

uint64_t sub_257D2893C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_257ECE540();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4960);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v24 = &v24 - v9;
  v10 = *a1;
  sub_257ECE530();
  sub_257ECE520();
  v25 = v10;
  LOBYTE(v27) = v10;
  sub_257DE50BC();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v11 = sub_257ECEAD0();
  v13 = v12;
  v27 = v11;
  v28 = v12;
  v15 = v14 & 1;
  v29 = v14 & 1;
  v30 = v16;
  v17 = *MEMORY[0x277CDFA10];
  v18 = sub_257ECE1D0();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_257D2A9C0(&qword_27F8F67F8, MEMORY[0x277CDFA28]);
  result = sub_257ECF450();
  if (result)
  {
    sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0);
    v20 = v15;
    v21 = v11;
    v22 = v24;
    sub_257ECEBB0();
    sub_257BE4084(v6, &qword_27F8F67E0);
    sub_257C0300C(v21, v13, v20);

    (*(v26 + 32))(a2, v22, v8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4968);
    v23 = (a2 + *(result + 36));
    *v23 = v25;
    v23[1] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257D28CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8368);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8380);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = sub_257ECE1D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257D2834C(v12);
  v13 = sub_257ECE1C0();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = sub_257ECE500();
    v40 = 1;
    sub_257D29180(&v26);
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v47 = v32;
    v48 = v33;
    v49 = v34;
    v50 = v35;
    v43 = v28;
    v44 = v29;
    v45 = v30;
    v46 = v31;
    v41 = v26;
    v42 = v27;
    v54[9] = v35;
    v54[10] = v36;
    v54[11] = v37;
    v54[12] = v38;
    v54[6] = v32;
    v54[7] = v33;
    v54[8] = v34;
    v54[2] = v28;
    v54[3] = v29;
    v54[4] = v30;
    v54[5] = v31;
    v54[0] = v26;
    v54[1] = v27;
    sub_257BE401C(&v41, &v25, &qword_27F8F8390);
    sub_257BE4084(v54, &qword_27F8F8390);
    *&v39[151] = v50;
    *&v39[167] = v51;
    *&v39[183] = v52;
    *&v39[199] = v53;
    *&v39[87] = v46;
    *&v39[103] = v47;
    *&v39[119] = v48;
    *&v39[135] = v49;
    *&v39[23] = v42;
    *&v39[39] = v43;
    *&v39[55] = v44;
    *&v39[71] = v45;
    *&v39[7] = v41;
    v15 = *&v39[176];
    *(v8 + 177) = *&v39[160];
    *(v8 + 193) = v15;
    *(v8 + 209) = *&v39[192];
    v16 = *&v39[112];
    *(v8 + 113) = *&v39[96];
    *(v8 + 129) = v16;
    v17 = *&v39[144];
    *(v8 + 145) = *&v39[128];
    *(v8 + 161) = v17;
    v18 = *&v39[48];
    *(v8 + 49) = *&v39[32];
    *(v8 + 65) = v18;
    v19 = *&v39[80];
    *(v8 + 81) = *&v39[64];
    *(v8 + 97) = v19;
    v20 = *&v39[16];
    *(v8 + 17) = *v39;
    v21 = v40;
    *v8 = v14;
    *(v8 + 1) = 0;
    v8[16] = v21;
    *(v8 + 28) = *&v39[207];
    *(v8 + 33) = v20;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8358);
    sub_257BD2D4C(&qword_27F8F8350, &qword_27F8F8358);
    sub_257BD2D4C(&qword_27F8F8360, &qword_27F8F8368);
    return sub_257ECE6F0();
  }

  else
  {
    *v5 = sub_257ECE500();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8388);
    sub_257D29A54(a1, &v5[*(v23 + 44)]);
    sub_257BE401C(v5, v8, &qword_27F8F8368);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8358);
    sub_257BD2D4C(&qword_27F8F8350, &qword_27F8F8358);
    sub_257BD2D4C(&qword_27F8F8360, &qword_27F8F8368);
    sub_257ECE6F0();
    return sub_257BE4084(v5, &qword_27F8F8368);
  }
}

uint64_t sub_257D29180@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECE5C0();
  sub_257D29420(&v26);
  v18 = *&v27[80];
  v19 = *&v27[96];
  v20 = *&v27[112];
  v14 = *&v27[16];
  v15 = *&v27[32];
  v16 = *&v27[48];
  v17 = *&v27[64];
  v12 = v26;
  v13 = *v27;
  v22[6] = *&v27[80];
  v22[7] = *&v27[96];
  v22[8] = *&v27[112];
  v22[2] = *&v27[16];
  v22[3] = *&v27[32];
  v22[4] = *&v27[48];
  v22[5] = *&v27[64];
  v21 = *&v27[128];
  v23 = *&v27[128];
  v22[0] = v26;
  v22[1] = *v27;
  sub_257BE401C(&v12, &v24, &qword_27F8F8398);
  sub_257BE4084(v22, &qword_27F8F8398);
  *&v11[103] = v18;
  *&v11[119] = v19;
  *&v11[135] = v20;
  *&v11[39] = v14;
  *&v11[55] = v15;
  *&v11[71] = v16;
  *&v11[87] = v17;
  *&v11[7] = v12;
  *&v11[151] = v21;
  *&v11[23] = v13;
  v3 = sub_257ECEE10();
  v4 = sub_257ECED60();
  v24 = v2;
  LOBYTE(v25[0]) = 1;
  *(&v25[6] + 1) = *&v11[96];
  *(&v25[7] + 1) = *&v11[112];
  *(&v25[8] + 1) = *&v11[128];
  v25[9] = *&v11[143];
  *(&v25[2] + 1) = *&v11[32];
  *(&v25[3] + 1) = *&v11[48];
  *(&v25[4] + 1) = *&v11[64];
  *(&v25[5] + 1) = *&v11[80];
  *(v25 + 1) = *v11;
  *(&v25[1] + 1) = *&v11[16];
  v5 = v25[8];
  *(a1 + 128) = v25[7];
  *(a1 + 144) = v5;
  *(a1 + 160) = v25[9];
  v6 = v25[4];
  *(a1 + 64) = v25[3];
  *(a1 + 80) = v6;
  v7 = v25[6];
  *(a1 + 96) = v25[5];
  *(a1 + 112) = v7;
  v8 = v25[0];
  *a1 = v24;
  *(a1 + 16) = v8;
  v9 = v25[2];
  *(a1 + 32) = v25[1];
  *(a1 + 48) = v9;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = v3;
  *(a1 + 200) = v4;
  sub_257BE401C(&v24, &v26, &qword_27F8F83A0);
  *&v27[97] = *&v11[96];
  *&v27[113] = *&v11[112];
  *&v27[129] = *&v11[128];
  *&v27[144] = *&v11[143];
  *&v27[33] = *&v11[32];
  *&v27[49] = *&v11[48];
  *&v27[65] = *&v11[64];
  *&v27[81] = *&v11[80];
  *&v27[1] = *v11;
  v26 = v2;
  v27[0] = 1;
  *&v27[17] = *&v11[16];
  return sub_257BE4084(&v26, &qword_27F8F83A0);
}

uint64_t sub_257D29420@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_257ECE540();
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  v9 = v8;

  v79 = v7;
  v80 = v9;
  sub_257BDAB08();
  v10 = sub_257ECEAF0();
  v12 = v11;
  LOBYTE(v5) = v13;
  v79 = sub_257ECED90();
  v42 = sub_257ECEAB0();
  v43 = v14;
  v45 = v15;
  v17 = v16;
  sub_257C0300C(v10, v12, v5 & 1);

  KeyPath = swift_getKeyPath();
  v46 = v17 & 1;
  LOBYTE(v79) = v17 & 1;
  sub_257ECE530();
  sub_257ECE520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  LOBYTE(v73) = v79;
  sub_257DE50BC();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v18 = sub_257ECEAD0();
  v20 = v19;
  LOBYTE(v12) = v21;
  v79 = sub_257ECED60();
  v22 = sub_257ECEAB0();
  v40 = v23;
  v41 = v24;
  v26 = v25;
  sub_257C0300C(v18, v20, v12 & 1);

  v27 = swift_getKeyPath();
  LOBYTE(v73) = v26 & 1;
  v28 = swift_getKeyPath();
  LOBYTE(v79) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  LOBYTE(v48[0]) = v73;
  MFReaderFont.rawValue.getter();
  v29 = sub_257ECEA10();

  v30 = swift_getKeyPath();
  *&v69 = v42;
  *(&v69 + 1) = v45;
  LOBYTE(v70) = v46;
  *(&v70 + 1) = *v68;
  DWORD1(v70) = *&v68[3];
  *(&v70 + 1) = v43;
  LOWORD(v71) = 256;
  *(&v71 + 2) = v66;
  WORD3(v71) = v67;
  *(&v71 + 1) = KeyPath;
  v72 = 0;
  v60[0] = 0;
  v58 = v70;
  v59 = v71;
  v57 = v69;
  *&v73 = v22;
  *(&v73 + 1) = v40;
  LOBYTE(v74) = v26 & 1;
  DWORD1(v74) = *&v63[3];
  *(&v74 + 1) = *v63;
  *(&v74 + 1) = v41;
  LOWORD(v75) = 256;
  WORD3(v75) = v62;
  v31 = v61;
  *(&v75 + 2) = v61;
  *(&v75 + 1) = v27;
  LOBYTE(v76) = 0;
  DWORD1(v76) = *&v64[3];
  *(&v76 + 1) = *v64;
  *(&v76 + 1) = v28;
  *&v77 = 0;
  BYTE8(v77) = 1;
  HIDWORD(v77) = *(v65 + 3);
  *(&v77 + 9) = v65[0];
  *&v78 = v30;
  *(&v78 + 1) = v29;
  *&v60[24] = v74;
  *&v60[8] = v73;
  *&v60[88] = v78;
  *&v60[72] = v77;
  *&v60[56] = v76;
  *&v60[40] = v75;
  v32 = v70;
  *a1 = v69;
  *(a1 + 16) = v32;
  v33 = v59;
  v34 = *v60;
  v35 = *&v60[32];
  *(a1 + 64) = *&v60[16];
  *(a1 + 80) = v35;
  *(a1 + 32) = v33;
  *(a1 + 48) = v34;
  v36 = *&v60[48];
  v37 = *&v60[64];
  v38 = *&v60[80];
  *(a1 + 144) = *&v60[96];
  *(a1 + 112) = v37;
  *(a1 + 128) = v38;
  *(a1 + 96) = v36;
  v79 = v22;
  v80 = v40;
  v81 = v26 & 1;
  *v82 = *v63;
  *&v82[3] = *&v63[3];
  v83 = v41;
  v84 = 256;
  v85 = v31;
  v86 = v62;
  v87 = v27;
  v88 = 0;
  *v89 = *v64;
  *&v89[3] = *&v64[3];
  v90 = v28;
  v91 = 0;
  v92 = 1;
  *v93 = v65[0];
  *&v93[3] = *(v65 + 3);
  v94 = v30;
  v95 = v29;
  sub_257BE401C(&v69, v48, &qword_27F8F83A8);
  sub_257BE401C(&v73, v48, &qword_27F8F83B0);
  sub_257BE4084(&v79, &qword_27F8F83B0);
  v48[0] = v42;
  v48[1] = v45;
  v49 = v46;
  *v50 = *v68;
  *&v50[3] = *&v68[3];
  v51 = v43;
  v52 = 256;
  v53 = v66;
  v54 = v67;
  v55 = KeyPath;
  v56 = 0;
  return sub_257BE4084(v48, &qword_27F8F83A8);
}

uint64_t sub_257D29A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83B8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = (&v46 - v5);
  v6 = sub_257ECE1D0();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C0) - 8;
  v8 = MEMORY[0x28223BE20](v49);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v17 = sub_257ECF500();
  v19 = v18;

  v55 = v17;
  v56 = v19;
  sub_257BDAB08();
  v20 = sub_257ECEAF0();
  v22 = v21;
  LOBYTE(v16) = v23;
  v55 = sub_257ECED90();
  v24 = sub_257ECEAB0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_257C0300C(v20, v22, v16 & 1);

  v55 = v24;
  v56 = v26;
  v31 = v28 & 1;
  v57 = v28 & 1;
  v58 = v30;
  v33 = v46;
  v32 = v47;
  v34 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x277CDFA10], v48);
  sub_257ECEBA0();
  (*(v32 + 8))(v33, v34);
  sub_257C0300C(v24, v26, v31);

  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C8) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v36 = &v11[*(v49 + 44)];
  *v36 = KeyPath;
  v36[8] = 0;
  v37 = sub_257ECE500();
  v38 = v51;
  *v51 = v37;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83D0);
  sub_257D29F48(v53, v38 + *(v39 + 44));
  v40 = v50;
  sub_257BE401C(v11, v50, &qword_27F8F83C0);
  v41 = v52;
  sub_257BE401C(v38, v52, &qword_27F8F83B8);
  v42 = v54;
  sub_257BE401C(v40, v54, &qword_27F8F83C0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83D8);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_257BE401C(v41, v42 + *(v43 + 64), &qword_27F8F83B8);
  sub_257BE4084(v38, &qword_27F8F83B8);
  sub_257BE4084(v11, &qword_27F8F83C0);
  sub_257BE4084(v41, &qword_27F8F83B8);
  return sub_257BE4084(v40, &qword_27F8F83C0);
}

uint64_t sub_257D29F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_257ECE1D0();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECE540();
  MEMORY[0x28223BE20](v5 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C0) - 8;
  v6 = MEMORY[0x28223BE20](v41);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - v8;
  sub_257ECE530();
  sub_257ECE520();
  v37[1] = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v48 = v44;
  sub_257DE50BC();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v10 = sub_257ECEAD0();
  v12 = v11;
  v14 = v13;
  v44 = sub_257ECED60();
  v15 = sub_257ECEAB0();
  v17 = v16;
  v19 = v18;
  sub_257C0300C(v10, v12, v14 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v48 = v44;
  MFReaderFont.rawValue.getter();
  sub_257ECEA10();

  v20 = sub_257ECEAC0();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;

  sub_257C0300C(v15, v17, v19 & 1);

  v44 = v20;
  v45 = v22;
  v46 = v10 & 1;
  v47 = v25;
  v27 = v38;
  v26 = v39;
  v28 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277CDFA10], v40);
  sub_257ECEBA0();
  (*(v26 + 8))(v27, v28);
  sub_257C0300C(v20, v22, v10 & 1);

  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C8) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v30 = &v9[*(v41 + 44)];
  *v30 = KeyPath;
  v30[8] = 0;
  v31 = sub_257ECEE10();
  v32 = sub_257ECED60();
  v33 = v42;
  sub_257BE401C(v9, v42, &qword_27F8F83C0);
  v34 = v43;
  sub_257BE401C(v33, v43, &qword_27F8F83C0);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83E0) + 48));
  *v35 = v31;
  v35[1] = v32;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257BE4084(v9, &qword_27F8F83C0);

  return sub_257BE4084(v33, &qword_27F8F83C0);
}

uint64_t sub_257D2A464@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v11[0] = sub_257ECE750();
  v2 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v13 = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8340);
  sub_257D2A72C();
  sub_257BD2D4C(&qword_27F8F8370, &qword_27F8F8340);
  sub_257ECEA90();
  sub_257ECE740();
  sub_257BD2D4C(&qword_27F8F8378, &qword_27F8F8330);
  sub_257D2A9C0(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v9 = v11[0];
  sub_257ECEB60();
  (*(v2 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_257D2A72C()
{
  result = qword_27F8F8348;
  if (!qword_27F8F8348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8338);
    sub_257BD2D4C(&qword_27F8F8350, &qword_27F8F8358);
    sub_257BD2D4C(&qword_27F8F8360, &qword_27F8F8368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8348);
  }

  return result;
}

unint64_t sub_257D2A80C()
{
  result = qword_27F8F83F0;
  if (!qword_27F8F83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F83F0);
  }

  return result;
}

unint64_t sub_257D2A860()
{
  result = qword_27F8F83F8;
  if (!qword_27F8F83F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F83E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F67E0);
    sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0);
    swift_getOpaqueTypeConformance2();
    sub_257D2A80C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F83F8);
  }

  return result;
}

uint64_t sub_257D2A9C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257D2AA08()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

void sub_257D2ABA8()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_tableView];
  [v2 setDataSource_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 addSubview_];

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      sub_257EB6FD8(v8, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257D2AD78()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257C109C8(v15);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

id sub_257D2B044(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks] = &unk_286905868;
  v8 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  [v11 setClipsToBounds_];
  *&v3[v8] = v11;
  if (a2)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_257D2B23C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks] = &unk_286905890;
  v5 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *&v1[v5] = v8;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

unint64_t sub_257D2B54C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCEA0();
  if (!v4)
  {
    v17 = sub_257ECF4C0();
    v18 = sub_257ECCE30();
    v8 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:v18];

    sub_257D2AD78();
    v19 = [v8 textLabel];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_257ECF4C0();
      v24 = sub_257ECF4C0();
      v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

      if (!v25)
      {
        sub_257ECF500();
        v25 = sub_257ECF4C0();
      }

      [v20 setText_];
    }

    v26 = [v8 textLabel];
    if (v26)
    {
      v27 = v26;
      [v26 setNumberOfLines_];
    }

    v28 = [v8 textLabel];
    if (v28)
    {
      v29 = v28;
      [v28 setLineBreakMode_];
    }

    v30 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v31 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) == 1)
    {
    }

    else
    {
      [v30 setOn_];
      v32 = v30;
      [v32 setTag_];
      [v32 addTarget:v2 action:sel_toggleImageCaptionsSwitchChanged_ forControlEvents:4096];
      [v8 setAccessoryView_];
    }

    return v8;
  }

  v5 = v4 != 1;
  v6 = sub_257ECF4C0();
  v7 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  sub_257D2AD78();
  if (v5)
  {
    return v8;
  }

  v9 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks);
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    v11 = *(v9 + result + 32);
    v12 = [v8 textLabel];
    if (v12)
    {
      v13 = v12;
      sub_257D2C2BC();
      v14 = sub_257ECF4C0();

      [v13 setText_];
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v16 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) != 1)
    {
      [v15 setOn_];
      v15 = v15;
      [v15 setTag_];
      [v15 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v8 setAccessoryView_];

      [v8 setAccessoryType_];
    }

    return v8;
  }

  __break(1u);
  return result;
}

id sub_257D2BB20(void *a1)
{
  v2 = v1;
  sub_257D2AD78();
  result = [a1 tag];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), 0x128uLL);
  result = sub_257C108C4(__dst);
  if (result != 1)
  {
    v7 = *(v6 + 184);

    if ([a1 isOn])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v5;
      sub_257EB1220(inited);
      sub_257D2BCF8(v7);
    }

    else
    {
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = (v7 + 32);
        v11 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v10;
          if (v5 != v14)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF29C4(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_257BF29C4((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + v13 + 32) = v14;
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      sub_257D2BCF8(v11);
    }
  }

  return result;
}

uint64_t sub_257D2BCF8(char *a1)
{
  sub_257D2AD78();
  v7 = a1;

  sub_257D6D268(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D74310(*(v4 + 184), v3) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE2F44(v3);

  return swift_unknownObjectRelease();
}

id sub_257D2BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  a5(a4);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257D2C0AC(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257D2C1B4(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257D2C2BC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

id sub_257D2C494()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_tableView];
  [v13 setDataSource_];
  [v13 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = sub_257ECF4C0();
  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v18 = result;
  v24 = v10;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v19 = [objc_opt_self() mainRunLoop];
  v26 = v19;
  v20 = sub_257ED0080();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BD2CDC(v5);

  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v21 = v24;
  v22 = sub_257ECDE50();

  (*(v25 + 8))(v12, v21);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_speechFeedbackSubscription] = v22;
}

void sub_257D2C9A4()
{
  v0 = sub_257ECCEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9[7] == 1)
    {
      [v5 beginUpdates];
      MEMORY[0x259C6F970](1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
      v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_257ED6D30;
      (*(v1 + 16))(v7 + v6, v3, v0);
      v8 = sub_257ECF7F0();

      [v5 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

      [v5 endUpdates];
      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

void sub_257D2CC38(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257D2CDF4(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks] = &unk_2869058E0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257D2CFB8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks] = &unk_286905908;
  v4 = OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_speechFeedbackSubscription] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257D2D1C0(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF4C0();
  v6 = sub_257ECCE30();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks);
  v9 = v7;
  v10 = sub_257ECCE60();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= *(v8 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v8 = *(v8 + v10 + 32);
  v11 = [v9 textLabel];
  if (v11)
  {
    v12 = v11;
    sub_257D2C2BC();
    v13 = sub_257ECF4C0();

    [v12 setText_];
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  if (qword_281544FE0 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  swift_beginAccess();
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
  sub_257ECFD50();

  v16 = sub_257C592E8(v8, v19);

  [v2 setOn_];
  v17 = v2;
  [v17 setTag_];
  [v17 addTarget:v3 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
  [v9 setAccessoryView_];

  [v9 setAccessoryType_];
  return v9;
}

id sub_257D2D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    a5();
    if (v8)
    {
      v9 = sub_257ECF4C0();

      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

unint64_t sub_257D2D8D8()
{
  result = qword_27F8F8460;
  if (!qword_27F8F8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8460);
  }

  return result;
}

unint64_t sub_257D2D970()
{
  result = qword_2815447C8;
  if (!qword_2815447C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815447C8);
  }

  return result;
}

uint64_t sub_257D2D9C4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257D2DAB4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

id sub_257D2DBA4(void *a1)
{
  result = [a1 tag];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_2815447E0;

    if (v4 != -1)
    {
      v5 = swift_once();
    }

    MEMORY[0x28223BE20](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
    sub_257ECFD50();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v3;
    sub_257EB1220(inited);
    sub_257D59960(v15, 1);
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
    sub_257ECFD50();

    v9 = *(v15 + 16);
    if (v9)
    {
      v10 = (v15 + 32);
      v11 = MEMORY[0x277D84F90];
      do
      {
        v14 = *v10;
        if (v3 != v14)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_257BF29C4(0, *(v11 + 16) + 1, 1);
          }

          v13 = *(v11 + 16);
          v12 = *(v11 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_257BF29C4((v12 > 1), v13 + 1, 1);
          }

          *(v11 + 16) = v13 + 1;
          *(v11 + v13 + 32) = v14;
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_257D59960(v11, 1);
  }
}

void sub_257D2E134()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  [v0 setAutoresizesSubviews_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  v4 = qword_281548308;
  [v3 setBackgroundColor_];
  v5 = [v3 layer];
  v6 = [v1 systemYellowColor];
  v7 = [v6 CGColor];

  [v5 setBorderColor_];
  v8 = [v3 layer];
  [v8 setBorderWidth_];

  v9 = [v3 layer];
  [v9 setCornerRadius_];

  v10 = [v3 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = [v3 layer];
  [v11 setMasksToBounds_];

  v12 = [v3 layer];
  v13 = [v4 CGColor];
  [v12 setShadowColor_];

  v14 = [v3 layer];
  LODWORD(v15) = 1.0;
  [v14 setShadowOpacity_];

  v16 = [v3 layer];
  [v16 setShadowOffset_];

  v17 = [v3 layer];
  [v17 setShadowRadius_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setUserInteractionEnabled_];
  [v0 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257EDBE40;
  v20 = [v3 widthAnchor];
  v21 = [v0 widthAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 multiplier:0.75];

  *(v19 + 32) = v22;
  v23 = [v3 heightAnchor];
  v24 = [v0 heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 multiplier:0.75];

  *(v19 + 40) = v25;
  v26 = [v3 centerXAnchor];
  v27 = [v0 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v3 centerYAnchor];
  v30 = [v0 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  sub_257C80FFC();
  v32 = sub_257ECF7F0();

  [v18 activateConstraints_];

  v33 = sub_257ECF4C0();
  v34 = [objc_opt_self() _systemImageNamed_];

  if (v34)
  {
    v35 = [v34 imageWithRenderingMode_];
  }

  else
  {
    v35 = 0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v52 setContentMode_];
  [v52 setClipsToBounds_];
  [v0 bounds];
  [v52 setFrame_];
  [v52 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v1 clearColor];
  [v52 setBackgroundColor_];

  v37 = [v1 systemYellowColor];
  [v52 setTintColor_];

  [v52 setUserInteractionEnabled_];
  [v3 addSubview_];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_257EDBE40;
  v39 = [v52 widthAnchor];
  v40 = [v3 widthAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 multiplier:0.75];

  *(v38 + 32) = v41;
  v42 = [v52 heightAnchor];
  v43 = [v3 heightAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 multiplier:0.75];

  *(v38 + 40) = v44;
  v45 = [v52 centerXAnchor];
  v46 = [v0 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v38 + 48) = v47;
  v48 = [v52 centerYAnchor];

  v49 = [v0 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v38 + 56) = v50;
  v51 = sub_257ECF7F0();

  [v18 activateConstraints_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
}

id TranscriptButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D2EABC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t ANSTDetectedPerson.debugDescription.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  sub_257ED02D0();
  MEMORY[0x259C72150](0x206E6F737265503CLL, 0xE800000000000000);
  v5 = sub_257ED0600();
  MEMORY[0x259C72150](v5);

  MEMORY[0x259C72150](0x3A65636166207C20, 0xE800000000000000);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x259C72150](v6, v7);

  MEMORY[0x259C72150](0x6F626C6C7566202CLL, 0xEB000000003A7964);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x259C72150](v8, v9);

  MEMORY[0x259C72150](0x427265707075202CLL, 0xEC0000003A79646FLL);
  if (v2)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x259C72150](v10, v11);

  MEMORY[0x259C72150](0x3A73646E6168202CLL, 0xE800000000000000);
  if (v4 >> 62)
  {
    sub_257ED0210();
  }

  v12 = sub_257ED0600();
  MEMORY[0x259C72150](v12);

  MEMORY[0x259C72150](62, 0xE100000000000000);
  return 0;
}

BOOL _s16MagnifierSupport18ANSTDetectedPersonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  if (v2)
  {
    if (!v8)
    {
      return 0;
    }

    sub_257BD2C2C(0, &qword_27F8F5740);
    v14 = v8;
    v15 = v2;
    v16 = sub_257ECFF50();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    sub_257BD2C2C(0, &qword_27F8F5750);
    v18 = v9;
    v19 = v3;
    v20 = sub_257ECFF50();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F5750);
  v21 = v11;
  v22 = v5;
  v23 = sub_257ECFF50();

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((sub_257D552D0(v4, v10) & 1) == 0)
  {
    return 0;
  }

  return v6 == v12 && v7 == v13;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_257D2EFD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257D2F020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257D2F07C(unint64_t isUniquelyReferenced_nonNull_native, unint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6)
{
  v12 = sub_257BE8BB8(MEMORY[0x277D84F90]);
  v99 = v12;
  if (a2 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v96 = isUniquelyReferenced_nonNull_native;
    v92 = a3;
    if (!i)
    {
      break;
    }

    v14 = 0;
    v15 = 0;
    a3 = 0;
    v93 = a2 & 0xC000000000000001;
    v88 = a2 & 0xFFFFFFFFFFFFFF8;
    v90 = a2;
    if ((a2 & 0xC000000000000001) != 0)
    {
LABEL_5:
      v16 = MEMORY[0x259C72E20](v14, a2);
      goto LABEL_8;
    }

    while (1)
    {
      if (v14 >= *(v88 + 16))
      {
        goto LABEL_76;
      }

      v16 = *(a2 + 8 * v14 + 32);
LABEL_8:
      v6 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      a2 = i;
      v17 = [v16 groupID];
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      v6 = v6;
      sub_257BBD88C(v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v12;
      v20 = sub_257C040A0(v17);
      v21 = v12[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_71;
      }

      v24 = v19;
      if (v12[3] >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v96;
          if (v19)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_257C07FD4();
          v12 = v98;
          isUniquelyReferenced_nonNull_native = v96;
          if (v24)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_257EC3228(v23, isUniquelyReferenced_nonNull_native);
        v12 = v98;
        v25 = sub_257C040A0(v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_100;
        }

        v20 = v25;
        isUniquelyReferenced_nonNull_native = v96;
        if (v24)
        {
LABEL_16:

          v27 = v12[7] + 56 * v20;
          goto LABEL_20;
        }
      }

      a3 = [v6 groupID];

      v12[(v20 >> 6) + 8] |= 1 << v20;
      *(v12[6] + 8 * v20) = v17;
      v28 = (v12[7] + 56 * v20);
      *v28 = a3;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = 0;
      v28[6] = 0;
      v28[4] = MEMORY[0x277D84F90];
      v28[5] = 0;
      v29 = v12[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_74;
      }

      v12[2] = v31;
      v27 = v12[7] + 56 * v20;
LABEL_20:
      v32 = *(v27 + 16);
      *(v27 + 16) = v6;

      i = a2;
      if (v14 + 1 == a2)
      {
        v99 = v12;
        v89 = sub_257D2F99C;
        v33 = v92;
        if (!(v92 >> 62))
        {
          goto LABEL_24;
        }

LABEL_55:
        v60 = v33;
        v61 = sub_257ED0210();
        v33 = v60;
        v34 = v61;
        if (!v61)
        {
          goto LABEL_56;
        }

LABEL_25:
        isUniquelyReferenced_nonNull_native = 0;
        v35 = 0;
        a3 = 0;
        v94 = v33 & 0xC000000000000001;
        v91 = v33 & 0xFFFFFFFFFFFFFF8;
        if ((v33 & 0xC000000000000001) != 0)
        {
LABEL_26:
          v36 = MEMORY[0x259C72E20](isUniquelyReferenced_nonNull_native);
          goto LABEL_29;
        }

        while (2)
        {
          if (isUniquelyReferenced_nonNull_native >= *(v91 + 16))
          {
            goto LABEL_77;
          }

          v36 = *(v33 + 8 * isUniquelyReferenced_nonNull_native + 32);
LABEL_29:
          a2 = v36;
          if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
          {
            goto LABEL_72;
          }

          v37 = [v36 groupID];
          v38 = swift_allocObject();
          *(v38 + 16) = a2;
          v6 = a2;
          sub_257BBD88C(v35);
          a2 = swift_isUniquelyReferenced_nonNull_native();
          v98 = v12;
          v40 = sub_257C040A0(v37);
          v41 = v12[2];
          v42 = (v39 & 1) == 0;
          v43 = v41 + v42;
          if (__OFADD__(v41, v42))
          {
            goto LABEL_73;
          }

          v44 = v39;
          if (v12[3] >= v43)
          {
            if (a2)
            {
              a2 = 56;
              if ((v39 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              sub_257C07FD4();
              v12 = v98;
              a2 = 56;
              if ((v44 & 1) == 0)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            sub_257EC3228(v43, a2);
            v12 = v98;
            v45 = sub_257C040A0(v37);
            if ((v44 & 1) != (v46 & 1))
            {
              goto LABEL_100;
            }

            v40 = v45;
            a2 = 56;
            if ((v44 & 1) == 0)
            {
LABEL_39:
              a3 = [v6 groupID];

              v12[(v40 >> 6) + 8] |= 1 << v40;
              *(v12[6] + 8 * v40) = v37;
              v47 = (v12[7] + 56 * v40);
              *v47 = a3;
              v47[1] = 0;
              v47[2] = 0;
              v47[3] = 0;
              v47[6] = 0;
              v47[4] = MEMORY[0x277D84F90];
              v47[5] = 0;
              v48 = v12[2];
              v30 = __OFADD__(v48, 1);
              v49 = v48 + 1;
              if (v30)
              {
                goto LABEL_75;
              }

              v12[2] = v49;
              goto LABEL_41;
            }
          }

LABEL_41:
          v50 = v12[7] + 56 * v40;
          v51 = *(v50 + 24);
          *(v50 + 24) = v6;

          if (isUniquelyReferenced_nonNull_native + 1 == v34)
          {
            v99 = v12;
            v95 = sub_257D2F950;
            isUniquelyReferenced_nonNull_native = v96;
            if (v96 >> 62)
            {
              goto LABEL_57;
            }

            goto LABEL_45;
          }

          ++isUniquelyReferenced_nonNull_native;
          v35 = sub_257D2F950;
          a3 = v38;
          v33 = v92;
          if (v94)
          {
            goto LABEL_26;
          }

          continue;
        }
      }

      ++v14;
      v15 = sub_257D2F99C;
      a3 = v18;
      a2 = v90;
      if (v93)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v33 = a3;
  v89 = 0;
  if (a3 >> 62)
  {
    goto LABEL_55;
  }

LABEL_24:
  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
    goto LABEL_25;
  }

LABEL_56:
  v95 = 0;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_57:
    v52 = sub_257ED0210();
    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
LABEL_45:
    v52 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_58;
    }
  }

  if (v52 < 1)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:

    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

  v53 = 0;
  v6 = &v98;
  do
  {
    if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x259C72E20](v53, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v54 = *(isUniquelyReferenced_nonNull_native + 8 * v53 + 32);
    }

    v55 = v54;
    v57 = sub_257DFE48C(&v98, [v54 groupID]);
    if (*(v56 + 32))
    {
      v58 = *(v56 + 8);
      *(v56 + 8) = v55;
      v59 = v55;
    }

    (v57)(&v98, 0);
    ++v53;
  }

  while (v52 != v53);
LABEL_58:
  v62 = a4;
  if (a4 >> 62)
  {
    v72 = sub_257ED0210();
    v62 = a4;
    v63 = v72;
    if (!v72)
    {
      goto LABEL_80;
    }

LABEL_60:
    if (v63 >= 1)
    {
      v64 = 0;
      v65 = v62 & 0xC000000000000001;
      do
      {
        if (v65)
        {
          v66 = MEMORY[0x259C72E20](v64);
        }

        else
        {
          v66 = *(v62 + 8 * v64 + 32);
        }

        v67 = v66;
        v68 = sub_257DFE48C(&v98, [v66 groupID]);
        v70 = (v69 + 32);
        if (*(v69 + 32))
        {
          v71 = v67;
          MEMORY[0x259C72300]();
          if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_257ECF830();
          }

          sub_257ECF860();
        }

        (v68)(&v98, 0);
        ++v64;

        v62 = a4;
      }

      while (v63 != v64);
      goto LABEL_80;
    }

    goto LABEL_98;
  }

  v63 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v63)
  {
    goto LABEL_60;
  }

LABEL_80:
  v73 = v99;
  v74 = v99 + 8;
  v75 = 1 << *(v99 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v6 = v76 & v99[8];
  v77 = (v75 + 63) >> 6;

  v78 = 0;
  while (v6)
  {
    v79 = v78;
LABEL_89:
    v80 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v82 = sub_257DFE48C(&v98, *(v73[6] + ((v79 << 9) | (8 * v80))));
    if (*(v81 + 32))
    {
      *(v81 + 40) = a5;
      *(v81 + 48) = a6;
    }

    (v82)(&v98, 0);
    v78 = v79;
  }

  while (1)
  {
    v79 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    if (v79 >= v77)
    {
      break;
    }

    v6 = v74[v79];
    ++v78;
    if (v6)
    {
      goto LABEL_89;
    }
  }

  v83 = v99;
  v84 = v99[2];
  if (v84)
  {
    v85 = sub_257C63D68(v99[2], 0);
    v86 = sub_257C6749C(&v98, (v85 + 4), v84, v83);
    v6 = v98;

    sub_257C02520();
    if (v86 != v84)
    {
      goto LABEL_99;
    }

    sub_257BBD88C(v89);
    sub_257BBD88C(v95);
  }

  else
  {

    sub_257BBD88C(v89);
    sub_257BBD88C(v95);
    return MEMORY[0x277D84F90];
  }

  return v85;
}

id sub_257D2F954@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) groupID];
  *a1 = result;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v4 = MEMORY[0x277D84F90];
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v4;
  return result;
}

void sub_257D2F9A0(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter) = *a1;
  v3 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView) layer];
  if (*(v1 + v2) == 12)
  {
    [v3 setFilters_];
  }

  else
  {
    v4 = sub_257D18A0C();
    sub_257EB7394(v4);

    v6 = sub_257ECF7F0();

    [v3 setFilters_];
  }
}

char *sub_257D2FA80(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter] = 12;
  v10 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setAutoresizesSubviews_];
  v12 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
  [*&v11[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView] setContentMode_];
  [*&v11[v12] setClipsToBounds_];
  v13 = *&v11[v12];
  [v11 bounds];
  [v13 setFrame_];
  [v11 addSubview_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_257EB6FD8(v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  return v11;
}

void sub_257D2FCE4()
{
  v1 = v0;
  v2 = sub_257D30364();
  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  [v2 setIsAccessibilityElement_];

  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v7 = 0;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_6:
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 24))(v1, &off_28690D558, v9, v8);
    swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      v7 = v10;
      goto LABEL_9;
    }

LABEL_7:
    v11 = sub_257D302D4();
    [v11 setAccessibilityHint_];
    v12 = 1;
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:
  v13 = *(v1 + v3);
  v14 = sub_257D302D4();
  v11 = v14;
  if (v13 == 1 && (v7 & 1) == 0)
  {
    [v14 setAccessibilityHint_];
    v12 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      sub_257ECF500();
      v19 = sub_257ECF4C0();
    }

    [v11 setAccessibilityHint_];

    v12 = 0;
    v11 = v19;
  }

LABEL_15:

  v20 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed);
  v21 = sub_257D302D4();
  v22 = *MEMORY[0x277D76580];
  v23 = [v21 accessibilityTraits];
  if (v20 == 1)
  {
    [v21 setAccessibilityTraits_];

    v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
    [v24 setAccessibilityTraits_];
  }

  else
  {
    [v21 setAccessibilityTraits_];

    v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
    [v24 setAccessibilityTraits_];
  }

  v25 = *(v1 + v3);
  v26 = sub_257D302D4();
  v27 = *MEMORY[0x277D76598];
  v28 = [v26 accessibilityTraits];
  if (v25)
  {
    v29 = v28 | v27;
  }

  else
  {
    v29 = v28 & ~v27;
  }

  [v26 setAccessibilityTraits_];

  v30 = sub_257D302D4();
  v31 = *MEMORY[0x277D76548];
  v32 = [v30 accessibilityTraits];
  if (v12)
  {
    v33 = v32 & ~v31;
  }

  else
  {
    v33 = v32 | v31;
  }

  [v30 setAccessibilityTraits_];

  v34 = sub_257D302D4();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  sub_257D188B4();
  type metadata accessor for MAGUtilities();
  v35 = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() &selRef:v35 setValues:? + 3];
  v37 = sub_257ECF4C0();

  v38 = sub_257ECF4C0();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  if (!v39)
  {
    sub_257ECF500();
    v39 = sub_257ECF4C0();
  }

  [v34 setAccessibilityValue_];
}

id sub_257D302D4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v4;
    v8 = v0;
    v9 = sub_257D47B08(v7, v5);
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_257D30364()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
  }

  else
  {
    type metadata accessor for LensFiltersScrubber();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257D303DC()
{
  v1 = sub_257D30364();
  v2 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber) setIsAccessibilityElement_];
  v4 = sub_257D302D4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  v10 = sub_257ECF4C0();

  [v4 setAccessibilityHint_];

  sub_257D2FCE4();
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D3064C(char a1)
{
  v3 = sub_257ECF120();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_257D329A4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_54_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_257D30918(unsigned __int8 *a1, char a2)
{
  v3 = a2 & 1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing;
  v5 = a1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing];
  v6 = objc_opt_self();
  v7 = &selRef_systemYellowColor;
  if (!v5)
  {
    v7 = &selRef_whiteColor;
  }

  v8 = [v6 *v7];
  [a1 setTintColor_];

  if (a1[v4] != v3)
  {
    if (Control.rawValue.getter() == 0x737265746C6966 && v9 == 0xE700000000000000)
    {
    }

    else
    {
      v10 = sub_257ED0640();

      if ((v10 & 1) == 0)
      {
        if (a1[v4] == 1)
        {
          v18 = sub_257D15408();
        }

        else
        {
          v18 = sub_257D14B7C();
        }

        v16 = v18;
        v17 = sub_257D302D4();
        [v17 setImage:v16 forState:0];
LABEL_14:

        sub_257D2FCE4();
        return;
      }
    }

    v11 = [a1 tintColor];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [objc_opt_self() configurationWithHierarchicalColor_];

    v14 = v13;
    v15 = sub_257ECF4C0();
    v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

    v17 = sub_257D302D4();
    [v17 setImage:v16 forState:0];

    goto LABEL_14;
  }
}

id sub_257D30B64(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_freezeFrameReviewSubscription] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_control] = v6;
  v7 = &v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config];
  *v7 = a2;
  v7[1] = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for ScrubberButton();
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257D30CF8();
  sub_257D310BC();
  [v8 setShowsLargeContentViewer_];
  [v8 setScalesLargeContentImage_];
  v9 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v8 addInteraction_];

  return v8;
}

void sub_257D30CF8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = [v2 whiteColor];
  [v1 setTintColor_];

  [v1 setClipsToBounds_];
  v5 = sub_257D14B7C();
  v6 = sub_257D302D4();
  [v6 setImage:v5 forState:0];

  v7 = sub_257D30364();
  [v7 setAlpha_];

  v8 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  [v1 addSubview_];
  [v1 addSubview_];

  sub_257D30E78();
}

void sub_257D30E78()
{
  v1 = v0;
  v2 = sub_257D302D4();
  [v2 setIsAccessibilityElement_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton);
  sub_257D14A40();
  v5 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v6 = *(v1 + v3);
  Control.rawValue.getter();
  v7 = v1;
  v8 = v6;
  v9 = sub_257ECF4C0();

  [v8 setAccessibilityIdentifier_];

  v10 = *(v7 + v3);
  v11 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  if (*(v7 + v11))
  {
    v12 = v10;
    v13 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();
    v12 = v10;
    v16 = [v15 bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v13 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v13)
    {
      sub_257ECF500();
      v13 = sub_257ECF4C0();
    }
  }

  [v12 setAccessibilityHint_];

  sub_257D2FCE4();
}

uint64_t sub_257D310BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  MEMORY[0x28223BE20](v0 - 8);
  v59 = v41 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8750);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = v41 - v5;
  v6 = sub_257ECF130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECFD10();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F8);
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8500);
  v54 = *(v18 - 8);
  v55 = v18;
  MEMORY[0x28223BE20](v18);
  v44 = v41 - v19;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257ECFD00();
  v20 = sub_257BD2C2C(0, &qword_281543F10);
  v21 = *MEMORY[0x277D851C0];
  v45 = *(v7 + 104);
  v45(v9, v21, v6);
  v41[1] = v20;
  v22 = sub_257ECFD90();
  v23 = v6;
  v42 = v6;
  v24 = v22;
  v43 = *(v7 + 8);
  v43(v9, v23);
  v64 = v24;
  v48 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
  v47 = sub_257BE416C();
  v25 = v46;
  sub_257ECDE00();

  (*(v52 + 8))(v12, v53);
  (*(v49 + 8))(v14, v25);
  sub_257BD2D4C(&unk_2815442C8, &qword_27F8F84F8);
  v26 = v44;
  v27 = v51;
  sub_257ECDDD0();
  (*(v50 + 8))(v17, v27);
  swift_allocObject();
  v28 = v63;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_2815443A0, &qword_27F8F8500);
  v29 = v55;
  v30 = sub_257ECDE50();

  (*(v54 + 8))(v26, v29);
  *(v28 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_glowSubscription) = v30;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v31 = v56;
  sub_257ECDD30();
  swift_endAccess();
  v32 = v42;
  v45(v9, *MEMORY[0x277D851B8], v42);
  v33 = sub_257ECFD90();
  v43(v9, v32);
  v64 = v33;
  v34 = sub_257ECFCF0();
  v35 = v59;
  (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v36 = v60;
  v37 = v58;
  sub_257ECDDF0();
  sub_257D328F8(v35);

  (*(v57 + 8))(v31, v37);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544240, &qword_27F8F8750);
  v38 = v62;
  v39 = sub_257ECDE50();

  (*(v61 + 8))(v36, v38);
  *(v28 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_freezeFrameReviewSubscription) = v39;
}

void sub_257D31A10(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing);
    v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing] = v1;
    sub_257D3064C(v4);
  }
}

uint64_t sub_257D31A80()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v15 = sub_257ECFD30();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    aBlock[4] = sub_257D32968;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_30;
    v11 = _Block_copy(aBlock);
    v14 = v9;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    v13 = v4;
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v12 = v15;
    MEMORY[0x259C72880](0, v7, v3, v11);
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v13);
  }

  return result;
}

void sub_257D31D78()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

void sub_257D31E88()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ScrubberButton();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = v5(v3, v4);
  v11 = v5(v3, v4);
  v12 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  v13 = 0.0;
  v14 = v7;
  v15 = v6;
  if (*(v1 + v12) == 1)
  {
    v13 = (v9 - v10) * 0.5;
    [v1 bounds];
    v15 = v16;
    v14 = v11;
  }

  v17 = sub_257D302D4();
  [v17 setFrame_];

  v18 = sub_257D30364();
  [v18 setFrame_];
}

id sub_257D32134()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v1 = sub_257D53928();
  v2 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_control;
  v3 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_control], v1);

  if (v3)
  {
    v8 = v0[v2];
    sub_257D56A50(&v8);
    v4 = type metadata accessor for ScrubberButton();
    v7.receiver = v0;
    v5 = &v7;
  }

  else
  {
    v4 = type metadata accessor for ScrubberButton();
    v9 = v0;
    v5 = &v9;
  }

  v5->super_class = v4;
  return [(objc_super *)v5 removeFromSuperview];
}

id sub_257D32288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubberButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D3235C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257D323A0(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_257D303DC();
}

uint64_t (*sub_257D323F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_257D32458;
}

uint64_t sub_257D32458(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_257D303DC();
  }

  return result;
}

void sub_257D3249C(char a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed) = a1;
  sub_257D2FCE4();
  v3 = sub_257D30364();
  [v3 setEnabled_];

  sub_257D31D78();
}

uint64_t sub_257D3251C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257D2FCE4();

  return swift_unknownObjectRelease();
}

uint64_t sub_257D3256C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257D302D4();
  return v0;
}

id sub_257D32658(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_257ECF4C0();

  return v3;
}

uint64_t sub_257D326C4(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  sub_257BD2C2C(0, &qword_281543DA0);
  if (sub_257ECFF50())
  {
    v6 = sub_257D302D4();
    [a1 locationInView_];
    v8 = v7;
    v10 = v9;

    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton) bounds];
    v13.x = v8;
    v13.y = v10;
    v11 = CGRectContainsPoint(v14, v13);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t sub_257D327FC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D3287C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D328F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257D329B0()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_freezeFrameReviewSubscription) = 0;
  sub_257ED0410();
  __break(1u);
}

id sub_257D32A80@<X0>(void *a1@<X8>)
{
  if (qword_27F8F46C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F8F9FA8;
  *a1 = qword_27F8F9FA8;

  return v2;
}

id sub_257D32B30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClaritySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D32BA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8508);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_257D32CB0();
  sub_257ECE1B0();
  sub_257D32D04();
  sub_257ECE040();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_257D32CB0()
{
  result = qword_27F8F8510;
  if (!qword_27F8F8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8510);
  }

  return result;
}

unint64_t sub_257D32D04()
{
  result = qword_27F8F8518;
  if (!qword_27F8F8518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8518);
  }

  return result;
}

uint64_t sub_257D32D68(float a1)
{
  v2 = sub_257ECF120();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECFD20();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_257ECF190();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277CE58B8];
  v12 = 1.0;
  if (a1 <= 0.0)
  {
    v13 = fminf(v11, 1.0);
    v12 = 0.0;
  }

  else
  {
    v13 = fminf(v11, 1.0);
    if (a1 <= 1.0)
    {
      v12 = a1;
    }
  }

  v14 = (v13 * v12) + 0.0;
  v23[1] = sub_257BD52CC();
  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v24);
  v15 = sub_257ECFD80();
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v27;
  *(v16 + 24) = v14;
  aBlock[4] = sub_257D34848;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_31;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  sub_257ECF150();
  v31 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  v20 = v28;
  v21 = v30;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v10, v20, v18);
  _Block_release(v18);

  (*(v29 + 8))(v20, v21);
  (*(v25 + 8))(v10, v26);
}

void sub_257D33238()
{
  [v0 videoZoomFactor];
  sub_257D15BB4();
  sub_257D15BB4();
  v1 = [v0 activeFormat];
  [v1 videoMaxZoomFactor];

  sub_257D15BB4();
}

void sub_257D3330C(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  sub_257D15BB4();
  v5 = v4;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257D15BB4();
  v8 = v7;
  v9 = [Strong activeFormat];
  [v9 videoMaxZoomFactor];
  v11 = v10;

  if (v11 < v8)
  {
    v8 = v11;
  }

  sub_257D15BB4();
  v13 = (v3 - v5) / (v8 - v12);
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  *a2 = v13;
}

void sub_257D333F0(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  sub_257D15BB4();
  if (v3 > v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257D15BB4();
  v8 = v7;
  v9 = [Strong activeFormat];
  [v9 videoMaxZoomFactor];
  v11 = v10;

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= v5)
  {
    v12 = v5;
  }

  *a2 = v12;
}

id sub_257D334B0(char a1, double a2)
{
  v3 = v2;
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  LOBYTE(v34[0]) = 0;
  sub_257D15BB4();
  if (v10 < a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  LOBYTE(v34[0]) = 0;
  sub_257D15BB4();
  v13 = v12;
  v14 = [v2 activeFormat];
  [v14 videoMaxZoomFactor];
  v16 = v15;

  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v34[0] = 0;
  if ([v3 lockForConfiguration_])
  {
    v19 = v34[0];
    if (a1)
    {
      LODWORD(v20) = 1120403456;
      [v3 rampToVideoZoomFactor:v18 withRate:v20];
    }

    else
    {
      [v3 setVideoZoomFactor_];
    }
  }

  else
  {
    v21 = v34[0];
    v22 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v23 = v22;
    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = v6;
      v27 = v26;
      v28 = swift_slowAlloc();
      v34[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = sub_257ED0720();
      v31 = sub_257BF1FC8(v29, v30, v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_257BAC000, v24, v25, "Device zoom error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259C74820](v28, -1, -1);
      MEMORY[0x259C74820](v27, -1, -1);

      (*(v7 + 8))(v9, v33);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return [v3 unlockForConfiguration];
}

id sub_257D337D8(char a1, double a2)
{
  v4 = 1.0;
  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  if (a2 > 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  sub_257D15BB4();
  v7 = v6;
  v8 = [v2 activeFormat];
  [v8 videoMaxZoomFactor];
  v10 = v9;

  if (v10 < v7)
  {
    v7 = v10;
  }

  sub_257D15BB4();
  v12 = v5 * (v7 - v11);
  sub_257D15BB4();
  v14 = v12 + v13;

  return sub_257D334B0(a1, v14);
}

id sub_257D338B4(float a1)
{
  v2 = v1;
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  result = [v1 isTorchAvailable];
  if (result)
  {
    v9 = 0.0;
    if (a1 > 0.0)
    {
      v9 = a1;
    }

    v10 = *MEMORY[0x277CE58B8];
    v11 = fminf(*MEMORY[0x277CE58B8], 1.0);
    if (v11 >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v32[0] = 0;
    v13 = [v1 lockForConfiguration_];
    v14 = v32[0];
    if (v13)
    {
      if (v12 < 0.02 && [v2 isTorchModeSupported_])
      {
        [v2 setTorchMode_];
        return [v2 unlockForConfiguration];
      }

      if (v12 > 0.95 && [v2 isTorchModeSupported_])
      {
        v32[0] = 0;
        LODWORD(v26) = v10;
        v27 = [v2 setTorchModeOnWithLevel:v32 error:v26];
      }

      else
      {
        if (![v2 isTorchModeSupported_])
        {
          return [v2 unlockForConfiguration];
        }

        v32[0] = 0;
        *&v28 = v12;
        v27 = [v2 setTorchModeOnWithLevel:v32 error:v28];
      }

      if (v27)
      {
        v29 = v32[0];
        return [v2 unlockForConfiguration];
      }

      v30 = v32[0];
      v16 = sub_257ECC9F0();
    }

    else
    {
      v15 = v14;
      v16 = sub_257ECC9F0();
    }

    swift_willThrow();
    sub_257ECD430();
    v17 = v16;
    v18 = sub_257ECDA20();
    v19 = sub_257ECFBD0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_257ED0720();
      v25 = sub_257BF1FC8(v23, v24, v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_257BAC000, v18, v19, "Device flashlight error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C74820](v22, -1, -1);
      MEMORY[0x259C74820](v21, -1, -1);

      (*(v31 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return [v2 unlockForConfiguration];
  }

  return result;
}

id sub_257D33C60(char a1)
{
  v2 = v1;
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v22[0] = 0;
  if ([v2 lockForConfiguration_])
  {
    v8 = v22[0];
    [v2 setSubjectAreaChangeMonitoringEnabled_];
  }

  else
  {
    v9 = v22[0];
    v10 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v11 = v10;
    v12 = sub_257ECDA20();
    v13 = sub_257ECFBD0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = v4;
      v15 = v14;
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_257ED0720();
      v19 = sub_257BF1FC8(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_257BAC000, v12, v13, "Device subject area change monitoring error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x259C74820](v16, -1, -1);
      MEMORY[0x259C74820](v15, -1, -1);

      (*(v5 + 8))(v7, v21);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return [v2 unlockForConfiguration];
}

id sub_257D33EF0(double a1, double a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v23[0] = 0;
  if ([v2 lockForConfiguration_])
  {
    v9 = v23[0];
    if ([v2 isFocusPointOfInterestSupported] && objc_msgSend(v2, sel_isFocusModeSupported_, 2))
    {
      [v2 setFocusPointOfInterest_];
      [v2 setFocusMode_];
    }

    if ([v2 isExposurePointOfInterestSupported] && objc_msgSend(v2, sel_isExposureModeSupported_, 2))
    {
      [v2 setExposurePointOfInterest_];
      [v2 setExposureMode_];
    }
  }

  else
  {
    v10 = v23[0];
    v11 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v12 = v11;
    v13 = sub_257ECDA20();
    v14 = sub_257ECFBD0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = v5;
      v16 = v15;
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_257ED0720();
      v20 = sub_257BF1FC8(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_257BAC000, v13, v14, "Device set focus point error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C74820](v17, -1, -1);
      MEMORY[0x259C74820](v16, -1, -1);

      (*(v6 + 8))(v8, v22);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return [v2 unlockForConfiguration];
}

id sub_257D34228()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v19[0] = 0;
  if ([v0 lockForConfiguration_])
  {
    v5 = v19[0];
    if ([v0 isFocusPointOfInterestSupported] && objc_msgSend(v0, sel_isFocusModeSupported_, 0))
    {
      [v0 setFocusMode_];
    }

    if ([v0 isExposurePointOfInterestSupported] && objc_msgSend(v0, sel_isExposureModeSupported_, 0))
    {
      [v0 setExposureMode_];
    }
  }

  else
  {
    v6 = v19[0];
    v7 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v8 = v7;
    v9 = sub_257ECDA20();
    v10 = sub_257ECFBD0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = v1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_257ED0720();
      v16 = sub_257BF1FC8(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_257BAC000, v9, v10, "Device lock focus error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x259C74820](v13, -1, -1);
      MEMORY[0x259C74820](v12, -1, -1);

      (*(v2 + 8))(v4, v18);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }
  }

  return [v0 unlockForConfiguration];
}

id sub_257D34520()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v19[0] = 0;
  if ([v0 lockForConfiguration_])
  {
    v5 = v19[0];
    if ([v0 isFocusPointOfInterestSupported] && objc_msgSend(v0, sel_isFocusModeSupported_, 2))
    {
      [v0 setFocusPointOfInterest_];
      [v0 setFocusMode_];
    }

    if ([v0 isExposurePointOfInterestSupported] && objc_msgSend(v0, sel_isExposureModeSupported_, 2))
    {
      [v0 setExposurePointOfInterest_];
      [v0 setExposureMode_];
    }
  }

  else
  {
    v6 = v19[0];
    v7 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v8 = v7;
    v9 = sub_257ECDA20();
    v10 = sub_257ECFBD0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = v1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_257ED0720();
      v16 = sub_257BF1FC8(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_257BAC000, v9, v10, "Device reset focus error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x259C74820](v13, -1, -1);
      MEMORY[0x259C74820](v12, -1, -1);

      (*(v2 + 8))(v4, v18);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }
  }

  return [v0 unlockForConfiguration];
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

id sub_257D3488C(unsigned __int8 a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = a1;
  v10 = MEMORY[0x277CE5878];
  if (v9 <= 3)
  {
    v12 = MEMORY[0x277CE5840];
    v13 = MEMORY[0x277CE5860];
    v14 = MEMORY[0x277CE5870];
    if (v9 != 3)
    {
      v14 = MEMORY[0x277CE5878];
    }

    if (v9 != 2)
    {
      v13 = v14;
    }

    v15 = v9 == 1;
    goto LABEL_15;
  }

  if (v9 > 5)
  {
    v12 = MEMORY[0x277CE5888];
    v13 = MEMORY[0x277CE5890];
    if (v9 != 7)
    {
      v13 = MEMORY[0x277CE5878];
    }

    v15 = v9 == 6;
LABEL_15:
    if (v15)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }

    goto LABEL_18;
  }

  if (v9 == 4)
  {
    v22 = objc_opt_self();
    v23 = *MEMORY[0x277CE5EA8];
    v24 = [v22 defaultDeviceWithDeviceType:*v10 mediaType:*MEMORY[0x277CE5EA8] position:2];
    if (v24)
    {
      return v24;
    }

    v24 = [v22 defaultDeviceWithDeviceType:*MEMORY[0x277CE5840] mediaType:v23 position:2];
    if (v24)
    {
      return v24;
    }

    sub_257ECD430();
    v28 = sub_257ECDA20();
    v29 = sub_257ECFBE0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      _os_log_impl(&dword_257BAC000, v28, v29, "Could not find the desired camera (back?: %{BOOL}d)", v30, 8u);
      MEMORY[0x259C74820](v30, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v15 = v9 == 5;
  v11 = MEMORY[0x277CE5880];
  if (!v15)
  {
    v11 = MEMORY[0x277CE5878];
  }

LABEL_18:
  v16 = *v11;
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277CE5EA8];
  v19 = [v17 defaultDeviceWithDeviceType:v16 mediaType:*MEMORY[0x277CE5EA8] position:1];

  if (v19)
  {
LABEL_21:

    return v19;
  }

  v20 = [v17 defaultDeviceWithDeviceType:v16 mediaType:v18 position:0];
  if (v20)
  {
    v19 = v20;
    goto LABEL_21;
  }

  sub_257ECD430();
  v25 = sub_257ECDA20();
  v26 = sub_257ECFBE0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = 1;
    _os_log_impl(&dword_257BAC000, v25, v26, "Could not find the desired camera (back?: %{BOOL}d)", v27, 8u);
    MEMORY[0x259C74820](v27, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  return 0;
}

uint64_t sub_257D34C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_257ECDA30();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_257ECCB70();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = sub_257ECD6C0();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8520);
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8528);
  v4[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8530);
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = sub_257ECF900();
  v4[35] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  v4[36] = v9;
  v4[37] = v10;

  return MEMORY[0x2822009F8](sub_257D34F2C, v9, v10);
}

uint64_t sub_257D34F2C()
{
  sub_257ECD6F0();
  sub_257ECD6E0();
  sub_257ECD6D0();

  *(v0 + 304) = swift_getOpaqueTypeConformance2();
  sub_257ECF9B0();
  *(v0 + 336) = *MEMORY[0x277CD4868];
  v1 = sub_257ECF8F0();
  *(v0 + 312) = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_257D350C8;
  v3 = *(v0 + 224);
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

uint64_t sub_257D350C8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (!v0)
  {

    v4 = *(v2 + 288);
    v5 = *(v2 + 296);

    return MEMORY[0x2822009F8](sub_257D35230, v4, v5);
  }

  return result;
}

uint64_t sub_257D35230()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 336);
  v7 = *(v0 + 216);
  (*(v3 + 32))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  if (v8 == v6)
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    (*(v9 + 96))(*(v0 + 216), v11);
    (*(v14 + 32))(v12, v10, v13);
    sub_257C77614();
    v15 = [objc_opt_self() defaultManager];
    v16 = sub_257ECCAE0();
    *(v0 + 48) = 0;
    v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v0 + 48];

    v18 = *(v0 + 48);
    if (!v17)
    {
      v114 = *(v0 + 192);
      v115 = *(v0 + 136);
      v116 = *(v0 + 144);
      v117 = v18;
      v118 = sub_257ECC9F0();

      swift_willThrow();
      (*(v116 + 8))(v114, v115);
      goto LABEL_58;
    }

    v19 = sub_257ECF810();
    v20 = v18;

    v129 = *(v19 + 16);
    if (v129)
    {
      v21 = 0;
      v22 = *(*(v0 + 144) + 80);
      v126 = (v22 + 32) & ~v22;
      v127 = v19 + v126;
      v132 = *(v0 + 328);
      v137 = v15;
      v128 = v19;
      while (v21 < *(v19 + 16))
      {
        v25 = *(v0 + 184);
        v26 = *(v0 + 136);
        v27 = *(v0 + 144);
        v130 = v21;
        v136 = v27[9];
        v135 = v27[2];
        v135(v25, v127 + v136 * v21, v26);
        v28 = sub_257ECCAE0();
        v138 = v27[1];
        v138(v25, v26);
        *(v0 + 56) = 0;
        v29 = [v15 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:0 error:v0 + 56];

        v30 = *(v0 + 56);
        if (v29)
        {
          v31 = sub_257ECF810();
          v32 = v30;

          v33 = v31;
          v34 = *(v31 + 16);
          if (v34)
          {
            v35 = v33 + v126;
            do
            {
              v135(*(v0 + 176), v35, *(v0 + 136));
              v41 = sub_257ECCAD0();
              v43 = v42;
              *(v0 + 16) = sub_257ECCA90();
              *(v0 + 24) = v44;
              *(v0 + 32) = 0x69616E626D756874;
              *(v0 + 40) = 0xEA0000000000736CLL;
              sub_257BDAB08();
              v45 = sub_257ED0150();

              v139 = v35;
              v140 = v34;
              if (v45)
              {
                if (qword_27F8F46D8 != -1)
                {
                  swift_once();
                }

                v46 = *(v0 + 160);
                v47 = *(v0 + 168);
                v48 = *(v0 + 136);
                v49 = qword_27F9132E8;
                v50 = *(qword_27F9132E8 + 48);
                v51 = *(qword_27F9132E8 + 56);
                __swift_project_boxed_opaque_existential_1((qword_27F9132E8 + 24), v50);
                (*(v51 + 48))(v50, v51);
                sub_257ECCB00();
                v138(v46, v48);
                sub_257ECCA90();
                v138(v47, v48);
                v52 = sub_257ECF4C0();

                v15 = v137;
                LOBYTE(v50) = [v137 fileExistsAtPath_];

                if (v50)
                {

                  v53 = sub_257ECCAE0();
                  *(v0 + 96) = 0;
                  v54 = [v137 removeItemAtURL:v53 error:v0 + 96];

                  v55 = *(v0 + 96);
                  if (!v54)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v71 = *(v0 + 160);
                  v70 = *(v0 + 168);
                  v72 = *(v0 + 136);
                  v133 = sub_257ECCAE0();
                  v74 = v49[6];
                  v73 = v49[7];
                  __swift_project_boxed_opaque_existential_1(v49 + 3, v74);
                  v75 = v74;
                  v15 = v137;
                  (*(v73 + 48))(v75, v73);
                  sub_257ECCB00();

                  v138(v71, v72);
                  v76 = sub_257ECCAE0();
                  v138(v70, v72);
                  *(v0 + 88) = 0;
                  LODWORD(v70) = [v137 moveItemAtURL:v133 toURL:v76 error:v0 + 88];

                  v55 = *(v0 + 88);
                  if (!v70)
                  {
LABEL_39:
                    v88 = v55;
                    v89 = sub_257ECC9F0();

                    swift_willThrow();
LABEL_46:
                    sub_257ECD340();
                    v97 = v89;
                    v98 = sub_257ECDA20();
                    v99 = sub_257ECFBE0();

                    if (os_log_type_enabled(v98, v99))
                    {
                      v100 = swift_slowAlloc();
                      v101 = swift_slowAlloc();
                      *v100 = 138412290;
                      v102 = v89;
                      v103 = _swift_stdlib_bridgeErrorToNSError();
                      *(v100 + 4) = v103;
                      *v101 = v103;
                      _os_log_impl(&dword_257BAC000, v98, v99, "Could not move image from extension to main app: %@", v100, 0xCu);
                      sub_257C11B14(v101);
                      MEMORY[0x259C74820](v101, -1, -1);
                      MEMORY[0x259C74820](v100, -1, -1);
                    }

                    v36 = *(v0 + 176);
                    v38 = *(v0 + 128);
                    v37 = *(v0 + 136);
                    v40 = *(v0 + 112);
                    v39 = *(v0 + 120);

                    (*(v39 + 8))(v38, v40);
                    v138(v36, v37);
                    v132 = 0;
                    goto LABEL_16;
                  }
                }

                v56 = *(v0 + 176);
                v57 = *(v0 + 136);
                v58 = v55;
                v138(v56, v57);
              }

              else
              {
                if (qword_27F8F46D8 != -1)
                {
                  swift_once();
                }

                v59 = *(v0 + 168);
                v60 = *(v0 + 160);
                v61 = *(v0 + 136);
                v62 = qword_27F9132E8;
                v63 = *(qword_27F9132E8 + 48);
                v64 = *(qword_27F9132E8 + 56);
                __swift_project_boxed_opaque_existential_1((qword_27F9132E8 + 24), v63);
                (*(v64 + 40))(v63, v64);
                sub_257ECCB00();
                v65 = v41;
                v138(v60, v61);
                sub_257ECCA90();
                v138(v59, v61);
                v66 = sub_257ECF4C0();

                v15 = v137;
                LOBYTE(v59) = [v137 fileExistsAtPath_];

                v67 = sub_257ECCAE0();
                v131 = v62;
                if (v59)
                {
                  *(v0 + 80) = 0;
                  v68 = [v137 removeItemAtURL:v67 error:v0 + 80];

                  v69 = *(v0 + 80);
                  if (!v68)
                  {
                    goto LABEL_42;
                  }
                }

                else
                {
                  v78 = *(v0 + 160);
                  v77 = *(v0 + 168);
                  v134 = *(v0 + 136);
                  v79 = v62[6];
                  v80 = v62[7];
                  __swift_project_boxed_opaque_existential_1(v62 + 3, v79);
                  v81 = *(v80 + 40);
                  v82 = v67;
                  v83 = v80;
                  v15 = v137;
                  v81(v79, v83);
                  v65 = v41;
                  sub_257ECCB00();
                  v138(v78, v134);
                  v84 = sub_257ECCAE0();
                  v138(v77, v134);
                  *(v0 + 64) = 0;
                  LOBYTE(v77) = [v137 moveItemAtURL:v82 toURL:v84 error:v0 + 64];

                  v69 = *(v0 + 64);
                  if ((v77 & 1) == 0)
                  {
LABEL_42:
                    v90 = v69;

                    v89 = sub_257ECC9F0();

                    swift_willThrow();
                    goto LABEL_46;
                  }
                }

                v85 = qword_281544FE0;
                v86 = v69;
                if (v85 != -1)
                {
                  swift_once();
                }

                if ((v65 != *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName) || v43 != *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName + 8)) && (sub_257ED0640() & 1) == 0)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_257ECDD60();

                  if (*(v0 + 342))
                  {
                    v87 = sub_257ED0640();

                    if ((v87 & 1) == 0)
                    {
                      v138(*(v0 + 176), *(v0 + 136));

                      goto LABEL_16;
                    }
                  }

                  else
                  {
                  }
                }

                v91 = *(v0 + 168);
                v92 = *(v0 + 136);
                v93 = v131[6];
                v94 = v131[7];
                __swift_project_boxed_opaque_existential_1(v131 + 3, v93);
                (*(v94 + 40))(v93, v94);
                sub_257ECCB00();

                v138(v91, v92);
                v95 = sub_257ECCB80();
                if (v132)
                {
                  v89 = v132;
                  v138(*(v0 + 152), *(v0 + 136));
                  v15 = v137;
                  goto LABEL_46;
                }

                v104 = *(v0 + 176);
                v105 = *(v0 + 136);
                v106 = *(v0 + 104);
                v107 = v95;
                v108 = v96;
                v138(*(v0 + 152), v105);
                v109 = objc_allocWithZone(MEMORY[0x277D755B8]);
                v110 = sub_257ECCB90();
                v111 = [v109 initWithData_];

                sub_257BF2550(v107, v108);
                swift_getKeyPath();
                swift_getKeyPath();
                *(v0 + 72) = v111;
                v112 = v106;
                sub_257ECDD70();
                v138(v104, v105);
                v132 = 0;
                v15 = v137;
              }

LABEL_16:
              v35 = v139 + v136;
              v34 = v140 - 1;
            }

            while (v140 != 1);
          }
        }

        else
        {
          v23 = v30;
          v24 = sub_257ECC9F0();

          swift_willThrow();
          v132 = 0;
        }

        v21 = v130 + 1;
        v19 = v128;
        if (v130 + 1 == v129)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_51:

      if (qword_281544FE0 == -1)
      {
        goto LABEL_52;
      }
    }

    swift_once();
LABEL_52:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 340))
    {
      v113 = sub_257ED0640();

      if ((v113 & 1) == 0)
      {
        (*(*(v0 + 144) + 8))(*(v0 + 192), *(v0 + 136));

        goto LABEL_58;
      }
    }

    else
    {
    }

    v119 = *(v0 + 192);
    v120 = *(v0 + 136);
    v121 = *(v0 + 144);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 341) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();

    (*(v121 + 8))(v119, v120);
    goto LABEL_58;
  }

  (*(v9 + 8))(*(v0 + 216), v11);
LABEL_58:
  v122 = sub_257ECF8F0();
  *(v0 + 312) = v122;
  swift_getAssociatedConformanceWitness();
  v123 = swift_task_alloc();
  *(v0 + 320) = v123;
  *v123 = v0;
  v123[1] = sub_257D350C8;
  v124 = *(v0 + 224);
  v125 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v124, v122, v125);
}

void sub_257D362F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
    v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    if (*(v3 + v4))
    {
      [v2 setSession_];
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
  v6 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7 && (v8 = [v7 configuration]) != 0)
  {
    v9 = v8;
    v10 = [v8 videoFormat];

    v11 = [v10 device];
  }

  else
  {
    v11 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v11;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v11)
  {
    sub_257D334B0(0, 1.0);
  }

  v12 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    sub_257ECDD60();

    v14 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice];
    *&v13[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice] = v38;
  }

  sub_257BD2C2C(0, &qword_281543E70);
  v15 = sub_257ECF7F0();
  [v1 setAccessibilityCustomActions_];

  sub_257DFE5CC();
  v16 = sub_257DFF59C();
  [v16 setAccessibilityTraits_];

  v17 = [v1 view];
  if (!v17)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = v17;
  v19 = sub_257E003E8();
  [v18 bringSubviewToFront_];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v38)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v38 == 1)
  {
    v21 = (v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy);
    swift_beginAccess();
    v36 = *v21;
    v22 = qword_2815447E0;

    if (v22 != -1)
    {
      v23 = swift_once();
    }

    MEMORY[0x28223BE20](v23);
    sub_257ECFD50();

    if (v37 == 1)
    {
LABEL_16:
      sub_257DD2FD0();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v36 == 1)
  {
    sub_257C1CB90();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v36 == 1)
  {
    sub_257C1344C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v36 == 1)
  {
    sub_257E94324();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v36 == 1)
  {
    sub_257CED804();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v36 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257DE3FF0();
  }

  if (AXDeviceSupportsBackTap())
  {
    v24 = [objc_opt_self() defaultCenter];

    v25 = sub_257ECF4C0();

    [v24 postNotificationName:v25 object:0];
  }

  v26 = [objc_opt_self() defaultCenter];
  [v26 addObserver:v1 selector:sel_stopSpeechForVoiceOverFocusChange name:*MEMORY[0x277D76468] object:0];

  v27 = [v1 view];
  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = v27;
  v29 = sub_257DFF054();
  v30 = [v29 view];

  if (!v30)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v28 bringSubviewToFront_];

  v31 = sub_257DFF3FC();
  v32 = sub_257D83290();

  [v32 setUserInteractionEnabled_];
  v33 = sub_257E00504();
  if (!v33)
  {
    return;
  }

  v34 = [v1 view];
  if (!v34)
  {
    goto LABEL_43;
  }

  if (!*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel])
  {
LABEL_44:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 bringSubviewToFront_];
}

void sub_257D36B68()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v80 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECCC80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v87 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock && aBlock != 1)
  {

    goto LABEL_8;
  }

  v10 = sub_257ED0640();

  if (v10)
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  v11 = sub_257DFF3FC();
  v12 = sub_257D83290();

  [v12 setUserInteractionEnabled_];
  sub_257D37B08();
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v13)
  {
    v78 = v8;
    v79 = v7;
    v84 = v5;
    v85 = v4;
    v76 = v2;
    v14 = v13;
    sub_257D3810C();
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = objc_opt_self();
    v16 = ObjCClassFromMetadata;
    v17 = [v77 bundleForClass_];
    v18 = sub_257ECF4C0();
    v19 = sub_257ECF4C0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    v21 = v20;
    if (!v20)
    {
      sub_257ECF500();
      v21 = sub_257ECF4C0();
    }

    aBlock = sub_257ECF500();
    v92 = v22;
    v82 = v22;
    sub_257BDAB08();
    v23 = sub_257ED0100();
    v25 = v24;
    v26 = sub_257E003E8();
    v27 = sub_257E00504();
    sub_257DFD370(v23, v25, v26, v27);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    v28 = objc_opt_self();
    v29 = swift_allocObject();
    v83 = v14;
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = 1;
    v95 = sub_257D3D96C;
    v96 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_257D231C0;
    v94 = &block_descriptor_73;
    v31 = _Block_copy(&aBlock);

    [v28 animateWithDuration:v31 animations:0 completion:0.2];
    _Block_release(v31);
    v32 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
    if (v32)
    {
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 1;
      v95 = sub_257D3D96C;
      v96 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v92 = 1107296256;
      v93 = sub_257D231C0;
      v94 = &block_descriptor_82;
      v35 = _Block_copy(&aBlock);
      v36 = v32;

      [v28 animateWithDuration:v35 animations:0 completion:0.2];
      _Block_release(v35);
    }

    v37 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
    if (v37)
    {
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = 1;
      v95 = sub_257D3DB10;
      v96 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v92 = 1107296256;
      v93 = sub_257D231C0;
      v94 = &block_descriptor_90;
      v40 = _Block_copy(&aBlock);
      v41 = v37;

      [v28 animateWithDuration:v40 animations:0 completion:0.2];
      _Block_release(v40);
    }

    v42 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel];
    v43 = sub_257ECF4C0();
    [v42 setText_];

    sub_257E1FA44();
    v44 = sub_257DFF59C();
    [v44 setAccessibilityTraits_];

    [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] setIsAccessibilityElement_];
    v45 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionModeHasLaunched;
    swift_beginAccess();
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v88[0] = *v45;
    v88[1] = v46;
    v89 = v47;
    v48 = qword_2815447E0;

    if (v48 != -1)
    {
      v49 = swift_once();
    }

    MEMORY[0x28223BE20](v49);
    *(&v76 - 2) = v88;
    sub_257ECFD50();

    if (v90)
    {
      sub_257DB1748();
      v50 = swift_allocObject();
      *(v50 + 16) = v1;
      v51 = v1;
      sub_257E10374(0, sub_257D3D978, v50);
    }

    else
    {
      v52 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController];
      sub_257D83838();

      v53 = [v77 bundleForClass_];
      v54 = sub_257ECF4C0();
      v55 = sub_257ECF4C0();
      v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

      if (!v56)
      {
        sub_257ECF500();
        v56 = sub_257ECF4C0();
      }

      v57 = sub_257ECF4C0();
      v58 = [objc_opt_self() systemImageNamed_];

      v59 = [objc_allocWithZone(type metadata accessor for OnboardingViewController()) initWithTitle:v56 detailText:0 icon:v58];
      *&v59[OBJC_IVAR____TtC16MagnifierSupport24OnboardingViewController_delegate + 8] = &off_286912020;
      swift_unknownObjectWeakAssign();
      v60 = [v1 navigationController];
      v61 = v78;
      if (v60)
      {
        v62 = v60;
        [v60 presentViewController:v59 animated:1 completion:0];
      }

      swift_beginAccess();
      v90 = 1;
      v63 = v86;
      v64 = sub_257ECF110();
      MEMORY[0x28223BE20](v64);
      *(&v76 - 2) = &v90;
      *(&v76 - 1) = v45;
      sub_257ECFD40();
      (*(v61 + 8))(v63, v79);
      swift_endAccess();
    }

    v65 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService];
    v66 = v87;
    sub_257ECCC70();
    v67 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
    swift_beginAccess();
    (*(v84 + 40))(v65 + v67, v66, v85);
    swift_endAccess();
    v68 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction];
    if (v68)
    {
      v69 = v68;
      v70 = [v1 view];
      if (!v70)
      {
        __break(1u);
        return;
      }

      v71 = v70;

      [v71 removeInteraction_];
    }

    else
    {
    }

    v72 = v83;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v88[0] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((v88[0] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if ((v88[0] & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if ((v88[0] & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            if ((v88[0] & 1) == 0)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              if ((v88[0] & 1) == 0)
              {
                sub_257ECD440();
                v73 = sub_257ECDA20();
                v74 = sub_257ECFBD0();
                if (os_log_type_enabled(v73, v74))
                {
                  v75 = swift_slowAlloc();
                  *v75 = 67109120;
                  *(v75 + 4) = 1;
                  _os_log_impl(&dword_257BAC000, v73, v74, "Setting imageCaption to %{BOOL}d", v75, 8u);
                  MEMORY[0x259C74820](v75, -1, -1);
                }

                (*(v80 + 8))(v81, v76);
                swift_getKeyPath();
                swift_getKeyPath();
                LOBYTE(v88[0]) = 1;
                sub_257ECC3F0();
                sub_257ECDD70();
              }
            }
          }
        }
      }
    }
  }
}

void sub_257D37B08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [objc_allocWithZone(MEMORY[0x277CE53E0]) initWithFrame_];
  v6 = *&v0[v2];
  *&v0[v2] = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [v7 scene];

    v9 = [v8 background];
    [v9 setContents_];
  }

  v10 = *&v1[v2];
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 clearColor];
    [v12 setBackgroundColor_];

    v14 = *&v1[v2];
    if (v14)
    {
      v15 = [v14 layer];
      [v15 setOpaque_];

      v16 = *&v1[v2];
      if (v16)
      {
        v17 = [v16 layer];
        v18 = [objc_opt_self() clearColor];
        v19 = [v18 CGColor];

        [v17 setBackgroundColor_];
        v20 = *&v1[v2];
        if (v20)
        {
          v21 = v20;
          v22 = sub_257ECF4C0();
          [v21 setAccessibilityIdentifier_];

          v23 = *&v1[v2];
          if (v23)
          {
            [v23 setHidden_];
            v24 = *&v1[v2];
            if (v24)
            {
              [v24 setOpaque_];
              v25 = *&v1[v2];
              if (v25)
              {
                [v25 setTranslatesAutoresizingMaskIntoConstraints_];
                v26 = *&v1[v2];
                if (v26)
                {
                  [v26 setAutoresizingMask_];
                  v27 = *&v1[v2];
                  if (v27)
                  {
                    [v27 setClipsToBounds_];
                    v28 = *&v1[v2];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = sub_257D27C8C();
                      v31 = v29;
                      v32 = [v31 layer];
                      v33 = sub_257D18590(v30);

                      sub_257EB7394(v33);

                      v34 = sub_257ECF7F0();

                      [v32 setFilters_];

                      v35 = [v1 view];
                      if (!v35)
                      {
                        goto LABEL_25;
                      }

                      v36 = v35;
                      [v35 addSubview_];
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

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel];
    v40 = objc_allocWithZone(type metadata accessor for DetectionModeView());
    v41 = sub_257E7E2C0(v38, v39);
    *&v41[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate + 8] = &protocol witness table for MAGARService;
    swift_unknownObjectWeakAssign();
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    aBlock[4] = sub_257D3DB10;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_114_0;
    v45 = _Block_copy(aBlock);
    v46 = v41;

    [v42 animateWithDuration:v45 animations:0 completion:0.2];
    _Block_release(v45);
    v47 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView] = v41;

    v48 = *&v1[v2];
    if (v48)
    {
      v49 = objc_allocWithZone(type metadata accessor for DetectedObjectView());
      v50 = v48;
      v51 = sub_257DE673C(v50);
      v52 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
      *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView] = v51;

      v53 = objc_allocWithZone(type metadata accessor for DetectedPersonView());
      v54 = sub_257DE673C(v50);

      v55 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
      *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView] = v54;
    }

    v56 = [v1 view];
    if (v56)
    {
      v57 = v56;
      [v56 bringSubviewToFront_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_257D3810C()
{
  v1 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v16 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  v2 = sub_257DFF3FC();
  v3 = sub_257D832B0();

  [v3 setEnabled_];
  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  v6 = sub_257D83D4C();

  [v6 setEnabled_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v15 == 1)
  {
    v7 = *(v1 + v4);
    v8 = sub_257D83D6C();

    [v8 setEnabled_];
  }

  v9 = sub_257DFF620();
  [v9 setEnabled_];

  v10 = *(v1 + v4);
  v11 = sub_257D83D4C();

  [v11 setHidden_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v14 == 1)
  {
    v12 = *(v1 + v4);
    v13 = sub_257D83D6C();

    [v13 setHidden_];
  }
}

void sub_257D383B4()
{
  v1 = v0;
  v159 = sub_257ECF120();
  v2 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v4 = v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v153 - v10;
  v12 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v12)
  {
    v157 = v6;
    v158 = v5;
    v160 = v2;
    v13 = v12;
    v14 = sub_257DFF3FC();
    v15 = sub_257D83290();

    [v15 setUserInteractionEnabled_];
    v16 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine];
    sub_257CC00C4();
    sub_257DFE168();
    sub_257CC1318();
    v164 = 0;
    v163 = 0u;
    aBlock = 0u;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v153[-2] = v16;
    v153[-1] = &aBlock;
    v166 = v16;
    sub_257D3D9C0(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
    v153[0] = 0;

    sub_257BE4084(&aBlock, &qword_27F8F6E68);
    v18 = type metadata accessor for MAGOutputEvent(0);
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    sub_257CC266C(v11);
    v19 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor];
    v20 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
    swift_beginAccess();
    [*(v19 + v20) setUseSoundFeedback_];
    [*(v19 + v20) setUseHapticFeedback_];
    v21 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
    swift_beginAccess();
    [*(v19 + v21) setUseSoundFeedback_];
    [*(v19 + v21) setUseHapticFeedback_];
    v22 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
    swift_beginAccess();
    [*(v19 + v22) setUseHapticFeedback_];
    [*(v19 + v22) setUseSoundFeedback_];
    v23 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
    swift_beginAccess();
    [*(v19 + v23) setUseSoundFeedback_];
    [*(v19 + v23) setUseHapticFeedback_];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v24 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    v155 = v24;
    sub_257ECDD70();
    v25 = CFNotificationCenterGetDarwinNotifyCenter();
    v26 = v13;
    CFNotificationCenterRemoveEveryObserver(v25, v26);

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    v154 = v26;
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    v164 = sub_257D3DB10;
    v165 = v29;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v163 = sub_257D231C0;
    *(&v163 + 1) = &block_descriptor_135;
    v30 = _Block_copy(&aBlock);

    [v27 animateWithDuration:v30 animations:0 completion:0.2];
    _Block_release(v30);
    v31 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
    if (v31)
    {
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      v164 = sub_257D3DB10;
      v165 = v33;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v163 = sub_257D231C0;
      *(&v163 + 1) = &block_descriptor_143;
      v34 = _Block_copy(&aBlock);
      v35 = v31;

      [v27 animateWithDuration:v34 animations:0 completion:0.2];
      _Block_release(v34);
    }

    v36 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
    if (v36)
    {
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      v164 = sub_257D3DB10;
      v165 = v38;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v163 = sub_257D231C0;
      *(&v163 + 1) = &block_descriptor_151;
      v39 = _Block_copy(&aBlock);
      v40 = v36;

      [v27 animateWithDuration:v39 animations:0 completion:0.2];
      _Block_release(v39);
    }

    sub_257C1D94C();
    sub_257BD2C2C(0, &qword_281543F10);
    v41 = sub_257ECFD30();
    v42 = swift_allocObject();
    *(v42 + 16) = v1;
    v164 = sub_257D3DA08;
    v165 = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v163 = sub_257D231C0;
    *(&v163 + 1) = &block_descriptor_157;
    v43 = _Block_copy(&aBlock);
    v44 = v1;

    sub_257ECF150();
    *&aBlock = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    v45 = v159;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v8, v4, v43);
    _Block_release(v43);

    v46 = *(v160 + 8);
    v160 += 8;
    v46(v4, v45);
    (v157)[1](v8, v158);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v157 = objc_opt_self();
    v158 = ObjCClassFromMetadata;
    v48 = [v157 bundleForClass_];
    v49 = sub_257ECF4C0();
    v50 = sub_257ECF4C0();
    v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

    v52 = v51;
    if (!v51)
    {
      sub_257ECF500();
      v52 = sub_257ECF4C0();
    }

    v53 = sub_257ECF500();
    v55 = v54;
    UIAccessibilitySpeakAndDoNotBeInterrupted();

    *&aBlock = v53;
    v153[1] = v55;
    *(&aBlock + 1) = v55;
    v156 = sub_257BDAB08();
    v56 = sub_257ED0100();
    v58 = v57;
    v59 = sub_257E003E8();
    v60 = sub_257E00504();
    sub_257DFD370(v56, v58, v59, v60);

    sub_257DFEA6C();
    v61 = sub_257DFF59C();
    [v61 setAccessibilityTraits_];

    [*&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] setIsAccessibilityElement_];
    v62 = *&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController];
    sub_257D839A4();

    sub_257D1B7F8();
    if ((v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn] & 1) != 0 || v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn] == 1)
    {
      v63 = v155 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
      swift_beginAccess();
      v161 = 0;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v64 = sub_257ECF110();
      MEMORY[0x28223BE20](v64);
      v153[-2] = &v161;
      v153[-1] = v63;
      sub_257ECFD40();
      v46(v4, v159);
      swift_endAccess();
    }

    sub_257D39A54();
    v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning] = 0;
    v65 = sub_257DFF054();
    v66 = [v65 view];
    if (v66)
    {
      v67 = v66;
      [v66 alpha];
      v69 = v68;

      if (v69 != 0.0)
      {
        goto LABEL_22;
      }

      v70 = [v44 view];
      if (v70)
      {
        v71 = v70;
        [v70 sendSubviewToBack_];

        v72 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel;
        if (!*&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel])
        {

          return;
        }

        v73 = [v44 view];
        if (!v73)
        {
          goto LABEL_62;
        }

        if (!*&v44[v72])
        {
LABEL_63:
          __break(1u);
          return;
        }

        v74 = v73;
        [v73 sendSubviewToBack_];

LABEL_22:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (aBlock == 1)
        {
          sub_257DE44DC();
        }

        if (AXDeviceSupportsBackTap())
        {
          v75 = [objc_opt_self() defaultCenter];

          v76 = sub_257ECF4C0();

          [v75 postNotificationName:v76 object:0];
        }

        v77 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel;
        v78 = [*&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel] text];
        if (v78)
        {
          v79 = v78;
          v80 = sub_257ECF500();
          v82 = v81;
        }

        else
        {
          v80 = 0;
          v82 = 0;
        }

        v83 = [v157 bundleForClass_];
        v84 = sub_257ECF4C0();
        v85 = sub_257ECF4C0();
        v86 = [v83 localizedStringForKey:v84 value:0 table:v85];

        v87 = sub_257ECF500();
        v89 = v88;

        *&aBlock = v87;
        *(&aBlock + 1) = v89;
        v90 = sub_257ED0100();
        v92 = v91;

        if (v82)
        {
          if (v80 == v90 && v82 == v92)
          {
LABEL_42:

LABEL_43:
            v109 = *&v44[v77];
            v110 = *&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel];
            v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
            v111 = objc_opt_self();
            v112 = swift_allocObject();
            *(v112 + 16) = v109;
            *(v112 + 24) = v110;
            v164 = sub_257D3DB14;
            v165 = v112;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v163 = sub_257D231C0;
            *(&v163 + 1) = &block_descriptor_170;
            v113 = _Block_copy(&aBlock);
            v114 = v109;
            sub_257CC9350(v110);
            v115 = v110;

            v116 = [v111 runningPropertyAnimatorWithDuration:0x20000 delay:v113 options:0 animations:0.2 completion:1.5];
            _Block_release(v113);

LABEL_46:
            v118 = [objc_opt_self() defaultCenter];
            [v118 removeObserver:v44 name:*MEMORY[0x277D76468] object:0];

            v119 = *&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction];
            if (!v119)
            {

LABEL_50:
              v123 = v154;
              v124 = [v157 bundleForClass_];
              v125 = sub_257ECF4C0();
              v126 = sub_257ECF4C0();
              v127 = [v124 localizedStringForKey:v125 value:0 table:v126];

              v128 = sub_257ECF500();
              v130 = v129;

              *&aBlock = v128;
              *(&aBlock + 1) = v130;
              v131 = sub_257ED0100();
              v133 = v132;

              v134 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
              v135 = *&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController];
              v136 = sub_257EB1B80();

              v137 = [v136 text];
              if (v137)
              {
                v138 = sub_257ECF500();
                v140 = v139;

                if (v138 == v131 && v140 == v133)
                {

LABEL_56:
                  v142 = *&v44[v134];
                  v143 = sub_257EB1B80();

                  v144 = *&v44[v134];
                  v145 = sub_257EB1BE0();

                  v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
                  v146 = objc_opt_self();
                  v147 = swift_allocObject();
                  *(v147 + 16) = v143;
                  *(v147 + 24) = v145;
                  v164 = sub_257BDAD38;
                  v165 = v147;
                  *&aBlock = MEMORY[0x277D85DD0];
                  *(&aBlock + 1) = 1107296256;
                  *&v163 = sub_257D231C0;
                  *(&v163 + 1) = &block_descriptor_163;
                  v148 = _Block_copy(&aBlock);
                  v149 = v143;
                  v150 = v145;

                  v151 = [v146 runningPropertyAnimatorWithDuration:0x20000 delay:v148 options:0 animations:0.2 completion:0.0];
                  _Block_release(v148);

                  goto LABEL_57;
                }

                v141 = sub_257ED0640();

                if (v141)
                {
                  goto LABEL_56;
                }
              }

              else
              {
              }

LABEL_57:
              v152 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
              [*&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel] setHidden_];
              [*&v44[v152] removeFromSuperview];

              return;
            }

            v120 = v119;
            v121 = [v44 view];
            if (v121)
            {
              v122 = v121;

              [v122 addInteraction_];

              goto LABEL_50;
            }

            goto LABEL_61;
          }

          v93 = sub_257ED0640();

          if (v93)
          {
            goto LABEL_43;
          }
        }

        else
        {
        }

        v94 = [*&v44[v77] text];
        if (v94)
        {
          v95 = v94;
          v96 = sub_257ECF500();
          v98 = v97;
        }

        else
        {
          v96 = 0;
          v98 = 0;
        }

        v99 = [v157 bundleForClass_];
        v100 = sub_257ECF4C0();
        v101 = sub_257ECF4C0();
        v102 = [v99 localizedStringForKey:v100 value:0 table:v101];

        v103 = sub_257ECF500();
        v105 = v104;

        *&aBlock = v103;
        *(&aBlock + 1) = v105;
        v106 = sub_257ED0100();
        v108 = v107;

        if (!v98)
        {

          goto LABEL_46;
        }

        if (v96 != v106 || v98 != v108)
        {
          v117 = sub_257ED0640();

          if ((v117 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }
}

void sub_257D39A54()
{
  v1 = v0;
  v2 = sub_257DFF3FC();
  v3 = sub_257D832B0();

  [v3 setEnabled_];
  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  v6 = sub_257D83D4C();

  [v6 setEnabled_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v15 == 1)
  {
    v7 = *(v1 + v4);
    v8 = sub_257D83D6C();

    [v8 setEnabled_];
  }

  v9 = sub_257DFF620();
  [v9 setEnabled_];

  v10 = *(v1 + v4);
  v11 = sub_257D83D4C();

  [v11 setHidden_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v14 == 1)
  {
    v12 = *(v1 + v4);
    v13 = sub_257D83D6C();

    [v13 setHidden_];
  }
}

uint64_t sub_257D39CC8()
{
  v0 = sub_257ECF190();
  v52 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v51 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_257ECF1B0();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v42 - v5;
  v6 = sub_257ECF120();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_257ECCC80();
  v53 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v17 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v45 = v6;
    v43 = v0;
    v19 = v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
    swift_beginAccess();
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    aBlock = *v19;
    v57 = v20;
    LOBYTE(v58) = v21;
    v22 = qword_2815447E0;

    if (v22 != -1)
    {
      v23 = swift_once();
    }

    v24 = qword_2815447E8;
    MEMORY[0x28223BE20](v23);
    *(&v42 - 2) = &aBlock;
    v44 = v24;
    sub_257ECFD50();

    v25 = v45;
    if (v62 == 1)
    {
      sub_257ECCC70();
      v26 = sub_257D3DA40(v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintTimeStartDate, v10);
      MEMORY[0x28223BE20](v26);
      *(&v42 - 2) = v10;
      sub_257ECFD50();
      sub_257BE4084(v10, &qword_27F8F7F48);
      sub_257ECCBC0();
      v28 = v27;
      v29 = *(v53 + 8);
      v29(v14, v11);
      v29(v16, v11);
      if (v28 <= 604800.0)
      {
        sub_257BD2C2C(0, &qword_281543F10);
        v32 = sub_257ECFD30();
        v33 = v46;
        sub_257ECF1A0();
        v34 = v48;
        sub_257ECF220();
        v35 = v50;
        v53 = *(v49 + 8);
        (v53)(v33, v50);
        v36 = swift_allocObject();
        v37 = v47;
        *(v36 + 16) = v47;
        v60 = sub_257D3DACC;
        v61 = v36;
        aBlock = MEMORY[0x277D85DD0];
        v57 = 1107296256;
        v58 = sub_257D231C0;
        v59 = &block_descriptor_196;
        v38 = _Block_copy(&aBlock);
        v39 = v37;

        v40 = v51;
        sub_257ECF150();
        aBlock = MEMORY[0x277D84F90];
        sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD56C0();
        v41 = v54;
        sub_257ED0180();
        MEMORY[0x259C727E0](v34, v40, v41, v38);
        _Block_release(v38);

        (*(v55 + 8))(v41, v25);
        (*(v52 + 8))(v40, v43);
        return (v53)(v34, v35);
      }

      else
      {
        swift_beginAccess();
        v62 = 0;
        v30 = v54;
        v31 = sub_257ECF110();
        MEMORY[0x28223BE20](v31);
        *(&v42 - 2) = &v62;
        *(&v42 - 1) = v19;
        sub_257ECFD40();
        (*(v55 + 8))(v30, v25);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_257D3A4A8(uint64_t a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_257ECF500();
  v15 = v14;

  aBlock[6] = v13;
  aBlock[7] = v15;
  sub_257BDAB08();
  v16 = sub_257ED0100();
  v18 = v17;

  v19 = sub_257DFF054();
  v20 = sub_257EB1B80();

  v21 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v22 = sub_257EB1BE0();

  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 1;
  v23 = sub_257ECF4C0();
  [v20 setText_];

  [v20 sizeToFit];
  [v20 setNeedsLayout];
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  v25[2] = v20;
  v25[3] = v22;
  v25[4] = v16;
  v25[5] = v18;
  aBlock[4] = sub_257BDAD2C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_203;
  v26 = _Block_copy(aBlock);
  v27 = v20;
  v28 = v22;

  _Block_release(v26);
  *v4 = 14;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v4, &v7[v5[5]]);
  v7[v5[6]] = 0;
  v7[v5[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v29 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
  *&v7[v5[8]] = v29;
  sub_257CBBC80(v7);
  return sub_257C15F24(v7, type metadata accessor for MAGOutputEvent);
}

void sub_257D3A8DC()
{
  type metadata accessor for DetectionModeSettingsViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_delegate + 8] = &off_28690D6E0;
  swift_unknownObjectWeakAssign();
  v5 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];
  [v5 setModalPresentationStyle_];
  v2 = [v5 navigationBar];
  v3 = [objc_opt_self() systemYellowColor];
  [v2 setTintColor_];

  v4 = [v5 presentationController];
  if (v4)
  {
    [v4 setDelegate_];
  }

  [v0 presentViewController:v5 animated:1 completion:0];
  sub_257D3AA58();
}

uint64_t sub_257D3AA58()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  [*(v2 + v3) pause];
  sub_257CC00C4();
  sub_257CC1318();
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  [*(v4 + v5) setUseSoundFeedback_];
  [*(v4 + v5) setUseHapticFeedback_];
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v4 + v6) setUseSoundFeedback_];
  [*(v4 + v6) setUseHapticFeedback_];
  v7 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  [*(v4 + v7) setUseSoundFeedback_];
  [*(v4 + v7) setUseHapticFeedback_];
  *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v9 == 1)
  {
    return sub_257C41F04();
  }

  return result;
}

uint64_t sub_257D3AC80()
{
  v1 = v0;
  v86 = sub_257ECF1B0();
  v85 = *(v86 - 8);
  v2 = MEMORY[0x28223BE20](v86);
  v83 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v84 = &v78 - v4;
  v79 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v79);
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v81);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_257ECF120();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_257ECF190();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v88 = v9;
  if (aBlock == 1)
  {
    v10 = (v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
    swift_beginAccess();
    v11 = v10[1];
    v12 = v10[2];
    aBlock = *v10;
    v97 = v11;
    v98 = v12;
    v13 = qword_2815447E0;

    if (v13 != -1)
    {
      v14 = swift_once();
    }

    MEMORY[0x28223BE20](v14);
    *(&v78 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
    sub_257ECFD50();

    v15 = v95;
    v16 = sub_257C592D0(2u, v95);
    v17 = sub_257C592D0(3u, v15);

    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v16;
    *(v18 + 25) = v17;
    v100 = sub_257D3D940;
    v101 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_257D231C0;
    v99 = &block_descriptor_58;
    v19 = _Block_copy(&aBlock);
    v20 = v1;
    v21 = v87;
    sub_257ECF150();
    v95 = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    v22 = v89;
    v23 = v93;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v21, v22, v19);
    _Block_release(v19);
    (*(v92 + 8))(v22, v23);
    (*(v90 + 8))(v21, v91);

    v9 = v88;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v24 = (v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    swift_beginAccess();
    v25 = v24[1];
    v26 = v24[2];
    aBlock = *v24;
    v97 = v25;
    v98 = v26;
    v27 = qword_2815447E0;

    if (v27 != -1)
    {
      v28 = swift_once();
    }

    MEMORY[0x28223BE20](v28);
    *(&v78 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
    sub_257ECFD50();

    v29 = v95;
    v30 = sub_257C592D0(2u, v95);
    v31 = sub_257C592D0(3u, v29);

    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    *(v32 + 24) = v30;
    *(v32 + 25) = v31;
    v100 = sub_257D3D914;
    v101 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_257D231C0;
    v99 = &block_descriptor_52;
    v33 = _Block_copy(&aBlock);
    v34 = v1;
    v35 = v87;
    sub_257ECF150();
    v95 = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    v36 = v89;
    v37 = v93;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v35, v36, v33);
    _Block_release(v33);
    (*(v92 + 8))(v36, v37);
    (*(v90 + 8))(v35, v91);

    v9 = v88;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v38 = (v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
    swift_beginAccess();
    v39 = v38[1];
    v40 = v38[2];
    aBlock = *v38;
    v97 = v39;
    v98 = v40;
    v41 = qword_2815447E0;

    if (v41 != -1)
    {
      v42 = swift_once();
    }

    v43 = qword_2815447E8;
    MEMORY[0x28223BE20](v42);
    *(&v78 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
    v78 = v43;
    sub_257ECFD50();

    v44 = v95;
    LOBYTE(v43) = sub_257C592D0(2u, v95);
    v45 = sub_257C592D0(3u, v44);

    v46 = swift_allocObject();
    *(v46 + 16) = v1;
    *(v46 + 24) = v43 & 1;
    *(v46 + 25) = v45;
    v100 = sub_257D3D8E8;
    v101 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_257D231C0;
    v99 = &block_descriptor_45_0;
    v47 = _Block_copy(&aBlock);
    v48 = v1;
    v49 = v87;
    sub_257ECF150();
    v95 = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    v50 = v89;
    v51 = v93;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v49, v50, v47);
    _Block_release(v47);
    (*(v92 + 8))(v50, v51);
    (*(v90 + 8))(v49, v91);

    if (v48[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] == 1)
    {
      v9 = v88;
      v52 = v88 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      v53 = swift_beginAccess();
      v54 = *(v52 + 8);
      v55 = *(v52 + 16);
      aBlock = *v52;
      v97 = v54;
      LOBYTE(v98) = v55;
      MEMORY[0x28223BE20](v53);
      *(&v78 - 2) = &aBlock;

      sub_257ECFD50();

      if (v95 == 1 && (v48[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] & 1) == 0)
      {
        if (v48[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] == 1)
        {
          v56 = v82;
          *v82 = 4;
          swift_storeEnumTagMultiPayload();
          v57 = v80;
          sub_257ECCCE0();
          v58 = v81;
          sub_257C15EC0(v56, v57 + *(v81 + 20));
          *(v57 + v58[6]) = 0;
          *(v57 + v58[7]) = 0;
          sub_257ECC3F0();
          sub_257C15F24(v56, type metadata accessor for MAGOutputEvent.EventType);
          *(v57 + v58[8]) = v9;
          sub_257CBBC80(v57);
          sub_257C15F24(v57, type metadata accessor for MAGOutputEvent);
        }

        sub_257BD7F48();
      }
    }

    else
    {
      v9 = v88;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1 && *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) == 1)
  {
    v59 = v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
    swift_beginAccess();
    v60 = *(v59 + 8);
    v61 = *(v59 + 16);
    aBlock = *v59;
    v97 = v60;
    LOBYTE(v98) = v61;
    v62 = qword_2815447E0;

    if (v62 != -1)
    {
      v63 = swift_once();
    }

    MEMORY[0x28223BE20](v63);
    *(&v78 - 2) = &aBlock;
    sub_257ECFD50();

    if (v94 == 1 && (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) == 1)
      {
        v64 = v82;
        *v82 = 4;
        swift_storeEnumTagMultiPayload();
        v65 = v80;
        sub_257ECCCE0();
        v66 = v81;
        sub_257C15EC0(v64, v65 + *(v81 + 20));
        *(v65 + v66[6]) = 0;
        *(v65 + v66[7]) = 0;
        sub_257ECC3F0();
        sub_257C15F24(v64, type metadata accessor for MAGOutputEvent.EventType);
        *(v65 + v66[8]) = v9;
        sub_257CBBC80(v65);
        sub_257C15F24(v65, type metadata accessor for MAGOutputEvent);
      }

      sub_257BD7F48();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    sub_257C1344C();
  }

  sub_257D1A130();
  sub_257D22594(2);
  sub_257BD2C2C(0, &qword_281543F10);
  v67 = sub_257ECFD30();
  v68 = v83;
  sub_257ECF1A0();
  v69 = v84;
  sub_257ECF220();
  v85 = *(v85 + 8);
  v70 = v86;
  (v85)(v68, v86);
  v71 = swift_allocObject();
  *(v71 + 16) = v1;
  v100 = sub_257D3D8AC;
  v101 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_257D231C0;
  v99 = &block_descriptor_32;
  v72 = _Block_copy(&aBlock);
  v73 = v1;

  v74 = v87;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  v75 = v89;
  v76 = v93;
  sub_257ED0180();
  MEMORY[0x259C727E0](v69, v74, v75, v72);
  _Block_release(v72);

  (*(v92 + 8))(v75, v76);
  (*(v90 + 8))(v74, v91);
  (v85)(v69, v70);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;
    sub_257ECC3F0();
    return sub_257ECDD70();
  }

  return result;
}

id sub_257D3C014(uint64_t a1, char a2, char a3, uint64_t *a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v7 = *a4;
  swift_beginAccess();
  [*(v6 + v7) setUseSoundFeedback_];
  return [*(v6 + v7) setUseHapticFeedback_];
}

void sub_257D3C144()
{
  v1 = sub_257E003E8();
  v2 = 0.0;
  [v1 setAlpha_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v7 = [v6 navigationBar];

  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v47.origin.x = v9;
  v47.origin.y = v11;
  v47.size.width = v13;
  v47.size.height = v15;
  Height = CGRectGetHeight(v47);
  v17 = [objc_opt_self() sharedApplication];
  v18 = [objc_opt_self() mainScreen];
  v19 = [v17 _keyWindowForScreen_];

  if (v19)
  {
    [v19 safeAreaInsets];
    v2 = v20;
  }

  v21 = [*&v0[v3] topAnchor];
  v22 = [v0 view];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor:v24 constant:Height + v2 + 20.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_257EDBE40;
  v27 = [*&v0[v3] leadingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  if (qword_281544A68 != -1)
  {
    swift_once();
  }

  v31 = *&qword_2815482F8;
  v32 = [v27 constraintGreaterThanOrEqualToAnchor:v30 constant:*&qword_2815482F8];

  *(v26 + 32) = v32;
  v33 = [*&v0[v3] trailingAnchor];
  v34 = [v0 view];
  if (!v34)
  {
    goto LABEL_16;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v33 constraintLessThanOrEqualToAnchor:v36 constant:-v31];
  *(v26 + 40) = v37;
  v38 = [*&v0[v3] centerXAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = objc_opt_self();
  v42 = [v40 centerXAnchor];

  v43 = [v38 constraintEqualToAnchor_];
  *(v26 + 48) = v43;
  *(v26 + 56) = v25;
  sub_257BD2C2C(0, &qword_281543EF0);
  v44 = v25;
  v45 = sub_257ECF7F0();

  [v41 activateConstraints_];
}

void sub_257D3C600()
{
  v1 = v0;
  v2 = sub_257ECFDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257E00504();
  if (!v6)
  {
    return;
  }

  v40 = v6;
  [v40 setAlpha_];
  [v40 setHidden_];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  [v7 addSubview_];

  v9 = [v40 centerXAnchor];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 centerXAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  v14 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX;
  v15 = *&v40[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  *&v40[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = v13;

  v16 = [v40 centerYAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 centerYAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  v21 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY;
  v22 = *&v40[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY];
  *&v40[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_257EDED10;
  v24 = v40;
  v25 = *&v40[v14];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v23 + 32) = v25;
  v26 = *&v24[v21];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v23 + 40) = v26;
  v27 = v26;
  v28 = v25;
  v29 = [v40 widthAnchor];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 heightAnchor];

  v34 = [v29 constraintLessThanOrEqualToAnchor:v33 multiplier:0.8];
  *(v23 + 48) = v34;
  sub_257BD2C2C(0, &qword_281543EF0);
  v35 = sub_257ECF7F0();

  [v32 activateConstraints_];

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v36 = [objc_opt_self() defaultCenter];
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257D3D9C0(&qword_281543EB0, MEMORY[0x277CC9DB0]);
    v37 = sub_257ECDE50();

    (*(v3 + 8))(v5, v2);
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_dRotationSubscription] = v37;
  }

  else
  {
    v38 = v40;
  }
}

void sub_257D3CB30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 orientation];

    sub_257D3CBC8(v3);
  }
}

id sub_257D3CBC8(id result)
{
  v2 = result;
  if (qword_27F8F4670 != -1)
  {
    result = swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v3 = sub_257E00504();
    if (v3)
    {
      v4 = v3;
      [v3 rotateIfPossibleTo_];
    }

    sub_257D3CCC0();
    v5 = v2 - 5;
    v6 = sub_257E003E8();
    [v6 setHidden_];

    result = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel);
    if (result)
    {

      return [result setHidden_];
    }
  }

  return result;
}

void sub_257D3CCC0()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 orientation];

  if (v2 == 4)
  {
    v3 = sub_257E00504();
    if (!v3)
    {
      return;
    }

    v13 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
    if (!v13)
    {
      goto LABEL_16;
    }

    v20 = v3;
    v5 = v13;
    v14 = [v0 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;

      [v20 bounds];
      v19 = v18 * 0.5 - v17 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      v12 = v19 + *&qword_2815482F8;
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = sub_257E00504();
  if (!v3)
  {
    return;
  }

  v4 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  if (v4)
  {
    v20 = v3;
    v5 = v4;
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;

      [v20 bounds];
      v11 = v9 * 0.5 - v10 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      v12 = v11 - *&qword_2815482F8;
LABEL_15:
      [v5 setConstant_];

      v3 = v20;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
}

uint64_t sub_257D3CF38@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D3CFB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D3D02C()
{
  v51 = sub_257ECF120();
  v0 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = objc_opt_self();
  v3 = [v2 shared];
  v4 = [v3 downloadManager];

  v5 = sub_257ECF4C0();
  v6 = [v4 downloadAssetsWithName_];

  v7 = sub_257ECF810();
  v8 = *(v7 + 16);

  if (v8 || (v17 = [v2 shared], v18 = objc_msgSend(v17, sel_downloadManager), v17, v19 = sub_257ECF4C0(), v20 = objc_msgSend(v18, sel_totalSizeOccupiedWithName_, v19), v18, v19, v20 < 1))
  {
    v9 = v0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v10 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 1;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v10 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 1;
    v21 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorSignsToggledOnAfterSuccessfulDownload;
    swift_beginAccess();
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v55[0] = *v21;
    v55[1] = v22;
    v56 = v23;
    v24 = qword_2815447E0;

    if (v24 != -1)
    {
      v25 = swift_once();
    }

    MEMORY[0x28223BE20](v25);
    *(&v47 - 2) = v55;
    sub_257ECFD50();

    if (v52[0])
    {
      v9 = v0;
    }

    else
    {
      swift_beginAccess();
      LOBYTE(v52[0]) = 1;
      v41 = v50;
      v42 = sub_257ECF110();
      MEMORY[0x28223BE20](v42);
      *(&v47 - 2) = v52;
      *(&v47 - 1) = v21;
      sub_257ECFD40();
      v48 = *(v0 + 8);
      v43 = v51;
      v48(v41, v51);
      swift_endAccess();
      v44 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
      swift_beginAccess();
      LOBYTE(v52[0]) = 1;
      v45 = sub_257ECF110();
      v49 = v0;
      v46 = v43;
      MEMORY[0x28223BE20](v45);
      *(&v47 - 2) = v52;
      *(&v47 - 1) = v44;
      sub_257ECFD40();
      v9 = v49;
      v48(v41, v46);
      swift_endAccess();
    }
  }

  v11 = [v2 shared];
  v12 = [v11 downloadManager];

  v13 = sub_257ECF4C0();
  v14 = [v12 downloadAssetsWithName_];

  v15 = sub_257ECF810();
  v16 = *(v15 + 16);

  if (v16 || (v26 = [v2 shared], v27 = objc_msgSend(v26, sel_downloadManager), v26, v28 = sub_257ECF4C0(), v29 = objc_msgSend(v27, sel_totalSizeOccupiedWithName_, v28), v27, v28, v29 < 1))
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    *(v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 1;
  }

  else
  {
    v49 = v9;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    *(v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 1;
    v30 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorAttributesToggledOnAfterSuccessfulDownload;
    swift_beginAccess();
    v31 = *(v30 + 8);
    v32 = *(v30 + 16);
    v52[0] = *v30;
    v52[1] = v31;
    v53 = v32;
    v33 = qword_2815447E0;

    if (v33 != -1)
    {
      v34 = swift_once();
    }

    MEMORY[0x28223BE20](v34);
    *(&v47 - 2) = v52;
    sub_257ECFD50();

    if ((v54 & 1) == 0)
    {
      swift_beginAccess();
      v54 = 1;
      v35 = v50;
      v36 = sub_257ECF110();
      MEMORY[0x28223BE20](v36);
      *(&v47 - 2) = &v54;
      *(&v47 - 1) = v30;
      sub_257ECFD40();
      v37 = *(v49 + 8);
      v38 = v51;
      v37(v35, v51);
      swift_endAccess();
      v39 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
      swift_beginAccess();
      v54 = 1;
      v40 = sub_257ECF110();
      MEMORY[0x28223BE20](v40);
      *(&v47 - 2) = &v54;
      *(&v47 - 1) = v39;
      sub_257ECFD40();
      v37(v35, v38);
      swift_endAccess();
    }
  }
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D3D9C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257D3DA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_257D3DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v42[-v12];
  v14 = &v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  v15 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  *v14 = a2;
  v14[1] = a3;
  sub_257BBD7E4(a2);
  sub_257BBD88C(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a1, v16);
  (*(v17 + 56))(v13, 0, 1, v16);
  v18 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  swift_beginAccess();
  sub_257D3EA58(v13, &v4[v18]);
  swift_endAccess();
  sub_257D3E9E8(&v4[v18], v11);
  result = (*(v17 + 48))(v11, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
    [v20 setUnitOptions_];
    [v20 setUnitStyle_];
    sub_257BD2C2C(0, &qword_27F8F58F0);
    sub_257ECFE20();

    (*(v17 + 8))(v11, v16);
    v21 = [v4 textLabel];
    if (v21)
    {
      v22 = v21;
      v23 = sub_257ECF4C0();
      [v22 setText_];
    }

    v24 = [v4 textLabel];
    if (v24)
    {
      v25 = v24;
      [v24 setIsAccessibilityElement_];
    }

    v26 = sub_257ECF4C0();

    [v4 setAccessibilityValue_];

    v27 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
    v28 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper];
    sub_257ECC750();
    [v28 setValue_];

    [*&v4[v27] setMinimumValue_];
    v29 = *&v4[v27];
    sub_257BD2C2C(0, &qword_281543DA0);
    v30 = v29;
    v31 = sub_257ECC730();
    v32 = [objc_opt_self() meters];
    LOBYTE(v29) = sub_257ECFF50();

    v33 = 12.0;
    if (v29)
    {
      v33 = 4.0;
    }

    [v30 setMaximumValue_];

    v34 = qword_281544FE0;
    v35 = *&v4[v27];
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    swift_beginAccess();
    v37 = *(v36 + 8);
    v38 = *(v36 + 16);
    v43[0] = *v36;
    v43[1] = v37;
    v44 = v38;
    v39 = qword_2815447E0;

    if (v39 != -1)
    {
      v40 = swift_once();
    }

    MEMORY[0x28223BE20](v40);
    *&v42[-16] = v43;
    sub_257ECFD50();

    v41 = 0.5;
    if (v45)
    {
      v41 = 1.0;
    }

    [v35 setStepValue_];

    [*&v4[v27] addTarget:v4 action:sel_distanceStepperValueChanged_ forControlEvents:4096];
    [v4 setAccessoryView_];
    [v4 setAccessoryType_];
    [v4 setAccessibilityTraits_];
    return [v4 setIsAccessibilityElement_];
  }

  return result;
}

void sub_257D3E22C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
  v6 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper];
  [v6 value];
  v7 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  swift_beginAccess();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(&v1[v7], 1, v8) == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_257ECC760();
  swift_endAccess();
  sub_257D3E9E8(&v1[v7], v4);
  if (v10(v4, 1, v8) == 1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v11 setUnitOptions_];
  [v11 setUnitStyle_];
  sub_257BD2C2C(0, &qword_27F8F58F0);
  sub_257ECFE20();

  (*(v9 + 8))(v4, v8);
  v12 = [v1 textLabel];
  if (v12)
  {
    v13 = v12;
    v14 = sub_257ECF4C0();
    [v13 setText_];
  }

  v15 = sub_257ECF4C0();

  [v1 setAccessibilityValue_];

  v16 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  if (v16)
  {
    v17 = *&v1[v5];
    sub_257ECC3F0();
    v16([v17 value]);
    sub_257BBD88C(v16);
  }
}

id sub_257D3E56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v7 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (a3)
  {
    v10 = sub_257ECF4C0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for UIStepperLengthCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v10);

  return v11;
}

id sub_257D3E6D4(void *a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v4 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  v7 = type metadata accessor for UIStepperLengthCell();
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_257D3E7F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIStepperLengthCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UIStepperLengthCell()
{
  result = qword_27F8F8550;
  if (!qword_27F8F8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257D3E8DC()
{
  sub_257D3E984();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257D3E984()
{
  if (!qword_27F8F8560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4DA0);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F8560);
    }
  }
}

uint64_t sub_257D3E9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D3EA58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D3EAC8()
{
  sub_257D3E22C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  if (v16)
  {
    v3 = swift_beginAccess();
    MEMORY[0x28223BE20](v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    if (*(v14 + 16))
    {
      v4 = sub_257C03F6C(v15, v16);
      v6 = v5;

      if (v6)
      {
        v7 = *(v14 + 56) + 296 * v4;
        v8 = *(v7 + 80);
        v9 = *(v7 + 96);

        v10 = swift_beginAccess();
        MEMORY[0x28223BE20](v10);

        sub_257ECFD50();

        if (v8 != v12 || (v11 = swift_beginAccess(), MEMORY[0x28223BE20](v11), , sub_257ECFD50(), result = , v9 != v13))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          return sub_257ECDD70();
        }

        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_257D3EEF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257D3EF70@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v82 = *MEMORY[0x277D85DE8];
  v71 = sub_257ECD1A0();
  v3 = *(v71 - 8);
  v4 = MEMORY[0x28223BE20](v71);
  v69 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v58 - v6;
  v74 = sub_257ECC7D0();
  v7 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v60 = [v2 length];
  if (v60 < 1)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v73 = (v7 + 8);
    v67 = *MEMORY[0x277D764F8];
    v70 = (v3 + 8);
    v66 = (v3 + 16);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v75 = 0;
      v76 = 0;
      v13 = v61;
      v65 = v10;
      v14 = [v61 attributesAtIndex_effectiveRange_];
      _s3__C3KeyVMa_0(0);
      sub_257D3FC9C();
      v72 = sub_257ECF3D0();

      v15 = [v13 attributedSubstringFromRange_];
      v16 = [v15 string];

      v17 = sub_257ECF500();
      v19 = v18;

      *&v78 = 44;
      *(&v78 + 1) = 0xE100000000000000;
      MEMORY[0x28223BE20](v20);
      *(&v58 - 2) = &v78;

      v64 = v19;
      v21 = sub_257D3F6FC(0x7FFFFFFFFFFFFFFFLL, 1, sub_257CD1420, (&v58 - 4), v17, v19, &v83);
      v62 = v11;
      v22 = *(v21 + 16);
      v63 = v21;
      if (v22)
      {
        v23 = (v21 + 56);
        do
        {
          v24 = *(v23 - 3);
          v25 = *(v23 - 2);
          v27 = *(v23 - 1);
          v26 = *v23;

          *&v78 = MEMORY[0x259C720C0](v24, v25, v27, v26);
          *(&v78 + 1) = v28;
          sub_257ECC7A0();
          sub_257BDAB08();
          v29 = sub_257ED0110();
          v31 = v30;
          (*v73)(v9, v74);

          v32 = HIBYTE(v31) & 0xF;
          if ((v31 & 0x2000000000000000) == 0)
          {
            v32 = v29 & 0xFFFFFFFFFFFFLL;
          }

          if (v32)
          {
            v33 = v72;
            if (*(v72 + 16))
            {
              v34 = v9;
              v35 = v12;
              v36 = sub_257C09E74(v67);
              v38 = v37;

              if ((v38 & 1) == 0)
              {
                __break(1u);
LABEL_28:
                __break(1u);
              }

              sub_257BE41F4(*(v33 + 56) + 32 * v36, v81);
              sub_257BEBE08(v81, &v78);
              swift_dynamicCast();
              v39 = v68;
              sub_257ECD1B0();
              v40 = v71;
              sub_257ECCFA0();

              (*v70)(v39, v40);
              v12 = v35;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v77 = v35;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v12 = sub_257BFDA78(0, v35[2] + 1, 1, v35);
                v77 = v12;
              }

              v9 = v34;
              v43 = v12[2];
              v42 = v12[3];
              if (v43 >= v42 >> 1)
              {
                v12 = sub_257BFDA78((v42 > 1), v43 + 1, 1, v12);
                v77 = v12;
              }

              v44 = v79;
              v45 = v80;
              v46 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
              MEMORY[0x28223BE20](v46);
              v48 = &v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v49 + 16))(v48);
              sub_257C9D038(v43, v48, &v77, v44, v45);
              __swift_destroy_boxed_opaque_existential_0(&v78);
            }

            else
            {

              sub_257ECD1B0();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_257BFDA78(0, v12[2] + 1, 1, v12);
              }

              v51 = v12[2];
              v50 = v12[3];
              if (v51 >= v50 >> 1)
              {
                v12 = sub_257BFDA78((v50 > 1), v51 + 1, 1, v12);
              }

              v52 = v71;
              v79 = v71;
              v80 = MEMORY[0x277D70398];
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
              v54 = v69;
              (*v66)(boxed_opaque_existential_1, v69, v52);
              v12[2] = v51 + 1;
              sub_257BE40E4(&v78, &v12[5 * v51 + 4]);
              (*v70)(v54, v52);
            }
          }

          else
          {
          }

          v23 += 4;
          --v22;
        }

        while (v22);
      }

      v10 = v65 + v76;
      if (__OFADD__(v65, v76))
      {
        goto LABEL_28;
      }

      v11 = v62;
    }

    while (v10 < v60);
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60);
  v56 = v59;
  v59[3] = v55;
  result = sub_257D3FC38();
  v56[4] = result;
  *v56 = v12;
  return result;
}

unint64_t sub_257D3F6FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_257ECF720();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_257BFC9F4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_257BFC9F4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_257ECF700();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_257ECF5F0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_257ECF5F0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_257ECF720();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_257BFC9F4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_257ECF720();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_257BFC9F4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_257BFC9F4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_257ECF5F0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = [objc_opt_self() currentLanguageCode];
  if (!v4)
  {
    sub_257ECF500();
    v4 = sub_257ECF4C0();
  }

  v5 = MEMORY[0x259C734B0](v4);

  if (v5)
  {
    v6 = sub_257ECF500();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_257ECF4C0();
  v10 = MEMORY[0x259C734B0]();

  if (!v10)
  {
    if (!v8)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v11 = sub_257ECF500();
  v13 = v12;

  if (!v8)
  {
LABEL_14:

    return 0;
  }

  if (v11 == v6 && v8 == v13)
  {

    return 1;
  }

  v14 = sub_257ED0640();

  return v14 & 1;
}

unint64_t sub_257D3FC38()
{
  result = qword_27F8F6D68;
  if (!qword_27F8F6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D68);
  }

  return result;
}

unint64_t sub_257D3FC9C()
{
  result = qword_27F8F8300;
  if (!qword_27F8F8300)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8300);
  }

  return result;
}

uint64_t MAGCaptureEvent.description.getter()
{
  sub_257ED02D0();

  v0 = MAGCaptureEvent.CaptureEventType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x2065727574706143;
}

unint64_t MAGCaptureEvent.eventType.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_257BEE3F8(v2, v3);
}

double static MAGCaptureEvent.didStartAVCaptureSession()@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_257EE4D00;
  return result;
}

double static MAGCaptureEvent.willBeginCaptureForResolvedSettings()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_257EE4D10;
  return result;
}

id static MAGCaptureEvent.didFinishProcessingPhoto(success:photo:)@<X0>(char a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1 & 1;
  a3[1] = a2;
  return a2;
}

double static MAGCaptureEvent.didCapturePhotoForResolvedSettings()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000008;
  *a1 = xmmword_257EE4D20;
  return result;
}

uint64_t static MAGCaptureEvent.didOutputSampleBuffer(sampleBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a1 | 0x4000000000000000;
  a2[1] = 0;
  return sub_257ECC3F0();
}

double static MAGCaptureEvent.newApplicationClaimsCaptureSession()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000009;
  *a1 = xmmword_257EE4D30;
  return result;
}

double static MAGCaptureEvent.didRequestToResumeSession()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000010;
  *a1 = xmmword_257EE4D40;
  return result;
}

double static MAGCaptureEvent.sessionControlsDidBecomeActive()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000011;
  *a1 = xmmword_257EE4D50;
  return result;
}

double static MAGCaptureEvent.sessionControlsDidBecomeInactive()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000018;
  *a1 = xmmword_257EE4D60;
  return result;
}

double static MAGCaptureEvent.sessionControlsWillEnterFullscreenAppearance()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000019;
  *a1 = xmmword_257EE4D70;
  return result;
}

double static MAGCaptureEvent.sessionControlsWillExitFullscreenAppearance()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000020;
  *a1 = xmmword_257EE4D80;
  return result;
}

unint64_t MAGCaptureEvent.CaptureEventType.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000022;
    }

    else
    {
      v4 = v0[1];
      if (v1 <= 0x800000000000000FLL)
      {
        if (v1 ^ 0x8000000000000008 | v4)
        {
          v5 = 0xD000000000000025;
        }

        else
        {
          v5 = 0xD00000000000002FLL;
        }

        v6 = 0xD000000000000030;
        if (!(v1 ^ 0x8000000000000000 | v4))
        {
          v6 = 0xD00000000000001CLL;
        }

        if (v1 <= 0x8000000000000007)
        {
          return v6;
        }

        else
        {
          return v5;
        }
      }

      else if (v1 <= 0x8000000000000017)
      {
        if (v1 ^ 0x8000000000000010 | v4)
        {
          return 0xD000000000000027;
        }

        else
        {
          return 0xD00000000000001ELL;
        }
      }

      else if (v1 ^ 0x8000000000000018 | v4)
      {
        if (v1 ^ 0x8000000000000019 | v4)
        {
          return 0xD00000000000002ELL;
        }

        else
        {
          return 0xD00000000000002FLL;
        }
      }

      else
      {
        return 0xD000000000000029;
      }
    }
  }

  else if (v1)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000033;
  }
}

unint64_t get_enum_tag_for_layout_string_16MagnifierSupport15MAGCaptureEventV07CaptureD4TypeO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

uint64_t sub_257D40034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 16))
  {
    return (*a1 + 62);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_257D40090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_257D400F4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    *result = (4 * (a2 - 2)) & 0x3FFFFFFF8 | (a2 - 2) & 1 | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_257D40144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_257D4018C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_257D401F4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8588);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a2;
  *v11 = sub_257ECE500();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8590);
  sub_257D40360(a1, v12, &v11[*(v13 + 44)]);
  sub_257BE401C(v11, v9, &qword_27F8F8588);
  *a3 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8598);
  sub_257BE401C(v9, a3 + *(v14 + 48), &qword_27F8F8588);
  v15 = v12;
  sub_257BE4084(v11, &qword_27F8F8588);
  sub_257BE4084(v9, &qword_27F8F8588);
}

uint64_t sub_257D40360@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v82 = a3;
  v78 = sub_257ECE860();
  v83 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85A0);
  MEMORY[0x28223BE20](v7);
  v9 = v65 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85A8);
  MEMORY[0x28223BE20](v66);
  v11 = v65 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85B0) - 8;
  v12 = MEMORY[0x28223BE20](v77);
  v81 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = v65 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v79 = v65 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v65 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v75 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85B8);
  v73 = sub_257BD2D4C(&qword_27F8F85C0, &qword_27F8F85B8);
  sub_257ECEEA0();
  v72 = objc_opt_self();
  v21 = [v72 systemYellowColor];
  v22 = [v21 CGColor];

  v23 = sub_257ECED20();
  KeyPath = swift_getKeyPath();
  v84 = v23;
  v25 = sub_257ECE090();
  v26 = &v9[*(v7 + 36)];
  *v26 = KeyPath;
  v26[1] = v25;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = ObjCClassFromMetadata;
  v70 = objc_opt_self();
  v28 = [v70 bundleForClass_];
  v29 = sub_257ECF4C0();
  v30 = sub_257ECF4C0();
  v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

  v32 = sub_257ECF500();
  v34 = v33;

  v84 = v32;
  v85 = v34;
  v69 = sub_257D41808();
  v68 = sub_257BDAB08();
  sub_257ECEBF0();

  sub_257BE4084(v9, &qword_27F8F85A0);
  sub_257ECE850();
  v65[2] = sub_257D418EC();
  v65[1] = sub_257D419A8(&qword_27F8F85F8, MEMORY[0x277CDE400]);
  v67 = v19;
  v35 = v78;
  sub_257ECEB60();
  v36 = *(v83 + 8);
  v83 += 8;
  v65[0] = v36;
  v36(v6, v35);
  sub_257BE4084(v11, &qword_27F8F85A8);
  v37 = sub_257ECE930();
  v38 = v77;
  v39 = &v19[*(v77 + 44)];
  *v39 = v37;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  v39[40] = 1;
  v40 = swift_allocObject();
  v41 = v75;
  *(v40 + 16) = v76;
  *(v40 + 24) = v41;
  v42 = v41;
  sub_257ECEEA0();
  v43 = [v72 systemYellowColor];
  v44 = [v43 CGColor];

  v45 = sub_257ECED20();
  v46 = swift_getKeyPath();
  v84 = v45;
  v47 = sub_257ECE090();
  v48 = &v9[*(v7 + 36)];
  *v48 = v46;
  v48[1] = v47;
  v49 = [v70 bundleForClass_];
  v50 = sub_257ECF4C0();
  v51 = sub_257ECF4C0();
  v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

  v53 = sub_257ECF500();
  v55 = v54;

  v84 = v53;
  v85 = v55;
  sub_257ECEBF0();

  sub_257BE4084(v9, &qword_27F8F85A0);
  sub_257ECE850();
  v56 = v79;
  sub_257ECEB60();
  (v65[0])(v6, v35);
  sub_257BE4084(v11, &qword_27F8F85A8);
  v57 = sub_257ECE930();
  v58 = v56 + *(v38 + 44);
  *v58 = v57;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 1;
  v59 = v67;
  v60 = v80;
  sub_257BE401C(v67, v80, &qword_27F8F85B0);
  v61 = v81;
  sub_257BE401C(v56, v81, &qword_27F8F85B0);
  v62 = v82;
  sub_257BE401C(v60, v82, &qword_27F8F85B0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8600);
  sub_257BE401C(v61, v62 + *(v63 + 48), &qword_27F8F85B0);
  sub_257BE4084(v56, &qword_27F8F85B0);
  sub_257BE4084(v59, &qword_27F8F85B0);
  sub_257BE4084(v61, &qword_27F8F85B0);
  return sub_257BE4084(v60, &qword_27F8F85B0);
}

void sub_257D40BFC(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice;
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  if (v3)
  {
    [v3 videoZoomFactor];
    v6 = *(a2 + v2);
    if (v6)
    {
      v7 = v5 + -1.0;
      v8 = v6;
      sub_257D334B0(1, v7);
    }
  }
}

uint64_t sub_257D40CB4@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_257ECEE10();
  v20 = sub_257ECED70();
  KeyPath = swift_getKeyPath();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  sub_257BDAB08();
  v7 = sub_257ECEAF0();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_257ECED70();
  v11 = sub_257ECEAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_257C0300C(v7, v9, v6 & 1);

  *a1 = v21;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v20;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  v15 &= 1u;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257BD1B90(v11, v13, v15);

  sub_257C0300C(v11, v13, v15);
}

void sub_257D40EF4(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice;
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  if (v3)
  {
    [v3 videoZoomFactor];
    v6 = *(a2 + v2);
    if (v6)
    {
      v7 = v5 + 1.0;
      v8 = v6;
      sub_257D334B0(1, v7);
    }
  }
}

__n128 sub_257D40FAC@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECE5B0();
  v15 = 1;
  a1(v11);
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v11[0];
  result = v11[1];
  v10 = v15;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 40) = result;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

uint64_t sub_257D41030@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_257ECEE10();
  v20 = sub_257ECED70();
  KeyPath = swift_getKeyPath();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  sub_257BDAB08();
  v7 = sub_257ECEAF0();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_257ECED70();
  v11 = sub_257ECEAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_257C0300C(v7, v9, v6 & 1);

  *a1 = v21;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v20;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  v15 &= 1u;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257BD1B90(v11, v13, v15);

  sub_257C0300C(v11, v13, v15);
}

void sub_257D41270()
{
  sub_257DB0238();
  sub_257DB05D0(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v0)
  {
    sub_257D334B0(0, 1.0);
  }
}

id sub_257D4130C(uint64_t a1, char *a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*&a2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning];
  if (result)
  {
    v18 = *&a2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue];
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = a2;
    aBlock[4] = sub_257D4172C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_33;
    v13 = _Block_copy(aBlock);
    v17 = v7;
    v14 = v13;
    v15 = a2;
    sub_257ECF150();
    v19 = MEMORY[0x277D84F90];
    sub_257D419A8(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v10, v6, v14);
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v17);
  }

  return result;
}

id sub_257D4160C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_257ECF050();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8570);
  sub_257D401F4(v4, v3, (a1 + *(v6 + 44)));
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8578) + 36));
  *v8 = sub_257D4171C;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8580) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_257D41724;
  v10[3] = v9;
  v11 = v3;

  return v11;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D41758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE3D0();
  *a1 = result;
  return result;
}

uint64_t sub_257D417B0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C70F50]();
  *a1 = result;
  return result;
}

unint64_t sub_257D41808()
{
  result = qword_27F8F85C8;
  if (!qword_27F8F85C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F85A0);
    sub_257BD2D4C(&qword_27F8F85D0, &qword_27F8F85D8);
    sub_257BD2D4C(&qword_27F8F85E0, &qword_27F8F85E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F85C8);
  }

  return result;
}

unint64_t sub_257D418EC()
{
  result = qword_27F8F85F0;
  if (!qword_27F8F85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F85A8);
    sub_257D41808();
    sub_257D419A8(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F85F0);
  }

  return result;
}

uint64_t sub_257D419A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257D419F8()
{
  result = qword_27F8F8608;
  if (!qword_27F8F8608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8580);
    sub_257D41A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8608);
  }

  return result;
}

unint64_t sub_257D41A84()
{
  result = qword_27F8F8610;
  if (!qword_27F8F8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8578);
    sub_257BD2D4C(&qword_27F8F8618, &qword_27F8F8620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8610);
  }

  return result;
}

uint64_t sub_257D41B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6169706573;
    }

    else
    {
      v3 = 0x6574696877;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 2036429415;
  }

  else if (a1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6B63616C62;
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x6D6F74737563;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6169706573;
    }

    else
    {
      v8 = 0x6574696877;
    }

    v7 = 0xE500000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x6B63616C62;
    if (a2 != 3)
    {
      v5 = 0x6D6F74737563;
      v4 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v6 = 2036429415;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_257ED0640();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_257D41C9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C706F6570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1954047348;
    }

    else
    {
      v4 = 0x727574696E727566;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73726F6F64;
    }

    else
    {
      v4 = 0x656C706F6570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE400000000000000;
  v8 = 1954047348;
  if (a2 != 2)
  {
    v8 = 0x727574696E727566;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x73726F6F64;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_257ED0640();
  }

  return v11 & 1;
}

uint64_t sub_257D41DCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006369747061;
  v3 = 0x48746C7561666564;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x65746544726F6F64;
    v16 = 0xED00006E6F697463;
    v17 = 0x657053746E696F70;
    v18 = 0xEE00747865546B61;
    if (a1 != 3)
    {
      v17 = 0xD000000000000012;
      v18 = 0x8000000257EF7740;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v16 = v18;
    }

    v19 = 0x6544656C706F6570;
    v20 = 0xEF6E6F6974636574;
    if (!a1)
    {
      v19 = 0x48746C7561666564;
      v20 = 0xED00006369747061;
    }

    if (a1 <= 1u)
    {
      v13 = v19;
    }

    else
    {
      v13 = v15;
    }

    if (v4 <= 1)
    {
      v14 = v20;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    v5 = 0x65636E6164697567;
    v6 = 0xEF6572756C696146;
    v7 = 0x75476E4F6B636F6CLL;
    v8 = 0xEE0065636E616469;
    if (a1 != 9)
    {
      v7 = 0x4766664F6B636F6CLL;
      v8 = 0xEF65636E61646975;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x8000000257EF7760;
    v10 = 0xD000000000000014;
    v11 = 0x6E616353706F6F6CLL;
    v12 = 0xEC000000676E696ELL;
    if (a1 != 6)
    {
      v11 = 0x65636E6164697567;
      v12 = 0xEF73736563637553;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v12;
    }

    if (a1 <= 7u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v5;
    }

    if (v4 <= 7)
    {
      v14 = v9;
    }

    else
    {
      v14 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000257EF7760;
        if (v13 != 0xD000000000000014)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      if (a2 == 6)
      {
        v2 = 0xEC000000676E696ELL;
        if (v13 != 0x6E616353706F6F6CLL)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      v3 = 0x65636E6164697567;
      v2 = 0xEF73736563637553;
      goto LABEL_54;
    }

    if (a2 == 8)
    {
      v23 = 0x65636E6164697567;
      v24 = 0x72756C696146;
    }

    else
    {
      if (a2 == 9)
      {
        v21 = 0x75476E4F6B636F6CLL;
        v22 = 0x65636E616469;
LABEL_41:
        v2 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v13 != v21)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      v23 = 0x4766664F6B636F6CLL;
      v24 = 0x636E61646975;
    }

    v2 = v24 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
    if (v13 != v23)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xED00006E6F697463;
      if (v13 != 0x65746544726F6F64)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    if (a2 != 3)
    {
      v2 = 0x8000000257EF7740;
      if (v13 != 0xD000000000000012)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v21 = 0x657053746E696F70;
    v22 = 0x747865546B61;
    goto LABEL_41;
  }

  if (a2)
  {
    v2 = 0xEF6E6F6974636574;
    if (v13 != 0x6544656C706F6570)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_54:
  if (v13 != v3)
  {
LABEL_59:
    v25 = sub_257ED0640();
    goto LABEL_60;
  }

LABEL_55:
  if (v14 != v2)
  {
    goto LABEL_59;
  }

  v25 = 1;
LABEL_60:

  return v25 & 1;
}