uint64_t sub_1D5211DE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  OUTLINED_FUNCTION_82();
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D56881E0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_42;
  }

  v3 = qword_1EDD54250;
  swift_retain_n();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22_44();
  }

  sub_1D4EC5794(&qword_1EDD53DF8, &qword_1EC7ECD50, &unk_1D5622F40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_77_0();
  if ((v1 & 1) == 0)
  {
    v4 = qword_1EDD542D8;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_21_47();
    }

    OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_77_0();
    if ((v4 & 1) == 0)
    {

      sub_1D4F84A28();
      v5 = OUTLINED_FUNCTION_39_0();

      if ((v5 & 1) == 0)
      {
        v6 = off_1EDD54320;

        if (v6 != -1)
        {
          OUTLINED_FUNCTION_20_55();
        }

        OUTLINED_FUNCTION_22_9();
        OUTLINED_FUNCTION_77_0();
        if ((v6 & 1) == 0)
        {
          v7 = qword_1EDD54238;

          if (v7 != -1)
          {
            OUTLINED_FUNCTION_19_53();
          }

          OUTLINED_FUNCTION_22_9();
          OUTLINED_FUNCTION_77_0();
          if ((v7 & 1) == 0)
          {
            v8 = qword_1EDD54278;

            if (v8 != -1)
            {
              OUTLINED_FUNCTION_18_58();
            }

            OUTLINED_FUNCTION_22_9();
            OUTLINED_FUNCTION_77_0();
            if ((v8 & 1) == 0)
            {
              v12 = qword_1EDD541D0;

              if (v12 != -1)
              {
                OUTLINED_FUNCTION_34_31();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if (v12)
              {
                goto LABEL_38;
              }

              v13 = qword_1EDD54288;

              if (v13 != -1)
              {
                OUTLINED_FUNCTION_36_32();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if (v13)
              {
                goto LABEL_38;
              }

              v14 = qword_1EDD54340;

              if (v14 != -1)
              {
                OUTLINED_FUNCTION_35_36();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if (v14)
              {
                goto LABEL_38;
              }

              v15 = qword_1EDD54308;

              if (v15 != -1)
              {
                OUTLINED_FUNCTION_34_39();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if (v15)
              {
                goto LABEL_38;
              }

              v16 = qword_1EDD54180;

              if (v16 != -1)
              {
                OUTLINED_FUNCTION_33_38();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if (v16)
              {
                goto LABEL_38;
              }

              v17 = qword_1EDD54258;

              if (v17 != -1)
              {
                OUTLINED_FUNCTION_32_38();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if (v17)
              {
LABEL_38:
                swift_getKeyPath();
                OUTLINED_FUNCTION_73_16();
                sub_1D5218BD0(v18, v19);
                OUTLINED_FUNCTION_52();
                sub_1D5612238();
                goto LABEL_19;
              }

              OUTLINED_FUNCTION_11_75();
              sub_1D5218BD0(v20, v21);

              sub_1D560D198();
              v22 = OUTLINED_FUNCTION_39_0();

              if ((v22 & 1) == 0)
              {
                while (1)
                {
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
                  sub_1D560CDE8();
                  sub_1D5615D48();
                  OUTLINED_FUNCTION_33_0();
LABEL_42:
                  OUTLINED_FUNCTION_117_9();
                  __break(1u);
                }
              }
            }
          }
        }
      }
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_73_16();
  sub_1D5218BD0(v9, v10);
  OUTLINED_FUNCTION_52();
  sub_1D5612248();
LABEL_19:

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

uint64_t sub_1D52123E8(void *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  *&v74 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  *&v75 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C28, &unk_1D563B3D0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  v28 = type metadata accessor for MusicMoviePropertyProvider();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E88, &unk_1D5644B58);
  OUTLINED_FUNCTION_33_18();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D5688130);
    v78 = a1;
    v70 = *(v5 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v71 = 203;
    goto LABEL_44;
  }

  v2 = v36;
  sub_1D4E628D4(a2, &v77);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v72 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v72, v73, 1, v28);
    sub_1D4E50004(v27, &qword_1EC7F0C28, &unk_1D563B3D0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5688170);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v71 = 206;
    goto LABEL_44;
  }

  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  sub_1D515CBC8(v27, v34);
  v37 = qword_1EDD54250;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_22_44();
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD769D0);
  sub_1D4EC5794(&qword_1EC7F1E90, &qword_1EC7F1E88, &unk_1D5644B58);
  OUTLINED_FUNCTION_58_23();
  OUTLINED_FUNCTION_155();
  if (v37)
  {

    OUTLINED_FUNCTION_152_5(v28[12]);
    sub_1D515CB6C(v34);
    v38 = v28[12];
LABEL_13:
    v41 = v76;
    v42 = *(v76 + v38);
    if (!v19)
    {
    }

    *(v41 + v38) = v19;
    return result;
  }

  v39 = qword_1EDD542D8;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_21_47();
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD542E0);
  OUTLINED_FUNCTION_58_23();
  OUTLINED_FUNCTION_155();
  if (v39)
  {

    OUTLINED_FUNCTION_152_5(v28[13]);
    sub_1D515CB6C(v34);
    v38 = v28[13];
    goto LABEL_13;
  }

  v40 = sub_1D4F84C5C();
  OUTLINED_FUNCTION_130_9(v40);
  OUTLINED_FUNCTION_155();

  if (v35)
  {

    OUTLINED_FUNCTION_152_5(v28[15]);
    sub_1D515CB6C(v34);
    v38 = v28[15];
    goto LABEL_13;
  }

  v44 = off_1EDD54320;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_20_55();
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD54328);
  OUTLINED_FUNCTION_58_23();
  OUTLINED_FUNCTION_155();
  if (v44)
  {

    sub_1D4F1C460(v34 + v28[18], v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D515CB6C(v34);
    sub_1D560C0A8();
    v45 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_10(v45);
    if (v46)
    {
      v51 = v76;
      sub_1D4F1C460(v76 + v28[18], v21, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_10(v19);
      if (!v46)
      {
        sub_1D4E50004(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
      }
    }

    else
    {
      (*(*(v44 - 8) + 32))(v21, v19, v44);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v44);
      v51 = v76;
    }

    v52 = &unk_1EC7E9CA8;
    v53 = &unk_1D561D1D0;
    v54 = v51 + v28[18];
    v55 = v21;
    return sub_1D4F1C350(v55, v54, v52, v53);
  }

  v47 = qword_1EDD54238;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_19_53();
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD54240);
  v48 = OUTLINED_FUNCTION_58_23();

  if (v48)
  {

    v49 = v74;
    sub_1D4F1C460(v34 + v28[28], v74, &qword_1EC7EAC98, &unk_1D561DA80);
    sub_1D515CB6C(v34);
    v50 = sub_1D5610978();
    OUTLINED_FUNCTION_1(v49);
    if (v46)
    {
      v66 = v76;
      v65 = v75;
      sub_1D4F1C460(v76 + v28[28], v75, &qword_1EC7EAC98, &unk_1D561DA80);
      OUTLINED_FUNCTION_1(v49);
      if (!v46)
      {
        sub_1D4E50004(v49, &qword_1EC7EAC98, &unk_1D561DA80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_1();
      v65 = v75;
      (*(v64 + 32))(v75, v49, v50);
      __swift_storeEnumTagSinglePayload(v65, 0, 1, v50);
      v66 = v76;
    }

    v52 = &qword_1EC7EAC98;
    v53 = &unk_1D561DA80;
    v54 = v66 + v28[28];
    v55 = v65;
    return sub_1D4F1C350(v55, v54, v52, v53);
  }

  v56 = qword_1EDD54278;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_18_58();
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD769E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  sub_1D4EC5794(&qword_1EDD53DF8, &qword_1EC7ECD50, &unk_1D5622F40);
  v57 = sub_1D5614D18();

  if ((v57 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_75();
    sub_1D5218BD0(v67, v68);

    v19 = sub_1D560D198();
    OUTLINED_FUNCTION_130_9(v19);
    OUTLINED_FUNCTION_155();

    if ((v35 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_30();
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D56881B0);
        v78 = v2;
        sub_1D5615D48();
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_28();
        v71 = 227;
LABEL_44:
        *&v74 = v71;
        OUTLINED_FUNCTION_117_9();
        __break(1u);
      }
    }

    OUTLINED_FUNCTION_152_5(v28[44]);
    sub_1D515CB6C(v34);
    v38 = v28[44];
    goto LABEL_13;
  }

  v58 = v34 + v28[29];
  v59 = *v58;
  v60 = *(v58 + 8);
  v74 = *(v58 + 24);
  v75 = v60;
  result = sub_1D515CB6C(v34);
  v61 = v75;
  v62 = v28[29];
  if (v75 == 2)
  {
    v59 = *(v76 + v62);
    v61 = *(v76 + v62 + 8);
    v63 = *(v76 + v62 + 24);
  }

  else
  {
    v63 = v74;
  }

  v69 = v76 + v62;
  *v69 = v59;
  *(v69 + 8) = v61;
  *(v69 + 24) = v63;
  return result;
}

uint64_t sub_1D5212CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D56449E0;
  if (qword_1EDD54370 != -1)
  {
    OUTLINED_FUNCTION_108_9();
  }

  *(v0 + 32) = qword_1EDD76A50;
  v1 = qword_1EDD541B8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_107_9();
  }

  *(v0 + 40) = qword_1EDD76978;
  v2 = qword_1EDD54330;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_106_9();
  }

  *(v0 + 48) = qword_1EDD76A30;
  v3 = qword_1EDD541E8;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_89_12();
  }

  *(v0 + 56) = qword_1EDD76990;
  v4 = qword_1EDD54300;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_14_52();
  }

  *(v0 + 64) = qword_1EDD76A28;
  v5 = qword_1EDD54198;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_104_13();
  }

  *(v0 + 72) = qword_1EDD76968;
  v6 = qword_1EDD542F0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_103_12();
  }

  *(v0 + 80) = qword_1EDD76A20;
  v7 = qword_1EDD541A8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_102_11();
  }

  *(v0 + 88) = qword_1EDD76970;
  v8 = qword_1EDD54250;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_22_44();
  }

  *(v0 + 96) = qword_1EDD769D0;
  v9 = qword_1EDD542D8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_21_47();
  }

  *(v0 + 104) = qword_1EDD542E0;
  v10 = qword_1EDD542C8;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_101_7();
  }

  *(v0 + 112) = qword_1EDD76A18;

  *(v0 + 120) = sub_1D4F84A28();
  if (qword_1EDD54360 != -1)
  {
    OUTLINED_FUNCTION_100_9();
  }

  *(v0 + 128) = qword_1EDD76A48;
  v11 = qword_1EDD54248;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_99_12();
  }

  *(v0 + 136) = qword_1EDD769C8;
  v12 = off_1EDD54320;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_20_55();
  }

  *(v0 + 144) = qword_1EDD54328;
  v13 = qword_1EDD542C0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_98_12();
  }

  *(v0 + 152) = qword_1EDD76A10;
  v14 = qword_1EDD54218;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_97_12();
  }

  *(v0 + 160) = qword_1EDD769B8;
  v15 = qword_1EDD54210;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_96_13();
  }

  *(v0 + 168) = qword_1EDD769B0;
  v16 = qword_1EDD54208;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_95_13();
  }

  *(v0 + 176) = qword_1EDD769A8;
  v17 = qword_1EDD54200;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_94_14();
  }

  *(v0 + 184) = qword_1EDD769A0;
  v18 = qword_1EDD542B8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_93_13();
  }

  *(v0 + 192) = qword_1EDD76A08;
  v19 = qword_1EDD54280;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_92_12();
  }

  *(v0 + 200) = qword_1EDD769F0;
  v20 = qword_1EDD542A8;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_90_15();
  }

  *(v0 + 208) = qword_1EDD76A00;
  v21 = qword_1EDD541C0;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_87_13();
  }

  *(v0 + 216) = qword_1EDD76980;
  v22 = qword_1EDD54238;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_19_53();
  }

  *(v0 + 224) = qword_1EDD54240;
  v23 = qword_1EDD54278;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_18_58();
  }

  *(v0 + 232) = qword_1EDD769E8;
  v24 = qword_1EDD542A0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_85_12();
  }

  *(v0 + 240) = qword_1EDD769F8;
  v25 = qword_1EDD54338;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_84_13();
  }

  *(v0 + 248) = qword_1EDD76A38;
  v26 = qword_1EDD54270;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_83_13();
  }

  *(v0 + 256) = qword_1EDD769E0;
  v27 = qword_1EDD54228;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_81_19();
  }

  *(v0 + 264) = qword_1EDD769C0;
  v28 = qword_1EDD54350;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_79_12();
  }

  *(v0 + 272) = qword_1EDD76A40;
  v29 = qword_1EDD54268;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_78_16();
  }

  *(v0 + 280) = qword_1EDD769D8;
  v30 = qword_1EDD541E0;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_77_11();
  }

  *(v0 + 288) = qword_1EDD76988;
  v31 = qword_1EDD541F8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_31_30();
  }

  *(v0 + 296) = qword_1EDD76998;
  v32 = qword_1EDD541D0;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_34_31();
  }

  *(v0 + 304) = qword_1EDD541D8;
  v33 = qword_1EDD54288;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_36_32();
  }

  *(v0 + 312) = qword_1EDD54290;
  v34 = qword_1EDD54340;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_35_36();
  }

  *(v0 + 320) = qword_1EDD54348;
  v35 = qword_1EDD54308;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_34_39();
  }

  *(v0 + 328) = qword_1EDD54310;
  v36 = qword_1EDD54180;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_33_38();
  }

  *(v0 + 336) = qword_1EDD54188;
  v37 = qword_1EDD54258;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_32_38();
  }

  *(v0 + 344) = qword_1EDD54260;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  OUTLINED_FUNCTION_11_75();
  sub_1D5218BD0(v38, v39);

  result = sub_1D560D198();
  *(v0 + 352) = result;
  qword_1EDD76D30 = v0;
  return result;
}

uint64_t sub_1D5213500(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4(v4);
  v848 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v845 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v843 = v14;
  v839 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB670, qword_1D561E830);
  OUTLINED_FUNCTION_14(v839);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v844 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v20 = OUTLINED_FUNCTION_4(v19);
  v836 = v21;
  v837 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v835 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v833 = v30;
  v832 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_14(v832);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v834 = v34;
  v847 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_4(v847);
  v846 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v842 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v841 = v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_135();
  v831 = v46;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  v829 = v48;
  v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E98, &qword_1D5644D08);
  v49 = OUTLINED_FUNCTION_14(v838);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  v840 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  v830 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_2();
  v828 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v58 = OUTLINED_FUNCTION_4(v57);
  v826 = v59;
  v827 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  v825 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_3();
  v823 = v68;
  v822 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14(v822);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v824 = v72;
  OUTLINED_FUNCTION_70_0();
  v73 = sub_1D56109F8();
  v74 = OUTLINED_FUNCTION_4(v73);
  v818 = v75;
  v819 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  v817 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_3();
  v815 = v83;
  v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_14(v814);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  v816 = v87;
  OUTLINED_FUNCTION_70_0();
  v813 = sub_1D5614A78();
  v88 = OUTLINED_FUNCTION_4(v813);
  v811 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  v809 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  v807 = v97;
  v806 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_14(v806);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13_3();
  v808 = v101;
  OUTLINED_FUNCTION_70_0();
  v102 = sub_1D56134E8();
  v103 = OUTLINED_FUNCTION_4(v102);
  v802 = v104;
  v803 = v103;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5_0();
  v801 = v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v108);
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13_3();
  v799 = v112;
  v798 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_14(v798);
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13_3();
  v800 = v116;
  OUTLINED_FUNCTION_70_0();
  v117 = sub_1D5613198();
  v118 = OUTLINED_FUNCTION_4(v117);
  v794 = v119;
  v795 = v118;
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5_0();
  v793 = v122;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v123);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_13_3();
  v791 = v127;
  v788 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_14(v788);
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_13_3();
  v792 = v131;
  OUTLINED_FUNCTION_70_0();
  v851 = sub_1D5613178();
  v132 = OUTLINED_FUNCTION_4(v851);
  v787 = v133;
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  v786 = v136;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v137);
  v139 = *(v138 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_13_3();
  v850 = v141;
  v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04B8, &unk_1D5637E90);
  OUTLINED_FUNCTION_14(v849);
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_13_3();
  v853 = v145;
  OUTLINED_FUNCTION_70_0();
  v857 = sub_1D560C0A8();
  v146 = OUTLINED_FUNCTION_4(v857);
  v854 = v147;
  v149 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5_0();
  v852 = v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v152 = OUTLINED_FUNCTION_22(v151);
  v154 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_13();
  v820 = v155;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_13_2();
  v856 = v157;
  v855 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v158 = OUTLINED_FUNCTION_14(v855);
  v160 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_13();
  v821 = v161;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_13_2();
  v858 = v163;
  OUTLINED_FUNCTION_70_0();
  v863 = sub_1D5610978();
  v164 = OUTLINED_FUNCTION_4(v863);
  v860 = v165;
  v167 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_5_0();
  v859 = v168;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v170 = OUTLINED_FUNCTION_22(v169);
  v172 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_13();
  v804 = v173;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_13_2();
  v861 = v175;
  v862 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  v176 = OUTLINED_FUNCTION_14(v862);
  v178 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_13();
  v805 = v179;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_13_2();
  v864 = v181;
  OUTLINED_FUNCTION_70_0();
  v870 = sub_1D560C328();
  v182 = OUTLINED_FUNCTION_4(v870);
  v867 = v183;
  v185 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_5_0();
  v865 = v186;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v188 = OUTLINED_FUNCTION_22(v187);
  v190 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_13();
  v812 = v191;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v192);
  OUTLINED_FUNCTION_135();
  v797 = v193;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v194);
  OUTLINED_FUNCTION_135();
  v790 = v195;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_13_2();
  v866 = v197;
  v869 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  v198 = OUTLINED_FUNCTION_14(v869);
  v200 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_13();
  v810 = v201;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_135();
  v796 = v203;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_135();
  v789 = v205;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v206);
  OUTLINED_FUNCTION_13_2();
  v868 = v207;
  OUTLINED_FUNCTION_70_0();
  v876 = sub_1D560F928();
  v208 = OUTLINED_FUNCTION_4(v876);
  v874 = v209;
  v211 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v208);
  OUTLINED_FUNCTION_5_0();
  v872 = v212;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v213);
  v215 = *(v214 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_13_3();
  v873 = v217;
  v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14(v875);
  v219 = *(v218 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v220);
  OUTLINED_FUNCTION_13_3();
  v877 = v221;
  OUTLINED_FUNCTION_70_0();
  v222 = sub_1D56140F8();
  v223 = OUTLINED_FUNCTION_4(v222);
  v225 = v224;
  v227 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v223);
  OUTLINED_FUNCTION_5();
  v230 = v229 - v228;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v231);
  v233 = *(v232 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v234);
  v236 = &v782 - v235;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14(v237);
  v239 = *(v238 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v240);
  v242 = (&v782 - v241);
  v243 = a1[1];
  v244 = a2[1];
  if (v243)
  {
    if (!v244)
    {
      goto LABEL_30;
    }

    v245 = *a1 == *a2 && v243 == v244;
    if (!v245 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v244)
  {
    goto LABEL_30;
  }

  v783 = v4;
  v246 = type metadata accessor for MusicMoviePropertyProvider();
  v871 = a2;
  v247 = *(v246 + 20);
  v248 = a1;
  v249 = *(v237 + 48);
  v784 = v246;
  v785 = v248;
  sub_1D4F1C460(v248 + v247, v242, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F1C460(v871 + v247, v242 + v249, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v242);
  if (v245)
  {
    OUTLINED_FUNCTION_10(v242 + v249);
    if (v245)
    {
      sub_1D4E50004(v242, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_20;
    }

LABEL_18:
    v251 = &qword_1EC7E9FB8;
    v252 = &unk_1D561B9C0;
    v253 = v242;
    goto LABEL_29;
  }

  sub_1D4F1C460(v242, v236, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v242 + v249);
  if (v250)
  {
    (*(v225 + 8))(v236, v222);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_33_1();
  v254(v230, v242 + v249, v222);
  OUTLINED_FUNCTION_69_19();
  sub_1D5218BD0(v255, v256);
  v257 = sub_1D5614D18();
  v258 = *(v225 + 8);
  v259 = OUTLINED_FUNCTION_131();
  v258(v259);
  (v258)(v236, v222);
  sub_1D4E50004(v242, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v257 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v261 = v784;
  v260 = v785;
  v262 = v784[6];
  v263 = *(v875 + 48);
  v264 = v877;
  sub_1D4F1C460(v785 + v262, v877, &qword_1EC7EDB98, L"X\b\a");
  v265 = v871 + v262;
  v266 = v871;
  sub_1D4F1C460(v265, v264 + v263, &qword_1EC7EDB98, L"X\b\a");
  v267 = v876;
  OUTLINED_FUNCTION_57(v264, 1, v876);
  if (v245)
  {
    OUTLINED_FUNCTION_57(v264 + v263, 1, v267);
    if (v245)
    {
      sub_1D4E50004(v264, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_33;
    }

LABEL_28:
    v251 = &qword_1EC7EF650;
    v252 = &qword_1D5632480;
    v253 = v264;
    goto LABEL_29;
  }

  v268 = v873;
  sub_1D4F1C460(v264, v873, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v264 + v263, 1, v267);
  if (v269)
  {
    (*(v874 + 8))(v268, v267);
    goto LABEL_28;
  }

  v272 = v874;
  v273 = v264 + v263;
  v274 = v872;
  (*(v874 + 32))(v872, v273, v267);
  OUTLINED_FUNCTION_68_16();
  sub_1D5218BD0(v275, v276);
  v277 = v261;
  v278 = v260;
  v279 = v268;
  v280 = sub_1D5614D18();
  v281 = *(v272 + 8);
  v281(v274, v267);
  v282 = v279;
  v260 = v278;
  v261 = v277;
  v281(v282, v267);
  sub_1D4E50004(v877, &qword_1EC7EDB98, L"X\b\a");
  if ((v280 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v283 = v261[7];
  v284 = *(v260 + v283);
  v285 = *(v266 + v283);
  if (v284)
  {
    if (!v285)
    {
      goto LABEL_30;
    }

    v286 = *(v266 + v283);

    OUTLINED_FUNCTION_63_1();
    sub_1D4EFBCD0();
    OUTLINED_FUNCTION_120_2();
    if ((v284 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v285)
  {
    goto LABEL_30;
  }

  v287 = v261[8];
  v288 = *(v260 + v287);
  v289 = *(v266 + v287);
  if (v288)
  {
    if (!v289)
    {
      goto LABEL_30;
    }

    v290 = *(v266 + v287);

    v291 = OUTLINED_FUNCTION_63_1();
    sub_1D4EF828C(v291, v292);
    OUTLINED_FUNCTION_120_2();
    if ((v288 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v289)
  {
    goto LABEL_30;
  }

  v293 = v261[9];
  v294 = *(v266 + v293 + 8);
  if (*(v260 + v293 + 8))
  {
    if (!v294)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_31_0((v260 + v293));
    v297 = v245 && v295 == v296;
    if (!v297 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v294)
  {
    goto LABEL_30;
  }

  v298 = v261[10];
  OUTLINED_FUNCTION_147_6();
  v299 = v868;
  OUTLINED_FUNCTION_45_27();
  sub_1D4F1C460(v300, v301, v302, v303);
  v304 = v871;
  OUTLINED_FUNCTION_45_27();
  v305 = v299;
  sub_1D4F1C460(v306, v307, v308, v309);
  v310 = v299;
  v311 = v870;
  OUTLINED_FUNCTION_57(v310, 1, v870);
  if (v245)
  {
    OUTLINED_FUNCTION_57(v305 + v267, 1, v311);
    if (v245)
    {
      sub_1D4E50004(v305, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_62;
    }

LABEL_60:
    v251 = &qword_1EC7EB578;
    v252 = &unk_1D5644D10;
    v253 = v305;
    goto LABEL_29;
  }

  v312 = v866;
  sub_1D4F1C460(v305, v866, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v305 + v267, 1, v311);
  if (v313)
  {
    OUTLINED_FUNCTION_146_4();
    v314(v312, v311);
    goto LABEL_60;
  }

  v315 = v867;
  OUTLINED_FUNCTION_33_1();
  v316 = v865;
  v317(v865, v305 + v267, v311);
  OUTLINED_FUNCTION_2_107();
  sub_1D5218BD0(v318, v319);
  v320 = sub_1D5614D18();
  v321 = *(v315 + 8);
  v322 = v316;
  v304 = v871;
  v321(v322, v311);
  v321(v312, v311);
  sub_1D4E50004(v305, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v320 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_62:
  v323 = v261[11];
  v324 = (v260 + v323);
  v325 = *(v260 + v323 + 8);
  v326 = (v304 + v323);
  v327 = *(v304 + v323 + 8);
  if (v325)
  {
    if (!v327)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*v324 != *v326)
    {
      LOBYTE(v327) = 1;
    }

    if (v327)
    {
      goto LABEL_30;
    }
  }

  v328 = v261[12];
  v329 = *(v260 + v328);
  v330 = *(v304 + v328);
  if (v329)
  {
    if (!v330)
    {
      goto LABEL_30;
    }

    v331 = *(v304 + v328);

    OUTLINED_FUNCTION_63_1();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_120_2();
    if ((v329 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v330)
  {
    goto LABEL_30;
  }

  v332 = v261[13];
  v333 = *(v260 + v332);
  v334 = *(v304 + v332);
  if (v333)
  {
    if (!v334)
    {
      goto LABEL_30;
    }

    v335 = *(v304 + v332);

    OUTLINED_FUNCTION_63_1();
    sub_1D4EF7EF4();
    OUTLINED_FUNCTION_120_2();
    if ((v333 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v334)
  {
    goto LABEL_30;
  }

  v336 = v261[14];
  v337 = *(v862 + 48);
  v338 = &unk_1D561DA80;
  v339 = v864;
  OUTLINED_FUNCTION_45_27();
  sub_1D4F1C460(v340, v341, v342, v343);
  OUTLINED_FUNCTION_13_61();
  v344 = OUTLINED_FUNCTION_105();
  v345 = v863;
  OUTLINED_FUNCTION_57(v344, v346, v863);
  if (v245)
  {
    OUTLINED_FUNCTION_10(v337 + v339);
    if (v245)
    {
      sub_1D4E50004(v864, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_88;
    }

LABEL_86:
    v251 = &qword_1EC7EF648;
    v252 = &unk_1D5632470;
    v253 = v864;
    goto LABEL_29;
  }

  sub_1D4F1C460(v339, v861, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_10(v337 + v339);
  if (v347)
  {
    v860[1](v861, v863);
    goto LABEL_86;
  }

  v338 = v860;
  OUTLINED_FUNCTION_33_1();
  v348 = v864;
  v349 = v863;
  v350(v859, v337 + v864, v863);
  OUTLINED_FUNCTION_12_60();
  sub_1D5218BD0(v351, v352);
  v353 = v861;
  OUTLINED_FUNCTION_151_5();
  v354 = OUTLINED_FUNCTION_41_4();
  v337(v354);
  (v337)(v353, v349);
  sub_1D4E50004(v348, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((v345 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  OUTLINED_FUNCTION_123_6(v784[15]);
  if (v338)
  {
    if (!v345)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4F29174();
    OUTLINED_FUNCTION_120_2();
    if ((v338 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v345)
  {
    goto LABEL_30;
  }

  v355 = OUTLINED_FUNCTION_53_22(v784[16]);
  if (v355)
  {
    if (!v356 || (sub_1D4EF81E0(v355, v356) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v356)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_86_16(v784[17]);
  if (v245)
  {
    if (v357 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v270 = 0;
    if (v357 == 2 || ((v357 ^ v358) & 1) != 0)
    {
      return v270 & 1;
    }
  }

  v359 = v784[18];
  v360 = *(v855 + 48);
  OUTLINED_FUNCTION_61_22();
  OUTLINED_FUNCTION_45_27();
  sub_1D4F1C460(v361, v362, v363, v364);
  OUTLINED_FUNCTION_13_61();
  v365 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v365, v366, v857);
  if (!v245)
  {
    v369 = v858;
    sub_1D4F1C460(v858, v856, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v370 = OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_57(v370, v371, v857);
    if (!v372)
    {
      OUTLINED_FUNCTION_33_1();
      v373 = v858;
      v374 = v857;
      v375(v852, v360 + v858, v857);
      OUTLINED_FUNCTION_10_73();
      sub_1D5218BD0(v376, v377);
      v378 = v856;
      OUTLINED_FUNCTION_151_5();
      v379 = OUTLINED_FUNCTION_41_4();
      v360(v379);
      (v360)(v378, v374);
      sub_1D4E50004(v373, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v369 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_114;
    }

    (*(v854 + 8))(v856, v857);
LABEL_112:
    v251 = &qword_1EC7E9FB0;
    v252 = &qword_1D562C590;
    v253 = v858;
    goto LABEL_29;
  }

  v367 = OUTLINED_FUNCTION_70_3(v858);
  OUTLINED_FUNCTION_57(v367, v368, v857);
  if (!v245)
  {
    goto LABEL_112;
  }

  sub_1D4E50004(v858, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_114:
  OUTLINED_FUNCTION_86_16(v784[19]);
  if (v245)
  {
    if (v380 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v270 = 0;
    if (v380 == 2 || ((v380 ^ v381) & 1) != 0)
    {
      return v270 & 1;
    }
  }

  OUTLINED_FUNCTION_86_16(v784[20]);
  if (v245)
  {
    if (v382 != 2)
    {
      goto LABEL_30;
    }

LABEL_126:
    v384 = v784[21];
    v385 = *(v849 + 48);
    OUTLINED_FUNCTION_61_22();
    OUTLINED_FUNCTION_45_27();
    sub_1D4F1C460(v386, v387, v388, v389);
    OUTLINED_FUNCTION_13_61();
    v390 = OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_57(v390, v391, v851);
    if (v245)
    {
      v392 = OUTLINED_FUNCTION_70_3(v853);
      OUTLINED_FUNCTION_57(v392, v393, v851);
      if (v245)
      {
        sub_1D4E50004(v853, &qword_1EC7EC538, &unk_1D5621080);
        goto LABEL_136;
      }
    }

    else
    {
      v394 = v853;
      sub_1D4F1C460(v853, v850, &qword_1EC7EC538, &unk_1D5621080);
      v395 = OUTLINED_FUNCTION_69_1();
      OUTLINED_FUNCTION_57(v395, v396, v851);
      if (!v397)
      {
        OUTLINED_FUNCTION_40_3();
        v398 = v853;
        v399 = OUTLINED_FUNCTION_130_7();
        v400(v399);
        OUTLINED_FUNCTION_66_16();
        sub_1D5218BD0(v401, v402);
        OUTLINED_FUNCTION_75_3();
        v403 = OUTLINED_FUNCTION_9_58();
        (unk_1D5621080)(v403);
        v404 = OUTLINED_FUNCTION_26_27();
        (unk_1D5621080)(v404);
        sub_1D4E50004(v398, &qword_1EC7EC538, &unk_1D5621080);
        if ((v394 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_136:
        v405 = v784[22];
        v406 = *(v788 + 48);
        OUTLINED_FUNCTION_61_22();
        OUTLINED_FUNCTION_45_27();
        sub_1D4F1C460(v407, v408, v409, v410);
        OUTLINED_FUNCTION_13_61();
        v411 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_57(v411, v412, v795);
        if (v245)
        {
          v413 = OUTLINED_FUNCTION_70_3(v792);
          OUTLINED_FUNCTION_57(v413, v414, v795);
          if (v245)
          {
            sub_1D4E50004(v792, &qword_1EC7EC530, &unk_1D5632150);
            goto LABEL_146;
          }
        }

        else
        {
          v415 = v792;
          sub_1D4F1C460(v792, v791, &qword_1EC7EC530, &unk_1D5632150);
          v416 = OUTLINED_FUNCTION_69_1();
          OUTLINED_FUNCTION_57(v416, v417, v795);
          if (!v418)
          {
            OUTLINED_FUNCTION_40_3();
            v419 = v792;
            v420 = OUTLINED_FUNCTION_130_7();
            v421(v420);
            OUTLINED_FUNCTION_72_19();
            sub_1D5218BD0(v422, v423);
            OUTLINED_FUNCTION_75_3();
            v424 = OUTLINED_FUNCTION_9_58();
            (unk_1D5632150)(v424);
            v425 = OUTLINED_FUNCTION_26_27();
            (unk_1D5632150)(v425);
            sub_1D4E50004(v419, &qword_1EC7EC530, &unk_1D5632150);
            if ((v415 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_146:
            v426 = v784[23];
            v427 = *(v798 + 48);
            OUTLINED_FUNCTION_61_22();
            OUTLINED_FUNCTION_45_27();
            sub_1D4F1C460(v428, v429, v430, v431);
            OUTLINED_FUNCTION_13_61();
            v432 = OUTLINED_FUNCTION_105();
            OUTLINED_FUNCTION_57(v432, v433, v803);
            if (v245)
            {
              v434 = OUTLINED_FUNCTION_70_3(v800);
              OUTLINED_FUNCTION_57(v434, v435, v803);
              if (v245)
              {
                sub_1D4E50004(v800, &qword_1EC7EC528, &unk_1D5621070);
                goto LABEL_156;
              }
            }

            else
            {
              v436 = v800;
              sub_1D4F1C460(v800, v799, &qword_1EC7EC528, &unk_1D5621070);
              v437 = OUTLINED_FUNCTION_69_1();
              OUTLINED_FUNCTION_57(v437, v438, v803);
              if (!v439)
              {
                OUTLINED_FUNCTION_40_3();
                v440 = v800;
                v441 = OUTLINED_FUNCTION_130_7();
                v427 = v803;
                v442(v441);
                OUTLINED_FUNCTION_71_16();
                sub_1D5218BD0(v443, v444);
                OUTLINED_FUNCTION_75_3();
                v445 = OUTLINED_FUNCTION_9_58();
                (unk_1D5621070)(v445);
                v446 = OUTLINED_FUNCTION_26_27();
                (unk_1D5621070)(v446);
                sub_1D4E50004(v440, &qword_1EC7EC528, &unk_1D5621070);
                if ((v436 & 1) == 0)
                {
                  goto LABEL_30;
                }

LABEL_156:
                v447 = v784[24];
                OUTLINED_FUNCTION_147_6();
                OUTLINED_FUNCTION_61_22();
                v448 = v789;
                OUTLINED_FUNCTION_45_27();
                sub_1D4F1C460(v449, v450, v451, v452);
                OUTLINED_FUNCTION_13_61();
                OUTLINED_FUNCTION_29_39(v448);
                if (v245)
                {
                  OUTLINED_FUNCTION_29_39(v789 + v427);
                  if (v245)
                  {
                    sub_1D4E50004(v789, &qword_1EC7EA3B8, &unk_1D561E370);
                    goto LABEL_166;
                  }
                }

                else
                {
                  v453 = v789;
                  sub_1D4F1C460(v789, v790, &qword_1EC7EA3B8, &unk_1D561E370);
                  OUTLINED_FUNCTION_29_39(v453 + v427);
                  if (!v454)
                  {
                    OUTLINED_FUNCTION_33_1();
                    v456 = v789;
                    v457 = OUTLINED_FUNCTION_128_8();
                    v458(v457);
                    OUTLINED_FUNCTION_2_107();
                    sub_1D5218BD0(v459, v460);
                    OUTLINED_FUNCTION_72_15();
                    v461 = OUTLINED_FUNCTION_41_4();
                    (v427)(v461);
                    v462 = OUTLINED_FUNCTION_132_1();
                    (v427)(v462);
                    sub_1D4E50004(v456, &qword_1EC7EA3B8, &unk_1D561E370);
                    if ((v453 & 1) == 0)
                    {
                      goto LABEL_30;
                    }

LABEL_166:
                    v463 = v784[25];
                    OUTLINED_FUNCTION_147_6();
                    OUTLINED_FUNCTION_61_22();
                    v464 = v796;
                    OUTLINED_FUNCTION_45_27();
                    sub_1D4F1C460(v465, v466, v467, v468);
                    OUTLINED_FUNCTION_13_61();
                    OUTLINED_FUNCTION_29_39(v464);
                    if (v245)
                    {
                      OUTLINED_FUNCTION_29_39(v796 + v427);
                      if (v245)
                      {
                        sub_1D4E50004(v796, &qword_1EC7EA3B8, &unk_1D561E370);
                        goto LABEL_176;
                      }
                    }

                    else
                    {
                      v469 = v796;
                      sub_1D4F1C460(v796, v797, &qword_1EC7EA3B8, &unk_1D561E370);
                      OUTLINED_FUNCTION_29_39(v469 + v427);
                      if (!v470)
                      {
                        OUTLINED_FUNCTION_33_1();
                        v472 = v796;
                        v473 = OUTLINED_FUNCTION_128_8();
                        v474(v473);
                        OUTLINED_FUNCTION_2_107();
                        sub_1D5218BD0(v475, v476);
                        OUTLINED_FUNCTION_72_15();
                        v477 = OUTLINED_FUNCTION_41_4();
                        (v427)(v477);
                        v478 = OUTLINED_FUNCTION_132_1();
                        (v427)(v478);
                        sub_1D4E50004(v472, &qword_1EC7EA3B8, &unk_1D561E370);
                        if ((v469 & 1) == 0)
                        {
                          goto LABEL_30;
                        }

LABEL_176:
                        v479 = v784[26];
                        v480 = *(v806 + 48);
                        v481 = &qword_1EC7EF5D8;
                        OUTLINED_FUNCTION_61_22();
                        OUTLINED_FUNCTION_45_27();
                        sub_1D4F1C460(v482, v483, v484, v485);
                        OUTLINED_FUNCTION_13_61();
                        v486 = OUTLINED_FUNCTION_105();
                        OUTLINED_FUNCTION_57(v486, v487, v813);
                        if (v245)
                        {
                          v488 = OUTLINED_FUNCTION_70_3(v808);
                          OUTLINED_FUNCTION_57(v488, v489, v813);
                          if (v245)
                          {
                            sub_1D4E50004(v808, &qword_1EC7EF5D8, &unk_1D5632160);
                            goto LABEL_186;
                          }
                        }

                        else
                        {
                          v481 = v808;
                          sub_1D4F1C460(v808, v807, &qword_1EC7EF5D8, &unk_1D5632160);
                          v490 = OUTLINED_FUNCTION_69_1();
                          OUTLINED_FUNCTION_57(v490, v491, v813);
                          if (!v492)
                          {
                            OUTLINED_FUNCTION_40_3();
                            v493 = v808;
                            v494 = OUTLINED_FUNCTION_130_7();
                            v495(v494);
                            OUTLINED_FUNCTION_70_15();
                            sub_1D5218BD0(v496, v497);
                            OUTLINED_FUNCTION_75_3();
                            v498 = OUTLINED_FUNCTION_9_58();
                            (unk_1D5632160)(v498);
                            v499 = OUTLINED_FUNCTION_26_27();
                            (unk_1D5632160)(v499);
                            sub_1D4E50004(v493, &qword_1EC7EF5D8, &unk_1D5632160);
                            if ((v481 & 1) == 0)
                            {
                              goto LABEL_30;
                            }

LABEL_186:
                            OUTLINED_FUNCTION_123_6(v784[27]);
                            if (&unk_1D5632160)
                            {
                              if (!v481)
                              {
                                goto LABEL_30;
                              }

                              OUTLINED_FUNCTION_63_1();
                              sub_1D4EF84DC();
                              OUTLINED_FUNCTION_120_2();
                              if ((&unk_1D5632160 & 1) == 0)
                              {
                                goto LABEL_30;
                              }
                            }

                            else if (v481)
                            {
                              goto LABEL_30;
                            }

                            v500 = v784[28];
                            v501 = *(v862 + 48);
                            OUTLINED_FUNCTION_61_22();
                            OUTLINED_FUNCTION_45_27();
                            sub_1D4F1C460(v502, v503, v504, v505);
                            OUTLINED_FUNCTION_13_61();
                            v506 = OUTLINED_FUNCTION_105();
                            OUTLINED_FUNCTION_57(v506, v507, v863);
                            if (v245)
                            {
                              v508 = OUTLINED_FUNCTION_70_3(v805);
                              OUTLINED_FUNCTION_57(v508, v509, v863);
                              if (v245)
                              {
                                sub_1D4E50004(v805, &qword_1EC7EAC98, &unk_1D561DA80);
                                goto LABEL_201;
                              }
                            }

                            else
                            {
                              v510 = v805;
                              sub_1D4F1C460(v805, v804, &qword_1EC7EAC98, &unk_1D561DA80);
                              v511 = OUTLINED_FUNCTION_69_1();
                              OUTLINED_FUNCTION_57(v511, v512, v863);
                              if (!v513)
                              {
                                OUTLINED_FUNCTION_40_3();
                                v514 = v805;
                                v515(v859, v805 + v501, v863);
                                OUTLINED_FUNCTION_12_60();
                                sub_1D5218BD0(v516, v517);
                                OUTLINED_FUNCTION_75_3();
                                v518 = OUTLINED_FUNCTION_9_58();
                                (unk_1D561DA80)(v518);
                                v519 = OUTLINED_FUNCTION_26_27();
                                (unk_1D561DA80)(v519);
                                sub_1D4E50004(v514, &qword_1EC7EAC98, &unk_1D561DA80);
                                if ((v510 & 1) == 0)
                                {
                                  goto LABEL_30;
                                }

LABEL_201:
                                v520 = v784[29];
                                v521 = *(v785 + v520);
                                v522 = *(v785 + v520 + 8);
                                v523 = *(v785 + v520 + 16);
                                v524 = *(v785 + v520 + 24);
                                v525 = *(v785 + v520 + 32);
                                v526 = v871 + v520;
                                v527 = *v526;
                                *&v888 = v521;
                                *(&v888 + 1) = v522;
                                *&v889 = v523;
                                *(&v889 + 1) = v524;
                                *&v890 = v525;
                                *(&v890 + 1) = v527;
                                v528 = *(v526 + 8);
                                v529 = *(v526 + 24);
                                v891 = v528;
                                v892 = v529;
                                if (v522 == 2)
                                {
                                  if (v528 != 2)
                                  {
                                    goto LABEL_30;
                                  }
                                }

                                else
                                {
                                  *&v906 = v521;
                                  *(&v906 + 1) = v522;
                                  *&v907 = v523;
                                  *(&v907 + 1) = v524;
                                  *&v908 = v525;
                                  if (v528 == 2 || !static PlaybackPosition.== infix(_:_:)(&v906, &v890 + 8))
                                  {
                                    goto LABEL_30;
                                  }
                                }

                                v530 = v784[30];
                                v531 = *(v814 + 48);
                                OUTLINED_FUNCTION_61_22();
                                OUTLINED_FUNCTION_45_27();
                                sub_1D4F1C460(v532, v533, v534, v535);
                                OUTLINED_FUNCTION_13_61();
                                v536 = OUTLINED_FUNCTION_105();
                                OUTLINED_FUNCTION_57(v536, v537, v819);
                                if (v245)
                                {
                                  v538 = OUTLINED_FUNCTION_70_3(v816);
                                  OUTLINED_FUNCTION_57(v538, v539, v819);
                                  if (v245)
                                  {
                                    sub_1D4E50004(v816, &qword_1EC7EB5C0, &unk_1D56223C0);
                                    goto LABEL_216;
                                  }
                                }

                                else
                                {
                                  v540 = v816;
                                  sub_1D4F1C460(v816, v815, &qword_1EC7EB5C0, &unk_1D56223C0);
                                  v541 = OUTLINED_FUNCTION_69_1();
                                  OUTLINED_FUNCTION_57(v541, v542, v819);
                                  if (!v543)
                                  {
                                    OUTLINED_FUNCTION_40_3();
                                    v544 = v816;
                                    v545 = OUTLINED_FUNCTION_130_7();
                                    v531 = v819;
                                    v546(v545);
                                    OUTLINED_FUNCTION_67_24();
                                    sub_1D5218BD0(v547, v548);
                                    OUTLINED_FUNCTION_75_3();
                                    v549 = OUTLINED_FUNCTION_9_58();
                                    (unk_1D56223C0)(v549);
                                    v550 = OUTLINED_FUNCTION_26_27();
                                    (unk_1D56223C0)(v550);
                                    sub_1D4E50004(v544, &qword_1EC7EB5C0, &unk_1D56223C0);
                                    if ((v540 & 1) == 0)
                                    {
                                      goto LABEL_30;
                                    }

LABEL_216:
                                    v551 = v784[31];
                                    OUTLINED_FUNCTION_147_6();
                                    OUTLINED_FUNCTION_61_22();
                                    v552 = v810;
                                    OUTLINED_FUNCTION_45_27();
                                    sub_1D4F1C460(v553, v554, v555, v556);
                                    OUTLINED_FUNCTION_13_61();
                                    OUTLINED_FUNCTION_29_39(v552);
                                    if (v245)
                                    {
                                      OUTLINED_FUNCTION_29_39(v810 + v531);
                                      if (v245)
                                      {
                                        sub_1D4E50004(v810, &qword_1EC7EA3B8, &unk_1D561E370);
                                        goto LABEL_226;
                                      }
                                    }

                                    else
                                    {
                                      v557 = v810;
                                      sub_1D4F1C460(v810, v812, &qword_1EC7EA3B8, &unk_1D561E370);
                                      OUTLINED_FUNCTION_29_39(v557 + v531);
                                      if (!v558)
                                      {
                                        OUTLINED_FUNCTION_40_3();
                                        v560 = v810;
                                        v561 = OUTLINED_FUNCTION_128_8();
                                        v562(v561);
                                        OUTLINED_FUNCTION_2_107();
                                        sub_1D5218BD0(v563, v564);
                                        OUTLINED_FUNCTION_119_7();
                                        v565 = OUTLINED_FUNCTION_9_58();
                                        (unk_1D561E370)(v565);
                                        v566 = OUTLINED_FUNCTION_215();
                                        (unk_1D561E370)(v566);
                                        sub_1D4E50004(v560, &qword_1EC7EA3B8, &unk_1D561E370);
                                        if ((v557 & 1) == 0)
                                        {
                                          goto LABEL_30;
                                        }

LABEL_226:
                                        v567 = v784[32];
                                        OUTLINED_FUNCTION_24_45(v785);
                                        if (v570)
                                        {
                                          if (!v568)
                                          {
                                            goto LABEL_30;
                                          }

                                          OUTLINED_FUNCTION_31_0(v569);
                                          v573 = v245 && v571 == v572;
                                          if (!v573 && (sub_1D5616168() & 1) == 0)
                                          {
                                            goto LABEL_30;
                                          }
                                        }

                                        else if (v568)
                                        {
                                          goto LABEL_30;
                                        }

                                        v574 = v784[33];
                                        OUTLINED_FUNCTION_24_45(v785);
                                        if (v577)
                                        {
                                          if (!v575)
                                          {
                                            goto LABEL_30;
                                          }

                                          OUTLINED_FUNCTION_31_0(v576);
                                          v580 = v245 && v578 == v579;
                                          if (!v580 && (sub_1D5616168() & 1) == 0)
                                          {
                                            goto LABEL_30;
                                          }
                                        }

                                        else if (v575)
                                        {
                                          goto LABEL_30;
                                        }

                                        v581 = v784[34];
                                        OUTLINED_FUNCTION_24_45(v785);
                                        if (v584)
                                        {
                                          if (!v582)
                                          {
                                            goto LABEL_30;
                                          }

                                          OUTLINED_FUNCTION_31_0(v583);
                                          v587 = v245 && v585 == v586;
                                          if (!v587 && (sub_1D5616168() & 1) == 0)
                                          {
                                            goto LABEL_30;
                                          }
                                        }

                                        else if (v582)
                                        {
                                          goto LABEL_30;
                                        }

                                        v588 = v784[35];
                                        v589 = (v785 + v588);
                                        v590 = *(v785 + v588 + 16);
                                        v902 = *(v785 + v588);
                                        v903 = v590;
                                        v591 = *(v785 + v588 + 16);
                                        v592 = *(v785 + v588 + 48);
                                        v904 = *(v785 + v588 + 32);
                                        v905 = v592;
                                        v593 = (v871 + v588);
                                        v594 = v593[1];
                                        v906 = *v593;
                                        v907 = v594;
                                        v595 = v593[1];
                                        v596 = v593[3];
                                        v908 = v593[2];
                                        v909 = v596;
                                        v899 = v591;
                                        v900 = v904;
                                        v901 = v589[3];
                                        v597 = v902;
                                        v598 = v906;
                                        v896 = v595;
                                        v897 = v908;
                                        v898 = v593[3];
                                        if (*(&v902 + 1))
                                        {
                                          v888 = v902;
                                          v599 = v589[2];
                                          v889 = v589[1];
                                          v890 = v599;
                                          v891 = v589[3];
                                          v884 = v902;
                                          v885 = v889;
                                          v886 = v599;
                                          v887 = v891;
                                          if (*(&v906 + 1))
                                          {
                                            v600 = v593[2];
                                            v881 = v593[1];
                                            v882 = v600;
                                            v883 = v593[3];
                                            v880 = v906;
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v601, v602, v603, v604);
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v605, v606, v607, v608);
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v609, v610, v611, v612);
                                            v613 = static VideoSupportedLocales.== infix(_:_:)(&v884, &v880);
                                            v878[0] = v880;
                                            v878[1] = v881;
                                            v878[2] = v882;
                                            v878[3] = v883;
                                            sub_1D5000CD8(v878);
                                            v879[0] = v884;
                                            v879[1] = v885;
                                            v879[2] = v886;
                                            v879[3] = v887;
                                            sub_1D5000CD8(v879);
                                            v880 = v597;
                                            v881 = v899;
                                            v882 = v900;
                                            v883 = v901;
                                            sub_1D4E50004(&v880, &qword_1EC7EDBA0, &unk_1D5637EA0);
                                            if ((v613 & 1) == 0)
                                            {
                                              goto LABEL_30;
                                            }

LABEL_262:
                                            v643 = v784[36];
                                            OUTLINED_FUNCTION_24_45(v785);
                                            if (v646)
                                            {
                                              if (!v644)
                                              {
                                                goto LABEL_30;
                                              }

                                              OUTLINED_FUNCTION_31_0(v645);
                                              v649 = v245 && v647 == v648;
                                              if (!v649 && (sub_1D5616168() & 1) == 0)
                                              {
                                                goto LABEL_30;
                                              }
                                            }

                                            else if (v644)
                                            {
                                              goto LABEL_30;
                                            }

                                            v650 = v784[37];
                                            v651 = *(v855 + 48);
                                            OUTLINED_FUNCTION_61_22();
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v652, v653, v654, v655);
                                            OUTLINED_FUNCTION_13_61();
                                            v656 = OUTLINED_FUNCTION_105();
                                            OUTLINED_FUNCTION_57(v656, v657, v857);
                                            if (v245)
                                            {
                                              v658 = OUTLINED_FUNCTION_70_3(v821);
                                              OUTLINED_FUNCTION_57(v658, v659, v857);
                                              if (v245)
                                              {
                                                sub_1D4E50004(v821, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                goto LABEL_281;
                                              }
                                            }

                                            else
                                            {
                                              v660 = v821;
                                              sub_1D4F1C460(v821, v820, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                              v661 = OUTLINED_FUNCTION_69_1();
                                              OUTLINED_FUNCTION_57(v661, v662, v857);
                                              if (!v663)
                                              {
                                                OUTLINED_FUNCTION_40_3();
                                                v664 = v821;
                                                v665(v852, v821 + v651, v857);
                                                OUTLINED_FUNCTION_10_73();
                                                sub_1D5218BD0(v666, v667);
                                                OUTLINED_FUNCTION_75_3();
                                                v668 = OUTLINED_FUNCTION_9_58();
                                                (unk_1D561D1D0)(v668);
                                                v669 = OUTLINED_FUNCTION_26_27();
                                                (unk_1D561D1D0)(v669);
                                                sub_1D4E50004(v664, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                if ((v660 & 1) == 0)
                                                {
                                                  goto LABEL_30;
                                                }

LABEL_281:
                                                v670 = v784[38];
                                                v671 = *(v822 + 48);
                                                OUTLINED_FUNCTION_61_22();
                                                OUTLINED_FUNCTION_45_27();
                                                sub_1D4F1C460(v672, v673, v674, v675);
                                                OUTLINED_FUNCTION_13_61();
                                                v676 = OUTLINED_FUNCTION_105();
                                                OUTLINED_FUNCTION_57(v676, v677, v827);
                                                if (v245)
                                                {
                                                  v678 = OUTLINED_FUNCTION_70_3(v824);
                                                  OUTLINED_FUNCTION_57(v678, v679, v827);
                                                  if (v245)
                                                  {
                                                    sub_1D4E50004(v824, &qword_1EC7EA788, &unk_1D56223A0);
                                                    goto LABEL_291;
                                                  }
                                                }

                                                else
                                                {
                                                  v680 = v824;
                                                  sub_1D4F1C460(v824, v823, &qword_1EC7EA788, &unk_1D56223A0);
                                                  v681 = OUTLINED_FUNCTION_69_1();
                                                  OUTLINED_FUNCTION_57(v681, v682, v827);
                                                  if (!v683)
                                                  {
                                                    OUTLINED_FUNCTION_40_3();
                                                    v684 = v824;
                                                    v685 = OUTLINED_FUNCTION_130_7();
                                                    v686(v685);
                                                    sub_1D4F217AC();
                                                    OUTLINED_FUNCTION_75_3();
                                                    v687 = OUTLINED_FUNCTION_9_58();
                                                    (unk_1D56223A0)(v687);
                                                    v688 = OUTLINED_FUNCTION_26_27();
                                                    (unk_1D56223A0)(v688);
                                                    sub_1D4E50004(v684, &qword_1EC7EA788, &unk_1D56223A0);
                                                    if ((v680 & 1) == 0)
                                                    {
                                                      goto LABEL_30;
                                                    }

LABEL_291:
                                                    v689 = v784[39];
                                                    v690 = *(v838 + 48);
                                                    OUTLINED_FUNCTION_61_22();
                                                    v691 = v828;
                                                    OUTLINED_FUNCTION_45_27();
                                                    sub_1D4F1C460(v692, v693, v694, v695);
                                                    OUTLINED_FUNCTION_13_61();
                                                    OUTLINED_FUNCTION_28_44(v691);
                                                    if (v245)
                                                    {
                                                      OUTLINED_FUNCTION_28_44(v690 + v828);
                                                      if (v245)
                                                      {
                                                        sub_1D4E50004(v828, &qword_1EC7EF308, &qword_1D5631048);
                                                        goto LABEL_301;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v696 = v828;
                                                      sub_1D4F1C460(v828, v829, &qword_1EC7EF308, &qword_1D5631048);
                                                      OUTLINED_FUNCTION_28_44(v690 + v696);
                                                      if (!v697)
                                                      {
                                                        OUTLINED_FUNCTION_33_1();
                                                        v698 = v828;
                                                        v699 = OUTLINED_FUNCTION_129_5();
                                                        v700(v699);
                                                        sub_1D5218A68();
                                                        OUTLINED_FUNCTION_72_15();
                                                        v701 = OUTLINED_FUNCTION_41_4();
                                                        v690(v701);
                                                        v702 = OUTLINED_FUNCTION_132_1();
                                                        v690(v702);
                                                        sub_1D4E50004(v698, &qword_1EC7EF308, &qword_1D5631048);
                                                        if ((v696 & 1) == 0)
                                                        {
                                                          goto LABEL_30;
                                                        }

LABEL_301:
                                                        v703 = v784[40];
                                                        v704 = *(v838 + 48);
                                                        OUTLINED_FUNCTION_61_22();
                                                        v705 = v830;
                                                        OUTLINED_FUNCTION_45_27();
                                                        sub_1D4F1C460(v706, v707, v708, v709);
                                                        OUTLINED_FUNCTION_13_61();
                                                        OUTLINED_FUNCTION_28_44(v705);
                                                        if (v245)
                                                        {
                                                          OUTLINED_FUNCTION_28_44(v704 + v830);
                                                          if (v245)
                                                          {
                                                            sub_1D4E50004(v830, &qword_1EC7EF308, &qword_1D5631048);
                                                            goto LABEL_311;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v710 = v830;
                                                          sub_1D4F1C460(v830, v831, &qword_1EC7EF308, &qword_1D5631048);
                                                          OUTLINED_FUNCTION_28_44(v704 + v710);
                                                          if (!v711)
                                                          {
                                                            OUTLINED_FUNCTION_33_1();
                                                            v712 = v830;
                                                            v713 = OUTLINED_FUNCTION_129_5();
                                                            v714(v713);
                                                            sub_1D5218A68();
                                                            OUTLINED_FUNCTION_72_15();
                                                            v715 = OUTLINED_FUNCTION_41_4();
                                                            v704(v715);
                                                            v716 = OUTLINED_FUNCTION_132_1();
                                                            v704(v716);
                                                            sub_1D4E50004(v712, &qword_1EC7EF308, &qword_1D5631048);
                                                            if ((v710 & 1) == 0)
                                                            {
                                                              goto LABEL_30;
                                                            }

LABEL_311:
                                                            v717 = v784[41];
                                                            v718 = *(v832 + 48);
                                                            OUTLINED_FUNCTION_61_22();
                                                            OUTLINED_FUNCTION_45_27();
                                                            sub_1D4F1C460(v719, v720, v721, v722);
                                                            OUTLINED_FUNCTION_13_61();
                                                            v723 = OUTLINED_FUNCTION_105();
                                                            OUTLINED_FUNCTION_57(v723, v724, v837);
                                                            if (v245)
                                                            {
                                                              v725 = OUTLINED_FUNCTION_70_3(v834);
                                                              OUTLINED_FUNCTION_57(v725, v726, v837);
                                                              if (v245)
                                                              {
                                                                sub_1D4E50004(v834, &off_1EC7EB5B0, &unk_1D5632170);
                                                                goto LABEL_321;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v727 = v834;
                                                              sub_1D4F1C460(v834, v833, &off_1EC7EB5B0, &unk_1D5632170);
                                                              v728 = OUTLINED_FUNCTION_69_1();
                                                              OUTLINED_FUNCTION_57(v728, v729, v837);
                                                              if (!v730)
                                                              {
                                                                OUTLINED_FUNCTION_40_3();
                                                                v731 = v834;
                                                                v732 = OUTLINED_FUNCTION_130_7();
                                                                v733(v732);
                                                                sub_1D512BB04();
                                                                OUTLINED_FUNCTION_75_3();
                                                                v734 = OUTLINED_FUNCTION_9_58();
                                                                (unk_1D5632170)(v734);
                                                                v735 = OUTLINED_FUNCTION_26_27();
                                                                (unk_1D5632170)(v735);
                                                                sub_1D4E50004(v731, &off_1EC7EB5B0, &unk_1D5632170);
                                                                if ((v727 & 1) == 0)
                                                                {
                                                                  goto LABEL_30;
                                                                }

LABEL_321:
                                                                v736 = v784[42];
                                                                v737 = *(v839 + 48);
                                                                OUTLINED_FUNCTION_61_22();
                                                                OUTLINED_FUNCTION_45_27();
                                                                sub_1D4F1C460(v738, v739, v740, v741);
                                                                OUTLINED_FUNCTION_13_61();
                                                                v742 = OUTLINED_FUNCTION_105();
                                                                OUTLINED_FUNCTION_57(v742, v743, v783);
                                                                if (v245)
                                                                {
                                                                  v744 = OUTLINED_FUNCTION_70_3(v844);
                                                                  OUTLINED_FUNCTION_57(v744, v745, v783);
                                                                  if (v245)
                                                                  {
                                                                    sub_1D4E50004(v844, &qword_1EC7EB620, &unk_1D561E5B0);
LABEL_331:
                                                                    v755 = v784[43];
                                                                    v756 = *(v838 + 48);
                                                                    v757 = &qword_1EC7EF308;
                                                                    OUTLINED_FUNCTION_61_22();
                                                                    v758 = v840;
                                                                    OUTLINED_FUNCTION_45_27();
                                                                    sub_1D4F1C460(v759, v760, v761, v762);
                                                                    OUTLINED_FUNCTION_13_61();
                                                                    OUTLINED_FUNCTION_28_44(v758);
                                                                    if (v245)
                                                                    {
                                                                      OUTLINED_FUNCTION_28_44(v840 + v756);
                                                                      if (v245)
                                                                      {
                                                                        sub_1D4E50004(v840, &qword_1EC7EF308, &qword_1D5631048);
LABEL_341:
                                                                        OUTLINED_FUNCTION_123_6(v784[44]);
                                                                        if (&qword_1D5631048)
                                                                        {
                                                                          if (!v757)
                                                                          {
                                                                            goto LABEL_30;
                                                                          }

                                                                          OUTLINED_FUNCTION_63_1();
                                                                          sub_1D4EF7D1C();
                                                                          OUTLINED_FUNCTION_120_2();
                                                                          if ((&qword_1D5631048 & 1) == 0)
                                                                          {
                                                                            goto LABEL_30;
                                                                          }
                                                                        }

                                                                        else if (v757)
                                                                        {
                                                                          goto LABEL_30;
                                                                        }

                                                                        OUTLINED_FUNCTION_53_22(v784[45]);
                                                                        sub_1D4EF6F7C();
                                                                        if (v769)
                                                                        {
                                                                          v770 = v784[46];
                                                                          if (sub_1D560D6E8())
                                                                          {
                                                                            v771 = v784[47];
                                                                            if (sub_1D4F3B22C())
                                                                            {
                                                                              v772 = v784[48];
                                                                              OUTLINED_FUNCTION_24_45(v785);
                                                                              if (v775)
                                                                              {
                                                                                if (v773)
                                                                                {
                                                                                  OUTLINED_FUNCTION_31_0(v774);
                                                                                  v778 = v245 && v776 == v777;
                                                                                  if (v778 || (sub_1D5616168() & 1) != 0)
                                                                                  {
LABEL_358:
                                                                                    OUTLINED_FUNCTION_53_22(v784[49]);
                                                                                    sub_1D4F286E0();
                                                                                    if (v779)
                                                                                    {
                                                                                      OUTLINED_FUNCTION_53_22(v784[50]);
                                                                                      sub_1D4F286E0();
                                                                                      if (v780)
                                                                                      {
                                                                                        OUTLINED_FUNCTION_53_22(v784[51]);
                                                                                        sub_1D4F286E0();
                                                                                        if (v781)
                                                                                        {
                                                                                          OUTLINED_FUNCTION_53_22(v784[52]);
                                                                                          sub_1D4F286E0();
                                                                                          return v270 & 1;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }

                                                                              else if (!v773)
                                                                              {
                                                                                goto LABEL_358;
                                                                              }
                                                                            }
                                                                          }
                                                                        }

LABEL_30:
                                                                        v270 = 0;
                                                                        return v270 & 1;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v757 = v840;
                                                                      sub_1D4F1C460(v840, v841, &qword_1EC7EF308, &qword_1D5631048);
                                                                      OUTLINED_FUNCTION_28_44(v757 + v756);
                                                                      if (!v763)
                                                                      {
                                                                        OUTLINED_FUNCTION_40_3();
                                                                        v764 = v840;
                                                                        v765 = OUTLINED_FUNCTION_129_5();
                                                                        v766(v765);
                                                                        sub_1D5218A68();
                                                                        OUTLINED_FUNCTION_119_7();
                                                                        v767 = OUTLINED_FUNCTION_9_58();
                                                                        (qword_1D5631048)(v767);
                                                                        v768 = OUTLINED_FUNCTION_215();
                                                                        (qword_1D5631048)(v768);
                                                                        sub_1D4E50004(v764, &qword_1EC7EF308, &qword_1D5631048);
                                                                        if ((v757 & 1) == 0)
                                                                        {
                                                                          goto LABEL_30;
                                                                        }

                                                                        goto LABEL_341;
                                                                      }

                                                                      (*(v846 + 8))(v841, v847);
                                                                    }

                                                                    v251 = &qword_1EC7F1E98;
                                                                    v252 = &qword_1D5644D08;
                                                                    v253 = v840;
LABEL_29:
                                                                    sub_1D4E50004(v253, v251, v252);
                                                                    goto LABEL_30;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v746 = v844;
                                                                  sub_1D4F1C460(v844, v843, &qword_1EC7EB620, &unk_1D561E5B0);
                                                                  v747 = OUTLINED_FUNCTION_69_1();
                                                                  OUTLINED_FUNCTION_57(v747, v748, v783);
                                                                  if (!v749)
                                                                  {
                                                                    OUTLINED_FUNCTION_40_3();
                                                                    v750 = v844;
                                                                    v751 = OUTLINED_FUNCTION_130_7();
                                                                    v752(v751);
                                                                    sub_1D4F21914();
                                                                    OUTLINED_FUNCTION_75_3();
                                                                    v753 = OUTLINED_FUNCTION_9_58();
                                                                    (unk_1D561E5B0)(v753);
                                                                    v754 = OUTLINED_FUNCTION_26_27();
                                                                    (unk_1D561E5B0)(v754);
                                                                    sub_1D4E50004(v750, &qword_1EC7EB620, &unk_1D561E5B0);
                                                                    if ((v746 & 1) == 0)
                                                                    {
                                                                      goto LABEL_30;
                                                                    }

                                                                    goto LABEL_331;
                                                                  }

                                                                  (*(v848 + 8))(v843, v783);
                                                                }

                                                                v251 = &qword_1EC7EB670;
                                                                v252 = qword_1D561E830;
                                                                v253 = v844;
                                                                goto LABEL_29;
                                                              }

                                                              (*(v836 + 8))(v833, v837);
                                                            }

                                                            v251 = &qword_1EC7EF608;
                                                            v252 = &unk_1D5632420;
                                                            v253 = v834;
                                                            goto LABEL_29;
                                                          }

                                                          (*(v846 + 8))(v831, v847);
                                                        }

                                                        v251 = &qword_1EC7F1E98;
                                                        v252 = &qword_1D5644D08;
                                                        v253 = v830;
                                                        goto LABEL_29;
                                                      }

                                                      (*(v846 + 8))(v829, v847);
                                                    }

                                                    v251 = &qword_1EC7F1E98;
                                                    v252 = &qword_1D5644D08;
                                                    v253 = v828;
                                                    goto LABEL_29;
                                                  }

                                                  (*(v826 + 8))(v823, v827);
                                                }

                                                v251 = &qword_1EC7EB668;
                                                v252 = &qword_1D5637E60;
                                                v253 = v824;
                                                goto LABEL_29;
                                              }

                                              (*(v854 + 8))(v820, v857);
                                            }

                                            v251 = &qword_1EC7E9FB0;
                                            v252 = &qword_1D562C590;
                                            v253 = v821;
                                            goto LABEL_29;
                                          }

                                          v880 = v888;
                                          v881 = v889;
                                          v882 = v890;
                                          v883 = v891;
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v622, v623, v624, v625);
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v626, v627, v628, v629);
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v630, v631, v632, v633);
                                          sub_1D5000CD8(&v880);
                                        }

                                        else
                                        {
                                          if (!*(&v906 + 1))
                                          {
                                            v888 = v902;
                                            v634 = v589[2];
                                            v889 = v589[1];
                                            v890 = v634;
                                            v891 = v589[3];
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v635, v636, v637, v638);
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v639, v640, v641, v642);
                                            sub_1D4E50004(&v888, &qword_1EC7EDBA0, &unk_1D5637EA0);
                                            goto LABEL_262;
                                          }

                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v614, v615, v616, v617);
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v618, v619, v620, v621);
                                        }

                                        v888 = v597;
                                        v889 = v899;
                                        v890 = v900;
                                        v891 = v901;
                                        v892 = v598;
                                        v893 = v896;
                                        v894 = v897;
                                        v895 = v898;
                                        v251 = &unk_1EC7F04C0;
                                        v252 = &unk_1D5644D20;
                                        v253 = &v888;
                                        goto LABEL_29;
                                      }

                                      OUTLINED_FUNCTION_146_4();
                                      v559(v812, v870);
                                    }

                                    v251 = &qword_1EC7EB578;
                                    v252 = &unk_1D5644D10;
                                    v253 = v810;
                                    goto LABEL_29;
                                  }

                                  (*(v818 + 8))(v815, v819);
                                }

                                v251 = &qword_1EC7EF610;
                                v252 = &unk_1D5637E70;
                                v253 = v816;
                                goto LABEL_29;
                              }

                              v860[1](v804, v863);
                            }

                            v251 = &qword_1EC7EF648;
                            v252 = &unk_1D5632470;
                            v253 = v805;
                            goto LABEL_29;
                          }

                          (*(v811 + 8))(v807, v813);
                        }

                        v251 = &qword_1EC7EF618;
                        v252 = &unk_1D5632430;
                        v253 = v808;
                        goto LABEL_29;
                      }

                      OUTLINED_FUNCTION_146_4();
                      v471(v797, v870);
                    }

                    v251 = &qword_1EC7EB578;
                    v252 = &unk_1D5644D10;
                    v253 = v796;
                    goto LABEL_29;
                  }

                  OUTLINED_FUNCTION_146_4();
                  v455(v790, v870);
                }

                v251 = &qword_1EC7EB578;
                v252 = &unk_1D5644D10;
                v253 = v789;
                goto LABEL_29;
              }

              (*(v802 + 8))(v799, v803);
            }

            v251 = &qword_1EC7EF620;
            v252 = &unk_1D5637E80;
            v253 = v800;
            goto LABEL_29;
          }

          (*(v794 + 8))(v791, v795);
        }

        v251 = &qword_1EC7EF628;
        v252 = &unk_1D5632440;
        v253 = v792;
        goto LABEL_29;
      }

      (*(v787 + 8))(v850, v851);
    }

    v251 = &qword_1EC7F04B8;
    v252 = &unk_1D5637E90;
    v253 = v853;
    goto LABEL_29;
  }

  v270 = 0;
  if (v382 != 2 && ((v382 ^ v383) & 1) == 0)
  {
    goto LABEL_126;
  }

  return v270 & 1;
}

void sub_1D52168D8(uint64_t a1)
{
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4(v358);
  v340 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v355 = v13;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v353);
  v339 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v352 = v23;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_4(v357);
  v359 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v356 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v30 = OUTLINED_FUNCTION_22(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v354 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  v351 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  v350 = v37;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v349);
  v338 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v47);
  v347[0] = sub_1D56109F8();
  v48 = OUTLINED_FUNCTION_4(v347[0]);
  v337 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v57);
  v346 = sub_1D5614A78();
  v58 = OUTLINED_FUNCTION_4(v346);
  v336 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v67);
  v344 = sub_1D56134E8();
  v68 = OUTLINED_FUNCTION_4(v344);
  v335 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v77);
  v343 = sub_1D5613198();
  v78 = OUTLINED_FUNCTION_4(v343);
  v334 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v87);
  v342 = sub_1D5613178();
  v88 = OUTLINED_FUNCTION_4(v342);
  v333 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v97);
  v364 = sub_1D560C0A8();
  v98 = OUTLINED_FUNCTION_4(v364);
  v347[3] = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v104 = OUTLINED_FUNCTION_22(v103);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v108);
  v363 = sub_1D5610978();
  v109 = OUTLINED_FUNCTION_4(v363);
  v345 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v115 = OUTLINED_FUNCTION_22(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v119);
  v120 = sub_1D560C328();
  v121 = OUTLINED_FUNCTION_4(v120);
  v361 = v122;
  v362 = v121;
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  v360 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v127 = OUTLINED_FUNCTION_22(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v133);
  v341 = sub_1D560F928();
  v134 = OUTLINED_FUNCTION_4(v341);
  v332 = v135;
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v139);
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v330 - v143;
  v145 = sub_1D56140F8();
  v146 = OUTLINED_FUNCTION_4(v145);
  v148 = v147;
  v150 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5();
  v153 = v152 - v151;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v154);
  v156 = *(v155 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v157);
  v159 = &v330 - v158;
  if (v1[1])
  {
    v2 = *v1;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v160 = type metadata accessor for MusicMoviePropertyProvider();
  sub_1D4F1C460(v1 + v160[5], v159, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v159, 1, v145);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v148 + 32))(v153, v159, v145);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_69_19();
    sub_1D5218BD0(v162, v163);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v148 + 8))(v153, v145);
  }

  sub_1D4F1C460(v1 + v160[6], v144, &qword_1EC7EDB98, L"X\b\a");
  v164 = OUTLINED_FUNCTION_105();
  v165 = v341;
  OUTLINED_FUNCTION_57(v164, v166, v341);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v167 = v332;
    OUTLINED_FUNCTION_113_9();
    v2 = v331;
    v168(v331, v144, v165);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_68_16();
    sub_1D5218BD0(v169, v170);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v167 + 8))(v2, v165);
  }

  if (*(v1 + v160[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F09AC8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v171 = *(v1 + v160[8]);
  if (v171)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07EA0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v160[9]);
  if (v171)
  {
    OUTLINED_FUNCTION_30_0(v172);
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[10], &qword_1EC7EA3B8, &unk_1D561E370, &v358);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v173 = v361;
    v174 = OUTLINED_FUNCTION_40_33(v361);
    v175(v174);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v176, v177);
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8();
    v178 = *(v173 + 8);
    v179 = OUTLINED_FUNCTION_33_18();
    v180(v179);
  }

  v181 = v1 + v160[11];
  if (v181[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v182 = *v181;
    OUTLINED_FUNCTION_27();
    if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v183 = v182;
    }

    else
    {
      v183 = 0;
    }

    MEMORY[0x1DA6EC100](v183);
  }

  if (*(v1 + v160[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v160[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07784();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[14], &qword_1EC7EAC98, &unk_1D561DA80, &v359);
  v184 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v184, v185, v363);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_35_0(v368);
    v186 = OUTLINED_FUNCTION_131();
    v187(v186);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_60();
    sub_1D5218BD0(v188, v189);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v190 = OUTLINED_FUNCTION_142_6();
    v191(v190);
  }

  if (*(v1 + v160[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v160[16]))
  {
    OUTLINED_FUNCTION_27();
    v192 = OUTLINED_FUNCTION_24();
    sub_1D4F06928(v192, v193);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v160[17]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_132_5(v1 + v160[18], &unk_1EC7E9CA8, &unk_1D561D1D0, &v360);
  v194 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v194, v195, v364);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_35_0(&v373);
    v196 = OUTLINED_FUNCTION_131();
    v197(v196);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_10_73();
    sub_1D5218BD0(v198, v199);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v200 = OUTLINED_FUNCTION_142_6();
    v201(v200);
  }

  v202 = v344;
  v203 = v343;
  if (*(v1 + v160[19]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v160[20]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  v204 = v346;
  sub_1D56162F8();
  OUTLINED_FUNCTION_132_5(v1 + v160[21], &qword_1EC7EC538, &unk_1D5621080, &v361);
  v205 = OUTLINED_FUNCTION_35_1();
  v206 = v342;
  OUTLINED_FUNCTION_57(v205, v207, v342);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_148_2(&v346);
    v208 = OUTLINED_FUNCTION_145_2();
    v209(v208);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_66_16();
    sub_1D5218BD0(v210, v211);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v212 = *(v2 + 8);
    v2 += 8;
    v212(v153, v206);
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[22], &qword_1EC7EC530, &unk_1D5632150, &v364);
  v213 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v213, v214, v203);
  v215 = v204;
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_148_2(v347);
    v216 = OUTLINED_FUNCTION_145_2();
    v217(v216);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_72_19();
    sub_1D5218BD0(v218, v219);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v220 = *(v2 + 8);
    v2 += 8;
    v220(v153, v203);
  }

  v221 = v362;
  OUTLINED_FUNCTION_132_5(v1 + v160[23], &qword_1EC7EC528, &unk_1D5621070, v367);
  v222 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v222, v223, v202);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v224 = v335;
    OUTLINED_FUNCTION_113_9();
    v225 = OUTLINED_FUNCTION_106_6();
    v226(v225);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_71_16();
    sub_1D5218BD0(v227, v228);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v224 + 8))(v2, v202);
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[24], &qword_1EC7EA3B8, &unk_1D561E370, &v362);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v202 = v360;
    OUTLINED_FUNCTION_113_9();
    v229 = OUTLINED_FUNCTION_131();
    v230(v229);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v231, v232);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    OUTLINED_FUNCTION_145_6();
    v233(v202, v221);
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[25], &qword_1EC7EA3B8, &unk_1D561E370, &v365);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v202 = v360;
    OUTLINED_FUNCTION_113_9();
    v234 = OUTLINED_FUNCTION_131();
    v235(v234);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v236, v237);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    OUTLINED_FUNCTION_145_6();
    v238(v202, v221);
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[26], &qword_1EC7EF5D8, &unk_1D5632160, &v369);
  v239 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v239, v240, v215);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(v348);
    v241 = OUTLINED_FUNCTION_52_13();
    v242(v241);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_70_15();
    sub_1D5218BD0(v243, v244);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v245 = *(v202 + 8);
    v202 += 8;
    v246 = OUTLINED_FUNCTION_215();
    v247(v246);
  }

  if (*(v1 + v160[27]))
  {
    OUTLINED_FUNCTION_27();
    v248 = OUTLINED_FUNCTION_24();
    sub_1D4F07E0C(v248, v249);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v250 = v347[0];
  OUTLINED_FUNCTION_132_5(v1 + v160[28], &qword_1EC7EAC98, &unk_1D561DA80, &v367[16]);
  v251 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v251, v252, v363);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(v368);
    v253 = OUTLINED_FUNCTION_106_6();
    v254 = v363;
    v255(v253);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_60();
    sub_1D5218BD0(v256, v257);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v258 = *(v202 + 8);
    v202 += 8;
    v258(v2, v254);
  }

  v259 = v1 + v160[29];
  v260 = *(v259 + 1);
  if (v260 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v261 = *(v259 + 2);
    v365 = *v259;
    LOWORD(v366) = v260 & 0x101;
    *v367 = v261;
    *&v367[8] = *(v259 + 24);
    OUTLINED_FUNCTION_27();
    PlaybackPosition.hash(into:)();
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[30], &qword_1EC7EB5C0, &unk_1D56223C0, &v371);
  v262 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v262, v263, v250);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(&v350);
    v264 = OUTLINED_FUNCTION_52_13();
    v265(v264);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_67_24();
    sub_1D5218BD0(v266, v267);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v268 = *(v202 + 8);
    v269 = OUTLINED_FUNCTION_215();
    v270(v269);
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[31], &qword_1EC7EA3B8, &unk_1D561E370, &v370);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v250 = v360;
    v271 = v361;
    v272 = OUTLINED_FUNCTION_40_33(v361);
    v273(v272);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v274, v275);
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8();
    v276 = *(v271 + 8);
    v277 = OUTLINED_FUNCTION_33_18();
    v278(v277);
  }

  OUTLINED_FUNCTION_33_5(v160[32]);
  if (v250)
  {
    OUTLINED_FUNCTION_30_0(v279);
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v160[33]);
  if (v250)
  {
    OUTLINED_FUNCTION_30_0(v280);
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v160[34]);
  if (v250)
  {
    OUTLINED_FUNCTION_30_0(v281);
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v282 = v1 + v160[35];
  v283 = *(v282 + 1);
  if (v283)
  {
    v284 = *v282;
    v285 = *(v282 + 6);
    v250 = *(v282 + 7);
    v286 = *(v282 + 2);
    *v367 = *(v282 + 1);
    *&v367[16] = v286;
    OUTLINED_FUNCTION_27();
    v365 = v284;
    v366 = v283;
    VideoLocale.hash(into:)();
    sub_1D4F07C6C(a1, v285);
    OUTLINED_FUNCTION_24();
    sub_1D4F31AC0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v287 = v349;
  OUTLINED_FUNCTION_33_5(v160[36]);
  if (v250)
  {
    OUTLINED_FUNCTION_30_0(v288);
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v289 = v353;
  OUTLINED_FUNCTION_132_5(v1 + v160[37], &unk_1EC7E9CA8, &unk_1D561D1D0, &v372);
  v290 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v290, v291, v364);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_35_0(&v373);
    v292 = OUTLINED_FUNCTION_145_2();
    v2 = v364;
    v293(v292);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_10_73();
    sub_1D5218BD0(v294, v295);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v250 + 8))(v153, v2);
  }

  OUTLINED_FUNCTION_132_5(v1 + v160[38], &qword_1EC7EA788, &unk_1D56223A0, &v374);
  v296 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v296, v297, v287);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_148_2(&v352);
    v298 = OUTLINED_FUNCTION_145_2();
    v299(v298);
    OUTLINED_FUNCTION_27();
    sub_1D4F21B30();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v300 = *(v2 + 8);
    v2 += 8;
    v300(v153, v287);
  }

  sub_1D4F1C460(v1 + v160[39], v350, &qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v287 = v359;
    v301 = OUTLINED_FUNCTION_40_33(v359);
    v302(v301);
    OUTLINED_FUNCTION_27();
    sub_1D5218B1C();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8();
    OUTLINED_FUNCTION_145_6();
    v303 = OUTLINED_FUNCTION_33_18();
    v304(v303);
  }

  sub_1D4F1C460(v1 + v160[40], v351, &qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v287 = v359;
    v305 = OUTLINED_FUNCTION_40_33(v359);
    v306(v305);
    OUTLINED_FUNCTION_27();
    sub_1D5218B1C();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8();
    OUTLINED_FUNCTION_145_6();
    v307 = OUTLINED_FUNCTION_33_18();
    v308(v307);
  }

  sub_1D4F1C460(v1 + v160[41], v352, &off_1EC7EB5B0, &unk_1D5632170);
  v309 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v309, v310, v289);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v311 = v339;
    OUTLINED_FUNCTION_113_9();
    v312 = OUTLINED_FUNCTION_106_6();
    v313(v312);
    OUTLINED_FUNCTION_27();
    sub_1D512BE88();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v314 = *(v311 + 8);
    v287 = v311 + 8;
    v314(v2, v289);
  }

  v315 = v358;
  sub_1D4F1C460(v1 + v160[42], v355, &qword_1EC7EB620, &unk_1D561E5B0);
  v316 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v316, v317, v315);
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(&v356);
    v318 = OUTLINED_FUNCTION_52_13();
    v319(v318);
    OUTLINED_FUNCTION_27();
    sub_1D4F21A7C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v289 + 8))(v287, v315);
  }

  sub_1D4F1C460(v1 + v160[43], v354, &qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_26_46();
  if (v161)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v320 = v359;
    v321 = OUTLINED_FUNCTION_40_33(v359);
    v322(v321);
    OUTLINED_FUNCTION_27();
    sub_1D5218B1C();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8();
    v323 = *(v320 + 8);
    v324 = OUTLINED_FUNCTION_33_18();
    v325(v324);
  }

  if (*(v1 + v160[44]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F068B4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v160[45]);
  sub_1D4F070FC();
  v326 = v160[46];
  sub_1D560D838();
  sub_1D5218BD0(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v327 = v160[47];
  v328 = sub_1D5610088();
  sub_1D5218BD0(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  OUTLINED_FUNCTION_33_5(v160[48]);
  if (v328)
  {
    OUTLINED_FUNCTION_30_0(v329);
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v160[49]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v160[50]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v160[51]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v160[52]);
  sub_1D4F31AC0();
}

uint64_t sub_1D5218464()
{
  sub_1D56162D8();
  sub_1D52168D8(v1);
  return sub_1D5616328();
}

void (*sub_1D52184AC(uint64_t **a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D520FCA0(a2, v5);
  return sub_1D5218518;
}

void sub_1D5218518(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1D4F1C460(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D5211DE8(v2 + 32);
    v5 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v5, v6, &qword_1D561C420);
  }

  else
  {

    sub_1D5211DE8(v2);
  }

  free(v2);
}

uint64_t sub_1D52185D4()
{
  sub_1D56162D8();
  sub_1D52168D8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5218658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5218BD0(&qword_1EDD5B360, type metadata accessor for MusicMoviePropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D52186F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 184);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D521876C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 184);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D52187E0(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 184);
  return result;
}

uint64_t sub_1D5218804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 188);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D5218878(uint64_t a1)
{
  v2 = (v1 + *(a1 + 192));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D52188D4(uint64_t a1)
{
  v2 = sub_1D5218BD0(&qword_1EDD5B360, type metadata accessor for MusicMoviePropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D5218950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5218BD0(&qword_1EDD5B350, type metadata accessor for MusicMoviePropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D52189E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5218BD0(&qword_1EC7F1E80, type metadata accessor for MusicMoviePropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D5218A68()
{
  result = qword_1EC7F1EA0;
  if (!qword_1EC7F1EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA410, &unk_1D561C400);
    sub_1D5218BD0(&qword_1EDD592F0, type metadata accessor for MusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1EA0);
  }

  return result;
}

unint64_t sub_1D5218B1C()
{
  result = qword_1EC7F1EA8;
  if (!qword_1EC7F1EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA410, &unk_1D561C400);
    sub_1D5218BD0(&qword_1EC7F1EB0, type metadata accessor for MusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1EA8);
  }

  return result;
}

uint64_t sub_1D5218BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_78_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_9()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_139_7()
{
}

uint64_t OUTLINED_FUNCTION_140_8()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_151_5()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_152_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
}

uint64_t static MusicIntentDonation.Descriptor.kind.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

MusicKitInternal::MusicIntentDonation::Kind_optional __swiftcall MusicIntentDonation.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MusicIntentDonation.Kind.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t sub_1D52190E4()
{
  result = qword_1EC7F1EB8;
  if (!qword_1EC7F1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1EB8);
  }

  return result;
}

unint64_t sub_1D521915C@<X0>(unint64_t *a1@<X8>)
{
  result = MusicIntentDonation.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicIntentDonation(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicIntentDonation.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of MusicIntentDonation.Descriptor.underlyingIntent.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D521948C;

  return v9(a1, a2);
}

uint64_t sub_1D521948C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D521961C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1ED0, &unk_1D5644F48);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612EC8();

  *(v0 + 48) = v3;
  qword_1EC87C370 = v0;
  return result;
}

uint64_t sub_1D52196FC()
{
  type metadata accessor for MusicMovie();
  sub_1D5219B04(&qword_1EDD59308, type metadata accessor for MusicMovie);
  return sub_1D560EC98();
}

uint64_t sub_1D5219778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EC8, &qword_1D5644EC8);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_138();
  sub_1D5219B04(v1, v2);
  v3 = sub_1D5612D58();

  *(v0 + 32) = v3;
  swift_getKeyPath();
  v4 = sub_1D5612D58();

  *(v0 + 40) = v4;
  swift_getKeyPath();
  v5 = sub_1D5612D58();

  *(v0 + 48) = v5;
  qword_1EC87C378 = v0;
  return result;
}

uint64_t sub_1D52198C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D521991C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D5219974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_1D52199CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977638]);

  return [v0 init];
}

uint64_t sub_1D5219A50(void *a1)
{
  a1[1] = sub_1D5219B04(&qword_1EC7F1EC0, type metadata accessor for MusicMovie);
  a1[2] = sub_1D5219B04(&qword_1EC7EA908, type metadata accessor for MusicMovie);
  result = sub_1D5219B04(&qword_1EC7F0C30, type metadata accessor for MusicMovie);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5219B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static UserProfile.current.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EE0, &qword_1D5644FD8);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  v1[3] = OUTLINED_FUNCTION_127();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA570, &qword_1D5644FE0);
  v1[4] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[5] = v6;
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EE8, &qword_1D5644FE8);
  v1[7] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EF0, &unk_1D5644FF0);
  v1[10] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[11] = v14;
  v16 = *(v15 + 64);
  v1[12] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D5219CE4, 0, 0);
}

uint64_t sub_1D5219CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v13[12];
  v13[13] = type metadata accessor for UserProfile();
  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v15, v12);
  sub_1D521E7A0(&qword_1EDD57E70, v12);
  sub_1D560E318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D561EAC0;
  if (qword_1EDD54168 != -1)
  {
    OUTLINED_FUNCTION_26_47();
  }

  v17 = v13[12];
  v18 = v13[10];
  *(v16 + 32) = qword_1EDD54170;

  sub_1D560E228();
  v19 = *(MEMORY[0x1E69751D8] + 4);
  v26 = swift_task_alloc();
  v13[14] = v26;
  *v26 = v13;
  v26[1] = sub_1D5219E74;
  v27 = v13[12];
  v28 = v13[9];
  v29 = v13[10];

  return MEMORY[0x1EEDCEDA0](v28, v29, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D5219E74()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D521A188;
  }

  else
  {
    v3 = sub_1D5219F88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5219F88()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = sub_1D560E448();
  sub_1D4ECA174(v8);
  (*(v6 + 8))(v4, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];
    sub_1D4E50004(v0[3], &qword_1EC7F1EE0, &qword_1D5644FD8);
    sub_1D521BDEC();
    swift_allocError();
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v12 = v0[9];
    v13 = v0[6];
    v14 = v0[3];
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v19 = v0[6];
    v21 = v0[2];
    v20 = v0[3];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v17 + 8))(v16, v18);
    sub_1D521D200(v20, v21, type metadata accessor for UserProfile);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D521A188()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[3];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v5 = v0[1];

  return v5();
}

uint64_t UserProfile.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for UserProfile() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UserProfile.acceptedTerms.getter()
{
  if (qword_1EDD54140 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB630, &unk_1D561E5E0);
  OUTLINED_FUNCTION_16_60();
  sub_1D521E7A0(v1, v0);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0);
  sub_1D560EC28();
  if (v4)
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t UserProfile.discoverabilityConsentVersion.getter()
{
  if (qword_1EDD540B0 != -1)
  {
    OUTLINED_FUNCTION_23_45();
  }

  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v1, v0);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0);
  sub_1D560EC28();
  return v4;
}

uint64_t sub_1D521A5B0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v4)
  {
    swift_once();
  }

  v5 = *a2;
  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v6, v2);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v7, v2);
  sub_1D560EC28();
  return v9 & 1;
}

uint64_t sub_1D521A734(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v4)
  {
    swift_once();
  }

  v5 = *a2;
  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v6, v2);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v7, v2);
  sub_1D560EC28();
  return v9;
}

uint64_t sub_1D521A814(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v6)
  {
    swift_once();
  }

  v7 = *a2;
  a3(0);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v8, v3);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v9, v3);

  return sub_1D560EC28();
}

uint64_t sub_1D521A928(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v4)
  {
    swift_once();
  }

  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v6, v2);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v7, v2);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.shareablePlaylists.getter()
{
  if (qword_1EDD540F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v1, v0);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.sharedPlaylists.getter()
{
  if (qword_1EDD54130 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v1, v0);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.topGenres.getter()
{
  if (qword_1EDD54040 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v1, v0);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t UserProfile.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserProfile() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t UserProfile.socialProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  if (qword_1EDD54168 != -1)
  {
    OUTLINED_FUNCTION_26_47();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_17_58();
  sub_1D521E7A0(v10, v1);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v11, v1);
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v8, &qword_1EC7EA778, &qword_1D5622E60);
    v13 = type metadata accessor for SocialProfile();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
  }

  else
  {
    sub_1D4EC9410(EnumTagSinglePayload);
    OUTLINED_FUNCTION_24_0(v9);
    return (*(v15 + 8))(v8, v9);
  }
}

uint64_t static UserProfile.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for UserProfile() + 20);

  return sub_1D5611A78();
}

uint64_t UserProfile.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for UserProfile() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14_59();
  sub_1D521E7A0(v4, v5);
  return sub_1D5614CB8();
}

uint64_t UserProfile.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for UserProfile() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14_59();
  sub_1D521E7A0(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D521B114(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D521E7A0(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D521B1B8@<X0>(uint64_t *a1@<X8>)
{
  result = UserProfile.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D521B1E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D521E7E8();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76948 = v0;
  return result;
}

uint64_t sub_1D521B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D521E7A0(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  v5 = sub_1D560D188();

  *a4 = v5;
  return result;
}

uint64_t sub_1D521B370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76928 = v0;
  return result;
}

uint64_t sub_1D521B3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(29);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76910 = v0;
  return result;
}

uint64_t sub_1D521B468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76900 = v0;
  return result;
}

uint64_t sub_1D521B4D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76938 = v0;
  return result;
}

uint64_t sub_1D521B554()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76920 = v0;
  return result;
}

uint64_t sub_1D521B5D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(23);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76918 = v0;
  return result;
}

uint64_t sub_1D521B64C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76950 = v0;
  return result;
}

uint64_t sub_1D521B6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76958 = v0;
  return result;
}

uint64_t sub_1D521B744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76930 = v0;
  return result;
}

uint64_t sub_1D521B7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768F0 = v0;
  return result;
}

uint64_t sub_1D521B838()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76960 = v0;
  return result;
}

uint64_t sub_1D521B8B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76908 = v0;
  return result;
}

uint64_t sub_1D521B91C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_62();
  sub_1D521E7A0(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C380 = v0;
  return result;
}

uint64_t sub_1D521BA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_12_61();
  sub_1D521E7A0(v6, v7);
  v8 = sub_1D560D0F8();

  *a5 = v8;
  return result;
}

uint64_t sub_1D521BB14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_12_61();
  sub_1D521E7A0(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54128 = v0;
  return result;
}

uint64_t sub_1D521BBF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_19_54();
  sub_1D521E7A0(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54100 = v0;
  return result;
}

uint64_t sub_1D521BCD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_19_54();
  sub_1D521E7A0(v1, v2);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54138 = v0;
  return result;
}

unint64_t sub_1D521BDEC()
{
  result = qword_1EDD57EC0;
  if (!qword_1EDD57EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57EC0);
  }

  return result;
}

uint64_t sub_1D521BE68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D521E7A0(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54048 = v0;
  return result;
}

uint64_t sub_1D521BF50()
{
  sub_1D521E7A0(&qword_1EDD57E78, type metadata accessor for UserProfile);

  return sub_1D5610C58();
}

uint64_t UserProfile.init(from:)(uint64_t *a1)
{
  type metadata accessor for UserProfile();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_15_63();
  sub_1D521E7A0(v3, v4);
  OUTLINED_FUNCTION_18_59();
  sub_1D521E7A0(v5, v1);
  OUTLINED_FUNCTION_21_48(&qword_1EDD56D10);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UserProfile.encode(to:)()
{
  type metadata accessor for UserProfile();
  OUTLINED_FUNCTION_15_63();
  sub_1D521E7A0(v1, v2);
  OUTLINED_FUNCTION_18_59();
  sub_1D521E7A0(v3, v0);
  OUTLINED_FUNCTION_21_48(&qword_1EDD56D10);
  return sub_1D5612688();
}

uint64_t UserProfile.description.getter()
{
  OUTLINED_FUNCTION_36_33();
  v9 = v2;
  v3 = *v0;
  v4 = v0[1];
  v5 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v5);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if (qword_1EDD54098 != -1)
  {
    OUTLINED_FUNCTION_41();
  }

  OUTLINED_FUNCTION_16_60();
  sub_1D521E7A0(v6, v1);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v7, v1);
  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  if (qword_1EDD540A0 != -1)
  {
    OUTLINED_FUNCTION_52_6();
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x203A656D616E202CLL, 0xE900000000000022);

  if (qword_1EDD54150 != -1)
  {
    OUTLINED_FUNCTION_30_38();
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (qword_1EDD54050 != -1)
  {
    OUTLINED_FUNCTION_54_1();
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (qword_1EDD54158 != -1)
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v9;
}

uint64_t UserProfile.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v85 - v5;
  v6 = sub_1D560C0A8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v88 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v87 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  v89 = type metadata accessor for SocialProfile();
  v19 = OUTLINED_FUNCTION_14(v89);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v86 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v85 - v31;
  OUTLINED_FUNCTION_36_33();
  v99 = v33;
  v100 = v34;
  v97 = 0x22203A646920200ALL;
  v98 = 0xE800000000000000;
  v35 = *v0;
  v36 = v0[1];
  v37 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v37);

  OUTLINED_FUNCTION_55_0();
  v38 = v98;
  MEMORY[0x1DA6EAC70](v97, v98);

  if (qword_1EDD54098 != -1)
  {
    OUTLINED_FUNCTION_41();
  }

  OUTLINED_FUNCTION_17_58();
  sub_1D521E7A0(v39, v38);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v40, v38);
  OUTLINED_FUNCTION_9_76();
  v41 = v98;
  if (v98)
  {
    v42 = v97;
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v97 = v43 | 0x646E616800000000;
    v98 = 0xED000022203A656CLL;
    MEMORY[0x1DA6EAC70](v42, v41);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_10_74();
  }

  if (qword_1EDD540A0 != -1)
  {
    OUTLINED_FUNCTION_52_6();
  }

  OUTLINED_FUNCTION_9_76();
  if (v98)
  {
    OUTLINED_FUNCTION_51_0();
    v97 = v44 | 0x656D616E00000000;
    v98 = 0xEB0000000022203ALL;
    OUTLINED_FUNCTION_43_24();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_10_74();
  }

  if (qword_1EDD54088 != -1)
  {
    swift_once();
  }

  v45 = sub_1D56140F8();
  OUTLINED_FUNCTION_9_76();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v45);
  sub_1D4E50004(v32, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload != 1)
  {
    MEMORY[0x1DA6EAC70](0x1000000000000010, 0x80000001D56883C0);
  }

  if (qword_1EDD54110 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_76();
  v47 = __swift_getEnumTagSinglePayload(v30, 1, v45);
  sub_1D4E50004(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (v47 != 1)
  {
    MEMORY[0x1DA6EAC70](0x100000000000001ALL, 0x80000001D56883A0);
  }

  if (qword_1EDD540B0 != -1)
  {
    OUTLINED_FUNCTION_23_45();
  }

  OUTLINED_FUNCTION_9_76();
  if ((v98 & 1) == 0)
  {
    v48 = v97;
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v97 = 0xD000000000000023;
    v98 = v49;
    v95 = v48;
    v50 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v50);

    OUTLINED_FUNCTION_38_5();
  }

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD000000000000019;
  v98 = v51;
  if (qword_1EDD540F0 != -1)
  {
    swift_once();
  }

  v52 = 0x65736C6166;
  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v53 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD00000000000001CLL;
  v98 = v55;
  if (qword_1EDD540C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v56 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD00000000000001DLL;
  v98 = v57;
  if (qword_1EDD540C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v58 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD000000000000012;
  v98 = v59;
  if (qword_1EDD54148 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v60 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD000000000000011;
  v98 = v61;
  if (qword_1EDD54150 != -1)
  {
    OUTLINED_FUNCTION_30_38();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v62 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD000000000000019;
  v98 = v63;
  if (qword_1EDD540E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v64 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_51_0();
  v97 = v65 | 0x7250736900000000;
  v98 = 0xEF203A6574617669;
  if (qword_1EDD54050 != -1)
  {
    OUTLINED_FUNCTION_54_1();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v66 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_37();
  }

  else
  {
    OUTLINED_FUNCTION_7_84();
  }

  OUTLINED_FUNCTION_43_24();

  OUTLINED_FUNCTION_10_74();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v97 = 0xD000000000000010;
  v98 = v67;
  if (qword_1EDD54158 != -1)
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_8_74();
  OUTLINED_FUNCTION_33_39();
  if (v54 || (v68 & 1) == 0)
  {
    v69 = 0xE500000000000000;
  }

  else
  {
    v69 = 0xE400000000000000;
    v52 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v52, v69);

  OUTLINED_FUNCTION_38_5();

  UserProfile.socialProfile.getter(v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v89) == 1)
  {
    sub_1D4E50004(v18, &unk_1EC7ED370, &unk_1D5624FE0);
  }

  else
  {
    v70 = v18;
    v71 = v86;
    sub_1D521D200(v70, v86, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v97 = 0xD000000000000013;
    v98 = v72;
    v95 = SocialProfile.debugDescription.getter();
    v96 = v73;
    v93 = 10;
    v94 = 0xE100000000000000;
    v91 = 2105354;
    v92 = 0xE300000000000000;
    sub_1D4F53278();
    v74 = sub_1D5615968();
    v76 = v75;

    MEMORY[0x1DA6EAC70](v74, v76);

    OUTLINED_FUNCTION_38_5();

    sub_1D5060DD8(v71);
  }

  v77 = v90;
  if (qword_1EC7E9148 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_76();
  if (__swift_getEnumTagSinglePayload(v77, 1, v6) == 1)
  {
    sub_1D4E50004(v77, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v79 = v87;
    v78 = v88;
    (*(v88 + 32))(v87, v77, v6);
    OUTLINED_FUNCTION_51_0();
    v97 = v80 | 0x3A6C727500000000;
    v98 = 0xEA00000000002220;
    OUTLINED_FUNCTION_13_62();
    sub_1D521E7A0(v81, v82);
    v83 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v83);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    (*(v78 + 8))(v79, v6);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v99;
}

uint64_t sub_1D521D200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D521D264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F1ED8 = v4;
  return result;
}

uint64_t static UserProfile.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E9158 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D521D3B0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD57EA8);
  __swift_project_value_buffer(v0, qword_1EDD57EA8);
  type metadata accessor for UserProfile();
  sub_1D521E7A0(&qword_1EDD57E88, type metadata accessor for UserProfile);
  return sub_1D560D988();
}

uint64_t sub_1D521D470()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53D30);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD57EA0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD57EA8);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D521D56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F62616C6C6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D521D640(char a1)
{
  if (a1)
  {
    return 0x4E79616C70736964;
  }

  else
  {
    return 0x726F62616C6C6F63;
  }
}

uint64_t sub_1D521D694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D521D56C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D521D6BC(uint64_t a1)
{
  v2 = sub_1D521DAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D521D6F8(uint64_t a1)
{
  v2 = sub_1D521DAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D521D734(uint64_t a1)
{
  v2 = sub_1D521DB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D521D770(uint64_t a1)
{
  v2 = sub_1D521DB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D521D7AC(uint64_t a1)
{
  v2 = sub_1D521DB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D521D7E8(uint64_t a1)
{
  v2 = sub_1D521DB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserProfile.ContractualTerm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EF8, &qword_1D5645000);
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1F00, &qword_1D5645008);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1F08, &qword_1D5645010);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D521DAB0();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1D521DB04();
    v29 = v33;
    sub_1D5616018();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1D521DB58();
    sub_1D5616018();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_1D521DAB0()
{
  result = qword_1EC7F1F10;
  if (!qword_1EC7F1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F10);
  }

  return result;
}

unint64_t sub_1D521DB04()
{
  result = qword_1EC7F1F18;
  if (!qword_1EC7F1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F18);
  }

  return result;
}

unint64_t sub_1D521DB58()
{
  result = qword_1EC7F1F20;
  if (!qword_1EC7F1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F20);
  }

  return result;
}

uint64_t UserProfile.ContractualTerm.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t UserProfile.ContractualTerm.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1F28, &qword_1D5645018);
  OUTLINED_FUNCTION_4(v54);
  v51 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1F30, &qword_1D5645020);
  OUTLINED_FUNCTION_4(v9);
  v50 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1F38, &unk_1D5645028);
  OUTLINED_FUNCTION_4(v16);
  v53 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v47 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D521DAB0();
  v24 = v55;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48 = v9;
  v49 = v15;
  v55 = a1;
  v25 = v54;
  v26 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v26, 0);
  if (v29 == v30 >> 1)
  {
    v54 = result;
LABEL_9:
    v40 = sub_1D5615C18();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v42 = &type metadata for UserProfile.ContractualTerm;
    sub_1D5615F28();
    sub_1D5615BF8();
    v44 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v40);
    (*(v45 + 104))(v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v22, v16);
    a1 = v55;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1D4FE35EC(v29 + 1, v30 >> 1, result, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v54 = v32;
      goto LABEL_9;
    }

    v56 = v31;
    if (v31)
    {
      v58 = 1;
      sub_1D521DB04();
      v37 = v8;
      OUTLINED_FUNCTION_3_0();
      v38 = v52;
      v39 = v53;
      swift_unknownObjectRelease();
      (*(v51 + 8))(v37, v25);
    }

    else
    {
      v57 = 0;
      sub_1D521DB58();
      v46 = v49;
      OUTLINED_FUNCTION_3_0();
      v38 = v52;
      v39 = v53;
      swift_unknownObjectRelease();
      (*(v50 + 8))(v46, v48);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v56;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return result;
}

uint64_t UserProfile.Error.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

unint64_t sub_1D521E2A4()
{
  result = qword_1EC7F1F50;
  if (!qword_1EC7F1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F50);
  }

  return result;
}

unint64_t sub_1D521E32C()
{
  result = qword_1EC7F1F68;
  if (!qword_1EC7F1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserProfile.Error(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1D521E43C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D521E53C()
{
  result = qword_1EC7F1F70;
  if (!qword_1EC7F1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F70);
  }

  return result;
}

unint64_t sub_1D521E594()
{
  result = qword_1EC7F1F78;
  if (!qword_1EC7F1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F78);
  }

  return result;
}

unint64_t sub_1D521E5EC()
{
  result = qword_1EC7F1F80;
  if (!qword_1EC7F1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F80);
  }

  return result;
}

unint64_t sub_1D521E644()
{
  result = qword_1EC7F1F88;
  if (!qword_1EC7F1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F88);
  }

  return result;
}

unint64_t sub_1D521E69C()
{
  result = qword_1EC7F1F90;
  if (!qword_1EC7F1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F90);
  }

  return result;
}

unint64_t sub_1D521E6F4()
{
  result = qword_1EC7F1F98;
  if (!qword_1EC7F1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1F98);
  }

  return result;
}

unint64_t sub_1D521E74C()
{
  result = qword_1EC7F1FA0;
  if (!qword_1EC7F1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1FA0);
  }

  return result;
}

uint64_t sub_1D521E7A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D521E7E8()
{
  result = qword_1EDD52848;
  if (!qword_1EDD52848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB630, &unk_1D561E5E0);
    sub_1D521E86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52848);
  }

  return result;
}

unint64_t sub_1D521E86C()
{
  result = qword_1EDD57EC8[0];
  if (!qword_1EDD57EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD57EC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_45()
{

  return swift_once();
}

uint64_t HLSAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t HLSAsset.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HLSAsset() + 20);

  return sub_1D5032A50(v3, a1);
}

uint64_t type metadata accessor for HLSAsset()
{
  result = qword_1EDD54760;
  if (!qword_1EDD54760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static HLSAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D560C328();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_150_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  if ((sub_1D560BFB8() & 1) == 0)
  {
    return 0;
  }

  v24 = *(type metadata accessor for HLSAsset() + 20);
  v25 = *(v18 + 48);
  sub_1D5032A50(a1 + v24, v23);
  sub_1D5032A50(a2 + v24, &v23[v25]);
  OUTLINED_FUNCTION_10(v23);
  if (v26)
  {
    OUTLINED_FUNCTION_10(&v23[v25]);
    if (v26)
    {
      sub_1D4E50004(v23, &qword_1EC7EA3B8, &unk_1D561E370);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1D5032A50(v23, v2);
  OUTLINED_FUNCTION_10(&v23[v25]);
  if (v26)
  {
    (*(v8 + 8))(v2, v5);
LABEL_10:
    sub_1D4E50004(v23, &qword_1EC7EB578, &unk_1D5644D10);
    return 0;
  }

  (*(v8 + 32))(v13, &v23[v25], v5);
  OUTLINED_FUNCTION_1_111();
  sub_1D521FC04(v28, v29);
  v30 = sub_1D5614D18();
  v31 = *(v8 + 8);
  v31(v13, v5);
  v31(v2, v5);
  sub_1D4E50004(v23, &qword_1EC7EA3B8, &unk_1D561E370);
  return (v30 & 1) != 0;
}

uint64_t HLSAsset.hash(into:)()
{
  v2 = sub_1D560C328();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_2_109();
  sub_1D521FC04(v14, v15);
  sub_1D5614CB8();
  v16 = type metadata accessor for HLSAsset();
  sub_1D5032A50(v0 + *(v16 + 20), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v5 + 32))(v1, v13, v2);
  sub_1D56162F8();
  OUTLINED_FUNCTION_1_111();
  sub_1D521FC04(v18, v19);
  sub_1D5614CB8();
  return (*(v5 + 8))(v1, v2);
}

uint64_t HLSAsset.hashValue.getter()
{
  v2 = sub_1D560C328();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_150_1();
  sub_1D56162D8();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_2_109();
  sub_1D521FC04(v15, v16);
  sub_1D5614CB8();
  v17 = type metadata accessor for HLSAsset();
  sub_1D5032A50(v0 + *(v17 + 20), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v10, v1, v2);
    sub_1D56162F8();
    OUTLINED_FUNCTION_1_111();
    sub_1D521FC04(v18, v19);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D521F090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1D56162D8();
  sub_1D560C0A8();
  sub_1D521FC04(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
  sub_1D5614CB8();
  sub_1D5032A50(v2 + *(a2 + 20), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D56162F8();
    sub_1D521FC04(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
    sub_1D5614CB8();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1D5616328();
}

void HLSAsset.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D5611C78();
  v5 = OUTLINED_FUNCTION_4(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_4(v14);
  v26 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  v30 = a1;
  sub_1D4E628D4(a1, v29);
  type metadata accessor for CloudHLSAsset();
  sub_1D521FC04(&qword_1EDD57A18, type metadata accessor for CloudHLSAsset);
  OUTLINED_FUNCTION_4_80();
  sub_1D521FC04(v21, type metadata accessor for CloudHLSAsset);
  sub_1D5610768();
  if (v2)
  {
    v29[0] = v2;
    v23 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v24 = v28;
      (*(v28 + 32))(v11, v13, v4);
      sub_1D5615C18();
      swift_allocError();
      v25 = v30;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v24 + 8))(v11, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  else
  {
    sub_1D54050A0(v27);
    v22 = (v26 + 8);
    __swift_destroy_boxed_opaque_existential_1(v30);
    (*v22)(v20, v14);
  }
}

uint64_t HLSAsset.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v10 - v6;
  sub_1D5405584(v10 - v6);
  sub_1D521FC04(&qword_1EDD57A18, type metadata accessor for CloudHLSAsset);
  OUTLINED_FUNCTION_4_80();
  sub_1D521FC04(v8, type metadata accessor for CloudHLSAsset);
  sub_1D5610778();
  return (*(v2 + 8))(v7, v0);
}

uint64_t HLSAsset.description.getter()
{
  v44 = sub_1D5610788();
  v2 = OUTLINED_FUNCTION_4(v44);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D56107C8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42 - v25;
  v27 = sub_1D560C328();
  v28 = OUTLINED_FUNCTION_4(v27);
  v45 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v48 = 0x7465737341534C48;
  v49 = 0xE900000000000028;
  v46 = 0x22203A6C7275;
  v47 = 0xE600000000000000;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_2_109();
  sub_1D521FC04(v32, v33);
  v34 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v34);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v46, v47);

  v35 = type metadata accessor for HLSAsset();
  sub_1D5032A50(v0 + *(v35 + 20), v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1D4E50004(v26, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v36 = v45;
    (*(v45 + 32))(v1, v26, v27);
    sub_1D56107A8();
    (*(v36 + 16))(v24, v1, v27);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
    v37 = v44;
    (*(v4 + 104))(v9, *MEMORY[0x1E6975DC8], v44);
    v38 = sub_1D56107B8();
    v40 = v39;
    (*(v4 + 8))(v9, v37);
    sub_1D4E50004(v24, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v42 + 8))(v17, v43);
    if (v40)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();

      v46 = 0xD000000000000013;
      v47 = 0x80000001D5688400;
      MEMORY[0x1DA6EAC70](v38, v40);

      MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
      MEMORY[0x1DA6EAC70](v46, v47);
    }

    (*(v36 + 8))(v1, v27);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v48;
}

uint64_t sub_1D521FC04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D521FC78()
{
  sub_1D560C0A8();
  if (v0 <= 0x3F)
  {
    sub_1D5032C3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t static CloudMarketingItem.Attributes.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      sub_1D4F2D114();
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D521FD64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D5688420 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D521FE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D521FD64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D521FE30(uint64_t a1)
{
  v2 = sub_1D521FFF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D521FE6C(uint64_t a1)
{
  v2 = sub_1D521FFF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMarketingItem.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FC0, &qword_1D5645BE0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = *v0;
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D521FFF4();

  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FD0, &qword_1D5645BE8);
  sub_1D5220048();
  sub_1D5616068();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D521FFF4()
{
  result = qword_1EC7F1FC8;
  if (!qword_1EC7F1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1FC8);
  }

  return result;
}

unint64_t sub_1D5220048()
{
  result = qword_1EC7F1FD8;
  if (!qword_1EC7F1FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1FD0, &qword_1D5645BE8);
    sub_1D52225D8(&qword_1EDD533B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1FD8);
  }

  return result;
}

void CloudMarketingItem.Attributes.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();

    sub_1D4F30240();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudMarketingItem.Attributes.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F30240();
  }

  return sub_1D5616328();
}

void CloudMarketingItem.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FE0, &qword_1D5645BF0);
  OUTLINED_FUNCTION_4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9();
  v22 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D521FFF4();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FD0, &qword_1D5645BE8);
    sub_1D522251C();
    sub_1D5615F78();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D522036C()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F30240();
  }

  return sub_1D5616328();
}

uint64_t CloudMarketingItem.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudMarketingItem.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D52204E4@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudMarketingItem.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_1D5220524(uint64_t a1)
{
  v2 = sub_1D52226D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5220560(uint64_t a1)
{
  v2 = sub_1D52226D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static CloudMarketingItem.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF8, &unk_1D5645C08);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16_0();
  v23 = *(v22 + 56);
  sub_1D4F39AB0(a1, v2, &qword_1EC7F1FF0, &unk_1D5645BF8);
  sub_1D4F39AB0(a2, v2 + v23, &qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_57(v2, 1, v6);
  if (!v24)
  {
    sub_1D4F39AB0(v2, v3, &qword_1EC7F1FF0, &unk_1D5645BF8);
    OUTLINED_FUNCTION_57(v2 + v23, 1, v6);
    if (!v24)
    {
      (*(v8 + 32))(v13, v2 + v23, v6);
      sub_1D522261C();
      v26 = sub_1D5614D18();
      v27 = *(v8 + 8);
      v28 = OUTLINED_FUNCTION_71();
      v27(v28);
      (v27)(v3, v6);
      sub_1D4E50004(v2, &qword_1EC7F1FF0, &unk_1D5645BF8);
      return (v26 & 1) != 0;
    }

    (*(v8 + 8))(v3, v6);
LABEL_9:
    sub_1D4E50004(v2, &qword_1EC7F1FF8, &unk_1D5645C08);
    return 0;
  }

  OUTLINED_FUNCTION_57(v2 + v23, 1, v6);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v2, &qword_1EC7F1FF0, &unk_1D5645BF8);
  return 1;
}

uint64_t CloudMarketingItem.Relationships.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2008, &qword_1D5645C18);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1D52226D8();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  sub_1D522272C(&unk_1EC7F2018);
  sub_1D5616068();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudMarketingItem.Relationships.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v0, v2, &qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_57(v2, 1, v3);
  if (v13)
  {
    return sub_1D56162F8();
  }

  (*(v5 + 32))(v1, v2, v3);
  sub_1D56162F8();
  sub_1D52227A8();
  sub_1D5614CB8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudMarketingItem.Relationships.hashValue.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v14, &qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_57(v14, 1, v3);
  if (v15)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v14, v3);
    sub_1D56162F8();
    sub_1D52227A8();
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1D5616328();
}

void CloudMarketingItem.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v23 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2030, &qword_1D5645C20);
  OUTLINED_FUNCTION_4(v10);
  v24 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_71_1();
  v15 = type metadata accessor for CloudMarketingItem.Relationships(0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D52226D8();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
    sub_1D522272C(&unk_1EC7F2038);
    sub_1D5615F78();
    (*(v24 + 8))(v2, v10);
    sub_1D4F39A1C(v1, v21, &qword_1EC7F1FF0, &unk_1D5645BF8);
    sub_1D52229E4(v21, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5220F20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  sub_1D4F39AB0(v1, v10, &qword_1EC7F1FF0, &unk_1D5645BF8);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D56162F8();
    sub_1D52227A8();
    sub_1D5614CB8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D52210EC(uint64_t a1)
{
  v2 = sub_1D5222A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5221128(uint64_t a1)
{
  v2 = sub_1D5222A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D522122C(uint64_t a1)
{
  v2 = sub_1D5222A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5221268(uint64_t a1)
{
  v2 = sub_1D5222A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D52212E8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudMarketingItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudMarketingItem.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudMarketingItem.attributes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D4E67688(v2);
}

uint64_t CloudMarketingItem.views.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudMarketingItem(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudMarketingItem.meta.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudMarketingItem(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D5221580()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FEF8();
  qword_1EC7F1FB8 = v3;
  return result;
}

uint64_t static CloudMarketingItem.== infix(_:_:)(void *a1, void *a2)
{
  v6 = type metadata accessor for CloudMarketingItem.Relationships(0);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2068, &qword_1D5645C40);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31();
  v21 = *a1 == *a2 && a1[1] == a2[1];
  if (!v21 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_35;
  }

  v22 = a1[2];
  v23 = a2[2];
  if (v22 == 1)
  {
    sub_1D4E67688(1);
    if (v23 == 1)
    {
      v22 = 1;
      sub_1D4E67688(1);
      goto LABEL_24;
    }

    sub_1D4E67688(v23);
    goto LABEL_12;
  }

  if (v23 == 1)
  {
    sub_1D4E67688(a1[2]);
    sub_1D4E67688(1);
    sub_1D4E67688(v22);

LABEL_12:
    sub_1D4EA7410(v22);
    v24 = v23;
LABEL_21:
    sub_1D4EA7410(v24);
    goto LABEL_35;
  }

  if (v22)
  {
    v25 = a1[2];
    if (v23)
    {
      sub_1D4E67688(v25);
      sub_1D4E67688(v23);
      sub_1D4E67688(v22);
      sub_1D4E67688(v23);
      sub_1D4F2D114();
      v27 = v26;
      sub_1D4EA7410(v23);
      sub_1D4EA7410(v23);
      if (v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D4E67688(v25);
      sub_1D4E67688(0);
      sub_1D4E67688(v22);
    }

LABEL_20:

    v24 = v22;
    goto LABEL_21;
  }

  sub_1D4E67688(0);
  if (v23)
  {
    sub_1D4E67688(v23);
    sub_1D4E67688(0);
    sub_1D4EA7410(v23);
    goto LABEL_20;
  }

  sub_1D4E67688(0);
  sub_1D4E67688(0);
LABEL_23:

LABEL_24:
  sub_1D4EA7410(v22);
  v34 = type metadata accessor for CloudMarketingItem(0);
  v28 = v34[6];
  v29 = *(v17 + 48);
  sub_1D4F39AB0(a1 + v28, v2, &qword_1EC7F2060, &qword_1D5645C38);
  sub_1D4F39AB0(a2 + v28, v2 + v29, &qword_1EC7F2060, &qword_1D5645C38);
  OUTLINED_FUNCTION_57(v2, 1, v6);
  if (!v21)
  {
    sub_1D4F39AB0(v2, v3, &qword_1EC7F2060, &qword_1D5645C38);
    OUTLINED_FUNCTION_57(v2 + v29, 1, v6);
    if (!v30)
    {
      sub_1D52229E4(v2 + v29, v12);
      v31 = static CloudMarketingItem.Relationships.== infix(_:_:)(v3, v12);
      sub_1D5222DC0(v12, type metadata accessor for CloudMarketingItem.Relationships);
      sub_1D5222DC0(v3, type metadata accessor for CloudMarketingItem.Relationships);
      sub_1D4E50004(v2, &qword_1EC7F2060, &qword_1D5645C38);
      if (!v31)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    OUTLINED_FUNCTION_6_76();
LABEL_32:
    sub_1D4E50004(v2, &qword_1EC7F2068, &qword_1D5645C40);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_57(v2 + v29, 1, v6);
  if (!v21)
  {
    goto LABEL_32;
  }

  sub_1D4E50004(v2, &qword_1EC7F2060, &qword_1D5645C38);
LABEL_34:
  if (*(a1 + v34[7]) == *(a2 + v34[7]))
  {
    v32 = *(a1 + v34[8]) ^ *(a2 + v34[8]) ^ 1;
    return v32 & 1;
  }

LABEL_35:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1D5221A34(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5221AD0(uint64_t a1)
{
  v2 = sub_1D5222B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5221B0C(uint64_t a1)
{
  v2 = sub_1D5222B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudMarketingItem.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2070, &qword_1D5645C48);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D5222B10();
  sub_1D56163D8();
  v20 = *v4;
  v24 = v4[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v2)
  {
    v21 = v4[2];
    sub_1D4E67688(v21);
    sub_1D5222B64();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    sub_1D4EA7410(v21);
    v16 = type metadata accessor for CloudMarketingItem(0);
    v17 = v16[6];
    type metadata accessor for CloudMarketingItem.Relationships(0);
    OUTLINED_FUNCTION_4_81();
    sub_1D52225D8(v18);
    sub_1D5616068();
    v22 = *(v4 + v16[7]);
    sub_1D5222BB8();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v23 = *(v4 + v16[8]);
    sub_1D5222C0C();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t CloudMarketingItem.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  OUTLINED_FUNCTION_4(v3);
  v35 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_71_1();
  v12 = type metadata accessor for CloudMarketingItem.Relationships(0);
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v25 = *v0;
  v26 = v0[1];
  sub_1D5614E28();
  v27 = v0[2];
  if (v27 == 1 || (OUTLINED_FUNCTION_27(), !v27))
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F30240();
  }

  v28 = type metadata accessor for CloudMarketingItem(0);
  sub_1D4F39AB0(v0 + v28[6], v24, &qword_1EC7F2060, &qword_1D5645C38);
  OUTLINED_FUNCTION_57(v24, 1, v12);
  if (v29)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D52229E4(v24, v18);
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v18, v2, &qword_1EC7F1FF0, &unk_1D5645BF8);
    OUTLINED_FUNCTION_57(v2, 1, v3);
    if (v29)
    {
      sub_1D56162F8();
    }

    else
    {
      v30 = v35;
      (*(v35 + 32))(v1, v2, v3);
      OUTLINED_FUNCTION_27();
      sub_1D52227A8();
      sub_1D5614CB8();
      (*(v30 + 8))(v1, v3);
    }

    OUTLINED_FUNCTION_6_76();
  }

  v31 = *(v0 + v28[7]);
  sub_1D56162F8();
  v32 = *(v0 + v28[8]);
  return sub_1D56162F8();
}

uint64_t CloudMarketingItem.hashValue.getter()
{
  sub_1D56162D8();
  CloudMarketingItem.hash(into:)();
  return sub_1D5616328();
}

void CloudMarketingItem.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v32 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F20A0, &qword_1D5645C50);
  v12 = OUTLINED_FUNCTION_4(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_71_1();
  v17 = type metadata accessor for CloudMarketingItem(0);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5222B10();
  v35 = v1;
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v31 = v10;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v25 = v37;
    *v23 = v36;
    v23[1] = v25;
    v30[2] = v25;
    sub_1D5222C60();
    OUTLINED_FUNCTION_11_76();
    sub_1D5615F78();
    v23[2] = v36;
    type metadata accessor for CloudMarketingItem.Relationships(0);
    LOBYTE(v36) = 2;
    OUTLINED_FUNCTION_4_81();
    sub_1D52225D8(v26);
    v27 = v31;
    v30[1] = 0;
    sub_1D5615F78();
    sub_1D4F39A1C(v27, v23 + v17[6], &qword_1EC7F2060, &qword_1D5645C38);
    sub_1D5222CB4();
    OUTLINED_FUNCTION_11_76();
    sub_1D5615F78();
    *(v23 + v17[7]) = v36;
    sub_1D5222D08();
    OUTLINED_FUNCTION_11_76();
    sub_1D5615F78();
    v28 = OUTLINED_FUNCTION_15_64();
    v29(v28);
    *(v23 + v17[8]) = v36;
    sub_1D5222D5C(v23, v32);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1D5222DC0(v23, type metadata accessor for CloudMarketingItem);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D52224E0()
{
  sub_1D56162D8();
  CloudMarketingItem.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D522251C()
{
  result = qword_1EC7F1FE8;
  if (!qword_1EC7F1FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1FD0, &qword_1D5645BE8);
    sub_1D52225D8(&qword_1EDD533A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1FE8);
  }

  return result;
}

unint64_t sub_1D52225D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D522261C()
{
  result = qword_1EC7F2000;
  if (!qword_1EC7F2000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
    sub_1D5222864(&qword_1EC7EBDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2000);
  }

  return result;
}

unint64_t sub_1D52226D8()
{
  result = qword_1EC7F2010;
  if (!qword_1EC7F2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2010);
  }

  return result;
}

unint64_t sub_1D522272C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
    sub_1D5222914(v4);
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D52227A8()
{
  result = qword_1EC7F2028;
  if (!qword_1EC7F2028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
    sub_1D5222864(&qword_1EC7EBD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2028);
  }

  return result;
}

unint64_t sub_1D5222864(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D52225D8(v4);
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5222914(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D52225D8(&qword_1EDD5CE68);
    sub_1D52225D8(qword_1EDD5CE70);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D52229E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudMarketingItem.Relationships(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5222A48()
{
  result = qword_1EC7F2048;
  if (!qword_1EC7F2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2048);
  }

  return result;
}

unint64_t sub_1D5222A9C()
{
  result = qword_1EC7F2058;
  if (!qword_1EC7F2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2058);
  }

  return result;
}

unint64_t sub_1D5222B10()
{
  result = qword_1EC7F2078;
  if (!qword_1EC7F2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2078);
  }

  return result;
}

unint64_t sub_1D5222B64()
{
  result = qword_1EC7F2080;
  if (!qword_1EC7F2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2080);
  }

  return result;
}

unint64_t sub_1D5222BB8()
{
  result = qword_1EC7F2090;
  if (!qword_1EC7F2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2090);
  }

  return result;
}

unint64_t sub_1D5222C0C()
{
  result = qword_1EC7F2098;
  if (!qword_1EC7F2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2098);
  }

  return result;
}

unint64_t sub_1D5222C60()
{
  result = qword_1EC7F20A8;
  if (!qword_1EC7F20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20A8);
  }

  return result;
}

unint64_t sub_1D5222CB4()
{
  result = qword_1EC7F20B8;
  if (!qword_1EC7F20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20B8);
  }

  return result;
}

unint64_t sub_1D5222D08()
{
  result = qword_1EC7F20C0;
  if (!qword_1EC7F20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20C0);
  }

  return result;
}

uint64_t sub_1D5222D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudMarketingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5222DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D5222E1C()
{
  result = qword_1EC7F20C8;
  if (!qword_1EC7F20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20C8);
  }

  return result;
}

unint64_t sub_1D5222E74()
{
  result = qword_1EC7F20D0;
  if (!qword_1EC7F20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20D0);
  }

  return result;
}

unint64_t sub_1D5222ECC()
{
  result = qword_1EC7F20D8;
  if (!qword_1EC7F20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20D8);
  }

  return result;
}

unint64_t sub_1D5222F24()
{
  result = qword_1EC7F20E0;
  if (!qword_1EC7F20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20E0);
  }

  return result;
}

unint64_t sub_1D5222F7C()
{
  result = qword_1EC7F20E8;
  if (!qword_1EC7F20E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F20F0, &qword_1D5645E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F20E8);
  }

  return result;
}

unint64_t sub_1D522302C()
{
  result = qword_1EC7F2100;
  if (!qword_1EC7F2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2100);
  }

  return result;
}

unint64_t sub_1D5223084()
{
  result = qword_1EC7F2108;
  if (!qword_1EC7F2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2108);
  }

  return result;
}

unint64_t sub_1D5223170(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2118, &qword_1D56460B8);
    v4();
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1D5223330()
{
  sub_1D4E518A0(319, &qword_1EC7F2140);
  if (v0 <= 0x3F)
  {
    sub_1D5223424();
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EC7F2150);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7F2158);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5223424()
{
  if (!qword_1EC7F2148)
  {
    type metadata accessor for CloudMarketingItem.Relationships(255);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F2148);
    }
  }
}

void sub_1D52234B4()
{
  sub_1D5223520();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D5223520()
{
  if (!qword_1EC7F2170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F2170);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudMarketingItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D52236B0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D5223760()
{
  result = qword_1EC7F2178;
  if (!qword_1EC7F2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2178);
  }

  return result;
}

unint64_t sub_1D52237B8()
{
  result = qword_1EC7F2180;
  if (!qword_1EC7F2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2180);
  }

  return result;
}

unint64_t sub_1D5223810()
{
  result = qword_1EC7F2188;
  if (!qword_1EC7F2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2188);
  }

  return result;
}

unint64_t sub_1D5223868()
{
  result = qword_1EC7F2190;
  if (!qword_1EC7F2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2190);
  }

  return result;
}

unint64_t sub_1D52238C0()
{
  result = qword_1EC7F2198;
  if (!qword_1EC7F2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2198);
  }

  return result;
}

unint64_t sub_1D5223918()
{
  result = qword_1EC7F21A0;
  if (!qword_1EC7F21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F21A0);
  }

  return result;
}

unint64_t sub_1D5223970()
{
  result = qword_1EC7F21A8;
  if (!qword_1EC7F21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F21A8);
  }

  return result;
}

unint64_t sub_1D52239C8()
{
  result = qword_1EC7F21B0;
  if (!qword_1EC7F21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F21B0);
  }

  return result;
}

unint64_t sub_1D5223A20()
{
  result = qword_1EC7F21B8;
  if (!qword_1EC7F21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F21B8);
  }

  return result;
}

unint64_t sub_1D5223A78()
{
  result = qword_1EC7F21C0;
  if (!qword_1EC7F21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F21C0);
  }

  return result;
}

uint64_t sub_1D5223B20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_46_1();
  result = v6(v5);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t TVEpisode.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for TVEpisode() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void TVEpisode.capabilities.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EC7E9178 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v13, v10);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v14, v10);
  sub_1D560EC28();
  if (a10)
  {
    v15 = 0;
  }

  else
  {
    v15 = a9;
  }

  *v12 = v15;
  OUTLINED_FUNCTION_69_3();
}

void sub_1D5223DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9188 != -1)
  {
    OUTLINED_FUNCTION_118_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v11, v10);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void TVEpisode.credits.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9290 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5223FA0(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_6_77();
  sub_1D4E737E0(v5, v2);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v6, v2);
  sub_1D560EC28();
  return v8;
}

void TVEpisode._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5224164(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = *a2;
  a3(0);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v7, v3);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v8, v3);
  OUTLINED_FUNCTION_61();

  return sub_1D560EC28();
}

void TVEpisode._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  sub_1D4F84A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_69_3();
}

void sub_1D522431C()
{
  OUTLINED_FUNCTION_70_1();
  v2 = v1;
  if (*v3 != -1)
  {
    swift_once();
  }

  v4 = *v2;
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v5, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v6, v0);
  sub_1D560EC28();
  OUTLINED_FUNCTION_69_3();
}

void TVEpisode.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E91B8 != -1)
  {
    OUTLINED_FUNCTION_111_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v11, v10);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t TVEpisode.kind.getter()
{
  if (qword_1EC7E91F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t sub_1D52245DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_6_77();
  sub_1D4E737E0(v5, v2);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v6, v2);
  sub_1D560EC28();
  if (v9)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_1D5224690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9218 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v11, v10);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void TVEpisode.previews.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9240 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDBB0, L"X\b\t");
  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v11, v10);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v12, v10);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t TVEpisode.supportedLocales.getter()
{
  if (qword_1EC7E9278 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t TVEpisode.genres.getter()
{
  if (qword_1EC7E92B0 != -1)
  {
    OUTLINED_FUNCTION_43_25();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t sub_1D5224B0C()
{
  if (qword_1EC7E92B8 != -1)
  {
    OUTLINED_FUNCTION_13_63();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t sub_1D5224BD0()
{
  if (qword_1EC7E92C0 != -1)
  {
    OUTLINED_FUNCTION_42_27();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVEpisode.musicArtists.getter()
{
  if (qword_1EC7E92C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVEpisode.otherEpisodes.getter()
{
  if (qword_1EC7E92D0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVEpisode.playlists.getter()
{
  if (qword_1EC7E92D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t static TVEpisode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TVEpisode() + 20);

  return sub_1D5611A78();
}

uint64_t TVEpisode.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v2 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v120 = v4;
  v121 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v118 = v7;
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_4(v8);
  v114 = v10;
  v115 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v112 = v13;
  v107 = sub_1D5611AB8();
  v14 = OUTLINED_FUNCTION_4(v107);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v117 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v116 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v103 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v123 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v103 - v45;
  v47 = type metadata accessor for TVEpisode();
  v48 = OUTLINED_FUNCTION_14(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_29();
  v122 = v51;
  sub_1D522B038();
  v52 = TVEpisode.title.getter();
  v110 = v53;
  v111 = v52;
  v54 = TVEpisode.showName.getter();
  v108 = v55;
  v109 = v54;
  if (qword_1EC7E9170 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  OUTLINED_FUNCTION_6_77();
  v57 = sub_1D4E737E0(v56, v1);
  OUTLINED_FUNCTION_0_140();
  v59 = sub_1D4E737E0(v58, v1);
  OUTLINED_FUNCTION_68_3();
  if (qword_1EC7E9188 != -1)
  {
    OUTLINED_FUNCTION_118_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_68_3();
  v60 = OUTLINED_FUNCTION_67_1(v124[0]);
  v61 = *(v60 + 16);
  v113 = v46;
  if (v61)
  {
    v62 = v32;
    v63 = *(v60 + 80);
    v64 = *(v60 + 88);

    v65 = sub_1D56106B8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
    if ((v64 & 1) == 0)
    {
      sub_1D4E50004(v39, &qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_24_0(v65);
      v70 = MEMORY[0x1E6975D50];
      if (v63 >= 500)
      {
        v70 = MEMORY[0x1E6975D58];
      }

      (*(v69 + 104))(v39, *v70, v65);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v65);
    }

    sub_1D4FB8058();
    v32 = v62;
  }

  else
  {

    sub_1D56106B8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  }

  if (qword_1EC7E9288 != -1)
  {
    OUTLINED_FUNCTION_122_4();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_68_3();
  v105 = v32;
  if (qword_1EC7E91C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_68_3();
  v104 = LOBYTE(v124[0]);
  v75 = v115;
  v76 = v116;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v75);
  v125 = v47;
  v126 = v59;
  __swift_allocate_boxed_opaque_existential_0(v124);
  OUTLINED_FUNCTION_38_29();
  v103[1] = v57;
  sub_1D522B038();
  v80 = __swift_project_boxed_opaque_existential_1(v124, v125);
  v81 = v106;
  v82 = v107;
  (*(v16 + 16))(v106, &v80[*(v47 + 20)], v107);
  sub_1D5611A98();
  (*(v16 + 8))(v81, v82);
  v83 = v117;
  sub_1D560FDD8();
  v84 = *(v114 + 8);
  v85 = OUTLINED_FUNCTION_46_1();
  v86(v85);
  sub_1D4E50004(v76, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v75);
  sub_1D4FB8058();
  __swift_destroy_boxed_opaque_existential_1(v124);
  v87 = v118;
  sub_1D560EC98();
  sub_1D4FB8150();
  v88 = type metadata accessor for MusicSiriRepresentation();
  v89 = v88[8];
  v90 = v119;
  v91 = v113;
  sub_1D4FB8150();
  v92 = v88[9];
  v93 = v123;
  sub_1D4FB8150();
  v94 = v90 + v88[10];
  v95 = v105;
  sub_1D4FB8150();
  LOBYTE(v124[0]) = 14;
  sub_1D50391CC();
  v97 = v96;
  v99 = v98;
  sub_1D4E50004(v83, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v120 + 8))(v87, v121);
  sub_1D4E50004(v76, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v95, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v93, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v91, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D522B278(v122, type metadata accessor for TVEpisode);
  *v90 = v97;
  *(v90 + 8) = v99;
  *(v90 + 16) = 14;
  v101 = v110;
  *(v90 + 24) = v111;
  *(v90 + 32) = v101;
  v102 = v108;
  *(v90 + 40) = v109;
  *(v90 + 48) = v102;
  return result;
}

uint64_t TVEpisode.debugDescription.getter()
{
  v228 = sub_1D5613C48();
  v2 = OUTLINED_FUNCTION_4(v228);
  v206 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v227 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v8);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F0, &unk_1D562B8A0);
  OUTLINED_FUNCTION_14(v205);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v224 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v17);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v225);
  v216 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v22);
  v23 = type metadata accessor for TVSeason();
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v226 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v29);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2228, &qword_1D56466A0);
  OUTLINED_FUNCTION_14(v204);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v192 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v192 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_4(v41);
  v213 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v51);
  v210 = type metadata accessor for TVShow();
  v52 = OUTLINED_FUNCTION_14(v210);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v60);
  v209 = sub_1D560C0A8();
  v61 = OUTLINED_FUNCTION_4(v209);
  v202 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v200 = sub_1D5610788();
  v66 = OUTLINED_FUNCTION_4(v200);
  v199 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v198 = sub_1D56107C8();
  v71 = OUTLINED_FUNCTION_4(v198);
  v197 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v77 = OUTLINED_FUNCTION_22(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  v194 = v80;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v82);
  v208 = sub_1D560C328();
  v83 = OUTLINED_FUNCTION_4(v208);
  v207 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  v93 = v92;
  v94 = sub_1D5610978();
  v95 = OUTLINED_FUNCTION_4(v94);
  v192 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v99);
  OUTLINED_FUNCTION_75_16();
  v235 = v100;
  v236 = 0xEA00000000002865;
  strcpy(v231, "\n  id: ");
  BYTE1(v231[1]) = 0;
  WORD1(v231[1]) = 0;
  HIDWORD(v231[1]) = -402653184;
  v101 = *v0;
  v102 = v0[1];
  sub_1D560EEC8();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  OUTLINED_FUNCTION_51_0();
  v231[0] = v103 | 0x6C74697400000000;
  v231[1] = 0xEC00000022203A65;
  TVEpisode.title.getter();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  v231[0] = 0;
  v231[1] = 0xE000000000000000;
  sub_1D5615B68();

  v231[0] = 0x776F687320200A2CLL;
  v231[1] = 0xEF22203A656D614ELL;
  TVEpisode.showName.getter();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  if (qword_1EC7E9190 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_112();
  v105 = sub_1D4E737E0(v104, v1);
  OUTLINED_FUNCTION_0_140();
  v222 = sub_1D4E737E0(v106, v1);
  v221 = v0;
  sub_1D560EC28();
  v107 = v231[1];
  if (v231[1])
  {
    OUTLINED_FUNCTION_51_0();
    v231[0] = v108 | 0x79706F6300000000;
    v231[1] = 0xEF203A7468676972;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E9210 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_23_46();
  sub_1D560EC28();
  if ((v231[1] & 1) == 0)
  {
    v109 = v231[0];
    strcpy(v231, ",\n  number: ");
    HIWORD(v231[1]) = -4864;
    v233 = v109;
    sub_1D56160F8();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E9270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_23_46();
  sub_1D560EC28();
  if ((v231[1] & 1) == 0)
  {
    v110 = v231[0];
    v231[0] = 0xD000000000000010;
    v231[1] = 0x80000001D5688460;
    v233 = v110;
    sub_1D56160F8();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E9250 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_23_46();
  sub_1D560EC28();
  if ((v231[1] & 1) == 0)
  {
    v111 = v231[0];
    v231[0] = 0xD000000000000013;
    v231[1] = 0x80000001D5688440;
    v233 = v111;
    sub_1D56160F8();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E91B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_23_46();
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v94);
  v217 = v40;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v93, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v113 = v192;
    v114 = v193;
    (*(v192 + 32))(v193, v93, v94);
    OUTLINED_FUNCTION_15_65();
    v231[0] = v116 + 4;
    v231[1] = v115;
    v117 = sub_1D5610928();
    v107 = v118;
    v233 = v117;
    v234 = v118;
    v232[0] = 10;
    v232[1] = 0xE100000000000000;
    v229 = 2105354;
    v230 = 0xE300000000000000;
    sub_1D4F53278();
    v119 = OUTLINED_FUNCTION_23_5();
    v121 = v120;

    MEMORY[0x1DA6EAC70](v119, v121);

    OUTLINED_FUNCTION_16_7();

    v122 = *(v113 + 8);
    v40 = (v113 + 8);
    v122(v114, v94);
  }

  OUTLINED_FUNCTION_79_13();
  v233 = 0;
  v234 = 0xE000000000000000;
  if (qword_1EC7E91B8 != -1)
  {
    OUTLINED_FUNCTION_111_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v220 = v105;
  OUTLINED_FUNCTION_23_46();
  sub_1D560EC28();
  if (v231[0])
  {
    v123 = v231[0];
  }

  else
  {
    v123 = MEMORY[0x1E69E7CC0];
  }

  v124 = *(v123 + 16);
  if (v124)
  {
    v125 = (v123 + 40);
    v94 = 0x22202020200ALL;
    v40 = 0xE600000000000000;
    do
    {
      v126 = *(v125 - 1);
      v127 = *v125;
      OUTLINED_FUNCTION_48_1();
      if (v130)
      {
        v131 = v128;
      }

      else
      {
        v131 = v129;
      }

      if (v131)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v231[0] = 0x22202020200ALL;
      v231[1] = 0xE600000000000000;
      MEMORY[0x1DA6EAC70](v126, v127);

      OUTLINED_FUNCTION_55_0();
      v107 = v231[1];
      MEMORY[0x1DA6EAC70](v231[0], v231[1]);

      v125 += 2;
      --v124;
    }

    while (v124);

    v132 = v234;
    OUTLINED_FUNCTION_79_13();
  }

  else
  {

    v133 = 0;
    v132 = 0xE000000000000000;
  }

  v134 = HIBYTE(v132) & 0xF;
  if ((v132 & 0x2000000000000000) == 0)
  {
    v134 = v133 & 0xFFFFFFFFFFFFLL;
  }

  v135 = v208;
  if (v134)
  {
    OUTLINED_FUNCTION_15_65();
    OUTLINED_FUNCTION_65_12(v136);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_58_8();
    v132 = v231[1];
    MEMORY[0x1DA6EAC70](v231[0], v231[1]);
  }

  if (qword_1EC7E9248 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v137 = __swift_getEnumTagSinglePayload(v94, 1, v135);
  v138 = v207;
  if (v137 == 1)
  {
    sub_1D4E50004(v94, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_54_21();
  }

  else
  {
    (*(v207 + 32))(v107, v94, v135);
    v139 = v195;
    sub_1D56107A8();
    v140 = v194;
    (*(v138 + 16))(v194, v107, v135);
    __swift_storeEnumTagSinglePayload(v140, 0, 1, v135);
    v141 = v199;
    v142 = v196;
    v143 = v200;
    (*(v199 + 104))(v196, *MEMORY[0x1E6975DC8], v200);
    v218 = sub_1D56107B8();
    v132 = v144;
    v145 = *(v141 + 8);
    v40 = (v141 + 8);
    v145(v142, v143);
    sub_1D4E50004(v140, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v197 + 8))(v139, v198);
    if (v132)
    {
      OUTLINED_FUNCTION_15_65();
      OUTLINED_FUNCTION_65_12(v146);
      MEMORY[0x1DA6EAC70](v218, v132);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_16_7();
    }

    (*(v138 + 8))(v219, v135);
    OUTLINED_FUNCTION_54_21();
  }

  if (qword_1EC7E9258 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_25_45();
  if (v231[1])
  {
    OUTLINED_FUNCTION_15_65();
    OUTLINED_FUNCTION_65_12(v147);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E9268 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_25_45();
  if (v231[1])
  {
    OUTLINED_FUNCTION_15_65();
    OUTLINED_FUNCTION_65_12(v148);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E9288 != -1)
  {
    OUTLINED_FUNCTION_122_4();
  }

  v149 = v209;
  OUTLINED_FUNCTION_25_45();
  OUTLINED_FUNCTION_43_0(v132);
  if (v130)
  {
    sub_1D4E50004(v132, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v150 = v202;
    v151 = v201;
    (*(v202 + 32))(v201, v132, v149);
    OUTLINED_FUNCTION_51_0();
    v231[0] = v152 | 0x3A6C727500000000;
    v231[1] = 0xEA00000000002220;
    OUTLINED_FUNCTION_10_76();
    sub_1D4E737E0(v153, v154);
    sub_1D56160F8();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_16_7();

    (*(v150 + 8))(v151, v149);
    v135 = v217;
  }

  v155 = v211;
  TVEpisode.show.getter();
  if (__swift_getEnumTagSinglePayload(v155, 1, v40) == 1)
  {
    sub_1D4E50004(v155, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    v156 = v203;
    sub_1D522B090();
    strcpy(v231, ",\n  show: ");
    BYTE3(v231[1]) = 0;
    HIDWORD(v231[1]) = -369098752;
    v232[0] = 0;
    v232[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v232, "TVShow(id: ");
    BYTE5(v232[1]) = 0;
    HIWORD(v232[1]) = -5120;
    v157 = *v156;
    v158 = v156[1];
    v159 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v159);

    MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
    v160 = TVShow.name.getter();
    MEMORY[0x1DA6EAC70](v160);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v232[0], v232[1]);

    OUTLINED_FUNCTION_16_7();

    sub_1D522B278(v156, type metadata accessor for TVShow);
  }

  if (qword_1EC7E92B8 != -1)
  {
    OUTLINED_FUNCTION_13_63();
  }

  OUTLINED_FUNCTION_25_45();
  if (__swift_getEnumTagSinglePayload(v135, 1, v41) == 1)
  {
    sub_1D4E50004(v135, &qword_1EC7ED1F8, &qword_1D5634780);
  }

  else
  {
    (*(v213 + 32))(v212, v135, v41);
    v161 = OUTLINED_FUNCTION_53_23();
    v162(v161);
    v163 = *(v204 + 36);
    sub_1D4ECCCA4(&qword_1EC7EA520, &qword_1EC7EA518, &unk_1D5623F50);
    sub_1D5615608();
    while (1)
    {
      sub_1D5615648();
      if (*&v34[v163] == v231[0])
      {
        break;
      }

      v164 = sub_1D5615688();
      sub_1D522B038();
      v164(v231, 0);
      sub_1D5615658();
      sub_1D522B090();
      OUTLINED_FUNCTION_48_1();
      if (!v130)
      {
        v165 = v166;
      }

      if (v165)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v231[0] = 10;
      v231[1] = 0xE100000000000000;
      v167 = v226;
      TVSeason.debugDescription.getter();
      OUTLINED_FUNCTION_56_3();

      MEMORY[0x1DA6EAC70](v231[0], v231[1]);

      sub_1D522B278(v167, type metadata accessor for TVSeason);
    }

    sub_1D4E50004(v34, &qword_1EC7F2228, &qword_1D56466A0);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_35_19(v168 | 0x7369706500000000);
    OUTLINED_FUNCTION_41_17();
    v169 = OUTLINED_FUNCTION_23_5();
    v171 = v170;

    MEMORY[0x1DA6EAC70](v169, v171);

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v231[0], v231[1]);

    (*(v213 + 8))(v212, v41);
  }

  v172 = v224;
  v173 = v214;
  if (qword_1EC7E92B0 != -1)
  {
    OUTLINED_FUNCTION_43_25();
  }

  OUTLINED_FUNCTION_25_45();
  OUTLINED_FUNCTION_43_0(v173);
  if (v130)
  {
    sub_1D4E50004(v173, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    (*(v216 + 32))(v215, v173, v225);
    v174 = OUTLINED_FUNCTION_53_23();
    v175(v174);
    v176 = *(v205 + 36);
    sub_1D4ECCCA4(&qword_1EC7EA5A8, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_61();
    sub_1D5615608();
    v177 = (v206 + 16);
    v178 = (v206 + 32);
    v179 = (v206 + 8);
    v180 = v223;
    while (1)
    {
      v181 = v225;
      OUTLINED_FUNCTION_61();
      sub_1D5615648();
      if (*(v172 + v176) == v231[0])
      {
        break;
      }

      v182 = sub_1D5615688();
      v183 = v228;
      (*v177)(v180);
      v182(v231, 0);
      sub_1D5615658();
      (*v178)(v227, v180, v183);
      OUTLINED_FUNCTION_48_1();
      if (!v130)
      {
        v184 = v185;
      }

      if (v184)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v231[0] = 10;
      v231[1] = 0xE100000000000000;
      v186 = v227;
      sub_1D5613B88();
      OUTLINED_FUNCTION_56_3();

      MEMORY[0x1DA6EAC70](v231[0], v231[1]);

      (*v179)(v186, v228);
      v172 = v224;
    }

    sub_1D4E50004(v172, &qword_1EC7EE5F0, &unk_1D562B8A0);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_35_19(v187 | 0x726E656700000000);
    OUTLINED_FUNCTION_41_17();
    v188 = OUTLINED_FUNCTION_23_5();
    v190 = v189;

    MEMORY[0x1DA6EAC70](v188, v190);

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v231[0], v231[1]);

    (*(v216 + 8))(v215, v181);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v235;
}

uint64_t TVEpisode.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t TVEpisode.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TVEpisode() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t TVEpisode.catalogID.getter()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  type metadata accessor for TVEpisode();
  OUTLINED_FUNCTION_3_110();
  sub_1D4E737E0(v12, v13);
  sub_1D560EC98();
  sub_1D560D7A8();
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_61();
  v16(v15);
  v17 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v11, 1, v17) == 1)
  {
    sub_1D4E50004(v11, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v18 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0(v17);
    (*(v19 + 8))(v11, v17);
  }

  return v18;
}

void TVEpisode.contentRating.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EC7E9188 != -1)
  {
    OUTLINED_FUNCTION_118_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_2_110();
  sub_1D4E737E0(v13, v10);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v14, v10);
  OUTLINED_FUNCTION_46_1();
  sub_1D560EC28();
  if (a10)
  {
    v15 = a10;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4EC92E8(v15, v12);

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5227604(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_6_77();
  sub_1D4E737E0(v5, v2);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v6, v2);
  sub_1D560EC28();
  return v8;
}

uint64_t TVEpisode.playbackPosition.getter()
{
  if (qword_1EC7E9228 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_112();
  sub_1D4E737E0(v1, v0);
  OUTLINED_FUNCTION_0_140();
  sub_1D4E737E0(v2, v0);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}