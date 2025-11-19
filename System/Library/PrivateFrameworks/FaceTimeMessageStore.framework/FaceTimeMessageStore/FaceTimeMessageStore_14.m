uint64_t sub_1BC8C3F1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 464);
  v3 = *(v1 + 424);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8C4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_91();

  v17 = *(v15 + 416) + 1;
  if (v17 == *(v15 + 408))
  {
    v18 = *(v15 + 400);

    OUTLINED_FUNCTION_27_12();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_62_1();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_97_2(v17);
  if (v30)
  {
    goto LABEL_22;
  }

  v31 = *(v29 + 8 * v28 + 32);
  *(v15 + 424) = v31;
  v14 = *(v31 + 16);
  if (v14)
  {
    *(v15 + 240) = MEMORY[0x1E69E7CC0];

    sub_1BC8F8684();
    type metadata accessor for Message();
    v66 = v31;
    v16 = 0;
    v32 = v31 + 32;
    while (v16 < *(v31 + 16))
    {
      v33 = v14;
      v34 = *(v15 + 336);
      v36 = *(v15 + 288);
      v35 = *(v15 + 296);
      sub_1BC7A792C(v32, v15 + 136);
      sub_1BC7A792C(v15 + 136, v15 + 176);
      v38 = *(v15 + 160);
      v37 = *(v15 + 168);
      __swift_project_boxed_opaque_existential_1((v15 + 136), v38);
      (*(v37 + 72))(v38, v37);
      v39 = *(v15 + 160);
      v40 = *(v15 + 168);
      __swift_project_boxed_opaque_existential_1((v15 + 136), v39);
      (*(v40 + 128))(v39, v40);
      sub_1BC7ED740(v36, v35);
      v16 = (v16 + 1);
      v42 = *(v15 + 288);
      v41 = *(v15 + 296);
      v43 = *(v15 + 272);
      v44 = *(v15 + 280);
      (*(*(v15 + 328) + 8))(*(v15 + 336), *(v15 + 320));
      (*(v44 + 8))(v42, v43);
      v45 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
      sub_1BC7EA618((v15 + 176), v41);
      __swift_destroy_boxed_opaque_existential_1((v15 + 136));
      sub_1BC8F8654();
      v48 = *(*(v15 + 240) + 16);
      OUTLINED_FUNCTION_98_0();
      sub_1BC8F8694();
      OUTLINED_FUNCTION_98_0();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v32 += 40;
      v14 = v33;
      v49 = v33 == v16;
      v31 = v66;
      if (v49)
      {
        v50 = *(v15 + 240);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    OUTLINED_FUNCTION_0_26();
    swift_once();
    v54 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v54, qword_1EDC2B208);
    v55 = v14;
    v56 = sub_1BC8F7714();
    v57 = sub_1BC8F81E4();

    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_21_1();
      v58 = OUTLINED_FUNCTION_6_2();
      *v16 = 138543362;
      v59 = v14;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v60);
      OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v61, v57, "Got an error while inserting messages: %{public}@");
      sub_1BC7E6180(v58, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v62 = swift_task_alloc();
    v63 = OUTLINED_FUNCTION_100_2(v62);
    *v63 = v64;
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_62_1();

    return sub_1BC8C787C();
  }

LABEL_13:
  OUTLINED_FUNCTION_64_5();
  v51 = swift_task_alloc();
  *(v15 + 440) = v51;
  *v51 = v15;
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_62_1();

  return sub_1BC87BD2C(v52);
}

uint64_t sub_1BC8C44F0(uint64_t a1, char a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v8 = OUTLINED_FUNCTION_25(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_9();
  v11 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;

  sub_1BC8333D4();
}

uint64_t sub_1BC8C45E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC8C4694;

  return sub_1BC8C48D8();
}

uint64_t sub_1BC8C4694()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC8C47A8()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_28_14(v2, qword_1EDC2B208);
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v9, v10, "Failed to update voicemails from notification: %{public}@");
    sub_1BC7E6180(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_1BC8C48D8()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 312) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v0;
  v4 = type metadata accessor for VoicemailUpdate();
  *(v1 + 192) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 200) = v5;
  v7 = *(v6 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_47_3();
  Request = type metadata accessor for MessageStoreFetchRequest();
  *(v1 + 216) = Request;
  OUTLINED_FUNCTION_25(Request);
  v10 = *(v9 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_47_3();
  v11 = sub_1BC8F7264();
  *(v1 + 232) = v11;
  OUTLINED_FUNCTION_26(v11);
  *(v1 + 240) = v12;
  v14 = *(v13 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BC8C49F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = qword_1EDC1E000;
  if (*(v22 + 312))
  {
    if (qword_1EDC1E1A0 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v26 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v26, qword_1EDC2B208);
      v27 = sub_1BC8F7714();
      v28 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v28))
      {
        v29 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v29);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v30, v31, "Not comparing voicemails to update because this came from the diff");
        OUTLINED_FUNCTION_18_12();
      }

      v32 = *(v22 + 176);

      v33 = *(v22 + 176);
      v34 = *(v33 + 16);

      if (!v34)
      {
        break;
      }

      a9 = v26;
      v35 = *(v22 + 200);
      a10 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_88_4();
      sub_1BC7DDE04();
      v36 = 0;
      v37 = a10;
      v38 = v33 + 32;
      while (v36 < *(v33 + 16))
      {
        v39 = *(v22 + 208);
        sub_1BC7A792C(v38, v22 + 136);
        sub_1BC8C8870((v22 + 136), v39);
        __swift_destroy_boxed_opaque_existential_1((v22 + 136));
        a10 = v37;
        v25 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (v25 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_37(v40);
          sub_1BC7DDE04();
          v37 = a10;
        }

        ++v36;
        v41 = *(v22 + 208);
        *(v37 + 16) = v25 + 1;
        v42 = *(v35 + 80);
        OUTLINED_FUNCTION_76_6();
        sub_1BC880FD4(v44, v43 + *(v35 + 72) * v25);
        v38 += 40;
        if (v34 == v36)
        {

          v25 = qword_1EDC1E000;
          v26 = a9;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_47:
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_33:
    *(v22 + 288) = v37;
    if (*(v25 + 416) != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    OUTLINED_FUNCTION_28_14(v26, qword_1EDC2B208);

    v86 = sub_1BC8F7714();
    v87 = sub_1BC8F8204();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = *(v22 + 192);
      OUTLINED_FUNCTION_21_1();
      v89 = OUTLINED_FUNCTION_5_12();
      a10 = v89;
      *v33 = 136446210;
      v90 = MEMORY[0x1BFB29280](v37, v88);
      v92 = sub_1BC7A9A4C(v90, v91, &a10);

      *(v33 + 4) = v92;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v93, v94, "Updating the store with messageUpdates: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v89);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19_0();
    }

    if (*(v37 + 16))
    {
      v95 = swift_task_alloc();
      *(v22 + 296) = v95;
      *v95 = v22;
      OUTLINED_FUNCTION_37_12(v95);
      OUTLINED_FUNCTION_62_1();

      return sub_1BC8C8D50(v96);
    }

    else
    {

      v98 = sub_1BC8F7714();
      v99 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v99))
      {
        v100 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v100);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v101, v102, "No message updates to perform");
        OUTLINED_FUNCTION_18_12();
      }

      OUTLINED_FUNCTION_93_0();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_62_1();

      return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v45 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v45, qword_1EDC2B208);
    v46 = sub_1BC8F7714();
    v47 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v47))
    {
      v48 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v48);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v49, v50, "Comparing voicemails to update");
      OUTLINED_FUNCTION_18_12();
    }

    v51 = *(v22 + 176);

    v52 = *(v51 + 16);
    *(v22 + 256) = v52;
    v53 = MEMORY[0x1E69E7CC0];
    if (v52)
    {
      v54 = *(v22 + 240);
      v55 = *(v22 + 176);
      a10 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_88_4();
      sub_1BC7DDB5C();
      v56 = a10;
      v57 = v55 + 32;
      do
      {
        v58 = *(v22 + 248);
        sub_1BC7A792C(v57, v22 + 16);
        v59 = *(v22 + 48);
        __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
        v60 = OUTLINED_FUNCTION_20_14();
        v61(v60);
        __swift_destroy_boxed_opaque_existential_1((v22 + 16));
        a10 = v56;
        v62 = *(v56 + 24);
        if (*(v56 + 16) >= v62 >> 1)
        {
          OUTLINED_FUNCTION_37(v62);
          sub_1BC7DDB5C();
          v56 = a10;
        }

        v63 = *(v22 + 248);
        v64 = *(v22 + 232);
        v65 = OUTLINED_FUNCTION_57_4();
        v66(v65);
        v57 += 40;
        --v52;
      }

      while (v52);
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    sub_1BC80FA88(20, v56);
    v68 = v67;

    v69 = *(v68 + 16);
    if (v69)
    {
      a10 = v53;
      v70 = OUTLINED_FUNCTION_88_4();
      sub_1BC7DDB1C(v70, v69, 0);
      v71 = a10;
      do
      {
        v72 = *(v68 + 32);
        OUTLINED_FUNCTION_21_4();
        *(swift_allocObject() + 16) = v72;
        a10 = v71;
        v74 = *(v71 + 16);
        v73 = *(v71 + 24);

        if (v74 >= v73 >> 1)
        {
          sub_1BC7DDB1C((v73 > 1), v74 + 1, 1);
          v71 = a10;
        }

        OUTLINED_FUNCTION_73_7();
      }

      while (!v75);
    }

    v77 = *(v22 + 216);
    v76 = *(v22 + 224);
    __swift_project_boxed_opaque_existential_1((*(v22 + 184) + 64), *(*(v22 + 184) + 88));
    OUTLINED_FUNCTION_21_4();
    v78 = swift_allocObject();
    OUTLINED_FUNCTION_108_2(v78);
    OUTLINED_FUNCTION_61_4();
    v79 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    OUTLINED_FUNCTION_50_7(v79, v80);
    v81 = swift_task_alloc();
    v82 = OUTLINED_FUNCTION_101_3(v81);
    *v82 = v83;
    v82[1] = sub_1BC8C5024;
    OUTLINED_FUNCTION_28_9(*(v22 + 224));
    OUTLINED_FUNCTION_62_1();

    return sub_1BC7BED60();
  }
}

uint64_t sub_1BC8C5024()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v1 + 264);
  v6 = *v2;
  OUTLINED_FUNCTION_10_0();
  *v7 = v6;
  *(v9 + 272) = v8;
  *(v9 + 280) = v0;

  OUTLINED_FUNCTION_102_1();
  sub_1BC7ADC24(*(v10 + 224));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC8C5144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = 0;
  v26 = *(v22 + 176) + 32;
  v27 = *(v22 + 280);
  v28 = MEMORY[0x1E69E7CC0];
  while (v25 != *(v22 + 256))
  {
    v29 = *(v22 + 272);
    sub_1BC7A792C(v26, v22 + 56);
    v30 = swift_task_alloc();
    *(v30 + 16) = v22 + 56;
    sub_1BC8D6128(sub_1BC8CB0A8, v30, v29);
    v32 = v31;

    if (v32 && (v33 = sub_1BC7EAD54((v22 + 56)), v32, !v33))
    {
      sub_1BC7CF5EC((v22 + 56), v22 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v28 + 16);
        OUTLINED_FUNCTION_88_4();
        sub_1BC7DDDE4();
        v28 = a10;
      }

      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_37(v36);
        sub_1BC7DDDE4();
      }

      v38 = *(v22 + 120);
      a9 = *(v22 + 128);
      v39 = __swift_mutable_project_boxed_opaque_existential_1(v22 + 96, v38);
      OUTLINED_FUNCTION_103_1();
      v41 = v40;
      v43 = *(v42 + 64);
      v44 = OUTLINED_FUNCTION_47_3();
      (*(v41 + 16))(v44, v39, v38);
      sub_1BC8F5354(v37, v44, &a10, v38, a9);
      __swift_destroy_boxed_opaque_existential_1((v22 + 96));

      v28 = a10;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 56));
    }

    v26 += 40;
    ++v25;
  }

  v45 = *(v22 + 272);

  v46 = *(v28 + 16);
  if (v46)
  {
    v47 = *(v22 + 200);
    a10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_88_4();
    sub_1BC7DDE04();
    v48 = 0;
    v49 = a10;
    v50 = v28 + 32;
    while (1)
    {
      if (v48 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v51 = *(v22 + 208);
      sub_1BC7A792C(v50, v22 + 136);
      sub_1BC8C8870((v22 + 136), v51);
      __swift_destroy_boxed_opaque_existential_1((v22 + 136));
      if (v27)
      {
        break;
      }

      a10 = v49;
      v53 = *(v49 + 16);
      v52 = *(v49 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_37(v52);
        sub_1BC7DDE04();
        v49 = a10;
      }

      ++v48;
      v54 = *(v22 + 208);
      *(v49 + 16) = v53 + 1;
      v55 = *(v47 + 80);
      OUTLINED_FUNCTION_76_6();
      sub_1BC880FD4(v57, v56 + *(v47 + 72) * v53);
      v27 = 0;
      v50 += 40;
      if (v46 == v48)
      {

        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_62_1();
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *(v22 + 288) = v49;
    if (qword_1EDC1E1A0 != -1)
    {
LABEL_37:
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v60 = sub_1BC8F7734();
    OUTLINED_FUNCTION_28_14(v60, qword_1EDC2B208);

    v61 = sub_1BC8F7714();
    v62 = sub_1BC8F8204();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v22 + 192);
      OUTLINED_FUNCTION_21_1();
      v64 = OUTLINED_FUNCTION_5_12();
      a10 = v64;
      *v46 = 136446210;
      v65 = MEMORY[0x1BFB29280](v49, v63);
      v67 = sub_1BC7A9A4C(v65, v66, &a10);

      *(v46 + 4) = v67;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v68, v69, "Updating the store with messageUpdates: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19_0();
    }

    if (*(v49 + 16))
    {
      v70 = swift_task_alloc();
      *(v22 + 296) = v70;
      *v70 = v22;
      OUTLINED_FUNCTION_37_12(v70);
      OUTLINED_FUNCTION_62_1();

      return sub_1BC8C8D50(v71);
    }

    else
    {

      v73 = sub_1BC8F7714();
      v74 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v74))
      {
        v75 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v75);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v76, v77, "No message updates to perform");
        OUTLINED_FUNCTION_18_12();
      }

      OUTLINED_FUNCTION_93_0();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_62_1();

      return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_1BC8C55D8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[35];
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_28_14(v2, qword_1EDC2B208);
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v5 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v6);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v7, v8, "Got an error while performing update: %{public}@");
    sub_1BC7E6180(v5, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[26];

  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_1BC8C5724()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8C581C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 288);

  OUTLINED_FUNCTION_93_0();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_1BC8C5888()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[36];

  v2 = v0[38];
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v3 = sub_1BC8F7734();
  v4 = OUTLINED_FUNCTION_28_14(v3, qword_1EDC2B208);
  v5 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v7);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v8, v9, "Got an error while performing update: %{public}@");
    sub_1BC7E6180(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[26];

  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_1BC8C59DC()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0168;

  return sub_1BC8C5A68();
}

uint64_t sub_1BC8C5A88()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for OSTransaction();

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1BC8C5B60;
  v4 = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_28_9("com.apple.facetimemessagestored.voicemailSetup");

  return sub_1BC8D3BF4(v5, 46, 2, v2, v6);
}

void sub_1BC8C5B60()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_27();

    v6();
  }
}

uint64_t sub_1BC8C5C68()
{
  OUTLINED_FUNCTION_5();
  v0[15] = v1;
  v2 = sub_1BC8F76C4();
  v0[16] = v2;
  OUTLINED_FUNCTION_26(v2);
  v0[17] = v3;
  v5 = *(v4 + 64);
  v0[18] = OUTLINED_FUNCTION_47_3();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v0[19] = Request;
  OUTLINED_FUNCTION_25(Request);
  v8 = *(v7 + 64);
  v0[20] = OUTLINED_FUNCTION_47_3();
  v9 = sub_1BC8F7684();
  v0[21] = v9;
  OUTLINED_FUNCTION_26(v9);
  v0[22] = v10;
  v12 = *(v11 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BC8C5DA0()
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  if (qword_1EDC1DF68 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1BC8F76B4();
  v0[26] = OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B1B8);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v3 = sub_1BC8F76A4();
  v4 = sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v5 = v0[25];
    v6 = OUTLINED_FUNCTION_36();
    *v6 = 0;
    v7 = sub_1BC8F7674();
    _os_signpost_emit_with_name_impl(&dword_1BC7A3000, v3, v4, v7, "Voicemail Diff Start", "", v6, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[15];

  (*(v11 + 16))(v9, v8, v10);
  v15 = sub_1BC8F76F4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[27] = sub_1BC8F76E4();
  OUTLINED_FUNCTION_21_4();
  v18 = swift_allocObject();
  v0[28] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC8FEAA0;
  OUTLINED_FUNCTION_21_4();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1F3B36CB8;
  *(v19 + 32) = v20 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1F3B36CE0;
  *(v19 + 40) = v21 | 0x6000000000000000;
  *(v18 + 16) = v19;

  sub_1BC8F7254();
  *(v12 + v13[5]) = v18 | 0xC000000000000000;
  *(v12 + v13[6]) = 266;
  *(v12 + v13[7]) = 2;
  v22 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v23 = (v12 + v13[8]);
  *v23 = v22;
  v23[1] = v24;
  *(v12 + v13[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v12 + v13[10]) = 0;
  v25 = *__swift_project_boxed_opaque_existential_1((v14 + 64), *(v14 + 88));
  v26 = swift_task_alloc();
  v0[29] = v26;
  *v26 = v0;
  v26[1] = sub_1BC8C605C;
  OUTLINED_FUNCTION_28_9(v0[20]);
  OUTLINED_FUNCTION_190();

  return sub_1BC7BED60();
}

uint64_t sub_1BC8C605C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 232);
  *v3 = *v1;
  *(v2 + 240) = v6;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8C615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v11 = v10[15];
  swift_beginAccess();
  result = sub_1BC8CB038(v11 + 104, (v10 + 2));
  v13 = v10[5];
  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v10[30];
  v15 = *__swift_project_boxed_opaque_existential_1(v10 + 2, v13);
  v16 = sub_1BC8D6308();
  v10[32] = v16;
  v10[33] = v17;
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  result = sub_1BC8CB038(v11 + 104, (v10 + 7));
  if (!v10[10])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v18 = v10[30];

  v19 = *__swift_project_boxed_opaque_existential_1(v10 + 7, v10[10]);
  sub_1BC8D7364();
  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  if (*(v16 + 16))
  {
    v20 = swift_task_alloc();
    v10[34] = v20;
    *v20 = v10;
    v20[1] = sub_1BC8C6638;
    v21 = v10[15];
    OUTLINED_FUNCTION_190();

    return sub_1BC8C26F4();
  }

  else
  {

    if (*(v10[33] + 16))
    {
      v23 = swift_task_alloc();
      v10[36] = v23;
      *v23 = v10;
      OUTLINED_FUNCTION_33_14(v23);
      OUTLINED_FUNCTION_190();

      return sub_1BC8C48D8();
    }

    else
    {
      v25 = v10[28];
      sub_1BC7ADC24(v10[20]);

      OUTLINED_FUNCTION_89_1();
      OUTLINED_FUNCTION_54_9();
      sub_1BC8F82C4();
      if (OUTLINED_FUNCTION_96_1())
      {
        OUTLINED_FUNCTION_26_12();
        sub_1BC8F7704();

        v26 = OUTLINED_FUNCTION_23_14();
        if (v27(v26) != *MEMORY[0x1E69E93E8])
        {
          v28 = OUTLINED_FUNCTION_22_13();
          v29(v28);
        }

        v30 = OUTLINED_FUNCTION_53_8();
        v31 = OUTLINED_FUNCTION_94_1(v30);
        OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v32, v33, v31, "Voicemail Diff End");
        OUTLINED_FUNCTION_19_0();
      }

      OUTLINED_FUNCTION_12_17();

      v34 = OUTLINED_FUNCTION_21_15();
      (v25)(v34);
      v35 = OUTLINED_FUNCTION_20_5();
      (v25)(v35);

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_190();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
    }
  }
}

uint64_t sub_1BC8C6420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v11 = v10[28];

  v12 = v10[31];
  sub_1BC7ADC24(v10[20]);
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v13 = sub_1BC8F7734();
  v14 = OUTLINED_FUNCTION_28_14(v13, qword_1EDC2B208);
  v15 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v16 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v17);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v18, v19, "Failed to fetch messages for voicemail diff. %{public}@");
    sub_1BC7E6180(v16, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v20 = OUTLINED_FUNCTION_23_14();
    if (v21(v20) != *MEMORY[0x1E69E93E8])
    {
      v22 = OUTLINED_FUNCTION_22_13();
      v23(v22);
    }

    v24 = OUTLINED_FUNCTION_53_8();
    v25 = OUTLINED_FUNCTION_94_1(v24);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v26, v27, v25, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v28 = OUTLINED_FUNCTION_21_15();
  (v12)(v28);
  v29 = OUTLINED_FUNCTION_20_5();
  (v12)(v29);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC8C6638()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[35] = v0;

  if (v0)
  {
    v9 = v3[32];
    v10 = v3[33];
  }

  else
  {
    v11 = v3[32];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BC8C674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  if (*(v10[33] + 16))
  {
    v11 = swift_task_alloc();
    v10[36] = v11;
    *v11 = v10;
    OUTLINED_FUNCTION_33_14(v11);
    OUTLINED_FUNCTION_190();

    return sub_1BC8C48D8();
  }

  else
  {
    v14 = v10[28];
    sub_1BC7ADC24(v10[20]);

    OUTLINED_FUNCTION_89_1();
    OUTLINED_FUNCTION_54_9();
    sub_1BC8F82C4();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_26_12();
      sub_1BC8F7704();

      v15 = OUTLINED_FUNCTION_23_14();
      if (v16(v15) != *MEMORY[0x1E69E93E8])
      {
        v17 = OUTLINED_FUNCTION_22_13();
        v18(v17);
      }

      v19 = OUTLINED_FUNCTION_53_8();
      v20 = OUTLINED_FUNCTION_94_1(v19);
      OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v21, v22, v20, "Voicemail Diff End");
      OUTLINED_FUNCTION_19_0();
    }

    OUTLINED_FUNCTION_12_17();

    v23 = OUTLINED_FUNCTION_21_15();
    (v14)(v23);
    v24 = OUTLINED_FUNCTION_20_5();
    (v14)(v24);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_190();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }
}

uint64_t sub_1BC8C68FC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 296) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC8C6A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v12 = *(v11 + 224);
  v13 = *(v11 + 160);

  sub_1BC7ADC24(v13);
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v14 = OUTLINED_FUNCTION_23_14();
    if (v15(v14) != *MEMORY[0x1E69E93E8])
    {
      v16 = OUTLINED_FUNCTION_22_13();
      v17(v16);
    }

    v18 = OUTLINED_FUNCTION_53_8();
    v19 = OUTLINED_FUNCTION_94_1(v18);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v20, v21, v19, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v22 = OUTLINED_FUNCTION_21_15();
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_20_5();
  (v10)(v23);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1BC8C6B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v11 = v10[28];

  v12 = v10[35];
  sub_1BC7ADC24(v10[20]);
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v13 = sub_1BC8F7734();
  v14 = OUTLINED_FUNCTION_28_14(v13, qword_1EDC2B208);
  v15 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v16 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v17);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v18, v19, "Failed to fetch messages for voicemail diff. %{public}@");
    sub_1BC7E6180(v16, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v20 = OUTLINED_FUNCTION_23_14();
    if (v21(v20) != *MEMORY[0x1E69E93E8])
    {
      v22 = OUTLINED_FUNCTION_22_13();
      v23(v22);
    }

    v24 = OUTLINED_FUNCTION_53_8();
    v25 = OUTLINED_FUNCTION_94_1(v24);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v26, v27, v25, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v28 = OUTLINED_FUNCTION_21_15();
  (v12)(v28);
  v29 = OUTLINED_FUNCTION_20_5();
  (v12)(v29);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC8C6D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v11 = v10[28];

  v12 = v10[37];
  sub_1BC7ADC24(v10[20]);
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v13 = sub_1BC8F7734();
  v14 = OUTLINED_FUNCTION_28_14(v13, qword_1EDC2B208);
  v15 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v16 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v17);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v18, v19, "Failed to fetch messages for voicemail diff. %{public}@");
    sub_1BC7E6180(v16, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v20 = OUTLINED_FUNCTION_23_14();
    if (v21(v20) != *MEMORY[0x1E69E93E8])
    {
      v22 = OUTLINED_FUNCTION_22_13();
      v23(v22);
    }

    v24 = OUTLINED_FUNCTION_53_8();
    v25 = OUTLINED_FUNCTION_94_1(v24);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v26, v27, v25, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v28 = OUTLINED_FUNCTION_21_15();
  (v12)(v28);
  v29 = OUTLINED_FUNCTION_20_5();
  (v12)(v29);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC8C6F90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  sub_1BC7E6180(v0 + 104, &qword_1EBCF5B00, &qword_1BC9034D8);
  return v0;
}

uint64_t sub_1BC8C6FD8()
{
  sub_1BC8C6F90();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1BC8C7030(uint64_t a1)
{
  v4 = sub_1BC8F78B4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v10 = sub_1BC8F78E4();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v18 = v17 - v16;
  v19 = *(v1 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v1;
  v30 = sub_1BC8CB030;
  v31 = v20;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v28 = v21;
  v29 = &block_descriptor_38;
  v22 = _Block_copy(aBlock);

  sub_1BC8F78D4();
  OUTLINED_FUNCTION_9_16();
  sub_1BC8CB0C8(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  sub_1BC7D9414();
  OUTLINED_FUNCTION_32_10();
  v25 = OUTLINED_FUNCTION_77_5();
  MEMORY[0x1BFB296A0](v25);
  _Block_release(v22);
  (*(v7 + 8))(v2, v4);
  (*(v13 + 8))(v18, v10);
}

uint64_t sub_1BC8C729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v36[1] = a2;
  v6 = sub_1BC8F78B4();
  v7 = OUTLINED_FUNCTION_0(v6);
  v40 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v39 = sub_1BC8F78E4();
  v11 = OUTLINED_FUNCTION_0(v39);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v18 = v17 - v16;
  v19 = sub_1BC8F7264();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[2] = *(v4 + 16);
  (*(v22 + 16))(v25, a1, v19);
  v26 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  (*(v22 + 32))(v27 + v26, v25, v19);
  v45 = v37;
  v46 = v27;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v43 = v28;
  v44 = v38;
  v29 = _Block_copy(aBlock);

  sub_1BC8F78D4();
  v41 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_16();
  sub_1BC8CB0C8(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  sub_1BC7D9414();
  OUTLINED_FUNCTION_32_10();
  v32 = OUTLINED_FUNCTION_77_5();
  MEMORY[0x1BFB296A0](v32);
  _Block_release(v29);
  v33 = OUTLINED_FUNCTION_104_2();
  v34(v33);
  (*(v13 + 8))(v18, v39);
}

uint64_t sub_1BC8C75A8(uint64_t a1, int a2)
{
  v34 = a2;
  v4 = sub_1BC8F78B4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v9 = sub_1BC8F78E4();
  v10 = OUTLINED_FUNCTION_0(v9);
  v36 = v11;
  v37 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  v17 = sub_1BC8F7264();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v35 = *(v2 + 16);
  (*(v20 + 16))(&v33[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v17);
  v23 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  (*(v20 + 32))(v24 + v23, &v33[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)], v17);
  *(v24 + v23 + v22) = v34;
  v43 = sub_1BC8CAE70;
  v44 = v24;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v41 = v25;
  v42 = &block_descriptor_26;
  v26 = _Block_copy(aBlock);

  sub_1BC8F78D4();
  v39 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_16();
  sub_1BC8CB0C8(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  sub_1BC7D9414();
  OUTLINED_FUNCTION_32_10();
  v29 = OUTLINED_FUNCTION_77_5();
  MEMORY[0x1BFB296A0](v29);
  _Block_release(v26);
  v30 = OUTLINED_FUNCTION_104_2();
  v31(v30);
  (*(v36 + 8))(v16, v37);
}

uint64_t sub_1BC8C787C()
{
  OUTLINED_FUNCTION_5();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_1BC8F7264();
  v1[19] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[20] = v4;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_1BC8F7014();
  v1[23] = v7;
  OUTLINED_FUNCTION_26(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = OUTLINED_FUNCTION_47_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  v1[26] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BC8C79B0()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v0[27] = v2;
  if (!v2)
  {
LABEL_11:
    v36 = v0[25];
    v35 = v0[26];
    v38 = v0[21];
    v37 = v0[22];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_69_4();

    __asm { BRAA            X1, X16 }
  }

  v3 = type metadata accessor for Message();
  v4 = 0;
  v0[28] = v3;
  while (1)
  {
    v0[29] = v4;
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[22];
    sub_1BC7A792C(v1 + 40 * v4 + 32, (v0 + 2));
    sub_1BC7A792C((v0 + 2), (v0 + 7));
    OUTLINED_FUNCTION_45_12();
    v9 = *(v8 + 72);
    v10 = OUTLINED_FUNCTION_52_6();
    v11(v10);
    OUTLINED_FUNCTION_45_12();
    v13 = *(v12 + 128);
    v14 = OUTLINED_FUNCTION_52_6();
    v15(v14);
    OUTLINED_FUNCTION_107_2();
    if (!v5)
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_82_5();
    v56 = *(v17 + 8);
    v56(v16);
    v18 = OUTLINED_FUNCTION_25_15();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v20 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v20, qword_1EDC2B208);
    sub_1BC7A792C((v0 + 2), (v0 + 12));
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F81F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[21];
      v54 = v0[19];
      v55 = v0[20] + 8;
      v24 = OUTLINED_FUNCTION_21_1();
      v57 = swift_slowAlloc();
      *v24 = 136446210;
      v25 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v26 = *(v25 + 128);
      v27 = OUTLINED_FUNCTION_10_2();
      v28(v27, v25);
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&qword_1EDC20FA0, v29);
      v30 = sub_1BC8F8A54();
      (v56)(v23, v54);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      v31 = OUTLINED_FUNCTION_31_3();
      sub_1BC7A9A4C(v31, v32, v33);
      OUTLINED_FUNCTION_10_2();

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "Failed to insert message with UUID: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    OUTLINED_FUNCTION_65_4();
    if (v34)
    {
      goto LABEL_11;
    }

    v4 = v0[29] + 1;
    v1 = v0[17];
  }

  v41 = OUTLINED_FUNCTION_13_18();
  v42(v41);
  v43 = OUTLINED_FUNCTION_55_4();
  v44(v43);
  v45 = OUTLINED_FUNCTION_48_10();
  OUTLINED_FUNCTION_66_4(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v46 = swift_allocObject();
  v0[32] = v46;
  OUTLINED_FUNCTION_79_4(v46, xmmword_1BC904010);
  v47 = v6;
  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_101_3(v48);
  *v49 = v50;
  OUTLINED_FUNCTION_6_21(v49);
  OUTLINED_FUNCTION_69_4();

  return sub_1BC87BD2C(v51);
}

uint64_t sub_1BC8C7D64()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v1 + 264);
  *v4 = *v2;
  *(v3 + 272) = v0;

  OUTLINED_FUNCTION_102_1();
  v7 = *(v6 + 256);

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC8C7E84()
{
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = v0[31];
  v57 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v57, qword_1EDC2B208);
  v2 = v1;
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  v5 = OUTLINED_FUNCTION_137();
  v6 = v0[31];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_21_1();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Inserted message: %@", v7, 0xCu);
    sub_1BC7E6180(v8, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v9 = v3;
    v3 = v0[31];
  }

  for (i = v0[34]; ; i = 0)
  {
    OUTLINED_FUNCTION_65_4();
    if (v11)
    {
      v37 = v0[25];
      v36 = v0[26];
      v39 = v0[21];
      v38 = v0[22];

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v12 = v0[29];
    v0[29] = v12 + 1;
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[22];
    OUTLINED_FUNCTION_91_2(v12);
    sub_1BC7A792C((v0 + 2), (v0 + 7));
    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    (*(v17 + 72))(v16, v17);
    v18 = v0[5];
    v19 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
    (*(v19 + 128))(v18, v19);
    sub_1BC7ED740(v14, v13);
    if (!i)
    {
      break;
    }

    v20 = OUTLINED_FUNCTION_82_5();
    v58 = *(v21 + 8);
    v58(v20);
    v22 = OUTLINED_FUNCTION_25_15();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    OUTLINED_FUNCTION_37_0(v57, qword_1EDC2B208);
    sub_1BC7A792C((v0 + 2), (v0 + 12));
    v24 = sub_1BC8F7714();
    v25 = sub_1BC8F81F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[21];
      v55 = v0[19];
      v56 = v0[20] + 8;
      OUTLINED_FUNCTION_21_1();
      v59 = OUTLINED_FUNCTION_5_12();
      *v13 = 136446210;
      v27 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v28 = *(v27 + 128);
      v29 = OUTLINED_FUNCTION_10_2();
      v30(v29, v27);
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&qword_1EDC20FA0, v31);
      v9 = v55;
      v32 = sub_1BC8F8A54();
      (v58)(v26, v55);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      v33 = OUTLINED_FUNCTION_31_3();
      sub_1BC7A9A4C(v33, v34, v35);
      OUTLINED_FUNCTION_10_2();

      *(v13 + 4) = v32;
      _os_log_impl(&dword_1BC7A3000, v24, v25, "Failed to insert message with UUID: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }
  }

  v42 = OUTLINED_FUNCTION_13_18();
  v43(v42);
  v44 = OUTLINED_FUNCTION_55_4();
  v45(v44);
  v46 = OUTLINED_FUNCTION_48_10();
  OUTLINED_FUNCTION_66_4(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v47 = swift_allocObject();
  v0[32] = v47;
  OUTLINED_FUNCTION_79_4(v47, xmmword_1BC904010);
  v48 = v9;
  v49 = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_101_3(v49);
  *v50 = v51;
  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_53();

  return sub_1BC87BD2C(v52);
}

uint64_t sub_1BC8C8334()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = qword_1EDC2B208;
  while (1)
  {
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v4 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v4, v3);
    sub_1BC7A792C(v0 + 16, v0 + 96);
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F81F4();
    if (os_log_type_enabled(v5, v6))
    {
      v57 = v2;
      v7 = *(v0 + 168);
      v55 = *(v0 + 152);
      v56 = *(v0 + 160) + 8;
      v8 = OUTLINED_FUNCTION_21_1();
      v58 = swift_slowAlloc();
      *v8 = 136446210;
      v9 = v3;
      v10 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      v11 = *(v10 + 128);
      v12 = OUTLINED_FUNCTION_10_2();
      v13 = v10;
      v3 = v9;
      v14(v12, v13);
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&qword_1EDC20FA0, v15);
      v16 = sub_1BC8F8A54();
      v57(v7, v55);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v17 = OUTLINED_FUNCTION_31_3();
      sub_1BC7A9A4C(v17, v18, v19);
      OUTLINED_FUNCTION_10_2();

      *(v8 + 4) = v16;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Failed to insert message with UUID: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    OUTLINED_FUNCTION_65_4();
    if (v20)
    {
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      v39 = *(v0 + 168);
      v38 = *(v0 + 176);

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v21 = *(v0 + 232);
    *(v0 + 232) = v21 + 1;
    v22 = *(v0 + 200);
    v1 = *(v0 + 208);
    v23 = *(v0 + 176);
    OUTLINED_FUNCTION_91_2(v21);
    sub_1BC7A792C(v0 + 16, v0 + 56);
    OUTLINED_FUNCTION_45_12();
    v25 = *(v24 + 72);
    v26 = OUTLINED_FUNCTION_52_6();
    v27(v26);
    OUTLINED_FUNCTION_45_12();
    v29 = *(v28 + 128);
    v30 = OUTLINED_FUNCTION_52_6();
    v31(v30);
    OUTLINED_FUNCTION_107_2();
    if (!v1)
    {
      break;
    }

    v32 = OUTLINED_FUNCTION_82_5();
    v2 = *(v33 + 8);
    (v2)(v32);
    v34 = OUTLINED_FUNCTION_25_15();
    v35(v34);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v42 = OUTLINED_FUNCTION_13_18();
  v43(v42);
  v44 = OUTLINED_FUNCTION_55_4();
  v45(v44);
  v46 = OUTLINED_FUNCTION_48_10();
  OUTLINED_FUNCTION_66_4(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v47 = swift_allocObject();
  *(v0 + 256) = v47;
  OUTLINED_FUNCTION_79_4(v47, xmmword_1BC904010);
  v48 = v22;
  v49 = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_101_3(v49);
  *v50 = v51;
  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_53();

  return sub_1BC87BD2C(v52);
}

uint64_t sub_1BC8C86D4(uint64_t *a1, void *a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  swift_beginAccess();
  (*(v5 + 16))(v11, v12 + v13, v4);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 128))(v14, v15);
  LOBYTE(a2) = sub_1BC8F7234();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a2 & 1;
}

uint64_t sub_1BC8C8870@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1BC8F7264();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC8F7014();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v36 - v19;
  __swift_storeEnumTagSinglePayload(&v36 - v19, 1, 1, v7);
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v20 + 96))(v21, v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v7) == 1)
  {
    sub_1BC7E6180(v18, &qword_1EBCF5A20, &qword_1BC901BF0);
    v22 = v42;
    v23 = a1;
  }

  else
  {
    (*(v40 + 32))(v10, v18, v7);
    v24 = a1[3];
    v25 = a1[4];
    v37 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v24);
    (*(v25 + 128))(v24, v25);
    v26 = v41;
    sub_1BC7ED740(v10, v15);
    if (v26)
    {
      (*(v38 + 8))(v6, v39);
      (*(v40 + 8))(v10, v7);
      if (qword_1EDC1E1A0 != -1)
      {
        swift_once();
      }

      v27 = sub_1BC8F7734();
      __swift_project_value_buffer(v27, qword_1EDC2B208);
      v28 = v26;
      v29 = sub_1BC8F7714();
      v30 = sub_1BC8F81E4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138543362;
        v33 = v26;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_1BC7A3000, v29, v30, "Got an error while trying to copy the transcriptURL: %{public}@", v31, 0xCu);
        sub_1BC7E6180(v32, &unk_1EBCF5DB0, &unk_1BC900410);
        MEMORY[0x1BFB2AA50](v32, -1, -1);
        MEMORY[0x1BFB2AA50](v31, -1, -1);
      }

      else
      {
      }

      v23 = v37;
      v22 = v42;
    }

    else
    {
      (*(v38 + 8))(v6, v39);
      (*(v40 + 8))(v10, v7);
      v22 = v42;
      sub_1BC7E6180(v42, &qword_1EBCF5A20, &qword_1BC901BF0);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
      sub_1BC805ABC(v15, v22);
      v23 = v37;
    }
  }

  sub_1BC7A792C(v23, v43);
  sub_1BC87CDD8(v43, v44);
  return sub_1BC7E6180(v22, &qword_1EBCF5A20, &qword_1BC901BF0);
}

uint64_t sub_1BC8C8D50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8C8D7C()
{
  OUTLINED_FUNCTION_5();
  if (*(v0[2] + 16))
  {
    v1 = *__swift_project_boxed_opaque_existential_1((v0[3] + 64), *(v0[3] + 88));
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1BC8ABC78;
    v3 = OUTLINED_FUNCTION_28_9(v0[2]);

    return sub_1BC87C39C(v3);
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return v5();
  }
}

uint64_t sub_1BC8C8E54(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v44 = sub_1BC8F7264();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1BC8F7734();
  __swift_project_value_buffer(v7, qword_1EDC2B208);

  v8 = sub_1BC8F7714();
  v9 = sub_1BC8F8204();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48[0] = v11;
    *v10 = 136315138;
    *&v46 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    v12 = sub_1BC8F7C94();
    v14 = sub_1BC7A9A4C(v12, v13, v48);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1BC7A3000, v8, v9, "Asked to perform update voicemails with messages: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB2AA50](v11, -1, -1);
    MEMORY[0x1BFB2AA50](v10, -1, -1);
  }

  result = sub_1BC7C0454(a1);
  v41 = result;
  if (result)
  {
    if (v41 < 1)
    {
      __break(1u);
    }

    else
    {
      v16 = 0;
      v40 = a1 & 0xC000000000000001;
      v43 = (v3 + 16);
      v42 = (v3 + 8);
      v39 = a1;
      do
      {
        if (v40)
        {
          v17 = MEMORY[0x1BFB29A00](v16, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        swift_beginAccess();
        v20 = *v43;
        v21 = v44;
        (*v43)(v6, &v18[v19], v44);
        v22 = sub_1BC8C9418(v6, &v46);
        v23 = *v42;
        (*v42)(v6, v21, v22);
        if (v47)
        {
          sub_1BC7CF5EC(&v46, v48);
          v24 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
          swift_beginAccess();
          if (v18[v24] == 1)
          {
            v25 = v49;
            v26 = v50;
            __swift_project_boxed_opaque_existential_1(v48, v49);
            if (((*(v26 + 16))(v25, v26) & 1) == 0)
            {
              v27 = v44;
              v20(v6, &v18[v19], v44);
              sub_1BC8C729C(v6, &unk_1F3B3D908, sub_1BC8C9F80, &block_descriptor_8);
              (v23)(v6, v27);
            }
          }

          v28 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
          swift_beginAccess();
          v29 = *&v18[v28];
          if (v29 == 2)
          {
            v30 = v49;
            v31 = v50;
            __swift_project_boxed_opaque_existential_1(v48, v49);
            if ((*(v31 + 24))(v30, v31) == 1)
            {
              v32 = v44;
              v20(v6, &v18[v19], v44);
              sub_1BC8C729C(v6, &unk_1F3B3D958, sub_1BC8CAE40, &block_descriptor_14_0);
              (v23)(v6, v32);
            }

            v29 = *&v18[v28];
          }

          if (v29)
          {

            a1 = v39;
          }

          else
          {
            v33 = v49;
            v34 = v50;
            __swift_project_boxed_opaque_existential_1(v48, v49);
            v35 = (*(v34 + 24))(v33, v34);
            a1 = v39;
            if (v35 == 3)
            {
              v36 = &v18[v19];
              v37 = v44;
              v20(v6, v36, v44);
              sub_1BC8C729C(v6, &unk_1F3B3D9A8, sub_1BC8CAE58, &block_descriptor_20_1);

              (v23)(v6, v37);
            }

            else
            {
            }
          }

          result = __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {

          result = sub_1BC7E6180(&v46, &qword_1EBCF6780, &qword_1BC908A10);
        }

        ++v16;
      }

      while (v41 != v16);
    }
  }

  return result;
}

double sub_1BC8C9418@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_1BC8F7264();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - v11;
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B208);
  v61 = v6[2];
  v62 = v6 + 2;
  v61(v12, a1, v5);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  v16 = os_log_type_enabled(v14, v15);
  v63 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v59 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v60 = v10;
    v64 = v5;
    v20 = v19;
    *&v69[0] = v19;
    *v18 = 136446210;
    sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
    v21 = sub_1BC8F8A54();
    v22 = v3;
    v24 = v23;
    v25 = v12;
    v26 = v6[1];
    v26(v25, v64);
    v27 = sub_1BC7A9A4C(v21, v24, v69);
    v3 = v22;

    *(v18 + 4) = v27;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Getting voicemail for message: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v28 = v20;
    v5 = v64;
    v10 = v60;
    MEMORY[0x1BFB2AA50](v28, -1, -1);
    v29 = v18;
    a1 = v59;
    MEMORY[0x1BFB2AA50](v29, -1, -1);
  }

  else
  {

    v30 = v12;
    v26 = v6[1];
    v26(v30, v5);
  }

  v31 = v3[6];
  v32 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v31);
  (*(v32 + 56))(&v67, a1, v31, v32);
  if (v68)
  {
    sub_1BC7CF5EC(&v67, v69);
    sub_1BC7A792C(v69, &v67);
    v33 = sub_1BC8F7714();
    v34 = sub_1BC8F8204();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66 = v36;
      *v35 = 136315138;
      v37 = v68;
      v38 = __swift_project_boxed_opaque_existential_1(&v67, v68);
      v39 = sub_1BC8F83F4();
      v40 = *(v39 - 8);
      v41 = *(v40 + 64);
      MEMORY[0x1EEE9AC00](v39);
      v43 = &v59 - v42;
      (*(*(v37 - 8) + 16))(&v59 - v42, v38, v37);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v37);
      v44 = sub_1BC8073F0(v43, v37);
      v46 = v45;
      (*(v40 + 8))(v43, v39);
      __swift_destroy_boxed_opaque_existential_1(&v67);
      v47 = sub_1BC7A9A4C(v44, v46, &v66);

      *(v35 + 4) = v47;
      _os_log_impl(&dword_1BC7A3000, v33, v34, "Got voicemail: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1BFB2AA50](v36, -1, -1);
      MEMORY[0x1BFB2AA50](v35, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v67);
    }

    sub_1BC7CF5EC(v69, v65);
  }

  else
  {
    sub_1BC7E6180(&v67, &qword_1EBCF6780, &qword_1BC908A10);
    v61(v10, a1, v5);
    v48 = sub_1BC8F7714();
    v49 = sub_1BC8F81E4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v69[0] = v51;
      *v50 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v52 = sub_1BC8F8A54();
      v53 = v10;
      v55 = v54;
      v26(v53, v5);
      v56 = sub_1BC7A9A4C(v52, v55, v69);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_1BC7A3000, v48, v49, "Couldn't find a voicemail for message: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFB2AA50](v51, -1, -1);
      MEMORY[0x1BFB2AA50](v50, -1, -1);
    }

    else
    {

      v26(v10, v5);
    }

    v58 = v65;
    *(v65 + 32) = 0;
    result = 0.0;
    *v58 = 0u;
    v58[1] = 0u;
  }

  return result;
}

void sub_1BC8C9AC8(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  sub_1BC8C9418(a2, &v32);
  if (v33)
  {
    sub_1BC7CF5EC(&v32, v34);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B208);
    (*(v5 + 16))(v9, a2, v4);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v32 = v16;
      *v15 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v17 = sub_1BC8F8A54();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_1BC7A9A4C(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BC7A3000, v13, v14, "Asked to perform mark as ready for voicemail with uuid: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v30 = a1[6];
    v31 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v30);
    (*(v31 + 72))(v34, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_1BC7E6180(&v32, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B208);
    (*(v5 + 16))(v11, a2, v4);
    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F81E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v26 = sub_1BC8F8A54();
      v28 = v27;
      (*(v5 + 8))(v11, v4);
      v29 = sub_1BC7A9A4C(v26, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1BC7A3000, v22, v23, "Couldn't find voicemail to mark as read for uuid: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB2AA50](v25, -1, -1);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BC8C9FB0(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  sub_1BC8C9418(a2, &v32);
  if (v33)
  {
    sub_1BC7CF5EC(&v32, v34);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B208);
    (*(v5 + 16))(v9, a2, v4);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v32 = v16;
      *v15 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v17 = sub_1BC8F8A54();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_1BC7A9A4C(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BC7A3000, v13, v14, "Asked to perform trash voicemail with uuids: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v30 = a1[6];
    v31 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v30);
    (*(v31 + 80))(v34, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_1BC7E6180(&v32, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B208);
    (*(v5 + 16))(v11, a2, v4);
    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F81E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v26 = sub_1BC8F8A54();
      v28 = v27;
      (*(v5 + 8))(v11, v4);
      v29 = sub_1BC7A9A4C(v26, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1BC7A3000, v22, v23, "Couldn't find voicemail to trash for uuid: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB2AA50](v25, -1, -1);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

void sub_1BC8CA468(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  sub_1BC8C9418(a2, &v32);
  if (v33)
  {
    sub_1BC7CF5EC(&v32, v34);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B208);
    (*(v5 + 16))(v9, a2, v4);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v32 = v16;
      *v15 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v17 = sub_1BC8F8A54();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_1BC7A9A4C(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BC7A3000, v13, v14, "Asked to perform delete voicemail with uuids: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v30 = a1[6];
    v31 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v30);
    (*(v31 + 88))(v34, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_1BC7E6180(&v32, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B208);
    (*(v5 + 16))(v11, a2, v4);
    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F81E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v26 = sub_1BC8F8A54();
      v28 = v27;
      (*(v5 + 8))(v11, v4);
      v29 = sub_1BC7A9A4C(v26, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1BC7A3000, v22, v23, "Couldn't find voicemail to delete for uuid: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB2AA50](v25, -1, -1);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

void sub_1BC8CA920(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  sub_1BC8C9418(a2, &v32);
  if (v33)
  {
    sub_1BC7CF5EC(&v32, v34);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B208);
    (*(v5 + 16))(v9, a2, v4);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v32 = v16;
      *v15 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v17 = sub_1BC8F8A54();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_1BC7A9A4C(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BC7A3000, v13, v14, "Asked to move voicemail with uuid from trash: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v30 = a1[6];
    v31 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v30);
    (*(v31 + 96))(v34, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_1BC7E6180(&v32, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B208);
    (*(v5 + 16))(v11, a2, v4);
    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F81E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v26 = sub_1BC8F8A54();
      v28 = v27;
      (*(v5 + 8))(v11, v4);
      v29 = sub_1BC7A9A4C(v26, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1BC7A3000, v22, v23, "Couldn't find voicemail to remove from the trash for uuid: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB2AA50](v25, -1, -1);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

uint64_t sub_1BC8CADD8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v5);
  return (*(v6 + 112))(a2, a3, v5, v6);
}

uint64_t sub_1BC8CAE70()
{
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_26(v1);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_1BC8CADD8(v4, v5, v6);
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BC8CAFBC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_1BC8CB038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B00, &qword_1BC9034D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8CB0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC8CB110()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_71_4(v7);

  return sub_1BC8C45E8();
}

uint64_t objectdestroy_71Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_31_3();

  return MEMORY[0x1EEE6BDD0](v4, v5, 7);
}

uint64_t sub_1BC8CB210()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_71_4(v6);

  return sub_1BC8C2414();
}

_BYTE *storeEnumTagSinglePayload for VoicemailError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8CB398()
{
  result = qword_1EBCF6788;
  if (!qword_1EBCF6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t result, uint64_t a2)
{
  v5 = (v3 + v4[8]);
  *v5 = result;
  v5[1] = a2;
  *(v3 + v4[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v3 + v4[10]) = 0;
  v6 = *v2;
  return result;
}

void OUTLINED_FUNCTION_61_4()
{
  *(v0 + v1[5]) = v2;
  *(v0 + v1[6]) = 512;
  *(v0 + v1[7]) = 0;
}

void OUTLINED_FUNCTION_78_6(uint64_t a1@<X8>)
{
  v3 = v1[35];
  v2 = v1[36];
  v4 = v1[34];
  v5 = *(a1 + 8);
}

__n128 *OUTLINED_FUNCTION_79_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  v4 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_5()
{
  v2 = v0[24];
  v1 = v0[25];
  result = v0[22];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[20];
  return result;
}

uint64_t OUTLINED_FUNCTION_89_1()
{
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];

  return sub_1BC8F76A4();
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_107_2()
{

  sub_1BC7ED740(v1, v0);
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1BC8F7254();
}

uint64_t sub_1BC8CB554@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for FaceTimeMessageStore_CaptionRange(0) + 24);
  return sub_1BC8F7424();
}

uint64_t sub_1BC8CB58C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  v3 = a1 + *(v2 + 20);
  sub_1BC8F7424();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1BC8CB5F4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v3 = a1 + v2[7];
  result = sub_1BC8F7424();
  v5 = a1 + v2[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1BC8CB678@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  v3 = a1 + *(v2 + 20);
  result = sub_1BC8F7424();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1BC8CB6E8()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_1_28();
      sub_1BC8CB74C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_7_19();
      sub_1BC8F74D4();
    }
  }

  return result;
}

uint64_t sub_1BC8CB74C()
{
  v0 = *(type metadata accessor for FaceTimeMessageStore_Caption(0) + 24);
  type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange);
  return sub_1BC8F7524();
}

uint64_t sub_1BC8CB800()
{
  OUTLINED_FUNCTION_3_25();
  if (!*v0 || (OUTLINED_FUNCTION_9_17(), OUTLINED_FUNCTION_7_19(), result = sub_1BC8F75A4(), !v1))
  {
    v3 = OUTLINED_FUNCTION_2_27();
    result = sub_1BC8CB87C(v3);
    if (!v1)
    {
      v4 = *(type metadata accessor for FaceTimeMessageStore_Caption(0) + 20);
      return OUTLINED_FUNCTION_6_22();
    }
  }

  return result;
}

uint64_t sub_1BC8CB87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  sub_1BC7DF4F8(a1 + *(v10 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1BC7C1744(v5, &qword_1EBCF4F08, &qword_1BC9090E0);
  }

  sub_1BC7DF568(v5, v9);
  sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange);
  sub_1BC8F75E4();
  return sub_1BC8CE144(v9);
}

uint64_t sub_1BC8CBA1C(double *a1, double *a2)
{
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v35 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F10, &unk_1BC8FC6C0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v20 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  v21 = *(v20 + 24);
  v22 = *(v14 + 48);
  sub_1BC7DF4F8(a1 + v21, v19);
  sub_1BC7DF4F8(a2 + v21, &v19[v22]);
  OUTLINED_FUNCTION_3_0(v19);
  if (!v27)
  {
    sub_1BC7DF4F8(v19, v13);
    OUTLINED_FUNCTION_3_0(&v19[v22]);
    if (!v27)
    {
      sub_1BC7DF568(&v19[v22], v9);
      if (*v13 == *v9 && v13[1] == v9[1])
      {
        v30 = *(v4 + 24);
        sub_1BC8F7434();
        OUTLINED_FUNCTION_0_27();
        sub_1BC8CDCAC(v31, v32);
        v33 = sub_1BC8F7BC4();
        sub_1BC8CE144(v9);
        if (v33)
        {
          sub_1BC8CE144(v13);
          goto LABEL_6;
        }
      }

      else
      {
        sub_1BC8CE144(v9);
      }

      sub_1BC8CE144(v13);
      v28 = &qword_1EBCF4F08;
      v29 = &qword_1BC9090E0;
      goto LABEL_17;
    }

    sub_1BC8CE144(v13);
LABEL_10:
    v28 = &qword_1EBCF4F10;
    v29 = &unk_1BC8FC6C0;
LABEL_17:
    sub_1BC7C1744(v19, v28, v29);
LABEL_18:
    v26 = 0;
    return v26 & 1;
  }

  OUTLINED_FUNCTION_3_0(&v19[v22]);
  if (!v27)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_1BC7C1744(v19, &qword_1EBCF4F08, &qword_1BC9090E0);
  v23 = *(v20 + 20);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_0_27();
  sub_1BC8CDCAC(v24, v25);
  v26 = sub_1BC8F7BC4();
  return v26 & 1;
}

uint64_t (*sub_1BC8CBD0C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1BC8CBD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF67E0, type metadata accessor for FaceTimeMessageStore_Caption);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CBE00(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CBEC8()
{
  sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CBF48()
{
  v0 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v0, qword_1EBD06890);
  __swift_project_value_buffer(v0, qword_1EBD06890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC8FEAA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1BC8F75F4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8CC110()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_7_19();
      sub_1BC8F74B4();
    }
  }

  return result;
}

uint64_t sub_1BC8CC16C()
{
  OUTLINED_FUNCTION_3_25();
  if (!*v0 || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F7594(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F7594(), !v1))
    {
      v4 = *(type metadata accessor for FaceTimeMessageStore_CaptionRange(0) + 24);
      return OUTLINED_FUNCTION_6_22();
    }
  }

  return result;
}

uint64_t sub_1BC8CC1FC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for FaceTimeMessageStore_CaptionRange(0) + 24);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_0_27();
  sub_1BC8CDCAC(v3, v4);
  return OUTLINED_FUNCTION_8_26() & 1;
}

uint64_t sub_1BC8CC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BC8CC328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1BC8CC39C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1BC8CC3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF67F8, type metadata accessor for FaceTimeMessageStore_CaptionRange);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CC490(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CC558()
{
  sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CC5D8()
{
  v0 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v0, qword_1EBD068A8);
  __swift_project_value_buffer(v0, qword_1EBD068A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC908B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1BC8F75F4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "captions";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utteranceNumber";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "utteranceStartTimestamp";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "utteranceDuration";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8CC898()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_7_19();
        sub_1BC8F74B4();
        break;
      case 2:
        OUTLINED_FUNCTION_7_19();
        sub_1BC8F74F4();
        break;
      case 3:
        OUTLINED_FUNCTION_1_28();
        sub_1BC8CC95C();
        break;
      case 4:
        OUTLINED_FUNCTION_1_28();
        sub_1BC8CC9FC();
        break;
      case 5:
        OUTLINED_FUNCTION_1_28();
        sub_1BC8CCA60();
        break;
      case 6:
        OUTLINED_FUNCTION_1_28();
        sub_1BC8CCAC4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1BC8CC95C()
{
  type metadata accessor for FaceTimeMessageStore_Caption(0);
  sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption);
  return sub_1BC8F7514();
}

uint64_t sub_1BC8CCB28()
{
  OUTLINED_FUNCTION_3_25();
  if (!*v0 || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F7594(), !v1))
  {
    v4 = v2[2];
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v5 || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F75B4(), !v1))
    {
      if (!*(v2[3] + 16) || (type metadata accessor for FaceTimeMessageStore_Caption(0), sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption), OUTLINED_FUNCTION_9_17(), result = sub_1BC8F75D4(), !v1))
      {
        v6 = OUTLINED_FUNCTION_2_27();
        result = sub_1BC8CCC74(v6);
        if (!v1)
        {
          v7 = OUTLINED_FUNCTION_2_27();
          sub_1BC8CCCEC(v7);
          v8 = OUTLINED_FUNCTION_2_27();
          sub_1BC8CCD64(v8);
          v9 = *(type metadata accessor for FaceTimeMessageStore_Utterance(0) + 28);
          return OUTLINED_FUNCTION_6_22();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BC8CCC74(uint64_t a1)
{
  result = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1BC8F75C4();
  }

  return result;
}

uint64_t sub_1BC8CCCEC(uint64_t a1)
{
  result = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1BC8F75A4();
  }

  return result;
}

uint64_t sub_1BC8CCD64(uint64_t a1)
{
  result = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1BC8F75A4();
  }

  return result;
}

uint64_t sub_1BC8CCDDC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  sub_1BC7DC204();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v9 = *(v8 + 32);
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_16(*(v8 + 36));
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    if (v17)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_16(*(v14 + 40));
  if (v20)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    if (v22)
    {
      return 0;
    }
  }

  v23 = *(v18 + 28);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_0_27();
  sub_1BC8CDCAC(v24, v25);
  return OUTLINED_FUNCTION_8_26() & 1;
}

uint64_t sub_1BC8CCF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BC8CCF94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1BC8CD008(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1BC8CD05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF6800, type metadata accessor for FaceTimeMessageStore_Utterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CD0FC(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CD1C4()
{
  sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CD264(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC8FEAA0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1BC8F75F4();
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = 2;
  v17();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8CD418()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_1_28();
      sub_1BC8CD518();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_28();
      sub_1BC8CD478();
    }
  }

  return result;
}

uint64_t sub_1BC8CD478()
{
  type metadata accessor for FaceTimeMessageStore_Utterance(0);
  sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance);
  return sub_1BC8F7514();
}

uint64_t sub_1BC8CD57C()
{
  OUTLINED_FUNCTION_3_25();
  if (!*(*v0 + 16) || (type metadata accessor for FaceTimeMessageStore_Utterance(0), sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance), OUTLINED_FUNCTION_9_17(), result = sub_1BC8F75D4(), !v1))
  {
    v3 = OUTLINED_FUNCTION_2_27();
    result = sub_1BC8CD650(v3);
    if (!v1)
    {
      v4 = *(type metadata accessor for FaceTimeMessageStore_Transcript(0) + 20);
      return OUTLINED_FUNCTION_6_22();
    }
  }

  return result;
}

uint64_t sub_1BC8CD650(uint64_t a1)
{
  result = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1BC8F75B4();
  }

  return result;
}

uint64_t sub_1BC8CD6C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1BC7DBADC();
  if (v6)
  {
    v7 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
    v8 = *(v7 + 24);
    v9 = (a1 + v8);
    v10 = *(a1 + v8 + 8);
    v11 = (a2 + v8);
    v12 = v11[1];
    if (v10)
    {
      if (v12)
      {
        v13 = *v9 == *v11 && v10 == v12;
        if (v13 || (sub_1BC8F8AA4() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v12)
    {
LABEL_9:
      v14 = *(v7 + 20);
      sub_1BC8F7434();
      OUTLINED_FUNCTION_0_27();
      sub_1BC8CDCAC(v15, v16);
      return OUTLINED_FUNCTION_8_26() & 1;
    }
  }

  return 0;
}

uint64_t sub_1BC8CD794(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BC8F8C04();
  a1(0);
  sub_1BC8CDCAC(a2, a3);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8CD83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1BC8F7434();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1BC8CD8A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1BC8F7434();
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_1BC8CD944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF6808, type metadata accessor for FaceTimeMessageStore_Transcript);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CD9E4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BC8F7614();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1BC8CDA80(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CDB48()
{
  sub_1BC8CDCAC(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CDBC4()
{
  sub_1BC8F8C04();
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8CDCAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC8CE144(uint64_t a1)
{
  v2 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BC8CE1C8()
{
  sub_1BC8F7434();
  if (v0 <= 0x3F)
  {
    sub_1BC8CE474(319, qword_1EDC1F748, type metadata accessor for FaceTimeMessageStore_CaptionRange, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC8CE2B4()
{
  result = sub_1BC8F7434();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC8CE358()
{
  sub_1BC8CE474(319, &qword_1EDC1DEF8, type metadata accessor for FaceTimeMessageStore_Caption, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BC8F7434();
    if (v1 <= 0x3F)
    {
      sub_1BC881274(319, &qword_1EDC1DD18);
      if (v2 <= 0x3F)
      {
        sub_1BC881274(319, &qword_1EDC1DEC0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC8CE474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC8CE500()
{
  sub_1BC8CE474(319, &qword_1EDC1DF00, type metadata accessor for FaceTimeMessageStore_Utterance, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BC8F7434();
    if (v1 <= 0x3F)
    {
      sub_1BC881274(319, &qword_1EDC206A8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC8CE5F4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v108 = v10;
  v109 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v81 - v16;
  v18 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v19 = OUTLINED_FUNCTION_0(v18);
  v91 = v20;
  v92 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - v26;
  v28 = *a1;
  v84 = a1[1];
  v85 = a1[2];
  v29 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  v30 = a2 + *(v29 + 20);
  sub_1BC8F7424();
  v31 = (a2 + *(v29 + 24));
  *v31 = 0;
  v31[1] = 0;
  v83 = v31;
  v32 = *(v28 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {
    goto LABEL_27;
  }

  v82 = a2;
  v111 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDBF4();
  v34 = 0;
  v105 = v111;
  v90 = v28 + 32;
  v106 = v7;
  v107 = v4;
  v89 = v28;
  v86 = v25;
  v88 = v27;
  v87 = v32;
  while (1)
  {
    if (v34 >= *(v28 + 16))
    {
      goto LABEL_34;
    }

    v104 = v34;
    v35 = (v90 + (v34 << 6));
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v39 = *(v35 + 32);
    v40 = v35[5];
    v100 = v35[3];
    v101 = v40;
    LODWORD(v40) = *(v35 + 48);
    v102 = v39;
    v103 = v40;
    v41 = *(v35 + 13);
    v42 = *(v35 + 56);
    *v25 = 0;
    v43 = v92;
    v44 = v92[7];

    sub_1BC8F7424();
    v45 = &v25[v43[8]];
    *v45 = 0;
    v98 = v45;
    v45[4] = 1;
    v46 = &v25[v43[9]];
    *v46 = 0;
    v99 = v46;
    v46[8] = 1;
    v47 = &v25[v43[10]];
    *v47 = 0;
    v47[8] = 1;
    *(v25 + 1) = v36;
    *(v25 + 2) = v38;
    v48 = v37;
    v49 = *(v37 + 16);
    if (v49)
    {
      break;
    }

    v50 = MEMORY[0x1E69E7CC0];
    v28 = v89;
LABEL_17:
    *(v25 + 3) = v50;
    v68 = v88;
    if ((v42 & 1) == 0)
    {
      v69 = v98;
      *v98 = v41;
      v69[4] = 0;
    }

    v70 = v104;
    if ((v102 & 1) == 0)
    {
      v71 = v99;
      *v99 = v100;
      v71[8] = 0;
    }

    if ((v103 & 1) == 0)
    {
      *v47 = v101;
      v47[8] = 0;
    }

    OUTLINED_FUNCTION_1_29();
    sub_1BC8CEC6C(v25, v68, v72);
    v73 = v105;
    v111 = v105;
    v74 = *(v105 + 16);
    if (v74 >= *(v105 + 24) >> 1)
    {
      sub_1BC7DDBF4();
      v70 = v104;
      v73 = v111;
    }

    v34 = v70 + 1;
    *(v73 + 16) = v74 + 1;
    v75 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v105 = v73;
    v76 = *(v91 + 72);
    OUTLINED_FUNCTION_1_29();
    sub_1BC8CEC6C(v68, v77, v78);
    if (v34 == v87)
    {
      a2 = v82;
      v33 = v105;
LABEL_27:
      *a2 = v33;
      v79 = v85;
      if (v85)
      {

        v80 = v83;
        *v83 = v84;
        v80[1] = v79;
      }

      else
      {
      }

      return;
    }
  }

  v95 = v47;
  v96 = v42;
  v97 = v41;
  v110 = MEMORY[0x1E69E7CC0];
  v93 = v38;

  sub_1BC7DDC4C();
  v50 = v110;
  v94 = v48;
  v51 = (v48 + 56);
  while (1)
  {
    v53 = *(v51 - 3);
    v52 = *(v51 - 2);
    v54 = *(v51 - 8);
    v55 = *v51;
    v56 = v109;
    v57 = v15 + *(v109 + 20);
    sub_1BC8F7424();
    v58 = *(v56 + 24);
    v59 = v107;
    __swift_storeEnumTagSinglePayload(v15 + v58, 1, 1, v107);
    *v15 = v55;
    if (v54)
    {
      goto LABEL_12;
    }

    v60 = v106;
    v61 = v106 + *(v59 + 24);
    sub_1BC8F7424();
    if (v53 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v53 > 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    *v60 = v53;
    if (v52 < 0xFFFFFFFF80000000)
    {
      goto LABEL_32;
    }

    if (v52 > 0x7FFFFFFF)
    {
      goto LABEL_33;
    }

    v60[1] = v52;
    sub_1BC8CEC04(v15 + v58);
    sub_1BC8CEC6C(v60, v15 + v58, type metadata accessor for FaceTimeMessageStore_CaptionRange);
    __swift_storeEnumTagSinglePayload(v15 + v58, 0, 1, v59);
LABEL_12:
    OUTLINED_FUNCTION_0_28();
    sub_1BC8CEC6C(v15, v17, v62);
    v110 = v50;
    v63 = *(v50 + 16);
    if (v63 >= *(v50 + 24) >> 1)
    {
      sub_1BC7DDC4C();
      v50 = v110;
    }

    *(v50 + 16) = v63 + 1;
    v64 = v50 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v65 = *(v108 + 72);
    OUTLINED_FUNCTION_0_28();
    sub_1BC8CEC6C(v17, v66, v67);
    v51 += 4;
    if (!--v49)
    {

      v28 = v89;
      v25 = v86;
      LOBYTE(v42) = v96;
      v41 = v97;
      v47 = v95;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1BC8CEC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC8CEC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RawMessageMetadata.messageType.setter(__int16 a1)
{
  result = type metadata accessor for RawMessageMetadata(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t RawMessageMetadata.messageType.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for RawMessageMetadata(v0) + 20);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t RawMessageMetadata.senderHandle.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for RawMessageMetadata(v0) + 24);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t RawMessageMetadata.init(callUUID:messageType:senderHandle:)()
{
  OUTLINED_FUNCTION_12_19();
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v2);
  (*(v3 + 32))(v1, v0);
  v4 = type metadata accessor for RawMessageMetadata(0);
  return OUTLINED_FUNCTION_13_19(v4);
}

uint64_t static RawMessageMetadata.== infix(_:_:)()
{
  if ((sub_1BC8F7234() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for RawMessageMetadata(0);
  v1 = OUTLINED_FUNCTION_16_16(v0);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_27(v1);
  v4 = v4 && v2 == v3;
  if (v4)
  {
    return 1;
  }

  return sub_1BC8F8AA4();
}

uint64_t sub_1BC8CEF00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC8CF018(char a1)
{
  if (!a1)
  {
    return 0x444955556C6C6163;
  }

  if (a1 == 1)
  {
    return 0x546567617373656DLL;
  }

  return 0x61487265646E6573;
}

uint64_t sub_1BC8CF0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8CEF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8CF0C8(uint64_t a1)
{
  v2 = sub_1BC8CF2F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8CF104(uint64_t a1)
{
  v2 = sub_1BC8CF2F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawMessageMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6810, &qword_1BC909190);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11];
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BC8CF2F0();
  OUTLINED_FUNCTION_17_15();
  v21[15] = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v14, v15);
  OUTLINED_FUNCTION_5_25();
  sub_1BC8F89F4();
  if (!v2)
  {
    v16 = type metadata accessor for RawMessageMetadata(0);
    OUTLINED_FUNCTION_11_16(v16);
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89F4();
    v17 = (v3 + *(v13 + 24));
    v18 = *v17;
    v19 = v17[1];
    v21[10] = 2;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89A4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1BC8CF2F0()
{
  result = qword_1EBCF6818;
  if (!qword_1EBCF6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6818);
  }

  return result;
}

uint64_t RawMessageMetadata.hash(into:)()
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v1, v2);
  sub_1BC8F7B64();
  v3 = type metadata accessor for RawMessageMetadata(0);
  OUTLINED_FUNCTION_14_17(v3);
  sub_1BC8F8C34();
  v4 = (v0 + *(v3 + 24));
  v5 = *v4;
  v6 = v4[1];

  return sub_1BC8F7CD4();
}

uint64_t sub_1BC8CF3E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RawMessageMetadata.hashValue.getter()
{
  sub_1BC8F8C04();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v1, v2);
  sub_1BC8F7B64();
  v3 = type metadata accessor for RawMessageMetadata(0);
  OUTLINED_FUNCTION_14_17(v3);
  sub_1BC8F8C34();
  v4 = (v0 + *(v3 + 24));
  v5 = *v4;
  v6 = v4[1];
  sub_1BC8F7CD4();
  return sub_1BC8F8C64();
}

uint64_t RawMessageMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v32 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v34 = v10 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6820, &qword_1BC909198);
  OUTLINED_FUNCTION_0(v33);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for RawMessageMetadata(0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8CF2F0();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v22, v23);
  sub_1BC8F88F4();
  (*(v32 + 32))(v20, v34, v4);
  sub_1BC7C70CC();
  sub_1BC8F88F4();
  *(v20 + *(v14 + 20)) = v36;
  v24 = sub_1BC8F88A4();
  v35 = v25;
  v26 = v24;
  v27 = OUTLINED_FUNCTION_9_18();
  v28(v27);
  v29 = (v20 + *(v14 + 24));
  *v29 = v26;
  v29[1] = v35;
  sub_1BC8D0A40(v20, a2, type metadata accessor for RawMessageMetadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC8D0AA0();
}

uint64_t _s20FaceTimeMessageStore03RawC8MetadataV8callUUID10Foundation0H0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC8F7264();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t _s20FaceTimeMessageStore03RawC8MetadataV8callUUID10Foundation0H0Vvs_0()
{
  OUTLINED_FUNCTION_114();
  v2 = sub_1BC8F7264();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t IncomingMessageMetadata.messageType.setter(__int16 a1)
{
  result = type metadata accessor for IncomingMessageMetadata(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IncomingMessageMetadata.messageType.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for IncomingMessageMetadata(v0) + 20);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_1BC8CFA20(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BC8CFA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t IncomingMessageMetadata.provider.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for IncomingMessageMetadata(v0) + 24);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t IncomingMessageMetadata.quality.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IncomingMessageMetadata(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t IncomingMessageMetadata.quality.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IncomingMessageMetadata(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t IncomingMessageMetadata.quality.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for IncomingMessageMetadata(v0) + 28);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t IncomingMessageMetadata.metadataVersion.setter()
{
  v2 = OUTLINED_FUNCTION_114();
  result = type metadata accessor for IncomingMessageMetadata(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t IncomingMessageMetadata.metadataVersion.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for IncomingMessageMetadata(v0) + 32);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t IncomingMessageMetadata.duration.setter(double a1)
{
  result = type metadata accessor for IncomingMessageMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IncomingMessageMetadata.duration.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  v1 = *(type metadata accessor for IncomingMessageMetadata(v0) + 36);
  return OUTLINED_FUNCTION_6_23();
}

int *IncomingMessageMetadata.init(callUUID:messageType:provider:quality:duration:)(double a1)
{
  OUTLINED_FUNCTION_12_19();
  v5 = *v4;
  v6 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(v2, v1);
  v8 = type metadata accessor for IncomingMessageMetadata(0);
  result = OUTLINED_FUNCTION_13_19(v8);
  *(v2 + result[7]) = v5;
  *(v2 + result[8]) = 1;
  *(v2 + result[9]) = a1;
  return result;
}

BOOL static IncomingMessageMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1BC8F7234() & 1) != 0 && (v4 = type metadata accessor for IncomingMessageMetadata(0), v5 = OUTLINED_FUNCTION_16_16(v4), v9) && ((v6 = v5, OUTLINED_FUNCTION_8_27(v5), v9) ? (v9 = v7 == v8) : (v9 = 0), (v9 || (sub_1BC8F8AA4()) && (sub_1BC800E6C(*(a1 + v6[7]), *(a2 + v6[7])) & 1) != 0 && *(a1 + v6[8]) == *(a2 + v6[8])))
  {
    return *(a1 + v6[9]) == *(a2 + v6[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC8CFE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7974696C617571 && a2 == 0xE700000000000000;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617461646174656DLL && a2 == 0xEF6E6F6973726556;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BC8F8AA4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BC8D0010(char a1)
{
  result = 0x444955556C6C6163;
  switch(a1)
  {
    case 1:
      result = 0x546567617373656DLL;
      break;
    case 2:
      result = 0x72656469766F7270;
      break;
    case 3:
      result = 0x7974696C617571;
      break;
    case 4:
      result = 0x617461646174656DLL;
      break;
    case 5:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8D00D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BC8F8C04();
  a4(v8, v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8D0124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8CFE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8D014C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8D0008();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8D0174(uint64_t a1)
{
  v2 = sub_1BC8D042C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8D01B0(uint64_t a1)
{
  v2 = sub_1BC8D042C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IncomingMessageMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6828, &qword_1BC9091A0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BC8D042C();
  OUTLINED_FUNCTION_17_15();
  v23[15] = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v14, v15);
  OUTLINED_FUNCTION_5_25();
  sub_1BC8F89F4();
  if (!v2)
  {
    v16 = type metadata accessor for IncomingMessageMetadata(0);
    OUTLINED_FUNCTION_11_16(v16);
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89F4();
    v17 = (v3 + v13[6]);
    v18 = *v17;
    v19 = v17[1];
    v23[10] = 2;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89A4();
    v23[9] = *(v3 + v13[7]);
    v23[8] = 3;
    sub_1BC7C4FF8();
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89F4();
    v20 = *(v3 + v13[8]);
    v23[7] = 4;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89D4();
    v21 = *(v3 + v13[9]);
    v23[6] = 5;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89C4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1BC8D042C()
{
  result = qword_1EBCF6830;
  if (!qword_1EBCF6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6830);
  }

  return result;
}

uint64_t IncomingMessageMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_114();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v1, v2);
  sub_1BC8F7B64();
  v3 = type metadata accessor for IncomingMessageMetadata(0);
  OUTLINED_FUNCTION_14_17(v3);
  sub_1BC8F8C34();
  v4 = (v0 + v3[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_1BC8F7CD4();
  v7 = *(v0 + v3[7]);
  sub_1BC80122C();
  MEMORY[0x1BFB2A020](*(v0 + v3[8]));
  v8 = *(v0 + v3[9]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return MEMORY[0x1BFB2A060](*&v8);
}

uint64_t IncomingMessageMetadata.hashValue.getter()
{
  sub_1BC8F8C04();
  IncomingMessageMetadata.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t IncomingMessageMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6838, &qword_1BC9091A8);
  OUTLINED_FUNCTION_0(v33);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v32 = type metadata accessor for IncomingMessageMetadata(0);
  v15 = OUTLINED_FUNCTION_4_1(v32);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v34 = v19 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8D042C();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v21, v22);
  OUTLINED_FUNCTION_7_20();
  sub_1BC8F88F4();
  (*(v35 + 32))(v34, v11, v4);
  sub_1BC7C70CC();
  OUTLINED_FUNCTION_7_20();
  sub_1BC8F88F4();
  *(v34 + v32[5]) = v37;
  OUTLINED_FUNCTION_7_20();
  v23 = sub_1BC8F88A4();
  v24 = (v34 + v32[6]);
  *v24 = v23;
  v24[1] = v25;
  sub_1BC7C732C();
  OUTLINED_FUNCTION_7_20();
  sub_1BC8F88F4();
  *(v34 + v32[7]) = v36;
  OUTLINED_FUNCTION_7_20();
  *(v34 + v32[8]) = sub_1BC8F88D4();
  OUTLINED_FUNCTION_7_20();
  sub_1BC8F88C4();
  v27 = v26;
  v28 = OUTLINED_FUNCTION_10_24();
  v29(v28);
  *(v34 + v32[9]) = v27;
  sub_1BC8D0A40(v34, a2, type metadata accessor for IncomingMessageMetadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC8D0AA0();
}

uint64_t sub_1BC8D09FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BC8F8C04();
  a4(v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8D0A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC8D0AA0()
{
  v1 = OUTLINED_FUNCTION_114();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1BC8D0BB0()
{
  result = sub_1BC8F7264();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  v6 = sub_1BC8F7264();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC8F7264();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC8D0DB4()
{
  result = sub_1BC8F7264();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IncomingMessageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawMessageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8D1010()
{
  result = qword_1EBCF6870;
  if (!qword_1EBCF6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6870);
  }

  return result;
}

unint64_t sub_1BC8D1068()
{
  result = qword_1EBCF6878;
  if (!qword_1EBCF6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6878);
  }

  return result;
}

unint64_t sub_1BC8D10C0()
{
  result = qword_1EBCF6880;
  if (!qword_1EBCF6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6880);
  }

  return result;
}

unint64_t sub_1BC8D1118()
{
  result = qword_1EBCF6888;
  if (!qword_1EBCF6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6888);
  }

  return result;
}

unint64_t sub_1BC8D1170()
{
  result = qword_1EBCF6890;
  if (!qword_1EBCF6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6890);
  }

  return result;
}

unint64_t sub_1BC8D11C8()
{
  result = qword_1EBCF6898;
  if (!qword_1EBCF6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6898);
  }

  return result;
}

uint64_t OutgoingVideoMessage.conversationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC8F7264();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t OutgoingVideoMessage.conversationID.setter()
{
  OUTLINED_FUNCTION_114();
  v2 = sub_1BC8F7264();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t OutgoingVideoMessage.senderHandle.getter()
{
  v1 = (v0 + *(type metadata accessor for OutgoingVideoMessage() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for OutgoingVideoMessage()
{
  result = qword_1EDC1FEF0;
  if (!qword_1EDC1FEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OutgoingVideoMessage.senderHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OutgoingVideoMessage() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OutgoingVideoMessage.senderHandle.modify()
{
  OUTLINED_FUNCTION_114();
  v0 = *(type metadata accessor for OutgoingVideoMessage() + 20);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.destinationHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for OutgoingVideoMessage() + 24));
}

uint64_t OutgoingVideoMessage.destinationHandles.setter()
{
  OUTLINED_FUNCTION_114();
  v2 = *(type metadata accessor for OutgoingVideoMessage() + 24);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t OutgoingVideoMessage.destinationHandles.modify()
{
  OUTLINED_FUNCTION_114();
  v0 = *(type metadata accessor for OutgoingVideoMessage() + 24);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.messageType.setter(__int16 a1)
{
  result = type metadata accessor for OutgoingVideoMessage();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t OutgoingVideoMessage.messageType.modify()
{
  OUTLINED_FUNCTION_114();
  v0 = *(type metadata accessor for OutgoingVideoMessage() + 28);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OutgoingVideoMessage() + 32);
  v4 = sub_1BC8F7014();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t OutgoingVideoMessage.url.setter()
{
  OUTLINED_FUNCTION_114();
  v2 = *(type metadata accessor for OutgoingVideoMessage() + 32);
  v3 = sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t OutgoingVideoMessage.url.modify()
{
  OUTLINED_FUNCTION_114();
  v0 = *(type metadata accessor for OutgoingVideoMessage() + 32);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.init(conversationID:senderHandle:destinationHandles:messageType:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v14);
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for OutgoingVideoMessage();
  v17 = (a7 + v16[5]);
  *v17 = a2;
  v17[1] = a3;
  *(a7 + v16[6]) = a4;
  *(a7 + v16[7]) = a5;
  v18 = v16[8];
  v19 = sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 32);

  return v21(a7 + v18, a6);
}

uint64_t static OutgoingVideoMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BC8F7234() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OutgoingVideoMessage();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1BC8F8AA4() & 1) == 0 || (sub_1BC7DB4D8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v10 = v4[8];

  return sub_1BC8F6FA4();
}

uint64_t sub_1BC8D182C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001BC90E280 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BC8F8AA4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1BC8D19E4(char a1)
{
  result = 0x61737265766E6F63;
  switch(a1)
  {
    case 1:
      result = 0x61487265646E6573;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x546567617373656DLL;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8D1AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8D182C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8D1AC8(uint64_t a1)
{
  v2 = sub_1BC8D1DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8D1B04(uint64_t a1)
{
  v2 = sub_1BC8D1DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OutgoingVideoMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF68A0, &unk_1BC9095D0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8D1DD8();
  sub_1BC8F8CA4();
  v29 = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_30();
  sub_1BC8D2B74(v14, v15);
  OUTLINED_FUNCTION_7_21();
  if (!v2)
  {
    v16 = type metadata accessor for OutgoingVideoMessage();
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v28 = 1;
    sub_1BC8F89A4();
    v27 = *(v3 + v16[6]);
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC8D2A5C(&qword_1EBCF53B8);
    OUTLINED_FUNCTION_7_21();
    v25 = *(v3 + v16[7]);
    v24[11] = 3;
    sub_1BC7BED0C();
    sub_1BC8F89F4();
    v20 = v16[8];
    v24[10] = 4;
    sub_1BC8F7014();
    OUTLINED_FUNCTION_1_30();
    sub_1BC8D2B74(v21, v22);
    OUTLINED_FUNCTION_7_21();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1BC8D1DD8()
{
  result = qword_1EBCF68A8;
  if (!qword_1EBCF68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68A8);
  }

  return result;
}

uint64_t OutgoingVideoMessage.hash(into:)()
{
  OUTLINED_FUNCTION_114();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_30();
  sub_1BC8D2B74(v2, v3);
  sub_1BC8F7B64();
  v4 = type metadata accessor for OutgoingVideoMessage();
  v5 = (v1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_1BC8F7CD4();
  sub_1BC7DEC58(v0, *(v1 + v4[6]));
  v8 = *(v1 + v4[7]);
  sub_1BC8F8C34();
  v9 = v4[8];
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_30();
  sub_1BC8D2B74(v10, v11);
  return sub_1BC8F7B64();
}

uint64_t OutgoingVideoMessage.hashValue.getter()
{
  sub_1BC8F8C04();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_30();
  sub_1BC8D2B74(v1, v2);
  sub_1BC8F7B64();
  v3 = type metadata accessor for OutgoingVideoMessage();
  v4 = (v0 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1BC8F7CD4();
  sub_1BC7DEC58(v12, *(v0 + v3[6]));
  v7 = *(v0 + v3[7]);
  sub_1BC8F8C34();
  v8 = v3[8];
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_30();
  sub_1BC8D2B74(v9, v10);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t OutgoingVideoMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v48);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = sub_1BC8F7264();
  v11 = OUTLINED_FUNCTION_0(v10);
  v49 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v52 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF68B0, &qword_1BC9095E0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v50 = v19;
  v51 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - v22;
  v24 = type metadata accessor for OutgoingVideoMessage();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v30 = v29 - v28;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8D1DD8();
  v53 = v23;
  v32 = v54;
  sub_1BC8F8C84();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v9;
  v33 = v49;
  v61 = 0;
  OUTLINED_FUNCTION_0_30();
  sub_1BC8D2B74(v34, v35);
  sub_1BC8F88F4();
  v36 = v30;
  (*(v33 + 32))(v30, v52, v10);
  v60 = 1;
  v37 = sub_1BC8F88A4();
  v38 = (v30 + v24[5]);
  *v38 = v37;
  v38[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  v59 = 2;
  sub_1BC8D2A5C(&qword_1EBCF5490);
  v52 = 0;
  sub_1BC8F88F4();
  v40 = a1;
  *(v36 + v24[6]) = v55;
  v58 = 3;
  sub_1BC7C70CC();
  sub_1BC8F88F4();
  *(v36 + v24[7]) = v57;
  v56 = 4;
  OUTLINED_FUNCTION_1_30();
  sub_1BC8D2B74(v41, v42);
  v43 = v54;
  v44 = v48;
  sub_1BC8F88F4();
  (*(v50 + 8))(v53, v51);
  (*(v46 + 32))(v36 + v24[8], v43, v44);
  sub_1BC8D2AC8(v36, v47);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1BC890934(v36);
}

uint64_t sub_1BC8D2580()
{
  sub_1BC8F8C04();
  OutgoingVideoMessage.hash(into:)();
  return sub_1BC8F8C64();
}

void *VideoMessagingController.__allocating_init()()
{
  v0 = type metadata accessor for VideoMessagingClient();
  swift_allocObject();
  v10[3] = v0;
  v10[4] = &off_1F3B3E0C8;
  v10[0] = sub_1BC8DF360();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v6 = (v5 - v4);
  (*(v7 + 16))(v5 - v4);
  v8 = *v6;
  v1[5] = v0;
  v1[6] = &off_1F3B3E0C8;
  v1[2] = v8;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v1;
}

uint64_t VideoMessagingController.sendVideoMessage(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BC8D26F8, 0, 0);
}

uint64_t sub_1BC8D26F8()
{
  OUTLINED_FUNCTION_5();
  v1 = *__swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1BC8D279C;
  v3 = v0[2];

  return sub_1BC8DF534();
}

uint64_t sub_1BC8D279C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t VideoMessagingController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1BC8D28DC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC8D2974;

  return VideoMessagingController.sendVideoMessage(_:)(a1);
}

uint64_t sub_1BC8D2974()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1BC8D2A5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC8D2AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingVideoMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8D2B74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC8D2BE4()
{
  sub_1BC8F7264();
  if (v0 <= 0x3F)
  {
    sub_1BC8D2C90();
    if (v1 <= 0x3F)
    {
      sub_1BC8F7014();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC8D2C90()
{
  if (!qword_1EDC1DEC8)
  {
    v0 = sub_1BC8F7F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC1DEC8);
    }
  }
}

uint64_t dispatch thunk of VideoMessagingDataSource.sendVideoMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BC8D2974;

  return v11(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for OutgoingVideoMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8D2F24()
{
  result = qword_1EBCF68C0;
  if (!qword_1EBCF68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68C0);
  }

  return result;
}

unint64_t sub_1BC8D2F7C()
{
  result = qword_1EBCF68C8;
  if (!qword_1EBCF68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68C8);
  }

  return result;
}

unint64_t sub_1BC8D2FD4()
{
  result = qword_1EBCF68D0;
  if (!qword_1EBCF68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68D0);
  }

  return result;
}

uint64_t sub_1BC8D3028(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1BC8D3070()
{
  v0 = sub_1BC8F6ED4();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  (*(v3 + 104))(v8, *MEMORY[0x1E6968F70], v0);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  v18 = *(v3 + 8);
  v19 = OUTLINED_FUNCTION_62_0();
  v20(v19);
  return (*(v12 + 8))(v17, v9);
}

uint64_t sub_1BC8D321C()
{
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_156();
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  sub_1BC8F6F64();
  v9 = *(v5 + 8);
  v9(v0, v2);
  sub_1BC7C20D0(v1);
  sub_1BC8F6F64();
  v10 = OUTLINED_FUNCTION_62_0();
  return (v9)(v10);
}

id sub_1BC8D3338()
{
  v31[4] = *MEMORY[0x1E69E9840];
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = sub_1BC8F7E54();
  sub_1BC8D3028(v1);
  v3 = v2;

  if (!v3)
  {
    __break(1u);
  }

  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1BC8F7BE4();

  v31[0] = 0;
  v6 = [v4 attributesOfFileSystemForPath:v5 error:v31];

  v7 = v31[0];
  if (v6)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1BC7C47AC(&qword_1EBCF4AB0, type metadata accessor for FileAttributeKey);
    v8 = sub_1BC8F7AA4();
    v9 = v7;

    sub_1BC8E731C(*MEMORY[0x1E696A3C0], v8);

    if (v31[3])
    {
      sub_1BC7E613C();
      if (swift_dynamicCast())
      {
        if (qword_1EDC20728 != -1)
        {
          OUTLINED_FUNCTION_0_19();
        }

        v10 = sub_1BC8F7734();
        __swift_project_value_buffer(v10, qword_1EDC2B3A8);
        v11 = v30;
        v12 = sub_1BC8F7714();
        v13 = sub_1BC8F8204();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v31[0] = v15;
          *v14 = 136446210;
          v16 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
          v17 = [v16 stringFromByteCount_];

          v18 = sub_1BC8F7C24();
          v20 = v19;

          v21 = sub_1BC7A9A4C(v18, v20, v31);

          *(v14 + 4) = v21;
          _os_log_impl(&dword_1BC7A3000, v12, v13, "Got %{public}s of free space", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        v22 = [v11 longLongValue];
        goto LABEL_17;
      }
    }

    else
    {
      sub_1BC7E6180(v31, &unk_1EBCF5E50, &qword_1BC8FE850);
    }
  }

  else
  {
    v23 = v31[0];
    v24 = sub_1BC8F6EA4();

    swift_willThrow();
  }

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v25 = sub_1BC8F7734();
  __swift_project_value_buffer(v25, qword_1EDC2B3A8);
  v11 = sub_1BC8F7714();
  v26 = sub_1BC8F81E4();
  if (os_log_type_enabled(v11, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1BC7A3000, v11, v26, "Failed to get free storage for device", v27, 2u);
    OUTLINED_FUNCTION_6();
  }

  v22 = 0;
LABEL_17:

  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

void static OSTransaction.transaction(withID:with:beginInterval:endInterval:block:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, unint64_t a8, uint64_t a9, char a10, void (*a11)(void))
{
  v70 = a8;
  v72 = a7;
  v73 = a5;
  v16 = sub_1BC8F76C4();
  v17 = OUTLINED_FUNCTION_0(v16);
  v67 = v18;
  v68 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v69 = v22 - v21;
  v23 = sub_1BC8F7684();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  v74 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  inited = swift_initStackObject();
  sub_1BC8D418C(a1, a2, a3);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v71 = a4;
  v34 = v76;
  v35 = sub_1BC8F76A4();
  sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    if ((v72 & 1) == 0)
    {
      if (v73)
      {
LABEL_8:
        OUTLINED_FUNCTION_45();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v38);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v39, v40, v41, v42, v43, v44, v45, v46);
        v47 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v47);
        v34 = v76;
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v73))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v36)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_25_16();
      if (!(!v36 & v37))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_9:

  (*(v26 + 16))(v11, v33, v23);
  v48 = sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16(v48);
  swift_allocObject();
  sub_1BC8F76E4();
  a11();
  v49 = v23;
  if (v34)
  {
    (*(v26 + 8))(v33, v23);

    return;
  }

  v50 = sub_1BC8F76A4();
  v51 = v74;
  sub_1BC8F76D4();
  v52 = sub_1BC8F82C4();
  if ((sub_1BC8F83D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  LODWORD(v76) = v52;
  if ((a10 & 1) == 0)
  {
    v53 = v69;
    if (v70)
    {
LABEL_18:
      v73 = v49;

      sub_1BC8F7704();

      v55 = v67;
      v54 = v68;
      if ((*(v67 + 88))(v53, v68) != *MEMORY[0x1E69E93E8])
      {
        (*(v55 + 8))(v53, v54);
      }

      OUTLINED_FUNCTION_45();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_16(v56);
      v57 = v74;
      sub_1BC8F7674();
      OUTLINED_FUNCTION_17_16();
      _os_signpost_emit_with_name_impl(v58, v59, v60, v61, v62, v63, v64, v65);
      v51 = v57;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v49 = v73;
LABEL_21:

      v66 = *(v26 + 8);
      v66(v51, v49);
      v66(v33, v49);
      return;
    }

    __break(1u);
  }

  v53 = v69;
  if (HIDWORD(v70))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_9_19();
  if (!v36)
  {
    OUTLINED_FUNCTION_25_16();
    if (!(!v36 & v37))
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1BC8D3BF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = a5;
  *(v5 + 104) = a3;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8D3C10()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 104);
  type metadata accessor for OSTransaction();
  *(v0 + 80) = swift_initStackObject();
  sub_1BC8D418C(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BC8D3CDC;
  v5 = *(v0 + 72);

  return sub_1BC8C5C68();
}

uint64_t sub_1BC8D3CDC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8D3DD4()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_1BC8D3E34()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_27();
  v4 = v0[12];

  return v3();
}

uint64_t static OSTransaction.named(_:block:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 120) = a3;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_1_0();
}

{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8D3EB8()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 120);
  *(v0 + 96) = swift_initStackObject();
  sub_1BC8D418C(v4, v3, v5);
  v10 = (v2 + *v2);
  v6 = v2[1];
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1BC8D3FE0;
  v8 = *(v0 + 80);

  return v10();
}

uint64_t sub_1BC8D3FE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8D40D8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_1BC8D4130()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 112);

  return v2();
}

void sub_1BC8D418C(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1BC8F7264();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  if (a3)
  {
    v13 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      OUTLINED_FUNCTION_9_19();
      if (v16)
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v17 = a1 + 1;
LABEL_9:
          v37 = (v17 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v17) >> 3))));
          goto LABEL_10;
        }

LABEL_19:
        v32 = (a1 & 0x3F) << 8;
        v33 = (a1 >> 6) + v32 + 33217;
        v34 = (v32 | (a1 >> 6) & 0x3F) << 8;
        v35 = (a1 >> 18) + ((v34 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v36 = (a1 >> 12) + v34 + 8487393;
        if (v13)
        {
          v17 = v35;
        }

        else
        {
          v17 = v36;
        }

        if (a1 < 0x800)
        {
          v17 = v33;
        }

        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_10:
  v37 = sub_1BC8F7CC4();
  v38 = v18;

  MEMORY[0x1BFB29120](46, 0xE100000000000000);
  sub_1BC8F7254();
  v19 = sub_1BC8F7204();
  v21 = v20;
  (*(v10 + 8))(v15, v7);

  MEMORY[0x1BFB29120](v19, v21);

  v23 = v37;
  v22 = v38;
  v4[2] = v37;
  v4[3] = v22;
  v24 = qword_1EDC1E1D0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1BC8F7734();
  __swift_project_value_buffer(v25, qword_1EDC2B268);

  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F8204();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_1BC7A9A4C(v23, v22, &v37);
    _os_log_impl(&dword_1BC7A3000, v26, v27, "Opening transaction: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v30 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v30);
  }

  sub_1BC8F7CA4();
  v31 = os_transaction_create();

  if (v31)
  {

    v4[4] = v31;
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_1BC8D4500()
{
  v1 = v0;
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);

  oslog = sub_1BC8F7714();
  v3 = sub_1BC8F8204();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1BC7A9A4C(*(v1 + 16), *(v1 + 24), &v7);
    _os_log_impl(&dword_1BC7A3000, oslog, v3, "Closing transaction: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
    MEMORY[0x1BFB2AA50](v4, -1, -1);
  }
}

uint64_t OSTransaction.deinit()
{
  sub_1BC8D4500();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OSTransaction.__deallocating_deinit()
{
  OSTransaction.deinit();
  v0 = OUTLINED_FUNCTION_14_18();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static OSTransaction.named(_:block:)()
{
  OUTLINED_FUNCTION_13_20();
  swift_initStackObject();
  OUTLINED_FUNCTION_20_15();
  v0();
}

{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_14_18();
  swift_allocObject();
  OUTLINED_FUNCTION_20_15();
  v0(v1);
}

uint64_t sub_1BC8D4798()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  sub_1BC8D418C(v4, v3, v5);
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1BC8D48CC;
  v9 = *(v0 + 40);

  return v11(v6);
}

uint64_t sub_1BC8D48CC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8D49C4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_11();

  return v2();
}

void static OSTransaction.transaction(withID:and:beginInterval:endInterval:block:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, NSObject *a5, uint64_t a6, int a7, const char *a8, uint64_t a9, char a10, void (*a11)(uint64_t))
{
  v64 = a8;
  LODWORD(v66) = a7;
  v67 = a5;
  v16 = sub_1BC8F76C4();
  v17 = OUTLINED_FUNCTION_0(v16);
  v62 = v18;
  v63 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v61 = v22 - v21;
  v23 = sub_1BC8F7684();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  v68 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v59 - v32;
  OUTLINED_FUNCTION_14_18();
  v34 = swift_allocObject();
  v35 = a3;
  v36 = v34;
  sub_1BC8D418C(a1, a2, v35);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v65 = a4;
  v37 = sub_1BC8F76A4();
  v38 = sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v60 = v36;
    if ((v66 & 1) == 0)
    {
      v39 = v67;
      if (v67)
      {
LABEL_9:
        OUTLINED_FUNCTION_45();
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = sub_1BC8F7674();
        _os_signpost_emit_with_name_impl(&dword_1BC7A3000, v37, v38, v43, v39, "", v42, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        v36 = v60;
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v67 >> 32)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v40)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_25_16();
      if (!(!v40 & v41))
      {
        v39 = &v70;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_10:

  (*(v26 + 16))(v11, v33, v23);
  v44 = sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16(v44);
  swift_allocObject();
  sub_1BC8F76E4();
  v45 = v69;
  a11(v36);
  if (v45)
  {
    (*(v26 + 8))(v33, v23);

    return;
  }

  v46 = sub_1BC8F76A4();
  v47 = v68;
  sub_1BC8F76D4();
  LODWORD(v69) = sub_1BC8F82C4();
  if ((sub_1BC8F83D4() & 1) == 0)
  {
    goto LABEL_24;
  }

  v67 = v46;
  if (a10)
  {
LABEL_16:
    v47 = v68;
    if (!(v64 >> 32))
    {
      OUTLINED_FUNCTION_9_19();
      if (v40)
      {
LABEL_31:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_16();
      if (!(!v40 & v41))
      {
        v48 = &v71;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v48 = v64;
  v47 = v68;
  if (!v64)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  v68 = v26;
  v66 = v23;

  v49 = v61;
  sub_1BC8F7704();

  v51 = v62;
  v50 = v63;
  if ((*(v62 + 88))(v49, v63) == *MEMORY[0x1E69E93E8])
  {
    v52 = v48;
    v53 = "[Error] Interval already ended";
  }

  else
  {
    v54 = v49;
    v52 = v48;
    (*(v51 + 8))(v54, v50);
    v53 = "";
  }

  OUTLINED_FUNCTION_45();
  v55 = swift_slowAlloc();
  *v55 = 0;
  v56 = sub_1BC8F7674();
  v57 = v67;
  _os_signpost_emit_with_name_impl(&dword_1BC7A3000, v67, v69, v56, v52, v53, v55, 2u);
  v46 = v57;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1BFB2AA50]();
  v23 = v66;
  v26 = v68;
LABEL_24:

  v58 = *(v26 + 8);
  v58(v47, v23);
  v58(v33, v23);
}

uint64_t static OSTransaction.transaction(withID:and:beginInterval:endInterval:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5();
  *(v13 + 120) = a12;
  *(v13 + 128) = v12;
  *(v13 + 234) = a10;
  *(v13 + 104) = v14;
  *(v13 + 112) = a11;
  *(v13 + 233) = v15;
  *(v13 + 88) = v16;
  *(v13 + 96) = v17;
  *(v13 + 232) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  v21 = sub_1BC8F76C4();
  *(v13 + 136) = v21;
  OUTLINED_FUNCTION_26(v21);
  *(v13 + 144) = v22;
  v24 = *(v23 + 64) + 15;
  *(v13 + 152) = swift_task_alloc();
  v25 = sub_1BC8F7684();
  *(v13 + 160) = v25;
  OUTLINED_FUNCTION_26(v25);
  *(v13 + 168) = v26;
  v28 = *(v27 + 64) + 15;
  *(v13 + 176) = swift_task_alloc();
  *(v13 + 184) = swift_task_alloc();
  *(v13 + 192) = swift_task_alloc();
  OUTLINED_FUNCTION_15();
  return OUTLINED_FUNCTION_26_13(v29, v30, v31);
}

{
  OUTLINED_FUNCTION_5();
  *(v13 + 80) = a12;
  *(v13 + 88) = v12;
  *(v13 + 194) = a10;
  *(v13 + 64) = v14;
  *(v13 + 72) = a11;
  *(v13 + 193) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 192) = v18;
  *(v13 + 32) = v19;
  *(v13 + 40) = v20;
  v21 = sub_1BC8F76C4();
  *(v13 + 96) = v21;
  OUTLINED_FUNCTION_26(v21);
  *(v13 + 104) = v22;
  v24 = *(v23 + 64) + 15;
  *(v13 + 112) = swift_task_alloc();
  v25 = sub_1BC8F7684();
  *(v13 + 120) = v25;
  OUTLINED_FUNCTION_26(v25);
  *(v13 + 128) = v26;
  v28 = *(v27 + 64) + 15;
  *(v13 + 136) = swift_task_alloc();
  *(v13 + 144) = swift_task_alloc();
  *(v13 + 152) = swift_task_alloc();
  OUTLINED_FUNCTION_15();
  return OUTLINED_FUNCTION_26_13(v29, v30, v31);
}

void sub_1BC8D4FE0()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 232);
  *(v0 + 200) = swift_initStackObject();
  sub_1BC8D418C(v5, v3, v6);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v7 = sub_1BC8F76A4();
  sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v8 = *(v0 + 96);
    if ((*(v0 + 233) & 1) == 0)
    {
      if (v8)
      {
LABEL_8:
        v10 = *(v0 + 192);
        OUTLINED_FUNCTION_45();
        v11 = swift_slowAlloc();
        *v11 = 0;
        sub_1BC8F7674();
        OUTLINED_FUNCTION_12_0();
        _os_signpost_emit_with_name_impl(v12, v13, v14, v15, v16, v17, v11, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v8))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v9)
      {
LABEL_14:
        __break(1u);
        return;
      }

      if (v8 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(v0 + 112);

  (*(v21 + 16))(v19, v18, v20);
  v23 = sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16(v23);
  swift_allocObject();
  *(v0 + 208) = sub_1BC8F76E4();
  v27 = (v22 + *v22);
  v24 = v22[1];
  v25 = swift_task_alloc();
  *(v0 + 216) = v25;
  *v25 = v0;
  v25[1] = sub_1BC8D5218;
  v26 = *(v0 + 120);

  v27();
}

uint64_t sub_1BC8D5218()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1BC8D5310()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  v4 = sub_1BC8F76A4();
  sub_1BC8F76D4();
  sub_1BC8F82C4();
  if (sub_1BC8F83D4())
  {
    v5 = *(v0 + 104);
    if ((*(v0 + 234) & 1) == 0)
    {
      if (v5)
      {
LABEL_8:
        v7 = *(v0 + 208);
        v9 = *(v0 + 144);
        v8 = *(v0 + 152);
        v10 = *(v0 + 136);

        sub_1BC8F7704();

        v11 = *(v9 + 88);
        v12 = OUTLINED_FUNCTION_125();
        if (v13(v12) != *MEMORY[0x1E69E93E8])
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
        }

        v14 = *(v0 + 176);
        OUTLINED_FUNCTION_45();
        v15 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v15);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v16, v17, v18, v19, v20, v21, v22, v23);
        v24 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v24);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v5))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v6)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v5 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v25 = *(v0 + 200);
  v26 = *(v0 + 208);
  v28 = *(v0 + 184);
  v27 = *(v0 + 192);
  v30 = *(v0 + 168);
  v29 = *(v0 + 176);
  v32 = *(v0 + 152);
  v31 = *(v0 + 160);

  v33 = *(v30 + 8);
  v34 = OUTLINED_FUNCTION_125();
  v33(v34);
  (v33)(v27, v31);

  OUTLINED_FUNCTION_11();

  v35();
}

uint64_t sub_1BC8D5508()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];

  (*(v6 + 8))(v3, v7);

  OUTLINED_FUNCTION_27();
  v10 = v0[28];

  return v9();
}

void sub_1BC8D56F8()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 192);
  v7 = swift_allocObject();
  *(v0 + 160) = v7;
  sub_1BC8D418C(v5, v3, v6);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v8 = sub_1BC8F76A4();
  sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v9 = *(v0 + 56);
    if ((*(v0 + 193) & 1) == 0)
    {
      if (v9)
      {
LABEL_8:
        v11 = *(v0 + 152);
        OUTLINED_FUNCTION_45();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v12);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v13, v14, v15, v16, v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v21);
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v9))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v10)
      {
LABEL_14:
        __break(1u);
        return;
      }

      if (v9 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v22 = *(v0 + 72);
  (*(*(v0 + 128) + 16))(*(v0 + 144), *(v0 + 152), *(v0 + 120));
  v23 = sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16(v23);
  swift_allocObject();
  *(v0 + 168) = sub_1BC8F76E4();
  v27 = (v22 + *v22);
  v24 = v22[1];
  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  *v25 = v0;
  v25[1] = sub_1BC8D5930;
  v26 = *(v0 + 80);

  v27(v7);
}

uint64_t sub_1BC8D5930()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1BC8D5A28()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = sub_1BC8F76A4();
  sub_1BC8F76D4();
  sub_1BC8F82C4();
  if (sub_1BC8F83D4())
  {
    v5 = *(v0 + 64);
    if ((*(v0 + 194) & 1) == 0)
    {
      if (v5)
      {
LABEL_8:
        v7 = *(v0 + 168);
        v9 = *(v0 + 104);
        v8 = *(v0 + 112);
        v10 = *(v0 + 96);

        sub_1BC8F7704();

        v11 = *(v9 + 88);
        v12 = OUTLINED_FUNCTION_125();
        if (v13(v12) != *MEMORY[0x1E69E93E8])
        {
          (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        }

        v14 = *(v0 + 136);
        OUTLINED_FUNCTION_45();
        v15 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v15);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v16, v17, v18, v19, v20, v21, v22, v23);
        v24 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v24);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v5))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v6)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v5 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);

  v33 = *(v30 + 8);
  v34 = OUTLINED_FUNCTION_125();
  v33(v34);
  (v33)(v27, v31);

  OUTLINED_FUNCTION_11();

  v35();
}

uint64_t sub_1BC8D5C20()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];

  (*(v6 + 8))(v3, v7);

  OUTLINED_FUNCTION_27();
  v10 = v0[23];

  return v9();
}

FaceTimeMessageStore::MessageKey_optional __swiftcall MessageKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = MessageKey.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1BC8D5DAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BC800DDC();
}

unint64_t sub_1BC8D5DBC()
{
  result = qword_1EDC1F9C0;
  if (!qword_1EDC1F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9C0);
  }

  return result;
}

unint64_t sub_1BC8D5E24()
{
  result = qword_1EDC1F9E0;
  if (!qword_1EDC1F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9E0);
  }

  return result;
}

unint64_t sub_1BC8D5E94()
{
  result = qword_1EBCF68D8;
  if (!qword_1EBCF68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF68E0, &qword_1BC909A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68D8);
  }

  return result;
}

uint64_t sub_1BC8D5F08(uint64_t a1)
{
  v2 = sub_1BC8D5F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8D5F44(uint64_t a1)
{
  v2 = sub_1BC8D5F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC8D5F80()
{
  result = qword_1EDC1F9D0;
  if (!qword_1EDC1F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9D0);
  }

  return result;
}

uint64_t sub_1BC8D5FD4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OutgoingVideoMessage();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  v15 = 0;
  v16 = *(a2 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v18 = 1;
      v19 = a3;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
    }

    sub_1BC8D2AC8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v14);
    v17 = a1(v14);
    if (v3)
    {
      return sub_1BC890934(v14);
    }

    if (v17)
    {
      break;
    }

    sub_1BC890934(v14);
    ++v15;
  }

  v19 = a3;
  sub_1BC8DC144(v14, a3);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
}

void sub_1BC8D6128(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC7C0454(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB29A00](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1BC8D6214(uint64_t *a1, void *a2)
{
  *(v2 + 112) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 120) = MEMORY[0x1E69E7CC0];
  sub_1BC7A792C(a1, v2 + 64);
  *(v2 + 104) = a2;
  v5 = objc_opt_self();
  v6 = a2;
  v7 = [v5 defaultCenter];
  OUTLINED_FUNCTION_20_16(v7, v8, v9, v10, *MEMORY[0x1E69E06D8]);

  v11 = [v5 defaultCenter];
  OUTLINED_FUNCTION_20_16(v11, v12, v13, v14, *MEMORY[0x1E69E06C0]);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1BC8D6308()
{
  v1 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF68E8, &qword_1BC909C30);
  sub_1BC8F8264();
  return v3;
}

uint64_t sub_1BC8D6380@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1BC8F7264();
  v110 = *(v8 - 8);
  v111 = v8;
  v9 = *(v110 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v104 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v100 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  *(a1 + 112) = 1;
  v109 = a2;
  v19 = sub_1BC7C0454(a2);
  v101 = a3;
  v102 = v3;
  if (!v19)
  {
LABEL_11:
    sub_1BC899C68();
    v103 = v29;
    v30 = *(a1 + 88);
    v31 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_1((a1 + 64), v30);
    v32 = *(v31 + 48);

    v33 = v32(sub_1BC8D83A0, a1, v30, v31);

    v108 = *(v33 + 16);
    if (v108)
    {
      v34 = 0;
      v35 = v33 + 32;
      v106 = v110 + 16;
      v107 = (v110 + 8);
      v36 = MEMORY[0x1E69E7CC8];
      do
      {
        if (v34 >= *(v33 + 16))
        {
          goto LABEL_72;
        }

        v37 = v33;
        sub_1BC7A792C(v35, &v113);
        v38 = v114;
        v39 = v115;
        __swift_project_boxed_opaque_existential_1(&v113, v114);
        (*(v39 + 128))(v38, v39);
        sub_1BC7A792C(&v113, v112);
        swift_isUniquelyReferenced_nonNull_native();
        v116 = v36;
        v40 = sub_1BC83C928();
        v42 = v36[2];
        v43 = (v41 & 1) == 0;
        v36 = (v42 + v43);
        if (__OFADD__(v42, v43))
        {
          goto LABEL_73;
        }

        v4 = v40;
        v44 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF68F0, &qword_1BC909C38);
        if (sub_1BC8F8734())
        {
          v45 = sub_1BC83C928();
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_77;
          }

          v4 = v45;
        }

        v36 = v116;
        if (v44)
        {
          v47 = (v116[7] + 40 * v4);
          __swift_destroy_boxed_opaque_existential_1(v47);
          sub_1BC7CF5EC(v112, v47);
          (*v107)(v16, v111);
        }

        else
        {
          v116[(v4 >> 6) + 8] |= 1 << v4;
          v49 = v110;
          v48 = v111;
          (*(v110 + 16))(v36[6] + *(v110 + 72) * v4, v16, v111);
          sub_1BC7CF5EC(v112, v36[7] + 40 * v4);
          (*(v49 + 8))(v16, v48);
          v50 = v36[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_74;
          }

          v36[2] = v52;
        }

        v34 = (v34 + 1);
        __swift_destroy_boxed_opaque_existential_1(&v113);
        v35 += 40;
        v33 = v37;
      }

      while (v108 != v34);
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC8];
    }

    sub_1BC89A158();
    *&v112[0] = v53;
    v100 = v53;

    sub_1BC8DB0E8(v103);
    v35 = *&v112[0];
    v54 = *&v112[0] + 56;
    v55 = 1 << *(*&v112[0] + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(*&v112[0] + 56);
    v58 = (v55 + 63) >> 6;
    v107 = (v110 + 16);
    v108 = (v110 + 8);
    swift_bridgeObjectRetain_n();
    v4 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    v60 = v111;
    v61 = v105;
    v106 = v35;
    if (v57)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v62 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v62 >= v58)
      {

        *&v113 = v59;

        v69 = v102;
        sub_1BC8D840C(&v113);
        v4 = v69;
        if (!v69)
        {

          v35 = v113;
          if (qword_1EDC1E1A0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_75;
        }

        goto LABEL_78;
      }

      v57 = *(v54 + 8 * v62);
      ++v4;
      if (v57)
      {
        v4 = v62;
        do
        {
LABEL_32:
          (*(v110 + 16))(v61, *(v35 + 48) + *(v110 + 72) * (__clz(__rbit64(v57)) | (v4 << 6)), v60);
          if (v36[2])
          {
            v63 = sub_1BC83C928();
            if (v64)
            {
              sub_1BC7A792C(v36[7] + 40 * v63, &v113);
              (*v108)(v61, v60);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = *(v59 + 16);
                sub_1BC7F7600();
                v59 = v67;
              }

              v35 = v106;
              v65 = *(v59 + 16);
              if (v65 >= *(v59 + 24) >> 1)
              {
                sub_1BC7F7600();
                v59 = v68;
              }

              *(v59 + 16) = v65 + 1;
              sub_1BC7CF5EC(&v113, v59 + 40 * v65 + 32);
              v60 = v111;
              v61 = v105;
            }

            else
            {
              (*v108)(v61, v60);
              v35 = v106;
            }
          }

          else
          {
            (*v108)(v61, v60);
          }

          v57 &= v57 - 1;
        }

        while (v57);
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
LABEL_45:
      v70 = sub_1BC8F7734();
      __swift_project_value_buffer(v70, qword_1EDC2B208);

      v71 = sub_1BC8F7714();
      v72 = sub_1BC8F8204();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134349056;
        *(v73 + 4) = *(v35 + 16);

        _os_log_impl(&dword_1BC7A3000, v71, v72, "Calculated %{public}ld voicemails to be inserted", v73, 0xCu);
        MEMORY[0x1BFB2AA50](v73, -1, -1);
      }

      else
      {
      }

      v74 = sub_1BC8D9B8C(v100, v103);

      v75 = v106;

      v76 = sub_1BC8F7714();
      v77 = sub_1BC8F8204();
      v78 = os_log_type_enabled(v76, v77);
      v105 = v35;
      if (v78)
      {
        v79 = swift_slowAlloc();
        *v79 = 134349056;
        v80 = *(v75 + 16);

        *(v79 + 4) = v80;

        _os_log_impl(&dword_1BC7A3000, v76, v77, "Calculated %{public}ld voicemails to be updated", v79, 0xCu);
        MEMORY[0x1BFB2AA50](v79, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v81 = v109;

      v82 = sub_1BC8DB304(v74, v81, v36);
      v83 = v82;
      v109 = v4;
      v84 = v82 + 56;
      v85 = 1 << *(v82 + 32);
      v86 = -1;
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      v35 = v86 & *(v82 + 56);
      v87 = (v85 + 63) >> 6;

      v4 = 0;
      v88 = MEMORY[0x1E69E7CC0];
      for (i = v104; v35; v35 &= v35 - 1)
      {
LABEL_58:
        v91 = v111;
        (*(v110 + 16))(i, *(v83 + 48) + *(v110 + 72) * (__clz(__rbit64(v35)) | (v4 << 6)), v111);
        if (v36[2])
        {
          v92 = sub_1BC83C928();
          if (v93)
          {
            sub_1BC7A792C(v36[7] + 40 * v92, &v113);
            (*v108)(i, v111);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = *(v88 + 16);
              sub_1BC7F7600();
              v88 = v96;
            }

            v94 = *(v88 + 16);
            if (v94 >= *(v88 + 24) >> 1)
            {
              sub_1BC7F7600();
              v88 = v97;
            }

            *(v88 + 16) = v94 + 1;
            sub_1BC7CF5EC(&v113, v88 + 40 * v94 + 32);
            i = v104;
          }

          else
          {
            (*v108)(i, v111);
          }
        }

        else
        {
          (*v108)(i, v91);
        }
      }

      while (1)
      {
        v90 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v90 >= v87)
        {

          v99 = v101;
          *v101 = v105;
          v99[1] = v88;
          return result;
        }

        v35 = *(v84 + 8 * v90);
        ++v4;
        if (v35)
        {
          v4 = v90;
          goto LABEL_58;
        }
      }
    }
  }

  v20 = v19;
  *&v113 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v113;
    v108 = (v109 & 0xC000000000000001);
    v4 = v110 + 16;
    v106 = a1;
    v107 = (v110 + 32);
    v23 = v20;
    do
    {
      if (v108)
      {
        v24 = MEMORY[0x1BFB29A00](v21, v109);
      }

      else
      {
        v24 = *(v109 + 8 * v21 + 32);
      }

      v25 = v24;
      v26 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      v27 = v111;
      (*v4)(v18, &v25[v26], v111);

      *&v113 = v22;
      v28 = *(v22 + 16);
      if (v28 >= *(v22 + 24) >> 1)
      {
        sub_1BC7DDB5C();
        v22 = v113;
      }

      ++v21;
      *(v22 + 16) = v28 + 1;
      (*(v110 + 32))(v22 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v28, v18, v27);
    }

    while (v23 != v21);
    a1 = v106;
    goto LABEL_11;
  }

  __break(1u);
LABEL_77:
  sub_1BC8F8B44();
  __break(1u);
LABEL_78:

  __break(1u);
  return result;
}

id sub_1BC8D6EE8(void *a1, void *a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[11];
  v10 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v9);
  if ((*(v10 + 104))(a1, v9, v10))
  {
    return 0;
  }

  v12 = [objc_opt_self() defaultManager];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 72))(v13, v14);
  sub_1BC8F6FC4();
  (*(v5 + 8))(v8, v4);
  v15 = sub_1BC8F7BE4();

  v11 = [v12 fileExistsAtPath_];

  return v11;
}

uint64_t sub_1BC8D70A0(void *a1, void *a2)
{
  v4 = sub_1BC8F71E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 40))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 40))(v14, v15);
  LOBYTE(a1) = sub_1BC8F7184();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t sub_1BC8D7230(uint64_t *a1)
{
  v2 = sub_1BC8F7264();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  v9 = sub_1BC8F7234();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

void sub_1BC8D7364()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F78B4();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v8 = sub_1BC8F78E4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  v17 = *(v0 + 104);
  v23[4] = sub_1BC8D837C;
  v24 = v0;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v23[2] = v18;
  v23[3] = &block_descriptor_25;
  v19 = _Block_copy(v23);

  sub_1BC8F78D4();
  OUTLINED_FUNCTION_8_28();
  sub_1BC8DC0FC(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  sub_1BC7D9414();
  OUTLINED_FUNCTION_10_25();
  v22 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1BFB296A0](v22);
  _Block_release(v19);
  (*(v5 + 8))(v1, v2);
  (*(v11 + 8))(v16, v8);

  OUTLINED_FUNCTION_24();
}

void sub_1BC8D7548(uint64_t a1)
{
  *(a1 + 112) = 0;
  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {
    v2 = *(a1 + 120);

    sub_1BC8D7DB8();

    v3 = *(a1 + 120);
    *(a1 + 120) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B208);
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "No notifications received while performing diff!", v7, 2u);
      MEMORY[0x1BFB2AA50](v7, -1, -1);
    }
  }
}

void sub_1BC8D767C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v4 = sub_1BC8F78B4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v9 = sub_1BC8F78E4();
  v10 = OUTLINED_FUNCTION_0(v9);
  v31 = v11;
  v32 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  v17 = sub_1BC8F6D24();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v30[1] = *(v0 + 104);
  (*(v20 + 16))(v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v17);
  v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v24 = swift_allocObject();
  (*(v20 + 32))(v24 + v23, v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  *(v24 + ((v22 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v35[4] = sub_1BC8D82D8;
  v35[5] = v24;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v35[2] = v25;
  v35[3] = &block_descriptor_9;
  v26 = _Block_copy(v35);

  sub_1BC8F78D4();
  v34 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8_28();
  sub_1BC8DC0FC(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  sub_1BC7D9414();
  OUTLINED_FUNCTION_10_25();
  v29 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1BFB296A0](v29);
  _Block_release(v26);
  (*(v33 + 8))(v1, v4);
  (*(v31 + 8))(v16, v32);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8D7944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F6D24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B208);
  v30 = *(v5 + 16);
  v30(v8, a1, v4);
  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = a1;
    v15 = v14;
    v31[0] = v14;
    *v13 = 136315138;
    sub_1BC8DC0FC(&unk_1EDC1FF10, MEMORY[0x1E6968160]);
    v16 = sub_1BC8F8A54();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v19 = sub_1BC7A9A4C(v16, v18, v31);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "Received voicemailsChanged notification: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v20 = v15;
    a1 = v28;
    MEMORY[0x1BFB2AA50](v20, -1, -1);
    v21 = v13;
    a2 = v29;
    MEMORY[0x1BFB2AA50](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (*(a2 + 112))
  {
    swift_beginAccess();
    sub_1BC8ABEF0();
    v22 = *(*(a2 + 120) + 16);
    sub_1BC8ABF34(v22);
    v23 = *(a2 + 120);
    *(v23 + 16) = v22 + 1;
    v30((v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22), a1, v4);
    *(a2 + 120) = v23;
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5660, &qword_1BC900B10);
    v25 = *(v5 + 72);
    v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BC8FC230;
    v30((v27 + v26), a1, v4);
    sub_1BC8D7DB8();
    swift_setDeallocating();
    return sub_1BC8554C4();
  }
}

void sub_1BC8D7DB8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_1BC8F6D24();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v11 = sub_1BC8F78F4();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v19 = v18 - v17;
  v20 = v2[13];
  *(v18 - v17) = v20;
  (*(v14 + 104))(v18 - v17, *MEMORY[0x1E69E8020], v11);
  v21 = v20;
  LOBYTE(v20) = sub_1BC8F7904();
  (*(v14 + 8))(v19, v11);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v22 = *(v4 + 16);
  if (!v22)
  {
    goto LABEL_30;
  }

  v24 = *(v8 + 16);
  v23 = v8 + 16;
  v25 = v4 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
  v44 = *(v23 + 56);
  v45 = v24;
  v26 = *MEMORY[0x1E69E06C8];
  v42 = *MEMORY[0x1E69E06C8];
  v43 = *MEMORY[0x1E69E06D0];
  v27 = (v23 - 8);
  do
  {
    v45(v1, v25, v5);
    v28 = sub_1BC8F6D14();
    if (!v28)
    {
      goto LABEL_11;
    }

    v29 = v28;
    sub_1BC8F7C24();
    sub_1BC8F8544();
    if (!*(v29 + 16) || (v30 = sub_1BC83C8E8(), (v31 & 1) == 0))
    {

      sub_1BC8037DC(v46);
LABEL_11:
      v47 = 0u;
      v48 = 0u;
LABEL_12:
      sub_1BC7F1790(&v47, &unk_1EBCF5E50, &qword_1BC8FE850);
      goto LABEL_13;
    }

    sub_1BC7ABB48(*(v29 + 56) + 32 * v30, &v47);
    sub_1BC8037DC(v46);

    if (!*(&v48 + 1))
    {
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5010, &qword_1BC8FC7B0);
    if (swift_dynamicCast())
    {
      sub_1BC7F3C50(v46[0]);
    }

LABEL_13:
    v32 = sub_1BC8F6D14();
    if (!v32)
    {
      goto LABEL_20;
    }

    v33 = v32;
    sub_1BC8F7C24();
    sub_1BC8F8544();
    if (!*(v33 + 16) || (v34 = sub_1BC83C8E8(), (v35 & 1) == 0))
    {

      sub_1BC8037DC(v46);
LABEL_20:
      v47 = 0u;
      v48 = 0u;
LABEL_21:
      sub_1BC7F1790(&v47, &unk_1EBCF5E50, &qword_1BC8FE850);
      goto LABEL_22;
    }

    sub_1BC7ABB48(*(v33 + 56) + 32 * v34, &v47);
    sub_1BC8037DC(v46);

    if (!*(&v48 + 1))
    {
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5010, &qword_1BC8FC7B0);
    if (swift_dynamicCast())
    {
      sub_1BC7F3C50(v46[0]);
    }

LABEL_22:
    v36 = v50;
    if (*(v50 + 16))
    {
      v37 = v2[2];
      if (v37)
      {
        v38 = v2[3];

        v37(v36);
        sub_1BC7BE108(v37);
      }
    }

    v39 = v49;
    if (*(v49 + 16))
    {
      v40 = v2[6];
      if (v40)
      {
        v41 = v2[7];

        v40(v39, 0);
        sub_1BC7BE108(v40);
      }
    }

    (*v27)(v1, v5);
    v25 += v44;
    --v22;
  }

  while (v22);

LABEL_30:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8D8208()
{
  v1 = *(v0 + 24);
  sub_1BC7BE108(*(v0 + 16));
  v2 = *(v0 + 40);
  sub_1BC7BE108(*(v0 + 32));
  v3 = *(v0 + 56);
  sub_1BC7BE108(*(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v4 = *(v0 + 120);

  return v0;
}

uint64_t sub_1BC8D8250()
{
  sub_1BC8D8208();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1BC8D82A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_1BC7BE108(v4);
}

uint64_t sub_1BC8D82C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 56);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return sub_1BC7BE108(v4);
}

uint64_t sub_1BC8D82D8()
{
  v1 = *(sub_1BC8F6D24() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC8D7944(v0 + v2, v3);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8D83A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BC909B90;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BC8D840C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC0E8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BC8D8478(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BC8D8478(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1BC8F8A44();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
        v6 = sub_1BC8F7EB4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BC8D87D0(v7, v8, a1, v4);
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
    return sub_1BC8D857C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BC8D857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_1BC8F71E4();
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v39);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v15 = &v27 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = (v13 + 8);
    v32 = *a4;
    v17 = v32 + 40 * a3;
    v18 = a1 - a3;
    while (2)
    {
      v30 = v17;
      v31 = a3;
      v29 = v18;
      do
      {
        sub_1BC7A792C(v17, &v36);
        sub_1BC7A792C(v17 - 40, v33);
        v19 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, v37);
        (*(v20 + 40))(v19, v20);
        v21 = v34;
        v22 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v22 + 40))(v21, v22);
        LOBYTE(v21) = sub_1BC8F7184();
        v23 = *v16;
        v24 = v39;
        (*v16)(v11, v39);
        v23(v15, v24);
        __swift_destroy_boxed_opaque_existential_1(v33);
        result = __swift_destroy_boxed_opaque_existential_1(&v36);
        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return result;
        }

        sub_1BC7CF5EC(v17, &v36);
        v25 = *(v17 - 24);
        *v17 = *(v17 - 40);
        *(v17 + 16) = v25;
        *(v17 + 32) = *(v17 - 8);
        result = sub_1BC7CF5EC(&v36, v17 - 40);
        v17 -= 40;
      }

      while (!__CFADD__(v18++, 1));
      a3 = v31 + 1;
      v17 = v30 + 40;
      v18 = v29 - 1;
      if (v31 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BC8D87D0(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v114 = a1;
  v131 = sub_1BC8F71E4();
  v6 = *(*(v131 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v131);
  v124 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v110 - v10;
  v118 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v131 = *v114;
    if (!v131)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_94;
    }

    goto LABEL_129;
  }

  v111 = a4;
  v12 = 0;
  v122 = (v9 + 8);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12++;
    if (v12 < v11)
    {
      v15 = *v118;
      sub_1BC7A792C(&(*v118)[40 * v12], &v128);
      sub_1BC7A792C(&v15[40 * v14], v125);
      v16 = v120;
      LODWORD(v121) = sub_1BC8D70A0(&v128, v125);
      v120 = v16;
      if (v16)
      {
        __swift_destroy_boxed_opaque_existential_1(v125);
        __swift_destroy_boxed_opaque_existential_1(&v128);
LABEL_104:

        return;
      }

      v112 = v13;
      __swift_destroy_boxed_opaque_existential_1(v125);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v117 = 40 * v14;
      v13 = &v15[40 * v14 + 80];
      v113 = v14;
      v17 = v14 + 2;
      while (1)
      {
        v18 = v17;
        v19 = v12 + 1;
        if (v19 >= v11)
        {
          break;
        }

        sub_1BC7A792C(v13, &v128);
        sub_1BC7A792C((v13 - 40), v125);
        v119 = v19;
        v20 = v11;
        v21 = v129;
        v22 = v130;
        __swift_project_boxed_opaque_existential_1(&v128, v129);
        v23 = v123;
        (*(v22 + 40))(v21, v22);
        v24 = v126;
        v25 = v127;
        __swift_project_boxed_opaque_existential_1(v125, v126);
        v26 = v124;
        (*(v25 + 40))(v24, v25);
        v27 = sub_1BC8F7184() & 1;
        v28 = *v122;
        v29 = v131;
        (*v122)(v26, v131);
        v30 = v29;
        v11 = v20;
        v12 = v119;
        v28(v23, v30);
        __swift_destroy_boxed_opaque_existential_1(v125);
        __swift_destroy_boxed_opaque_existential_1(&v128);
        v13 += 40;
        v17 = v18 + 1;
        if ((v121 & 1) != v27)
        {
          goto LABEL_10;
        }
      }

      v12 = v11;
LABEL_10:
      if (v121)
      {
        if (v12 < v113)
        {
          goto LABEL_128;
        }

        if (v113 >= v12)
        {
          v13 = v112;
          v14 = v113;
          goto LABEL_23;
        }

        if (v11 >= v18)
        {
          v31 = v18;
        }

        else
        {
          v31 = v11;
        }

        v32 = 40 * v31 - 40;
        v33 = v12;
        v34 = v113;
        v35 = v117;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v118;
            if (!*v118)
            {
              goto LABEL_133;
            }

            v37 = &v36[v35];
            v38 = &v36[v32];
            v39 = v35;
            sub_1BC7CF5EC(&v36[v35], &v128);
            v40 = *(v38 + 32);
            v41 = *(v38 + 16);
            *v37 = *v38;
            *(v37 + 1) = v41;
            *(v37 + 4) = v40;
            sub_1BC7CF5EC(&v128, v38);
            v35 = v39;
          }

          ++v34;
          v32 -= 40;
          v35 += 40;
        }

        while (v34 < v33);
      }

      v13 = v112;
      v14 = v113;
    }

LABEL_23:
    v42 = v118[1];
    if (v12 < v42)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_125;
      }

      if (v12 - v14 < v111)
      {
        break;
      }
    }

LABEL_39:
    if (v12 < v14)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = *(v13 + 2);
      sub_1BC7F6FCC();
      v13 = v100;
    }

    v57 = *(v13 + 2);
    v58 = v57 + 1;
    if (v57 >= *(v13 + 3) >> 1)
    {
      sub_1BC7F6FCC();
      v13 = v101;
    }

    *(v13 + 2) = v58;
    v59 = v13 + 32;
    v60 = &v13[16 * v57 + 32];
    *v60 = v14;
    *(v60 + 1) = v12;
    v121 = *v114;
    if (!v121)
    {
      goto LABEL_134;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = &v59[16 * v58 - 16];
        v63 = &v13[16 * v58];
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(v13 + 4);
          v65 = *(v13 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_111;
          }

          v79 = *v63;
          v78 = *(v63 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_114;
          }

          v83 = *(v62 + 1);
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_119;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v58 < 2)
        {
          goto LABEL_113;
        }

        v86 = *v63;
        v85 = *(v63 + 1);
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_74:
        if (v82)
        {
          goto LABEL_116;
        }

        v88 = *v62;
        v87 = *(v62 + 1);
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v89 < v81)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v61 - 1 >= v58)
        {
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
          goto LABEL_127;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v93 = v13;
        v94 = &v59[16 * v61 - 16];
        v95 = *v94;
        v13 = &v59[16 * v61];
        v96 = *(v13 + 1);
        v97 = v120;
        sub_1BC8D90B4(&(*v118)[40 * *v94], &(*v118)[40 * *v13], &(*v118)[40 * v96], v121);
        v120 = v97;
        if (v97)
        {
          goto LABEL_104;
        }

        if (v96 < v95)
        {
          goto LABEL_106;
        }

        v98 = *(v93 + 2);
        if (v61 > v98)
        {
          goto LABEL_107;
        }

        *v94 = v95;
        *(v94 + 1) = v96;
        if (v61 >= v98)
        {
          goto LABEL_108;
        }

        v58 = v98 - 1;
        memmove(&v59[16 * v61], v13 + 16, 16 * (v98 - 1 - v61));
        v13 = v93;
        *(v93 + 2) = v98 - 1;
        if (v98 <= 2)
        {
          goto LABEL_88;
        }
      }

      v68 = &v59[16 * v58];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = *(v63 + 1);
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = *(v62 + 1);
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v11 = v118[1];
    if (v12 >= v11)
    {
      goto LABEL_92;
    }
  }

  v43 = (v14 + v111);
  if (__OFADD__(v14, v111))
  {
    goto LABEL_126;
  }

  if (v43 >= v42)
  {
    v43 = v118[1];
  }

  if (v43 < v14)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v13 = sub_1BC8D94F4(v13);
LABEL_94:
    v102 = v13 + 16;
    v103 = *(v13 + 2);
    while (v103 >= 2)
    {
      if (!*v118)
      {
        goto LABEL_132;
      }

      v104 = v13;
      v105 = &v13[16 * v103];
      v106 = *v105;
      v13 = &v102[2 * v103];
      v107 = *(v13 + 1);
      v108 = v120;
      sub_1BC8D90B4(&(*v118)[40 * *v105], &(*v118)[40 * *v13], &(*v118)[40 * v107], v131);
      v120 = v108;
      if (v108)
      {
        break;
      }

      if (v107 < v106)
      {
        goto LABEL_120;
      }

      if (v103 - 2 >= *v102)
      {
        goto LABEL_121;
      }

      *v105 = v106;
      *(v105 + 1) = v107;
      v109 = *v102 - v103;
      if (*v102 < v103)
      {
        goto LABEL_122;
      }

      v103 = *v102 - 1;
      memmove(v13, v13 + 16, 16 * v109);
      *v102 = v103;
      v13 = v104;
    }

    goto LABEL_104;
  }

  if (v12 == v43)
  {
    goto LABEL_39;
  }

  v112 = v13;
  v121 = *v118;
  v44 = &v121[40 * v12];
  v113 = v14;
  v45 = v14 - v12;
  v115 = v43;
LABEL_32:
  v119 = v12;
  v116 = v45;
  v117 = v44;
  while (1)
  {
    sub_1BC7A792C(v44, &v128);
    sub_1BC7A792C((v44 - 40), v125);
    v46 = v129;
    v47 = v130;
    __swift_project_boxed_opaque_existential_1(&v128, v129);
    v48 = v123;
    (*(v47 + 40))(v46, v47);
    v49 = v126;
    v50 = v127;
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v51 = v124;
    (*(v50 + 40))(v49, v50);
    v52 = sub_1BC8F7184();
    v53 = *v122;
    v54 = v131;
    (*v122)(v51, v131);
    v53(v48, v54);
    __swift_destroy_boxed_opaque_existential_1(v125);
    __swift_destroy_boxed_opaque_existential_1(&v128);
    if ((v52 & 1) == 0)
    {
LABEL_37:
      v12 = v119 + 1;
      v44 = (v117 + 40);
      v45 = v116 - 1;
      if (v119 + 1 == v115)
      {
        v12 = v115;
        v13 = v112;
        v14 = v113;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v121)
    {
      break;
    }

    sub_1BC7CF5EC(v44, &v128);
    v55 = *(v44 - 24);
    *v44 = *(v44 - 40);
    *(v44 + 1) = v55;
    *(v44 + 4) = *(v44 - 1);
    sub_1BC7CF5EC(&v128, (v44 - 40));
    v44 -= 40;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_37;
    }
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
}

uint64_t sub_1BC8D90B4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v58 = sub_1BC8F71E4();
  v8 = *(*(v58 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  v13 = (a2 - a1) / 40;
  v56 = (v14 + 8);
  v15 = (a3 - a2) / 40;
  if (v13 < v15)
  {
    sub_1BC7DD7EC(a1, (a2 - a1) / 40, a4);
    v65 = &a4[40 * v13];
    while (1)
    {
      if (a4 >= v65 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v17 = a3;
      sub_1BC7A792C(a2, v62);
      sub_1BC7A792C(a4, v59);
      v18 = v63;
      v19 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v19 + 40))(v18, v19);
      v20 = v60;
      v21 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v22 = v57;
      (*(v21 + 40))(v20, v21);
      LOBYTE(v20) = sub_1BC8F7184();
      v23 = *v56;
      v24 = v22;
      v25 = v58;
      (*v56)(v24, v58);
      v23(v12, v25);
      __swift_destroy_boxed_opaque_existential_1(v59);
      __swift_destroy_boxed_opaque_existential_1(v62);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v26 = a2;
      v27 = a1 == a2;
      a2 += 40;
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 += 40;
      a3 = v17;
    }

    v26 = a4;
    v27 = a1 == a4;
    a4 += 40;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    v28 = *v26;
    v29 = *(v26 + 1);
    *(a1 + 4) = *(v26 + 4);
    *a1 = v28;
    *(a1 + 1) = v29;
    goto LABEL_13;
  }

  sub_1BC7DD7EC(a2, (a3 - a2) / 40, a4);
  v30 = &a4[40 * v15];
  v53 = a4;
  v54 = a1;
LABEL_15:
  v31 = (a2 - 40);
  a3 -= 40;
  v32 = (v30 - 40);
  v55 = a2;
  while (1)
  {
    v65 = (v32 + 40);
    if (v32 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    sub_1BC7A792C(v32, v62);
    v34 = v31;
    sub_1BC7A792C(v31, v59);
    v36 = v63;
    v35 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(v35 + 40))(v36, v35);
    v37 = v60;
    v38 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v39 = v12;
    v40 = v57;
    (*(v38 + 40))(v37, v38);
    v41 = sub_1BC8F7184();
    v42 = *v56;
    v43 = v40;
    v12 = v39;
    v44 = v58;
    (*v56)(v43, v58);
    v42(v39, v44);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v62);
    if (v41)
    {
      v30 = (v32 + 40);
      a1 = v54;
      a2 = v34;
      a4 = v53;
      if ((a3 + 40) != v55)
      {
        v47 = *v34;
        v48 = *(v34 + 16);
        *(a3 + 32) = *(v34 + 32);
        *a3 = v47;
        *(a3 + 16) = v48;
        a2 = v34;
      }

      goto LABEL_15;
    }

    if (v65 != (a3 + 40))
    {
      v45 = *v32;
      v46 = *(v32 + 16);
      *(a3 + 32) = *(v32 + 32);
      *a3 = v45;
      *(a3 + 16) = v46;
    }

    a3 -= 40;
    v32 -= 40;
    a4 = v53;
    a1 = v54;
    a2 = v55;
    v31 = v34;
  }

LABEL_28:
  v49 = (v65 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v49])
  {
    memmove(a2, a4, 40 * v49);
  }

  return 1;
}

char *sub_1BC8D950C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1BC8D9538(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5668, &qword_1BC900B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}