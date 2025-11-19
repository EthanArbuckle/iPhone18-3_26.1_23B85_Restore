void sub_1DC414664()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC51737C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v53 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v52 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC5173CC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v49 = v17 - v16;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC516F7C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_1DC28D414();
  (*(v21 + 16))(v26, v27, v18);
  v28 = v3;
  v29 = sub_1DC516F6C();
  v30 = sub_1DC517B9C();

  if (os_log_type_enabled(v29, v30))
  {
    v48 = v4;
    v31 = OUTLINED_FUNCTION_63();
    v46 = OUTLINED_FUNCTION_82();
    v54 = v46;
    *v31 = 136315138;
    sub_1DC5138DC();
    v47 = v1;
    v32 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x78);
    v56 = sub_1DC5137CC();
    OUTLINED_FUNCTION_34_16();
    v57 = sub_1DC2C9418(v33, v34);
    __swift_allocate_boxed_opaque_existential_1(v55);
    v32();
    v35 = sub_1DC5138CC();
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v38 = sub_1DC291244(v35, v37, &v54);
    v1 = v47;

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1DC287000, v29, v30, "Handling nluResponse: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    OUTLINED_FUNCTION_66();
    v4 = v48;
    OUTLINED_FUNCTION_66();
  }

  (*(v21 + 8))(v26, v18);
  v39 = sub_1DC5169AC();
  v40 = swift_allocObject();
  *(v40 + 16) = v1;
  *(v40 + 24) = v28;
  v57 = sub_1DC416360;
  v58 = v40;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_27_17(COERCE_DOUBLE(1107296256));
  v55[2] = v41;
  v56 = &block_descriptor_13;
  v42 = _Block_copy(v55);
  v43 = v28;

  sub_1DC51739C();
  v54 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_32_15();
  sub_1DC2C9418(v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  sub_1DC517E9C();
  MEMORY[0x1E12964B0](0, v49, v52, v42);
  _Block_release(v42);

  (*(v53 + 8))(v52, v4);
  (*(v50 + 8))(v49, v51);

  OUTLINED_FUNCTION_34();
}

void sub_1DC414AB4()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_70_11();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v7 + qword_1ECC8F590 + 208))())
  {
    sub_1DC28D414();
    v8 = OUTLINED_FUNCTION_21_1(v4);
    v9(v8);
    v10 = v0;
    v11 = sub_1DC516F6C();
    v12 = sub_1DC517B9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_63();
      v26 = OUTLINED_FUNCTION_82();
      v27 = v26;
      *v13 = 136315138;
      sub_1DC5138DC();
      v14 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x78);
      v29 = sub_1DC5137CC();
      OUTLINED_FUNCTION_34_16();
      v30 = sub_1DC2C9418(v15, v16);
      __swift_allocate_boxed_opaque_existential_1(v28);
      v14();
      v17 = sub_1DC5138CC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v20 = sub_1DC291244(v17, v19, &v27);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_1DC287000, v11, v12, "Request is cancelled, ignoring nluResponse: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_67();
    }

    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_36();
    v23(v22);
  }

  else
  {
    sub_1DC415484();
    v24 = v29;
    if (v29)
    {
      v25 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v25 + 24))(v0, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else
    {
      sub_1DC28EB30(v28, &qword_1ECC7D950, qword_1DC52A118);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC414D68()
{
  OUTLINED_FUNCTION_33();
  v30 = v3;
  v5 = v4;
  v6 = sub_1DC51737C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v34 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v11 = sub_1DC5173CC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v32 = v13;
  v33 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v16 = sub_1DC51373C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v31 = sub_1DC5169AC();
  (*(v19 + 16))(&v29[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)], v5, v16);
  v22 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  (*(v19 + 32))(v23 + v22, &v29[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
  *(v23 + v22 + v21) = v30;
  v36[4] = sub_1DC4163C8;
  v36[5] = v23;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_27_17(COERCE_DOUBLE(1107296256));
  v36[2] = v24;
  v36[3] = &block_descriptor_7;
  v25 = _Block_copy(v36);

  sub_1DC51739C();
  v35 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_32_15();
  sub_1DC2C9418(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  sub_1DC517E9C();
  v28 = v31;
  MEMORY[0x1E12964B0](0, v2, v1, v25);
  _Block_release(v25);

  (*(v34 + 8))(v1, v6);
  (*(v32 + 8))(v2, v33);

  OUTLINED_FUNCTION_34();
}

void sub_1DC415060()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DC51110C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v42 = v7;
  v43 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC51373C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v19 = sub_1DC516F7C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v25 + qword_1ECC8F590 + 208))())
  {
    sub_1DC28D414();
    v26 = OUTLINED_FUNCTION_21_1(v22);
    v27(v26);
    (*(v16 + 16))(v0, v4, v13);
    v28 = sub_1DC516F6C();
    v29 = sub_1DC517B9C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_63();
      v41 = OUTLINED_FUNCTION_82();
      v44[0] = v41;
      *v30 = 136315138;
      v40 = v29;
      sub_1DC51370C();
      v39 = sub_1DC5110DC();
      v32 = v31;
      (*(v42 + 8))(v12, v43);
      (*(v16 + 8))(v0, v13);
      v33 = sub_1DC291244(v39, v32, v44);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_1DC287000, v28, v40, "Request is cancelled, not processing CDMSetupFailure for nluRequestId: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      (*(v16 + 8))(v0, v13);
    }

    v36 = *(v22 + 8);
    v37 = OUTLINED_FUNCTION_36();
    v38(v37);
  }

  else
  {
    sub_1DC415484();
    v34 = v45;
    if (v45)
    {
      v35 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      (*(v35 + 8))(v4, v2, v34, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
    }

    else
    {
      sub_1DC28EB30(v44, &qword_1ECC7D950, qword_1DC52A118);
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC4153D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC415484();
  v6 = v10;
  if (!v10)
  {
    return sub_1DC28EB30(v9, &qword_1ECC7D950, qword_1DC52A118);
  }

  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 16))(a1, a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_1DC415484()
{
  OUTLINED_FUNCTION_33();
  v75 = v2;
  v3 = sub_1DC515E1C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v72 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v71 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v73 = v12;
  v74 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  OUTLINED_FUNCTION_38_1();
  v27 = *(v26 + qword_1ECC8F590 + 160);
  v27();
  if (OUTLINED_FUNCTION_69_0(v25) == 1)
  {
LABEL_2:
    sub_1DC28EB30(v25, &unk_1ECC7D340, &qword_1DC525380);
    v28 = sub_1DC28D414();
    v29 = v73;
    v30 = v74;
    (*(v73 + 16))(v1, v28, v74);

    v31 = sub_1DC516F6C();
    v32 = sub_1DC517BAC();

    if (os_log_type_enabled(v31, v32))
    {
      v70 = v32;
      v33 = OUTLINED_FUNCTION_63();
      v69 = OUTLINED_FUNCTION_82();
      v76 = v69;
      *v33 = 136315138;
      v27();
      if (OUTLINED_FUNCTION_69_0(v21))
      {
        sub_1DC28EB30(v21, &unk_1ECC7D340, &qword_1DC525380);
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        v61 = v71;
        v60 = v72;
        (*(v72 + 16))(v71, v21, v3);
        sub_1DC28EB30(v21, &unk_1ECC7D340, &qword_1DC525380);
        v34 = sub_1DC515E0C();
        v35 = v62;
        (*(v60 + 8))(v61, v3);
      }

      v63 = v73;
      v64 = sub_1DC291244(v34, v35, &v76);

      *(v33 + 4) = v64;
      _os_log_impl(&dword_1DC287000, v31, v70, "requestType %s should not receive CDM callback", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_54_12();

      (*(v63 + 8))(v1, v74);
    }

    else
    {

      (*(v29 + 8))(v1, v30);
    }

    goto LABEL_37;
  }

  v36 = OUTLINED_FUNCTION_117_0();
  sub_1DC28F308(v36, v37, v38, v39);
  v40 = *(v72 + 88);
  v41 = OUTLINED_FUNCTION_115();
  v43 = v42(v41);
  if (v43 != *MEMORY[0x1E69D0548] && v43 != *MEMORY[0x1E69D0530] && v43 != *MEMORY[0x1E69D0510] && v43 != *MEMORY[0x1E69D0508])
  {
    if (v43 == *MEMORY[0x1E69D0538] || v43 == *MEMORY[0x1E69D0528] || v43 == *MEMORY[0x1E69D0558] || v43 == *MEMORY[0x1E69D0540] || v43 == *MEMORY[0x1E69D0560])
    {
      goto LABEL_2;
    }

    if (v43 == *MEMORY[0x1E69D0518])
    {
      v56 = (*(*v0 + qword_1ECC8F590 + 256))();
      v57 = v56;
      if (v56)
      {
        v56 = type metadata accessor for DictationNLRequestHandler();
        v58 = &off_1F57FF3F0;
        v59 = v75;
      }

      else
      {
        v58 = 0;
        v59 = v75;
        v75[1] = 0;
        v59[2] = 0;
      }

      *v59 = v57;
      v59[3] = v56;
      v59[4] = v58;
      sub_1DC28EB30(v25, &unk_1ECC7D340, &qword_1DC525380);
      goto LABEL_38;
    }

    if (v43 != *MEMORY[0x1E69D0550])
    {
      v66 = *(v72 + 8);
      v67 = OUTLINED_FUNCTION_115();
      v68(v67);
      goto LABEL_2;
    }
  }

  v47 = sub_1DC28EB30(v25, &unk_1ECC7D340, &qword_1DC525380);
  v48 = (*(*v0 + qword_1ECC8F590 + 232))(v47);
  if (!v48)
  {
LABEL_37:
    v65 = v75;
    v75[4] = 0;
    *v65 = 0u;
    *(v65 + 1) = 0u;
    goto LABEL_38;
  }

  v49 = v48;
  v50 = type metadata accessor for AssistantNLRequestHandler(0);
  v51 = v75;
  v75[3] = v50;
  v51[4] = &off_1F57FB588;
  *v51 = v49;
LABEL_38:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC415AE0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC7BCF0));
  sub_1DC28EB30(v0 + qword_1ECC8F5E0, &unk_1ECC7D340, &qword_1DC525380);
  sub_1DC28EB30(v0 + qword_1ECC8F5C8, &qword_1ECC7D948, &unk_1DC52A108);
  v1 = *(v0 + qword_1ECC8F5B0);

  v2 = *(v0 + qword_1ECC8F5A8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F5D8));
  v3 = *(v0 + qword_1EDAC95A0);

  v4 = qword_1ECC8F5D0;
  v5 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + qword_1ECC8F5E8);

  v8 = *(v0 + qword_1EDAC95B0 + 8);

  v9 = *(v0 + qword_1ECC8F5A0);

  v10 = *(v0 + qword_1ECC8F5F8);

  v11 = *(v0 + qword_1ECC8F5F0);
}

uint64_t sub_1DC4163C8()
{
  v1 = *(sub_1DC51373C() - 8);
  v2 = *(v1 + 80);
  return (*(**(v0 + 16) + qword_1ECC8F590 + 600))(v0 + ((v2 + 24) & ~v2), *(v0 + ((v2 + 24) & ~v2) + *(v1 + 64)));
}

void sub_1DC41648C()
{
  sub_1DC416628(319, &qword_1ECC7BB38, MEMORY[0x1E69D0568]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1DC416628(319, &qword_1ECC7BB30, MEMORY[0x1E69D06D8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1DC5162DC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1DC416628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DC416690()
{
  OUTLINED_FUNCTION_6_28();
  v0 = *(MEMORY[0x1E6985F80] + 4);
  v6 = (*MEMORY[0x1E6985F80] + MEMORY[0x1E6985F80]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_0(v1);
  *v2 = v3;
  v2[1] = sub_1DC29F200;
  v4 = OUTLINED_FUNCTION_16();

  return v6(v4);
}

uint64_t sub_1DC41674C(uint64_t a1)
{
  v2 = sub_1DC51588C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v13 = sub_1DC5157EC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, v13);
  v21 = *(v16 + 88);
  v22 = OUTLINED_FUNCTION_16();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x1E69D02D0])
  {
    v25 = *(v16 + 8);
    v26 = OUTLINED_FUNCTION_16();
    v27(v26);
    return 1;
  }

  else if (v24 == *MEMORY[0x1E69D02C8])
  {
    v29 = *(v16 + 96);
    v30 = OUTLINED_FUNCTION_16();
    result = v31(v30);
    v32 = 0;
    v33 = *v20;
    v34 = *(*v20 + 16);
    v51 = v5 + 16;
    v52 = v34;
    v35 = *MEMORY[0x1E69D0330];
    v36 = (v5 + 8);
    while (1)
    {
      if (v52 == v32)
      {

        return 0;
      }

      if (v32 >= *(v33 + 16))
      {
        break;
      }

      (*(v5 + 16))(v12, v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, v2);
      (*(v5 + 32))(v10, v12, v2);
      v37 = *(v5 + 88);
      v38 = OUTLINED_FUNCTION_36();
      if (v39(v38) == v35)
      {

        v48 = *v36;
        v49 = OUTLINED_FUNCTION_36();
        v50(v49);
        return 1;
      }

      ++v32;
      v40 = *v36;
      v41 = OUTLINED_FUNCTION_36();
      result = v42(v41);
    }

    __break(1u);
  }

  else
  {
    if (v24 == *MEMORY[0x1E69D02E0] || (v24 != *MEMORY[0x1E69D02D8] ? (v43 = v24 == *MEMORY[0x1E69D02F8]) : (v43 = 1), !v43 ? (v44 = v24 == *MEMORY[0x1E69D02F0]) : (v44 = 1), !v44))
    {
      v45 = *(v16 + 8);
      v46 = OUTLINED_FUNCTION_16();
      v47(v46);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DC416A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC416A94()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0[6]) + 0x68))(v0[3]))
  {
    v2 = v0[6];
    sub_1DC517B8C();
    v0[7] = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v3 = sub_1DC296DBC();
    sub_1DC516F0C();

    v4 = *((*v1 & *v2) + 0x78);
    v14 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1DC416CC4;
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];

    return v14(v9, v7);
  }

  else
  {
    v11 = v0[2];
    v12 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    OUTLINED_FUNCTION_2_2();

    return v13();
  }
}

uint64_t sub_1DC416CC4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1DC416E24;
  }

  else
  {
    v7 = sub_1DC416DC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DC416DC8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  sub_1DC41744C(*(v0 + 16));
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC416E24()
{
  v1 = v0[7];
  v2 = sub_1DC517BAC();
  v3 = sub_1DC296DBC();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DC287000, v3, v2, "Error emitting experiment trigger logging: %@; bypassing experiment", v6, 0xCu);
    sub_1DC3040B4(v7);
    MEMORY[0x1E1298840](v7, -1, -1);
    MEMORY[0x1E1298840](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = sub_1DC5157EC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  OUTLINED_FUNCTION_2_2();

  return v12();
}

uint64_t sub_1DC416F78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC416F90()
{
  sub_1DC298C74(0, &qword_1ECC7B928, 0x1E696AFB0);
  v1 = sub_1DC4173D8();
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[2];
    v3 = v0[3];

    v5 = sub_1DC4173D8();
    v0[6] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = (v0[4] + OBJC_IVAR___NLRouterExperimentTrialController_experimentationAnalyticsManager);
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      OUTLINED_FUNCTION_10_26(v9);
      v17 = (v10 + *v10);
      v12 = *(v11 + 4);
      v13 = swift_task_alloc();
      v0[7] = v13;
      *v13 = v0;
      v13[1] = sub_1DC417214;

      return v17(v2, 0xD00000000000001CLL, 0x80000001DC547140, v6, v8, v9);
    }
  }

  sub_1DC517BAC();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v15 = sub_1DC296DBC();
  sub_1DC516F0C();

  sub_1DC41783C();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_2_2();

  return v16();
}

uint64_t sub_1DC417214()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1DC417378;
  }

  else
  {
    v7 = sub_1DC417318;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DC417318()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC417378()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_2_2();

  return v3();
}

id sub_1DC4173D8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DC5176FC();

  v2 = [v0 initWithUUIDString_];

  return v2;
}

uint64_t sub_1DC41744C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR___NLRouterExperimentTrialController_suppressRewrite) == 1)
  {
    v3 = *MEMORY[0x1E69D02D8];
    v4 = sub_1DC5157EC();
    (*(*(v4 - 8) + 104))(a1, v3, v4);
    v5 = a1;
    v6 = 0;
    v7 = v4;
  }

  else
  {
    v7 = sub_1DC5157EC();
    v5 = a1;
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
}

id NLRouterExperimentTrialController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterExperimentTrialController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC4175C4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0x78);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  v4[1] = sub_1DC29F120;
  v6 = OUTLINED_FUNCTION_36();

  return v8(v6);
}

uint64_t sub_1DC4176F8()
{
  OUTLINED_FUNCTION_6_28();
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33_0(v7);
  *v8 = v9;
  v8[1] = sub_1DC29F120;

  return v11(v4, v3, v2, v0);
}

unint64_t sub_1DC41783C()
{
  result = qword_1ECC7D968;
  if (!qword_1ECC7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D968);
  }

  return result;
}

unint64_t sub_1DC417894()
{
  result = qword_1ECC7D970;
  if (!qword_1ECC7D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterExperimentTrialController.ExperimentError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC4179AC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1DC346A1C(0xD000000000000012, 0x80000001DC53E160);
  if (!result)
  {
    result = sub_1DC51801C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC417A58()
{
  if (_MergedGlobals_19 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  swift_beginAccess();
  v3[0] = xmmword_1EDAC95C0;
  v3[1] = *&byte_1EDAC95D0;
  v3[2] = xmmword_1EDAC95E0;
  v4 = qword_1EDAC95F0;
  sub_1DC417FF0(v3, &v2, &qword_1ECC7D978, &qword_1DC52A348);
  v0 = sub_1DC417B1C();
  sub_1DC2BE530(v3, &qword_1ECC7D978, &qword_1DC52A348);
  return v0 & 1;
}

uint64_t sub_1DC417B1C()
{
  v1 = *(v0 + 48);
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = sub_1DC5176FC();
  v5 = [v1 objectForKey_];

  if (v5)
  {
    sub_1DC517E8C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v31[0] = v28;
  v31[1] = v29;
  v6 = sub_1DC517BBC();
  v7 = *(v0 + 24);
  sub_1DC417FF0(v31, v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (os_log_type_enabled(v7, v6))
  {
    sub_1DC417FF0(v0, &v28, &qword_1ECC7D978, &qword_1DC52A348);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315650;
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);

    v12 = sub_1DC291244(v11, v10, &v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;

    sub_1DC2BE530(v0, &qword_1ECC7D978, &qword_1DC52A348);
    v13 = sub_1DC291244(v3, v2, &v27);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    sub_1DC417FF0(v30, &v28, &qword_1ECC7D3F0, &qword_1DC5238B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
    v14 = sub_1DC51777C();
    v16 = v15;
    sub_1DC2BE530(v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v17 = sub_1DC291244(v14, v16, &v27);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_1DC287000, v7, v6, "defaults read %s %s -> %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1298840](v9, -1, -1);
    MEMORY[0x1E1298840](v8, -1, -1);
  }

  else
  {
    sub_1DC2BE530(v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  sub_1DC417FF0(v31, &v28, &qword_1ECC7D3F0, &qword_1DC5238B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  if (swift_dynamicCast())
  {
    sub_1DC2BE530(v31, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v18 = v30[0];
  }

  else
  {
    v19 = sub_1DC517BBC();
    v18 = *(v0 + 16);
    if (os_log_type_enabled(v7, v19))
    {
      sub_1DC417FF0(v0, &v28, &qword_1ECC7D978, &qword_1DC52A348);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v28 = v21;
      *v20 = 136315138;
      v30[0] = v18;
      v22 = sub_1DC51777C();
      v24 = v23;
      sub_1DC2BE530(v0, &qword_1ECC7D978, &qword_1DC52A348);
      v25 = sub_1DC291244(v22, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1DC287000, v7, v19, "value not set, returning default of %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E1298840](v21, -1, -1);
      MEMORY[0x1E1298840](v20, -1, -1);
    }

    sub_1DC2BE530(v31, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  return v18 & 1;
}

uint64_t sub_1DC417F44()
{
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v0 = sub_1DC2C0F8C();
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  result = sub_1DC4179AC();
  byte_1EDAC95D0 = 1;
  *&xmmword_1EDAC95C0 = 0xD000000000000014;
  *(&xmmword_1EDAC95C0 + 1) = 0x80000001DC5472D0;
  qword_1EDAC95D8 = v0;
  *&xmmword_1EDAC95E0 = 0xD000000000000012;
  *(&xmmword_1EDAC95E0 + 1) = 0x80000001DC53E160;
  qword_1EDAC95F0 = result;
  return result;
}

uint64_t sub_1DC417FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return a2;
}

uint64_t sub_1DC41806C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DC4181C4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (a1 + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_43();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

void *sub_1DC4183F4()
{
  v1 = OBJC_IVAR___CDMNluRequest_objcProto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC41849C(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequest_objcProto;
  OUTLINED_FUNCTION_142();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC4184EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

void sub_1DC418548(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1DC41849C(v2);
}

uint64_t sub_1DC4185CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DC51373C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1DC418718(v7);
}

uint64_t sub_1DC418698@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CDMNluRequest_swiftProto;
  swift_beginAccess();
  v4 = sub_1DC51373C();
  OUTLINED_FUNCTION_35(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC418718(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequest_swiftProto;
  swift_beginAccess();
  v4 = sub_1DC51373C();
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id CDMNluRequest.init(objcProto:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DC51670C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28[-v8];
  v10 = sub_1DC51373C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR___CDMNluRequest_objcProto;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x1E69D1150]) init];
  v16 = OBJC_IVAR___CDMNluRequest_swiftProto;
  sub_1DC51372C();
  OUTLINED_FUNCTION_142();
  v17 = *&v2[v15];
  *&v2[v15] = a1;
  v18 = a1;

  v19 = v18;
  v20 = sub_1DC30EB38(v19);
  if (v21 >> 60 == 15)
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v22 = sub_1DC2C0F8C();
    sub_1DC516F0C();
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v29 = 0;
    memset(&v28[16], 0, 32);
    sub_1DC2A6784(v20, v21);
    sub_1DC5166FC();
    sub_1DC4191A0();
    sub_1DC51677C();
    sub_1DC301FE0(v23, v24);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    swift_beginAccess();
    (*(v11 + 40))(&v2[v16], v14, v10);
    swift_endAccess();
  }

  v25 = type metadata accessor for CDMNluRequest();
  v30.receiver = v2;
  v30.super_class = v25;
  v26 = objc_msgSendSuper2(&v30, sel_init);

  return v26;
}

id CDMNluRequest.init(swiftProto:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CDMNluRequest_objcProto;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69D1150]) init];
  v5 = OBJC_IVAR___CDMNluRequest_swiftProto;
  sub_1DC51372C();
  swift_beginAccess();
  v6 = sub_1DC51373C();
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  sub_1DC4191A0();
  v9 = sub_1DC51678C();
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E69D1150]);
  v13 = sub_1DC339190(v9, v11);
  if (v13)
  {
    v14 = v13;
    OUTLINED_FUNCTION_142();
    v8 = *&v2[v4];
    *&v2[v4] = v14;
  }

  else
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v8 = sub_1DC2C0F8C();
    sub_1DC516F0C();
  }

  v17.receiver = v2;
  v17.super_class = type metadata accessor for CDMNluRequest();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v7 + 8))(a1, v6);
  return v15;
}

char *CDMNluRequest.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___CDMNluRequest_objcProto;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69D1150]) init];
  sub_1DC51372C();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CDMNluRequest();
  v4 = objc_msgSendSuper2(&v10, sel_init);
  sub_1DC298C74(0, &qword_1ECC7C4E0, 0x1E69D1150);
  v5 = v4;
  v6 = sub_1DC517D3C();

  v7 = OBJC_IVAR___CDMNluRequest_objcProto;
  OUTLINED_FUNCTION_142();
  v8 = *&v5[v7];
  *&v5[v7] = v6;

  return v5;
}

void sub_1DC418F1C(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))();
  v4 = sub_1DC5176FC();
  [a1 encodeObject:v3 forKey:v4];
}

id CDMNluRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMNluRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMNluRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CDMNluRequest()
{
  result = qword_1EDAC9640;
  if (!qword_1EDAC9640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC4191A0()
{
  result = qword_1EDAC8030;
  if (!qword_1EDAC8030)
  {
    sub_1DC51373C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC8030);
  }

  return result;
}

uint64_t sub_1DC4191F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC419268()
{
  result = sub_1DC51373C();
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

uint64_t sub_1DC4193F4()
{
  v0 = sub_1DC51808C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DC419450()
{
  result = qword_1ECC7D988;
  if (!qword_1ECC7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D988);
  }

  return result;
}

uint64_t sub_1DC4194A4(char a1, char a2)
{
  v3 = sub_1DC2A0C80(a1);
  v5 = v4;
  if (v3 == sub_1DC2A0C80(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC419530(char a1)
{
  sub_1DC5182FC();
  sub_1DC2A0C80(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC41959C(uint64_t a1, char a2)
{
  sub_1DC2A0C80(a2);
  sub_1DC51769C();
}

uint64_t sub_1DC4195F8(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC2A0C80(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC419658@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC4193F4();
  *a2 = result;
  return result;
}

unint64_t sub_1DC419688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DC2A0C80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NLInsightRequestSummaryMessageDescription(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC419790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v117 = sub_1DC510FDC();
  v3 = OUTLINED_FUNCTION_0(v117);
  v121 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v116 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v122 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v115 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v97 - v16;
  OUTLINED_FUNCTION_12();
  v118 = sub_1DC51164C();
  v17 = OUTLINED_FUNCTION_0(v118);
  v110 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v109 = sub_1DC51122C();
  v24 = OUTLINED_FUNCTION_0(v109);
  v113 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v108 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v97 - v36;
  v38 = OUTLINED_FUNCTION_12();
  v39 = type metadata accessor for NLRouterNLParseResponse(v38);
  v40 = OUTLINED_FUNCTION_35(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  v99 = (v44 - v43);
  OUTLINED_FUNCTION_12();
  v45 = sub_1DC516F5C();
  v46 = OUTLINED_FUNCTION_0(v45);
  v104 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v53 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v54 = sub_1DC2BE518();
  v55 = OUTLINED_FUNCTION_130();
  v103 = v52;
  v102 = v53;
  sub_1DC2A2ED0("HeuristicRules.TranslationRule", 30, 2, v54, v55 & 1, v52);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v56 = sub_1DC346280();
  v58 = v57;
  if (v56 == sub_1DC313520(1) && v58 == v59)
  {
  }

  else
  {
    v61 = sub_1DC51825C();

    if ((v61 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v62 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v101 + *(v62 + 32), v33, &qword_1ECC7C158, &unk_1DC5234A0);
  v63 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v63) == 1)
  {
    sub_1DC28EB30(v33, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v39);
LABEL_11:
    sub_1DC28EB30(v37, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_12:
    v64 = 1;
LABEL_13:
    v65 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(a2, v64, 1, v65);
    v66 = sub_1DC2BE518();
    v67 = v103;
    sub_1DC2B8848();

    return (*(v104 + 8))(v67, v45);
  }

  sub_1DC28F358(v33, v37, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v33, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v37, 1, v39) == 1)
  {
    goto LABEL_11;
  }

  v97 = v45;
  v98 = a2;
  v69 = v99;
  result = sub_1DC2E53A4(v37, v99);
  v70 = 0;
  v71 = *v69;
  v72 = v109;
  v124 = v110 + 16;
  v73 = *(v71 + 16);
  v106 = v113 + 16;
  v107 = v73;
  v123 = (v110 + 8);
  v114 = v121 + 8;
  v105 = (v113 + 8);
  v74 = v118;
  v75 = v108;
  v100 = v71;
  v119 = (v122 + 8);
  while (1)
  {
    if (v70 == v107)
    {
      OUTLINED_FUNCTION_3_16();
      v64 = 1;
      a2 = v98;
LABEL_31:
      v45 = v97;
      goto LABEL_13;
    }

    if (v70 >= *(v71 + 16))
    {
      break;
    }

    v76 = *(v113 + 80);
    OUTLINED_FUNCTION_24();
    (*(v78 + 16))(v75, v71 + v77 + *(v78 + 72) * v70, v72);
    v79 = sub_1DC5111AC();
    v80 = *(v79 + 16);
    if (v80)
    {
      v111 = v70;
      v112 = v79;
      v81 = *(v110 + 80);
      OUTLINED_FUNCTION_24();
      v84 = v82 + v83;
      v86 = *(v85 + 72);
      v87 = *(v85 + 16);
      v121 = v87;
      v122 = v86;
      while (1)
      {
        (v87)(v23, v84, v74);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_23;
        }

        v88 = v120;
        sub_1DC51154C();
        v89 = sub_1DC51177C();
        v90 = *v119;
        (*v119)(v88, v9);
        if ((v89 & 1) == 0)
        {
          break;
        }

        v91 = v115;
        sub_1DC51154C();
        sub_1DC51178C();
        v90(v91, v9);
        sub_1DC5138FC();
        v92 = OUTLINED_FUNCTION_8_23();
        v93(v92);
        v94 = sub_1DC41A028();

        v95 = v118;
        (*v123)(v23, v118);
        v74 = v95;
        v87 = v121;
        v86 = v122;
        if (v94)
        {

          (*v105)(v108, v109);
          v96 = v101 + *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
          a2 = v98;
          sub_1DC32CDF4();
          OUTLINED_FUNCTION_3_16();
          v64 = 0;
          goto LABEL_31;
        }

LABEL_24:
        v84 += v86;
        if (!--v80)
        {

          v75 = v108;
          v72 = v109;
          v70 = v111;
          v71 = v100;
          goto LABEL_29;
        }
      }

      v87 = v121;
      v86 = v122;
LABEL_23:
      (*v123)(v23, v74);
      goto LABEL_24;
    }

LABEL_29:
    ++v70;
    result = (*v105)(v75, v72);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC41A028()
{
  v1 = sub_1DC514ECC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v60 = v3;
  v61 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v59 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v68 = sub_1DC514E7C();
  v8 = OUTLINED_FUNCTION_0(v68);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v58 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_1DC514E3C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v63 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_15();
  v64 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  v65 = &v57 - v31;
  v62 = v0;
  result = sub_1DC514EEC();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v66 = (v20 + 8);
  v67 = (v10 + 8);
  while (1)
  {
    if (v35 == v34)
    {

      v44 = 1;
      v45 = v65;
      goto LABEL_13;
    }

    if (v34 >= *(v33 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v36 = *(v20 + 80);
    OUTLINED_FUNCTION_24();
    v38 = v17;
    (*(v20 + 16))(v26, v33 + v37 + *(v20 + 72) * v34, v17);
    sub_1DC514E0C();
    v39 = sub_1DC514E6C();
    v41 = v40;
    (*v67)(v16, v68);
    if (v39 == 1802723700 && v41 == 0xE400000000000000)
    {
      break;
    }

    v43 = sub_1DC51825C();

    if (v43)
    {
      goto LABEL_12;
    }

    v17 = v38;
    result = (*v66)(v26, v38);
    ++v34;
  }

LABEL_12:

  v45 = v65;
  v17 = v38;
  (*(v20 + 32))(v65, v26, v38);
  v44 = 0;
LABEL_13:
  v46 = v64;
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v17);
  sub_1DC28F358(v45, v46, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v46, 1, v17) == 1)
  {
    sub_1DC28EB30(v45, &qword_1ECC7C1A0, &qword_1DC522F80);
    v47 = 0;
    v45 = v46;
LABEL_18:
    sub_1DC28EB30(v45, &qword_1ECC7C1A0, &qword_1DC522F80);
    return v47 & 1;
  }

  (*(v20 + 32))(v63, v46, v17);
  v48 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v48 + 16))
  {
    v50 = v59;
    v49 = v60;
    v51 = *(v60 + 80);
    OUTLINED_FUNCTION_24();
    v54 = v17;
    v55 = v61;
    (*(v49 + 16))(v50, v48 + v52 + *(v49 + 72) * v53, v61);

    v56 = v58;
    sub_1DC514EBC();
    sub_1DC514E6C();
    (*v67)(v56, v68);
    v47 = sub_1DC51795C();

    (*(v49 + 8))(v50, v55);
    (*v66)(v63, v54);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC41A560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v99 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v3 = OUTLINED_FUNCTION_35(v99);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v91 = v7 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  v8 = OUTLINED_FUNCTION_35(v96);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v100 = v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v101 = v87 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v97 = v87 - v22;
  v23 = sub_1DC515EDC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v93 = v25;
  v94 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v105 = sub_1DC5157EC();
  v31 = OUTLINED_FUNCTION_0(v105);
  v95 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = sub_1DC515F3C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v92 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v46 = sub_1DC516F5C();
  v47 = OUTLINED_FUNCTION_0(v46);
  v103 = v48;
  v104 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v53 = v52 - v51;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v54 = sub_1DC2BE518();
  v55 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.FollowLastTurnRoutingDecisionRule", 48, 2, v54, v55 & 1, v53);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC344140() & 1) == 0)
  {
    sub_1DC517B9C();
    v71 = sub_1DC2BE518();
    sub_1DC516F0C();

    goto LABEL_22;
  }

  v56 = *(v102 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
  v57 = *(v56 + 16);
  if (!v57)
  {
LABEL_22:
    v70 = 1;
    goto LABEL_23;
  }

  v88 = v30;
  v89 = v15;
  v90 = a2;
  v58 = v56 + 48 * v57;
  v59 = *(v58 - 8);
  v60 = *(v58 + 8);
  v61 = *(v58 + 16);
  v62 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);

  if (!sub_1DC32DB10())
  {
LABEL_10:
    v72 = v89;
    sub_1DC2D8C78(v61, v89);

    v73 = type metadata accessor for TurnSummary(0);
    if (__swift_getEnumTagSinglePayload(v72, 1, v73) == 1)
    {
      sub_1DC28EB30(v72, &qword_1ECC7BFC0, &unk_1DC522540);
      v74 = v97;
      v75 = v99;
      __swift_storeEnumTagSinglePayload(v97, 1, 1, v99);
      a2 = v90;
    }

    else
    {
      v74 = v97;
      sub_1DC3E4F24(v72 + *(v73 + 28), v97);
      sub_1DC41AEC4(v72, type metadata accessor for TurnSummary);
      a2 = v90;
      v75 = v99;
    }

    v76 = v100;
    v77 = v98;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v79 = v101;
    __swift_storeEnumTagSinglePayload(v101, 2, 4, v78);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v75);
    v80 = *(v96 + 48);
    sub_1DC3E4F24(v74, v76);
    sub_1DC3E4F24(v79, v76 + v80);
    OUTLINED_FUNCTION_30_8(v76);
    if (v81)
    {
      OUTLINED_FUNCTION_14_4(v79);
      OUTLINED_FUNCTION_14_4(v74);
      OUTLINED_FUNCTION_30_8(v76 + v80);
      if (v81)
      {
        sub_1DC28EB30(v76, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_25:
        (*(v95 + 104))(a2, *MEMORY[0x1E69D02F8], v105);
        v70 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1DC3E4F24(v76, v77);
      OUTLINED_FUNCTION_30_8(v76 + v80);
      if (!v81)
      {
        v84 = v76 + v80;
        v85 = v91;
        sub_1DC41AE60(v84, v91);
        sub_1DC3AC3D0();
        v86 = sub_1DC5176CC();
        sub_1DC41AEC4(v85, type metadata accessor for TurnSummary.ExecutionSource);
        sub_1DC28EB30(v101, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC28EB30(v74, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC41AEC4(v77, type metadata accessor for TurnSummary.ExecutionSource);
        sub_1DC28EB30(v76, &qword_1ECC7BFC8, &unk_1DC524050);
        if (v86)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      OUTLINED_FUNCTION_14_4(v101);
      OUTLINED_FUNCTION_14_4(v74);
      sub_1DC41AEC4(v77, type metadata accessor for TurnSummary.ExecutionSource);
    }

    sub_1DC28EB30(v76, &qword_1ECC7BFB8, &unk_1DC52A4C0);
    goto LABEL_22;
  }

  v87[1] = v60;
  v87[2] = v59;
  v63 = v102 + v62;
  v64 = v95;
  v65 = v105;
  (*(v95 + 16))(v37, v63, v105);
  if ((*(v64 + 88))(v37, v65) != *MEMORY[0x1E69D02E0])
  {
    (*(v64 + 8))(v37, v65);
    goto LABEL_10;
  }

  (*(v64 + 96))(v37, v65);
  v66 = v92;
  (*(v92 + 32))(v45, v37, v38);
  v67 = v88;
  sub_1DC515EFC();
  (*(v66 + 8))(v45, v38);
  v69 = v93;
  v68 = v94;
  if ((*(v93 + 88))(v67, v94) != *MEMORY[0x1E69D0600])
  {
    (*(v69 + 8))(v67, v68);
    goto LABEL_10;
  }

  (*(v69 + 8))(v67, v68);
  v70 = 1;
  a2 = v90;
LABEL_23:
  __swift_storeEnumTagSinglePayload(a2, v70, 1, v105);
  v82 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v103 + 8))(v53, v104);
}

uint64_t sub_1DC41AE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnSummary.ExecutionSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC41AEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC41AF30()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC41AF8C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t NLRouterClientImpl.processNLRouterRequest(with:)()
{
  OUTLINED_FUNCTION_1_0();
  v0[15] = v1;
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D048, &unk_1DC526760);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64) + 15;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v6 = type metadata accessor for NLRouterServiceResponse(0);
  v0[19] = v6;
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v9 = sub_1DC5157EC();
  v0[23] = v9;
  v10 = *(v9 - 8);
  OUTLINED_FUNCTION_6();
  v0[24] = v11;
  v13 = *(v12 + 64);
  v0[25] = OUTLINED_FUNCTION_118();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D098, &unk_1DC5268D0);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  v0[26] = OUTLINED_FUNCTION_118();
  v17 = type metadata accessor for OverrideDecision();
  v0[27] = v17;
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  v0[28] = OUTLINED_FUNCTION_118();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64);
  v0[29] = OUTLINED_FUNCTION_118();
  v23 = type metadata accessor for NLRouterServiceRequest(0);
  v0[30] = v23;
  OUTLINED_FUNCTION_10(v23);
  v25 = *(v24 + 64);
  v0[31] = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1DC41B1B8()
{
  OUTLINED_FUNCTION_100_0();
  v33 = v0;
  v1 = v0[31];
  v2 = v0[16];
  v3 = sub_1DC517B9C();
  v0[32] = sub_1DC297814();
  v4 = sub_1DC296DBC();
  v5 = OUTLINED_FUNCTION_16();
  sub_1DC2BBA90(v5, v6, v7);
  v8 = os_log_type_enabled(v4, v3);
  v9 = v0[31];
  if (v8)
  {
    v10 = v0[30];
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_117();
    *v1 = 136315138;
    sub_1DC41D7A0();
    v11 = sub_1DC51823C();
    v13 = v12;
    OUTLINED_FUNCTION_12_25();
    v14 = sub_1DC291244(v11, v13, &v32);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_16_16(&dword_1DC287000, v15, v16, "NLRouterServiceRequest: %s");
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {

    OUTLINED_FUNCTION_12_25();
  }

  v17 = v0[30];
  v18 = v0[16];
  v19 = sub_1DC297438();
  v20 = *v19;
  v0[33] = *v19;
  v21 = (v18 + *(v17 + 40));
  v22 = *v21;
  v0[34] = *v21;
  v23 = v21[1];
  v0[35] = v23;
  v24 = (v18 + *(v17 + 44));
  v25 = *v24;
  v26 = v24[1];
  v27 = *(*v20 + 264);

  v31 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  v0[36] = v29;
  *v29 = v0;
  v29[1] = sub_1DC41B42C;

  return v31(v22, v23, v25, v26);
}

uint64_t sub_1DC41B42C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v3 = *(v1 + 288);
  v9 = *v0;
  *(v2 + 296) = v4;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC41B520()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 128);
  *(v0 + 304) = mach_absolute_time();
  v6 = sub_1DC510B6C();
  *(v0 + 312) = v6;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7._countAndFlagsBits = v2;
  v7._object = v1;
  NLRouterServiceRequest.logToFeatureStore(for:)(v7);
  v8 = sub_1DC296704();
  *(v0 + 320) = v8;
  v9 = *v8;
  *(v0 + 328) = *v8;
  v10 = type metadata accessor for NLRouterOverrideService();
  *(v0 + 336) = v10;
  v11 = *(v4 + 48);
  *(v0 + 520) = v11;
  v12 = *(*v9 + 200);

  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 344) = v14;
  *v14 = v0;
  v14[1] = sub_1DC41B6C8;
  v15.n128_u64[0] = 1.0;

  return (v17)(v10, &off_1F57F98C0, v5 + v11, v15);
}

uint64_t sub_1DC41B6C8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 344);
  *v4 = *v1;
  v3[44] = v7;
  v3[45] = v0;

  if (!v0)
  {
    v8 = v3[41];
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC41B7D0()
{
  v1 = *(v0 + 352);
  swift_getObjectType();
  v2 = dynamic_cast_existential_1_conditional(v1);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0 + 264);
    v7 = *(v0 + 128);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 40))(ObjectType);
    *(v0 + 368) = v9;
    v10 = swift_task_alloc();
    *(v0 + 376) = v10;
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v7;
    v31 = (*v6 + 480);
    v33 = (*v31 + **v31);
    v11 = (*v31)[1];
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = sub_1DC41BB04;
    v13 = *(v0 + 296);
    v14 = *(v0 + 264);
    v15 = *(v0 + 208);
    OUTLINED_FUNCTION_24_16();

    return v33();
  }

  else
  {
    v17 = *(v0 + 352);
    v18 = *(v0 + 336);
    swift_unknownObjectRelease();
    sub_1DC3AF584(0xD000000000000046, 0x80000001DC547580, 0, v18, &off_1F57F98C0, v0 + 16);
    sub_1DC3B0E88();
    v19 = swift_allocError();
    v20 = *(v0 + 48);
    v21 = *(v0 + 32);
    *v22 = *(v0 + 16);
    *(v22 + 16) = v21;
    *(v22 + 32) = v20;
    swift_willThrow();
    *(v0 + 496) = v19;
    OUTLINED_FUNCTION_3_32();
    v24 = *(v23 + 120);
    v25 = v19;
    v32 = (v24 + *v24);
    v26 = v24[1];
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_19_19(v27);
    *v28 = v29;
    v30 = OUTLINED_FUNCTION_0_60(v28);

    return v32(v30);
  }
}

uint64_t sub_1DC41BB04()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[49] = v0;

  if (!v0)
  {
    v9 = v3[46];
    v10 = v3[47];
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC41BC0C()
{
  v40 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 520);
    v4 = *(v0 + 320);
    v5 = *(v0 + 128);
    sub_1DC28EB30(v2, &qword_1ECC7D098, &unk_1DC5268D0);
    v6 = *v4;
    *(v0 + 400) = v6;
    *(v0 + 408) = type metadata accessor for NLRouterService(0);
    v7 = *(*v6 + 200);

    v35 = v7 + *v7;
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 416) = v9;
    *v9 = v0;
    v9[1] = sub_1DC41BFA8;
    v10 = OUTLINED_FUNCTION_21_18();

    return v11(v10);
  }

  else
  {
    v36 = *(v0 + 352);
    v13 = *(v0 + 312);
    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 184);
    v19 = *(v0 + 120);
    v20 = OUTLINED_FUNCTION_16();
    sub_1DC41D6E8(v20, v21, v22);
    (*(v16 + 16))(v17, v15, v18);
    v38 = 0;
    v39 = xmmword_1DC522850;
    NLRouterServiceResponse.init(routingDecision:status:decisionSource:)(&v38, &v39, v19);
    swift_unknownObjectRelease();
    sub_1DC28EB30(v14, &unk_1ECC7CA30, &qword_1DC522A00);
    (*(*(v13 - 8) + 16))(v14, v15 + *(v1 + 20), v13);
    sub_1DC41D748(v15, type metadata accessor for OverrideDecision);
    OUTLINED_FUNCTION_17_17();
    v23 = *(v0 + 264);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 120);
    OUTLINED_FUNCTION_2_35();
    sub_1DC2BBA90(v27, v24, v28);
    OUTLINED_FUNCTION_17_17();
    v29 = *(*v23 + 120);
    v37 = v29 + *v29;
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v0 + 480) = v31;
    *v31 = v0;
    OUTLINED_FUNCTION_4_35(v31);
    v33 = OUTLINED_FUNCTION_25_17(v32);

    return v34(v33);
  }
}

uint64_t sub_1DC41BFA8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 416);
  *v4 = *v1;
  v3[53] = v7;
  v3[54] = v0;

  if (!v0)
  {
    v8 = v3[50];
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC41C0B0()
{
  OUTLINED_FUNCTION_100_0();
  v1 = *(v0 + 424);
  swift_getObjectType();
  v2 = dynamic_cast_existential_1_conditional(v1);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0 + 264);
    v7 = *(v0 + 128);
    v8 = sub_1DC41F868();
    swift_beginAccess();
    v9 = *v8;
    *(v0 + 440) = *v8;
    v10 = v8[1];
    *(v0 + 448) = v10;
    v11 = swift_task_alloc();
    *(v0 + 456) = v11;
    v11[2] = v4;
    v11[3] = v5;
    v11[4] = v7;
    v12 = *(*v6 + 472);
    sub_1DC2A329C(v9, v10);
    v43 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 464) = v14;
    *v14 = v0;
    v14[1] = sub_1DC41C3EC;
    v15 = *(v0 + 296);
    v16 = *(v0 + 264);
    v17 = *(v0 + 176);
    OUTLINED_FUNCTION_24_16();

    return v43();
  }

  else
  {
    v19 = *(v0 + 424);
    v20 = *(v0 + 408);
    v21 = *(v0 + 352);
    swift_unknownObjectRelease();
    sub_1DC3AF584(0xD00000000000003ELL, 0x80000001DC5475D0, 0, v20, &off_1F57FD328, v0 + 56);
    sub_1DC3B0E88();
    v22 = swift_allocError();
    v23 = *(v0 + 88);
    v24 = *(v0 + 72);
    *v25 = *(v0 + 56);
    *(v25 + 16) = v24;
    *(v25 + 32) = v23;
    swift_willThrow();
    swift_unknownObjectRelease();
    *(v0 + 496) = v22;
    OUTLINED_FUNCTION_3_32();
    v27 = *(v26 + 120);
    v45 = v26 + 120;
    v28 = v22;
    OUTLINED_FUNCTION_45_1(v28, v29, v30, v31, v32, v33, v34, v35, v42, v45);
    v44 = (v36 + *v36);
    v37 = *(v27 + 4);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_19_19(v38);
    *v39 = v40;
    v41 = OUTLINED_FUNCTION_0_60(v39);

    return v44(v41);
  }
}

uint64_t sub_1DC41C3EC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[59] = v0;

  if (!v0)
  {
    v9 = v3[57];
    sub_1DC2A5760(v3[55], v3[56]);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC41C4F8()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[53];
  v2 = v0[44];
  v3 = v0[22];
  v4 = v0[15];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1DC41D6E8(v3, v4, type metadata accessor for NLRouterServiceResponse);
  v5 = v0[33];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[15];
  OUTLINED_FUNCTION_2_35();
  sub_1DC2BBA90(v9, v6, v10);
  OUTLINED_FUNCTION_17_17();
  v11 = *(*v5 + 120);
  v18 = v11 + *v11;
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[60] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_4_35(v13);
  v15 = OUTLINED_FUNCTION_25_17(v14);

  return v16(v15);
}

uint64_t sub_1DC41C660()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *(v2 + 480);
  *v4 = *v1;
  *(v3 + 488) = v0;

  sub_1DC28EB30(*(v2 + 144), &qword_1ECC7D048, &unk_1DC526760);
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC41C794()
{
  v55 = v0;
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[15];
  v4 = sub_1DC517B9C();
  v5 = sub_1DC296DBC();
  OUTLINED_FUNCTION_2_35();
  v6 = OUTLINED_FUNCTION_16();
  sub_1DC2BBA90(v6, v7, v8);
  v9 = os_log_type_enabled(v5, v4);
  v10 = v0[21];
  if (v9)
  {
    swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_117();
    *v2 = 136315138;
    v11 = NLRouterServiceResponse.description.getter();
    v13 = v12;
    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v10, v14);
    v15 = sub_1DC291244(v11, v13, &v54);

    *(v2 + 4) = v15;
    OUTLINED_FUNCTION_16_16(&dword_1DC287000, v16, v17, "NLRouterServiceResponse: %s)");
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {

    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v10, v18);
  }

  v19 = v0[32];
  v20 = v0[20];
  v21 = v0[15];
  v22 = sub_1DC517B8C();
  v23 = sub_1DC296DBC();
  OUTLINED_FUNCTION_2_35();
  v24 = OUTLINED_FUNCTION_16();
  sub_1DC2BBA90(v24, v25, v26);
  v27 = os_log_type_enabled(v23, v22);
  v28 = v0[20];
  if (v27)
  {
    swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_117();
    *v20 = 136446210;
    v29 = sub_1DC43C94C();
    v31 = v30;
    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v28, v32);
    v33 = sub_1DC291244(v29, v31, &v54);

    *(v20 + 4) = v33;
    OUTLINED_FUNCTION_16_16(&dword_1DC287000, v34, v35, "NLRouterServiceResponse: %{public}s");
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {

    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v28, v36);
  }

  v37 = v0[37];
  v38 = v0[34];
  v39 = v0[35];
  v40 = v0[33];
  v41 = v0[31];
  v43 = v0[28];
  v42 = v0[29];
  v45 = v0[25];
  v44 = v0[26];
  v46 = v0[22];
  v50 = v0[21];
  v51 = v0[20];
  v52 = v0[18];
  v53 = v0[17];
  v47 = v0[15];
  sub_1DC3FD1C8();

  sub_1DC28EB30(v42, &unk_1ECC7CA30, &qword_1DC522A00);

  OUTLINED_FUNCTION_2_2();

  return v48();
}

uint64_t sub_1DC41CA4C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = v2[63];
  *v4 = *v1;
  v3[64] = v0;

  v6 = v2[62];
  sub_1DC28EB30(v2[17], &qword_1ECC7D048, &unk_1DC526760);

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC41CB9C()
{
  v1 = v0[62];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[29];
  swift_willThrow();

  sub_1DC28EB30(v4, &unk_1ECC7CA30, &qword_1DC522A00);
  v7 = v0[62];
  OUTLINED_FUNCTION_9_29();

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC41CCA0()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[41];

  v2 = v0[45];
  v0[62] = v2;
  OUTLINED_FUNCTION_3_32();
  v4 = *(v3 + 120);
  v22 = v3 + 120;
  v5 = v2;
  OUTLINED_FUNCTION_45_1(v5, v6, v7, v8, v9, v10, v11, v12, v20, v22);
  v21 = v13 + *v13;
  v14 = *(v4 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_19_19(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_0_60(v16);
  OUTLINED_FUNCTION_32_16();

  return v18();
}

uint64_t sub_1DC41CDA4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[44];
  swift_unknownObjectRelease();

  v4 = v0[49];
  v0[62] = v4;
  OUTLINED_FUNCTION_3_32();
  v6 = *(v5 + 120);
  v24 = v5 + 120;
  v7 = v4;
  OUTLINED_FUNCTION_45_1(v7, v8, v9, v10, v11, v12, v13, v14, v22, v24);
  v23 = v15 + *v15;
  v16 = *(v6 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_19_19(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_60(v18);
  OUTLINED_FUNCTION_32_16();

  return v20();
}

uint64_t sub_1DC41CEBC()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[50];
  v2 = v0[44];

  swift_unknownObjectRelease();
  v3 = v0[54];
  v0[62] = v3;
  OUTLINED_FUNCTION_3_32();
  v5 = *(v4 + 120);
  v23 = v4 + 120;
  v6 = v3;
  OUTLINED_FUNCTION_45_1(v6, v7, v8, v9, v10, v11, v12, v13, v21, v23);
  v22 = v14 + *v14;
  v15 = *(v5 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_19_19(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_0_60(v17);
  OUTLINED_FUNCTION_32_16();

  return v19();
}

uint64_t sub_1DC41CFCC()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  v4 = v0[53];
  v5 = v0[44];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1DC2A5760(v3, v1);

  v6 = v0[59];
  v0[62] = v6;
  OUTLINED_FUNCTION_3_32();
  v8 = *(v7 + 120);
  v26 = v7 + 120;
  v9 = v6;
  OUTLINED_FUNCTION_45_1(v9, v10, v11, v12, v13, v14, v15, v16, v24, v26);
  v25 = v17 + *v17;
  v18 = *(v8 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_19_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_0_60(v20);
  OUTLINED_FUNCTION_32_16();

  return v22();
}

uint64_t sub_1DC41D100()
{
  OUTLINED_FUNCTION_100_0();
  v1 = v0[62];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[29];

  sub_1DC28EB30(v4, &unk_1ECC7CA30, &qword_1DC522A00);
  v7 = v0[64];
  OUTLINED_FUNCTION_9_29();

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC41D200()
{
  OUTLINED_FUNCTION_100_0();
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[15];

  sub_1DC28EB30(v3, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_1_37();
  sub_1DC41D748(v4, v5);
  v8 = v0[61];
  OUTLINED_FUNCTION_9_29();

  OUTLINED_FUNCTION_2_2();

  return v6();
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC41D348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC41D360()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v2, ObjectType, v1);
  OUTLINED_FUNCTION_2_2();

  return v6();
}

uint64_t sub_1DC41D3F4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_18_22(v5);

  return sub_1DC41D348(v7, v8, v9, v10);
}

uint64_t sub_1DC41D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 16);
  OUTLINED_FUNCTION_6();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_1(v12);
  *v13 = v14;
  v13[1] = sub_1DC29F120;

  return v16(a1, a4, ObjectType, a3);
}

uint64_t sub_1DC41D5C0()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_18_22(v5);

  return sub_1DC41D488(v7, v8, v9, v10);
}

uint64_t sub_1DC41D654()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return NLRouterClientImpl.processNLRouterRequest(with:)();
}

uint64_t sub_1DC41D6E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC41D748(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DC41D7A0()
{
  result = qword_1ECC7BC20;
  if (!qword_1ECC7BC20)
  {
    type metadata accessor for NLRouterServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC20);
  }

  return result;
}

uint64_t dispatch thunk of NLRouterClient.setupNLRouter(with:)()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 8);
  OUTLINED_FUNCTION_6();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  v11[1] = sub_1DC29F120;

  return v13(v6, v4, v2);
}

uint64_t dispatch thunk of NLRouterClient.processNLRouterRequest(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_6();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_1(v12);
  *v13 = v14;
  v13[1] = sub_1DC29F200;

  return v16(a1, a2, a3, a4);
}

_BYTE *storeEnumTagSinglePayload for NLRouterClientImpl(_BYTE *result, int a2, int a3)
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

double sub_1DC41DAEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = qword_1ECC8F3F8;
  if (qword_1ECC8F3F8 && *(qword_1ECC8F3F8 + 16))
  {

    v7 = sub_1DC2AEB04(a1, a2);
    if (v8)
    {
      sub_1DC291F78(*(v6 + 56) + 32 * v7, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_1DC41DBA4()
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_462();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x7869726973 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0xD000000000000016 && 0x80000001DC548180 == v0;
      if (v6 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_151_3();
        v8 = v3 && v7 == v0;
        if (v8 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
        {

          return 3;
        }

        else if (v1 == 0xD00000000000001BLL && 0x80000001DC5481C0 == v0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_32_13();
          OUTLINED_FUNCTION_168();
          if (v1)
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

void sub_1DC41DCE8(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_415(21);
      break;
    case 3:
      OUTLINED_FUNCTION_31_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC41DD84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC41DBA4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC41DDAC()
{
  sub_1DC41E468();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41DDE4()
{
  sub_1DC41E468();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC41DE1C()
{
  sub_1DC41E60C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41DE54()
{
  sub_1DC41E60C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC41DE8C()
{
  sub_1DC41E510();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41DEC4()
{
  sub_1DC41E510();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC41DEFC()
{
  sub_1DC41E5B8();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41DF34()
{
  sub_1DC41E5B8();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC41DF6C()
{
  sub_1DC41E4BC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41DFA4()
{
  sub_1DC41E4BC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC41DFDC()
{
  sub_1DC41E564();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41E014()
{
  sub_1DC41E564();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC41E04C()
{
  OUTLINED_FUNCTION_28_1();
  v41 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D998, &qword_1DC52A648);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_9(v8, v39);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9A0, &qword_1DC52A650);
  OUTLINED_FUNCTION_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_50_13(v13, v40);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9A8, &qword_1DC52A658);
  OUTLINED_FUNCTION_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9B0, &qword_1DC52A660);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_95();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9B8, &qword_1DC52A668);
  OUTLINED_FUNCTION_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_47_7();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9C0, &qword_1DC52A670);
  OUTLINED_FUNCTION_0(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_24_0();
  v32 = *(v3 + 24);
  v33 = *(v3 + 32);
  v34 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_121_1(v34, v35);
  sub_1DC41E468();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51835C();
  switch(v41)
  {
    case 1:
      OUTLINED_FUNCTION_342_0();
      sub_1DC41E5B8();
      OUTLINED_FUNCTION_148_2();
      sub_1DC51817C();
      v36 = OUTLINED_FUNCTION_209();
      break;
    case 2:
      OUTLINED_FUNCTION_187_1();
      sub_1DC41E564();
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_343_0();
      sub_1DC41E510();
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_352_0();
      sub_1DC41E4BC();
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
LABEL_6:
      v36 = OUTLINED_FUNCTION_240_0();
      break;
    default:
      sub_1DC41E60C();
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
      v36 = OUTLINED_FUNCTION_240_0();
      v38 = v22;
      break;
  }

  v37(v36, v38);
  (*(v28 + 8))(v0, v26);
  OUTLINED_FUNCTION_26_0();
}

unint64_t sub_1DC41E468()
{
  result = qword_1ECC8B360;
  if (!qword_1ECC8B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B360);
  }

  return result;
}

unint64_t sub_1DC41E4BC()
{
  result = qword_1ECC8B368;
  if (!qword_1ECC8B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B368);
  }

  return result;
}

unint64_t sub_1DC41E510()
{
  result = qword_1ECC8B370;
  if (!qword_1ECC8B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B370);
  }

  return result;
}

unint64_t sub_1DC41E564()
{
  result = qword_1ECC8B378;
  if (!qword_1ECC8B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B378);
  }

  return result;
}

unint64_t sub_1DC41E5B8()
{
  result = qword_1ECC8B380;
  if (!qword_1ECC8B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B380);
  }

  return result;
}

unint64_t sub_1DC41E60C()
{
  result = qword_1ECC8B388;
  if (!qword_1ECC8B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B388);
  }

  return result;
}

void sub_1DC41E660()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9C8, &qword_1DC52A678);
  OUTLINED_FUNCTION_0(v64);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_385(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9D0, &qword_1DC52A680);
  OUTLINED_FUNCTION_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_9(v11, v61);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9D8, &qword_1DC52A688);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_17(v16, v62);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9E0, &qword_1DC52A690);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_54_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9E8, &qword_1DC52A698);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9F0, &unk_1DC52A6A0);
  OUTLINED_FUNCTION_0(v25);
  v63 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_47_7();
  v31 = v2[3];
  v30 = v2[4];
  v32 = OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_121_1(v32, v33);
  sub_1DC41E468();
  sub_1DC51834C();
  if (!v0)
  {
    v34 = sub_1DC51816C();
    OUTLINED_FUNCTION_338_0(v34);
    if (!v35)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v42 = *(v39 + v37);
      OUTLINED_FUNCTION_336_0(v36, v37, v38, v39);
      v44 = v43;
      v46 = v45;
      swift_unknownObjectRelease();
      if (v44 == v46 >> 1)
      {
        switch(v42)
        {
          case 1:
            OUTLINED_FUNCTION_342_0();
            sub_1DC41E5B8();
            OUTLINED_FUNCTION_237();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 2:
            OUTLINED_FUNCTION_187_1();
            sub_1DC41E564();
            OUTLINED_FUNCTION_237();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 3:
            OUTLINED_FUNCTION_343_0();
            sub_1DC41E510();
            OUTLINED_FUNCTION_237();
            swift_unknownObjectRelease();
LABEL_15:
            v47 = OUTLINED_FUNCTION_239();
            break;
          case 4:
            OUTLINED_FUNCTION_352_0();
            sub_1DC41E4BC();
            sub_1DC5180AC();
            swift_unknownObjectRelease();
            v47 = OUTLINED_FUNCTION_209();
            v49 = v64;
            break;
          default:
            sub_1DC41E60C();
            OUTLINED_FUNCTION_237();
            swift_unknownObjectRelease();
            v47 = OUTLINED_FUNCTION_239();
            v49 = v21;
            break;
        }

        v48(v47, v49);
        v58 = *(v63 + 8);
        v59 = OUTLINED_FUNCTION_151();
        v60(v59);
        __swift_destroy_boxed_opaque_existential_1Tm(v2);
        goto LABEL_10;
      }
    }

    v50 = sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v52 = &type metadata for NLRouterInvalidModelOutputError;
    sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7();
    v54 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v50);
    (*(v55 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_122_2();
    v56 = OUTLINED_FUNCTION_151();
    v57(v56);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_10:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC41EC3C(_BYTE *a1@<X8>)
{
  sub_1DC41E660();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DC41EC9C()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1 == 0x6365446C65646F6DLL && v0 == 0xED00006E6F697369;
  if (v2 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000010 && 0x80000001DC5481E0 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_53_16();
    OUTLINED_FUNCTION_168();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DC41ED48()
{
  OUTLINED_FUNCTION_146_0();
  if (v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6365446C65646F6DLL;
  }
}

uint64_t sub_1DC41EDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC41EC9C();
  *a1 = result;
  return result;
}

uint64_t sub_1DC41EDF0()
{
  sub_1DC43F150();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC41EE28()
{
  sub_1DC43F150();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC41EE60()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_143_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9F8, &qword_1DC52A6B0);
  OUTLINED_FUNCTION_3_33(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_19();
  sub_1DC43F150();
  OUTLINED_FUNCTION_118_4();
  sub_1DC5157EC();
  OUTLINED_FUNCTION_2_36();
  sub_1DC43F1F8(v6, v7);
  OUTLINED_FUNCTION_36_19();
  sub_1DC51820C();
  if (!v1)
  {
    v10 = *(v0 + *(type metadata accessor for IntepretedModelDecision(0) + 20));
    sub_1DC43F1A4();
    OUTLINED_FUNCTION_136_4();
    sub_1DC5181AC();
  }

  v8 = OUTLINED_FUNCTION_104_3();
  v9(v8);
  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_37_9();
}

void sub_1DC41EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_28_1();
  v15 = v14;
  v41 = sub_1DC5157EC();
  v16 = OUTLINED_FUNCTION_0(v41);
  v39 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA08, &unk_1DC52A6B8);
  OUTLINED_FUNCTION_0(v20);
  v40 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_31_18();
  v26 = type metadata accessor for IntepretedModelDecision(v25);
  v27 = OUTLINED_FUNCTION_35(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v30 = v15[4];
  OUTLINED_FUNCTION_121_1(v15, v15[3]);
  sub_1DC43F150();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    OUTLINED_FUNCTION_2_36();
    sub_1DC43F1F8(v31, v32);
    OUTLINED_FUNCTION_451();
    sub_1DC51814C();
    v33 = *(v39 + 32);
    v34 = OUTLINED_FUNCTION_212();
    v35(v34);
    sub_1DC43F23C();
    OUTLINED_FUNCTION_451();
    sub_1DC5180EC();
    v36 = *(v40 + 8);
    v37 = OUTLINED_FUNCTION_46_0();
    v38(v37);
    *(v13 + *(v26 + 20)) = a12;
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_11_31();
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC41F2D4()
{
  v0 = sub_1DC29F950(0);
  if ((v0 & 1) == 0)
  {
    sub_1DC517B9C();
    sub_1DC297814();
    v1 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();
  }

  return v0 & 1;
}

uint64_t sub_1DC41F370()
{
  result = sub_1DC510D5C();
  qword_1ECC8F650 = result;
  *algn_1ECC8F658 = v1;
  return result;
}

uint64_t sub_1DC41F394@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_locale;
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  v4 = sub_1DC510C8C();
  OUTLINED_FUNCTION_11_0(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC41F524()
{
  v1 = (v0 + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_promptGenerator);
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = OUTLINED_FUNCTION_31_0();
  sub_1DC43F290(v4);
  return OUTLINED_FUNCTION_31_0();
}

uint64_t sub_1DC41F5DC(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_270();
  return sub_1DC4465D4();
}

uint64_t sub_1DC41F640(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_270();
  sub_1DC43F2D0();
  return swift_endAccess();
}

uint64_t sub_1DC41F6F4()
{
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return sub_1DC2A2E50();
}

uint64_t sub_1DC41F744(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_generativeAssistantHelper;
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_1_22();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1DC28F9B0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DC41F7EC()
{
  v0 = sub_1DC510D9C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DC510D8C();
  qword_1ECC8F678 = v0;
  unk_1ECC8F680 = MEMORY[0x1E69B2130];
  qword_1ECC8F660 = result;
  return result;
}

uint64_t sub_1DC41F840()
{
  result = sub_1DC29F950(1u);
  byte_1ECC8FA40 = result & 1;
  return result;
}

uint64_t sub_1DC41F874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC0, &qword_1DC52EA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = 0x4E495F6E65;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1DC33347C(&unk_1F57FCFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
  result = sub_1DC51764C();
  qword_1ECC8F638 = result;
  return result;
}

uint64_t sub_1DC41F920()
{
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return sub_1DC4465D4();
}

uint64_t sub_1DC41F9CC()
{
  OUTLINED_FUNCTION_1_0();
  v20 = *MEMORY[0x1E69E9840];
  v0[28] = v1;
  v2 = sub_1DC51753C();
  v0[29] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[30] = v3;
  v5 = *(v4 + 64);
  v0[31] = OUTLINED_FUNCTION_118();
  v6 = sub_1DC5108BC();
  v0[32] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[33] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_461(v10);
  v11 = sub_1DC5109BC();
  v0[35] = v11;
  OUTLINED_FUNCTION_52(v11);
  v0[36] = v12;
  v14 = *(v13 + 64);
  v0[37] = OUTLINED_FUNCTION_124();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DC41FB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_467();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v39 = v36;
  a25 = *MEMORY[0x1E69E9840];
  sub_1DC517B9C();
  *(v36 + 336) = OUTLINED_FUNCTION_21_2();
  v40 = sub_1DC296DBC();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  v41 = [objc_opt_self() defaultManager];
  *(v36 + 208) = 0;
  v42 = (v36 + 208);
  v43 = [v41 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v42];

  v44 = *v42;
  if (v43)
  {
    v45 = v39[38];
    v46 = v39[39];
    v96 = v39[41];
    v103 = v39[40];
    v104 = v39[36];
    v47 = v39[34];
    v100 = v39[37];
    v101 = v39[35];
    v49 = v39[32];
    v48 = v39[33];
    v97 = v39[30];
    v98 = v39[29];
    v99 = v39[31];
    sub_1DC51093C();
    v50 = v44;

    v39[20] = 0x6E61747369737341;
    v39[21] = 0xE900000000000074;
    v95 = *MEMORY[0x1E6968F58];
    v51 = *(v48 + 104);
    v51(v47);
    sub_1DC2A32B0();
    sub_1DC51099C();
    v102 = *(v48 + 8);
    v52 = OUTLINED_FUNCTION_46_0();
    v53(v52);
    v94 = *(v104 + 8);
    v39[43] = v94;
    v39[44] = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v94(v45, v101);
    v39[22] = 0x65686361434D4C4CLL;
    v39[23] = 0xE800000000000000;
    (v51)(v47, v95, v49);
    sub_1DC51099C();
    v54 = OUTLINED_FUNCTION_205();
    v102(v54);
    v55 = OUTLINED_FUNCTION_12_3();
    (v94)(v55);
    v39[24] = 0x726574756F524C4ELL;
    v39[25] = 0xE800000000000000;
    (v51)(v47, v95, v49);
    sub_1DC51099C();
    v56 = OUTLINED_FUNCTION_205();
    v102(v56);
    v94(v103, v101);
    v39[45] = sub_1DC51746C();
    (*(v97 + 104))(v99, *MEMORY[0x1E69ABD50], v98);
    (*(v104 + 16))(v100, v96, v101);
    v57 = *(MEMORY[0x1E69ABD28] + 4);
    v58 = swift_task_alloc();
    v39[46] = v58;
    *v58 = v39;
    v58[1] = sub_1DC4200C0;
    v59 = v39[37];
    v60 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_33_12(v39[31]);
    OUTLINED_FUNCTION_366_0();

    return MEMORY[0x1EEE18708](v61, v62);
  }

  else
  {
    v64 = v44;
    OUTLINED_FUNCTION_155_0();
    v65 = sub_1DC51085C();

    swift_willThrow();
    v66 = v39[42];
    v67 = sub_1DC517BBC();
    v68 = sub_1DC296DBC();
    if (os_log_type_enabled(v68, v67))
    {
      v69 = OUTLINED_FUNCTION_63();
      a24 = OUTLINED_FUNCTION_82();
      *v69 = 136315138;
      swift_getErrorValue();
      v71 = v39[17];
      v70 = v39[18];
      v72 = v39[19];
      v73 = sub_1DC5182AC();
      v75 = sub_1DC291244(v73, v74, &a24);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_1DC287000, v68, v67, "Failed to initialize/warmup cache manager, error: %s", v69, 0xCu);
      OUTLINED_FUNCTION_146_5();
      OUTLINED_FUNCTION_54_12();
    }

    else
    {
    }

    v77 = v39[40];
    v76 = v39[41];
    v78 = v39[38];
    v79 = v39[39];
    v80 = v39[37];
    v81 = v39[34];
    v82 = v39[31];

    v83 = v39[1];
    v84 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_366_0();

    return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }
}

uint64_t sub_1DC4200C0()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v2;
  v12 = *MEMORY[0x1E69E9840];
  v5 = *(*v1 + 368);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v4;
  *(v4 + 376) = v0;

  if (!v0)
  {
    *(v4 + 384) = v3;
  }

  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC420200()
{
  OUTLINED_FUNCTION_36_11();
  v24 = *MEMORY[0x1E69E9840];
  v0[2] = v0[48];
  v1 = v0[42];
  v2 = v0[28];
  v3 = MEMORY[0x1E69ABD30];
  v0[5] = v0[45];
  v0[6] = v3;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_430();
  (*(v7 + 200))(v0 + 2);
  sub_1DC517B9C();
  v8 = sub_1DC296DBC();
  OUTLINED_FUNCTION_208();
  sub_1DC516F0C();

  v9 = *v2;
  v10 = *v5;
  OUTLINED_FUNCTION_430();
  (*(v11 + 192))();
  if (!v0[10])
  {
    v18 = OUTLINED_FUNCTION_254_0();
    v19(v18);
    sub_1DC28EB30((v0 + 7), &qword_1ECC7DA28, &unk_1DC52A6D0);
    OUTLINED_FUNCTION_128_4();

    OUTLINED_FUNCTION_2_2();
    v20 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_477();

    __asm { BRAA            X1, X16 }
  }

  sub_1DC2A2E50();
  sub_1DC28EB30((v0 + 7), &qword_1ECC7DA28, &unk_1DC52A6D0);
  v12 = v0[15];
  v13 = v0[16];
  OUTLINED_FUNCTION_310_0(v0 + 12);
  v14 = *(MEMORY[0x1E69ABD48] + 4);
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_1DC42046C;
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_477();

  return MEMORY[0x1EEE18728]();
}

uint64_t sub_1DC42046C()
{
  OUTLINED_FUNCTION_1_0();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_7_2();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v9 + 400) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DC420594()
{
  OUTLINED_FUNCTION_36_11();
  v6 = *MEMORY[0x1E69E9840];
  v1 = OUTLINED_FUNCTION_254_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_128_4();

  OUTLINED_FUNCTION_2_2();
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_477();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC420664()
{
  v19 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_254_0();
  v3(v2);
  v4 = v0[47];
  v5 = v0[42];
  v6 = sub_1DC517BBC();
  v7 = sub_1DC296DBC();
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_63();
    v18[0] = OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_470(4.8149e-34);
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[19];
    v11 = sub_1DC5182AC();
    v13 = sub_1DC291244(v11, v12, v18);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_407(&dword_1DC287000, v14, v6, "Failed to initialize/warmup cache manager, error: %s");
    OUTLINED_FUNCTION_138_3();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  OUTLINED_FUNCTION_128_4();

  OUTLINED_FUNCTION_2_2();
  v16 = *MEMORY[0x1E69E9840];

  return v15();
}

uint64_t sub_1DC4207DC()
{
  v19 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_254_0();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v4 = v0[50];
  v5 = v0[42];
  v6 = sub_1DC517BBC();
  v7 = sub_1DC296DBC();
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_63();
    v18[0] = OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_470(4.8149e-34);
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[19];
    v11 = sub_1DC5182AC();
    v13 = sub_1DC291244(v11, v12, v18);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_407(&dword_1DC287000, v14, v6, "Failed to initialize/warmup cache manager, error: %s");
    OUTLINED_FUNCTION_138_3();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  OUTLINED_FUNCTION_128_4();

  OUTLINED_FUNCTION_2_2();
  v16 = *MEMORY[0x1E69E9840];

  return v15();
}

void sub_1DC42095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v278 = v26;
  v264 = sub_1DC510BEC();
  v27 = OUTLINED_FUNCTION_0(v264);
  v263 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v262 = v31;
  OUTLINED_FUNCTION_12();
  v277 = sub_1DC510C2C();
  v32 = OUTLINED_FUNCTION_0(v277);
  v268 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v36);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA48, &qword_1DC52A720);
  v37 = OUTLINED_FUNCTION_35(v272);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA50, &qword_1DC52A728);
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  v271 = v51;
  OUTLINED_FUNCTION_12();
  v52 = sub_1DC510BDC();
  v53 = OUTLINED_FUNCTION_0(v52);
  v280 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED0, qword_1DC52A730);
  v59 = OUTLINED_FUNCTION_35(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_15();
  v275 = v62;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_38_3();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  v65 = OUTLINED_FUNCTION_10(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23_1();
  v276 = v70;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_23_1();
  v279 = v72;
  OUTLINED_FUNCTION_22();
  v74 = MEMORY[0x1EEE9AC00](v73);
  v75 = MEMORY[0x1EEE9AC00](v74);
  MEMORY[0x1EEE9AC00](v75);
  v76 = sub_1DC510C6C();
  v77 = OUTLINED_FUNCTION_3_33(v76);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v261 - v84;
  v284 = v25;
  sub_1DC510C7C();
  sub_1DC510C5C();
  v86 = *(v79 + 8);
  v282 = v79 + 8;
  v283 = v20;
  v281 = v86;
  v86(v85, v20);
  sub_1DC510BCC();
  v87 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v52);
  v274 = v58;
  v90 = *(v58 + 48);
  OUTLINED_FUNCTION_46_0();
  sub_1DC4465D4();
  sub_1DC4465D4();
  v91 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v91, v92, v52);
  if (v98)
  {
    v93 = OUTLINED_FUNCTION_62_2();
    sub_1DC28EB30(v93, v94, &qword_1DC522250);
    v95 = OUTLINED_FUNCTION_340_0();
    sub_1DC28EB30(v95, v96, &qword_1DC522250);
    OUTLINED_FUNCTION_4_24(v21 + v90);
    v97 = v277;
    if (v98)
    {
      sub_1DC28EB30(v21, &qword_1ECC7BED8, &qword_1DC522250);
      goto LABEL_11;
    }

LABEL_9:
    sub_1DC28EB30(v21, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_47_1();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_4_24(v21 + v90);
  if (v98)
  {
    v99 = OUTLINED_FUNCTION_62_2();
    sub_1DC28EB30(v99, v100, &qword_1DC522250);
    v101 = OUTLINED_FUNCTION_340_0();
    sub_1DC28EB30(v101, v102, &qword_1DC522250);
    v103 = *(v280 + 8);
    v104 = OUTLINED_FUNCTION_121_0();
    v105(v104);
    v97 = v277;
    goto LABEL_9;
  }

  v106 = v280;
  (*(v280 + 32))(v270, v21 + v90, v52);
  OUTLINED_FUNCTION_210_2();
  sub_1DC43F1F8(v107, v108);
  OUTLINED_FUNCTION_146_1();
  v109 = sub_1DC5176CC();
  v90 = v106 + 8;
  v110 = *(v106 + 8);
  v111 = OUTLINED_FUNCTION_113_0();
  v110(v111);
  v112 = OUTLINED_FUNCTION_65_1();
  sub_1DC28EB30(v112, v113, &qword_1DC522250);
  v114 = OUTLINED_FUNCTION_205();
  sub_1DC28EB30(v114, v115, &qword_1DC522250);
  v116 = OUTLINED_FUNCTION_121_0();
  v110(v116);
  v117 = OUTLINED_FUNCTION_35_0();
  sub_1DC28EB30(v117, v118, &qword_1DC522250);
  v97 = v277;
  if ((v109 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  OUTLINED_FUNCTION_20_3(&a14);
  sub_1DC510C3C();
  sub_1DC510C1C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v97);
  v122 = *(v272 + 48);
  v21 = v269;
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  v123 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v123, v124, v97);
  if (v98)
  {
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v125, v126, v127);
    v128 = OUTLINED_FUNCTION_43();
    sub_1DC28EB30(v128, v129, &qword_1DC52A728);
    OUTLINED_FUNCTION_39(v21 + v122, 1, v97);
    if (v98)
    {
      v130 = v21;
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_484(&v287);
  OUTLINED_FUNCTION_39(v21 + v122, 1, v97);
  if (v131)
  {
    OUTLINED_FUNCTION_69_7();
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v132, v133, v134);
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v135, v136, v137);
    v138 = *(v268 + 8);
    v139 = OUTLINED_FUNCTION_220_0();
    v140(v139);
LABEL_19:
    sub_1DC28EB30(v21, &qword_1ECC7DA48, &qword_1DC52A720);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_20_3(&a9);
  v214 = *(v213 + 32);
  v215 = OUTLINED_FUNCTION_380();
  v216(v215);
  OUTLINED_FUNCTION_207_2();
  sub_1DC43F1F8(v217, v218);
  OUTLINED_FUNCTION_56_0();
  v219 = sub_1DC5176CC();
  v220 = *(v90 + 8);
  v90 += 8;
  v221 = OUTLINED_FUNCTION_74_8();
  v220(v221);
  OUTLINED_FUNCTION_69_7();
  OUTLINED_FUNCTION_32();
  sub_1DC28EB30(v222, v223, v224);
  OUTLINED_FUNCTION_32();
  sub_1DC28EB30(v225, v226, v227);
  (v220)(v265, v97);
  v228 = OUTLINED_FUNCTION_77_1();
  sub_1DC28EB30(v228, v229, &qword_1DC52A728);
  if (v219)
  {
    goto LABEL_47;
  }

LABEL_20:
  OUTLINED_FUNCTION_20_3(&a18);
  sub_1DC510C7C();
  sub_1DC510C5C();
  v281(v90, v283);
  sub_1DC510BCC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v52);
  v144 = v275;
  v145 = *(v274 + 48);
  v146 = &qword_1ECC7BED8;
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_4_24(v144);
  if (v98)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v147, v148, v149);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v150, v151, v152);
    OUTLINED_FUNCTION_4_24(v144 + v145);
    if (v98)
    {
      sub_1DC28EB30(v144, &qword_1ECC7BED8, &qword_1DC522250);
      goto LABEL_30;
    }

LABEL_28:
    v160 = &qword_1ECC7BED0;
    v161 = qword_1DC52A730;
LABEL_40:
    sub_1DC28EB30(v144, v160, v161);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_484(&a11);
  OUTLINED_FUNCTION_4_24(v144 + v145);
  if (v153)
  {
    v146 = &qword_1ECC7BED8;
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v154, v155, v156);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v157, v158, v159);
    (*(v280 + 8))(&qword_1ECC7BED8, v52);
    goto LABEL_28;
  }

  v162 = v280;
  v163 = *(v280 + 32);
  v164 = OUTLINED_FUNCTION_380();
  v165(v164);
  OUTLINED_FUNCTION_210_2();
  sub_1DC43F1F8(v166, v167);
  OUTLINED_FUNCTION_63_0();
  v21 = sub_1DC5176CC();
  v168 = *(v162 + 8);
  v168(v145, v52);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v169, v170, v171);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v172, v173, v174);
  v168(&qword_1ECC7BED8, v52);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v175, v176, v177);
  if ((v21 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  v21 = v266;
  sub_1DC510C3C();
  sub_1DC510C1C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v97);
  v181 = *(v272 + 48);
  v146 = &qword_1ECC7DA50;
  v144 = v267;
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  v182 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v182, v183, v97);
  if (v98)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v184, v185, v186);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v187, v188, v189);
    v190 = OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_39(v190, v191, v97);
    if (!v98)
    {
      goto LABEL_39;
    }

    v130 = v144;
LABEL_35:
    sub_1DC28EB30(v130, &qword_1ECC7DA50, &qword_1DC52A728);
LABEL_47:
    v248 = v263;
    (*(v263 + 104))(v262, *MEMORY[0x1E6969638], v264);
    v208 = sub_1DC510B9C();
    v210 = v249;
    v250 = *(v248 + 8);
    v251 = OUTLINED_FUNCTION_149();
    v252(v251);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_484(&v286);
  v192 = OUTLINED_FUNCTION_331();
  OUTLINED_FUNCTION_39(v192, v193, v97);
  if (v194)
  {
    v146 = &qword_1ECC7DA50;
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v195, v196, v197);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v198, v199, v200);
    v201 = *(v268 + 8);
    v202 = OUTLINED_FUNCTION_74_8();
    v203(v202);
LABEL_39:
    v160 = &qword_1ECC7DA48;
    v161 = &qword_1DC52A720;
    goto LABEL_40;
  }

  v230 = v268;
  v231 = *(v268 + 32);
  v232 = OUTLINED_FUNCTION_380();
  v233(v232);
  OUTLINED_FUNCTION_207_2();
  sub_1DC43F1F8(v234, v235);
  OUTLINED_FUNCTION_63_0();
  LODWORD(v279) = sub_1DC5176CC();
  v236 = *(v230 + 8);
  v237 = OUTLINED_FUNCTION_74_8();
  v236(v237);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v238, v239, v240);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v241, v242, v243);
  v244 = OUTLINED_FUNCTION_220_0();
  v236(v244);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v245, v246, v247);
  if (v279)
  {
    goto LABEL_47;
  }

LABEL_41:
  OUTLINED_FUNCTION_20_3(&a16);
  sub_1DC510C7C();
  v204 = v273;
  sub_1DC510C5C();
  v281(v146, v283);
  OUTLINED_FUNCTION_4_24(v204);
  if (v98)
  {
    sub_1DC28EB30(v204, &qword_1ECC7BED8, &qword_1DC522250);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v205 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v206 = 1;
    v207 = v278;
    goto LABEL_54;
  }

  v208 = sub_1DC510BBC();
  v210 = v209;
  v211 = OUTLINED_FUNCTION_239();
  v212(v211, v52);
LABEL_48:

  v253 = sub_1DC517B8C();
  sub_1DC297814();
  v254 = sub_1DC296DBC();
  if (os_log_type_enabled(v254, v253))
  {
    OUTLINED_FUNCTION_63();
    v285 = OUTLINED_FUNCTION_115_4();
    *v21 = 136315138;
    v255 = OUTLINED_FUNCTION_63_0();
    v258 = sub_1DC291244(v255, v256, v257);

    *(v21 + 4) = v258;
    _os_log_impl(&dword_1DC287000, v254, v253, "Getting resource bundle query with language: %s", v21, 0xCu);
    OUTLINED_FUNCTION_138_3();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  v207 = v278;
  if (qword_1ECC82DE0 != -1)
  {
    OUTLINED_FUNCTION_64_7();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C878, &qword_1DC523440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v208;
  *(inited + 56) = v210;

  sub_1DC51764C();
  OUTLINED_FUNCTION_55();
  sub_1DC510DDC();
  v206 = 0;
LABEL_54:
  v260 = sub_1DC510DEC();
  __swift_storeEnumTagSinglePayload(v207, v206, 1, v260);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC421A08()
{
  OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  if (unk_1ECC7BD08 == 1)
  {
    v0 = OUTLINED_FUNCTION_75_6();
    nullsub_1(v0, v1);
  }

  v2 = OUTLINED_FUNCTION_43();
  sub_1DC2A329C(v2, v3);
  return OUTLINED_FUNCTION_65_1();
}

BOOL sub_1DC421A78()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v4 = (*(v3 + 168))();
  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_1DC421ADC()
{
  OUTLINED_FUNCTION_1_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[11] = swift_getObjectType();
  v4 = sub_1DC511D5C();
  v1[12] = v4;
  OUTLINED_FUNCTION_52(v4);
  v1[13] = v5;
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_124();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[17] = OUTLINED_FUNCTION_118();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_118();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  v1[19] = OUTLINED_FUNCTION_118();
  v17 = sub_1DC511E5C();
  v1[20] = v17;
  OUTLINED_FUNCTION_52(v17);
  v1[21] = v18;
  v20 = *(v19 + 64);
  v1[22] = OUTLINED_FUNCTION_118();
  v21 = sub_1DC510C8C();
  v1[23] = v21;
  OUTLINED_FUNCTION_52(v21);
  v1[24] = v22;
  v24 = *(v23 + 64);
  v1[25] = OUTLINED_FUNCTION_118();
  v25 = sub_1DC516F5C();
  v1[26] = v25;
  OUTLINED_FUNCTION_52(v25);
  v1[27] = v26;
  v28 = *(v27 + 64);
  v1[28] = OUTLINED_FUNCTION_118();
  v29 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1DC421D10()
{
  v184 = v0;
  v1 = *(v0 + 224);
  v2 = sub_1DC297814();
  *(v0 + 232) = v2;
  v3 = sub_1DC399074();
  *(v0 + 240) = v3;
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = sub_1DC296DBC();
  v8 = OUTLINED_FUNCTION_54_2();
  sub_1DC2A2ED0(v8, v9, v6, v7, 1, v10);

  if (sub_1DC41F2D4())
  {
    v11 = **(v0 + 80);
    v12 = MEMORY[0x1E69E7D40];
    v13 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_430();
    v15 = (*(v14 + 216))();
    *(v0 + 248) = v15;
    if (v15)
    {
      v17 = v16;
      v182 = v15;
      *(v0 + 256) = v16;
      v18 = sub_1DC517B8C();
      v19 = sub_1DC296DBC();
      if (os_log_type_enabled(v19, v18))
      {
        v20 = *(v0 + 80);
        v174 = v17;
        v21 = OUTLINED_FUNCTION_63();
        v180 = OUTLINED_FUNCTION_82();
        v183 = v180;
        *v21 = 136446210;
        (*((*v12 & *v20) + 0x158))();
        v23 = v22;
        v24 = sub_1DC2B8808();
        v26 = v25;

        sub_1DC291244(v24, v26, &v183);
        OUTLINED_FUNCTION_155_0();

        *(v21 + 4) = v23;
        _os_log_impl(&dword_1DC287000, v19, v18, "NLRouter request asset info: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v180);
        OUTLINED_FUNCTION_66();
        v17 = v174;
        OUTLINED_FUNCTION_66();
      }

      if (qword_1ECC82DD8 != -1)
      {
LABEL_40:
        OUTLINED_FUNCTION_63_11();
      }

      v28 = *(v0 + 192);
      v27 = *(v0 + 200);
      v29 = *(v0 + 184);
      v30 = qword_1ECC8F638;
      v31 = **(v0 + 80);
      v32 = *MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_430();
      (*(v33 + 144))(v34, v35, v36, v37);
      v38 = sub_1DC510B8C();
      v40 = v39;
      v41 = *(v28 + 8);
      v42 = OUTLINED_FUNCTION_54_2();
      v43(v42);
      *(v0 + 16) = v38;
      *(v0 + 24) = v40;
      *(v0 + 32) = 45;
      *(v0 + 40) = 0xE100000000000000;
      *(v0 + 48) = 95;
      *(v0 + 56) = 0xE100000000000000;
      sub_1DC2A32B0();
      OUTLINED_FUNCTION_72_6();
      sub_1DC517E1C();

      v44 = OUTLINED_FUNCTION_151();
      v46 = sub_1DC2E4CBC(v44, v45, v30);

      if (!v46)
      {
        goto LABEL_19;
      }

      v47 = *(v0 + 136);
      v48 = *(v0 + 72);
      v49 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
      sub_1DC4465D4();
      type metadata accessor for NLRouterTurnProbingResult(0);
      v50 = OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_39(v50, v51, v52);
      if (v77)
      {
        v53 = *(v0 + 136);

        v54 = &qword_1ECC7C158;
        v55 = &unk_1DC5234A0;
      }

      else
      {
        v74 = *(v0 + 136);
        v75 = *(v0 + 144);
        OUTLINED_FUNCTION_151();
        sub_1DC4465D4();
        OUTLINED_FUNCTION_19_20();
        sub_1DC43F4A8();
        type metadata accessor for NLRouterNLParseResponse(0);
        v76 = OUTLINED_FUNCTION_155_0();
        OUTLINED_FUNCTION_14_2(v76);
        if (!v77)
        {
          v103 = *(v0 + 152);
          v102 = *(v0 + 160);
          v104 = *(v0 + 144);
          v105 = *(v74 + 20);
          sub_1DC4465D4();
          OUTLINED_FUNCTION_41_10();
          sub_1DC43F4A8();
          OUTLINED_FUNCTION_39(v103, 1, v102);
          if (!v106)
          {
            (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
            v107 = sub_1DC511E3C();
            v108 = v107;
            v109 = *(v107 + 16);
            if (v109)
            {
              v170 = v46;
              v175 = v17;
              v110 = *(v0 + 120);
              v111 = *(v0 + 96);
              v112 = *(v0 + 104);
              v113 = *(v112 + 80);
              OUTLINED_FUNCTION_24();
              v17 = v108 + v114;
              v176 = *(v112 + 16);
              v176(v115, v108 + v114, v116, v117);
              v181 = (v112 + 8);
              v171 = v112;
              v172 = (v112 + 32);
              for (i = 1; v109 != i; ++i)
              {
                if (i >= *(v108 + 16))
                {
                  __break(1u);
                  goto LABEL_40;
                }

                v119 = *(v0 + 120);
                (v176)(*(v0 + 112), v17 + *(v112 + 72) * i, *(v0 + 96));
                sub_1DC511D4C();
                v121 = v120;
                sub_1DC511D4C();
                if (v121 >= v122)
                {
                  (*(v112 + 8))(*(v0 + 112), *(v0 + 96));
                }

                else
                {
                  v124 = *(v0 + 112);
                  v123 = *(v0 + 120);
                  v125 = v3;
                  v126 = v2;
                  v127 = v17;
                  v128 = v109;
                  v129 = v108;
                  v130 = *(v0 + 96);
                  v131 = OUTLINED_FUNCTION_12_3();
                  v132(v131);
                  v133 = *v172;
                  v134 = OUTLINED_FUNCTION_151();
                  v108 = v129;
                  v109 = v128;
                  v17 = v127;
                  v2 = v126;
                  v3 = v125;
                  v112 = v171;
                  v135(v134);
                }
              }

              v137 = *(v0 + 120);
              v136 = *(v0 + 128);
              v138 = *(v0 + 96);

              v139 = *v172;
              v140 = OUTLINED_FUNCTION_151();
              v141(v140);
              sub_1DC511D4C();
              if (v142 <= 0.75)
              {
                v154 = *(v0 + 168);
                v153 = *(v0 + 176);
                v155 = *(v0 + 160);
                v156 = *(v0 + 128);
                v157 = *(v0 + 96);

                (*v181)(v156, v157);
                v158 = *(v154 + 8);
                v159 = OUTLINED_FUNCTION_31_0();
                v160(v159);
                v17 = v175;
                goto LABEL_19;
              }

              v143 = *(v0 + 128);
              v144 = sub_1DC511D3C();
              v146 = sub_1DC332FF4(v144, v145, v170);

              v17 = v175;
              if (v146)
              {
                v148 = *(v0 + 168);
                v147 = *(v0 + 176);
                v149 = *(v0 + 160);
                (*v181)(*(v0 + 128), *(v0 + 96));
                v150 = *(v148 + 8);
                v151 = OUTLINED_FUNCTION_31_0();
                v152(v151);
                goto LABEL_19;
              }

              v161 = *(v0 + 224);
              v162 = *(v0 + 168);
              v177 = *(v0 + 160);
              v179 = *(v0 + 176);
              v163 = *(v0 + 128);
              v173 = *(v0 + 96);
              v57 = *(v0 + 64);
              sub_1DC5157CC();
              OUTLINED_FUNCTION_1_38();
              sub_1DC43F1F8(v164, v165);
              sub_1DC51501C();
              v166 = *MEMORY[0x1E69D02E8];
              v167 = sub_1DC5157EC();
              OUTLINED_FUNCTION_11_0(v167);
              (*(v168 + 104))(v57, v166);
              sub_1DC517B9C();
              v169 = OUTLINED_FUNCTION_481();
              OUTLINED_FUNCTION_62_1();
              sub_1DC516F0C();

              (*v181)(v163, v173);
              (*(v162 + 8))(v179, v177);
              v62 = 0;
              goto LABEL_11;
            }

            (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

LABEL_19:
            v85 = *(v0 + 80);
            v84 = *(v0 + 88);
            v86 = *(v0 + 72);
            sub_1DC510D3C();
            v87 = type metadata accessor for NLRouterServiceRequest(0);
            v88 = (v86 + *(v87 + 40));
            v89 = v88[1];
            v178 = *v88;
            v90 = swift_allocObject();
            *(v0 + 264) = v90;
            v90[2] = v85;
            v90[3] = v182;
            v90[4] = v17;
            v90[5] = v84;
            v91 = *(MEMORY[0x1E699C0C0] + 4);
            v92 = v85;

            v93 = swift_task_alloc();
            v94 = OUTLINED_FUNCTION_461(v93);
            v95 = type metadata accessor for NLRouterServiceResponse(v94);
            v96 = sub_1DC43F1F8(&qword_1ECC7BC28, type metadata accessor for NLRouterServiceRequest);
            v97 = sub_1DC43F1F8(&qword_1ECC7BC30, type metadata accessor for NLRouterServiceRequest);
            v98 = sub_1DC43F1F8(&qword_1ECC7BBE8, type metadata accessor for NLRouterServiceResponse);
            v99 = sub_1DC43F1F8(&qword_1ECC7BBF0, type metadata accessor for NLRouterServiceResponse);
            *v93 = v0;
            v93[1] = sub_1DC422878;
            v101 = *(v0 + 64);
            v100 = *(v0 + 72);
            v188 = v98;
            v189 = v99;
            v186 = v96;
            v187 = v97;

            return MEMORY[0x1EEE03D40](v101, v178, v89, v100, &unk_1DC52A758, v90, v87, v95);
          }

LABEL_18:
          sub_1DC28EB30(*(v0 + 152), &qword_1ECC7D398, &qword_1DC5283F8);
          goto LABEL_19;
        }

        v53 = *(v0 + 144);

        v54 = &qword_1ECC7C160;
        v55 = qword_1DC5233B0;
      }

      sub_1DC28EB30(v53, v54, v55);
      v78 = *(v0 + 152);
      v79 = *(v0 + 160);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
      goto LABEL_18;
    }
  }

  v56 = *(v0 + 224);
  v57 = *(v0 + 64);
  sub_1DC517B9C();
  v58 = OUTLINED_FUNCTION_481();
  OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C();

  v59 = *MEMORY[0x1E69D02D8];
  v60 = sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0(v60);
  (*(v61 + 104))(v57, v59);
  v62 = 1;
LABEL_11:
  v63 = OUTLINED_FUNCTION_391();
  *(v57 + v64) = v62;
  v65 = (v57 + *(v63 + 24));
  *v65 = 0;
  v65[1] = 0;
  v66 = *v3;
  v67 = v3[1];
  v68 = *(v3 + 16);
  v69 = sub_1DC296DBC();
  OUTLINED_FUNCTION_39_0();
  sub_1DC2B8848();

  v70 = OUTLINED_FUNCTION_271_0();
  v71(v70);

  OUTLINED_FUNCTION_39_5();

  return v72();
}

uint64_t sub_1DC422878()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *(v2 + 272);
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (!v0)
  {
    v7 = *(v3 + 264);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC422980()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];

  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 16);
  v9 = sub_1DC296DBC();
  OUTLINED_FUNCTION_36();
  sub_1DC2B8848();

  v10 = OUTLINED_FUNCTION_271_0();
  v11(v10);

  OUTLINED_FUNCTION_39_5();

  return v12();
}

uint64_t sub_1DC422A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v20 = v18[32];
  v19 = v18[33];
  v21 = v18[30];
  v22 = v18[31];
  v23 = v18[28];
  v24 = v18[29];
  v25 = v18[26];
  v26 = v18[27];
  v27 = v18[25];
  v45 = v18[22];
  v46 = v18[19];
  v47 = v18[18];
  v48 = v18[17];
  v49 = v18[16];
  v50 = v18[15];
  v51 = v18[14];

  v28 = *v21;
  v29 = v21[1];
  v30 = *(v21 + 16);
  v31 = sub_1DC296DBC();
  sub_1DC2B8848();

  v32 = *(v26 + 8);
  v33 = OUTLINED_FUNCTION_63_0();
  v34(v33);

  OUTLINED_FUNCTION_2_2();
  v35 = v18[35];
  OUTLINED_FUNCTION_290_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, v50, v51, a16, a17, a18);
}

uint64_t NLRouterServiceResponse.init(routingDecision:status:decisionSource:)@<X0>(char *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_31_0();
  v11(v10);
  result = OUTLINED_FUNCTION_391();
  *(a3 + v13) = v4;
  v14 = (a3 + *(result + 24));
  *v14 = v5;
  v14[1] = v6;
  return result;
}

uint64_t sub_1DC422C34()
{
  OUTLINED_FUNCTION_1_0();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[9] = v5;
  v0[10] = v6;
  v7 = sub_1DC5157EC();
  v0[15] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[16] = v8;
  v10 = *(v9 + 64);
  v0[17] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC510C8C();
  v0[18] = v11;
  OUTLINED_FUNCTION_52(v11);
  v0[19] = v12;
  v14 = *(v13 + 64);
  v0[20] = OUTLINED_FUNCTION_118();
  v15 = type metadata accessor for IntepretedModelDecision(0);
  v0[21] = v15;
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  v0[22] = OUTLINED_FUNCTION_118();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  v0[23] = OUTLINED_FUNCTION_118();
  v21 = sub_1DC510B6C();
  v0[24] = v21;
  OUTLINED_FUNCTION_52(v21);
  v0[25] = v22;
  v0[26] = *(v23 + 64);
  v0[27] = OUTLINED_FUNCTION_124();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1DC422DF4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = v0[10];
  v2 = *(v0[11] + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_nlRouterClientInstrumentationUtil);
  v0[31] = v2;
  v3 = type metadata accessor for NLRouterServiceRequest(0);
  v0[32] = v3;
  v4 = (v1 + *(v3 + 40));
  v0[33] = *v4;
  v0[34] = v4[1];
  v5 = (v1 + *(v3 + 44));
  v6 = *v5;
  v7 = v5[1];
  v12 = (*v2 + 264);
  v13 = (*v12 + **v12);
  v8 = (*v12)[1];
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_71_8(v9);

  return v13(v10);
}

uint64_t sub_1DC422F68()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v2 = v1;
  v4 = *(v3 + 280);
  *v2 = *v0;
  *(v1 + 288) = v5;

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC423050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = v14[36];
  v16 = v14[33];
  v18 = v14[30];
  v17 = v14[31];
  v19 = v14[29];
  v20 = v14[12];
  v21 = v14[13];
  v22 = v14[10];
  v43 = v14[34];
  v45 = v14[11];
  sub_1DC31D50C();
  v24 = v23;
  v26 = v25;
  v14[37] = v23;
  v14[38] = v25;
  v14[39] = v27;
  sub_1DC510B5C();
  sub_1DC510B5C();
  v14[40] = sub_1DC510D3C();
  v14[5] = v24;
  v14[6] = v26;
  sub_1DC445FDC();
  sub_1DC446030();
  OUTLINED_FUNCTION_155_0();

  sub_1DC510D2C();
  v28 = v14[6];

  v29 = swift_task_alloc();
  v14[41] = v29;
  v29[2] = v45;
  v29[3] = v24;
  v29[4] = v26;
  v29[5] = v18;
  v44 = (*v17 + 488);
  v46 = *v44 + **v44;
  v30 = (*v44)[1];
  v31 = swift_task_alloc();
  v14[42] = v31;
  *v31 = v14;
  v31[1] = sub_1DC423250;
  v32 = v14[30];
  v33 = v14[31];
  OUTLINED_FUNCTION_33_12(v14[36]);
  OUTLINED_FUNCTION_74_5();

  return v38(v34, v35, v36, v37, v38, v39, v40, v41, a9, v44, v46, a12, a13, a14);
}

uint64_t sub_1DC423250()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 336);
  v7 = *(v5 + 328);
  v8 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v9 = v8;
  *(v11 + 344) = v10;

  v12 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DC423790()
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v9 = v6[45];
  *v8 = *v1;
  v7[46] = v0;

  v10 = v6[44];
  if (v0)
  {
    v11 = v7[38];
  }

  else
  {
    v7[47] = v3;
    v7[48] = v5;
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_487();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DC423CAC()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = v4[50];
  v6 = v4[49];
  v7 = v4[38];
  v8 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v9 = v8;
  *(v10 + 408) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC423DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v18 = *(v16 + 232);
  v17 = *(v16 + 240);
  v19 = *(v16 + 224);
  v21 = *(v16 + 192);
  v20 = *(v16 + 200);
  v40 = *(v16 + 216);
  v41 = *(v16 + 184);
  v39 = *(v16 + 176);
  v42 = *(v16 + 160);
  v23 = *(v16 + 128);
  v22 = *(v16 + 136);
  v24 = *(v16 + 120);

  OUTLINED_FUNCTION_11_31();
  sub_1DC43F4A8();
  v25 = *(v20 + 8);
  v25(v18, v21);
  v26 = *(v23 + 8);
  v27 = OUTLINED_FUNCTION_36();
  v28(v27);
  v25(v19, v21);
  v29 = OUTLINED_FUNCTION_47_1();
  (v25)(v29);

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_24_6();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, a14, a15, a16);
}

uint64_t sub_1DC423F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = *(v14 + 200);

  v16 = *(v15 + 8);
  v18 = *(v14 + 184);
  v17 = *(v14 + 192);
  v19 = *(v14 + 232);
  v20 = *(v14 + 240);
  v22 = *(v14 + 216);
  v21 = *(v14 + 224);
  v23 = *(v14 + 176);
  v36 = *(v14 + 160);
  v37 = *(v14 + 136);
  v38 = *(v14 + 368);
  v24 = OUTLINED_FUNCTION_36();
  v16(v24);
  v25 = OUTLINED_FUNCTION_107();
  v16(v25);
  v26 = OUTLINED_FUNCTION_29_0();
  v16(v26);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_74_5();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, a12, a13, a14);
}

uint64_t sub_1DC424008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 232);
  v18 = *(v16 + 192);
  v19 = *(v16 + 200);
  v20 = *(v16 + 176);
  v21 = *(v16 + 128);

  OUTLINED_FUNCTION_11_31();
  sub_1DC43F4A8();
  v22 = *(v19 + 8);
  v23 = OUTLINED_FUNCTION_31_0();
  v22(v23);
  v25 = *(v16 + 232);
  v24 = *(v16 + 240);
  v26 = *(v16 + 216);
  v27 = *(v16 + 224);
  v28 = *(v16 + 184);
  v41 = v28;
  v42 = *(v16 + 176);
  v29 = *(v16 + 160);
  v43 = v29;
  v44 = *(v16 + 408);
  (*(v21 + 8))(*(v16 + 136), *(v16 + 120));
  v30 = OUTLINED_FUNCTION_87_1();
  v22(v30);
  v31 = OUTLINED_FUNCTION_74_8();
  v22(v31);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, a14, a15, a16);
}

uint64_t sub_1DC424138@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DC424140()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_115_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_59_2();

  return sub_1DC42BD90();
}

uint64_t sub_1DC4241D8()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_115_5();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_59_2();

  return v7();
}

uint64_t sub_1DC424314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = OUTLINED_FUNCTION_47();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC424350()
{
  OUTLINED_FUNCTION_36_11();
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_nlRouterClientInstrumentationUtil);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v11;
  *(v4 + 56) = v1;
  *&v10 = *v3 + 496;
  v12 = (*v10 + **v10);
  v5 = *(*v10 + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DC4244E4;
  v7 = *(v0 + 32);
  v8 = OUTLINED_FUNCTION_33_12(*(v0 + 24));

  return v12(v8);
}

uint64_t sub_1DC4244E4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  OUTLINED_FUNCTION_2_2();

  return v6();
}

uint64_t sub_1DC4245E0()
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_487();

  return sub_1DC42C88C();
}

void sub_1DC424690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  LODWORD(v244) = v24;
  v26 = v25;
  v241 = v27;
  v245 = v28;
  OUTLINED_FUNCTION_42_0();
  v30 = v29;
  v248 = sub_1DC51588C();
  v31 = OUTLINED_FUNCTION_0(v248);
  v252 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v250 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  v240 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25();
  v242 = v50;
  v51 = OUTLINED_FUNCTION_12();
  v253 = type metadata accessor for IntepretedModelDecision(v51);
  v52 = OUTLINED_FUNCTION_35(v253);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  v243 = v55;
  OUTLINED_FUNCTION_12();
  v56 = sub_1DC51072C();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_3();
  v62 = sub_1DC5157EC();
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_15();
  v249 = v68;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23_1();
  v247 = v70;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_62();
  v251 = v74;
  OUTLINED_FUNCTION_31_0();
  v75 = sub_1DC329FF0();
  if (v75 != 5)
  {
    v91 = v75;
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v92 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    (*(v65 + 104))(v30, *MEMORY[0x1E69D02D8], v62);
    v93 = v253;
LABEL_71:
    *(v30 + *(v93 + 20)) = v91;
    OUTLINED_FUNCTION_34();
    return;
  }

  v246 = v65;
  v236 = v62;
  v235 = v30;
  OUTLINED_FUNCTION_31_0();
  v76 = sub_1DC3294B4();
  v256 = v21;
  v257 = v20;
  sub_1DC5106FC();
  sub_1DC2A32B0();
  OUTLINED_FUNCTION_440();
  sub_1DC517E0C();
  OUTLINED_FUNCTION_137();
  v77 = *(v59 + 8);
  v78 = OUTLINED_FUNCTION_73();
  v79(v78);
  if (!v76[2])
  {

    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v94 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v95 = *MEMORY[0x1E69D02D8];
    v89 = v246;
    v96 = OUTLINED_FUNCTION_90_1();
    v97(v96);
    v91 = 4;
    goto LABEL_66;
  }

  v234 = &v256;
  OUTLINED_FUNCTION_458();
  if (v81 != 1)
  {
    v98 = v76[4];
    v99 = v76[5];
    v101 = v76[6];
    v100 = v76[7];
    v256 = v98;
    v257 = v99;
    v258 = v101;
    v259 = v100;
    v254 = v80;
    v255 = 0xE700000000000000;
    sub_1DC327AE8();

    if (sub_1DC517E5C())
    {
      v256 = v98;
      v257 = v99;
      v258 = v101;
      v259 = v100;
      v254 = 0x3E6F646E753CLL;
      v255 = 0xE600000000000000;
      if (sub_1DC517E5C())
      {
        sub_1DC363388(v76);
        if (v103)
        {
          v252 = v102;

          if ((sub_1DC2CFA84() & 1) == 0)
          {

            v219 = *MEMORY[0x1E69D02D8];
            v89 = v246;
            goto LABEL_62;
          }

          v104 = OUTLINED_FUNCTION_152();
          MEMORY[0x1E1296060](v104);
          OUTLINED_FUNCTION_137();

          OUTLINED_FUNCTION_48_0();
          sub_1DC3295D4();
          OUTLINED_FUNCTION_141_1();

          OUTLINED_FUNCTION_301_0();
          v105 = MEMORY[0x1E1296060]();
          v107 = v106;

          v108 = *MEMORY[0x1E69D05E8];
          v109 = sub_1DC515ECC();
          OUTLINED_FUNCTION_35(v109);
          v111 = v242;
          (*(v110 + 104))(v242, v108, v109);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v112, v113, v114, v109);
          v115 = v243;
          v116 = OUTLINED_FUNCTION_31_0();
          sub_1DC428B40(v116, v117, v105, v107, v242, v118, v26, v119, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243);

          sub_1DC28EB30(v111, &qword_1ECC7D090, &qword_1DC524180);
          v89 = v246;
          OUTLINED_FUNCTION_70_7();
          OUTLINED_FUNCTION_159();
          OUTLINED_FUNCTION_107_6();
          v120();
          v93 = v253;
          v91 = *(v115 + *(v253 + 20));
          OUTLINED_FUNCTION_11_31();
LABEL_33:
          sub_1DC43F4A8();
LABEL_67:
          v191 = sub_1DC517B9C();
          sub_1DC297814();
          v192 = sub_1DC296DBC();
          OUTLINED_FUNCTION_70_7();
          v193 = v249;
          v194 = OUTLINED_FUNCTION_74();
          v195(v194);
          if (os_log_type_enabled(v192, v191))
          {
            v196 = OUTLINED_FUNCTION_63();
            v197 = OUTLINED_FUNCTION_82();
            v256 = v197;
            *v196 = 136315138;
            v198 = sub_1DC32B2D8();
            v200 = v199;
            v201 = *(v89 + 8);
            v202 = OUTLINED_FUNCTION_288();
            v203(v202);
            sub_1DC291244(v198, v200, &v256);
            OUTLINED_FUNCTION_155_0();

            *(v196 + 4) = v193;
            _os_log_impl(&dword_1DC287000, v192, v191, "Model Decision: %s", v196, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v197);
            v93 = v253;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_66();
          }

          else
          {

            v204 = *(v89 + 8);
            v205 = OUTLINED_FUNCTION_288();
            v206(v205);
          }

          v30 = v235;
          v207 = *(v89 + 32);
          v208 = OUTLINED_FUNCTION_35_0();
          v209(v208);
          goto LABEL_71;
        }
      }
    }

    v89 = v246;
    if (!v76[2])
    {
      goto LABEL_86;
    }

    v121 = v76[4];
    v122 = v76[5];
    v124 = v76[6];
    v123 = v76[7];

    sub_1DC329B0C();
    v126 = v125;

    v127 = v248;
    if (v126)
    {
      v128 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x1E1296060](v128);

      OUTLINED_FUNCTION_56_0();
      sub_1DC329804(v129);

      MEMORY[0x1EEE9AC00](v130);
      OUTLINED_FUNCTION_66_1();
      *(v131 - 16) = v247;
      *(v131 - 8) = v26;
      v133 = sub_1DC42A10C(sub_1DC43F51C, v132, v76);

      v245 = *(v133 + 16);
      if (!v245)
      {
LABEL_29:
        *v251 = v133;
        v91 = 5;
        v145 = MEMORY[0x1E69D02C8];
LABEL_65:
        v189 = *v145;
        v89 = v246;
        OUTLINED_FUNCTION_257_0();
        OUTLINED_FUNCTION_107_6();
        v190();
        (*(v246 + 8))(v247, v26);
        goto LABEL_66;
      }

      v134 = 0;
      OUTLINED_FUNCTION_22_0();
      v136 = v133 + v135;
      v26 = v252;
      while (v134 < *(v133 + 16))
      {
        (*(v252 + 16))(v250, v136 + *(v252 + 72) * v134, v127);
        sub_1DC32F444();
        if (v138)
        {
          v139 = v137 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v139 = 0;
        }

        if (v138)
        {
          v140 = v138;
        }

        else
        {
          v140 = 0xE000000000000000;
        }

        v141 = *(v252 + 8);
        v142 = OUTLINED_FUNCTION_45_2();
        v143(v142);

        v144 = HIBYTE(v140) & 0xF;
        if ((v140 & 0x2000000000000000) == 0)
        {
          v144 = v139;
        }

        if (!v144)
        {

          v91 = 1;
          v145 = MEMORY[0x1E69D02D8];
          goto LABEL_65;
        }

        if (v245 == ++v134)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v182 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v183 = *MEMORY[0x1E69D02D8];
    v184 = OUTLINED_FUNCTION_90_1();
    v185(v184);
    v91 = 1;
LABEL_66:
    v93 = v253;
    goto LABEL_67;
  }

  v247 = v65;
  v250 = v26;
  v82 = v76[4];
  v83 = v76[5];
  v84 = v76[6];
  v85 = v76[7];

  OUTLINED_FUNCTION_476();
  sub_1DC3295D4();
  v233 = v86;
  v88 = v87;

  v256 = v82;
  v257 = v83;
  v258 = v84;
  v259 = v85;
  v254 = 0x3E656761733CLL;
  v255 = 0xE600000000000000;
  sub_1DC327AE8();
  v89 = v246;
  if (sub_1DC517E5C() & 1) != 0 && (sub_1DC2D14F0())
  {

    v90 = MEMORY[0x1E69D02F8];
LABEL_61:
    v186 = *v90;
LABEL_62:
    v187 = OUTLINED_FUNCTION_90_1();
    v188(v187);
LABEL_63:
    v91 = 5;
    goto LABEL_66;
  }

  v256 = v82;
  v257 = v83;
  v258 = v84;
  v259 = v85;
  OUTLINED_FUNCTION_458();
  v254 = v147;
  v255 = v146;
  if (OUTLINED_FUNCTION_414() & 1) != 0 && (sub_1DC2CFA84())
  {

    OUTLINED_FUNCTION_476();
    OUTLINED_FUNCTION_192();

    sub_1DC515ECC();
    v148 = v242;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
    v153 = v243;
    OUTLINED_FUNCTION_96_4();
    sub_1DC428B40(v154, v155, v156, v157, v242, v158, v250, v159, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243);

    sub_1DC28EB30(v148, &qword_1ECC7D090, &qword_1DC524180);
    OUTLINED_FUNCTION_70_7();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_107_6();
    v160();
    v93 = v253;
    v91 = *(v153 + *(v253 + 20));
    OUTLINED_FUNCTION_11_31();
    goto LABEL_33;
  }

  v256 = v82;
  v257 = v83;
  v258 = v84;
  v259 = v85;
  v254 = 0x3E6863726165733CLL;
  v255 = 0xE800000000000000;
  if (OUTLINED_FUNCTION_414() & 1) != 0 && (sub_1DC2BCEFC())
  {
    OUTLINED_FUNCTION_253_0();
    v162 = v233;
    v164 = v233 == v163 && v88 == v161;
    if (v164 || (OUTLINED_FUNCTION_187(), (sub_1DC51825C() & 1) != 0))
    {

      v90 = MEMORY[0x1E69D02F0];
      goto LABEL_61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
    v175 = OUTLINED_FUNCTION_311_0();
    *(v175 + 16) = xmmword_1DC522F20;
    MEMORY[0x1EEE9AC00](v175);
    OUTLINED_FUNCTION_66_1();
    *(v220 - 16) = v162;
    *(v220 - 8) = v88;
    sub_1DC5158BC();
    OUTLINED_FUNCTION_429();
    v221 = sub_1DC5158DC();
    OUTLINED_FUNCTION_14_2(v240);
    v168 = v236;
    if (!v164)
    {

      OUTLINED_FUNCTION_7_1(v221);
      v223 = *(v222 + 32);
      OUTLINED_FUNCTION_272_0();
      v224();
      (*(v84 + 104))(v175 + v250, *MEMORY[0x1E69D0338], v248);
      v181 = &a18;
      goto LABEL_83;
    }

    goto LABEL_87;
  }

  v256 = v82;
  v257 = v83;
  v258 = v84;
  v259 = v85;
  v254 = 0x3E78697269733CLL;
  v255 = 0xE700000000000000;
  if ((OUTLINED_FUNCTION_414() & 1) == 0)
  {

    v90 = MEMORY[0x1E69D02D8];
    goto LABEL_61;
  }

  v244 = v85;
  sub_1DC329B0C();
  v166 = v88;
  v167 = v233 == v245 && v88 == v241;
  v93 = v253;
  v168 = v236;
  if (v167)
  {

    v210 = *MEMORY[0x1E69D02D8];
    v211 = OUTLINED_FUNCTION_257_0();
    v212(v211);

LABEL_78:
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v218 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

LABEL_79:
    v91 = 1;
    goto LABEL_67;
  }

  LODWORD(v242) = v165;
  v243 = HIBYTE(v88) & 0xF;
  v169 = v233;
  if (OUTLINED_FUNCTION_267_0())
  {
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_253_0();
  if (v233 == v171 && v166 == v170)
  {
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_77_1();
  if (sub_1DC51825C())
  {
    goto LABEL_73;
  }

  v173 = v233 & 0xFFFFFFFFFFFFLL;
  if ((v166 & 0x2000000000000000) != 0)
  {
    v173 = v243;
  }

  if (!v173)
  {
LABEL_73:

    v213 = *MEMORY[0x1E69D02D8];
    v214 = OUTLINED_FUNCTION_257_0();
    v215(v214);
    OUTLINED_FUNCTION_77_1();
    v216 = OUTLINED_FUNCTION_267_0();

    if ((v216 & 1) == 0)
    {
      v217 = v233 & 0xFFFFFFFFFFFFLL;
      if ((v166 & 0x2000000000000000) != 0)
      {
        v217 = v243;
      }

      if (((v217 != 0) & v242) != 0)
      {
        v91 = 5;
        goto LABEL_67;
      }
    }

    goto LABEL_78;
  }

  v174 = OUTLINED_FUNCTION_69_7();
  if ((sub_1DC32A17C(v174, v247, v250, v233, v166) & 1) == 0)
  {

    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v228 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v229 = *MEMORY[0x1E69D02D8];
    v230 = OUTLINED_FUNCTION_257_0();
    v231(v230);
    goto LABEL_79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
  v175 = OUTLINED_FUNCTION_311_0();
  *(v175 + 16) = xmmword_1DC522F20;
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_66_1();
  *(v176 - 16) = v169;
  *(v176 - 8) = v166;
  v177 = v238;
  sub_1DC51583C();
  OUTLINED_FUNCTION_429();
  sub_1DC51587C();
  v178 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_14_2(v178);
  if (!v164)
  {

    OUTLINED_FUNCTION_7_1(&v232);
    v180 = v250;
    (*(v179 + 32))(v175 + v250, v177, &v232);
    (*(v93 + 104))(v175 + v180, *MEMORY[0x1E69D0330], v248);
    v181 = &a16;
LABEL_83:
    v225 = *(v181 - 32);
    *v225 = v175;
    (*(v89 + 104))(v225, *MEMORY[0x1E69D02C8], v168);
    OUTLINED_FUNCTION_42_5();
    v226 = OUTLINED_FUNCTION_72();
    v227(v226);
    goto LABEL_63;
  }

LABEL_88:
  __break(1u);
}

uint64_t sub_1DC425868()
{
  OUTLINED_FUNCTION_1_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = type metadata accessor for HeuristicRoutingResponse(0);
  v0[9] = v8;
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC5157EC();
  v0[11] = v11;
  OUTLINED_FUNCTION_52(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_124();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA60, &qword_1DC52A778);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  v0[16] = OUTLINED_FUNCTION_124();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1DC425998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 136);
  v18 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7D40];
  v20 = *(v16 + 144);
  (*((*MEMORY[0x1E69E7D40] & **(v16 + 24)) + 0x178))(*(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56));
  OUTLINED_FUNCTION_45_2();
  sub_1DC4465D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  v22 = *(v16 + 136);
  v23 = *(v16 + 120);
  if (EnumTagSinglePayload == 1)
  {
    v24 = *(v16 + 88);
    v25 = *(v16 + 96);
    v26 = *(v16 + 32);
    sub_1DC28EB30(*(v16 + 136), &qword_1ECC7DA60, &qword_1DC52A778);
    v27 = *(v25 + 16);
    v28 = OUTLINED_FUNCTION_151();
  }

  else
  {
    v30 = *(v16 + 112);
    v31 = *(v16 + 96);
    v32 = *(v31 + 16);
    v33 = OUTLINED_FUNCTION_60();
    v34(v33);
    OUTLINED_FUNCTION_211_1();
    sub_1DC43F4A8();
    v35 = *(v31 + 32);
    v28 = OUTLINED_FUNCTION_48_0();
  }

  v29(v28);
  v36 = *(v16 + 104);
  v37 = *(v16 + 32);
  (*((*v19 & **(v16 + 24)) + 0x1C0))(*(v16 + 120));
  OUTLINED_FUNCTION_45_2();
  if ((sub_1DC5157DC() & 1) != 0 || (v38 = *(v16 + 144), v39 = *(v16 + 128), v40 = *(v16 + 72), sub_1DC4465D4(), v41 = OUTLINED_FUNCTION_34_11(), OUTLINED_FUNCTION_39(v41, v42, v40), v43))
  {
    v72 = 2;
    v73 = 0;
  }

  else
  {
    v44 = *(v16 + 128);
    v46 = *(v16 + 72);
    v45 = *(v16 + 80);
    sub_1DC440004();
    v47 = (v45 + *(v46 + 20));
    v72 = v47[1];
    v73 = *v47;

    OUTLINED_FUNCTION_211_1();
    sub_1DC43F4A8();
  }

  v49 = *(v16 + 136);
  v48 = *(v16 + 144);
  v50 = *(v16 + 120);
  v69 = *(v16 + 128);
  v70 = *(v16 + 112);
  v51 = *(v16 + 88);
  v52 = *(v16 + 96);
  v71 = *(v16 + 80);
  v53 = *(v16 + 16);
  (*((*MEMORY[0x1E69E7D40] & **(v16 + 24)) + 0x180))(*(v16 + 104), *(v16 + 40), *(v16 + 64));
  v54 = *(v52 + 8);
  v55 = OUTLINED_FUNCTION_77_1();
  v54(v55);
  v56 = OUTLINED_FUNCTION_39_0();
  v54(v56);
  sub_1DC28EB30(v48, &qword_1ECC7DA60, &qword_1DC52A778);
  v57 = OUTLINED_FUNCTION_391();
  *(v53 + v58) = 0;
  v59 = (v53 + *(v57 + 24));
  *v59 = v73;
  v59[1] = v72;

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_24_6();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, v69, v70, v71, v72, v73, a14, a15, a16);
}

uint64_t sub_1DC425CD0()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1DC510B6C();
  v1[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_118();
  v9 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC425D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_107_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_93_0();
  a20 = v22;
  v25 = *(v22 + 56);
  v26 = *(v22 + 64);
  v27 = *(v22 + 48);
  v28 = *(v22 + 32);
  v29 = sub_1DC517B9C();
  *(v22 + 72) = sub_1DC297814();
  v30 = sub_1DC296DBC();
  v31 = *(v25 + 16);
  v32 = OUTLINED_FUNCTION_87_1();
  v33(v32);
  v34 = os_log_type_enabled(v30, v29);
  v35 = *(v22 + 56);
  v36 = *(v22 + 64);
  v37 = *(v22 + 48);
  if (v34)
  {
    OUTLINED_FUNCTION_63();
    a10 = OUTLINED_FUNCTION_115_4();
    *v26 = 136315138;
    v38 = sub_1DC510B1C();
    HIDWORD(a9) = v29;
    v40 = v39;
    v41 = *(v35 + 8);
    v42 = OUTLINED_FUNCTION_12_3();
    v43(v42);
    v44 = sub_1DC291244(v38, v40, &a10);

    *(v26 + 4) = v44;
    OUTLINED_FUNCTION_407(&dword_1DC287000, v45, BYTE4(a9), "GMS inference clientRequestIdentifier: %s");
    OUTLINED_FUNCTION_146_5();
    OUTLINED_FUNCTION_67();
  }

  else
  {

    v46 = *(v35 + 8);
    v47 = OUTLINED_FUNCTION_12_3();
    v48(v47);
  }

  v49 = sub_1DC517B9C();
  v50 = sub_1DC296DBC();
  if (os_log_type_enabled(v50, v49))
  {
    v52 = *(v22 + 16);
    v51 = *(v22 + 24);
    v53 = OUTLINED_FUNCTION_63();
    a10 = OUTLINED_FUNCTION_82();
    *v53 = 136315138;
    v54 = OUTLINED_FUNCTION_16();
    *(v53 + 4) = sub_1DC291244(v54, v55, v56);
    OUTLINED_FUNCTION_409(&dword_1DC287000, v57, v49, "Model input: %s");
    OUTLINED_FUNCTION_146_5();
    OUTLINED_FUNCTION_54_12();
  }

  v58 = **(v22 + 40);
  v59 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v61 = (*(v60 + 168))();
  *(v22 + 80) = v61;
  if (v61)
  {
    sub_1DC517B9C();
    v62 = sub_1DC296DBC();
    OUTLINED_FUNCTION_475();

    v63 = swift_task_alloc();
    *(v22 + 88) = v63;
    *v63 = v22;
    v63[1] = sub_1DC4260B0;
    v64 = *(v22 + 24);
    v65 = *(v22 + 32);
    OUTLINED_FUNCTION_33_12(*(v22 + 16));
    OUTLINED_FUNCTION_74_5();

    return sub_1DC4265BC();
  }

  else
  {
    sub_1DC517B9C();
    v68 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    sub_1DC43F5BC();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    *v69 = 1;
    swift_willThrow();
    v70 = *(v22 + 64);

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_74_5();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DC4260B0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  v2[12] = v6;
  v2[13] = v7;
  v2[14] = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC4261B4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = v0[9];
  v2 = sub_1DC517B9C();
  v3 = sub_1DC296DBC();
  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[10];
    v7 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_82();
    *v7 = 136315138;
    v8 = OUTLINED_FUNCTION_16();
    *(v7 + 4) = sub_1DC291244(v8, v9, v10);
    OUTLINED_FUNCTION_409(&dword_1DC287000, v11, v2, "Model output: %s");
    OUTLINED_FUNCTION_146_5();
    OUTLINED_FUNCTION_54_12();
  }

  else
  {
    v12 = v0[10];
  }

  v13 = v0[8];

  OUTLINED_FUNCTION_297_0();
  v15 = v0[12];
  v16 = v0[13];

  return v14(v15, v16);
}

void sub_1DC4262C4()
{
  OUTLINED_FUNCTION_36_11();
  v2 = v0[9];
  v3 = sub_1DC517B9C();
  v4 = sub_1DC296DBC();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[14];
    OUTLINED_FUNCTION_63();
    v6 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_483(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_431(v7);
    _os_log_impl(&dword_1DC287000, v4, v3, "Model Inference Error: %@", v1, 0xCu);
    sub_1DC28EB30(v6, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_58();
  }

  v8 = v0[14];
  v10 = v0[9];
  v9 = v0[10];

  sub_1DC517BAC();
  v11 = sub_1DC296DBC();
  OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C();

  sub_1DC43F5BC();
  OUTLINED_FUNCTION_236_1();
  swift_allocError();
  *v12 = v8;
  swift_willThrow();

  v13 = v0[8];

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_477();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC426430()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_115_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_272_0();

  return sub_1DC4265BC();
}

uint64_t sub_1DC4264C8()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  OUTLINED_FUNCTION_297_0();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_36();
  }

  return v7(v6);
}

uint64_t sub_1DC4265BC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_432(v1, v2, v3, v4);
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF08, &qword_1DC52E7D8);
  v0[29] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[30] = v7;
  v9 = *(v8 + 64);
  v0[31] = OUTLINED_FUNCTION_118();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF10, &qword_1DC52E7E0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  v0[32] = OUTLINED_FUNCTION_118();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF18, &qword_1DC52E7E8);
  v0[33] = v13;
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_461(v16);
  v17 = sub_1DC51648C();
  v0[35] = v17;
  OUTLINED_FUNCTION_52(v17);
  v0[36] = v18;
  v20 = *(v19 + 64);
  v0[37] = OUTLINED_FUNCTION_118();
  v21 = sub_1DC51649C();
  v0[38] = v21;
  OUTLINED_FUNCTION_52(v21);
  v0[39] = v22;
  v24 = *(v23 + 64);
  v0[40] = OUTLINED_FUNCTION_118();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF20, &qword_1DC52E7F0);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  v0[41] = OUTLINED_FUNCTION_118();
  v28 = sub_1DC516EEC();
  v0[42] = v28;
  OUTLINED_FUNCTION_52(v28);
  v0[43] = v29;
  v31 = *(v30 + 64);
  v0[44] = OUTLINED_FUNCTION_124();
  v0[45] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_10(v32);
  v34 = *(v33 + 64);
  v0[46] = OUTLINED_FUNCTION_124();
  v0[47] = swift_task_alloc();
  v35 = sub_1DC51510C();
  v0[48] = v35;
  OUTLINED_FUNCTION_52(v35);
  v0[49] = v36;
  v38 = *(v37 + 64);
  v0[50] = OUTLINED_FUNCTION_118();
  v39 = sub_1DC51755C();
  v0[51] = v39;
  OUTLINED_FUNCTION_52(v39);
  v0[52] = v40;
  v42 = *(v41 + 64);
  v0[53] = OUTLINED_FUNCTION_124();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v43, v44, v45);
}

uint64_t sub_1DC426900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_467();
  v29 = v28[54];
  v30 = v28[55];
  v32 = v28[52];
  v31 = v28[53];
  v34 = v28[50];
  v33 = v28[51];
  v70 = v28[49];
  v71 = v28[57];
  v72 = v28[48];
  v35 = v28[46];
  v68 = v28[56];
  v69 = v28[47];
  OUTLINED_FUNCTION_370_0();
  v36 = v28[25];
  v67 = v28[26];
  v37 = v28[24];
  v38 = swift_task_alloc();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  sub_1DC51756C();

  OUTLINED_FUNCTION_22_18();
  v28[58] = sub_1DC43F1F8(v39, v40);
  sub_1DC5175AC();
  v41 = *(v32 + 8);
  v28[59] = v41;
  v28[60] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = OUTLINED_FUNCTION_12_3();
  v41(v42);
  sub_1DC5175BC();
  (v41)(v29, v33);
  sub_1DC510B1C();
  sub_1DC5175DC();

  v43 = OUTLINED_FUNCTION_121_0();
  v41(v43);
  sub_1DC5150AC();
  v28[61] = sub_1DC5150BC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  sub_1DC4465D4();
  LOBYTE(a14) = 1;
  LOBYTE(a12) = 1;
  v66 = MEMORY[0x1E69E7CD0];
  LOBYTE(a9) = 1;
  OUTLINED_FUNCTION_69_10(a18);
  sub_1DC5150EC();
  sub_1DC5150CC();
  sub_1DC5150DC();
  sub_1DC28EB30(v69, &qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_89();
  sub_1DC5175EC();
  v48 = *(v70 + 8);
  v28[62] = v48;
  v28[63] = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v34, v72);
  v49 = OUTLINED_FUNCTION_113_0();
  v41(v49);
  sub_1DC516EDC();
  v50 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_406();
  v54 = *(MEMORY[0x1E69A1358] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v28[64] = v55;
  *v55 = v56;
  OUTLINED_FUNCTION_345_0(v55);
  OUTLINED_FUNCTION_366_0();

  return MEMORY[0x1EEE0B308](v57, v58, v59, v60, v61, v62, v63, v64, a9, v66, 0, a12, 0, a14, v67, v68, v69, a18, v70, v71, v72, a22, "rs(strategy:.argmax()))", a24, a25, a26, a27, a28);
}

uint64_t sub_1DC426BE8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 520) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC426CE0()
{
  v3 = v1[32];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF30, &qword_1DC52E800);
  v5 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v5, v6, v4);
  if (v7)
  {
    sub_1DC28EB30(v3, &qword_1ECC7DF10, &qword_1DC52E7E0);
  }

  else
  {
    v131 = v1[62];
    v132 = v1[63];
    v129 = v1[61];
    v134 = v1[59];
    v135 = v1[60];
    v8 = v1[57];
    v9 = OUTLINED_FUNCTION_99_3(v1[56]);
    v10 = (v2)(v9);
    v18 = OUTLINED_FUNCTION_325_0(v10, v11, v12, v13, v14, v15, v16, v17, v70, v75, v80, v85, v90, v95, v100);
    v4(v18);
    v19 = *(v0 + 48);
    OUTLINED_FUNCTION_206_0();
    v20 = v2();
    v28 = OUTLINED_FUNCTION_428(v20, v21, v22, v23, v24, v25, v26, v27, v71, v76, v81, v86, v91, v96, v101, v105, v109);
    v4(v28);
    v29 = sub_1DC51647C();
    v37 = OUTLINED_FUNCTION_323_0(v29, v30, v31, v32, v33, v34, v35, v36, v72, v77, v82, v87, v92, v97, v102, v106, v110, v113, v116, v119, v122);
    v38(v37);
    v39 = *(v19 + 32);
    v40 = OUTLINED_FUNCTION_63_0();
    v41(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF38, &qword_1DC52E808);
    inited = swift_initStackObject();
    v43 = OUTLINED_FUNCTION_295_0(inited, xmmword_1DC522F20);
    OUTLINED_FUNCTION_404(v43, MEMORY[0x1E69C6560], v73, v78, v83, v88, v93, v98, v103, v107, v111, v114, v117, v120, v123, v125, v126, v127);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF40, &unk_1DC52E810);
    OUTLINED_FUNCTION_288();
    sub_1DC51764C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
    v44 = swift_initStackObject();
    OUTLINED_FUNCTION_292_0(v44, "_OverrideConfigurationHelper.samplingParameters(SamplingParameters(strategy:.argmax()))", v74, v79, v84, v89, v94, v99, v104, v108, v112, v115, v118, v121, v124);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v129);
    OUTLINED_FUNCTION_75_4();
    sub_1DC4465D4();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_69_10(v128);
    sub_1DC5150EC();
    sub_1DC5150CC();
    sub_1DC5150DC();
    sub_1DC28EB30(v4, &qword_1ECC7DF28, &qword_1DC52E7F8);
    *(v44 + 72) = v130;
    __swift_allocate_boxed_opaque_existential_0Tm((v44 + 48));
    sub_1DC51517C();
    v48 = OUTLINED_FUNCTION_19_6();
    v131(v48);
    OUTLINED_FUNCTION_47_1();
    sub_1DC51764C();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51646C();

    v49 = OUTLINED_FUNCTION_209();
    v50(v49);
    v51 = OUTLINED_FUNCTION_147_4();
    v52(v51);
    v53 = OUTLINED_FUNCTION_438();
    v54(v53);
    v55 = *(v133 + 32);
    v56 = OUTLINED_FUNCTION_60();
    v57(v56);
  }

  v59 = v1[59];
  v58 = v1[60];
  v61 = v1[57];
  v60 = v1[58];
  v62 = v1[56];
  OUTLINED_FUNCTION_322_0();
  OUTLINED_FUNCTION_335();
  v63 = OUTLINED_FUNCTION_45_2();
  v59(v63);
  v64 = *(MEMORY[0x1E69A0830] + 4);
  v65 = swift_task_alloc();
  v1[66] = v65;
  OUTLINED_FUNCTION_203_1();
  sub_1DC43F1F8(v66, v67);
  *v65 = v1;
  v68 = OUTLINED_FUNCTION_426();

  return MEMORY[0x1EEE0A360](v68);
}

uint64_t sub_1DC4270A0()
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_464();
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  v6 = v4[66];
  *v5 = *v2;
  v4[67] = v1;

  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  if (!v1)
  {
    v4[68] = v0;
    v4[69] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_487();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC42720C()
{
  v1 = v0[59];
  v2 = v0[60];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[54];
  v6 = v0[55];
  v7 = v0[53];
  v8 = v0[51];
  v14 = v0[50];
  v15 = v0[47];
  v16 = v0[46];
  v17 = v0[44];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[37];
  v21 = v0[34];
  v22 = v0[32];
  v23 = v0[31];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v9 = OUTLINED_FUNCTION_39_0();
  v1(v9);

  OUTLINED_FUNCTION_297_0();
  v11 = v0[69];
  v12 = v0[68];

  return v10(v11, v12);
}

uint64_t sub_1DC42736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v20 = v18[59];
  v19 = v18[60];
  v21 = v18[57];
  v22 = OUTLINED_FUNCTION_110_7();
  v23(v22);
  v24 = OUTLINED_FUNCTION_31_0();
  v20(v24);
  v25 = v18[65];
  OUTLINED_FUNCTION_192_1();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DC427468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v20 = v18[59];
  v19 = v18[60];
  v21 = v18[57];
  v22 = OUTLINED_FUNCTION_110_7();
  v23(v22);
  v24 = OUTLINED_FUNCTION_31_0();
  v20(v24);
  v25 = v18[67];
  OUTLINED_FUNCTION_192_1();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DC427564()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_115_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_272_0();

  return sub_1DC4275FC();
}

uint64_t sub_1DC4275FC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_432(v1, v2, v3, v4);
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF08, &qword_1DC52E7D8);
  v0[29] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[30] = v7;
  v9 = *(v8 + 64);
  v0[31] = OUTLINED_FUNCTION_118();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF10, &qword_1DC52E7E0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  v0[32] = OUTLINED_FUNCTION_118();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF18, &qword_1DC52E7E8);
  v0[33] = v13;
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_461(v16);
  v17 = sub_1DC51648C();
  v0[35] = v17;
  OUTLINED_FUNCTION_52(v17);
  v0[36] = v18;
  v20 = *(v19 + 64);
  v0[37] = OUTLINED_FUNCTION_118();
  v21 = sub_1DC51649C();
  v0[38] = v21;
  OUTLINED_FUNCTION_52(v21);
  v0[39] = v22;
  v24 = *(v23 + 64);
  v0[40] = OUTLINED_FUNCTION_118();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF20, &qword_1DC52E7F0);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  v0[41] = OUTLINED_FUNCTION_118();
  v28 = sub_1DC516EEC();
  v0[42] = v28;
  OUTLINED_FUNCTION_52(v28);
  v0[43] = v29;
  v31 = *(v30 + 64);
  v0[44] = OUTLINED_FUNCTION_124();
  v0[45] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_10(v32);
  v34 = *(v33 + 64);
  v0[46] = OUTLINED_FUNCTION_124();
  v0[47] = swift_task_alloc();
  v35 = sub_1DC51510C();
  v0[48] = v35;
  OUTLINED_FUNCTION_52(v35);
  v0[49] = v36;
  v38 = *(v37 + 64);
  v0[50] = OUTLINED_FUNCTION_118();
  v39 = sub_1DC51755C();
  v0[51] = v39;
  OUTLINED_FUNCTION_52(v39);
  v0[52] = v40;
  v42 = *(v41 + 64);
  v0[53] = OUTLINED_FUNCTION_124();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v43, v44, v45);
}

uint64_t sub_1DC427928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_467();
  v29 = v28[52];
  v30 = v28[53];
  v31 = v28[50];
  v65 = v28[51];
  v66 = v28[54];
  v67 = v28[55];
  v68 = v28[49];
  v69 = v28[48];
  v32 = v28[46];
  v33 = v28[47];
  OUTLINED_FUNCTION_370_0();
  v35 = v28[25];
  v34 = v28[26];
  v36 = v28[24];
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  sub_1DC51756C();

  sub_1DC510B1C();
  OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_22_18();
  v28[56] = sub_1DC43F1F8(v38, v39);
  OUTLINED_FUNCTION_31_0();
  sub_1DC5175DC();

  v40 = *(v29 + 8);
  v28[57] = v40;
  v28[58] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41 = OUTLINED_FUNCTION_121_0();
  v40(v41);
  sub_1DC5150AC();
  v28[59] = sub_1DC5150BC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_1DC4465D4();
  LOBYTE(a14) = 1;
  LOBYTE(a12) = 1;
  v64 = MEMORY[0x1E69E7CD0];
  LOBYTE(a9) = 1;
  OUTLINED_FUNCTION_69_10(a18);
  sub_1DC5150EC();
  sub_1DC5150CC();
  sub_1DC5150DC();
  sub_1DC28EB30(v33, &qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_89();
  sub_1DC5175EC();
  v46 = *(v68 + 8);
  v28[60] = v46;
  v28[61] = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v31, v69);
  v47 = OUTLINED_FUNCTION_12_3();
  v40(v47);
  sub_1DC516EDC();
  v48 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_406();
  v52 = *(MEMORY[0x1E69A1358] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v28[62] = v53;
  *v53 = v54;
  OUTLINED_FUNCTION_345_0(v53);
  OUTLINED_FUNCTION_366_0();

  return MEMORY[0x1EEE0B308](v55, v56, v57, v58, v59, v60, v61, v62, a9, v64, 0, a12, 0, a14, a15, v65, v66, a18, v67, v68, v69, a22, "i8WIl81fhl_1itbDa3c7iozPPtI.", a24, a25, a26, a27, a28);
}

uint64_t sub_1DC427BB8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC427CB0()
{
  v3 = v1[32];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF30, &qword_1DC52E800);
  v5 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v5, v6, v4);
  if (v7)
  {
    sub_1DC28EB30(v3, &qword_1ECC7DF10, &qword_1DC52E7E0);
  }

  else
  {
    v131 = v1[60];
    v132 = v1[61];
    v129 = v1[59];
    v134 = v1[57];
    v135 = v1[58];
    v8 = v1[55];
    v9 = OUTLINED_FUNCTION_99_3(v1[54]);
    v10 = (v2)(v9);
    v18 = OUTLINED_FUNCTION_325_0(v10, v11, v12, v13, v14, v15, v16, v17, v70, v75, v80, v85, v90, v95, v100);
    v4(v18);
    v19 = *(v0 + 48);
    OUTLINED_FUNCTION_206_0();
    v20 = v2();
    v28 = OUTLINED_FUNCTION_428(v20, v21, v22, v23, v24, v25, v26, v27, v71, v76, v81, v86, v91, v96, v101, v105, v109);
    v4(v28);
    v29 = sub_1DC51647C();
    v37 = OUTLINED_FUNCTION_323_0(v29, v30, v31, v32, v33, v34, v35, v36, v72, v77, v82, v87, v92, v97, v102, v106, v110, v113, v116, v119, v122);
    v38(v37);
    v39 = *(v19 + 32);
    v40 = OUTLINED_FUNCTION_63_0();
    v41(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF38, &qword_1DC52E808);
    inited = swift_initStackObject();
    v43 = OUTLINED_FUNCTION_295_0(inited, xmmword_1DC522F20);
    OUTLINED_FUNCTION_404(v43, MEMORY[0x1E69C6560], v73, v78, v83, v88, v93, v98, v103, v107, v111, v114, v117, v120, v123, v125, v126, v127);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF40, &unk_1DC52E810);
    OUTLINED_FUNCTION_288();
    sub_1DC51764C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
    v44 = swift_initStackObject();
    OUTLINED_FUNCTION_292_0(v44, "_OverrideConfigurationHelper.samplingParameters(SamplingParameters(strategy:.argmax()))", v74, v79, v84, v89, v94, v99, v104, v108, v112, v115, v118, v121, v124);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v129);
    OUTLINED_FUNCTION_75_4();
    sub_1DC4465D4();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_69_10(v128);
    sub_1DC5150EC();
    sub_1DC5150CC();
    sub_1DC5150DC();
    sub_1DC28EB30(v4, &qword_1ECC7DF28, &qword_1DC52E7F8);
    *(v44 + 72) = v130;
    __swift_allocate_boxed_opaque_existential_0Tm((v44 + 48));
    sub_1DC51517C();
    v48 = OUTLINED_FUNCTION_19_6();
    v131(v48);
    OUTLINED_FUNCTION_47_1();
    sub_1DC51764C();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51646C();

    v49 = OUTLINED_FUNCTION_209();
    v50(v49);
    v51 = OUTLINED_FUNCTION_147_4();
    v52(v51);
    v53 = OUTLINED_FUNCTION_438();
    v54(v53);
    v55 = *(v133 + 32);
    v56 = OUTLINED_FUNCTION_60();
    v57(v56);
  }

  v59 = v1[57];
  v58 = v1[58];
  v61 = v1[55];
  v60 = v1[56];
  v62 = v1[54];
  OUTLINED_FUNCTION_322_0();
  OUTLINED_FUNCTION_335();
  v63 = OUTLINED_FUNCTION_45_2();
  v59(v63);
  v64 = *(MEMORY[0x1E69A0830] + 4);
  v65 = swift_task_alloc();
  v1[64] = v65;
  OUTLINED_FUNCTION_203_1();
  sub_1DC43F1F8(v66, v67);
  *v65 = v1;
  v68 = OUTLINED_FUNCTION_426();

  return MEMORY[0x1EEE0A360](v68);
}

uint64_t sub_1DC428070()
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_464();
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  v6 = v4[64];
  *v5 = *v2;
  v4[65] = v1;

  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  if (!v1)
  {
    v4[66] = v0;
    v4[67] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_487();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC4281DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_468();
  v21 = v20[57];
  v22 = v20[58];
  v24 = v20[54];
  v23 = v20[55];
  v25 = v20[53];
  v27 = v20[50];
  v26 = v20[51];
  v28 = v20[47];
  v40 = v20[46];
  v41 = v20[44];
  v42 = v20[41];
  v43 = v20[40];
  v44 = v20[37];
  v45 = v20[34];
  v46 = v20[32];
  v47 = v20[31];
  (*(v20[43] + 8))(v20[45], v20[42]);
  v21(v23, v26);

  OUTLINED_FUNCTION_297_0();
  v29 = v20[67];
  v30 = v20[66];
  OUTLINED_FUNCTION_365_0();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, v46, v47, a18, a19, a20);
}

uint64_t sub_1DC428310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v18 = v16[57];
  v17 = v16[58];
  v19 = v16[55];
  v20 = OUTLINED_FUNCTION_110_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_31_0();
  v18(v22);
  v23 = v16[63];
  OUTLINED_FUNCTION_245_0();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DC4283FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v18 = v16[57];
  v17 = v16[58];
  v19 = v16[55];
  v20 = OUTLINED_FUNCTION_110_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_31_0();
  v18(v22);
  v23 = v16[65];
  OUTLINED_FUNCTION_245_0();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DC4284E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DC51759C();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69C6560];
  v17[0] = a1;
  v17[1] = a2;

  sub_1DC51758C();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF48, &qword_1DC52E820);
  v9 = *(v6 + 72);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DC522F20;
  (*(v7 + 16))(v11 + v10, v2, v5);
  v12 = OUTLINED_FUNCTION_29_0();
  MEMORY[0x1E1295E20](v12);

  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_36();
  return v15(v14);
}

void sub_1DC428688(char a1)
{
  switch(a1)
  {
    case 12:
      OUTLINED_FUNCTION_415(19);
      break;
    case 14:
    case 25:
      OUTLINED_FUNCTION_31_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC4289E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC5174BC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DC428A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for NLRouterActionCandidate(0);
  v5 = v4;
  if (v3)
  {
    v6 = *(*(v4 - 8) + 80);
    sub_1DC43F610();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v5);
}

void sub_1DC428B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v238 = v26;
  v256 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v248 = v36;
  v37 = sub_1DC5161CC();
  v38 = OUTLINED_FUNCTION_0(v37);
  v245 = v39;
  v246 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v42);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF50, &unk_1DC52E828);
  OUTLINED_FUNCTION_35(v235);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  v48 = OUTLINED_FUNCTION_10(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  v243 = v52;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  v244 = v54;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_62();
  v242 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_25();
  v234 = v61;
  OUTLINED_FUNCTION_12();
  v62 = sub_1DC515F4C();
  v63 = OUTLINED_FUNCTION_3_33(v62);
  v254 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v67);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF58, &qword_1DC52E838);
  OUTLINED_FUNCTION_35(v239);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_25();
  v251 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  v78 = OUTLINED_FUNCTION_10(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v233 - v85;
  sub_1DC3299B0(&unk_1F57FD000, v25, v31, v29);
  OUTLINED_FUNCTION_253_0();
  v250 = v87;
  v237 = v88;
  v90 = v35 == v89 && v33 == 0xEC0000003E657469;
  if (v90 || (OUTLINED_FUNCTION_62_2(), (sub_1DC51825C() & 1) != 0))
  {
    v255 = 0;
    v259 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_62_2();
    v255 = sub_1DC32977C();
    v259 = v91;
  }

  sub_1DC515F3C();
  sub_1DC43F1F8(&qword_1ECC7C1E8, MEMORY[0x1E69D0618]);
  OUTLINED_FUNCTION_56_7();
  v257 = sub_1DC51502C();
  OUTLINED_FUNCTION_56();
  sub_1DC329C6C();
  OUTLINED_FUNCTION_56();
  v92 = sub_1DC329EF0();
  OUTLINED_FUNCTION_146_1();
  sub_1DC4465D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v20);
  v94 = MEMORY[0x1E69D0620];
  v258 = v86;
  v252 = v31;
  v253 = v29;
  v249 = v92;
  if (EnumTagSinglePayload != 1)
  {
    sub_1DC4465D4();
    v95 = v254;
    v96 = *(v254 + 11);
    v97 = OUTLINED_FUNCTION_117_0();
    if (v98(v97) == *v94)
    {
      KeyPath = swift_getKeyPath();
      sub_1DC515E7C();
      OUTLINED_FUNCTION_226_1();
      sub_1DC43F1F8(v99, v100);
      OUTLINED_FUNCTION_56_7();
      sub_1DC51502C();
      swift_getKeyPath();
      v101 = sub_1DC514FCC();

      v25 = v101(v86);

      swift_getKeyPath();
      v102 = sub_1DC514FCC();

      v103 = OUTLINED_FUNCTION_81_7();
      v102(v103);

      v104 = MEMORY[0x1E69D0600];
      goto LABEL_16;
    }

    v105 = *(v95 + 1);
    v106 = OUTLINED_FUNCTION_117_0();
    v107(v106);
  }

  KeyPath = swift_getKeyPath();
  if (v92)
  {
    sub_1DC515E7C();
    OUTLINED_FUNCTION_226_1();
    sub_1DC43F1F8(v108, v109);
    OUTLINED_FUNCTION_56_7();
    sub_1DC51502C();
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_412();

    v110 = OUTLINED_FUNCTION_81_7();
    v25(v110);
    OUTLINED_FUNCTION_353_0();

    v104 = MEMORY[0x1E69D0600];
  }

  else
  {
    sub_1DC515EBC();
    OUTLINED_FUNCTION_225_2();
    sub_1DC43F1F8(v111, v112);
    OUTLINED_FUNCTION_56_7();
    sub_1DC51502C();
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_412();

    v113 = OUTLINED_FUNCTION_81_7();
    v25(v113);
    OUTLINED_FUNCTION_353_0();

    v104 = MEMORY[0x1E69D0608];
  }

  v95 = v254;
LABEL_16:
  OUTLINED_FUNCTION_80_8();
  swift_getKeyPath();
  sub_1DC514FCC();
  OUTLINED_FUNCTION_412();

  v25(v256);
  OUTLINED_FUNCTION_353_0();

  v114 = v251;
  sub_1DC51500C();

  v115 = *v104;
  v116 = sub_1DC515EDC();
  OUTLINED_FUNCTION_35(v116);
  v118 = *(v117 + 104);
  v118(v114, v115, v116);
  v119 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v116);
  sub_1DC514FFC();
  sub_1DC28EB30(v21, &qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_11_6(v258);
  if (v90)
  {
    goto LABEL_18;
  }

  v254 = v118;
  v122 = v240;
  (*(v95 + 13))(v240, *MEMORY[0x1E69D0620], v20);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v20);
  v126 = *(v239 + 48);
  v127 = v122;
  v29 = v241;
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_11_6(v29);
  if (v128)
  {
    sub_1DC28EB30(v127, &qword_1ECC7CB08, &unk_1DC5240E0);
    OUTLINED_FUNCTION_11_6(v29 + v126);
    if (!v90)
    {
      goto LABEL_27;
    }

    sub_1DC28EB30(v29, &qword_1ECC7CB08, &unk_1DC5240E0);
    OUTLINED_FUNCTION_80_8();
LABEL_18:
    OUTLINED_FUNCTION_265_0();
    goto LABEL_32;
  }

  sub_1DC4465D4();
  OUTLINED_FUNCTION_11_6(v29 + v126);
  if (v129)
  {
    sub_1DC28EB30(v127, &qword_1ECC7CB08, &unk_1DC5240E0);
    v130 = *(v95 + 1);
    v95 = (v95 + 8);
    v131 = OUTLINED_FUNCTION_147_0();
    v132(v131);
LABEL_27:
    sub_1DC28EB30(v29, &qword_1ECC7DF58, &qword_1DC52E838);
    OUTLINED_FUNCTION_80_8();
    OUTLINED_FUNCTION_265_0();
    goto LABEL_28;
  }

  v145 = *(v95 + 4);
  v146 = OUTLINED_FUNCTION_380();
  v147(v146);
  sub_1DC43F1F8(&qword_1ECC7DF60, MEMORY[0x1E69D0630]);
  OUTLINED_FUNCTION_39_0();
  LODWORD(KeyPath) = sub_1DC5176CC();
  v148 = *(v95 + 1);
  v95 = (v95 + 8);
  v149 = OUTLINED_FUNCTION_36();
  v148(v149);
  OUTLINED_FUNCTION_206_0();
  sub_1DC28EB30(v150, v151, v152);
  v153 = OUTLINED_FUNCTION_147_0();
  v148(v153);
  OUTLINED_FUNCTION_206_0();
  sub_1DC28EB30(v154, v155, v156);
  OUTLINED_FUNCTION_80_8();
  OUTLINED_FUNCTION_265_0();
  if (KeyPath)
  {
LABEL_32:
    v158 = v252;
    v157 = v253;
    v262 = v252;
    v263 = v253;
    v260 = v95;
    v261 = v29;
    sub_1DC2A32B0();
    if (OUTLINED_FUNCTION_328_0())
    {
      v159 = MEMORY[0x1E69D0730];
      v160 = v258;
      v162 = v245;
      v161 = v246;
      v163 = v243;
    }

    else
    {
      v262 = v158;
      v263 = v157;
      OUTLINED_FUNCTION_242_1();
      v164 = OUTLINED_FUNCTION_328_0();
      v160 = v258;
      v162 = v245;
      v161 = v246;
      v163 = v243;
      if ((v164 & 1) == 0)
      {
        if (v249)
        {
          swift_getKeyPath();
          v171 = *MEMORY[0x1E69D0728];
          v165 = v162[13];
          v165(v242, v171, v161);
          v172 = OUTLINED_FUNCTION_56_13();
          __swift_storeEnumTagSinglePayload(v172, v173, v174, v161);
          OUTLINED_FUNCTION_62_2();
          sub_1DC514FFC();
          if (v250)
          {
            goto LABEL_37;
          }

LABEL_42:
          swift_getKeyPath();
          sub_1DC514FEC();

          v165(v163, v171, v161);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v175, v176, v177, v161);
          v178 = *(v235 + 48);
          v179 = v236;
          OUTLINED_FUNCTION_96_4();
          sub_1DC4465D4();
          OUTLINED_FUNCTION_96_4();
          sub_1DC4465D4();
          v180 = OUTLINED_FUNCTION_53_15();
          OUTLINED_FUNCTION_39(v180, v181, v161);
          if (v90)
          {
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v182, v183, v184);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v185, v186, v187);
            v188 = OUTLINED_FUNCTION_331();
            OUTLINED_FUNCTION_39(v188, v189, v161);
            if (v90)
            {
              sub_1DC28EB30(v179, &qword_1ECC7BF98, &qword_1DC5224C0);
LABEL_57:
              if (!v237)
              {
                goto LABEL_37;
              }

              goto LABEL_58;
            }
          }

          else
          {
            OUTLINED_FUNCTION_484(&a9);
            v190 = OUTLINED_FUNCTION_331();
            OUTLINED_FUNCTION_39(v190, v191, v161);
            if (!v192)
            {
              v205 = v162[4];
              v206 = OUTLINED_FUNCTION_380();
              v207(v206);
              OUTLINED_FUNCTION_48_10();
              sub_1DC43F1F8(v208, v209);
              OUTLINED_FUNCTION_63_0();
              LODWORD(v258) = sub_1DC5176CC();
              v210 = v162[1];
              v211 = OUTLINED_FUNCTION_187();
              v210(v211);
              OUTLINED_FUNCTION_26_1();
              sub_1DC28EB30(v212, v213, v214);
              OUTLINED_FUNCTION_26_1();
              sub_1DC28EB30(v215, v216, v217);
              (v210)(&qword_1ECC7BF98, v161);
              OUTLINED_FUNCTION_69_7();
              OUTLINED_FUNCTION_26_1();
              sub_1DC28EB30(v218, v219, v220);
              if ((v258 & 1) == 0)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v193, v194, v195);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v196, v197, v198);
            v199 = v162[1];
            v200 = OUTLINED_FUNCTION_187();
            v201(v200);
          }

          sub_1DC28EB30(v179, &qword_1ECC7DF50, &unk_1DC52E828);
          goto LABEL_58;
        }

        if (v250)
        {
          goto LABEL_37;
        }

LABEL_58:
        if (v238)
        {
          v170 = v248;
          if (!v237 && !v259)
          {
            v169 = 5;
            goto LABEL_64;
          }
        }

        else
        {

          v170 = v248;
          if (((v249 | v250) & 1) == 0)
          {
            sub_1DC517BAC();
            OUTLINED_FUNCTION_21_2();
            v225 = sub_1DC296DBC();
            OUTLINED_FUNCTION_40_1();
            sub_1DC516F0C();

            v169 = 0;
            v221 = MEMORY[0x1E69D02D8];
            goto LABEL_65;
          }
        }

        v169 = 0;
LABEL_64:
        sub_1DC51500C();
        v221 = MEMORY[0x1E69D02E0];
        goto LABEL_65;
      }

      v159 = MEMORY[0x1E69D0720];
    }

    swift_getKeyPath();
    v165 = v162[13];
    v165(v242, *v159, v161);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v161);
    OUTLINED_FUNCTION_31_0();
    sub_1DC514FFC();
    if (v250)
    {
LABEL_37:

      v169 = 5;
      v170 = v248;
      goto LABEL_64;
    }

    if (v249)
    {
      v171 = *MEMORY[0x1E69D0728];
      goto LABEL_42;
    }

    goto LABEL_58;
  }

LABEL_28:
  v134 = v252;
  v133 = v253;
  v262 = v252;
  v263 = v253;
  v260 = v95;
  v261 = v29;
  sub_1DC2A32B0();
  if (OUTLINED_FUNCTION_328_0() & 1) != 0 || (v262 = v134, v263 = v133, OUTLINED_FUNCTION_242_1(), (OUTLINED_FUNCTION_328_0()))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_155();
    sub_1DC515EBC();
    OUTLINED_FUNCTION_225_2();
    sub_1DC43F1F8(v135, v136);
    OUTLINED_FUNCTION_56_7();
    sub_1DC51502C();
    swift_getKeyPath();
    v137 = sub_1DC514FCC();

    v138 = OUTLINED_FUNCTION_81_7();
    v137(v138);
    OUTLINED_FUNCTION_155_0();

    swift_getKeyPath();
    v139 = sub_1DC514FCC();
    v29 = v140;

    v139(v256);
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_80_8();

    v141 = v251;
    sub_1DC51500C();

    v254(v141, *MEMORY[0x1E69D0608], v116);
    v142 = OUTLINED_FUNCTION_56_13();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v116);
    OUTLINED_FUNCTION_36();
    sub_1DC514FFC();
    v249 = 0;
    goto LABEL_32;
  }

  sub_1DC5157CC();
  OUTLINED_FUNCTION_1_38();
  sub_1DC43F1F8(v202, v203);
  OUTLINED_FUNCTION_56_7();
  sub_1DC51502C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_81_7();
  sub_1DC514FDC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_155();
  v204 = sub_1DC515ECC();
  OUTLINED_FUNCTION_39(v256, 1, v204);
  if (v90)
  {
    sub_1DC51589C();
    OUTLINED_FUNCTION_19();
  }

  else
  {
    v226 = *MEMORY[0x1E69D0350];
    v227 = sub_1DC51589C();
    OUTLINED_FUNCTION_35(v227);
    (*(v228 + 104))(v234, v226, v227);
    OUTLINED_FUNCTION_61();
    v232 = v227;
  }

  __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
  v170 = v248;
  v160 = v258;
  OUTLINED_FUNCTION_107();
  sub_1DC514FDC();
  sub_1DC51500C();

  v169 = 5;
  v221 = MEMORY[0x1E69D02E8];
LABEL_65:

  v222 = *v221;
  v223 = sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0(v223);
  (*(v224 + 104))(v170, v222);
  *(v170 + *(type metadata accessor for IntepretedModelDecision(0) + 20)) = v169;
  sub_1DC28EB30(v160, &qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_34();
}

void sub_1DC429CA4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v57 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_76_9(v13, v55);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30_1();
  v18 = sub_1DC5157EC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  MEMORY[0x1E1296060](*v3, v3[1], v3[2], v3[3]);
  sub_1DC3295D4();

  OUTLINED_FUNCTION_147_0();
  v24 = sub_1DC32977C();
  v58 = v25;

  v26 = *(v21 + 104);
  v26(v1, *MEMORY[0x1E69D02F8], v18);
  OUTLINED_FUNCTION_47_1();
  v27 = sub_1DC5157DC();
  v28 = *(v21 + 8);
  v29 = OUTLINED_FUNCTION_176();
  v28(v29);
  if (v27)
  {
    v30 = sub_1DC2D14F0();
    if (v30)
    {
      MEMORY[0x1EEE9AC00](v30);
      OUTLINED_FUNCTION_66_1();
      *(v31 - 16) = v24;
      *(v31 - 8) = v58;
      sub_1DC5158FC();
      OUTLINED_FUNCTION_457();
      v32 = sub_1DC51591C();
      OUTLINED_FUNCTION_14_2(v0);
      if (!v33)
      {

        OUTLINED_FUNCTION_7_1(v32);
        v35 = v57;
        (*(v34 + 32))(v57, v0, v32);
        v36 = MEMORY[0x1E69D0340];
LABEL_11:
        v52 = *v36;
        v53 = sub_1DC51588C();
        OUTLINED_FUNCTION_11_0(v53);
        (*(v54 + 104))(v35, v52);
        OUTLINED_FUNCTION_34();
        return;
      }

      goto LABEL_13;
    }
  }

  v26(v1, *MEMORY[0x1E69D02F0], v18);
  OUTLINED_FUNCTION_288();
  v37 = sub_1DC5157DC();
  v38 = OUTLINED_FUNCTION_176();
  v39 = (v28)(v38);
  if ((v37 & 1) == 0 || (v39 = sub_1DC2BCEFC(), (v39 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v39);
    OUTLINED_FUNCTION_66_1();
    *(v45 - 16) = v24;
    *(v45 - 8) = v58;
    sub_1DC51583C();
    OUTLINED_FUNCTION_457();
    v46 = sub_1DC51587C();
    v47 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v47, v48, v46);
    if (!v33)
    {

      OUTLINED_FUNCTION_7_1(v46);
      v50 = *(v49 + 32);
      v35 = v57;
      OUTLINED_FUNCTION_26_1();
      v51();
      v36 = MEMORY[0x1E69D0330];
      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_66_1();
  *(v40 - 16) = v24;
  *(v40 - 8) = v58;
  sub_1DC5158BC();
  OUTLINED_FUNCTION_457();
  v41 = sub_1DC5158DC();
  OUTLINED_FUNCTION_14_2(v56);
  if (!v33)
  {

    OUTLINED_FUNCTION_7_1(v41);
    v43 = *(v42 + 32);
    v35 = v57;
    OUTLINED_FUNCTION_272_0();
    v44();
    v36 = MEMORY[0x1E69D0338];
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1DC42A10C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1DC51588C();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DC2AA348(0, v10, 0);
  v11 = v25;
  v18 = v6 + 32;
  for (i = (a3 + 56); ; i += 4)
  {
    v13 = *(i - 1);
    v14 = *i;
    v22 = *(i - 3);
    v23 = v13;
    v24 = v14;

    v20(&v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v25 = v11;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1DC2AA348(v15 > 1, v16 + 1, 1);
      v11 = v25;
    }

    *(v11 + 16) = v16 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9, v19);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DC42A2E0()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v65 = v7;
  v66 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA60, &qword_1DC52A778);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_50_13(v15, v63);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78_8();
  v24 = sub_1DC5157EC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_2();
  v30 = type metadata accessor for NLRouterServiceRequest(0);
  v31 = OUTLINED_FUNCTION_10(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v34 = type metadata accessor for HeuristicRoutingRequest(0);
  v35 = OUTLINED_FUNCTION_10(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_221_1();
  sub_1DC43F610();
  (*(v27 + 16))(v1, v10, v24);
  v38 = *v0;
  v39 = MEMORY[0x1E69E7D40];
  v40 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v42 = *(v41 + 240);

  v44 = v42(&v67, v43);
  (*((*v39 & *v0) + 0x120))(v44);
  v45 = *v0;
  v46 = *v39;
  OUTLINED_FUNCTION_11_16();
  (*(v47 + 144))();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  sub_1DC40C2CC();
  v52 = OUTLINED_FUNCTION_55();
  sub_1DC40C2D4(v52, v53, v65, v6, v54, v4, v3, v55, v56);
  sub_1DC376A28(v2, v64);
  v57 = type metadata accessor for HeuristicRoutingResponse(0);
  OUTLINED_FUNCTION_4_24(v64);
  if (v58)
  {
    if (qword_1ECC82DF0 != -1)
    {
      OUTLINED_FUNCTION_24_17();
    }

    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    if ((byte_1ECC8FA40 & 1) != 0 || (sub_1DC32B52C(), (v59 & 1) == 0))
    {
      OUTLINED_FUNCTION_61_7();
      sub_1DC28EB30(v64, &qword_1ECC7DA60, &qword_1DC52A778);
      v61 = OUTLINED_FUNCTION_53_15();
    }

    else
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v60 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      sub_1DC32CDF4();
      sub_1DC40C468(v1, 0xD00000000000001ALL, 0x80000001DC547E90, v66);
      OUTLINED_FUNCTION_61_7();
      sub_1DC28EB30(v64, &qword_1ECC7DA60, &qword_1DC52A778);
      v61 = v66;
      v62 = 0;
    }

    __swift_storeEnumTagSinglePayload(v61, v62, 1, v57);
  }

  else
  {
    OUTLINED_FUNCTION_61_7();
    sub_1DC440B84();
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC42A710()
{
  OUTLINED_FUNCTION_33();
  v3 = sub_1DC5157EC();
  v4 = OUTLINED_FUNCTION_3_33(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v9 = *(v6 + 16);
  v10 = OUTLINED_FUNCTION_149();
  v9(v10);
  v11 = (*(v6 + 88))(v2, v0);
  if (v11 == *MEMORY[0x1E69D02E8])
  {
    v12 = *v1;
    v13 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_11_16();
    v15 = *(v14 + 400);
    v16 = OUTLINED_FUNCTION_55();
    v17(v16);
  }

  else
  {
    if (v11 == *MEMORY[0x1E69D02C8])
    {
      (*(v6 + 8))(v2, v0);
      v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
      v19 = OUTLINED_FUNCTION_55();
      v20(v19);
      goto LABEL_6;
    }

    if (v11 == *MEMORY[0x1E69D02E0])
    {
      v21 = *v1;
      v22 = *MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_11_16();
      v24 = *(v23 + 408);
      v25 = OUTLINED_FUNCTION_55();
      v26(v25);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_35_0();
      v9(v27);
    }
  }

  (*(v6 + 8))(v2, v0);
LABEL_6:
  OUTLINED_FUNCTION_34();
}

void sub_1DC42A94C()
{
  OUTLINED_FUNCTION_33();
  v123 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_57_0();
  v118 = sub_1DC51588C();
  v7 = OUTLINED_FUNCTION_0(v118);
  v126 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v116 = v12;
  v13 = OUTLINED_FUNCTION_12();
  v14 = type metadata accessor for TurnSummary(v13);
  v15 = OUTLINED_FUNCTION_52(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v18 = sub_1DC5157EC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3();
  v24 = *(v21 + 16);
  v25 = OUTLINED_FUNCTION_55();
  (v24)(v25);
  v26 = *(v21 + 88);
  v27 = OUTLINED_FUNCTION_73();
  v29 = v28(v27);
  if (v29 != *MEMORY[0x1E69D02C8])
  {
    v96 = *(v21 + 8);
    v97 = OUTLINED_FUNCTION_73();
    v98(v97);
    OUTLINED_FUNCTION_75_4();
    v24();
    goto LABEL_48;
  }

  v115 = v29;
  OUTLINED_FUNCTION_433();
  v30 = OUTLINED_FUNCTION_73();
  v31(v30);
  v32 = *v2;
  v33 = *v1;
  v34 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  (*(v35 + 240))(&v128);
  v36 = v18;
  if (!v129)
  {
    sub_1DC28EB30(&v128, &qword_1ECC7CF30, &unk_1DC525A00);
    v99 = *(v32 + 16);
    if (v99)
    {
      OUTLINED_FUNCTION_379();
      v130[0] = MEMORY[0x1E69E7CC0];
      sub_1DC2AA348(0, v99, 0);
      v100 = v130[0];
      v125 = *(v126 + 16);
      v101 = *(v126 + 80);
      OUTLINED_FUNCTION_24();
      v122 = v102;
      v103 = v32 + v102;
      v121 = *(v126 + 72);
      do
      {
        v104 = OUTLINED_FUNCTION_48_0();
        v125(v104);
        sub_1DC329208();
        sub_1DC3305F4();

        v105 = *(v126 + 8);
        v106 = OUTLINED_FUNCTION_151();
        v107(v106);
        v130[0] = v100;
        v109 = *(v100 + 16);
        v108 = *(v100 + 24);
        if (v109 >= v108 >> 1)
        {
          v110 = OUTLINED_FUNCTION_26(v108);
          sub_1DC2AA348(v110, v109 + 1, 1);
          v100 = v130[0];
        }

        *(v100 + 16) = v109 + 1;
        (*(v126 + 32))(v100 + v122 + v109 * v121, v116, v118);
        v103 += v121;
        --v99;
      }

      while (v99);

      v0 = v114;
      v36 = v113;
      v21 = v112;
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
    }

    *v0 = v100;
    (*(v21 + 104))(v0, v115, v36);
    goto LABEL_48;
  }

  v111 = v32;
  OUTLINED_FUNCTION_379();
  sub_1DC28F9B0(&v128, v130);
  v37 = v131;
  v38 = v132;
  OUTLINED_FUNCTION_310_0(v130);
  v39 = (*(v38 + 8))(*v6, v6[1], 1, v37, v38);
  v40 = *(v6 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));

  sub_1DC2D69A8(v123, v40);
  v119 = v43;
  if (v41 == v42 >> 1)
  {
LABEL_38:
    swift_unknownObjectRelease();

    v91 = sub_1DC322E3C(v90);
    MEMORY[0x1EEE9AC00](v91);
    OUTLINED_FUNCTION_66_1();
    *(v93 - 16) = v92;
    *(v93 - 8) = v130;
    v95 = sub_1DC3289D8(sub_1DC43F684, v94, v111);

    *v114 = v95;
    (*(v112 + 104))();
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
LABEL_48:
    OUTLINED_FUNCTION_34();
    return;
  }

  v44 = v42 >> 1;
  v117 = v42 >> 1;
  while (1)
  {
    if (v41 >= v44)
    {
      goto LABEL_53;
    }

    v120 = v41;
    v45 = (v119 + 48 * v41);
    v47 = v45[3];
    v46 = v45[4];
    v49 = v45[1];
    v48 = v45[2];
    v50 = v132;
    __swift_project_boxed_opaque_existential_1(v130, v131);
    v124 = *(v50 + 8);

    swift_bridgeObjectRetain_n();
    v127 = v46;

    v51 = OUTLINED_FUNCTION_107();
    v52 = v124(v51);

    v53 = *(v52 + 16);
    v54 = *(v39 + 2);
    v55 = v54 + v53;
    if (__OFADD__(v54, v53))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v55 > *(v39 + 3) >> 1)
    {
      if (v54 <= v55)
      {
        v57 = v54 + v53;
      }

      else
      {
        v57 = v54;
      }

      v39 = sub_1DC2ACCD4(isUniquelyReferenced_nonNull_native, v57, 1, v39);
    }

    if (*(v52 + 16))
    {
      v58 = *(v39 + 2);
      v59 = *(v39 + 3);
      OUTLINED_FUNCTION_444();
      if (v61 < v53)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_443(v60);
      swift_arrayInitWithCopy();

      if (v53)
      {
        v62 = *(v39 + 2);
        v63 = __OFADD__(v62, v53);
        v64 = v62 + v53;
        if (v63)
        {
          goto LABEL_57;
        }

        *(v39 + 2) = v64;
      }
    }

    else
    {

      if (v53)
      {
        goto LABEL_55;
      }
    }

    v65 = *(v127 + 16);
    if (v65)
    {
      OUTLINED_FUNCTION_22_0();
      v68 = v66 + v67;
      v70 = *(v69 + 72);
      do
      {
        OUTLINED_FUNCTION_44_14();
        OUTLINED_FUNCTION_113_0();
        sub_1DC43F610();
        v71 = v131;
        v72 = v132;
        OUTLINED_FUNCTION_310_0(v130);
        v74 = *(v3 + 32);
        v73 = *(v3 + 40);

        OUTLINED_FUNCTION_43_15();
        sub_1DC43F4A8();
        if (v73)
        {
          v75 = v74;
        }

        else
        {
          v75 = 0;
        }

        if (v73)
        {
          v76 = v73;
        }

        else
        {
          v76 = 0xE000000000000000;
        }

        v77 = (*(v72 + 8))(v75, v76, 1, v71, v72);

        v78 = *(v77 + 16);
        v79 = *(v39 + 2);
        if (__OFADD__(v79, v78))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v79 + v78 > *(v39 + 3) >> 1)
        {
          v86 = OUTLINED_FUNCTION_441();
          v39 = sub_1DC2ACCD4(v86, v87, v88, v39);
          v89 = *(v39 + 2);
          if (*(v77 + 16))
          {
LABEL_30:
            v81 = *(v39 + 3);
            OUTLINED_FUNCTION_444();
            if (v83 < v78)
            {
              goto LABEL_51;
            }

            OUTLINED_FUNCTION_443(v82);
            swift_arrayInitWithCopy();

            if (v78)
            {
              v84 = *(v39 + 2);
              v63 = __OFADD__(v84, v78);
              v85 = v84 + v78;
              if (v63)
              {
                goto LABEL_52;
              }

              *(v39 + 2) = v85;
            }

            goto LABEL_36;
          }
        }

        else
        {
          v80 = *(v77 + 16);
          if (v78)
          {
            goto LABEL_30;
          }
        }

        if (v78)
        {
          goto LABEL_50;
        }

LABEL_36:
        v68 += v70;
        --v65;
      }

      while (v65);
    }

    v41 = v120 + 1;
    v44 = v117;
    if (v120 + 1 == v117)
    {
      goto LABEL_38;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_1DC42B108(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DC43F0B8(result, 1, sub_1DC43EB6C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for NLRouterActionCandidate(0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DC42B21C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DC43F0B8(result, 1, sub_1DC43EDB4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + v7 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DC42B2E8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DC51588C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v46 = sub_1DC51587C();
  v17 = OUTLINED_FUNCTION_0(v46);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v22 = v11[2];
  v23 = OUTLINED_FUNCTION_74_0();
  v22(v23);
  v24 = v11[11];
  v25 = OUTLINED_FUNCTION_212();
  if (v26(v25) == *MEMORY[0x1E69D0330])
  {
    v43 = v7;
    v44 = v5;
    v27 = v11[12];
    v28 = OUTLINED_FUNCTION_212();
    v29(v28);
    (*(v19 + 32))(v0, v16, v46);
    v30 = *(v2 + 24);
    v31 = *(v2 + 32);
    v32 = OUTLINED_FUNCTION_152();
    v34 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v35 = sub_1DC51582C();
    (*(v31 + 8))(v35);
    OUTLINED_FUNCTION_155_0();

    v36 = sub_1DC322E3C(v34);
    v37 = sub_1DC40BF8C(v45, v36);

    if ((v37 & 1) == 0)
    {
      sub_1DC329208();
      sub_1DC3305F4();

      (*(v19 + 8))(v0, v46);
      goto LABEL_7;
    }

    (*(v19 + 8))(v0, v46);
    v38 = v43;
    v39 = v44;
  }

  else
  {
    v40 = v11[1];
    v41 = OUTLINED_FUNCTION_212();
    v42(v41);
    v38 = OUTLINED_FUNCTION_176();
  }

  (v22)(v38, v39, v8);
LABEL_7:
  OUTLINED_FUNCTION_34();
}

void sub_1DC42B5EC()
{
  OUTLINED_FUNCTION_33();
  v65 = v2;
  v64 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v67 = v10;
  v11 = sub_1DC5157EC();
  v12 = OUTLINED_FUNCTION_3_33(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v17 = v7(0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v66 = v24;
  v25 = v14[2];
  v26 = OUTLINED_FUNCTION_159();
  v25(v26);
  v27 = v14[11];
  v28 = OUTLINED_FUNCTION_30_6();
  if (v29(v28) == *v5)
  {
    v63 = v9;
    v30 = v14[12];
    v31 = OUTLINED_FUNCTION_30_6();
    v32(v31);
    v33 = *(v20 + 32);
    v34 = OUTLINED_FUNCTION_35_0();
    v33(v34);
    v35 = *v1;
    v36 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_11_16();
    (*(v37 + 240))(&v68);
    if (v69)
    {
      v61 = v20;
      v62 = v17;
      sub_1DC28F9B0(&v68, v70);
      sub_1DC42B9FC();
      v38 = v71;
      v39 = v72;
      v40 = __swift_project_boxed_opaque_existential_1(v70, v71);
      v41 = v64();
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      (*(v39 + 8))(v41, v43, 1, v38, v39);
      OUTLINED_FUNCTION_155_0();

      sub_1DC322E3C(v40);
      v44 = OUTLINED_FUNCTION_340_0();
      v46 = sub_1DC40BF8C(v44, v45);

      if (v46)
      {
        (*(v61 + 8))(v66, v62);
        (v25)(v67, v63, v0);
      }

      else
      {
        v57 = sub_1DC329208();
        v65(v57);

        (*(v61 + 8))(v66, v62);
        v58 = OUTLINED_FUNCTION_74();
        v33(v58);
        v59 = OUTLINED_FUNCTION_436();
        v60(v59);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v70);
    }

    else
    {
      sub_1DC28EB30(&v68, &qword_1ECC7CF30, &unk_1DC525A00);
      v50 = sub_1DC329208();
      v65(v50);

      v51 = *(v20 + 8);
      v52 = OUTLINED_FUNCTION_47_1();
      v53(v52);
      v54 = OUTLINED_FUNCTION_74();
      v33(v54);
      v55 = OUTLINED_FUNCTION_436();
      v56(v55);
    }
  }

  else
  {
    v47 = v14[1];
    v48 = OUTLINED_FUNCTION_30_6();
    v49(v48);
    (v25)(v67, v9, v0);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC42B9FC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_38_2();
  v7 = type metadata accessor for TurnSummary(v6);
  v8 = OUTLINED_FUNCTION_52(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = OUTLINED_FUNCTION_151();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v65 = v12;
  v66 = v11;
  v15 = *(v12 + 8);
  v15(*v5, v5[1], 1, v11, v12);
  v16 = OUTLINED_FUNCTION_384();
  v17 = *(v5 + *(type metadata accessor for NLRouterServiceRequest(v16) + 24));

  sub_1DC2D69A8(v3, v17);
  v62 = v20;
  if (v18 == v19 >> 1)
  {
LABEL_36:
    swift_unknownObjectRelease();
    sub_1DC322E3C(v11);
    OUTLINED_FUNCTION_34();
  }

  else
  {
    v21 = v19 >> 1;
    v61 = v19 >> 1;
    while (1)
    {
      if (v18 >= v21)
      {
        goto LABEL_41;
      }

      v22 = (v62 + 48 * v18);
      v23 = v22[3];
      v24 = v22[4];
      v25 = v22[1];
      v26 = v22[2];
      v27 = v23 ? v26 : 0;
      v28 = v23 ? v23 : 0xE000000000000000;
      v63 = v18;

      swift_bridgeObjectRetain_n();
      v64 = v24;

      v29 = v15(v27, v28, 1, v66, v65);

      v30 = *(v29 + 16);
      v31 = *(v11 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > *(v11 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v11 = sub_1DC2ACCD4(isUniquelyReferenced_nonNull_native, v34, 1, v11);
      }

      if (*(v29 + 16))
      {
        v35 = *(v11 + 2);
        v36 = *(v11 + 3);
        OUTLINED_FUNCTION_444();
        if (v37 < v30)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v38 = *(v11 + 2);
          v39 = __OFADD__(v38, v30);
          v40 = v38 + v30;
          if (v39)
          {
            goto LABEL_45;
          }

          *(v11 + 2) = v40;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_43;
        }
      }

      v41 = *(v64 + 16);
      if (v41)
      {
        OUTLINED_FUNCTION_22_0();
        v44 = v42 + v43;
        v46 = *(v45 + 72);
        do
        {
          OUTLINED_FUNCTION_44_14();
          OUTLINED_FUNCTION_39_0();
          sub_1DC43F610();
          v48 = *(v1 + 32);
          v47 = *(v1 + 40);

          OUTLINED_FUNCTION_43_15();
          sub_1DC43F4A8();
          OUTLINED_FUNCTION_299_0();
          v49 = (v15)();

          v50 = *(v49 + 16);
          v51 = *(v11 + 2);
          if (__OFADD__(v51, v50))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          if (v51 + v50 > *(v11 + 3) >> 1)
          {
            v57 = OUTLINED_FUNCTION_441();
            v11 = sub_1DC2ACCD4(v57, v58, v59, v11);
            v60 = *(v11 + 2);
            if (*(v49 + 16))
            {
LABEL_28:
              v53 = *(v11 + 3);
              OUTLINED_FUNCTION_444();
              if (v54 < v50)
              {
                goto LABEL_39;
              }

              swift_arrayInitWithCopy();

              if (v50)
              {
                v55 = *(v11 + 2);
                v39 = __OFADD__(v55, v50);
                v56 = v55 + v50;
                if (v39)
                {
                  goto LABEL_40;
                }

                *(v11 + 2) = v56;
              }

              goto LABEL_34;
            }
          }

          else
          {
            v52 = *(v49 + 16);
            if (v50)
            {
              goto LABEL_28;
            }
          }

          if (v50)
          {
            goto LABEL_38;
          }

LABEL_34:
          v44 += v46;
          --v41;
        }

        while (v41);
      }

      v18 = v63 + 1;
      v21 = v61;
      if (v63 + 1 == v61)
      {
        goto LABEL_36;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

uint64_t sub_1DC42BD90()
{
  OUTLINED_FUNCTION_1_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DED0, &qword_1DC52E700);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_118();
  v8 = sub_1DC51750C();
  v1[17] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[18] = v9;
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_118();
  v12 = sub_1DC5174BC();
  v1[20] = v12;
  OUTLINED_FUNCTION_52(v12);
  v1[21] = v13;
  v15 = *(v14 + 64);
  v1[22] = OUTLINED_FUNCTION_124();
  v1[23] = swift_task_alloc();
  v16 = sub_1DC510B6C();
  v1[24] = v16;
  OUTLINED_FUNCTION_52(v16);
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_118();
  v20 = sub_1DC51754C();
  v1[27] = v20;
  OUTLINED_FUNCTION_52(v20);
  v1[28] = v21;
  v23 = *(v22 + 64);
  v1[29] = OUTLINED_FUNCTION_118();
  v24 = sub_1DC5174EC();
  v1[30] = v24;
  OUTLINED_FUNCTION_52(v24);
  v1[31] = v25;
  v27 = *(v26 + 64);
  v1[32] = OUTLINED_FUNCTION_124();
  v1[33] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_1DC42BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v19 = **(v18 + 120);
  v20 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  (*(v21 + 192))();
  if (*(v18 + 80))
  {
    v83 = *(v18 + 256);
    v22 = *(v18 + 248);
    v81 = *(v18 + 264);
    v82 = *(v18 + 240);
    v24 = *(v18 + 224);
    v23 = *(v18 + 232);
    v25 = *(v18 + 208);
    v26 = *(v18 + 200);
    v80 = *(v18 + 192);
    v27 = *(v18 + 120);
    v78 = *(v18 + 216);
    v79 = *(v18 + 112);
    v28 = *(v18 + 96);
    v29 = *(v18 + 104);
    sub_1DC28F9B0((v18 + 56), v18 + 16);
    v30 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x1B8);
    v31 = OUTLINED_FUNCTION_113_0();
    v32(v31);
    OUTLINED_FUNCTION_137();
    (*(v24 + 104))(v23, *MEMORY[0x1E69ABD58], v78);
    (*(v26 + 16))(v25, v79, v80);
    OUTLINED_FUNCTION_48_0();
    sub_1DC5174CC();
    v33 = sub_1DC517B9C();
    *(v18 + 272) = sub_1DC297814();
    v34 = sub_1DC296DBC();
    (*(v22 + 16))(v83, v81, v82);
    v35 = os_log_type_enabled(v34, v33);
    v37 = *(v18 + 248);
    v36 = *(v18 + 256);
    v38 = *(v18 + 240);
    if (v35)
    {
      LODWORD(v83) = v33;
      v39 = OUTLINED_FUNCTION_63();
      a15 = OUTLINED_FUNCTION_82();
      *v39 = 136315138;
      sub_1DC5174DC();
      v40 = *(v37 + 8);
      v41 = OUTLINED_FUNCTION_151();
      v40(v41);
      v42 = OUTLINED_FUNCTION_74_0();
      sub_1DC291244(v42, v43, v44);
      OUTLINED_FUNCTION_353_0();

      *(v39 + 4) = v36;
      OUTLINED_FUNCTION_473(&dword_1DC287000, "Cache input: %s", v83);
      OUTLINED_FUNCTION_138_3();
      OUTLINED_FUNCTION_58();
    }

    else
    {

      v40 = *(v37 + 8);
      v62 = OUTLINED_FUNCTION_151();
      v40(v62);
    }

    *(v18 + 280) = v40;
    v63 = *(v18 + 40);
    v64 = *(v18 + 48);
    OUTLINED_FUNCTION_310_0((v18 + 16));
    v65 = *(MEMORY[0x1E69ABD38] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_79_0();
    *(v18 + 288) = v66;
    *v66 = v67;
    v66[1] = sub_1DC42C310;
    v68 = *(v18 + 264);
    v69 = *(v18 + 152);
    OUTLINED_FUNCTION_290_0();

    return MEMORY[0x1EEE18718](v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, a15, a16, a17, a18);
  }

  else
  {
    sub_1DC28EB30(v18 + 56, &qword_1ECC7DA28, &unk_1DC52A6D0);
    v46 = *(v18 + 256);
    v45 = *(v18 + 264);
    v47 = *(v18 + 232);
    v48 = *(v18 + 208);
    v50 = *(v18 + 176);
    v49 = *(v18 + 184);
    v51 = *(v18 + 152);
    v52 = *(v18 + 128);

    OUTLINED_FUNCTION_297_0();
    OUTLINED_FUNCTION_75_6();
    OUTLINED_FUNCTION_290_0();

    return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1DC42C310()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}