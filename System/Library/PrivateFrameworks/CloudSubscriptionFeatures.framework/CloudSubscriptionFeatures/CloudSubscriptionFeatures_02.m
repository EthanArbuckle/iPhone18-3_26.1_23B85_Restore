uint64_t sub_1DF4B0568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  v5 = sub_1DF564494();
  v4[35] = v5;
  v6 = *(v5 - 8);
  v4[36] = v6;
  v7 = *(v6 + 64) + 15;
  v4[37] = swift_task_alloc();
  v8 = type metadata accessor for InternalError();
  v4[38] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B0694, 0, 0);
}

void sub_1DF4B0694()
{
  v1 = v0[33];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[40];
    v4 = v0[35];
    v5 = v0[36];
    v6 = *(v5 + 56);
    v0[41] = v6;
    v0[42] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v3, 1, 1, v4);
    if (v2 < 1)
    {
      sub_1DF4B3DAC(8, sub_1DF498474);
      swift_willThrow();
      sub_1DF47E5B4(v0[40], &qword_1ECE37A10, &qword_1DF567C00);
      v11 = v0[39];
      v10 = v0[40];
      v12 = v0[37];

      v13 = v0[1];

      v13();
    }

    else
    {
      v0[43] = @"CloudFeaturesServerErrorDomain";
      v0[44] = @"CloudFeaturesLocalErrorDomain";
      v0[45] = 0;
      v0[46] = v2;
      v7 = swift_task_alloc();
      v0[47] = v7;
      *v7 = v0;
      v7[1] = sub_1DF4B084C;
      v8 = v0[40];
      v9 = v0[34];

      sub_1DF4B3280((v0 + 12), (v0 + 2), v8);
    }
  }
}

uint64_t sub_1DF4B084C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *v1;
  v3[48] = v0;
  v3[49] = v2[12];
  v3[50] = v2[13];
  *(v3 + 51) = *(v3 + 7);
  v3[53] = v2[16];
  *(v3 + 89) = *(v3 + 136);

  if (v0)
  {
    v6 = sub_1DF4B0AA8;
  }

  else
  {
    v6 = sub_1DF4B09BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4B09BC()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 424);
  v11 = *(v0 + 392);
  v12 = *(v0 + 408);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);

  sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
  v8 = *(v0 + 32);
  *v6 = *(v0 + 16);
  v6[1] = v8;

  *v7 = v11;
  *(v7 + 16) = v12;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF4B0AA8()
{
  v1 = *(v0 + 384);
  *(v0 + 216) = v1;
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v0 + 384);
      v63 = *(v0 + 360);
      v8 = *(v0 + 328);
      v9 = *(v0 + 336);
      v10 = *(v0 + 320);
      v12 = *(v0 + 288);
      v11 = *(v0 + 296);
      v13 = *(v0 + 280);
      sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);

      (*(v12 + 32))(v11, v6, v13);
      (*(v12 + 16))(v10, v11, v13);
      v8(v10, 0, 1, v13);
      v14 = sub_1DF4B3DAC(8, sub_1DF498474);

      (*(v12 + 8))(v11, v13);
      goto LABEL_16;
    }

    sub_1DF499628(v6, type metadata accessor for InternalError);
  }

  v15 = *(v0 + 384);
  v16 = *(v0 + 344);

  swift_getErrorValue();
  v17 = *(v0 + 144);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v20 = v15;
  v21 = sub_1DF49A0C0(v18);
  v22 = [v21 domain];

  v23 = sub_1DF564944();
  v25 = v24;

  if (v23 == sub_1DF564944() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = sub_1DF5650D4();

  if (v27)
  {
LABEL_9:
    v28 = *(v0 + 360);
    v30 = *(v0 + 328);
    v29 = *(v0 + 336);
    v31 = *(v0 + 320);
    v32 = *(v0 + 280);

    swift_getErrorValue();
    v33 = *(v0 + 192);
    v34 = *(v0 + 208);
    v35 = sub_1DF505580(*(v0 + 200));

    sub_1DF47E5B4(v31, &qword_1ECE37A10, &qword_1DF567C00);
    v30(v31, 1, 1, v32);
    v14 = *(v0 + 384);
    if (!v35)
    {
LABEL_20:
      if (!v14)
      {
        sub_1DF4B3DAC(8, sub_1DF498474);
      }

      swift_willThrow();
      sub_1DF47E5B4(*(v0 + 320), &qword_1ECE37A10, &qword_1DF567C00);
      goto LABEL_23;
    }

LABEL_16:
    v53 = *(v0 + 368) - 1;
    if (*(v0 + 368) != 1)
    {
      *(v0 + 360) = v14;
      *(v0 + 368) = v53;
      v54 = swift_task_alloc();
      *(v0 + 376) = v54;
      *v54 = v0;
      v54[1] = sub_1DF4B084C;
      v55 = *(v0 + 320);
      v56 = *(v0 + 272);

      return sub_1DF4B3280(v0 + 96, v0 + 16, v55);
    }

    goto LABEL_20;
  }

  v36 = *(v0 + 384);
  v37 = *(v0 + 352);
  swift_getErrorValue();
  v38 = *(v0 + 168);
  v39 = *(v0 + 184);
  v40 = sub_1DF49A0C0(*(v0 + 176));
  v41 = [v40 domain];

  v42 = sub_1DF564944();
  v44 = v43;

  v46 = sub_1DF564944();
  v47 = v42;
  v48 = *(v0 + 384);
  v49 = *(v0 + 360);
  v50 = *(v0 + 320);
  if (v47 == v46 && v44 == v45)
  {

    sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_15:
    v52 = *(v0 + 336);
    (*(v0 + 328))(*(v0 + 320), 1, 1, *(v0 + 280));
    v14 = *(v0 + 384);
    goto LABEL_16;
  }

  v51 = sub_1DF5650D4();

  sub_1DF47E5B4(v50, &qword_1ECE37A10, &qword_1DF567C00);
  if (v51)
  {
    goto LABEL_15;
  }

  v62 = *(v0 + 384);
LABEL_23:
  v59 = *(v0 + 312);
  v58 = *(v0 + 320);
  v60 = *(v0 + 296);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1DF4B1014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1DF564104();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = sub_1DF5644C4();
  v4[29] = v8;
  v9 = *(v8 - 8);
  v4[30] = v9;
  v10 = *(v9 + 64) + 15;
  v4[31] = swift_task_alloc();
  v11 = type metadata accessor for NetworkRequest();
  v4[32] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B1164, 0, 0);
}

uint64_t sub_1DF4B1164()
{
  sub_1DF47E4CC(v0[25] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[25];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v12 = v0[24];
  v11 = v0[25];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B13D4;
  v28 = v0[33];

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B13D4()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1DF49961C;
  }

  else
  {
    v3 = sub_1DF4B14E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4B14E8()
{
  sub_1DF47E4CC(*(v0 + 200) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 264);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 280);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = sub_1DF564144();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
    sub_1DF4B991C();
    sub_1DF564124();
    v14 = *(v0 + 264);
    v19 = *(v0 + 248);
    v28 = *(v0 + 224);
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);

    sub_1DF499628(v14, type metadata accessor for NetworkRequest);
    *v20 = *(v0 + 168);
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 72);
    LOBYTE(v6) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v21 = v23;
    *(v21 + 8) = v22;
    *(v21 + 16) = v25;
    *(v21 + 24) = v24;
    *(v21 + 32) = v26;
    *(v21 + 40) = v6;
    v27 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 264);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:
  v15 = *(v0 + 264);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);

  v27 = *(v0 + 8);
LABEL_10:

  return v27();
}

uint64_t sub_1DF4B17A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_1DF564104();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = sub_1DF5644C4();
  v4[28] = v8;
  v9 = *(v8 - 8);
  v4[29] = v9;
  v10 = *(v9 + 64) + 15;
  v4[30] = swift_task_alloc();
  v11 = type metadata accessor for NetworkRequest();
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B18F8, 0, 0);
}

uint64_t sub_1DF4B18F8()
{
  sub_1DF47E4CC(v0[24] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[24];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[31];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v12 = v0[23];
  v11 = v0[24];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[33] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B1B68;
  v28 = v0[32];

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B1B68()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_1DF4B1F24;
  }

  else
  {
    v3 = sub_1DF4B1C7C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4B1C7C()
{
  sub_1DF47E4CC(*(v0 + 192) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 272);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 256);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 272);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 200);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = sub_1DF564144();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    sub_1DF4B9F30();
    sub_1DF564124();
    v14 = *(v0 + 256);
    v19 = *(v0 + 240);
    v28 = *(v0 + 216);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);

    sub_1DF499628(v14, type metadata accessor for NetworkRequest);
    *v20 = *(v0 + 81);
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 72);
    LOBYTE(v6) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v21 = v23;
    *(v21 + 8) = v22;
    *(v21 + 16) = v25;
    *(v21 + 24) = v24;
    *(v21 + 32) = v26;
    *(v21 + 40) = v6;
    v27 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 256);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:
  v15 = *(v0 + 256);
  v16 = *(v0 + 240);
  v17 = *(v0 + 216);

  v27 = *(v0 + 8);
LABEL_10:

  return v27();
}

uint64_t sub_1DF4B1F24()
{
  sub_1DF499628(v0[32], type metadata accessor for NetworkRequest);
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF4B1FC4()
{
  sub_1DF47E4CC(*(v0 + 200) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 264);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 280);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = sub_1DF564144();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B38, &qword_1DF567E80);
    sub_1DF4BB45C();
    sub_1DF564124();
    v14 = *(v0 + 264);
    v19 = *(v0 + 248);
    v28 = *(v0 + 224);
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);

    sub_1DF499628(v14, type metadata accessor for NetworkRequest);
    *v20 = *(v0 + 168);
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 72);
    LOBYTE(v6) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v21 = v23;
    *(v21 + 8) = v22;
    *(v21 + 16) = v25;
    *(v21 + 24) = v24;
    *(v21 + 32) = v26;
    *(v21 + 40) = v6;
    v27 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 264);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:
  v15 = *(v0 + 264);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);

  v27 = *(v0 + 8);
LABEL_10:

  return v27();
}

uint64_t sub_1DF4B2284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_1DF564104();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = sub_1DF5644C4();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v11 = type metadata accessor for NetworkRequest();
  v4[36] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B23D4, 0, 0);
}

uint64_t sub_1DF4B23D4()
{
  sub_1DF47E4CC(v0[29] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[29];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[36];
  v7 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v12 = v0[28];
  v11 = v0[29];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[38] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B2644;
  v28 = v0[37];

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B2644()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1DF4B2A10;
  }

  else
  {
    v3 = sub_1DF4B2758;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4B2758()
{
  sub_1DF47E4CC(*(v0 + 232) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 296);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 312);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = *(v0 + 240);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = sub_1DF564144();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    sub_1DF4BB408();
    sub_1DF564124();
    v14 = *(v0 + 296);
    v19 = *(v0 + 280);
    v30 = *(v0 + 256);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);

    sub_1DF499628(v14, type metadata accessor for NetworkRequest);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    *v20 = *(v0 + 168);
    *(v20 + 16) = v22;
    *(v20 + 24) = v23;
    v25 = *(v0 + 40);
    v24 = *(v0 + 48);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 72);
    LOBYTE(v6) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v21 = v25;
    *(v21 + 8) = v24;
    *(v21 + 16) = v27;
    *(v21 + 24) = v26;
    *(v21 + 32) = v28;
    *(v21 + 40) = v6;
    v29 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 296);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:
  v15 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);

  v29 = *(v0 + 8);
LABEL_10:

  return v29();
}

uint64_t sub_1DF4B2A10()
{
  sub_1DF499628(v0[37], type metadata accessor for NetworkRequest);
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF4B2AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1DF564104();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = sub_1DF5644C4();
  v4[29] = v8;
  v9 = *(v8 - 8);
  v4[30] = v9;
  v10 = *(v9 + 64) + 15;
  v4[31] = swift_task_alloc();
  v11 = type metadata accessor for NetworkRequest();
  v4[32] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B2C00, 0, 0);
}

uint64_t sub_1DF4B2C00()
{
  sub_1DF47E4CC(v0[25] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[25];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v12 = v0[24];
  v11 = v0[25];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B2E70;
  v28 = v0[33];

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B2E70()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1DF499528;
  }

  else
  {
    v3 = sub_1DF4B2F84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4B2F84()
{
  sub_1DF47E4CC(*(v0 + 200) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 264);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 280);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = sub_1DF564144();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    type metadata accessor for Ticket();
    sub_1DF4BB5F0(&qword_1ECE37B30, type metadata accessor for Ticket);
    sub_1DF564124();
    v14 = *(v0 + 264);
    v19 = *(v0 + 248);
    v28 = *(v0 + 224);
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);

    sub_1DF499628(v14, type metadata accessor for NetworkRequest);
    *v20 = *(v0 + 168);
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 72);
    LOBYTE(v10) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v21 = v23;
    *(v21 + 8) = v22;
    *(v21 + 16) = v25;
    *(v21 + 24) = v24;
    *(v21 + 32) = v26;
    *(v21 + 40) = v10;
    v27 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 264);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:
  v15 = *(v0 + 264);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);

  v27 = *(v0 + 8);
LABEL_10:

  return v27();
}

uint64_t sub_1DF4B3280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = sub_1DF564104();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v8 = sub_1DF5644C4();
  v4[32] = v8;
  v9 = *(v8 - 8);
  v4[33] = v9;
  v10 = *(v9 + 64) + 15;
  v4[34] = swift_task_alloc();
  v11 = type metadata accessor for NetworkRequest();
  v4[35] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B33D0, 0, 0);
}

uint64_t sub_1DF4B33D0()
{
  sub_1DF47E4CC(v0[28] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[28];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[35];
  v7 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v12 = v0[27];
  v11 = v0[28];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[37] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B3640;
  v28 = v0[36];

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B3640()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1DF4B3A00;
  }

  else
  {
    v3 = sub_1DF4B3754;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4B3754()
{
  sub_1DF47E4CC(*(v0 + 224) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 304);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 288);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 304);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = sub_1DF564144();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    sub_1DF4BB290();
    sub_1DF564124();
    v14 = *(v0 + 288);
    v19 = *(v0 + 272);
    v29 = *(v0 + 248);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);

    sub_1DF499628(v14, type metadata accessor for NetworkRequest);
    v22 = *(v0 + 184);
    *v20 = *(v0 + 168);
    v20[1] = v22;
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);
    v26 = *(v0 + 56);
    v25 = *(v0 + 64);
    v27 = *(v0 + 72);
    LOBYTE(v6) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v21 = v24;
    *(v21 + 8) = v23;
    *(v21 + 16) = v26;
    *(v21 + 24) = v25;
    *(v21 + 32) = v27;
    *(v21 + 40) = v6;
    v28 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 288);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:
  v15 = *(v0 + 288);
  v16 = *(v0 + 272);
  v17 = *(v0 + 248);

  v28 = *(v0 + 8);
LABEL_10:

  return v28();
}

uint64_t sub_1DF4B3A00()
{
  sub_1DF499628(v0[36], type metadata accessor for NetworkRequest);
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[31];

  v5 = v0[1];

  return v5();
}

id sub_1DF4B3AC0()
{
  v1 = type metadata accessor for InternalError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DF4BB338(v0, v4, type metadata accessor for InternalError);
  sub_1DF4BB5F0(&qword_1ECE37B18, type metadata accessor for InternalError);
  v5 = sub_1DF5650B4();
  if (v5)
  {
    v6 = v5;
    sub_1DF499628(v4, type metadata accessor for InternalError);
  }

  else
  {
    v6 = swift_allocError();
    sub_1DF4BB3A0(v4, v7, type metadata accessor for InternalError);
  }

  v8 = sub_1DF5642E4();

  v9 = [v8 domain];
  if (!v9)
  {
    sub_1DF564944();
    v9 = sub_1DF564914();
  }

  v10 = [v8 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  v12 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v13;
  v14 = [v8 localizedDescription];
  v15 = sub_1DF564944();
  v17 = v16;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  sub_1DF49A758(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE378E8, &unk_1DF5673D0);
  v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v19 = sub_1DF564864();

  v20 = [v18 initWithDomain:v9 code:v10 userInfo:v19];

  return v20;
}

id sub_1DF4B3DAC(char a1, void (*a2)(void))
{
  a2();
  v2 = sub_1DF5650B4();
  if (!v2)
  {
    v2 = swift_allocError();
    *v3 = a1;
  }

  v4 = v2;
  v5 = sub_1DF5642E4();

  v6 = [v5 domain];
  if (!v6)
  {
    sub_1DF564944();
    v6 = sub_1DF564914();
  }

  v7 = [v5 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  v9 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v10;
  v11 = [v5 localizedDescription];
  v12 = sub_1DF564944();
  v14 = v13;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  sub_1DF49A758(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE378E8, &unk_1DF5673D0);
  v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v16 = sub_1DF564864();

  v17 = [v15 initWithDomain:v6 code:v7 userInfo:v16];

  return v17;
}

uint64_t sub_1DF4B3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a8;
  v8[46] = v10;
  v8[43] = a6;
  v8[44] = a7;
  v8[41] = a4;
  v8[42] = a5;
  v8[39] = a2;
  v8[40] = a3;
  v8[38] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B3FE0, 0, 0);
}

uint64_t sub_1DF4B3FE0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v12 = *(v0 + 328);
  v13 = *(v0 + 360);
  sub_1DF47FCEC(*(v0 + 304), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 376) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B41E8;

  return sub_1DF4AE574(v0 + 256, v0 + 297, 2);
}

uint64_t sub_1DF4B41E8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;
  v5 = *(v2 + 264);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_1DF4B43A4;
  }

  else
  {

    v7 = sub_1DF4B433C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4B433C()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 297);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF4B43A4()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 384);

  return v1(0);
}

uint64_t sub_1DF4B440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = v10;
  v8[52] = v11;
  v8[49] = a7;
  v8[50] = a8;
  v8[47] = a5;
  v8[48] = a6;
  v8[45] = a3;
  v8[46] = a4;
  v8[43] = a1;
  v8[44] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B4444, 0, 0);
}

uint64_t sub_1DF4B4444()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v12 = *(v0 + 376);
  v13 = *(v0 + 408);
  sub_1DF47FCEC(*(v0 + 352), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B464C;

  return sub_1DF4AF020(v0 + 256, v0 + 304, 2);
}

uint64_t sub_1DF4B464C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;
  v5 = *(v2 + 264);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_1DF4B4824;
  }

  else
  {

    v7 = sub_1DF4B47A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4B47A0()
{
  v1 = *(v0 + 344);
  sub_1DF49A9F0(v0 + 16);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  *v1 = *(v0 + 304);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF4B4824()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 432);

  return v1();
}

uint64_t sub_1DF4B4888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a8;
  v8[47] = v10;
  v8[44] = a6;
  v8[45] = a7;
  v8[42] = a4;
  v8[43] = a5;
  v8[40] = a2;
  v8[41] = a3;
  v8[39] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B48C0, 0, 0);
}

uint64_t sub_1DF4B48C0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 368);
  sub_1DF47FCEC(*(v0 + 312), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B4AC4;

  return sub_1DF4AFACC(v0 + 256, v0 + 304, 2);
}

uint64_t sub_1DF4B4AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;
  v5 = *(v2 + 264);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_1DF49A6F4;
  }

  else
  {

    v7 = sub_1DF4B4C18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4B4C18()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 304);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF4B4C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = a8;
  v8[50] = v10;
  v8[47] = a6;
  v8[48] = a7;
  v8[45] = a4;
  v8[46] = a5;
  v8[43] = a2;
  v8[44] = a3;
  v8[42] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B4CB8, 0, 0);
}

uint64_t sub_1DF4B4CB8()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v12 = *(v0 + 360);
  v13 = *(v0 + 392);
  sub_1DF47FCEC(*(v0 + 336), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B4EC0;

  return sub_1DF4B0568(v0 + 256, v0 + 304, 2);
}

uint64_t sub_1DF4B4EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;
  v5 = *(v2 + 264);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_1DF4B5080;
  }

  else
  {

    v7 = sub_1DF4B5014;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4B5014()
{
  sub_1DF49A9F0((v0 + 2));
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t sub_1DF4B5080()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 416);

  return v1();
}

uint64_t sub_1DF4B50E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 384) = v11;
  *(v8 + 368) = v10;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 320) = a3;
  *(v8 + 328) = a4;
  *(v8 + 304) = a1;
  *(v8 + 312) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B5124, 0, 0);
}

uint64_t sub_1DF4B5124()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v13 = *(v0 + 344);
  v14 = *(v0 + 376);
  sub_1DF47FCEC(*(v0 + 320), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v13;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v14;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 392) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B532C;
  v11 = *(v0 + 312);

  return sub_1DF4ADBB8(v0 + 256, v11, 2);
}

uint64_t sub_1DF4B532C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 392);
  v5 = *v1;
  v3[50] = v0;
  v3[51] = v2[32];
  v3[52] = v2[33];
  *(v3 + 53) = *(v3 + 17);
  v3[55] = v2[36];
  *(v3 + 297) = *(v3 + 296);

  if (v0)
  {
    v6 = sub_1DF4B5538;
  }

  else
  {
    v6 = sub_1DF4B549C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4B549C()
{
  v1 = *(v0 + 297);
  v2 = *(v0 + 440);
  v6 = *(v0 + 408);
  v7 = *(v0 + 424);
  v3 = *(v0 + 304);
  sub_1DF49A9F0(v0 + 16);
  *v3 = v6;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF4B5538()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 400);

  return v1();
}

uint64_t sub_1DF4B559C()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExcessiveRequestDetector();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for DefaultsRecentRequestFetcher;
  v14[4] = &off_1F5A8CED0;
  sub_1DF564474();
  v13[3] = &type metadata for TapToRadarPoster;
  v13[4] = &protocol witness table for TapToRadarPoster;
  sub_1DF47FCEC(v14, v9);
  (*(v1 + 16))(&v9[v6[7]], v4, v0);
  *&v9[v6[8]] = 20;
  sub_1DF47FCEC(v13, &v9[v6[9]]);
  v10 = &v9[v6[10]];
  *v10 = sub_1DF47FD50;
  v10[1] = 0;
  has_internal_ui = os_variant_has_internal_ui();
  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  v9[v6[11]] = has_internal_ui;
  sub_1DF5574A0();
  return sub_1DF499628(v9, type metadata accessor for ExcessiveRequestDetector);
}

void sub_1DF4B578C()
{
  v0 = sub_1DF564104();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1DF564914();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {

    v8 = sub_1DF564914();

    v9 = [v7 dataForKey_];

    if (v9)
    {
      v10 = sub_1DF564374();
      v12 = v11;

      v13 = sub_1DF564144();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_1DF564134();
      (*(v1 + 104))(v4, *MEMORY[0x1E6967F30], v0);
      sub_1DF564114();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B40, &qword_1DF567E88);
      sub_1DF4BB53C();
      sub_1DF564124();

      sub_1DF48C308(v10, v12);
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED9550D8);
    v17 = sub_1DF564794();
    v18 = sub_1DF564C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DF47C000, v17, v18, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v19, 2u);
      MEMORY[0x1E12D75F0](v19, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }
}

void sub_1DF4B5BBC(void *a1@<X8>)
{
  v3 = sub_1DF564104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1DF564914();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {

    v11 = sub_1DF564914();

    v12 = [v10 dataForKey_];

    if (v12)
    {
      v26 = a1;
      v13 = sub_1DF564374();
      v15 = v14;

      v16 = sub_1DF564144();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_1DF564134();
      (*(v4 + 104))(v7, *MEMORY[0x1E6967F30], v3);
      sub_1DF564114();
      sub_1DF4B9780();
      sub_1DF564124();

      sub_1DF48C308(v13, v15);

      if (!v1)
      {
        *v26 = v27;
      }
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DF5647B4();
    __swift_project_value_buffer(v19, qword_1ED9550D8);
    v20 = sub_1DF564794();
    v21 = sub_1DF564C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DF47C000, v20, v21, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v22, 2u);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }
}

void sub_1DF4B5FF8(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X3>, void (*a4)(void)@<X4>, void *a5@<X8>)
{
  v33 = a2;
  v34 = a4;
  v31 = a5;
  v32 = a3;
  v6 = sub_1DF564104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = sub_1DF564914();
  v13 = [v11 initWithSuiteName_];

  if (v13)
  {

    v14 = sub_1DF564914();

    v15 = [v13 dataForKey_];

    if (v15)
    {
      v16 = sub_1DF564374();
      v18 = v17;

      v19 = sub_1DF564144();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      sub_1DF564134();
      (*(v7 + 104))(v10, *MEMORY[0x1E6967F30], v6);
      sub_1DF564114();
      v22 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, v33);
      sub_1DF4B9AA4(v32, a1, v22, v34);
      v23 = v35;
      sub_1DF564124();

      sub_1DF48C308(v16, v18);

      if (!v23)
      {
        *v31 = v36;
      }
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1DF5647B4();
    __swift_project_value_buffer(v24, qword_1ED9550D8);
    v25 = sub_1DF564794();
    v26 = sub_1DF564C34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DF47C000, v25, v26, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v27, 2u);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }
}

char *sub_1DF4B6410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DF4B656C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B58, &qword_1DF567EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37B60, &unk_1DF567EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DF4B66A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B48, &qword_1DF567E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B50, &qword_1DF567E98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DF4B680C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_1DF4B69E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38470, &qword_1DF56CF60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1DF4B6AF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A98, &qword_1DF567A40);
      v7 = *(type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1DF4B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1DF4B6E64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DF565094();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
        v6 = sub_1DF564AD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DF4B71F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DF4B6F90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF4B6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1DF4BB338(v24, v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      sub_1DF4BB338(v21, v14, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v25 = *(v8 + 20);
      v26 = sub_1DF564404();
      sub_1DF499628(v14, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      result = sub_1DF499628(v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1DF4BB3A0(v24, v37, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF4BB3A0(v27, v21, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4B71F4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1DF4B7B58(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1DF4B8128(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1DF4B809C(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_1DF4B8128(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1DF4BB338(v114 + v25 * v24, v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1DF4BB338(v27, v120, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v30 = *(v9 + 20);
      LODWORD(v115) = sub_1DF564404();
      sub_1DF499628(v29, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      result = sub_1DF499628(v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1DF4BB338(v32, v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v33 = v120;
        sub_1DF4BB338(v5, v120, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v34 = *(v121 + 20);
        v35 = sub_1DF564404() & 1;
        sub_1DF499628(v33, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        result = sub_1DF499628(v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1DF4BB3A0(v42 + v41, v111, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1DF4BB3A0(v111, v42 + v36, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1DF4BB338(v5, v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v96 = v120;
    sub_1DF4BB338(v93, v120, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v97 = *(v9 + 20);
    a4 = sub_1DF564404();
    sub_1DF499628(v96, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    result = sub_1DF499628(v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_1DF4A9F30(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_1DF4A9F30((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1DF4B7B58(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1DF4B8128(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_1DF4B809C(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent;
    v98 = v119;
    sub_1DF4BB3A0(v5, v119, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF4BB3A0(v98, v93, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1DF4B7B58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1DF4BB338(v33, v47, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          v35 = v48;
          sub_1DF4BB338(v29, v48, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          v36 = *(v31 + 20);
          v37 = sub_1DF564404();
          sub_1DF499628(v35, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          sub_1DF499628(v34, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1DF4BB338(a2, v47, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v22 = v48;
        sub_1DF4BB338(a4, v48, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v23 = *(v49 + 20);
        v24 = sub_1DF564404();
        sub_1DF499628(v22, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        sub_1DF499628(v21, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_1DF4B8154(&v52, &v51, &v50, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
  return 1;
}

uint64_t sub_1DF4B809C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF4B8128(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DF4B8154(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_1DF4B823C(uint64_t a1, uint64_t a2)
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
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1DF564DE4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

char *sub_1DF4B8394(void *a1)
{
  v2 = sub_1DF564494();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  result = [a1 statusCode];
  if ((result - 204) < 0xFFFFFFFFFFFFFFFCLL)
  {
    if (result == 460)
    {
      v11 = sub_1DF564914();
      v12 = [a1 valueForHTTPHeaderField_];

      if (v12)
      {
        if (qword_1ECE37868 != -1)
        {
          swift_once();
        }

        v13 = [qword_1ECE422C0 dateFromString_];

        if (v13)
        {
          sub_1DF564464();

          (*(v3 + 32))(v9, v7, v2);
          type metadata accessor for InternalError();
          sub_1DF4BB5F0(&qword_1ECE37B18, type metadata accessor for InternalError);
          swift_allocError();
          (*(v3 + 16))(v14, v9, v2);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return (*(v3 + 8))(v9, v2);
        }
      }

      sub_1DF4B3DAC(8, sub_1DF498474);
    }

    else if (result == 204)
    {
      type metadata accessor for InternalError();
      sub_1DF4BB5F0(&qword_1ECE37B18, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      ServerError.init(rawValue:)([a1 statusCode]);
      v15 = v20;
      if (v20 == 7)
      {
        v16 = [a1 statusCode];
        sub_1DF4B9A50();
        swift_allocError();
        *v17 = v16;
      }

      else
      {
        sub_1DF4B972C();
        swift_allocError();
        *v18 = v15;
      }
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF4B8748(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v6 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic(0);
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v9 = sub_1DF564494();
  v2[41] = v9;
  v10 = *(v9 - 8);
  v2[42] = v10;
  v11 = *(v10 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v12 = sub_1DF5644C4();
  v2[45] = v12;
  v13 = *(v12 - 8);
  v2[46] = v13;
  v14 = *(v13 + 64) + 15;
  v2[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B8934, 0, 0);
}

void sub_1DF4B8934()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[32];
  v5 = v0[33];
  sub_1DF5644B4();
  v7 = sub_1DF5644A4();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v11 = sub_1DF488298(8, v7, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E12D6280](v11, v13, v15, v17);
  v20 = v19;

  v0[48] = v18;
  v0[49] = v20;
  sub_1DF564484();
  sub_1DF55C880(v18, v20);
  sub_1DF4B9704(v6, v5);
  sub_1DF4E20B4(v6, v5, sub_1DF47FD50);
  sub_1DF4B9718(v6, v5);
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v22 = v0[32];
  v21 = v0[33];
  v0[50] = qword_1ED954B20;
  sub_1DF559EC4();
  v0[51] = v23;
  v0[22] = &type metadata for GatewayRequest;
  v0[23] = &off_1F5A87910;
  v24 = swift_allocObject();
  v0[19] = v24;
  *(v24 + 16) = v22;
  *(v24 + 24) = v21;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 1;

  sub_1DF4B9704(v22, v21);

  v25 = swift_task_alloc();
  v0[52] = v25;
  *v25 = v0;
  v25[1] = sub_1DF4B8BBC;

  JUMPOUT(0x1DF4B50E4);
}

uint64_t sub_1DF4B8BBC()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;
  v3[53] = v0;
  v3[54] = v2[8];
  v3[55] = v2[9];
  *(v3 + 28) = *(v3 + 5);
  v3[58] = v2[12];
  *(v3 + 106) = *(v3 + 104);

  if (v0)
  {
    v6 = v3[49];
    v7 = v3[50];

    v8 = sub_1DF4B93A4;
  }

  else
  {
    v9 = v3[50];

    __swift_destroy_boxed_opaque_existential_0(v3 + 19);
    v8 = sub_1DF4B8D58;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DF4B8D58()
{
  v73 = v0;
  v1 = *(v0 + 240);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v51 = *(v0 + 240);
    }

    v2 = sub_1DF564F04();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  v70 = v1;
  if (v2)
  {
    v71[0] = MEMORY[0x1E69E7CC0];
    v5 = (v2 & ~(v2 >> 63));

    sub_1DF4BCE50(0, v5, 0);
    if (v2 < 0)
    {
      __break(1u);
LABEL_31:
      sub_1DF4B6CC0(v5, v2, v6 - 100, (2 * v6) | 1, &qword_1ECE37A88, &unk_1DF567A30, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v53 = v52;

      v5 = v53;
      goto LABEL_24;
    }

    v7 = 0;
    v8 = *(v0 + 312);
    v62 = *(v0 + 304);
    v65 = *(v0 + 320);
    v9 = v1;
    v59 = v1 & 0xC000000000000001;
    v10 = v71[0];
    v68 = v2;
    do
    {
      if (v59)
      {
        v11 = MEMORY[0x1E12D66D0](v7, v9);
      }

      else
      {
        v11 = *(v9 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = *(v0 + 320);
      v14 = *&v11[OBJC_IVAR___CloudFeature_featureID];
      v15 = *&v11[OBJC_IVAR___CloudFeature_featureID + 8];
      v16 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      LOBYTE(v16) = v12[v16];
      v17 = OBJC_IVAR___CloudFeature_ttl;
      swift_beginAccess();
      sub_1DF47E4CC(&v12[v17], v13 + *(v62 + 24), &qword_1ECE37A10, &qword_1DF567C00);

      *v13 = v14;
      *(v65 + 8) = v15;
      *(v65 + 16) = v16;
      v71[0] = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DF4BCE50(v18 > 1, v19 + 1, 1);
        v10 = v71[0];
      }

      v20 = *(v0 + 320);
      ++v7;
      *(v10 + 16) = v19 + 1;
      sub_1DF4BB3A0(v20, v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
      v9 = v70;
    }

    while (v68 != v7);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v0 + 424);
  v22 = *(v0 + 344);
  sub_1DF564474();
  sub_1DF4B5FF8(&qword_1ECE37AE0, &qword_1DF567D78, &qword_1ECE374F0, sub_1DF4B9780, v71);
  if (v21)
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  else if (v71[0])
  {
    v23 = v71[0];
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v0 + 106);
  v63 = *(v0 + 464);
  v57 = *(v0 + 432);
  v60 = *(v0 + 448);
  v25 = *(v0 + 384);
  v24 = *(v0 + 392);
  v27 = *(v0 + 344);
  v26 = *(v0 + 352);
  v28 = *(v0 + 328);
  v29 = *(v0 + 336);
  v30 = *(v0 + 296);
  v69 = v0;
  v31 = *(v0 + 272);
  v32 = *(v29 + 16);
  v32(&v30[v31[5]], v26, v28);
  v32(&v30[v31[8]], v27, v28);
  *v30 = v25;
  *(v30 + 1) = v24;
  v33 = &v30[v31[6]];
  *v33 = v57;
  *(v33 + 1) = v60;
  *(v33 + 4) = v63;
  v33[40] = v66;
  *&v30[v31[7]] = v10;

  v5 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DF4AA034(0, v23[2] + 1, 1, v23);
  }

  v35 = v5[2];
  v34 = v5[3];
  v0 = v69;
  if (v35 >= v34 >> 1)
  {
    v5 = sub_1DF4AA034(v34 > 1, v35 + 1, 1, v5);
  }

  v36 = *(v69 + 296);
  v37 = *(v69 + 280);
  v5[2] = v35 + 1;
  v2 = v5 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  sub_1DF4BB3A0(v36, v2 + *(v37 + 72) * v35, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
  v71[0] = v2;
  v71[1] = v35 + 1;
  sub_1DF4B6E64(v71);
  v6 = v5[2];
  if (v6 >= 0x65)
  {
    goto LABEL_31;
  }

LABEL_24:
  v72[0] = 1;
  *(v0 + 40) = &type metadata for FeatureRequestFinishDiagnostic;
  *(v0 + 48) = sub_1DF4B9780();
  *(v0 + 56) = sub_1DF4B97D4();
  *(v0 + 16) = v5;
  sub_1DF55D5F0(v72, (v0 + 16));
  v38 = *(v0 + 106);
  v54 = *(v0 + 432);
  v55 = *(v0 + 448);
  v39 = *(v0 + 408);
  v58 = *(v0 + 376);
  v40 = *(v0 + 344);
  v41 = *(v0 + 352);
  v56 = *(v0 + 464);
  v43 = *(v0 + 328);
  v42 = *(v0 + 336);
  v61 = *(v0 + 320);
  v64 = *(v0 + 296);
  v67 = *(v0 + 288);
  v45 = *(v0 + 256);
  v44 = *(v0 + 264);

  v46 = *(v42 + 8);
  v46(v40, v43);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  LOBYTE(v71[0]) = v38;
  *(v0 + 136) = &type metadata for FeatureNetworkingFinishEvent;
  *(v0 + 144) = &off_1F5A8DC98;
  v47 = swift_allocObject();
  *(v0 + 112) = v47;
  *(v47 + 16) = v45;
  *(v47 + 24) = v44;
  *(v47 + 32) = v54;
  *(v47 + 48) = v55;
  *(v47 + 64) = v56;
  *(v47 + 72) = v71[0];
  *(v47 + 80) = v39;
  *(v47 + 88) = 0;
  v48 = __swift_project_boxed_opaque_existential_0((v0 + 112), &type metadata for FeatureNetworkingFinishEvent);
  sub_1DF4B9704(v45, v44);
  sub_1DF5636DC(v48, sub_1DF47FD50, 0, &type metadata for FeatureNetworkingFinishEvent, &off_1F5A8DC98);
  v46(v41, v43);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_1DF4B559C();

  v49 = *(v0 + 8);

  return v49(v70);
}

uint64_t sub_1DF4B93A4()
{
  v1 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 105);
    v4 = qword_1DF568040[v3];
    v5 = *(v0 + 408);
    v6 = *(v0 + 336);
    v37 = *(v0 + 328);
    v38 = *(v0 + 352);
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    sub_1DF4B972C();
    v9 = swift_allocError();
    *v10 = v3;
    sub_1DF4B9704(v8, v7);
    v11 = sub_1DF5642E4();

    *(v0 + 136) = &type metadata for FeatureNetworkingFinishEvent;
    *(v0 + 144) = &off_1F5A8DC98;
    v12 = swift_allocObject();
    *(v0 + 112) = v12;
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    *(v12 + 64) = v4;
    *(v12 + 72) = 0;
    *(v12 + 73) = *v39;
    *(v12 + 76) = *&v39[3];
    *(v12 + 80) = v5;
    *(v12 + 88) = v11;
    swift_allocError();
    *v13 = v3;
    swift_willThrow();

    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 112), v14);
    sub_1DF5636DC(v16, sub_1DF47FD50, 0, v14, v15);
    (*(v6 + 8))(v38, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    sub_1DF4B559C();
  }

  else
  {
    v17 = *(v0 + 408);
    v18 = *(v0 + 352);
    v19 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);

    sub_1DF4B9704(v22, v21);
    v23 = sub_1DF5642E4();
    *(v0 + 136) = &type metadata for FeatureNetworkingFinishEvent;
    *(v0 + 144) = &off_1F5A8DC98;
    v24 = swift_allocObject();
    *(v0 + 112) = v24;
    *(v24 + 16) = v22;
    *(v24 + 24) = v21;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0xE000000000000000;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0xE000000000000000;
    *(v24 + 64) = -1;
    *(v24 + 72) = 0;
    *(v24 + 80) = v17;
    *(v24 + 88) = v23;
    swift_willThrow();
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = __swift_project_boxed_opaque_existential_0((v0 + 112), v25);
    sub_1DF5636DC(v27, sub_1DF47FD50, 0, v25, v26);
    (*(v20 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    sub_1DF4B559C();
    v28 = *(v0 + 424);
  }

  v29 = *(v0 + 376);
  v31 = *(v0 + 344);
  v30 = *(v0 + 352);
  v32 = *(v0 + 320);
  v34 = *(v0 + 288);
  v33 = *(v0 + 296);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DF4B9704(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DF4B9718(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1DF4B972C()
{
  result = qword_1ECE37778;
  if (!qword_1ECE37778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37778);
  }

  return result;
}

unint64_t sub_1DF4B9780()
{
  result = qword_1ECE374F8;
  if (!qword_1ECE374F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374F8);
  }

  return result;
}

unint64_t sub_1DF4B97D4()
{
  result = qword_1ECE37500;
  if (!qword_1ECE37500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37500);
  }

  return result;
}

unint64_t sub_1DF4B9828()
{
  result = qword_1ECE37AD8;
  if (!qword_1ECE37AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37AD8);
  }

  return result;
}

unint64_t sub_1DF4B987C()
{
  result = qword_1ED954670;
  if (!qword_1ED954670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED954670);
  }

  return result;
}

unint64_t sub_1DF4B991C()
{
  result = qword_1ED9546A8;
  if (!qword_1ED9546A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37B08, &unk_1DF567DB0);
    sub_1DF4BB5F0(&unk_1ED955110, type metadata accessor for CloudFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546A8);
  }

  return result;
}

_BYTE *sub_1DF4B99D0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
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

unint64_t sub_1DF4B9A50()
{
  result = qword_1ECE37B10;
  if (!qword_1ECE37B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37B10);
  }

  return result;
}

uint64_t sub_1DF4B9AA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF4B9B20()
{
  result = qword_1ECE37598;
  if (!qword_1ECE37598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37598);
  }

  return result;
}

void sub_1DF4B9B90()
{
  MEMORY[0x1E12D62C0](0xD000000000000012, 0x80000001DF5714F0);
  v0[7] = 0xEB000000002E7265;
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v0[8] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v1 = swift_allocObject();
  v0[2] = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 5;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DF4B9D44;

  JUMPOUT(0x1DF4B3FA8);
}

uint64_t sub_1DF4B9D44(char a1)
{
  v4 = *v2;
  v5 = (*v2)[9];
  v6 = *v2;
  (*v2)[10] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4B9EB4, 0, 0);
  }

  else
  {
    v7 = v4[7];
    v8 = v4[8];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v9 = v6[1];

    return v9(a1 & 1);
  }
}

uint64_t sub_1DF4B9EB4()
{
  v1 = v0[7];
  v2 = v0[8];
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];
  v4 = v0[10];

  return v3(0);
}

unint64_t sub_1DF4B9F30()
{
  result = qword_1ED954930;
  if (!qword_1ED954930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954930);
  }

  return result;
}

uint64_t sub_1DF4B9F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B9FA8, 0, 0);
}

void sub_1DF4B9FA8()
{
  v1 = v0[14];
  if (qword_1ED954B18 != -1)
  {
    swift_once();
    v5 = v0[14];
  }

  v2 = v0[13];
  v0[15] = qword_1ED954B20;
  v0[10] = &type metadata for GatewayRequest;
  v0[11] = &off_1F5A87910;
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 2;

  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1DF4BA140;

  JUMPOUT(0x1DF4B440CLL);
}

uint64_t sub_1DF4BA140()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BA29C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 96);

    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
    v6 = *(v3 + 16);
    v7 = *(v3 + 32);
    *(v5 + 32) = *(v3 + 48);
    *v5 = v6;
    *(v5 + 16) = v7;
    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_1DF4BA29C()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_1DF4BA308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BA32C, 0, 0);
}

void sub_1DF4BA32C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  strcpy(v11, "TicketStatus_");
  HIWORD(v11[1]) = -4864;

  MEMORY[0x1E12D62C0](v2, v3);
  v4 = v11[0];
  v5 = v11[1];
  strcpy(v11, "RetryAfter.");
  HIDWORD(v11[1]) = -352321536;
  MEMORY[0x1E12D62C0](v4, v5);

  v0[11] = v11[1];
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v0[12] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v9 = swift_allocObject();
  v0[2] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = 3;

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1DF4BA538;
  v13 = &off_1F5A86FD0;

  JUMPOUT(0x1DF4B4888);
}

uint64_t sub_1DF4BA538(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[13];
  v6 = *v2;
  (*v2)[14] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BA6A8, 0, 0);
  }

  else
  {
    v7 = v4[11];
    v8 = v4[12];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v9 = v6[1];

    return v9(a1);
  }
}

uint64_t sub_1DF4BA6A8()
{
  v1 = v0[11];
  v2 = v0[12];
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1DF4BA720(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BA740, 0, 0);
}

void sub_1DF4BA740()
{
  v1 = v0[8];
  MEMORY[0x1E12D62C0](v0[7], v1);
  MEMORY[0x1E12D62C0](0x656B636954746547, 0xEA00000000005F74);

  v0[9] = 0xEB000000002E7265;
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v0[10] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v4 = swift_allocObject();
  v0[2] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 4;

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1DF4BA92C;

  JUMPOUT(0x1DF4B4888);
}

uint64_t sub_1DF4BA92C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[11];
  v6 = *v2;
  (*v2)[12] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BAA9C, 0, 0);
  }

  else
  {
    v7 = v4[9];
    v8 = v4[10];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v9 = v6[1];

    return v9(a1);
  }
}

uint64_t sub_1DF4BAA9C()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1DF4BAB14(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BAB34, 0, 0);
}

void sub_1DF4BAB34()
{
  v1 = v0[8];
  MEMORY[0x1E12D62C0](v0[7], v1);
  MEMORY[0x1E12D62C0](0x656B636954746547, 0xEA00000000005F74);

  v0[9] = 0xEB000000002E7265;
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v0[10] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v4 = swift_allocObject();
  v0[2] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 4;

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1DF4BAD20;

  JUMPOUT(0x1DF4B4C80);
}

uint64_t sub_1DF4BAD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = (*v5)[11];
  v12 = *v5;
  (*v5)[12] = v4;

  if (v4)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BAA9C, 0, 0);
  }

  else
  {
    v13 = v10[9];
    v14 = v10[10];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
    v15 = v12[1];

    return v15(a1, a2, a3, a4);
  }
}

uint64_t sub_1DF4BAEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BAEE4, 0, 0);
}

void sub_1DF4BAEE4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  strcpy(v11, "TicketStatus_");
  HIWORD(v11[1]) = -4864;

  MEMORY[0x1E12D62C0](v2, v3);
  v4 = v11[0];
  v5 = v11[1];
  strcpy(v11, "RetryAfter.");
  HIDWORD(v11[1]) = -352321536;
  MEMORY[0x1E12D62C0](v4, v5);

  v0[11] = v11[1];
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v0[12] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v9 = swift_allocObject();
  v0[2] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = 3;

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1DF4BB0F0;
  v13 = &off_1F5A86FD0;

  JUMPOUT(0x1DF4B4C80);
}

uint64_t sub_1DF4BB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = (*v5)[13];
  v12 = *v5;
  (*v5)[14] = v4;

  if (v4)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BA6A8, 0, 0);
  }

  else
  {
    v13 = v10[11];
    v14 = v10[12];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
    v15 = v12[1];

    return v15(a1, a2, a3, a4);
  }
}

unint64_t sub_1DF4BB290()
{
  result = qword_1ECE376E8;
  if (!qword_1ECE376E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376E8);
  }

  return result;
}

unint64_t sub_1DF4BB2E4()
{
  result = qword_1ECE37B28;
  if (!qword_1ECE37B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37B28);
  }

  return result;
}

uint64_t sub_1DF4BB338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF4BB3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DF4BB408()
{
  result = qword_1ECE376C8;
  if (!qword_1ECE376C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376C8);
  }

  return result;
}

unint64_t sub_1DF4BB45C()
{
  result = qword_1ED9546B0;
  if (!qword_1ED9546B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37B38, &qword_1DF567E80);
    sub_1DF4BB4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546B0);
  }

  return result;
}

unint64_t sub_1DF4BB4E8()
{
  result = qword_1ED954C28;
  if (!qword_1ED954C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C28);
  }

  return result;
}

unint64_t sub_1DF4BB53C()
{
  result = qword_1ED954778;
  if (!qword_1ED954778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37B40, &qword_1DF567E88);
    sub_1DF4BB5F0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954778);
  }

  return result;
}

uint64_t sub_1DF4BB5F0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1DF4BB67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1DF4BB6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF4BB78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF4BB7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF4BB834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37BC0, &qword_1DF5682F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BD46C();
  sub_1DF5652A4();
  LOBYTE(v19) = 0;
  sub_1DF565024();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    type metadata accessor for TicketStatus();
    sub_1DF4BCB98(&qword_1ECE37770);
    sub_1DF565074();
    v19 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
    sub_1DF4BCBDC(&qword_1ECE37470);
    sub_1DF565074();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DF4BBA5C()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74656B636974;
  }
}

uint64_t sub_1DF4BBAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4BCEF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4BBADC(uint64_t a1)
{
  v2 = sub_1DF4BD46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4BBB18(uint64_t a1)
{
  v2 = sub_1DF4BD46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4BBB54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DF4BD008(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t WaitlistResult.ticket.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8);

  return v1;
}

char *WaitlistResult.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for TicketStatus();
  v4 = sub_1DF564CB4();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_1DF4BC0E0();
  v6 = sub_1DF564CC4();
  if (!v6)
  {

LABEL_6:
    type metadata accessor for WaitlistResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = sub_1DF564CB4();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1DF564944();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v14 = &v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
  *v14 = v10;
  v14[1] = v12;
  *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v5;
  if (!(v7 >> 62))
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_23:

    v17 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v17;
    v37.receiver = v2;
    v37.super_class = type metadata accessor for WaitlistResult();
    v34 = objc_msgSendSuper2(&v37, sel_init);

    return v34;
  }

  v15 = sub_1DF564F04();
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_10:
  v38 = MEMORY[0x1E69E7CC0];
  v16 = v5;
  result = sub_1DF4BCB24(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v35 = v16;
    v36 = v2;
    v17 = v38;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        MEMORY[0x1E12D66D0](v18, v7);
        v19 = sub_1DF564944();
        v21 = v20;
        swift_unknownObjectRelease();
        v38 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DF4BCB24((v22 > 1), v23 + 1, 1);
          v17 = v38;
        }

        ++v18;
        *(v17 + 16) = v23 + 1;
        v24 = v17 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v15 != v18);
    }

    else
    {
      v25 = (v7 + 32);
      do
      {
        v26 = *v25;
        v27 = sub_1DF564944();
        v38 = v17;
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        if (v30 >= v29 >> 1)
        {
          v32 = v27;
          v33 = v28;
          sub_1DF4BCB24((v29 > 1), v30 + 1, 1);
          v28 = v33;
          v27 = v32;
          v17 = v38;
        }

        *(v17 + 16) = v30 + 1;
        v31 = v17 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        ++v25;
        --v15;
      }

      while (v15);
    }

    v2 = v36;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF4BC0E0()
{
  result = qword_1ED9560A0;
  if (!qword_1ED9560A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9560A0);
  }

  return result;
}

void sub_1DF4BC154(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
    v4 = sub_1DF564914();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1DF564914();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
  v7 = sub_1DF564914();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs);
  v9 = sub_1DF564A94();
  v10 = sub_1DF564914();
  [a1 encodeObject:v9 forKey:v10];
}

id WaitlistResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DF4BC390()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x4965727574616566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74656B636974;
  }
}

uint64_t sub_1DF4BC3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4BD2BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4BC410(uint64_t a1)
{
  v2 = sub_1DF4BCB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4BC44C(uint64_t a1)
{
  v2 = sub_1DF4BCB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id WaitlistResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaitlistResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4BC51C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B90, &unk_1DF568080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BCB44();
  sub_1DF5652A4();
  v11 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
  v12 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8);
  LOBYTE(v15) = 0;
  sub_1DF565024();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    HIBYTE(v14) = 1;
    type metadata accessor for TicketStatus();
    sub_1DF4BCB98(&qword_1ECE37770);
    sub_1DF565074();
    v15 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
    sub_1DF4BCBDC(&qword_1ECE37470);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v9, v5);
}

id WaitlistResult.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37B98, &qword_1DF568090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BCB44();
  sub_1DF565284();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for WaitlistResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v11 = sub_1DF564F84();
    v13 = &v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
    *v13 = v11;
    v13[1] = v14;
    type metadata accessor for TicketStatus();
    v18 = 1;
    sub_1DF4BCB98(&qword_1ED954B30);
    sub_1DF564FE4();
    *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
    v18 = 2;
    sub_1DF4BCBDC(&qword_1ED954678);
    sub_1DF564FE4();
    *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v19;
    v15 = type metadata accessor for WaitlistResult();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_1DF4BCAAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WaitlistResult());
  result = WaitlistResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1DF4BCB24(char *a1, int64_t a2, char a3)
{
  result = sub_1DF4B6410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1DF4BCB44()
{
  result = qword_1ED954AF8;
  if (!qword_1ED954AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954AF8);
  }

  return result;
}

uint64_t sub_1DF4BCB98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TicketStatus();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4BCBDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37A30, &qword_1DF5676D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF4BCD2C()
{
  result = qword_1ECE37BA8;
  if (!qword_1ECE37BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37BA8);
  }

  return result;
}

unint64_t sub_1DF4BCD84()
{
  result = qword_1ED954AE0;
  if (!qword_1ED954AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954AE0);
  }

  return result;
}

unint64_t sub_1DF4BCDDC()
{
  result = qword_1ED954AE8;
  if (!qword_1ED954AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954AE8);
  }

  return result;
}

size_t sub_1DF4BCE30(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF4B651C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF4BCE50(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF4B6544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF4BCE70(void *a1, int64_t a2, char a3)
{
  result = sub_1DF4B656C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF4BCE90(void *a1, int64_t a2, char a3)
{
  result = sub_1DF4B66A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF4BCEB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF4B67E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF4BCED0(char *a1, int64_t a2, char a3)
{
  result = sub_1DF4B69E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF4BCEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656B636974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF5716C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF4BD008(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37BB0, &qword_1DF5682E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BD46C();
  sub_1DF565284();
  LOBYTE(v12) = 0;
  v9 = sub_1DF564F84();
  type metadata accessor for TicketStatus();
  v11 = 1;
  sub_1DF4BCB98(&qword_1ED954B30);
  sub_1DF564FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  v11 = 2;
  sub_1DF4BCBDC(&qword_1ED954678);
  v10 = 0;
  sub_1DF564FE4();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1DF4BD2BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656B636974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4965727574616566 && a2 == 0xEA00000000007344)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF4BD3D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF4BD41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF4BD46C()
{
  result = qword_1ECE37708;
  if (!qword_1ECE37708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37708);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Availability.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Availability.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF4BD614()
{
  result = qword_1ECE37BC8;
  if (!qword_1ECE37BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37BC8);
  }

  return result;
}

unint64_t sub_1DF4BD66C()
{
  result = qword_1ECE376F0;
  if (!qword_1ECE376F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376F0);
  }

  return result;
}

unint64_t sub_1DF4BD6C4()
{
  result = qword_1ECE376F8;
  if (!qword_1ECE376F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376F8);
  }

  return result;
}

uint64_t sub_1DF4BD73C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5265727574616566;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xEE00747365757165;
    }

    else
    {
      v4 = 0x80000001DF570B60;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x74657373416D6661;
    v4 = 0xE900000000000073;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x74657373416D6461;
    }

    else
    {
      v3 = 0x656C655465726F63;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000073;
    }

    else
    {
      v4 = 0xED0000796E6F6870;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x5265727574616566;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v7 = 0xEE00747365757165;
    }

    else
    {
      v7 = 0x80000001DF570B60;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 2)
  {
    v5 = 0x74657373416D6661;
LABEL_29:
    v7 = 0xE900000000000073;
    if (v3 != v5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v5 = 0x74657373416D6461;
    goto LABEL_29;
  }

  v7 = 0xED0000796E6F6870;
  if (v3 != 0x656C655465726F63)
  {
LABEL_34:
    v8 = sub_1DF5650D4();
    goto LABEL_35;
  }

LABEL_32:
  if (v4 != v7)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_1DF4BD908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007965;
  v3 = 0x4B65727574616566;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C69546568636163;
    }

    else
    {
      v5 = 0x4B65727574616566;
    }

    if (v4)
    {
      v6 = 0xE90000000000006CLL;
    }

    else
    {
      v6 = 0xEA00000000007965;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x6573556E6163;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74696D696CLL;
    }

    else
    {
      v5 = 0x6F54737365636361;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB000000006E656BLL;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573556E6163;
  v9 = 0xE500000000000000;
  v10 = 0x74696D696CLL;
  if (a2 != 3)
  {
    v10 = 0x6F54737365636361;
    v9 = 0xEB000000006E656BLL;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6C69546568636163;
    v2 = 0xE90000000000006CLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DF5650D4();
  }

  return v13 & 1;
}

uint64_t CloudFeature.featureID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CloudFeature_featureID);
  v2 = *(v0 + OBJC_IVAR___CloudFeature_featureID + 8);

  return v1;
}

uint64_t CloudFeature.canUse.getter()
{
  v1 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CloudFeature.accessToken.getter()
{
  v1 = (v0 + OBJC_IVAR___CloudFeature_accessToken);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CloudFeature.ttl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CloudFeature_ttl;
  swift_beginAccess();
  return sub_1DF47E4CC(v1 + v3, a1, &qword_1ECE37A10, &qword_1DF567C00);
}

id CloudFeature.__allocating_init(id:canUse:limit:accessToken:ttl:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_allocWithZone(v8);
  v15 = &v14[OBJC_IVAR___CloudFeature_limit];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v14[OBJC_IVAR___CloudFeature_accessToken];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___CloudFeature_ttl;
  v18 = sub_1DF564494();
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v14[OBJC_IVAR___CloudFeature_canUse] = a3;
  v19 = &v14[OBJC_IVAR___CloudFeature_featureID];
  *v19 = a1;
  v19[1] = a2;
  swift_beginAccess();
  *v15 = a4;
  v15[8] = a5 & 1;
  swift_beginAccess();
  *v16 = a6;
  v16[1] = a7;
  swift_beginAccess();
  sub_1DF4BEC40(a8, &v14[v17]);
  swift_endAccess();
  v25.receiver = v14;
  v25.super_class = v8;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  sub_1DF47E5B4(a8, &qword_1ECE37A10, &qword_1DF567C00);
  return v20;
}

id CloudFeature.init(id:canUse:limit:accessToken:ttl:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v15 = &v8[OBJC_IVAR___CloudFeature_limit];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v8[OBJC_IVAR___CloudFeature_accessToken];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___CloudFeature_ttl;
  v18 = sub_1DF564494();
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  v8[OBJC_IVAR___CloudFeature_canUse] = a3;
  v19 = &v8[OBJC_IVAR___CloudFeature_featureID];
  *v19 = a1;
  v19[1] = a2;
  swift_beginAccess();
  *v15 = a4;
  v15[8] = a5 & 1;
  swift_beginAccess();
  *v16 = a6;
  v16[1] = a7;
  swift_beginAccess();
  sub_1DF4BEC40(a8, &v8[v17]);
  swift_endAccess();
  v25.receiver = v8;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  sub_1DF47E5B4(a8, &qword_1ECE37A10, &qword_1DF567C00);
  return v20;
}

uint64_t sub_1DF4BE01C()
{
  v1 = *v0;
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF4BE108()
{
  *v0;
  *v0;
  *v0;
  sub_1DF5649E4();
}

uint64_t sub_1DF4BE1E0()
{
  v1 = *v0;
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF4BE2C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF4BF2F0();
  *a2 = result;
  return result;
}

void sub_1DF4BE2F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007965;
  v4 = 0x4B65727574616566;
  v5 = 0xE600000000000000;
  v6 = 0x6573556E6163;
  v7 = 0xE500000000000000;
  v8 = 0x74696D696CLL;
  if (v2 != 3)
  {
    v8 = 0x6F54737365636361;
    v7 = 0xEB000000006E656BLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69546568636163;
    v3 = 0xE90000000000006CLL;
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

uint64_t sub_1DF4BE3A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF4BF2F0();
  *a1 = result;
  return result;
}

uint64_t sub_1DF4BE3D4(uint64_t a1)
{
  v2 = sub_1DF48C0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4BE410(uint64_t a1)
{
  v2 = sub_1DF48C0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudFeature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37C60, &unk_1DF568410);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF48C0D4();
  sub_1DF5652A4();
  v14 = *(v2 + OBJC_IVAR___CloudFeature_featureID);
  v15 = *(v2 + OBJC_IVAR___CloudFeature_featureID + 8);
  v33 = 0;
  v16 = v29;
  sub_1DF565054();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v18 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v32 = 2;
  sub_1DF565064();
  v20 = OBJC_IVAR___CloudFeature_ttl;
  swift_beginAccess();
  v29 = v2;
  sub_1DF47E4CC(v2 + v20, v7, &qword_1ECE37A10, &qword_1DF567C00);
  v31 = 1;
  sub_1DF4BECF8();
  sub_1DF565074();
  sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
  v21 = v29;
  v22 = (v29 + OBJC_IVAR___CloudFeature_limit);
  swift_beginAccess();
  v23 = *v22;
  v24 = *(v22 + 8);
  v30 = 3;
  sub_1DF565034();
  v25 = (v21 + OBJC_IVAR___CloudFeature_accessToken);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v34 = 4;

  sub_1DF565024();
  (*(v9 + 8))(v12, v8);
}

uint64_t CloudFeature.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1DF47E4CC(a1, v7, &qword_1ECE378F0, &qword_1DF5686F0);
  if (!v8)
  {
    sub_1DF47E5B4(v7, &qword_1ECE378F0, &qword_1DF5686F0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___CloudFeature_featureID) == *&v6[OBJC_IVAR___CloudFeature_featureID] && *(v1 + OBJC_IVAR___CloudFeature_featureID + 8) == *&v6[OBJC_IVAR___CloudFeature_featureID + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1DF5650D4();
  }

  return v4 & 1;
}

id CloudFeature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CloudFeature.status.getter()
{
  v1 = *(v0 + OBJC_IVAR___CloudFeature_featureID);
  v2 = *(v0 + OBJC_IVAR___CloudFeature_featureID + 8);
  v3 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = v0 + OBJC_IVAR___CloudFeature_limit;
  swift_beginAccess();
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 2;
  }

  if (v4)
  {
    v7 = *(v5 + 8) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (qword_1ED955E70 != -1)
    {
      swift_once();
    }

    return sub_1DF4BEB48(v1, v2, qword_1ED955E80) & 1;
  }

  return result;
}

uint64_t _s25CloudSubscriptionFeatures0A7FeatureC5limitSiSgvg_0()
{
  v1 = (v0 + OBJC_IVAR___CloudFeature_limit);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DF4BEB08()
{
  v0 = sub_1DF552A0C(&unk_1F5A88468);
  result = sub_1DF4BF4C8(&unk_1F5A88488);
  qword_1ED955E80 = v0;
  return result;
}

uint64_t sub_1DF4BEB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DF565234();
  sub_1DF5649E4();
  v7 = sub_1DF565264();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DF5650D4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DF4BEC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4BECB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DF4BECF8()
{
  result = qword_1ED954C98;
  if (!qword_1ED954C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF48C1CC(&qword_1ED955120, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C98);
  }

  return result;
}

uint64_t FeatureStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C62616C69617641;
    }

    if (a1 == 1)
    {
      return 0x6574696D696C6E55;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x616C696176616E55;
      case 3:
        return 0xD000000000000016;
      case 4:
        return 0x656E696665646E55;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1DF4BEF84()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6C62616C69617641;
    }

    if (v1 == 1)
    {
      return 0x6574696D696C6E55;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x616C696176616E55;
      case 3:
        return 0xD000000000000016;
      case 4:
        return 0x656E696665646E55;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1DF4BF050(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12D66D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = &v4[OBJC_IVAR___CloudFeature_featureID];
      v8 = *&v4[OBJC_IVAR___CloudFeature_featureID];
      v9 = *v7 == 0x6C6C2E64756F6C63 && *(v7 + 1) == 0xE90000000000006DLL;
      if (v9 || (sub_1DF5650D4() & 1) != 0)
      {
        v10 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        v11 = v5[v10];

        return v11;
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t sub_1DF4BF1A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12D66D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = &v4[OBJC_IVAR___CloudFeature_featureID];
      v8 = *&v4[OBJC_IVAR___CloudFeature_featureID];
      v9 = *v7 == 0xD000000000000018 && 0x80000001DF5707C0 == *(v7 + 1);
      if (v9 || (sub_1DF5650D4() & 1) != 0)
      {
        v10 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        v11 = v5[v10];

        return v11;
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t sub_1DF4BF2F0()
{
  v0 = sub_1DF564F54();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DF4BF3C4()
{
  result = qword_1ECE37C70;
  if (!qword_1ECE37C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37C70);
  }

  return result;
}

unint64_t sub_1DF4BF41C()
{
  result = qword_1ED9558E8;
  if (!qword_1ED9558E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558E8);
  }

  return result;
}

unint64_t sub_1DF4BF474()
{
  result = qword_1ED9558F0;
  if (!qword_1ED9558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558F0);
  }

  return result;
}

uint64_t sub_1DF4BF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DF47E4CC(a3, v27 - v11, &unk_1ECE383B0, &qword_1DF568C10);
  v13 = sub_1DF564B44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DF47E5B4(v12, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DF564B04();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DF5649B4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DF4BF824()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v1);
  v3 = (*(v2 + 80))(0xD000000000000029, 0x80000001DF570A10, v1, v2);
  if (v3 && (v4 = aOptedInBuddy[0], v5 = aOptedInBuddy[1], , v6 = sub_1DF480420(v4, v5), v8 = v7, , (v8 & 1) != 0))
  {
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1DF4C27BC();
    }

    v9 = *(*(v3 + 48) + 16 * v6 + 8);

    sub_1DF49A88C((*(v3 + 56) + 32 * v6), &v17);
    sub_1DF4C260C(v6, v3);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  sub_1DF47E5B4(&v17, &qword_1ECE378F0, &qword_1DF5686F0);
  if (v3 && (v10 = qword_1F5A88560, v11 = unk_1F5A88568, , v12 = sub_1DF480420(v10, v11), v14 = v13, , (v14 & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DF4C27BC();
    }

    v15 = *(*(v3 + 48) + 16 * v12 + 8);

    sub_1DF49A88C((*(v3 + 56) + 32 * v12), &v17);
    sub_1DF4C260C(v12, v3);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  sub_1DF47E5B4(&v17, &qword_1ECE378F0, &qword_1DF5686F0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1DF4BFA44()
{
  v1 = v0;
  if ((sub_1DF548FD8() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1ED9562B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9562C0;
  v3 = sub_1DF564914();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if (v2)
  {
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED956048);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v5, v6, "GMBypass is enabled for opt-in, returning true", v7, 2u);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
LABEL_10:
    v9 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults);
    v10 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
    __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24));
    v11 = sub_1DF4C33D8();
    (*(v10 + 48))(v20, v11);

    v12 = v20[3];
    sub_1DF47E5B4(v20, &qword_1ECE378F0, &qword_1DF5686F0);
    if (v12)
    {
      v13 = v9[4];
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      v14 = sub_1DF4C33D8();
      v8 = (*(v13 + 40))(v14);

      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v15 = sub_1DF5647B4();
      __swift_project_value_buffer(v15, qword_1ED956048);
      v16 = sub_1DF564794();
      v17 = sub_1DF564C44();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v8 & 1;
        _os_log_impl(&dword_1DF47C000, v16, v17, "Fetched value for opt-in status: %{BOOL}d", v18, 8u);
        MEMORY[0x1E12D75F0](v18, -1, -1);
      }
    }

    else
    {
      v8 = sub_1DF4C0D6C();
    }
  }

  return v8 & 1;
}

void sub_1DF4BFD90(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v99 = v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v97 - v9;
  v11 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24];
  v12 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32];
  v98 = &v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults], v11);
  v13 = sub_1DF4C33D8();
  (*(v12 + 48))(v101, v13);

  v14 = v102;
  sub_1DF47E5B4(v101, &qword_1ECE378F0, &qword_1DF5686F0);
  if (!v14 && (a1 & 1) != 0)
  {
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF5647B4();
    __swift_project_value_buffer(v15, qword_1ED956048);
    v16 = sub_1DF564794();
    v17 = sub_1DF564C44();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DF47C000, v16, v17, "User is opting in, setting followup to true to prevent CFU from showing.", v18, 2u);
      MEMORY[0x1E12D75F0](v18, -1, -1);
    }

    if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
    {
      sub_1DF564484();
      v19 = sub_1DF564494();
      (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
      sub_1DF529F68(v10);
    }
  }

  v101[0] = MEMORY[0x1E69E7CC0];
  sub_1DF4BCE70(0, 3, 0);
  v20 = v101[0];
  v21 = sub_1DF5649A4();
  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  if (v24 >= v23 >> 1)
  {
    v88 = v14;
    v89 = v21;
    v90 = v22;
    sub_1DF4BCE70((v23 > 1), v24 + 1, 1);
    v22 = v90;
    v21 = v89;
    v14 = v88;
    v20 = v101[0];
  }

  *(v20 + 16) = v24 + 1;
  v25 = v20 + 16 * v24;
  *(v25 + 32) = v21;
  *(v25 + 40) = v22;
  v26 = sub_1DF5649A4();
  v29 = *(v20 + 16);
  v28 = *(v20 + 24);
  if (v29 >= v28 >> 1)
  {
    v91 = v26;
    v92 = v14;
    v93 = v27;
    sub_1DF4BCE70((v28 > 1), v29 + 1, 1);
    v27 = v93;
    v14 = v92;
    v26 = v91;
    v20 = v101[0];
  }

  *(v20 + 16) = v29 + 1;
  v30 = v20 + 16 * v29;
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  v31 = sub_1DF5649A4();
  v34 = *(v20 + 16);
  v33 = *(v20 + 24);
  if (v34 >= v33 >> 1)
  {
    v94 = v31;
    v95 = v14;
    v96 = v32;
    sub_1DF4BCE70((v33 > 1), v34 + 1, 1);
    v32 = v96;
    v14 = v95;
    v31 = v94;
  }

  v35 = v101[0];
  *(v101[0] + 16) = v34 + 1;
  v36 = v35 + 16 * v34;
  *(v36 + 32) = v31;
  *(v36 + 40) = v32;
  swift_arrayDestroy();
  v38 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  v37 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier + 8];
  if (v37)
  {
    v39 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
    v40 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier + 8];
    v41 = sub_1DF5649A4();
    v43 = v42;
  }

  else
  {
    v43 = 0;
    v41 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  }

  v101[0] = v41;
  v101[1] = v43;
  MEMORY[0x1EEE9AC00](v41);
  v97[-2] = v101;
  v100 = sub_1DF4C1F84(sub_1DF4C35D8, &v97[-4], v35);

  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v44 = sub_1DF5647B4();
  v45 = __swift_project_value_buffer(v44, qword_1ED956048);
  v46 = v2;
  v47 = sub_1DF564794();
  v48 = sub_1DF564C44();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v101[0] = v50;
    *v49 = 67109634;
    *(v49 + 4) = a1 & 1;
    *(v49 + 8) = 2080;
    if (!v37)
    {
      v38 = 0;
    }

    v97[1] = v45;
    if (v37)
    {
      v51 = v37;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    v52 = sub_1DF47EF6C(v38, v51, v101);

    *(v49 + 10) = v52;
    *(v49 + 18) = 2080;
    v53 = v100;
    if (v100)
    {
      v54 = 0x7542206D6F726620;
    }

    else
    {
      v54 = 0x6D6F726620746F6ELL;
    }

    if (v100)
    {
      v55 = 0xEB00000000796464;
    }

    else
    {
      v55 = 0xEE00796464756220;
    }

    v56 = sub_1DF47EF6C(v54, v55, v101);

    *(v49 + 20) = v56;
    _os_log_impl(&dword_1DF47C000, v47, v48, "Setting GMOptIn.isOptedIn to %{BOOL}d from %s %s", v49, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v50, -1, -1);
    MEMORY[0x1E12D75F0](v49, -1, -1);

    if ((v53 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if ((v100 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if (a1)
  {
    sub_1DF4C1234(0x6E695F646574706FLL, 0xEE0079646475625FLL, 1);
    if (!v14)
    {
      sub_1DF4C1234(0x74706F5F6F747561, 0xEB000000006E695FLL, 1);
      v57 = sub_1DF481988();
      v58 = [v57 aa_primaryAppleAccount];

      if (!v58 || (v59 = [v58 aa_personID], v58, !v59))
      {
        v79 = sub_1DF564794();
        v80 = sub_1DF564C44();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_1DF47C000, v79, v80, "Sending distributed notification on auto opt-in change.", v81, 2u);
          MEMORY[0x1E12D75F0](v81, -1, -1);
        }

        sub_1DF4FB95C();
        v82 = sub_1DF564794();
        v83 = sub_1DF564C44();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_1DF47C000, v82, v83, "Updating GMS on auto opt-in status.", v84, 2u);
          MEMORY[0x1E12D75F0](v84, -1, -1);
        }

        v85 = sub_1DF564B44();
        v86 = v99;
        (*(*(v85 - 8) + 56))(v99, 1, 1, v85);
        v72 = swift_allocObject();
        *(v72 + 16) = 0;
        *(v72 + 24) = 0;
        *(v72 + 32) = v46;
        *(v72 + 40) = 1;
        v87 = v46;
        v74 = &unk_1DF568710;
        v75 = v86;
        goto LABEL_47;
      }

      v60 = sub_1DF564794();
      v61 = sub_1DF564C44();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1DF47C000, v60, v61, "Opted in via buddy but device is signed in, skipping extra notification update.", v62, 2u);
        MEMORY[0x1E12D75F0](v62, -1, -1);
      }
    }
  }

  else
  {
    sub_1DF4C1234(0x756F5F646574706FLL, 0xEF79646475625F74, 1);
  }

LABEL_43:
  if ((sub_1DF4BFA44() & 1) != (a1 & 1))
  {
    v63 = *(v98 + 3);
    v64 = *(v98 + 4);
    __swift_project_boxed_opaque_existential_0(v98, v63);
    v102 = MEMORY[0x1E69E6370];
    LOBYTE(v101[0]) = a1 & 1;
    v65 = sub_1DF4C33D8();
    (*(v64 + 56))(v101, v65, v66, v63, v64);

    sub_1DF47E5B4(v101, &qword_1ECE378F0, &qword_1DF5686F0);
    v67 = sub_1DF564794();
    v68 = sub_1DF564C44();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 67109120;
      *(v69 + 4) = a1 & 1;
      _os_log_impl(&dword_1DF47C000, v67, v68, "Set new value for opt-in toggle %{BOOL}d, sending darwin notification.", v69, 8u);
      MEMORY[0x1E12D75F0](v69, -1, -1);
    }

    sub_1DF4FB95C();
    v70 = sub_1DF564B44();
    v71 = v99;
    (*(*(v70 - 8) + 56))(v99, 1, 1, v70);
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = 0;
    *(v72 + 32) = v46;
    *(v72 + 40) = a1 & 1;
    v73 = v46;
    v74 = &unk_1DF568700;
    v75 = v71;
LABEL_47:
    sub_1DF4BF520(0, 0, v75, v74, v72);

    return;
  }

  v76 = sub_1DF564794();
  v77 = sub_1DF564C44();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 67109120;
    *(v78 + 4) = a1 & 1;
    _os_log_impl(&dword_1DF47C000, v76, v77, "Attempted to set GMOptIn.isOptedIn to %{BOOL}d but it already has that value. Early returning.", v78, 8u);
    MEMORY[0x1E12D75F0](v78, -1, -1);
  }
}

uint64_t sub_1DF4C090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4C0930, 0, 0);
}

uint64_t sub_1DF4C0930()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_availabilityClient);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DF4C09D4;
  v3 = *(v0 + 32);

  return sub_1DF4F5040(v3);
}

uint64_t sub_1DF4C09D4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF4C0AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4C0AEC, 0, 0);
}

uint64_t sub_1DF4C0AEC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_availabilityClient);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DF4C3EA4;
  v3 = *(v0 + 32);

  return sub_1DF4F5040(v3);
}

void (*sub_1DF4C0B90(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4BFA44() & 1;
  return sub_1DF4C0BDC;
}

unint64_t GMOptIn.State.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1DF4C0C18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1DF4C0D34()
{
  if ((sub_1DF4C1694() & 1) == 0)
  {
    return 0;
  }

  if (sub_1DF4BFA44())
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1DF4C0D6C()
{
  v1 = v0;
  v2 = sub_1DF481988();
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = [v3 aa_personID];

    if (v4)
    {

      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v5 = sub_1DF5647B4();
      __swift_project_value_buffer(v5, qword_1ED956048);
      v6 = v1;
      v7 = sub_1DF564794();
      v8 = sub_1DF564C44();

      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = sub_1DF4C33D8();
      v13 = sub_1DF47EF6C(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF47C000, v7, v8, "No value for user opt-in key %s. Returning false.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      goto LABEL_17;
    }
  }

  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF5647B4();
  __swift_project_value_buffer(v14, qword_1ED956048);
  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DF47C000, v15, v16, "Device has no DSID, checking if previous user has toggle enabled.", v17, 2u);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  v18 = sub_1DF4C1A84();
  v7 = sub_1DF564794();
  v19 = sub_1DF564C44();
  v20 = os_log_type_enabled(v7, v19);
  if ((v18 & 1) == 0)
  {
    if (!v20)
    {
LABEL_18:

      return 0;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF47C000, v7, v19, "No previous user has opted-in. Returning false.", v9, 2u);
LABEL_17:
    MEMORY[0x1E12D75F0](v9, -1, -1);
    goto LABEL_18;
  }

  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DF47C000, v7, v19, "Previous user has opted-in. Returning true.", v21, 2u);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  return 1;
}

uint64_t sub_1DF4C108C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v6 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v5);
  v7 = (*(v6 + 40))(a1, a2, v5, v6);
  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF5647B4();
  __swift_project_value_buffer(v8, qword_1ED956048);

  v9 = sub_1DF564794();
  v10 = sub_1DF564C44();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DF47EF6C(a1, a2, &v14);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v7 & 1;
    _os_log_impl(&dword_1DF47C000, v9, v10, "Fetched value for %s status: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  return v7 & 1;
}

void sub_1DF4C1234(uint64_t a1, unint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = (v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults);
  v9 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v10 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v9);
  if (((*(v10 + 40))(a1, a2, v9, v10) & 1) == v7)
  {
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956048);

    oslog = sub_1DF564794();
    v19 = sub_1DF564C44();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1DF47EF6C(a1, a2, v23);
      *(v20 + 12) = 1024;
      *(v20 + 14) = a3 & 1;
      _os_log_impl(&dword_1DF47C000, oslog, v19, "Attempted to set %s to %{BOOL}d but it already has that value. Early returning.", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1E12D75F0](v21, -1, -1);
      MEMORY[0x1E12D75F0](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = v8[3];
    v12 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v11);
    v23[3] = MEMORY[0x1E69E6370];
    LOBYTE(v23[0]) = v7;
    (*(v12 + 56))(v23, a1, a2, v11, v12);
    sub_1DF47E5B4(v23, &qword_1ECE378F0, &qword_1DF5686F0);
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956048);

    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1DF47EF6C(a1, a2, v23);
      *(v16 + 12) = 1024;
      *(v16 + 14) = a3 & 1;
      _os_log_impl(&dword_1DF47C000, v14, v15, "Set new value for %s %{BOOL}d.", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1E12D75F0](v17, -1, -1);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }
  }
}

void (*sub_1DF4C15E8(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4C108C(0x74706F5F6F747561, 0xEB000000006E695FLL) & 1;
  return sub_1DF4C1650;
}

uint64_t sub_1DF4C1694()
{
  v0 = sub_1DF4BF824();
  if (!v0)
  {
    if (qword_1ED9558B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  v1 = v0;
  v2 = 0;
  v3 = v0 + 64;
  v4 = 1 << *(v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v0 + 64);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
LABEL_6:
    if (v7 <= v2 + 1)
    {
      v9 = v2 + 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    while (1)
    {
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v6 = 0;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        goto LABEL_14;
      }

      v6 = *(v3 + 8 * v8);
      ++v2;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_20:
    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED955C68);
    v19 = sub_1DF564794();
    v20 = sub_1DF564C44();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v35 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DF47EF6C(0xD000000000000029, 0x80000001DF570A10, &v35);
      _os_log_impl(&dword_1DF47C000, v19, v20, "No persistent domain for suite %s, no users have toggled toggle off or on.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E12D75F0](v22, -1, -1);
      MEMORY[0x1E12D75F0](v21, -1, -1);
    }

    return 0;
  }

  while (1)
  {
    v8 = v2;
LABEL_13:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1DF47F24C(*(v1 + 56) + 32 * v12, v31);
    *&v32 = v15;
    *(&v32 + 1) = v14;
    sub_1DF49A88C(v31, &v33);

    v10 = v8;
LABEL_14:
    v35 = v32;
    v36[0] = v33;
    v36[1] = v34;
    v16 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {

      return 0;
    }

    v17 = v35;
    sub_1DF49A88C(v36, &v32);
    if (swift_dynamicCast())
    {
      break;
    }

    v2 = v10;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v24 = LOBYTE(v31[0]);
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DF5647B4();
  __swift_project_value_buffer(v25, qword_1ED955C68);

  v26 = sub_1DF564794();
  v27 = sub_1DF564C44();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v32 = v29;
    *v28 = 136315394;
    v30 = sub_1DF47EF6C(v17, v16, &v32);

    *(v28 + 4) = v30;
    *(v28 + 12) = 1024;
    *(v28 + 14) = v24;
    _os_log_impl(&dword_1DF47C000, v26, v27, "Previous key %s has value %{BOOL}d", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1E12D75F0](v29, -1, -1);
    MEMORY[0x1E12D75F0](v28, -1, -1);
  }

  else
  {
  }

  return 1;
}

int64_t sub_1DF4C1A84()
{
  v0 = sub_1DF4BF824();
  if (v0)
  {
    v1 = v0;
    v2 = v0 + 64;
    v3 = 1 << *(v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v0 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &unk_1ED955000;
    while (v5)
    {
LABEL_11:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v7 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_1DF47F24C(*(v1 + 56) + 32 * v11, v38);
      v37[0] = v13;
      v37[1] = v14;
      sub_1DF47F24C(v38, v36);

      if (swift_dynamicCast())
      {
        if (v8[279] != -1)
        {
          swift_once();
        }

        v15 = sub_1DF5647B4();
        __swift_project_value_buffer(v15, qword_1ED955C68);

        v16 = sub_1DF564794();
        v17 = sub_1DF564C44();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v34 = v1;
          v19 = swift_slowAlloc();
          v36[0] = v19;
          *v18 = 136315394;
          *(v18 + 4) = sub_1DF47EF6C(v13, v14, v36);
          *(v18 + 12) = 1024;
          v20 = v35;
          *(v18 + 14) = v35;
          _os_log_impl(&dword_1DF47C000, v16, v17, "Previous key %s has value %{BOOL}d", v18, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v19);
          v21 = v19;
          v1 = v34;
          MEMORY[0x1E12D75F0](v21, -1, -1);
          v22 = v18;
          v8 = &unk_1ED955000;
          MEMORY[0x1E12D75F0](v22, -1, -1);
        }

        else
        {

          v20 = v35;
        }

        sub_1DF47E5B4(v37, &qword_1ECE37CB8, &qword_1DF56A510);
        if (v20)
        {
          v6 = 1;
LABEL_20:

          if (v8[279] == -1)
          {
LABEL_21:
            v23 = sub_1DF5647B4();
            __swift_project_value_buffer(v23, qword_1ED955C68);
            v24 = sub_1DF564794();
            v25 = sub_1DF564C44();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v37[0] = v27;
              *v26 = 136315394;
              *(v26 + 4) = sub_1DF47EF6C(0x4F72657355796E61, 0xEE006E4964657470, v37);
              *(v26 + 12) = 1024;
              *(v26 + 14) = v6;
              _os_log_impl(&dword_1DF47C000, v24, v25, "%s returning %{BOOL}d", v26, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v27);
              MEMORY[0x1E12D75F0](v27, -1, -1);
              MEMORY[0x1E12D75F0](v26, -1, -1);
            }

            return v6;
          }

LABEL_31:
          swift_once();
          goto LABEL_21;
        }
      }

      else
      {
        sub_1DF47E5B4(v37, &qword_1ECE37CB8, &qword_1DF56A510);
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v6 = 0;
        goto LABEL_20;
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v28 = sub_1DF5647B4();
  __swift_project_value_buffer(v28, qword_1ED955C68);
  v29 = sub_1DF564794();
  v30 = sub_1DF564C44();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1DF47EF6C(0xD000000000000029, 0x80000001DF570A10, v37);
    _os_log_impl(&dword_1DF47C000, v29, v30, "No persistent domain for suite %s, no users have toggled toggle off or on.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E12D75F0](v32, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF4C1F84(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void (*sub_1DF4C2080(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4C108C(0x6E695F646574706FLL, 0xEE0079646475625FLL) & 1;
  return sub_1DF4C20EC;
}

void (*sub_1DF4C2180(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4C108C(0x756F5F646574706FLL, 0xEF79646475625F74) & 1;
  return sub_1DF4C21EC;
}

id GMOptIn.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4C3210();
  if (qword_1ED955FE8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED958B80;
  v12[3] = sub_1DF4818A4();
  v12[4] = &off_1F5A8A490;
  v12[0] = v4;
  v6 = type metadata accessor for GMOptIn();
  v7 = objc_allocWithZone(v6);
  sub_1DF47FCEC(v12, &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults]);
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_availabilityClient] = v5;
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v11.receiver = v7;
  v11.super_class = v6;

  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t sub_1DF4C2340()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v1);
  v3 = sub_1DF49A758(MEMORY[0x1E69E7CC0]);
  (*(v2 + 72))(v3, 0xD000000000000029, 0x80000001DF570A10, v1, v2);
}

id GMOptIn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMOptIn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMOptIn();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DF4C2500(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DF564D74();

  return sub_1DF4C2544(a1, v5);
}

unint64_t sub_1DF4C2544(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DF4A799C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12D6640](v9, a1);
      sub_1DF4C3D44(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DF4C260C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF564D64() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1DF565234();

      sub_1DF5649E4();
      v14 = sub_1DF565264();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DF4C27BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE379F8, &unk_1DF568890);
  v2 = *v0;
  v3 = sub_1DF564F14();
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
        sub_1DF47F24C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DF49A88C(v25, (*(v4 + 56) + v22));
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

void *sub_1DF4C2960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
  v2 = *v0;
  v3 = sub_1DF564F14();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1DF4C2AC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CB0, &unk_1DF568870);
  v2 = *v0;
  v3 = sub_1DF564F14();
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

void *sub_1DF4C2C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37C98, &qword_1DF568850);
  v2 = *v0;
  v3 = sub_1DF564F14();
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
        v22 = 40 * v17;
        sub_1DF47FCEC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DF47E390(v25, *(v4 + 56) + v22);
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

id sub_1DF4C2DE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CC8, &unk_1DF568880);
  v2 = *v0;
  v3 = sub_1DF564F14();
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

BOOL sub_1DF4C2F4C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1DF5650D4() & 1;
    }
  }

  return result;
}

unint64_t sub_1DF4C2FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CA0, &qword_1DF568858);
    v3 = sub_1DF564F34();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DF480420(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF4C30D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37908, &qword_1DF568860);
    v3 = sub_1DF564F34();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF47E4CC(v4, v13, &qword_1ECE37CA8, &qword_1DF568868);
      result = sub_1DF4C2500(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1DF49A88C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1DF4C3210()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956048);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000029, 0x80000001DF570A10, &v10);
    _os_log_impl(&dword_1DF47C000, v5, v6, "Could not create UserDefaults with suiteName, will use .standard: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = [objc_opt_self() standardUserDefaults];

  return v9;
}

uint64_t sub_1DF4C33D8()
{
  v0 = sub_1DF481988();
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 aa_personID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1DF564944();

      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v5 = sub_1DF5647B4();
      __swift_project_value_buffer(v5, qword_1ED956048);
      v6 = sub_1DF564794();
      v7 = sub_1DF564C44();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_13;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device has primary DSID, using to key opt-in status.";
    }

    else
    {
      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v4 = 0x695F656369766564;
      v10 = sub_1DF5647B4();
      __swift_project_value_buffer(v10, qword_1ED956048);
      v6 = sub_1DF564794();
      v7 = sub_1DF564C44();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_13;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device has primary account without DSID. Will fallback to device setting.";
    }

    _os_log_impl(&dword_1DF47C000, v6, v7, v9, v8, 2u);
    MEMORY[0x1E12D75F0](v8, -1, -1);
LABEL_13:

    return v4;
  }

  return 0x656369766564;
}

uint64_t sub_1DF4C35F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF4C0AC8(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF4C36BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D4B0;

  return sub_1DF4C090C(a1, v4, v5, v6, v7);
}

id _s25CloudSubscriptionFeatures7GMOptInC7currentACSgvgZ_0()
{
  v0 = sub_1DF4C3210();
  if (qword_1ED955FE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED958B80;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_1DF564944();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v13[3] = sub_1DF4818A4();
  v13[4] = &off_1F5A8A490;
  v13[0] = v0;
  v7 = type metadata accessor for GMOptIn();
  v8 = objc_allocWithZone(v7);
  sub_1DF47FCEC(v13, &v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults]);
  *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_availabilityClient] = v1;
  v9 = &v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  *v9 = v4;
  v9[1] = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v10;
}

unint64_t sub_1DF4C3908()
{
  result = qword_1ECE37C90;
  if (!qword_1ECE37C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37C90);
  }

  return result;
}

unint64_t sub_1DF4C3D98()
{
  result = qword_1ECE37CC0;
  if (!qword_1ECE37CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37CC0);
  }

  return result;
}

uint64_t sub_1DF4C3DEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF48D4B0;

  return sub_1DF484C20(a1, v5);
}

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF4C4004()
{
  result = qword_1ECE37CD8;
  if (!qword_1ECE37CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37CD8);
  }

  return result;
}

uint64_t sub_1DF4C4058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DF4C424C(unsigned __int8 a1)
{
  sub_1DF565234();
  MEMORY[0x1E12D6B00](a1);
  return sub_1DF565264();
}

uint64_t sub_1DF4C4294(void *a1, void *a2)
{
  v22[0] = a2;
  v3 = a2[3];
  v22[2] = a2[2];
  v4 = a2[4];
  type metadata accessor for CacheBox.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1DF565084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v11 = v22[1];
  sub_1DF5652A4();
  v27 = 0;
  v12 = v22[3];
  sub_1DF565074();
  if (!v12)
  {
    v13 = *(v22[0] + 44);
    v26 = 1;
    sub_1DF564494();
    sub_1DF484ECC(&qword_1ED955120);
    sub_1DF565044();
    v14 = *(v22[0] + 48);
    v25 = 2;
    sub_1DF565074();
    v15 = (v11 + *(v22[0] + 52));
    v16 = *v15;
    v17 = v15[1];
    v24 = 3;
    sub_1DF565024();
    v18 = (v11 + *(v22[0] + 56));
    v19 = *v18;
    v20 = v18[1];
    v23 = 4;
    sub_1DF565024();
  }

  return (*(v6 + 8))(v9, v5);
}

BOOL sub_1DF4C4518(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1DF4C4214(*a1, *a2);
}

uint64_t sub_1DF4C4530(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DF4C424C(*v1);
}

uint64_t sub_1DF4C4540(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1DF4C4224(a1, *v2);
}

uint64_t sub_1DF4C4550(uint64_t a1, void *a2)
{
  sub_1DF565234();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1DF4C4224(v8, *v2);
  return sub_1DF565264();
}

uint64_t sub_1DF4C459C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1DF4C4058(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DF4C45D0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1DF4C4788();
  *a2 = result;
  return result;
}

uint64_t sub_1DF4C4604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF4C4658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DF4C46C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1DF4C4790(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  v2 = 0x80000001DF5719C0;
  v3 = 0xD000000000000015;
  if (a1 != 2)
  {
    v3 = 0x6C7070612E6D6F63;
    v2 = 0xEE00707673722E65;
  }

  v4 = 0x80000001DF571A00;
  if (a1)
  {
    v4 = 0x80000001DF5719E0;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v9 = sub_1DF4C4A38(v5, v6, 0);
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED9556D8);
  v11 = v9;
  v12 = sub_1DF564794();
  v13 = sub_1DF564C14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    v16 = 0x80000001DF5719C0;
    v17 = 0xD000000000000011;
    v18 = 0xD000000000000015;
    if (a1 != 2)
    {
      v18 = 0x6C7070612E6D6F63;
      v16 = 0xEE00707673722E65;
    }

    v19 = 0x80000001DF571A00;
    if (a1)
    {
      v19 = 0x80000001DF5719E0;
    }

    else
    {
      v17 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    if (a1 <= 1u)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    v22 = sub_1DF47EF6C(v20, v21, &v24);

    *(v14 + 4) = v22;
    *(v14 + 12) = 1024;

    *(v14 + 14) = v9 != 0;
    _os_log_impl(&dword_1DF47C000, v12, v13, "App Installation for bundleIdentifier %s: %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
  }

  return v9 != 0;
}

id sub_1DF4C4A38(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DF564914();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DF5642F4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

_DWORD *sub_1DF4C4B14()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1DF4818A4();
    v4 = &off_1F5A8A490;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  type metadata accessor for TicketCache();
  v5 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  result = swift_slowAlloc();
  *(v6 + 16) = result;
  *result = 0;
  v5[2] = v2;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = v3;
  v5[6] = v4;
  v5[7] = v6;
  qword_1ED954C20 = v5;
  return result;
}

uint64_t static TicketCache.shared.getter()
{
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }
}

uint64_t TicketCache.persistentDomain.getter()
{
  sub_1DF4C4D14(v0 + 16, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_0(v4, v5);
    v1 = (*(v2 + 80))(0xD000000000000030, 0x80000001DF5709B0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1DF47E5B4(v4, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  return v1;
}

uint64_t sub_1DF4C4D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE0, &qword_1DF568B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TicketCache.allTickets(forDSID:)(uint64_t a1, unint64_t a2)
{
  sub_1DF4C4D14(v2 + 16, v29);
  v3 = v30;
  if (!v30)
  {
    sub_1DF47E5B4(v29, &qword_1ECE37CE0, &qword_1DF568B40);
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v31;
  __swift_project_boxed_opaque_existential_0(v29, v30);
  v5 = (*(v4 + 80))(0xD000000000000030, 0x80000001DF5709B0, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v29);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v13 = v11;
LABEL_11:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = (*(v5 + 48) + ((v13 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_1DF4C4FE0(v17, v16, a1, a2);
    if (v18)
    {
      v19 = v18;
      v29[0] = v17;
      v29[1] = v16;
      v20 = sub_1DF564A44();
      v25 = v21;
      v26 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DF4AA05C(0, v12[2] + 1, 1, v12);
        v12 = result;
      }

      v23 = v12[2];
      v22 = v12[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_1DF4AA05C((v22 > 1), v23 + 1, 1, v12);
        v12 = result;
      }

      v12[2] = v23 + 1;
      v24 = &v12[3 * v23];
      v24[4] = v26;
      v24[5] = v25;
      v24[6] = v19;
      v11 = v13;
    }

    else
    {

      v11 = v13;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return v12;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}