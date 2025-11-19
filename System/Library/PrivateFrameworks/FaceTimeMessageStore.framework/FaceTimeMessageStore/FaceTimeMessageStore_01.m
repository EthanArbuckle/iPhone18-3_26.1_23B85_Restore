uint64_t sub_1BC7B9BCC()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  OUTLINED_FUNCTION_52_3();
  sub_1BC8302F8();
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_91_0(v7);
  OUTLINED_FUNCTION_107(dword_1BC902C58);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1BC7BCD24;

  return v10(&unk_1BC902C50, v2);
}

uint64_t OUTLINED_FUNCTION_91_0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(a1 + 16) = v1;

  return sub_1BC8303A8();
}

void OUTLINED_FUNCTION_91_1()
{
}

uint64_t OUTLINED_FUNCTION_91_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136) + 40 * a1 + 72;

  return sub_1BC7A792C(v3, v1 + 16);
}

uint64_t sub_1BC7B9D48(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for MessageStoreFetchRequest();
  (*(*(Request - 8) + 32))(a2, a1, Request);
  return a2;
}

_BYTE *sub_1BC7B9DAC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BC7B9E78);
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

uint64_t sub_1BC7B9EA0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7B9F78, 0, 0);
}

uint64_t sub_1BC7B9F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v15 = v12[17];
  v14 = v12[18];
  v16 = v12[15];
  v17 = v12[16];
  v19 = v12[13];
  v18 = v12[14];
  v12[2] = v20;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v21);
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902C68;
  *(v22 + 24) = v13;
  v12[10] = &unk_1BC902C70;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0();
  v23 = OUTLINED_FUNCTION_28_5();
  v24(v23);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1BC7BA090(char a1)
{
  if (a1)
  {
    return 0x69646E6563736564;
  }

  else
  {
    return 0x6E69646E65637361;
  }
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_1BC8F8364();
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 88, v3);
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v2 = *(v0 - 328);

  return sub_1BC8F7124();
}

void OUTLINED_FUNCTION_69_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1, void *a2)
{
  *a2 = v2;

  return MEMORY[0x1EEE6DEE8](v3, a1);
}

uint64_t *OUTLINED_FUNCTION_54_4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + v4[8]);
  *v5 = a1;
  v5[1] = a2;
  *(v2 + v4[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + v4[10]) = 0;
  result = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v7 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_5()
{
  v3 = *(*(v1 - 240) + 48) + 40 * v0;

  return sub_1BC8037DC(v3);
}

uint64_t OUTLINED_FUNCTION_54_9()
{

  return sub_1BC8F76D4();
}

uint64_t sub_1BC7BA318()
{
  OUTLINED_FUNCTION_5();
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1BC7B0168;

  return v5();
}

uint64_t sub_1BC7BA3FC()
{
  OUTLINED_FUNCTION_32();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16(v4);

  return v7(v6);
}

uint64_t sub_1BC7BA490()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC7BA51C(v3, v4);
}

uint64_t sub_1BC7BA51C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1BC7BDA80;

  return v6(v2 + 16);
}

void sub_1BC7BA610(void *a1@<X8>)
{
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v9 = *(v1 + 128);
  v8 = *(v1 + 136);
  if (!*(v1 + 144))
  {
    v11 = v5;
    v12 = v4;
    v13 = v6;
    v14 = v7;
    v15 = v9;
    v16 = v8;
LABEL_6:
    *a1 = v11;
    a1[1] = v12;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v15;
    a1[5] = v16;
    return;
  }

  if (*(v1 + 144) == 1)
  {
    v10 = v5;
    sub_1BC8E776C(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_6_25();
      return;
    }

    sub_1BC7BBBDC(&v21);
    v27 = v21;
    v19 = v23;
    v20 = v22;
    v16 = v26;
    v17 = v25;
    v18 = v24;
    OUTLINED_FUNCTION_6_25();
    v11 = v27;
    v13 = v19;
    v12 = v20;
    v15 = v17;
    v14 = v18;
    goto LABEL_6;
  }

  sub_1BC8E78A4();
  if (!v2)
  {
    sub_1BC7BBBDC(&v21);
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    goto LABEL_6;
  }
}

uint64_t sub_1BC7BA7A4()
{
  OUTLINED_FUNCTION_32();
  Request = type metadata accessor for MessageStoreFetchRequest();
  OUTLINED_FUNCTION_25(Request);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_104(v6);

  return sub_1BC7BA868(v8, v9, v10);
}

uint64_t sub_1BC7BA868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC7BA88C, 0, 0);
}

uint64_t sub_1BC7BA88C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_114_0();
  v0 = OUTLINED_FUNCTION_117();
  v1[1] = v0;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v2();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC7BA95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v9 = sub_1BC7BAABC(a3);
  v10 = sub_1BC81389C(a3, a1, v9);

  if (!v4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_94(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_94_1(_WORD *a1)
{
  *a1 = 0;

  return sub_1BC8F7674();
}

uint64_t OUTLINED_FUNCTION_100_0(float *a1, float a2)
{
  *a1 = a2;

  return sub_1BC7C0454(v2);
}

uint64_t OUTLINED_FUNCTION_100_1()
{

  return sub_1BC8F7734();
}

uint64_t sub_1BC7BAABC(uint64_t a1)
{
  Request = type metadata accessor for MessageStoreFetchRequest();
  if ((*(a1 + *(Request + 28)) & 2) != 0)
  {
    if (qword_1EDC1E208 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v26 = sub_1BC8F7734();
    __swift_project_value_buffer(v26, qword_1EDC2B2C8);
    v27 = sub_1BC8F7714();
    v28 = sub_1BC8F8204();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BC7A3000, v27, v28, "Ignoring protected apps because includeProtectedApps was set", v29, 2u);
      OUTLINED_FUNCTION_6();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v4 = Request;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BC7BB414();
  v7 = (a1 + *(v4 + 32));
  v8 = v7[1];
  v9 = "com.apple.telephonyutilities.callservicesd.FaceTimeProvider";
  if (v8)
  {
    v10 = *v7;
    if (qword_1EDC1E208 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v11 = sub_1BC8F7734();
    __swift_project_value_buffer(v11, qword_1EDC2B2C8);

    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F8204();

    v14 = &unk_1BC8FC000;
    if (os_log_type_enabled(v12, v13))
    {
      v90 = v13;
      v15 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v92 = v15;
      *v15 = 136446466;
      v16 = *(v6 + 16);
      v17 = MEMORY[0x1E69E7CC0];
      if (v16)
      {
        v89 = v12;
        v94 = v10;
        v98 = MEMORY[0x1E69E7CC0];

        sub_1BC7AD404();
        v18 = 32;
        v17 = v98;
        OUTLINED_FUNCTION_1_33();
        do
        {
          v20 = *(v6 + v18);
          v21 = 0xD000000000000017;
          v22 = "lservicesd.FaceTimeProvider";
          if (v20 != 1)
          {
            if (v20 != 2)
            {
              goto LABEL_84;
            }

            v21 = v19 + 36;
            v22 = "ingLastReindexTimeDelta";
          }

          OUTLINED_FUNCTION_11_18();
          if (v24)
          {
            OUTLINED_FUNCTION_37(v23);
            OUTLINED_FUNCTION_12_23();
            sub_1BC7AD404();
            OUTLINED_FUNCTION_1_33();
            v17 = v98;
          }

          *(v17 + 16) = "com.apple.telephonyutilities.callservicesd.FaceTimeProvider";
          v25 = v17 + 16 * v1;
          *(v25 + 32) = v21;
          *(v25 + 40) = v22 | 0x8000000000000000;
          v18 += 8;
          --v16;
        }

        while (v16);

        v10 = v94;
        v14 = &unk_1BC8FC000;
        v12 = v89;
      }

      v43 = MEMORY[0x1BFB29280](v17, MEMORY[0x1E69E6158]);
      v45 = v44;

      sub_1BC7A9A4C(v43, v45, &v100);

      v9 = v92;
      OUTLINED_FUNCTION_10_27();
      *(v92 + 14) = sub_1BC7A9A4C(v10, v8, v46);
      _os_log_impl(&dword_1BC7A3000, v12, v90, "Filtering protected apps %{public}s using originatingBundleID: %{public}s", v92, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_30();
      OUTLINED_FUNCTION_6();
    }

    v47 = v10 == 0xD000000000000012 && 0x80000001BC90B6C0 == v8;
    if (v47 || (sub_1BC8F8AA4() & 1) != 0)
    {
      v48 = *(v6 + 16);
      if (v48)
      {

        v49 = MEMORY[0x1E69E7CC0];
        v1 = 32;
        do
        {
          v50 = *(v6 + v1);
          if (v50 != 2)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v100 = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_9_21();
              v49 = v100;
            }

            v53 = *(v49 + 16);
            v52 = *(v49 + 24);
            v9 = (v53 + 1);
            if (v53 >= v52 >> 1)
            {
              OUTLINED_FUNCTION_37(v52);
              OUTLINED_FUNCTION_12_23();
              sub_1BC7DDB3C(v54, v55, v56);
              v49 = v100;
            }

            *(v49 + 16) = v9;
            *(v49 + 8 * v53 + 32) = v50;
          }

          v1 += 8;
          --v48;
        }

        while (v48);
LABEL_63:

        v14 = &unk_1BC8FC000;
LABEL_65:

        v6 = v49;
LABEL_66:
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v66 = sub_1BC8F7714();
        v67 = sub_1BC8F8204();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v97 = v68;
          *v68 = v14[66];
          v69 = *(v6 + 16);
          if (v69)
          {
            v91 = v66;
            v99 = MEMORY[0x1E69E7CC0];
            sub_1BC7AD404();
            v70 = 32;
            v71 = v99;
            OUTLINED_FUNCTION_1_33();
            do
            {
              v73 = *(v6 + v70);
              v74 = 0xD000000000000017;
              v75 = "lservicesd.FaceTimeProvider";
              if (v73 != 1)
              {
                if (v73 != 2)
                {
                  goto LABEL_84;
                }

                v74 = v72 + 36;
                v75 = "ingLastReindexTimeDelta";
              }

              OUTLINED_FUNCTION_11_18();
              if (v24)
              {
                OUTLINED_FUNCTION_37(v76);
                OUTLINED_FUNCTION_12_23();
                sub_1BC7AD404();
                OUTLINED_FUNCTION_1_33();
                v71 = v99;
              }

              *(v71 + 16) = v9;
              v77 = v71 + 16 * v1;
              *(v77 + 32) = v74;
              *(v77 + 40) = v75 | 0x8000000000000000;
              v70 += 8;
              --v69;
            }

            while (v69);

            v66 = v91;
          }

          else
          {

            v71 = MEMORY[0x1E69E7CC0];
          }

          v78 = MEMORY[0x1BFB29280](v71, MEMORY[0x1E69E6158]);
          v80 = v79;

          sub_1BC7A9A4C(v78, v80, &v100);

          OUTLINED_FUNCTION_10_27();
          v83 = sub_1BC7A9A4C(v81, v8, v82);

          *(v97 + 14) = v83;
          _os_log_impl(&dword_1BC7A3000, v66, v67, "Filtered protected app IDs: %{public}s using originatingBundleID: %{public}s", v97, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_30();
          OUTLINED_FUNCTION_6();
        }

        else
        {
        }

        return v6;
      }
    }

    else
    {
      v57 = v10 == 0xD000000000000015 && 0x80000001BC90B6E0 == v8;
      if (!v57 && (sub_1BC8F8AA4() & 1) == 0)
      {
        goto LABEL_66;
      }

      v58 = *(v6 + 16);
      if (v58)
      {

        v49 = MEMORY[0x1E69E7CC0];
        v1 = 32;
        do
        {
          v59 = *(v6 + v1);
          if (v59 != 1)
          {
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v100 = v49;
            if ((v60 & 1) == 0)
            {
              OUTLINED_FUNCTION_9_21();
              v49 = v100;
            }

            v62 = *(v49 + 16);
            v61 = *(v49 + 24);
            v9 = (v62 + 1);
            if (v62 >= v61 >> 1)
            {
              OUTLINED_FUNCTION_37(v61);
              OUTLINED_FUNCTION_12_23();
              sub_1BC7DDB3C(v63, v64, v65);
              v49 = v100;
            }

            *(v49 + 16) = v9;
            *(v49 + 8 * v62 + 32) = v59;
          }

          v1 += 8;
          --v58;
        }

        while (v58);
        goto LABEL_63;
      }
    }

    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  if (qword_1EDC1E208 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v30 = sub_1BC8F7734();
  __swift_project_value_buffer(v30, qword_1EDC2B2C8);
  swift_bridgeObjectRetain_n();
  v31 = sub_1BC8F7714();
  v32 = sub_1BC8F8204();

  if (!os_log_type_enabled(v31, v32))
  {

LABEL_82:

    return v6;
  }

  v33 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v100 = v96;
  *v33 = 136446210;
  v34 = *(v6 + 16);
  if (!v34)
  {

    v37 = MEMORY[0x1E69E7CC0];
LABEL_81:
    v84 = MEMORY[0x1BFB29280](v37, MEMORY[0x1E69E6158]);
    v86 = v85;

    v87 = sub_1BC7A9A4C(v84, v86, &v100);

    *(v33 + 4) = v87;
    _os_log_impl(&dword_1BC7A3000, v31, v32, "Not filtering protected apps because originatingBundleID was nil. Protected apps: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_6();
    goto LABEL_82;
  }

  v93 = v33;
  v95 = v31;
  OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_1_33();
  v36 = 32;
  v37 = v5;
  while (1)
  {
    v38 = *(v6 + v36);
    v39 = 0xD000000000000017;
    v40 = "lservicesd.FaceTimeProvider";
    if (v38 != 1)
    {
      break;
    }

LABEL_28:
    OUTLINED_FUNCTION_6_26();
    if (v24)
    {
      OUTLINED_FUNCTION_37(v41);
      sub_1BC7AD404();
      OUTLINED_FUNCTION_1_33();
    }

    *(v37 + 16) = 0;
    v42 = v37 + 16 * v32;
    *(v42 + 32) = v39;
    *(v42 + 40) = v40 | 0x8000000000000000;
    v36 += 8;
    if (!--v34)
    {

      v31 = v95;
      v33 = v93;
      goto LABEL_81;
    }
  }

  if (v38 == 2)
  {
    v39 = v35 + 36;
    v40 = "ingLastReindexTimeDelta";
    goto LABEL_28;
  }

LABEL_84:
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC7BB414()
{
  if (qword_1EDC1E208 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B2C8);
  v2 = v0;
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (!os_log_type_enabled(v3, v4))
  {
LABEL_27:

    sub_1BC7BBBB8();
    v30 = v29;
    sub_1BC7BB7B4();
    v36 = v30;
    sub_1BC7BBE44(v31);
    return v36;
  }

  v33 = v4;
  v5 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  *v5 = 136446466;
  sub_1BC7BB7B4();
  v7 = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v34 = v5;
  if (!*(v6 + 16))
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v15 = MEMORY[0x1BFB29280](v9, MEMORY[0x1E69E6158]);
    v17 = v16;

    v18 = sub_1BC7A9A4C(v15, v17, &v36);

    *(v5 + 4) = v18;
    *(v5 + 12) = 2082;
    sub_1BC7BBBB8();
    v20 = v19;
    if (*(v19 + 16))
    {
      OUTLINED_FUNCTION_8_31();
      v21 = v8;
      OUTLINED_FUNCTION_1_33();
      do
      {
        v22 = *(v20 + 32);
        v23 = "lservicesd.FaceTimeProvider";
        if (v22 != 1)
        {
          if (v22 != 2)
          {
            goto LABEL_28;
          }

          v23 = "ingLastReindexTimeDelta";
        }

        OUTLINED_FUNCTION_6_26();
        if (v13)
        {
          OUTLINED_FUNCTION_37(v24);
          sub_1BC7AD404();
          OUTLINED_FUNCTION_1_33();
        }

        OUTLINED_FUNCTION_7_24(v23 | 0x8000000000000000);
      }

      while (!v14);

      v5 = v34;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    v25 = MEMORY[0x1BFB29280](v21, MEMORY[0x1E69E6158]);
    v27 = v26;

    v28 = sub_1BC7A9A4C(v25, v27, &v36);

    *(v5 + 14) = v28;
    _os_log_impl(&dword_1BC7A3000, v3, v33, "Got locked apps: %{public}s and hidden apps: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_6();
    goto LABEL_27;
  }

  v35 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8_31();
  v9 = v35;
  OUTLINED_FUNCTION_1_33();
  while (1)
  {
    v10 = *(v7 + 32);
    v11 = "lservicesd.FaceTimeProvider";
    if (v10 != 1)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_6_26();
    if (v13)
    {
      OUTLINED_FUNCTION_37(v12);
      sub_1BC7AD404();
      OUTLINED_FUNCTION_1_33();
    }

    OUTLINED_FUNCTION_7_24(v11 | 0x8000000000000000);
    if (v14)
    {

      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }
  }

  if (v10 == 2)
  {
    v11 = "ingLastReindexTimeDelta";
    goto LABEL_9;
  }

LABEL_28:
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1BC8F8734();
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1BC7A9A4C(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v1 = v0[27];
  v2 = v0[29] + 1;
  return __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

void sub_1BC7BB864(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_1BC8F80F4();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v28 = *MEMORY[0x1E69D8DB8];
  v26 = *MEMORY[0x1E69D8D98];

  v7 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v2 + 48) + ((v7 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v10 == 0xD000000000000017 && 0x80000001BC90BE40 == v11;
    if (v13 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
    {
      v21 = 1;
      goto LABEL_37;
    }

    if (sub_1BC8F7C24() == v12 && v14 == v11)
    {
      v21 = 1;
LABEL_36:

LABEL_37:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v27 + 16);
        sub_1BC7BBF2C();
        v27 = v24;
      }

      v22 = *(v27 + 16);
      if (v22 >= *(v27 + 24) >> 1)
      {
        sub_1BC7BBF2C();
        v27 = v25;
      }

      *(v27 + 16) = v22 + 1;
      *(v27 + 8 * v22 + 32) = v21;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_4_19();

      if (v16)
      {
        v21 = 1;
        goto LABEL_36;
      }

      v17 = v12 == 0xD00000000000003BLL && 0x80000001BC90BE00 == v11;
      if (v17 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
      {
        goto LABEL_35;
      }

      if (sub_1BC8F7C24() == v12 && v18 == v11)
      {

LABEL_35:
        v21 = 2;
        goto LABEL_36;
      }

      v20 = OUTLINED_FUNCTION_4_19();

      if (v20)
      {
        v21 = 2;
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_76_5@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v2 + 22) = a2;
  *(v2 + 24) = v3;
  *(result + 16) = v3;
  *(v2 + 32) = a2;
  return result;
}

void sub_1BC7BBBDC()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  sub_1BC7BA610(v28);
  if (v0)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v3 = sub_1BC8F7734();
    __swift_project_value_buffer(v3, qword_1EDC2B3A8);
    v4 = OUTLINED_FUNCTION_10_2();
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F81E4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_21_1();
      v25 = swift_slowAlloc();
      *&v28[0] = v25;
      *v7 = 136446210;
      swift_getErrorValue();
      v8 = v26;
      v9 = v27;
      v10 = sub_1BC8F83F4();
      v24[1] = v24;
      v11 = OUTLINED_FUNCTION_0(v10);
      v13 = v12;
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v11);
      v17 = v24 - v16;
      (*(*(v9 - 8) + 16))(v24 - v16, v8, v9);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v9);
      v18 = sub_1BC8073F0(v17, v9);
      v20 = v19;
      (*(v13 + 8))(v17, v10);
      v21 = sub_1BC7A9A4C(v18, v20, v28);

      *(v7 + 4) = v21;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Failed to load temporary context: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    swift_willThrow();
  }

  else
  {
    v22 = v28[1];
    v23 = v28[2];
    *v2 = v28[0];
    v2[1] = v22;
    v2[2] = v23;
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC7BBE44(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FAADC(v4 + v3, 1, sub_1BC7BBF2C);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7BBF2C()
{
  OUTLINED_FUNCTION_42_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F20, &unk_1BC900AF0);
      v9 = OUTLINED_FUNCTION_67();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_58_0();
      v9[2] = v2;
      v9[3] = 2 * v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD644(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BC7BC004()
{
  OUTLINED_FUNCTION_20_17();
  if (!v0)
  {

    OUTLINED_FUNCTION_14_19();
  }
}

uint64_t sub_1BC7BC08C(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  OUTLINED_FUNCTION_21_4();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC8FEAA0;
  *(v7 + 32) = v5;
  OUTLINED_FUNCTION_21_4();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_21_4();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v8 + 16) = v9 | 0x4000000000000000;
  *(v7 + 40) = v8 | 0xB000000000000000;
  *(v6 + 16) = v7;

  sub_1BC7A5AB4(v5);
  v10 = sub_1BC7BC4A4();

  result = type metadata accessor for MessageStoreFetchRequest();
  v12 = *(v3 + *(result + 36));
  v13 = *(v3 + *(result + 40));
  if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
  {
    v14 = result;
    [v10 setFetchOffset_];
    [v10 setFetchLimit_];
    v15 = *(v3 + *(v14 + 24));
    if ((v15 & 0xFF00) != 0x200)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC904010;
      v17 = MessageKey.rawValue.getter();
      v19 = v18;
      v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      *(v16 + 32) = sub_1BC7C03E8(v17, v19, (v15 & 0x100) == 0);
      sub_1BC886798();
      v21 = sub_1BC8F7E34();

      [v10 setSortDescriptors_];
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC7BC294()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7BC2C8()
{
  sub_1BC7B0EFC(*(v0 + 16));
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1BC7BC300()
{
  OUTLINED_FUNCTION_22();
  v3 = OUTLINED_FUNCTION_41_2(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30_2(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5110, &qword_1BC8FD3A8);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_24_2();
  Messages = type metadata accessor for GetMessages(v12);
  v14 = *(*(Messages - 8) + 64);
  MEMORY[0x1EEE9AC00](Messages - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  v15 = v0[4];
  OUTLINED_FUNCTION_25_2(v0, v0[3]);
  sub_1BC7ADF20();
  OUTLINED_FUNCTION_23_0();
  sub_1BC8F8C84();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_7();
    sub_1BC7E2760(v16, v17);
    OUTLINED_FUNCTION_28_0();
    v18 = OUTLINED_FUNCTION_29_1();
    v19(v18);
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_32_1();
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_23();
}

id sub_1BC7BC4A4()
{
  v1 = *v0;
  type metadata accessor for FTStoredMessage();
  v2 = static FTStoredMessage.fetchRequest()();
  v3 = [v2 setFetchBatchSize_];
  v6 = sub_1BC7B0F6C(v3, v4, v5);
  if (v6)
  {
    v7 = v6;
    [v2 setPredicate_];
    v8 = [v7 predicateFormat];
    sub_1BC8F7C24();
    v10 = v9;

    v25 = v10;
    OUTLINED_FUNCTION_36_4();
    v22 = v11;
    v23 = v12;
    sub_1BC7B7A9C();
    LOBYTE(v8) = sub_1BC8F8424();

    if ((v8 & 1) != 0 || (v13 = swift_allocObject(), *(v13 + 16) = 0, v24 = v13 | 0x9000000000000000, v16 = sub_1BC7B0F6C(v13, v14, v15), , !v16))
    {
    }

    else
    {
      sub_1BC7D9730(0, &unk_1EDC1DE08, 0x1E696AB28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
      v17 = OUTLINED_FUNCTION_55();
      *(v17 + 16) = xmmword_1BC8FEA90;
      *(v17 + 32) = v7;
      *(v17 + 40) = v16;
      v18 = v7;
      v19 = v16;
      v20 = sub_1BC7BCA70(v17, &selRef_andPredicateWithSubpredicates_);
      [v2 setPredicate_];
    }
  }

  return v2;
}

id static FTStoredMessage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1BC8F7BE4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_1BC830350(v0, type metadata accessor for FaceTimeMessageStore_Transcript);
}

unint64_t OUTLINED_FUNCTION_57_4()
{
  *(v0 + 16) = v1;
  result = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
  v5 = *(v3 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return sub_1BC7C4DAC(v1, v0, v2, v3);
}

void OUTLINED_FUNCTION_59_6()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return sub_1BC8F8754();
}

uint64_t OUTLINED_FUNCTION_59_8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  *(v3 - 152) = v1;
  *(v3 - 176) = v4;
  *(v3 - 168) = v2;
  sub_1BC7F0E58((v3 - 176), (v3 - 208));
}

unint64_t sub_1BC7BC8BC()
{
  result = qword_1EDC1DF38;
  if (!qword_1EDC1DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1BC8F88B4();
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return sub_1BC8F7FD4();
}

uint64_t OUTLINED_FUNCTION_64_3()
{
  result = *(v0 + 48);
  v2 = *(v0 + 32);
  return result;
}

uint64_t *OUTLINED_FUNCTION_64_5()
{
  *(v1 + 432) = v0;
  result = __swift_project_boxed_opaque_existential_1((*(v1 + 264) + 64), *(*(v1 + 264) + 88));
  v3 = *result;
  return result;
}

id sub_1BC7BCA70(uint64_t a1, SEL *a2)
{
  sub_1BC7D9730(0, &qword_1EDC1DE88, 0x1E696AE18);
  v3 = sub_1BC8F7E34();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

void sub_1BC7BCAF4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v1;
  v4 = *v0;
  *v3 = *v0;
  v5 = *(v2 + 144);
  if (*(v2 + 48))
  {
    v6 = *(v2 + 48);
    swift_willThrow();

    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_40_4();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v1 + 96);
  v10 = *(v2 + 144);

  v11 = *(v4 + 8);
  OUTLINED_FUNCTION_40_4();

  __asm { BRAA            X2, X16 }
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_1BC8F83D4();
}

uint64_t sub_1BC7BCCDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MessageStoreProvider.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MessageStoreProvider.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BC7BCD24()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v15 = v5[6];
    v14 = v5[7];

    OUTLINED_FUNCTION_96();

    return v16(v3);
  }
}

void OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1BFB2A020);
}

uint64_t OUTLINED_FUNCTION_10_9()
{
  v1 = **(v0 - 232);
  v2 = *(v0 - 208);
  return *(v0 - 216);
}

id OUTLINED_FUNCTION_10_12(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return sub_1BC8F8734();
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_24()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return sub_1BC8F84C4();
}

uint64_t OUTLINED_FUNCTION_10_29()
{
  v3 = *(*(v1 - 208) + 48) + 40 * v0;

  return sub_1BC8037DC(v3);
}

uint64_t sub_1BC7BD09C()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  OUTLINED_FUNCTION_52_3();
  sub_1BC8302F8();
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_91_0(v7);
  OUTLINED_FUNCTION_107(dword_1BC902AE0);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1BC7C045C;

  return v10(&unk_1BC902AD8, v2);
}

uint64_t sub_1BC7BD1A8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E30, &qword_1BC8FC378);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t objectdestroy_119Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void OUTLINED_FUNCTION_81_3()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[30];
}

uint64_t sub_1BC7BD2FC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BC7BD3E8()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_38_4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC7BD4F4@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = MailboxType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t MailboxType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

uint64_t sub_1BC7BD568()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1BC7BD5CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC7BD624()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BC7BD714()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1BC7BD810()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_96();

  return v7(v2);
}

unint64_t sub_1BC7BD914()
{
  result = qword_1EDC1F9D8;
  if (!qword_1EDC1F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9D8);
  }

  return result;
}

uint64_t sub_1BC7BD968()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 64) = v0;

  OUTLINED_FUNCTION_27_4();
  sub_1BC7BD5CC(v6, v10);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC7BDA80()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

_BYTE *storeEnumTagSinglePayload for MessageKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
        JUMPOUT(0x1BC7BDC44);
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC7BDC6C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t getEnumTagSinglePayload for MessageKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BC7BDD5C()
{
  OUTLINED_FUNCTION_5();
  **(*(*(v0 + 24) + 64) + 40) = *(v0 + 16);
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC7BDDD0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_18();
  v4 = *(v3 + 56);
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_96();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

FaceTimeMessageStore::MessageKey_optional __swiftcall MessageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC8F8AE4();

  v5 = 0;
  v6 = 11;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
LABEL_24:
      v6 = v5;
      break;
    case 11:
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    default:
      v6 = 29;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BC7BE108(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BC7BE118()
{
  result = qword_1EDC1F8F0[0];
  if (!qword_1EDC1F8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1F8F0);
  }

  return result;
}

uint64_t sub_1BC7BE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v15 = v12[17];
  v14 = v12[18];
  v16 = v12[15];
  v17 = v12[16];
  v19 = v12[13];
  v18 = v12[14];
  v12[2] = v20;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v21);
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902AF0;
  *(v22 + 24) = v13;
  v12[10] = &unk_1BC902AF8;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0();
  v23 = OUTLINED_FUNCTION_28_5();
  v24(v23);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1BC7BE27C()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7BE2B0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t MessageSortOrder.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60D0, &qword_1BC905398);
  OUTLINED_FUNCTION_0(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60D8, &qword_1BC9053A0);
  OUTLINED_FUNCTION_0(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60E0, &unk_1BC9053A8);
  OUTLINED_FUNCTION_0(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7B9B24();
  v24 = v53;
  sub_1BC8F8C84();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_1BC8F8914();
  result = sub_1BC7B85D4(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_1BC8F8624();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v42 = &type metadata for MessageSortOrder;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1BC7B85D0(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_1BC7B9B78();
      v37 = v8;
      OUTLINED_FUNCTION_2_21();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_1BC883BDC();
      v44 = v47;
      OUTLINED_FUNCTION_2_21();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

uint64_t sub_1BC7BE76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7BE794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7BE794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646E65637361 && a2 == 0xE900000000000067;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646E6563736564 && a2 == 0xEA0000000000676ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC7BE86C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC7BE8FC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BC7C0828;

  return v8(a2);
}

uint64_t sub_1BC7BE9F4()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC7BEAEC();
}

uint64_t sub_1BC7BEA78()
{
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_48_3(v1);
  Messages = type metadata accessor for GetMessages(v2);
  OUTLINED_FUNCTION_25(Messages);
  v5 = *(v4 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC7BEAEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7BD710;

  return sub_1BC7BEA78();
}

uint64_t sub_1BC7BEB84()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming GetMessages message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AD8, &qword_1BC9034A8);
  sub_1BC8F77C4();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_35_5();
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_28_6(v10);

  return sub_1BC7BED60();
}

unint64_t sub_1BC7BECB8()
{
  result = qword_1EDC204D8;
  if (!qword_1EDC204D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC204D8);
  }

  return result;
}

unint64_t sub_1BC7BED0C()
{
  result = qword_1EDC20560;
  if (!qword_1EDC20560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20560);
  }

  return result;
}

uint64_t sub_1BC7BED60()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest();
  OUTLINED_FUNCTION_25(Request);
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

unint64_t sub_1BC7BEE28()
{
  result = qword_1EDC20DD8;
  if (!qword_1EDC20DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20DD8);
  }

  return result;
}

uint64_t sub_1BC7BEE7C()
{
  OUTLINED_FUNCTION_71();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[5];
  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B3A8);
  v5 = OUTLINED_FUNCTION_29();
  sub_1BC7AB2C0(v5, v6);
  v7 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  if (v9)
  {
    OUTLINED_FUNCTION_21_1();
    v25 = OUTLINED_FUNCTION_33();
    *v1 = 136446210;
    MessageStoreFetchRequest.description.getter();
    sub_1BC7ADC24(v10);
    v11 = OUTLINED_FUNCTION_45_2();
    v14 = sub_1BC7A9A4C(v11, v12, v13);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v20 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v20);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v21);
  }

  else
  {

    sub_1BC7ADC24(v10);
  }

  v22 = v0[6];
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_10();
  v23 = swift_task_alloc();
  v0[8] = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_8_4(v23);

  return sub_1BC7BF034();
}

uint64_t sub_1BC7BF034()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest();
  OUTLINED_FUNCTION_26(Request);
  v1[4] = v4;
  v1[5] = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC7BF0E0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7BE16C, 0, 0);
}

uint64_t sub_1BC7BF210@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = MessageType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t MessageType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

uint64_t sub_1BC7BF284()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC7BA51C(v3, v4);
}

uint64_t sub_1BC7BF310()
{
  OUTLINED_FUNCTION_32();
  Request = type metadata accessor for MessageStoreFetchRequest();
  OUTLINED_FUNCTION_25(Request);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_104(v6);

  return sub_1BC7BF3D4(v8, v9, v10);
}

uint64_t sub_1BC7BF3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC7BF4C8, 0, 0);
}

uint64_t sub_1BC7BF3F8(uint64_t a1)
{
  v8[2] = a1;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v3);
  v5 = *(v4 + 128);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
  v5(&v9, sub_1BC7C0208, v8, v6, v3, v4);
  result = swift_endAccess();
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1BC7BF4C8()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 24);
  **(v0 + 16) = sub_1BC7BF3F8(*(v0 + 32));
  OUTLINED_FUNCTION_11();

  return v2();
}

void sub_1BC7BF544(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v107 = a3;
  v103 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v96 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v96 - v19;
  v110 = sub_1BC8F7264();
  v102 = *(v110 - 8);
  v21 = *(v102 + 64);
  v22 = MEMORY[0x1EEE9AC00](v110);
  v100 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v96 - v24;
  Request = type metadata accessor for MessageStoreFetchRequest();
  v25 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1D0 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v28 = sub_1BC8F7734();
    __swift_project_value_buffer(v28, qword_1EDC2B268);
    sub_1BC8302F8();
    v29 = sub_1BC8F7714();
    v30 = sub_1BC8F8204();
    v31 = os_log_type_enabled(v29, v30);
    v99 = a4;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v104 = a2;
      v98 = v5;
      v33 = v32;
      v34 = swift_slowAlloc();
      v112 = v34;
      *v33 = 136446210;
      v35 = MessageStoreFetchRequest.description.getter();
      v37 = v36;
      sub_1BC830350(v27, type metadata accessor for MessageStoreFetchRequest);
      v38 = sub_1BC7A9A4C(v35, v37, &v112);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1BC7A3000, v29, v30, "Get messages with request: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB2AA50](v34, -1, -1);
      v39 = v33;
      v5 = v98;
      a2 = v104;
      MEMORY[0x1BFB2AA50](v39, -1, -1);
    }

    else
    {

      sub_1BC830350(v27, type metadata accessor for MessageStoreFetchRequest);
    }

    v40 = *__swift_project_boxed_opaque_existential_1((v107 + 16), *(v107 + 40));
    v41 = sub_1BC7BAABC(a2);
    v42 = *(a2 + *(Request + 20));
    a4 = v103;
    if (v42 >> 60 == 10)
    {
      v106 = v41;
      type metadata accessor for FTLocalMessageProperties();
      v43 = static FTLocalMessageProperties.fetchRequest()();
      [v43 setFetchBatchSize_];
      v112 = v42;
      v44 = sub_1BC7E61F8();
      [v43 setPredicate_];

      v45 = sub_1BC8F8314();
      v27 = v5;
      if (v5)
      {

        return;
      }

      a4 = v45;
      v97 = v43;
      v98 = 0;
      v104 = a2;
      v5 = sub_1BC7C0454(v45);
      v48 = 0;
      v108 = (a4 & 0xFFFFFFFFFFFFFF8);
      v109 = (a4 & 0xC000000000000001);
      Request = MEMORY[0x1E69E7CC0];
      v100 = (v102 + 32);
      while (v5 != v48)
      {
        if (v109)
        {
          v49 = MEMORY[0x1BFB29A00](v48, a4);
        }

        else
        {
          if (v48 >= *(v108 + 2))
          {
            goto LABEL_65;
          }

          v49 = *(a4 + 8 * v48 + 32);
        }

        v27 = v49;
        a2 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v50 = a4;
        v51 = [v49 recordUUID];
        if (v51)
        {
          v52 = v51;
          sub_1BC8F7244();

          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v27 = v110;
        __swift_storeEnumTagSinglePayload(v18, v53, 1, v110);
        sub_1BC830458();
        if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
        {
          sub_1BC7C1744(v20, &unk_1EBCF5D70, &qword_1BC8FC740);
          ++v48;
          a4 = v50;
        }

        else
        {
          v27 = *v100;
          (*v100)(v101, v20, v110);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = *(Request + 16);
            sub_1BC7F7144();
            Request = v57;
          }

          v54 = *(Request + 16);
          if (v54 >= *(Request + 24) >> 1)
          {
            sub_1BC7F7144();
            Request = v58;
          }

          v55 = Request;
          *(Request + 16) = v54 + 1;
          (v27)(v55 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v54, v101, v110);
          ++v48;
          a4 = v50;
        }
      }

      v68 = swift_allocObject();
      v69 = v106;
      *(v68 + 16) = Request;
      v112 = v68 | 0x1000000000000000;
      v70 = sub_1BC7BC08C(&v112, v69);

      type metadata accessor for FTStoredMessage();
      v71 = v103;
      v72 = v98;
      v73 = sub_1BC8F8314();
      if (v72)
      {

        return;
      }

      v87 = sub_1BC812E14(v73, v71, a4);

      goto LABEL_63;
    }

    v112 = *(a2 + *(Request + 20));
    v46 = sub_1BC7BC08C(&v112, v41);

    type metadata accessor for FTStoredMessage();
    v47 = sub_1BC8F8314();
    v27 = v5;
    if (v5)
    {
      goto LABEL_9;
    }

    v18 = v47;
    v98 = 0;

    if (*(a2 + *(Request + 28)))
    {
      break;
    }

    v110 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
    v59 = sub_1BC7C0454(v18);
    a4 = 0;
    a2 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v5 = v18 & 0xC000000000000001;
    while (1)
    {
      if (v59 == a4)
      {

        v87 = v110;
        goto LABEL_63;
      }

      if (v5)
      {
        v60 = MEMORY[0x1BFB29A00](a4, v18);
      }

      else
      {
        if (a4 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v60 = *(v18 + 8 * a4 + 32);
      }

      v61 = v60;
      v27 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v20 = *(v107 + a2);
      objc_allocWithZone(type metadata accessor for Message());

      v111 = 1;
      sub_1BC86A9C0(v61, 0x100000000, v20, v62, v63, v64, v65, v66, v96, v97, v98, v99, v100, v101, v102, v103, v104, Request, v106, v107);
      ++a4;
      if (v67)
      {
        v20 = v67;
        MEMORY[0x1BFB29230]();
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v110 = v112;
        a4 = v27;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v74 = sub_1BC7C0454(v18);
  v27 = 0;
  v104 = v18 & 0xFFFFFFFFFFFFFF8;
  Request = v18 & 0xC000000000000001;
  v101 = MEMORY[0x1E69E7CC0];
  v97 = (v102 + 32);
  v20 = &unk_1EBCF5D70;
  while (v74 != v27)
  {
    if (Request)
    {
      v75 = MEMORY[0x1BFB29A00](v27, v18);
    }

    else
    {
      if (v27 >= *(v104 + 16))
      {
        goto LABEL_69;
      }

      v75 = *(v18 + 8 * v27 + 32);
    }

    a4 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_67;
    }

    v76 = v75;
    v77 = [v76 recordUUID];
    if (v77)
    {
      v78 = v77;
      v79 = v109;
      sub_1BC8F7244();

      v80 = 0;
    }

    else
    {
      v80 = 1;
      v79 = v109;
    }

    v5 = v110;
    __swift_storeEnumTagSinglePayload(v79, v80, 1, v110);
    sub_1BC830458();
    a2 = v106;
    sub_1BC830458();

    if (__swift_getEnumTagSinglePayload(a2, 1, v5) == 1)
    {
      sub_1BC7C1744(a2, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v27;
    }

    else
    {
      v81 = *v97;
      (*v97)(v100, a2, v110);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = *(v101 + 16);
        sub_1BC7F7144();
        v101 = v85;
      }

      v5 = *(v101 + 16);
      if (v5 >= *(v101 + 24) >> 1)
      {
        sub_1BC7F7144();
        v101 = v86;
      }

      v83 = v101;
      v82 = v102;
      *(v101 + 16) = v5 + 1;
      v81((v83 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v5), v100, v110);
      v27 = a4;
    }
  }

  v88 = swift_allocObject();
  v89 = v101;
  *(v88 + 16) = v101;
  type metadata accessor for FTLocalMessageProperties();
  v46 = static FTLocalMessageProperties.fetchRequest()();
  [v46 setFetchBatchSize_];
  sub_1BC7D9730(0, &qword_1EDC1DE88, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5520, &qword_1BC9001E8);
  v90 = swift_allocObject();
  v91 = MEMORY[0x1E69E6158];
  *(v90 + 16) = xmmword_1BC8FEAA0;
  *(v90 + 56) = v91;
  *(v90 + 32) = 0x555564726F636572;
  *(v90 + 40) = 0xEA00000000004449;
  *(v90 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
  *(v90 + 64) = v89;

  v92 = sub_1BC7C034C(0x4025204E49204B25, 0xE800000000000000, v90);
  [v46 setPredicate_];

  v93 = v103;
  v94 = v98;
  v95 = sub_1BC8F8314();
  if (v94)
  {

LABEL_9:

    return;
  }

  v87 = sub_1BC812E14(v18, v93, v95);

LABEL_63:
  *v99 = v87;
}

uint64_t sub_1BC7C01D4()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7C0224()
{
  v1 = OUTLINED_FUNCTION_114();
  v3 = v2(v1);
  OUTLINED_FUNCTION_42(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_1BC8F7B74();
}

void OUTLINED_FUNCTION_53_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void *OUTLINED_FUNCTION_53_3()
{
  v2 = *(v0 + 48);

  return __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_53_8()
{
  v2 = *(v0 + 184);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_9()
{

  return sub_1BC8F8364();
}

id sub_1BC7C034C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC8F7BE4();

  if (a3)
  {
    v5 = sub_1BC8F7E34();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

id sub_1BC7C03E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1BC8F7BE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

uint64_t sub_1BC7C045C()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v15 = v5[6];
    v14 = v5[7];

    OUTLINED_FUNCTION_96();

    return v16(v3);
  }
}

uint64_t sub_1BC7C0598()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  v8 = *(v4 + 56);

  v10 = *(v6 + 8);
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t sub_1BC7C06B8()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_38_4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC7C07C4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_4();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 80);

  return v1(v2);
}

unint64_t sub_1BC7C082C()
{
  result = qword_1EDC20698;
  if (!qword_1EDC20698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    sub_1BC7E2760(&qword_1EDC20DF0, type metadata accessor for Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20698);
  }

  return result;
}

unint64_t sub_1BC7C08E4()
{
  result = qword_1EDC206A0;
  if (!qword_1EDC206A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    sub_1BC7E2760(&unk_1EDC20DF8, type metadata accessor for Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206A0);
  }

  return result;
}

uint64_t sub_1BC7C099C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 64) = v0;

  OUTLINED_FUNCTION_24_6();
  sub_1BC7BD5CC(v6, v10);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC7C0AB8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC7C0BBC()
{
  v41 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  sub_1BC8F71D4();
  sub_1BC8F7164();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_69();
  v9(v10);
  sub_1BC7AB2C0(v8, v7);
  swift_bridgeObjectRetain_n();
  v11 = sub_1BC8F7714();
  v12 = sub_1BC8F8204();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[8];
  if (v13)
  {
    OUTLINED_FUNCTION_8_2();
    v18 = swift_slowAlloc();
    v40 = OUTLINED_FUNCTION_15_11();
    *v18 = 136446722;
    sub_1BC8F7264();
    v39 = v9;
    sub_1BC7C0EA4();
    v19 = sub_1BC8F8A54();
    v38 = v15;
    v21 = v20;
    sub_1BC7ADC24(v17);
    v22 = sub_1BC7A9A4C(v19, v21, &v40);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E63B0];
    *(v23 + 16) = xmmword_1BC8FC230;
    v25 = OUTLINED_FUNCTION_34_7(v23, v24);
    v27 = sub_1BC7A9A4C(v25, v26, &v40);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2050;
    v28 = sub_1BC7C0454(v14);

    *(v18 + 24) = v28;

    _os_log_impl(&dword_1BC7A3000, v11, v12, "Fetch request with id %{public}s took %{public}ss and returned %{public}ld result(s)", v18, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    (v39)(v38, v16);
  }

  else
  {
    v29 = v0[16];
    swift_bridgeObjectRelease_n();

    sub_1BC7ADC24(v17);
    (v9)(v15, v16);
  }

  v31 = v0[12];
  v30 = v0[13];
  v33 = v0[8];
  v32 = v0[9];
  v34 = v0[7];

  OUTLINED_FUNCTION_96();
  v36 = v0[16];

  return v35(v36);
}

unint64_t sub_1BC7C0EA4()
{
  result = qword_1EDC20FA0;
  if (!qword_1EDC20FA0)
  {
    sub_1BC8F7264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20FA0);
  }

  return result;
}

id FTStoredMessage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTStoredMessage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_1BC8F8064();
}

void sub_1BC7C0FF4()
{
  OUTLINED_FUNCTION_29_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v37 - v6;
  if ((MessageType.init(rawValue:)([v0 messageType]) & 0x10000) != 0)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v15 = sub_1BC8F7734();
    __swift_project_value_buffer(v15, qword_1EDC2B3A8);
    v16 = v0;
    v12 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v12, v17))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_1();
    v18 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_66_0(v18, 5.7779e-34);
    v19 = "Couldn't get messageType from storedMessage: %@";
    goto LABEL_20;
  }

  if ((MailboxType.init(rawValue:)([v0 mailboxType]) & 0x10000) != 0)
  {
    if (qword_1EDC20728 != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0_19();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B3A8);
    v21 = v0;
    v12 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v12, v17))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_1();
    v18 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_66_0(v18, 5.7779e-34);
    v19 = "Couldn't get mailboxType from storedMessage: %@";
LABEL_20:
    _os_log_impl(&dword_1BC7A3000, v12, v17, v19, v1, 0xCu);
    sub_1BC7C1744(v18, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    goto LABEL_21;
  }

  if ((TranscriptionStatus.init(rawValue:)([v0 transcriptionStatus]) & 0x10000) != 0)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v22 = sub_1BC8F7734();
    __swift_project_value_buffer(v22, qword_1EDC2B3A8);
    v23 = v0;
    v12 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v12, v17))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_1();
    v18 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_66_0(v18, 5.7779e-34);
    v19 = "Couldn't get transcription status from storedMessage: %@";
    goto LABEL_20;
  }

  v8 = [v0 dateDeleted];
  if (v8)
  {
    v9 = v8;
    sub_1BC8F71B4();

    v10 = sub_1BC8F71E4();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    sub_1BC7C1744(v7, &unk_1EBCF5D80, &qword_1BC8FEA60);
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v11 = sub_1BC8F7734();
    __swift_project_value_buffer(v11, qword_1EDC2B3A8);
    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F81E4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_22;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "StoredMessage can't be converted to Message because it's been deleted!", v14, 2u);
LABEL_21:
    OUTLINED_FUNCTION_6();
LABEL_22:

    goto LABEL_23;
  }

  v24 = sub_1BC8F71E4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
  sub_1BC7C1744(v7, &unk_1EBCF5D80, &qword_1BC8FEA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC903E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  v1 = 0;
  *(inited + 80) = swift_getKeyPath();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1BFB29A00](v1, inited);
    }

    else
    {
      if (v1 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v26 = *(inited + 8 * v1 + 32);
    }

    v38 = v0;
    type metadata accessor for FTStoredMessage();
    v27 = v0;
    swift_getAtAnyKeyPath();

    v28 = v37[3];
    sub_1BC7C1744(v37, &unk_1EBCF5E50, &qword_1BC8FE850);
    if (!v28)
    {
      break;
    }

    ++v1;

    if (v1 == 7)
    {
      swift_setDeallocating();
      sub_1BC7C1984();
      goto LABEL_23;
    }
  }

  swift_setDeallocating();
  sub_1BC7C1984();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v29 = sub_1BC8F7734();
  __swift_project_value_buffer(v29, qword_1EDC2B3A8);

  v30 = sub_1BC8F7714();
  v31 = sub_1BC8F81E4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_21_1();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v32 = 136446210;
    v38 = v26;
    sub_1BC8F8494();

    v34 = sub_1BC8F7C94();
    v36 = sub_1BC7A9A4C(v34, v35, v37);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1BC7A3000, v30, v31, "StoredMessage can't be converted to Message because %{public}s is nil", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

LABEL_23:
  OUTLINED_FUNCTION_24();
}

uint64_t TranscriptionStatus.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  v2 = 0;
  switch(a1)
  {
    case 0u:
      v1 = 0;
      v2 = 0;
      break;
    case 1u:
      return v1 | (v2 << 16);
    case 2u:
      v2 = 0;
      v1 = 2;
      break;
    case 3u:
      v2 = 0;
      v1 = 3;
      break;
    case 4u:
      v2 = 0;
      v1 = 4;
      break;
    default:
      v1 = 0;
      v2 = 1;
      break;
  }

  return v1 | (v2 << 16);
}

uint64_t sub_1BC7C1744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BC7C17D0@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_1BC7C1864(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_34(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BC8F7C24();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

uint64_t sub_1BC7C1984()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_150()
{
  v1 = *(v0 - 256);
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1BC8F8064();
}

uint64_t sub_1BC7C19F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1BC8F7C24();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC7C1A54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25[2] = a1;
  v25[3] = a2;
  v25[1] = a3;
  v4 = sub_1BC8F6ED4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC8F7014();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_4();
  sub_1BC7C1C54(v20);
  v25[4] = sub_1BC8F7204();
  v25[5] = v22;
  (*(v7 + 104))(v11, *MEMORY[0x1E6968F70], v4);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  (*(v7 + 8))(v11, v4);

  v23 = *(v15 + 8);
  v23(v20, v12);
  sub_1BC8F6F84();
  return (v23)(v3, v12);
}

void sub_1BC7C1C54(uint64_t a1@<X8>)
{
  v3 = sub_1BC8F7014();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_156();
  sub_1BC8F7204();
  v12 = sub_1BC7C1DF4(2);
  MEMORY[0x1BFB290C0](v12);

  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  sub_1BC8F6F74();
  v13 = *(v6 + 8);
  v13(v11, v3);
  sub_1BC8F6F74();

  v13(v1, v3);
  sub_1BC7C20D0(a1);
}

void OUTLINED_FUNCTION_136(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BC7C1DF4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BC8F7CF4();
    v1 = sub_1BC8F7D94();

    return v1;
  }

  return result;
}

uint64_t _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0()
{
  v1 = sub_1BC8F7014();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_156();
  sub_1BC7C1FDC();
  sub_1BC8F6F64();
  v8 = *(v4 + 8);
  v8(v0, v1);
  sub_1BC8F6F64();
  v9 = OUTLINED_FUNCTION_62_0();
  return (v8)(v9);
}

void sub_1BC7C1FDC()
{
  v0 = sub_1BC8F7BE4();
  v1 = CFCopyHomeDirectoryURLForUser();

  if (v1)
  {
    sub_1BC8F6FB4();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BC7C20D0(uint64_t a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1BC8F6F44();
  v39[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v39];

  v14 = v39[0];
  if (v13)
  {
    v15 = *MEMORY[0x1E69E9840];

    v16 = v14;
  }

  else
  {
    v17 = v39[0];
    v18 = sub_1BC8F6EA4();

    swift_willThrow();
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v19 = sub_1BC8F7734();
    __swift_project_value_buffer(v19, qword_1EDC2B3A8);
    (*(v5 + 16))(v10, a1, v2);
    v20 = v18;
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F81E4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39[0] = v38;
      *v23 = 136446466;
      sub_1BC7C47AC(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v25 = sub_1BC8F8A54();
      v27 = v26;
      v28 = *(v5 + 8);
      v29 = OUTLINED_FUNCTION_62_0();
      v30(v29);
      v31 = sub_1BC7A9A4C(v25, v27, v39);

      *(v23 + 4) = v31;
      *(v23 + 12) = 2114;
      v32 = v18;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v33;
      *v24 = v33;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "MessageStore: Failed to create directories to URL: %{public}s: %{public}@", v23, 0x16u);
      sub_1BC7E6180(v24, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v34 = *(v5 + 8);
      v35 = OUTLINED_FUNCTION_62_0();
      v36(v35);
    }

    v37 = *MEMORY[0x1E69E9840];
  }
}

void sub_1BC7C2474()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v6 = v5;
  v119 = *MEMORY[0x1E69E9840];
  v7 = sub_1BC8F7014();
  v8 = OUTLINED_FUNCTION_0(v7);
  v112 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v107 - v17;
  v19 = sub_1BC8F7264();
  v113 = OUTLINED_FUNCTION_0(v19);
  v114 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v107 - v25;
  v27 = [v6 recordUUID];
  if (v27)
  {
    v28 = v27;
    sub_1BC8F7244();

    if (sub_1BC7C2EFC())
    {
      (*(v114 + 8))(v26, v113);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_40_2();
    v42 = sub_1BC8F7BE4();
    v43 = [v6 valueForKey_];

    if (v43)
    {
      sub_1BC8F8474();
      swift_unknownObjectRelease();
    }

    else
    {
      v116 = 0u;
      v117 = 0u;
    }

    v118[0] = v116;
    v118[1] = v117;
    v44 = MEMORY[0x1E69E7CA0];
    if (*(&v117 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5570, &qword_1BC900630);
      if (swift_dynamicCast())
      {
        v111 = v115;
        v45 = [v115 fileURL];
        if (v45)
        {
          v46 = v45;
          v47 = v26;
          sub_1BC8F6FB4();

          v48 = [objc_opt_self() defaultManager];
          v49 = sub_1BC8F6F44();
          v50 = sub_1BC8F6F44();
          *&v118[0] = 0;
          v51 = [v48 copyItemAtURL:v49 toURL:v50 error:v118];

          if (v51)
          {
            v52 = *&v118[0];
            swift_unknownObjectRelease();
            v53 = *(v112 + 1);
            v54 = OUTLINED_FUNCTION_27_0();
            v55(v54);
            (*(v114 + 8))(v47, v113);
          }

          else
          {
            v84 = *&v118[0];
            OUTLINED_FUNCTION_16_3();
            v85 = sub_1BC8F6EA4();

            swift_willThrow();
            if (qword_1EDC20728 != -1)
            {
              OUTLINED_FUNCTION_1();
              swift_once();
            }

            v86 = sub_1BC8F7734();
            OUTLINED_FUNCTION_37_0(v86, qword_1EDC2B3A8);
            v87 = *(v112 + 2);
            v87(v2, v18, v7);
            v87(v14, v4, v7);
            v88 = v85;
            v89 = sub_1BC8F7714();
            v90 = sub_1BC8F81E4();

            if (os_log_type_enabled(v89, v90))
            {
              OUTLINED_FUNCTION_8_2();
              v91 = swift_slowAlloc();
              v108 = v85;
              v92 = v91;
              v109 = OUTLINED_FUNCTION_32_3();
              OUTLINED_FUNCTION_18();
              v110 = swift_slowAlloc();
              *&v118[0] = v110;
              *v92 = 136446722;
              sub_1BC8F6F24();
              v107 = v89;
              OUTLINED_FUNCTION_24_4();
              v93 = v2;
              v94 = *(v112 + 1);
              v94(v93, v7);
              OUTLINED_FUNCTION_21_5();
              OUTLINED_FUNCTION_16_3();

              *(v92 + 4) = v89;
              *(v92 + 12) = 2082;
              sub_1BC8F6F24();
              OUTLINED_FUNCTION_24_4();
              v95 = OUTLINED_FUNCTION_47_2();
              (v94)(v95);
              v96 = v94;
              OUTLINED_FUNCTION_21_5();
              OUTLINED_FUNCTION_16_3();

              *(v92 + 14) = v89;
              *(v92 + 22) = 2114;
              v97 = v108;
              v98 = v108;
              v99 = _swift_stdlib_bridgeErrorToNSError();
              *(v92 + 24) = v99;
              v100 = v109;
              *v109 = v99;
              v101 = v107;
              _os_log_impl(&dword_1BC7A3000, v107, v90, "Error copying future from: %{public}s\nto: %{public}s: %{public}@", v92, 0x20u);
              sub_1BC7F1790(v100, &unk_1EBCF5DB0, &unk_1BC900410);
              OUTLINED_FUNCTION_6_0();
              MEMORY[0x1BFB2AA50]();
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6_0();
              MEMORY[0x1BFB2AA50]();
              OUTLINED_FUNCTION_6_0();
              MEMORY[0x1BFB2AA50]();
              swift_unknownObjectRelease();

              v102 = OUTLINED_FUNCTION_27_0();
              v96(v102);
            }

            else
            {
              swift_unknownObjectRelease();

              v104 = *(v112 + 1);
              v105 = OUTLINED_FUNCTION_47_2();
              v104(v105);
              (v104)(v2, v7);
              v106 = OUTLINED_FUNCTION_27_0();
              v104(v106);
            }

            (*(v114 + 8))(v47, v113);
          }
        }

        else
        {
          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v73 = sub_1BC8F7734();
          OUTLINED_FUNCTION_37_0(v73, qword_1EDC2B3A8);
          v74 = v113;
          v75 = v114;
          (*(v114 + 16))(v1, v26, v113);
          v76 = v26;
          v77 = sub_1BC8F7714();
          v78 = sub_1BC8F81E4();
          if (os_log_type_enabled(v77, v78))
          {
            OUTLINED_FUNCTION_9();
            v79 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v80 = swift_slowAlloc();
            *&v118[0] = v80;
            *v79 = 136446210;
            OUTLINED_FUNCTION_3_9();
            sub_1BC7C46D8(v81, v82);
            v112 = v76;
            sub_1BC8F8A54();
            OUTLINED_FUNCTION_24_4();
            v83 = *(v75 + 8);
            v83(v1, v74);
            OUTLINED_FUNCTION_21_5();
            OUTLINED_FUNCTION_16_3();

            *(v79 + 4) = v44;
            _os_log_impl(&dword_1BC7A3000, v77, v78, "MessageStore: Unable to get file URL for message with recordUUID %{public}s from NSFileBackedFuture! Check for a CoreData issue.", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v80);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            swift_unknownObjectRelease();

            v83(v112, v74);
          }

          else
          {
            swift_unknownObjectRelease();

            v103 = *(v75 + 8);
            v103(v1, v74);
            v103(v76, v74);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_1BC7F1790(v118, &unk_1EBCF5E50, &qword_1BC8FE850);
    }

    v56 = v113;
    v57 = v114;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v58 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v58, qword_1EDC2B3A8);
    v59 = *(v57 + 16);
    v60 = OUTLINED_FUNCTION_50_0();
    v61(v60);
    v62 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_30_3();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_11_2();
      v64 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      *&v118[0] = swift_slowAlloc();
      *v64 = 136446466;
      v65 = OUTLINED_FUNCTION_40_2();
      *(v64 + 4) = sub_1BC7A9A4C(v65, 0xEB00000000656C69, v66);
      *(v64 + 12) = 2082;
      OUTLINED_FUNCTION_3_9();
      sub_1BC7C46D8(v67, v68);
      sub_1BC8F8A54();
      OUTLINED_FUNCTION_24_4();
      v112 = v26;
      v69 = *(v57 + 8);
      v69(v0, v56);
      OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_16_3();

      *(v64 + 14) = v44;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v70 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v70);

      v69(v112, v56);
    }

    else
    {

      v71 = *(v57 + 8);
      v71(v0, v56);
      v71(v26, v56);
    }
  }

  else
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v29 = sub_1BC8F7734();
    __swift_project_value_buffer(v29, qword_1EDC2B3A8);
    v30 = v6;
    v31 = sub_1BC8F7714();
    v32 = sub_1BC8F81E4();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_9();
      v33 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_32_3();
      *v33 = 138543362;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v36, v37, v38, v39, v40, v41);
      sub_1BC7F1790(v34, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }
  }

LABEL_23:
  v72 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7C2EFC()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1BC8F6FD4();
  v1 = sub_1BC8F7BE4();
  v2 = [v0 fileExistsAtPath_];

  if (!v2)
  {

    goto LABEL_5;
  }

  v8 = 1;
  v3 = sub_1BC8F7BE4();

  v4 = [v0 fileExistsAtPath:v3 isDirectory:&v8];

  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v8 ^ 1;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

id SandboxExtendedURL.init(with:)()
{
  OUTLINED_FUNCTION_8_15(&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle]);
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SandboxExtendedURL();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1BC7C30A0(void *a1)
{
  v1 = [a1 transcriptData];
  if (v1)
  {
    v2 = v1;
    sub_1BC8F70D4();
  }

  return OUTLINED_FUNCTION_29();
}

void OUTLINED_FUNCTION_177(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
}

unint64_t OUTLINED_FUNCTION_178()
{

  return sub_1BC83C8E8();
}

void OUTLINED_FUNCTION_145()
{
  v2 = *(v0 - 432);
}

void sub_1BC7C31C8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7454();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = type metadata accessor for FaceTimeMessageStore_Summary();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_82();
  sub_1BC7C3588(v15, v16, v0, v17);
  OUTLINED_FUNCTION_82();
  v18 = sub_1BC8F7BE4();
  v19 = [v0 primitiveValueForKey_];

  if (v19)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v28[0] = v31;
  v28[1] = v32;
  if (!*(&v32 + 1))
  {
    sub_1BC7C1744(v28, &unk_1EBCF5E50, &qword_1BC8FE850);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    goto LABEL_9;
  }

  v20 = OUTLINED_FUNCTION_82();
  sub_1BC7C3588(v20, v21, v0, v22);
  v31 = v30;
  v29 = 0;
  OUTLINED_FUNCTION_15_10();
  sub_1BC7EC5DC(v30, *(&v30 + 1));
  sub_1BC8F7444();
  sub_1BC8556EC(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary);
  sub_1BC8F7554();
  sub_1BC7D4C94(v30, *(&v30 + 1));
  v23 = OUTLINED_FUNCTION_79();
  sub_1BC85564C(v23, v24);
  v25 = *v13;
  v27 = *(v13 + 1);
  v26 = *(v13 + 2);

  sub_1BC83ED08(v13);
  *v2 = v25;
  v2[1] = v27;
  v2[2] = v26;
LABEL_9:
  OUTLINED_FUNCTION_24();
}

void sub_1BC7C3588(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1BC8F7BE4();

  [a3 *a4];
}

uint64_t type metadata accessor for FaceTimeMessageStore_Summary()
{
  result = qword_1EDC1F638;
  if (!qword_1EDC1F638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_109_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_109_1()
{
  v5 = *(v2 + v3);
  *(v5 + 16) = v1 + 1;
  v6 = v5 + 16 * v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v0;
  *(v2 + v3) = v5;
}

uint64_t sub_1BC7C3684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return v4;
}

uint64_t sub_1BC7C36DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v134 = v6;
  OUTLINED_FUNCTION_19_6();
  v7 = sub_1BC8F71E4();
  v137 = OUTLINED_FUNCTION_0(v7);
  v138 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_31();
  v135 = v11;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_47();
  v136 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v139 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47();
  v140 = v20;
  OUTLINED_FUNCTION_19_6();
  v21 = sub_1BC8F7014();
  v22 = OUTLINED_FUNCTION_0(v21);
  v142 = v23;
  v143 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_4();
  v141 = v26;
  OUTLINED_FUNCTION_19_6();
  v27 = sub_1BC8F7264();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31();
  v144 = v33;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_4();
  v145 = v35;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v134 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E60, &qword_1BC9043B8);
  OUTLINED_FUNCTION_0(v39);
  v147 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v134 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7C4684();
  OUTLINED_FUNCTION_217();
  sub_1BC8F8CA4();
  v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  v48 = v150;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v181 = v30;
  v49 = v48 + v47;
  v50 = *(v30 + 16);
  v50(v38, v49, v27);
  v180 = 0;
  OUTLINED_FUNCTION_23_7();
  v53 = sub_1BC7C4720(v51, v52);
  v148 = v39;
  v149 = v45;
  OUTLINED_FUNCTION_66_1();
  v54 = v146;
  sub_1BC8F89F4();
  if (v54)
  {
    v55 = *(v181 + 8);
    v56 = OUTLINED_FUNCTION_187();
    v57(v56);
LABEL_3:
    v58 = OUTLINED_FUNCTION_43_7();
    return v65(v58, v64);
  }

  v59 = *(v181 + 8);
  v60 = OUTLINED_FUNCTION_187();
  v181 = v61;
  v59(v60);
  v62 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
  v63 = v150;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v50(v145, v63 + v62, v27);
  v179 = 1;
  OUTLINED_FUNCTION_66_1();
  sub_1BC8F89F4();
  (v59)(v145, v27);
  v146 = 0;
  v67 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  v68 = v150;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v69 = v68 + v67;
  v70 = v144;
  v50(v144, v69, v27);
  v178 = 2;
  OUTLINED_FUNCTION_66_1();
  v71 = v146;
  sub_1BC8F89F4();
  v72 = v147;
  if (v71)
  {
    (v59)(v70, v27);
    return (*(v72 + 8))(v149, v148);
  }

  else
  {
    v145 = v53;
    (v59)(v70, v27);
    v73 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v75 = v141;
    v74 = v142;
    v76 = v53 + v73;
    v77 = v143;
    (*(v142 + 16))(v141, v76, v143);
    v177 = 3;
    OUTLINED_FUNCTION_1_20();
    sub_1BC7C4720(v78, v79);
    OUTLINED_FUNCTION_192();
    sub_1BC8F89F4();
    v181 = v27;
    (*(v74 + 8))(v75, v77);
    v80 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
    v81 = v150;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v82 = v140;
    sub_1BC7C4DAC(v81 + v80, v140, &qword_1EBCF5A20, &qword_1BC901BF0);
    v176 = 4;
    OUTLINED_FUNCTION_192();
    sub_1BC8F8974();
    sub_1BC7C1744(v82, &qword_1EBCF5A20, &qword_1BC901BF0);
    v83 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
    v84 = v150;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v175 = *(v84 + v83);
    v174 = 5;
    sub_1BC7BED0C();
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89F4();
    v85 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
    v86 = v150;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v87 = v139;
    sub_1BC7C4DAC(v86 + v85, v139, &qword_1EBCF5A20, &qword_1BC901BF0);
    v174 = 6;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F8974();
    sub_1BC7C1744(v87, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_133_0(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v88 = MEMORY[0];
    v173 = 7;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F89A4();
    if (v88)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_133_0(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v89 = MEMORY[0];
    v90 = MEMORY[8];
    v172 = 8;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F89A4();
    if (v89)
    {
      goto LABEL_8;
    }

    v146 = 0;
    v93 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v95 = v137;
    v94 = v138;
    v96 = *(v138 + 16);
    v97 = v90 + v93;
    v98 = v136;
    v96(v136, v97, v137);
    v171 = 9;
    OUTLINED_FUNCTION_75_1();
    sub_1BC7C4720(v99, v100);
    v101 = v146;
    sub_1BC8F89F4();
    if (v101)
    {
      (*(v94 + 8))(v98, v95);
      goto LABEL_3;
    }

    v102 = *(v94 + 8);
    v138 = v94 + 8;
    v146 = v102;
    v102(v98, v95);
    v103 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v96(v135, v98 + v103, v95);
    v170 = 10;
    sub_1BC8F89F4();
    v146(v135, v137);
    v104 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v105 = *v104;
    v169 = 11;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89B4();
    v106 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v107 = *v106;
    v168 = 12;
    sub_1BC8F89C4();
    v108 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v167 = *v108;
    v166 = 13;
    sub_1BC7B5C78();
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89F4();
    v109 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v110 = *v109;
    v166 = 14;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89B4();
    OUTLINED_FUNCTION_133_0(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v111 = *v109;
    v112 = v109[1];
    v165 = 15;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F8944();
    if (v111)
    {
      goto LABEL_8;
    }

    v113 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v164 = *(v112 + v113);
    v163 = 16;
    sub_1BC7C4F00();
    sub_1BC8F89F4();
    v114 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v115 = *v114;
    v163 = 17;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89B4();
    OUTLINED_FUNCTION_133_0(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v116 = *v114;
    v117 = v114[1];
    v162 = 18;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F8944();
    if (v116)
    {
LABEL_8:
      v91 = OUTLINED_FUNCTION_43_7();
      v92(v91);
    }

    else
    {

      v118 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v161 = *(v117 + v118);
      v160 = 19;
      sub_1BC7C4FF8();
      v119 = v149;
      sub_1BC8F89F4();
      OUTLINED_FUNCTION_133_0(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
      OUTLINED_FUNCTION_19_14();
      swift_beginAccess();
      v120 = *v119;
      v121 = *(v119 + 4);
      v160 = 20;
      LOBYTE(v158) = v121;
      OUTLINED_FUNCTION_110_0();
      sub_1BC8F8984();
      OUTLINED_FUNCTION_133_0(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary);
      OUTLINED_FUNCTION_19_14();
      swift_beginAccess();
      v122 = *(v119 + 2);
      v158 = *v119;
      v159 = v122;
      LOBYTE(v155) = 21;
      sub_1BC7C518C();

      sub_1BC8F8974();

      v123 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
      OUTLINED_FUNCTION_111_0();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      sub_1BC7C4DAC(v123, v134, &unk_1EBCF5D70, &qword_1BC8FC740);
      LOBYTE(v155) = 22;
      sub_1BC8F8974();
      sub_1BC7C1744(v134, &unk_1EBCF5D70, &qword_1BC8FC740);
      v155 = OUTLINED_FUNCTION_203((v150 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript));
      v156 = v124;
      v157 = v125;
      LOBYTE(v154) = 23;
      sub_1BC7C52A8(v155);
      sub_1BC7C5254();
      OUTLINED_FUNCTION_110_0();
      sub_1BC8F8974();
      sub_1BC7C532C(v155);
      v126 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v154 = *v126;
      LOBYTE(v153) = 24;
      type metadata accessor for SandboxExtendedURL();
      OUTLINED_FUNCTION_74_2();
      sub_1BC7C4720(v127, v128);
      OUTLINED_FUNCTION_193();
      sub_1BC8F89F4();
      v129 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
      v130 = v150;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v153 = *(v130 + v129);
      LOBYTE(v152) = 25;
      OUTLINED_FUNCTION_193();
      sub_1BC8F8974();
      v131 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
      OUTLINED_FUNCTION_111_0();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v152 = *v131;
      v151 = 26;
      v132 = v148;
      v133 = v149;
      sub_1BC8F8974();
      return (*(v147 + 8))(v133, v132);
    }
  }
}

unint64_t sub_1BC7C4684()
{
  result = qword_1EDC20E28;
  if (!qword_1EDC20E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20E28);
  }

  return result;
}

uint64_t sub_1BC7C46D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC7C4720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC7C4768(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BC8F7014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC7C47AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_135(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 72);
}

_BYTE *storeEnumTagSinglePayload for Message.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
        JUMPOUT(0x1BC7C48ECLL);
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BC7C49A4(char a1)
{
  result = 0x555564726F636572;
  switch(a1)
  {
    case 1:
      return 0x444955556C6C6163;
    case 2:
      return 0x61737265766E6F63;
    case 3:
      return 0x466567617373656DLL;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x546567617373656DLL;
    case 6:
      return 0x7263736E6172745FLL;
    case 7:
      return 1836020326;
    case 8:
      v4 = 0x6469766F7270;
      goto LABEL_26;
    case 9:
      return 0x6165724365746164;
    case 10:
      return 0x69646F4D65746164;
    case 11:
      return 0x646165527369;
    case 12:
      return 0x6E6F697461727564;
    case 13:
      return 0x54786F626C69616DLL;
    case 14:
      return 0x7469736E65537369;
    case 15:
      return 0x6E65697069636572;
    case 16:
      return 0xD000000000000013;
    case 17:
      return 0x5454527369;
    case 18:
      return 0x44496D6973;
    case 19:
      v3 = 0x74696C617571;
      goto LABEL_28;
    case 20:
      return 0x69616D6563696F76;
    case 21:
      v3 = 0x72616D6D7573;
LABEL_28:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 22:
      v4 = 0x646E696D6572;
LABEL_26:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 23:
      result = 0x6E61725477656E5FLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_196_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + ((v2 << 9) | (8 * a1)));
}

uint64_t OUTLINED_FUNCTION_191_0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = 1;
  v5 = v2[15];
  v4 = v2[16];
  v6 = v2[12];
}

uint64_t sub_1BC7C4DAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_149@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_149_0()
{
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
}

void OUTLINED_FUNCTION_75_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_75_2()
{
  v2 = *v0;
  result = *(v1 - 136);
  v4 = *(v1 - 96);
  return result;
}

unint64_t sub_1BC7C4F00()
{
  result = qword_1EDC208D0;
  if (!qword_1EDC208D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208D0);
  }

  return result;
}

unint64_t sub_1BC7C4FA4()
{
  result = qword_1EDC208C8;
  if (!qword_1EDC208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208C8);
  }

  return result;
}

unint64_t sub_1BC7C4FF8()
{
  result = qword_1EDC20520;
  if (!qword_1EDC20520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20520);
  }

  return result;
}

unint64_t sub_1BC7C509C()
{
  result = qword_1EDC20DC8;
  if (!qword_1EDC20DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20DC8);
  }

  return result;
}

uint64_t sub_1BC7C50F0@<X0>(uint64_t *a1@<X8>)
{
  result = MessageQuality.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MessageQuality.description.getter()
{
  result = 7827308;
  switch(*v0)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 7823730;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BC7C518C()
{
  result = qword_1EDC1FF98;
  if (!qword_1EDC1FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF98);
  }

  return result;
}

uint64_t sub_1BC7C51E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_193_0()
{

  return sub_1BC8F8734();
}

unint64_t sub_1BC7C5254()
{
  result = qword_1EDC1F270;
  if (!qword_1EDC1F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F270);
  }

  return result;
}

uint64_t sub_1BC7C52A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC7C52EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC7C532C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
}

id OUTLINED_FUNCTION_74_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, uint64_t a2)
{

  return sub_1BC8EEA08(a1, a2, v2, v3);
}

void sub_1BC7C5414()
{
  OUTLINED_FUNCTION_22();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A40, &qword_1BC902DD0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BC7C56A4();
  sub_1BC8F8CA4();
  v25 = v2;
  v14 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url);
  v15 = [v14 absoluteString];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BC8F7C24();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v26 = v17;
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A48, &qword_1BC902DD8);
  sub_1BC7C56F8();
  OUTLINED_FUNCTION_7_8();

  if (!v1)
  {
    if (qword_1EDC1EF08 != -1)
    {
      OUTLINED_FUNCTION_3_16();
      swift_once();
    }

    [qword_1EDC1EF10 UTF8String];
    [v14 fileSystemRepresentation];
    v20 = sandbox_extension_issue_file();
    if (v20)
    {
      v21 = v20;
      v26 = sub_1BC8F7BD4();
      v27 = v22;
      OUTLINED_FUNCTION_7_8();

      free(v21);
    }

    if (*(v25 + OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle + 8) != 1)
    {
      v23 = *(v25 + OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle);
      LOBYTE(v26) = 2;
      sub_1BC8F8A04();
    }
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7C56A4()
{
  result = qword_1EDC208F0;
  if (!qword_1EDC208F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208F0);
  }

  return result;
}

unint64_t sub_1BC7C56F8()
{
  result = qword_1EDC1FF80;
  if (!qword_1EDC1FF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5A48, &qword_1BC902DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SandboxExtendedURL.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BC7C5840);
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

uint64_t getEnumTagSinglePayload for MessageStoreBadgeCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BC7C58F8(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0x656C646E6168;
}

uint64_t OUTLINED_FUNCTION_124_0()
{
  result = v0[16];
  v2 = v0[14];
  v3 = *(v0[15] + 8);
  return result;
}

id SandboxExtendedURL.__deallocating_deinit()
{
  if ((v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle + 8] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle];
    sandbox_extension_release();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SandboxExtendedURL();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BC7C5C44@<X0>(char **a1@<X8>)
{
  result = Message.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

char *Message.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v9);
  v157 = sub_1BC8F71E4();
  v10 = OUTLINED_FUNCTION_0(v157);
  v156 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v21);
  v22 = sub_1BC8F7014();
  v23 = OUTLINED_FUNCTION_0(v22);
  v144 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v27);
  v28 = sub_1BC8F7264();
  v29 = OUTLINED_FUNCTION_0(v28);
  v160 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_153();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v35);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E70, &unk_1BC9043C0);
  OUTLINED_FUNCTION_0(v146);
  v143 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v140 - v40;
  v42 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail);
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v22);
  v45 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript);
  v145 = v22;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v22);
  v48 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
  *v48 = 0;
  v48[1] = 0;
  v154 = v48;
  v49 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  *v49 = 0;
  v49[1] = 0;
  v152 = v49;
  v50 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
  *v50 = 0;
  *(v50 + 4) = 1;
  OUTLINED_FUNCTION_177((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary));
  v150 = v51;
  v52 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID);
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v28);
  OUTLINED_FUNCTION_177((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript));
  v149 = v55;
  v153 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile) = 0;
  v155 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  v161 = v1;
  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile) = 0;
  v57 = v4[3];
  v56 = v4[4];
  v148 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v57);
  sub_1BC7C4684();
  v147 = v41;
  v58 = v158;
  sub_1BC8F8C84();
  v162 = v28;
  if (v58)
  {
    v158 = v58;
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_116();
    v62 = OUTLINED_FUNCTION_195();
    __swift_destroy_boxed_opaque_existential_1(v62);
    v63 = OUTLINED_FUNCTION_42_10(&v180);
    sub_1BC7C1744(v63, v64, &qword_1BC901BF0);
    v65 = OUTLINED_FUNCTION_42_10(&v179);
    sub_1BC7C1744(v65, v66, &qword_1BC901BF0);
    if (v147)
    {
      OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
    }

    if (v146)
    {
      OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);

      if (!v28)
      {
LABEL_8:
        if (!v41)
        {
LABEL_10:
          OUTLINED_FUNCTION_58_4();
          v71 = *(v70 + 8);

          OUTLINED_FUNCTION_134_0(v174);

          v72 = *(v150 + 16);

          v73 = OUTLINED_FUNCTION_88_1(v173);
          sub_1BC7C1744(v73, v74, v75);
          v76 = OUTLINED_FUNCTION_203(v149);
          sub_1BC7C532C(v76);
          OUTLINED_FUNCTION_135_0(v175);

          OUTLINED_FUNCTION_135_0(&v177);
          type metadata accessor for Message();
          OUTLINED_FUNCTION_99_0();
          v80 = *((*MEMORY[0x1E69E7D40] & v79) + 0x30);
          v81 = *((*MEMORY[0x1E69E7D40] & v79) + 0x34);
          swift_deallocPartialClassInstance();
          return v0;
        }

LABEL_9:
        v67 = *(v156 + 8);
        v68 = OUTLINED_FUNCTION_149(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified);
        v69(v68);
        goto LABEL_10;
      }
    }

    else if (!v28)
    {
      goto LABEL_8;
    }

    v83 = *(v156 + 8);
    v84 = OUTLINED_FUNCTION_149(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated);
    v85(v84);
    if (!v41)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v158 = v2;
  v140[0] = v50;
  LOBYTE(v172) = 0;
  OUTLINED_FUNCTION_23_7();
  v61 = sub_1BC7C4720(v59, v60);
  OUTLINED_FUNCTION_208(&v169);
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  v86 = *(v160 + 32);
  v87 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID);
  v86(v87, v2, v28);
  OUTLINED_FUNCTION_160(1);
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  v88 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID);
  v86(v88, v0, v28);
  OUTLINED_FUNCTION_160(2);
  OUTLINED_FUNCTION_215(&v178);
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  v142 = v61;
  v89 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID);
  v86(v89, 0, v28);
  LOBYTE(v172) = 3;
  OUTLINED_FUNCTION_1_20();
  sub_1BC7C4720(v90, v91);
  OUTLINED_FUNCTION_204(&v168);
  v92 = v145;
  OUTLINED_FUNCTION_32_8();
  sub_1BC8F88F4();
  (*(v144 + 32))(v161 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile, v28, v92);
  OUTLINED_FUNCTION_160(4);
  OUTLINED_FUNCTION_204(v167);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_8();
  sub_1BC8F8864();
  v93 = v159;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(v28, &v0[v93], &qword_1EBCF5A20, &qword_1BC901BF0);
  swift_endAccess();
  LOBYTE(v171) = 5;
  sub_1BC7C70CC();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType] = v172;
  OUTLINED_FUNCTION_160(6);
  OUTLINED_FUNCTION_204(v166);
  OUTLINED_FUNCTION_32_8();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_122_0(&v179);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(v28, &v0[v93], &qword_1EBCF5A20, &qword_1BC901BF0);
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(7);
  v94 = sub_1BC8F88A4();
  OUTLINED_FUNCTION_109_0(v94, v95, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_130_0(8);
  sub_1BC8F88A4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_109_0(v96, v97, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  LOBYTE(v172) = 9;
  OUTLINED_FUNCTION_75_1();
  v100 = sub_1BC7C4720(v98, v99);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  v101 = v156 + 32;
  v102 = *(v156 + 32);
  v103 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated);
  v104 = v157;
  v102(v103, v140[3], v157);
  OUTLINED_FUNCTION_160(10);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  v105 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified);
  v102(v105, v140[2], v157);
  OUTLINED_FUNCTION_130_0(11);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88B4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_92_1(v106, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead);
  OUTLINED_FUNCTION_130_0(12);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88C4();
  OUTLINED_FUNCTION_55_2();
  *(v161 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration) = v107;
  LOBYTE(v171) = 13;
  sub_1BC7C7198();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v110 + v109) = v108;
  OUTLINED_FUNCTION_130_0(14);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88B4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_92_1(v111, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive);
  OUTLINED_FUNCTION_130_0(15);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F8834();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_20_9(&v176);
  swift_beginAccess();
  v112 = *(v101 + 8);
  *v101 = v104;
  *(v101 + 8) = v100;

  v170 = 16;
  sub_1BC7C7244();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v115 + v114) = v113;
  LOBYTE(v171) = 17;
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88B4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_92_1(v116, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT);
  LOBYTE(v171) = 18;
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F8834();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_20_9(v174);
  swift_beginAccess();
  v117 = *(v101 + 8);
  *v101 = v104;
  *(v101 + 8) = v100;

  LOBYTE(v168) = 19;
  sub_1BC7C732C();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v120 + v119) = v118;
  v170 = 20;
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F8874();
  OUTLINED_FUNCTION_55_2();
  v122 = v121;
  OUTLINED_FUNCTION_20_9(&v164);
  swift_beginAccess();
  *v101 = v122;
  *(v101 + 4) = BYTE4(v122) & 1;
  v165 = 21;
  sub_1BC7C75C4();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  v141 = v168;
  v123 = v169;
  OUTLINED_FUNCTION_20_9(&v172);
  swift_beginAccess();
  v124 = *(v101 + 16);
  *v101 = v141;
  *(v101 + 16) = v123;

  LOBYTE(v168) = 22;
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  v125 = v151;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(v140[1], &v0[v125], &unk_1EBCF5D70, &qword_1BC8FC740);
  swift_endAccess();
  LOBYTE(v164) = 23;
  sub_1BC7C76BC();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  v126 = OUTLINED_FUNCTION_150();
  *v127 = v168;
  *(v127 + 16) = v128;
  sub_1BC7C532C(v126);
  type metadata accessor for SandboxExtendedURL();
  LOBYTE(v164) = 24;
  OUTLINED_FUNCTION_74_2();
  sub_1BC7C4720(v129, v130);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v133 + v132) = v131;
  LOBYTE(v168) = 25;
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_207();

  LOBYTE(v164) = 26;
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_207();

  v136 = type metadata accessor for Message();
  v163.receiver = v0;
  v163.super_class = v136;
  v0 = objc_msgSendSuper2(&v163, sel_init);
  v137 = OUTLINED_FUNCTION_2_19();
  v138(v137);
  v139 = OUTLINED_FUNCTION_195();
  __swift_destroy_boxed_opaque_existential_1(v139);
  return v0;
}

void OUTLINED_FUNCTION_51()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_1BC8F8734();
}

_OWORD *OUTLINED_FUNCTION_51_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1BC7F0E58((a1 + 32 * v1), (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v2 = *(v0 + 72);
  v3 = *(*(v0 + 64) + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_51_5@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_6()
{
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1)
{

  return sub_1BC862F74(a1, v1, v2);
}

unint64_t sub_1BC7C6FB4()
{
  result = qword_1EDC20E18;
  if (!qword_1EDC20E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20E18);
  }

  return result;
}

unint64_t sub_1BC7C700C()
{
  result = qword_1EDC20E20;
  if (!qword_1EDC20E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20E20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 168);
  v5 = *(v3 + v2);
  *(v3 + v2) = 0;
}

unint64_t sub_1BC7C70CC()
{
  result = qword_1EDC20DD0;
  if (!qword_1EDC20DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20DD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_188(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

void OUTLINED_FUNCTION_174()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 1024;
  *(v0 + 14) = v2;
}

unint64_t sub_1BC7C7198()
{
  result = qword_1EDC20A30;
  if (!qword_1EDC20A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20A30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_110_1()
{
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
}

uint64_t OUTLINED_FUNCTION_114_0()
{
  v2 = *(v0 + 40);

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_114_1()
{

  return SandboxExtendedURL.init(with:)();
}

unint64_t sub_1BC7C7244()
{
  result = qword_1EDC208C0;
  if (!qword_1EDC208C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208C0);
  }

  return result;
}

uint64_t sub_1BC7C72F8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = TranscriptionStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_1BC7C732C()
{
  result = qword_1EDC20518;
  if (!qword_1EDC20518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20518);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageQuality(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1BC7C744CLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageQuality(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

FaceTimeMessageStore::MessageQuality_optional __swiftcall MessageQuality.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC8F8804();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BC7C75C4()
{
  result = qword_1EDC206E0;
  if (!qword_1EDC206E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206E0);
  }

  return result;
}

uint64_t sub_1BC7C7618(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_104_1(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v1;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;

  return swift_retain_n();
}

unint64_t sub_1BC7C76BC()
{
  result = qword_1EDC20408;
  if (!qword_1EDC20408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20408);
  }

  return result;
}

uint64_t sub_1BC7C7710(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void OUTLINED_FUNCTION_138()
{
}

void sub_1BC7C7780(void *a1@<X8>)
{
  SandboxExtendedURL.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SandboxExtendedURL.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v48 = v1;
  v4 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0) - 8) + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v44 - v7;
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v46 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_13();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5A28, &qword_1BC902DC8);
  OUTLINED_FUNCTION_0(v14);
  v47 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle];
  *v19 = 0;
  v19[8] = 1;
  v49 = v0;
  v50 = OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken;
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  v20 = v4[3];
  v21 = v4[4];
  v51 = v4;
  v22 = v4;
  v24 = v44 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v20);
  sub_1BC7C56A4();
  v25 = v48;
  sub_1BC8F8C84();
  if (v25)
  {
    v28 = v49;
LABEL_4:
    v29 = v50;
    __swift_destroy_boxed_opaque_existential_1(v51);

    type metadata accessor for SandboxExtendedURL();
    OUTLINED_FUNCTION_14_9();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v45 = v19;
  v48 = v2;
  v26 = v47;
  sub_1BC8F88A4();
  v27 = v14;
  sub_1BC8F6FE4();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  v28 = v49;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC7F1790(v8, &qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC83201C();
    swift_allocError();
    swift_willThrow();
    (*(v26 + 8))(v24, v14);
    goto LABEL_4;
  }

  (*(v46 + 32))(v48, v8, v9);
  v44[1] = v9;
  v31 = sub_1BC8F6F44();
  v44[2] = OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url;
  *&v28[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = v31;
  sub_1BC8F8834();
  v32 = v50;
  v33 = v24;
  if (v34)
  {
    v35 = sub_1BC8F7BE4();
  }

  else
  {
    v35 = 0;
  }

  v36 = v45;
  v37 = *&v28[v32];
  *&v28[v32] = v35;

  v38 = sub_1BC8F8884();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_12_10();
  v42(v41);
  (*(v47 + 8))(v33, v27);
  *v36 = v38;
  v36[8] = v40 & 1;
  v43 = type metadata accessor for SandboxExtendedURL();
  v52.receiver = v28;
  v52.super_class = v43;
  objc_msgSendSuper2(&v52, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_5:
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7C7C68()
{
  result = qword_1EDC208E0;
  if (!qword_1EDC208E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208E0);
  }

  return result;
}

unint64_t sub_1BC7C7CC0()
{
  result = qword_1EDC208E8;
  if (!qword_1EDC208E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_204_0()
{
  v2 = *(v0 + 16);

  return sub_1BC8F7FC4();
}

uint64_t sub_1BC7C7D54(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_31_3();
}

uint64_t OUTLINED_FUNCTION_206()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_206_0()
{
}

id sub_1BC7C7E54()
{
  v1 = v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *v1;
    v4 = objc_opt_self();

    OUTLINED_FUNCTION_31_3();
    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_10_2();

    v2 = [v4 normalizedHandleWithDestinationID_];
  }

  return v2;
}

uint64_t sub_1BC7C7F30@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v7 = a2(0);
  OUTLINED_FUNCTION_4_1(v7);
  return (*(v8 + 16))(a3, v3 + v6);
}

uint64_t sub_1BC7C8024()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
}

uint64_t OUTLINED_FUNCTION_71_5()
{
  v3 = *(*(v1 - 240) + 48) + 40 * v0;

  return sub_1BC8037DC(v3);
}

uint64_t sub_1BC7C818C()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

uint64_t sub_1BC7C8278()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

uint64_t sub_1BC7C82AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  return sub_1BC7C4DAC(v4 + v8, a4, a2, a3);
}

id sub_1BC7C83A8()
{
  v1 = objc_opt_self();
  v2 = v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);

  OUTLINED_FUNCTION_41_1();
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_182();
  v5 = [v1 normalizedHandleWithDestinationID_];

  return v5;
}

uint64_t sub_1BC7C84C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

double sub_1BC7C8554()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.getTranscriptString()()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_153();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_5();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (v124 - v18);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_156();
  sub_1BC865C3C();
  if (v133)
  {
    v1 = &v133;
    Transcript.text.getter();
    OUTLINED_FUNCTION_119_0();
    v20 = OUTLINED_FUNCTION_187();
    sub_1BC7C532C(v20);
  }

  else
  {
    v126 = v19;
    v127 = v3;
    v128 = v12;
    v130 = v2;
    v21 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    sub_1BC7C4DAC(&v21[v1], v4, &qword_1EBCF5A20, &qword_1BC901BF0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
    {
      sub_1BC7C1744(v4, &qword_1EBCF5A20, &qword_1BC901BF0);
      if (qword_1EDC20740 != -1)
      {
        OUTLINED_FUNCTION_10_18();
        swift_once();
      }

      v22 = sub_1BC8F7734();
      v1 = __swift_project_value_buffer(v22, qword_1EDC2B3D8);
      v23 = sub_1BC8F7714();
      sub_1BC8F81E4();
      v24 = OUTLINED_FUNCTION_63_3();
      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_45();
        v26 = swift_slowAlloc();
        OUTLINED_FUNCTION_202(v26);
        _os_log_impl(&dword_1BC7A3000, v23, v1, "Message has no transcript", v21, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      sub_1BC7C90F0();
      OUTLINED_FUNCTION_225();
      *v27 = 0;
      swift_willThrow();
    }

    else
    {
      v12 = v128;
      v28 = v128[4];
      v29 = v130;
      v129 = v9;
      v28(v130, v4, v9);
      v30 = v134;
      v31 = sub_1BC8F7054();
      p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
      if (v30)
      {
        v34 = v0;
        v35 = v30;
      }

      else
      {
        v36 = v31;
        v37 = v32;
        v38 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        LODWORD(v38) = *(v1 + v38);
        v1 = sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
        v34 = v0;
        if (v38 == 1)
        {
          sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
          OUTLINED_FUNCTION_220();
          v39 = sub_1BC8F8214();
          v67 = v39;
          v134 = v37;
          v68 = v129;
          v29 = v130;
          if (v39)
          {
            v69 = [v39 transcriptionString];
            sub_1BC8F7C24();
            OUTLINED_FUNCTION_119_0();

            sub_1BC7D4C94(v36, v134);
            v70 = v128[1];
            v71 = OUTLINED_FUNCTION_62_0();
            v72(v71);
            goto LABEL_21;
          }

          v127 = v34;
          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v77 = sub_1BC8F7734();
          __swift_project_value_buffer(v77, qword_1EDC2B3A8);
          v78 = v128;
          v79 = v128[2];
          v80 = v126;
          v81 = OUTLINED_FUNCTION_79();
          v82(v81);
          v83 = sub_1BC8F7714();
          v84 = sub_1BC8F81E4();
          if (os_log_type_enabled(v83, v84))
          {
            OUTLINED_FUNCTION_9();
            v85 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v125 = swift_slowAlloc();
            v132[0] = v125;
            *v85 = 136446210;
            OUTLINED_FUNCTION_1_20();
            sub_1BC7C4720(v86, v87);
            v124[3] = v84;
            sub_1BC8F8A54();
            OUTLINED_FUNCTION_38_3();
            OUTLINED_FUNCTION_170();
            v88 = OUTLINED_FUNCTION_143();
            v89(v88);
            v90 = OUTLINED_FUNCTION_19_5();
            sub_1BC7A9A4C(v90, v91, v92);
            OUTLINED_FUNCTION_28_2();

            *(v85 + 4) = v80;
            OUTLINED_FUNCTION_205();
            _os_log_impl(v93, v94, v95, v96, v97, v98);
            v68 = v125;
            __swift_destroy_boxed_opaque_existential_1(v125);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          else
          {

            OUTLINED_FUNCTION_170();
            v115 = OUTLINED_FUNCTION_143();
            v116(v115);
          }

          v12 = v78;
          v1 = v134;
          sub_1BC7C90F0();
          v117 = OUTLINED_FUNCTION_225();
          OUTLINED_FUNCTION_224(v117, v118);
          v119 = v36;
          v35 = v68;
          sub_1BC7D4C94(v119, v1);
          v34 = v127;
        }

        else
        {
          sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
          OUTLINED_FUNCTION_220();
          v40 = sub_1BC8F8224();
          v134 = v37;
          v73 = v129;
          v29 = v130;
          if (v40)
          {
            sub_1BC7DA1B0(v40, v132);
            v131[0] = v132[0];
            v131[1] = v132[1];
            v131[2] = v132[2];
            v1 = v131;
            Transcript.text.getter();
            OUTLINED_FUNCTION_119_0();
            sub_1BC7D4C94(v36, v134);
            v74 = v12[1];
            v75 = OUTLINED_FUNCTION_62_0();
            v76(v75);

            goto LABEL_21;
          }

          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v99 = sub_1BC8F7734();
          __swift_project_value_buffer(v99, qword_1EDC2B3A8);
          OUTLINED_FUNCTION_141();
          v101 = *(v100 + 16);
          v102 = v127;
          v103 = OUTLINED_FUNCTION_187();
          v104(v103);
          v105 = sub_1BC8F7714();
          v106 = sub_1BC8F81E4();
          if (os_log_type_enabled(v105, v106))
          {
            OUTLINED_FUNCTION_9();
            v107 = swift_slowAlloc();
            v125 = v107;
            OUTLINED_FUNCTION_8_2();
            v126 = swift_slowAlloc();
            v132[0] = v126;
            *v107 = 136446210;
            OUTLINED_FUNCTION_1_20();
            sub_1BC7C4720(v108, v109);
            v110 = v102;
            sub_1BC8F8A54();
            v111 = OUTLINED_FUNCTION_100();
            v113 = v112;
            (v128[1])(v111, v73);
            sub_1BC7A9A4C(v110, v113, v132);
            OUTLINED_FUNCTION_100();
            v12 = v128;

            v73 = v125;
            *(v125 + 4) = v110;
            _os_log_impl(&dword_1BC7A3000, v105, v106, "Failed to unarchive captions at URL %{public}s", v73, 0xCu);
            v1 = v126;
            __swift_destroy_boxed_opaque_existential_1(v126);
            v114 = OUTLINED_FUNCTION_27_7();
            MEMORY[0x1BFB2AA50](v114);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          else
          {

            (v12[1])(v102, v73);
          }

          sub_1BC7C90F0();
          v120 = OUTLINED_FUNCTION_225();
          OUTLINED_FUNCTION_224(v120, v121);
          v122 = v36;
          v35 = v73;
          sub_1BC7D4C94(v122, v134);
        }

        p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
      }

      v41 = v129;
      if (p_cache[229] != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v42 = sub_1BC8F7734();
      __swift_project_value_buffer(v42, qword_1EDC2B3A8);
      OUTLINED_FUNCTION_141();
      (*(v43 + 16))(v34, v29, v41);
      v44 = v35;
      v45 = sub_1BC8F7714();
      v46 = sub_1BC8F81E4();

      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_11_2();
        v47 = v35;
        v48 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_10();
        v128 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v134 = swift_slowAlloc();
        v132[0] = v134;
        *v48 = 136446466;
        OUTLINED_FUNCTION_1_20();
        sub_1BC7C4720(v49, v50);
        v51 = sub_1BC8F8A54();
        v52 = v34;
        v54 = v53;
        v56 = v12[1];
        ++v12;
        v55 = v56;
        v56(v52, v129);
        v57 = sub_1BC7A9A4C(v51, v54, v132);

        *(v48 + 4) = v57;
        *(v48 + 12) = 2114;
        v58 = v47;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 14) = v59;
        v60 = v128;
        *v128 = v59;
        _os_log_impl(&dword_1BC7A3000, v45, v46, "Could not find captions for voicemail at %{public}s with error %{public}@", v48, 0x16u);
        sub_1BC7C1744(v60, &unk_1EBCF5DB0, &unk_1BC900410);
        v61 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v61);
        v1 = v134;
        __swift_destroy_boxed_opaque_existential_1(v134);
        v62 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v62);
        v35 = v47;
        v41 = v129;
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        v63 = v12[1];
        ++v12;
        v55 = v63;
        v63(v34, v41);
      }

      sub_1BC7C90F0();
      OUTLINED_FUNCTION_225();
      *v64 = 1;
      swift_willThrow();

      v55(v130, v41);
    }
  }

LABEL_21:
  v65 = v1;
  v66 = v12;
  result._object = v66;
  result._countAndFlagsBits = v65;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xEB00000000657079;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];

  return sub_1BC7ADC24(v4);
}

void OUTLINED_FUNCTION_60_6()
{

  sub_1BC83DCE4();
}

unint64_t sub_1BC7C90F0()
{
  result = qword_1EDC20110;
  if (!qword_1EDC20110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20110);
  }

  return result;
}

void MessageStoreService.init()()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BC8F78C4();
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  v13 = OUTLINED_FUNCTION_42_3(v12, qword_1EDC2B3A8);
  sub_1BC8F8204();
  v14 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_49_1();
    _os_log_impl(v16, v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  *(swift_allocObject() + 16) = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A90, &unk_1BC9032A0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v52 = v5;
  v53 = v3;
  v1[2] = sub_1BC8F77E4();
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v25 = type metadata accessor for MediaAssetManager();
  memset(v63, 0, sizeof(v63));
  v64 = 0;
  v51 = [objc_allocWithZone(v25) init];
  sub_1BC7C98A4(v62);
  v26 = [objc_allocWithZone(MEMORY[0x1E6993580]) init];
  v27 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v28 = v26;
  v50 = [v27 init];
  if (qword_1EDC1E220 != -1)
  {
    swift_once();
  }

  v49 = qword_1EDC2B2F8;
  v48 = sub_1BC83779C();
  v29 = [objc_allocWithZone(MEMORY[0x1E699BE70]) init];
  v30 = type metadata accessor for ProtectedAppsProvider();
  v31 = [objc_allocWithZone(v30) init];
  v61[3] = &type metadata for UserSafety;
  v61[4] = &off_1F3B3D688;
  v60[3] = &type metadata for PhysicalWatchConfiguration;
  v60[4] = &off_1F3B3BA28;
  v59[3] = &type metadata for TCCAccessHelper;
  v59[4] = &off_1F3B39A08;
  v58[3] = v30;
  v58[4] = &off_1F3B3E9A0;
  v58[0] = v31;
  v32 = type metadata accessor for MessageStoreProviderDataSource();
  v33 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v61, &type metadata for UserSafety);
  __swift_mutable_project_boxed_opaque_existential_1(v60, &type metadata for PhysicalWatchConfiguration);
  __swift_mutable_project_boxed_opaque_existential_1(v59, &type metadata for TCCAccessHelper);
  __swift_mutable_project_boxed_opaque_existential_1(v58, v30);
  OUTLINED_FUNCTION_0_5();
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  v39 = (v38 - v37);
  (*(v40 + 16))(v38 - v37);
  v41 = sub_1BC838F9C(&v54, v51, v62, v28, v50, 0, v49, 0, v65, v63, 0, v48, v29, *v39, v33);

  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v1[6] = v32;
  v1[7] = &off_1F3B3B9B8;
  v1[3] = v41;
  swift_beginAccess();
  v42 = v1[6];
  v43 = v1[7];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 3), v42);
  v44 = *(v43 + 16);

  v44(v45, v42, v43);
  swift_endAccess();
  sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
  (*(v52 + 104))(v11, *MEMORY[0x1E69E7F98], v53);
  v46 = sub_1BC8F82B4();
  (*(v52 + 8))(v11, v53);
  v56 = sub_1BC83415C;
  v57 = 0;
  *&v54 = MEMORY[0x1E69E9820];
  *(&v54 + 1) = 1107296256;
  *&v55 = sub_1BC8342F0;
  *(&v55 + 1) = &block_descriptor_2;
  v47 = _Block_copy(&v54);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v46, v47);
  _Block_release(v47);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7C97A4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6268, &qword_1BC906840);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

id sub_1BC7C97F8()
{
  v0 = type metadata accessor for MediaAssetManager();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider];
  *v2 = sub_1BC80C2C0;
  v2[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1BC7C98A4@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8A40]) init];
  v4 = [v2 tu:v3 contactStoreConfigurationForCall:?];

  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  result = sub_1BC7D9730(0, &qword_1EDC1DE50, 0x1E695CE18);
  a1[3] = result;
  a1[4] = &off_1F3B3DF68;
  *a1 = v5;
  return result;
}

id sub_1BC7C9968()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  result = sub_1BC84966C(0xD00000000000002ALL, 0x80000001BC90CBD0);
  if (result)
  {
    v2 = result;
    v3 = sub_1BC7D9730(0, &qword_1EDC1DEA0, 0x1E69A48A8);
    v15[3] = v3;
    v15[4] = &off_1F3B38F60;
    v15[0] = v2;
    result = [objc_opt_self() sharedInstanceForBagType_];
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for VideoMessagingFileTransferer();
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v3);
      v7 = *(*(v3 - 8) + 64);
      MEMORY[0x1EEE9AC00](v6);
      OUTLINED_FUNCTION_12();
      v10 = v9 - v8;
      (*(v11 + 16))(v9 - v8);
      v14 = v4;
      v12 = v4;
      v13 = sub_1BC7C9B1C(v10, &v14, v5, v3, &type metadata for FaceTimeMessagesServerBag, &off_1F3B38F60, &off_1F3B3D658);

      result = __swift_destroy_boxed_opaque_existential_1(v15);
      qword_1EDC2B2F8 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1BC7C9B1C(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v32[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32[-1] - v18;
  (*(v13 + 32))(&v32[-1] - v18);
  v33 = a5;
  v34 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v21 = objc_allocWithZone(a3);
  v22 = v33;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v32[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  (*(v13 + 16))(v17, v19, a4);
  v29 = sub_1BC7C9D68(v17, v28, v21, a4, a6);
  (*(v13 + 8))(v19, a4);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v29;
}

char *sub_1BC7C9D68(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1BC8F8274();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC8F8254();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BC8F78E4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1BC8F7264();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[3] = a4;
  v61[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v60[3] = &type metadata for FaceTimeMessagesServerBag;
  v60[4] = &off_1F3B3D658;
  v60[0] = a2;
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_incomingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_outgoingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v49 = OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue;
  sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_1BC8F85A4();
  MEMORY[0x1BFB29120](0xD00000000000003DLL, 0x80000001BC90CC00);
  sub_1BC8F7254();
  v24 = sub_1BC8F7204();
  v26 = v25;
  (*(v19 + 8))(v22, v18);
  MEMORY[0x1BFB29120](v24, v26);

  sub_1BC8F78D4();
  v56[0] = MEMORY[0x1E69E7CC0];
  sub_1BC849F3C(&qword_1EDC20670, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AE0, &qword_1BC9034B0);
  sub_1BC849F84();
  sub_1BC8F84C4();
  (*(v52 + 104))(v51, *MEMORY[0x1E69E8090], v53);
  *&a3[v49] = sub_1BC8F82A4();
  sub_1BC7A792C(v61, &a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service]);
  sub_1BC7A792C(v60, &a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_serverBag]);
  type metadata accessor for VideoFileTransfer();
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionMap] = sub_1BC8F7AD4();
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionLock] = v27;
  type metadata accessor for DownloadManager();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1BC849F3C(&unk_1EDC20600, MEMORY[0x1E69695A8]);
  *(v28 + 112) = sub_1BC8F7AD4();
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_downloadManager] = v28;
  v59.receiver = a3;
  v59.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v59, sel_init);
  v30 = qword_1EDC1E1F8;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_1BC8F7734();
  __swift_project_value_buffer(v32, qword_1EDC2B2B0);
  v33 = sub_1BC8F7714();
  v34 = sub_1BC8F8204();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136446210;
    sub_1BC7A792C(&v31[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service], v56);
    v37 = sub_1BC863B08(v56);
    v39 = v38;
    sub_1BC7C1744(v56, &qword_1EBCF5EE0, &qword_1BC903B50);
    v40 = sub_1BC7A9A4C(v37, v39, &v55);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1BC7A3000, v33, v34, "Registering IDSService delegate for %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFB2AA50](v36, -1, -1);
    MEMORY[0x1BFB2AA50](v35, -1, -1);
  }

  sub_1BC7A792C(&v31[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service], v56);
  v41 = v57;
  v42 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v43 = *&v31[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue];
  v44 = *(v42 + 16);
  v45 = v31;
  v46 = v43;
  v44(v45, v46, v41, v42);

  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return v45;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1BC7CA538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7D02BC();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7CA6CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1BC7CA704()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC7CA790()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CA7C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CA8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC8F7264();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BC7CA974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_4();
  result = sub_1BC8F7264();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_21_3();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_1BC7CAA08()
{
  OUTLINED_FUNCTION_13_4();
  v2 = sub_1BC8F7264();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1BC7CAA48()
{
  OUTLINED_FUNCTION_13_4();
  sub_1BC8F7264();
  v0 = OUTLINED_FUNCTION_21_3();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1BC7CAAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0578(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7CAB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E645C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7CABC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

BOOL sub_1BC7CAC9C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1BC7CAD50(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_1_7(a1);
}

uint64_t sub_1BC7CAE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OutgoingVideoMessage();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BC7CAEF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OutgoingVideoMessage();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC7CB140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC8F7014();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1BC7CB1E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BC8F7014();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC7CB398()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CB3D0()
{
  v1 = sub_1BC8F7014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1BC7CB47C()
{
  v1 = sub_1BC8F7014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + v8, v1);
  v10 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1BC7CB55C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC7CB5A4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC7CB690()
{
  sub_1BC7B0EFC(*(v0 + 16));
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BC7CB6D8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CB714()
{
  v1 = *(v0 + 16);

  sub_1BC7B0EFC(*(v0 + 24));
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CB768()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CB79C()
{
  v1 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BC7CB854()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BC7CB90C()
{
  sub_1BC8F8804();
  OUTLINED_FUNCTION_10_2();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC7CB980()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CB9B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CBA38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
  OUTLINED_FUNCTION_42(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC7CBB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_7();
  v6 = sub_1BC8F7994();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_1BC8F7014();
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1BC7CBBD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_7();
  v8 = sub_1BC8F7994();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_1BC8F7014();
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC7CBC74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CBCAC()
{
  v1 = sub_1BC8F7994();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 40) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v8))
  {
    v10 = *(v0 + v8 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v4 | 7);
}

uint64_t sub_1BC7CBDA4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7994();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  v14 = *(v0 + v12);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BC7CBF3C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CBF7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for MessageStoreFetchRequest() - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (((*(*v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v14 = sub_1BC8F7264();
  (*(*(v14 - 8) + 8))(v0 + v10, v14);
  sub_1BC7B0EFC(*(v0 + v10 + v8[7]));
  v15 = *(v0 + v10 + v8[10] + 8);

  v16 = *(v0 + v12);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v11 | 7);
}

uint64_t sub_1BC7CC128()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CC160()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CC1EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BC7CC498(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC7C818C();
  *v1 = result;
  return result;
}

uint64_t sub_1BC7CC4E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC7C7DA0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BC7CC53C(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC7C7E0C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BC7CC638(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC7C8278();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1BC7CC6DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC7C8024();
  *v1 = result;
  return result;
}

uint64_t sub_1BC7CC72C(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC864F3C();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1BC7CC780(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC864FFC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BC7CC7D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC865060();
  *v1 = result;
  return result;
}

uint64_t sub_1BC7CC824(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC865120();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1BC7CC878(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC865214();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_1BC7CC944(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC865904();
  *v1 = result;
  return result;
}

void *sub_1BC7CC970(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC865A10();
  *v1 = result;
  return result;
}

void *sub_1BC7CC99C(uint64_t *a1)
{
  OUTLINED_FUNCTION_68_0(a1);
  result = sub_1BC865B10();
  *v1 = result;
  return result;
}

uint64_t sub_1BC7CCA78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CCAB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BC7CCB08()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v4 | 7);
}

uint64_t sub_1BC7CCC4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BC8F7264();
  v7 = OUTLINED_FUNCTION_54_6(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
    v15 = OUTLINED_FUNCTION_54_6(v14);
    if (*(v16 + 84) == a2)
    {
      v9 = v15;
      v17 = a3[12];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
      v17 = a3[15];
    }

    v10 = a1 + v17;
    goto LABEL_13;
  }

  v11 = *(a1 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1BC7CCD80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BC8F7264();
  result = OUTLINED_FUNCTION_54_6(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[5] + 8) = a2;
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
    v14 = OUTLINED_FUNCTION_54_6(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[12];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
      v16 = a4[15];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1BC7CCEF4()
{
  MEMORY[0x1BFB2AB40](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CCF2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC7CCF94()
{
  v0 = sub_1BC8F8804();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC7CCFE0(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0x4C5255656C6966;
  }

  return 0x656C646E6168;
}

uint64_t sub_1BC7CD030()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6140, &qword_1BC905978);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CD13C()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CD18C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CD1C4()
{
  v2 = type metadata accessor for OutgoingVideoMessage();
  OUTLINED_FUNCTION_58_6(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = v1 + v5;
  v10 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v10);
  (*(v11 + 8))(v9);
  v12 = *(v9 + v0[7] + 8);

  v13 = *(v9 + v0[8]);

  v14 = v0[10];
  v15 = sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1(v15);
  (*(v16 + 8))(v9 + v14);
  v17 = *(v1 + v7);

  return MEMORY[0x1EEE6BDD0](v1, v7 + 8, v4 | 7);
}

uint64_t sub_1BC7CD310()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CD478()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CD4B8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CD4EC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CD520()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

__n128 sub_1BC7CD5FC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1BC7CD670(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1BC7CD704(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC7CD790()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC7CD878()
{
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64) + v5;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1BC7CD934()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CD974()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CDA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_131();
  if (*(*(sub_1BC8F7434() - 8) + 84) == v3)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
    v5 = *(a3 + 24);
  }

  v6 = OUTLINED_FUNCTION_10_23(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t sub_1BC7CDAC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BC8F7434();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
    v10 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1BC7CDB78()
{
  OUTLINED_FUNCTION_131();
  v3 = *(v2 + 24);
  v4 = sub_1BC8F7434();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1BC7CDBC8()
{
  OUTLINED_FUNCTION_131();
  v3 = *(v2 + 24);
  v4 = sub_1BC8F7434();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1BC7CDC1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_12_18(*(a1 + 16));
  }

  sub_1BC8F7434();
  v5 = OUTLINED_FUNCTION_10_23(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1BC7CDC94()
{
  OUTLINED_FUNCTION_131();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1BC8F7434();
    v5 = OUTLINED_FUNCTION_10_23(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1BC7CDD0C(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_12_18(*a1);
  }

  sub_1BC8F7434();
  v5 = OUTLINED_FUNCTION_10_23(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1BC7CDD84()
{
  OUTLINED_FUNCTION_131();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1BC8F7434();
    v5 = OUTLINED_FUNCTION_10_23(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1BC7CDE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC8F7264();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1BC8F7014();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1BC7CDF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC8F7264();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1BC8F7014();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC7CE054()
{
  v1 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_42(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BC7CE0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BC8F7434();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1BC7CE16C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BC8F7434();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC7CE214()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5848, &qword_1BC9020D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE244()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CE2B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC7CE304()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BC7CE338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BC7CE38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BC7CE3E4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC7CE438()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A00, &qword_1BC90A628);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE468()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A08, &qword_1BC90A688);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE498()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A18, &qword_1BC90A728);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE508()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC7CE550()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BC7CE590()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BC7CE5E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CE688()
{
  v1 = sub_1BC8F7264();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1BC7CE800(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) duration];
  *v1 = v3;
  return result;
}

id sub_1BC7CE8C4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRead];
  *v1 = result;
  return result;
}

id sub_1BC7CE908(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRTT];
  *v1 = result;
  return result;
}

id sub_1BC7CE94C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isSensitive];
  *v1 = result;
  return result;
}

id sub_1BC7CE990(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) mailboxType];
  *v1 = result;
  return result;
}

id sub_1BC7CEA4C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) messageType];
  *v1 = result;
  return result;
}

id sub_1BC7CED04(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) transcriptionStatus];
  *v1 = result;
  return result;
}

id sub_1BC7CED88(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) voicemailID];
  *v1 = result;
  return result;
}

id sub_1BC7CEDD4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 voicemailID];
  *a2 = result;
  return result;
}

id sub_1BC7CEF80(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) duration];
  *v1 = v3;
  return result;
}

id sub_1BC7CF044(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRead];
  *v1 = result;
  return result;
}

id sub_1BC7CF088(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRTT];
  *v1 = result;
  return result;
}

id sub_1BC7CF0CC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isSensitive];
  *v1 = result;
  return result;
}

id sub_1BC7CF110(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) mailboxType];
  *v1 = result;
  return result;
}

id sub_1BC7CF1D4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) messageType];
  *v1 = result;
  return result;
}

id sub_1BC7CF4C8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) transcriptionStatus];
  *v1 = result;
  return result;
}

BOOL sub_1BC7CF5BC(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1BC7CF5EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BC7CF6B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC7CF6D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1BC7CF720(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BC7CF754();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1BC7CF75C()
{
  v1 = OUTLINED_FUNCTION_1_2();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1BC7CF788()
{
  v1 = OUTLINED_FUNCTION_1_2();
  result = sub_1BC7CF654(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BC7CF7B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BC83EBFC();
}

uint64_t sub_1BC7CF7BC()
{
  v1 = OUTLINED_FUNCTION_1_2();
  result = sub_1BC8C2190(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BC7CF7E4(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AE0, type metadata accessor for URLResourceKey);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AE8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CF8A0(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AF0, type metadata accessor for AVFileType);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AF8, type metadata accessor for AVFileType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CF95C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7CF654(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BC7CF988(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AB0, type metadata accessor for FileAttributeKey);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AB8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CFA44(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AC0, type metadata accessor for CIContextOption);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AC8, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CFB00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BC8F7BE4();

  *a2 = v5;
  return result;
}

uint64_t sub_1BC7CFB48(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AD0, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AD8, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CFC04()
{
  sub_1BC8F7C24();
  sub_1BC8F7CD4();
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MessageStoreBadgeCounts(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MessageStoreBadgeCounts(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1BC7CFDD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC7D01C4(uint64_t a1, id *a2)
{
  v3 = sub_1BC8F7C14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BC7D0244(uint64_t a1, id *a2)
{
  result = sub_1BC8F7C04();
  *a2 = 0;
  return result;
}

uint64_t sub_1BC7D02BC()
{
  sub_1BC8F7C24();
  v0 = sub_1BC8F7BE4();

  return v0;
}

uint64_t sub_1BC7D02F4()
{
  v0 = sub_1BC8F7C24();
  v1 = MEMORY[0x1BFB29190](v0);

  return v1;
}

unint64_t BadgeCountCategory.description.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1BC7D0410(uint64_t a1, id a2)
{
  v2 = &unk_1F3B364E0;
  if (a1 == 4 && ![a2 voicemailInboxOnIPadEnabled])
  {
    return &unk_1F3B36508;
  }

  return v2;
}

uint64_t sub_1BC7D04BC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_24_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC7D04E8(uint64_t a1)
{
  v2 = sub_1BC7D138C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0524(uint64_t a1)
{
  v2 = sub_1BC7D138C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001BC90B580 == a2;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001BC90B5A0 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001BC90B5C0 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BC90B5E0 == a2;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001BC90B600 == a2;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001BC90B620 == a2;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001BC90B640 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BC8F8AA4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}