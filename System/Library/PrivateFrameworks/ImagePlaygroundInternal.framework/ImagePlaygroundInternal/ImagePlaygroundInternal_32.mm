uint64_t sub_1D25FF340()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = *(v2 + 768);
    v4 = *(v2 + 760);
    v5 = sub_1D25FF7C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 144);
    v3 = *(v2 + 768);
    v4 = *(v2 + 760);
    v5 = sub_1D25FF464;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25FF464()
{
  sub_1D2879718();
  v1 = swift_task_alloc();
  *(v0 + 1016) = v1;
  *v1 = v0;
  v1[1] = sub_1D25FF530;

  return sub_1D233BA38(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1D25FF530()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[48];
  v5 = v2[47];
  v6 = v2[46];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[96];
    v9 = v3[95];
    v10 = sub_1D260F5B8;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[96];
    v9 = v3[95];
    v10 = sub_1D25FF6D0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D25FF6D0()
{
  v1 = v0[78];
  v2 = v0[58];
  sub_1D22BD238(v0[53], &qword_1EC6DC0F0);
  sub_1D260E160(v2, type metadata accessor for GeneratedPreviewOptions);
  sub_1D260E160(v1, type metadata accessor for PhotosPersonAsset);
  v3 = sub_1D2878558();
  v0[109] = v3;
  if (v3)
  {
    swift_getObjectType();
    v4 = sub_1D28784F8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[111] = v6;
  v0[110] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v4, v6);
}

void sub_1D25FF7C4()
{
  v1 = v0[126];
  v0[37] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v3 = v0[78];
    v4 = v0[77];
    v5 = v0[76];
    (*(v0[44] + 8))(v0[45], v0[43]);
    sub_1D2872568();
    sub_1D260E0F8(v3, v4, type metadata accessor for PhotosPersonAsset);
    sub_1D260E0F8(v3, v5, type metadata accessor for PhotosPersonAsset);
    v6 = sub_1D2873CA8();
    v7 = sub_1D28789F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[77];
      v9 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v0[39] = v61;
      *v9 = 136315394;
      v10 = *(v8 + 8);
      v11 = v0[77];
      if (v10)
      {
        v12 = *v11;
        v13 = v10;
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      v32 = v0[114];
      sub_1D2870F68();
      sub_1D260E160(v11, type metadata accessor for PhotosPersonAsset);
      v33 = sub_1D23D7C84(v12, v13, v0 + 39);

      *(v9 + 4) = v33;
      *(v9 + 12) = 2080;
      v34 = sub_1D2878068();
      v35 = [v32 uuidFromLocalIdentifier_];

      if (v35)
      {
        v36 = v0[126];
        v37 = v0[97];
        v57 = v0[80];
        v60 = v0[83];
        v38 = v0[76];
        v39 = sub_1D28780A8();
        v41 = v40;

        sub_1D260E160(v38, type metadata accessor for PhotosPersonAsset);
        v42 = sub_1D23D7C84(v39, v41, v0 + 39);

        *(v9 + 14) = v42;
        _os_log_impl(&dword_1D226E000, v6, v7, "Cancelled prewarming of face %s-%s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v61, -1, -1);
        MEMORY[0x1D38A3520](v9, -1, -1);

        v37(v60, v57);
        goto LABEL_17;
      }

      __break(1u);
LABEL_21:

      __break(1u);
      return;
    }

    v26 = v0[126];
    v27 = v0[97];
    v28 = v0[83];
    v29 = v0[80];
    v30 = v0[77];
    v31 = v0[76];
  }

  else
  {
    v14 = v0[126];
    v15 = v0[78];
    v16 = v0[75];
    v17 = v0[74];
    sub_1D2872568();
    sub_1D260E0F8(v15, v16, type metadata accessor for PhotosPersonAsset);
    sub_1D260E0F8(v15, v17, type metadata accessor for PhotosPersonAsset);
    v18 = v14;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[75];
      v22 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v0[38] = v62;
      *v22 = 136315650;
      v23 = v0[75];
      if (*(v21 + 8))
      {
        v24 = *v23;
        v25 = *(v21 + 8);
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v43 = v0[114];
      sub_1D2870F68();
      sub_1D260E160(v23, type metadata accessor for PhotosPersonAsset);
      v44 = sub_1D23D7C84(v24, v25, v0 + 38);

      *(v22 + 4) = v44;
      *(v22 + 12) = 2080;
      v45 = sub_1D2878068();
      v46 = [v43 uuidFromLocalIdentifier_];

      v13 = v0[126];
      if (v46)
      {
        v47 = v0[97];
        v56 = v0[80];
        v58 = v0[82];
        v48 = v0[74];

        v49 = sub_1D28780A8();
        v51 = v50;

        sub_1D260E160(v48, type metadata accessor for PhotosPersonAsset);
        v52 = sub_1D23D7C84(v49, v51, v0 + 38);

        *(v22 + 14) = v52;
        *(v22 + 22) = 2112;
        v53 = v13;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 24) = v54;
        *v59 = v54;
        _os_log_impl(&dword_1D226E000, v19, v20, "Failed to prewarm face %s-%s: %@", v22, 0x20u);
        sub_1D22BD238(v59, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v59, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v62, -1, -1);
        MEMORY[0x1D38A3520](v22, -1, -1);

        v47(v58, v56);
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    v26 = v0[126];
    v27 = v0[97];
    v28 = v0[82];
    v29 = v0[80];
    v30 = v0[75];
    v31 = v0[74];
  }

  sub_1D260E160(v30, type metadata accessor for PhotosPersonAsset);
  v27(v28, v29);
  sub_1D260E160(v31, type metadata accessor for PhotosPersonAsset);
LABEL_17:
  sub_1D2879718();
  v55 = swift_task_alloc();
  v0[127] = v55;
  *v55 = v0;
  v55[1] = sub_1D25FF530;

  sub_1D233BA38(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1D25FFEBC(uint64_t a1)
{
  v4 = *(sub_1D2872008() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D25FB2C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D25FFFB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v2[4] = swift_task_alloc();
  sub_1D2878568();
  v2[5] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2600084, v4, v3);
}

void sub_1D2600084()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = v2 + *(type metadata accessor for ImageKeyFaceLoader.Context(0) + 20);
  v4 = *(type metadata accessor for GeneratedPreviewOptions(0) + 20);
  v5 = sub_1D2871818();
  v6 = (*(v5 - 8) + 56);
  v53 = *v6;
  (*v6)(v1, 1, 1, v5);
  v57 = v2;
  if (v2[4])
  {
    v58 = v2[5];
    v59 = v2[6];
    sub_1D2870F68();
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v7 = v0[2];
  v8 = v0[3];
  v9 = type metadata accessor for ImageGeneration.GenerationParameters();
  v10 = v9[13];
  v11 = sub_1D2872008();
  (*(*(v11 - 8) + 16))(v7 + v10, &v3[v4], v11);
  v12 = v9[14];
  v13 = type metadata accessor for PlaygroundImage();
  v14 = *(*(v13 - 8) + 56);
  v14(v7 + v12, 1, 1, v13);
  v14(v7 + v9[15], 1, 1, v13);
  v15 = v7 + v9[16];
  v16 = *(v8 + 56);
  v55 = v14;
  v56 = v13;
  if (v16)
  {
    v17 = v16;
    v18 = [v17 localIdentifier];
    if (!v18)
    {
      sub_1D28780A8();
      v18 = sub_1D2878068();
    }

    v19 = [objc_opt_self() uuidFromLocalIdentifier_];

    if (!v19)
    {
      __break(1u);
      return;
    }

    sub_1D28780A8();

    sub_1D28717A8();
  }

  else
  {
    v53(v15, 1, 1, v5);
  }

  v20 = v0[3];
  v54 = v0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v22 = v21[12];
  v23 = v15 + v21[16];
  v24 = v21[20];
  v25 = v21[24];
  v26 = (v15 + v21[28]);
  v27 = (v20 + *(type metadata accessor for PhotosPersonAsset() + 20));
  v28 = type metadata accessor for PhotosPersonImage();
  sub_1D260E0F8(v27 + *(v28 + 24), v15 + v22, type metadata accessor for PlaygroundImage);
  v55(v15 + v22, 0, 1, v56);
  __asm
  {
    FMOV            V0.2D, #0.125
    FMOV            V1.2D, #0.75
  }

  *v23 = _Q0;
  *(v23 + 16) = _Q1;
  *(v23 + 32) = 0;
  *(v15 + v24) = 4;
  v35 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v35 - 8) + 56))(v15 + v25, 1, 1, v35);
  v36 = v57[4];
  v37 = v57[5];
  v38 = v57[6];
  *v26 = v36;
  v26[1] = v37;
  v26[2] = v38;
  (*(*(v21 - 1) + 56))(v15, 0, 1, v21);
  sub_1D2396784(v36);
  sub_1D28722D8();
  v39 = *(v20 + 16);
  v40 = *(v20 + 24);
  if (v57[4])
  {
    v41 = sub_1D24FBD9C();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v43, v44);
  }

  else
  {
    sub_1D2870F68();
  }

  v45 = v54[4];
  v46 = v54[2];
  v47 = *v27;
  v48 = v27[1];
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v47, v48);

  sub_1D22EC9BC(v45, v46 + v9[21], &qword_1EC6D8F70);
  *v46 = 0;
  *(v46 + 8) = 0xE000000000000000;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0xE000000000000000;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0xE000000000000000;
  *(v46 + 48) = v58;
  *(v46 + 56) = v59;
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  v49 = MEMORY[0x1E69E7CC0];
  *(v46 + 96) = MEMORY[0x1E69E7CC0];
  *(v46 + 104) = v49;
  *(v46 + 112) = 1;
  *(v46 + v9[17]) = 0;
  v50 = (v46 + v9[18]);
  *v50 = 0;
  v50[1] = 0;
  *(v46 + v9[19]) = 1;
  *(v46 + v9[20]) = 1;
  v51 = (v46 + v9[24]);
  *v51 = v39;
  v51[1] = v40;
  *(v46 + v9[22]) = 1;
  (*(*(v9 - 1) + 56))(v46, 0, 1, v9);

  v52 = v54[1];

  v52();
}

uint64_t sub_1D26005F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D2871798();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  v8 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v5[16] = *(v10 + 64);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v5[18] = swift_task_alloc();
  v5[19] = sub_1D2878568();
  v5[20] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v5[21] = v12;
  v5[22] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D2600800, v12, v11);
}

uint64_t sub_1D2600800()
{
  v1 = v0[18];
  v35 = v1;
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v28 = v3;
  v5 = v0[13];
  v29 = v2;
  v30 = v5;
  v33 = v0[16];
  v34 = v0[12];
  v6 = v0[10];
  v31 = v0[11];
  v32 = v6;
  v7 = v0[8];
  v8 = v0[7];
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[4];
  v9 = v0[3];
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v4 + 16))(v2, v9, v3);
  sub_1D260E0F8(v25, v5, type metadata accessor for ImageKeyFaceLoader.Context);
  (*(v7 + 16))(v6, v26, v8);
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v33 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v31 + 80) + v13 + 8) & ~*(v31 + 80);
  v15 = (v34 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v11;
  *(v16 + 24) = v17;
  (*(v4 + 32))(v16 + v12, v29, v28);
  *(v16 + v13) = v27;
  sub_1D260E2B8(v30, v16 + v14, type metadata accessor for ImageKeyFaceLoader.Context);
  (*(v7 + 32))(v16 + v15, v32, v8);
  v18 = sub_1D23C8C30(0, 0, v35, &unk_1D28982F0, v16);
  v0[23] = v18;
  v19 = swift_task_alloc();
  v0[24] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  *v19 = v0;
  v19[1] = sub_1D2600AF8;
  v22 = v0[2];
  v23 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v22, v18, v20, v21, v23);
}

uint64_t sub_1D2600AF8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1D2600CE0;
  }

  else
  {
    v5 = sub_1D2600C34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2600C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2600CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2600D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  v8 = sub_1D2871798();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1D2873CB8();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for ImageGeneration.PreviewImage(0);
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA30);
  v7[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA750);
  v7[24] = v11;
  v7[25] = *(v11 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = sub_1D2878568();
  v7[28] = sub_1D2878558();
  v13 = sub_1D28784F8();
  v7[29] = v13;
  v7[30] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D260105C, v13, v12);
}

uint64_t sub_1D260105C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  sub_1D2878658();
  v1 = sub_1D2878558();
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_1D260113C;
  v3 = v0[23];
  v4 = v0[24];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v3, v1, v5, v4, v0 + 2);
}

uint64_t sub_1D260113C()
{
  v2 = *v1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1D26018B0;
  }

  else
  {
    v5 = sub_1D260125C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D260125C()
{
  v72 = v0;
  v1 = v0[23];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) != 1)
  {
    sub_1D260E2B8(v1, v0[22], type metadata accessor for ImageGeneration.PreviewStatus);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D260E160(v0[22], type metadata accessor for ImageGeneration.PreviewStatus);
      v3 = sub_1D2878558();
      v0[31] = v3;
      v4 = swift_task_alloc();
      v0[32] = v4;
      *v4 = v0;
      v4[1] = sub_1D260113C;
      v5 = v0[23];
      v6 = v0[24];
      v7 = MEMORY[0x1E69E85E0];
      v8 = v0 + 2;
      v9 = v3;

      return MEMORY[0x1EEE6DB90](v5, v9, v7, v6, v8);
    }

    v10 = v0[22];
    v11 = v0[18];
    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[12];
    v15 = v0[9];
    v65 = v0[8];
    v68 = v0[11];
    v16 = v0[6];
    v61 = v0[13];
    loga = v0[7];

    sub_1D260E2B8(v10, v12, type metadata accessor for ImageGeneration.PreviewImage);
    v59 = *(v11 + 24);
    v60 = v12;
    sub_1D2494CB0(v12 + v59, v16 + *(v14 + 20));
    sub_1D2872568();
    sub_1D260E0F8(v16, v13, type metadata accessor for ImageKeyFaceLoader.Context);
    sub_1D260E0F8(v16, v61, type metadata accessor for ImageKeyFaceLoader.Context);
    (*(v15 + 16))(v68, loga, v65);
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    if (os_log_type_enabled(v17, v18))
    {
      v69 = v18;
      v19 = v0[14];
      v20 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71 = v66;
      *v20 = 136315650;
      v21 = *(v19 + 8);
      v22 = v0[14];
      log = v17;
      if (v21)
      {
        v23 = *v22;
        v24 = v21;
      }

      else
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      sub_1D2870F68();
      sub_1D260E160(v22, type metadata accessor for ImageKeyFaceLoader.Context);
      v35 = sub_1D23D7C84(v23, v24, &v71);

      *(v20 + 4) = v35;
      *(v20 + 12) = 2080;
      type metadata accessor for PhotosPersonAsset();
      v36 = objc_opt_self();
      v37 = sub_1D2878068();
      v38 = [v36 uuidFromLocalIdentifier_];

      if (!v38)
      {
        __break(1u);
        return MEMORY[0x1EEE6DB90](v5, v9, v7, v6, v8);
      }

      v62 = v0[26];
      v57 = v0[25];
      v58 = v0[24];
      v54 = v0[16];
      v55 = v0[15];
      v56 = v0[17];
      v39 = v0[13];
      v40 = v0[10];
      v41 = v0[11];
      v43 = v0[8];
      v42 = v0[9];
      v44 = sub_1D28780A8();
      v46 = v45;

      sub_1D260E160(v39, type metadata accessor for ImageKeyFaceLoader.Context);
      v47 = sub_1D23D7C84(v44, v46, &v71);

      *(v20 + 14) = v47;
      *(v20 + 22) = 2048;
      sub_1D2871788();
      sub_1D2871718();
      v49 = v48;
      v50 = *(v42 + 8);
      v50(v40, v43);
      v50(v41, v43);
      *(v20 + 24) = v49;
      _os_log_impl(&dword_1D226E000, log, v69, "Finished generating face %s-%s (%f seconds).", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v66, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);

      (*(v54 + 8))(v56, v55);
      (*(v57 + 8))(v62, v58);
    }

    else
    {
      v25 = v0[25];
      v67 = v0[24];
      v70 = v0[26];
      v26 = v17;
      v27 = v0[16];
      v28 = v0[17];
      v30 = v0[14];
      v29 = v0[15];
      v31 = v0[13];
      v32 = v0[11];
      v34 = v0[8];
      v33 = v0[9];

      (*(v33 + 8))(v32, v34);
      sub_1D260E160(v30, type metadata accessor for ImageKeyFaceLoader.Context);
      (*(v27 + 8))(v28, v29);
      (*(v25 + 8))(v70, v67);
      sub_1D260E160(v31, type metadata accessor for ImageKeyFaceLoader.Context);
    }

    v51 = v0[19];
    sub_1D22D7044(v60 + v59, v0[3]);
    sub_1D260E160(v51, type metadata accessor for ImageGeneration.PreviewImage);
    goto LABEL_15;
  }

  v2 = v0[3];
  (*(v0[25] + 8))(v0[26], v0[24]);

  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
LABEL_15:

  v52 = v0[1];

  return v52();
}

uint64_t sub_1D26018B0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D26019B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28982E0, v7);
}

uint64_t sub_1D2601AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2601B70, v6, v5);
}

uint64_t sub_1D2601B70()
{

  sub_1D25FAC8C();
  sub_1D23B3A78();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2601BE4()
{
  sub_1D28797D8();
  sub_1D2877F38();
  v1 = v0 + *(type metadata accessor for ImageKeyFaceLoader.Context.ID(0) + 20);
  sub_1D2877F38();
  v2 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v1 + *(v2 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  return sub_1D2879828();
}

uint64_t sub_1D2601CC8(uint64_t a1, uint64_t a2)
{
  sub_1D2877F38();
  v4 = v2 + *(a2 + 20);
  sub_1D2877F38();
  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (!*(v4 + *(v5 + 24) + 8))
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t sub_1D2601DA0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D2877F38();
  v4 = v2 + *(a2 + 20);
  sub_1D2877F38();
  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v4 + *(v5 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  return sub_1D2879828();
}

uint64_t sub_1D2601E78(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return sub_1D24992D0((a1 + v7), (a2 + v7));
}

void sub_1D2601EFC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosPersonAsset();
  v5 = objc_opt_self();
  v6 = sub_1D2878068();
  v7 = [v5 uuidFromLocalIdentifier_];

  if (v7)
  {
    v8 = sub_1D28780A8();
    v10 = v9;

    v11 = *(a1 + 20);
    v12 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
    sub_1D260E0F8(v2 + v11, a2 + *(v12 + 20), type metadata accessor for GeneratedPreviewOptions);
    *a2 = v8;
    a2[1] = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ImageKeyFaceLoader.deinit()
{

  return v0;
}

uint64_t ImageKeyFaceLoader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImageKeyFaceLoader.__allocating_init(servicesFetcher:)()
{
  v0 = sub_1D23C6DDC();
  sub_1D23C6CA0();
  swift_allocObject();
  v1 = sub_1D260DDB0(v0);

  return v1;
}

uint64_t sub_1D2602100@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D23C6DDC();
  sub_1D23C6CA0();
  swift_allocObject();
  v3 = sub_1D260DDB0(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_1D260218C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a3;
  *(v4 + 64) = a2;
  *(v4 + 65) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D26021B4, 0, 0);
}

uint64_t sub_1D26021B4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = v0 + 8;
  v3[4] = v1;
  v3[5] = v0 + 65;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1D28731D8();
  *v4 = v0;
  v4[1] = sub_1D26022C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x80000001D28BE490, sub_1D260F30C, v3, v5);
}

uint64_t sub_1D26022C4()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2602404, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1D2602404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2602468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2602490, 0, 0);
}

uint64_t sub_1D2602490()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  *v3 = v0;
  v3[1] = sub_1D260259C;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000010, 0x80000001D28BE490, sub_1D260EEAC, v1, v4);
}

uint64_t sub_1D260259C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D260F5F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D26026D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2602700, 0, 0);
}

uint64_t sub_1D2602700()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468);
  *v3 = v0;
  v3[1] = sub_1D260280C;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000010, 0x80000001D28BE490, sub_1D260E28C, v1, v4);
}

uint64_t sub_1D260280C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2602948, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D2602948()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D26029AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_1D2602F64((a2 + 48), a3, a4, a1, a2, a5);
  v11 = v10;
  v12 = ~v10;
  os_unfair_lock_unlock((a2 + 40));
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0);
    if (v11)
    {
      sub_1D2878508();
    }

    else
    {
      sub_1D2878518();
    }
  }
}

uint64_t sub_1D2602A88(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t a1), uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v25 - v20);
  os_unfair_lock_lock((a2 + 40));
  v22 = v28;
  v28 = a1;
  sub_1D2603D8C((a2 + 48), v27, v22, a1, a2, v29, v21);
  os_unfair_lock_unlock((a2 + 40));
  sub_1D22BD1D0(v21, v18, &qword_1EC6DEFB0);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    sub_1D22BD238(v21, &qword_1EC6DEFB0);
    v23 = v18;
  }

  else
  {
    sub_1D22EC9BC(v18, v15, &qword_1EC6DEFB8);
    sub_1D22BD1D0(v15, v12, &qword_1EC6DEFB8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60);
      sub_1D2878508();
    }

    else
    {
      sub_1D22EC9BC(v12, v26, &qword_1EC6DC0F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60);
      sub_1D2878518();
    }

    sub_1D22BD238(v15, &qword_1EC6DEFB8);
    v23 = v21;
  }

  return sub_1D22BD238(v23, &qword_1EC6DEFB0);
}

uint64_t sub_1D2602DD0(uint64_t (*a1)(uint64_t a1), unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_1D2604F8C((a2 + 48), a3, a4, a1, a2, a5, v17);
  os_unfair_lock_unlock((a2 + 40));
  sub_1D22BD1D0(v17, &v13, &qword_1EC6DEF78);
  if (v14[24] == 255)
  {
    sub_1D22BD238(v17, &qword_1EC6DEF78);
    v10 = &v13;
  }

  else
  {
    v15 = v13;
    v16[0] = *v14;
    *(v16 + 9) = *&v14[9];
    sub_1D22BD1D0(&v15, &v13, &qword_1EC6DEF80);
    if (v14[24])
    {
      v12[0] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48);
      sub_1D2878508();
    }

    else
    {
      sub_1D22D79FC(&v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48);
      sub_1D2878518();
    }

    sub_1D22BD238(&v15, &qword_1EC6DEF80);
    v10 = v17;
  }

  return sub_1D22BD238(v10, &qword_1EC6DEF78);
}

size_t sub_1D2602F64(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6)
{
  v137 = a6;
  v129 = a4;
  v130 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC78);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v116 = &v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v115 = &v108 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0);
  v127 = *(v15 - 8);
  v128 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v108 - v16;
  v17 = sub_1D28785F8();
  v18 = *(v17 - 8);
  v125 = v17;
  v126 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v108 - v21;
  v114 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v108 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v121 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v108 - v28;
  v30 = sub_1D2871818();
  v118 = *(v30 - 8);
  v119 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v108 - v33;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
  v134 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v113 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v123 = &v108 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v108 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v108 - v43;
  v45 = a1[3];
  if (v45)
  {
    v7 = a1;
    v138 = a2;
    v45(&v135, &v138, v42);
    if (v136 != 255)
    {
      return v135;
    }
  }

  LODWORD(v133) = a2;
  if (sub_1D28786D8())
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v47 = swift_allocError();
    sub_1D2877E68();
    result = v47;
    LOBYTE(v135) = 1;
    return result;
  }

  v48 = *a1;
  v49 = *(*a1 + 16);
  v112 = a1;
  if (!v49 || (v50 = sub_1D25DB1BC(v133), a1 = v112, (v51 & 1) == 0) || (v109 = *(v48 + 36), v110 = v50, sub_1D26061B8(v44, v50, v109, 0, v48), v7 = *&v44[*(v131 + 60)], sub_1D2870F78(), sub_1D22BD238(v44, &qword_1EC6DA818), (v108 = v7) == 0))
  {
    v132 = a5;
    v111 = v6;
    v67 = a1[1];
    v68 = *(v67 + 16);
    if (!v68)
    {
LABEL_27:
      v72 = v67;
      v73 = v131;
      v74 = *(v131 + 52);
      a5 = v123;
      sub_1D28786E8();
      v75 = sub_1D25D8BB4(MEMORY[0x1E69E7CC0]);
      *a5 = v137;
      v76 = v73[14];
      *&a5[v76] = v75;
      v121 = v73[15];
      *&a5[v121] = 0;
      a5[v73[16]] = 0;
      v77 = v122;
      (*(v127 + 16))(v122, v129, v128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v135 = *&a5[v76];
      sub_1D24E7784(v77, v130, isUniquelyReferenced_nonNull_native);
      *&a5[v76] = v135;
      if (v112[2] < *(v132 + 32))
      {
        v79 = a5;
        v80 = v125;
        v81 = v126;
        v82 = *(v126 + 16);
        v83 = v115;
        v130 = v112[2];
        v82(v115, v79 + v74, v125);
        (*(v81 + 56))(v83, 0, 1, v80);
        v84 = v124;
        v82(v124, v79 + v74, v80);
        v85 = (*(v81 + 80) + 42) & ~*(v81 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = 0;
        *(v86 + 24) = 0;
        *(v86 + 32) = v132;
        *(v86 + 40) = v137;
        *(v86 + 41) = v133;
        (*(v81 + 32))(v86 + v85, v84, v80);
        sub_1D2870F78();
        v87 = sub_1D22AE01C(0, 0, v83, &unk_1D28983A0, v86);
        *(v79 + v121) = v87;
        v88 = v116;
        sub_1D22BD1D0(v79, v116, &qword_1EC6DA818);
        (*(v134 + 56))(v88, 0, 1, v73);
        v89 = v112;
        sub_1D25CE074(v88, v133);
        v89[2] = v130 + 1;
        sub_1D22BD238(v79, &qword_1EC6DA818);
        return 0;
      }

      v69 = v113;
      sub_1D22BD1D0(a5, v113, &qword_1EC6DA818);
      v7 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_43:
        v7 = sub_1D27CC7A8(0, *(v7 + 16) + 1, 1, v7);
      }

      v91 = *(v7 + 16);
      v90 = *(v7 + 24);
      if (v91 >= v90 >> 1)
      {
        v7 = sub_1D27CC7A8(v90 > 1, v91 + 1, 1, v7);
      }

      *(v7 + 16) = v91 + 1;
      sub_1D22EC9BC(v69, v7 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v91, &qword_1EC6DA818);
      v112[1] = v7;
      sub_1D22BD238(a5, &qword_1EC6DA818);
      return 0;
    }

    v69 = 0;
    while (1)
    {
      if (v69 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      a5 = ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v70 = v67;
      v71 = *(v134 + 72) * v69;
      sub_1D22BD1D0(&a5[v67 + v71], v40, &qword_1EC6DA818);
      swift_getAtKeyPath();
      v7 = v135;
      sub_1D22BD238(v40, &qword_1EC6DA818);
      if (v7 == v133)
      {
        break;
      }

      ++v69;
      v67 = v70;
      if (v68 == v69)
      {
        goto LABEL_27;
      }
    }

    (*(v118 + 16))(v120, v130, v119);
    v93 = v127;
    v92 = v128;
    v94 = v121;
    (*(v127 + 16))(v121, v129, v128);
    (*(v93 + 56))(v94, 0, 1, v92);
    v95 = v70;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D278BC7C(v70);
      v95 = result;
    }

    v96 = v131;
    v97 = v124;
    if (v69 >= *(v95 + 16))
    {
      __break(1u);
    }

    else
    {
      v98 = &a5[v95 + v71];
      sub_1D25CDE1C(v121, v120);
      v112[1] = v95;
      result = sub_1D28786E8();
      if (v69 < *(v95 + 16))
      {
        v99 = v95;
        v100 = *(v96 + 52);
        v101 = v126;
        v102 = *(v126 + 16);
        v134 = v98;
        v103 = &v98[v100];
        v104 = v117;
        v105 = v125;
        v102(v117, v103, v125);
        v106 = sub_1D2878598();
        v107 = *(v101 + 8);
        v107(v104, v105);
        v107(v97, v105);
        if ((v106 & 1) == 0)
        {
          return 0;
        }

        result = sub_1D28786E8();
        if (v69 < *(v99 + 16))
        {
          (*(v126 + 40))(v134 + *(v131 + 52), v97, v125);
          result = 0;
          v112[1] = v99;
          return result;
        }

        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  (*(v118 + 16))(v34, v130, v119);
  v53 = v127;
  v52 = v128;
  (*(v127 + 16))(v29, v129, v128);
  (*(v53 + 56))(v29, 0, 1, v52);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v135 = v48;
    result = sub_1D24EB704();
    v48 = v135;
  }

  v54 = v109;
  v55 = v110;
  if (v110 < 0 || v110 >= 1 << *(v48 + 32))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*(v48 + 8 * (v110 >> 6) + 64) & (1 << v110)) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v132 = 1 << v110;
  v133 = v110 >> 6;
  if (v109 != *(v48 + 36))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v56 = v131;
  v134 = *(v134 + 72) * v110;
  sub_1D25CDE1C(v29, v34);
  *v112 = v48;
  v57 = v124;
  sub_1D28786E8();
  sub_1D26061B8(v40, v55, v54, 0, v48);
  v59 = v125;
  v58 = v126;
  v60 = v48;
  v61 = v117;
  (*(v126 + 16))(v117, &v40[*(v56 + 52)], v125);
  v62 = v40;
  v63 = v57;
  sub_1D22BD238(v62, &qword_1EC6DA818);
  LOBYTE(v56) = sub_1D2878598();
  v64 = *(v58 + 8);
  v64(v61, v59);
  v64(v63, v59);
  if ((v56 & 1) == 0)
  {

    return 0;
  }

  sub_1D28786E8();
  sub_1D2878688();
  v64(v63, v59);
  v65 = v111;
  sub_1D28786E8();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v135 = v60;
    result = sub_1D24EB704();
    v60 = v135;
  }

  v66 = v112;
  if (v110 >= 1 << *(v60 + 32))
  {
    goto LABEL_50;
  }

  if ((*(v60 + 8 * v133 + 64) & v132) != 0)
  {
    if (v109 == *(v60 + 36))
    {
      (*(v126 + 40))(*(v60 + 56) + *(v131 + 52) + v134, v65, v59);

      result = 0;
      *v66 = v60;
      return result;
    }

    goto LABEL_52;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1D2603D8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v169 = a7;
  v156 = a6;
  v157 = a5;
  v162 = a4;
  v163 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v145 = &v136 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v151 = &v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60);
  v160 = *(v13 - 8);
  v161 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v136 - v14;
  v15 = sub_1D28785F8();
  v164 = *(v15 - 8);
  v165 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v138 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v152 = &v136 - v18;
  v144 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v148 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v136 - v25;
  v26 = sub_1D2871818();
  v154 = *(v26 - 8);
  v155 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v146 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v140 = &v136 - v29;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810);
  v158 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v143 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v136 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v139 = &v136 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v136 - v36;
  v38 = type metadata accessor for GeneratedPreviewOptions(0);
  v142 = *(v38 - 8);
  v39 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v147 = &v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v153 = (&v136 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v136 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v136 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8);
  v49 = *(v48 - 8);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v136 - v52;
  v54 = a1[3];
  v167 = a1;
  v168 = v55;
  if (v54)
  {
    v56 = a2;
    v57 = a2;
    v58 = v49;
    v59 = v50;
    v54(v57, v51);
    v60 = v59;
    v49 = v58;
    if ((*(v58 + 48))(v47, 1, v60) != 1)
    {
      sub_1D22EC9BC(v47, v53, &qword_1EC6DEFB8);
      v61 = v169;
      sub_1D22EC9BC(v53, v169, &qword_1EC6DEFB8);
      return (*(v58 + 56))(v61, 0, 1, v168);
    }
  }

  else
  {
    v56 = a2;
    (*(v49 + 56))(v47, 1, 1, v50, v51);
  }

  sub_1D22BD238(v47, &qword_1EC6DEFB0);
  v63 = sub_1D28786D8();
  if (v63)
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v64 = swift_allocError();
    sub_1D2877E68();
    v65 = v169;
    *v169 = v64;
    v66 = v168;
    swift_storeEnumTagMultiPayload();
    return (*(v49 + 56))(v65, 0, 1, v66);
  }

  v67 = v166;
  v68 = *v167;
  v69 = v56;
  if (*(*v167 + 16))
  {
    v63 = sub_1D25D0488(v56);
    if (v70)
    {
      v71 = *(v68 + 36);
      v135 = &unk_1D28972B0;
      v137 = v63;
      v136 = v71;
      sub_1D2606280(v44, v37, v63, v71, 0, v68, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
      sub_1D260E160(v44, type metadata accessor for GeneratedPreviewOptions);
      v72 = *&v37[v67[15]];
      sub_1D2870F78();
      v63 = sub_1D22BD238(v37, &qword_1EC6DA810);
      if (v72)
      {
        v73 = v140;
        (*(v154 + 16))(v140, v163, v155);
        v75 = v160;
        v74 = v161;
        v76 = v141;
        (*(v160 + 16))(v141, v162, v161);
        (*(v75 + 56))(v76, 0, 1, v74);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v171 = v68;
          result = sub_1D24EDFEC();
          v68 = v171;
        }

        v77 = v136;
        v162 = v72;
        v163 = v49;
        if ((v137 & 0x8000000000000000) == 0 && v137 < 1 << *(v68 + 32))
        {
          if ((*(v68 + 8 * (v137 >> 6) + 64) & (1 << v137)) != 0)
          {
            v160 = 1 << v137;
            v161 = v137 >> 6;
            if (v136 == *(v68 + 36))
            {
              v78 = v166;
              v158 = *(v158 + 72) * v137;
              v79 = v76;
              v80 = v137;
              sub_1D25CF3D8(v79, v73);
              *v167 = v68;
              v81 = v159;
              sub_1D28786E8();
              v135 = &unk_1D28972B0;
              v82 = v153;
              v83 = v139;
              sub_1D2606280(v153, v139, v80, v77, 0, v68, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
              sub_1D260E160(v82, type metadata accessor for GeneratedPreviewOptions);
              v84 = v164;
              v85 = v165;
              v86 = v152;
              (*(v164 + 16))(v152, v83 + *(v78 + 52), v165);
              sub_1D22BD238(v83, &qword_1EC6DA810);
              LOBYTE(v78) = sub_1D2878598();
              v87 = *(v84 + 8);
              v87(v86, v85);
              v87(v81, v85);
              if (v78)
              {
                sub_1D28786E8();
                sub_1D2878688();
                v87(v81, v85);
                v88 = v138;
                sub_1D28786E8();
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  v171 = v68;
                  result = sub_1D24EDFEC();
                  v68 = v171;
                }

                v89 = v167;
                if (v137 < 1 << *(v68 + 32))
                {
                  if ((*(v68 + 8 * v161 + 64) & v160) != 0)
                  {
                    v90 = v163;
                    if (v136 == *(v68 + 36))
                    {
                      (*(v164 + 40))(*(v68 + 56) + *(v166 + 52) + v158, v88, v165);

                      *v89 = v68;
                      return (*(v90 + 56))(v169, 1, 1, v168);
                    }

                    goto LABEL_51;
                  }

LABEL_50:
                  __break(1u);
LABEL_51:
                  __break(1u);
                  return result;
                }

LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_38:
              v90 = v163;
              return (*(v90 + 56))(v169, 1, 1, v168);
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }
  }

  v91 = v167;
  v92 = v167[1];
  MEMORY[0x1EEE9AC00](v63);
  v93 = v157;
  v134 = v157;
  v135 = v69;
  v94 = v170;
  v95 = sub_1D25A628C(sub_1D260EEB8, (&v136 - 4), v92);
  v170 = v94;
  if (v96)
  {
    v155 = v69;
    v97 = v150;
    sub_1D260E0F8(v156, v150, type metadata accessor for GeneratedPreviewOptions);
    v154 = v67[13];
    sub_1D28786E8();
    v98 = sub_1D25D9B60(MEMORY[0x1E69E7CC0]);
    v99 = v67[14];
    *(v97 + v99) = v98;
    v152 = v67[15];
    *&v152[v97] = 0;
    *(v97 + v67[16]) = 0;
    v100 = v93;
    v101 = v149;
    (*(v160 + 16))(v149, v162, v161);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171 = *(v97 + v99);
    v103 = v101;
    v104 = v100;
    sub_1D24E968C(v103, v163, isUniquelyReferenced_nonNull_native);
    *(v97 + v99) = v171;
    v105 = *(v91 + 16);
    if (v105 < *(v100 + 32))
    {
      v106 = v164;
      v107 = v165;
      v108 = *(v164 + 16);
      v109 = v151;
      v163 = v105;
      v108(v151, v97 + v154, v165);
      (*(v106 + 56))(v109, 0, 1, v107);
      v162 = type metadata accessor for GeneratedPreviewOptions;
      sub_1D260E0F8(v156, v153, type metadata accessor for GeneratedPreviewOptions);
      sub_1D260E0F8(v155, v147, type metadata accessor for GeneratedPreviewOptions);
      v108(v159, v97 + v154, v107);
      v110 = *(v142 + 80);
      v111 = (v110 + 40) & ~v110;
      v112 = (v39 + v110 + v111) & ~v110;
      v113 = (v39 + *(v106 + 80) + v112) & ~*(v106 + 80);
      v114 = swift_allocObject();
      *(v114 + 2) = 0;
      *(v114 + 3) = 0;
      *(v114 + 4) = v104;
      v115 = &v114[v111];
      v116 = v153;
      sub_1D260E2B8(v153, v115, type metadata accessor for GeneratedPreviewOptions);
      sub_1D260E2B8(v147, &v114[v112], type metadata accessor for GeneratedPreviewOptions);
      (*(v106 + 32))(&v114[v113], v159, v165);
      sub_1D2870F78();
      v117 = sub_1D22AE01C(0, 0, v151, &unk_1D2898340, v114);
      *&v152[v97] = v117;
      sub_1D260E0F8(v155, v116, v162);
      v118 = v145;
      sub_1D22BD1D0(v97, v145, &qword_1EC6DA810);
      (*(v158 + 56))(v118, 0, 1, v166);
      v119 = v118;
      v120 = v167;
      sub_1D25CF630(v119, v116);
      v120[2] = v163 + 1;
      (*(v49 + 56))(v169, 1, 1, v168);
      return sub_1D22BD238(v97, &qword_1EC6DA810);
    }

    v93 = v143;
    sub_1D22BD1D0(v97, v143, &qword_1EC6DA810);
    v124 = v97;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

  v121 = v95;
  v91 = v146;
  (*(v154 + 16))(v146, v163, v155);
  v123 = v160;
  v122 = v161;
  v124 = v148;
  (*(v160 + 16))(v148, v162, v161);
  (*(v123 + 56))(v124, 0, 1, v122);
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v126 = v159;
  if (v125)
  {
    if ((v121 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v92 = sub_1D278BD80(v92);
  if ((v121 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_28:
  v163 = v49;
  if (v121 < v92[2])
  {
    v49 = v92 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v121;
    sub_1D25CF3D8(v124, v91);
    v167[1] = v92;
    sub_1D28786E8();
    if (v121 < v92[2])
    {
      v127 = v164;
      v128 = v165;
      v129 = v152;
      (*(v164 + 16))(v152, v49 + v67[13], v165);
      v130 = sub_1D2878598();
      v131 = *(v127 + 8);
      v131(v129, v128);
      v131(v126, v128);
      if ((v130 & 1) == 0)
      {
        goto LABEL_38;
      }

      result = sub_1D28786E8();
      if (v121 < v92[2])
      {
        (*(v164 + 40))(v49 + *(v166 + 52), v126, v165);
        v167[1] = v92;
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v92 = sub_1D27CD040(0, v92[2] + 1, 1, v92);
LABEL_34:
  v133 = v92[2];
  v132 = v92[3];
  if (v133 >= v132 >> 1)
  {
    v92 = sub_1D27CD040(v132 > 1, v133 + 1, 1, v92);
  }

  v92[2] = v133 + 1;
  sub_1D22EC9BC(v93, v92 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v133, &qword_1EC6DA810);
  *(v91 + 8) = v92;
  (*(v49 + 56))(v169, 1, 1, v168);
  return sub_1D22BD238(v124, &qword_1EC6DA810);
}

uint64_t sub_1D2604F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v155 = a6;
  v163 = a3;
  v164 = a5;
  v162 = a4;
  v166 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v145 = &v133 - v10;
  v11 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v143 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v144 = v12;
  v150 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v151 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48);
  v160 = *(v15 - 8);
  v161 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v133 - v16;
  v157 = sub_1D28785F8();
  v156 = *(v157 - 8);
  v17 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v137 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v152 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v147 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v133 - v25;
  v26 = sub_1D2871818();
  v154 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v146 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v133 - v29;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808);
  v158 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v142 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v149 = &v133 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v133 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v133 - v36;
  v38 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v141 = *(v38 - 8);
  v39 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v153 = (&v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v133 - v42;
  v44 = a1[3];
  if (v44)
  {
    v45 = a1;
    v46 = a2;
    result = v44(v167, a2, v41);
    if (v167[40] != 255)
    {
      *&v169[9] = *&v167[25];
      v168 = *v167;
      *v169 = *&v167[16];
      v48 = *&v167[16];
      v49 = v166;
      *v166 = *v167;
      *(v49 + 16) = v48;
      *(v49 + 25) = *&v169[9];
      return result;
    }
  }

  else
  {
    v46 = a2;
    v45 = a1;
    memset(v167, 0, 40);
    v167[40] = -1;
  }

  sub_1D22BD238(v167, &qword_1EC6DEF78);
  v50 = sub_1D28786D8();
  if (v50)
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v51 = swift_allocError();
    result = sub_1D2877E68();
    v52 = v166;
    *v166 = v51;
    *(v52 + 40) = 1;
    return result;
  }

  v53 = v45;
  v54 = *v45;
  v55 = *(*v45 + 16);
  v56 = v46;
  v136 = v53;
  if (!v55 || (v50 = sub_1D25D0F04(v46), v53 = v136, (v57 & 1) == 0) || (v58 = *(v54 + 36), v59 = v136, v132 = &unk_1D2884480, v135 = v50, v134 = v58, sub_1D2606280(v43, v37, v50, v58, 0, v54, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808), sub_1D260E160(v43, type metadata accessor for ImageKeyFaceLoader.Context.ID), v60 = *&v37[*(v165 + 60)], sub_1D2870F78(), v53 = v59, v50 = sub_1D22BD238(v37, &qword_1EC6DA808), (v133 = v60) == 0))
  {
    v81 = v53[1];
    MEMORY[0x1EEE9AC00](v50);
    v82 = v164;
    v131 = v164;
    v132 = v56;
    v83 = v170;
    v84 = sub_1D25A62B4(sub_1D260E298, (&v133 - 4), v81);
    v170 = v83;
    if (v85)
    {
      v154 = v56;
      v86 = v149;
      sub_1D260E0F8(v155, v149, type metadata accessor for ImageKeyFaceLoader.Context);
      v87 = v165;
      v147 = *(v165 + 52);
      sub_1D28786E8();
      v88 = sub_1D25D9FB4(MEMORY[0x1E69E7CC0]);
      v89 = v87[14];
      *(v86 + v89) = v88;
      v152 = v87[15];
      *&v152[v86] = 0;
      *(v86 + v87[16]) = 0;
      v90 = v148;
      (*(v160 + 16))(v148, v162, v161);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v168 = *(v86 + v89);
      sub_1D24E9A3C(v90, v163, isUniquelyReferenced_nonNull_native);
      v92 = v136;
      *(v86 + v89) = v168;
      if (v92[2] < *(v82 + 32))
      {
        v93 = v156;
        v94 = *(v156 + 16);
        v95 = v147;
        v96 = v151;
        v97 = v157;
        v163 = v92[2];
        v94(v151, v86 + v147, v157);
        (*(v93 + 56))(v96, 0, 1, v97);
        sub_1D260E0F8(v155, v150, type metadata accessor for ImageKeyFaceLoader.Context);
        v162 = type metadata accessor for ImageKeyFaceLoader.Context.ID;
        sub_1D260E0F8(v154, v153, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v98 = v86 + v95;
        v99 = v97;
        v94(v159, v98, v97);
        v100 = (*(v143 + 80) + 40) & ~*(v143 + 80);
        v101 = (v144 + *(v141 + 80) + v100) & ~*(v141 + 80);
        v102 = (v39 + *(v93 + 80) + v101) & ~*(v93 + 80);
        v103 = swift_allocObject();
        *(v103 + 2) = 0;
        *(v103 + 3) = 0;
        *(v103 + 4) = v164;
        sub_1D260E2B8(v150, &v103[v100], type metadata accessor for ImageKeyFaceLoader.Context);
        v104 = v153;
        sub_1D260E2B8(v153, &v103[v101], type metadata accessor for ImageKeyFaceLoader.Context.ID);
        (*(v93 + 32))(&v103[v102], v159, v99);
        sub_1D2870F78();
        v105 = sub_1D22AE01C(0, 0, v151, &unk_1D2898230, v103);
        *&v152[v86] = v105;
        sub_1D260E0F8(v154, v104, v162);
        v106 = v145;
        sub_1D22BD1D0(v86, v145, &qword_1EC6DA808);
        (*(v158 + 56))(v106, 0, 1, v165);
        v107 = v106;
        v108 = v136;
        sub_1D25CFC5C(v107, v104);
        v108[2] = v163 + 1;
        v109 = v166;
        *v166 = 0u;
        *(v109 + 16) = 0u;
        *(v109 + 32) = 0;
        *(v109 + 40) = -1;
        v110 = v86;
        return sub_1D22BD238(v110, &qword_1EC6DA808);
      }

      v111 = v142;
      sub_1D22BD1D0(v86, v142, &qword_1EC6DA808);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_36:
        v129 = v81[2];
        v128 = v81[3];
        if (v129 >= v128 >> 1)
        {
          v81 = sub_1D27CD064(v128 > 1, v129 + 1, 1, v81);
        }

        v81[2] = v129 + 1;
        sub_1D22EC9BC(v111, v81 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v129, &qword_1EC6DA808);
        v136[1] = v81;
        v130 = v166;
        *v166 = 0u;
        *(v130 + 16) = 0u;
        *(v130 + 32) = 0;
        *(v130 + 40) = -1;
        v110 = v86;
        return sub_1D22BD238(v110, &qword_1EC6DA808);
      }

LABEL_44:
      v81 = sub_1D27CD064(0, v81[2] + 1, 1, v81);
      goto LABEL_36;
    }

    v111 = v84;
    v112 = v146;
    (*(v154 + 16))(v146, v163, v26);
    v114 = v160;
    v113 = v161;
    v115 = v147;
    (*(v160 + 16))(v147, v162, v161);
    v116 = *(v114 + 56);
    v86 = v114 + 56;
    v116(v115, 0, 1, v113);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1D278BD94(v81);
    }

    v117 = v157;
    v118 = v156;
    v119 = v165;
    if ((v111 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v111 < v81[2])
    {
      v86 = v81 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v111;
      sub_1D25CFA04(v115, v112);
      v136[1] = v81;
      v120 = v159;
      sub_1D28786E8();
      if (v111 < v81[2])
      {
        v121 = *(v119 + 52);
        v122 = *(v118 + 16);
        v164 = v86;
        v123 = v86 + v121;
        v124 = v152;
        v122(v152, v123, v117);
        v125 = sub_1D2878598();
        v126 = *(v118 + 8);
        v126(v124, v117);
        result = (v126)(v120, v117);
        if ((v125 & 1) == 0)
        {
          goto LABEL_34;
        }

        result = sub_1D28786E8();
        if (v111 < v81[2])
        {
          result = (*(v118 + 40))(v164 + *(v165 + 52), v120, v117);
          v136[1] = v81;
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v61 = v139;
  (*(v154 + 16))(v139, v163, v26);
  v63 = v160;
  v62 = v161;
  v64 = v140;
  (*(v160 + 16))(v140, v162, v161);
  (*(v63 + 56))(v64, 0, 1, v62);
  result = swift_isUniquelyReferenced_nonNull_native();
  v65 = v54;
  if ((result & 1) == 0)
  {
    *&v168 = v54;
    result = sub_1D24EE950();
    v65 = v168;
  }

  v66 = v134;
  v67 = v135;
  if (v135 < 0 || v135 >= 1 << *(v65 + 32))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*(v65 + 8 * (v135 >> 6) + 64) & (1 << v135)) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v163 = 1 << v135;
  v164 = v135 >> 6;
  if (v134 != *(v65 + 36))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v68 = v165;
  v161 = *(v158 + 72) * v135;
  sub_1D25CFA04(v64, v61);
  *v136 = v65;
  v69 = v159;
  sub_1D28786E8();
  v132 = &unk_1D2884480;
  v70 = v153;
  v71 = v138;
  sub_1D2606280(v153, v138, v67, v66, 0, v65, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808);
  sub_1D260E160(v70, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  v72 = v156;
  v73 = *(v156 + 16);
  v74 = v71 + *(v68 + 52);
  v162 = v65;
  v75 = v152;
  v76 = v157;
  v73(v152, v74, v157);
  sub_1D22BD238(v71, &qword_1EC6DA808);
  LOBYTE(v68) = sub_1D2878598();
  v77 = *(v72 + 8);
  v77(v75, v76);
  v77(v69, v76);
  if ((v68 & 1) == 0)
  {

    goto LABEL_34;
  }

  sub_1D28786E8();
  sub_1D2878688();
  v77(v69, v76);
  v78 = v137;
  sub_1D28786E8();
  v79 = v162;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    *&v168 = v79;
    result = sub_1D24EE950();
    v79 = v168;
  }

  v80 = v136;
  if (v135 >= 1 << *(v79 + 32))
  {
    goto LABEL_49;
  }

  if ((*(v79 + v164 + 8) & v163) != 0)
  {
    if (v134 == *(v79 + 9))
    {
      (*(v72 + 40))(*(v79 + 7) + *(v165 + 52) + v161, v78, v76);

      *v80 = v79;
LABEL_34:
      v127 = v166;
      *(v166 + 32) = 0;
      *v127 = 0u;
      *(v127 + 16) = 0u;
      *(v127 + 40) = -1;
      return result;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1D26061B8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
    sub_1D22BD1D0(v7 + *(*(v9 - 8) + 72) * a2, v6, &qword_1EC6DA818);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D2606280(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t *a9)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v13 = result;
    v14 = *(a6 + 48);
    v15 = a7(0);
    sub_1D260E0F8(v14 + *(*(v15 - 8) + 72) * a3, v13, a8);
    v16 = *(a6 + 56);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
    return sub_1D22BD1D0(v16 + *(*(v17 - 8) + 72) * a3, a2, a9);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D260637C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  os_unfair_lock_lock((a1 + 40));
  sub_1D2606D6C((a1 + 48), a2, a3, a1, v17);
  os_unfair_lock_unlock((a1 + 40));
  sub_1D22BD1D0(v17, v14, &qword_1EC6DEFD0);
  if (*v14)
  {
    sub_1D28786B8();
  }

  sub_1D22BD238(v14 + *(v9 + 48), &qword_1EC6DEC88);
  sub_1D22BD1D0(v17, v11, &qword_1EC6DEFD0);

  sub_1D22EC9BC(&v11[*(v9 + 48)], v8, &qword_1EC6DEC88);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DEFD0);
    return sub_1D22BD238(v8, &qword_1EC6DEC88);
  }

  else
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v21 = swift_allocError();
    sub_1D2877E68();
    v22[1] = v21;
    sub_1D2878508();
    sub_1D22BD238(v17, &qword_1EC6DEFD0);
    return (*(v19 + 8))(v8, v18);
  }
}

uint64_t sub_1D26066CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  os_unfair_lock_lock((a1 + 40));
  sub_1D260755C((a1 + 48), a2, a3, a1, v17);
  os_unfair_lock_unlock((a1 + 40));
  sub_1D22BD1D0(v17, v14, &qword_1EC6DEFC0);
  if (*v14)
  {
    sub_1D28786B8();
  }

  sub_1D22BD238(v14 + *(v9 + 48), &qword_1EC6DEC68);
  sub_1D22BD1D0(v17, v11, &qword_1EC6DEFC0);

  sub_1D22EC9BC(&v11[*(v9 + 48)], v8, &qword_1EC6DEC68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DEFC0);
    return sub_1D22BD238(v8, &qword_1EC6DEC68);
  }

  else
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v21 = swift_allocError();
    sub_1D2877E68();
    v22[1] = v21;
    sub_1D2878508();
    sub_1D22BD238(v17, &qword_1EC6DEFC0);
    return (*(v19 + 8))(v8, v18);
  }
}

uint64_t sub_1D2606A1C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  os_unfair_lock_lock((a1 + 40));
  sub_1D2607E00((a1 + 48), a2, a3, a1, v17);
  os_unfair_lock_unlock((a1 + 40));
  sub_1D22BD1D0(v17, v14, &qword_1EC6DEF88);
  if (*v14)
  {
    sub_1D28786B8();
  }

  sub_1D22BD238(v14 + *(v9 + 48), &qword_1EC6DEC48);
  sub_1D22BD1D0(v17, v11, &qword_1EC6DEF88);

  sub_1D22EC9BC(&v11[*(v9 + 48)], v8, &qword_1EC6DEC48);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DEF88);
    return sub_1D22BD238(v8, &qword_1EC6DEC48);
  }

  else
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v21 = swift_allocError();
    sub_1D2877E68();
    v22[1] = v21;
    sub_1D2878508();
    sub_1D22BD238(v17, &qword_1EC6DEF88);
    return (*(v19 + 8))(v8, v18);
  }
}

uint64_t sub_1D2606D6C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v72 = a4;
  v65 = a3;
  LODWORD(v75) = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
  v74 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v73 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0);
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v71 = a1;
  v20 = *a1;
  v21 = *(*a1 + 16);
  v68 = a5;
  if (v21)
  {
    v22 = sub_1D25DB1BC(v75);
    if (v23)
    {
      v24 = v22;
      v6 = *(v20 + 36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = v20;
        sub_1D24EB704();
        v20 = v76;
      }

      if (v24 < 0 || v24 >= 1 << *(v20 + 32))
      {
LABEL_35:
        __break(1u);
      }

      else if ((*(v20 + 8 * (v24 >> 6) + 64) & (1 << v24)) != 0)
      {
        if (v6 == *(v20 + 36))
        {
          v61 = 1 << v24;
          v62 = v24 >> 6;
          v67 = v6;
          v25 = v66;
          v60 = *(v74 + 72) * v24;
          sub_1D25F69A8(v65, &qword_1EC6DCAA0, sub_1D25D36C4, sub_1D24EB6E0, v14);
          v26 = v70;
          *v71 = v20;
          v6 = v69;
          if ((*(v69 + 48))(v14, 1, v26) != 1)
          {
            v74 = *(v6 + 32);
            (v74)(v19, v14, v26);
            v75 = v19;
            v39 = v73;
            sub_1D26061B8(v73, v24, v67, 0, v20);
            v40 = *(v39 + *(v25 + 56));
            sub_1D2870F68();
            sub_1D22BD238(v39, &qword_1EC6DA818);
            v41 = v26;
            v42 = *(v40 + 16);

            if (v42)
            {
              v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0) + 48);
              v44 = v68;
              *v68 = 0;
              (v74)(&v44[v43], v75, v41);
              return (*(v6 + 56))(&v44[v43], 0, 1, v41);
            }

            v51 = v75;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              v76 = v20;
              result = sub_1D24EB704();
              v20 = v76;
            }

            v52 = v73;
            if (v24 < 1 << *(v20 + 32))
            {
              if ((*(v20 + 8 * v62 + 64) & v61) != 0)
              {
                v53 = v67;
                if (v67 == *(v20 + 36))
                {
                  v54 = v66;
                  *(*(v20 + 56) + v60 + *(v66 + 64)) = 1;
                  *v71 = v20;
                  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0) + 48);
                  sub_1D26061B8(v52, v24, v53, 0, v20);
                  v56 = v52;
                  v57 = *(v52 + *(v54 + 60));
                  sub_1D2870F78();
                  sub_1D22BD238(v56, &qword_1EC6DA818);
                  v58 = v68;
                  *v68 = v57;
                  v59 = v70;
                  (v74)(&v58[v55], v51, v70);
                  return (*(v69 + 56))(&v58[v55], 0, 1, v59);
                }

                goto LABEL_43;
              }

LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              return result;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          sub_1D22BD238(v14, &qword_1EC6DEC88);
          goto LABEL_11;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_1D278BC7C(v20);
        v20 = result;
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

LABEL_11:
  v67 = v5;
  v20 = v71[1];
  ++v71;
  v27 = *(v20 + 16);
  if (!v27)
  {
LABEL_21:
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0) + 48);
    v37 = v68;
    v38 = v69;
    *v68 = 0;
    return (*(v38 + 56))(&v37[v36], 1, 1, v70);
  }

  v14 = 0;
  while (1)
  {
    if (v14 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v28 = v73;
    v19 = ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v6 = *(v74 + 72) * v14;
    sub_1D22BD1D0(&v19[v20 + v6], v73, &qword_1EC6DA818);
    swift_getAtKeyPath();
    v29 = v76;
    sub_1D22BD238(v28, &qword_1EC6DA818);
    if (v29 == v75)
    {
      break;
    }

    if (v27 == ++v14)
    {
      goto LABEL_21;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  v31 = v69;
  v32 = v66;
  v33 = v64;
  if (v14 >= *(v20 + 16))
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = &v19[v20 + v6];
  sub_1D25F69A8(v65, &qword_1EC6DCAA0, sub_1D25D36C4, sub_1D24EB6E0, v64);
  v35 = v70;
  *v71 = v20;
  if ((*(v31 + 48))(v33, 1, v35) == 1)
  {
    sub_1D22BD238(v33, &qword_1EC6DEC88);
    goto LABEL_21;
  }

  v45 = v33;
  v46 = *(v31 + 32);
  result = v46(v63, v45, v35);
  if (v14 >= *(v20 + 16))
  {
    goto LABEL_40;
  }

  if (!*(*&v34[*(v32 + 56)] + 16))
  {
    v47 = v73;
    sub_1D23BBD08(v14, v73);
    sub_1D22BD238(v47, &qword_1EC6DA818);
  }

  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0) + 48);
  v49 = v68;
  *v68 = 0;
  v50 = v70;
  v46(&v49[v48], v63, v70);
  return (*(v31 + 56))(&v49[v48], 0, 1, v50);
}

uint64_t sub_1D260755C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810);
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - v9;
  v10 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60);
  v19 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - v23;
  v24 = *a1;
  if (*(*a1 + 16))
  {
    v67 = v12;
    v22 = sub_1D25D0488(a2);
    if (v25)
    {
      v26 = v22;
      v27 = *(v24 + 36);
      result = swift_isUniquelyReferenced_nonNull_native();
      v66 = v27;
      if ((result & 1) == 0)
      {
        v78 = v24;
        result = sub_1D24EDFEC();
        LODWORD(v27) = v66;
        v24 = v78;
      }

      if (v26 < 0 || v26 >= 1 << *(v24 + 32))
      {
        goto LABEL_33;
      }

      if ((*(v24 + 8 * (v26 >> 6) + 64) & (1 << v26)) == 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v27 != *(v24 + 36))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v64 = 1 << v26;
      v65 = v26 >> 6;
      v68 = v5;
      v63 = *(v72 + 72) * v26;
      sub_1D25F69A8(v73, &qword_1EC6DCA60, sub_1D25D5330, sub_1D24EDFC8, v18);
      *a1 = v24;
      v29 = v77;
      if ((*(v19 + 48))(v18, 1, v77) != 1)
      {
        v74 = *(v19 + 32);
        v74(v70, v18, v29);
        v61 = &unk_1D28972B0;
        v45 = v67;
        v46 = v69;
        sub_1D2606280(v67, v69, v26, v66, 0, v24, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
        sub_1D260E160(v45, type metadata accessor for GeneratedPreviewOptions);
        v47 = *(v46 + *(v76 + 56));
        sub_1D2870F68();
        sub_1D22BD238(v46, &qword_1EC6DA810);
        v48 = *(v47 + 16);

        if (v48)
        {
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0) + 48);
          v50 = v74;
          v51 = v75;
          *v75 = 0;
          v50(&v51[v49], v70, v29);
          return (*(v19 + 56))(&v51[v49], 0, 1, v29);
        }

        v73 = v19 + 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v78 = v24;
          result = sub_1D24EDFEC();
          v24 = v78;
        }

        v52 = v76;
        v53 = v66;
        if (v26 < 1 << *(v24 + 32))
        {
          if ((*(v24 + 8 * v65 + 64) & v64) != 0)
          {
            if (v66 == *(v24 + 36))
            {
              *(*(v24 + 56) + v63 + *(v76 + 64)) = 1;
              *a1 = v24;
              v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0) + 48);
              v61 = &unk_1D28972B0;
              v55 = v67;
              sub_1D2606280(v67, v46, v26, v53, 0, v24, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
              sub_1D260E160(v55, type metadata accessor for GeneratedPreviewOptions);
              v56 = *(v46 + *(v52 + 60));
              sub_1D2870F78();
              sub_1D22BD238(v46, &qword_1EC6DA810);
              v57 = v74;
              v58 = v75;
              *v75 = v56;
              v59 = v77;
              v57(&v58[v54], v70, v77);
              return (*(v19 + 56))(&v58[v54], 0, 1, v59);
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = sub_1D22BD238(v18, &qword_1EC6DEC68);
      v6 = v68;
    }
  }

  v32 = a1[1];
  v31 = a1 + 1;
  v30 = v32;
  MEMORY[0x1EEE9AC00](v22);
  v60 = v74;
  v61 = a2;
  v33 = sub_1D25A628C(sub_1D260F5D8, (&v62 - 4), v32);
  v34 = v77;
  if (v35)
  {
LABEL_17:
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0) + 48);
    v39 = v75;
    *v75 = 0;
    return (*(v19 + 56))(&v39[v38], 1, 1, v34);
  }

  v36 = v33;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = sub_1D278BD80(v30);
  v30 = result;
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if (v36 >= v30[2])
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v36;
  sub_1D25F69A8(v73, &qword_1EC6DCA60, sub_1D25D5330, sub_1D24EDFC8, v15);
  *v31 = v30;
  if ((*(v19 + 48))(v15, 1, v34) == 1)
  {
    sub_1D22BD238(v15, &qword_1EC6DEC68);
    goto LABEL_17;
  }

  v68 = v6;
  v40 = *(v19 + 32);
  result = v40(v71, v15, v34);
  if (v36 >= v30[2])
  {
    goto LABEL_36;
  }

  if (!*(*(v37 + *(v76 + 56)) + 16))
  {
    v41 = v69;
    sub_1D23BBF8C(v36, v69);
    sub_1D22BD238(v41, &qword_1EC6DA810);
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0) + 48);
  v43 = v75;
  *v75 = 0;
  v44 = v77;
  v40(&v43[v42], v71, v77);
  return (*(v19 + 56))(&v43[v42], 0, 1, v44);
}

uint64_t sub_1D2607E00@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808);
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - v9;
  v10 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48);
  v19 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - v23;
  v24 = *a1;
  if (*(*a1 + 16))
  {
    v67 = v12;
    v22 = sub_1D25D0F04(a2);
    if (v25)
    {
      v26 = v22;
      v27 = *(v24 + 36);
      result = swift_isUniquelyReferenced_nonNull_native();
      v66 = v27;
      if ((result & 1) == 0)
      {
        v78 = v24;
        result = sub_1D24EE950();
        LODWORD(v27) = v66;
        v24 = v78;
      }

      if (v26 < 0 || v26 >= 1 << *(v24 + 32))
      {
        goto LABEL_33;
      }

      if ((*(v24 + 8 * (v26 >> 6) + 64) & (1 << v26)) == 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v27 != *(v24 + 36))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v64 = 1 << v26;
      v65 = v26 >> 6;
      v68 = v5;
      v63 = *(v72 + 72) * v26;
      sub_1D25F69A8(v73, &qword_1EC6DCA48, sub_1D25D59FC, sub_1D24EE5E0, v18);
      *a1 = v24;
      v29 = v77;
      if ((*(v19 + 48))(v18, 1, v77) != 1)
      {
        v74 = *(v19 + 32);
        v74(v70, v18, v29);
        v61 = &unk_1D2884480;
        v45 = v67;
        v46 = v69;
        sub_1D2606280(v67, v69, v26, v66, 0, v24, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808);
        sub_1D260E160(v45, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v47 = *(v46 + *(v76 + 56));
        sub_1D2870F68();
        sub_1D22BD238(v46, &qword_1EC6DA808);
        v48 = *(v47 + 16);

        if (v48)
        {
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88) + 48);
          v50 = v74;
          v51 = v75;
          *v75 = 0;
          v50(&v51[v49], v70, v29);
          return (*(v19 + 56))(&v51[v49], 0, 1, v29);
        }

        v73 = v19 + 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v78 = v24;
          result = sub_1D24EE950();
          v24 = v78;
        }

        v52 = v76;
        v53 = v66;
        if (v26 < 1 << *(v24 + 32))
        {
          if ((*(v24 + 8 * v65 + 64) & v64) != 0)
          {
            if (v66 == *(v24 + 36))
            {
              *(*(v24 + 56) + v63 + *(v76 + 64)) = 1;
              *a1 = v24;
              v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88) + 48);
              v61 = &unk_1D2884480;
              v55 = v67;
              sub_1D2606280(v67, v46, v26, v53, 0, v24, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808);
              sub_1D260E160(v55, type metadata accessor for ImageKeyFaceLoader.Context.ID);
              v56 = *(v46 + *(v52 + 60));
              sub_1D2870F78();
              sub_1D22BD238(v46, &qword_1EC6DA808);
              v57 = v74;
              v58 = v75;
              *v75 = v56;
              v59 = v77;
              v57(&v58[v54], v70, v77);
              return (*(v19 + 56))(&v58[v54], 0, 1, v59);
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = sub_1D22BD238(v18, &qword_1EC6DEC48);
      v6 = v68;
    }
  }

  v32 = a1[1];
  v31 = a1 + 1;
  v30 = v32;
  MEMORY[0x1EEE9AC00](v22);
  v60 = v74;
  v61 = a2;
  v33 = sub_1D25A62B4(sub_1D260F5BC, (&v62 - 4), v32);
  v34 = v77;
  if (v35)
  {
LABEL_17:
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88) + 48);
    v39 = v75;
    *v75 = 0;
    return (*(v19 + 56))(&v39[v38], 1, 1, v34);
  }

  v36 = v33;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = sub_1D278BD94(v30);
  v30 = result;
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if (v36 >= v30[2])
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v36;
  sub_1D25F69A8(v73, &qword_1EC6DCA48, sub_1D25D59FC, sub_1D24EE5E0, v15);
  *v31 = v30;
  if ((*(v19 + 48))(v15, 1, v34) == 1)
  {
    sub_1D22BD238(v15, &qword_1EC6DEC48);
    goto LABEL_17;
  }

  v68 = v6;
  v40 = *(v19 + 32);
  result = v40(v71, v15, v34);
  if (v36 >= v30[2])
  {
    goto LABEL_36;
  }

  if (!*(*(v37 + *(v76 + 56)) + 16))
  {
    v41 = v69;
    sub_1D23BC0F8(v36, v69);
    sub_1D22BD238(v41, &qword_1EC6DA808);
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88) + 48);
  v43 = v75;
  *v75 = 0;
  v44 = v77;
  v40(&v43[v42], v71, v77);
  return (*(v19 + 56))(&v43[v42], 0, 1, v44);
}

uint64_t sub_1D26086A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAtKeyPath();
  LOBYTE(a3) = sub_1D24992D0(v6, a3);
  sub_1D260E160(v6, type metadata accessor for GeneratedPreviewOptions);
  return a3 & 1;
}

uint64_t sub_1D260876C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAtKeyPath();
  v7 = *v6 == *a3 && v6[1] == a3[1];
  if (v7 || (v8 = 0, (sub_1D2879618() & 1) != 0))
  {
    v8 = sub_1D24992D0((v6 + *(v4 + 20)), (a3 + *(v4 + 20)));
  }

  sub_1D260E160(v6, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  return v8 & 1;
}

uint64_t sub_1D2608864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 98) = a6;
  *(v7 + 97) = a5;
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0);
  *(v7 + 56) = v9;
  *(v7 + 64) = *(v9 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 96) = a5;

  return MEMORY[0x1EEE6DFA0](sub_1D2608940, 0, 0);
}

uint64_t sub_1D2608940()
{
  v3 = (*(*(v0 + 40) + 16) + **(*(v0 + 40) + 16));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D2608A38;

  return v3(v0 + 16, v0 + 96);
}

uint64_t sub_1D2608A38()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D2608D1C;
  }

  else
  {
    v2 = sub_1D2608B4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D2608B4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 97);
  v6 = *(v0 + 98);
  os_unfair_lock_lock((v4 + 40));
  v7 = sub_1D2609DD4((v4 + 48), v6, v4, v3, v5, v1, v2 != 0);
  os_unfair_lock_unlock((v4 + 40));
  if (!v2)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v0 + 64);
      v11 = *(v9 + 16);
      v10 = v9 + 16;
      v19 = v11;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *(v10 + 56);
      do
      {
        v15 = *(v0 + 88);
        v19(*(v0 + 72), v12, *(v0 + 56));
        v16 = *(v0 + 72);
        v17 = *(v0 + 56);
        if (v15)
        {
          *(v0 + 24) = v1;
          v14 = v1;
          sub_1D2878508();
        }

        else
        {
          *(v0 + 32) = v1;
          sub_1D2870F78();
          sub_1D2878518();
        }

        (*(v10 - 8))(v16, v17);
        v12 += v13;
        --v8;
      }

      while (v8);
    }

    sub_1D245C6D0(v1, *(v0 + 88) != 0);

    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t sub_1D2608D1C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 97);
  v5 = *(v0 + 98);
  os_unfair_lock_lock((v3 + 40));
  v6 = sub_1D2609DD4((v3 + 48), v5, v3, v2, v4, v1, v1 != 0);
  os_unfair_lock_unlock((v3 + 40));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 64);
    v10 = *(v8 + 16);
    v9 = v8 + 16;
    v19 = v10;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v14 = *(v0 + 88);
      v19(*(v0 + 72), v11, *(v0 + 56));
      v15 = *(v0 + 72);
      v16 = *(v0 + 56);
      if (v14)
      {
        *(v0 + 24) = v1;
        v13 = v1;
        sub_1D2878508();
      }

      else
      {
        *(v0 + 32) = v1;
        sub_1D2870F78();
        sub_1D2878518();
      }

      (*(v9 - 8))(v15, v16);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  sub_1D245C6D0(v1, *(v0 + 88) != 0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D2608EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60);
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2609048, 0, 0);
}

uint64_t sub_1D2609048()
{
  v5 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1D2609140;
  v2 = v0[11];
  v3 = v0[4];

  return v5(v2, v3);
}

uint64_t sub_1D2609140()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D26094C4;
  }

  else
  {
    v2 = sub_1D2609254;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D2609254()
{
  sub_1D22EC9BC(v0[11], v0[14], &qword_1EC6DC0F0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  os_unfair_lock_lock((v6 + 40));
  v7 = sub_1D260A614((v6 + 48), v4, v6, v3, v5, v2);
  os_unfair_lock_unlock((v6 + 40));
  if (!v1)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v0[8];
      v11 = *(v9 + 16);
      v9 += 16;
      v10 = v11;
      v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v13 = (v9 - 8);
      v14 = *(v9 + 56);
      do
      {
        v18 = v0[13];
        v17 = v0[14];
        v10(v0[9], v12, v0[7]);
        sub_1D22BD1D0(v17, v18, &qword_1EC6DEFB8);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v20 = v0[13];
        if (EnumCaseMultiPayload == 1)
        {
          v15 = v0[9];
          v16 = v0[7];
          v0[2] = *v20;
          sub_1D2878508();
          (*v13)(v15, v16);
        }

        else
        {
          v21 = v0[9];
          v22 = v0[7];
          sub_1D22EC9BC(v20, v0[10], &qword_1EC6DC0F0);
          sub_1D2878518();
          (*v13)(v21, v22);
        }

        v12 += v14;
        --v8;
      }

      while (v8);
    }

    sub_1D22BD238(v0[14], &qword_1EC6DEFB8);

    v23 = v0[1];

    v23();
  }
}

uint64_t sub_1D26094C4()
{
  *v0[14] = v0[16];
  swift_storeEnumTagMultiPayload();
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  os_unfair_lock_lock((v5 + 40));
  v6 = sub_1D260A614((v5 + 48), v3, v5, v2, v4, v1);
  os_unfair_lock_unlock((v5 + 40));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v0[8];
    v10 = *(v8 + 16);
    v8 += 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = (v8 - 8);
    v13 = *(v8 + 56);
    do
    {
      v17 = v0[13];
      v16 = v0[14];
      v9(v0[9], v11, v0[7]);
      sub_1D22BD1D0(v16, v17, &qword_1EC6DEFB8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v19 = v0[13];
      if (EnumCaseMultiPayload == 1)
      {
        v14 = v0[9];
        v15 = v0[7];
        v0[2] = *v19;
        sub_1D2878508();
        (*v12)(v14, v15);
      }

      else
      {
        v20 = v0[9];
        v21 = v0[7];
        sub_1D22EC9BC(v19, v0[10], &qword_1EC6DC0F0);
        sub_1D2878518();
        (*v12)(v20, v21);
      }

      v11 += v13;
      --v7;
    }

    while (v7);
  }

  sub_1D22BD238(v0[14], &qword_1EC6DEFB8);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D260971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48);
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26097EC, 0, 0);
}

uint64_t sub_1D26097EC()
{
  v4 = (*(v0[25] + 16) + **(v0[25] + 16));
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1D26098E4;
  v2 = v0[26];

  return v4(v0 + 14, v2);
}

uint64_t sub_1D26098E4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D2609BE8;
  }

  else
  {
    v2 = sub_1D26099F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D26099F8()
{
  sub_1D22D79FC((v0 + 112), v0 + 16);
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  *(v0 + 56) = v1 != 0;
  os_unfair_lock_lock((v5 + 40));
  v6 = sub_1D260B248((v5 + 48), v2, v5, v3, v4, v0 + 16);
  os_unfair_lock_unlock((v5 + 40));
  if (!v1)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v0 + 240);
      v11 = *(v8 + 16);
      v9 = v8 + 16;
      v10 = v11;
      v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v13 = *(v9 + 56);
      v11(*(v0 + 248), v12, *(v0 + 232));
      while (1)
      {
        sub_1D22BD1D0(v0 + 16, v0 + 64, &qword_1EC6DEF80);
        v14 = *(v0 + 248);
        v15 = *(v0 + 232);
        if (*(v0 + 104))
        {
          *(v0 + 192) = *(v0 + 64);
          sub_1D2878508();
        }

        else
        {
          sub_1D22D79FC((v0 + 64), v0 + 152);
          sub_1D2878518();
        }

        (*(v9 - 8))(v14, v15);
        v12 += v13;
        if (!--v7)
        {
          break;
        }

        v10(*(v0 + 248), v12, *(v0 + 232));
      }
    }

    sub_1D22BD238(v0 + 16, &qword_1EC6DEF80);

    v16 = *(v0 + 8);

    v16();
  }
}

uint64_t sub_1D2609BE8()
{
  v1 = *(v0 + 264);
  *(v0 + 16) = v1;
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  *(v0 + 56) = v1 != 0;
  os_unfair_lock_lock((v5 + 40));
  v6 = sub_1D260B248((v5 + 48), v3, v5, v2, v4, v0 + 16);
  os_unfair_lock_unlock((v5 + 40));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 240);
    v11 = *(v8 + 16);
    v10 = v8 + 16;
    v9 = v11;
    v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v11(*(v0 + 248), v12, *(v0 + 232));
    while (1)
    {
      sub_1D22BD1D0(v0 + 16, v0 + 64, &qword_1EC6DEF80);
      v14 = *(v0 + 248);
      v15 = *(v0 + 232);
      if (*(v0 + 104))
      {
        *(v0 + 192) = *(v0 + 64);
        sub_1D2878508();
      }

      else
      {
        sub_1D22D79FC((v0 + 64), v0 + 152);
        sub_1D2878518();
      }

      (*(v10 - 8))(v14, v15);
      v12 += v13;
      if (!--v7)
      {
        break;
      }

      v9(*(v0 + 248), v12, *(v0 + 232));
    }
  }

  sub_1D22BD238(v0 + 16, &qword_1EC6DEF80);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D2609DD4(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(v78) = a7;
  v79 = a6;
  v87 = a5;
  v77 = a4;
  v83 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v67 - v12;
  v13 = sub_1D28785F8();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v67 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
  MEMORY[0x1EEE9AC00](v84);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v67 - v23;
  v25 = *a1;
  if (!*(*a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v74 = v22;
  v70 = a2;
  v26 = sub_1D25DB1BC(a2);
  if ((v27 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v28 = *(v25 + 36);
  v73 = v26;
  v71 = a1;
  v72 = v28;
  sub_1D26061B8(v24, v26, v28, 0, v25);
  v29 = v24[v84[16]];
  sub_1D22BD238(v24, &qword_1EC6DA818);
  v69 = v7;
  if (v29 != 1)
  {
    v31 = v71;
    v41 = v71[3];
    if (v41)
    {
      v42 = v71[5];
      v24 = v71[4];
      v43 = v79;
      v85 = v79;
      v44 = v78 & 1;
      LOBYTE(v86) = v78 & 1;
      v88 = v70;
      sub_1D260F434(v41);
      sub_1D245C6AC(v43, v44);
      v42(&v88, &v85);

      sub_1D245C6D0(v43, v44);
    }

LABEL_18:
    v45 = v81;
    v46 = v82;
    *v46 = sub_1D260CDF4(v82 + *(v81 + 48), v73, v72);
    v47 = v80;
    sub_1D22BD1D0(v46, v80, &qword_1EC6DEFD8);
    v48 = v47 + *(v45 + 48);
    v49 = *(v48 + v84[14]);
    sub_1D2870F68();
    sub_1D22BD238(v48, &qword_1EC6DA818);
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = sub_1D27CE984(*(v49 + 16), 0);
      v24 = &unk_1D288E820;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0) - 8);
      v53 = v51;
      sub_1D260D468(&v85, (v51 + ((*(v52 + 80) + 32) & ~*(v52 + 80))), v50, v49, &qword_1EC6DCAA0);
      v55 = v54;
      sub_1D23EEDB0();
      if (v55 == v50)
      {
LABEL_22:
        a2 = sub_1D260BE68(v31);
        sub_1D22BD238(v46, &qword_1EC6DEFD8);
        if (a2)
        {
          return v53;
        }

        v56 = v31[2];
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (!v57)
        {
          v31[2] = v58;
          return v53;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
    }

    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v71;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v85 = v25;
    sub_1D24EB704();
    v25 = v85;
  }

  v32 = v73;
  if (v73 < 0 || v73 >= 1 << *(v25 + 32))
  {
    __break(1u);
    goto LABEL_34;
  }

  a2 = v73 >> 6;
  if ((*(v25 + 8 * (v73 >> 6) + 64) & (1 << v73)) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v78 = 1 << v73;
  v33 = v72;
  if (v72 != *(v25 + 36))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = *(v25 + 56);
  v79 = *(v74 + 72);
  v68 = v79 * v73;
  v35 = v84;
  *(v34 + v79 * v73 + v84[16]) = 0;
  *v31 = v25;
  sub_1D26061B8(v24, v32, v33, 0, v25);
  v36 = *&v24[v35[14]];
  sub_1D2870F68();
  sub_1D22BD238(v24, &qword_1EC6DA818);
  v37 = *(v36 + 16);
  v31 = v71;

  if (!v37)
  {
    goto LABEL_18;
  }

  v82 = a2;
  a2 = v31[1];
  if (*(a2 + 16))
  {
    sub_1D26061B8(v20, v73, v72, 0, v25);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_13:
      v38 = v74;
      v40 = *(a2 + 16);
      v39 = *(a2 + 24);
      if (v40 >= v39 >> 1)
      {
        v66 = sub_1D27CC7A8(v39 > 1, v40 + 1, 1, a2);
        v38 = v74;
        a2 = v66;
      }

      *(a2 + 16) = v40 + 1;
      sub_1D22EC9BC(v20, a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v40 * v79, &qword_1EC6DA818);
      v31[1] = a2;
      sub_1D260CDF4(v24, v73, v72);
      sub_1D22BD238(v24, &qword_1EC6DA818);
      sub_1D260BE68(v31);
      return MEMORY[0x1E69E7CC0];
    }

LABEL_37:
    a2 = sub_1D27CC7A8(0, *(a2 + 16) + 1, 1, a2);
    goto LABEL_13;
  }

  v60 = v75;
  v61 = v76;
  v62 = *(v75 + 16);
  v62(v18, v77, v76);
  (*(v60 + 56))(v18, 0, 1, v61);
  v62(&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v77, v61);
  v63 = (*(v60 + 80) + 42) & ~*(v60 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v83;
  *(v64 + 40) = v87;
  *(v64 + 41) = v70;
  (*(v60 + 32))(v64 + v63, v15, v61);
  sub_1D2870F78();
  v65 = sub_1D22AE01C(0, 0, v18, &unk_1D28983B8, v64);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v85 = v25;
    result = sub_1D24EB704();
    v25 = v85;
  }

  if (v73 >= 1 << *(v25 + 32))
  {
    __break(1u);
    goto LABEL_39;
  }

  if ((*(v25 + 8 * v82 + 64) & v78) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v72 == *(v25 + 36))
  {
    *(*(v25 + 56) + v68 + v84[15]) = v65;

    *v31 = v25;
    return MEMORY[0x1E69E7CC0];
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D260A614(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a6;
  v87 = a5;
  v90 = a4;
  v98 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v78 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC8);
  MEMORY[0x1EEE9AC00](v95);
  v100 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v78 - v14;
  v15 = sub_1D28785F8();
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v92 = &v78 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810);
  v97 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v91 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  v23 = type metadata accessor for GeneratedPreviewOptions(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v101 = &v78 - v31;
  v99 = a1;
  v32 = *a1;
  if (!*(v32 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v83 = v30;
  v84 = a2;
  v33 = sub_1D25D0488(a2);
  if ((v34 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v81 = v28;
  v82 = v6;
  v35 = *(v32 + 36);
  v36 = &unk_1D28972B0;
  v37 = v101;
  v86 = v33;
  v85 = v35;
  sub_1D2606280(v101, v22, v33, v35, 0, v32, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
  sub_1D260E160(v37, type metadata accessor for GeneratedPreviewOptions);
  LODWORD(v37) = v22[v103[16]];
  sub_1D22BD238(v22, &qword_1EC6DA810);
  if (v37 != 1)
  {
    v42 = v99;
    if (v99[3])
    {
      v50 = v99[5];
      v51 = v101;
      sub_1D260E0F8(v84, v101, type metadata accessor for GeneratedPreviewOptions);
      sub_1D22BD1D0(v94, v11, &qword_1EC6DEFB8);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8);
      (*(*(v52 - 8) + 56))(v11, 0, 1, v52);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2870F78();
      v50(v51, v11);

      sub_1D22BD238(v11, &qword_1EC6DEFB0);
      sub_1D260E160(v51, type metadata accessor for GeneratedPreviewOptions);
    }

LABEL_18:
    v11 = v95;
    v53 = v96;
    sub_1D260CF08(v96, v96 + *(v95 + 48), v86, v85);
    v54 = v100;
    sub_1D22BD1D0(v53, v100, &qword_1EC6DEFC8);
    v55 = v54 + *(v11 + 12);
    v56 = *(v55 + v103[14]);
    sub_1D2870F68();
    sub_1D22BD238(v55, &qword_1EC6DA810);
    v57 = *(v56 + 16);
    v36 = v42;
    if (v57)
    {
      v11 = sub_1D27CEA50(*(v56 + 16), 0);
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60) - 8);
      v22 = v11;
      sub_1D260D468(&v102, &v11[(*(v58 + 80) + 32) & ~*(v58 + 80)], v57, v56, &qword_1EC6DCA60);
      v60 = v59;
      sub_1D23EEDB0();
      if (v60 == v57)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_22:
    sub_1D260E160(v100, type metadata accessor for GeneratedPreviewOptions);
    v61 = sub_1D260C270(v42);
    sub_1D22BD238(v53, &qword_1EC6DEFC8);
    if (v61)
    {
      return v22;
    }

    v63 = *(v42 + 16);
    v64 = __OFSUB__(v63, 1);
    v65 = v63 - 1;
    if (!v64)
    {
      *(v42 + 16) = v65;
      return v22;
    }

    goto LABEL_36;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v102 = v32;
    sub_1D24EDFEC();
    v32 = v102;
  }

  v38 = v85;
  v39 = v86;
  if ((v86 & 0x8000000000000000) != 0 || v86 >= 1 << *(v32 + 32))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((*(v32 + 8 * (v86 >> 6) + 64) & (1 << v86)) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v79 = 1 << v86;
  v80 = v86 >> 6;
  if (v85 != *(v32 + 36))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v40 = *(v32 + 56);
  v94 = *(v97 + 72);
  v78 = v94 * v86;
  v41 = v103;
  *(v40 + v94 * v86 + v103[16]) = 0;
  v42 = v99;
  *v99 = v32;
  v43 = v101;
  sub_1D2606280(v101, v22, v39, v38, 0, v32, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
  sub_1D260E160(v43, type metadata accessor for GeneratedPreviewOptions);
  v44 = *&v22[v41[14]];
  sub_1D2870F68();
  sub_1D22BD238(v22, &qword_1EC6DA810);
  v45 = *(v44 + 16);

  if (!v45)
  {
    goto LABEL_18;
  }

  v11 = *(v42 + 8);
  if (*(v11 + 2))
  {
    v36 = v91;
    sub_1D2606280(v25, v91, v86, v85, 0, v32, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810);
    sub_1D260E160(v25, type metadata accessor for GeneratedPreviewOptions);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_13:
      v46 = v99;
      v48 = *(v11 + 2);
      v47 = *(v11 + 3);
      if (v48 >= v47 >> 1)
      {
        v11 = sub_1D27CD040(v47 > 1, v48 + 1, 1, v11);
      }

      *(v11 + 2) = v48 + 1;
      sub_1D22EC9BC(v36, &v11[((*(v97 + 80) + 32) & ~*(v97 + 80)) + v48 * v94], &qword_1EC6DA810);
      *(v46 + 8) = v11;
      v49 = v101;
      sub_1D260CF08(v101, v22, v86, v85);
      sub_1D22BD238(v22, &qword_1EC6DA810);
      sub_1D260E160(v49, type metadata accessor for GeneratedPreviewOptions);
      sub_1D260C270(v46);
      return MEMORY[0x1E69E7CC0];
    }

LABEL_37:
    v11 = sub_1D27CD040(0, *(v11 + 2) + 1, 1, v11);
    goto LABEL_13;
  }

  v66 = v88;
  v67 = v89;
  v68 = *(v88 + 16);
  v69 = v92;
  v70 = v90;
  v68(v92, v90, v89);
  (*(v66 + 56))(v69, 0, 1, v67);
  sub_1D260E0F8(v87, v101, type metadata accessor for GeneratedPreviewOptions);
  sub_1D260E0F8(v84, v81, type metadata accessor for GeneratedPreviewOptions);
  v68(v93, v70, v67);
  v71 = *(v83 + 80);
  v72 = (v71 + 40) & ~v71;
  v73 = (v24 + v71 + v72) & ~v71;
  v74 = (v24 + *(v66 + 80) + v73) & ~*(v66 + 80);
  v75 = swift_allocObject();
  *(v75 + 2) = 0;
  *(v75 + 3) = 0;
  *(v75 + 4) = v98;
  sub_1D260E2B8(v101, &v75[v72], type metadata accessor for GeneratedPreviewOptions);
  sub_1D260E2B8(v81, &v75[v73], type metadata accessor for GeneratedPreviewOptions);
  (*(v66 + 32))(&v75[v74], v93, v67);
  sub_1D2870F78();
  v76 = sub_1D22AE01C(0, 0, v92, &unk_1D2898350, v75);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v102 = v32;
    result = sub_1D24EDFEC();
    v32 = v102;
  }

  v77 = v99;
  if (v86 >= 1 << *(v32 + 32))
  {
    __break(1u);
    goto LABEL_39;
  }

  if ((*(v32 + 8 * v80 + 64) & v79) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v85 == *(v32 + 36))
  {
    *(*(v32 + 56) + v78 + v103[15]) = v76;

    *v77 = v32;
    return MEMORY[0x1E69E7CC0];
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D260B248(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v82 = a5;
  v86 = a4;
  v95 = a3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF90);
  MEMORY[0x1EEE9AC00](v91);
  v92 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v72 - v10;
  v11 = sub_1D28785F8();
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v72 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808);
  v94 = *(v96 - 1);
  MEMORY[0x1EEE9AC00](v96);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v72 - v19);
  v21 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v72 - v26;
  v28 = *a1;
  if (!*(*a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v75 = v25;
  v77 = a2;
  v29 = sub_1D25D0F04(a2);
  if ((v30 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v78 = a1;
  v31 = *(v28 + 36);
  v32 = v27;
  v33 = &unk_1D2884480;
  v80 = v29;
  v79 = v31;
  sub_1D2606280(v32, v20, v29, v31, 0, v28, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808);
  v76 = v32;
  sub_1D260E160(v32, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  LODWORD(v32) = *(v20 + v96[16]);
  sub_1D22BD238(v20, &qword_1EC6DA808);
  if (v32 != 1)
  {
    v35 = v78;
    if (v78[3])
    {
      v20 = v78[5];
      v33 = v76;
      sub_1D260E0F8(v77, v76, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      sub_1D22BD1D0(v90, &v97, &qword_1EC6DEF80);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2870F78();
      v20(v33, &v97);

      sub_1D22BD238(&v97, &qword_1EC6DEF78);
      sub_1D260E160(v33, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    }

LABEL_18:
    v48 = v91;
    v12 = v93;
    sub_1D260D058(v93, v93 + *(v91 + 48), v80, v79);
    v22 = v92;
    sub_1D22BD1D0(v12, v92, &qword_1EC6DEF90);
    v49 = v22 + *(v48 + 48);
    v50 = *(v49 + v96[14]);
    sub_1D2870F68();
    sub_1D22BD238(v49, &qword_1EC6DA808);
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = sub_1D27CEA74(*(v50 + 16), 0);
      v33 = &qword_1EC6DCA48;
      v20 = &unk_1D2897270;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48) - 8);
      v54 = v52;
      sub_1D260D468(&v97, (v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80))), v51, v50, &qword_1EC6DCA48);
      v56 = v55;
      sub_1D23EEDB0();
      if (v56 == v51)
      {
LABEL_22:
        sub_1D260E160(v22, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v57 = sub_1D260C7F0(v35);
        sub_1D22BD238(v12, &qword_1EC6DEF90);
        if (v57)
        {
          return v54;
        }

        v58 = v35[2];
        v59 = __OFSUB__(v58, 1);
        v60 = v58 - 1;
        if (!v59)
        {
          v35[2] = v60;
          return v54;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
    }

    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v78;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v97 = v28;
    sub_1D24EE950();
    v28 = v97;
  }

  v36 = v80;
  if ((v80 & 0x8000000000000000) != 0 || v80 >= 1 << *(v28 + 32))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((*(v28 + 8 * (v80 >> 6) + 64) & (1 << v80)) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v73 = 1 << v80;
  v74 = v80 >> 6;
  v37 = v79;
  if (v79 != *(v28 + 36))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = *(v28 + 56);
  v90 = *(v94 + 72);
  v72 = v90 * v80;
  v39 = v96;
  *(v38 + v90 * v80 + v96[16]) = 0;
  *v35 = v28;
  v40 = v76;
  sub_1D2606280(v76, v20, v36, v37, 0, v28, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808);
  sub_1D260E160(v40, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  v41 = *(v20 + v39[14]);
  sub_1D2870F68();
  sub_1D22BD238(v20, &qword_1EC6DA808);
  v42 = *(v41 + 16);
  v35 = v78;

  if (!v42)
  {
    goto LABEL_18;
  }

  v43 = v35[1];
  if (!v43[2])
  {
    v61 = v88;
    v62 = *(v88 + 16);
    v63 = v85;
    v62(v85, v86, v89);
    v64 = v63;
    v65 = v89;
    (*(v61 + 56))(v64, 0, 1, v89);
    sub_1D260E0F8(v82, v84, type metadata accessor for ImageKeyFaceLoader.Context);
    sub_1D260E0F8(v77, v76, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v62(v87, v86, v65);
    v66 = (*(v81 + 80) + 40) & ~*(v81 + 80);
    v67 = (v14 + *(v75 + 80) + v66) & ~*(v75 + 80);
    v68 = v88;
    v69 = (v22 + *(v88 + 80) + v67) & ~*(v88 + 80);
    v70 = swift_allocObject();
    *(v70 + 2) = 0;
    *(v70 + 3) = 0;
    *(v70 + 4) = v95;
    sub_1D260E2B8(v84, &v70[v66], type metadata accessor for ImageKeyFaceLoader.Context);
    sub_1D260E2B8(v76, &v70[v67], type metadata accessor for ImageKeyFaceLoader.Context.ID);
    (*(v68 + 32))(&v70[v69], v87, v65);
    sub_1D2870F78();
    v71 = sub_1D22AE01C(0, 0, v85, &unk_1D2898240, v70);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v97 = v28;
      result = sub_1D24EE950();
      v28 = v97;
    }

    if (v80 >= 1 << *(v28 + 32))
    {
      __break(1u);
    }

    else if ((*(v28 + 8 * v74 + 64) & v73) != 0)
    {
      if (v79 == *(v28 + 36))
      {
        *(*(v28 + 56) + v72 + v96[15]) = v71;

        *v35 = v28;
        return MEMORY[0x1E69E7CC0];
      }

LABEL_40:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  v12 = v83;
  sub_1D2606280(v23, v83, v80, v79, 0, v28, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808);
  sub_1D260E160(v23, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v76;
  v22 = v43;
  if ((v44 & 1) == 0)
  {
LABEL_37:
    v22 = sub_1D27CD064(0, v22[2] + 1, 1, v22);
  }

  v46 = v22[2];
  v45 = v22[3];
  if (v46 >= v45 >> 1)
  {
    v22 = sub_1D27CD064(v45 > 1, v46 + 1, 1, v22);
  }

  v22[2] = v46 + 1;
  sub_1D22EC9BC(v12, v22 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + v46 * v90, &qword_1EC6DA808);
  v35[1] = v22;
  sub_1D260D058(v33, v20, v80, v79);
  sub_1D22BD238(v20, &qword_1EC6DA808);
  sub_1D260E160(v33, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  sub_1D260C7F0(v35);
  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1D260BE68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1D28785F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v14;
  v18 = *(a1 + 8);
  v19 = *(v18 + 16);
  if (v19)
  {
    v42 = *(v18 + 16);
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v39 = v16;
    v40 = v15;
    sub_1D22BD1D0(v18 + v20, &v34 - v14, &qword_1EC6DA818);
    swift_getAtKeyPath();
    v41 = a1;
    v21 = *(v12 + 52);
    v22 = *v17;
    v37 = v12;
    v38 = v5;
    v34 = v1;
    v23 = *(v7 + 16);
    v35 = v44;
    v36 = v22;
    v23(v11, &v17[v21], v6);
    (*(v7 + 56))(v11, 0, 1, v6);
    v24 = v43;
    v23(v43, &v17[v21], v6);
    v25 = (*(v7 + 80) + 42) & ~*(v7 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v34;
    v27 = v35;
    *(v26 + 40) = v36;
    *(v26 + 41) = v27;
    (*(v7 + 32))(v26 + v25, v24, v6);
    sub_1D2870F78();
    v28 = sub_1D22AE01C(0, 0, v11, &unk_1D28983C0, v26);
    v29 = v37;
    v30 = *(v37 + 60);

    *&v17[v30] = v28;
    v31 = v39;
    sub_1D23BBD08(0, v39);
    sub_1D22BD238(v31, &qword_1EC6DA818);
    v32 = v38;
    sub_1D22BD1D0(v17, v38, &qword_1EC6DA818);
    (*(v40 + 56))(v32, 0, 1, v29);
    sub_1D25CE074(v32, v27);
    sub_1D22BD238(v17, &qword_1EC6DA818);
    v19 = v42;
  }

  return v19 != 0;
}

BOOL sub_1D260C270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC58);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_1D28785F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = v7;
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v52 - v9;
  v10 = type metadata accessor for GeneratedPreviewOptions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v52 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v52 - v22;
  v61 = a1;
  v28 = *(a1 + 8);
  v27 = a1 + 8;
  v26 = v28;
  v29 = *(v28 + 16);
  if (v29)
  {
    v59 = v23;
    v60 = v29;
    v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v53 = v11;
    v31 = v21;
    v55 = v21;
    v56 = v24;
    sub_1D22BD1D0(v26 + v30, &v52 - v22, &qword_1EC6DA810);
    v57 = v27;
    swift_getAtKeyPath();
    v65 = v15;
    v32 = *(v31 + 52);
    v58 = v4;
    v33 = *(v6 + 16);
    v34 = v66;
    v33(v66, &v25[v32], v5);
    (*(v6 + 56))(v34, 0, 1, v5);
    v54 = type metadata accessor for GeneratedPreviewOptions;
    sub_1D260E0F8(v25, v15, type metadata accessor for GeneratedPreviewOptions);
    v35 = v62;
    sub_1D260E0F8(v18, v62, type metadata accessor for GeneratedPreviewOptions);
    v36 = &v25[v32];
    v37 = v64;
    v33(v64, v36, v5);
    v38 = v53[80];
    v39 = (v38 + 40) & ~v38;
    v40 = (v12 + v38 + v39) & ~v38;
    v41 = *(v6 + 80);
    v52 = v5;
    v53 = v18;
    v42 = (v12 + v41 + v40) & ~v41;
    v43 = swift_allocObject();
    *(v43 + 2) = 0;
    *(v43 + 3) = 0;
    *(v43 + 4) = v67;
    sub_1D260E2B8(v65, &v43[v39], type metadata accessor for GeneratedPreviewOptions);
    sub_1D260E2B8(v35, &v43[v40], type metadata accessor for GeneratedPreviewOptions);
    (*(v6 + 32))(&v43[v42], v37, v52);
    sub_1D2870F78();
    v44 = sub_1D22AE01C(0, 0, v66, &unk_1D2898358, v43);
    v45 = v55;
    v46 = *(v55 + 60);

    *&v25[v46] = v44;
    v47 = v56;
    sub_1D23BBF8C(0, v56);
    sub_1D22BD238(v47, &qword_1EC6DA810);
    v48 = v53;
    v49 = v65;
    sub_1D260E0F8(v53, v65, v54);
    v50 = v58;
    sub_1D22BD1D0(v25, v58, &qword_1EC6DA810);
    (*(v59 + 56))(v50, 0, 1, v45);
    sub_1D25CF630(v50, v49);
    sub_1D260E160(v48, type metadata accessor for GeneratedPreviewOptions);
    sub_1D22BD238(v25, &qword_1EC6DA810);
    v29 = v60;
  }

  return v29 != 0;
}

BOOL sub_1D260C7F0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v59 = sub_1D28785F8();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = v8;
  v64 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v63 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - v23;
  v27 = *(a1 + 8);
  v28 = *(v27 + 16);
  if (v28)
  {
    v58 = *(v27 + 16);
    v29 = *(v24 + 80);
    v55 = a1 + 8;
    v56 = v24;
    v47 = v15;
    v30 = v22;
    v52 = v22;
    v53 = v25;
    sub_1D22BD1D0(v27 + ((v29 + 32) & ~v29), &v47 - v23, &qword_1EC6DA808);
    v50 = v19;
    swift_getAtKeyPath();
    v57 = a1;
    v31 = *(v30 + 52);
    v54 = v6;
    v48 = v2;
    v49 = v13;
    v32 = *(v7 + 16);
    v33 = v59;
    v32(v13, &v26[v31], v59);
    (*(v7 + 56))(v13, 0, 1, v33);
    v34 = v61;
    sub_1D260E0F8(v26, v61, type metadata accessor for ImageKeyFaceLoader.Context);
    v51 = type metadata accessor for ImageKeyFaceLoader.Context.ID;
    sub_1D260E0F8(v19, v63, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v32(v64, &v26[v31], v33);
    v35 = (*(v60 + 80) + 40) & ~*(v60 + 80);
    v36 = (v10 + *(v47 + 80) + v35) & ~*(v47 + 80);
    v37 = (v16 + *(v7 + 80) + v36) & ~*(v7 + 80);
    v38 = swift_allocObject();
    *(v38 + 2) = 0;
    *(v38 + 3) = 0;
    *(v38 + 4) = v48;
    sub_1D260E2B8(v34, &v38[v35], type metadata accessor for ImageKeyFaceLoader.Context);
    v39 = v63;
    sub_1D260E2B8(v63, &v38[v36], type metadata accessor for ImageKeyFaceLoader.Context.ID);
    (*(v7 + 32))(&v38[v37], v64, v33);
    sub_1D2870F78();
    v40 = sub_1D22AE01C(0, 0, v49, &unk_1D2898248, v38);
    v41 = v52;
    v42 = *(v52 + 60);

    *&v26[v42] = v40;
    v43 = v53;
    sub_1D23BC0F8(0, v53);
    sub_1D22BD238(v43, &qword_1EC6DA808);
    v44 = v50;
    sub_1D260E0F8(v50, v39, v51);
    v45 = v54;
    sub_1D22BD1D0(v26, v54, &qword_1EC6DA808);
    (*(v56 + 56))(v45, 0, 1, v41);
    sub_1D25CFC5C(v45, v39);
    sub_1D260E160(v44, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    sub_1D22BD238(v26, &qword_1EC6DA808);
    v28 = v58;
  }

  return v28 != 0;
}

uint64_t sub_1D260CDF4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1D24EB704();
    *v4 = v9;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = *(*(v9 + 48) + a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
    sub_1D22EC9BC(v10 + *(*(v12 - 8) + 72) * a2, a1, &qword_1EC6DA818);
    sub_1D25D36D8(a2, v9);
    *v4 = v9;
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1D260CF08(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D24EDFEC();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 48);
    v13 = type metadata accessor for GeneratedPreviewOptions(0);
    sub_1D260E2B8(v12 + *(*(v13 - 8) + 72) * a3, a1, type metadata accessor for GeneratedPreviewOptions);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810);
    sub_1D22EC9BC(v14 + *(*(v15 - 8) + 72) * a3, a2, &qword_1EC6DA810);
    sub_1D25D5344(a3, v11);
    *v5 = v11;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1D260D058(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D24EE950();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 48);
    v13 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
    sub_1D260E2B8(v12 + *(*(v13 - 8) + 72) * a3, a1, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808);
    sub_1D22EC9BC(v14 + *(*(v15 - 8) + 72) * a3, a2, &qword_1EC6DA808);
    sub_1D25D5A10(a3, v11);
    *v5 = v11;
    return;
  }

LABEL_10:
  __break(1u);
}

void *sub_1D260D1A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        sub_1D2870F78();
        goto LABEL_24;
      }

      ++v11;
      sub_1D2870F78();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D260D2FC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_1D2870F68();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1D2870F68();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1D260D468(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1D260D710(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D2872008();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1D260D9B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D260DB08(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5)
{
  *(v5 + 16) = a1;
  v8 = *a5;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1D260DBC0;

  return sub_1D260218C(a2, v9, a4, v8);
}

uint64_t sub_1D260DBC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1D260DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7)
{
  v13 = *a6;
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D22BC8FC;

  return sub_1D2608864(a1, a2, a3, a4, v14, v13, a7);
}

uint64_t sub_1D260DDB0(void *a1)
{
  v2 = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = xmmword_1D2898040;
  *(v1 + 88) = 10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = a1;
  v3 = a1;
  v4 = _SystemPhotoLibrary.photoLibrary.getter();
  type metadata accessor for FacePickerPersistentStorage();
  swift_allocObject();
  *(v2 + 32) = sub_1D2494120(v4);
  return v2;
}

uint64_t sub_1D260DED8()
{
  result = type metadata accessor for GeneratedPreviewOptions(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D260DF9C()
{
  result = type metadata accessor for PhotosPersonAsset();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GeneratedPreviewOptions(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D260E0B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D260E0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D260E160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D260E1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D26026D8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D260E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D260E320(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ImageKeyFaceLoader.Context.ID(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D28785F8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D22BDFF8;

  return sub_1D260971C(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_32Tm()
{
  v1 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v2 = *(*(v1 - 8) + 80);
  v27 = *(*(v1 - 8) + 64);
  v28 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v3 = *(*(v28 - 8) + 80);
  v26 = *(*(v28 - 8) + 64);
  v4 = sub_1D28785F8();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + ((v2 + 40) & ~v2);

  if (*(v6 + 32))
  {
  }

  v7 = v6 + *(type metadata accessor for PhotosPersonAsset() + 20);

  v8 = (v7 + *(type metadata accessor for PhotosPersonImage() + 24));

  v9 = type metadata accessor for PlaygroundImage();
  v10 = v9[8];
  v11 = sub_1D2871818();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = (v8 + v9[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_1D22D6D60(*v12, v13);
  }

  v14 = v9[11];
  v15 = sub_1D2873AA8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v8 + v14, 1, v15))
  {
    (*(v16 + 8))(v8 + v14, v15);
  }

  v17 = (((v2 + 40) & ~v2) + v27 + v3) & ~v3;
  v18 = (v17 + v26 + v5) & ~v5;
  v19 = v6 + *(v1 + 20);

  v20 = type metadata accessor for GeneratedPreviewOptions(0);
  v21 = *(v20 + 20);
  v22 = sub_1D2872008();
  v23 = *(*(v22 - 8) + 8);
  v23(v19 + v21, v22);

  v24 = v0 + v17 + *(v28 + 20);

  v23(v24 + *(v20 + 20), v22);

  (*(v29 + 8))(v0 + v18, v30);

  return swift_deallocObject();
}

uint64_t sub_1D260E8B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D25F8CC4(a1, a2);
}

uint64_t sub_1D260E960(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BC8FC;

  return sub_1D25FFFB4(a1, v1 + v5);
}

uint64_t sub_1D260EA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D26005F0(a1, v4, v5, v7, v6);
}

unint64_t sub_1D260EB04()
{
  result = qword_1EC6DEFA8;
  if (!qword_1EC6DEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEFA8);
  }

  return result;
}

uint64_t sub_1D260EB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2601AD8(a1, v4, v5, v6);
}

uint64_t sub_1D260EC0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D2871798() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D22BDFF8;

  return sub_1D2600D8C(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_1D260EDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2602468(a1, v4, v5, v7, v6);
}

uint64_t sub_1D260EED8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(sub_1D28785F8() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D22BDFF8;

  return sub_1D2608EEC(a1, v12, v13, v14, v1 + v7, v1 + v9, v1 + v11);
}

uint64_t objectdestroy_76Tm()
{
  v1 = (type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v12 = sub_1D28785F8();
  v6 = *(v12 - 8);
  v7 = (v5 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  v8 = v1[7];
  v9 = sub_1D2872008();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);

  v10(v0 + v5 + v1[7], v9);

  (*(v6 + 8))(v0 + v7, v12);

  return swift_deallocObject();
}

uint64_t sub_1D260F230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D260DB08(a1, v4, v5, v7, v6);
}

uint64_t sub_1D260F320(uint64_t a1)
{
  v4 = *(sub_1D28785F8() - 8);
  v5 = (*(v4 + 80) + 42) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D260DCD0(a1, v6, v7, v8, (v1 + 40), (v1 + 41), v1 + v5);
}

uint64_t sub_1D260F434(uint64_t result)
{
  if (result)
  {
    sub_1D2870F78();
    sub_1D2870F78();

    return sub_1D2870F78();
  }

  return result;
}

uint64_t objectdestroy_98Tm()
{
  v1 = sub_1D28785F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 42) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_1D260F564()
{
  result = qword_1EC6DF000;
  if (!qword_1EC6DF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF000);
  }

  return result;
}

uint64_t sub_1D260F5FC()
{
  v1 = sub_1D2877B48();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2877B68();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D2612B04;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_28;
  v8 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2877B58();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D2612B24(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1D260F8D0(uint64_t *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_1D2873CB8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = sub_1D28716B8();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_1D2871818();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v40 - v17;
  v18 = sub_1D2872068();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v23 = a1[1];
  v46 = a1[2];
  (*(v19 + 104))(v22, *MEMORY[0x1E696E398], v18, v20);
  LOBYTE(a1) = sub_1D2872058();
  result = (*(v19 + 8))(v22, v18);
  if (a1)
  {
    sub_1D25E3608(v51, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1D22BD238(v12, &qword_1EC6D8F70);
      sub_1D28726B8();
      v26 = sub_1D2873CA8();
      v27 = sub_1D2878A18();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D226E000, v26, v27, "Could not save appearance, personIdentifier is nil", v28, 2u);
        MEMORY[0x1D38A3520](v28, -1, -1);
      }

      return (*(v49 + 8))(v7, v50);
    }

    else
    {
      v29 = v13;
      v30 = *(v14 + 32);
      v31 = v48;
      v51 = v29;
      v30(v48, v12);
      v32 = v45;
      v52 = v24;
      v53 = v23;
      v54 = v46;
      sub_1D2612AB0();
      v33 = sub_1D2871408();
      v35 = v34;
      v36 = v41;
      sub_1D26117B0(v41);
      v37 = sub_1D28716F8();
      v50 = &v40;
      v38 = *(v32 + 32);
      MEMORY[0x1EEE9AC00](v37);
      *(&v40 - 4) = v31;
      *(&v40 - 3) = v24;
      v39 = v46;
      *(&v40 - 2) = v23;
      *(&v40 - 1) = v39;
      os_unfair_lock_lock((v38 + 24));
      sub_1D2612B8C((v38 + 16));
      os_unfair_lock_unlock((v38 + 24));
      sub_1D22D6D60(v33, v35);
      (*(v42 + 8))(v36, v43);
      return (*(v14 + 8))(v31, v51);
    }
  }

  return result;
}

uint64_t sub_1D2610058@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v63 = a2;
  v68 = a1;
  v4 = sub_1D2873CB8();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v57 - v8;
  v9 = sub_1D28716B8();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_1D2871818();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = sub_1D2872068();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x1E696E398], v20, v22);
  v25 = sub_1D2872058();
  result = (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v58 = a3;
  sub_1D25E3608(v68, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v31 = v15;
    v32 = v19;
    v33 = (*(v15 + 32))(v19, v13, v14);
    if (v63)
    {
      v35 = v64;
      v34 = v65;
    }

    else
    {
      v35 = v64;
      v36 = *(v64 + 32);
      MEMORY[0x1EEE9AC00](v33);
      *(&v57 - 2) = v32;
      os_unfair_lock_lock(v36 + 6);
      sub_1D2612754(&v36[4], &v69);
      os_unfair_lock_unlock(v36 + 6);
      v34 = v65;
      if (v69 != 1)
      {
        v47 = v70;
        v48 = v58;
        *v58 = v69;
        *(v48 + 1) = v47;
        return (*(v31 + 8))(v32, v14);
      }
    }

    sub_1D26117B0(v34);
    v37 = [objc_opt_self() defaultManager];
    sub_1D2871658();
    v38 = sub_1D2878068();

    v39 = [v37 fileExistsAtPath_];

    if (v39)
    {
      v41 = sub_1D28716C8();
      v43 = v42;
      sub_1D261278C();
      v44 = sub_1D28713D8();
      v68 = &v57;
      v50 = v69;
      v49 = v70;
      v51 = v35;
      v52 = *(&v70 + 1);
      v57 = v32;
      v53 = *(v51 + 32);
      MEMORY[0x1EEE9AC00](v44);
      *(&v57 - 4) = v54;
      *(&v57 - 3) = v50;
      *(&v57 - 2) = v49;
      *(&v57 - 1) = v52;
      os_unfair_lock_lock((v53 + 24));
      sub_1D2612B8C((v53 + 16));
      os_unfair_lock_unlock((v53 + 24));
      sub_1D22D6D60(v41, v43);
      (*(v61 + 8))(v65, v62);
      v55 = v57;
      v56 = v58;
      *v58 = v50;
      v56[1] = v49;
      v56[2] = v52;
      return (*(v31 + 8))(v55, v14);
    }

    v45 = *(v35 + 32);
    MEMORY[0x1EEE9AC00](v40);
    *(&v57 - 2) = v32;
    os_unfair_lock_lock((v45 + 24));
    sub_1D2612770((v45 + 16));
    os_unfair_lock_unlock((v45 + 24));
    (*(v61 + 8))(v34, v62);
    v46 = v58;
    *v58 = 0;
    v46[1] = 0;
    v46[2] = 0;
    return (*(v31 + 8))(v32, v14);
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70);
  sub_1D28726B8();
  v27 = sub_1D2873CA8();
  v28 = sub_1D2878A18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D226E000, v27, v28, "Could not retrieve appearance, personIdentifier is nil", v29, 2u);
    MEMORY[0x1D38A3520](v29, -1, -1);
  }

  result = (*(v66 + 8))(v6, v67);
  v30 = v58;
  *v58 = 0;
  v30[1] = 0;
  v30[2] = 0;
  return result;
}

void sub_1D2610988()
{
  v1 = v0;
  v116 = sub_1D2873CB8();
  v106 = *(v116 - 8);
  v2 = MEMORY[0x1EEE9AC00](v116);
  v113 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v115 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = &v88 - v6;
  v118 = sub_1D2871818();
  v105 = *(v118 - 8);
  v7 = MEMORY[0x1EEE9AC00](v118);
  v111 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v88 - v11;
  v108 = sub_1D2871528();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v122 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D28716B8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v117 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v88 - v21;
  v23 = sub_1D2872068();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v26, *MEMORY[0x1E696E398], v23);
  v27 = sub_1D2872058();
  (*(v24 + 8))(v26, v23);
  if (v27)
  {
    v28 = *(v1 + 32);
    os_unfair_lock_lock((v28 + 24));
    v29 = *(*(v28 + 16) + 16);
    os_unfair_lock_unlock((v28 + 24));
    if (!v29)
    {
      v30 = [objc_opt_self() defaultManager];
      sub_1D2611BAC(v22);
      v31 = sub_1D28789D8();

      v32 = *(v15 + 8);
      v121 = v15 + 8;
      v119 = v32;
      v32(v22, v14);
      if (v31)
      {
        v93 = v1;
        v89 = (v28 + 16);
        v90 = v28;
        v91 = v31;
        sub_1D28789B8();
        sub_1D2871518();
        v34 = v113;
        v35 = v114;
        v36 = v115;
        if (v124)
        {
          v103 = 0;
          v37 = (v15 + 56);
          v109 = (v15 + 32);
          v112 = 0x80000001D28BE530;
          v104 = (v105 + 48);
          v99 = (v105 + 32);
          v97 = (v105 + 16);
          v105 += 8;
          ++v106;
          v98 = (v15 + 16);
          *&v33 = 136315138;
          v94 = v33;
          *&v33 = 136315394;
          v92 = v33;
          v101 = v22;
          v100 = v20;
          v110 = (v15 + 56);
          do
          {
            v38 = swift_dynamicCast();
            v39 = *v37;
            if (v38)
            {
              v39(v12, 0, 1, v14);
              (*v109)(v20, v12, v14);
              v40 = sub_1D2871548();
              v42 = v117;
              if (v40 == 0xD000000000000010 && v112 == v41)
              {

LABEL_13:
                sub_1D28715C8();
                sub_1D2871598();
                v119(v22, v14);
                sub_1D28717A8();

                v44 = v118;
                if ((*v104)(v35, 1, v118) == 1)
                {
                  sub_1D22BD238(v35, &qword_1EC6D8F70);
                  sub_1D28726B8();
                  (*v98)(v42, v20, v14);
                  v45 = sub_1D2873CA8();
                  v46 = v42;
                  v47 = sub_1D2878A18();
                  if (os_log_type_enabled(v45, v47))
                  {
                    v48 = swift_slowAlloc();
                    v49 = swift_slowAlloc();
                    v123[0] = v49;
                    *v48 = v94;
                    sub_1D2612B24(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
                    v50 = sub_1D28795C8();
                    v52 = v51;
                    v53 = v119;
                    v119(v46, v14);
                    v54 = v50;
                    v22 = v101;
                    v55 = sub_1D23D7C84(v54, v52, v123);
                    v35 = v114;

                    *(v48 + 4) = v55;
                    _os_log_impl(&dword_1D226E000, v45, v47, "Encountered a file without a decodable name: %s", v48, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v49);
                    v56 = v49;
                    v34 = v113;
                    MEMORY[0x1D38A3520](v56, -1, -1);
                    v57 = v48;
                    v36 = v115;
                    MEMORY[0x1D38A3520](v57, -1, -1);

                    (*v106)(v36, v116);
                    v53(v100, v14);
                    v20 = v100;
                  }

                  else
                  {

                    v61 = v119;
                    v119(v46, v14);
                    (*v106)(v36, v116);
                    v61(v20, v14);
                  }

                  v37 = v110;
                  goto LABEL_7;
                }

                (*v99)(v120, v35, v44);
                v58 = v103;
                v59 = sub_1D28716C8();
                v102 = v105 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                if (v58)
                {
                  v103 = 0;
                  sub_1D28726B8();
                  v65 = v111;
                  (*v97)(v111, v120, v44);
                  v66 = v58;
                  v67 = v44;
                  v68 = sub_1D2873CA8();
                  v69 = sub_1D2878A18();

                  if (os_log_type_enabled(v68, v69))
                  {
                    v70 = swift_slowAlloc();
                    v95 = swift_slowAlloc();
                    v96 = swift_slowAlloc();
                    v123[0] = v96;
                    *v70 = v92;
                    sub_1D2612B24(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
                    v71 = sub_1D28795C8();
                    v72 = v65;
                    v74 = v73;
                    v75 = v67;
                    v87 = *v105;
                    (*v105)(v72, v75);
                    v76 = sub_1D23D7C84(v71, v74, v123);

                    *(v70 + 4) = v76;
                    *(v70 + 12) = 2112;
                    v77 = v58;
                    v78 = _swift_stdlib_bridgeErrorToNSError();
                    *(v70 + 14) = v78;
                    v79 = v95;
                    *v95 = v78;
                    _os_log_impl(&dword_1D226E000, v68, v69, "Could not decode appearance file for person: %s with error: %@", v70, 0x16u);
                    sub_1D22BD238(v79, qword_1EC6DA930);
                    MEMORY[0x1D38A3520](v79, -1, -1);
                    v80 = v96;
                    __swift_destroy_boxed_opaque_existential_0(v96);
                    MEMORY[0x1D38A3520](v80, -1, -1);
                    v81 = v70;
                    v34 = v113;
                    MEMORY[0x1D38A3520](v81, -1, -1);

                    (*v106)(v34, v116);
                    v119(v20, v14);
LABEL_25:
                    v36 = v115;
                    v82 = v118;
                  }

                  else
                  {

                    v87 = *v105;
                    (*v105)(v65, v44);
                    (*v106)(v34, v116);
                    v119(v20, v14);
                    v36 = v115;
                    v82 = v44;
                  }

                  v87(v120, v82);
                  v35 = v114;
                  v22 = v101;
                  v37 = v110;
                  goto LABEL_7;
                }

                v62 = v59;
                v63 = v60;
                sub_1D261278C();
                v64 = sub_1D28713D8();
                v96 = &v88;
                v83 = v123[0];
                v84 = v123[2];
                MEMORY[0x1EEE9AC00](v64);
                *(&v88 - 4) = v120;
                *(&v88 - 3) = v83;
                *(&v88 - 2) = v85;
                *(&v88 - 1) = v84;
                v86 = v90;
                os_unfair_lock_lock(v90 + 6);
                sub_1D2612B6C(v89);
                v103 = 0;
                os_unfair_lock_unlock(v86 + 6);
                sub_1D22D6D60(v62, v63);
                v34 = v113;

                v119(v20, v14);
                v87 = *v105;
                goto LABEL_25;
              }

              v43 = sub_1D2879618();

              if (v43)
              {
                goto LABEL_13;
              }

              v119(v20, v14);
              v37 = v110;
            }

            else
            {
              v39(v12, 1, 1, v14);
              sub_1D22BD238(v12, &qword_1EC6DA1B8);
            }

LABEL_7:
            sub_1D2871518();
          }

          while (v124);
        }

        (*(v107 + 8))(v122, v108);
      }
    }
  }
}

uint64_t sub_1D26117B0@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_1D2871538();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28716B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v18 = sub_1D28717B8();
  v19 = v12;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](46, 0xE100000000000000);

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](0xD000000000000010, 0x80000001D28BE530);

  v13 = v18;
  v14 = v19;
  sub_1D2611BAC(v8);
  v18 = v13;
  v19 = v14;
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
  sub_1D22BD06C();
  sub_1D2871698();
  (*(v2 + 8))(v4, v1);
  v15 = *(v6 + 8);
  v15(v8, v5);

  sub_1D2871608();
  return (v15)(v11, v5);
}

unint64_t sub_1D2611A38@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_1D25D064C(a2);
    if (v5)
    {
      v6 = (*(v4 + 56) + 24 * result);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *a3 = *v6;
      a3[1] = v8;
      a3[2] = v9;
      return sub_1D2396784(v7);
    }

    else
    {
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 1;
    }
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 1;
  }

  return result;
}

unint64_t sub_1D2611AC0(uint64_t *a1, uint64_t a2)
{
  result = sub_1D25D064C(a2);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v11 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EF4E4();
      v7 = v11;
    }

    v8 = *(v7 + 48);
    v9 = sub_1D2871818();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(*(v7 + 56) + 24 * v5);
    sub_1D25D5F98(v5, v7);
    result = sub_1D238D058(v10);
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1D2611BAC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D2873AA8();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1D28716B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  v15 = sub_1D2878068();
  v16 = [v14 containerURLForSecurityApplicationGroupIdentifier_];

  v37 = v7;
  v38 = v6;
  if (v16)
  {
    sub_1D2871638();

    v17 = *(v7 + 32);
    v17(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v17(v12, v5, v6);
    v18 = v13;
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    v19 = [v13 defaultManager];
    v42[0] = 0;
    v20 = [v19 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v42];

    v17 = v42[0];
    if (!v20)
    {
LABEL_12:
      v34 = v17;
      sub_1D28714B8();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v18 = v13;
    sub_1D2871638();
    v21 = v17;

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_1D22BD238(v5, &qword_1EC6DA1B8);
    }
  }

  v22 = v36;
  sub_1D2873A78();
  sub_1D28715D8();
  (*(v39 + 8))(v22, v40);
  v23 = [v18 defaultManager];
  sub_1D2871658();
  v24 = sub_1D2878068();

  v25 = [v23 directoryExistsAtPath_];

  if (v25)
  {
    return (*(v37 + 8))(v12, v38);
  }

  v27 = [v18 defaultManager];
  v28 = sub_1D28715B8();
  v42[0] = 0;
  v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v42];

  v30 = v38;
  if (!v29)
  {
    v33 = v42[0];
    sub_1D28714B8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_12;
  }

  v31 = *(v37 + 8);
  v32 = v42[0];
  return v31(v12, v30);
}

uint64_t sub_1D26120FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D2870F68();
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  result = sub_1D24EA23C(a3, a4, a5, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v12;
  return result;
}

uint64_t sub_1D2612194()
{
  v45[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v40 = v3;
    v44 = objc_opt_self();
    v13 = [v44 defaultManager];
    v41 = v12;
    sub_1D2611BAC(v10);
    v14 = sub_1D28715B8();
    v42 = *(v5 + 8);
    v43 = v5 + 8;
    v42(v10, v4);
    v45[0] = 0;
    v15 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:v45];

    v16 = v45[0];
    if (v15)
    {
      v38 = v1;
      v39 = v0;
      v17 = sub_1D28783E8();
      v18 = v16;

      v19 = *(v17 + 16);
      if (!v19)
      {
LABEL_8:
      }

      v20 = 0;
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
        }

        (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);
        v21 = [v44 defaultManager];
        v22 = sub_1D28715B8();
        v45[0] = 0;
        v23 = [v21 removeItemAtURL:v22 error:v45];

        v24 = v45[0];
        if (!v23)
        {
          break;
        }

        ++v20;
        v42(v7, v4);
        if (v19 == v20)
        {
          goto LABEL_8;
        }
      }

      v27 = v24;

      v26 = sub_1D28714B8();

      swift_willThrow();
      v42(v7, v4);
      v1 = v38;
      v0 = v39;
    }

    else
    {
      v25 = v45[0];
      v26 = sub_1D28714B8();

      swift_willThrow();
    }

    v28 = v40;
    sub_1D28726B8();
    v29 = v26;
    v30 = sub_1D2873CA8();
    v31 = sub_1D2878A18();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_1D2879748();
      v36 = sub_1D23D7C84(v34, v35, v45);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D226E000, v30, v31, "Could not purge attributes: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1D38A3520](v33, -1, -1);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v28, v0);
  }

  return result;
}

uint64_t sub_1D261267C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2612700@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  v2 = sub_1D26127E0();

  *a1 = v2;
  return result;
}

unint64_t sub_1D261278C()
{
  result = qword_1EC6DF008;
  if (!qword_1EC6DF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF008);
  }

  return result;
}

uint64_t sub_1D26127E0()
{
  v1 = v0;
  v11[0] = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v11[0]);
  v2 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871428();
  swift_allocObject();
  *(v0 + 16) = sub_1D2871418();
  sub_1D28713F8();
  swift_allocObject();
  *(v0 + 24) = sub_1D28713E8();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1D25D77D8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF010);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  *(v1 + 32) = v9;
  sub_1D24614C4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  sub_1D2877B58();
  v11[1] = v7;
  sub_1D2612B24(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  *(v1 + 40) = sub_1D2878AD8();
  return v1;
}

unint64_t sub_1D2612AB0()
{
  result = qword_1EC6DF018;
  if (!qword_1EC6DF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF018);
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2612B24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D2612BA4()
{
  dword_1EC6DF020 = 0;
  qword_1EC6DF028 = 0;
  qword_1EC6DF030 = 0;
}

void sub_1D2612BDC(void *a1)
{
  v2 = a1[2];
  if (v2 <= 0x64)
  {
    sub_1D2870F68();
  }

  else
  {
    sub_1D268E4E4(a1, (a1 + 4), 0, 0xC9uLL);
  }

  sub_1D23B7BB8();
  v3 = sub_1D2878A58();
  v4 = sub_1D28783C8();

  v5 = sub_1D2878068();
  [v3 setValue:v4 forKey:v5];

  if (qword_1EC6D8D28 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC6DF020);

  if (v2)
  {
    if (!a1[2])
    {
      __break(1u);
      return;
    }

    v7 = a1[4];
    v6 = a1[5];
    sub_1D2870F68();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  qword_1EC6DF028 = v7;
  qword_1EC6DF030 = v6;

  os_unfair_lock_unlock(&dword_1EC6DF020);
}

uint64_t sub_1D2612D44()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_1D28783E8();

    v4 = sub_1D23CA910(v3);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D2612E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2612D44();
  v5 = v4;
  v12 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 40);
    while (1)
    {
      v9 = *(v8 - 1) == a1 && *v8 == a2;
      if (v9 || (sub_1D2879618() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }

    sub_1D23BBD30(v7);

    v5 = v12;
  }

LABEL_11:
  v10 = *(v5 + 2);
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v10 >= *(v5 + 3) >> 1)
  {
    v5 = sub_1D27CC674(isUniquelyReferenced_nonNull_native, v10 + 1, 1, v5);
  }

  sub_1D278CD60(0, 0, 1, a1, a2);

  sub_1D2612BDC(v5);
}

unint64_t sub_1D2612F30()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_1D2877E98(), v2, v4 = sub_1D24DCAD8(v3), , !v4))
  {
    v4 = sub_1D25D76C8(MEMORY[0x1E69E7CC0]);
  }

  return v4;
}

uint64_t sub_1D2613014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2612F30();
  if (*(v4 + 16) && (v5 = sub_1D25D0410(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    sub_1D2870F68();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1D2613084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2612F30();
  if (*(v8 + 16) && (v9 = sub_1D25D0410(a3, a4), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    v12 = *(v11 + 2);
    if (v12)
    {
      v13 = 0;
      v14 = v11 + 40;
      while (1)
      {
        v15 = *(v14 - 1) == a1 && *v14 == a2;
        if (v15 || (sub_1D2879618() & 1) != 0)
        {
          break;
        }

        ++v13;
        v14 += 2;
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

      sub_1D2870F68();
      sub_1D23BBD30(v13);
    }

    else
    {
LABEL_11:
      sub_1D2870F68();
    }

    v19 = *(v11 + 2);
    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(v11 + 3) >> 1)
    {
      v11 = sub_1D27CC674(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v11);
    }

    sub_1D278CD60(0, 0, 1, a1, a2);

    sub_1D2870F68();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E77A8(v11, a3, a4, v21);

    v18 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D287F500;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    sub_1D2870F68();
    sub_1D2870F68();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E77A8(v16, a3, a4, v17);

    v18 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE0);
  v22 = sub_1D28793C8();
  v23 = v22;
  v24 = 0;
  v25 = v18 + 64;
  v26 = 1 << *(v18 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v18 + 64);
  v29 = (v26 + 63) >> 6;
  v48 = v18;
  v49 = (v22 + 64);
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_27:
      v33 = v30 | (v24 << 6);
      v34 = *(v18 + 56);
      v35 = (*(v18 + 48) + 16 * v33);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(v34 + 8 * v33);
      if (v38[2] <= 5uLL)
      {
        sub_1D2870F68();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
        v39 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v39);
        v41 = v40 - 32;
        if (v40 < 32)
        {
          v41 = v40 - 17;
        }

        v39[2] = 5;
        v39[3] = 2 * (v41 >> 4);
        swift_arrayInitWithCopy();
        v38 = v39;
      }

      *&v49[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
      v42 = (v23[6] + 16 * v33);
      *v42 = v36;
      v42[1] = v37;
      *(v23[7] + 8 * v33) = v38;
      v43 = v23[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v23[2] = v45;
      sub_1D2870F68();
      v18 = v48;
      if (!v28)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_22:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v24 >= v29)
      {
        break;
      }

      v32 = *(v25 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_27;
      }
    }

    sub_1D23B7BB8();
    v46 = sub_1D2878A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
    v47 = sub_1D2877E78();

    v50 = sub_1D2878068();
    [v46 setValue:v47 forKey:v50];
  }
}

BOOL sub_1D26134C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = sub_1D2612F30();
  if (*(v3 + 16) && (v4 = sub_1D25D0410(v1, v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    sub_1D2870F68();

    v7 = *(v6 + 16);

    return v7 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for AppProtectionShieldView()
{
  result = qword_1EC6D83D0;
  if (!qword_1EC6D83D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26135E4()
{
  sub_1D261365C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppProtectionShieldViewModel();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D261365C()
{
  if (!qword_1ED89DFC8)
  {
    sub_1D2875118();
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DFC8);
    }
  }
}

uint64_t sub_1D26136E8()
{
  type metadata accessor for AppProtectionShieldView();
  sub_1D23C7B7C();
  v0 = sub_1D22BE114(0xD000000000000019, 0x80000001D28AEBE0);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];

    sub_1D28780A8();
  }

  sub_1D23C7B7C();
  v3 = sub_1D22BE518(0xD000000000000019, 0x80000001D28AEBE0);

  if (v3)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E698B100]);
    v6 = sub_1D2878068();

    v7 = [v5 initWithLocalizedApplicationName:v6 iconImage:v3];

    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 clearColor];
    [v9 setBackgroundColor_];

    [v9 setDelegate_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26138B4()
{
  v0 = sub_1D2875118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1D24CC6AC(&v10 - v5);
  sub_1D2875108();
  v7 = sub_1D28750F8();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return 0x4074000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D26139F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2613B3C(&qword_1EC6DF038);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D2613A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2613B3C(&qword_1EC6DF038);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D2613AF8()
{
  sub_1D2613B3C(&qword_1EC6DF038);
  sub_1D2875A98();
  __break(1u);
}

uint64_t sub_1D2613B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppProtectionShieldView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CharacterEditingView()
{
  result = qword_1ED8A1A48;
  if (!qword_1ED8A1A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2613BF4()
{
  sub_1D2613CD0();
  if (v0 <= 0x3F)
  {
    sub_1D22EAE8C();
    if (v1 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E040);
      if (v2 <= 0x3F)
      {
        sub_1D2613D28(319, &qword_1ED89DFB0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2613CD0()
{
  if (!qword_1ED89D1B0)
  {
    type metadata accessor for CharacterEditingViewModel();
    v0 = sub_1D2877338();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D1B0);
    }
  }
}

void sub_1D2613D28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D28744A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D2613DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2613DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2613E7C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1D28714D8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28718F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1D2878048();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = v1[1];
  v29 = *v1;
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v20 = *(v28 + 32);

  if (v20 == 1)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v21 = qword_1ED8B0058;
  sub_1D28718C8();
  (*(v13 + 16))(v15, v18, v12);
  (*(v6 + 16))(v8, v11, v5);
  v22 = [v21 bundleURL];
  sub_1D2871638();

  (*(v25 + 104))(v4, *MEMORY[0x1E6968DF8], v26);
  sub_1D2871508();
  (*(v6 + 8))(v11, v5);
  return (*(v13 + 8))(v18, v12);
}

double sub_1D261429C()
{
  v0 = sub_1D2875E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  type metadata accessor for CharacterEditingView();
  sub_1D24CC0C4(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF38], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1D22BD1D0(v15, v6, &qword_1EC6D99B8);
  sub_1D22BD1D0(v12, &v6[v16], &qword_1EC6D99B8);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D99B8);
    sub_1D22BD238(v15, &qword_1EC6D99B8);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_1D22BD238(v6, &qword_1EC6D99B8);
      return 12.0;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v6, v9, &qword_1EC6D99B8);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D99B8);
    sub_1D22BD238(v15, &qword_1EC6D99B8);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_1D22BD238(v6, &qword_1EC6E0DB0);
    return 0.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v21 = sub_1D2877F98();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_1D22BD238(v12, &qword_1EC6D99B8);
  sub_1D22BD238(v15, &qword_1EC6D99B8);
  v22(v9, v0);
  sub_1D22BD238(v6, &qword_1EC6D99B8);
  result = 0.0;
  if (v21)
  {
    return 12.0;
  }

  return result;
}

double sub_1D2614700@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CharacterEditingView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D262064C(v1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for CharacterEditingView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1D26206B4(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v7 + v6, type metadata accessor for CharacterEditingView);
  v8 = sub_1D2875918();
  sub_1D2615C28(&v27);
  v9 = sub_1D2874838();
  v10 = MEMORY[0x1D389EE30]((2 * v9));
  v11 = sub_1D2874FB8();
  *(v26 + 9) = *(v33 + 9);
  v25 = v32;
  v26[0] = v33[0];
  v23 = v30;
  v24 = v31;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v19[160] = 1;
  v34[4] = v31;
  v34[5] = v32;
  v34[2] = v29;
  v34[3] = v30;
  v34[0] = v27;
  v34[1] = v28;
  v34[6] = v33[0];
  v34[7] = v26[1];
  v35 = v11;
  v36 = 0;
  LOBYTE(v37) = 1;
  BYTE1(v37) = v10;
  *(&v37 + 1) = v8;
  v44 = v27;
  v45 = v28;
  v48 = v31;
  v49 = v32;
  v46 = v29;
  v47 = v30;
  v52 = v11;
  v53 = v37;
  v50 = v33[0];
  v51 = v26[1];
  v38[4] = v31;
  v38[5] = v32;
  v38[6] = v33[0];
  v38[7] = v26[1];
  v38[0] = v27;
  v38[1] = v28;
  v38[2] = v29;
  v38[3] = v30;
  v39 = v11;
  v40 = 0;
  v41 = 1;
  v42 = v10;
  v43 = v8;
  sub_1D22BD1D0(v34, v19, &qword_1EC6DF040);
  sub_1D22BD238(v38, &qword_1EC6DF040);
  *a1 = sub_1D261EF34;
  *(a1 + 8) = v7;
  v12 = v51;
  *(a1 + 112) = v50;
  *(a1 + 128) = v12;
  v13 = v53;
  *(a1 + 144) = v52;
  *(a1 + 160) = v13;
  v14 = v47;
  *(a1 + 48) = v46;
  *(a1 + 64) = v14;
  v15 = v49;
  *(a1 + 80) = v48;
  *(a1 + 96) = v15;
  result = *&v44;
  v17 = v45;
  *(a1 + 16) = v44;
  *(a1 + 32) = v17;
  return result;
}

uint64_t sub_1D2614968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF050);
  sub_1D261FB04();
  swift_getOpaqueTypeConformance2();
  return sub_1D2874F78();
}

uint64_t sub_1D2614A1C@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1D28714E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF050);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  sub_1D2614C0C(v17 - v9);
  sub_1D2613E7C(v7);
  (*(v2 + 16))(v4, v7, v1);
  v11 = sub_1D2876688();
  v13 = v12;
  v15 = v14;
  sub_1D261FB04();
  sub_1D28769F8();
  sub_1D22ED6E0(v11, v13, v15 & 1);

  (*(v2 + 8))(v7, v1);
  return sub_1D22BD238(v10, &qword_1EC6DF050);
}

uint64_t sub_1D2614C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875028();
  v102 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D2875B78();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0F0);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0D8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v84 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0F8);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v84 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0C8);
  MEMORY[0x1EEE9AC00](v111);
  v92 = &v84 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0C0);
  v98 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v97 = &v84 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF100);
  v100 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v99 = &v84 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF108);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v84 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF110);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v84 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF078);
  MEMORY[0x1EEE9AC00](v104);
  v14 = &v84 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF068);
  MEMORY[0x1EEE9AC00](v110);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v84 - v18;
  v19 = sub_1D28720D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  sub_1D28720C8();
  (*(v20 + 104))(v22, *MEMORY[0x1E696E3D8], v19);
  sub_1D2620AA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v121 == v128)
  {
    v26 = *(v20 + 8);
    v26(v22, v19);
    v26(v25, v19);

LABEL_4:
    v29 = v105;
    sub_1D2615EBC(v105);
    sub_1D2877848();
    sub_1D2875208();
    (*(v106 + 32))(v14, v29, v108);
    v30 = &v14[*(v104 + 36)];
    v31 = v126;
    v32 = v127;
    *(v30 + 4) = v125;
    *(v30 + 5) = v31;
    *(v30 + 6) = v32;
    v33 = v122;
    *v30 = v121;
    *(v30 + 1) = v33;
    v34 = v124;
    *(v30 + 2) = v123;
    *(v30 + 3) = v34;
    v35 = sub_1D2874FB8();
    v36 = sub_1D2876398();
    sub_1D22EC9BC(v14, v16, &qword_1EC6DF078);
    v37 = &v16[*(v110 + 36)];
    *v37 = v35;
    v37[8] = v36;
    v38 = v107;
    sub_1D22EC9BC(v16, v107, &qword_1EC6DF068);
    sub_1D22BD1D0(v38, v112, &qword_1EC6DF068);
    swift_storeEnumTagMultiPayload();
    sub_1D261FC40();
    v39 = sub_1D261FF2C();
    v40 = sub_1D22BAAF0();
    *&v128 = v111;
    *(&v128 + 1) = &type metadata for FixedPresentationSizing;
    v129 = v39;
    v130 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v128 = v113;
    *(&v128 + 1) = MEMORY[0x1E69E6158];
    v129 = OpaqueTypeConformance2;
    v130 = MEMORY[0x1E69E6180];
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return sub_1D22BD238(v38, &qword_1EC6DF068);
  }

  v84 = v2;
  v27 = sub_1D2879618();
  v103 = a1;
  v28 = *(v20 + 8);
  v28(v22, v19);
  v28(v25, v19);

  if (v27)
  {
    goto LABEL_4;
  }

  v43 = sub_1D2876318();
  MEMORY[0x1EEE9AC00](v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF080);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF088);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF090);
  v47 = sub_1D261FE74();
  *&v121 = v46;
  *(&v121 + 1) = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0B0);
  v50 = sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0);
  *&v121 = v49;
  *(&v121 + 1) = v50;
  v51 = swift_getOpaqueTypeConformance2();
  *&v121 = v44;
  *(&v121 + 1) = v45;
  *&v122 = v48;
  *(&v122 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v85;
  sub_1D28743A8();
  sub_1D2877848();
  sub_1D2875208();
  v53 = v89;
  (*(v86 + 32))(v89, v52, v87);
  v54 = (v53 + *(v88 + 36));
  v55 = v126;
  v56 = v127;
  v54[4] = v125;
  v54[5] = v55;
  v54[6] = v56;
  v57 = v122;
  *v54 = v121;
  v54[1] = v57;
  v58 = v124;
  v54[2] = v123;
  v54[3] = v58;
  v59 = v94;
  sub_1D2875B68();
  v60 = sub_1D2876318();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v60)
  {
    sub_1D2876308();
  }

  sub_1D2620024();
  v61 = v90;
  sub_1D2876C28();
  (*(v95 + 8))(v59, v96);
  sub_1D22BD238(v53, &qword_1EC6DF0D8);
  sub_1D2876348();
  v62 = v115;
  sub_1D261429C();
  sub_1D2874298();
  *&v128 = v63;
  *(&v128 + 1) = v64;
  v129 = v65;
  v130 = v66;
  v131 = 0;
  v67 = v111;
  v68 = v92;
  sub_1D2875EF8();
  (*(v91 + 32))(v68, v61, v93);
  v116 = *(v62 + *(type metadata accessor for CharacterEditingView() + 32) + 120);
  v69 = sub_1D261FF2C();
  v70 = sub_1D22BAAF0();
  v71 = v97;
  sub_1D2876B18();
  sub_1D22BD238(v68, &qword_1EC6DF0C8);
  v72 = v101;
  sub_1D2875018();
  v73 = v62[1];
  *&v116 = *v62;
  *(&v116 + 1) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v74 = sub_1D264F064();
  v76 = v75;

  v119 = v74;
  v120 = v76;
  *&v116 = v67;
  *(&v116 + 1) = &type metadata for FixedPresentationSizing;
  v117 = v69;
  v118 = v70;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = MEMORY[0x1E69E6158];
  v79 = MEMORY[0x1E69E6180];
  v80 = v99;
  v81 = v113;
  sub_1D2876A08();

  (*(v102 + 8))(v72, v84);
  (*(v98 + 8))(v71, v81);
  v82 = v100;
  v83 = v114;
  (*(v100 + 16))(v112, v80, v114);
  swift_storeEnumTagMultiPayload();
  sub_1D261FC40();
  *&v116 = v81;
  *(&v116 + 1) = v78;
  v117 = v77;
  v118 = v79;
  swift_getOpaqueTypeConformance2();
  sub_1D2875AF8();
  return (*(v82 + 8))(v80, v83);
}

uint64_t sub_1D2615C28@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - v4;
  v6 = type metadata accessor for CharacterEditingView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  v32[1] = *v1;
  v32[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v12 = *(v32[0] + 32);

  sub_1D262064C(v1, v10, type metadata accessor for CharacterEditingView);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1D26206B4(v10, v14 + v13, type metadata accessor for CharacterEditingView);
  KeyPath = swift_getKeyPath();
  v16 = sub_1D2876358();
  v17 = *(v1 + *(v7 + 40) + 40);
  sub_1D24CC0C4(v5);
  sub_1D261F4F4(v5);
  sub_1D22BD238(v5, &qword_1EC6D99B8);
  sub_1D2874298();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v32[0]) = 0;
  v33 = 0;
  result = sub_1D2876348();
  v27 = 0uLL;
  v28 = result;
  v29 = 0uLL;
  if ((v17 & 1) == 0)
  {
    result = sub_1D2874298();
    *(&v27 + 1) = v30;
    *(&v29 + 1) = v31;
  }

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = v12;
  *(a1 + 16) = sub_1D261EF4C;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  *(a1 + 80) = v28;
  *(a1 + 88) = v27;
  *(a1 + 104) = v29;
  *(a1 + 120) = v17;
  return result;
}

uint64_t sub_1D2615EBC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v27 = sub_1D2875F18();
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF090);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF080);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  *v10 = sub_1D2875918();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF118);
  sub_1D2616290(v1, &v10[*(v14 + 44)]);
  v15 = sub_1D2876328();
  type metadata accessor for CharacterEditingView();
  sub_1D24CC0C4(v7);
  sub_1D261EFBC(v7);
  sub_1D22BD238(v7, &qword_1EC6D99B8);
  sub_1D2874298();
  v16 = &v10[*(v8 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_1D2875F08();
  v21 = sub_1D261FE74();
  sub_1D2876CF8();
  (*(v2 + 8))(v4, v27);
  sub_1D22BD238(v10, &qword_1EC6DF090);
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF088);
  v31 = v8;
  v32 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0B0);
  v23 = sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0);
  v31 = v22;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_1D2876F08();
  return (*(v11 + 8))(v13, v24);
}

uint64_t sub_1D2616290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1D28720D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF160);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF168);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF170);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF178);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = a1[1];
  v41 = *a1;
  v42 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v22 = *(v40 + 32);

  v34 = a1;
  if (v22 == 1)
  {
    sub_1D2616770(a1, v14);
    sub_1D22BD1D0(v14, v12, &qword_1EC6DF170);
    swift_storeEnumTagMultiPayload();
    sub_1D2620358();
    sub_1D2620408();
    sub_1D2875AF8();
    v23 = v14;
    v24 = &qword_1EC6DF170;
  }

  else
  {
    sub_1D2616B84(a1, v9);
    sub_1D22BD1D0(v9, v12, &qword_1EC6DF160);
    swift_storeEnumTagMultiPayload();
    sub_1D2620358();
    sub_1D2620408();
    sub_1D2875AF8();
    v23 = v9;
    v24 = &qword_1EC6DF160;
  }

  sub_1D22BD238(v23, v24);
  v25 = v37;
  sub_1D28720C8();
  v26 = v38;
  (*(v4 + 104))(v38, *MEMORY[0x1E696E3D8], v3);
  sub_1D2620AA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8]);
  v27 = sub_1D2877F98();
  v28 = *(v4 + 8);
  v28(v26, v3);
  v28(v25, v3);
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v34 + *(type metadata accessor for CharacterEditingView() + 32) + 112);
  }

  sub_1D22BD1D0(v20, v17, &qword_1EC6DF178);
  v30 = v39;
  sub_1D22BD1D0(v17, v39, &qword_1EC6DF178);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF190) + 64);
  *v31 = v29;
  *(v31 + 8) = 0;
  *(v31 + 9) = v27 & 1;
  sub_1D22BD238(v20, &qword_1EC6DF178);
  return sub_1D22BD238(v17, &qword_1EC6DF178);
}

uint64_t sub_1D2616770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF198);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = *(a1 + *(type metadata accessor for CharacterEditingView() + 32) + 80);
  v15 = a1[1];
  *&v35 = *a1;
  v16 = v35;
  *(&v35 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();

  *v13 = sub_1D2875918();
  *(v13 + 1) = v14;
  v13[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A8);
  sub_1D2617B0C(a1, &v13[*(v17 + 44)]);
  sub_1D2877848();
  sub_1D2875208();
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[103] = v41;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v34 = 0;
  *&v33[39] = v37;
  v31 = v16;
  v32 = v15;
  sub_1D2877308();

  *v7 = sub_1D2875918();
  *(v7 + 1) = v14;
  v7[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1B0);
  sub_1D26188D4(a1, &v7[*(v18 + 44)]);
  v19 = v10;
  sub_1D22BD1D0(v13, v10, &qword_1EC6DF1A0);
  v20 = v29;
  sub_1D22BD1D0(v7, v29, &qword_1EC6DF198);
  v21 = v30;
  sub_1D22BD1D0(v19, v30, &qword_1EC6DF1A0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1B8);
  v23 = v21 + *(v22 + 48);
  *v23 = v14;
  v24 = *&v33[80];
  *(v23 + 73) = *&v33[64];
  *(v23 + 89) = v24;
  *(v23 + 105) = *&v33[96];
  v25 = *&v33[16];
  *(v23 + 9) = *v33;
  *(v23 + 25) = v25;
  v26 = *&v33[48];
  *(v23 + 41) = *&v33[32];
  *(v23 + 8) = 0;
  *(v23 + 120) = *&v33[111];
  *(v23 + 57) = v26;
  sub_1D22BD1D0(v20, v21 + *(v22 + 64), &qword_1EC6DF198);
  sub_1D22BD238(v7, &qword_1EC6DF198);
  sub_1D22BD238(v13, &qword_1EC6DF1A0);
  sub_1D22BD238(v20, &qword_1EC6DF198);
  return sub_1D22BD238(v19, &qword_1EC6DF1A0);
}

uint64_t sub_1D2616B84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v35 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF198);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v35 - v12);
  v14 = (a1 + *(type metadata accessor for CharacterEditingView() + 32));
  v15 = v14[10];
  v16 = *a1;
  v17 = a1[1];
  *&v42 = *a1;
  *(&v42 + 1) = v17;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();

  *v13 = sub_1D2875918();
  v13[1] = v15;
  *(v13 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1B0);
  sub_1D26188D4(a1, v13 + *(v18 + 44));
  v19 = v14[11];
  sub_1D2877848();
  if (v15 > v19)
  {
    sub_1D2878A28();
    v20 = sub_1D28762E8();
    v35[0] = a1;
    v21 = v17;
    v22 = v5;
    v23 = v16;
    v24 = v20;
    sub_1D2873BE8();

    v16 = v23;
    v5 = v22;
    v17 = v21;
    a1 = v35[0];
  }

  sub_1D2875208();
  *&v40[55] = v45;
  *&v40[71] = v46;
  *&v40[87] = v47;
  *&v40[103] = v48;
  *&v40[7] = v42;
  *&v40[23] = v43;
  v41 = 1;
  *&v40[39] = v44;
  v38 = v16;
  v39 = v17;
  sub_1D2877308();

  *v8 = sub_1D2875918();
  v8[1] = v15;
  *(v8 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A8);
  sub_1D2617B0C(a1, v8 + *(v25 + 44));
  v26 = v36;
  sub_1D22BD1D0(v13, v36, &qword_1EC6DF198);
  v27 = v5;
  sub_1D22BD1D0(v8, v5, &qword_1EC6DF1A0);
  v28 = v37;
  sub_1D22BD1D0(v26, v37, &qword_1EC6DF198);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3B8);
  v30 = v28 + *(v29 + 48);
  v31 = *&v40[80];
  *(v30 + 73) = *&v40[64];
  *(v30 + 89) = v31;
  *(v30 + 105) = *&v40[96];
  v32 = *&v40[16];
  *(v30 + 9) = *v40;
  *(v30 + 25) = v32;
  v33 = *&v40[48];
  *(v30 + 41) = *&v40[32];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v30 + 120) = *&v40[111];
  *(v30 + 57) = v33;
  sub_1D22BD1D0(v27, v28 + *(v29 + 64), &qword_1EC6DF1A0);
  sub_1D22BD238(v8, &qword_1EC6DF1A0);
  sub_1D22BD238(v13, &qword_1EC6DF198);
  sub_1D22BD238(v27, &qword_1EC6DF1A0);
  return sub_1D22BD238(v26, &qword_1EC6DF198);
}

uint64_t sub_1D2616FBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0B0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1D26170E0(&v6 - v2);
  v4 = sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0);
  MEMORY[0x1D389E720](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D26170E0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF120);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v20 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF128);
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v20 - v5;
  v7 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF130);
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = v20 - v9;
  sub_1D2875BC8();
  v26 = v1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF138);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D30);
  v12 = sub_1D2875718();
  v13 = sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
  v14 = sub_1D2620AA4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1D28745C8();
  sub_1D2875BD8();
  v25 = v20[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF140);
  sub_1D2620118();
  sub_1D28745C8();
  v15 = *(v23 + 48);
  v16 = v21;
  (*(v8 + 16))(v3, v10, v21);
  v17 = &v3[v15];
  v18 = v22;
  (*(v4 + 16))(v17, v6, v22);
  sub_1D28759C8();
  (*(v4 + 8))(v6, v18);
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_1D26174B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  sub_1D26516C4();
  sub_1D264F37C(1);
}

uint64_t sub_1D2617514()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  sub_1D264F37C(0);
}

uint64_t sub_1D2617574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D2875718();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CharacterEditingView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  sub_1D2874268();
  sub_1D262064C(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CharacterEditingView);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1D26206B4(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CharacterEditingView);
  MEMORY[0x1D389FDF0](v12, sub_1D26202CC, v18);
  sub_1D2875708();
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
  sub_1D2620AA4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v19 = v22;
  sub_1D2876768();
  (*(v23 + 8))(v6, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D26178B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CharacterEditingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874278();
  sub_1D262064C(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CharacterEditingView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1D26206B4(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CharacterEditingView);
  MEMORY[0x1D389FDF0](v9, sub_1D26202B4, v11);
  v12 = sub_1D2877018();
  KeyPath = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF158) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = a1[1];
  v20[2] = *a1;
  v20[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  LOBYTE(v12) = sub_1D264F5EC();

  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v12 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF140);
  v19 = (a2 + *(result + 36));
  *v19 = v16;
  v19[1] = sub_1D22C03D8;
  v19[2] = v17;
  return result;
}

uint64_t sub_1D2617B0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for CharacterEditingView();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1D2871798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v60 = sub_1D2875F98();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF240);
  v62 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v61 = &v56 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF248);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v56 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF250);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF258);
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v56 - v24;
  v25 = *a1;
  v26 = a1[1];
  v66 = a1;
  v73 = v25;
  v74 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  LODWORD(a1) = *(v80 + 32);

  if (a1 == 1)
  {
    sub_1D2875798();
    v67 = sub_1D28756A8();
    sub_1D261933C(&v73);
    v27 = v73;
    v28 = v74;
    v29 = v75;
    v30 = v76;
    v62 = v77;
    v31 = v78;

    LOBYTE(v73) = 1;
    LOBYTE(v80) = v29;
    v79 = v31;
    v32 = v63;
    sub_1D261847C(v63);
    v33 = *(v64 + 16);
    v34 = v32;
    v35 = v65;
    v33(v22, v34, v65);
    *v19 = v67;
    *(v19 + 1) = 0;
    v19[16] = 1;
    *(v19 + 3) = v27;
    *(v19 + 4) = v28;
    v19[40] = v29;
    v36 = v62;
    *(v19 + 6) = v30;
    *(v19 + 7) = v36;
    v19[64] = v31;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF290);
    v33(&v19[*(v37 + 48)], v22, v35);
    sub_1D22BBFAC(v27, v28, v29);
    sub_1D2870F68();
    sub_1D22BBFAC(v27, v28, v29);
    v38 = *(v64 + 8);
    sub_1D2870F68();
    v38(v22, v35);
    sub_1D22ED6E0(v27, v28, v29);

    sub_1D22BD1D0(v19, v70, &qword_1EC6DF250);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1EC6D75D0, &qword_1EC6DF250);
    sub_1D2620AEC();
    sub_1D2875AF8();
    sub_1D22ED6E0(v27, v28, v29);

    sub_1D22BD238(v19, &qword_1EC6DF250);
    return (v38)(v63, v65);
  }

  else
  {
    sub_1D2871778();
    (*(v6 + 16))(v8, v11, v5);
    v57 = v15;
    sub_1D2875F88();
    (*(v6 + 8))(v11, v5);
    sub_1D262064C(v66, &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CharacterEditingView);
    v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v41 = swift_allocObject();
    sub_1D26206B4(&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for CharacterEditingView);
    v42 = v59;
    v43 = v60;
    (*(v59 + 16))(v67, v15, v60);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1D26208B4;
    *(v44 + 24) = v41;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF260);
    sub_1D2620AA4(&qword_1EC6DF268, MEMORY[0x1E69803F0]);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF270);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF278);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF280);
    v48 = sub_1D2620968();
    v49 = v62;
    v50 = v48;
    v51 = sub_1D2620A20();
    v73 = v46;
    v74 = v47;
    v75 = v50;
    v76 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = sub_1D2620AA4(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
    v73 = v45;
    v74 = v5;
    v75 = OpaqueTypeConformance2;
    v76 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v61;
    sub_1D2874828();
    (*(v42 + 8))(v57, v43);
    v55 = v71;
    (*(v49 + 16))(v70, v54, v71);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1EC6D75D0, &qword_1EC6DF250);
    sub_1D2620AEC();
    sub_1D2875AF8();
    return (*(v49 + 8))(v54, v55);
  }
}

uint64_t sub_1D261847C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for CharacterEditingView();
  v21 = *(v3 - 8);
  v27 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v22 = v1;
  *&v41 = v6;
  *(&v41 + 1) = v7;
  v8 = v6;
  v24 = v7;
  v25 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v10 = sub_1D23C75E0();

  v23 = v10[4];
  sub_1D2870F68();

  *&v29 = v8;
  *(&v29 + 1) = v9;
  sub_1D2877328();
  v11 = v41;
  v12 = v42;
  swift_getKeyPath();
  v41 = v11;
  *&v42 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E0);
  sub_1D2877508();

  v20 = *(&v29 + 1);
  v13 = v29;
  HIDWORD(v19) = v30;

  sub_1D262064C(v2, v5, type metadata accessor for CharacterEditingView);
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_1D26206B4(v5, v15 + v14, type metadata accessor for CharacterEditingView);
  v53 = 1;
  sub_1D2877848();
  sub_1D2875208();
  *&v29 = v13;
  *(&v29 + 1) = v20;
  LOBYTE(v30) = BYTE4(v19);
  *(&v30 + 1) = v23;
  *&v31 = 0;
  BYTE8(v31) = 1;
  *&v32 = sub_1D2621448;
  *(&v32 + 1) = 0;
  *&v33 = sub_1D2620C58;
  *(&v33 + 1) = v15;
  *&v41 = v25;
  *(&v41 + 1) = v24;
  sub_1D2877308();
  v16 = v28;
  swift_getKeyPath();
  *&v41 = v16;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  LOBYTE(v15) = *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  LOBYTE(v28) = v15;
  sub_1D262064C(v22, v5, type metadata accessor for CharacterEditingView);
  v17 = swift_allocObject();
  sub_1D26206B4(v5, v17 + v14, type metadata accessor for CharacterEditingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF280);
  sub_1D2620C84();
  sub_1D2620A20();
  sub_1D2876F58();

  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  return sub_1D22BD238(&v41, &qword_1EC6DF298);
}

uint64_t sub_1D26188D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1C0);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = a1;
  v30 = &v27 - v7;
  v8 = a1[1];
  *&v42 = *a1;
  *(&v42 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  LODWORD(a1) = *(*&v40[0] + 32);

  if (a1 == 1)
  {
    sub_1D2875798();
    v27 = sub_1D28756A8();
    sub_1D261933C(&v42);
    v10 = *(&v42 + 1);
    v9 = v42;
    v28 = v4;
    v11 = v43;
    v13 = *(&v43 + 1);
    v12 = v44;
    v14 = BYTE8(v44);

    LOBYTE(v40[0]) = 1;
    LOBYTE(v38[0]) = v11;
    LOBYTE(v33) = v14;
    sub_1D22BBFAC(v9, v10, v11);
    LOBYTE(v43) = 1;
    BYTE8(v44) = v11;
    v4 = v28;
    sub_1D2870F68();
    v15 = v27;
  }

  else
  {
    v15 = 0;
    v9 = 0;
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v14 = 0;
    *&v43 = 0;
    *(&v44 + 1) = 0;
  }

  v42 = v15;
  *(&v43 + 1) = v9;
  *&v44 = v10;
  *&v45 = v13;
  *(&v45 + 1) = v12;
  v46 = v14;
  v16 = v30;
  sub_1D2618C14(v30);
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v33 = v42;
  v34 = v43;
  v18 = v31;
  v17 = v32;
  v19 = *(v32 + 16);
  v19(v31, v16, v4);
  v20 = v36;
  v38[2] = v35;
  v38[3] = v36;
  v21 = v37;
  v39 = v37;
  v23 = v33;
  v22 = v34;
  v38[0] = v33;
  v38[1] = v34;
  *(a2 + 32) = v35;
  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  *a2 = v23;
  *(a2 + 16) = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1C8);
  v19((a2 + *(v24 + 48)), v18, v4);
  sub_1D22BD1D0(v38, v40, &qword_1EC6DF1D0);
  sub_1D22BD238(&v42, &qword_1EC6DF1D0);
  v25 = *(v17 + 8);
  v25(v16, v4);
  v25(v18, v4);
  v40[2] = v35;
  v40[3] = v36;
  v41 = v37;
  v40[0] = v33;
  v40[1] = v34;
  return sub_1D22BD238(v40, &qword_1EC6DF1D0);
}

uint64_t sub_1D2618C14@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - v2;
  v3 = type metadata accessor for CharacterEditingView();
  v31 = *(v3 - 8);
  v35 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = v1[1];
  v36 = *v1;
  v37 = v9;
  v10 = v36;
  v29 = v9;
  v30 = v36;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v28 = sub_1D2650030();

  v39 = v10;
  v40 = v11;
  sub_1D2877328();
  v13 = v36;
  v12 = v37;
  v14 = v38;
  swift_getKeyPath();
  v36 = v13;
  v37 = v12;
  v38 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E0);
  sub_1D2877508();

  v15 = v1;
  v27 = v1;
  sub_1D262064C(v1, v5, type metadata accessor for CharacterEditingView);
  v16 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v17 = swift_allocObject();
  sub_1D26206B4(v5, v17 + v16, type metadata accessor for CharacterEditingView);
  sub_1D262064C(v15, v5, type metadata accessor for CharacterEditingView);
  v18 = swift_allocObject();
  sub_1D26206B4(v5, v18 + v16, type metadata accessor for CharacterEditingView);
  *&v8[v6[13]] = v28;
  v19 = &v8[v6[14]];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v8[v6[15]];
  *v20 = sub_1D26204B8;
  v20[1] = v17;
  v21 = &v8[v6[16]];
  *v21 = sub_1D2620528;
  v21[1] = v18;
  v36 = v30;
  v37 = v29;
  sub_1D2877308();
  v22 = v39;
  swift_getKeyPath();
  v36 = v22;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v24 = v32;
  sub_1D22BD1D0(v22 + v23, v32, &unk_1EC6E33C0);

  sub_1D262064C(v27, v5, type metadata accessor for CharacterEditingView);
  v25 = swift_allocObject();
  sub_1D26206B4(v5, v25 + v16, type metadata accessor for CharacterEditingView);
  sub_1D22BB9D8(qword_1EC6D8528, &qword_1EC6DF1D8);
  sub_1D2620598();
  sub_1D2876F58();

  sub_1D22BD238(v24, &unk_1EC6E33C0);
  return sub_1D22BD238(v8, &qword_1EC6DF1D8);
}

uint64_t sub_1D26190F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v0 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips;
  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) == 1)
  {
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = 1;
    swift_getKeyPath();
    sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719E8();

    if (*(v5 + v0) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , swift_unknownObjectWeakLoadStrong()))
    {
      v1 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      (*(v1 + 24))(v5, ObjectType, v1);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D261933C@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_1ED89E0E8;
  sub_1D2870F68();
  sub_1D2870F68();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0058;
  v4 = sub_1D2876668();
  v6 = v5;
  v8 = v7;
  sub_1D28764D8();
  v9 = sub_1D2876658();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1D22ED6E0(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1D22BBFAC(v9, v11, v13 & 1);
  sub_1D2870F68();
  sub_1D22ED6E0(v9, v11, v13 & 1);
}

uint64_t sub_1D26194C0@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = 0xEB00000000646569;
  v8 = 0x6669636570736E75;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  *v14 = sub_1D28756A8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2B8);
  sub_1D261ACF4(a1, a2, &v14[*(v15 + 44)]);
  v16 = 0x6669636570736E75;
  v17 = 0xEB00000000646569;
  if (v6 != 3)
  {
    v16 = sub_1D2873768();
    v17 = v18;
  }

  v19 = a1[1];
  v30[2] = *a1;
  v30[3] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v20 = sub_1D23C75E0();

  v21 = v20[4];
  sub_1D2870F68();

  v22 = *(v21 + 16);
  if (!v22)
  {

    goto LABEL_12;
  }

  v23 = *(v21 + v22 + 31);

  if (v23 != 3)
  {
    v8 = sub_1D2873768();
    v7 = v24;
  }

  if (v16 != v8 || v17 != v7)
  {
    v25 = sub_1D2879618();

    if (v25)
    {
      goto LABEL_11;
    }

LABEL_12:
    v27 = 0;
    v26 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v26 = 0;
  v27 = 1;
LABEL_13:
  sub_1D22BD1D0(v14, v11, &qword_1EC6DF2B0);
  sub_1D22BD1D0(v11, a3, &qword_1EC6DF2B0);
  v28 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2C0) + 48);
  *v28 = 0;
  *(v28 + 8) = v26;
  *(v28 + 9) = v27;
  sub_1D22BD238(v14, &qword_1EC6DF2B0);
  return sub_1D22BD238(v11, &qword_1EC6DF2B0);
}

uint64_t sub_1D2619774@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v46 = a3;
  v45 = sub_1D2871798();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for CharacterEditingView();
  v40 = *(v5 - 8);
  v49 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF270);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v50 = a2;
  v51 = &v35[-v10];
  v11 = a2[1];
  *&v65 = *a2;
  *(&v65 + 1) = v11;
  v12 = v65;
  v38 = v11;
  v39 = v65;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v14 = sub_1D23C75E0();

  v37 = v14[4];
  sub_1D2870F68();

  *&v53 = v12;
  *(&v53 + 1) = v13;
  sub_1D2877328();
  v15 = v65;
  v16 = v66;
  swift_getKeyPath();
  v65 = v15;
  *&v66 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E0);
  sub_1D2877508();

  v17 = v53;
  v36 = v54;

  v18 = v7;
  v48 = v7;
  sub_1D262064C(a2, v7, type metadata accessor for CharacterEditingView);
  v19 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v20 = swift_allocObject();
  sub_1D26206B4(v18, v20 + v19, type metadata accessor for CharacterEditingView);
  v77 = 1;
  sub_1D2877848();
  sub_1D2875208();
  v53 = v17;
  LOBYTE(v54) = v36;
  *(&v54 + 1) = v37;
  *&v55 = 0;
  BYTE8(v55) = 1;
  *&v56 = sub_1D2621448;
  *(&v56 + 1) = 0;
  *&v57 = sub_1D2620DAC;
  *(&v57 + 1) = v20;
  *&v65 = v39;
  *(&v65 + 1) = v38;
  sub_1D2877308();
  v21 = v52;
  swift_getKeyPath();
  *&v65 = v21;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  LOBYTE(v20) = *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  LOBYTE(v52) = v20;
  v22 = v48;
  sub_1D262064C(v50, v48, type metadata accessor for CharacterEditingView);
  v23 = swift_allocObject();
  sub_1D26206B4(v22, v23 + v19, type metadata accessor for CharacterEditingView);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF278);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF280);
  v26 = sub_1D2620968();
  v27 = sub_1D2620A20();
  sub_1D2876F58();

  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  sub_1D22BD238(&v65, &qword_1EC6DF278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF320);
  v28 = v41;
  sub_1D2874818();
  v29 = v48;
  sub_1D262064C(v50, v48, type metadata accessor for CharacterEditingView);
  v30 = swift_allocObject();
  sub_1D26206B4(v29, v30 + v19, type metadata accessor for CharacterEditingView);
  *&v53 = v24;
  *(&v53 + 1) = v25;
  *&v54 = v26;
  *(&v54 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_1D2620AA4(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
  v31 = v45;
  v32 = v43;
  v33 = v51;
  sub_1D2876F58();

  (*(v47 + 8))(v28, v31);
  return (*(v44 + 8))(v33, v32);
}

uint64_t sub_1D2619E44@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v11 = *a1;
  *a6 = sub_1D28756A8();
  *(a6 + 8) = 0;
  *(a6 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  return a5(a2, v11);
}

uint64_t sub_1D2619EC4@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = 0xEB00000000646569;
  v8 = 0x6669636570736E75;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF338);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  LOBYTE(v30[0]) = a2;
  sub_1D261A154(v30, v30 - v13);
  v15 = 0x6669636570736E75;
  v16 = 0xEB00000000646569;
  if (v6 != 3)
  {
    v15 = sub_1D2873768();
    v16 = v17;
  }

  v18 = a1[1];
  v30[0] = *a1;
  v30[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v19 = sub_1D23C75E0();

  v20 = v19[4];
  sub_1D2870F68();

  v21 = *(v20 + 16);
  if (!v21)
  {

    goto LABEL_12;
  }

  v22 = *(v20 + v21 + 31);

  if (v22 != 3)
  {
    v8 = sub_1D2873768();
    v7 = v23;
  }

  if (v15 != v8 || v16 != v7)
  {
    v24 = sub_1D2879618();

    if (v24)
    {
      goto LABEL_11;
    }

LABEL_12:
    v26 = 0;
    v25 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v25 = 0;
  v26 = 1;
LABEL_13:
  sub_1D22BD1D0(v14, v11, &qword_1EC6DF338);
  sub_1D22BD1D0(v11, a3, &qword_1EC6DF338);
  v27 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF340) + 48);
  *v27 = 0;
  *(v27 + 8) = v25;
  *(v27 + 9) = v26;
  sub_1D22BD238(v14, &qword_1EC6DF338);
  return sub_1D22BD238(v11, &qword_1EC6DF338);
}

uint64_t sub_1D261A154@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v6 = *(v11 + *off_1E83FE878[v5]);
  sub_1D2870F78();

  *a2 = sub_1D28756A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF348) + 44);
  v8 = *(v3 + *(type metadata accessor for CharacterEditingView() + 32) + 104);
  *v7 = sub_1D2875918();
  *(v7 + 8) = v8;
  *(v7 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF350);
  sub_1D261B8EC(v6, v3, v5, v7 + *(v9 + 44));
}

uint64_t sub_1D261A264(uint64_t a1)
{
  v2 = type metadata accessor for CharacterEditingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D262064C(a1, v5, type metadata accessor for CharacterEditingView);
  sub_1D2878568();
  v10 = sub_1D2878558();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1D26206B4(v5, v12 + v11, type metadata accessor for CharacterEditingView);
  sub_1D23C8994(0, 0, v8, &unk_1D2898C58, v12);
}

uint64_t sub_1D261A438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_1D2879328();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1D2878568();
  v4[16] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D261A538, v7, v6);
}

uint64_t sub_1D261A538()
{
  v1 = v0[11];
  v2 = *v1;
  v0[19] = *v1;
  v3 = v1[1];
  v0[20] = v3;
  v0[2] = v2;
  v0[3] = v3;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D286C128();

  v4 = sub_1D2879908();
  v6 = v5;
  sub_1D2879718();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1D261A690;

  return sub_1D233BA38(v4, v6, 0, 0, 1);
}

uint64_t sub_1D261A690()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v2[23] = v0;

  v6 = *(v4 + 8);
  v2[24] = v6;
  v2[25] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[18];
  v8 = v2[17];
  if (v0)
  {
    v9 = sub_1D261AB18;
  }

  else
  {
    v9 = sub_1D261A83C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D261A83C()
{
  v1 = v0[20];
  v0[4] = v0[19];
  v0[5] = v1;
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D286C128();

  v2 = sub_1D2879908();
  v4 = v3;
  sub_1D2879718();
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1D261A970;

  return sub_1D233BA38(v2, v4, 0, 0, 1);
}

uint64_t sub_1D261A970()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  *(*v1 + 216) = v0;

  v3(v4, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_1D261AC74;
  }

  else
  {
    v8 = sub_1D261AB98;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D261AB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D261AB98()
{
  v1 = v0[20];
  v2 = v0[19];

  v0[6] = v2;
  v0[7] = v1;
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D286C128();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D261AC74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D261ACF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D2874518();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_1D2877848();
  a3[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2C8);
  sub_1D261AF60(a1, a2, (a3 + *(v11 + 44)));
  type metadata accessor for CharacterEditingView();
  sub_1D2877848();
  sub_1D28748C8();
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2D0) + 36));
  v13 = v22;
  *v12 = v21;
  v12[1] = v13;
  v12[2] = v23;
  v14 = *(a1 + 8);
  v19 = *a1;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v15 = *&v18[1];
  swift_getKeyPath();
  v19 = v15;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v16 = *(*&v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  if (v16 != 4 && a2 != 4 && v16 != 3 && a2 != 3)
  {
    sub_1D2873768();
    sub_1D2873768();
  }

  sub_1D28744F8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D261AF60@<X0>(double *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v95 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2D8);
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v82 - v14;
  v15 = sub_1D2874DB8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = *a1;
  v16 = a1[1];
  v97 = a1;
  v106 = v17;
  v107 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v18 = *&v98;
  swift_getKeyPath();
  v106 = v18;
  v85 = sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v19 = *(*&v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  if (v19 == 4)
  {
    if (a2 == 4)
    {
LABEL_3:
      sub_1D2874DA8();
      goto LABEL_6;
    }
  }

  else if (a2 != 4)
  {
    if (v19 == 3)
    {
      if (a2 == 3)
      {
        goto LABEL_3;
      }
    }

    else if (a2 != 3)
    {
      v77 = sub_1D2873768();
      v79 = v78;
      if (v77 == sub_1D2873768() && v79 == v80)
      {

        goto LABEL_3;
      }

      v81 = sub_1D2879618();

      if (v81)
      {
        goto LABEL_3;
      }
    }
  }

  LODWORD(v106) = sub_1D2875D88();
LABEL_6:
  v90 = sub_1D28748D8();
  v20 = v97 + *(type metadata accessor for CharacterEditingView() + 32);
  sub_1D28745B8();
  v21 = v127;
  LODWORD(v97) = v128;
  v87 = v129;
  v22 = v130;
  v96 = v131;
  v23 = v132;
  v24 = sub_1D2877848();
  v88 = v25;
  v89 = v24;
  v82 = v20;
  sub_1D2877848();
  sub_1D28748C8();
  v106 = v17;
  v107 = v16;
  sub_1D2877308();
  v106 = v17;
  v107 = v16;
  sub_1D2877308();
  v26 = *&v98;
  swift_getKeyPath();
  v106 = v26;
  sub_1D28719E8();

  v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v28 = v86;
  sub_1D22BD1D0(*&v26 + v27, v86, &unk_1EC6E33C0);

  sub_1D23C75E0();
  LOBYTE(v106) = a2;
  v29 = COERCE_DOUBLE(sub_1D2437618(&v106, v28));
  v31 = v30;

  sub_1D22BD238(v28, &unk_1EC6E33C0);
  if (v31 == 0.0)
  {
    v62 = 1;
    v57 = v92;
    v58 = v93;
  }

  else
  {
    v106 = v29;
    v107 = v31;
    sub_1D22BD06C();
    v32 = sub_1D2876698();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    KeyPath = swift_getKeyPath();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2F8);
    v41 = v83;
    v42 = &v83[*(v40 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF300) + 28);
    v44 = *MEMORY[0x1E697E6F8];
    v45 = sub_1D2874E88();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = KeyPath;
    *v41 = v32;
    *(v41 + 8) = v34;
    *(v41 + 16) = v36 & 1;
    *(v41 + 24) = v38;
    v46 = v82;
    v47 = sub_1D28763F8();
    v48 = v84;
    (*(*(v47 - 8) + 56))(v84, 1, 1, v47);
    v49 = sub_1D2876448();
    sub_1D22BD238(v48, &qword_1EC6D9D40);
    v50 = swift_getKeyPath();
    v51 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF308) + 36));
    *v51 = v50;
    v51[1] = v49;
    v52 = *(v46 + 2);
    v53 = swift_getKeyPath();
    v54 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF310) + 36));
    *v54 = v53;
    v54[1] = v52;
    v55 = swift_getKeyPath();
    v56 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF318) + 36);
    *v56 = v55;
    *(v56 + 8) = 1;
    *(v56 + 16) = 0;
    sub_1D2877848();
    sub_1D28748C8();
    v57 = v92;
    v58 = v93;
    v59 = (v41 + *(v92 + 36));
    v60 = v134;
    v61 = v135;
    *v59 = v133;
    v59[1] = v60;
    v59[2] = v61;
    sub_1D2620D3C(v41, v58);
    v62 = 0;
  }

  (*(v91 + 56))(v58, v62, 1, v57);
  v63 = v94;
  sub_1D22BD1D0(v58, v94, &qword_1EC6DF2E0);
  *&v98 = v21 * 0.5;
  *(&v98 + 1) = v21;
  v64 = v87;
  *&v99 = __PAIR64__(v87, v97);
  *(&v99 + 1) = v22;
  *&v100 = v96;
  *(&v100 + 1) = v23;
  v65 = v89;
  v66 = v90;
  *&v101 = v90;
  WORD4(v101) = 256;
  HIWORD(v101) = v126;
  *(&v101 + 10) = v125;
  v67 = v88;
  *&v102 = v89;
  *(&v102 + 1) = v88;
  v104 = v123;
  v105 = v124;
  v103 = v122;
  v68 = v98;
  v69 = v99;
  v70 = v101;
  v71 = v95;
  v95[2] = v100;
  v71[3] = v70;
  *v71 = v68;
  v71[1] = v69;
  v72 = v102;
  v73 = v103;
  v74 = v105;
  v71[6] = v104;
  v71[7] = v74;
  v71[4] = v72;
  v71[5] = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2E8);
  sub_1D22BD1D0(v63, v71 + *(v75 + 48), &qword_1EC6DF2E0);
  sub_1D22BD1D0(&v98, &v106, &qword_1EC6DF2F0);
  sub_1D22BD238(v58, &qword_1EC6DF2E0);
  sub_1D22BD238(v63, &qword_1EC6DF2E0);
  v106 = v21 * 0.5;
  v107 = v21;
  v108 = v97;
  v109 = v64;
  v110 = v22;
  v111 = v96;
  v112 = v23;
  v113 = v66;
  v114 = 256;
  v115 = v125;
  v116 = v126;
  v117 = v65;
  v118 = v67;
  v120 = v123;
  v121 = v124;
  v119 = v122;
  return sub_1D22BD238(&v106, &qword_1EC6DF2F0);
}