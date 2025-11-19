uint64_t sub_1E4927E8C()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E4927FD0, v5, v4);
}

uint64_t sub_1E4927FD0()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    (*(v0[23] + 8))(v0[24], v0[22]);

LABEL_7:
    v27 = v0[24];
    v28 = v0[21];
    v30 = v0[17];
    v29 = v0[18];
    v32 = v0[15];
    v31 = v0[16];

    v33 = v0[1];

    return v33();
  }

  v5 = v0[12];
  (*(v3 + 32))(v0[17], v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v20 = v0[26];
    v22 = v0[23];
    v21 = v0[24];
    v23 = v0[22];
    v24 = v0[17];
    v25 = v0[13];
    v26 = v0[14];

    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    goto LABEL_7;
  }

  v7 = Strong;
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = *(v9 + 16);
  v11(v0[16], v0[17], v10);
  v12 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  v11(v8, v7 + v12, v10);
  sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530]);
  v13 = sub_1E4997E9C();
  v46 = *(v9 + 8);
  v46(v8, v10);
  v14 = v0[13];
  if (v13)
  {
    v15 = v0[17];
    v16 = v0[14];
    v17 = v0[15];
    v11(v17, v0[16], v0[13]);
    swift_beginAccess();
    (*(v16 + 24))(v7 + v12, v17, v14);
    swift_endAccess();
    sub_1E492C76C();

    v18 = v46;
    v46(v17, v14);
    v46(v15, v14);
    v19 = v0[29];
  }

  else
  {
    v19 = v0[29];
    v35 = v0[16];
    v36 = v0[17];
    swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v7;
    *(v37 + 24) = v35;
    v0[11] = v7;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();

    v18 = v46;
    v46(v36, v14);
  }

  v18(v0[16], v0[13]);
  v0[29] = v19;
  v38 = v0[25];
  v39 = sub_1E499813C();
  v0[30] = v39;
  v40 = *(MEMORY[0x1E69E8678] + 4);
  v41 = swift_task_alloc();
  v0[31] = v41;
  *v41 = v0;
  v41[1] = sub_1E4927E8C;
  v42 = v0[24];
  v43 = v0[22];
  v44 = v0[18];
  v45 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v44, v39, v45, v43);
}

uint64_t sub_1E4928448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B0, &qword_1E49A5CA0);
  v4[19] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v4[21] = v10;
  v11 = *(v10 - 8);
  v4[22] = v11;
  v12 = *(v11 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80398, &qword_1E49A2250);
  v4[31] = v14;
  v15 = *(v14 - 8);
  v4[32] = v15;
  v16 = *(v15 + 64) + 15;
  v4[33] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803A0, &qword_1E49A2258);
  v4[34] = v17;
  v18 = *(v17 - 8);
  v4[35] = v18;
  v19 = *(v18 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = sub_1E499814C();
  v4[38] = sub_1E499813C();
  v21 = sub_1E499811C();
  v4[39] = v21;
  v4[40] = v20;

  return MEMORY[0x1EEE6DFA0](sub_1E492874C, v21, v20);
}

uint64_t sub_1E492874C()
{
  if (qword_1ECF7EB70 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[14];
  sub_1E4990DAC(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[41] = 0;
  v6 = v0[37];
  v7 = sub_1E499813C();
  v0[42] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_1E49288A8;
  v10 = v0[36];
  v11 = v0[34];
  v12 = v0[30];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E49288A8()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v7 = *v0;

  v4 = *(v1 + 320);
  v5 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E49289EC, v5, v4);
}

uint64_t sub_1E49289EC()
{
  v1 = v0[30];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    v2 = v0[38];
    (*(v0[35] + 8))(v0[36], v0[34]);

LABEL_8:
    v21 = v0[36];
    v22 = v0[33];
    v24 = v0[29];
    v23 = v0[30];
    v26 = v0[27];
    v25 = v0[28];
    v28 = v0[25];
    v27 = v0[26];
    v30 = v0[23];
    v29 = v0[24];
    v74 = v0[20];
    v75 = v0[18];
    v77 = v0[17];

    v31 = v0[1];

    return v31();
  }

  v3 = v0[14];
  sub_1E48C15C8(v1, v0[29], &qword_1ECF80368, &unk_1E49A2840);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v16 = v0[38];
    v18 = v0[35];
    v17 = v0[36];
    v19 = v0[34];
    v20 = v0[29];

    sub_1E48C1338(v20, &qword_1ECF80368, &unk_1E49A2840);
    (*(v18 + 8))(v17, v19);
    goto LABEL_8;
  }

  v5 = Strong;
  v6 = v0[28];
  v7 = v0[27];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[15];
  v10 = v0[16];
  sub_1E48C12D0(v0[29], v6, &qword_1ECF80368, &unk_1E49A2840);
  v76 = v5;
  v12 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  swift_beginAccess();
  sub_1E48C12D0(v76 + v12, v7, &qword_1ECF80368, &unk_1E49A2840);
  v13 = *(v9 + 48);
  sub_1E48C12D0(v7, v8, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C12D0(v6, v8 + v13, &qword_1ECF80368, &unk_1E49A2840);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v11) == 1)
  {
    v15 = v0[15];
    sub_1E48C1338(v0[27], &qword_1ECF80368, &unk_1E49A2840);
    if (v14(v8 + v13, 1, v15) == 1)
    {
      sub_1E48C1338(v0[20], &qword_1ECF80368, &unk_1E49A2840);
LABEL_16:
      v49 = v0[24];
      v48 = v0[25];
      v50 = v0[23];
      v51 = v0[15];
      sub_1E48C12D0(v0[28], v48, &qword_1ECF80368, &unk_1E49A2840);
      swift_beginAccess();
      sub_1E48EC048(v48, v76 + v12, &qword_1ECF80368, &unk_1E49A2840);
      swift_endAccess();
      swift_getKeyPath();
      v0[12] = v76;
      sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
      sub_1E4996FCC();

      sub_1E48C12D0(v76 + v12, v49, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C12D0(v49, v50, &qword_1ECF80368, &unk_1E49A2840);
      v52 = v14(v50, 1, v51);
      v53 = v0[23];
      if (v52 == 1)
      {
        sub_1E48C1338(v0[23], &qword_1ECF80368, &unk_1E49A2840);
        v54 = 0;
        v55 = 0xE000000000000000;
      }

      else
      {
        v56 = v0[16];
        v57 = v0[17];
        v58 = v0[15];
        (*(v56 + 32))(v57, v0[23], v58);
        v59 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
        [v59 setUnitStyle_];
        v60 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        [v60 setNumberStyle_];
        [v60 setMaximumFractionDigits_];
        [v59 setNumberFormatter_];
        sub_1E492F270();
        v54 = sub_1E499842C();
        v55 = v61;

        (*(v56 + 8))(v57, v58);
      }

      sub_1E48C1338(v0[24], &qword_1ECF80368, &unk_1E49A2840);
      if (*(v76 + 144) == v54 && *(v76 + 152) == v55 || (v62 = *(v76 + 152), (sub_1E499884C() & 1) != 0))
      {
        *(v76 + 144) = v54;
        *(v76 + 152) = v55;

        v39 = v0[41];
      }

      else
      {
        v39 = v0[41];
        swift_getKeyPath();
        v63 = swift_task_alloc();
        v63[2] = v76;
        v63[3] = v54;
        v63[4] = v55;
        v0[13] = v76;
        sub_1E4996FBC();
      }

      v64 = v0[29];
      sub_1E48C1338(v0[25], &qword_1ECF80368, &unk_1E49A2840);

      sub_1E48C1338(v64, &qword_1ECF80368, &unk_1E49A2840);
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v33 = v0[15];
  sub_1E48C12D0(v0[20], v0[26], &qword_1ECF80368, &unk_1E49A2840);
  v34 = v14(v8 + v13, 1, v33);
  v35 = v0[26];
  v36 = v0[27];
  if (v34 == 1)
  {
    v37 = v0[15];
    v38 = v0[16];
    sub_1E48C1338(v0[27], &qword_1ECF80368, &unk_1E49A2840);
    (*(v38 + 8))(v35, v37);
LABEL_13:
    sub_1E48C1338(v0[20], &qword_1ECF816B0, &qword_1E49A5CA0);
    goto LABEL_14;
  }

  v73 = v0[20];
  v43 = v0[18];
  v45 = v0[15];
  v44 = v0[16];
  (*(v44 + 32))(v43, v8 + v13, v45);
  sub_1E492F2BC();
  v46 = sub_1E4997E9C();
  v47 = *(v44 + 8);
  v47(v43, v45);
  sub_1E48C1338(v36, &qword_1ECF80368, &unk_1E49A2840);
  v47(v35, v45);
  sub_1E48C1338(v73, &qword_1ECF80368, &unk_1E49A2840);
  if (v46)
  {
    goto LABEL_16;
  }

LABEL_14:
  v39 = v0[41];
  v40 = v0[28];
  v41 = v0[29];
  swift_getKeyPath();
  v42 = swift_task_alloc();
  *(v42 + 16) = v76;
  *(v42 + 24) = v40;
  v0[11] = v76;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FBC();

  sub_1E48C1338(v41, &qword_1ECF80368, &unk_1E49A2840);

LABEL_25:
  sub_1E48C1338(v0[28], &qword_1ECF80368, &unk_1E49A2840);
  v0[41] = v39;
  v65 = v0[37];
  v66 = sub_1E499813C();
  v0[42] = v66;
  v67 = *(MEMORY[0x1E69E8678] + 4);
  v68 = swift_task_alloc();
  v0[43] = v68;
  *v68 = v0;
  v68[1] = sub_1E49288A8;
  v69 = v0[36];
  v70 = v0[34];
  v71 = v0[30];
  v72 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v71, v66, v72, v70);
}

uint64_t sub_1E49292F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = sub_1E4996A4C();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = sub_1E4996D8C();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v4[29] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[37] = v14;
  v15 = *(v14 - 8);
  v4[38] = v15;
  v16 = *(v15 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[42] = v18;
  v19 = *(v18 - 8);
  v4[43] = v19;
  v20 = *(v19 + 64) + 15;
  v4[44] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[45] = v21;
  v22 = *(v21 - 8);
  v4[46] = v22;
  v23 = *(v22 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = sub_1E499814C();
  v4[49] = sub_1E499813C();
  v25 = sub_1E499811C();
  v4[50] = v25;
  v4[51] = v24;

  return MEMORY[0x1EEE6DFA0](sub_1E4929690, v25, v24);
}

uint64_t sub_1E4929690()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 416) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E4929728, v1, 0);
}

uint64_t sub_1E4929728()
{
  v1 = v0[52];
  sub_1E48F0638(v0[44]);
  v2 = v0[50];
  v3 = v0[51];

  return MEMORY[0x1EEE6DFA0](sub_1E4929790, v2, v3);
}

uint64_t sub_1E4929790()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[20];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[53] = 0;
  v6 = v0[48];
  v7 = sub_1E499813C();
  v0[54] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[55] = v9;
  *v9 = v0;
  v9[1] = sub_1E492989C;
  v10 = v0[47];
  v11 = v0[45];
  v12 = v0[41];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E492989C()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v7 = *v0;

  v4 = *(v1 + 408);
  v5 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1E49299E0, v5, v4);
}

uint64_t sub_1E49299E0()
{
  v1 = v0[41];
  if ((*(v0[38] + 48))(v1, 1, v0[37]) == 1)
  {
    v2 = v0[49];
    (*(v0[46] + 8))(v0[47], v0[45]);

LABEL_7:
    v16 = v0[47];
    v17 = v0[44];
    v19 = v0[40];
    v18 = v0[41];
    v20 = v0[39];
    v22 = v0[35];
    v21 = v0[36];
    v23 = v0[33];
    v24 = v0[34];
    v25 = v0[32];
    v85 = v0[31];
    v86 = v0[30];
    v87 = v0[28];
    v89 = v0[27];
    v91 = v0[24];
    v95 = v0[23];

    v26 = v0[1];

    return v26();
  }

  v3 = v0[20];
  sub_1E48C15C8(v1, v0[40], &qword_1ECF7F728, &unk_1E499CAB0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v11 = v0[49];
    v13 = v0[46];
    v12 = v0[47];
    v14 = v0[45];
    v15 = v0[40];

    sub_1E48C1338(v15, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v13 + 8))(v12, v14);
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = v0[39];
  sub_1E48C12D0(v0[40], v6, &qword_1ECF7F728, &unk_1E499CAB0);
  v7 = type metadata accessor for Alarm();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = v0[39];
  if (v8 == 1)
  {
    sub_1E48C1338(v9, &qword_1ECF7F728, &unk_1E499CAB0);
    v10 = 1;
  }

  else
  {
    (*(v0[26] + 16))(v0[36], v9, v0[25]);
    sub_1E492F914(v9, type metadata accessor for Alarm);
    v10 = 0;
  }

  v29 = v0[35];
  v28 = v0[36];
  v30 = v0[30];
  v92 = v0[29];
  v31 = v0[25];
  v32 = v0[26];
  (*(v32 + 56))(v28, v10, 1, v31);
  v33 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  v90 = v33;
  v34 = v5 + v33;
  v35 = v32;
  sub_1E48C12D0(v34, v29, &qword_1ECF809D0, &qword_1E499D6C0);
  v36 = *(v92 + 48);
  sub_1E48C12D0(v29, v30, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v28, v30 + v36, &qword_1ECF809D0, &qword_1E499D6C0);
  v37 = *(v35 + 48);
  if (v37(v30, 1, v31) == 1)
  {
    v38 = v0[25];
    sub_1E48C1338(v0[35], &qword_1ECF809D0, &qword_1E499D6C0);
    if (v37(v30 + v36, 1, v38) == 1)
    {
      sub_1E48C1338(v0[30], &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_19:
      v54 = v0[32];
      v53 = v0[33];
      v55 = v0[31];
      v94 = v0[25];
      sub_1E48C12D0(v0[36], v53, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_beginAccess();
      sub_1E48EC048(v53, v5 + v90, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_endAccess();
      swift_getKeyPath();
      v0[18] = v5;
      sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
      sub_1E4996FCC();

      sub_1E48C12D0(v5 + v90, v54, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v54, v55, &qword_1ECF809D0, &qword_1E499D6C0);
      v56 = v37(v55, 1, v94);
      v57 = v0[31];
      if (v56 == 1)
      {
        v58 = v0[24];
        sub_1E48C1338(v0[31], &qword_1ECF809D0, &qword_1E499D6C0);
        sub_1E4996A3C();
      }

      else
      {
        v60 = v0[26];
        v59 = v0[27];
        v62 = v0[24];
        v61 = v0[25];
        (*(v60 + 32))(v59, v0[31], v61);
        sub_1E48F2DA8(v62);
        (*(v60 + 8))(v59, v61);
      }

      v64 = v0[23];
      v63 = v0[24];
      v65 = v0[21];
      v66 = v0[22];
      sub_1E48C1338(v0[32], &qword_1ECF809D0, &qword_1E499D6C0);
      v67 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText;
      swift_beginAccess();
      (*(v66 + 16))(v64, v5 + v67, v65);
      sub_1E492F470(&qword_1ECF80390, MEMORY[0x1E6968848]);
      LOBYTE(v63) = sub_1E4997E9C();
      v68 = *(v66 + 8);
      v68(v64, v65);
      if (v63)
      {
        v69 = v0[40];
        v70 = v0[24];
        v71 = v0[21];
        v72 = v0[22];
        sub_1E48C1338(v0[33], &qword_1ECF809D0, &qword_1E499D6C0);
        sub_1E48C1338(v69, &qword_1ECF7F728, &unk_1E499CAB0);
        swift_beginAccess();
        (*(v72 + 24))(v5 + v67, v70, v71);
        swift_endAccess();

        v44 = v0[53];
      }

      else
      {
        v44 = v0[53];
        v73 = v0[40];
        v74 = v0[33];
        v75 = v0[24];
        swift_getKeyPath();
        v76 = swift_task_alloc();
        *(v76 + 16) = v5;
        *(v76 + 24) = v75;
        v0[19] = v5;
        sub_1E4996FBC();

        sub_1E48C1338(v74, &qword_1ECF809D0, &qword_1E499D6C0);
        sub_1E48C1338(v73, &qword_1ECF7F728, &unk_1E499CAB0);
      }

      v68(v0[24], v0[21]);
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v39 = v0[25];
  sub_1E48C12D0(v0[30], v0[34], &qword_1ECF809D0, &qword_1E499D6C0);
  v40 = v37(v30 + v36, 1, v39);
  v41 = v0[34];
  if (v40 == 1)
  {
    v42 = v0[25];
    v43 = v0[26];
    sub_1E48C1338(v0[35], &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v43 + 8))(v41, v42);
LABEL_16:
    sub_1E48C1338(v0[30], &qword_1ECF7F898, &qword_1E499D6F0);
    goto LABEL_17;
  }

  v93 = v0[30];
  v48 = v0[28];
  v50 = v0[25];
  v49 = v0[26];
  v88 = v0[35];
  (*(v49 + 32))(v48, v30 + v36, v50);
  sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530]);
  v51 = sub_1E4997E9C();
  v52 = *(v49 + 8);
  v52(v48, v50);
  sub_1E48C1338(v88, &qword_1ECF809D0, &qword_1E499D6C0);
  v52(v41, v50);
  sub_1E48C1338(v93, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v51)
  {
    goto LABEL_19;
  }

LABEL_17:
  v44 = v0[53];
  v45 = v0[40];
  v46 = v0[36];
  swift_getKeyPath();
  v47 = swift_task_alloc();
  *(v47 + 16) = v5;
  *(v47 + 24) = v46;
  v0[17] = v5;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FBC();

  sub_1E48C1338(v45, &qword_1ECF7F728, &unk_1E499CAB0);

LABEL_26:
  sub_1E48C1338(v0[36], &qword_1ECF809D0, &qword_1E499D6C0);
  v0[53] = v44;
  v77 = v0[48];
  v78 = sub_1E499813C();
  v0[54] = v78;
  v79 = *(MEMORY[0x1E69E8678] + 4);
  v80 = swift_task_alloc();
  v0[55] = v80;
  *v80 = v0;
  v80[1] = sub_1E492989C;
  v81 = v0[47];
  v82 = v0[45];
  v83 = v0[41];
  v84 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v83, v78, v84, v82);
}

uint64_t sub_1E492A4A0()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 40) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E492A538, v1, 0);
}

uint64_t sub_1E492A538()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000011, 0x80000001E49A7E30, 0);
    swift_beginAccess();
    v6 = v8;
    v9 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 1, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v13;
    swift_endAccess();
  }

  sub_1E497CCF8();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E492A684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_1E499816C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1E498DD1C(0, 0, v5, &unk_1E49A21F0, v7);

  v8 = *(v0 + 24);

  sub_1E48C9EC0(v0 + 32);
  v9 = *(v0 + 152);

  v10 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText;
  v11 = sub_1E4996A4C();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime, &qword_1ECF809D0, &qword_1E499D6C0);
  v12(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__dateText, v11);
  v13 = *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  v14 = *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);

  v15 = *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);

  v16 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  v17 = sub_1E4996D8C();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature, &qword_1ECF80368, &unk_1E49A2840);
  v18 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel___observationRegistrar;
  v19 = sub_1E499700C();
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  return v0;
}

uint64_t sub_1E492A90C()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 40) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E492A9A4, v1, 0);
}

uint64_t sub_1E492A9A4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000011, 0x80000001E49A7E30, 0);
    swift_beginAccess();
    v6 = v8;
    v9 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 1, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v13;
    swift_endAccess();
  }

  sub_1E497D07C();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E492AAF0()
{
  sub_1E492A684();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DigitalClockViewModel()
{
  result = qword_1ECF80310;
  if (!qword_1ECF80310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E492AB9C()
{
  v0 = sub_1E4996A4C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1E492E308();
    if (v4 <= 0x3F)
    {
      v11 = *(v3 - 8) + 64;
      v5 = sub_1E4996D8C();
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        sub_1E492E360();
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          v9 = sub_1E499700C();
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1E492AD70()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 24);
}

uint64_t sub_1E492AE14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 24);
}

uint64_t sub_1E492AEC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E4926BA4(v4);
}

uint64_t sub_1E492AEEC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9E64(v1 + 32, a1);
}

uint64_t sub_1E492AFAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9E64(v3 + 32, a2);
}

uint64_t sub_1E492B06C(uint64_t a1, uint64_t a2)
{
  sub_1E48C9E64(a2, v4);
  swift_beginAccess();
  sub_1E492F9D0(v4, a1 + 32);
  swift_endAccess();
  sub_1E492DD60();
  return sub_1E48C9EC0(v4);
}

uint64_t sub_1E492B0E0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v2 = *(v0 + 144);
  v1 = *(v4 + 152);

  return v2;
}

uint64_t sub_1E492B190@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v4 = *(v3 + 152);
  *a2 = *(v3 + 144);
  a2[1] = v4;
}

uint64_t sub_1E492B23C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1E4926CD8(v2, v3);
}

unint64_t sub_1E492B27C()
{
  v1 = v0;
  v2 = sub_1E49979EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v29 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  if (*(v0 + 17) == 1)
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69814D8], v2);
    return sub_1E4997AAC();
  }

  else
  {
    v9 = sub_1E492F470(&qword_1ECF7F258, type metadata accessor for DigitalClockViewModel);
    v10 = *(v9 + 40);
    v11 = type metadata accessor for DigitalClockViewModel();
    v10(&v29, v11, v9);
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v12 = sub_1E4921408();
    sub_1E48C8360(&v36);
    v13 = *(v12 + 16);

    if (v13 < 3)
    {
      v10(&v29, v11, v9);
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v35;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v15 = sub_1E4921408();
      sub_1E48C8360(&v36);
      v16 = *(v15 + 16);

      if (v16 < 2)
      {
        v10(&v29, v11, v9);
        v39 = v32;
        v40 = v33;
        v41 = v34;
        v42 = v35;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v23 = sub_1E4921408();
        result = sub_1E48C8360(&v36);
        if (*(v23 + 16))
        {
          sub_1E48CD210(v23 + 32, &v29);

          v24 = *(&v30 + 1);
          v25 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
          (*(v25 + 40))(v24, v25);
          v26 = sub_1E49979DC();
          __swift_destroy_boxed_opaque_existential_0Tm(&v29);
          return v26;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        (v10)(v11, v9);
        v39 = v32;
        v40 = v33;
        v41 = v34;
        v42 = v35;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v17 = sub_1E4921408();
        sub_1E48C8360(&v36);
        v18 = *(v17 + 16);
        if (v18)
        {
          v28 = MEMORY[0x1E69E7CC0];
          sub_1E499860C();
          v19 = v17 + 32;
          do
          {
            sub_1E48CD210(v19, &v29);
            v20 = *(&v30 + 1);
            v21 = v31;
            __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
            (*(v21 + 40))(v20, v21);
            sub_1E49979DC();
            __swift_destroy_boxed_opaque_existential_0Tm(&v29);
            sub_1E49985EC();
            v22 = *(v28 + 16);
            sub_1E499861C();
            sub_1E499862C();
            sub_1E49985FC();
            v19 += 40;
            --v18;
          }

          while (v18);

          return v28;
        }

        else
        {

          return MEMORY[0x1E69E7CC0];
        }
      }
    }

    else
    {
      swift_getKeyPath();
      *&v29 = v1;
      sub_1E4996FCC();

      swift_beginAccess();
      v14 = *(v1 + 136) * 0.0174532925;
      return 0xD000000000000023;
    }
  }

  return result;
}

uint64_t sub_1E492B87C()
{
  v1 = v0;
  v2 = sub_1E4996D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v24 - v15;
  v17 = sub_1E4996A4C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v22 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v22, v16, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v16, v13, &qword_1ECF809D0, &qword_1E499D6C0);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E4996A3C();
  }

  else
  {
    (*(v3 + 32))(v7, v13, v2);
    sub_1E48F2DA8(v21);
    (*(v3 + 8))(v7, v2);
  }

  sub_1E48C1338(v16, &qword_1ECF809D0, &qword_1E499D6C0);
  return sub_1E4926E38(v21);
}

uint64_t sub_1E492BBD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v8, v7, &qword_1ECF809D0, &qword_1E499D6C0);
  v9 = sub_1E492EC3C(v7, a1);
  sub_1E48C1338(v7, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v7, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_beginAccess();
    sub_1E48EC048(v7, v1 + v8, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_endAccess();
    sub_1E492B87C();
    sub_1E48C1338(v7, &qword_1ECF809D0, &qword_1E499D6C0);
  }

  return sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E492BDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a2, &v11 - v7, &qword_1ECF809D0, &qword_1E499D6C0);
  v9 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48EC048(v8, a1 + v9, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  sub_1E492B87C();
  return sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
}

BOOL sub_1E492BEE8()
{
  v1 = type metadata accessor for TimeString(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v13 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v6 = *(v0 + 24);
  swift_getKeyPath();
  v13 = v6;
  sub_1E492F470(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);

  sub_1E4996FCC();

  v7 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E49184D8(v6 + v7, v5);

  v8 = *v5;
  v9 = v5[1];

  sub_1E492F914(v5, type metadata accessor for TimeString);
  v10 = sub_1E4997F6C();

  return v10 > 4;
}

uint64_t sub_1E492C0EC@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_1E492C214@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_1E492C344(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1E4996A4C();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1E492C404(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E4926E60(v4);
}

uint64_t sub_1E492C444(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v4 = *(v2 + *a2);
}

uint64_t sub_1E492C4FC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1E492C5B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E4926FBC(v4);
}

uint64_t sub_1E492C5E0()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);
}

uint64_t sub_1E492C68C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);
}

uint64_t sub_1E492C740(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E4927130(v4);
}

uint64_t sub_1E492C76C()
{
  v1 = v0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80380, &qword_1E49A1F98);
  v99 = *(v100 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100, v3);
  v98 = &v87 - v4;
  v93 = sub_1E49969DC();
  v92 = *(v93 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93, v6);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90, v9);
  v88 = &v87 - v10;
  v97 = sub_1E4996ABC();
  v96 = *(v97 - 8);
  v11 = *(v96 + 64);
  v13 = MEMORY[0x1EEE9AC00](v97, v12);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v94 = &v87 - v16;
  v17 = sub_1E4996CBC();
  v18 = *(v17 - 8);
  v115 = v17;
  v116 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v114 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E4996BFC();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v110 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E4996C7C();
  v108 = *(v26 - 8);
  v109 = v26;
  v27 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v105 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E4996CAC();
  v30 = *(v107 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v107, v32);
  v102 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v103 = &v87 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v104 = &v87 - v39;
  v40 = sub_1E4996D8C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E4996A4C();
  v118 = *(v46 - 8);
  v119 = v46;
  v47 = *(v118 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v101 = &v87 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v51);
  v117 = &v87 - v52;
  swift_getKeyPath();
  v123 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v53 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  v120 = v41;
  v121 = v40;
  (*(v41 + 16))(v45, v1 + v53, v40);
  swift_getKeyPath();
  v122 = v1;
  sub_1E4996FCC();

  v54 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);
  swift_getKeyPath();
  v122 = v1;
  v106 = v54;

  sub_1E4996FCC();

  v111 = v1;
  v56 = *(v1 + 17);
  v57 = v102;
  MEMORY[0x1E691A0B0](v55);
  v58 = v105;
  sub_1E4996C4C();
  v59 = v103;
  sub_1E4996C9C();
  (*(v108 + 8))(v58, v109);
  v60 = *(v30 + 8);
  v61 = v57;
  v62 = v101;
  v63 = v107;
  v60(v61, v107);
  v64 = v110;
  sub_1E4996BEC();
  v65 = v104;
  sub_1E4996BCC();
  (*(v112 + 8))(v64, v113);
  v60(v59, v63);
  v66 = v114;
  sub_1E4996BBC();
  v60(v65, v63);
  sub_1E492F470(&qword_1ECF7FA58, MEMORY[0x1E6969350]);
  v67 = v62;
  v68 = v115;
  v113 = v45;
  sub_1E4996D6C();
  (*(v116 + 8))(v66, v68);
  if (v56 == 1)
  {
    v122 = v106;
    sub_1E48C1684();
    sub_1E4996A6C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    *(&v87 - 2) = MEMORY[0x1EEE9AC00](KeyPath, v70);
    swift_getKeyPath();
    sub_1E48F36FC();
    v71 = v88;
    sub_1E4996A8C();

    v72 = v92;
    v73 = v91;
    v74 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x1E6968598], v93);
    v75 = v94;
    v76 = v106;
    v77 = v90;
    sub_1E4996A9C();
    (*(v72 + 8))(v73, v74);
    (*(v89 + 8))(v71, v77);
    v78 = swift_getKeyPath();
    *(&v87 - 2) = MEMORY[0x1EEE9AC00](v78, v79);
    swift_getKeyPath();
    sub_1E48C1684();
    v80 = v98;
    sub_1E4996A8C();

    v122 = v76;
    v81 = v95;
    v82 = v100;
    sub_1E4996A9C();
    (*(v99 + 8))(v80, v82);
    sub_1E4996A2C();

    v83 = *(v96 + 8);
    v84 = v97;
    v83(v81, v97);
    v83(v75, v84);
  }

  (*(v120 + 8))(v113, v121);
  v85 = v117;
  (*(v118 + 32))(v117, v67, v119);
  return sub_1E4927834(v85);
}

uint64_t sub_1E492D294(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, a1);
  v15 = *a2;
  return a6(v13);
}

uint64_t sub_1E492D368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4);
  v10 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v10, v9, v4);
  swift_endAccess();
  sub_1E492C76C();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E492D4C8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v9 = *a1;
  swift_beginAccess();
  return sub_1E48C12D0(v11 + v9, a4, a2, a3);
}

uint64_t sub_1E492D5A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v10 = *a2;
  swift_beginAccess();
  return sub_1E48C12D0(v9 + v10, a5, a3, a4);
}

uint64_t sub_1E492D68C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v19 - v15;
  sub_1E48C12D0(a1, &v19 - v15, a5, a6);
  v17 = *a2;
  return a7(v16);
}

uint64_t sub_1E492D738(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20[-v10];
  v12 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v12, v11, &qword_1ECF80368, &unk_1E49A2840);
  v13 = sub_1E492EF5C(v11, a1);
  sub_1E48C1338(v11, &qword_1ECF80368, &unk_1E49A2840);
  if (v13)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v15);
    *&v20[-16] = v1;
    *&v20[-8] = a1;
    v21 = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v11, &qword_1ECF80368, &unk_1E49A2840);
    swift_beginAccess();
    sub_1E48EC048(v11, v1 + v12, &qword_1ECF80368, &unk_1E49A2840);
    swift_endAccess();
    swift_getKeyPath();
    v21 = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FCC();

    sub_1E48C12D0(v1 + v12, v8, &qword_1ECF80368, &unk_1E49A2840);
    v16 = sub_1E492E9EC(v8);
    v18 = v17;
    sub_1E48C1338(v8, &qword_1ECF80368, &unk_1E49A2840);
    sub_1E4926CD8(v16, v18);
    sub_1E48C1338(v11, &qword_1ECF80368, &unk_1E49A2840);
  }

  return sub_1E48C1338(a1, &qword_1ECF80368, &unk_1E49A2840);
}

uint64_t sub_1E492DA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v18 - v11;
  sub_1E48C12D0(a2, v18 - v11, &qword_1ECF80368, &unk_1E49A2840);
  v13 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  swift_beginAccess();
  sub_1E48EC048(v12, a1 + v13, &qword_1ECF80368, &unk_1E49A2840);
  swift_endAccess();
  swift_getKeyPath();
  v18[1] = a1;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  sub_1E48C12D0(a1 + v13, v9, &qword_1ECF80368, &unk_1E49A2840);
  v14 = sub_1E492E9EC(v9);
  v16 = v15;
  sub_1E48C1338(v9, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E4926CD8(v14, v16);
  return sub_1E48C1338(v12, &qword_1ECF80368, &unk_1E49A2840);
}

uint64_t sub_1E492DC08()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  return *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex);
}

uint64_t sub_1E492DCB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex);
  return result;
}

uint64_t sub_1E492DD60()
{
  v1 = v0;
  v2 = sub_1E49979EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_getKeyPath();
  v32[0] = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  if ((*(v0 + 17) & 1) == 0)
  {
    v15 = sub_1E4997A6C();
    sub_1E4926E60(v15);
    v16 = sub_1E492B27C();
    if (v19 != 3)
    {
      sub_1E48C06B0(v16, v17, v18, v19);
      swift_getKeyPath();
      v32[0] = v0;
      sub_1E4996FCC();

      swift_beginAccess();
      sub_1E48C9E64(v0 + 32, v32);
      ClockFaceLook.primaryUIColor.getter();
      sub_1E48C8360(v32);
      v26 = sub_1E49979DC();
      return sub_1E4926FBC(v26);
    }

    sub_1E48C06B0(v16, v17, v18, 3u);
    if (qword_1ECF7EAD0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v32[0] = v0;
    sub_1E4996FCC();

    v20 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex;
    v21 = *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex);
    swift_beginAccess();
    if ((qword_1ECF818F8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E691BDE0](v21);
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v21 >= *((qword_1ECF818F8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v22 = *(qword_1ECF818F8 + 8 * v21 + 32);
    }

    swift_endAccess();
    v23 = sub_1E49979DC();
    sub_1E4926FBC(v23);
    swift_getKeyPath();
    v32[0] = v1;
    sub_1E4996FCC();

    v21 = *(v1 + v20);
    if (!(qword_1ECF818F8 >> 62))
    {
      v24 = *((qword_1ECF818F8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 - 1;
      if (!__OFSUB__(v24, 1))
      {
LABEL_13:
        if (v21 == v25)
        {
          v21 = 0;
        }

        else
        {
          swift_getKeyPath();
          v32[0] = v1;
          sub_1E4996FCC();

          v27 = *(v1 + v20);
          v21 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_32;
          }
        }

        result = swift_beginAccess();
        if ((qword_1ECF818F8 & 0xC000000000000001) == 0)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v21 < *((qword_1ECF818F8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v28 = *(qword_1ECF818F8 + 8 * v21 + 32);
LABEL_21:
            swift_endAccess();
            v29 = sub_1E49979DC();
            return sub_1E4927130(v29);
          }

          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }

LABEL_29:
        MEMORY[0x1E691BDE0](v21);
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_25:
    v30 = sub_1E49986EC();
    v25 = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = *MEMORY[0x1E69814D8];
  v9 = *(v3 + 104);
  v9(v7, v8, v2);
  v10 = sub_1E4997AAC();
  sub_1E4926FBC(v10);
  v9(v7, v8, v2);
  v11 = sub_1E4997AAC();
  result = sub_1E4926E60(v11);
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    *(&v31 - 2) = v0;
    *(&v31 - 1) = 0;
    v32[0] = v0;
    sub_1E4996FBC();
  }

  return result;
}

CTFontRef sub_1E492E268(double a1)
{
  sub_1E492BEE8();
  v2 = sub_1E4997EAC();

  v3 = CTFontCreateWithNameAndOptions(v2, round(a1 / 2.13), 0, 0x400uLL);

  return v3;
}

void sub_1E492E308()
{
  if (!qword_1ECF80920)
  {
    sub_1E4996D8C();
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF80920);
    }
  }
}

void sub_1E492E360()
{
  if (!qword_1ECF80320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF816A0, &unk_1E49A5C90);
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF80320);
    }
  }
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

uint64_t sub_1E492E3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 112))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E492E430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E492E4A0(uint64_t a1)
{
  result = sub_1E492E4C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E492E4C8()
{
  result = qword_1ECF80328;
  if (!qword_1ECF80328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80328);
  }

  return result;
}

unint64_t sub_1E492E51C(void *a1)
{
  a1[1] = sub_1E492E55C();
  a1[2] = sub_1E492E5B0();
  a1[3] = sub_1E492E604();
  result = sub_1E492E658();
  a1[4] = result;
  return result;
}

unint64_t sub_1E492E55C()
{
  result = qword_1ECF80330;
  if (!qword_1ECF80330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80330);
  }

  return result;
}

unint64_t sub_1E492E5B0()
{
  result = qword_1ECF80338;
  if (!qword_1ECF80338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80338);
  }

  return result;
}

unint64_t sub_1E492E604()
{
  result = qword_1ECF80340;
  if (!qword_1ECF80340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80340);
  }

  return result;
}

unint64_t sub_1E492E658()
{
  result = qword_1ECF80348;
  if (!qword_1ECF80348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80348);
  }

  return result;
}

void (*sub_1E492E6B4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E4925924(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E492E724(uint64_t a1)
{
  result = sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E492E77C(uint64_t a1)
{
  result = sub_1E492F470(&qword_1ECF7F258, type metadata accessor for DigitalClockViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E492E7D8(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;

    return sub_1E492DD60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

unint64_t sub_1E492E944()
{
  result = qword_1ECF80358;
  if (!qword_1ECF80358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80358);
  }

  return result;
}

uint64_t sub_1E492E9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  sub_1E48C12D0(a1, v6, &qword_1ECF80368, &unk_1E49A2840);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E48C1338(v6, &qword_1ECF80368, &unk_1E49A2840);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    [v14 setUnitStyle_];
    v15 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v15 setNumberStyle_];
    [v15 setMaximumFractionDigits_];
    [v14 setNumberFormatter_];
    sub_1E492F270();
    v16 = sub_1E499842C();

    (*(v8 + 8))(v12, v7);
    return v16;
  }
}

uint64_t sub_1E492EC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_1E48C12D0(a1, &v27 - v19, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(a2, &v20[v21], &qword_1ECF809D0, &qword_1E499D6C0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_1E48C12D0(v20, v14, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530]);
      v24 = sub_1E4997E9C();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_1E48C1338(v20, &qword_1ECF809D0, &qword_1E499D6C0);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v20, &qword_1ECF7F898, &qword_1E499D6F0);
    v23 = 1;
    return v23 & 1;
  }

  sub_1E48C1338(v20, &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1E492EF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B0, &qword_1E49A5CA0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_1E48C12D0(a1, &v27 - v19, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C12D0(a2, &v20[v21], &qword_1ECF80368, &unk_1E49A2840);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_1E48C12D0(v20, v14, &qword_1ECF80368, &unk_1E49A2840);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_1E492F2BC();
      v24 = sub_1E4997E9C();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_1E48C1338(v20, &qword_1ECF80368, &unk_1E49A2840);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v20, &qword_1ECF816B0, &qword_1E49A5CA0);
    v23 = 1;
    return v23 & 1;
  }

  sub_1E48C1338(v20, &qword_1ECF80368, &unk_1E49A2840);
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_1E492F270()
{
  result = qword_1ECF80370;
  if (!qword_1ECF80370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF80370);
  }

  return result;
}

unint64_t sub_1E492F2BC()
{
  result = qword_1ECF80378;
  if (!qword_1ECF80378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF816A0, &unk_1E49A5C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80378);
  }

  return result;
}

uint64_t sub_1E492F33C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor) = *(v0 + 24);
}

uint64_t sub_1E492F380()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor) = *(v0 + 24);

  return sub_1E492C76C();
}

uint64_t sub_1E492F3D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor) = *(v0 + 24);
}

uint64_t keypath_set_101Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1E492F470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E492F510()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_1E492F54C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1E492F5A0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E48ECAA8;

  return sub_1E492A8F0();
}

uint64_t sub_1E492F64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E4927AEC(a1, v4, v5, v6);
}

uint64_t sub_1E492F700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E4928448(a1, v4, v5, v6);
}

uint64_t sub_1E492F7B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E49292F8(a1, v4, v5, v6);
}

uint64_t sub_1E492F868()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E48ECAA8;

  return sub_1E492A484();
}

uint64_t sub_1E492F914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E492F974()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 152);
  *(v1 + 144) = v0[3];
  *(v1 + 152) = v2;
}

unint64_t sub_1E492FA1C()
{
  result = qword_1ECF803A8;
  if (!qword_1ECF803A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF803A8);
  }

  return result;
}

unint64_t sub_1E492FA74()
{
  result = qword_1ECF803B0;
  if (!qword_1ECF803B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF803B0);
  }

  return result;
}

unint64_t sub_1E492FACC()
{
  result = qword_1ECF803B8;
  if (!qword_1ECF803B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF803B8);
  }

  return result;
}

uint64_t sub_1E492FBD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E492FC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E492FCB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 16);
}

uint64_t sub_1E492FD5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E491A394(v4);
}

uint64_t sub_1E492FD88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v56 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803D0, &qword_1E49A2498);
  v54 = *(v55 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55, v10);
  v53 = &v50[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803D8, &qword_1E49A24A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803E0, &qword_1E49A24A8);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v50[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v50[-v29];
  *v30 = sub_1E4997CEC();
  *(v30 + 1) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803E8, &qword_1E49A24B0);
  sub_1E4930310(a1, a2 & 1, a3, &v30[*(v32 + 44)], a5);
  *&v59 = a5;
  *(&v59 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B5C();
  v33 = 1.0 / *v57;
  sub_1E4997DAC();
  v35 = v34;
  v37 = v36;
  v38 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F8, &qword_1E49A24C0) + 36)];
  *v38 = v33;
  v38[1] = v33;
  *(v38 + 2) = v35;
  *(v38 + 3) = v37;
  v39 = sub_1E499734C();
  v40 = sub_1E49977CC();
  v41 = &v30[*(v22 + 44)];
  *v41 = v39;
  v41[8] = v40;
  v51 = a2;
  v52 = a1;
  v42 = sub_1E4961F94(a1, a2 & 1);
  swift_getKeyPath();
  *&v59 = v42;
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v43 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  LODWORD(v43) = *(v42 + v43);

  if (v43 == 1)
  {
    *v57 = a5;
    *(&v57[0] + 1) = a3;
    sub_1E4997B7C();
    sub_1E49684E4(v59, *(&v59 + 1), v60, v57);
    sub_1E4961F94(v52, v51 & 1);
    type metadata accessor for SolarViewModel();
    sub_1E4931A7C();
    v44 = v53;
    sub_1E499793C();

    v62 = v57[3];
    v63 = v57[4];
    v64 = v58;
    v59 = v57[0];
    v60 = v57[1];
    v61 = v57[2];
    sub_1E4931AD0(&v59);
    v45 = v54;
    v46 = v55;
    (*(v54 + 32))(v20, v44, v55);
    (*(v45 + 56))(v20, 0, 1, v46);
  }

  else
  {
    (*(v54 + 56))(v20, 1, 1, v55);
  }

  sub_1E48C12D0(v30, v26, &qword_1ECF803E0, &qword_1E49A24A8);
  sub_1E48C12D0(v20, v16, &qword_1ECF803D8, &qword_1E49A24A0);
  v47 = v56;
  sub_1E48C12D0(v26, v56, &qword_1ECF803E0, &qword_1E49A24A8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80400, &qword_1E49A24F0);
  sub_1E48C12D0(v16, v47 + *(v48 + 48), &qword_1ECF803D8, &qword_1E49A24A0);
  sub_1E48C1338(v20, &qword_1ECF803D8, &qword_1E49A24A0);
  sub_1E48C1338(v30, &qword_1ECF803E0, &qword_1E49A24A8);
  sub_1E48C1338(v16, &qword_1ECF803D8, &qword_1E49A24A0);
  return sub_1E48C1338(v26, &qword_1ECF803E0, &qword_1E49A24A8);
}

uint64_t sub_1E4930310@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v72 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80410, &qword_1E49A24F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v58 - v15);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80418, &qword_1E49A2500);
  v69 = *(v70 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70, v18);
  v74 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v58 - v22;
  type metadata accessor for SolarViewModel();
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  v24 = sub_1E49971EC();
  v80 = 0.0333333333;
  v81 = v24;
  LOBYTE(v82) = v25 & 1;
  LODWORD(v68) = a2;
  v26 = a2 & 1;
  v27 = a1;
  sub_1E4961F94(a1, v26);
  sub_1E4931B24();
  v28 = v23;
  sub_1E499793C();

  v80 = a5;
  v81 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B5C();
  if (1.0 / *&v75 == 1.0)
  {
    v29 = 0.0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v67 = 0;
    v63 = 0;
    v73 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
  }

  else
  {
    v67 = sub_1E4997A1C();
    sub_1E49971FC();
    v34 = v90;
    v33 = v90 * 0.5;
    v66 = v93;
    v65 = v94;
    v64 = v95;
    v31 = v91;
    v35 = v92;
    v63 = sub_1E4997CEC();
    v73 = v36;
    v29 = v34;
    v32 = v35 << 32;
    v30 = 256;
  }

  v59 = *&v29;
  v60 = v30;
  *v16 = sub_1E4997CEC();
  v16[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80428, &qword_1E49A2508);
  sub_1E493090C(v27, v68 & 1, a3, v16 + *(v38 + 44));
  v39 = v69;
  v61 = v16;
  v40 = *(v69 + 16);
  v41 = v74;
  v62 = v28;
  v42 = v28;
  v43 = v70;
  v40(v74, v42, v70);
  v44 = v32 | v31;
  v68 = v44;
  v45 = v71;
  sub_1E48C12D0(v16, v71, &qword_1ECF80410, &qword_1E49A24F8);
  v46 = v72;
  v40(v72, v41, v43);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80430, &qword_1E49A2510);
  v48 = &v46[*(v47 + 48)];
  *&v75 = v33;
  *(&v75 + 1) = v29;
  *&v76 = v44;
  v49 = v66;
  *(&v76 + 1) = v66;
  v50 = v65;
  *&v77 = v65;
  v51 = v64;
  *(&v77 + 1) = v64;
  v52 = v67;
  *&v78 = v67;
  *(&v78 + 1) = v30;
  v53 = v63;
  *&v79 = v63;
  *(&v79 + 1) = v73;
  v54 = v76;
  *v48 = v75;
  *(v48 + 1) = v54;
  v55 = v78;
  *(v48 + 2) = v77;
  *(v48 + 3) = v55;
  *(v48 + 4) = v79;
  sub_1E48C12D0(v45, &v46[*(v47 + 64)], &qword_1ECF80410, &qword_1E49A24F8);
  sub_1E48C12D0(&v75, &v80, &qword_1ECF80438, &qword_1E49A2518);
  sub_1E48C1338(v61, &qword_1ECF80410, &qword_1E49A24F8);
  v56 = *(v39 + 8);
  v56(v62, v43);
  sub_1E48C1338(v45, &qword_1ECF80410, &qword_1E49A24F8);
  v80 = v33;
  v81 = v59;
  v82 = v68;
  v83 = v49;
  v84 = v50;
  v85 = v51;
  v86 = v52;
  v87 = v60;
  v88 = v53;
  v89 = v73;
  sub_1E48C1338(&v80, &qword_1ECF80438, &qword_1E49A2518);
  return (v56)(v74, v43);
}

uint64_t sub_1E493090C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v29 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80440, &qword_1E49A2520);
  v6 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28, v7);
  v9 = &v25 - v8;
  v10 = sub_1E49979EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80448, &qword_1E49A2528);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v25 - v19;
  v26 = a1;
  v21 = sub_1E4961F94(a1, a2 & 1);
  swift_getKeyPath();
  v30 = v21;
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  LODWORD(a1) = *(v21 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode);

  if (a1 == 1)
  {
    (*(v11 + 104))(v15, *MEMORY[0x1E69814D8], v10);
    v22 = 1.0;
    v23 = sub_1E4997AAC();
    sub_1E4930C38(v23, 0, 0, 0, v26, a2 & 1, v20);
  }

  else
  {
    sub_1E4930C38(2, 0, 0, 4u, v26, a2 & 1, v20);
    v22 = 0.0;
  }

  *&v20[*(v16 + 36)] = v22;
  sub_1E48C12D0(v20, v9, &qword_1ECF80448, &qword_1E49A2528);
  swift_storeEnumTagMultiPayload();
  sub_1E4931B78();
  sub_1E499772C();
  return sub_1E48C1338(v20, &qword_1ECF80448, &qword_1E49A2528);
}

uint64_t sub_1E4930C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = sub_1E4997EAC();
  v13 = CTFontCreateWithNameAndOptions(v12, 210.0, 0, 0x400uLL);

  type metadata accessor for RollingClockViewModel();
  sub_1E49321A0(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  v14 = sub_1E49971EC();
  LOBYTE(v27[0]) = v15 & 1;
  v16 = v13;
  sub_1E48C0618(a1, a2, a3, a4);
  *&v23 = v14;
  BYTE8(v23) = v27[0];
  *&v24 = sub_1E48C36F4();
  *(&v24 + 1) = a1;
  *&v25 = a2;
  *(&v25 + 1) = a3;
  v26[0] = a4;
  *&v26[8] = v16;
  *&v26[16] = v16;
  *&v26[24] = 640;
  v17 = sub_1E4961F94(a5, a6 & 1);
  swift_getKeyPath();
  *&v27[0] = v17;
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v18 = *(v17 + 16);

  sub_1E48D2BC4();
  sub_1E499793C();

  v27[2] = v25;
  v28[0] = *v26;
  *(v28 + 10) = *&v26[10];
  v27[0] = v23;
  v27[1] = v24;
  sub_1E48C1180(v27);
  sub_1E499726C();
  sub_1E4997D2C();
  v19 = sub_1E499727C();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80460, &qword_1E49A2558);
  *(a7 + *(result + 36)) = v19;
  return result;
}

double sub_1E4930EB0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SolarViewModel();
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  v2 = sub_1E49971EC();
  v4 = v3;
  sub_1E4997B4C();
  result = v6;
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E4930F70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_1E4997CEC();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803C0, &qword_1E49A2488);
  sub_1E492FD88(v3, v4, v6, a1 + *(v8 + 44), v5);
  v9 = sub_1E4997A3C();
  LOBYTE(v3) = sub_1E49977CC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803C8, &qword_1E49A2490);
  v11 = a1 + *(result + 36);
  *v11 = v9;
  v11[8] = v3;
  return result;
}

unint64_t sub_1E4931024(uint64_t a1)
{
  result = sub_1E48CD0C4();
  *(a1 + 8) = result;
  return result;
}

void sub_1E493104C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v50 = a1;
  v9 = sub_1E4996D8C();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80500, &qword_1E49A26A0);
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C0, &qword_1E49A2678);
  v19 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52, v20);
  v57 = &v48 - v21;
  v22 = sub_1E4961F94(a2, a3 & 1);
  swift_getKeyPath();
  v61[0] = v22;
  v51 = sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v23 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E49321E8(v22 + v23, v61);

  if (!v61[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v49 = a4;
  v24 = v63;
  v25 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v26 = (*(v25 + 24))(v24, v25);
  v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.4 green:0.0 blue:0.0 alpha:1.0];
  v28 = CLKUIInterpolateBetweenColors();

  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1E4920094(v61);
  v29 = sub_1E49979DC();
  sub_1E4997CEC();
  sub_1E499722C();
  *&v65[11] = *&v65[35];
  *&v65[19] = v66;
  *&v65[3] = *&v65[27];
  *v58 = v29;
  *&v58[8] = 256;
  *&v58[10] = *v65;
  *&v58[26] = *&v65[8];
  *&v58[42] = *&v65[16];
  *&v58[56] = *(&v66 + 1);
  *&v58[64] = 0x4069000000000000;
  v58[72] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804F0, &qword_1E49A2690);
  sub_1E499720C();
  v30 = swift_allocObject();
  *(v30 + 16) = a5;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C8, &qword_1E49A2680);
  sub_1E493205C();
  sub_1E49321A0(&qword_1ECF7F440, MEMORY[0x1E6969530]);
  v31 = v54;
  sub_1E499799C();

  (*(v53 + 8))(v13, v31);
  v59[2] = *&v58[32];
  v60[0] = *&v58[48];
  *(v60 + 9) = *&v58[57];
  v59[0] = *v58;
  v59[1] = *&v58[16];
  sub_1E4932268(v59);
  sub_1E4961F94(a2, a3 & 1);
  v32 = sub_1E491CA14();
  v34 = v33;

  v35 = v57;
  (*(v55 + 32))(v57, v18, v56);
  v36 = (v35 + *(v52 + 36));
  *v36 = v32;
  *(v36 + 1) = v34;
  v37 = sub_1E4961F94(a2, a3 & 1);
  swift_getKeyPath();
  *v58 = v37;
  sub_1E4996FCC();

  v38 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E49321E8(v37 + v38, v58);

  v39 = *&v58[24];
  if (!*&v58[24])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v40 = *&v58[32];
  __swift_project_boxed_opaque_existential_1(v58, *&v58[24]);
  v41 = (*(v40 + 24))(v39, v40);
  v42 = [objc_opt_self() blackColor];
  v43 = CLKUIInterpolateBetweenColors();

  v44 = v49;
  if (v43)
  {
    sub_1E4920094(v58);
    v45 = sub_1E49979DC();
    v46 = sub_1E49977CC();
    sub_1E48B4E58(v35, v44);
    v47 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804A0, &qword_1E49A2670) + 36);
    *v47 = v45;
    *(v47 + 8) = v46;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1E49316B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1E4996CCC();
  v7 = v6;
  sub_1E4961F94(a3, a4 & 1);
  sub_1E491D148(v7);
}

uint64_t sub_1E4931720()
{
  v1 = sub_1E499776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 16);
  sub_1E499775C();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  (*(v2 + 16))(v6, v10, v1);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E4931E74;
  *(v15 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804A0, &qword_1E49A2670);
  sub_1E49321A0(&qword_1ECF804A8, MEMORY[0x1E697C998]);
  sub_1E4931E8C();
  sub_1E499721C();
  return (*(v2 + 8))(v10, v1);
}

uint64_t sub_1E4931934(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804F0, &qword_1E49A2690);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804F8, &qword_1E49A2698);
  v12 = *(v10 - 8);
  result = v10 - 8;
  if (*(v12 + 64) == v6)
  {
    (*(v5 + 16))(v9, a1, v4);
    a2(v9);
    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E4931A7C()
{
  result = qword_1ECF80408;
  if (!qword_1ECF80408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80408);
  }

  return result;
}

unint64_t sub_1E4931B24()
{
  result = qword_1ECF80420;
  if (!qword_1ECF80420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80420);
  }

  return result;
}

unint64_t sub_1E4931B78()
{
  result = qword_1ECF80450;
  if (!qword_1ECF80450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80448, &qword_1E49A2528);
    sub_1E4931C30();
    sub_1E48C1B44(&qword_1ECF80478, &qword_1ECF80480, &qword_1E49A2568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80450);
  }

  return result;
}

unint64_t sub_1E4931C30()
{
  result = qword_1ECF80458;
  if (!qword_1ECF80458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80460, &qword_1E49A2558);
    type metadata accessor for RollingClockViewModel();
    sub_1E48D2BC4();
    sub_1E49321A0(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E48C1B44(&qword_1ECF80468, &qword_1ECF80470, &qword_1E49A2560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80458);
  }

  return result;
}

unint64_t sub_1E4931D74()
{
  result = qword_1ECF80488;
  if (!qword_1ECF80488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF803C8, &qword_1E49A2490);
    sub_1E48C1B44(&qword_1ECF80490, &qword_1ECF80498, &qword_1E49A2618);
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80488);
  }

  return result;
}

unint64_t sub_1E4931E8C()
{
  result = qword_1ECF804B0;
  if (!qword_1ECF804B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804A0, &qword_1E49A2670);
    sub_1E4931F44();
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804B0);
  }

  return result;
}

unint64_t sub_1E4931F44()
{
  result = qword_1ECF804B8;
  if (!qword_1ECF804B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804C0, &qword_1E49A2678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804C8, &qword_1E49A2680);
    sub_1E4996D8C();
    sub_1E493205C();
    sub_1E49321A0(&qword_1ECF7F440, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804B8);
  }

  return result;
}

unint64_t sub_1E493205C()
{
  result = qword_1ECF804D0;
  if (!qword_1ECF804D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804C8, &qword_1E49A2680);
    sub_1E49320E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804D0);
  }

  return result;
}

unint64_t sub_1E49320E8()
{
  result = qword_1ECF804D8;
  if (!qword_1ECF804D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF800A8, &qword_1E49A0BE0);
    sub_1E48C1B44(&qword_1ECF804E0, &qword_1ECF804E8, &qword_1E49A2688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804D8);
  }

  return result;
}

uint64_t sub_1E49321A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E49321E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801E0, &qword_1E49A5370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4932268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C8, &qword_1E49A2680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E49322D0()
{
  result = qword_1ECF80508;
  if (!qword_1ECF80508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80510, &unk_1E49A26D0);
    sub_1E4931E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80508);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4932368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E49323B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1E4932410(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80528, qword_1E49A27D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v28 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SolarPosition(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, a1, a3, v21);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v25(v10, 0, 1, v17);
    sub_1E4932C80(v10, v23);
    v26 = *&v23[*(v17 + 24)];
    v29 = a2;

    sub_1E4937D20(&v29);
    sub_1E4932CE4(v23);
    return v29;
  }

  else
  {
    v25(v10, 1, 1, v17);
    sub_1E4932C18(v10);
  }

  return a2;
}

id sub_1E493267C(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 40);

      return v3;
    }

    else
    {
      v6 = a2;
      sub_1E4932790(a1, &v12, a2);
      v7 = v13;
      v8 = v14;
      v9 = v16;
      v10 = v17;
      v11 = sub_1E4932D40(v13, v16, v17, v6, v12, v15);

      return v11;
    }
  }

  else
  {
    v5 = [objc_opt_self() blackColor];

    return v5;
  }
}

void sub_1E4932790(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3 - 1;
  if (v3 == 1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = (a1 + 72);
  v9 = *(a1 + 72);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = v7;
  v14 = v11;
  v15 = v9;
  v16 = v6;
  v40 = v13;
  v41 = v12;
  v17 = v12;
  while (1)
  {
    v28 = *(v8 - 5);
    v29 = *(v8 - 4);
    v30 = *(v8 - 3);
    v31 = *(v8 - 2);
    v33 = *(v8 - 1);
    v32 = *v8;
    if (v28 <= a3 && v31 >= a3)
    {
      break;
    }

    if (v4 == 1)
    {
      v18 = v29;
      v19 = v30;
      v20 = v17;
      v21 = v14;
      v22 = v19;
      v23 = v33;
      v24 = v32;
      v25 = v13;
      v13 = v24;

      v26 = v41;
      v27 = v40;

      v17 = v23;
      v10 = v6;
      v14 = v26;
      v15 = v27;
      v16 = v31;
    }

    else
    {
      v31 = v16;
    }

    v8 += 3;
    v28 = v31;
    if (!--v4)
    {
      goto LABEL_13;
    }
  }

  v35 = v29;
  v36 = v30;
  v37 = v33;
  v38 = v32;

  v17 = v35;
  v13 = v36;
  v10 = v31;
  v14 = v37;
  v15 = v38;
LABEL_13:
  *a2 = v28;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
}

uint64_t sub_1E4932958(uint64_t a1, float a2)
{
  sub_1E49985BC();
  MEMORY[0x1E691B7A0](0x727543726F6C6F63, 0xEB00000000286576);
  sub_1E499824C();
  MEMORY[0x1E691B7A0](11557, 0xE200000000000000);
  v4 = sub_1E493267C(a1, a2);
  v5 = [v4 description];
  v6 = sub_1E4997EEC();
  v8 = v7;

  MEMORY[0x1E691B7A0](v6, v8);

  MEMORY[0x1E691B7A0](41, 0xE100000000000000);
  return 0;
}

char *sub_1E4932A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  result = sub_1E4932410(a1, v3[1], a2);
  *a3 = v7;
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_1E4932AB8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1E48F7B30();
  v6 = sub_1E493267C(v3, v2);
  v7 = sub_1E493267C(v5, v4);
  LOBYTE(v5) = sub_1E499848C();

  return v5 & 1;
}

unint64_t sub_1E4932B40(uint64_t a1)
{
  *(a1 + 8) = sub_1E4932B70();
  result = sub_1E4932BC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4932B70()
{
  result = qword_1ECF80518;
  if (!qword_1ECF80518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80518);
  }

  return result;
}

unint64_t sub_1E4932BC4()
{
  result = qword_1ECF80520;
  if (!qword_1ECF80520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80520);
  }

  return result;
}

uint64_t sub_1E4932C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80528, qword_1E49A27D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4932C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarPosition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4932CE4(uint64_t a1)
{
  v2 = type metadata accessor for SolarPosition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E4932D40(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v7 = 1.0 - a5;
  if (a6 > a5)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (a6 > a5)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a6 > a5)
  {
    v7 = -a5;
  }

  v10 = (a4 - a5) / (v7 + a6);
  v11 = v9;
  v12 = v8;
  *&v13 = v10;
  [a3 _solveForInput_];
  v15 = CGFloatMin(v14);
  CGFloatMax(v15);
  result = CLKUIInterpolateBetweenColors();
  if (result)
  {
    v17 = result;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E4932F44()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DigitalClockFaceComplicationsView();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  sub_1E49331F0();
  v1 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel])
  {
    v2 = sub_1E494C9C0(30.0);
    v3 = [objc_opt_self() whiteColor];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v20[4] = sub_1E4934210;
    v20[5] = v4;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1E4923F24;
    v20[3] = &block_descriptor_37;
    v6 = _Block_copy(v20);
    v7 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    [v2 setTextColor_];

    [v0 addSubview_];
    v8 = *&v0[v1];
    *&v0[v1] = v2;
    v9 = v2;

    sub_1E493381C();
  }

  [v0 frame];
  CGRectGetWidth(v22);
  v10 = CGRectMake();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel];
  if (v16)
  {
    [v16 setFrame_];
  }

  v17 = *&v0[v1];
  if (v17)
  {
    [v17 setFrame_];
  }

  v18 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_alarmComplication];
  if (v18)
  {
    v19 = v18;
    [v0 frame];
    [v19 setFrame_];
  }
}

void sub_1E49331F0()
{
  v1 = v0;
  v2 = sub_1E4996D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel])
  {
    v31 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel;
    v8 = sub_1E4933AF0();
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v7);
    v9 = sub_1E4996CEC();
    v10 = objc_opt_self();
    v11 = [v10 textProviderWithDate:v9 units:512];

    v12 = *(v3 + 8);
    v12(v7, v2);
    [v11 setShortUnits_];
    [v11 setTintColor_];
    sub_1E493BA48(v7);
    v13 = sub_1E4996CEC();
    v14 = [v10 textProviderWithDate:v13 units:16];

    v12(v7, v2);
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 whiteColor];
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1E4934210;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4923F24;
    aBlock[3] = &block_descriptor_30;
    v20 = _Block_copy(aBlock);
    v21 = [v19 initWithDynamicProvider_];
    _Block_release(v20);

    [v16 setTintColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E499A180;
    v23 = sub_1E48D9CFC(0, &qword_1ECF80568, 0x1E695B4F0);
    *(inited + 56) = v23;
    v24 = sub_1E4934180();
    *(inited + 32) = v11;
    *(inited + 96) = v23;
    *(inited + 104) = v24;
    *(inited + 64) = v24;
    *(inited + 72) = v16;
    v25 = v16;
    v26 = v11;
    v27 = sub_1E4933610(inited);
    swift_setDeallocating();
    v28 = *(inited + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80578, &qword_1E49A2850);
    swift_arrayDestroy();
    v29 = sub_1E494C9C0(30.0);
    [v29 setUsesTextProviderTintColoring_];
    [v29 setTextProvider_];
    [v29 setTintColor_];
    [v1 addSubview_];

    v30 = *&v1[v31];
    *&v1[v31] = v29;
  }
}

uint64_t sub_1E4933610(uint64_t a1)
{
  sub_1E49986BC();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    v24 = sub_1E49986AC();
    v25 = sub_1E4997EAC();
    v26 = [objc_opt_self() textProviderWithFormat:v25 arguments:v24];

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1E49989AC();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1E499869C();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_1E493381C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  sub_1E4934110(v1 + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_currentTemperature, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E48C1338(v6, &qword_1ECF80368, &unk_1E49A2840);
    result = *(v1 + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel);
    if (result)
    {
      return [result setTextProvider_];
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    [v14 setUnitStyle_];
    v15 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v15 setNumberStyle_];
    [v15 setMaximumFractionDigits_];
    [v14 setNumberFormatter_];
    sub_1E48D9CFC(0, &qword_1ECF80370, 0x1E696B080);
    sub_1E499842C();
    v16 = sub_1E4997EAC();

    v17 = [objc_opt_self() textProviderWithText_];

    v18 = *(v1 + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel);
    if (v18)
    {
      [v18 setTextProvider_];
      v19 = v15;
    }

    else
    {
      v19 = v14;
      v14 = v15;
    }

    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_1E4933AF0()
{
  v1 = [v0 _shouldReverseLayoutDirection];
  v2 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors;
  if (!v1)
  {
LABEL_24:
    v2 = *&v0[v2];
    if (v2 >> 62)
    {
      if (sub_1E49986EC())
      {
        goto LABEL_26;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      if ((v2 & 0xC000000000000001) != 0)
      {

        v20 = MEMORY[0x1E691BDE0](0, v2);

        return v20;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v2 + 32);
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_37;
    }

    v15 = [objc_opt_self() whiteColor];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v24[4] = sub_1E492429C;
    v24[5] = v16;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    v24[2] = sub_1E4923F24;
    v24[3] = &block_descriptor_6;
    v18 = _Block_copy(v24);
    v19 = [v17 initWithDynamicProvider_];
    _Block_release(v18);

    return v19;
  }

  v3 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > 2)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (v3 < 0)
  {
    v14 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors];
  }

  if (sub_1E49986EC() <= 2)
  {
LABEL_23:
    v2 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors;
    goto LABEL_24;
  }

LABEL_4:
  v4 = *&v0[v2];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

LABEL_37:
  v5 = sub_1E49986EC();
LABEL_6:
  v6 = round(0.75 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = *&v0[v2];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_11;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_41:
  v21 = sub_1E49986EC();
  v9 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
    goto LABEL_43;
  }

LABEL_11:
  v10 = *&v0[v2];
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_44:
  v22 = v9;
  result = sub_1E49986EC();
  v9 = v22;
  v10 = *&v0[v2];
LABEL_13:
  if ((result & ~(result >> 63)) >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = result & ~(result >> 63);
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v23 = v10;

    v19 = MEMORY[0x1E691BDE0](v12, v23);

    return v19;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v13 = *(v10 + 8 * v12 + 32);
LABEL_29:

  return v13;
}

id sub_1E4933E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalClockFaceComplicationsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DigitalClockFaceComplicationsView()
{
  result = qword_1ECF80548;
  if (!qword_1ECF80548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4933F94()
{
  sub_1E49340A4(319, &qword_1ECF80320, &unk_1ECF816A0, &unk_1E49A5C90);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E49340A4(319, &qword_1ECF80558, &qword_1ECF80560, &qword_1E49A2820);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E49340A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E49984BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4934110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4934180()
{
  result = qword_1ECF80570;
  if (!qword_1ECF80570)
  {
    sub_1E48D9CFC(255, &qword_1ECF80568, 0x1E695B4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80570);
  }

  return result;
}

uint64_t sub_1E4934214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E48C8304(a1, v7);
  if (v8 || (, sub_1E48B7448(v7, v9), sub_1E48C8304(a2, v7), v8))
  {
    sub_1E48C8360(v7);
    result = sub_1E49986DC();
    __break(1u);
  }

  else
  {

    sub_1E48B7448(v7, v6);
    sub_1E48B7448(v9, a3);
    result = sub_1E48B7448(v6, a3 + 40);
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 2;
  }

  return result;
}

uint64_t sub_1E4934308@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1E4906E78(0, v3, 0);
    v4 = v18;
    v6 = (v5 + 48);
    v12 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v7 = v6[-1];
      v8 = v6->i64[0];
      v18 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v14 = v7;
        sub_1E4906E78((v9 > 1), v10 + 1, 1);
        v7 = v14;
        v4 = v18;
      }

      v13 = vdivq_f64(vcvtq_f64_s64(v7), v12);
      v16 = &type metadata for SolidClockFaceColor;
      v17 = sub_1E48D5004();
      v11 = swift_allocObject();
      *&v15 = v11;
      *(v11 + 16) = v13;
      *(v11 + 32) = v8 / 255.0;
      *(v11 + 40) = 0x3FF0000000000000;
      *(v4 + 16) = v10 + 1;
      result = sub_1E48B7448(&v15, v4 + 40 * v10 + 32);
      v6 = (v6 + 24);
      --v3;
    }

    while (v3);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v4;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_1E4934478@<X0>(uint64_t a1@<X8>)
{
  *(&v14 + 1) = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  *&v15 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E49A2860;
  *(v3 + 32) = xmmword_1E49A2870;
  v18 = 0;
  *(&v15 + 1) = 0;
  *&v16 = 0;
  *&v13 = v3;
  v9 = &type metadata for SolidClockFaceColor;
  v10 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E49A2880;
  *(v4 + 32) = xmmword_1E49A2890;
  v12 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v8[0] = v4;
  sub_1E4934214(&v13, v8, v19);
  sub_1E48C8360(v8);
  sub_1E48C8360(&v13);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  sub_1E4920CEC(&v13, v8);
  if (v9 == 1)
  {
    sub_1E4920DCC(&v13);
    v5 = 0xE800000000000000;
    v6 = 0x6D75727463657073;
  }

  else if (v9)
  {
    sub_1E4920DCC(&v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v5 = 0xE600000000000000;
    v6 = 0x73726F6C6F63;
  }

  else
  {
    sub_1E4920DCC(&v13);
    v5 = 0xE300000000000000;
    v6 = 7957363;
  }

  sub_1E493696C(v6, v5, a1);

  return sub_1E48C8360(v19);
}

uint64_t sub_1E4934608@<X0>(uint64_t a1@<X8>)
{
  v14 = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  *&v15 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E49A28A0;
  *(v3 + 32) = xmmword_1E499C3B0;
  v18 = 0;
  *(&v15 + 1) = 0;
  *&v16 = 0;
  v13[0] = v3;
  v9 = &type metadata for SolidClockFaceColor;
  v10 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E49A28B0;
  *(v4 + 32) = xmmword_1E49A28C0;
  v12 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v8[0] = v4;
  sub_1E4934214(v13, v8, v19);
  sub_1E48C8360(v8);
  sub_1E48C8360(v13);
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sub_1E4920CEC(v13, v8);
  if (v9 == 1)
  {
    sub_1E4920DCC(v13);
    v5 = 0xE800000000000000;
    v6 = 0x6D75727463657073;
  }

  else if (v9)
  {
    sub_1E4920DCC(v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v5 = 0xE600000000000000;
    v6 = 0x73726F6C6F63;
  }

  else
  {
    sub_1E4920DCC(v13);
    v5 = 0xE300000000000000;
    v6 = 7957363;
  }

  sub_1E493696C(v6, v5, a1);

  return sub_1E48C8360(v19);
}

uint64_t sub_1E49347A0@<X0>(uint64_t a1@<X8>)
{
  v8[3] = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  v8[4] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E49A28D0;
  *(v3 + 32) = xmmword_1E49A28E0;
  v9 = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[0] = v3;
  v6[3] = &type metadata for SolidClockFaceColor;
  v6[4] = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v4 + 32) = xmmword_1E49A28F0;
  v7 = 0;
  v6[5] = 0;
  v6[6] = 0;
  v6[0] = v4;
  sub_1E4934214(v8, v6, v10);
  sub_1E48C8360(v6);
  sub_1E48C8360(v8);
  sub_1E493696C(0x614D646574746F64, 0xED00006C6C694670, a1);
  return sub_1E48C8360(v10);
}

uint64_t sub_1E49348B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1E4906E58(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_1E48CD210(v4, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v7 = (*(v6 + 32))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      v20 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1E4906E58((v10 > 1), v11 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v17[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E49375A8();
  v13 = sub_1E4997E8C();
  v15 = v14;

  v17[0] = 91;
  v17[1] = 0xE100000000000000;
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return v17[0];
}

__n128 DynamicClockFaceColor.base.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DynamicClockFaceColor.variation.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t DynamicClockFaceColor.stringValue.getter()
{
  sub_1E49985BC();

  v6 = *v0;
  v7 = v0[1];
  v1 = SolidClockFaceColor.stringValue.getter();
  v4 = v0[3];
  v5 = v0[2];
  MEMORY[0x1E691B7A0](v1);

  MEMORY[0x1E691B7A0](0x6974616972617620, 0xEC000000203A6E6FLL);
  v2 = SolidClockFaceColor.stringValue.getter();
  MEMORY[0x1E691B7A0](v2);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t SolidClockFaceColor.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E63B0];
  *(v5 + 16) = xmmword_1E499B670;
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v1;
  v8 = sub_1E4997EFC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499B670;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v2;
  v12 = sub_1E4997EFC();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E499B670;
  *(v15 + 56) = v6;
  *(v15 + 64) = v7;
  *(v15 + 32) = v4;
  v16 = sub_1E4997EFC();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E499B670;
  *(v19 + 56) = v6;
  *(v19 + 64) = v7;
  *(v19 + 32) = v3;
  v20 = sub_1E4997EFC();
  v22 = v21;
  sub_1E49985BC();

  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v12, v14);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v16, v18);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v20, v22);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return 0xD000000000000015;
}

id DynamicClockFaceColor.primaryUIColor.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*v0 green:v0[1] blue:v0[2] alpha:v0[3]];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1E492429C;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E4923F24;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

uint64_t DynamicClockFaceColor.primaryColor.getter()
{
  v1 = sub_1E49979EC();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  (*(v10 + 104))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v4);
  return sub_1E4997AAC();
}

id DynamicClockFaceColor.secondaryUIColor.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v0[4] green:v0[5] blue:v0[6] alpha:v0[7]];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1E4934210;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E4923F24;
  v7[3] = &block_descriptor_14_0;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

uint64_t DynamicClockFaceColor.secondaryColor.getter()
{
  v1 = sub_1E49979EC();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  (*(v10 + 104))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v4);
  return sub_1E4997AAC();
}

uint64_t sub_1E4935224()
{
  if (*v0)
  {
    result = 0x6F69746169726176;
  }

  else
  {
    result = 1702060386;
  }

  *v0;
  return result;
}

uint64_t sub_1E493525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E499884C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4935340(uint64_t a1)
{
  v2 = sub_1E4936C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E493537C(uint64_t a1)
{
  v2 = sub_1E4936C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicClockFaceColor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80588, &qword_1E49A2908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = v3[2];
  v15 = v3[3];
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936C74();
  sub_1E49989CC();
  v13 = v3[1];
  v18 = *v3;
  v19 = v13;
  v17 = 0;
  sub_1E4936CC8();
  sub_1E49987DC();
  if (!v2)
  {
    v18 = v16;
    v19 = v15;
    v17 = 1;
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t DynamicClockFaceColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E691C170](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1E691C170](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1E691C170](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1E691C170](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E691C170](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E691C170](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E691C170](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  return MEMORY[0x1E691C170](*&v15);
}

uint64_t DynamicClockFaceColor.hashValue.getter()
{
  sub_1E499892C();
  DynamicClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t DynamicClockFaceColor.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80598, &qword_1E49A2910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936C74();
  sub_1E49989BC();
  if (!v2)
  {
    v19 = 0;
    sub_1E4924310();
    sub_1E499878C();
    v15 = v17;
    v16 = v18;
    v19 = 1;
    sub_1E499878C();
    (*(v6 + 8))(v10, v5);
    v12 = v16;
    *a2 = v15;
    a2[1] = v12;
    v13 = v18;
    a2[2] = v17;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t _s11ClockPoster05SolidA9FaceColorV07primaryE07SwiftUI0E0Vvg_0()
{
  v1 = sub_1E49979EC();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  (*(v10 + 104))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v4);
  return sub_1E4997AAC();
}

uint64_t sub_1E493595C()
{
  v1 = sub_1E49979EC();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  (*(v10 + 104))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v4);
  return sub_1E4997AAC();
}

uint64_t sub_1E4935A44()
{
  sub_1E499892C();
  DynamicClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E4935A88()
{
  sub_1E499892C();
  DynamicClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

ClockPoster::SolidClockFaceColor __swiftcall SolidClockFaceColor.init(_:)(UIColor a1)
{
  v3 = v1;
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  v12[0] = 0;
  v9 = 0.0;
  v10 = 0.0;
  [(objc_class *)a1.super.isa getRed:v12 green:&v11 blue:&v10 alpha:&v9];

  v5 = v11;
  v4 = *v12;
  v7 = v9;
  v6 = v10;
  *v3 = v12[0];
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  v8 = *MEMORY[0x1E69E9840];
  result.alpha = v7;
  result.blue = v6;
  result.green = v5;
  result.red = v4;
  return result;
}

ClockPoster::SolidClockFaceColor __swiftcall SolidClockFaceColor.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

id sub_1E4935BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*v3 green:v3[1] blue:v3[2] alpha:v3[3]];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v12[4] = a2;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E4923F24;
  v12[3] = a3;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithDynamicProvider_];
  _Block_release(v9);

  return v10;
}

uint64_t sub_1E4935D04()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E4935D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E49373CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4935D8C(uint64_t a1)
{
  v2 = sub_1E4936D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4935DC8(uint64_t a1)
{
  v2 = sub_1E4936D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SolidClockFaceColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF805A0, &qword_1E49A2918);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16[-v8];
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936D1C();
  sub_1E49989CC();
  v16[15] = 0;
  sub_1E49987BC();
  if (!v2)
  {
    v16[14] = 1;
    sub_1E49987BC();
    v16[13] = 2;
    sub_1E49987BC();
    v16[12] = 3;
    sub_1E49987BC();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t SolidClockFaceColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E691C170](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E691C170](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E691C170](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1E691C170](*&v7);
}

uint64_t SolidClockFaceColor.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1E499892C();
  SolidClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t SolidClockFaceColor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF805B0, &qword_1E49A2920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936D1C();
  sub_1E49989BC();
  if (!v2)
  {
    v25 = 0;
    sub_1E499876C();
    v13 = v12;
    v24 = 1;
    sub_1E499876C();
    v15 = v14;
    v23 = 2;
    sub_1E499876C();
    v18 = v17;
    v22 = 3;
    sub_1E499876C();
    v20 = v19;
    (*(v6 + 8))(v10, v5);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1E49362A4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1E499892C();
  SolidClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E49362F4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1E499892C();
  SolidClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t UIColor.cpStringValue.getter()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26[0] = 0;
  v23 = 0;
  v24 = 0;
  [v0 getRed:v26 green:&v25 blue:&v24 alpha:&v23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E499B670;
  v2 = v26[0];
  v3 = MEMORY[0x1E69E7DE0];
  *(v1 + 56) = MEMORY[0x1E69E7DE0];
  v4 = sub_1E4936D70();
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = sub_1E4997EFC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E499B670;
  v7 = v25;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 32) = v7;
  v8 = sub_1E4997EFC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499B670;
  v12 = v24;
  *(v11 + 56) = v3;
  *(v11 + 64) = v4;
  *(v11 + 32) = v12;
  v13 = sub_1E4997EFC();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E499B670;
  v17 = v23;
  *(v16 + 56) = v3;
  *(v16 + 64) = v4;
  *(v16 + 32) = v17;
  v18 = sub_1E4997EFC();
  v20 = v19;
  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v18, v20);

  result = v5;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void *static UIColor.cpColor(from:)(uint64_t a1, uint64_t a2)
{
  sub_1E48D2EE4();
  v4 = sub_1E49984DC();
  if (v4[2] != 4)
  {

    sub_1E49985BC();
    MEMORY[0x1E691B7A0](0xD00000000000001CLL, 0x80000001E49A7FB0);
    MEMORY[0x1E691B7A0](a1, a2);
    v9 = "Cannot convert stringValue '";
    v10 = 0xD00000000000002ELL;
    goto LABEL_6;
  }

  v5 = v4[4];
  v6 = v4[5];
  v7 = v4;

  v8 = sub_1E4936B28(v5, v6);

  if (!v8)
  {
    goto LABEL_3;
  }

  result = v7;
  if (0.0 > 1.0)
  {
    goto LABEL_3;
  }

  if (v7[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = v7[6];
  v14 = v7[7];

  v15 = sub_1E4936B28(v13, v14);

  if (!v15)
  {
    goto LABEL_3;
  }

  result = v7;
  if (0.0 > 1.0)
  {
    goto LABEL_3;
  }

  if (v7[2] < 3uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v7[8];
  v17 = v7[9];

  v18 = sub_1E4936B28(v16, v17);

  if (!v18 || (result = v7, 0.0 > 1.0))
  {
LABEL_3:

LABEL_4:
    sub_1E49985BC();
    MEMORY[0x1E691B7A0](0xD00000000000001CLL, 0x80000001E49A7FB0);
    MEMORY[0x1E691B7A0](a1, a2);
    v9 = "cuse components count is wrong";
    v10 = 0xD00000000000001BLL;
LABEL_6:
    MEMORY[0x1E691B7A0](v10, v9 | 0x8000000000000000);
    sub_1E4936DC4();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  if (v7[2] >= 4uLL)
  {
    v19 = v7[10];
    v20 = result[11];

    v21 = sub_1E4936B28(v19, v20);

    if (v21 && 0.0 <= 1.0)
    {
      return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:{0.0, 44, 0xE100000000000000}];
    }

    goto LABEL_4;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E493696C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E48C8304(v3, &v20);
  if (v22 > 1u)
  {
    if (v22 != 2)
    {
      sub_1E48C8304(v3, a3);
      return sub_1E48C8360(&v20);
    }

    sub_1E48B7448(&v20, v17);
    sub_1E48B7448(&v21, v19);
    sub_1E48B7448(v17, a3);
    sub_1E48B7448(v19, a3 + 40);
    *(a3 + 80) = a1;
    *(a3 + 88) = a2;
    v10 = 2;
LABEL_8:
    *(a3 + 96) = v10;
  }

  if (v22)
  {
    v11 = v20;

    *a3 = v11;
    *(a3 + 8) = a1;
    *(a3 + 16) = a2;
    v10 = 1;
    goto LABEL_8;
  }

  sub_1E48B7448(&v20, v19);
  sub_1E48CD210(v19, a3);
  memset(v17, 0, sizeof(v17));
  v18 = 3;
  v7 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(v17);
  if (v7)
  {
    v8 = 0xEE00656C62617A69;
    v9 = 0x6D6F747375636E75;
  }

  else
  {
    v13 = sub_1E4921538();
    if (v14)
    {
      v9 = v13;
      v8 = v14;
    }

    else
    {
      v15 = sub_1E4921408();
      v9 = sub_1E49348B8(v15);
      v8 = v16;
    }
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
  *(a3 + 40) = v9;
  *(a3 + 48) = v8;
  *(a3 + 96) = 0;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1E4936B28(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1E499859C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t _s11ClockPoster07DynamicA9FaceColorV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E4936C74()
{
  result = qword_1ECF80590;
  if (!qword_1ECF80590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80590);
  }

  return result;
}

unint64_t sub_1E4936CC8()
{
  result = qword_1EE2BB4D8;
  if (!qword_1EE2BB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4D8);
  }

  return result;
}

unint64_t sub_1E4936D1C()
{
  result = qword_1ECF805A8;
  if (!qword_1ECF805A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805A8);
  }

  return result;
}

unint64_t sub_1E4936D70()
{
  result = qword_1ECF805B8;
  if (!qword_1ECF805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805B8);
  }

  return result;
}

unint64_t sub_1E4936DC4()
{
  result = qword_1ECF805C0;
  if (!qword_1ECF805C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805C0);
  }

  return result;
}

unint64_t sub_1E4936E58()
{
  result = qword_1EE2BB4B0;
  if (!qword_1EE2BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4B0);
  }

  return result;
}

unint64_t sub_1E4936EAC()
{
  result = qword_1EE2BB4A8;
  if (!qword_1EE2BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4A8);
  }

  return result;
}

unint64_t sub_1E4936F04()
{
  result = qword_1EE2BB4A0;
  if (!qword_1EE2BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4A0);
  }

  return result;
}

uint64_t sub_1E4936F98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4936FEC()
{
  result = qword_1EE2BB4D0;
  if (!qword_1EE2BB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4D0);
  }

  return result;
}

unint64_t sub_1E4937044()
{
  result = qword_1EE2BB4C8;
  if (!qword_1EE2BB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4C8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4937110(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4937130(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1E49371C0()
{
  result = qword_1ECF805C8;
  if (!qword_1ECF805C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805C8);
  }

  return result;
}

unint64_t sub_1E4937218()
{
  result = qword_1ECF805D0;
  if (!qword_1ECF805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805D0);
  }

  return result;
}

unint64_t sub_1E4937270()
{
  result = qword_1ECF805D8;
  if (!qword_1ECF805D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805D8);
  }

  return result;
}

unint64_t sub_1E49372C8()
{
  result = qword_1ECF805E0;
  if (!qword_1ECF805E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805E0);
  }

  return result;
}

unint64_t sub_1E4937320()
{
  result = qword_1ECF805E8;
  if (!qword_1ECF805E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805E8);
  }

  return result;
}

unint64_t sub_1E4937378()
{
  result = qword_1ECF805F0[0];
  if (!qword_1ECF805F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF805F0);
  }

  return result;
}

uint64_t sub_1E49373CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E499884C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1E499884C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1E499884C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E499884C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

_BYTE *sub_1E4937528@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1E49375A8()
{
  result = qword_1ECF7F278;
  if (!qword_1ECF7F278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F270, &qword_1E499B8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F278);
  }

  return result;
}

double sub_1E4937638()
{
  v12[5] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v13 = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.48627451 blue:0.643137255 alpha:1.0];
  v15 = 1;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.48627451 blue:0.643137255 alpha:1.0];
  v17 = 2;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v19 = 3;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v21 = 4;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v23 = 5;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.509803922 blue:0.788235294 alpha:1.0];
  v25 = 6;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.509803922 blue:0.788235294 alpha:1.0];
  v27 = 7;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v29 = 8;
  v12[0] = MEMORY[0x1E69E7CC0];
  sub_1E4906E98(0, 9, 0);
  v0 = v12[0];
  v1 = objc_opt_self();
  v2 = 0;
  v3 = *MEMORY[0x1E6979EB8];
  do
  {
    v4 = qword_1E49A2FC8[SLOBYTE(v12[v2 + 6])];
    v5 = v12[v2 + 5];
    v6 = [v1 functionWithName_];
    v12[0] = v0;
    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v10 = v6;
      sub_1E4906E98((v7 > 1), v8 + 1, 1);
      v6 = v10;
      v0 = v12[0];
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[24 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
    *(v9 + 6) = v6;
    v2 += 2;
  }

  while (v2 != 18);
  swift_arrayDestroy();
  v12[0] = v0;

  sub_1E4937D20(v12);

  return 0.0;
}

double sub_1E493799C()
{
  v12[5] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v13 = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v15 = 1;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.674509804 blue:0.4 alpha:1.0];
  v17 = 2;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.552941176 green:0.658823529 blue:0.22745098 alpha:1.0];
  v19 = 3;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.588235294 green:0.529411765 blue:0.352941176 alpha:1.0];
  v21 = 4;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.619607843 green:0.4 blue:0.478431373 alpha:1.0];
  v23 = 5;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.898039216 green:0.588235294 blue:0.149019608 alpha:1.0];
  v25 = 6;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.360784314 blue:0.184313725 alpha:1.0];
  v27 = 7;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v29 = 8;
  v12[0] = MEMORY[0x1E69E7CC0];
  sub_1E4906E98(0, 9, 0);
  v0 = v12[0];
  v1 = objc_opt_self();
  v2 = 0;
  v3 = *MEMORY[0x1E6979EB8];
  do
  {
    v4 = qword_1E49A2FC8[SLOBYTE(v12[v2 + 6])];
    v5 = v12[v2 + 5];
    v6 = [v1 functionWithName_];
    v12[0] = v0;
    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v10 = v6;
      sub_1E4906E98((v7 > 1), v8 + 1, 1);
      v6 = v10;
      v0 = v12[0];
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[24 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
    *(v9 + 6) = v6;
    v2 += 2;
  }

  while (v2 != 18);
  swift_arrayDestroy();
  v12[0] = v0;

  sub_1E4937D20(v12);

  return 0.0;
}

uint64_t sub_1E4937D20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E4952DAC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E49987EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E49980EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E4937E78(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E4937E78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E48E9FB4(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1E4938440((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *(v23 - 24);
            v22[2] = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E48EA0AC(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1E48EA0AC((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1E4938440((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1E4938440(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1E4938688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E49386D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E493872C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1E49984BC();
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

uint64_t sub_1E49387E4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_1E49984BC();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  v5 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1E49388A0()
{
  sub_1E49387E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E4938964@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v77) = a4;
  v75 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF806F8, &qword_1E49A30D8);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v80 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80700, &qword_1E49A30E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v83 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v79 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v73 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v76 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v73 - v33;
  v35 = *(a2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v35 + 4);
  swift_endAccess();
  swift_beginAccess();
  v36 = *(a2 + 24);
  if (*(v36 + 16) && (v37 = sub_1E4948474(a1), (v38 & 1) != 0))
  {
    v39 = *(*(v36 + 56) + 8 * v37);
    swift_retain_n();
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF80708, &unk_1E49A30E8);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v39 = swift_allocObject();
    v43 = *(*v39 + 96);
    v44 = sub_1E4996D8C();
    (*(*(v44 - 8) + 56))(v39 + v43, 1, 1, v44);
    v45 = *(*v39 + 104);
    type metadata accessor for CPUnfairLock();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v39 + v45) = v46;
    *(v39 + *(*v39 + 112)) = MEMORY[0x1E69E7CC8];
    *(v39 + *(*v39 + 120)) = 0;
    swift_beginAccess();
    swift_retain_n();
    v47 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    sub_1E4986964(v39, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v85;
    swift_endAccess();
  }

  v49 = *(*v39 + 104);
  v50 = *(v39 + v49);
  swift_beginAccess();
  os_unfair_lock_lock(v50 + 4);
  swift_endAccess();
  v51 = *(*v39 + 120);
  v52 = *(v39 + v51);
  if ((v52 & 1) == 0)
  {
    *(v39 + v51) = 1;
  }

  v53 = *(v39 + v49);
  swift_beginAccess();
  os_unfair_lock_unlock(v53 + 4);
  swift_endAccess();
  v54 = sub_1E4996D8C();
  v55 = *(*(v54 - 8) + 56);
  v84 = v54;
  v55(v34, 1, 1);
  if ((v52 & 1) == 0)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v35 + 4);
    swift_endAccess();
    v56 = sub_1E499816C();
    (*(*(v56 - 8) + 56))(v26, 1, 1, v56);
    sub_1E499814C();

    v57 = sub_1E499813C();
    v58 = swift_allocObject();
    v59 = MEMORY[0x1E69E85E0];
    *(v58 + 16) = v57;
    *(v58 + 24) = v59;
    *(v58 + 32) = a3;
    *(v58 + 40) = v77;
    sub_1E498DD1C(0, 0, v26, &unk_1E49A30F8, v58);

    v60 = v76;
    sub_1E493BA48(v76);
    swift_beginAccess();
    os_unfair_lock_lock(v35 + 4);
    swift_endAccess();
    (v55)(v60, 0, 1, v84);
    sub_1E49393E8(v60, v34);
  }

  v74 = v35;
  v76 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB80, &unk_1E49A2260);
  v62 = *(v61 - 8);
  v77 = *(v62 + 56);
  v63 = v78;
  v77(v78, 1, 1, v61);
  v64 = *(v39 + v49);
  swift_beginAccess();
  os_unfair_lock_lock(v64 + 4);
  v65 = swift_endAccess();
  v67 = MEMORY[0x1EEE9AC00](v65, v66);
  *(&v73 - 2) = v39;
  *(&v73 - 1) = v34;
  v73 = v34;
  (*(v81 + 104))(v80, *MEMORY[0x1E69E8650], v82, v67);
  v68 = v79;
  sub_1E49981BC();
  sub_1E48C1338(v63, &qword_1ECF80700, &qword_1E49A30E0);
  v77(v68, 0, 1, v61);
  sub_1E4939244(v68, v63);
  v69 = *(v39 + v49);
  swift_beginAccess();
  os_unfair_lock_unlock(v69 + 4);
  swift_endAccess();
  v70 = v83;
  sub_1E49392B4(v63, v83);
  result = (*(v62 + 48))(v70, 1, v61);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1E48C1338(v63, &qword_1ECF80700, &qword_1E49A30E0);
    (*(v62 + 32))(v75, v70, v61);
    sub_1E48C1338(v73, &qword_1ECF809D0, &qword_1E499D6C0);
    v72 = v74;
    swift_beginAccess();
    os_unfair_lock_unlock(v72 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E49391BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1E49391E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E4939244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80700, &qword_1E49A30E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E49392B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80700, &qword_1E49A30E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4939324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E493CFF8(a1, v4, v5, v6, v7);
}

uint64_t sub_1E49393E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4939498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = aBlock - v13;
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  v16 = type metadata accessor for TimeString(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  v18 = sub_1E499839C();
  v19 = swift_allocObject();
  v19[2] = v14;
  v19[3] = a1;
  v19[4] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E49456A0;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4945B54;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_130;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E48C12D0(v14, v11, &qword_1ECF815D0, &unk_1E499A370);
  result = (*(v17 + 48))(v11, 1, v16);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1E4945410(v11, a3, type metadata accessor for TimeString);
  sub_1E48C1338(v14, &qword_1ECF815D0, &unk_1E499A370);
}

uint64_t sub_1E49397B0(void (*a1)(void *__return_ptr), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1(aBlock);
    v4 = aBlock[0];
    return v4 & 1;
  }

  v11 = 256;
  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  v5 = sub_1E499839C();
  v6 = swift_allocObject();
  v6[2] = &v11;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E49453B4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1E48C36A4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_8;
  v8 = _Block_copy(aBlock);

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if ((v11 & 0x100) == 0)
  {
    v4 = v11;

    return v4 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E493997C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v12 - v8;
  a2(v7);
  v10 = type metadata accessor for TimeString(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1E48EC0CC(v9, a1, &qword_1ECF815D0, &unk_1E499A370);
}

uint64_t sub_1E4939A6C(char a1)
{
  sub_1E499892C();
  MEMORY[0x1E691C170](qword_1E49A3A98[a1]);
  return sub_1E499896C();
}

void sub_1E4939AC0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F0, &qword_1E49A3998);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v50 = (&v48 - v6);
  v7 = type metadata accessor for TextClockDescriptor(0);
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A30, &qword_1E49A39D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A08, &qword_1E49A39C0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v48 - v22;
  v24 = *v1;
  v25 = v1[1];
  v27 = v1[2];
  v26 = v1[3];
  v28 = v1[4];
  v54 = a1;
  v55 = v27;
  v49 = v23;
  if (!v28)
  {
    v30 = (v27 + 64) >> 6;
    if (v30 <= v26 + 1)
    {
      v31 = v26 + 1;
    }

    else
    {
      v31 = (v27 + 64) >> 6;
    }

    v32 = v31 - 1;
    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v29 >= v30)
      {
        (*(v18 + 56))(v16, 1, 1, v17, v21);
        v33 = 0;
        goto LABEL_11;
      }

      v28 = *(v25 + 8 * v29);
      ++v26;
      if (v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v26;
LABEL_10:
  v33 = (v28 - 1) & v28;
  v34 = __clz(__rbit64(v28)) | (v29 << 6);
  sub_1E4945478(*(v24 + 48) + *(v51 + 72) * v34, v11, type metadata accessor for TextClockDescriptor);
  v35 = *(*(v24 + 56) + 8 * v34);
  v36 = v11;
  v37 = *(v17 + 48);
  sub_1E4945410(v36, v16, type metadata accessor for TextClockDescriptor);
  *&v16[v37] = v35;
  (*(v18 + 56))(v16, 0, 1, v17);
  v38 = v35;
  v32 = v29;
LABEL_11:
  *v1 = v24;
  v1[1] = v25;
  v1[2] = v55;
  v1[3] = v32;
  v1[4] = v33;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E48C1338(v16, &qword_1ECF80A30, &qword_1E49A39D8);
    (*(v52 + 56))(v54, 1, 1, v53);
    return;
  }

  v39 = v16;
  v40 = v49;
  sub_1E48C15C8(v39, v49, &qword_1ECF80A08, &qword_1E49A39C0);
  v41 = v53;
  v42 = *(v53 + 48);
  v43 = v1[5];
  v44 = v50;
  *v50 = v43;
  sub_1E48C15C8(v40, v44 + v42, &qword_1ECF80A08, &qword_1E49A39C0);
  v45 = __OFADD__(v43, 1);
  v46 = v43 + 1;
  v47 = v54;
  if (v45)
  {
    goto LABEL_18;
  }

  v1[5] = v46;
  sub_1E48C15C8(v44, v47, &qword_1ECF809F0, &qword_1E49A3998);
  (*(v52 + 56))(v47, 0, 1, v41);
}

uint64_t sub_1E4939EEC(void (*a1)(char *, uint64_t))
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(*(v4 + 48) + v12);
      v14 = *(*(v4 + 56) + 8 * v12);

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v15[0] = v13;
      a1(v15, v14);

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    swift_beginAccess();
    os_unfair_lock_unlock(v3 + 4);
    return swift_endAccess();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E493A064(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1E4948474(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(*v9 + 104);
    v11 = *(v9 + v10);
    swift_beginAccess();

    os_unfair_lock_lock(v11 + 4);
    swift_endAccess();
    sub_1E4977C88(a1);
    v12 = *(v9 + v10);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A40, &qword_1E49A39F8);
    sub_1E48C1B44(&qword_1ECF80A48, &qword_1ECF80A40, &qword_1E49A39F8);
    swift_allocError();
    swift_willThrow();
  }

  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

uint64_t sub_1E493A210(uint64_t a1, double *a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = *(v2 + 24);

  v8 = sub_1E4947FC0(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A18, &unk_1E49A39C8);
    sub_1E48C1B44(&unk_1ECF80A20, &qword_1ECF80A18, &unk_1E49A39C8);
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + 8 * v8);

  v11 = *(*v10 + 104);
  v12 = *(v10 + v11);
  swift_beginAccess();
  os_unfair_lock_lock(v12 + 4);
  swift_endAccess();
  sub_1E49736C8(a1);
  v13 = *(v10 + v11);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();

LABEL_6:
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

ClockPoster::ClockTimeInterval_optional __swiftcall ClockTimeInterval.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.01666)
  {
    *v1 = 0;
  }

  else
  {
    if (rawValue == 60.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (rawValue == 1.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

double sub_1E493A4D8@<D0>(double *a1@<X8>)
{
  result = dbl_1E49A3AB0[*v1];
  *a1 = result;
  return result;
}

uint64_t OverrideTime.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4996D8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OverrideTime.date.setter(uint64_t a1)
{
  v3 = sub_1E4996D8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 OverrideTime.advancingRate.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverrideTime(0) + 20);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 OverrideTime.advancingRate.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for OverrideTime(0) + 20));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t OverrideTime.AdvancingRate.offset.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t OverrideTime.AdvancingRate.offset.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.interval.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OverrideTime.AdvancingRate.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.init(offset:interval:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.paused.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E4998A0C();
  v4 = v3;
  result = sub_1E4998A0C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if ((sub_1E49989FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E49989FC();
}

uint64_t sub_1E493A8A0()
{
  if (*v0)
  {
    result = 0x6C61767265746E69;
  }

  else
  {
    result = 0x74657366666FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E493A8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E499884C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E499884C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E493A9B0(uint64_t a1)
{
  v2 = sub_1E493ABE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E493A9EC(uint64_t a1)
{
  v2 = sub_1E493ABE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OverrideTime.AdvancingRate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80798, &qword_1E49A31E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493ABE4();
  sub_1E49989CC();
  v19 = v10;
  v20 = v9;
  v21 = 0;
  v13 = v18;
  sub_1E49987DC();
  if (!v13)
  {
    v19 = v17;
    v20 = v16;
    v21 = 1;
    sub_1E49987DC();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1E493ABE4()
{
  result = qword_1ECF807A0;
  if (!qword_1ECF807A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807A0);
  }

  return result;
}

uint64_t OverrideTime.AdvancingRate.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807A8, &qword_1E49A31E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493ABE4();
  sub_1E49989BC();
  if (!v2)
  {
    v16 = 0;
    sub_1E499878C();
    v12 = v15;
    v16 = 1;
    sub_1E499878C();
    (*(v6 + 8))(v10, v5);
    v13 = v15;
    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1E493AE40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if ((sub_1E49989FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E49989FC();
}

__n128 OverrideTime.init(date:advancingRate:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4996D8C();
  v9 = a2[1];
  v10 = *a2;
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = (a3 + *(type metadata accessor for OverrideTime(0) + 20));
  result = v10;
  *v7 = v10;
  v7[1] = v9;
  return result;
}

BOOL static OverrideTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4996D2C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for OverrideTime(0) + 20);
  v5 = a1 + v4;
  v6 = *(a1 + v4);
  v7 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v9 = *(v5 + 24);
  v10 = (a2 + v4);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  if ((sub_1E49989FC() & 1) == 0)
  {
    return 0;
  }

  return (sub_1E49989FC() & 1) != 0;
}

uint64_t sub_1E493AFD0()
{
  if (*v0)
  {
    result = 0x6E69636E61766461;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1E493B010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69636E61766461 && a2 == 0xED00006574615267)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E499884C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E493B0F4(uint64_t a1)
{
  v2 = sub_1E493B340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E493B130(uint64_t a1)
{
  v2 = sub_1E493B340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OverrideTime.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807B0, &qword_1E49A31F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493B340();
  sub_1E49989CC();
  LOBYTE(v16) = 0;
  sub_1E4996D8C();
  sub_1E493B768(&qword_1ECF807C0, MEMORY[0x1E6969530]);
  sub_1E49987DC();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for OverrideTime(0) + 20));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v15[15] = 1;
    sub_1E493B394();
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_1E493B340()
{
  result = qword_1ECF807B8;
  if (!qword_1ECF807B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807B8);
  }

  return result;
}

unint64_t sub_1E493B394()
{
  result = qword_1ECF807C8;
  if (!qword_1ECF807C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807C8);
  }

  return result;
}

uint64_t OverrideTime.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_1E4996D8C();
  v33 = *(v36 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807D0, &qword_1E49A31F8);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for OverrideTime(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493B340();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v14;
  v20 = v18;
  v21 = v33;
  LOBYTE(v37) = 0;
  sub_1E493B768(&qword_1ECF807D8, MEMORY[0x1E6969530]);
  v22 = v36;
  v23 = v34;
  sub_1E499878C();
  v24 = *(v21 + 32);
  v30 = v20;
  v24(v20, v7, v22);
  v39 = 1;
  sub_1E493B7B0();
  sub_1E499878C();
  (*(v35 + 8))(v13, v23);
  v25 = v30;
  v26 = (v30 + *(v31 + 20));
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  sub_1E4945478(v25, v32, type metadata accessor for OverrideTime);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E4945640(v25, type metadata accessor for OverrideTime);
}

uint64_t sub_1E493B768(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E493B7B0()
{
  result = qword_1ECF807E0;
  if (!qword_1ECF807E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807E0);
  }

  return result;
}

BOOL sub_1E493B834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E4996D2C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  if ((sub_1E49989FC() & 1) == 0)
  {
    return 0;
  }

  return (sub_1E49989FC() & 1) != 0;
}

uint64_t sub_1E493B920()
{
  if (MEMORY[0x1E691C5C0]("Clock:shared"))
  {
    type metadata accessor for SystemSystemStatusBarOverrideProvider();
    v0 = swift_allocObject();
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = [objc_allocWithZone(MEMORY[0x1E69D5480]) init];
    type metadata accessor for SystemOverrideClock();
    v1 = swift_allocObject();
    sub_1E49442B4(v0, v1);
  }

  v2 = type metadata accessor for Clock(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1E4943E9C();

  qword_1ECF80790 = v5;
  return result;
}

uint64_t static Clock.shared.getter()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }
}

void sub_1E493BA48(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v20[-v6];
  v8 = type metadata accessor for OverrideTime(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  (*(v9 + 56))(v7, 1, 1, v8);
  v15 = *(v14 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v15 + 4);
  swift_endAccess();
  sub_1E48C1338(v7, &qword_1ECF807E8, &qword_1E49A3200);
  v16 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v14 + v16, v7, &qword_1ECF807E8, &qword_1E49A3200);
  v17 = *(v14 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v17 + 4);
  swift_endAccess();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E48C1338(v7, &qword_1ECF807E8, &qword_1E49A3200);
    v18 = [objc_opt_self() now];
    sub_1E4996D3C();
  }

  else
  {
    sub_1E4945410(v7, v13, type metadata accessor for OverrideTime);
    v19 = sub_1E4996D8C();
    (*(*(v19 - 8) + 32))(a1, v13, v19);
  }
}

uint64_t sub_1E493BCE8()
{
  v0 = sub_1E4996D8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v7 = sub_1E4997EAC();
  [v6 setDateFormat_];

  sub_1E493BA48(v5);
  v8 = sub_1E4996CEC();
  (*(v1 + 8))(v5, v0);
  v9 = [v6 stringFromDate_];

  v10 = sub_1E4997EEC();
  return v10;
}

BOOL sub_1E493BE54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v14[-v4];
  v6 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v7 = type metadata accessor for OverrideTime(0);
  v8 = *(v7 - 8);
  (*(v8 + 56))(v5, 1, 1, v7);
  v9 = *(v6 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v9 + 4);
  swift_endAccess();
  sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
  v10 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v6 + v10, v5, &qword_1ECF807E8, &qword_1E49A3200);
  v11 = *(v6 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v11 + 4);
  swift_endAccess();
  v12 = (*(v8 + 48))(v5, 1, v7) != 1;
  sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
  return v12;
}

uint64_t sub_1E493C010(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a1, &v11 - v7, &qword_1ECF807E8, &qword_1E49A3200);
  v9 = *a2;
  return sub_1E493C0BC(v8);
}

uint64_t sub_1E493C0BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15[-v6];
  v8 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v9 = type metadata accessor for OverrideTime(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = *(v8 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  sub_1E48C1338(v7, &qword_1ECF807E8, &qword_1E49A3200);
  v11 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v8 + v11, v7, &qword_1ECF807E8, &qword_1E49A3200);
  v12 = *(v8 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC11ClockPoster5Clock_lastOverrideTime;
  swift_beginAccess();
  sub_1E48EC0CC(v7, v1 + v13, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  sub_1E48C12D0(a1, v7, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E4940ACC(v7);
  return sub_1E48C1338(a1, &qword_1ECF807E8, &qword_1E49A3200);
}

uint64_t sub_1E493C294@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v4 = type metadata accessor for OverrideTime(0);
  (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_1E48C1338(a1, &qword_1ECF807E8, &qword_1E49A3200);
  v6 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v3 + v6, a1, &qword_1ECF807E8, &qword_1E49A3200);
  v7 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v7 + 4);
  return swift_endAccess();
}

void (*sub_1E493C3B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v10 = type metadata accessor for OverrideTime(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
  v12 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v9 + v12, v8, &qword_1ECF807E8, &qword_1E49A3200);
  v13 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();
  return sub_1E493C588;
}

uint64_t sub_1E493C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1E499814C();
  *(v4 + 24) = sub_1E499813C();
  v6 = sub_1E499811C();

  return MEMORY[0x1EEE6DFA0](sub_1E493C638, v6, v5);
}

uint64_t sub_1E493C638()
{
  v2 = v0[2];
  v1 = v0[3];

  *(*(v2 + OBJC_IVAR____TtC11ClockPoster5Clock_atomicClock) + 24) = &off_1F5E86C60;
  swift_unknownObjectWeakAssign();
  *(*(v2 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock) + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_delegate + 8) = &off_1F5E86C70;
  swift_unknownObjectWeakAssign();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E493C6E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock);
  sub_1E493F0D0();
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers);
  v4 = *(v3 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v4 + 4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v3 + 24);
  *(v3 + 24) = MEMORY[0x1E69E7CC8];

  v6 = *(v3 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v6 + 4);
  return swift_endAccess();
}

uint64_t sub_1E493C7A4@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A50, &unk_1E49A3A00);
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v73 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A58, &unk_1E49A4D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v76 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v67 - v28;
  v30 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream);
  v31 = *(*v30 + 104);
  v32 = *(v30 + v31);
  swift_beginAccess();
  os_unfair_lock_lock(v32 + 4);
  swift_endAccess();
  v33 = *(*v30 + 120);
  v34 = *(v30 + v33);
  if ((v34 & 1) == 0)
  {
    *(v30 + v33) = 1;
  }

  v71 = v30;
  v72 = v31;
  v35 = *(v30 + v31);
  swift_beginAccess();
  os_unfair_lock_unlock(v35 + 4);
  swift_endAccess();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v38(v29, 1, 1, v36);
  v78 = v29;
  if ((v34 & 1) == 0)
  {
    v67 = v39;
    v69 = v38;
    v70 = v2;
    v40 = v25;
    v41 = v78;
    v42 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
    v43 = type metadata accessor for OverrideTime(0);
    v44 = *(v43 - 8);
    (*(v44 + 56))(v20, 1, 1, v43);
    v45 = *(v42 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v45 + 4);
    swift_endAccess();
    sub_1E48C1338(v20, &qword_1ECF807E8, &qword_1E49A3200);
    v46 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
    swift_beginAccess();
    sub_1E48C12D0(v42 + v46, v20, &qword_1ECF807E8, &qword_1E49A3200);
    v47 = *(v42 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v47 + 4);
    swift_endAccess();
    if ((*(v44 + 48))(v20, 1, v43))
    {
      sub_1E48C1338(v20, &qword_1ECF807E8, &qword_1E49A3200);
      v48 = sub_1E4996D8C();
      (*(*(v48 - 8) + 56))(v40, 1, 1, v48);
    }

    else
    {
      v49 = sub_1E4996D8C();
      v50 = *(v49 - 8);
      (*(v50 + 16))(v40, v20, v49);
      sub_1E48C1338(v20, &qword_1ECF807E8, &qword_1E49A3200);
      (*(v50 + 56))(v40, 0, 1, v49);
    }

    v69(v40, 0, 1, v36);
    sub_1E48EC0CC(v40, v41, &unk_1ECF80A60, &unk_1E49A3A10);
    v2 = v70;
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v52 = *(v51 - 8);
  v53 = v2;
  v54 = v52;
  v69 = *(v52 + 56);
  v70 = v52 + 56;
  v55 = v76;
  v69(v76, 1, 1, v51);
  v57 = v71;
  v56 = v72;
  v58 = *(v71 + v72);
  swift_beginAccess();
  os_unfair_lock_lock(v58 + 4);
  v59 = swift_endAccess();
  v61 = MEMORY[0x1EEE9AC00](v59, v60);
  v62 = v78;
  *(&v67 - 2) = v57;
  *(&v67 - 1) = v62;
  (*(v75 + 104))(v73, *MEMORY[0x1E69E8650], v53, v61);
  v63 = v74;
  sub_1E49981BC();
  sub_1E48C1338(v55, &qword_1ECF80A58, &unk_1E49A4D50);
  v69(v63, 0, 1, v51);
  sub_1E48C15C8(v63, v55, &qword_1ECF80A58, &unk_1E49A4D50);
  v64 = *(v57 + v56);
  swift_beginAccess();
  os_unfair_lock_unlock(v64 + 4);
  swift_endAccess();
  v65 = v77;
  sub_1E48C12D0(v55, v77, &qword_1ECF80A58, &unk_1E49A4D50);
  result = (*(v54 + 48))(v65, 1, v51);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v55, &qword_1ECF80A58, &unk_1E49A4D50);
    (*(v54 + 32))(v68, v65, v51);
    return sub_1E48C1338(v78, &unk_1ECF80A60, &unk_1E49A3A10);
  }

  return result;
}

uint64_t sub_1E493CF94@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);
  v5 = *a1;

  return sub_1E4938964(v5, v4, v2, v5, a2);
}

uint64_t sub_1E493CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_1E499814C();
  *(v5 + 24) = sub_1E499813C();
  v7 = sub_1E499811C();

  return MEMORY[0x1EEE6DFA0](sub_1E493D094, v7, v6);
}

uint64_t sub_1E493D094()
{
  v8 = v0;
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = *(v3 + OBJC_IVAR____TtC11ClockPoster5Clock_atomicClock);
  v7 = v1;
  sub_1E493DDA0(&v7);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t Clock.deinit()
{
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_lastOverrideTime, &qword_1ECF807E8, &qword_1E49A3200);
  v1 = OBJC_IVAR____TtC11ClockPoster5Clock_dateInited;
  v2 = sub_1E4996D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_atomicClock);

  v4 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);

  v5 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);

  v6 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers);

  v7 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval);

  v8 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream);

  return v0;
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E493D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  v6 = sub_1E4996D8C();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  sub_1E499814C();
  *(v5 + 48) = sub_1E499813C();
  v10 = sub_1E499811C();

  return MEMORY[0x1EEE6DFA0](sub_1E493D388, v10, v9);
}

uint64_t sub_1E493D388()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);

  v7 = *(v5 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);
  v8 = [objc_opt_self() now];
  sub_1E4996D3C();

  sub_1E493A064(v2, v6);
  (*(v4 + 8))(v2, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E493D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E493D4AC, 0, 0);
}

uint64_t sub_1E493D4AC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers);
  sub_1E493A210(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E493D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v19[-v9];
  v11 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);
  v20 = a2;
  v21 = a1;
  v22 = a3;
  sub_1E4939EEC(sub_1E49457A0);
  v12 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream);
  v13 = *(*v12 + 104);
  v14 = *(v12 + v13);
  swift_beginAccess();
  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  sub_1E4974E44(a2);
  v15 = *(v12 + v13);
  swift_beginAccess();
  os_unfair_lock_unlock(v15 + 4);
  swift_endAccess();
  v16 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock);
  sub_1E48C12D0(a2, v10, &qword_1ECF809D0, &qword_1E499D6C0);
  v17 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  swift_beginAccess();
  sub_1E48EC048(v10, v16 + v17, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  sub_1E493EA5C();
  return sub_1E48C1338(v10, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E493D6E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v61 = a5;
  v62 = a4;
  v63 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  v19 = sub_1E4996D8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v58 - v27;
  v64 = *a1;
  sub_1E48C12D0(a3, v18, &qword_1ECF809D0, &qword_1E499D6C0);
  v29 = *(v20 + 48);
  if (v29(v18, 1, v19) == 1)
  {
    sub_1E48C1338(v18, &qword_1ECF809D0, &qword_1E499D6C0);
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v24);
    v30 = *(v63 + *(*v63 + 104));
    swift_beginAccess();
    os_unfair_lock_lock(v30 + 4);
    swift_endAccess();
    sub_1E4977C88(v24);
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();
    return (*(v20 + 8))(v24, v19);
  }

  v31 = *(v20 + 32);
  v59 = v28;
  v31(v28, v18, v19);
  v58 = OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval;
  v32 = *(v62 + OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval);
  v33 = *(v32 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v33 + 4);
  swift_endAccess();
  swift_beginAccess();
  v35 = *(v32 + 16);
  v34 = *(v32 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v35 + 4);
  swift_endAccess();

  if (*(v34 + 16) && (v36 = sub_1E4948474(v64), (v37 & 1) != 0))
  {
    (*(v20 + 16))(v14, *(v34 + 56) + *(v20 + 72) * v36, v19);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = *(v20 + 56);
  v39(v14, v38, 1, v19);
  if (v29(v14, 1, v19))
  {
    sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
    v40 = 0.0;
  }

  else
  {
    (*(v20 + 16))(v24, v14, v19);
    sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E4996D1C();
    v40 = v41;
    (*(v20 + 8))(v24, v19);
  }

  v24 = v59;
  sub_1E4996D1C();
  v43 = vabdd_f64(v42, v40);
  v44 = v29(v61, 1, v19);
  v45 = v64;
  if (v64)
  {
    if (v64 == 1)
    {
      if (v43 > 1.0)
      {
        goto LABEL_25;
      }
    }

    else if (v43 > 60.0)
    {
      goto LABEL_25;
    }

    if (v44 != 1)
    {
      return (*(v20 + 8))(v24, v19);
    }
  }

  else if (v43 <= 0.01666 && v44 != 1)
  {
    return (*(v20 + 8))(v24, v19);
  }

LABEL_25:
  v48 = *(v63 + *(*v63 + 104));
  swift_beginAccess();
  os_unfair_lock_lock(v48 + 4);
  swift_endAccess();
  sub_1E4977C88(v24);
  swift_beginAccess();
  os_unfair_lock_unlock(v48 + 4);
  swift_endAccess();
  v49 = v60;
  (*(v20 + 16))(v60, v24, v19);
  v39(v49, 0, 1, v19);
  v50 = *(v62 + v58);
  v51 = *(v50 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v51 + 4);
  swift_endAccess();
  swift_beginAccess();
  v53 = *(v50 + 16);
  v52 = *(v50 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v53 + 4);
  swift_endAccess();
  v65 = v52;
  sub_1E4971004(v49, v45);
  v54 = v65;
  v55 = *(v50 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v55 + 4);
  swift_endAccess();
  v56 = *(v50 + 24);
  *(v50 + 24) = v54;

  v57 = *(v50 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v57 + 4);
  swift_endAccess();
  (*(v20 + 8))(v24, v19);
}

void sub_1E493DDA0(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  if (!*(*(v2 + 32) + 16) || (sub_1E4948474(v3), (v8 & 1) == 0))
  {
    if (v3)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1E49456AC;
      *(v9 + 24) = v5;
      if (v3 == 1)
      {
        v23 = sub_1E4945B8C;
        v24 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v20 = 1107296256;
        v21 = sub_1E493E668;
        v22 = &block_descriptor_156;
        v10 = _Block_copy(&aBlock);

        v23 = sub_1E49456B8;
        v24 = v6;
        aBlock = MEMORY[0x1E69E9820];
        v20 = 1107296256;
        v21 = sub_1E493E75C;
        v22 = &block_descriptor_159;
        v11 = _Block_copy(&aBlock);

        v12 = [v7 startSecondUpdatesWithHandler:v10 identificationLog:v11];
      }

      else
      {
        v23 = sub_1E49456C0;
        v24 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v20 = 1107296256;
        v21 = sub_1E493E668;
        v22 = &block_descriptor_146;
        v10 = _Block_copy(&aBlock);

        v23 = sub_1E49456B8;
        v24 = v6;
        aBlock = MEMORY[0x1E69E9820];
        v20 = 1107296256;
        v21 = sub_1E493E75C;
        v22 = &block_descriptor_149;
        v11 = _Block_copy(&aBlock);

        v12 = [v7 startMinuteUpdatesWithHandler:v10 identificationLog:v11];
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1E49456AC;
      *(v13 + 24) = v5;
      v23 = sub_1E4945B8C;
      v24 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1E493E668;
      v22 = &block_descriptor_166;
      v10 = _Block_copy(&aBlock);

      v23 = sub_1E49456B8;
      v24 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1E493E75C;
      v22 = &block_descriptor_169;
      v11 = _Block_copy(&aBlock);

      v12 = [v7 start60fpsUpdatesWithHandler:v10 identificationLog:v11];
    }

    v14 = v12;
    _Block_release(v11);
    _Block_release(v10);
    swift_beginAccess();
    v15 = v14;
    v16 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_1E4986C34(v15, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v18;
    swift_endAccess();

    v7 = v15;
  }
}

uint64_t sub_1E493E290(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v16 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if (!sub_1E493BE54())
      {
        v12 = sub_1E499816C();
        (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
        sub_1E499814C();
        swift_unknownObjectRetain();
        v13 = sub_1E499813C();
        v14 = swift_allocObject();
        v15 = MEMORY[0x1E69E85E0];
        *(v14 + 16) = v13;
        *(v14 + 24) = v15;
        *(v14 + 32) = v11;
        *(v14 + 40) = a3;
        sub_1E49690B8(0, 0, v8, &unk_1E49A39F0, v14);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_1E493E424(char a1)
{
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v6 = sub_1E49054F0();
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v2 = sub_1E4905BE4();
  MEMORY[0x1E691B7A0](v2);

  MEMORY[0x1E691B7A0](45, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x646E6F636573;
    }

    else
    {
      v3 = 0x6574756E696DLL;
    }

    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x74736574736166;
  }

  MEMORY[0x1E691B7A0](v3, v4);

  return v6;
}

uint64_t sub_1E493E540(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1E4996D8C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  a2(v8);
  return sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E493E668(uint64_t a1)
{
  v2 = sub_1E4996D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_1E4996D3C();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

id sub_1E493E75C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v4 = sub_1E4997EAC();

  return v4;
}

uint64_t sub_1E493E7D0()
{
  sub_1E48B7510(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E493E810()
{
  sub_1E499892C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E691C170](*&v1);
  v2 = *(type metadata accessor for TextClockDescriptor(0) + 20);
  sub_1E4996F4C();
  sub_1E493B768(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E493E8D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E691C170](*&v4);
  v5 = *(a2 + 20);
  sub_1E4996F4C();
  sub_1E493B768(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  return sub_1E4997E5C();
}

uint64_t sub_1E493E978(uint64_t a1, uint64_t a2)
{
  sub_1E499892C();
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E691C170](*&v4);
  v5 = *(a2 + 20);
  sub_1E4996F4C();
  sub_1E493B768(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E493EA30(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    v3 = *(a3 + 20);
    JUMPOUT(0x1E691A740);
  }

  return 0;
}

uint64_t sub_1E493EA5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F0, &qword_1E49A3998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F8, &qword_1E49A39A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v49 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v21 = *(v20 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  swift_beginAccess();
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v23 + 4);
  swift_endAccess();

  v24 = -1 << *(v22 + 32);
  v25 = ~v24;
  v26 = *(v22 + 64);
  v27 = -v24;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v55 = v22;
  v56 = v22 + 64;
  v57 = v25;
  v58 = 0;
  v59 = v28 & v26;
  v60 = 0;
  v29 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  v49 = v22;

  v51 = v29;
  v52 = v0;
  swift_beginAccess();
  sub_1E4939AC0(v19);
  v32 = *(v6 + 48);
  v31 = v6 + 48;
  v30 = v32;
  if (v32(v19, 1, v5) != 1)
  {
    v50 = v5;
    do
    {
      sub_1E48C15C8(v19, v14, &qword_1ECF809F0, &qword_1E49A3998);
      sub_1E48C12D0(v14, v10, &qword_1ECF809F0, &qword_1E49A3998);
      v34 = &v10[*(v5 + 48)];
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A08, &qword_1E49A39C0) + 48);
      v54 = v34;
      v36 = *(v34 + v35);
      v37 = v53;
      sub_1E48C12D0(v52 + v51, v53, &qword_1ECF809D0, &qword_1E499D6C0);
      v38 = sub_1E4996D8C();
      v39 = *(v38 - 8);
      v40 = (*(v39 + 48))(v37, 1, v38);
      v41 = 0;
      if (v40 != 1)
      {
        v42 = v30;
        v43 = v19;
        v44 = v14;
        v45 = v10;
        v46 = v31;
        v47 = v53;
        v41 = sub_1E4996CEC();
        v48 = v47;
        v31 = v46;
        v10 = v45;
        v14 = v44;
        v19 = v43;
        v30 = v42;
        (*(v39 + 8))(v48, v38);
      }

      [v36 setOverrideDate_];

      sub_1E48C1338(v14, &qword_1ECF809F0, &qword_1E49A3998);
      sub_1E4945640(v54, type metadata accessor for TextClockDescriptor);
      sub_1E4939AC0(v19);
      v5 = v50;
    }

    while (v30(v19, 1, v50) != 1);
  }

  sub_1E48EB764();
}

id sub_1E493EFDC()
{
  sub_1E493F0D0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextClock(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E493F0D0()
{
  v1 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset;
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v3 = *(v2 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();

  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  for (i = (v8 + 63) >> 6; v10; result = [*(*(v4 + 56) + ((v12 << 9) | (8 * v13))) removeObserver_])
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      v14 = *(v0 + v1);
      v15 = *(v14 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v15 + 4);
      swift_endAccess();
      v16 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v16 + 4);
      swift_endAccess();
      v17 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_lock(v17 + 4);
      swift_endAccess();
      swift_beginAccess();
      v18 = *(v14 + 24);
      *(v14 + 24) = MEMORY[0x1E69E7CC8];

      v19 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v19 + 4);
      swift_endAccess();
    }

    v10 = *(v4 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E493F314@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v51 - v13;
  v15 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset;
  v16 = *(v2 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v17 = *(v16 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v18 + 4);
  swift_endAccess();

  if (*(v19 + 16))
  {
    sub_1E4947FC0(a1);
    v21 = v20;

    if (v21)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v51 = v11;
  v52 = v15;
  v54 = a2;
  v24 = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
  v25 = v24;
  v53 = a1;
  if (*a1 != 0.0)
  {
    [v24 setTimeOffset_];
  }

  v26 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  swift_beginAccess();
  sub_1E48C12D0(v3 + v26, v14, &qword_1ECF809D0, &qword_1E499D6C0);
  v27 = sub_1E4996D8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v3;
  v31 = v29(v14, 1, v27);
  sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
  v32 = v31 == 1;
  v3 = v30;
  v33 = v25;
  if (!v32)
  {
    v34 = v3 + v26;
    v35 = v51;
    sub_1E48C12D0(v34, v51, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v29(v35, 1, v27) == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_1E4996CEC();
      (*(v28 + 8))(v35, v27);
    }

    [v33 setOverrideDate_];
  }

  v37 = type metadata accessor for TextClockDescriptor(0);
  a1 = v53;
  v38 = v53 + *(v37 + 20);
  v39 = sub_1E4996F1C();
  [v33 setTimeZone_];

  [v33 addObserver_];
  v40 = *(v3 + v52);
  v41 = *(v40 + 16);
  swift_beginAccess();
  v42 = v33;

  os_unfair_lock_lock(v41 + 4);
  swift_endAccess();
  swift_beginAccess();
  v43 = *(v40 + 16);
  v44 = *(v40 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v43 + 4);
  swift_endAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v44;
  sub_1E4986D7C(v42, a1, isUniquelyReferenced_nonNull_native);
  v46 = v55;
  v47 = *(v40 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v47 + 4);
  swift_endAccess();
  v48 = *(v40 + 24);
  *(v40 + 24) = v46;

  v49 = *(v40 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v49 + 4);
  swift_endAccess();

  a2 = v54;
LABEL_13:
  MEMORY[0x1EEE9AC00](v22, v23);
  *(&v51 - 2) = a1;
  *(&v51 - 1) = v3;
  return sub_1E4939498(sub_1E4945B88, (&v51 - 4), a2);
}

id sub_1E493F7B0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v59 - v9;
  v11 = sub_1E4996D8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v59 - v19;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v20);
  v21 = *a1;
  if (*a1 != 0.0)
  {
    v22 = *a1;
    sub_1E4996CDC();
    (*(v12 + 8))(v20, v11);
    (*(v12 + 32))(v20, v17, v11);
  }

  v23 = *(a2 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v24 = *(v23 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v24 + 4);
  swift_endAccess();
  swift_beginAccess();
  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v26 + 4);
  swift_endAccess();

  if (*(v25 + 16) && (v27 = sub_1E4947FC0(a1), (v28 & 1) != 0))
  {
    v29 = *(*(v25 + 56) + 8 * v27);

    v30 = v29;
  }

  else
  {

    v31 = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
    v32 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
    swift_beginAccess();
    sub_1E48C12D0(a2 + v32, v10, &qword_1ECF809D0, &qword_1E499D6C0);
    LODWORD(v32) = (*(v12 + 48))(v10, 1, v11);
    v30 = v31;
    v33 = 0;
    if (v32 != 1)
    {
      v33 = sub_1E4996CEC();
      (*(v12 + 8))(v10, v11);
    }

    [v30 setOverrideDate_];

    [v30 setTimeOffset_];
    v34 = a1 + *(type metadata accessor for TextClockDescriptor(0) + 20);
    v35 = sub_1E4996F1C();
    [v30 setTimeZone_];
  }

  result = [v30 timeText];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v37 = result;
  v64 = v20;
  v38 = sub_1E4997EEC();
  v65 = v39;
  v66 = v38;

  result = [v30 timeAndDesignatorText];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = result;
  v61 = v12;
  v62 = v11;
  v63 = a1;
  v41 = sub_1E4997EEC();
  v59 = v42;
  v60 = v41;

  v43 = [v30 designatorRangeInTimeAndDesignatorText];
  v45 = v44;
  result = [v30 timeSubstringToSeparatorText];
  if (result)
  {
    v46 = result;
    v47 = sub_1E4997EEC();
    v49 = v48;

    v50 = [v30 separatorRangeInTimeText];
    v52 = v51;

    v53 = *(type metadata accessor for TextClockDescriptor(0) + 20);
    v54 = type metadata accessor for TimeString(0);
    v55 = *(v54 + 36);
    v56 = sub_1E4996F4C();
    (*(*(v56 - 8) + 16))(a3 + v55, v63 + v53, v56);
    v57 = v65;
    *a3 = v66;
    a3[1] = v57;
    v58 = v59;
    a3[2] = v60;
    a3[3] = v58;
    a3[4] = v43;
    a3[5] = v45;
    a3[6] = v47;
    a3[7] = v49;
    a3[8] = v50;
    a3[9] = v52;
    return (*(v61 + 32))(a3 + *(v54 + 40), v64, v62);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E493FCCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v116 - v9;
  v11 = sub_1E499708C();
  v134 = *(v11 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v116 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v121 = v116 - v23;
  v24 = type metadata accessor for TimeString(0);
  v118 = *(v24 - 8);
  v25 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v120 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v129 = v116 - v30;
  v31 = type metadata accessor for TextClockDescriptor(0);
  v32 = *(v31 - 8);
  v132 = v31;
  v133 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31, v34);
  v117 = v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116[1] = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v128 = v116 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F0, &qword_1E49A3998);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = v116 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F8, &qword_1E49A39A0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8, v47);
  v49 = v116 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v130 = v116 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A00, &qword_1E49A39A8);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8, v55);
  v131 = v116 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  if (a1)
  {
    v124 = v10;
    v125 = v19;
    v126 = v116 - v59;
    v127 = v11;
    v60 = *(v135 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
    v61 = *(v60 + 16);
    swift_beginAccess();
    v136 = a1;

    os_unfair_lock_lock(v61 + 4);
    swift_endAccess();
    swift_beginAccess();
    v62 = *(v60 + 16);
    v63 = *(v60 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v62 + 4);
    swift_endAccess();

    v64 = -1 << *(v63 + 32);
    v65 = *(v63 + 64);
    v66 = ~v64;
    v67 = -v64;
    v137 = v63;
    v138 = v63 + 64;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    v139 = v66;
    v140 = 0;
    v141 = v68 & v65;
    v142 = 0;
    v122 = v63;

    sub_1E4939AC0(v49);
    v123 = v40;
    v69 = *(v40 + 48);
    if (v69(v49, 1, v39) == 1)
    {
LABEL_8:
      sub_1E48EB764();
      v72 = v130;
      (*(v123 + 56))(v130, 1, 1, v39);
    }

    else
    {
      while (1)
      {
        sub_1E48C15C8(v49, v44, &qword_1ECF809F0, &qword_1E49A3998);
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        v70 = &v44[*(v39 + 48)];
        v71 = *&v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A08, &qword_1E49A39C0) + 48)];
        if (sub_1E499848C())
        {
          break;
        }

        sub_1E48C1338(v44, &qword_1ECF809F0, &qword_1E49A3998);
        sub_1E4939AC0(v49);
        if (v69(v49, 1, v39) == 1)
        {
          goto LABEL_8;
        }
      }

      sub_1E48EB764();
      v83 = v44;
      v72 = v130;
      sub_1E48C15C8(v83, v130, &qword_1ECF809F0, &qword_1E49A3998);
      (*(v123 + 56))(v72, 0, 1, v39);
    }

    v84 = v69(v72, 1, v39);
    v85 = v126;
    v86 = v135;
    v87 = v131;
    if (v84 == 1)
    {
      sub_1E48C1338(v72, &qword_1ECF809F8, &qword_1E49A39A0);
      v88 = 1;
    }

    else
    {
      v89 = v72 + *(v39 + 48);

      sub_1E4945410(v89, v85, type metadata accessor for TextClockDescriptor);
      v88 = 0;
    }

    v90 = v127;
    v91 = v133;
    v92 = v134;
    v93 = v124;
    v94 = v132;
    (*(v133 + 56))(v85, v88, 1, v132);
    sub_1E48C12D0(v85, v87, &qword_1ECF80A00, &qword_1E49A39A8);
    v95 = (*(v91 + 48))(v87, 1, v94);
    v96 = v125;
    if (v95 == 1)
    {
      sub_1E48C1338(v87, &qword_1ECF80A00, &qword_1E49A39A8);
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v97 = qword_1EE2BB458;
      v98 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v97 + v98, v93, &qword_1ECF7F008, &qword_1E499B170);
      v99 = *(v92 + 48);
      if (v99(v93, 1, v90) == 1)
      {
        sub_1E4904BF4(v96);
        if (v99(v93, 1, v90) != 1)
        {
          sub_1E48C1338(v93, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v92 + 32))(v96, v93, v90);
      }

      v113 = sub_1E499706C();
      v114 = sub_1E499831C();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_1E48B0000, v113, v114, "Cannot map CLKTimeFormatter to listeners.", v115, 2u);
        MEMORY[0x1E691CED0](v115, -1, -1);
      }

      (*(v92 + 8))(v96, v90);
      return sub_1E48C1338(v85, &qword_1ECF80A00, &qword_1E49A39A8);
    }

    else
    {
      v100 = v128;
      v101 = sub_1E4945410(v87, v128, type metadata accessor for TextClockDescriptor);
      MEMORY[0x1EEE9AC00](v101, v102);
      v116[-2] = v100;
      v116[-1] = v86;
      v103 = v129;
      sub_1E4939498(sub_1E48BF0E4, &v116[-4], v129);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v105 = Strong;
        v106 = sub_1E499816C();
        v107 = v121;
        (*(*(v106 - 8) + 56))(v121, 1, 1, v106);
        v108 = v120;
        sub_1E4945478(v103, v120, type metadata accessor for TimeString);
        v109 = v117;
        sub_1E4945478(v100, v117, type metadata accessor for TextClockDescriptor);
        v110 = (*(v118 + 80) + 40) & ~*(v118 + 80);
        v111 = (v119 + *(v133 + 80) + v110) & ~*(v133 + 80);
        v112 = swift_allocObject();
        v112[2] = 0;
        v112[3] = 0;
        v112[4] = v105;
        sub_1E4945410(v108, v112 + v110, type metadata accessor for TimeString);
        sub_1E4945410(v109, v112 + v111, type metadata accessor for TextClockDescriptor);
        swift_unknownObjectRetain();
        sub_1E49690B8(0, 0, v107, &unk_1E49A39B8, v112);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1E4945640(v103, type metadata accessor for TimeString);
      sub_1E48C1338(v85, &qword_1ECF80A00, &qword_1E49A39A8);
      return sub_1E4945640(v100, type metadata accessor for TextClockDescriptor);
    }
  }

  else
  {
    v73 = v134;
    v74 = v15;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v75 = qword_1EE2BB458;
    v76 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v75 + v76, v6, &qword_1ECF7F008, &qword_1E499B170);
    v77 = v73;
    v78 = *(v73 + 48);
    if (v78(v6, 1, v11) == 1)
    {
      sub_1E4904BF4(v74);
      if (v78(v6, 1, v11) != 1)
      {
        sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v77 + 32))(v74, v6, v11);
    }

    v79 = sub_1E499706C();
    v80 = sub_1E499831C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1E48B0000, v79, v80, "CLKTimeFormatter must never CLKTimeFormatterObserver call is nil.", v81, 2u);
      MEMORY[0x1E691CED0](v81, -1, -1);
    }

    return (*(v77 + 8))(v74, v11);
  }
}

uint64_t sub_1E4940ACC(uint64_t a1)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for OverrideTime(0);
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v27 + 4);
  swift_endAccess();
  v28 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C1338(v24, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v1 + v28, v24, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v51, v20, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v1 + v28, v16, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  swift_beginAccess();
  sub_1E48EC048(v20, v1 + v28, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  sub_1E49412AC(v16);
  sub_1E48C1338(v16, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C1338(v20, &qword_1ECF807E8, &qword_1E49A3200);
  swift_beginAccess();
  os_unfair_lock_unlock(v27 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = *(v26 + 48);
    v32 = 1;
    v33 = v31(v24, 1, v25);
    v34 = sub_1E4996D8C();
    v35 = *(v34 - 8);
    if (!v33)
    {
      (*(*(v34 - 8) + 16))(v50, v24, v34);
      v32 = 0;
    }

    v36 = *(v35 + 56);
    v36(v50, v32, 1, v34);
    v37 = v48;
    sub_1E48C12D0(v51, v48, &qword_1ECF807E8, &qword_1E49A3200);
    if (v31(v37, 1, v25) == 1)
    {
      sub_1E48C1338(v37, &qword_1ECF807E8, &qword_1E49A3200);
      v38 = 1;
      v39 = v49;
    }

    else
    {
      v39 = v49;
      (*(v35 + 16))(v49, v37, v34);
      sub_1E4945640(v37, type metadata accessor for OverrideTime);
      v38 = 0;
    }

    v36(v39, v38, 1, v34);
    v43 = MEMORY[0x1E691C5C0]("Clock:shared");
    if (v43)
    {
      MEMORY[0x1EEE9AC00](v43, v44);
      *(&v47 - 4) = v30;
      *(&v47 - 3) = v39;
      v45 = v50;
      *(&v47 - 2) = v50;
      sub_1E48C3264(sub_1E4945794, (&v47 - 6));
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v45 = v50;
    }

    sub_1E48C1338(v51, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E48C1338(v39, &qword_1ECF809D0, &qword_1E499D6C0);
    v42 = v45;
    v40 = &qword_1ECF809D0;
    v41 = &qword_1E499D6C0;
  }

  else
  {
    v40 = &qword_1ECF807E8;
    v41 = &qword_1E49A3200;
    v42 = v51;
  }

  sub_1E48C1338(v42, v40, v41);
  return sub_1E48C1338(v24, &qword_1ECF807E8, &qword_1E49A3200);
}

void (*sub_1E4941010(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for OverrideTime(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v1 + v11, v8, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  return sub_1E49411D8;
}