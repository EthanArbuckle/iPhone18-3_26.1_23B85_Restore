uint64_t sub_1DB07177C()
{
  v1 = *(*v0 + 2856);
  v2 = *(*v0 + 2760);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB07188C, v2, 0);
}

uint64_t sub_1DB07188C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2848);
  *(v2 + 2864) = *(v2 + 2832);
  v4 = *(v2 + 2824);
  v5 = *(v2 + 2816);
  v14 = *(v2 + 2768);
  v6 = *(v2 + 2760);
  v7 = *(v2 + 2752);
  v8 = *(v2 + 2728);
  sub_1DB08E648(&qword_1EE3014E0, a2, type metadata accessor for ArmandDataFiller);
  v9 = swift_task_alloc();
  *(v2 + 2880) = v9;
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v2 + 2664;
  v9[5] = v2 + 2656;
  v9[6] = v7;
  v9[7] = v6;
  v9[8] = v2 + 2640;
  v9[9] = v2 + 2408;
  v9[10] = v3;
  v9[11] = v8;
  v9[12] = v2 + 1056;
  v9[13] = v2 + 2576;
  v9[14] = v2 + 2720;
  v9[15] = v2 + 2624;
  v9[16] = v2 + 2712;
  v9[17] = v2 + 2672;
  v9[18] = v2 + 2592;
  v9[19] = v2 + 2688;
  v9[20] = v2 + 2608;
  v9[21] = v2 + 2704;
  v9[22] = v2 + 2696;
  v9[23] = v14;
  v10 = *(MEMORY[0x1E69E88A0] + 4);
  v11 = swift_task_alloc();
  *(v2 + 2888) = v11;
  *v11 = v2;
  v11[1] = sub_1DB071AAC;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v2 + 1050, v12);
}

void sub_1DB071AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 2888);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 2880);
    v6 = *(v2 + 2760);
    sub_1DAF40988(v2 + 1056);

    MEMORY[0x1EEE6DFA0](sub_1DB071BF8, v6, 0);
  }
}

uint64_t sub_1DB071BF8()
{
  v17 = v0;
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2816);
  v3 = *(v0 + 2752);
  v4 = *(v0 + 1050);
  *(v0 + 1051) = v4;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000048, 0x80000001DB0CB3E0);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v5, v6);

  v7 = v15;
  LOBYTE(v15) = 5;
  CoreODILogger.debug(_:category:)(v7, v16, &v15);

  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v10 = *(v9 + 8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 2896) = v12;
  *v12 = v0;
  v12[1] = sub_1DB071DE0;

  return v14(v0 + 2680, v8, v9);
}

uint64_t sub_1DB071DE0()
{
  v1 = *(*v0 + 2896);
  v2 = *(*v0 + 2760);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB071EF0, v2, 0);
}

uint64_t sub_1DB071EF0()
{
  v112 = v0;
  v1 = *(v0 + 2864);
  v2 = *(v0 + 2680);
  *(v0 + 2904) = v2;
  if (!*(v1 + 16))
  {

    v12 = *(*(v0 + 2872) + 16);

    if (v12)
    {
      if (qword_1ECC0E0B8 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 2784);
      v14 = *(v0 + 2776);
      v16 = qword_1ECC25D20;
      v15 = *algn_1ECC25D28;
      v17 = byte_1ECC25D30;
      v18 = qword_1ECC25D38;
      v19 = byte_1ECC25D40;
      *(v13 + 32) = "enableTelemetry=YES";
      *(v13 + 40) = 19;
      *(v13 + 48) = 2;
      *v13 = v16;
      *(v13 + 8) = v15;
      *(v13 + 16) = v17;
      *(v13 + 24) = v18;
      v20 = *(v14 + 28);
      v21 = v18;
      sub_1DB09D474();
      sub_1DB09DC14();
      if (v19 == 1)
      {
        sub_1DB09D454();
      }

      else
      {
        sub_1DB09D464();
      }

      v63 = *(v0 + 2904);
      sub_1DB08E91C(*(v0 + 2784), *(v0 + 2792), type metadata accessor for ODISignpost);
      v110 = v63;
      LOBYTE(v109[0]) = 0;
      v64 = sub_1DB07E64C(v109);
      *(v0 + 2936) = v65;
      if (v65)
      {
        v66 = v65;
        v67 = v64;
        v110 = *(v0 + 2904);
        LOBYTE(v109[0]) = 1;
        v68 = sub_1DB07E64C(v109);
        *(v0 + 2944) = v69;
        if (v69)
        {
          v70 = v68;
          v71 = v69;
          v72 = swift_task_alloc();
          *(v0 + 2952) = v72;
          *v72 = v0;
          v72[1] = sub_1DB072FD0;
          v73 = *(v0 + 2760);
          v74 = v67;
          v75 = v66;
          v76 = v70;
          v77 = v71;
          v78 = 0;
LABEL_74:

          return sub_1DB06C09C(v74, v75, v76, v77, v78);
        }
      }

      v110 = *(v0 + 2904);
      LOBYTE(v109[0]) = 16;
      v79 = sub_1DB07E64C(v109);
      *(v0 + 2960) = v80;
      if (v80)
      {
        v81 = v80;
        v82 = v79;
        v110 = *(v0 + 2904);
        LOBYTE(v109[0]) = 17;
        v83 = sub_1DB07E64C(v109);
        *(v0 + 2968) = v84;
        if (v84)
        {
          v85 = v83;
          v86 = v84;
          v87 = swift_task_alloc();
          *(v0 + 2976) = v87;
          *v87 = v0;
          v87[1] = sub_1DB07338C;
          v88 = *(v0 + 2760);
          v74 = v82;
          v75 = v81;
          v76 = v85;
          v77 = v86;
          v78 = 1;
          goto LABEL_74;
        }
      }

      v89 = *(v0 + 2792);
      v90 = *(v0 + 2776);
      sub_1DB09DC04();
      v91 = *(v89 + 24);
      v92 = *v89;
      v93 = *(v89 + 8);
      v94 = *(v90 + 28);
      v95 = *(v89 + 16);
      sub_1DB09D464();
      sub_1DB08E718(v89, type metadata accessor for ODISignpost);
    }

    v96 = *(v0 + 2824);
    v97 = *(v0 + 2816);
    v98 = *(v0 + 2808);
    v99 = *(v0 + 2800);
    v100 = *(v0 + 2792);
    v101 = *(v0 + 2784);
    v102 = *(v0 + 2760);
    v110 = *(v0 + 2904);
    sub_1DB06C324(&v110);

    *(v102 + 1146) = 1;
    v110 = v97;
    v111 = v96;
    LOBYTE(v109[0]) = 5;
    CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, v109);
    sub_1DAF40AEC(v0 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);
    v103 = *(v0 + 2664);

    v104 = *(v0 + 2672);

    v105 = *(v0 + 2696);

    v106 = *(v0 + 8);
    v107 = *(v0 + 1051);

    return v106(v107);
  }

  if (qword_1ECC0E0C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 2800);
  v4 = *(v0 + 2776);
  v5 = qword_1ECC25D48;
  v6 = unk_1ECC25D50;
  v7 = byte_1ECC25D58;
  v8 = qword_1ECC25D60;
  v9 = byte_1ECC25D68;
  *(v3 + 32) = "enableTelemetry=YES";
  *(v3 + 40) = 19;
  *(v3 + 48) = 2;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  *(v3 + 24) = v8;
  v10 = *(v4 + 28);
  v11 = v8;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v9 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DB08E91C(*(v0 + 2800), *(v0 + 2808), type metadata accessor for ODISignpost);
  v22 = *(v1 + 16);
  if (v22)
  {
    v23 = (*(v0 + 2864) + 40);
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = *(v23 - 1);
      v27 = *v23;

      v29 = sub_1DB09E004();
      if (v29 == 2)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1DAF73DA0(0, *(v24 + 2) + 1, 1, v24);
        }

        v35 = *(v24 + 2);
        v34 = *(v24 + 3);
        if (v35 >= v34 >> 1)
        {
          v24 = sub_1DAF73DA0((v34 > 1), v35 + 1, 1, v24);
        }

        *(v24 + 2) = v35 + 1;
        v25 = &v24[v35];
        v26 = 2;
      }

      else
      {
        if (v29 != 1)
        {
          if (v29)
          {
            v36 = *(v0 + 2824);
            v109[0] = *(v0 + 2816);
            v109[1] = v36;
            v110 = 0;
            v111 = 0xE000000000000000;
            sub_1DB09DE44();

            v110 = 0xD000000000000025;
            v111 = 0x80000001DB0CB430;
            MEMORY[0x1E127FE90](v28, v27);

            v37 = v110;
            LOBYTE(v110) = 5;
            CoreODILogger.info(_:category:)(v37, v111, &v110);
          }

          else
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_1DAF73DA0(0, *(v24 + 2) + 1, 1, v24);
            }

            v31 = *(v24 + 2);
            v30 = *(v24 + 3);
            if (v31 >= v30 >> 1)
            {
              v24 = sub_1DAF73DA0((v30 > 1), v31 + 1, 1, v24);
            }

            *(v24 + 2) = v31 + 1;
            v24[v31 + 32] = 0;
          }

          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1DAF73DA0(0, *(v24 + 2) + 1, 1, v24);
        }

        v33 = *(v24 + 2);
        v32 = *(v24 + 3);
        if (v33 >= v32 >> 1)
        {
          v24 = sub_1DAF73DA0((v32 > 1), v33 + 1, 1, v24);
        }

        *(v24 + 2) = v33 + 1;
        v25 = &v24[v33];
        v26 = 1;
      }

      v25[32] = v26;
LABEL_16:
      v23 += 2;
      if (!--v22)
      {
        goto LABEL_36;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v38 = *(v0 + 2864);

  v39 = sub_1DB08E188(v24, sub_1DB09047C, &type metadata for PhoneFormatterSource.PhoneNumberType, sub_1DB082C44);

  v40 = sub_1DB053C90(v39);
  *(v0 + 2912) = v40;
  v41 = v40[2];
  v108 = v40;
  if (v41)
  {
    v42 = (v40 + 4);
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v45 = *v42++;
      v44 = v45;
      if (v45)
      {
        if (v44 == 1)
        {
          if (*(v2 + 16))
          {
            v46 = sub_1DAF35210(0x6E6F685072656570, 0xEF7265626D754E65);
            if (v47)
            {
              sub_1DAF3523C(*(v2 + 56) + 40 * v46, v0 + 2328);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
              v48 = swift_dynamicCast();
              v49 = *(v0 + 2544);
              v50 = *(v0 + 2552);
LABEL_49:
              if (v48)
              {
                v55 = v49;
              }

              else
              {
                v55 = 0;
              }

              if (v48)
              {
                v56 = v50;
              }

              else
              {
                v56 = 0;
              }

              goto LABEL_56;
            }
          }
        }

        else if (*(v2 + 16))
        {
          v53 = sub_1DAF35210(0xD000000000000014, 0x80000001DB0C1960);
          if (v54)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v53, v0 + 2368);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v48 = swift_dynamicCast();
            v49 = *(v0 + 2560);
            v50 = *(v0 + 2568);
            goto LABEL_49;
          }
        }
      }

      else if (*(v2 + 16))
      {
        v51 = sub_1DAF35210(0x6D754E656E6F6870, 0xEB00000000726562);
        if (v52)
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v51, v0 + 2288);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v48 = swift_dynamicCast();
          v49 = *(v0 + 2528);
          v50 = *(v0 + 2536);
          goto LABEL_49;
        }
      }

      v55 = 0;
      v56 = 0;
LABEL_56:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DAF73C6C(0, v43[2] + 1, 1, v43);
      }

      v58 = v43[2];
      v57 = v43[3];
      if (v58 >= v57 >> 1)
      {
        v43 = sub_1DAF73C6C((v57 > 1), v58 + 1, 1, v43);
      }

      v43[2] = v58 + 1;
      v59 = &v43[2 * v58];
      v59[4] = v55;
      v59[5] = v56;
      if (!--v41)
      {
        goto LABEL_63;
      }
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_63:
  *(v0 + 2920) = v43;
  v60 = swift_task_alloc();
  *(v0 + 2928) = v60;
  *v60 = v0;
  v60[1] = sub_1DB0729E4;
  v61 = *(v0 + 2760);

  return sub_1DB06BDAC(v43, v108);
}

uint64_t sub_1DB0729E4()
{
  v1 = *(*v0 + 2928);
  v2 = *(*v0 + 2920);
  v3 = *(*v0 + 2912);
  v4 = *(*v0 + 2760);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB072B34, v4, 0);
}

uint64_t sub_1DB072B34()
{
  v66 = v0;
  v1 = *(v0 + 2808);
  v2 = *(v0 + 2776);
  sub_1DB09DC04();
  v3 = *(v1 + 24);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v2 + 28);
  v7 = *(v1 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v1, type metadata accessor for ODISignpost);
  v8 = *(*(v0 + 2872) + 16);

  if (v8)
  {
    if (qword_1ECC0E0B8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2784);
    v10 = *(v0 + 2776);
    v12 = qword_1ECC25D20;
    v11 = *algn_1ECC25D28;
    v13 = byte_1ECC25D30;
    v14 = qword_1ECC25D38;
    v15 = byte_1ECC25D40;
    *(v9 + 32) = "enableTelemetry=YES";
    *(v9 + 40) = 19;
    *(v9 + 48) = 2;
    *v9 = v12;
    *(v9 + 8) = v11;
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    v16 = *(v10 + 28);
    v17 = v14;
    sub_1DB09D474();
    sub_1DB09DC14();
    if (v15 == 1)
    {
      sub_1DB09D454();
    }

    else
    {
      sub_1DB09D464();
    }

    v18 = *(v0 + 2904);
    sub_1DB08E91C(*(v0 + 2784), *(v0 + 2792), type metadata accessor for ODISignpost);
    v64[0] = v18;
    v65 = 0;
    v19 = sub_1DB07E64C(&v65);
    *(v0 + 2936) = v20;
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      v64[0] = *(v0 + 2904);
      v65 = 1;
      v23 = sub_1DB07E64C(&v65);
      *(v0 + 2944) = v24;
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v27 = swift_task_alloc();
        *(v0 + 2952) = v27;
        *v27 = v0;
        v27[1] = sub_1DB072FD0;
        v28 = *(v0 + 2760);
        v29 = v22;
        v30 = v21;
        v31 = v25;
        v32 = v26;
        v33 = 0;
LABEL_14:

        return sub_1DB06C09C(v29, v30, v31, v32, v33);
      }
    }

    v64[0] = *(v0 + 2904);
    v65 = 16;
    v34 = sub_1DB07E64C(&v65);
    *(v0 + 2960) = v35;
    if (v35)
    {
      v36 = v35;
      v37 = v34;
      v64[0] = *(v0 + 2904);
      v65 = 17;
      v38 = sub_1DB07E64C(&v65);
      *(v0 + 2968) = v39;
      if (v39)
      {
        v40 = v38;
        v41 = v39;
        v42 = swift_task_alloc();
        *(v0 + 2976) = v42;
        *v42 = v0;
        v42[1] = sub_1DB07338C;
        v43 = *(v0 + 2760);
        v29 = v37;
        v30 = v36;
        v31 = v40;
        v32 = v41;
        v33 = 1;
        goto LABEL_14;
      }
    }

    v45 = *(v0 + 2792);
    v46 = *(v0 + 2776);
    sub_1DB09DC04();
    v47 = *(v45 + 24);
    v48 = *v45;
    v49 = *(v45 + 8);
    v50 = *(v46 + 28);
    v51 = *(v45 + 16);
    sub_1DB09D464();
    sub_1DB08E718(v45, type metadata accessor for ODISignpost);
  }

  v52 = *(v0 + 2824);
  v53 = *(v0 + 2816);
  v54 = *(v0 + 2808);
  v55 = *(v0 + 2800);
  v56 = *(v0 + 2792);
  v57 = *(v0 + 2784);
  v58 = *(v0 + 2760);
  v64[0] = *(v0 + 2904);
  sub_1DB06C324(v64);

  *(v58 + 1146) = 1;
  v64[0] = v53;
  v64[1] = v52;
  v65 = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, &v65);
  sub_1DAF40AEC(v0 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);
  v59 = *(v0 + 2664);

  v60 = *(v0 + 2672);

  v61 = *(v0 + 2696);

  v62 = *(v0 + 8);
  v63 = *(v0 + 1051);

  return v62(v63);
}

uint64_t sub_1DB072FD0()
{
  v1 = *(*v0 + 2952);
  v2 = *(*v0 + 2944);
  v3 = *(*v0 + 2936);
  v4 = *(*v0 + 2760);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB073120, v4, 0);
}

uint64_t sub_1DB073120()
{
  v33 = v0;
  v31[0] = *(v0 + 2904);
  v32 = 16;
  v1 = sub_1DB07E64C(&v32);
  *(v0 + 2960) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v31[0] = *(v0 + 2904);
    v32 = 17;
    v5 = sub_1DB07E64C(&v32);
    *(v0 + 2968) = v6;
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = swift_task_alloc();
      *(v0 + 2976) = v9;
      *v9 = v0;
      v9[1] = sub_1DB07338C;
      v10 = *(v0 + 2760);

      return sub_1DB06C09C(v4, v3, v7, v8, 1);
    }
  }

  v12 = *(v0 + 2792);
  v13 = *(v0 + 2776);
  sub_1DB09DC04();
  v14 = *(v12 + 24);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v13 + 28);
  v18 = *(v12 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v12, type metadata accessor for ODISignpost);
  v19 = *(v0 + 2824);
  v20 = *(v0 + 2816);
  v21 = *(v0 + 2808);
  v22 = *(v0 + 2800);
  v23 = *(v0 + 2792);
  v24 = *(v0 + 2784);
  v25 = *(v0 + 2760);
  v31[0] = *(v0 + 2904);
  sub_1DB06C324(v31);

  *(v25 + 1146) = 1;
  v31[0] = v20;
  v31[1] = v19;
  v32 = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, &v32);
  sub_1DAF40AEC(v0 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);
  v26 = *(v0 + 2664);

  v27 = *(v0 + 2672);

  v28 = *(v0 + 2696);

  v29 = *(v0 + 8);
  v30 = *(v0 + 1051);

  return v29(v30);
}

uint64_t sub_1DB07338C()
{
  v1 = *(*v0 + 2976);
  v2 = *(*v0 + 2968);
  v3 = *(*v0 + 2960);
  v4 = *(*v0 + 2760);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0734DC, v4, 0);
}

uint64_t sub_1DB0734DC()
{
  v23 = v0;
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2776);
  sub_1DB09DC04();
  v3 = *(v1 + 24);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v2 + 28);
  v7 = *(v1 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v1, type metadata accessor for ODISignpost);
  v8 = *(v0 + 2824);
  v9 = *(v0 + 2816);
  v10 = *(v0 + 2808);
  v11 = *(v0 + 2800);
  v12 = *(v0 + 2792);
  v13 = *(v0 + 2784);
  v14 = *(v0 + 2760);
  v21[0] = *(v0 + 2904);
  sub_1DB06C324(v21);

  *(v14 + 1146) = 1;
  v21[0] = v9;
  v21[1] = v8;
  v22 = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000030, 0x80000001DB0CB460, &v22);
  sub_1DAF40AEC(v0 + 2408, &qword_1ECC0FDD0, &qword_1DB0B93B0);
  v15 = *(v0 + 2664);

  v16 = *(v0 + 2672);

  v17 = *(v0 + 2696);

  v18 = *(v0 + 8);
  v19 = *(v0 + 1051);

  return v18(v19);
}

uint64_t sub_1DB07365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 3:

      return sub_1DB09D9E4();
    case 2:

      return MEMORY[0x1EEE6D958](21);
    case 1:

      return sub_1DB09D9F4();
    default:
      v7[8] = v3;
      v7[9] = v4;
      v7[2] = a2;
      v7[3] = a3;
      sub_1DB09DE44();

      v7[0] = 0xD00000000000000ELL;
      v7[1] = 0x80000001DB0CBFC0;
      v6 = sub_1DB09E1D4();
      MEMORY[0x1E127FE90](v6);

      CoreODILogger.error(_:category:)(0xD000000000000030, 0x80000001DB0CBFC0, v7);

      return sub_1DB09D9E4();
  }
}

uint64_t sub_1DB073774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1400) = v24;
  *(v8 + 1392) = v23;
  *(v8 + 1376) = v22;
  *(v8 + 1360) = v21;
  *(v8 + 1344) = v20;
  *(v8 + 1328) = v19;
  *(v8 + 1312) = v18;
  *(v8 + 1296) = v17;
  *(v8 + 1280) = v16;
  *(v8 + 1272) = a8;
  *(v8 + 1264) = a7;
  *(v8 + 1256) = a6;
  *(v8 + 1248) = a5;
  *(v8 + 1240) = a4;
  *(v8 + 1232) = a3;
  *(v8 + 1224) = a2;
  *(v8 + 1216) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10160, &unk_1DB0BB1B8);
  *(v8 + 1408) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1416) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 1424) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = swift_task_alloc();
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07394C, a8, 0);
}

uint64_t sub_1DB07394C()
{
  v255 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  *&__dst[0] = *(v0 + 1232);
  *(&__dst[0] + 1) = v2;
  LOBYTE(v251[0]) = 5;
  CoreODILogger.info(_:category:)(0xD00000000000001BLL, 0x80000001DB0CBC00, v251);
  v3 = *v1;
  if (*(v3 + 16))
  {
    v4 = *(v0 + 1512);
    v5 = *(v0 + 1400);
    v6 = *(v0 + 1272);
    v7 = *(v0 + 1264);
    v8 = *(v0 + 1256);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1232);
    v11 = *(v0 + 1224);
    v12 = sub_1DB09DA24();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = *v8;
    sub_1DAF3523C(v7, v0 + 640);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    sub_1DAF332B8((v0 + 640), (v14 + 5));
    v14[10] = v3;
    v14[11] = v10;
    v14[12] = v9;
    v14[13] = v6;
    v14[14] = v5;

    sub_1DB055070(v4, &unk_1DB0BB1D0, v14);
    sub_1DAF40AEC(v4, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    v15 = *(v0 + 1240);
    *&__dst[0] = *(v0 + 1232);
    *(&__dst[0] + 1) = v15;
    LOBYTE(v251[0]) = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001CLL, 0x80000001DB0CBD80, v251);
  }

  v16 = *(v0 + 1280);
  if ((*(v16 + 8) & 1) == 0)
  {
    v17 = *v16;
    sub_1DAF40A84(*(v0 + 1288), v0 + 480, &qword_1ECC0FDD0, &qword_1DB0B93B0);
    if (*(v0 + 504))
    {
      v18 = *(v0 + 1512);
      v19 = *(v0 + 1296);
      v20 = *(v0 + 1272);
      v21 = *(v0 + 1240);
      v22 = *(v0 + 1232);
      v23 = *(v0 + 1224);
      sub_1DAF332B8((v0 + 480), v0 + 560);
      sub_1DB07365C(v17, v22, v21);
      v24 = sub_1DB09DA24();
      (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
      sub_1DAF3523C(v0 + 560, v0 + 400);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v19;
      v25[5] = v20;
      sub_1DAF332B8((v0 + 400), (v25 + 6));
      v25[11] = v22;
      v25[12] = v21;

      sub_1DB055070(v18, &unk_1DB0BB2A0, v25);
      sub_1DAF40AEC(v18, &qword_1ECC0ECE0, &unk_1DB0A21D0);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
    }

    else
    {
      sub_1DAF40AEC(v0 + 480, &qword_1ECC0FDD0, &qword_1DB0B93B0);
    }
  }

  v26 = *(v0 + 1304);
  v27 = *(v26 + 16);
  if (v27)
  {
    v247 = (v0 + 1112);
    v242 = *(v0 + 1320);
    v28 = (v26 + 48);
    do
    {
      v248 = v28;
      v249 = v27;
      v34 = *(v0 + 1312);
      v35 = *(v0 + 1240);
      v36 = *(v0 + 1232);
      v38 = *v28;
      v37 = v28[1];
      v39 = *(v28 - 1);
      *(v0 + 122) = *(v28 + 26);
      *(v0 + 96) = v38;
      *(v0 + 112) = v37;
      *(v0 + 80) = v39;
      v40 = *(v28 + 16);
      *v247 = *v28;
      *(v0 + 1128) = v40;
      *&v251[0] = v36;
      *(&v251[0] + 1) = v35;
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1DB042BD4(v0 + 80, v0 + 272);
      sub_1DB09DE44();
      v41 = *(&__dst[0] + 1);
      *(v0 + 1136) = *&__dst[0];
      *(v0 + 1144) = v41;
      MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0CBC20);
      v42 = *(v0 + 96);
      *(v0 + 336) = *(v0 + 80);
      *(v0 + 352) = v42;
      *(v0 + 368) = *(v0 + 112);
      *(v0 + 378) = *(v0 + 122);
      sub_1DB09DF94();
      v43 = *(v0 + 1136);
      v44 = *(v0 + 1144);
      LOBYTE(__dst[0]) = 5;
      CoreODILogger.debug(_:category:)(v43, v44, __dst);

      memcpy(__dst, v34, 0x40AuLL);
      v45 = *(v0 + 96);
      v251[0] = *(v0 + 80);
      v251[1] = v45;
      v252[0] = *(v0 + 112);
      *(v252 + 10) = *(v0 + 122);
      sub_1DB06829C(v251, v0 + 520);
      v46 = *(v0 + 544);
      v47 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), v46);
      __dst[0] = *v247;
      LOBYTE(__dst[1]) = *(v0 + 1128);
      v48 = *(v47 + 8);
      sub_1DB0905C4(v247, v0 + 1064);
      v48(v251, __dst, v46, v47);
      sub_1DB041AD8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 520));
      v49 = *(v0 + 1240);
      v50 = *(v0 + 1232);
      if (LOBYTE(v251[0]) == 212)
      {
        v51 = *(v0 + 120);
        v52 = *(v0 + 113);
        *&v251[0] = *(v0 + 1232);
        *(&v251[0] + 1) = v49;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1DB09DE44();
        v53 = *(&__dst[0] + 1);
        *(v0 + 1152) = *&__dst[0];
        *(v0 + 1160) = v53;
        MEMORY[0x1E127FE90](0xD00000000000001ALL, 0x80000001DB0CB4A0);
        v54 = *(v0 + 96);
        *(v0 + 208) = *(v0 + 80);
        *(v0 + 224) = v54;
        *(v0 + 240) = *(v0 + 112);
        *(v0 + 250) = *(v0 + 122);
        sub_1DB09DF94();
        v55 = *(v0 + 1152);
        v56 = *(v0 + 1160);
        LOBYTE(__dst[0]) = 5;
        CoreODILogger.debug(_:category:)(v55, v56, __dst);

        switch(v52)
        {
          case 1:
          case 5:
            goto LABEL_51;
          case 2:
            v83 = *(v0 + 1328);
            v84 = *(v0 + 1320);
            v85 = *v84;
            if (*(v242 + 8))
            {
              v85 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v51 < v85)
            {
              v85 = v51;
            }

            v86 = *(v0 + 128);
            v87 = *(v0 + 136);
            *v84 = v85;
            *(v242 + 8) = 0;
            v88 = *v83;
            sub_1DB042C0C(v0 + 80);
            v89 = 1000000 * v86;
            if (1000000 * v86 <= v88)
            {
              v89 = v88;
            }

            if (v87 & 1 | (v86 > 0x10C6F7A0B5EDLL))
            {
              v90 = -1;
            }

            else
            {
              v90 = v89;
            }

            *v83 = v90;
            goto LABEL_67;
          case 3:
            if ((*(v0 + 1128) & 1) != 0 || *(v0 + 1112) != 1)
            {
              goto LABEL_50;
            }

            v57 = *(v0 + 1488);
            v58 = *(v0 + 1480);
            v59 = *(v0 + 1272);
            v60 = *(v0 + 1240);
            v61 = *(v0 + 1232);
            sub_1DB07365C(v51, v61, v60);
            v62 = sub_1DB09DA24();
            v63 = *(v62 - 8);
            (*(v63 + 56))(v57, 0, 1, v62);
            v64 = swift_allocObject();
            *(v64 + 16) = 0;
            v243 = (v64 + 16);
            *(v64 + 24) = 0;
            v65 = *(v0 + 96);
            *(v64 + 32) = *(v0 + 80);
            *(v64 + 48) = v65;
            *(v64 + 64) = *(v0 + 112);
            *(v64 + 74) = *(v0 + 122);
            *(v64 + 96) = v59;
            *(v64 + 104) = v61;
            *(v64 + 112) = v60;
            sub_1DAF40A84(v57, v58, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            LODWORD(v61) = (*(v63 + 48))(v58, 1, v62);

            v66 = *(v0 + 1480);
            if (v61 == 1)
            {
              sub_1DAF40AEC(*(v0 + 1480), &qword_1ECC0ECE0, &unk_1DB0A21D0);
            }

            else
            {
              sub_1DB09DA14();
              (*(v63 + 8))(v66, v62);
            }

            if (*v243)
            {
              v125 = *(v64 + 24);
              v126 = *v243;
              swift_getObjectType();
              swift_unknownObjectRetain();
              v127 = sub_1DB09D984();
              v129 = v128;
              swift_unknownObjectRelease();
            }

            else
            {
              v127 = 0;
              v129 = 0;
            }

            v140 = **(v0 + 1224);
            v141 = v129 | v127;
            if (v129 | v127)
            {
              v141 = v0 + 792;
              *(v0 + 792) = 0;
              *(v0 + 800) = 0;
              *(v0 + 808) = v127;
              *(v0 + 816) = v129;
            }

            v142 = *(v0 + 1488);
            *(v0 + 944) = 1;
            *(v0 + 952) = v141;
            *(v0 + 960) = v140;
            goto LABEL_65;
          case 4:
            v99 = *(v0 + 1512);
            v100 = *(v0 + 1272);
            v101 = *(v0 + 1240);
            v102 = *(v0 + 1232);
            v244 = *(v0 + 1224);
            sub_1DB0905C4(v247, v0 + 1088);
            sub_1DB07365C(v51, v102, v101);
            v103 = sub_1DB09DA24();
            (*(*(v103 - 8) + 56))(v99, 0, 1, v103);
            v104 = swift_allocObject();
            *(v104 + 16) = 0;
            *(v104 + 24) = 0;
            v105 = *(v0 + 96);
            *(v104 + 32) = *(v0 + 80);
            *(v104 + 48) = v105;
            *(v104 + 64) = *(v0 + 112);
            *(v104 + 74) = *(v0 + 122);
            *(v104 + 96) = v100;
            *(v104 + 104) = v102;
            *(v104 + 112) = v101;

            sub_1DB042BD4(v0 + 80, v0 + 144);
            sub_1DB055070(v99, &unk_1DB0BB270, v104);
            sub_1DB090EA4(v247);
            sub_1DB042C0C(v0 + 80);
            v106 = v99;
            goto LABEL_66;
          case 6:
            if ((*(v0 + 1128) & 1) != 0 || *v247 != 11)
            {
              goto LABEL_51;
            }

            sub_1DAF40A84(*(v0 + 1288), v0 + 440, &qword_1ECC0FDD0, &qword_1DB0B93B0);
            if (*(v0 + 464))
            {
              v107 = *(v0 + 1512);
              v108 = *(v0 + 1272);
              v109 = *(v0 + 1240);
              v110 = *(v0 + 1232);
              v245 = *(v0 + 1224);
              sub_1DAF332B8((v0 + 440), v0 + 720);
              sub_1DB07365C(v51, v110, v109);
              v111 = sub_1DB09DA24();
              (*(*(v111 - 8) + 56))(v107, 0, 1, v111);
              sub_1DAF3523C(v0 + 720, v0 + 680);
              v112 = swift_allocObject();
              *(v112 + 16) = 0;
              *(v112 + 24) = 0;
              v113 = *(v0 + 96);
              *(v112 + 32) = *(v0 + 80);
              *(v112 + 48) = v113;
              *(v112 + 64) = *(v0 + 112);
              *(v112 + 74) = *(v0 + 122);
              *(v112 + 96) = v108;
              sub_1DAF332B8((v0 + 680), v112 + 104);
              *(v112 + 144) = v110;
              *(v112 + 152) = v109;

              sub_1DB055070(v107, &unk_1DB0BB260, v112);
              sub_1DAF40AEC(v107, &qword_1ECC0ECE0, &unk_1DB0A21D0);
              __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
              goto LABEL_67;
            }

            v166 = *(v0 + 1240);
            v167 = *(v0 + 1232);
            sub_1DAF40AEC(v0 + 440, &qword_1ECC0FDD0, &qword_1DB0B93B0);
            *&__dst[0] = v167;
            *(&__dst[0] + 1) = v166;
            LOBYTE(v251[0]) = 5;
            CoreODILogger.error(_:category:)(0xD00000000000003ELL, 0x80000001DB0CBD40, v251);
            goto LABEL_51;
          case 7:
            if ((*(v0 + 1128) & 1) != 0 || *(v0 + 1112) != 12)
            {
              goto LABEL_50;
            }

            v91 = *(v0 + 1472);
            v92 = *(v0 + 1464);
            v93 = *(v0 + 1272);
            sub_1DB07365C(v51, *(v0 + 1232), *(v0 + 1240));
            v94 = sub_1DB09DA24();
            v95 = *(v94 - 8);
            (*(v95 + 56))(v91, 0, 1, v94);
            v96 = swift_allocObject();
            v96[2] = 0;
            v97 = v96 + 2;
            v96[3] = 0;
            v96[4] = v93;
            sub_1DAF40A84(v91, v92, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            LODWORD(v91) = (*(v95 + 48))(v92, 1, v94);

            v98 = *(v0 + 1464);
            if (v91 == 1)
            {
              sub_1DAF40AEC(*(v0 + 1464), &qword_1ECC0ECE0, &unk_1DB0A21D0);
            }

            else
            {
              sub_1DB09DA14();
              (*(v95 + 8))(v98, v94);
            }

            if (*v97)
            {
              v130 = v96[3];
              v131 = *v97;
              swift_getObjectType();
              swift_unknownObjectRetain();
              v132 = sub_1DB09D984();
              v134 = v133;
              swift_unknownObjectRelease();
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            v33 = v249;
            v143 = **(v0 + 1224);
            v144 = v134 | v132;
            if (v134 | v132)
            {
              v144 = v0 + 888;
              *(v0 + 888) = 0;
              *(v0 + 896) = 0;
              *(v0 + 904) = v132;
              *(v0 + 912) = v134;
            }

            v145 = *(v0 + 1472);
            *(v0 + 1040) = 1;
            *(v0 + 1048) = v144;
            *(v0 + 1056) = v143;
            swift_task_create();

            sub_1DB042C0C(v0 + 80);
            sub_1DAF40AEC(v145, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            break;
          case 8:
            if ((*(v0 + 1128) & 1) != 0 || *(v0 + 1112) != 14)
            {
              goto LABEL_50;
            }

            v114 = *(v0 + 1504);
            v115 = *(v0 + 1496);
            v116 = *(v0 + 1272);
            sub_1DB07365C(v51, *(v0 + 1232), *(v0 + 1240));
            v117 = sub_1DB09DA24();
            v118 = *(v117 - 8);
            (*(v118 + 56))(v114, 0, 1, v117);
            v119 = swift_allocObject();
            v119[2] = 0;
            v120 = v119 + 2;
            v119[3] = 0;
            v119[4] = v116;
            sub_1DAF40A84(v114, v115, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            LODWORD(v114) = (*(v118 + 48))(v115, 1, v117);

            v121 = *(v0 + 1496);
            if (v114 == 1)
            {
              sub_1DAF40AEC(*(v0 + 1496), &qword_1ECC0ECE0, &unk_1DB0A21D0);
            }

            else
            {
              sub_1DB09DA14();
              (*(v118 + 8))(v121, v117);
            }

            v33 = v249;
            if (*v120)
            {
              v135 = v119[3];
              v136 = *v120;
              swift_getObjectType();
              swift_unknownObjectRetain();
              v137 = sub_1DB09D984();
              v139 = v138;
              swift_unknownObjectRelease();
            }

            else
            {
              v137 = 0;
              v139 = 0;
            }

            v146 = **(v0 + 1224);
            v147 = v139 | v137;
            if (v139 | v137)
            {
              v147 = v0 + 760;
              *(v0 + 760) = 0;
              *(v0 + 768) = 0;
              *(v0 + 776) = v137;
              *(v0 + 784) = v139;
            }

            v148 = *(v0 + 1504);
            *(v0 + 920) = 1;
            *(v0 + 928) = v147;
            *(v0 + 936) = v146;
            swift_task_create();

            sub_1DB042C0C(v0 + 80);
            sub_1DAF40AEC(v148, &qword_1ECC0ECE0, &unk_1DB0A21D0);
            break;
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
            if (*(v0 + 1128))
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
            if (*(v0 + 1128))
            {
              goto LABEL_50;
            }

            v67 = *v247;
            switch(v67)
            {
              case 18:
                v159 = *(v0 + 1512);
                v160 = *(v0 + 1272);
                v161 = *(v0 + 1240);
                v162 = *(v0 + 1232);
                v163 = *(v0 + 1224);
                sub_1DB07365C(v51, v162, v161);
                v164 = sub_1DB09DA24();
                (*(*(v164 - 8) + 56))(v159, 0, 1, v164);
                v165 = swift_allocObject();
                v165[2] = 0;
                v165[3] = 0;
                v165[4] = v160;
                v165[5] = v162;
                v165[6] = v161;

                sub_1DB055070(v159, &unk_1DB0BB220, v165);
                sub_1DB042C0C(v0 + 80);
                v106 = v159;
                goto LABEL_66;
              case 17:
                v149 = *(v0 + 1440);
                v150 = *(v0 + 1432);
                v151 = *(v0 + 1272);
                v152 = *(v0 + 1240);
                v153 = *(v0 + 1232);
                sub_1DB07365C(v51, v153, v152);
                v154 = sub_1DB09DA24();
                v155 = *(v154 - 8);
                (*(v155 + 56))(v149, 0, 1, v154);
                v156 = swift_allocObject();
                *(v156 + 16) = 0;
                v246 = (v156 + 16);
                *(v156 + 24) = 0;
                v157 = *(v0 + 96);
                *(v156 + 32) = *(v0 + 80);
                *(v156 + 48) = v157;
                *(v156 + 64) = *(v0 + 112);
                *(v156 + 74) = *(v0 + 122);
                *(v156 + 96) = v151;
                *(v156 + 104) = v153;
                *(v156 + 112) = v152;
                sub_1DAF40A84(v149, v150, &qword_1ECC0ECE0, &unk_1DB0A21D0);
                LODWORD(v153) = (*(v155 + 48))(v150, 1, v154);

                v158 = *(v0 + 1432);
                if (v153 == 1)
                {
                  sub_1DAF40AEC(*(v0 + 1432), &qword_1ECC0ECE0, &unk_1DB0A21D0);
                }

                else
                {
                  sub_1DB09DA14();
                  (*(v155 + 8))(v158, v154);
                }

                if (*v246)
                {
                  v168 = *(v156 + 24);
                  v169 = *v246;
                  swift_getObjectType();
                  swift_unknownObjectRetain();
                  v170 = sub_1DB09D984();
                  v172 = v171;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v170 = 0;
                  v172 = 0;
                }

                v175 = **(v0 + 1224);
                v176 = v172 | v170;
                if (v172 | v170)
                {
                  v176 = v0 + 824;
                  *(v0 + 824) = 0;
                  *(v0 + 832) = 0;
                  *(v0 + 840) = v170;
                  *(v0 + 848) = v172;
                }

                v142 = *(v0 + 1440);
                *(v0 + 992) = 1;
                *(v0 + 1000) = v176;
                *(v0 + 1008) = v175;
                goto LABEL_65;
              case 16:
                v68 = *(v0 + 1456);
                v69 = *(v0 + 1448);
                v70 = *(v0 + 1272);
                v71 = *(v0 + 1240);
                v72 = *(v0 + 1232);
                sub_1DB07365C(v51, v72, v71);
                v73 = sub_1DB09DA24();
                v74 = *(v73 - 8);
                (*(v74 + 56))(v68, 0, 1, v73);
                v75 = swift_allocObject();
                *(v75 + 16) = 0;
                v76 = (v75 + 16);
                *(v75 + 24) = 0;
                v77 = *(v0 + 96);
                *(v75 + 32) = *(v0 + 80);
                *(v75 + 48) = v77;
                *(v75 + 64) = *(v0 + 112);
                *(v75 + 74) = *(v0 + 122);
                *(v75 + 96) = v70;
                *(v75 + 104) = v72;
                *(v75 + 112) = v71;
                sub_1DAF40A84(v68, v69, &qword_1ECC0ECE0, &unk_1DB0A21D0);
                LODWORD(v68) = (*(v74 + 48))(v69, 1, v73);

                v78 = *(v0 + 1448);
                if (v68 == 1)
                {
                  sub_1DAF40AEC(*(v0 + 1448), &qword_1ECC0ECE0, &unk_1DB0A21D0);
                  if (*v76)
                  {
                    goto LABEL_26;
                  }

LABEL_84:
                  v80 = 0;
                  v82 = 0;
                }

                else
                {
                  sub_1DB09DA14();
                  (*(v74 + 8))(v78, v73);
                  if (!*v76)
                  {
                    goto LABEL_84;
                  }

LABEL_26:
                  v79 = *(v75 + 24);
                  swift_getObjectType();
                  swift_unknownObjectRetain();
                  v80 = sub_1DB09D984();
                  v82 = v81;
                  swift_unknownObjectRelease();
                }

                v173 = **(v0 + 1224);
                v174 = v82 | v80;
                if (v82 | v80)
                {
                  v174 = v0 + 856;
                  *(v0 + 856) = 0;
                  *(v0 + 864) = 0;
                  *(v0 + 872) = v80;
                  *(v0 + 880) = v82;
                }

                v142 = *(v0 + 1456);
                *(v0 + 1016) = 1;
                *(v0 + 1024) = v174;
                *(v0 + 1032) = v173;
LABEL_65:
                swift_task_create();

                v106 = v142;
LABEL_66:
                sub_1DAF40AEC(v106, &qword_1ECC0ECE0, &unk_1DB0A21D0);
                goto LABEL_67;
            }

LABEL_50:
            v122 = *(v0 + 1240);
            v253 = *(v0 + 1232);
            v254 = v122;
            *&__dst[0] = 0;
            *(&__dst[0] + 1) = 0xE000000000000000;
            sub_1DB09DE44();

            *&v251[0] = 0xD000000000000022;
            *(&v251[0] + 1) = 0x80000001DB0CBD10;
            LOBYTE(__dst[0]) = v52;
            v123 = ArmandDataSource.rawValue.getter();
            MEMORY[0x1E127FE90](v123);

            MEMORY[0x1E127FE90](47, 0xE100000000000000);
            __dst[0] = *v247;
            LOBYTE(__dst[1]) = *(v0 + 1128);
            v124 = AssessmentConfigFieldName.description.getter();
            MEMORY[0x1E127FE90](v124);

            LOBYTE(__dst[0]) = 5;
            CoreODILogger.warning(_:category:)(*&v251[0], *(&v251[0] + 1), __dst);

LABEL_51:
            sub_1DB042C0C(v0 + 80);
LABEL_67:
            v33 = v249;
            break;
        }
      }

      else
      {
        *&v251[0] = *(v0 + 1232);
        *(&v251[0] + 1) = v49;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1DB09DE44();
        v29 = *(&__dst[0] + 1);
        *(v0 + 1168) = *&__dst[0];
        *(v0 + 1176) = v29;
        MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0CBC40);
        v30 = *(v0 + 96);
        *(v0 + 16) = *(v0 + 80);
        *(v0 + 32) = v30;
        *(v0 + 48) = *(v0 + 112);
        *(v0 + 58) = *(v0 + 122);
        sub_1DB09DF94();
        sub_1DB042C0C(v0 + 80);
        v31 = *(v0 + 1168);
        v32 = *(v0 + 1176);
        LOBYTE(__dst[0]) = 5;
        CoreODILogger.debug(_:category:)(v31, v32, __dst);

        v33 = v249;
      }

      v28 = v248 + 4;
      v27 = v33 - 1;
    }

    while (v27);
  }

  v177 = *(v0 + 1320);
  if ((*(v177 + 8) & 1) == 0)
  {
    v178 = *(v0 + 1512);
    v179 = *(v0 + 1328);
    v180 = *(v0 + 1272);
    v181 = *(v0 + 1240);
    v182 = *(v0 + 1232);
    v183 = *(v0 + 1224);
    sub_1DB07365C(*v177, v182, v181);
    v184 = sub_1DB09DA24();
    (*(*(v184 - 8) + 56))(v178, 0, 1, v184);
    v185 = *v179;
    v186 = swift_allocObject();
    v186[2] = 0;
    v186[3] = 0;
    v186[4] = v185;
    v186[5] = v180;
    v186[6] = v182;
    v186[7] = v181;

    sub_1DB055070(v178, &unk_1DB0BB210, v186);
    sub_1DAF40AEC(v178, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  v187 = *(v0 + 1336);
  if ((*(v187 + 8) & 1) == 0)
  {
    v188 = *(v0 + 1512);
    v189 = *(v0 + 1344);
    v190 = *(v0 + 1272);
    v191 = *(v0 + 1240);
    v192 = *(v0 + 1232);
    v193 = *(v0 + 1224);
    sub_1DB07365C(*v187, v192, v191);
    v194 = sub_1DB09DA24();
    (*(*(v194 - 8) + 56))(v188, 0, 1, v194);
    v195 = *v189;
    v196 = swift_allocObject();
    v196[2] = 0;
    v196[3] = 0;
    v196[4] = v195;
    v196[5] = v190;
    v196[6] = v192;
    v196[7] = v191;

    sub_1DB055070(v188, &unk_1DB0BB200, v196);
    sub_1DAF40AEC(v188, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  if (*(**(v0 + 1352) + 16))
  {
    v197 = *(v0 + 1360);
    if ((*(v197 + 8) & 1) == 0)
    {
      v198 = *(v0 + 1512);
      v199 = *(v0 + 1368);
      v200 = *(v0 + 1272);
      v201 = *(v0 + 1240);
      v202 = *(v0 + 1232);
      v203 = *(v0 + 1224);
      sub_1DB07365C(*v197, v202, v201);
      v204 = sub_1DB09DA24();
      (*(*(v204 - 8) + 56))(v198, 0, 1, v204);
      v205 = *v199;
      v206 = swift_allocObject();
      v206[2] = 0;
      v206[3] = 0;
      v206[4] = v205;
      v206[5] = v200;
      v206[6] = v202;
      v206[7] = v201;

      sub_1DB055070(v198, &unk_1DB0BB1F0, v206);
      sub_1DAF40AEC(v198, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    }
  }

  v207 = *(v0 + 1392);
  v208 = *(v0 + 1384);
  v209 = *(v0 + 1376);
  v210 = *(v0 + 1240);
  *&v251[0] = *(v0 + 1232);
  *(&v251[0] + 1) = v210;
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002ALL, 0x80000001DB0CBC60);
  v211 = *v209;
  if (*(v209 + 8))
  {
    v211 = -1;
  }

  *(v0 + 1208) = v211;
  v212 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v212);

  MEMORY[0x1E127FE90](0x6974206874697720, 0xEE002074756F656DLL);
  *(v0 + 1200) = *v208;
  v213 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v213);

  MEMORY[0x1E127FE90](0x65696620646E6120, 0xEC0000002073646CLL);
  v214 = *v207;

  v216 = MEMORY[0x1E1280010](v215, MEMORY[0x1E69E6158]);
  v218 = v217;

  MEMORY[0x1E127FE90](v216, v218);

  v219 = *&__dst[0];
  LOBYTE(__dst[0]) = 5;
  CoreODILogger.info(_:category:)(v219, *(&__dst[0] + 1), __dst);

  if ((*(v209 + 8) & 1) == 0)
  {
    v220 = *(v0 + 1512);
    v221 = *(v0 + 1392);
    v222 = *(v0 + 1384);
    v223 = *(v0 + 1272);
    v224 = *(v0 + 1264);
    v225 = *(v0 + 1240);
    v226 = *(v0 + 1232);
    v227 = *(v0 + 1224);
    sub_1DB07365C(**(v0 + 1376), v226, v225);
    v228 = sub_1DB09DA24();
    (*(*(v228 - 8) + 56))(v220, 0, 1, v228);
    v229 = *v222;
    v230 = *v221;
    sub_1DAF3523C(v224, v0 + 600);
    v231 = swift_allocObject();
    v231[2] = 0;
    v231[3] = 0;
    v231[4] = v226;
    v231[5] = v225;
    v231[6] = v230;
    v231[7] = v229;
    v231[8] = v223;
    sub_1DAF332B8((v0 + 600), (v231 + 9));

    sub_1DB055070(v220, &unk_1DB0BB1E0, v231);
    sub_1DAF40AEC(v220, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  v232 = *(v0 + 1424);
  v233 = **(v0 + 1224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09DA94();
  v235 = sub_1DB08E648(&qword_1EE3014E0, v234, type metadata accessor for ArmandDataFiller);
  *(v0 + 1520) = v235;
  v236 = *(v0 + 1272);
  v237 = *(MEMORY[0x1E69E8710] + 4);
  v238 = swift_task_alloc();
  *(v0 + 1528) = v238;
  *v238 = v0;
  v238[1] = sub_1DB0757E4;
  v239 = *(v0 + 1424);
  v240 = *(v0 + 1408);

  return MEMORY[0x1EEE6DAD8](v0 + 74, v236, v235, v240, v0 + 1192);
}

uint64_t sub_1DB0757E4()
{
  v2 = *v1;
  v3 = *(*v1 + 1528);
  v7 = *v1;
  *(*v1 + 1536) = v0;

  v4 = *(v2 + 1272);
  if (v0)
  {
    v5 = sub_1DB075BD0;
  }

  else
  {
    v5 = sub_1DB0758FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DB0758FC()
{
  v31 = v0;
  if (*(v0 + 74))
  {
    v1 = *(v0 + 1536);
    (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));
    sub_1DB09DA74();
    if (v1)
    {
      v2 = *(v0 + 1272);
      v3 = *(v2 + 1224);
      v28[0] = *(v2 + 1216);
      v28[1] = v3;
      v29 = 0;
      v30 = 0xE000000000000000;

      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000017, 0x80000001DB0CBC90);
      swift_getErrorValue();
      v4 = *(v0 + 968);
      v5 = *(v0 + 976);
      sub_1DB09E234();
      LOBYTE(v29) = 5;
      CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v29);

      v6 = *(v2 + 1224);
      v29 = *(v2 + 1216);
      v30 = v6;
      LOBYTE(v28[0]) = 5;

      CoreODILogger.debug(_:category:)(0xD00000000000005ALL, 0x80000001DB0CBCB0, v28);

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v14 = *(v0 + 1512);
    v15 = *(v0 + 1504);
    v16 = *(v0 + 1496);
    v17 = *(v0 + 1488);
    v18 = *(v0 + 1480);
    v19 = *(v0 + 1472);
    v20 = *(v0 + 1464);
    v21 = *(v0 + 1456);
    v22 = *(v0 + 1448);
    v23 = *(v0 + 1440);
    v26 = *(v0 + 1432);
    v27 = *(v0 + 1424);
    **(v0 + 1216) = v7;

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v8 = *(v0 + 1520);
    v9 = *(v0 + 1272);
    v10 = *(MEMORY[0x1E69E8710] + 4);
    v11 = swift_task_alloc();
    *(v0 + 1528) = v11;
    *v11 = v0;
    v11[1] = sub_1DB0757E4;
    v12 = *(v0 + 1424);
    v13 = *(v0 + 1408);

    return MEMORY[0x1EEE6DAD8](v0 + 74, v9, v8, v13, v0 + 1192);
  }
}

uint64_t sub_1DB075BD0()
{
  v24 = v0;
  (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1272);
  v3 = *(v2 + 1224);
  v21[0] = *(v2 + 1216);
  v21[1] = v3;
  v22 = 0;
  v23 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000017, 0x80000001DB0CBC90);
  swift_getErrorValue();
  v4 = *(v0 + 968);
  v5 = *(v0 + 976);
  sub_1DB09E234();
  LOBYTE(v22) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v22);

  v6 = *(v2 + 1224);
  v22 = *(v2 + 1216);
  v23 = v6;
  LOBYTE(v21[0]) = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000005ALL, 0x80000001DB0CBCB0, v21);

  v7 = *(v0 + 1512);
  v8 = *(v0 + 1504);
  v9 = *(v0 + 1496);
  v10 = *(v0 + 1488);
  v11 = *(v0 + 1480);
  v12 = *(v0 + 1472);
  v13 = *(v0 + 1464);
  v14 = *(v0 + 1456);
  v15 = *(v0 + 1448);
  v16 = *(v0 + 1440);
  v19 = *(v0 + 1432);
  v20 = *(v0 + 1424);
  **(v0 + 1216) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB075DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v10;
  v8[19] = v11;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a1;
  v8[13] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB075E20, 0, 0);
}

uint64_t sub_1DB075E20()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v20 = *(v0 + 144);
  sub_1DAF3523C(*(v0 + 112), v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  *(v0 + 160) = v5;
  sub_1DAF332B8((v0 + 16), v5 + 16);
  *(v5 + 56) = v3;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  *(v5 + 80) = v20;

  if (v4 == -1)
  {
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_1DB0761A0;
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);

    return sub_1DB076400(v18, v0 + 56, v17, v15, v16, v13);
  }

  else
  {
    v6 = *(v0 + 104);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    v7[2] = v6;
    v7[3] = &unk_1DB0BB360;
    v7[4] = v5;
    v7[5] = &unk_1DB0BB2B8;
    v7[6] = 0;
    v8 = *(MEMORY[0x1E69E8920] + 4);
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1DB076050;
    v10 = *(v0 + 96);
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v7, v11);
  }
}

uint64_t sub_1DB076050()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB0762B4, 0, 0);
  }

  else
  {
    v4 = v3[20];
    v5 = v3[21];

    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 7);
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1DB0761A0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DB076394;
  }

  else
  {
    v3 = sub_1DB076328;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB0762B4()
{
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[23];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB076328()
{
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB076394()
{
  v1 = v0[20];

  v2 = v0[25];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB076400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  v7 = type metadata accessor for ODISignpost();
  v6[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0764A8, 0, 0);
}

uint64_t sub_1DB0764A8()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1DB0765D4;

  return v8(v0 + 40, v2, v3);
}

uint64_t sub_1DB0765D4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0766D0, 0, 0);
}

uint64_t sub_1DB0766D0()
{
  v41 = v0;
  v35 = v0[5];
  if (qword_1ECC0E0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[12];
  v3 = qword_1ECC25D70;
  v4 = *algn_1ECC25D78;
  v5 = byte_1ECC25D80;
  v6 = qword_1ECC25D88;
  v7 = byte_1ECC25D90;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[7];
  sub_1DB08E91C(v0[12], v0[13], type metadata accessor for ODISignpost);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v0[7] + 40);
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = *(v12 - 1);
      v16 = *v12;

      v18 = sub_1DB09E004();
      if (v18 > 7)
      {
        break;
      }

      if (((1 << v18) & 0xC) != 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1DAF73DB4(0, *(v13 + 2) + 1, 1, v13);
        }

        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          v13 = sub_1DAF73DB4((v25 > 1), v26 + 1, 1, v13);
        }

        *(v13 + 2) = v26 + 1;
        v14 = &v13[v26];
        v15 = 3;
      }

      else
      {
        if (((1 << v18) & 0x30) != 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1DAF73DB4(0, *(v13 + 2) + 1, 1, v13);
          }

          v24 = *(v13 + 2);
          v23 = *(v13 + 3);
          if (v24 >= v23 >> 1)
          {
            v13 = sub_1DAF73DB4((v23 > 1), v24 + 1, 1, v13);
          }

          *(v13 + 2) = v24 + 1;
          v13[v24 + 32] = 1;
          goto LABEL_10;
        }

        if (((1 << v18) & 0xC0) == 0)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1DAF73DB4(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_1DAF73DB4((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v14 = &v13[v20];
        v15 = 2;
      }

      v14[32] = v15;
LABEL_10:
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_37;
      }
    }

    if (v18 >= 2)
    {
      v37 = v0[8];
      v38 = v0[9];
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1DB09DE44();

      v39 = 0xD00000000000001CLL;
      v40 = 0x80000001DB0CC000;
      MEMORY[0x1E127FE90](v17, v16);

      v27 = v39;
      LOBYTE(v39) = 5;
      CoreODILogger.info(_:category:)(v27, v40, &v39);
    }

    else
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAF73DB4(0, *(v13 + 2) + 1, 1, v13);
      }

      v22 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v22 >= v21 >> 1)
      {
        v13 = sub_1DAF73DB4((v21 > 1), v22 + 1, 1, v13);
      }

      *(v13 + 2) = v22 + 1;
      v13[v22 + 32] = 0;
    }

    goto LABEL_10;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v28 = v0[6];
  v39 = v35;
  v0[15] = sub_1DB0919B0(v13, &v39);

  v29 = v28[3];
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v31 = *(v30 + 16);
  v36 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  v0[16] = v33;
  *v33 = v0;
  v33[1] = sub_1DB076C34;

  return v36(v29, v30);
}

uint64_t sub_1DB076C34(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;
  v3[17] = a1;

  v6 = swift_task_alloc();
  v3[18] = v6;
  *v6 = v5;
  v6[1] = sub_1DB076D80;
  v7 = v3[15];

  return sub_1DB017BB8(v7);
}

uint64_t sub_1DB076D80(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB076ED8, v5, 0);
}

uint64_t sub_1DB076ED8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = swift_beginAccess();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v1 + 56) + 16 * v12);
    v14 = *(*(v1 + 48) + v12);
    v16 = *v13;
    v15 = v13[1];
    v17 = (v2 + 1032);
    if (v14 == 2)
    {
      v17 = (v2 + 1000);
    }

    v18 = (v2 + 1040);
    if (v14 == 2)
    {
      v18 = (v2 + 1008);
    }

    v19 = (v2 + 1041);
    if (v14 == 2)
    {
      v19 = (v2 + 1009);
    }

    v20 = (v2 + 1048);
    if (v14 == 2)
    {
      v20 = (v2 + 1016);
    }

    v22 = (v2 + 1025);
    v21 = (v2 + 1024);
    if (v14 != 2)
    {
      v21 = (v2 + 1056);
      v22 = (v2 + 1057);
    }

    v23 = (v2 + 968);
    if (!v14)
    {
      v23 = (v2 + 936);
    }

    v24 = (v2 + 944);
    if (v14)
    {
      v24 = (v2 + 976);
      v6 = (v2 + 977);
    }

    else
    {
      v6 = (v2 + 945);
    }

    if (v14)
    {
      v7 = (v2 + 984);
    }

    else
    {
      v7 = (v2 + 952);
    }

    if (v14)
    {
      v8 = (v2 + 992);
    }

    else
    {
      v8 = (v2 + 960);
    }

    if (v14)
    {
      v25 = (v2 + 993);
    }

    else
    {
      v25 = (v2 + 961);
    }

    v26 = v14 <= 1;
    if (v14 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v23 = v17;
      v27 = v18;
    }

    if (v26)
    {
      v28 = v6;
    }

    else
    {
      v28 = v19;
    }

    if (v26)
    {
      v29 = v7;
    }

    else
    {
      v29 = v20;
    }

    if (v26)
    {
      v30 = v8;
    }

    else
    {
      v30 = v21;
    }

    if (v26)
    {
      v31 = v25;
    }

    else
    {
      v31 = v22;
    }

    *v23 = v16;
    *v27 = 0;
    *v28 = -45;
    *v29 = v15;
    *v30 = 0;
    v9 = v10;
    *v31 = -45;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v6, v7, v8);
    }

    if (v10 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v32 = *(v34 + 152);

  v6 = sub_1DB077138;
  v7 = 0;
  v8 = 0;

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DB077138()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB0771F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = type metadata accessor for ODISignpost();
  v8[21] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07729C, 0, 0);
}

uint64_t sub_1DB07729C()
{
  if (qword_1ECC0E0A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = qword_1ECC25CA8;
  v3 = unk_1ECC25CB0;
  v5 = byte_1ECC25CB8;
  v6 = qword_1ECC25CC0;
  v7 = byte_1ECC25CC8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  sub_1DB08E91C(*(v0 + 176), *(v0 + 184), type metadata accessor for ODISignpost);
  sub_1DAF3523C(v11, v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v13 = swift_allocObject();
  *(v0 + 192) = v13;
  *(v13 + 16) = v10;
  sub_1DAF332B8((v0 + 16), v13 + 24);

  if (v12 == -1)
  {
    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    *v19 = v0;
    v19[1] = sub_1DB0776F8;
    v20 = *(v0 + 136);

    return sub_1DB06CBE4(v0 + 56);
  }

  else
  {
    v14 = *(v0 + 128);
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    v15[2] = v14;
    v15[3] = &unk_1DB0BB2B0;
    v15[4] = v13;
    v15[5] = &unk_1DB0BB2B8;
    v15[6] = 0;
    v16 = *(MEMORY[0x1E69E8920] + 4);
    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    v17[1] = sub_1DB0775C0;
    v18 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0912B8, v15, v18);
  }
}

uint64_t sub_1DB0775C0()
{
  v2 = *v1;
  v3 = (*v1)[26];
  v8 = *v1;
  (*v1)[27] = v0;

  if (v0)
  {
    v4 = sub_1DB077920;
  }

  else
  {
    v6 = v2[24];
    v5 = v2[25];
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);

    v4 = sub_1DB077864;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB0776F8()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0777F4, 0, 0);
}

uint64_t sub_1DB0777F4()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DB077864, 0, 0);
}

uint64_t sub_1DB077864()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB077920()
{
  v19 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[19];
  v4 = v0[20];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002ALL, 0x80000001DB0CBDA0);
  swift_getErrorValue();
  v6 = v0[12];
  v7 = v0[13];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];
  sub_1DB09DC04();
  v11 = *(v9 + 24);
  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = *(v10 + 28);
  v15 = *(v9 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v9, type metadata accessor for ODISignpost);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DB077A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DAF5F404;

  return sub_1DB06CBE4(a3);
}

uint64_t sub_1DB077B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_1DB09D344();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB077BEC, a4, 0);
}

uint64_t sub_1DB077BEC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1DB09D334();
  v5 = sub_1DB09D304();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v8 = *(v4 + 472);

  *(v4 + 464) = v5;
  *(v4 + 472) = v7;
  *(v4 + 480) = -45;
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB077CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB077D68, 0, 0);
}

uint64_t sub_1DB077D68()
{
  if (qword_1EE3013B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1EE309F70;
  v3 = *algn_1EE309F78;
  v5 = byte_1EE309F80;
  v6 = qword_1EE309F88;
  v7 = byte_1EE309F90;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    if (qword_1EE302C70 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE302C80;
    v19 = swift_task_alloc();
    v0[16] = v19;
    *v19 = v0;
    v19[1] = sub_1DB0781C4;
    v20 = v0[7];

    return sub_1DB06F4C4(v18);
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB2C8;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1DB07809C;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v17);
  }
}

uint64_t sub_1DB07809C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DB078494;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 56);

    v4 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB0781C4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DB078340;
  }

  else
  {
    v3 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB0782D8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1DB09549C, 0, 0);
}

uint64_t sub_1DB078340()
{
  v18 = v0;
  v1 = v0[7];

  v2 = v0[17];
  v15 = v0[8];
  v16 = v0[9];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000022, 0x80000001DB0CBDD0);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB09E234();
  LOBYTE(v17[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v17);

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  sub_1DB09DC04();
  v8 = *(v6 + 24);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v7 + 28);
  v12 = *(v6 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v6, type metadata accessor for ODISignpost);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB078494()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[15];
  v16 = v0[8];
  v17 = v0[9];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000022, 0x80000001DB0CBDD0);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  sub_1DB09DC04();
  v9 = *(v7 + 24);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v8 + 28);
  v13 = *(v7 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v7, type metadata accessor for ODISignpost);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB078614()
{
  if (qword_1EE302C70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302C80;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DB0786E0;
  v3 = *(v0 + 16);

  return sub_1DB06F4C4(v1);
}

uint64_t sub_1DB0786E0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB0787D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB078878, 0, 0);
}

uint64_t sub_1DB078878()
{
  if (qword_1ECC0E080 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25C58;
  v3 = unk_1ECC25C60;
  v5 = byte_1ECC25C68;
  v6 = qword_1ECC25C70;
  v7 = byte_1ECC25C78;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1DB078C98;
    v19 = v0[7];

    return sub_1DB06FC14();
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB2D8;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1DB078B70;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v17);
  }
}

uint64_t sub_1DB078B70()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DB078F00;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 56);

    v4 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB078C98()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DB078DAC;
  }

  else
  {
    v3 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB078DAC()
{
  v18 = v0;
  v1 = v0[7];

  v2 = v0[17];
  v15 = v0[8];
  v16 = v0[9];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0CBE00);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB09E234();
  LOBYTE(v17[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v17);

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  sub_1DB09DC04();
  v8 = *(v6 + 24);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v7 + 28);
  v12 = *(v6 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v6, type metadata accessor for ODISignpost);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB078F00()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[15];
  v16 = v0[8];
  v17 = v0[9];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0CBE00);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  sub_1DB09DC04();
  v9 = *(v7 + 24);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v8 + 28);
  v13 = *(v7 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v7, type metadata accessor for ODISignpost);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB079060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB06FC14();
}

uint64_t sub_1DB0790F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB079118, 0, 0);
}

uint64_t sub_1DB079118()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  sub_1DAF3523C(*(v0 + 144), v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  *(v0 + 168) = v5;
  *(v5 + 16) = v1;
  sub_1DAF332B8((v0 + 16), v5 + 24);

  if ((v4 & 1) != 0 || v3 > 0x10C6F7A0B5EDLL)
  {
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_1DB079458;
    v11 = *(v0 + 136);

    return sub_1DB06C8B8(v0 + 56);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    v6[2] = 1000000 * v3;
    v6[3] = &unk_1DB0BB2E8;
    v6[4] = v5;
    v6[5] = &unk_1DB0BB2B8;
    v6[6] = 0;
    v7 = *(MEMORY[0x1E69E8920] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_1DB079320;
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v6, v9);
  }
}

uint64_t sub_1DB079320()
{
  v2 = *v1;
  v3 = (*v1)[23];
  v8 = *v1;
  (*v1)[24] = v0;

  if (v0)
  {
    v4 = sub_1DB0795C4;
  }

  else
  {
    v6 = v2[21];
    v5 = v2[22];
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);

    v4 = sub_1DAF51504;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB079458()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB079554, 0, 0);
}

uint64_t sub_1DB079554()
{
  v1 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DAF51504, 0, 0);
}

uint64_t sub_1DB0795C4()
{
  v11 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002DLL, 0x80000001DB0CBE30);
  swift_getErrorValue();
  v6 = v0[12];
  v7 = v0[13];
  sub_1DB09E234();
  LOBYTE(v10[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB0796D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DAF63DE8;

  return sub_1DB06C8B8(a3);
}

uint64_t sub_1DB079774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ODISignpost();
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB079814, 0, 0);
}

uint64_t sub_1DB079814()
{
  if (qword_1ECC0E090 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v4 = qword_1ECC25C80;
  v3 = *algn_1ECC25C88;
  v5 = byte_1ECC25C90;
  v6 = qword_1ECC25C98;
  v7 = byte_1ECC25CA0;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DB08E91C(v0[4], v0[5], type metadata accessor for ODISignpost);
  if (qword_1ECC0DFD0 != -1)
  {
    swift_once();
  }

  v10 = qword_1ECC25A50;
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_1DB079A14;
  v12 = v0[2];

  return sub_1DB06D1C0(v10);
}

uint64_t sub_1DB079A14()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB079B10, 0, 0);
}

uint64_t sub_1DB079B10()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB079BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB079C70, 0, 0);
}

uint64_t sub_1DB079C70()
{
  if (qword_1ECC0E0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25CD0;
  v3 = *algn_1ECC25CD8;
  v5 = byte_1ECC25CE0;
  v6 = qword_1ECC25CE8;
  v7 = byte_1ECC25CF0;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1DB07A090;
    v19 = v0[7];

    return sub_1DB0701B4();
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB2F8;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1DB079F68;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v17);
  }
}

uint64_t sub_1DB079F68()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DB07A2F8;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 56);

    v4 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07A090()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DB07A1A4;
  }

  else
  {
    v3 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB07A1A4()
{
  v18 = v0;
  v1 = v0[7];

  v2 = v0[17];
  v15 = v0[8];
  v16 = v0[9];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE60);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB09E234();
  LOBYTE(v17[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v17);

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  sub_1DB09DC04();
  v8 = *(v6 + 24);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v7 + 28);
  v12 = *(v6 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v6, type metadata accessor for ODISignpost);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB07A2F8()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[15];
  v16 = v0[8];
  v17 = v0[9];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE60);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  sub_1DB09DC04();
  v9 = *(v7 + 24);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v8 + 28);
  v13 = *(v7 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v7, type metadata accessor for ODISignpost);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB07A458()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB0701B4();
}

uint64_t sub_1DB07A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07A58C, 0, 0);
}

uint64_t sub_1DB07A58C()
{
  if (qword_1ECC0E0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25CD0;
  v3 = *algn_1ECC25CD8;
  v5 = byte_1ECC25CE0;
  v6 = qword_1ECC25CE8;
  v7 = byte_1ECC25CF0;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);

  if ((v11 & 1) != 0 || v12 > 0x10C6F7A0B5EDLL)
  {
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1DB07A9AC;
    v19 = v0[7];

    return sub_1DB070544();
  }

  else
  {
    v13 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = 1000000 * v12;
    v14[3] = &unk_1DB0BB308;
    v14[4] = v13;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1DB07A884;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v17);
  }
}

uint64_t sub_1DB07A884()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DB07AC14;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 56);

    v4 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07A9AC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DB07AAC0;
  }

  else
  {
    v3 = sub_1DB0782D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB07AAC0()
{
  v18 = v0;
  v1 = v0[7];

  v2 = v0[17];
  v15 = v0[8];
  v16 = v0[9];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE90);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB09E234();
  LOBYTE(v17[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v17);

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  sub_1DB09DC04();
  v8 = *(v6 + 24);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v7 + 28);
  v12 = *(v6 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v6, type metadata accessor for ODISignpost);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB07AC14()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[15];
  v16 = v0[8];
  v17 = v0[9];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBE90);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  sub_1DB09DC04();
  v9 = *(v7 + 24);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v8 + 28);
  v13 = *(v7 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v7, type metadata accessor for ODISignpost);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB07AD74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB070544();
}

uint64_t sub_1DB07AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_1DB07AE98;

  return sub_1DB06F820();
}

uint64_t sub_1DB07AE98()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB07AFCC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1DB07AFCC()
{
  v9 = v0;
  v1 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0CBEC0);
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[3];
  sub_1DB09E234();
  LOBYTE(v8[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB07B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07B164, 0, 0);
}

uint64_t sub_1DB07B164()
{
  if (qword_1ECC0E078 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = qword_1ECC25C30;
  v3 = *algn_1ECC25C38;
  v5 = byte_1ECC25C40;
  v6 = qword_1ECC25C48;
  v7 = byte_1ECC25C50;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[8];
  v11 = v0[9];
  sub_1DB08E91C(v0[13], v0[14], type metadata accessor for ODISignpost);

  if (v10 == -1)
  {
    if (qword_1EE301828 != -1)
    {
      swift_once();
    }

    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1DB07B598;

    return sub_1DAF4FF9C();
  }

  else
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_task_alloc();
    v0[15] = v14;
    v14[2] = v13;
    v14[3] = &unk_1DB0BB320;
    v14[4] = 0;
    v14[5] = &unk_1DB0BB318;
    v14[6] = v12;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_1DB07B470;
    v17 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0916C4, v14, v17);
  }
}

uint64_t sub_1DB07B470()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1DB07B894;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 72);

    v4 = sub_1DB07B9F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07B598(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = sub_1DB07B740;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v9 = sub_1DB07B6CC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DB07B6CC()
{
  v1 = *(v0 + 72);
  *(v0 + 40) = vextq_s8(*(v0 + 160), *(v0 + 160), 8uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DB07B9F4, 0, 0);
}

uint64_t sub_1DB07B740()
{
  v18 = v0;
  v1 = v0[9];

  v2 = v0[19];
  v15 = v0[10];
  v16 = v0[11];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBEF0);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB09E234();
  LOBYTE(v17[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v17);

  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  sub_1DB09DC04();
  v8 = *(v6 + 24);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v7 + 28);
  v12 = *(v6 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v6, type metadata accessor for ODISignpost);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB07B894()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[9];

  v3 = v0[17];
  v16 = v0[10];
  v17 = v0[11];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBEF0);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  sub_1DB09DC04();
  v9 = *(v7 + 24);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v8 + 28);
  v13 = *(v7 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v7, type metadata accessor for ODISignpost);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB07B9F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[22] = v2;
  v0[23] = v1;
  sub_1DAF40674(v2, v1);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1DB07BAA8;
  v4 = v0[9];

  return sub_1DB06A700(v2, v1);
}

uint64_t sub_1DB07BAA8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1DB07BC88;
  }

  else
  {
    sub_1DAF40780(*(v2 + 176), *(v2 + 184));
    v4 = sub_1DB07BBC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07BBC4()
{
  sub_1DAF40780(v0[22], v0[23]);
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB07BC88()
{
  v19 = v0;
  v1 = v0[22];
  v2 = v0[23];
  sub_1DAF40780(v1, v2);
  sub_1DAF40780(v1, v2);
  v3 = v0[25];
  v16 = v0[10];
  v17 = v0[11];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBEF0);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  sub_1DB09DC04();
  v9 = *(v7 + 24);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v8 + 28);
  v13 = *(v7 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v7, type metadata accessor for ODISignpost);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB07BDF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DB07BE94;

  return sub_1DB06A700(v2, v3);
}

uint64_t sub_1DB07BE94()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1DB07BFB4()
{
  if (qword_1EE301828 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE301830;
  *(v0 + 40) = qword_1EE301830;

  return MEMORY[0x1EEE6DFA0](sub_1DB07C04C, v1, 0);
}

uint64_t sub_1DB07C04C()
{
  v1 = v0[5];
  v2 = *(v1 + 184);
  v0[6] = v2;
  v3 = *(v1 + 192);
  v0[7] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = sub_1DB08E648(&qword_1EE301820, 255, type metadata accessor for DIPODNHelper);
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1DB07C1CC;
    v7 = v0[5];
    v8 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v0 + 2, v1, v4, 0xD000000000000013, 0x80000001DB0C2B70, sub_1DAF628BC, v7, v8);
  }

  else
  {
    v0[10] = v2;
    v0[11] = v3;
    sub_1DAF4ED88(v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1DB07C2F8, 0, 0);
  }
}

uint64_t sub_1DB07C1CC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1DB07C3B8;
  }

  else
  {
    v6 = sub_1DB07C31C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DB07C31C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *(v1 + 184) = v3;
  *(v1 + 192) = v2;
  sub_1DAF40674(v3, v2);
  sub_1DAF4AC40(v4, v5);
  v0[10] = v3;
  v0[11] = v2;
  sub_1DAF4ED88(v0[6], v0[7]);

  return MEMORY[0x1EEE6DFA0](sub_1DB07C2F8, 0, 0);
}

uint64_t sub_1DB07C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07C474, 0, 0);
}

uint64_t sub_1DB07C474()
{
  if (qword_1EE301368 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1EE309F20;
  v3 = *algn_1EE309F28;
  v5 = byte_1EE309F30;
  v6 = qword_1EE309F38;
  v7 = byte_1EE309F40;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[6];
  v11 = v0[7];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);

  if (v10 == -1)
  {
    if (qword_1EE3039A0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE3039B0;
    v0[16] = qword_1EE3039B0;

    return MEMORY[0x1EEE6DFA0](sub_1DB07C878, v18, 0);
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = v13;
    v14[3] = &unk_1DB0BB330;
    v14[4] = v12;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1DB07C750;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v17);
  }
}

uint64_t sub_1DB07C750()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DB07CCFC;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 56);

    v4 = sub_1DB07CC40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07C878()
{
  if (*(v0[16] + 168))
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_1DB07CADC;
    v2 = v0[16];
    v3 = v0[7];

    return sub_1DB06D570(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_1DB07C984;
    v6 = v0[16];

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DB07C984()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v3;
  v4[1] = sub_1DB07CADC;
  v5 = v1[16];
  v6 = v1[7];

  return sub_1DB06D570(v5);
}

uint64_t sub_1DB07CADC()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB07CBD8, 0, 0);
}

uint64_t sub_1DB07CBD8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1DB07CC40, 0, 0);
}

uint64_t sub_1DB07CC40()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB07CCFC()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBF10);
  swift_getErrorValue();
  v6 = v0[2];
  v7 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  sub_1DB09DC04();
  v11 = *(v9 + 24);
  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = *(v10 + 28);
  v15 = *(v9 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v9, type metadata accessor for ODISignpost);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DB07CE84()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 24) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DB07CF1C, v1, 0);
}

uint64_t sub_1DB07CF1C()
{
  if (*(v0[3] + 168))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1DB07D17C;
    v3 = v0[2];
    v2 = v0[3];

    return sub_1DB06D570(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_1DB07D024;
    v6 = v0[3];

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DB07D024()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v3;
  v4[1] = sub_1DB07D17C;
  v5 = v1[3];
  v6 = v1[2];

  return sub_1DB06D570(v5);
}

uint64_t sub_1DB07D17C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB07D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for ODISignpost();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07D318, 0, 0);
}

uint64_t sub_1DB07D318()
{
  if (qword_1ECC0E0D0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25D98;
  v3 = unk_1ECC25DA0;
  v5 = byte_1ECC25DA8;
  v6 = qword_1ECC25DB0;
  v7 = byte_1ECC25DB8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[6];
  v11 = v0[7];
  sub_1DB08E91C(v0[11], v0[12], type metadata accessor for ODISignpost);

  if (v10 == -1)
  {
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1DB07D714;
    v19 = v0[7];

    return sub_1DB06A938();
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = v13;
    v14[3] = &unk_1DB0BB340;
    v14[4] = v12;
    v14[5] = &unk_1DB0BB2B8;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1DB07D5EC;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v14, v17);
  }
}

uint64_t sub_1DB07D5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DB07D810;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 56);

    v4 = sub_1DB09549C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07D714()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0782D8, 0, 0);
}

uint64_t sub_1DB07D810()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBF40);
  swift_getErrorValue();
  v6 = v0[2];
  v7 = v0[3];
  sub_1DB09E234();
  LOBYTE(v18[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v18);

  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  sub_1DB09DC04();
  v11 = *(v9 + 24);
  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = *(v10 + 28);
  v15 = *(v9 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v9, type metadata accessor for ODISignpost);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DB07D978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DE8;

  return sub_1DB06A938();
}

uint64_t sub_1DB07DA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v13;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v9 = type metadata accessor for ODISignpost();
  v8[23] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB07DAB8, 0, 0);
}

uint64_t sub_1DB07DAB8()
{
  v31 = v0;
  if (qword_1ECC0E0B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = qword_1ECC25CF8;
  v3 = unk_1ECC25D00;
  v5 = byte_1ECC25D08;
  v6 = qword_1ECC25D10;
  v7 = byte_1ECC25D18;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  sub_1DB08E91C(*(v0 + 192), *(v0 + 200), type metadata accessor for ODISignpost);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000028, 0x80000001DB0CBF70);
  v16 = MEMORY[0x1E1280010](v12, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v16);

  MEMORY[0x1E127FE90](0x6974206874697720, 0xEE002074756F656DLL);
  *(v0 + 120) = v13;
  v17 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v17);

  v18 = v29;
  LOBYTE(v29) = 5;
  CoreODILogger.info(_:category:)(v18, v30, &v29);

  sub_1DAF3523C(v11, v0 + 16);
  sub_1DAF3523C(v0 + 16, v0 + 56);
  v19 = swift_allocObject();
  *(v0 + 208) = v19;
  *(v19 + 16) = v10;
  *(v19 + 24) = v12;
  sub_1DAF332B8((v0 + 16), v19 + 32);

  if (v13 == -1)
  {
    v25 = swift_task_alloc();
    *(v0 + 240) = v25;
    *v25 = v0;
    v25[1] = sub_1DB07E008;
    v26 = *(v0 + 168);
    v27 = *(v0 + 152);

    return sub_1DB06ACF0(v27, v0 + 56);
  }

  else
  {
    v20 = *(v0 + 160);
    v21 = swift_task_alloc();
    *(v0 + 216) = v21;
    v21[2] = v20;
    v21[3] = &unk_1DB0BB350;
    v21[4] = v19;
    v21[5] = &unk_1DB0BB2B8;
    v21[6] = 0;
    v22 = *(MEMORY[0x1E69E8920] + 4);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_1DB07DED0;
    v24 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v23, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0954A4, v21, v24);
  }
}

uint64_t sub_1DB07DED0()
{
  v2 = *v1;
  v3 = (*v1)[28];
  v8 = *v1;
  (*v1)[29] = v0;

  if (v0)
  {
    v4 = sub_1DB07E334;
  }

  else
  {
    v6 = v2[26];
    v5 = v2[27];
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);

    v4 = sub_1DB07E4E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB07E008()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DB07E18C;
  }

  else
  {
    v3 = sub_1DB07E11C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB07E11C()
{
  v1 = *(v0 + 208);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DB07E4E4, 0, 0);
}

uint64_t sub_1DB07E18C()
{
  v20 = v0;
  v1 = v0[26];

  v2 = v0[31];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001FLL, 0x80000001DB0CBFA0);
  v6 = MEMORY[0x1E1280010](v4, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v6);

  MEMORY[0x1E127FE90](0x20726F72726520, 0xE700000000000000);
  swift_getErrorValue();
  v7 = v0[12];
  v8 = v0[13];
  sub_1DB09E234();
  LOBYTE(v19[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v19);

  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[23];
  sub_1DB09DC04();
  v12 = *(v10 + 24);
  v13 = *v10;
  v14 = *(v10 + 8);
  v15 = *(v11 + 28);
  v16 = *(v10 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v10, type metadata accessor for ODISignpost);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DB07E334()
{
  v21 = v0;
  v1 = v0[26];
  v2 = v0[27];

  v3 = v0[29];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001FLL, 0x80000001DB0CBFA0);
  v7 = MEMORY[0x1E1280010](v5, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v7);

  MEMORY[0x1E127FE90](0x20726F72726520, 0xE700000000000000);
  swift_getErrorValue();
  v8 = v0[12];
  v9 = v0[13];
  sub_1DB09E234();
  LOBYTE(v20[0]) = 5;
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, v20);

  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[23];
  sub_1DB09DC04();
  v13 = *(v11 + 24);
  v14 = *v11;
  v15 = *(v11 + 8);
  v16 = *(v12 + 28);
  v17 = *(v11 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v11, type metadata accessor for ODISignpost);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DB07E4E4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DB08E718(v2, type metadata accessor for ODISignpost);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB07E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DAF62CC4;

  return sub_1DB06ACF0(a3, a4);
}

uint64_t sub_1DB07E64C(char *a1)
{
  v2 = *a1;
  v4[2] = *v1;
  LOBYTE(v4[0]) = v2;
  ODIBindingsDict.subscript.getter(v4, v5);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    if (swift_dynamicCast())
    {
      return v4[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DAF40AEC(v5, &qword_1ECC0E178, &qword_1DB09FFB0);
    return 0;
  }
}

uint64_t sub_1DB07E6FC()
{
  v1 = *(v0 + 1224);
  v4 = *(v0 + 1216);
  v5 = v1;
  v3 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000015, 0x80000001DB0CB4C0, &v3);

  *(v0 + 1147) = 1;
  return result;
}

void *ArmandDataFiller.deinit()
{
  memcpy(v7, v0 + 14, 0x40AuLL);
  sub_1DAF40988(v7);
  v1 = v0[144];

  v2 = v0[145];

  v3 = v0[146];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 147);
  v4 = v0[153];

  v5 = v0[155];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ArmandDataFiller.__deallocating_deinit()
{
  ArmandDataFiller.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DB07E820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_1DB08E6B0(v16, v13, type metadata accessor for AnyODIKnownBinding);
        sub_1DB08E6B0(v17, v9, type metadata accessor for AnyODIKnownBinding);
        v19 = sub_1DB0857B0(v13, v9);
        sub_1DB08E718(v9, type metadata accessor for AnyODIKnownBinding);
        sub_1DB08E718(v13, type metadata accessor for AnyODIKnownBinding);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1DB07E9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DB09E254() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DB07EA68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = 0xEC0000006E6F6973;
  v33 = v4 - 1;
  while (1)
  {
    v8 = v5[2];
    v36 = v5[1];
    *v37 = v8;
    v35 = *v5;
    *&v37[10] = *(v5 + 42);
    v9 = v6[2];
    v39 = v6[1];
    v40[0] = v9;
    v38 = *v6;
    *(v40 + 10) = *(v6 + 42);
    v10 = v36;
    v11 = v37[0];
    v12 = v39;
    if ((v37[0] & 1) == 0)
    {
      if (v9)
      {
        goto LABEL_117;
      }

      v13 = v7;
      v14 = 0x726556646C697542;
      switch(v36)
      {
        case 1:
          v13 = 0xE400000000000000;
          v14 = 1684628851;
          break;
        case 2:
          v14 = 0x754E6C6169726553;
          v13 = 0xEC0000007265626DLL;
          break;
        case 3:
          v14 = 0x6544657571696E55;
          v17 = 1701013878;
          goto LABEL_25;
        case 4:
          v14 = 0x6843657571696E55;
          v13 = 0xEC00000044497069;
          break;
        case 5:
          v13 = 0xE90000000000006ELL;
          v14 = 0x6F6973726556736FLL;
          break;
        case 6:
          v13 = 0xE600000000000000;
          v14 = 0x7265626D756ELL;
          break;
        case 7:
          v14 = 0xD000000000000018;
          v13 = 0x80000001DB0C0F40;
          break;
        case 8:
          v14 = 0x746E6564494D4953;
          v16 = 7959657;
          goto LABEL_32;
        case 9:
          v14 = 0xD000000000000018;
          v13 = 0x80000001DB0C0F70;
          break;
        case 10:
          v13 = 0xE800000000000000;
          v14 = 0x6E6F697461636F6CLL;
          break;
        case 11:
          v14 = 0xD000000000000017;
          v13 = 0x80000001DB0C0F90;
          break;
        case 12:
          v14 = 0x6E69726168537369;
          v13 = 0xEF6E656572635367;
          break;
        case 13:
          v14 = 0xD000000000000012;
          v13 = 0x80000001DB0C0FC0;
          break;
        case 14:
          v13 = 0xEA00000000007265;
          v14 = 0x696669746E656469;
          break;
        case 15:
          v14 = 0x736572705F6D6973;
          v16 = 7630437;
          goto LABEL_32;
        case 16:
          v14 = 0x6F737265705F6161;
          v16 = 4475246;
LABEL_32:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v14 = 0x7A696C616D726F6ELL;
          v17 = 1396991077;
LABEL_25:
          v13 = v17 | 0xEE00444900000000;
          break;
        case 18:
          v13 = 0xE700000000000000;
          v14 = 0x6469656C707061;
          break;
        default:
          break;
      }

      v18 = 0x726556646C697542;
      v19 = v7;
      switch(v39)
      {
        case 1:
          v7 = 0xE400000000000000;
          v18 = 1684628851;
          break;
        case 2:
          v18 = 0x754E6C6169726553;
          v7 = 0xEC0000007265626DLL;
          break;
        case 3:
          v18 = 0x6544657571696E55;
          v21 = 1701013878;
          goto LABEL_46;
        case 4:
          v18 = 0x6843657571696E55;
          v7 = 0xEC00000044497069;
          break;
        case 5:
          v7 = 0xE90000000000006ELL;
          v18 = 0x6F6973726556736FLL;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v18 = 0x7265626D756ELL;
          break;
        case 7:
          v18 = 0xD000000000000018;
          v7 = 0x80000001DB0C0F40;
          break;
        case 8:
          v18 = 0x746E6564494D4953;
          v20 = 7959657;
          goto LABEL_53;
        case 9:
          v18 = 0xD000000000000018;
          v7 = 0x80000001DB0C0F70;
          break;
        case 10:
          v7 = 0xE800000000000000;
          v18 = 0x6E6F697461636F6CLL;
          break;
        case 11:
          v18 = 0xD000000000000017;
          v7 = 0x80000001DB0C0F90;
          break;
        case 12:
          v18 = 0x6E69726168537369;
          v7 = 0xEF6E656572635367;
          break;
        case 13:
          v18 = 0xD000000000000012;
          v7 = 0x80000001DB0C0FC0;
          break;
        case 14:
          v7 = 0xEA00000000007265;
          v18 = 0x696669746E656469;
          break;
        case 15:
          v18 = 0x736572705F6D6973;
          v20 = 7630437;
          goto LABEL_53;
        case 16:
          v18 = 0x6F737265705F6161;
          v20 = 4475246;
LABEL_53:
          v7 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v18 = 0x7A696C616D726F6ELL;
          v21 = 1396991077;
LABEL_46:
          v7 = v21 | 0xEE00444900000000;
          break;
        case 18:
          v7 = 0xE700000000000000;
          v18 = 0x6469656C707061;
          break;
        default:
          break;
      }

      if (v14 == v18 && v13 == v7)
      {
        sub_1DB042BD4(&v35, v34);
        sub_1DB042BD4(&v38, v34);
        sub_1DB041AD8(v10, *(&v10 + 1), 0);
        sub_1DB041AD8(v12, *(&v12 + 1), 0);

        v7 = v19;
      }

      else
      {
        v22 = sub_1DB09E254();
        sub_1DB042BD4(&v35, v34);
        sub_1DB042BD4(&v38, v34);
        sub_1DB041AD8(v10, *(&v10 + 1), 0);
        sub_1DB041AD8(v12, *(&v12 + 1), 0);

        v7 = v19;
        if ((v22 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_58;
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    if (v36 == v39)
    {
      sub_1DB042BD4(&v35, v34);
      sub_1DB042BD4(&v38, v34);
      sub_1DB042B1C(v10, *(&v10 + 1), 1);
      sub_1DB042B1C(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v10, *(&v10 + 1), 1);
    }

    else
    {
      v15 = sub_1DB09E254();
      sub_1DB042BD4(&v35, v34);
      sub_1DB042BD4(&v38, v34);
      sub_1DB042B1C(v12, *(&v12 + 1), 1);
      sub_1DB042B1C(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v10, *(&v10 + 1), 1);
      sub_1DB041AD8(v12, *(&v12 + 1), 1);
      if ((v15 & 1) == 0)
      {
        goto LABEL_118;
      }
    }

LABEL_58:
    if (v35 != v38 && (sub_1DB09E254() & 1) == 0 || *&v37[8] != *(&v40[0] + 1) || v37[25] != BYTE9(v40[1]))
    {
      goto LABEL_118;
    }

    v23 = 0xE800000000000000;
    v24 = 0x73746E756F636341;
    switch(v37[1])
    {
      case 1:
        v24 = 0x6547656C69626F4DLL;
        v23 = 0xED0000746C617473;
        break;
      case 2:
        v24 = 0x6974726543616162;
        v23 = 0xEE00657461636966;
        break;
      case 3:
        v23 = 0xE900000000000064;
        v24 = 0x6C6569467261654ELL;
        break;
      case 4:
        v23 = 0xE300000000000000;
        v24 = 5456969;
        break;
      case 5:
        v24 = 0x656C655465726F43;
        v23 = 0xED0000796E6F6870;
        break;
      case 6:
        v23 = v7 + 1;
        v24 = 0x61636F4C65726F43;
        break;
      case 7:
        v24 = 0xD000000000000012;
        v23 = 0x80000001DB0C0E80;
        break;
      case 8:
        v24 = 0x656E6F5A656D6954;
        break;
      case 9:
        v24 = 0x6C4372656C6C6143;
        v23 = 0xEC000000746E6569;
        break;
      case 0xA:
        v23 = 0xEA0000000000656DLL;
        v24 = 0x614E646573726150;
        break;
      case 0xB:
        v24 = 0x7265646F636F6547;
        break;
      case 0xC:
        v24 = 0x657474616D726F46;
        v23 = 0xEE00656E6F685064;
        break;
      case 0xD:
        v24 = 0x6553656369766544;
        v23 = 0xEE0073676E697474;
        break;
      case 0xE:
        v24 = 0x72756769666E6F43;
        v23 = 0xED00006E6F697461;
        break;
      default:
        break;
    }

    v25 = 0xE800000000000000;
    v26 = 0x73746E756F636341;
    switch(BYTE1(v40[0]))
    {
      case 1:
        v27 = 0x6547656C69626F4DLL;
        v28 = 0x746C617473;
        goto LABEL_93;
      case 2:
        v29 = 0x6974726543616162;
        v30 = 0x657461636966;
        goto LABEL_96;
      case 3:
        v25 = 0xE900000000000064;
        if (v24 != 0x6C6569467261654ELL)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 4:
        v25 = 0xE300000000000000;
        if (v24 != 5456969)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 5:
        v27 = 0x656C655465726F43;
        v28 = 0x796E6F6870;
        goto LABEL_93;
      case 6:
        v25 = v7 + 1;
        if (v24 != 0x61636F4C65726F43)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 7:
        v25 = 0x80000001DB0C0E80;
        if (v24 != 0xD000000000000012)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 8:
        if (v24 != 0x656E6F5A656D6954)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 9:
        v25 = 0xEC000000746E6569;
        if (v24 != 0x6C4372656C6C6143)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 0xA:
        v25 = 0xEA0000000000656DLL;
        v26 = 0x614E646573726150;
        goto LABEL_101;
      case 0xB:
        if (v24 != 0x7265646F636F6547)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 0xC:
        v29 = 0x657474616D726F46;
        v30 = 0x656E6F685064;
        goto LABEL_96;
      case 0xD:
        v29 = 0x6553656369766544;
        v30 = 0x73676E697474;
LABEL_96:
        v25 = v30 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v24 != v29)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      case 0xE:
        v27 = 0x72756769666E6F43;
        v28 = 0x6E6F697461;
LABEL_93:
        v25 = v28 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v24 != v27)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      default:
LABEL_101:
        if (v24 != v26)
        {
          goto LABEL_105;
        }

LABEL_102:
        if (v23 == v25)
        {

          sub_1DB042C0C(&v38);
          sub_1DB042C0C(&v35);
        }

        else
        {
LABEL_105:
          v31 = sub_1DB09E254();

          sub_1DB042C0C(&v38);
          sub_1DB042C0C(&v35);
          if ((v31 & 1) == 0)
          {
            return 0;
          }
        }

        if (v37[24])
        {
          if ((BYTE8(v40[1]) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((BYTE8(v40[1]) & 1) != 0 || *&v37[16] != *&v40[1])
        {
          return 0;
        }

        if (!v33)
        {
          return 1;
        }

        --v33;
        v5 += 4;
        v6 += 4;
        break;
    }
  }

  sub_1DB042B1C(v36, *(&v36 + 1), 1);

LABEL_117:
  sub_1DB042BD4(&v35, v34);
  sub_1DB042BD4(&v38, v34);
  sub_1DB042B1C(v12, *(&v12 + 1), v11 ^ 1);
  sub_1DB041AD8(v10, *(&v10 + 1), v11);
  sub_1DB041AD8(v12, *(&v12 + 1), v11 ^ 1);
  sub_1DB041AD8(v10, *(&v10 + 1), v11);
LABEL_118:
  sub_1DB042C0C(&v38);
  sub_1DB042C0C(&v35);
  return 0;
}

void *sub_1DB07F6C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double sub_1DB07F73C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DAF35210(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAF3C3E8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1DAF332B8((*(v12 + 56) + 40 * v9), a3);
    sub_1DB07FBA0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB07F7E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DAF355A0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAF3CDC4();
      v11 = v19;
    }

    memcpy(v18, (*(v11 + 48) + 1048 * v8), 0x414uLL);
    sub_1DAF407D4(v18);
    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
    v14 = *(v13 - 8);
    sub_1DAF624E8(v12 + *(v14 + 72) * v8, a2, &qword_1ECC0E2F8, &qword_1DB0A0280);
    sub_1DB080970(v8, v11);
    *v3 = v11;
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t sub_1DB07F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DAF35210(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAF3D308();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for AnyODIKnownBinding(0);
    v22 = *(v15 - 8);
    sub_1DB08E91C(v14 + *(v22 + 72) * v9, a3, type metadata accessor for AnyODIKnownBinding);
    sub_1DB080BC0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for AnyODIKnownBinding(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1DB07FB18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DAF356DC(a1);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DAF3D958();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1DB080F40(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1DB07FBA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1DB09E3A4();

      sub_1DB09D794();
      v15 = sub_1DB09E3E4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB07FD5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_1DB09E3A4();
      sub_1DB09D794();

      result = sub_1DB09E3E4();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB080100(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_1DB09E3A4();
      sub_1DB09D794();

      result = sub_1DB09E3E4();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB08060C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB09E3A4();

      sub_1DB09D794();
      v13 = sub_1DB09E3E4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1DB0807BC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB09E3A4();

      sub_1DB09D794();
      v13 = sub_1DB09E3E4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 368 * v3);
        v19 = (v18 + 368 * v6);
        if (v3 != v6 || result >= v19 + 368)
        {
          result = memmove(result, v19, 0x170uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB080970(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 48);
      v10 = 1048 * v6;
      memcpy(__dst, (v9 + 1048 * v6), 0x414uLL);
      v11 = *(a2 + 40);
      memcpy(v29, (v9 + 1048 * v6), sizeof(v29));
      sub_1DB09E3A4();
      sub_1DAF40898(__dst, v27);
      sub_1DAF8D1F0(v28, v12);
      v13 = sub_1DB09E3E4();
      result = sub_1DAF407D4(__dst);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 1048 * v3);
      v17 = (v15 + v10);
      if (1048 * v3 < v10 || v16 >= v17 + 1048 || v3 != v6)
      {
        memmove(v16, v17, 0x418uLL);
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_23;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_23:
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB080BC0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB09E3A4();

      sub_1DB09D794();
      v13 = sub_1DB09E3E4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for AnyODIKnownBinding(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB080DAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v10);
      result = sub_1DB09E3E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB080F40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1DB09E394();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB0810B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v10);
      result = sub_1DB09E3E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        result = v15 + 112 * v3;
        v16 = (v15 + 112 * v6);
        if (v3 != v6 || result >= v16 + 112)
        {
          result = memmove(result, v16, 0x70uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB081248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DB09E3A4();
  sub_1DB09D794();
  v9 = sub_1DB09E3E4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DB09E254() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1DB082054(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB081398(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1DB09E3A4();
  sub_1DB09D044();
  v8 = sub_1DB09E3E4();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_141:
    v75 = *v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v85;
    sub_1DAF40674(a2, a3);
    sub_1DB0821D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v85 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
LABEL_144:
    v80 = *MEMORY[0x1E69E9840];
    return result;
  }

  v12 = ~v10;
  v13 = a3 >> 62;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v91 = v15;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v88 = v16;
  v87 = v6;
  v83 = (a2 >> 32) - a2;
  v84 = a2 >> 32;
  v89 = v6 + 56;
  v90 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v91) & 1) == 0)
      {
        v77 = 0;
        v78 = 0xC000000000000000;
LABEL_142:
        sub_1DAF40780(v77, v78);
LABEL_143:
        v79 = *(*(v6 + 48) + 16 * v11);
        *a1 = v79;
        sub_1DAF40674(v79, *(&v79 + 1));
        result = 0;
        goto LABEL_144;
      }

LABEL_36:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_148;
      }

      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_147;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_33:
        v28 = BYTE6(a3);
        if (v13)
        {
          v28 = HIDWORD(a2) - a2;
          if (v88)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_146;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_140;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_149;
      }

      sub_1DAF40674(v19, v18);
      v41 = sub_1DB09CD44();
      if (v41)
      {
        v42 = v41;
        v43 = sub_1DB09CD74();
        if (__OFSUB__(v19, v43))
        {
          goto LABEL_151;
        }

        v40 = (v19 - v43 + v42);
      }

      else
      {
        v40 = 0;
      }

      sub_1DB09CD64();
      v12 = v90;
      if (v13 == 2)
      {
        v68 = *(a2 + 16);
        v82 = *(a2 + 24);
        v50 = sub_1DB09CD44();
        if (v50)
        {
          v69 = sub_1DB09CD74();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_165;
          }

          v50 += v68 - v69;
        }

        v27 = __OFSUB__(v82, v68);
        v70 = v82 - v68;
        if (v27)
        {
          goto LABEL_161;
        }

        result = sub_1DB09CD64();
        if (result >= v70)
        {
          v53 = v70;
        }

        else
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_177;
        }

        v9 = v89;
        v12 = v90;
        if (!v50)
        {
          goto LABEL_176;
        }
      }

      else
      {
        if (v13 != 1)
        {
          v9 = v89;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v40)
          {
            goto LABEL_172;
          }

          goto LABEL_138;
        }

        if (v84 < a2)
        {
          goto LABEL_160;
        }

        v50 = sub_1DB09CD44();
        if (v50)
        {
          v54 = sub_1DB09CD74();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_167;
          }

          v50 += a2 - v54;
        }

        result = sub_1DB09CD64();
        v53 = (a2 >> 32) - a2;
        if (result < v83)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_181;
        }

        v9 = v89;
        if (!v50)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v84 < a2)
      {
        goto LABEL_153;
      }

      sub_1DAF40674(v19, v18);
      v31 = sub_1DB09CD44();
      if (!v31)
      {
        goto LABEL_175;
      }

      v32 = v31;
      v33 = sub_1DB09CD74();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_157;
      }

      v34 = (a2 - v33 + v32);
      v35 = sub_1DB09CD64();
      if (!v34)
      {
        goto LABEL_173;
      }

      goto LABEL_109;
    }

    v56 = *(a2 + 16);
    v55 = *(a2 + 24);
    sub_1DAF40674(v19, v18);
    v46 = sub_1DB09CD44();
    if (v46)
    {
      v57 = sub_1DB09CD74();
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_162;
      }

      v46 += v56 - v57;
    }

    v27 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    if (v27)
    {
      goto LABEL_154;
    }

    v49 = sub_1DB09CD64();
    v6 = v87;
    if (!v46)
    {
      goto LABEL_171;
    }

LABEL_100:
    if (v49 >= v48)
    {
      v58 = v48;
    }

    else
    {
      v58 = v49;
    }

    v59 = memcmp(__s1, v46, v58);
    sub_1DAF40780(v19, v18);
    v9 = v89;
    v12 = v90;
    if (!v59)
    {
LABEL_140:
      v77 = a2;
      v78 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v19 + 16);
    sub_1DAF40674(v19, v18);
    v37 = sub_1DB09CD44();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1DB09CD74();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_150;
      }

      v40 = (v36 - v39 + v38);
    }

    else
    {
      v40 = 0;
    }

    sub_1DB09CD64();
    v12 = v90;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v84 < a2)
        {
          goto LABEL_156;
        }

        v50 = sub_1DB09CD44();
        if (v50)
        {
          v51 = sub_1DB09CD74();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_166;
          }

          v50 += a2 - v51;
        }

        result = sub_1DB09CD64();
        v53 = (a2 >> 32) - a2;
        if (result < v83)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_179;
        }

        v9 = v89;
        if (!v50)
        {
          goto LABEL_178;
        }

        goto LABEL_135;
      }

      v9 = v89;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v40)
      {
        goto LABEL_170;
      }

LABEL_138:
      v73 = __s1;
      v72 = v40;
      v71 = BYTE6(a3);
LABEL_139:
      v74 = memcmp(v72, v73, v71);
      sub_1DAF40780(v19, v18);
      v6 = v87;
      if (!v74)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v65 = *(a2 + 16);
    v81 = *(a2 + 24);
    v50 = sub_1DB09CD44();
    if (v50)
    {
      v66 = sub_1DB09CD74();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_164;
      }

      v50 += v65 - v66;
    }

    v27 = __OFSUB__(v81, v65);
    v67 = v81 - v65;
    if (v27)
    {
      goto LABEL_159;
    }

    result = sub_1DB09CD64();
    if (result >= v67)
    {
      v53 = v67;
    }

    else
    {
      v53 = result;
    }

    if (!v40)
    {
      goto LABEL_183;
    }

    v9 = v89;
    v12 = v90;
    if (!v50)
    {
      goto LABEL_182;
    }

LABEL_135:
    if (v40 == v50)
    {
      sub_1DAF40780(v19, v18);
      sub_1DAF40780(a2, a3);
      v6 = v87;
      goto LABEL_143;
    }

    v71 = v53;
    v72 = v40;
    v73 = v50;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a2;
    v93 = a3;
    v94 = BYTE2(a3);
    v95 = BYTE3(a3);
    v96 = BYTE4(a3);
    v97 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v45 = *(a2 + 16);
    v44 = *(a2 + 24);
    sub_1DAF40674(v19, v18);
    v46 = sub_1DB09CD44();
    if (v46)
    {
      v47 = sub_1DB09CD74();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_163;
      }

      v46 += v45 - v47;
    }

    v27 = __OFSUB__(v44, v45);
    v48 = v44 - v45;
    if (v27)
    {
      goto LABEL_155;
    }

    v49 = sub_1DB09CD64();
    v6 = v87;
    if (!v46)
    {
      goto LABEL_174;
    }

    goto LABEL_100;
  }

  if (v84 < a2)
  {
    goto LABEL_152;
  }

  sub_1DAF40674(v19, v18);
  v60 = sub_1DB09CD44();
  if (v60)
  {
    v61 = v60;
    v62 = sub_1DB09CD74();
    if (__OFSUB__(a2, v62))
    {
      goto LABEL_158;
    }

    v34 = (a2 - v62 + v61);
    v35 = sub_1DB09CD64();
    if (!v34)
    {
      goto LABEL_169;
    }

LABEL_109:
    if (v35 >= v83)
    {
      v63 = (a2 >> 32) - a2;
    }

    else
    {
      v63 = v35;
    }

    v64 = memcmp(__s1, v34, v63);
    sub_1DAF40780(v19, v18);
    v9 = v89;
    if (!v64)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_1DB09CD64();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  result = sub_1DB09CD64();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

uint64_t sub_1DB081D14(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DB09DD54();

    if (v9)
    {

      sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1DB09DD44();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1DB01FC5C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1DB02030C(v22 + 1);
    }

    v20 = v8;
    sub_1DB0207A4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v11 = *(v6 + 40);
  v12 = sub_1DB09DC24();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1DB082AD4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1DB09DC34();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1DB081F4C(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](a2);
  v9 = sub_1DB09E3E4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (*(*(v7 + 48) + v11) != a2)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    a3(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1DB082054(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DB01FE4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB020828();
      goto LABEL_16;
    }

    sub_1DB082EFC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DB09E3A4();
  sub_1DB09D794();
  result = sub_1DB09E3E4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DB09E254();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

uint64_t sub_1DB0821D4(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v93 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_1DB0200AC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB020984();
      goto LABEL_143;
    }

    sub_1DB083134(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DB09E3A4();
  sub_1DB09D044();
  result = sub_1DB09E3E4();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v81;
    *(*v81 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = v7;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      v75 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v85 = v17;
  v80 = v10;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v82 = v18;
  v78 = (v7 >> 32) - v7;
  v79 = v7 >> 32;
  v83 = v14;
  v84 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v85) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(v7) - v7;
        if (v82)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v79 < v7)
        {
          goto LABEL_152;
        }

        sub_1DAF40674(v21, v20);
        v31 = sub_1DB09CD44();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = sub_1DB09CD74();
        if (__OFSUB__(v7, v33))
        {
          goto LABEL_158;
        }

        v34 = v7 - v33 + v32;
        v35 = sub_1DB09CD64();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v78)
        {
          v56 = (v7 >> 32) - v7;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        result = sub_1DAF40780(v21, v20);
LABEL_141:
        v14 = v83;
        v12 = v84;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(v7 + 16);
      v53 = *(v7 + 24);
      sub_1DAF40674(v21, v20);
      v34 = sub_1DB09CD44();
      if (v34)
      {
        v55 = sub_1DB09CD74();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = sub_1DB09CD64();
      v10 = v80;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    sub_1DAF40674(v21, v20);
    v39 = sub_1DB09CD44();
    if (v39)
    {
      v45 = sub_1DB09CD74();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    sub_1DB09CD64();
    if (v15 == 2)
    {
      v66 = *(v7 + 16);
      v77 = *(v7 + 24);
      v41 = sub_1DB09CD44();
      if (v41)
      {
        v67 = sub_1DB09CD74();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v77, v66);
      v68 = v77 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = sub_1DB09CD64();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v79 < v7)
      {
        goto LABEL_160;
      }

      v41 = sub_1DB09CD44();
      if (v41)
      {
        v46 = sub_1DB09CD74();
        if (__OFSUB__(v7, v46))
        {
          goto LABEL_167;
        }

        v41 += v7 - v46;
      }

      v47 = sub_1DB09CD64();
      v44 = (v7 >> 32) - v7;
      if (v47 < v78)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    sub_1DAF40674(v21, v20);
    v39 = sub_1DB09CD44();
    if (v39)
    {
      v40 = sub_1DB09CD74();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    sub_1DB09CD64();
    if (v15 == 2)
    {
      v62 = *(v7 + 16);
      v76 = *(v7 + 24);
      v41 = sub_1DB09CD44();
      if (v41)
      {
        v63 = sub_1DB09CD74();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v76, v62);
      v64 = v76 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = sub_1DB09CD64();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v79 < v7)
      {
        goto LABEL_155;
      }

      v41 = sub_1DB09CD44();
      if (v41)
      {
        v42 = sub_1DB09CD74();
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_165;
        }

        v41 += v7 - v42;
      }

      v43 = sub_1DB09CD64();
      v44 = (v7 >> 32) - v7;
      if (v43 < v78)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      result = sub_1DAF40780(v21, v20);
      v10 = v80;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = v7;
    v87 = a2;
    v88 = BYTE2(a2);
    v89 = BYTE3(a2);
    v90 = BYTE4(a2);
    v91 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(v7 + 16);
    v48 = *(v7 + 24);
    sub_1DAF40674(v21, v20);
    v34 = sub_1DB09CD44();
    if (v34)
    {
      v50 = sub_1DB09CD74();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = sub_1DB09CD64();
    v10 = v80;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v79 < v7)
  {
    goto LABEL_153;
  }

  sub_1DAF40674(v21, v20);
  v57 = sub_1DB09CD44();
  if (v57)
  {
    v58 = v57;
    v59 = sub_1DB09CD74();
    if (__OFSUB__(v7, v59))
    {
      goto LABEL_157;
    }

    v34 = v7 - v59 + v58;
    v35 = sub_1DB09CD64();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_1DB09CD64();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_1DB09CD64();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_1DAF40780(v21, v20);
LABEL_185:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

void sub_1DB082AD4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB02030C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DB020AE0();
      goto LABEL_12;
    }

    sub_1DB083370(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1DB09DC24();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1DB09DC34();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DB09E2D4();
  __break(1u);
}

uint64_t sub_1DB082C44(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB020534(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB020C30();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DB083584(v5 + 1, &qword_1ECC0F508, &qword_1DB0B2730);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v4);
  result = sub_1DB09E3E4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

uint64_t sub_1DB082DA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB020548(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB020C44();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DB083584(v5 + 1, &qword_1ECC0F510, &qword_1DB0B2738);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v4);
  result = sub_1DB09E3E4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

uint64_t sub_1DB082EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4F8, &unk_1DB0B2720);
  result = sub_1DB09DDD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DB09E3A4();

      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DB083134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F500, &qword_1DB0BB1B0);
  result = sub_1DB09DDD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DB09E3A4();
      sub_1DAF40674(v19, v20);
      sub_1DB09D044();
      result = sub_1DB09E3E4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DB083370(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  result = sub_1DB09DDD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1DB09DC24();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DB083584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB09DDD4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v19);
      result = sub_1DB09E3E4();
      v21 = -1 << *(v8 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1DB08379C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1280A80](v3);
  if (v3)
  {
    v5 = (a2 + 89);
    do
    {
      v6 = *(v5 - 57);
      v7 = *(v5 - 49);
      v8 = *(v5 - 41);
      v9 = *(v5 - 33);
      v10 = *(v5 - 25);
      v11 = *(v5 - 24);
      v12 = *(v5 - 17);
      v13 = *(v5 - 9);
      v14 = *(v5 - 1);
      v15 = *v5;

      sub_1DB042B1C(v8, v9, v10);
      sub_1DB09D794();
      if (v10)
      {
        MEMORY[0x1E1280A80](1);
        sub_1DB09D794();
      }

      else
      {
        MEMORY[0x1E1280A80](0);
        sub_1DB09D794();
      }

      sub_1DB09D794();

      MEMORY[0x1E1280A80](v12);
      sub_1DB09E3C4();
      if (!v14)
      {
        MEMORY[0x1E1280A80](v13);
      }

      sub_1DB09E3C4();

      result = sub_1DB041AD8(v8, v9, v10);
      v5 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DB083D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v65 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFF8, &qword_1DB0BB0C0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v18, v21);
  v72 = (&v65 - v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = a1;
  v69 = v12;
  v24 = 0;
  v27 = *(a1 + 64);
  v26 = a1 + 64;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v66 = (v28 + 63) >> 6;
  v67 = v26;
  v31 = &qword_1ECC10000;
  v32 = &qword_1DB0BB0C8;
  while (v30)
  {
    v33 = __clz(__rbit64(v30));
    v34 = (v30 - 1) & v30;
    v35 = v33 | (v24 << 6);
LABEL_16:
    v40 = (*(v68 + 48) + 16 * v35);
    v41 = *v40;
    v42 = v40[1];
    v43 = v70;
    sub_1DB08E6B0(*(v68 + 56) + *(v74 + 72) * v35, v70, type metadata accessor for AnyODIKnownBinding);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    v45 = *(v44 + 48);
    *v20 = v41;
    v20[1] = v42;
    sub_1DB08E91C(v43, v20 + v45, type metadata accessor for AnyODIKnownBinding);
    (*(*(v44 - 8) + 56))(v20, 0, 1, v44);

LABEL_17:
    v46 = v72;
    sub_1DAF624E8(v20, v72, &qword_1ECC0FFF8, &qword_1DB0BB0C0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
    v73 = v48 == 1;
    if (v48 == 1)
    {
      return v73;
    }

    v49 = v34;
    v50 = v32;
    v51 = v31;
    v52 = v20;
    v53 = *(v47 + 48);
    v54 = v46;
    v56 = *v46;
    v55 = v46[1];
    v57 = v69;
    sub_1DB08E91C(v54 + v53, v69, type metadata accessor for AnyODIKnownBinding);
    v58 = sub_1DAF35210(v56, v55);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      sub_1DB08E718(v57, type metadata accessor for AnyODIKnownBinding);
      return 0;
    }

    v61 = *(a2 + 56) + *(v74 + 72) * v58;
    v62 = v71;
    sub_1DB08E6B0(v61, v71, type metadata accessor for AnyODIKnownBinding);
    v63 = sub_1DB0857B0(v62, v57);
    sub_1DB08E718(v62, type metadata accessor for AnyODIKnownBinding);
    result = sub_1DB08E718(v57, type metadata accessor for AnyODIKnownBinding);
    v20 = v52;
    v31 = v51;
    v32 = v50;
    v30 = v49;
    if ((v63 & 1) == 0)
    {
      return v73;
    }
  }

  if (v66 <= v24 + 1)
  {
    v36 = v24 + 1;
  }

  else
  {
    v36 = v66;
  }

  v37 = v36 - 1;
  while (1)
  {
    v38 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v38 >= v66)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      (*(*(v64 - 8) + 56))(v20, 1, 1, v64);
      v34 = 0;
      v24 = v37;
      goto LABEL_17;
    }

    v39 = *(v67 + 8 * v38);
    ++v24;
    if (v39)
    {
      v34 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) | (v38 << 6);
      v24 = v38;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB084210(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v3 = type metadata accessor for AnyODIKnownBinding(0);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFF8, &qword_1DB0BB0C0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v46 - v14);
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v49 = a2;

  v22 = 0;
  v23 = 0;
  v47 = v12;
  if (v19)
  {
    while (1)
    {
      v51 = v22;
      v24 = v23;
LABEL_12:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v24 << 6);
      v28 = (*(v49 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = v52;
      sub_1DB08E6B0(*(v49 + 56) + *(v48 + 72) * v27, v52, type metadata accessor for AnyODIKnownBinding);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      v33 = *(v32 + 48);
      v34 = v47;
      *v47 = v29;
      *(v34 + 1) = v30;
      v35 = v34;
      sub_1DB08E91C(v31, &v34[v33], type metadata accessor for AnyODIKnownBinding);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

      v53 = v24;
      v12 = v35;
      v22 = v51;
LABEL_13:
      sub_1DAF624E8(v12, v15, &qword_1ECC0FFF8, &qword_1DB0BB0C0);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
      {
        break;
      }

      v37 = *(v36 + 48);
      v38 = *v15;
      v39 = v15[1];
      v40 = v12;
      v41 = v52;
      sub_1DB08E91C(v15 + v37, v52, type metadata accessor for AnyODIKnownBinding);
      v42 = *(v50 + 48);
      v54[2] = *(v50 + 32);
      v54[3] = v42;
      v55 = *(v50 + 64);
      v43 = *(v50 + 16);
      v54[0] = *v50;
      v54[1] = v43;
      sub_1DB09D794();

      sub_1DB059844(v54);
      v44 = v41;
      v12 = v40;
      sub_1DB08E718(v44, type metadata accessor for AnyODIKnownBinding);
      result = sub_1DB09E3E4();
      v22 ^= result;
      v23 = v53;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1E1280A80](v22);
  }

  else
  {
LABEL_5:
    if (v20 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v20;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v53 = v25 - 1;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
        (*(*(v45 - 8) + 56))(v12, 1, 1, v45);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v16 + 8 * v24);
      ++v23;
      if (v19)
      {
        v51 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB08463C(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_1DAF403FC(*(a2 + 56) + 40 * v13, &v22);
      v20 = v22;
      v21 = v23;
      v17 = v24;

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v27[0] = v20;
      v27[1] = v21;
      v28 = v17;
      v18 = a1[3];
      v24 = a1[2];
      v25 = v18;
      v26 = *(a1 + 8);
      v19 = a1[1];
      v22 = *a1;
      v23 = v19;
      sub_1DB09D794();

      sub_1DB09DDA4();
      sub_1DAF4057C(v27);
      result = sub_1DB09E3E4();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1E1280A80](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1DB0847BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 64);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v14 != 213)
        {
          return 0;
        }
      }

      else if (v14 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v14 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v14 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v14 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v14 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v14 != 215)
      {
        return 0;
      }
    }

    else if (v14 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v14 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v14 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v14 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v13)
    {
      v30 = *(a2 + 64);
      v31 = v12;
      v21 = *(a2 + 48);
      v22 = *(a2 + 56);
      v23 = v11;
      v24 = v10;
      v25 = *(a2 + 40);
      v26 = sub_1DB09E254();
      v17 = v25;
      v10 = v24;
      v11 = v23;
      v18 = v22;
      v19 = v21;
      v20 = v30;
      v12 = v31;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v17 != 213)
        {
          return 0;
        }
      }

      else if (v17 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v17 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v17 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v17 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v17 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v17 != 215)
      {
        return 0;
      }
    }

    else if (v17 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v17 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v17 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v17 != 219)
  {
    return 0;
  }

LABEL_69:
  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v7 != v16 || v8 != v15)
    {
      v28 = v10;
      v29 = sub_1DB09E254();
      v10 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v12 <= 214)
  {
    if (v12 > 212)
    {
      if (v12 == 213)
      {
        if (v20 != 213)
        {
          return 0;
        }
      }

      else if (v20 != 214)
      {
        return 0;
      }

      goto LABEL_106;
    }

    if (v12 == 211)
    {
      if (v20 != 211)
      {
        return 0;
      }

      goto LABEL_106;
    }

    if (v12 == 212)
    {
      if (v20 != 212)
      {
        return 0;
      }

      goto LABEL_106;
    }

LABEL_104:
    if ((v20 - 211) < 9 || qword_1DB0BD040[v12 ^ 0x80] != qword_1DB0BD040[v20 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 <= 216)
  {
    if (v12 == 215)
    {
      if (v20 != 215)
      {
        return 0;
      }
    }

    else if (v20 != 216)
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 == 217)
  {
    if (v20 != 217)
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 == 218)
  {
    if (v20 != 218)
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 != 219)
  {
    goto LABEL_104;
  }

  if (v20 != 219)
  {
    return 0;
  }

LABEL_106:
  if (!v11)
  {
    return !v18;
  }

  return v18 && (v10 == v19 && v11 == v18 || (sub_1DB09E254() & 1) != 0);
}