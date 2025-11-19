uint64_t sub_1DC3FFA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_1DC51122C();
  v84 = OUTLINED_FUNCTION_0(v3);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_1();
  v83 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = v78 - v11;
  v92 = sub_1DC5157EC();
  v12 = OUTLINED_FUNCTION_0(v92);
  v87 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v80 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v81 = v78 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v86 = v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v78 - v27;
  v29 = type metadata accessor for NLRouterNLParseResponse(0);
  v30 = OUTLINED_FUNCTION_35(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v88 = (v34 - v33);
  v35 = sub_1DC516F5C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v89 = v37;
  v90 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v43 = sub_1DC2BE518();
  v44 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.PhoneCallRule", 28, 2, v43, v44 & 1, v42);

  v45 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v45 + 32), v24, &qword_1ECC7C158, &unk_1DC5234A0);
  v46 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v46) == 1)
  {
    sub_1DC28EB30(v24, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_4:
    sub_1DC28EB30(v28, &qword_1ECC7C160, qword_1DC5233B0);
    v47 = v91;
    v48 = v92;
    v49 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
    v65 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v89 + 8))(v42, v90);
  }

  sub_1DC28F358(v24, v28, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v24, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v28, v88);
  v50 = type metadata accessor for HeuristicRoutingRequest(0);
  v52 = v86;
  v51 = v87;
  v53 = *(v87 + 16);
  v79 = *(v50 + 20);
  v54 = v92;
  v53(v86, a1 + v79, v92);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v55 = sub_1DC3453A8();
  v57 = v56;
  if (v55 == sub_1DC312FB4(0) && v57 == v58)
  {

    goto LABEL_15;
  }

  v60 = sub_1DC51825C();

  if (v60)
  {
LABEL_15:
    v63 = sub_1DC5157DC();
    sub_1DC2E5408(v88, type metadata accessor for NLRouterNLParseResponse);
    if (v63)
    {
      (*(v51 + 8))(v52, v54);
      v49 = 1;
      v64 = v91;
    }

    else
    {
      v64 = v91;
      (*(v51 + 32))(v91, v52, v54);
      v49 = 0;
    }

    v47 = v64;
    v48 = v54;
    goto LABEL_19;
  }

  sub_1DC3453A8();
  v61 = sub_1DC312F68();
  if (v61 == 4)
  {
    v62 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v54);
LABEL_14:
    sub_1DC28EB30(v62, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v62 = v82;
  sub_1DC312E7C(v61, v82);
  if (__swift_getEnumTagSinglePayload(v62, 1, v54) == 1)
  {
    goto LABEL_14;
  }

  v67 = *(v51 + 32);
  v78[1] = v51 + 32;
  v78[2] = a1;
  v78[0] = v67;
  result = v67(v81, v62, v54);
  v68 = 0;
  v69 = *v88;
  v82 = *(*v88 + 16);
  v78[3] = v85 + 16;
  while (1)
  {
    if (v82 == v68)
    {
      v51 = v87;
      v54 = v92;
      (*(v87 + 8))(v81, v92);
      v52 = v86;
      goto LABEL_15;
    }

    if (v68 >= *(v69 + 16))
    {
      break;
    }

    v71 = v84;
    v70 = v85;
    v72 = v83;
    (*(v85 + 16))(v83, v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v68++, v84);
    v73 = sub_1DC5111AC();
    v74 = sub_1DC4001EC(v73);

    result = (*(v70 + 8))(v72, v71);
    if (v74)
    {
      v75 = v80;
      v76 = v81;
      v52 = v86;
      sub_1DC32DE40();
      v51 = v87;
      v77 = *(v87 + 8);
      v54 = v92;
      v77(v76, v92);
      v77(v52, v54);
      (v78[0])(v52, v75, v54);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC4001EC(uint64_t a1)
{
  v42 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v42);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v41 = v8 - v7;
  v44 = sub_1DC51179C();
  v9 = OUTLINED_FUNCTION_0(v44);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1DC51164C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v27 = v4;
  v30 = *(v20 + 16);
  v28 = v20 + 16;
  v29 = v30;
  v31 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v32 = (v28 - 8);
  v43 = (v11 + 8);
  v39 = (v27 + 8);
  v40 = v30;
  v33 = *(v28 + 56);
  v38 = v33;
  while (1)
  {
    v29(v25, v31, v17);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      goto LABEL_11;
    }

    sub_1DC51154C();
    v34 = sub_1DC51177C();
    v35 = *v43;
    (*v43)(v16, v44);
    if ((v34 & 1) == 0)
    {
      goto LABEL_10;
    }

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    sub_1DC51178C();
    v35(v16, v44);
    v33 = v38;
    v36 = sub_1DC307E5C();
    v29 = v40;
    (*v39)(v41, v42);
    if (!v36)
    {
LABEL_10:
      v32 = (v28 - 8);
LABEL_11:
      (*v32)(v25, v17);
      goto LABEL_12;
    }

    sub_1DC51478C();

    v32 = (v28 - 8);
    (*(v28 - 8))(v25, v17);
    *v46 = *&v46[5];
    *&v46[2] = v47;
    if (*(&v47 + 1))
    {
      break;
    }

LABEL_9:
    sub_1DC28EB30(v46, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_12:
    v31 += v33;
    if (!--v26)
    {
      return 0;
    }
  }

  sub_1DC28F358(v46, v45, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514A6C();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  sub_1DC28EB30(v46, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return 1;
}

uint64_t sub_1DC4005AC()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8FA08);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC529730;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC400680@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v67 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v67 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = sub_1DC5172FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC8AB20 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  __swift_project_value_buffer(v19, qword_1ECC8FA08);
  v24 = sub_1DC5172DC();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v25 = sub_1DC5171EC();
    sub_1DC30F668(0x6D614E746E657665, 0xE900000000000065, v25, v18);

    v26 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v18);
    if (v27)
    {
      sub_1DC30F72C(v18);
      v28 = v70;
    }

    else
    {
      sub_1DC382AC0();
      v69 = v42;
      v44 = v43;
      OUTLINED_FUNCTION_1_10();
      (*(v45 + 8))(v18, v26);
      v28 = v70;
      v68 = v44;
      if (v44)
      {
LABEL_10:
        v46 = sub_1DC5171EC();
        sub_1DC30F668(0x7373656E69737562, 0xEC000000656D614ELL, v46, v16);

        OUTLINED_FUNCTION_3_3(v16);
        if (v27)
        {
          sub_1DC30F72C(v16);
        }

        else
        {
          sub_1DC382AC0();
          v70 = v47;
          v49 = v48;
          OUTLINED_FUNCTION_1_10();
          (*(v50 + 8))(v16, v26);
          v67 = v49;
          if (v49)
          {
LABEL_15:
            v51 = sub_1DC5171EC();
            sub_1DC30F668(0x7461447472617473, 0xED0000656D695465, v51, v13);

            OUTLINED_FUNCTION_3_3(v13);
            if (v27)
            {
              sub_1DC30F72C(v13);
            }

            else
            {
              sub_1DC382AC0();
              v36 = v52;
              v37 = v53;
              OUTLINED_FUNCTION_1_10();
              (*(v54 + 8))(v13, v26);
              if (v37)
              {
LABEL_20:
                v55 = sub_1DC5171EC();
                sub_1DC30F668(0x5465746144646E65, 0xEB00000000656D69, v55, v10);

                OUTLINED_FUNCTION_3_3(v10);
                if (v27)
                {
                  sub_1DC30F72C(v10);
                }

                else
                {
                  sub_1DC382AC0();
                  v38 = v56;
                  v39 = v57;
                  OUTLINED_FUNCTION_1_10();
                  (*(v58 + 8))(v10, v26);
                  if (v39)
                  {
LABEL_25:
                    v59 = sub_1DC5171EC();
                    sub_1DC30F668(0x627553746E657665, 0xEC00000065707954, v59, v28);

                    OUTLINED_FUNCTION_3_3(v28);
                    if (v27)
                    {
                      sub_1DC30F72C(v28);
                    }

                    else
                    {
                      sub_1DC382AC0();
                      v40 = v60;
                      v41 = v61;
                      OUTLINED_FUNCTION_1_10();
                      (*(v62 + 8))(v28, v26);
                      if (v41)
                      {
                        v63 = sub_1DC51721C();
                        OUTLINED_FUNCTION_7_1(v63);
                        result = (*(v64 + 8))(a1);
LABEL_31:
                        v33 = v68;
                        v32 = v69;
                        v34 = v70;
                        v35 = v67;
                        goto LABEL_32;
                      }
                    }

                    v65 = sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1(v65);
                    (*(v66 + 8))(a1);

                    v40 = 0;
                    v41 = 0xE000000000000000;
                    goto LABEL_31;
                  }
                }

                v38 = 0;
                v39 = 0xE000000000000000;
                goto LABEL_25;
              }
            }

            v36 = 0;
            v37 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v70 = 0;
        v67 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v68 = 0xE000000000000000;
    v69 = 0;
    goto LABEL_10;
  }

  v29 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v29);
  result = (*(v30 + 8))(a1);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
LABEL_32:
  *a2 = v32;
  a2[1] = v33;
  a2[2] = v34;
  a2[3] = v35;
  a2[4] = v36;
  a2[5] = v37;
  a2[6] = v38;
  a2[7] = v39;
  a2[8] = v40;
  a2[9] = v41;
  return result;
}

uint64_t sub_1DC400CAC()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x6D614E746E657645, 0xEB00000000203A65);
  MEMORY[0x1E1296160](*v1, v1[1]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000011);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000011);
  MEMORY[0x1E1296160](v1[8], v1[9]);
  return 0;
}

uint64_t sub_1DC400DCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC8AB20 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8FA08);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC400EB4()
{
  v1 = OBJC_IVAR___SiriNLUOverrideProxy_componentOverrideStore;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
}

uint64_t sub_1DC401068()
{
  v1 = *(v0 + OBJC_IVAR___SiriNLUOverrideProxy_queue);
  OUTLINED_FUNCTION_16_14();
  return v3;
}

void sub_1DC4010C4(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + OBJC_IVAR___SiriNLUOverrideProxy_store);
  if (sub_1DC51633C())
  {
    if (!(*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))())
    {
      v6 = 1;
      goto LABEL_6;
    }

    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2C0F8C();
  }

  else
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2C0F8C();
  }

  sub_1DC516F0C();

  v6 = 0;
LABEL_6:
  *a1 = v6;
}

uint64_t sub_1DC401240()
{
  v1 = v0;
  v18 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + OBJC_IVAR___SiriNLUOverrideProxy_store);
  v3 = sub_1DC51634C();
  sub_1DC4013C8(v3);
  v4 = *v1;
  OUTLINED_FUNCTION_11_27();
  if ((*(v5 + 120))())
  {
    v6 = sub_1DC51634C();
    sub_1DC4013C8(v6);
    v7 = v18;
    v8 = *v1;
    OUTLINED_FUNCTION_11_27();
    v10 = *(v9 + 152);

    v10(v11);
  }

  else
  {
    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v12 = sub_1DC2C0F8C();
    sub_1DC516F0C();

    v7 = v18;
    v13 = *v1;
    OUTLINED_FUNCTION_11_27();
    v15 = *(v14 + 152);

    v15(v16);
  }

  return v7;
}

int64_t sub_1DC4013C8(uint64_t a1)
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

  sub_1DC401F7C(result, 1);
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
  result = sub_1DC5163CC();
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

uint64_t sub_1DC4014C8()
{
  v1 = *(v0 + OBJC_IVAR___SiriNLUOverrideProxy_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7A0, "ĉ");
  sub_1DC517BFC();
  return v3;
}

void sub_1DC40154C(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v116 = a3;
  v117 = a2;
  v122 = a4;
  v112 = sub_1DC51630C();
  v5 = OUTLINED_FUNCTION_0(v112);
  v111 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v110 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v108 - v15;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC5163CC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v119 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v118 = v22 - v21;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC51670C();
  v24 = OUTLINED_FUNCTION_10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v128 = v28 - v27;
  OUTLINED_FUNCTION_12();
  v29 = sub_1DC51231C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v130 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7C0, &unk_1DC5297C0);
  v38 = OUTLINED_FUNCTION_10(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v115 = &v108 - v41;
  OUTLINED_FUNCTION_12();
  v120 = sub_1DC511A4C();
  v42 = OUTLINED_FUNCTION_0(v120);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v114 = v48 - v47;
  sub_1DC517B9C();
  v121 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v49 = sub_1DC2C0F8C();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1DC516F0C();

  v129 = a1;
  v51 = sub_1DC2C20B8(a1);
  if (!v51)
  {
    v66 = v117;
    v65 = v122;
LABEL_17:
    v67 = *((*MEMORY[0x1E69E7D40] & *v66) + 0xB0);

    v67(v68);
    v69 = v115;
    sub_1DC511A3C();
    v70 = v120;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v120);
    v73 = v118;
    v72 = v119;
    if (EnumTagSinglePayload == 1)
    {

      sub_1DC28EB30(v69, &qword_1ECC7D7C0, &unk_1DC5297C0);
      sub_1DC517BAC();
      v74 = OUTLINED_FUNCTION_20_17();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v64 = 0;
LABEL_25:
      *v65 = v64;
      return;
    }

    v75 = v114;
    (*(v44 + 32))(v114, v69, v70);
    v76 = sub_1DC401240();

    v77 = v113;
    sub_1DC2C2328(v76, MEMORY[0x1E69D0920], v113);

    if (__swift_getEnumTagSinglePayload(v77, 1, v16) == 1)
    {
      sub_1DC28EB30(v77, &qword_1ECC7CC00, &qword_1DC524688);
      sub_1DC517B8C();
      v78 = OUTLINED_FUNCTION_20_17();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      (*(v44 + 8))(v75, v70);
    }

    else
    {
      (*(v72 + 32))(v73, v77, v16);
      v79 = v110;
      v80 = sub_1DC5163BC();
      MEMORY[0x1E1294BA0](v80);
      v82 = v81;
      (*(v111 + 8))(v79, v112);
      if (v82 >> 60 != 15)
      {
        v89 = objc_allocWithZone(MEMORY[0x1E69D1348]);
        v90 = OUTLINED_FUNCTION_29_0();
        sub_1DC2A6784(v90, v91);
        v92 = OUTLINED_FUNCTION_29_0();
        v94 = sub_1DC339190(v92, v93);
        v65 = v122;
        if (v94)
        {
          v64 = v94;
          v95 = OUTLINED_FUNCTION_29_0();
          sub_1DC301FE0(v95, v96);
          v97 = OUTLINED_FUNCTION_10_24();
          v98(v97);
          v99 = OUTLINED_FUNCTION_3_28();
          v100(v99);
        }

        else
        {
          sub_1DC517BAC();
          v101 = sub_1DC2C0F8C();
          sub_1DC516F0C();

          v102 = OUTLINED_FUNCTION_29_0();
          sub_1DC301FE0(v102, v103);
          v104 = OUTLINED_FUNCTION_10_24();
          v105(v104);
          v106 = OUTLINED_FUNCTION_3_28();
          v107(v106);
          v64 = 0;
        }

        goto LABEL_25;
      }

      sub_1DC517BAC();
      v83 = OUTLINED_FUNCTION_20_17();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v84 = OUTLINED_FUNCTION_10_24();
      v85(v84);
      v86 = OUTLINED_FUNCTION_3_28();
      v88(v86, v87);
    }

    v64 = 0;
LABEL_24:
    v65 = v122;
    goto LABEL_25;
  }

  v52 = v51;
  v135 = v50;
  sub_1DC2C22A4(0, v51 & ~(v51 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v109 = v16;
    v53 = 0;
    v54 = v135;
    v126 = v44;
    v127 = v129 & 0xC000000000000001;
    v123 = v129 & 0xFFFFFFFFFFFFFF8;
    v124 = v32 + 32;
    v125 = v52;
    while (1)
    {
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v127)
      {
        v56 = MEMORY[0x1E1296800](v53, v129);
      }

      else
      {
        if (v53 >= *(v123 + 16))
        {
          goto LABEL_30;
        }

        v56 = *(v129 + 8 * v53 + 32);
      }

      v57 = v56;
      sub_1DC2C22C4(v56);
      if (v58 >> 60 == 15)
      {
        goto LABEL_32;
      }

      v134 = 0;
      v132 = 0u;
      v133 = 0u;
      sub_1DC5166FC();
      OUTLINED_FUNCTION_2_31();
      sub_1DC293C74(&qword_1EDAC8038, v59);
      v60 = v131;
      sub_1DC51677C();
      if (v60)
      {

        sub_1DC517BAC();
        v63 = OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C();

        v64 = 0;
        goto LABEL_24;
      }

      v131 = 0;

      v135 = v54;
      v62 = *(v54 + 16);
      v61 = *(v54 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1DC2C22A4(v61 > 1, v62 + 1, 1);
        v54 = v135;
      }

      *(v54 + 16) = v62 + 1;
      (*(v32 + 32))(v54 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v62, v130, v29);
      ++v53;
      v44 = v126;
      if (v55 == v125)
      {
        v65 = v122;
        v16 = v109;
        v66 = v117;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

id SiriNLUOverrideProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriNLUOverrideProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriNLUOverrideProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_1DC401F7C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC401FE4(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

size_t sub_1DC401FE4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1DC4020E4(v8, v7);
  v10 = *(sub_1DC5163CC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC4021E0(a4 + v11, v8, v9 + v11, MEMORY[0x1E69D0920]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC4020E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7B0, &qword_1DC5297A8);
  v4 = *(sub_1DC5163CC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC4021E0(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC402404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  v1 = sub_1DC3EAAF4();
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAB00();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  qword_1ECC8FA20 = v0;
}

uint64_t sub_1DC402484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14(&v167 - v7);
  v201 = sub_1DC5157EC();
  v8 = OUTLINED_FUNCTION_0(v201);
  v179 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v178 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14(&v167 - v14);
  v191 = sub_1DC510FDC();
  v15 = OUTLINED_FUNCTION_0(v191);
  v182 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v19);
  v200 = sub_1DC51179C();
  v20 = OUTLINED_FUNCTION_0(v200);
  v188 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v199 = v24;
  v192 = sub_1DC51164C();
  v25 = OUTLINED_FUNCTION_0(v192);
  v184 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v186 = sub_1DC51122C();
  v30 = OUTLINED_FUNCTION_0(v186);
  v187 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v185 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  v194 = &v167 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  v193 = &v167 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v167 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v167 - v55;
  v57 = type metadata accessor for NLRouterNLParseResponse(0);
  v58 = OUTLINED_FUNCTION_35(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v61);
  v62 = sub_1DC516F5C();
  v63 = OUTLINED_FUNCTION_0(v62);
  v196 = v64;
  v197 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v167 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v70 = sub_1DC2BE518();
  v71 = OUTLINED_FUNCTION_130();
  v195 = v68;
  v72 = v68;
  v73 = v69;
  sub_1DC2A2ED0("HeuristicRules.PlannerUpdateRule", 32, 2, v70, v71 & 1, v72);

  v74 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v74 + 32), v50, &qword_1ECC7C158, &unk_1DC5234A0);
  v75 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v50, 1, v75) == 1)
  {
    sub_1DC28EB30(v50, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
LABEL_4:
    sub_1DC28EB30(v56, &qword_1ECC7C160, qword_1DC5233B0);
    v76 = v198;
    v77 = 1;
    v78 = v201;
    goto LABEL_17;
  }

  sub_1DC28F358(v50, v56, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC33F1E0(v50, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    goto LABEL_4;
  }

  v79 = v189;
  sub_1DC2E53A4(v56, v189);
  v80 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v81 = sub_1DC343888();
  v83 = v82;
  if (v81 == sub_1DC312FB4(0) && v83 == v84)
  {

    goto LABEL_13;
  }

  v86 = sub_1DC51825C();

  if (v86)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v93);
LABEL_14:
    v94 = v198;
    a1 = v201;
    goto LABEL_15;
  }

  v87 = v194;
  sub_1DC3EAD64(v194);
  v88 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v87, 1, v88) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v89);
    v90 = &qword_1ECC7BEB8;
    v91 = &unk_1DC527150;
    v92 = v87;
LABEL_20:
    sub_1DC28EB30(v92, v90, v91);
    goto LABEL_14;
  }

  v98 = v193;
  sub_1DC28F358(&v87[*(v88 + 24)], v193, &qword_1ECC7BEC0, &unk_1DC5221E0);
  sub_1DC33F1E0(v87, type metadata accessor for QDContextState);
  v99 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v100);
    v90 = &qword_1ECC7BEC0;
    v91 = &unk_1DC5221E0;
    v92 = v98;
    goto LABEL_20;
  }

  v170 = v80;
  v101 = sub_1DC51723C();
  v103 = v102;
  v104 = (*(*(v99 - 8) + 8))(v98, v99);
  if (qword_1ECC8AB28 != -1)
  {
    goto LABEL_56;
  }

LABEL_22:
  v169 = v101;
  *&v203 = v101;
  *(&v203 + 1) = v103;
  MEMORY[0x1EEE9AC00](v104);
  *(&v167 - 2) = &v203;
  sub_1DC2CF098(sub_1DC2CF174, (&v167 - 4), v105);
  OUTLINED_FUNCTION_10_16();
  if ((v106 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v132);

    goto LABEL_14;
  }

  v168 = v103;
  v167 = a1;
  v107 = 0;
  v108 = *v79;
  v175 = *(*v79 + 16);
  v173 = v187 + 16;
  v193 = v184 + 16;
  v194 = (v184 + 8);
  ++v188;
  ++v182;
  v174 = (v187 + 8);
  v94 = v198;
  a1 = v201;
  v79 = v192;
  v171 = v73;
  v172 = v108;
  v103 = v183;
  while (1)
  {
    if (v107 == v175)
    {
      goto LABEL_52;
    }

    if (v107 >= *(v108 + 16))
    {
      __break(1u);
LABEL_56:
      v104 = OUTLINED_FUNCTION_2_32();
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_11_17(&v206);
    (*(v111 + 16))(v101, v110 + v109 + *(v111 + 72) * v107, v80);
    v112 = *(sub_1DC5111AC() + 16);
    if (v112)
    {
      break;
    }

LABEL_41:
    ++v107;
    (*v174)(v101, v80);
    v108 = v172;
  }

  v176 = v107;
  OUTLINED_FUNCTION_11_17(&v205);
  v177 = v113;
  v115 = v113 + v114;
  v117 = *(v116 + 72);
  v118 = *(v116 + 16);
  while (1)
  {
    v118(v103, v115, v79);
    v101 = v103;
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v128 = OUTLINED_FUNCTION_5_25();
      v129(v128);
      goto LABEL_37;
    }

    v80 = v199;
    sub_1DC51154C();
    v101 = v80;
    v119 = sub_1DC51177C();
    v120 = *v188;
    (*v188)(v80, v200);
    if ((v119 & 1) == 0)
    {
      goto LABEL_35;
    }

    v121 = type metadata accessor for NLRouterBypassUtils();
    v122 = v199;
    sub_1DC51154C();
    v80 = v190;
    sub_1DC51178C();
    v123 = v122;
    v79 = v192;
    v120(v123, v200);
    v101 = v121;
    v124 = sub_1DC307E5C();
    (*v182)(v80, v191);
    if (!v124)
    {
LABEL_35:
      v130 = OUTLINED_FUNCTION_5_25();
      v131(v130);
LABEL_36:
      a1 = v201;
      goto LABEL_37;
    }

    sub_1DC51478C();

    v125 = OUTLINED_FUNCTION_5_25();
    v126(v125);
    v202[0] = v203;
    v202[1] = v204;
    if (!*(&v204 + 1))
    {
      sub_1DC28EB30(v202, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_36;
    }

    sub_1DC51499C();
    v127 = swift_dynamicCast();
    a1 = v201;
    if (v127)
    {
      break;
    }

LABEL_37:
    v115 += v117;
    if (!--v112)
    {

      v94 = v198;
      v73 = v171;
      OUTLINED_FUNCTION_10_16();
      v107 = v176;
      goto LABEL_41;
    }
  }

  (*v174)(v185, v186);
  sub_1DC343888();
  v133 = sub_1DC312F68();
  if (v133 == 4)
  {
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v134, v135);
    OUTLINED_FUNCTION_12_16();
    v136 = v181;
    __swift_storeEnumTagSinglePayload(v181, 1, 1, a1);
    v94 = v198;
    goto LABEL_47;
  }

  v136 = v181;
  sub_1DC312E7C(v133, v181);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v136, 1, a1);
  v94 = v198;
  if (EnumTagSinglePayload != 1)
  {
    v140 = v179;
    v141 = *(v179 + 32);
    v142 = v180;
    v141(v180, v136, a1);
    v143 = type metadata accessor for HeuristicRoutingRequest(0);
    v144 = *(v143 + 36);
    v145 = v167 + *(v143 + 20);
    sub_1DC32FD38();
    if (v146)
    {
      v147 = v94;
      v148 = sub_1DC517B9C();
      v149 = sub_1DC2BE518();
      v150 = v178;
      (*(v140 + 16))(v178, v142, a1);
      if (os_log_type_enabled(v149, v148))
      {
        v151 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v203 = v200;
        *v151 = 136315394;
        v152 = sub_1DC291244(v169, v168, &v203);

        *(v151 + 4) = v152;
        *(v151 + 12) = 2080;
        v154 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v153);
        v156 = v155;
        (*(v140 + 8))(v150, v201);
        v157 = sub_1DC291244(v154, v156, &v203);
        v158 = v198;

        *(v151 + 14) = v157;
        _os_log_impl(&dword_1DC287000, v149, v148, "In App: %s, matched an update without an entity request, rerouting to: %s", v151, 0x16u);
        v159 = v200;
        swift_arrayDestroy();
        MEMORY[0x1E1298840](v159, -1, -1);
        v160 = v151;
        a1 = v201;
        MEMORY[0x1E1298840](v160, -1, -1);

        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v161, v162);
      }

      else
      {

        OUTLINED_FUNCTION_12_16();
        (*(v140 + 8))(v150, a1);
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v165, v166);
        v158 = v147;
      }

      v141(v158, v142, a1);
      v76 = v158;
      v77 = 0;
      goto LABEL_16;
    }

    (*(v140 + 8))(v142, a1);
LABEL_52:
    OUTLINED_FUNCTION_12_16();
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v163, v164);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_9_18(v138, v139);
  OUTLINED_FUNCTION_12_16();
LABEL_47:
  sub_1DC28EB30(v136, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_15:
  v76 = v94;
  v77 = 1;
LABEL_16:
  v78 = a1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v76, v77, 1, v78);
  v95 = sub_1DC2BE518();
  v96 = v195;
  sub_1DC2B8848();

  return (*(v196 + 8))(v96, v197);
}

id sub_1DC4033A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphExecutor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC403424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphExecutor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1DC403458()
{
  v0 = sub_1DC51808C();

  return v0 != 0;
}

uint64_t sub_1DC4034C0()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

uint64_t sub_1DC40353C()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

BOOL sub_1DC403590@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC403458();
  *a2 = result;
  return result;
}

unint64_t sub_1DC4035C4@<X0>(void *a1@<X8>)
{
  result = sub_1DC4034A0();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC4035F4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {

    v3 = sub_1DC403878();
    if (v4)
    {
      v1 = *(*(v2 + 56) + 8 * v3);

      return v1;
    }
  }

  v5 = sub_1DC517BBC();
  sub_1DC297814();
  v6 = sub_1DC39902C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315138;
    *(v7 + 4) = OUTLINED_FUNCTION_1_35(v17);
    _os_log_impl(&dword_1DC287000, v6, v5, "Graph type %s not cached. Attempting to construct it.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  type metadata accessor for GraphStore();
  sub_1DC403BD8();
  v8 = swift_allocError();
  *v9 = 0xD000000000000015;
  v9[1] = 0x80000001DC546790;
  swift_willThrow();
  if (v8)
  {

    v10 = sub_1DC517BAC();
    v11 = sub_1DC39902C();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136315138;
      *(v12 + 4) = OUTLINED_FUNCTION_1_35(v18);
      _os_log_impl(&dword_1DC287000, v11, v10, "Graph store couldn't construct graph of type %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    return 0;
  }

  else
  {
    swift_beginAccess();
    swift_retain_n();
    v13 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 16);
    sub_1DC403934(isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v16;
    swift_endAccess();
  }

  return v1;
}

unint64_t sub_1DC403878()
{
  v1 = *(v0 + 40);
  sub_1DC5182FC();
  sub_1DC51769C();
  v2 = sub_1DC51833C();

  return sub_1DC403908(v2);
}

unint64_t sub_1DC403908(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1DC403934(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DC403878();
  if (__OFADD__(*(v4 + 16), (v6 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7D0, qword_1DC529960);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v2;
  v10 = sub_1DC403878();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  v12 = *v2;
  if (v8)
  {
    v13 = *(v12 + 56);
    v14 = *(v13 + 8 * v7);
    *(v13 + 8 * v7) = a1;
  }

  else
  {

    return sub_1DC403B9C(v7, a1, v12);
  }
}

unint64_t sub_1DC403A40()
{
  result = qword_1ECC7D7C8;
  if (!qword_1ECC7D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D7C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_130();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for GraphType(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DC403B9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t sub_1DC403BD8()
{
  result = qword_1ECC7D7D8;
  if (!qword_1ECC7D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D7D8);
  }

  return result;
}

void *sub_1DC403C2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_30();
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  result[3] = a2;
  result[4] = v5;
  result[2] = a1;
  return result;
}

void *sub_1DC403C70(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for GraphNode();
  swift_beginAccess();
  v4 = sub_1DC2C20B8(*(v2 + 32));
  v5 = sub_1DC4054A8(a1, v4);
  swift_beginAccess();

  MEMORY[0x1E12962A0](v6);
  sub_1DC301904(*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DC517A5C();
  swift_endAccess();
  return v5;
}

void *sub_1DC403D38()
{
  v2 = v0[2];
  v1 = v0[3];
  swift_beginAccess();
  v3 = v0[4];
  type metadata accessor for Graph();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  return v4;
}

void *sub_1DC403DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_30();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1DC403DF0()
{
  sub_1DC40504C();
  v0 = OUTLINED_FUNCTION_5_30();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1DC403E1C()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = *(v0 + 32);
    }

    v2 = sub_1DC51802C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1DC405098(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = *(MEMORY[0x1E1296800](v5, v1) + 24);
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = *(*(v1 + 8 * v5 + 32) + 24);
      }

      v8 = *(v10 + 16);
      v7 = *(v10 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1DC405098((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      *(v10 + 16) = v8 + 1;
      *(v10 + 8 * v8 + 32) = v6;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC403F38(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC403F4C()
{
  v1 = (*(**(v0 + 32) + 96))();
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(*(v0 + 24) + 16);
    v5 = (v1 + 32);
    do
    {
      *(v0 + 16) = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
      v6 = sub_1DC51777C();
      if (*(v4 + 16))
      {
        v8 = sub_1DC2AEB04(v6, v7);
        v10 = v9;

        if (v10)
        {
          v11 = *(*(v4 + 56) + 8 * v8);
          v12 = swift_unknownObjectRetain();
          MEMORY[0x1E12962A0](v12);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DC517A3C();
          }

          sub_1DC517A5C();
          v2 = v15;
        }
      }

      else
      {
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  *(v0 + 40) = v2;
  type metadata accessor for GraphServiceUtils();
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_5(v13);

  return sub_1DC40E014(v2);
}

uint64_t sub_1DC404130()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(v2);
}

uint64_t sub_1DC404238(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC40424C()
{
  v1 = *(v0[3] + 32);
  v2 = sub_1DC2C20B8(v1);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    v21 = MEMORY[0x1E69E7CC0];
    v5 = sub_1DC517FBC();
    if (v4 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DD58](v5, v6, v7, v8, v9, v10, v11, v12);
    }

    type metadata accessor for GraphNodeRunner();
    v13 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E1296800](v13, v1);
      }

      else
      {
        v15 = *(v1 + 8 * v13 + 32);
      }

      ++v13;
      sub_1DC405BD8(v14);
      sub_1DC517F9C();
      v16 = *(v21 + 16);
      sub_1DC517FCC();
      sub_1DC517FDC();
      sub_1DC517FAC();
    }

    while (v4 != v13);
    v3 = v21;
  }

  v0[4] = v3;
  v17 = v0[2];
  v18 = swift_task_alloc();
  v0[5] = v18;
  *(v18 + 16) = v3;
  *(v18 + 24) = v17;
  v19 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DC40440C;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v10 = &unk_1DC529988;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = 0;
  v9 = 0;
  v11 = v18;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DC40440C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = v2[6];
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v3[7] = v0;

  if (v0)
  {
    v7 = sub_1DC404544;
  }

  else
  {
    v8 = v3[4];
    v9 = v3[5];

    v7 = sub_1DC404520;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DC404544()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[4];
  v2 = v0[5];

  OUTLINED_FUNCTION_2_2();
  v4 = v0[7];

  return v3();
}

uint64_t sub_1DC4045A8()
{
  OUTLINED_FUNCTION_1_0();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0) - 8) + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC404650, 0, 0);
}

uint64_t sub_1DC404650()
{
  result = sub_1DC2C20B8(*(v0 + 80));
  v25 = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v2 = 0;
    v3 = *(v0 + 80);
    v24 = **(v0 + 72);
    v23 = v3 & 0xC000000000000001;
    v22 = v3 + 32;
    do
    {
      if (v23)
      {
        v4 = MEMORY[0x1E1296800](v2, *(v0 + 80));
      }

      else
      {
        v4 = *(v22 + 8 * v2);
      }

      v6 = *(v0 + 96);
      v5 = *(v0 + 104);
      v7 = *(v0 + 80);
      v8 = *(v0 + 88);
      v9 = sub_1DC517AAC();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v11 = v10 + 2;
      v10[3] = 0;
      v10[4] = v4;
      v10[5] = v8;
      v10[6] = v7;
      sub_1DC35B7A0(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v9);

      v12 = *(v0 + 96);
      if (v6 == 1)
      {
        sub_1DC40531C(*(v0 + 96));
      }

      else
      {
        sub_1DC517A9C();
        (*(*(v9 - 8) + 8))(v12, v9);
      }

      if (*v11)
      {
        v13 = v10[3];
        v14 = *v11;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1DC517A7C();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      if (v17 | v15)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v18 = 0;
      }

      ++v2;
      v19 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1DC40531C(v19);
    }

    while (v25 != v2);
  }

  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  *v20 = v0;
  v20[1] = sub_1DC404958;
  v21 = *(v0 + 72);

  return sub_1DC404BA4(0, 0);
}

uint64_t sub_1DC404958()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  v2 = v1[14];
  v3 = v1[13];
  v4 = v1[12];
  v5 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;

  OUTLINED_FUNCTION_2_2();

  return v7();
}

uint64_t sub_1DC404A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*a4 + 136);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  OUTLINED_FUNCTION_5(v11);

  return v13(a5, a6);
}

uint64_t sub_1DC404BA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1DC517A7C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DC404C44, v4, v6);
}

uint64_t sub_1DC404C44()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (sub_1DC517B0C())
  {
    OUTLINED_FUNCTION_2_2();

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x1E69E8708] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
    OUTLINED_FUNCTION_6_26();
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_0_52();

    return MEMORY[0x1EEE6DAC8](v6);
  }
}

uint64_t sub_1DC404D44()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1DC404F48;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1DC404E50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1DC404E50()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1DC517B0C())
    {
      if (v2)
      {
        swift_willThrow();
      }

      OUTLINED_FUNCTION_2_2();

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
  OUTLINED_FUNCTION_6_26();
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_52();

  return MEMORY[0x1EEE6DAC8](v9);
}

uint64_t sub_1DC404F48()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1DC517B0C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_2_2();

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
    OUTLINED_FUNCTION_6_26();
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_0_52();

    return MEMORY[0x1EEE6DAC8](v9);
  }
}

uint64_t sub_1DC40504C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

char *sub_1DC405098(char *a1, int64_t a2, char a3)
{
  result = sub_1DC4050B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC4050B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7F0, &qword_1DC5299E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC4051B8()
{
  OUTLINED_FUNCTION_41_5();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_5(v4);

  return sub_1DC4045A8();
}

uint64_t sub_1DC40527C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_5(v5);

  return sub_1DC404A78(v6, v7, v8, v2, v3, v4);
}

uint64_t sub_1DC40531C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC4053D8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1DC405410(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *sub_1DC4054A8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  result[3] = a1;
  result[4] = v5;
  result[2] = a2;
  return result;
}

uint64_t sub_1DC4054F4()
{
  v1 = *(*v0 + 120);

  v2 = v1(v6);
  v4 = v3;
  MEMORY[0x1E12962A0]();
  sub_1DC301904(*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DC517A5C();
  return v2(v6, 0);
}

uint64_t sub_1DC40559C(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DC40562C, 0, 0);
}

uint64_t sub_1DC40562C()
{
  v31 = v0;
  v30 = *MEMORY[0x1E69E9840];
  v1 = sub_1DC517B8C();
  sub_1DC297814();
  v2 = sub_1DC39902C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    v6 = *(v3 + 24);
    v7 = sub_1DC5183EC();
    v9 = sub_1DC291244(v7, v8, &v28);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1DC287000, v2, v1, "Running graph node with service %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E1298840](v5, -1, -1);
    MEMORY[0x1E1298840](v4, -1, -1);
  }

  v10 = *(v0[3] + 16);
  v0[2] = *(v0[4] + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
  v11 = sub_1DC51777C();
  v13 = sub_1DC2A5614(v11, v12, v10);

  if (v13)
  {
    v0[2] = 0;
    v14 = [v13 runAndReturnError_];
    v15 = v0[2];
    if (v14)
    {
      v16 = v15;
      swift_unknownObjectRelease();
      v17 = v0[1];
      v18 = *MEMORY[0x1E69E9840];
      goto LABEL_9;
    }

    v25 = v15;
    sub_1DC51085C();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1DC517F4C();
    v19 = sub_1DC5183EC();
    v21 = v20;

    v28 = v19;
    v29 = v21;
    MEMORY[0x1E1296160](0xD00000000000002BLL, 0x80000001DC546880);
    v22 = v28;
    v23 = v29;
    sub_1DC405A88();
    swift_allocError();
    *v24 = v22;
    v24[1] = v23;
    swift_willThrow();
  }

  v17 = v0[1];
  v26 = *MEMORY[0x1E69E9840];
LABEL_9:

  return v17();
}

uint64_t sub_1DC405934()
{
  sub_1DC5182FC();
  (*(*v0 + 152))(v2);
  return sub_1DC51833C();
}

uint64_t sub_1DC405A0C()
{
  sub_1DC5182FC();
  OUTLINED_FUNCTION_28();
  (*(v0 + 152))(v2);
  return sub_1DC51833C();
}

unint64_t sub_1DC405A88()
{
  result = qword_1ECC7D7F8;
  if (!qword_1ECC7D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D7F8);
  }

  return result;
}

unint64_t sub_1DC405AE0()
{
  result = qword_1ECC7BB90;
  if (!qword_1ECC7BB90)
  {
    type metadata accessor for GraphNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BB90);
  }

  return result;
}

uint64_t sub_1DC405B58()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_1DC405B90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_1DC405BD8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1DC405C18(a1);
  return v2;
}

uint64_t sub_1DC405C18(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  return v1;
}

uint64_t sub_1DC405C48()
{
  OUTLINED_FUNCTION_1_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC405CE4, v0, 0);
}

uint64_t sub_1DC405CE4()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_12_0();
  v3 = (*(v2 + 104))();
  if (!v3)
  {
    v4 = v0[4];
    v5 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = sub_1DC517AAC();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
    v9 = sub_1DC40652C();
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v9;
    v10[4] = v4;
    v10[5] = v6;
    v10[6] = v7;
    swift_retain_n();

    v3 = sub_1DC36C014(0, 0, v5, &unk_1DC529AE8, v10);
  }

  v0[6] = v3;
  v11 = v0[4];
  OUTLINED_FUNCTION_12_0();
  v13 = *(v12 + 112);

  v13(v14);
  sub_1DC40652C();
  v15 = *(MEMORY[0x1E69E88F0] + 4);
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1DC405EB8;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1DC405EB8()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *(v2 + 56);
  *v4 = *v1;
  *(v3 + 64) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1DC40603C;
  }

  else
  {
    v7 = sub_1DC405FD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DC405FD8()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC40603C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_2_2();
  v4 = v0[8];

  return v3();
}

uint64_t sub_1DC4060A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DC4060C4, a4, 0);
}

uint64_t sub_1DC4060C4()
{
  v1 = *(v0 + 32);
  v2 = sub_1DC40652C();
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v10 = *(v0 + 16);
  *(v3 + 16) = v10;
  *(v3 + 32) = v1;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1DC4061C8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, v10, v2, &unk_1DC529BD8, v3, v8);
}

uint64_t sub_1DC4061C8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = sub_1DC4064D0;
  }

  else
  {
    v11 = v3[5];
    v12 = v3[2];

    v10 = sub_1DC4062D8;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DC4062D8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0[2] + 112);
  OUTLINED_FUNCTION_12_0();
  v3 = *(v2 + 144);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1DC4063F0;
  v6 = v0[4];

  return v8(v6);
}

uint64_t sub_1DC4063F0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC4064D0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_2_2();

  return v3();
}

unint64_t sub_1DC40652C()
{
  result = qword_1ECC7D800;
  if (!qword_1ECC7D800)
  {
    type metadata accessor for GraphNodeRunner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D800);
  }

  return result;
}

uint64_t sub_1DC4065A4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_24(v5);

  return sub_1DC4060A0(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DC406634()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v0[12] = v3;
  v0[13] = v4;
  v0[10] = v5;
  v0[11] = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0) - 8) + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC4066E0, v2, 0);
}

unint64_t sub_1DC4066E0()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 88) + 112);
  OUTLINED_FUNCTION_12_0();
  v4 = (*(v3 + 104))();
  result = sub_1DC2C20B8(v4);
  v6 = 0;
  v43 = v4 & 0xC000000000000001;
  v44 = result;
  v45 = v4;
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  v8 = v1 & 0xFFFFFFFFFFFFFF8;
  v39 = v1 & 0xFFFFFFFFFFFFFF8;
  v40 = v1 & 0xC000000000000001;
  v38 = v1 + 32;
  v41 = v1 >> 62;
  v42 = v7;
  while (v44 != v6)
  {
    if (v43)
    {
      result = MEMORY[0x1E1296800](v6, v45);
      v9 = result;
    }

    else
    {
      if (v6 >= *(v42 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v45 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    if (v41)
    {
      result = sub_1DC51802C();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v10 = result;
    }

    else
    {
      v10 = *(v8 + 16);
    }

    result = *(v9 + 16);
    if ((result & 0x8000000000000000) != 0 || result >= v10)
    {

      sub_1DC517F4C();

      *(v0 + 72) = *(v9 + 16);
      v33 = sub_1DC51823C();
      MEMORY[0x1E1296160](v33);

      sub_1DC405A88();
      swift_allocError();
      *v34 = 0x2064696C61766E49;
      v34[1] = 0xEF20644965646F6ELL;
      swift_willThrow();

      v36 = *(v0 + 112);
      v35 = *(v0 + 120);

      OUTLINED_FUNCTION_2_2();

      return v37();
    }

    if (v40)
    {
      v28 = *(v0 + 96);
      v11 = MEMORY[0x1E1296800]();
    }

    else
    {
      if (result >= *(v8 + 16))
      {
        goto LABEL_37;
      }

      v11 = *(v38 + 8 * result);
    }

    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = sub_1DC517AAC();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    v17[4] = v11;
    v17[5] = v15;
    v17[6] = v14;
    sub_1DC35B7A0(v12, v13);
    LODWORD(v13) = __swift_getEnumTagSinglePayload(v13, 1, v16);

    v19 = *(v0 + 112);
    if (v13 == 1)
    {
      sub_1DC40531C(*(v0 + 112));
    }

    else
    {
      sub_1DC517A9C();
      (*(*(v16 - 8) + 8))(v19, v16);
    }

    if (*v18)
    {
      v20 = v17[3];
      v21 = *v18;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_1DC517A7C();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = **(v0 + 80);

    if (v24 | v22)
    {
      v26 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v22;
      *(v0 + 40) = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v26;
    *(v0 + 64) = v25;
    swift_task_create();

    result = sub_1DC40531C(v27);
    ++v6;
    v8 = v39;
  }

  v29 = *(v0 + 88);

  v30 = sub_1DC40652C();
  v31 = swift_task_alloc();
  *(v0 + 128) = v31;
  *v31 = v0;
  v31[1] = sub_1DC406BD4;
  v32 = *(v0 + 80);

  return sub_1DC404BA4(v29, v30);
}

uint64_t sub_1DC406BD4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1DC406CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*a4 + 136);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_33_0(v10);
  *v11 = v12;
  v11[1] = sub_1DC29F120;

  return v14(a5, a6);
}

uint64_t sub_1DC406E28()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_1DC407024;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_1DC406F2C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1DC406F2C()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1DC517B0C())
    {
      if (v2)
      {
        swift_willThrow();
      }

      OUTLINED_FUNCTION_2_2();

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
  OUTLINED_FUNCTION_6_26();
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_53();

  return MEMORY[0x1EEE6DAC8](v9);
}

uint64_t sub_1DC407024()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1DC517B0C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_2_2();

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
    OUTLINED_FUNCTION_6_26();
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_0_53();

    return MEMORY[0x1EEE6DAC8](v9);
  }
}

uint64_t sub_1DC407128()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v4 = v3;
  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  *v6 = v0;
  v6[1] = sub_1DC29F200;
  v8 = MEMORY[0x1E69E7288];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v4, v2, v9, v7, v8);
}

uint64_t sub_1DC4071FC()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return sub_1DC407128();
}

uint64_t sub_1DC407290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);

  return sub_1DC517ACC();
}

uint64_t sub_1DC4072E4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DC407314()
{
  sub_1DC4072E4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DC407350()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0(v4);
  *v5 = v6;
  v5[1] = sub_1DC29F200;

  return sub_1DC406634();
}

uint64_t sub_1DC4073F8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_24(v5);

  return sub_1DC406CFC(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DC407488()
{
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  result = sub_1DC517D7C();
  qword_1ECC8F608 = result;
  return result;
}

void sub_1DC407560()
{
  v0 = sub_1DC517C6C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x60))();

    if (v19)
    {
      swift_getObjectType();
      sub_1DC517D2C();
      swift_unknownObjectRelease();
      (*(v3 + 32))(v16, v14, v0);
      (*(v3 + 16))(v11, v16, v0);
      sub_1DC517C4C();
      sub_1DC2A6184(&unk_1ECC7B978, MEMORY[0x1E69E80E0]);
      v20 = OUTLINED_FUNCTION_5_31();
      v21 = *(v3 + 8);
      v21(v8, v0);
      if (v20)
      {
        v22 = OUTLINED_FUNCTION_30_6();
        (v21)(v22);
        if (qword_1ECC82D80 == -1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1DC517C5C();
        v23 = OUTLINED_FUNCTION_5_31();
        v21(v8, v0);
        if (v23)
        {
          v24 = OUTLINED_FUNCTION_30_6();
          (v21)(v24);
          if (qword_1ECC82D80 == -1)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_1DC517C3C();
          v25 = OUTLINED_FUNCTION_5_31();
          v21(v8, v0);
          v26 = OUTLINED_FUNCTION_30_6();
          (v21)(v26);
          if ((v25 & 1) == 0)
          {
            if (qword_1ECC82D80 != -1)
            {
              OUTLINED_FUNCTION_0_54();
            }

            sub_1DC517B9C();
            goto LABEL_16;
          }

          if (qword_1ECC82D80 == -1)
          {
LABEL_12:
            sub_1DC517B8C();
LABEL_16:
            sub_1DC516EFC();
            v21(v16, v0);
            return;
          }
        }
      }

      OUTLINED_FUNCTION_0_54();
      goto LABEL_12;
    }
  }
}

void sub_1DC407954()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v260 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v241 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v240 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D8F0, &unk_1DC529C20);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v243 = v17;
  OUTLINED_FUNCTION_12();
  v242 = sub_1DC5157CC();
  v18 = OUTLINED_FUNCTION_0(v242);
  v239 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v238 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  v249 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v247 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v246 = &v230 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v230 - v41;
  v43 = type metadata accessor for NLRouterTurnContext(0);
  v44 = OUTLINED_FUNCTION_35(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  v248 = v48 - v47;
  OUTLINED_FUNCTION_12();
  v49 = sub_1DC51587C();
  v50 = OUTLINED_FUNCTION_0(v49);
  v250 = v51;
  v251 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  v245 = v54 - v55;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v244 = &v230 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v252 = &v230 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v230 - v64;
  v255 = sub_1DC51588C();
  v66 = OUTLINED_FUNCTION_0(v255);
  v253 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_8();
  v72 = (v70 - v71);
  MEMORY[0x1EEE9AC00](v73);
  v254 = &v230 - v74;
  OUTLINED_FUNCTION_12();
  v75 = sub_1DC5157EC();
  v76 = OUTLINED_FUNCTION_0(v75);
  v256 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_1();
  v82 = (v81 - v80);
  v83 = sub_1DC516F5C();
  v84 = OUTLINED_FUNCTION_0(v83);
  v258 = v85;
  v259 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_1();
  v90 = v89 - v88;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v91 = sub_1DC2BE518();
  v92 = OUTLINED_FUNCTION_130();
  v257 = v90;
  sub_1DC2A2ED0("HeuristicRules.TwoStepCorrectionsRule", 37, 2, v91, v92 & 1, v90);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346830() & 1) == 0)
  {
    sub_1DC517B9C();
    v102 = OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    goto LABEL_8;
  }

  v237 = type metadata accessor for HeuristicRoutingRequest(0);
  v93 = *(v237 + 20);
  sub_1DC32C260();
  if ((v94 & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_19();
    v106 = v75;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
    goto LABEL_10;
  }

  v95 = v256;
  v96 = *(v256 + 16);
  v236 = v1;
  v96(v82, v1 + v93, v75);
  v97 = (*(v95 + 88))(v82, v75);
  if (v97 != *MEMORY[0x1E69D02C8])
  {
    (*(v95 + 8))(v82, v75);
    goto LABEL_8;
  }

  v98 = v97;
  v99 = *(v95 + 96);
  v235 = v75;
  v99(v82, v75);
  sub_1DC408B88(*v82, v65);

  v100 = v255;
  OUTLINED_FUNCTION_39(v65, 1, v255);
  if (v101)
  {
    sub_1DC28EB30(v65, &qword_1ECC7CB20, &unk_1DC529C40);
    v75 = v235;
    goto LABEL_8;
  }

  v109 = v253;
  v110 = v254;
  (*(v253 + 32))();
  sub_1DC32B814();
  if (v111)
  {
    sub_1DC517B9C();
    v112 = sub_1DC2BE518();
    sub_1DC516F0C();

    v113 = v260;
    sub_1DC32CDF4();
    (*(v109 + 8))(v110, v100);
    v103 = v113;
    v104 = 0;
LABEL_14:
    v105 = 1;
    v106 = v235;
    goto LABEL_9;
  }

  (*(v109 + 16))(v72, v110, v100);
  v114 = (*(v109 + 88))(v72, v100);
  v115 = v114;
  if (v114 == *MEMORY[0x1E69D0330])
  {
    v232 = v114;
    v233 = v98;
    (*(v109 + 96))(v72, v100);
    v116 = v250;
    v117 = v251;
    v118 = *(v250 + 32);
    v231 = (v250 + 32);
    v230 = v118;
    v118(v252, v72, v251);
    type metadata accessor for NLRouterBypassUtils();
    v119 = v100;
    v120 = type metadata accessor for NLRouterServiceRequest(0);
    v121 = v236;
    v234 = *(v236 + *(v120 + 24));
    if (sub_1DC307DE8(v234))
    {
      sub_1DC517B9C();
      v122 = sub_1DC2BE518();
      sub_1DC516F0C();

      v124 = *(v116 + 8);
      v123 = v116 + 8;
      v124(v252, v117);
      (*(v109 + 8))(v254, v119);
      v125 = *MEMORY[0x1E69D02D8];
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_12_24();
      v126();
LABEL_18:
      OUTLINED_FUNCTION_61();
      v106 = v123;
      goto LABEL_9;
    }

    sub_1DC28F358(v121 + *(v120 + 20), v42, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_39(v42, 1, v43);
    if (v101)
    {
      sub_1DC28EB30(v42, &qword_1ECC7BFD0, &unk_1DC522550);
      v136 = v260;
      v137 = v255;
      v138 = v252;
    }

    else
    {
      OUTLINED_FUNCTION_5_32();
      v139 = v248;
      sub_1DC40A8F4(v42, v248, v140);
      sub_1DC309850();
      v137 = v255;
      v138 = v252;
      if (v141)
      {
        sub_1DC517B9C();
        v142 = OUTLINED_FUNCTION_31_4();
        OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C();

        OUTLINED_FUNCTION_2_33();
        sub_1DC40AA38(v139, v143);
        (*(v116 + 8))(v138, v251);
        (*(v109 + 8))(v254, v137);
LABEL_28:
        v103 = v260;
LABEL_45:
        v104 = 1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_2_33();
      sub_1DC40AA38(v139, v144);
      v136 = v260;
    }

    sub_1DC408C50();
    if (v145 & 1) != 0 && ((sub_1DC408F2C(), (v146) || (sub_1DC409574(), (v147)))
    {
      sub_1DC51582C();
      v149 = v148;
      v150 = *MEMORY[0x1E69D0320];
      v151 = sub_1DC5157FC();
      OUTLINED_FUNCTION_35(v151);
      v153 = v249;
      (*(v152 + 104))(v249, v150, v151);
      OUTLINED_FUNCTION_61();
      v157 = __swift_storeEnumTagSinglePayload(v154, v155, v156, v151);
      MEMORY[0x1EEE9AC00](v157);
      OUTLINED_FUNCTION_26_17();
      *(v158 - 16) = v153;
      v159 = v246;
      sub_1DC51583C();

      sub_1DC28EB30(v153, &qword_1ECC7BF08, &unk_1DC522330);
      v160 = v251;
      OUTLINED_FUNCTION_39(v159, 1, v251);
      if (!v101)
      {
        v215 = v136;
        v216 = v244;
        OUTLINED_FUNCTION_210();
        v217();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
        v123 = OUTLINED_FUNCTION_15_18();
        *(v123 + 16) = xmmword_1DC522F20;
        v218 = v250;
        (*(v250 + 16))(v123 + v149, v216, v160);
        v219 = OUTLINED_FUNCTION_14_15();
        v220(v219);
        v221 = *(v218 + 8);
        v221(v216, v160);
        v221(v138, v160);
        v231(v254, v137);
        *v215 = v123;
        OUTLINED_FUNCTION_21_16();
        OUTLINED_FUNCTION_12_24();
        v222();
        goto LABEL_18;
      }

      sub_1DC28EB30(v159, &qword_1ECC7BF00, &unk_1DC529C30);
      sub_1DC517BAC();
      v161 = OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v162 = OUTLINED_FUNCTION_11_28();
      v163(v162, v160);
      (*(v253 + 8))(v254, v137);
    }

    else
    {
      if (sub_1DC308358(v234))
      {
        v164 = *(v237 + 32);
        sub_1DC409CB8();
        if (v165)
        {
          v166 = sub_1DC51582C();
          v168 = v167;
          sub_1DC51589C();
          v169 = v240;
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v170, v171, v172, v173);
          v174 = *MEMORY[0x1E69D0388];
          v175 = sub_1DC51592C();
          OUTLINED_FUNCTION_35(v175);
          v177 = v241;
          (*(v176 + 104))(v241, v174, v175);
          OUTLINED_FUNCTION_61();
          v181 = __swift_storeEnumTagSinglePayload(v178, v179, v180, v175);
          MEMORY[0x1EEE9AC00](v181);
          *(&v230 - 4) = v166;
          *(&v230 - 3) = v168;
          *(&v230 - 2) = v169;
          *(&v230 - 1) = v177;
          sub_1DC40A364();
          v183 = v242;
          v182 = v243;
          sub_1DC51501C();

          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v184, v185, v186, v183);
          sub_1DC28EB30(v177, &qword_1ECC7CB90, &unk_1DC524420);
          sub_1DC28EB30(v169, &unk_1ECC7D3D0, &qword_1DC529550);
          OUTLINED_FUNCTION_39(v182, 1, v183);
          v187 = v251;
          if (!v101)
          {
            v223 = OUTLINED_FUNCTION_11_28();
            v224(v223, v187);
            v225 = OUTLINED_FUNCTION_32_14();
            v226(v225);
            v123 = *(v239 + 32);
            v227 = v238;
            (v123)(v238, v182, v183);
            (v123)(v260, v227, v183);
            v228 = *MEMORY[0x1E69D02E8];
            OUTLINED_FUNCTION_21_16();
            OUTLINED_FUNCTION_12_24();
            v229();
            goto LABEL_18;
          }

          sub_1DC28EB30(v182, &qword_1ECC7D8F0, &unk_1DC529C20);
          sub_1DC517BAC();
          v188 = OUTLINED_FUNCTION_31_4();
          OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C();

          v189 = OUTLINED_FUNCTION_11_28();
          v190(v189, v187);
          v191 = OUTLINED_FUNCTION_32_14();
          v192(v191);
          goto LABEL_28;
        }
      }

      sub_1DC51582C();
      v194 = v193;
      sub_1DC5157FC();
      v195 = v249;
      OUTLINED_FUNCTION_19();
      v200 = __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
      MEMORY[0x1EEE9AC00](v200);
      OUTLINED_FUNCTION_26_17();
      *(v201 - 16) = v195;
      v202 = v247;
      sub_1DC51583C();

      sub_1DC28EB30(v195, &qword_1ECC7BF08, &unk_1DC522330);
      v203 = v251;
      OUTLINED_FUNCTION_39(v202, 1, v251);
      v204 = v254;
      if (!v101)
      {
        v208 = v245;
        OUTLINED_FUNCTION_210();
        v209();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
        v123 = OUTLINED_FUNCTION_15_18();
        *(v123 + 16) = xmmword_1DC522F20;
        v210 = v250;
        (*(v250 + 16))(v123 + v194, v208, v203);
        v211 = OUTLINED_FUNCTION_14_15();
        v212(v211);
        v213 = *(v210 + 8);
        v213(v208, v203);
        v213(v252, v203);
        v231(v204, v137);
        *v136 = v123;
        OUTLINED_FUNCTION_21_16();
        OUTLINED_FUNCTION_12_24();
        v214();
        goto LABEL_18;
      }

      sub_1DC28EB30(v202, &qword_1ECC7BF00, &unk_1DC529C30);
      sub_1DC517BAC();
      v205 = OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v206 = OUTLINED_FUNCTION_11_28();
      v207(v206, v203);
      (*(v253 + 8))(v204, v137);
    }

    v103 = v136;
    goto LABEL_45;
  }

  v127 = *MEMORY[0x1E69D0340];
  v128 = *(v109 + 8);
  v128(v110, v100);
  if (v115 == v127)
  {
    v129 = *MEMORY[0x1E69D02F8];
    OUTLINED_FUNCTION_21_16();
    v130 = v235;
    v131(v260);
    OUTLINED_FUNCTION_61();
    v135 = v130;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    v135 = v235;
  }

  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  v128(v72, v100);
LABEL_10:
  v107 = sub_1DC2BE518();
  v108 = v257;
  sub_1DC2B8848();

  (*(v258 + 8))(v108, v259);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC408B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1DC51588C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1DC51588C();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_1DC408C50()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_56_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for NLRouterTurnContext(0);
  v17 = OUTLINED_FUNCTION_35(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = OUTLINED_FUNCTION_40();
  v21 = type metadata accessor for NLRouterServiceRequest(v20);
  sub_1DC28F358(v5 + *(v21 + 20), v15, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v15, 1, v16);
  if (v37)
  {
    sub_1DC28EB30(v15, &qword_1ECC7BFD0, &unk_1DC522550);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_32();
  sub_1DC40A8F4(v15, v1, v22);
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC40A568(*(v1 + 8), v0);
  v23 = sub_1DC307F68(v0);
  sub_1DC28EB30(v0, &qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_2_33();
  sub_1DC40AA38(v1, v24);
  if (v23)
  {
    v25 = *(v3 + 16);
    v26 = (v3 + 56);
    if (!v25)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v42 = v25;
      v28 = *(v26 - 3);
      v27 = *(v26 - 2);
      v30 = *(v26 - 1);
      v29 = *v26;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_16();
      swift_bridgeObjectRetain_n();
      v31 = sub_1DC514F0C();
      v33 = v32;
      v34 = sub_1DC514F1C();
      v36 = v35;
      v37 = v28 == v31 && v27 == v33;
      if (v37)
      {
      }

      else
      {
        v38 = sub_1DC51825C();

        if ((v38 & 1) == 0)
        {

          OUTLINED_FUNCTION_31_16();
          swift_bridgeObjectRelease_n();

          goto LABEL_18;
        }
      }

      if (v30 == v34 && v29 == v36)
      {

        OUTLINED_FUNCTION_31_16();
        swift_bridgeObjectRelease_n();

LABEL_19:

        break;
      }

      v40 = sub_1DC51825C();

      OUTLINED_FUNCTION_31_16();
      swift_bridgeObjectRelease_n();

      if (v40)
      {
        goto LABEL_19;
      }

LABEL_18:
      v26 += 4;
      v25 = v42 - 1;
      if (v42 == 1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_34();
}

void sub_1DC408F2C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v99 = sub_1DC510FDC();
  v4 = OUTLINED_FUNCTION_0(v99);
  v94 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v98 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v97 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v97);
  v95 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v96 = v15 - v14;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC51164C();
  v101 = OUTLINED_FUNCTION_0(v16);
  v102 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = sub_1DC51122C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v92 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v82 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_35_13();
  v42 = type metadata accessor for NLRouterNLParseResponse(v41);
  v43 = OUTLINED_FUNCTION_35(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v46 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v100 = v3;
  sub_1DC28F358(v3 + v46, v36, &qword_1ECC7C158, &unk_1DC5234A0);
  v47 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v36, 1, v47);
  if (v52)
  {
    sub_1DC28EB30(v36, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v42);
LABEL_6:
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v36, v0, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_9_26();
  sub_1DC40AA38(v36, v51);
  OUTLINED_FUNCTION_39(v0, 1, v42);
  if (v52)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_21();
  sub_1DC40A8F4(v0, v1, v53);
  v54 = sub_1DC40A3BC(v100);
  v93 = v54;
  if (!v54)
  {
    OUTLINED_FUNCTION_0_55();
    v80 = v1;
    goto LABEL_28;
  }

  v83 = v1;
  v55 = v101;
  v56 = v92;
  v87 = *(*v1 + 16);
  if (!v87)
  {
LABEL_26:

    OUTLINED_FUNCTION_0_55();
    v80 = v83;
LABEL_28:
    sub_1DC40AA38(v80, v79);
    goto LABEL_7;
  }

  v57 = 0;
  v58 = *(v92 + 80);
  OUTLINED_FUNCTION_24();
  v90 = v59 + v60;
  v88 = v56 + 8;
  v89 = v56 + 16;
  v100 = v102 + 16;
  v61 = (v102 + 8);
  ++v94;
  ++v95;
  v85 = v30;
  v86 = v23;
  v84 = v59;
  while (v57 < *(v59 + 16))
  {
    v62 = *(v56 + 72);
    v91 = v57;
    (*(v56 + 16))(v30, v90 + v62 * v57, v23);
    v63 = sub_1DC5111AC();
    (*(v56 + 8))(v30, v23);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = 0;
      v66 = *(v102 + 80);
      OUTLINED_FUNCTION_24();
      v68 = v63 + v67;
      while (v65 < *(v63 + 16))
      {
        (*(v102 + 16))(v22, v68 + *(v102 + 72) * v65, v55);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_23;
        }

        type metadata accessor for NLRouterBypassUtils();
        v69 = v96;
        sub_1DC51154C();
        v70 = v98;
        sub_1DC51178C();
        (*v95)(v69, v97);
        v71 = sub_1DC307E5C();
        v72 = v70;
        v55 = v101;
        (*v94)(v72, v99);
        if (v71)
        {
          v73 = sub_1DC514F1C();
          v75 = v74;
          if (v73 == sub_1DC514F1C() && v75 == v76)
          {

            (*v61)(v22, v101);
LABEL_30:

            OUTLINED_FUNCTION_0_55();
            sub_1DC40AA38(v83, v81);
            goto LABEL_7;
          }

          v78 = sub_1DC51825C();

          v55 = v101;
          (*v61)(v22, v101);
          if (v78)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_23:
          (*v61)(v22, v55);
        }

        if (v64 == ++v65)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      break;
    }

LABEL_25:
    v57 = v91 + 1;

    v23 = v86;
    v56 = v92;
    v59 = v84;
    v30 = v85;
    if (v57 == v87)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

void sub_1DC409574()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC510FDC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v101 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v97 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v97);
  v95 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v96 = v13 - v12;
  OUTLINED_FUNCTION_12();
  v98 = sub_1DC51164C();
  v14 = OUTLINED_FUNCTION_0(v98);
  v103 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1DC51122C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v91 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v90 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v40 = type metadata accessor for NLRouterNLParseResponse(0);
  v41 = OUTLINED_FUNCTION_35(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  v89 = (v45 - v44);
  v46 = OUTLINED_FUNCTION_12();
  v47 = *(type metadata accessor for NLRouterServiceRequest(v46) + 32);
  v102 = v2;
  sub_1DC28F358(v2 + v47, v33, &qword_1ECC7C158, &unk_1DC5234A0);
  v48 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v33, 1, v48);
  if (v53)
  {
    sub_1DC28EB30(v33, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v40);
LABEL_6:
    sub_1DC28EB30(v39, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v33, v39, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_9_26();
  sub_1DC40AA38(v33, v52);
  OUTLINED_FUNCTION_39(v39, 1, v40);
  if (v53)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_21();
  v54 = v89;
  sub_1DC40A8F4(v39, v89, v55);
  v56 = sub_1DC40A3BC(v102);
  v93 = v56;
  if (!v56)
  {
    OUTLINED_FUNCTION_0_55();
    v80 = v54;
    goto LABEL_24;
  }

  v87 = *v54;
  v57 = v98;
  v83 = *(v87 + 16);
  if (!v83)
  {
LABEL_22:

    OUTLINED_FUNCTION_0_55();
    v80 = v89;
LABEL_24:
    sub_1DC40AA38(v80, v79);
    goto LABEL_7;
  }

  v58 = 0;
  v59 = *(v91 + 80);
  OUTLINED_FUNCTION_24();
  v86 = v87 + v60;
  v85 = v61 + 16;
  v84 = v61 + 8;
  v99 = (v103 + 8);
  v100 = v103 + 16;
  v94 = (v101 + 8);
  ++v95;
  v92 = xmmword_1DC522F10;
  v82 = v21;
  while (v58 < *(v87 + 16))
  {
    v62 = v58;
    v64 = v90;
    v63 = v91;
    v65 = v62;
    v66 = *(v91 + 72);
    v88 = v65;
    (*(v91 + 16))(v90, v86 + v66 * v65, v21);
    v67 = sub_1DC5111AC();
    (*(v63 + 8))(v64, v21);
    v102 = *(v67 + 16);
    if (v102)
    {
      v68 = 0;
      v69 = *(v103 + 80);
      OUTLINED_FUNCTION_24();
      v101 = v67 + v70;
      while (v68 < *(v67 + 16))
      {
        (*(v103 + 16))(v20, v101 + *(v103 + 72) * v68, v57);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_19;
        }

        type metadata accessor for NLRouterBypassUtils();
        v71 = v67;
        v72 = v96;
        sub_1DC51154C();
        sub_1DC51178C();
        v73 = v72;
        v67 = v71;
        (*v95)(v73, v97);
        v74 = sub_1DC307E5C();
        (*v94)(v0, v3);
        if (v74)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
          v75 = swift_allocObject();
          *(v75 + 16) = v92;
          *(v75 + 32) = sub_1DC514F1C();
          *(v75 + 40) = v76;
          *(v75 + 48) = sub_1DC514F1C();
          *(v75 + 56) = v77;
          v104[0] = v75;

          sub_1DC40A984(v104, sub_1DC40AC6C, sub_1DC40ABA4);

          MEMORY[0x1EEE9AC00](v78);
          *(&v82 - 2) = v104;
          LOBYTE(v75) = sub_1DC40A610(sub_1DC40B514, (&v82 - 4), &unk_1F57FC6E8);

          (*v99)(v20, v98);

          if (v75)
          {

            OUTLINED_FUNCTION_0_55();
            sub_1DC40AA38(v89, v81);
            goto LABEL_7;
          }

          v57 = v98;
          v67 = v71;
        }

        else
        {
LABEL_19:
          (*v99)(v20, v57);
        }

        if (v102 == ++v68)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      break;
    }

LABEL_21:
    v58 = v88 + 1;

    v21 = v82;
    if (v58 == v83)
    {
      goto LABEL_22;
    }
  }

  __break(1u);

  __break(1u);
}

void sub_1DC409CB8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_35_13();
  v10 = type metadata accessor for HeuristicAgentKeywords(v9);
  v11 = OUTLINED_FUNCTION_35(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  sub_1DC28F358(v2, v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_39(v0, 1, v10);
  if (v17)
  {
    sub_1DC28EB30(v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  }

  else
  {
    sub_1DC40A8F4(v0, v16, type metadata accessor for HeuristicAgentKeywords);
    if (*(*(v16 + *(v10 + 20)) + 16))
    {
      v18 = *(v16 + *(v10 + 24));
      v45 = *(v16 + *(v10 + 20));
      v46 = v18;

      sub_1DC40A984(&v46, sub_1DC30CA80, sub_1DC30C468);
      v19 = v46;
      v21 = *v4;
      v20 = v4[1];
      v48 = v21;
      v49 = v20;
      v22 = *(v46 + 2);

      v23 = 0;
      for (i = (v19 + 40); ; i += 2)
      {
        if (v22 == v23)
        {

          goto LABEL_12;
        }

        if (v23 >= *(v19 + 2))
        {
          __break(1u);

          __break(1u);
          return;
        }

        v26 = *(i - 1);
        v25 = *i;

        sub_1DC329B0C();
        if (v27)
        {
          break;
        }

        ++v23;
      }

      v29 = sub_1DC329364();

      v30 = sub_1DC329368(v29);
      v32 = v31;

      v48 = v30;
      v49 = v32;
LABEL_12:
      MEMORY[0x1EEE9AC00](v28);
      *(&v45 - 2) = &v48;
      *(&v45 - 1) = v16;
      v33 = sub_1DC40A840(sub_1DC40AA08, (&v45 - 4), v45);
      if (v34)
      {
        v35 = v33;
        v36 = v34;
        v37 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v38 = sub_1DC2BE518();
        if (os_log_type_enabled(v38, v37))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v47 = v40;
          *v39 = 136315394;
          v41 = sub_1DC291244(v35, v36, &v47);

          *(v39 + 4) = v41;
          *(v39 + 12) = 2080;
          swift_beginAccess();
          v42 = v48;
          v43 = v49;

          v44 = sub_1DC291244(v42, v43, &v47);

          *(v39 + 14) = v44;
          _os_log_impl(&dword_1DC287000, v38, v37, "[TwoStepCorrectionsRule] isCurrentTurnAgentCorrection matched agent %s in %s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E1298840](v40, -1, -1);
          MEMORY[0x1E1298840](v39, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_10_25();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC40A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  swift_bridgeObjectRetain_n();
  sub_1DC51586C();
  sub_1DC51585C();
  sub_1DC28F358(a4, v10, &qword_1ECC7BF08, &unk_1DC522330);
  return sub_1DC51584C();
}

void sub_1DC40A1AC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_56_2();
  v21 = *v10;
  swift_getKeyPath();
  v22 = v8;
  v23 = v6;
  swift_bridgeObjectRetain_n();
  sub_1DC514FDC();
  swift_getKeyPath();
  v22 = v8;
  v23 = v6;
  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC28F358(v4, v0, &unk_1ECC7D3D0, &qword_1DC529550);
  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC28F358(v2, v16, &qword_1ECC7CB90, &unk_1DC524420);
  sub_1DC514FDC();
  OUTLINED_FUNCTION_34();
}

void sub_1DC40A334()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DC40A1AC();
}

unint64_t sub_1DC40A364()
{
  result = qword_1ECC7CB38;
  if (!qword_1ECC7CB38)
  {
    sub_1DC5157CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CB38);
  }

  return result;
}

uint64_t sub_1DC40A3BC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_40();
  v15 = type metadata accessor for NLRouterTurnContext(v14);
  v16 = OUTLINED_FUNCTION_35(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v19 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v19 + 20), v2, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v2, 1, v15);
  if (v20)
  {
    sub_1DC28EB30(v2, &qword_1ECC7BFD0, &unk_1DC522550);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_32();
    sub_1DC40A8F4(v2, v1, v21);
    type metadata accessor for NLRouterBypassUtils();
    sub_1DC40A568(*(v1 + 8), v9);
    v22 = sub_1DC307F68(v9);
    sub_1DC28EB30(v9, &qword_1ECC7C890, &qword_1DC5234B0);
    OUTLINED_FUNCTION_2_33();
    sub_1DC40AA38(v1, v23);
  }

  return v22;
}

uint64_t sub_1DC40A568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC510F1C();
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

BOOL sub_1DC40A610(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

BOOL sub_1DC40A6C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = a1[1];
  v26 = 25180;
  v27 = 0xE200000000000000;
  MEMORY[0x1E1296160](v12, v13);
  MEMORY[0x1E1296160](25180, 0xE200000000000000);
  v14 = v26;
  v15 = v27;
  v16 = *a2;
  v17 = a2[1];
  v26 = v16;
  v27 = v17;
  v25[0] = v14;
  v25[1] = v15;
  v18 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v18);
  (*(v19 + 16))(v11, a3, v18);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  sub_1DC2A32B0();

  sub_1DC517E2C();
  LOBYTE(v18) = v23;
  sub_1DC28EB30(v11, &qword_1ECC7CD00, &unk_1DC5259F0);

  return (v18 & 1) == 0;
}

uint64_t sub_1DC40A840(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v11[0] = v8;
    v11[1] = v7;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    v6 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1DC40A8F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC40A984(char **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DC30D6D8(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_1DC40AAA0(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1DC40AA38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC40AAA0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DC51822C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1DC517A4C();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1DC40ABA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DC51825C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC40AC6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1DC51825C();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1DC51825C();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_1DC51825C();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1DC30B0C0((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_1DC40B2A0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_1DC40B174(&v89, *v83, a3);
}

uint64_t sub_1DC40B174(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DC30D6B0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DC40B2A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DC40B2A0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1DC51825C() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1DC51825C() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_1DC40B488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DC51825C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

int64_t sub_1DC40B538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC516F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v10 = sub_1DC2BE518();
  v11 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.HallucinationRule", 32, 2, v10, v11 & 1, v8);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v12 = sub_1DC345FAC();
  v14 = v13;
  if (v12 == sub_1DC313520(1) && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1DC51825C();

    if ((v17 & 1) == 0)
    {
      sub_1DC517B9C();
      v18 = sub_1DC2BE518();
      sub_1DC516F0C();

      v19 = sub_1DC5157EC();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v19);
LABEL_31:
      v74 = sub_1DC2BE518();
      sub_1DC2B8848();

      return (*(v5 + 8))(v8, v4);
    }
  }

  v80 = a2;
  v81 = v9;
  v20 = sub_1DC328998();
  v21 = *a1;
  v22 = a1[1];
  v23 = a1;
  v24 = *(**v20 + 112);

  LOBYTE(v21) = v24(v21, v22);

  if (v21)
  {
LABEL_9:
    v25 = v23 + *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
    v26 = v80;
    sub_1DC32CDF4();
    v27 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    goto LABEL_31;
  }

  v75 = v8;
  v76 = v5;
  v77 = v4;
  v28 = *(type metadata accessor for NLRouterServiceRequest(0) + 24);
  v79 = a1;
  v29 = *(a1 + v28);

  v30 = sub_1DC31D500();
  result = sub_1DC2D69A8(*v30, v29);
  v78 = result;
  if (v33 == v34 >> 1)
  {
LABEL_16:
    swift_unknownObjectRelease();
    v42 = type metadata accessor for HeuristicRoutingRequest(0);
    v43 = v79;
    sub_1DC40BBA0(v79 + v42[7], &v82);
    if (v83)
    {
      sub_1DC28F9B0(&v82, v84);
      v44 = v42[5];
      sub_1DC32EC6C();
      v46 = v45;
      MEMORY[0x1EEE9AC00](v45);
      *(&v75 - 2) = v84;
      v47 = sub_1DC40BD58(sub_1DC40BC78, (&v75 - 4), v46);

      v48 = 0;
      v49 = *(v47 + 16);
      v50 = MEMORY[0x1E69E7CD0];
      while (v49 != v48)
      {
        if (v48 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v51 = v48 + 1;
        v52 = *(v47 + 8 * v48 + 32);

        result = sub_1DC40BE84(v53, v50);
        v50 = result;
        v48 = v51;
      }

      if (*(v50 + 16))
      {
        v54 = (v43 + v42[6]);
        v55 = *v54;
        v56 = v54[1];
        v57 = *(**sub_1DC328998() + 120);

        v57(v55, v56);

        v58 = v84[4];
        __swift_project_boxed_opaque_existential_1(v84, v84[3]);
        v59 = OUTLINED_FUNCTION_1_36(v58);
        v61 = v60(v59);

        v62 = sub_1DC322E3C(v61);
        LOBYTE(v56) = sub_1DC40BF8C(v62, v50);

        if (v56)
        {
          sub_1DC5157EC();
          v63 = OUTLINED_FUNCTION_0_56();
        }

        else
        {
          v73 = v80;
          sub_1DC32CDF4();
          v65 = sub_1DC5157EC();
          v63 = v73;
          v64 = 0;
        }

        __swift_storeEnumTagSinglePayload(v63, v64, 1, v65);
      }

      else
      {
        sub_1DC5157EC();
        v70 = OUTLINED_FUNCTION_0_56();
        __swift_storeEnumTagSinglePayload(v70, v71, 1, v72);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v84);
    }

    else
    {
      sub_1DC40BC10(&v82);
      sub_1DC517BAC();
      v66 = sub_1DC2BE518();
      sub_1DC516F0C();

      sub_1DC5157EC();
      v67 = OUTLINED_FUNCTION_0_56();
      __swift_storeEnumTagSinglePayload(v67, v68, 1, v69);
    }

    v5 = v76;
    v4 = v77;
    v8 = v75;
    goto LABEL_31;
  }

  v35 = v33;
  v36 = v34 >> 1;
  v37 = (v32 + 48 * v33 + 24);
  while (v35 < v36)
  {
    v38 = *v37;
    if (*v37)
    {
      v39 = *(v37 - 1);
      v40 = *(**v20 + 112);
      v41 = *v37;

      LOBYTE(v39) = v40(v39, v38);

      if (v39)
      {
        swift_unknownObjectRelease();
        v5 = v76;
        v4 = v77;
        v8 = v75;
        v23 = v79;
        goto LABEL_9;
      }
    }

    ++v35;
    v37 += 6;
    if (v36 == v35)
    {
      goto LABEL_16;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1DC40BBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF30, &unk_1DC525A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC40BC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF30, &unk_1DC525A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC40BC78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(**sub_1DC328998() + 120);

  v7(v5, v6);

  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v9 = OUTLINED_FUNCTION_1_36(v8);
  v11 = v10(v9);

  result = sub_1DC322E3C(v11);
  *a2 = result;
  return result;
}

uint64_t sub_1DC40BD58(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1DC40C15C(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1DC40C15C((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC40BE84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1DC2E5B58(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC40BF8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_1DC5182FC();

        sub_1DC51769C();
        v18 = sub_1DC51833C();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_1DC51825C();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC40C15C(void *a1, int64_t a2, char a3)
{
  result = sub_1DC40C17C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC40C17C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D8F8, &qword_1DC529D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC40C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_1DC40C3E4(a1, a9);
  v17 = type metadata accessor for HeuristicRoutingRequest(0);
  v18 = v17[5];
  v19 = sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0(v19);
  (*(v20 + 32))(a9 + v18, a2);
  v21 = (a9 + v17[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = a9 + v17[7];
  v23 = *(a5 + 16);
  *v22 = *a5;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a5 + 32);
  sub_1DC3B3C24(a6, a9 + v17[8], &qword_1ECC7C1E0, qword_1DC52A6E0);
  result = sub_1DC3B3C24(a7, a9 + v17[9], &qword_1ECC7CD00, &unk_1DC5259F0);
  *(a9 + v17[10]) = a8;
  return result;
}

uint64_t sub_1DC40C3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterServiceRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC40C468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for HeuristicRoutingResponse(0);
  v11 = (a4 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t sub_1DC40C4E0()
{
  v0 = sub_1DC51808C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DC40C538(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x6D614E746E656741;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001DC546EA0;
    }

    else
    {
      v6 = 0x80000001DC546EC0;
    }
  }

  else
  {
    v5 = 0x6D614E746E656741;
    v6 = 0xEA00000000007365;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001DC546EA0;
    }

    else
    {
      v2 = 0x80000001DC546EC0;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC40C644()
{
  sub_1DC51769C();
}

uint64_t sub_1DC40C6E0()
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC40C788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC40C4E0();
  *a2 = result;
  return result;
}

uint64_t sub_1DC40C7B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC2BB7FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC40C7E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC40C4E0();
  *a1 = result;
  return result;
}

uint64_t sub_1DC40C818(uint64_t a1)
{
  v2 = sub_1DC2BA9E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DC40C854(uint64_t a1)
{
  v2 = sub_1DC2BA9E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DC40C890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC37661C();
  v5 = v4;
  v27 = *(v4 + 16);
  if (v27)
  {
    v26 = a2;
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1DC28FB9C(v7, &v30);
      v9 = sub_1DC3777C0(&v30);
      v11 = v10;
      sub_1DC28F9B0(&v30, v29);
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v8;
      v12 = sub_1DC2AEB04(v9, v11);
      if (__OFADD__(v8[2], (v13 & 1) == 0))
      {
        goto LABEL_30;
      }

      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D920, "҃");
      if (sub_1DC517FFC())
      {
        v16 = sub_1DC2AEB04(v9, v11);
        if ((v15 & 1) != (v17 & 1))
        {
          sub_1DC51829C();
          __break(1u);
          goto LABEL_77;
        }

        v14 = v16;
      }

      if (v15)
      {

        v8 = v28;
        v18 = (v28[7] + 40 * v14);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_1DC28F9B0(v29, v18);
      }

      else
      {
        v8 = v28;
        v28[(v14 >> 6) + 8] |= 1 << v14;
        v19 = (v8[6] + 16 * v14);
        *v19 = v9;
        v19[1] = v11;
        sub_1DC28F9B0(v29, v8[7] + 40 * v14);
        v20 = v8[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
          goto LABEL_34;
        }

        v8[2] = v22;
      }

      ++v6;
      v7 += 40;
      if (v27 == v6)
      {

        a2 = v26;
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC8];
LABEL_15:
  sub_1DC352664(a1, a2, v8, &v30);

  if (v31)
  {
    sub_1DC40CEF8(&v30, v29, &qword_1ECC7D908, &qword_1DC529D88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = 1;
    }

    else if (OUTLINED_FUNCTION_3_29())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = 2;
    }

    else if (OUTLINED_FUNCTION_3_29())
    {
      sub_1DC40CF40(&v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = 3;
    }

    else if (OUTLINED_FUNCTION_3_29())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = 4;
    }

    else if (OUTLINED_FUNCTION_3_29())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = 5;
    }

    else if (OUTLINED_FUNCTION_3_29())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = 6;
    }

    else
    {
LABEL_31:
      if (OUTLINED_FUNCTION_3_29())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        v23 = 7;
      }

      else
      {
LABEL_34:
        if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 8;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 9;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 10;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 11;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 12;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 13;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 14;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 15;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 16;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 17;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 18;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 19;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 20;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 21;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 22;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 23;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 24;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 25;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 26;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 27;
        }

        else if (OUTLINED_FUNCTION_3_29())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v23 = 28;
        }

        else
        {
LABEL_77:
          if (OUTLINED_FUNCTION_3_29())
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v29);
            v23 = 29;
          }

          else
          {
            v24 = OUTLINED_FUNCTION_3_29();
            __swift_destroy_boxed_opaque_existential_1Tm(v29);
            if (v24)
            {
              v23 = 30;
            }

            else
            {
              v23 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v23 = 0;
  }

  sub_1DC28EB30(&v30, &qword_1ECC7D908, &qword_1DC529D88);
  return v23;
}

uint64_t sub_1DC40CEF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

unint64_t sub_1DC40CF98()
{
  result = qword_1ECC7D910;
  if (!qword_1ECC7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D910);
  }

  return result;
}

unint64_t sub_1DC40CFF0()
{
  result = qword_1ECC7BC58;
  if (!qword_1ECC7BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC58);
  }

  return result;
}

unint64_t sub_1DC40D048()
{
  result = qword_1ECC7BC60;
  if (!qword_1ECC7BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC60);
  }

  return result;
}

void sub_1DC40D0C4()
{
  type metadata accessor for NLRouterServiceRequest(319);
  if (v0 <= 0x3F)
  {
    sub_1DC5157EC();
    if (v1 <= 0x3F)
    {
      sub_1DC40D1D0();
      if (v2 <= 0x3F)
      {
        sub_1DC40D234(319, &qword_1ECC7BC48, type metadata accessor for HeuristicAgentKeywords);
        if (v3 <= 0x3F)
        {
          sub_1DC40D234(319, &qword_1ECC7BE50, MEMORY[0x1E6969770]);
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_15_19();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DC40D1D0()
{
  if (!qword_1ECC7BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D918, &qword_1DC529F38);
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BB88);
    }
  }
}

void sub_1DC40D234(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1DC40D2B0()
{
  result = sub_1DC5157EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_19();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DC40D31C()
{
  sub_1DC510C8C();
  if (v0 <= 0x3F)
  {
    sub_1DC40D3A0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_19();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DC40D3A0()
{
  if (!qword_1ECC7BA00)
  {
    v0 = sub_1DC517A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BA00);
    }
  }
}

uint64_t sub_1DC40D410()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8FA28);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8FA28);
  v2 = swift_allocObject();
  v2[2] = 7104878;
  v2[3] = 0xE300000000000000;
  v2[4] = 7104878;
  v2[5] = 0xE300000000000000;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v5 = *(v4 + 104);

  return v5(v1);
}

uint64_t sub_1DC40D4C8(uint64_t a1)
{
  v2 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v2);
  v5 = *(v4 + 8);

  return v5(a1, v3);
}

uint64_t sub_1DC40D528@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC8AFD0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8FA28);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC40D5BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC40D4C8(a1);
  *a2 = 0;
  return result;
}

uint64_t sub_1DC40D5F4()
{
  OUTLINED_FUNCTION_1_0();
  v7 = *MEMORY[0x1E69E9840];
  *(v0 + 32) = v1;
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DC40D67C()
{
  v53 = v0;
  v52[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DC517B9C();
  sub_1DC297814();
  v2 = sub_1DC399044();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_82();
    v52[0] = v5;
    *v4 = 136315138;
    v0[2] = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
    v6 = OUTLINED_FUNCTION_15_20();
    v8 = sub_1DC291244(v6, v7, v52);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_14_16(&dword_1DC287000, v9, v10, "Setting up %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v11 = v0[4];
  v0[2] = 0;
  v12 = [v11 setupAndReturnError_];
  v13 = v0[2];
  if (!v12)
  {
    v28 = v13;
    v29 = sub_1DC51085C();

    swift_willThrow();
    LOBYTE(v28) = sub_1DC517BAC();
    v19 = sub_1DC399044();
    if (os_log_type_enabled(v19, v28))
    {
      v30 = v0[4];
      v31 = swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_82();
      v52[0] = v32;
      *v31 = 136315138;
      v0[2] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
      v33 = OUTLINED_FUNCTION_15_20();
      v35 = sub_1DC291244(v33, v34, v52);

      *(v31 + 4) = v35;
      OUTLINED_FUNCTION_14_16(&dword_1DC287000, v36, v37, "Graph service setup failed: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    goto LABEL_9;
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_1DC37C698([v14 integerValue]);
  if (v17)
  {
    v18 = sub_1DC517BAC();
    v19 = sub_1DC399044();
    if (!os_log_type_enabled(v19, v18))
    {

      goto LABEL_13;
    }

    v20 = v0[4];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_82();
    v52[0] = v23;
    *v21 = 138412546;
    *(v21 + 4) = v14;
    *v22 = v14;
    *(v21 + 12) = 2080;
    v0[2] = swift_getObjectType();
    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
    v25 = OUTLINED_FUNCTION_15_20();
    v27 = sub_1DC291244(v25, v26, v52);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1DC287000, v19, v18, "Graph service setup failed with status of unknown type (%@): %s", v21, 0x16u);
    sub_1DC2BE530(v22, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

LABEL_9:
LABEL_13:
    v38 = 2;
    goto LABEL_14;
  }

  v38 = v16;
  v0[2] = v16;
  v0[3] = 1;
  sub_1DC37C7D4();
  if (sub_1DC5176CC())
  {
  }

  else
  {
    v42 = sub_1DC517BAC();
    v43 = sub_1DC399044();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = v0[4];
      v45 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v45 = 136315394;
      v0[2] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
      v46 = OUTLINED_FUNCTION_15_20();
      v48 = sub_1DC291244(v46, v47, v52);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v0[2] = v38;
      v49 = sub_1DC51777C();
      v51 = sub_1DC291244(v49, v50, v52);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_1DC287000, v43, v42, "Graph service setup failed: %s - %s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_34_10();
  v40 = *MEMORY[0x1E69E9840];

  return v39(v38);
}

uint64_t sub_1DC40DB94()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1DC516F5C();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC40DC48()
{
  v1 = v0[8];
  v2 = v0[4];
  v0[9] = sub_1DC297814();
  sub_1DC399044();
  sub_1DC516F3C();
  sub_1DC517CEC();
  v3 = sub_1DC399044();
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC522F20;
  ObjectType = swift_getObjectType();
  v0[11] = ObjectType;
  v0[2] = ObjectType;
  v0[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
  v6 = sub_1DC51777C();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1DC2C0FA4();
  v0[13] = v9;
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  OUTLINED_FUNCTION_13_25();

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DC40DDF4;
  v11 = v0[4];

  return sub_1DC40D5F4();
}

uint64_t sub_1DC40DDF4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC40DEE0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  sub_1DC517CDC();
  v9 = sub_1DC399044();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DC522F20;
  v0[3] = v4;
  v11 = sub_1DC51777C();
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = v2;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  OUTLINED_FUNCTION_13_25();

  (*(v8 + 8))(v5, v7);

  OUTLINED_FUNCTION_34_10();
  v14 = v0[15];

  return v13(v14);
}

uint64_t sub_1DC40E014(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = OUTLINED_FUNCTION_47();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DC40E03C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D928, &qword_1DC52A018);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = *(v0 + 72);
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1DC40E138;

  return MEMORY[0x1EEE6DD58](v0 + 40, &type metadata for SetupStatus, v1, 0, 0, &unk_1DC52A028, v2, &type metadata for SetupStatus);
}

uint64_t sub_1DC40E138()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DC40E23C()
{
  v1 = 0;
  v2 = v0[5];
  v3 = *(v2 + 16);
  do
  {
    v4 = v1;
    if (v3 == v1)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v2 + 8 * v1++ + 32);
    v0[7] = v5;
    v0[8] = 1;
    sub_1DC37C7D4();
  }

  while ((sub_1DC5176CC() & 1) != 0);

  OUTLINED_FUNCTION_34_10();

  v6(v3 == v4);
}

uint64_t sub_1DC40E314()
{
  v17 = v0;
  v1 = v0[11];

  v2 = sub_1DC517BAC();
  sub_1DC297814();
  v3 = sub_1DC399044();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_82();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = sub_1DC5182AC();
    v12 = sub_1DC291244(v10, v11, &v16);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1DC287000, v3, v2, "SetupGraphServices threw an error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v13 = v0[13];
  }

  OUTLINED_FUNCTION_34_10();

  return v14(0);
}

uint64_t sub_1DC40E474()
{
  OUTLINED_FUNCTION_1_0();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0) - 8) + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC40E514()
{
  v1 = sub_1DC2C20B8(*(v0 + 104));
  if (v1)
  {
    v2 = v1;
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DAC8](v1);
    }

    v3 = 0;
    v4 = *(v0 + 104);
    v5 = v4 & 0xC000000000000001;
    v26 = v4 + 32;
    v6 = &selRef_getAssetMetadata;
    v27 = v1;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x1E1296800](v3, *(v0 + 104));
      }

      else
      {
        v7 = *(v26 + 8 * v3);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      if ([swift_getObjCClassFromMetadata() v6[498]])
      {
        v9 = *(v0 + 120);
        v8 = *(v0 + 128);
        v10 = *(v0 + 112);
        v11 = sub_1DC517AAC();
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v13 = v12 + 2;
        v12[3] = 0;
        v12[4] = v10;
        v12[5] = v7;
        sub_1DC35B7A0(v8, v9);
        LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
        swift_unknownObjectRetain();
        v14 = *(v0 + 120);
        if (v9 == 1)
        {
          sub_1DC2BE530(*(v0 + 120), &unk_1ECC7D050, &qword_1DC523AC0);
        }

        else
        {
          sub_1DC517A9C();
          (*(*(v11 - 8) + 8))(v14, v11);
        }

        if (*v13)
        {
          v15 = v12[3];
          v16 = *v13;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_1DC517A7C();
          v19 = v18;
          swift_unknownObjectRelease();
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = **(v0 + 96);

        if (v19 | v17)
        {
          v21 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v17;
          *(v0 + 40) = v19;
        }

        else
        {
          v21 = 0;
        }

        v22 = *(v0 + 128);
        *(v0 + 48) = 1;
        *(v0 + 56) = v21;
        *(v0 + 64) = v20;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1DC2BE530(v22, &unk_1ECC7D050, &qword_1DC523AC0);
        v2 = v27;
        v6 = &selRef_getAssetMetadata;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
    }

    while (v2 != v3);
  }

  *(v0 + 136) = MEMORY[0x1E69E7CC0];
  v23 = *(MEMORY[0x1E69E8708] + 4);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D938, &qword_1DC52A0A0);
  *v24 = v0;
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DAC8](v1);
}

uint64_t sub_1DC40E840()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    v9 = *(v3 + 136);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC40E944()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    **(v0 + 88) = *(v0 + 136);

    OUTLINED_FUNCTION_2_2();

    return v4();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1DC40F598(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DC40F598((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    *&v7[8 * v9 + 32] = v1;
    *(v0 + 136) = v7;
    v10 = *(MEMORY[0x1E69E8708] + 4);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D938, &qword_1DC52A0A0);
    *v11 = v0;
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DAC8](v12);
  }
}

uint64_t sub_1DC40EAB0()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[15];
  v1 = v0[16];

  OUTLINED_FUNCTION_2_2();
  v4 = v0[19];

  return v3();
}

uint64_t sub_1DC40EB14()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DC40EBB0;

  return sub_1DC40DB94();
}

uint64_t sub_1DC40EBB0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC40EC9C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_2_2();
  return v1();
}

uint64_t sub_1DC40ED50(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D930, &qword_1DC52A098);
  v3 = sub_1DC517A1C();
  v2[3] = v3;
  swift_getObjCClassMetadata();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1DC40EE28;

  return sub_1DC40E014(v3);
}

uint64_t sub_1DC40EE28()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;

  v6[2](v6, v2 & 1);
  _Block_release(v6);
  OUTLINED_FUNCTION_2_2();

  return v9();
}

uint64_t sub_1DC40EF60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DC52A068;
  v10[5] = v9;
  sub_1DC40F2CC(0, 0, v7, &unk_1DC52A078, v10);
}

id sub_1DC40F070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphServiceUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC40F0C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphServiceUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC40F0FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DC29F200;

  return v7();
}

uint64_t sub_1DC40F1E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DC29F120;

  return v8();
}

uint64_t sub_1DC40F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1DC35B7A0(a3, v25 - v11);
  v13 = sub_1DC517AAC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DC2BE530(v12, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1DC517A7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DC51779C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1DC2BE530(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC2BE530(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_1DC40F598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D940, &qword_1DC52A0B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC40F698()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  *v4 = v5;
  v4[1] = sub_1DC29F200;

  return sub_1DC40E474();
}

uint64_t sub_1DC40F764()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DC29F120;

  return sub_1DC40ED50(v2, v3);
}

uint64_t sub_1DC40F814()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DC29F200;

  return sub_1DC40F0FC(v2, v3, v5);
}

uint64_t sub_1DC40F8D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1(v7);
  *v8 = v9;
  v8[1] = sub_1DC29F200;

  return sub_1DC40F1E4(a1, v3, v4, v6);
}

uint64_t sub_1DC40F998()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_2(v4);

  return v7(v6);
}

uint64_t objectdestroy_7Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1DC40FA7C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  *v4 = v5;
  v4[1] = sub_1DC29F120;

  return sub_1DC40EB14();
}

void sub_1DC40FB1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = sub_1DC51164C();
  v124 = OUTLINED_FUNCTION_0(v3);
  v125 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_1();
  v123 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v119 = sub_1DC51122C();
  v9 = OUTLINED_FUNCTION_0(v119);
  v116 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v118 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v120 = v105 - v19;
  OUTLINED_FUNCTION_12();
  v130 = sub_1DC5157EC();
  v20 = OUTLINED_FUNCTION_0(v130);
  v121 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v115 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  v117 = v105 - v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v126 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = v105 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = v105 - v39;
  v41 = type metadata accessor for NLRouterNLParseResponse(0);
  v42 = OUTLINED_FUNCTION_35(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v122 = v46 - v45;
  OUTLINED_FUNCTION_12();
  v47 = sub_1DC516F5C();
  v48 = OUTLINED_FUNCTION_0(v47);
  v127 = v49;
  v128 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  v54 = v53 - v52;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v55 = sub_1DC2BE518();
  v56 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.FindMyRule", 25, 2, v55, v56 & 1, v54);

  v57 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v57 + 32), v34, &qword_1ECC7C158, &unk_1DC5234A0);
  v58 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v58) == 1)
  {
    sub_1DC28EB30(v34, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
LABEL_4:
    sub_1DC28EB30(v40, &qword_1ECC7C160, qword_1DC5233B0);
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v130);
    v60 = v127;
    v59 = v128;
LABEL_19:
    v83 = sub_1DC2BE518();
    sub_1DC2B8848();

    (*(v60 + 8))(v54, v59);
    return;
  }

  sub_1DC28F358(v34, v40, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v34, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    goto LABEL_4;
  }

  v61 = v40;
  v62 = v122;
  sub_1DC2E53A4(v61, v122);
  v63 = type metadata accessor for HeuristicRoutingRequest(0);
  v64 = v121;
  v65 = *(v121 + 16);
  v114 = *(v63 + 20);
  v66 = v130;
  v65(v126, a1 + v114, v130);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v67 = sub_1DC3440A4();
  v69 = v68;
  if (v67 == sub_1DC312FB4(0) && v69 == v70)
  {

    goto LABEL_15;
  }

  v72 = sub_1DC51825C();

  if (v72)
  {
LABEL_15:
    v79 = v126;
    v80 = sub_1DC5157DC();
    sub_1DC2E5408(v62, type metadata accessor for NLRouterNLParseResponse);
    if (v80)
    {
      (*(v64 + 8))(v79, v66);
      v81 = 1;
      v82 = v129;
    }

    else
    {
      v82 = v129;
      (*(v64 + 32))(v129, v79, v66);
      v81 = 0;
    }

    v60 = v127;
    v59 = v128;
    __swift_storeEnumTagSinglePayload(v82, v81, 1, v66);
    goto LABEL_19;
  }

  sub_1DC3440A4();
  v73 = sub_1DC312F68();
  if (v73 == 4)
  {
    v74 = v120;
    v75 = OUTLINED_FUNCTION_34_11();
    __swift_storeEnumTagSinglePayload(v75, v76, 1, v66);
LABEL_14:
    sub_1DC28EB30(v74, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v74 = v120;
  sub_1DC312E7C(v73, v120);
  v77 = OUTLINED_FUNCTION_34_11();
  if (__swift_getEnumTagSinglePayload(v77, v78, v66) == 1)
  {
    goto LABEL_14;
  }

  v84 = *(v64 + 32);
  v109 = v64 + 32;
  v108 = v84;
  v84(v117, v74, v66);
  v110 = *(*v62 + 16);
  if (!v110)
  {
LABEL_29:
    v64 = v121;
    v66 = v130;
    (*(v121 + 8))(v117, v130);
    goto LABEL_15;
  }

  v85 = 0;
  v86 = *(v116 + 80);
  OUTLINED_FUNCTION_24();
  v89 = v87 + v88;
  v120 = v125 + 16;
  v112 = (v90 + 8);
  v113 = v125 + 8;
  v107 = v87;
  v106 = v87 + v88;
  v105[1] = v90 + 16;
  while (2)
  {
    if (v85 < *(v87 + 16))
    {
      (*(v116 + 16))(v118, v89 + *(v116 + 72) * v85, v119);
      v111 = v85 + 1;
      v91 = sub_1DC5111AC();
      v92 = 0;
      v93 = *(v91 + 16);
      while (v93 != v92)
      {
        if (v92 >= *(v91 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v95 = v124;
        v94 = v125;
        v96 = *(v125 + 80);
        OUTLINED_FUNCTION_24();
        v98 = v123;
        (*(v94 + 16))(v123, v91 + v97 + *(v94 + 72) * v92++, v95);
        sub_1DC410400();
        v100 = v99;
        (*(v94 + 8))(v98, v95);
        if (v100)
        {
          (*v112)(v118, v119);

          v101 = v115;
          v102 = v117;
          v103 = v126;
          sub_1DC32DE40();
          v64 = v121;
          v104 = *(v121 + 8);
          v66 = v130;
          v104(v102, v130);
          v104(v103, v66);
          v108(v103, v101, v66);
          v62 = v122;
          goto LABEL_15;
        }
      }

      (*v112)(v118, v119);

      v85 = v111;
      v62 = v122;
      v87 = v107;
      v89 = v106;
      if (v111 != v110)
      {
        continue;
      }

      goto LABEL_29;
    }

    break;
  }

LABEL_31:
  __break(1u);
}

void sub_1DC410400()
{
  v1 = sub_1DC51133C();
  v153 = OUTLINED_FUNCTION_0(v1);
  v154 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_15();
  v144 = v5;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v145 = v7;
  OUTLINED_FUNCTION_12();
  v150 = sub_1DC51166C();
  v8 = OUTLINED_FUNCTION_0(v150);
  v143 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v149 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v148 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC5116FC();
  v151 = OUTLINED_FUNCTION_0(v15);
  v152 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_15();
  v146 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v147 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C228, &qword_1DC523028);
  v23 = OUTLINED_FUNCTION_10(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v133 - v27;
  v29 = sub_1DC510FDC();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v133 - v37;
  v39 = sub_1DC51179C();
  v40 = OUTLINED_FUNCTION_0(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  v47 = v0;
  sub_1DC51154C();
  v48 = sub_1DC51177C();
  v49 = *(v42 + 8);
  v50 = OUTLINED_FUNCTION_30();
  v49(v50);
  if (v48)
  {
    v136 = v28;
    type metadata accessor for NLRouterBypassUtils();
    v137 = v47;
    sub_1DC51154C();
    sub_1DC51178C();
    v51 = OUTLINED_FUNCTION_30();
    v49(v51);
    v52 = sub_1DC307E5C();
    v53 = *(v32 + 8);
    v53(v38, v29);
    if (v52)
    {
      v135 = v49;

      sub_1DC51478C();

      sub_1DC28F358(v158, v156, &qword_1ECC7D3F0, &qword_1DC5238B0);
      if (v157)
      {
        sub_1DC514CBC();
        if (OUTLINED_FUNCTION_8_22())
        {

          sub_1DC51154C();
          sub_1DC51178C();
          v54 = OUTLINED_FUNCTION_11_29();
          v55(v54);
          v56 = sub_1DC510FCC();
          v57 = OUTLINED_FUNCTION_36();
          (v53)(v57);
          v142 = *(v56 + 16);
          if (v142)
          {
            v134 = v52;
            v58 = 0;
            v59 = *(v152 + 80);
            OUTLINED_FUNCTION_24();
            v146 = v56 + v60;
            v144 = v61 + 16;
            v141 = v61 + 8;
            LODWORD(v139) = *MEMORY[0x1E69D0A70];
            v138 = v143 + 13;
            v137 = v143 + 1;
            v143 = 0x80000001DC546FC0;
            v62 = v151;
            v63 = v147;
            v140 = v56;
            while (v58 < *(v56 + 16))
            {
              (*(v152 + 16))(v63, v146 + *(v152 + 72) * v58, v62);
              if (sub_1DC5116CC())
              {
                v64 = v148;
                sub_1DC5116BC();
                OUTLINED_FUNCTION_37(&v160);
                v66 = v149;
                v65 = v150;
                v67(v149, v139, v150);
                sub_1DC360110();
                OUTLINED_FUNCTION_36();
                sub_1DC5179EC();
                OUTLINED_FUNCTION_36();
                sub_1DC5179EC();
                v68 = *v137;
                v69 = v66;
                v56 = v140;
                (*v137)(v69, v65);
                v70 = v64;
                v71 = v145;
                v63 = v147;
                v68(v70, v65);
                v62 = v151;
                if (v156[0] == v155)
                {
                  v72 = sub_1DC51167C();
                  v73 = *(v72 + 16);
                  if (v73)
                  {
                    v74 = 0;
                    v75 = v153;
                    v76 = *(v154 + 80);
                    OUTLINED_FUNCTION_24();
                    v78 = v72 + v77;
                    while (1)
                    {
                      if (v74 >= *(v72 + 16))
                      {
                        goto LABEL_73;
                      }

                      (*(v154 + 16))(v71, v78 + *(v154 + 72) * v74, v75);
                      if (sub_1DC51132C())
                      {
                        if (sub_1DC51131C() == 0x614E6E6F73726570 && v79 == 0xEA0000000000656DLL)
                        {

                          OUTLINED_FUNCTION_9_27();

                          goto LABEL_66;
                        }

                        v81 = sub_1DC51825C();

                        if (v81)
                        {

                          OUTLINED_FUNCTION_9_27();
LABEL_66:

                          v127 = OUTLINED_FUNCTION_5_2();
                          v128(v127, v153);
LABEL_69:
                          v62 = v151;
                          v131 = v152;
                          v122 = v136;
                          v132 = v147;
                          sub_1DC28EB30(v158, &qword_1ECC7D3F0, &qword_1DC5238B0);
                          (*(v131 + 32))(v122, v132, v62);
                          v121 = 0;
                          goto LABEL_70;
                        }

                        if (sub_1DC51131C() == 0xD000000000000012 && v143 == v82)
                        {

                          v129 = OUTLINED_FUNCTION_5_2();
                          v130(v129, v153);
LABEL_68:

                          OUTLINED_FUNCTION_9_27();

                          goto LABEL_69;
                        }

                        v84 = sub_1DC51825C();

                        v85 = OUTLINED_FUNCTION_5_2();
                        v75 = v153;
                        v86(v85, v153);
                        if (v84)
                        {
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        v87 = OUTLINED_FUNCTION_5_2();
                        v88(v87, v75);
                      }

                      if (v73 == ++v74)
                      {

                        v62 = v151;
                        v63 = v147;
                        v56 = v140;
                        goto LABEL_29;
                      }
                    }
                  }

                  v63 = v147;
                }
              }

LABEL_29:
              ++v58;
              OUTLINED_FUNCTION_37(&v162);
              v89(v63, v62);
              if (v58 == v142)
              {
                OUTLINED_FUNCTION_9_27();

                goto LABEL_58;
              }
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            return;
          }

          v62 = v151;
LABEL_58:
          sub_1DC28EB30(v158, &qword_1ECC7D3F0, &qword_1DC5238B0);
          v121 = 1;
          v122 = v136;
LABEL_70:
          __swift_storeEnumTagSinglePayload(v122, v121, 1, v62);
          v124 = OUTLINED_FUNCTION_34_11();
          v126 = v62;
          goto LABEL_71;
        }
      }

      else
      {
        sub_1DC28EB30(v156, &qword_1ECC7D3F0, &qword_1DC5238B0);
      }

      sub_1DC28F358(v158, v156, &qword_1ECC7D3F0, &qword_1DC5238B0);
      if (!v157)
      {
        sub_1DC28EB30(v158, &qword_1ECC7D3F0, &qword_1DC5238B0);

        sub_1DC28EB30(v156, &qword_1ECC7D3F0, &qword_1DC5238B0);
        return;
      }

      sub_1DC514DCC();
      if (OUTLINED_FUNCTION_8_22())
      {

        sub_1DC51154C();
        sub_1DC51178C();
        v90 = OUTLINED_FUNCTION_11_29();
        v91(v90);
        v92 = sub_1DC510FCC();
        v93 = OUTLINED_FUNCTION_36();
        (v53)(v93);
        v94 = v92;
        v141 = *(v92 + 16);
        if (v141)
        {
          v95 = 0;
          v96 = *(v152 + 80);
          OUTLINED_FUNCTION_24();
          v145 = v92 + v97;
          v142 = v98 + 16;
          v140 = v98 + 8;
          LODWORD(v137) = *MEMORY[0x1E69D0A70];
          v136 = (v143 + 13);
          ++v143;
          v99 = (v154 + 8);
          v147 = 0x80000001DC546FA0;
          v100 = v151;
          v101 = v146;
          v134 = v52;
          v139 = v92;
          while (v95 < *(v94 + 16))
          {
            (*(v152 + 16))(v101, v145 + *(v152 + 72) * v95, v100);
            if (sub_1DC5116CC())
            {
              v102 = v148;
              sub_1DC5116BC();
              OUTLINED_FUNCTION_37(&v159);
              v104 = v149;
              v103 = v150;
              v105(v149, v137, v150);
              sub_1DC360110();
              OUTLINED_FUNCTION_30();
              sub_1DC5179EC();
              OUTLINED_FUNCTION_30();
              v101 = v146;
              sub_1DC5179EC();
              v106 = *v143;
              (*v143)(v104, v103);
              v107 = v102;
              v108 = v144;
              v109 = v103;
              v94 = v139;
              v106(v107, v109);
              if (v156[0] == v155)
              {
                v110 = sub_1DC51167C();
                v111 = *(v110 + 16);
                v112 = v153;
                if (v111)
                {
                  v113 = 0;
                  v114 = *(v154 + 80);
                  OUTLINED_FUNCTION_24();
                  v116 = v110 + v115;
                  while (v113 < *(v110 + 16))
                  {
                    (*(v154 + 16))(v108, v116 + *(v154 + 72) * v113, v112);
                    if (sub_1DC51132C())
                    {
                      if (sub_1DC51131C() == 0xD000000000000010 && v147 == v117)
                      {

                        (*v99)(v108, v153);
LABEL_62:
                        sub_1DC28EB30(v158, &qword_1ECC7D3F0, &qword_1DC5238B0);

                        OUTLINED_FUNCTION_9_27();
                        v100 = v151;
                        v122 = v138;
                        (*(v152 + 32))(v138, v146, v151);
                        v123 = 0;
                        goto LABEL_63;
                      }

                      v119 = sub_1DC51825C();

                      v112 = v153;
                      (*v99)(v108, v153);
                      if (v119)
                      {
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                      (*v99)(v108, v112);
                    }

                    if (v111 == ++v113)
                    {
                      goto LABEL_51;
                    }
                  }

                  __break(1u);
LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

LABEL_51:

                v100 = v151;
                v101 = v146;
                v94 = v139;
              }
            }

            ++v95;
            OUTLINED_FUNCTION_37(&v161);
            v120(v101, v100);
            if (v95 == v141)
            {

              goto LABEL_60;
            }
          }

          goto LABEL_75;
        }

        v100 = v151;
LABEL_60:
        sub_1DC28EB30(v158, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v123 = 1;
        v122 = v138;
LABEL_63:
        __swift_storeEnumTagSinglePayload(v122, v123, 1, v100);
        v124 = OUTLINED_FUNCTION_34_11();
        v126 = v100;
LABEL_71:
        __swift_getEnumTagSinglePayload(v124, v125, v126);
        sub_1DC28EB30(v122, &qword_1ECC7C228, &qword_1DC523028);
        return;
      }

      sub_1DC28EB30(v158, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }
}

uint64_t sub_1DC411250()
{
  sub_1DC297814();
  v0 = sub_1DC398E2C();
  v1 = *v0;
  v2 = v0[1];

  result = sub_1DC517D7C();
  qword_1EDAC9590 = result;
  return result;
}

uint64_t sub_1DC41138C()
{
  v1 = qword_1ECC8F5C0;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC4113C0(char a1)
{
  v3 = qword_1ECC8F5C0;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC4114FC(char a1)
{
  v3 = qword_1ECC8F5B8;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC411694()
{
  v0 = sub_1DC516F7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  (*(v6 + qword_1ECC8F590 + 312))(1);
  sub_1DC28D414();
  v7 = OUTLINED_FUNCTION_21_1(v3);
  v8(v7);
  v9 = sub_1DC516F6C();
  v10 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_67_5(v10))
  {
    *OUTLINED_FUNCTION_35_8() = 0;
    OUTLINED_FUNCTION_45_11();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
    OUTLINED_FUNCTION_66();
  }

  v16 = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_36();
  return v18(v17);
}

void sub_1DC4117EC()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_77_6();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D948, &unk_1DC52A108);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_42_11();
  v24 = *MEMORY[0x1E69D0530];
  v25 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v25);
  v27 = *(v26 + 104);
  v28 = OUTLINED_FUNCTION_62_12();
  v29(v28);
  v30 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
  OUTLINED_FUNCTION_183();
  v34 = OUTLINED_FUNCTION_44_13(v33 + qword_1ECC8F590);
  v35(v34);
  sub_1DC515AEC();
  sub_1DC51617C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  (*(*v0 + qword_1ECC8F590 + 192))(v3);
  sub_1DC515ADC();
  sub_1DC51695C();
  sub_1DC28D414();
  v40 = OUTLINED_FUNCTION_66_11();
  v41(v40);
  v42 = v5;
  v43 = sub_1DC516F6C();
  v44 = sub_1DC517B9C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_63();
    v46 = OUTLINED_FUNCTION_249();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    OUTLINED_FUNCTION_78_10(&dword_1DC287000, v48, v49, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v46, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v13 + 8))(v2, v10);
  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  sub_1DC515ADC();
  sub_1DC2C6024();

  sub_1DC28EB30(v1, &qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_34();
}

void sub_1DC411B68()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_42_11();
  v14 = *MEMORY[0x1E69D0508];
  v15 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v15);
  (*(v16 + 104))(v0, v14, v15);
  v17 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  OUTLINED_FUNCTION_183();
  v21 = OUTLINED_FUNCTION_44_13(v20 + qword_1ECC8F590);
  v22(v21);
  v23 = sub_1DC28D414();
  (*(v7 + 16))(v1, v23, v4);
  v24 = v3;
  v25 = sub_1DC516F6C();
  v26 = sub_1DC517B9C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_63();
    v28 = OUTLINED_FUNCTION_249();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_1DC287000, v25, v26, "NLRequestProcessor received message: %@", v27, 0xCu);
    sub_1DC28EB30(v28, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_54_12();
  }

  (*(v7 + 8))(v1, v4);
  sub_1DC2C664C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC411DBC()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_77_6();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_42_11();
  v21 = *v4;
  v22 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v22);
  (*(v23 + 104))(v0, v21, v22);
  v24 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
  OUTLINED_FUNCTION_183();
  v28 = OUTLINED_FUNCTION_44_13(v27 + qword_1ECC8F590);
  v29(v28);
  sub_1DC28D414();
  v30 = OUTLINED_FUNCTION_66_11();
  v31(v30);
  v32 = v6;
  v33 = sub_1DC516F6C();
  LOBYTE(v21) = sub_1DC517B9C();

  if (os_log_type_enabled(v33, v21))
  {
    v34 = OUTLINED_FUNCTION_63();
    v35 = OUTLINED_FUNCTION_249();
    *v34 = 138412290;
    *(v34 + 4) = v32;
    *v35 = v32;
    v36 = v32;
    OUTLINED_FUNCTION_78_10(&dword_1DC287000, v37, v38, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v35, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v14 + 8))(v2, v11);
  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  sub_1DC2C6024();

  sub_1DC28EB30(v1, &qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_34();
}

void sub_1DC412074()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DC510B6C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v48 = v7;
  v49 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_42_11();
  v23 = *MEMORY[0x1E69D0518];
  v24 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v24);
  v26 = *(v25 + 104);
  v27 = OUTLINED_FUNCTION_62_12();
  v28(v27);
  v29 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
  OUTLINED_FUNCTION_233();
  (*(v32 + qword_1ECC8F590 + 168))(v0);
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v33(v18);
  v34 = v4;
  v35 = sub_1DC516F6C();
  v36 = sub_1DC517B9C();

  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_63();
    v37 = OUTLINED_FUNCTION_31_17();
    *v24 = 138412290;
    *(v24 + 4) = v34;
    *v37 = v34;
    v38 = v34;
    _os_log_impl(&dword_1DC287000, v35, v36, "NLRequestProcessor received message: %@", v24, 0xCu);
    sub_1DC28EB30(v37, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v13 + 8))(v18, v10);
  sub_1DC2C664C();
  sub_1DC28FB9C(v2 + qword_1ECC7BCF0, v51);
  v39 = v52;
  v40 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_1DC5169EC();
  v41 = sub_1DC515D6C();
  v43 = v42;
  v50[3] = type metadata accessor for NLRequestProcessor();
  v50[4] = &off_1F57FCBA0;
  v50[0] = v2;
  v44 = *(*v2 + qword_1ECC8F590 + 328);

  v46 = v44(v45);
  (*(v40 + 40))(v1, v41, v43, v50, v46, v47, v39, v40);

  (*(v48 + 8))(v1, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC412430()
{
  v1 = OUTLINED_FUNCTION_70_11();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  v8 = (*(v7 + qword_1ECC8F590 + 232))();
  if (v8)
  {
    OUTLINED_FUNCTION_110(v8);
    (*(v9 + 768))(v0);
  }

  else
  {
    sub_1DC28D414();
    v11 = OUTLINED_FUNCTION_21_1(v4);
    v12(v11);
    v13 = sub_1DC516F6C();
    v14 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_67_5(v14))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_45_11();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_66();
    }

    v20 = *(v4 + 8);
    v21 = OUTLINED_FUNCTION_36();
    return v22(v21);
  }
}

void sub_1DC4125CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC510B6C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_4();
  v9 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v18(v17);
  v19 = v2;
  v20 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    v30 = v6;
    v21 = OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_36_18(v21, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v22, v23, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v6 = v30;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v12 + 8))(v17, v9);
  OUTLINED_FUNCTION_233();
  v25 = (*(v24 + qword_1ECC8F590 + 336))();
  v26 = OUTLINED_FUNCTION_110(v25);
  (*(v27 + 144))(v26);

  (*(*v1 + qword_1ECC8F590 + 216))(1);
  sub_1DC28FB9C(v1 + qword_1ECC7BCF0, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1DC5169EC();
  sub_1DC515D6C();
  v28 = OUTLINED_FUNCTION_38_13();
  v29(v28);

  (*(v6 + 8))(v0, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  OUTLINED_FUNCTION_34();
}

void sub_1DC4128A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_2();
  v8 = OUTLINED_FUNCTION_3_31();
  v9(v8);
  v10 = v1;
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v13, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v14, v15, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v16 = OUTLINED_FUNCTION_21_17();
  v12(v16);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5(v17 + qword_1ECC8F590);
  v19 = v18();
  if (v19)
  {
    OUTLINED_FUNCTION_110(v19);
    (*(v20 + 680))(v10);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_28();
    v22(v21);
    v23 = v10;
    v24 = OUTLINED_FUNCTION_69_9();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v25 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v25, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v26, v27, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v25, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v28 = OUTLINED_FUNCTION_117_0();
    v12(v28);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC412AE0(void *a1)
{
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC28D414();
  (*(v5 + 16))(v10, v11, v2);
  v12 = a1;
  v13 = sub_1DC516F6C();
  v14 = sub_1DC517B9C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_63();
    v16 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_54_15(v16, 5.7779e-34);
    _os_log_impl(&dword_1DC287000, v13, v14, "NLRequestProcessor received message: %@", v15, 0xCu);
    sub_1DC28EB30(v16, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_67();
  }

  (*(v5 + 8))(v10, v2);
  OUTLINED_FUNCTION_154();
}

void sub_1DC412C48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_2();
  v8 = OUTLINED_FUNCTION_3_31();
  v9(v8);
  v10 = v1;
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v13, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v14, v15, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v16 = OUTLINED_FUNCTION_21_17();
  v12(v16);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5(v17 + qword_1ECC8F590);
  v19 = v18();
  if (v19)
  {
    OUTLINED_FUNCTION_110(v19);
    (*(v20 + 688))(v10);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_28();
    v22(v21);
    v23 = v10;
    v24 = OUTLINED_FUNCTION_69_9();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v25 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v25, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v26, v27, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v25, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v28 = OUTLINED_FUNCTION_117_0();
    v12(v28);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC412E88()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_76_8();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v54 = (v20 - v21);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_40_2();
  v52 = *(v17 + 16);
  v53 = v23;
  v55 = v14;
  v52(v0);
  v24 = v5;
  v25 = sub_1DC516F6C();
  v26 = sub_1DC517BAC();

  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_63();
    v51 = v17;
    v27 = OUTLINED_FUNCTION_26_18();
    *v14 = 138412290;
    *(v14 + 4) = v24;
    *v27 = v24;
    v28 = v24;
    OUTLINED_FUNCTION_79_9(&dword_1DC287000, v29, v30, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v27, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v17 = v51;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();
  }

  v31 = *(v17 + 8);
  v31(v0, v14);
  v32 = *MEMORY[0x1E69D0550];
  v33 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v33);
  (*(v34 + 104))(v2, v32, v33);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  OUTLINED_FUNCTION_233();
  (*(v38 + qword_1ECC8F590 + 168))(v2);
  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  sub_1DC2C6024();

  v43 = sub_1DC28EB30(v1, &qword_1ECC7C1D8, &qword_1DC529390);
  v44 = (*(*v3 + qword_1ECC8F590 + 232))(v43);
  if (v44)
  {
    OUTLINED_FUNCTION_110(v44);
    (*(v45 + 704))(v24);
  }

  else
  {
    (v52)(v54, v53, v55);
    v46 = v24;
    v47 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v48 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v48, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v49, v50, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v48, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_31();
    }

    v31(v54, v55);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC4132AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_2();
  v8 = OUTLINED_FUNCTION_3_31();
  v9(v8);
  v10 = v1;
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v13, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v14, v15, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v16 = OUTLINED_FUNCTION_21_17();
  v12(v16);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5(v17 + qword_1ECC8F590);
  v19 = v18();
  if (v19)
  {
    OUTLINED_FUNCTION_110(v19);
    (*(v20 + 720))(v10);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_28();
    v22(v21);
    v23 = v10;
    v24 = OUTLINED_FUNCTION_69_9();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v25 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v25, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v26, v27, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v25, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v28 = OUTLINED_FUNCTION_117_0();
    v12(v28);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC4134EC()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_76_8();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v21);
  v50 = OUTLINED_FUNCTION_40_2();
  v52 = v15;
  v49 = *(v18 + 16);
  v49(v1);
  v22 = v6;
  v23 = sub_1DC516F6C();
  v24 = sub_1DC517B9C();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_63();
    v51 = v2;
    v25 = v0;
    v26 = v18;
    v27 = OUTLINED_FUNCTION_26_18();
    *v15 = 138412290;
    *(v15 + 4) = v22;
    *v27 = v22;
    v28 = v22;
    OUTLINED_FUNCTION_79_9(&dword_1DC287000, v29, v30, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v27, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v18 = v26;
    v0 = v25;
    v2 = v51;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();
  }

  v31 = *(v18 + 8);
  v31(v1, v15);
  v32 = *MEMORY[0x1E69D0548];
  v33 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v33);
  (*(v34 + 104))(v3, v32, v33);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  OUTLINED_FUNCTION_233();
  (*(v38 + qword_1ECC8F590 + 168))(v3);
  sub_1DC515C4C();
  if (swift_dynamicCastClass())
  {
    sub_1DC515C3C();
  }

  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  sub_1DC2C6024();

  v43 = sub_1DC28EB30(v2, &qword_1ECC7C1D8, &qword_1DC529390);
  if ((*(*v4 + qword_1ECC8F590 + 232))(v43))
  {
  }

  else
  {
    (v49)(v0, v50, v52);
    v44 = v22;
    v45 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v46 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v46, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v47, v48, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v46, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_31();
    }

    v31(v0, v52);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC413924()
{
  v1 = OUTLINED_FUNCTION_70_11();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  v8 = (*(v7 + qword_1ECC8F590 + 232))();
  if (v8)
  {
    OUTLINED_FUNCTION_110(v8);
    (*(v9 + 744))(v0);
    OUTLINED_FUNCTION_154();
  }

  else
  {
    sub_1DC28D414();
    v11 = OUTLINED_FUNCTION_21_1(v4);
    v12(v11);
    v13 = v0;
    v14 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v15 = OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_54_15(v15, 5.7779e-34);
      OUTLINED_FUNCTION_52_14(&dword_1DC287000, v16, v17, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v15, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v18 = *(v4 + 8);
    v19 = OUTLINED_FUNCTION_36();
    v20(v19);
    OUTLINED_FUNCTION_154();
  }
}

void sub_1DC413AF4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D948, &unk_1DC52A108);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v70 = sub_1DC51617C();
  v9 = OUTLINED_FUNCTION_0(v70);
  v67 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v66 = v14 - v13;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC516F7C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v69 = (v21 - v22);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v65 - v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_40_2();
  v27 = *(v18 + 16);
  v71 = v26;
  v72 = v27;
  (v27)(v0);
  v28 = v2;
  v29 = sub_1DC516F6C();
  v30 = sub_1DC517B9C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_63();
    v65 = v18;
    v32 = v15;
    v33 = v31;
    v34 = OUTLINED_FUNCTION_249();
    *v33 = 138412290;
    *(v33 + 4) = v28;
    *v34 = v28;
    v35 = v28;
    _os_log_impl(&dword_1DC287000, v29, v30, "NLRequestProcessor received message: %@", v33, 0xCu);
    sub_1DC28EB30(v34, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    v15 = v32;
    v18 = v65;
    OUTLINED_FUNCTION_66();
  }

  v36 = *(v18 + 8);
  v37 = v36(v0, v15);
  if (!(*(*v0 + qword_1ECC8F590 + 232))(v37))
  {
    v49 = v69;
    v72(v69, v71, v15);
    v50 = v28;
    v51 = sub_1DC516F6C();
    v52 = sub_1DC517BAC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v15;
      v54 = OUTLINED_FUNCTION_63();
      v55 = OUTLINED_FUNCTION_249();
      *v54 = 138412290;
      *(v54 + 4) = v50;
      *v55 = v50;
      v56 = v50;
      OUTLINED_FUNCTION_45_11();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      sub_1DC28EB30(v55, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      v15 = v53;
      OUTLINED_FUNCTION_66();
    }

    v47 = v49;
    goto LABEL_12;
  }

  (*(*v0 + qword_1ECC8F590 + 184))();
  v38 = v70;
  if (__swift_getEnumTagSinglePayload(v8, 1, v70) == 1)
  {
    sub_1DC28EB30(v8, &qword_1ECC7D948, &unk_1DC52A108);
    v39 = v68;
    v72(v68, v71, v15);
    v40 = sub_1DC516F6C();
    v41 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_67_5(v41))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_45_11();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_66();

      v47 = v39;
      v48 = v15;
LABEL_13:
      v36(v47, v48);
      goto LABEL_14;
    }

    v47 = v39;
LABEL_12:
    v48 = v15;
    goto LABEL_13;
  }

  v63 = v66;
  v62 = v67;
  (*(v67 + 32))(v66, v8, v38);
  OUTLINED_FUNCTION_64_2();
  (*(v64 + 712))(v28, v63);

  (*(v62 + 8))(v63, v38);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

void sub_1DC414018()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_2();
  v8 = OUTLINED_FUNCTION_3_31();
  v9(v8);
  v10 = v1;
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v13, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v14, v15, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v16 = OUTLINED_FUNCTION_21_17();
  v12(v16);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5(v17 + qword_1ECC8F590);
  v19 = v18();
  if (v19)
  {
    OUTLINED_FUNCTION_110(v19);
    (*(v20 + 728))(v10);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_28();
    v22(v21);
    v23 = v10;
    v24 = OUTLINED_FUNCTION_69_9();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v25 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v25, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v26, v27, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v25, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v28 = OUTLINED_FUNCTION_117_0();
    v12(v28);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC414258()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_2();
  v8 = OUTLINED_FUNCTION_3_31();
  v9(v8);
  v10 = v1;
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v13, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v14, v15, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v16 = OUTLINED_FUNCTION_21_17();
  v12(v16);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5(v17 + qword_1ECC8F590);
  v19 = v18();
  if (v19)
  {
    OUTLINED_FUNCTION_110(v19);
    (*(v20 + 736))(v10);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_28();
    v22(v21);
    v23 = v10;
    v24 = OUTLINED_FUNCTION_69_9();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v25 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v25, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v26, v27, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v25, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v28 = OUTLINED_FUNCTION_117_0();
    v12(v28);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC414498()
{
  v1 = OUTLINED_FUNCTION_70_11();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  v8 = (*(v7 + qword_1ECC8F590 + 256))();
  if (v8)
  {
    OUTLINED_FUNCTION_110(v8);
    (*(v9 + 192))(v0);
    OUTLINED_FUNCTION_154();
  }

  else
  {
    sub_1DC28D414();
    v11 = OUTLINED_FUNCTION_21_1(v4);
    v12(v11);
    v13 = v0;
    v14 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v15 = OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_54_15(v15, 5.7779e-34);
      OUTLINED_FUNCTION_52_14(&dword_1DC287000, v16, v17, "Unexpected nil dictationHandler while handling %@");
      sub_1DC28EB30(v15, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v18 = *(v4 + 8);
    v19 = OUTLINED_FUNCTION_36();
    v20(v19);
    OUTLINED_FUNCTION_154();
  }
}