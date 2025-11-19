unint64_t sub_1DC3037FC()
{
  result = qword_1ECC7C868;
  if (!qword_1ECC7C868)
  {
    sub_1DC511D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C868);
  }

  return result;
}

uint64_t sub_1DC303854(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1DC5172FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  v11 = sub_1DC5172DC();
  v12 = *(v7 + 8);
  v12(v10, v6);
  if (v11)
  {
    result = sub_1DC383A84(a3);
    v16 = result;
    v39 = v12;
    v40 = a2;
    v41 = a1;
    v17 = 0;
    v18 = *(a3 + 16);
    v19 = a3 + 40;
    v20 = MEMORY[0x1E69E7CC0];
    v38 = a3 + 40;
LABEL_5:
    for (i = (v19 + 16 * v17); ; i += 2)
    {
      if (v18 == v17)
      {

        v39(v40, v6);
        v33 = sub_1DC51721C();
        OUTLINED_FUNCTION_0_2(v33);
        (*(v34 + 8))(v41);
        return v20;
      }

      if (v17 >= *(a3 + 16))
      {
        break;
      }

      if (*(v16 + 16))
      {
        v23 = *(i - 1);
        v22 = *i;

        v24 = sub_1DC2AEB04(v23, v22);
        if (v25)
        {
          v26 = (*(v16 + 56) + 16 * v24);
          v27 = v26[1];
          v36 = *v26;

          result = swift_isUniquelyReferenced_nonNull_native();
          v37 = v27;
          if ((result & 1) == 0)
          {
            result = sub_1DC303F84(0, v20[2] + 1, 1, v20);
            v20 = result;
          }

          v29 = v20[2];
          v28 = v20[3];
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v35 = v29 + 1;
            result = sub_1DC303F84((v28 > 1), v29 + 1, 1, v20);
            v30 = v35;
            v20 = result;
          }

          ++v17;
          v20[2] = v30;
          v31 = &v20[4 * v29];
          v31[4] = v23;
          v31[5] = v22;
          v32 = v37;
          v31[6] = v36;
          v31[7] = v32;
          v19 = v38;
          goto LABEL_5;
        }
      }

      ++v17;
    }

    __break(1u);
  }

  else
  {

    v12(a2, v6);
    v14 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v14);
    (*(v15 + 8))(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1DC303BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      swift_bridgeObjectRetain_n();

      sub_1DC303DF0(1);
      v8 = sub_1DC517DAC();
      v10 = v9;

      sub_1DC303EB0(1uLL, v4, v5);
      sub_1DC30411C();

      sub_1DC51789C();

      MEMORY[0x1E1296160](8250, 0xE200000000000000);
      MEMORY[0x1E1296160](v7, v6);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DC2DF6FC((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2DFC38();
  v14 = sub_1DC5176AC();

  return v14;
}

uint64_t sub_1DC303DF0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DC51785C();
    v1 = sub_1DC5179AC();

    return v1;
  }

  return result;
}

unint64_t sub_1DC303EB0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1DC51785C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1DC5179AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC303F84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C878, &qword_1DC523440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C880, &unk_1DC528A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3040B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFE0, &qword_1DC5227F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC30411C()
{
  result = qword_1ECC7C870;
  if (!qword_1ECC7C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C870);
  }

  return result;
}

uint64_t sub_1DC304180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C220, &qword_1DC52F230);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_14(&v105 - v5);
  v121 = sub_1DC510FDC();
  v6 = OUTLINED_FUNCTION_0(v121);
  v115 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v11 - v10);
  v130 = sub_1DC51179C();
  v12 = OUTLINED_FUNCTION_0(v130);
  v112 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v131 = sub_1DC51164C();
  v19 = OUTLINED_FUNCTION_0(v131);
  v129 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v118 = sub_1DC51122C();
  v26 = OUTLINED_FUNCTION_0(v118);
  v114 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v117 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v105 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v105 - v38;
  v40 = type metadata accessor for NLRouterNLParseResponse(0);
  v41 = OUTLINED_FUNCTION_35(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v45 - v44);
  v46 = sub_1DC516F5C();
  v47 = OUTLINED_FUNCTION_0(v46);
  v124 = v48;
  v125 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v53 = v52 - v51;
  v54 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v55 = sub_1DC2BE518();
  v56 = OUTLINED_FUNCTION_130();
  v122 = v54;
  v123 = v53;
  sub_1DC2A2ED0("HeuristicRules.StopMediaRule", 28, 2, v55, v56 & 1, v53);

  v57 = type metadata accessor for NLRouterServiceRequest(0);
  v58 = *(v57 + 32);
  v128 = a1;
  sub_1DC28F358(a1 + v58, v35, &qword_1ECC7C158, &unk_1DC5234A0);
  v59 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v59) == 1)
  {
    sub_1DC28EB30(v35, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
LABEL_4:
    sub_1DC28EB30(v39, &qword_1ECC7C160, qword_1DC5233B0);
    v60 = sub_1DC5157EC();
    v61 = v126;
    goto LABEL_37;
  }

  sub_1DC28F358(v35, v39, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v35, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    goto LABEL_4;
  }

  v62 = v119;
  sub_1DC2E53A4(v39, v119);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v63 = sub_1DC344540();
  v65 = v64;
  if (v63 == sub_1DC312FB4(0) && v65 == v66)
  {

    v71 = v126;
  }

  else
  {
    v68 = sub_1DC51825C();

    v69 = v121;
    v70 = v120;
    v71 = v126;
    if ((v68 & 1) == 0)
    {
      v72 = type metadata accessor for NLRouterBypassUtils();
      v73 = *(v128 + *(v57 + 24));
      v116 = v72;
      result = sub_1DC308358(v73);
      if (result)
      {
        v75 = *v62;
        v107 = *(*v62 + 16);
        if (v107)
        {
          v76 = 0;
          v110 = v75 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
          v109 = v114 + 16;
          v127 = v129 + 16;
          v77 = v112 + 1;
          ++v115;
          v78 = (v129 + 8);
          v108 = v114 + 8;
          v106 = v75;
          v112 = (v129 + 8);
          while (2)
          {
            if (v76 >= *(v75 + 16))
            {
LABEL_41:
              __break(1u);
              return result;
            }

            v79 = v76;
            (*(v114 + 16))(v117, v110 + *(v114 + 72) * v76, v118);
            v111 = v79 + 1;
            result = sub_1DC5111AC();
            v80 = result;
            v81 = 0;
            v128 = *(result + 16);
            while (v128 != v81)
            {
              if (v81 >= *(v80 + 16))
              {
                __break(1u);
                goto LABEL_41;
              }

              (*(v129 + 16))(v25, v80 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v81, v131);
              sub_1DC51154C();
              v82 = sub_1DC51177C();
              v83 = *v77;
              (*v77)(v18, v130);
              if (v82)
              {
                sub_1DC51154C();
                sub_1DC51178C();
                v83(v18, v130);
                v84 = sub_1DC307E5C();
                (*v115)(v70, v69);
                if (v84)
                {

                  sub_1DC51478C();

                  sub_1DC28F358(&v134, &v132, &qword_1ECC7D3F0, &qword_1DC5238B0);
                  if (*(&v133 + 1))
                  {
                    sub_1DC514AAC();
                    if (swift_dynamicCast())
                    {

                      sub_1DC514CFC();

                      if (v132 && (v85 = sub_1DC51484C(), , v85))
                      {
                        v86 = v113;
                        sub_1DC514ADC();

                        v87 = sub_1DC514AEC();
                        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v87);
                        sub_1DC28EB30(v86, &qword_1ECC7C220, &qword_1DC52F230);
                        v69 = v121;
                        v70 = v120;
                        if (EnumTagSinglePayload != 1)
                        {
                          sub_1DC28EB30(&v134, &qword_1ECC7D3F0, &qword_1DC5238B0);
                          v78 = v112;
LABEL_39:
                          (*v78)(v25, v131);
                          v98 = OUTLINED_FUNCTION_4_7();
                          v99(v98);

                          OUTLINED_FUNCTION_4();
                          sub_1DC2E5408(v119, v100);
                          v101 = *MEMORY[0x1E69D02D8];
                          v102 = sub_1DC5157EC();
                          OUTLINED_FUNCTION_35(v102);
                          v104 = v126;
                          (*(v103 + 104))(v126, v101, v102);
                          v61 = v104;
                          v93 = 0;
                          v60 = v102;
                          goto LABEL_38;
                        }
                      }

                      else
                      {

                        v69 = v121;
                        v70 = v120;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    sub_1DC28EB30(&v132, &qword_1ECC7D3F0, &qword_1DC5238B0);
                  }

                  v132 = v134;
                  v133 = v135;
                  if (*(&v135 + 1))
                  {
                    sub_1DC51482C();
                    v89 = swift_dynamicCast();
                    v78 = v112;
                    if (v89)
                    {

                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1DC28EB30(&v132, &qword_1ECC7D3F0, &qword_1DC5238B0);
                    v78 = v112;
                  }
                }
              }

              result = (*v78)(v25, v131);
              ++v81;
            }

            v90 = OUTLINED_FUNCTION_4_7();
            v91(v90);

            v76 = v111;
            v71 = v126;
            v62 = v119;
            v75 = v106;
            if (v111 != v107)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_4();
  sub_1DC2E5408(v62, v92);
  v60 = sub_1DC5157EC();
  v61 = v71;
LABEL_37:
  v93 = 1;
LABEL_38:
  __swift_storeEnumTagSinglePayload(v61, v93, 1, v60);
  v95 = v124;
  v94 = v125;
  v96 = v123;
  v97 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v95 + 8))(v96, v94);
}

uint64_t sub_1DC304CF8()
{
  v0 = swift_allocObject();
  sub_1DC304D30();
  return v0;
}

uint64_t sub_1DC304D30()
{
  v1 = sub_1DC516DFC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1DC516DEC();
  *(v0 + 24) = 0;
  *(v0 + 28) = 0;
  return v0;
}

void sub_1DC304D7C(char a1)
{
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 28) = a1;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1DC304DBC()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 28);
  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

uint64_t sub_1DC304DF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 29, 7);
}

uint64_t sub_1DC304E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        v6 = a2 == a5 && a3 == a6;
        if (v6 || (sub_1DC51825C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DC304EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DC51832C();
  sub_1DC51832C();
  if (!a4)
  {
    return sub_1DC51831C();
  }

  sub_1DC51831C();
  OUTLINED_FUNCTION_45();

  return sub_1DC51769C();
}

uint64_t sub_1DC304F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (a3)
  {
    OUTLINED_FUNCTION_45();
    sub_1DC51769C();
  }

  return sub_1DC51833C();
}

uint64_t sub_1DC304FF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (v4)
  {
    sub_1DC51769C();
  }

  return sub_1DC51833C();
}

unint64_t sub_1DC305088(char a1, uint64_t a2, uint64_t a3)
{
  sub_1DC517F4C();

  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E1296160](v6, v7);

  MEMORY[0x1E1296160](0x617053726D646D20, 0xEB0000000020736ELL);
  v8 = MEMORY[0x1E12962D0](a2, &type metadata for MDMRSpan);
  MEMORY[0x1E1296160](v8);

  MEMORY[0x1E1296160](0x49797469746E6520, 0xEB00000000207364);
  v9 = MEMORY[0x1E12962D0](a3, MEMORY[0x1E69E6158]);
  MEMORY[0x1E1296160](v9);

  return 0xD000000000000012;
}

unint64_t sub_1DC3051D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DC308ACC(a3);
  v68 = 0;
  v69 = 0xE000000000000000;

  v6 = sub_1DC517B9C();
  sub_1DC297814();
  v7 = sub_1DC2BE518();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = MEMORY[0x1E12962D0](v5, &type metadata for MDMRSpan);
    v11 = sub_1DC291244(v9, v10, &v66);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;

    v12 = OUTLINED_FUNCTION_36();
    v15 = sub_1DC291244(v12, v13, v14);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DC287000, v7, v6, "Decorating utterance with spans %s for query %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v16 = *(v5 + 16);
  if (v16)
  {
    v18 = *(v5 + 32);
    v17 = *(v5 + 36);
    v63 = *(v5 + 48);

    OUTLINED_FUNCTION_45();
    sub_1DC3294A0();

    v19 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1E1296160](v19);

    v62 = v5;
    v20 = (v5 + 72);
    for (i = v16 - 1; ; --i)
    {
      sub_1DC428688(6);
      MEMORY[0x1E1296120]();

      v66 = a1;
      v67 = a2;
      sub_1DC2A32B0();
      swift_bridgeObjectRetain_n();
      v21 = OUTLINED_FUNCTION_73_0(v18, &v66);
      v66 = a1;
      v67 = a2;

      result = OUTLINED_FUNCTION_73_0(v17, &v66);
      if (result >> 14 < v21 >> 14)
      {
        break;
      }

      v23 = OUTLINED_FUNCTION_72_2();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      MEMORY[0x1E1296130](v23, v25, v27, v29);

      sub_1DC428688(7);
      MEMORY[0x1E1296120]();

      if (!i)
      {

        v5 = v62;
        goto LABEL_10;
      }

      v31 = *(v20 - 4);
      v30 = *(v20 - 3);
      v32 = *v20;

      v66 = a1;
      v67 = a2;

      v33 = OUTLINED_FUNCTION_73_0(v17, &v66);
      v66 = a1;
      v67 = a2;

      result = OUTLINED_FUNCTION_73_0(v31, &v66);
      if (result >> 14 < v33 >> 14)
      {
        goto LABEL_22;
      }

      v64 = v30;
      v34 = v31;
      v35 = OUTLINED_FUNCTION_72_2();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = v35;
      v18 = v34;
      MEMORY[0x1E1296130](v42, v37, v39, v41);

      v20 += 3;
      v17 = v64;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_10:
    v43 = sub_1DC30570C(v5);
    v45 = v44;
    v47 = v46;

    if (v47 != 1)
    {
      OUTLINED_FUNCTION_36();
      v48 = sub_1DC51783C();
      sub_1DC30B30C(v43, v45, v47);
      if (HIDWORD(v43) < v48)
      {

        OUTLINED_FUNCTION_45();
        v50 = sub_1DC329368(v49);
        v52 = v51;

        MEMORY[0x1E1296160](v50, v52);
      }
    }

    v54 = v68;
    v53 = v69;
    v55 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v55 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {

      v56 = sub_1DC517B9C();
      v57 = sub_1DC2BE518();
      if (os_log_type_enabled(v57, v56))
      {

        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66 = v59;
        *v58 = 136315138;
        v60 = sub_1DC291244(v54, v53, &v66);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_1DC287000, v57, v56, "Decorated user query with md spans :%s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      return v54;
    }

    else
    {

      sub_1DC517B9C();
      v61 = sub_1DC2BE518();
      sub_1DC516F0C();

      return a1;
    }
  }

  return result;
}

uint64_t sub_1DC30570C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 24 * v1);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];

  return v3;
}

void sub_1DC30576C()
{
  OUTLINED_FUNCTION_33();
  v39 = sub_1DC51122C();
  v2 = OUTLINED_FUNCTION_0(v39);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_58_0();
  v18 = type metadata accessor for NLRouterNLParseResponse(v17);
  v19 = OUTLINED_FUNCTION_35(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = OUTLINED_FUNCTION_54_2();
  sub_1DC28F3B8(v25, v26, &qword_1ECC7C158, &unk_1DC5234A0);
  v27 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v12, 1, v27);
  if (v28)
  {
    sub_1DC28EB30(v12, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v18);
    goto LABEL_6;
  }

  sub_1DC28F3B8(v12, v1, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC30C114(v12, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v1, 1, v18);
  if (v28)
  {
LABEL_6:
    sub_1DC28EB30(v1, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC517B9C();
    sub_1DC297814();
    v29 = sub_1DC2BE518();
    sub_1DC516F0C();

LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC30C0BC(v1, v24);
  v30 = *v24;
  v31 = *(*v24 + 16);
  v38[1] = v24;
  v38[2] = v4 + 16;

  v32 = 0;
  v33 = v39;
  while (1)
  {
    if (v31 == v32)
    {

      OUTLINED_FUNCTION_23_7();
      goto LABEL_7;
    }

    if (v32 >= *(v30 + 16))
    {
      break;
    }

    v34 = *(v4 + 80);
    OUTLINED_FUNCTION_24();
    (*(v4 + 16))(v0, v30 + v35 + *(v4 + 72) * v32++, v33);
    sub_1DC305AEC();
    v37 = v36;
    (*(v4 + 8))(v0, v33);
    if (v37)
    {
      OUTLINED_FUNCTION_23_7();

      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1DC305AEC()
{
  OUTLINED_FUNCTION_38_2();
  v406 = sub_1DC51166C();
  v1 = OUTLINED_FUNCTION_0(v406);
  v368 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v6);
  v382 = sub_1DC51179C();
  v7 = OUTLINED_FUNCTION_0(v382);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v431 = sub_1DC51661C();
  v10 = OUTLINED_FUNCTION_0(v431);
  v373 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v430 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v429 = v16;
  v428 = sub_1DC510FFC();
  v17 = OUTLINED_FUNCTION_0(v428);
  v372 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v22);
  v402 = sub_1DC51665C();
  v23 = OUTLINED_FUNCTION_0(v402);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v28);
  v29 = sub_1DC51133C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v442 = v31;
  v443 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v35);
  v433 = sub_1DC51667C();
  v36 = OUTLINED_FUNCTION_0(v433);
  v371 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v432 = v41 - v40;
  v42 = sub_1DC5116FC();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v57);
  v58 = sub_1DC511E1C();
  v59 = OUTLINED_FUNCTION_0(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v65);
  v395 = sub_1DC510FDC();
  v66 = OUTLINED_FUNCTION_0(v395);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v70);
  v393 = sub_1DC510EEC();
  v71 = OUTLINED_FUNCTION_0(v393);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v77 - v76);
  v377 = sub_1DC511EEC();
  v78 = OUTLINED_FUNCTION_0(v377);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v82 - v81);
  v396 = sub_1DC51164C();
  v83 = OUTLINED_FUNCTION_0(v396);
  v85 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_62();
  v370 = v89;
  v90 = *(sub_1DC5111AC() + 16);
  v91 = v42;
  v412 = v42;
  v440 = v45;
  v434 = v58;
  v426 = v61;
  v386 = v85;
  v380 = v90;
  v378 = v0;
  if (v90)
  {
    LOBYTE(v92) = 0;
    v93 = *(v85 + 80);
    OUTLINED_FUNCTION_24();
    v381 = v94 + v95;
    v391 = v73;
    v416 = (v61 + 16);
    v415 = ((v96 - 32) | 0x8000000000000000);
    v414 = v61 + 8;
    v439 = v45 + 16;
    OUTLINED_FUNCTION_62_7(&v396);
    v420 = v97;
    v99 = v98 + 16;
    v441 = v98 + 8;
    OUTLINED_FUNCTION_62_7(&v397);
    v401 = v100;
    v438 = (v45 + 8);
    OUTLINED_FUNCTION_62_7(&v398);
    v418 = v101;
    OUTLINED_FUNCTION_62_7(&v399);
    v417 = v104;
    v410 = v45 + 32;
    v435 = MEMORY[0x1E69E7CC0];
    v397 = MEMORY[0x1E69E7CC0];
    v105 = v419;
    v106 = v370;
    v107 = v91;
    v379 = v102;
    v408 = v99;
    do
    {
      if (v103 >= *(v102 + 16))
      {
        goto LABEL_158;
      }

      v383 = v103;
      (*(v85 + 16))(v106, v381 + *(v85 + 72) * v103, v396);
      if (sub_1DC51151C())
      {
        sub_1DC51161C();
        v108 = sub_1DC5111AC();
        OUTLINED_FUNCTION_37(&v395);
        v109(v376, v377);
        v388 = *(v108 + 16);
        if (v388)
        {
          v110 = v391;
          v111 = *(v391 + 80);
          OUTLINED_FUNCTION_24();
          v389 = v108 + v113;
          v387 = v108;
          do
          {
            if (v112 >= *(v108 + 16))
            {
              goto LABEL_156;
            }

            v114 = v112;
            (*(v110 + 16))(v392, v389 + *(v110 + 72) * v112, v393);
            v400 = v114 + 1;
            sub_1DC510EDC();
            (*(v110 + 8))(v392, v393);
            v115 = sub_1DC510FBC();
            v116 = *(v115 + 16);
            while (1)
            {
              if (!v116)
              {

                OUTLINED_FUNCTION_37(&v416);
                v123(v399, v395);
                v110 = v391;
                goto LABEL_63;
              }

              if (!*(v115 + 16))
              {
                goto LABEL_150;
              }

              OUTLINED_FUNCTION_22_0();
              *(v117 + 72);
              (*(v117 + 16))(v394, v115 + v118, v58);
              sub_1DC511DBC();
              OUTLINED_FUNCTION_68_0();
              v120 = v120 && v415 == v119;
              if (v120)
              {
                break;
              }

              v121 = OUTLINED_FUNCTION_51_6();

              OUTLINED_FUNCTION_37(v444);
              v122(v394, v58);
              if (v121)
              {
                goto LABEL_19;
              }
            }

            OUTLINED_FUNCTION_37(v444);
            v124(v394, v58);
LABEL_19:

            v125 = v399;
            v436 = *(sub_1DC510FCC() + 16);
            if (v436)
            {
              v126 = 0;
              v127 = *(v440 + 80);
              OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_43_5(v128 + v129);
              v115 = v411;
              i = v130;
              while (1)
              {
                if (v126 >= *(v130 + 16))
                {
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
                  return;
                }

                (*(v440 + 16))(v115, v427 + *(v440 + 72) * v126, v107);
                v131 = v107;
                v132 = v432;
                sub_1DC51168C();
                v133 = sub_1DC51666C();
                v134 = *v420;
                v135 = v433;
                (*v420)(v132, v433);
                sub_1DC5116DC();
                v136 = v115;
                v137 = sub_1DC51666C();
                v134(v132, v135);
                LODWORD(v437) = v133;
                if (v133 == v137)
                {
                  v138 = *v438;
                  v139 = OUTLINED_FUNCTION_48_0();
                  v140(v139);
                  v58 = v434;
                  v107 = v131;
                  v115 = v136;
                  goto LABEL_45;
                }

                v141 = sub_1DC51167C();
                v142 = *(v141 + 16);
                if (!v142)
                {

                  v151 = 0;
                  v152 = 0;
                  v107 = v131;
                  goto LABEL_40;
                }

                v92 = 0;
                OUTLINED_FUNCTION_22_0();
                v145 = v141 + v144;
                while (1)
                {
                  if (v92 >= *(v141 + 16))
                  {
                    __break(1u);
                    goto LABEL_144;
                  }

                  (*(v143 + 16))(v105, v145 + *(v143 + 72) * v92, v443);
                  sub_1DC51131C();
                  OUTLINED_FUNCTION_36_6();
                  if (v120 && v146 == 0xEA00000000006563)
                  {
                  }

                  else
                  {
                    v148 = OUTLINED_FUNCTION_70_1();

                    if ((v148 & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  if (sub_1DC51130C())
                  {
                    break;
                  }

LABEL_35:
                  ++v92;
                  v149 = OUTLINED_FUNCTION_52_5();
                  v150(v149);
                  v143 = v442;
                  if (v142 == v92)
                  {

                    v151 = 0;
                    v152 = 0;
                    goto LABEL_39;
                  }
                }

                sub_1DC5112FC();
                v151 = sub_1DC51664C();
                v152 = v153;
                OUTLINED_FUNCTION_37(&v431);
                OUTLINED_FUNCTION_69_3();
                v154();
                v155 = OUTLINED_FUNCTION_52_5();
                v156(v155);
LABEL_39:
                v107 = v412;
LABEL_40:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v162 = *(v435 + 2);
                  v163 = OUTLINED_FUNCTION_13_0();
                  v435 = sub_1DC30AFA8(v163, v164, v165, v166);
                }

                v158 = *(v435 + 2);
                v157 = *(v435 + 3);
                if (v158 >= v157 >> 1)
                {
                  v167 = OUTLINED_FUNCTION_26(v157);
                  v435 = sub_1DC30AFA8(v167, v158 + 1, 1, v435);
                }

                v159 = v411;
                (*v438)(v411, v107);
                v160 = v435;
                *(v435 + 2) = v158 + 1;
                v161 = &v160[24 * v158];
                *(v161 + 8) = v437;
                *(v161 + 9) = v137;
                v115 = v159;
                *(v161 + 5) = v151;
                *(v161 + 6) = v152;
                v58 = v434;
LABEL_45:
                ++v126;
                v130 = i;
                if (v126 == v436)
                {

                  v125 = v399;
                  goto LABEL_48;
                }
              }
            }

LABEL_48:
            v168 = sub_1DC510FCC();
            OUTLINED_FUNCTION_43_5(*(v168 + 16));
            if (v169)
            {
              OUTLINED_FUNCTION_22_0();
              v171 = *(v170 + 16);
              v172 = v423;
              v422 = (v168 + v173);
              v421 = v171;
              v171(v423);
              v174 = v424;
              for (i = v168; ; v168 = i)
              {
                OUTLINED_FUNCTION_63_2();
                if (v176 == v175)
                {
                  break;
                }

                if (v175 >= *(v168 + 16))
                {
                  goto LABEL_149;
                }

                v177 = *(v440 + 72);
                v437 = v175;
                v421(v174, &v422[v177 * v175], v107);
                OUTLINED_FUNCTION_57_5(&v447);
                sub_1DC5116EC();
                v178 = v429;
                sub_1DC510FEC();
                v436 = *v418;
                (v436)(v115, v428);
                sub_1DC51660C();
                v180 = v179;
                v181 = v107;
                v182 = *v417;
                v183 = v431;
                (*v417)(v178, v431);
                OUTLINED_FUNCTION_57_5(&v448);
                sub_1DC5116EC();
                v184 = v430;
                sub_1DC510FEC();
                v185 = OUTLINED_FUNCTION_54_2();
                (v436)(v185);
                sub_1DC51660C();
                v187 = v186;
                v182(v184, v183);
                v188 = *(v440 + 8);
                if (v180 >= v187)
                {
                  v174 = v424;
                  v188(v424, v181);
                  v107 = v181;
                  v105 = v419;
                  v172 = v423;
                }

                else
                {
                  v172 = v423;
                  v188(v423, v181);
                  OUTLINED_FUNCTION_37(&v440);
                  v174 = v424;
                  v189(v172, v424, v181);
                  v107 = v181;
                  v105 = v419;
                }
              }

              OUTLINED_FUNCTION_37(&v440);
              v190(v385, v172, v107);
              OUTLINED_FUNCTION_58_4(&v412);
              sub_1DC51165C();
              v191 = sub_1DC51664C();
              v193 = v192;
              OUTLINED_FUNCTION_37(&v431);
              OUTLINED_FUNCTION_69_3();
              v194();
              v195 = v397;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v203 = *(v195 + 2);
                v204 = OUTLINED_FUNCTION_13_0();
                v207 = sub_1DC2ACCD4(v204, v205, v206, v195);
                OUTLINED_FUNCTION_60_4(v207);
              }

              v58 = v434;
              OUTLINED_FUNCTION_61_3();
              v198 = *(v196 + 16);
              v197 = *(v196 + 24);
              if (v198 >= v197 >> 1)
              {
                v208 = OUTLINED_FUNCTION_26(v197);
                v209 = sub_1DC2ACCD4(v208, v198 + 1, 1, v397);
                OUTLINED_FUNCTION_60_4(v209);
              }

              (*v438)(v385, v107);
              OUTLINED_FUNCTION_37(&v416);
              v199(v399, v395);
              OUTLINED_FUNCTION_61_3();
              *(v200 + 16) = v198 + 1;
              v201 = v200 + 16 * v198;
              *(v201 + 32) = v191;
              *(v201 + 40) = v193;
            }

            else
            {

              OUTLINED_FUNCTION_37(&v416);
              v202(v125, v395);
            }

            LOBYTE(v92) = 1;
            v110 = v391;
LABEL_63:
            v108 = v387;
            v112 = v400;
          }

          while (v400 != v388);

          v106 = v370;
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_37(v404);
      v210(v106, v396);
      v103 = v383 + 1;
      v85 = v386;
      v102 = v379;
    }

    while (v383 + 1 != v380);
  }

  else
  {

    LOBYTE(v92) = 0;
    v435 = MEMORY[0x1E69E7CC0];
    v397 = MEMORY[0x1E69E7CC0];
    v107 = v91;
  }

  v211 = sub_1DC5111AC();
  v212 = v211;
  v400 = *(v211 + 16);
  if (!v400)
  {
    goto LABEL_144;
  }

  v213 = 0;
  v214 = v386;
  v399 = v211 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
  v414 = v426 + 16;
  v411 = 0x80000001DC53E3A0;
  v410 = v426 + 8;
  v438 = (v440 + 16);
  LODWORD(v420) = *MEMORY[0x1E69D0A78];
  v419 = v368 + 104;
  v418 = (v368 + 8);
  v437 = (v440 + 8);
  v401 = (v440 + 32);
  v417 = (v371 + 8);
  v441 = v442 + 16;
  v439 = v442 + 8;
  v416 = (v372 + 8);
  v415 = (v373 + 8);
  v215 = v396;
  v216 = v384;
  v390 = v211;
  do
  {
    if (v213 >= *(v212 + 16))
    {
      goto LABEL_157;
    }

    v217 = *(v214 + 72);
    v408 = v213;
    (*(v214 + 16))(v216, v399 + v217 * v213, v215);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      OUTLINED_FUNCTION_37(&v424);
      v228 = v216;
      v229 = v215;
LABEL_85:
      v227(v228, v229);
      goto LABEL_141;
    }

    sub_1DC51154C();
    if ((sub_1DC51177C() & 1) == 0)
    {
      OUTLINED_FUNCTION_37(&v423);
      v230 = OUTLINED_FUNCTION_38_6();
      v231(v230);
      OUTLINED_FUNCTION_37(&v424);
      v228 = v216;
      v229 = v396;
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_58_4(&v410);
    sub_1DC51178C();
    v218 = sub_1DC510FBC();
    v219 = *(v218 + 16);
    while (1)
    {
      if (!v219)
      {

        v232 = OUTLINED_FUNCTION_10_6();
        v233(v232);
        OUTLINED_FUNCTION_37(&v423);
        v234 = OUTLINED_FUNCTION_38_6();
        v235(v234);
        v236 = OUTLINED_FUNCTION_12_7();
        v237(v236);
        goto LABEL_140;
      }

      v220 = v398;
      if (!*(v218 + 16))
      {
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_22_0();
      *(v221 + 72);
      (*(v221 + 16))(v220, v218 + v222, v58);
      sub_1DC511DBC();
      OUTLINED_FUNCTION_68_0();
      if (v120 && v411 == v223)
      {
        break;
      }

      v225 = OUTLINED_FUNCTION_51_6();

      OUTLINED_FUNCTION_37(&v440);
      v226(v220, v58);
      if (v225)
      {
        goto LABEL_88;
      }
    }

    OUTLINED_FUNCTION_37(&v440);
    v238(v220, v58);
LABEL_88:

    v239 = sub_1DC510FCC();
    v240 = 0;
    OUTLINED_FUNCTION_43_5(*(v239 + 16));
    v436 = MEMORY[0x1E69E7CC0];
    v241 = v375;
    while (1)
    {
      OUTLINED_FUNCTION_63_2();
      if (v242 == v240)
      {
        break;
      }

      if (v240 >= *(v239 + 16))
      {
        goto LABEL_152;
      }

      v243 = v107;
      v244 = (*(v440 + 80) + 32) & ~*(v440 + 80);
      v245 = *(v440 + 72);
      (*(v440 + 16))(v241, v239 + v244 + v245 * v240, v243);
      OUTLINED_FUNCTION_58_4(&v434);
      sub_1DC5116BC();
      OUTLINED_FUNCTION_37(&v446);
      v246 = v405;
      v247 = v406;
      v248(v405, v420, v406);
      sub_1DC30C16C(&qword_1ECC7C230, MEMORY[0x1E69D0A80]);
      sub_1DC5179EC();
      sub_1DC5179EC();
      v249 = *v418;
      (*v418)(v246, v247);
      v250 = OUTLINED_FUNCTION_65_1();
      (v249)(v250);
      if (v444[1] == v444[0] && (sub_1DC5116AC() & 1) != 0 && (sub_1DC51169C() & 1) != 0)
      {
        v253 = *v401;
        (*v401)(v369, v241, v412);
        v254 = v436;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v445 = v254;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v256 = v254[2];
          sub_1DC30BC08();
          v241 = v375;
          v254 = v445;
        }

        v258 = v254[2];
        v257 = v254[3];
        if (v258 >= v257 >> 1)
        {
          OUTLINED_FUNCTION_26(v257);
          sub_1DC30BC08();
          v241 = v375;
          v254 = v445;
        }

        ++v240;
        v254[2] = v258 + 1;
        v436 = v254;
        v259 = v254 + v244 + v258 * v245;
        v107 = v412;
        v253(v259, v369, v412);
        v58 = v434;
      }

      else
      {
        v251 = OUTLINED_FUNCTION_35_7();
        v107 = v412;
        v252(v251, v412);
        ++v240;
        v58 = v434;
      }
    }

    v260 = v436;
    OUTLINED_FUNCTION_43_5(v436[2]);
    if (!v261)
    {

      v341 = OUTLINED_FUNCTION_10_6();
      v342(v341);
      OUTLINED_FUNCTION_37(&v423);
      v343 = OUTLINED_FUNCTION_38_6();
      v344(v343);
      v345 = OUTLINED_FUNCTION_12_7();
      v346(v345);
      goto LABEL_139;
    }

    v262 = 0;
    v263 = *(v440 + 80);
    OUTLINED_FUNCTION_24();
    v421 = v264;
    v422 = &v264[v260];
    do
    {
      if (v262 >= v260[2])
      {
        goto LABEL_153;
      }

      i = *(v440 + 72);
      v265 = v403;
      v424 = *(v440 + 16);
      v424(v403, &v422[i * v262], v107);
      v266 = v432;
      sub_1DC51168C();
      v267 = sub_1DC51666C();
      v268 = *v417;
      (*v417)(v266, v433);
      sub_1DC5116DC();
      v269 = sub_1DC51666C();
      v270 = OUTLINED_FUNCTION_35_0();
      (v268)(v270);
      if (v267 == v269)
      {
        v423 = *v437;
        v423(v265, v107);
        v260 = v436;
        goto LABEL_124;
      }

      v271 = sub_1DC51167C();
      v272 = *(v271 + 16);
      if (v272)
      {
        v273 = 0;
        OUTLINED_FUNCTION_22_0();
        v276 = v271 + v275;
        v277 = v413;
        do
        {
          if (v273 >= *(v271 + 16))
          {
            goto LABEL_151;
          }

          (*(v274 + 16))(v277, v276 + *(v274 + 72) * v273, v443);
          sub_1DC51131C();
          OUTLINED_FUNCTION_36_6();
          if (v120 && v278 == 0xEA00000000006563)
          {

            v277 = v413;
          }

          else
          {
            v280 = OUTLINED_FUNCTION_70_1();

            v277 = v413;
            if ((v280 & 1) == 0)
            {
              goto LABEL_116;
            }
          }

          if (sub_1DC51130C())
          {

            OUTLINED_FUNCTION_58_4(&v429);
            sub_1DC5112FC();
            v283 = sub_1DC51664C();
            v284 = v285;
            OUTLINED_FUNCTION_37(&v422);
            OUTLINED_FUNCTION_69_3();
            v286();
            v287 = OUTLINED_FUNCTION_35_7();
            v288(v287, v443);
            goto LABEL_119;
          }

LABEL_116:
          ++v273;
          v281 = OUTLINED_FUNCTION_35_7();
          v282(v281, v443);
          v274 = v442;
        }

        while (v272 != v273);
      }

      v283 = 0;
      v284 = 0;
LABEL_119:
      v289 = swift_isUniquelyReferenced_nonNull_native();
      v260 = v436;
      if ((v289 & 1) == 0)
      {
        v297 = *(v435 + 2);
        v298 = OUTLINED_FUNCTION_13_0();
        v435 = sub_1DC30AFA8(v298, v299, v300, v301);
      }

      v291 = *(v435 + 2);
      v290 = *(v435 + 3);
      v292 = v403;
      if (v291 >= v290 >> 1)
      {
        v302 = OUTLINED_FUNCTION_26(v290);
        v303 = sub_1DC30AFA8(v302, v291 + 1, 1, v435);
        v292 = v403;
        v435 = v303;
      }

      v293 = v412;
      v423 = *v437;
      v423(v292, v412);
      v294 = v435;
      *(v435 + 2) = v291 + 1;
      v295 = &v294[24 * v291];
      *(v295 + 8) = v267;
      *(v295 + 9) = v269;
      v107 = v293;
      *(v295 + 5) = v283;
      *(v295 + 6) = v284;
      v58 = v434;
LABEL_124:
      ++v262;
      OUTLINED_FUNCTION_63_2();
    }

    while (v262 != v296);
    if (!v260[2])
    {
      goto LABEL_159;
    }

    OUTLINED_FUNCTION_67_1();
    v304();
    while (1)
    {
      OUTLINED_FUNCTION_63_2();
      if (v307 == v306)
      {
        break;
      }

      if (v306 >= v260[2])
      {
        goto LABEL_154;
      }

      v421 = v306;
      v422 = v305;
      OUTLINED_FUNCTION_67_1();
      v308();
      OUTLINED_FUNCTION_57_5(&v447);
      sub_1DC5116EC();
      v309 = v107;
      v310 = v429;
      sub_1DC510FEC();
      v311 = *v416;
      v312 = v428;
      (*v416)(v260, v428);
      sub_1DC51660C();
      v314 = v313;
      v315 = *v415;
      v316 = v310;
      v317 = v431;
      (*v415)(v316, v431);
      OUTLINED_FUNCTION_57_5(&v448);
      sub_1DC5116EC();
      v318 = v430;
      sub_1DC510FEC();
      v311(v260, v312);
      sub_1DC51660C();
      v320 = v319;
      v315(v318, v317);
      if (v314 >= v320)
      {
        OUTLINED_FUNCTION_37_2();
        v324();
      }

      else
      {
        v321 = v409;
        OUTLINED_FUNCTION_37_2();
        v322();
        OUTLINED_FUNCTION_37(&v431);
        v323(v321, v407, v309);
      }

      v107 = v309;
      v58 = v434;
      v260 = v436;
    }

    OUTLINED_FUNCTION_37(&v431);
    v325(v374, v409, v107);
    sub_1DC51165C();
    v326 = sub_1DC51664C();
    v328 = v327;
    OUTLINED_FUNCTION_37(&v422);
    OUTLINED_FUNCTION_69_3();
    v329();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v347 = *(v397 + 2);
      v348 = OUTLINED_FUNCTION_13_0();
      v352 = sub_1DC2ACCD4(v348, v349, v350, v351);
      OUTLINED_FUNCTION_60_4(v352);
    }

    OUTLINED_FUNCTION_61_3();
    v332 = *(v330 + 16);
    v331 = *(v330 + 24);
    if (v332 >= v331 >> 1)
    {
      v353 = OUTLINED_FUNCTION_26(v331);
      v354 = sub_1DC2ACCD4(v353, v332 + 1, 1, v397);
      OUTLINED_FUNCTION_60_4(v354);
    }

    OUTLINED_FUNCTION_37_2();
    v333();
    v334 = OUTLINED_FUNCTION_10_6();
    v335(v334);
    OUTLINED_FUNCTION_37(&v423);
    v336(v378, v382);
    v337 = OUTLINED_FUNCTION_12_7();
    v338(v337);
    OUTLINED_FUNCTION_61_3();
    *(v339 + 16) = v332 + 1;
    v340 = v339 + 16 * v332;
    *(v340 + 32) = v326;
    *(v340 + 40) = v328;
LABEL_139:
    LOBYTE(v92) = 1;
LABEL_140:
    v212 = v390;
LABEL_141:
    v213 = v408 + 1;
    v215 = v396;
    v214 = v386;
    v216 = v384;
  }

  while (v408 + 1 != v400);
LABEL_144:
  v355 = v92;

  v356 = sub_1DC307C8C(v435);
  v357 = sub_1DC307D58(v356);
  v358 = sub_1DC517B9C();
  sub_1DC297814();
  v359 = sub_1DC2BE518();
  v360 = os_log_type_enabled(v359, v358);
  v361 = v397;
  if (v360)
  {
    v362 = swift_slowAlloc();
    v363 = swift_slowAlloc();
    v445 = v363;
    *v362 = 136315138;

    sub_1DC305088(v355 & 1, v357, v361);

    v364 = OUTLINED_FUNCTION_54_2();
    v367 = sub_1DC291244(v364, v365, v366);

    *(v362 + 4) = v367;
    _os_log_impl(&dword_1DC287000, v359, v358, "MDMR Span Info %s", v362, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v363);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_1DC307C8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DC30D8AC();
  result = MEMORY[0x1E12963F0](v2, &type metadata for MDMRSpan, v3);
  v5 = 0;
  v12 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v10 = *(i - 2);

    sub_1DC30B320(&v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

void *sub_1DC307D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DC30B1C0(*(a1 + 16), 0);
  v4 = sub_1DC30D740(&v6, v3 + 4, v2, a1);
  sub_1DC30D8A4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1DC307DE8(void *a1)
{
  if (a1[2] != 1)
  {
    return 0;
  }

  v2 = a1[7];
  if (v2)
  {
    v3 = a1[6] & 0xFFFFFFFFFFFFLL;
    v4 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  return !v5;
}

uint64_t sub_1DC307E5C()
{
  sub_1DC5138FC();
  v0 = MEMORY[0x1E1292F90]();
  result = sub_1DC2C20B8(v0);
  if (!result)
  {

    return 0;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E1296800](0, v0);
    goto LABEL_5;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 32);

LABEL_5:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC307F68(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_0();
  v9 = sub_1DC510FDC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DC28F3B8(a1, v1, &qword_1ECC7C890, &qword_1DC5234B0);
  v16 = sub_1DC510F1C();
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_39(v17, v18, v19);
  if (v20)
  {
    sub_1DC28EB30(v1, &qword_1ECC7C890, &qword_1DC5234B0);
    return 0;
  }

  else
  {
    sub_1DC510F0C();
    v21 = *(*(v16 - 8) + 8);
    v22 = OUTLINED_FUNCTION_48_0();
    v23(v22);
    v24 = *(v12 + 32);
    v25 = OUTLINED_FUNCTION_65_1();
    v26(v25);
    type metadata accessor for NLRouterBypassUtils();
    v27 = sub_1DC307E5C();
    v28 = *(v12 + 8);
    v29 = OUTLINED_FUNCTION_36();
    v30(v29);
  }

  return v27;
}

uint64_t sub_1DC308134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_25_3();
  v16 = type metadata accessor for TurnSummary(v15);
  v17 = OUTLINED_FUNCTION_35(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1DC2D8C78(*(a1 + 48 * v20 + 16), v4);
  OUTLINED_FUNCTION_39(v4, 1, v16);
  if (v26)
  {
    v21 = &qword_1ECC7BFC0;
    v22 = &unk_1DC522540;
    v23 = v4;
LABEL_8:
    sub_1DC28EB30(v23, v21, v22);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_8();
  sub_1DC30C0BC(v4, v3);
  v24 = *(v16 + 28);
  sub_1DC28F3B8(v3 + v24, v2, &qword_1ECC7BFC8, &unk_1DC524050);
  v25 = type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_39(v2, 1, v25);
  if (v26)
  {
    OUTLINED_FUNCTION_0_7();
    sub_1DC30C114(v3, v27);
    v21 = &qword_1ECC7BFC8;
    v22 = &unk_1DC524050;
    v23 = v2;
    goto LABEL_8;
  }

  sub_1DC28EB30(v2, &qword_1ECC7BFC8, &unk_1DC524050);
  v30 = *(v3 + *(v16 + 32));
  if (v30 == 2 || (v30 & 1) == 0)
  {
    sub_1DC28F3B8(v3 + v24, a2, &qword_1ECC7BFC8, &unk_1DC524050);
    OUTLINED_FUNCTION_0_7();
    return sub_1DC30C114(v3, v32);
  }

  OUTLINED_FUNCTION_0_7();
  sub_1DC30C114(v3, v31);
LABEL_9:
  v28 = type metadata accessor for TurnSummary.ExecutionSource(0);
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v28);
}

uint64_t sub_1DC308358(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  v7 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v8 = OUTLINED_FUNCTION_35(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  sub_1DC308134(a1, v1);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_39(v17, v18, v19);
  if (v20)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFC8, &unk_1DC524050);
  }

  else
  {
    sub_1DC30C0BC(v1, v16);
    v21 = OUTLINED_FUNCTION_36();
    sub_1DC30C0BC(v21, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    if (!__swift_getEnumTagSinglePayload(v13, 4, v23))
    {
      v27 = sub_1DC5161CC();
      OUTLINED_FUNCTION_35(v27);
      (*(v28 + 8))(v13);
      return 1;
    }

    OUTLINED_FUNCTION_8_3();
    sub_1DC30C114(v13, v25);
  }

  return 0;
}

uint64_t sub_1DC308500(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_56_2();
  v7 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v8 = OUTLINED_FUNCTION_35(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  sub_1DC308134(a1, v1);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_39(v17, v18, v19);
  if (v20)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFC8, &unk_1DC524050);
    LOBYTE(v1) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_17_3();
    sub_1DC30C0BC(v21, v16);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v13, 2, 4, v1);
    OUTLINED_FUNCTION_43();
    static TurnSummary.ExecutionSource.== infix(_:_:)();
    v23 = v22;
    OUTLINED_FUNCTION_8_3();
    sub_1DC30C114(v13, v24);
    if (v23)
    {
      OUTLINED_FUNCTION_8_3();
      sub_1DC30C114(v16, v25);
      LOBYTE(v1) = 1;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v13, 3, 4, v1);
      OUTLINED_FUNCTION_43();
      static TurnSummary.ExecutionSource.== infix(_:_:)();
      OUTLINED_FUNCTION_18_5();
      sub_1DC30C114(v13, v26);
      sub_1DC30C114(v16, v23);
    }
  }

  return v1 & 1;
}

void sub_1DC3086B0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v68 = v3;
  v4 = sub_1DC515F3C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v66 = v6;
  v67 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_56_8();
  v13 = sub_1DC5157EC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v31 = type metadata accessor for TurnSummary(0);
  v32 = OUTLINED_FUNCTION_35(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = *(v2 + 16);
  if (!v38)
  {
    goto LABEL_9;
  }

  sub_1DC2D8C78(*(v2 + 48 * v38 + 16), v30);
  OUTLINED_FUNCTION_39(v30, 1, v31);
  if (v42)
  {
    v39 = &qword_1ECC7BFC0;
    v40 = &unk_1DC522540;
    v41 = v30;
LABEL_8:
    sub_1DC28EB30(v41, v39, v40);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_8();
  sub_1DC30C0BC(v30, v37);
  sub_1DC28F3B8(v37 + *(v31 + 36), v0, &qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_39(v0, 1, v13);
  if (v42)
  {
    OUTLINED_FUNCTION_0_7();
    sub_1DC30C114(v37, v43);
    v39 = &qword_1ECC7CA40;
    v40 = &unk_1DC5233A0;
    v41 = v0;
    goto LABEL_8;
  }

  (*(v16 + 32))(v24, v0, v13);
  v48 = *(v16 + 16);
  v49 = OUTLINED_FUNCTION_42_2();
  v50(v49);
  if ((*(v16 + 88))(v21, v13) == *MEMORY[0x1E69D02E0])
  {
    (*(v16 + 96))(v21, v13);
    v51 = v66;
    v52 = *(v66 + 32);
    v53 = OUTLINED_FUNCTION_48_0();
    v54(v53);
    v46 = v68;
    sub_1DC515E2C();
    v55 = *(v51 + 8);
    v56 = OUTLINED_FUNCTION_31_0();
    v57(v56);
    v58 = *(v16 + 8);
    v59 = OUTLINED_FUNCTION_35_0();
    v60(v59);
    OUTLINED_FUNCTION_0_7();
    sub_1DC30C114(v37, v61);
    v45 = 0;
    goto LABEL_10;
  }

  v62 = *(v16 + 8);
  v63 = OUTLINED_FUNCTION_35_0();
  v62(v63);
  OUTLINED_FUNCTION_0_7();
  sub_1DC30C114(v37, v64);
  (v62)(v21, v13);
LABEL_9:
  sub_1DC517B9C();
  sub_1DC297814();
  v44 = sub_1DC2BE518();
  sub_1DC516F0C();

  v45 = 1;
  v46 = v68;
LABEL_10:
  v47 = sub_1DC5161CC();
  __swift_storeEnumTagSinglePayload(v46, v45, 1, v47);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC308ACC(void *a1)
{
  v26 = a1;

  sub_1DC30BFDC(&v26, sub_1DC30D6C4, &type metadata for MDMRSpan, sub_1DC30C56C, sub_1DC30C3E0);
  v1 = v26[2];
  if (v1)
  {
    v3 = v26 + 6;
    v2 = v26[6];
    v4 = v26[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
    v5 = swift_allocObject();
    v6 = *(v3 - 2);
    *(v5 + 16) = xmmword_1DC522F20;
    *(v5 + 32) = v6;
    *(v5 + 40) = v4;
    *(v5 + 48) = v2;

    while (1)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        break;
      }

LABEL_23:
      v3 += 3;
      if (!--v1)
      {
        goto LABEL_26;
      }
    }

    v9 = *(v3 - 4);
    v8 = *(v3 - 3);
    v10 = *(v3 - 1);
    v11 = *v3;
    v12 = v5 + 24 * v7;
    v13 = *(v12 + 8);
    v14 = *(v12 + 12);
    v15 = v12 + 8;
    if (v14 < v9)
    {
      v16 = *(v5 + 24);
      v17 = *v3;

      if (v7 >= v16 >> 1)
      {
        v5 = sub_1DC30AFA8((v16 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 16) = v7 + 1;
      v18 = v5 + 24 * v7;
      *(v18 + 32) = v9;
      *(v18 + 36) = v8;
      *(v18 + 40) = v10;
      *(v18 + 48) = v11;
      goto LABEL_23;
    }

    v19 = *(v15 + 16);
    if (v11)
    {
      if (v19)
      {
        v20 = v13;
        v21 = v10 == *(v15 + 8) && v11 == v19;
        if (v21 || (OUTLINED_FUNCTION_65_1(), v22 = sub_1DC51825C(), v13 = v20, (v22 & 1) != 0))
        {

          v13 = v20;
LABEL_19:
          v23 = *(v15 + 16);
          if (v8 <= v14)
          {
            v24 = v14;
          }

          else
          {
            v24 = v8;
          }

          *v15 = v13;
          *(v15 + 4) = v24;
          *(v15 + 8) = v10;
          *(v15 + 16) = v11;

          goto LABEL_23;
        }
      }
    }

    else if (!v19)
    {
LABEL_18:
      v11 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    goto LABEL_18;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_26:

  return v5;
}

uint64_t sub_1DC308CDC()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_54_0();
  v7 = sub_1DC5167EC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v13 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_71_1(*(v13 + 28));
  OUTLINED_FUNCTION_39(v0, 1, v7);
  if (v14)
  {
    sub_1DC28EB30(v0, &qword_1ECC7BFE0, &unk_1DC5253A0);
  }

  else
  {
    v15 = *(v10 + 32);
    v16 = OUTLINED_FUNCTION_31_0();
    v17(v16);
    sub_1DC5167BC();
    v18 = OUTLINED_FUNCTION_66_4();
    v19(v18);
    if (v0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DC308E38()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_54_0();
  v7 = sub_1DC51190C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v13 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_71_1(*(v13 + 32));
  OUTLINED_FUNCTION_39(v0, 1, v7);
  if (v14)
  {
    sub_1DC28EB30(v0, &unk_1ECC7D3A0, &unk_1DC522560);
  }

  else
  {
    v15 = *(v10 + 32);
    v16 = OUTLINED_FUNCTION_31_0();
    v17(v16);
    sub_1DC5118DC();
    v18 = OUTLINED_FUNCTION_66_4();
    v19(v18);
    if (v0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1DC308F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1DC510FDC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v29 - v28);
  v68 = sub_1DC51176C();
  v30 = OUTLINED_FUNCTION_0(v68);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v67 = v36 - v35;
  v37 = sub_1DC5119DC();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v46 = *(v23 + 16);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = *(v40 + 80);
    OUTLINED_FUNCTION_24();
    v70 = v46 + v50;
    v66 = (v32 + 8);
    v64 = v24;
    v51 = v65;
    v69 = v46;
    while (v48 < *(v46 + 16))
    {
      (*(v40 + 16))(v45, v70 + *(v40 + 72) * v48, v37);
      if (sub_1DC51194C())
      {
        sub_1DC5119CC();
        sub_1DC51175C();
        (*v66)(v67, v68);
        v54 = sub_1DC5138FC();
        OUTLINED_FUNCTION_37(&a18);
        v55(v51, v24);
        v56 = MEMORY[0x1E1292F90](v54);
        v57 = v56;
        if (v56 >> 62)
        {
          v58 = sub_1DC51802C();
        }

        else
        {
          v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v58)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E1296800](0, v57);
          }

          else
          {
            if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v59 = *(v57 + 32);
          }

          sub_1DC51478C();

          v60 = OUTLINED_FUNCTION_30_5();
          v61(v60, v37);
          v72[0] = v72[2];
          v72[1] = v73;
          v24 = v64;
          v51 = v65;
          if (*(&v73 + 1))
          {
            sub_1DC28F3B8(v72, v71, &qword_1ECC7D3F0, &qword_1DC5238B0);
            sub_1DC51497C();
            if (OUTLINED_FUNCTION_9_3() || (sub_1DC51485C(), OUTLINED_FUNCTION_9_3()) || (sub_1DC514D9C(), OUTLINED_FUNCTION_9_3()) || (sub_1DC514B3C(), OUTLINED_FUNCTION_9_3()) || (sub_1DC514D6C(), OUTLINED_FUNCTION_9_3()) || (sub_1DC514D5C(), OUTLINED_FUNCTION_9_3()))
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v71);
              sub_1DC28EB30(v72, &qword_1ECC7D3F0, &qword_1DC5238B0);
              goto LABEL_27;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          sub_1DC28EB30(v72, &qword_1ECC7D3F0, &qword_1DC5238B0);
        }

        else
        {
          v62 = OUTLINED_FUNCTION_30_5();
          v63(v62, v37);

          v51 = v65;
        }
      }

      else
      {
        v52 = OUTLINED_FUNCTION_30_5();
        v53(v52, v37);
      }

      ++v48;
      v46 = v69;
      if (v47 == v48)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC309474(uint64_t a1)
{
  sub_1DC3094C4();
  if (v2)
  {
    type metadata accessor for NLRouterBypassUtils();
    v3 = type metadata accessor for NLRouterServiceRequest(0);
    v4 = sub_1DC308358(*(a1 + *(v3 + 24))) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1DC3094C4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5119DC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_56_8();
  v15 = type metadata accessor for NLRouterTurnContext(v14);
  v16 = OUTLINED_FUNCTION_35(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F3B8(v3 + *(v22 + 20), v1, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v1, 1, v15);
  if (v23)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_11:
    OUTLINED_FUNCTION_34();
  }

  else
  {
    OUTLINED_FUNCTION_21_7();
    sub_1DC30C0BC(v1, v21);
    v24 = 0;
    v25 = *(v21 + 16);
    v26 = *(v25 + 16);
    v27 = (v7 + 8);
    while (1)
    {
      if (v26 == v24)
      {
        goto LABEL_10;
      }

      if (v24 >= *(v25 + 16))
      {
        break;
      }

      v28 = *(v7 + 80);
      OUTLINED_FUNCTION_24();
      (*(v7 + 16))(v0, v25 + v29 + *(v7 + 72) * v24, v4);
      if (sub_1DC51191C())
      {
        v34 = *v27;
        v35 = OUTLINED_FUNCTION_48_0();
        v36(v35);
LABEL_10:
        sub_1DC30D6EC();
        sub_1DC51823C();
        MEMORY[0x1E1296160](32, 0xE100000000000000);
        v37 = sub_1DC51823C();
        MEMORY[0x1E1296160](v37);

        MEMORY[0x1E1296160](14897, 0xE200000000000000);
        sub_1DC2A32B0();
        sub_1DC517E5C();

        OUTLINED_FUNCTION_19_8();
        sub_1DC30C114(v21, v38);
        goto LABEL_11;
      }

      ++v24;
      v30 = sub_1DC51195C();
      v31 = *v27;
      v32 = OUTLINED_FUNCTION_48_0();
      v33(v32);
      if (v30)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DC3097BC(uint64_t a1)
{
  sub_1DC3094C4();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NLRouterBypassUtils();
  v3 = type metadata accessor for NLRouterServiceRequest(0);
  return sub_1DC308358(*(a1 + *(v3 + 24))) & 1;
}

void sub_1DC309850()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC5119DC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  if ((sub_1DC309808(v2) & 1) == 0)
  {
    v9 = 0;
    v10 = *(v2 + 16);
    v11 = *(v10 + 16);
    v12 = (v6 + 8);
    while (v11 != v9)
    {
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        return;
      }

      v13 = *(v6 + 80);
      OUTLINED_FUNCTION_24();
      (*(v6 + 16))(v0, v10 + v14 + *(v6 + 72) * v9, v3);
      if (sub_1DC51191C())
      {
        v19 = *v12;
        v20 = OUTLINED_FUNCTION_31_0();
        v21(v20);
        break;
      }

      ++v9;
      v15 = sub_1DC51195C();
      v16 = *v12;
      v17 = OUTLINED_FUNCTION_31_0();
      v18(v17);
      if (v15)
      {
        break;
      }
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC309998()
{
  OUTLINED_FUNCTION_33();
  v43 = v1;
  v44 = v2;
  OUTLINED_FUNCTION_38_2();
  v42 = sub_1DC514E7C();
  v3 = OUTLINED_FUNCTION_0(v42);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v46 = sub_1DC514ECC();
  v8 = OUTLINED_FUNCTION_0(v46);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v38 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = sub_1DC514EFC();
  v18 = 0;
  v45 = *(v17 + 16);
  v19 = (v5 + 8);
  v40 = (v10 + 8);
  v41 = v10 + 16;
  v37 = (v10 + 32);
  v39 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v45 == v18)
    {

      v35 = *(v39 + 16);

      OUTLINED_FUNCTION_34();
      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = *(v10 + 72);
    (*(v10 + 16))(v16, v17 + v20 + v21 * v18, v46);
    sub_1DC514EBC();
    v22 = sub_1DC514E6C();
    v24 = v23;
    (*v19)(v0, v42);
    if (v22 == v43 && v24 == v44)
    {

LABEL_11:
      v27 = *v37;
      (*v37)(v38, v16, v46);
      v28 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v28;
      v36 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = *(v28 + 16);
        sub_1DC30BC60();
        v28 = v47;
      }

      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_26(v31);
        v39 = v34;
        sub_1DC30BC60();
        v33 = v39;
        v28 = v47;
      }

      ++v18;
      *(v28 + 16) = v33;
      v39 = v28;
      v36(v28 + v20 + v32 * v21, v38, v46);
    }

    else
    {
      OUTLINED_FUNCTION_59_1();
      v26 = sub_1DC51825C();

      if (v26)
      {
        goto LABEL_11;
      }

      (*v40)(v16, v46);
      ++v18;
    }
  }

  __break(1u);
}

void sub_1DC309C94()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC5119DC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_25_3();
  v13 = type metadata accessor for NLRouterTurnContext(v12);
  v14 = OUTLINED_FUNCTION_35(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = OUTLINED_FUNCTION_42_2();
  sub_1DC28F3B8(v20, v21, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v1, 1, v13);
  if (v22)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_12:
    OUTLINED_FUNCTION_34();
  }

  else
  {
    OUTLINED_FUNCTION_21_7();
    v23 = OUTLINED_FUNCTION_35_0();
    sub_1DC30C0BC(v23, v24);
    v25 = 0;
    v26 = *(v19 + 16);
    v27 = *(v26 + 16);
    v28 = (v5 + 8);
    while (1)
    {
      if (v27 == v25)
      {
        goto LABEL_11;
      }

      if (v25 >= *(v26 + 16))
      {
        break;
      }

      v29 = *(v5 + 80);
      OUTLINED_FUNCTION_24();
      (*(v5 + 16))(v0, v26 + v30 + *(v5 + 72) * v25, v2);
      if (sub_1DC51194C() & 1) != 0 || (sub_1DC51191C())
      {
        v35 = *v28;
        v36 = OUTLINED_FUNCTION_31_0();
        v37(v36);
LABEL_11:
        OUTLINED_FUNCTION_19_8();
        sub_1DC30C114(v19, v38);
        goto LABEL_12;
      }

      v31 = sub_1DC51195C();
      v32 = *v28;
      v33 = OUTLINED_FUNCTION_31_0();
      v34(v33);
      ++v25;
      if (v31)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1DC309EE8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC51072C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v18 = v5;
  v19 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_58_0();
  v20[0] = *(v2 + *(type metadata accessor for HeuristicAgentKeywords(v8) + 24));

  sub_1DC30BFDC(v20, sub_1DC30D6D8, MEMORY[0x1E69E6158], sub_1DC30CA80, sub_1DC30C468);
  v9 = 0;
  v10 = v20[0];
  v11 = *(v20[0] + 16);
  for (i = (v20[0] + 40); ; i += 2)
  {
    if (v11 == v9)
    {

LABEL_8:
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_34();
      return;
    }

    if (v9 >= v10[2])
    {
      break;
    }

    v14 = *(i - 1);
    v13 = *i;

    sub_1DC329B0C();
    if (v15)
    {

      sub_1DC329364();

      v16 = OUTLINED_FUNCTION_39_4();
      v20[0] = sub_1DC329368(v16);
      v20[1] = v17;
      sub_1DC5106FC();
      sub_1DC2A32B0();
      sub_1DC517E0C();
      (*(v18 + 8))(v0, v19);

      goto LABEL_8;
    }

    ++v9;
  }

  __break(1u);

  __break(1u);
}

void sub_1DC30A0F8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_25_3();
  v12 = type metadata accessor for HeuristicAgentKeywords(v11);
  v13 = OUTLINED_FUNCTION_35(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *v6;
  v20 = v6[1];
  v21 = type metadata accessor for HeuristicRoutingRequest(0);
  sub_1DC28F3B8(v6 + *(v21 + 32), v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_39(v0, 1, v12);
  if (v22)
  {

    v26 = sub_1DC28EB30(v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  }

  else
  {
    sub_1DC30C0BC(v0, v18);
    type metadata accessor for NLRouterBypassUtils();

    OUTLINED_FUNCTION_65_1();
    sub_1DC309EE8();
    v19 = v23;
    v25 = v24;

    v26 = sub_1DC30C114(v18, type metadata accessor for HeuristicAgentKeywords);
    v20 = v25;
  }

  v28[0] = v19;
  v28[1] = v20;
  v27[1] = v4;
  MEMORY[0x1EEE9AC00](v26);
  v27[-2] = v2;
  v27[-1] = v28;
  sub_1DC51645C();
  sub_1DC517A6C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_45();
  sub_1DC5179CC();

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC30A320(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DC51644C();
  v5 = sub_1DC517D8C();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v14 = *a2;
  v13 = a2[1];
  sub_1DC51645C();

  sub_1DC51642C();
  if (v2)
  {

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v4);
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  v15 = 1;
  OUTLINED_FUNCTION_49_6();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  (*(v7 + 8))(v12, v5);
  return v15;
}

void sub_1DC30A498()
{
  OUTLINED_FUNCTION_33();
  v128 = v1;
  OUTLINED_FUNCTION_38_2();
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v126 = v4;
  v127 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v129 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14(&v106 - v13);
  v112 = sub_1DC5171DC();
  v14 = OUTLINED_FUNCTION_0(v112);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v20 - v19);
  v21 = sub_1DC516AFC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v106 - v31;
  v33 = sub_1DC516C3C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v125 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v106 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v106 - v42;
  if (!*(v0 + *(type metadata accessor for NLRouterServiceRequest(0) + 36)) || (v44 = sub_1DC516D8C()) == 0)
  {
LABEL_34:
    OUTLINED_FUNCTION_34();
    return;
  }

  v106 = v16;
  v114 = v41;
  v45 = 0;
  v121 = *(v44 + 16);
  v124 = v125 + 16;
  v117 = *MEMORY[0x1E69A9058];
  v115 = (v24 + 8);
  v116 = v24 + 104;
  v123 = (v125 + 8);
  v108 = (v125 + 32);
  v113 = MEMORY[0x1E69E7CC0];
  v122 = v33;
  v118 = v44;
  while (v121 != v45)
  {
    if (v45 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_22_0();
    v120 = v46;
    v119 = *(v48 + 72);
    (*(v48 + 16))(v43, v46 + v47 + v119 * v45, v33);
    sub_1DC516C2C();
    v49 = OUTLINED_FUNCTION_35_7();
    v50(v49, v117, v21);
    sub_1DC30C16C(&qword_1ECC7BAE0, MEMORY[0x1E69A9090]);
    sub_1DC5179EC();
    sub_1DC5179EC();
    v51 = v132 == v130 && v133 == v131;
    if (v51)
    {
      v58 = *v115;
      (*v115)(v29, v21);
      v58(v32, v21);

LABEL_13:
      v59 = *v108;
      (*v108)(v109, v43, v122);
      v60 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v60;
      v107 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = *(v60 + 16);
        sub_1DC30BCB8();
        v60 = v134;
      }

      v64 = v119;
      v63 = v120;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        OUTLINED_FUNCTION_26(v65);
        sub_1DC30BCB8();
        v60 = v134;
      }

      ++v45;
      *(v60 + 16) = v66 + 1;
      v113 = v60;
      v33 = v122;
      v107(v63 + v60 + v66 * v64, v109, v122);
      v44 = v118;
    }

    else
    {
      v52 = sub_1DC51825C();
      v53 = v45;
      v54 = v43;
      v55 = v32;
      v56 = v29;
      v57 = *v115;
      (*v115)(v56, v21);
      v57(v55, v21);
      v29 = v56;
      v32 = v55;
      v43 = v54;
      v45 = v53;

      if (v52)
      {
        goto LABEL_13;
      }

      v33 = v122;
      (*v123)(v43, v122);
      v45 = v53 + 1;
      v44 = v118;
    }
  }

  v67 = *(v113 + 16);
  if (!v67)
  {
LABEL_33:

    goto LABEL_34;
  }

  v68 = 0;
  v69 = *(v125 + 80);
  OUTLINED_FUNCTION_24();
  v72 = v70 + v71;
  v120 = (v106 + 16);
  LODWORD(v121) = *MEMORY[0x1E69DAE28];
  v73 = (v126 + 8);
  v74 = v110;
  while (v68 < *(v70 + 16))
  {
    v75 = v114;
    (*(v125 + 16))(v114, v72 + *(v125 + 72) * v68, v33);
    sub_1DC516C1C();
    v76 = sub_1DC5172AC();
    OUTLINED_FUNCTION_39(v74, 1, v76);
    if (v51)
    {
      (*v123)(v75, v33);
      sub_1DC28EB30(v74, &qword_1ECC7BFF8, &qword_1DC522580);
    }

    else
    {
      v77 = *(v76 - 8);
      v78 = v77[11];
      v79 = OUTLINED_FUNCTION_59_1();
      v81 = v80(v79);
      if (v81 == v121)
      {
        v82 = v77[12];
        v83 = OUTLINED_FUNCTION_59_1();
        v84(v83);
        v85 = *v74;
        v86 = swift_projectBox();
        (*v120)(v111, v86, v112);

        sub_1DC5171CC();
        v87 = 0;
        v88 = *(v128 + 16);
        do
        {
          if (v88 == v87)
          {
            v102 = OUTLINED_FUNCTION_44_3();
            v103(v102);
            v33 = v122;
            v104 = OUTLINED_FUNCTION_40_7();
            v105(v104);
            (*v73)(v129, v127);
            v74 = v110;
            goto LABEL_32;
          }

          v89 = v87++;
          OUTLINED_FUNCTION_22_0();
          v92 = v128 + v90 + *(v91 + 72) * v89;
          sub_1DC30C16C(&qword_1ECC7C040, MEMORY[0x1E69DB0B8]);
        }

        while ((sub_1DC5176CC() & 1) == 0);
        v93 = OUTLINED_FUNCTION_44_3();
        v94(v93);
        v33 = v122;
        v95 = OUTLINED_FUNCTION_40_7();
        v96(v95);
        (*v73)(v129, v127);
        v51 = v88 == v89;
        v74 = v110;
        if (v51)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v97 = OUTLINED_FUNCTION_40_7();
      v98(v97);
      v99 = v77[1];
      v100 = OUTLINED_FUNCTION_59_1();
      v101(v100);
    }

LABEL_32:
    ++v68;
    v70 = v113;
    if (v68 == v67)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  __break(1u);
}

void sub_1DC30AD70()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC510FDC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v9 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_1DC51154C();
  v18 = sub_1DC51177C();
  v19 = *(v12 + 8);
  v19(v17, v9);
  if (v18)
  {
    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    sub_1DC51178C();
    v19(v17, v9);
    v20 = sub_1DC307E5C();
    (*(v6 + 8))(v0, v3);
    if (v20)
    {

      sub_1DC51478C();

      if (v25)
      {
        sub_1DC2BAD90(&v24, &v26);
        v21 = *(v2 + 16);
        v22 = (v2 + 32);
        do
        {
          if (!v21)
          {
            break;
          }

          v23 = *v22++;
          __swift_project_boxed_opaque_existential_1(&v26, v27);
          --v21;
        }

        while (v23 != swift_getDynamicType());
        __swift_destroy_boxed_opaque_existential_1Tm(&v26);
      }

      else
      {

        sub_1DC28EB30(&v24, &qword_1ECC7D3F0, &qword_1DC5238B0);
      }
    }
  }

  OUTLINED_FUNCTION_34();
}

char *sub_1DC30AFA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC30B0C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8A0, &unk_1DC5235F0);
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

void *sub_1DC30B1C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

uint64_t sub_1DC30B244(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_39_4();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC30B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DC30B320(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a2);
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (a4)
  {
    sub_1DC51769C();
  }

  v11 = sub_1DC51833C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_20:
    v20 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v26;

    sub_1DC30B760(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v26 = v28;
    *a1 = a2;
    *(a1 + 4) = v8;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v14 = ~v12;
  v15 = *(v9 + 48);
  while (1)
  {
    v16 = v15 + 24 * v13;
    if (*v16 != a2 || *(v16 + 4) != v8)
    {
      goto LABEL_19;
    }

    v18 = *(v16 + 16);
    if (v18)
    {
      break;
    }

    if (!a4)
    {
      goto LABEL_22;
    }

LABEL_19:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!a4)
  {
    goto LABEL_19;
  }

  v19 = *(v16 + 8) == a3 && v18 == a4;
  if (!v19 && (sub_1DC51825C() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v23 = (*(v9 + 48) + 24 * v13);
  v25 = v23[1];
  v24 = v23[2];
  *a1 = *v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24;

  return 0;
}

unint64_t sub_1DC30B4F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C0, &qword_1DC523618);
  result = sub_1DC517EFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DC30B664(*v16, *(v16 + 8), *(v16 + 16), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = *(v3 + 48) + 24 * (v13 | (v7 << 6));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      sub_1DC2A3304(0, (v17 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1DC30B664(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = *(a4 + 40);
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (a3)
  {
    sub_1DC51769C();
  }

  sub_1DC51833C();
  v10 = -1 << *(a4 + 32);
  result = sub_1DC517EDC();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v12 = *(a4 + 48) + 24 * result;
  *v12 = v7;
  *(v12 + 4) = v8;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_1DC30B760(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = HIDWORD(result);
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 <= v12 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1DC30B4F4(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_1DC30B954();
        goto LABEL_27;
      }

      sub_1DC30BAB8(v12 + 1);
    }

    v14 = *v5;
    v15 = *(*v5 + 40);
    sub_1DC5182FC();
    sub_1DC51832C();
    sub_1DC51832C();
    sub_1DC51831C();
    if (a3)
    {
      sub_1DC51769C();
    }

    result = sub_1DC51833C();
    v16 = v14 + 56;
    v17 = -1 << *(v14 + 32);
    a4 = result & ~v17;
    if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v18 = ~v17;
      v19 = *(v14 + 48);
      do
      {
        v20 = v19 + 24 * a4;
        if (*v20 == v10 && *(v20 + 4) == v11)
        {
          v22 = *(v20 + 16);
          if (v22)
          {
            if (a3)
            {
              if (*(v20 + 8) == a2 && v22 == a3)
              {
                goto LABEL_30;
              }

              result = sub_1DC51825C();
              if (result)
              {
                goto LABEL_30;
              }
            }
          }

          else if (!a3)
          {
            goto LABEL_30;
          }
        }

        a4 = (a4 + 1) & v18;
      }

      while (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_27:
  v24 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = v10;
  *(v25 + 4) = v11;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_30:
    result = sub_1DC51828C();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_1DC30B954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C0, &qword_1DC523618);
  v2 = *v0;
  v3 = sub_1DC517EEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v20;
        v21[2] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_1DC30BAB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C0, &qword_1DC523618);
  result = sub_1DC517EFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1DC30B664(v16, v17, v18, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = (*(v3 + 48) + 24 * (v12 | (v7 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

void sub_1DC30BC08()
{
  v1 = *v0;
  sub_1DC30BE28();
  *v0 = v2;
}

void sub_1DC30BC60()
{
  v1 = *v0;
  sub_1DC30BE28();
  *v0 = v2;
}

void sub_1DC30BCB8()
{
  v1 = *v0;
  sub_1DC30BE28();
  *v0 = v2;
}

char *sub_1DC30BD10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DC30BE28()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC30B244(v8 + v23, v14, v19 + v23, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC30BFDC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1DC30C2D4(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1DC30C0BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC30C114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC30C16C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DC30C1B8()
{
  result = qword_1ECC7BB98;
  if (!qword_1ECC7BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BB98);
  }

  return result;
}

uint64_t sub_1DC30C20C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC30C260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DC30C2D4(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1DC51822C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1DC517A4C();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1DC30C3E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 28);
        v11 = *(v9 + 32);
        *(v9 + 24) = *v9;
        *(v9 + 40) = *(v9 + 16);
        *v9 = v7;
        *(v9 + 4) = v10;
        *(v9 + 8) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC30C468(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
    while (2)
    {
      v8 = (v5 + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      v19 = v7;
      v20 = v6;
      do
      {
        v11 = *(v6 - 2);
        v12 = *(v6 - 1);

        v13 = sub_1DC329364();
        v14 = sub_1DC329364();

        if (v13 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v15 = *v6;
        v16 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v16;
        *(v6 - 2) = v15;
        v6 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v20 + 2;
      v7 = v19 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC30C56C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = result;
  v88 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 12;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 6;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 1);
                v28 = *v25;
                v29 = *(v26 - 24);
                v25[2] = *(v26 - 8);
                *v25 = v29;
                *(v26 - 24) = v28;
                *(v26 - 16) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 28);
                v37 = *(v35 + 32);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 4) = v36;
                *(v35 + 8) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_1DC30B0C0((v39 > 1), v40 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v41;
      v42 = v8 + 32;
      v43 = (v8 + 32 + 16 * v40);
      *v43 = v7;
      v43[1] = v85;
      v86 = *v84;
      if (!*v84)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = (v42 + 16 * (v41 - 1));
          v46 = (v8 + 16 * v41);
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 32);
            v48 = *(v8 + 40);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = (v42 + 16 * (v44 - 1));
          v77 = *v76;
          v78 = (v42 + 16 * v44);
          v79 = v78[1];
          result = sub_1DC30D264((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v86);
          if (v5)
          {
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = *(v8 + 16);
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          result = memmove((v42 + 16 * v44), v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 16) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = v42 + 16 * v41;
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*v84)
  {
    goto LABEL_115;
  }

  sub_1DC30D12C(&v88, *v84, a3);
}

uint64_t sub_1DC30CA80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v108 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v114 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_93:
      v96 = (v8 + 16);
      v97 = *(v8 + 16);
      while (v97 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v98 = v8;
        v99 = (v8 + 16 * v97);
        v100 = *v99;
        v101 = &v96[2 * v97];
        v8 = v101[1];
        sub_1DC30D438((*a3 + 16 * *v99), (*a3 + 16 * *v101), (*a3 + 16 * v8), v114);
        if (v5)
        {
          break;
        }

        if (v8 < v100)
        {
          goto LABEL_117;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_118;
        }

        *v99 = v100;
        v99[1] = v8;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_119;
        }

        v97 = *v96 - 1;
        result = memmove(v101, v101 + 2, 16 * v102);
        *v96 = v97;
        v8 = v98;
      }
    }

LABEL_126:
    result = sub_1DC30D6B0(v8);
    v8 = result;
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v104 = v8;
      v105 = v5;
      v11 = (*a3 + 16 * v10);
      v12 = *v11;
      v8 = v11[1];
      v13 = (*a3 + 16 * v7);
      v109 = 16 * v7;
      v14 = *v13;
      v5 = v13[1];

      v114 = sub_1DC329364();
      v111 = sub_1DC329364();

      v15 = v13 + 3;
      v16 = v9 + 2;
      while (1)
      {
        v17 = v16;
        v18 = v10 + 1;
        if (v18 >= v6)
        {
          break;
        }

        v19 = v15 + 2;
        v8 = v15[2];
        v20 = *(v15 - 1);
        v21 = v18;
        v23 = *v15;
        v22 = v15[1];

        v24 = sub_1DC329364();
        v5 = sub_1DC329364();

        v10 = v21;

        v16 = v17 + 1;
        v15 = v19;
        if (v114 < v111 == v24 >= v5)
        {
          goto LABEL_9;
        }
      }

      v10 = v6;
LABEL_9:
      if (v114 >= v111)
      {
        v8 = v104;
        v5 = v105;
      }

      else
      {
        v25 = v9;
        if (v10 < v9)
        {
          goto LABEL_123;
        }

        if (v9 >= v10)
        {
          v8 = v104;
          v5 = v105;
        }

        else
        {
          if (v6 >= v17)
          {
            v26 = v17;
          }

          else
          {
            v26 = v6;
          }

          v27 = 16 * v26;
          v28 = v10;
          v8 = v104;
          v5 = v105;
          v29 = v109;
          do
          {
            if (v25 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v31 = (v30 + v29);
              v32 = v30 + v27;
              v33 = *v31;
              v34 = v31[1];
              *v31 = *(v32 - 16);
              *(v32 - 16) = v33;
              *(v32 - 8) = v34;
            }

            ++v25;
            v27 -= 16;
            v29 += 16;
          }

          while (v25 < v28);
        }
      }
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v53 = *(v8 + 16);
    v52 = *(v8 + 24);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1DC30B0C0((v52 > 1), v53 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v54;
    v55 = v8 + 32;
    v56 = (v8 + 32 + 16 * v53);
    *v56 = v9;
    v56[1] = v10;
    v113 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v114 = v10;
    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        v58 = (v55 + 16 * (v54 - 1));
        v59 = (v8 + 16 * v54);
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v8 + 32);
          v61 = *(v8 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_59:
          if (v63)
          {
            goto LABEL_108;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_111;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_116;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v54 < 2)
        {
          goto LABEL_110;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_74:
        if (v78)
        {
          goto LABEL_113;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_115;
        }

        if (v85 < v77)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v57 - 1 >= v54)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v89 = v8;
        v90 = (v55 + 16 * (v57 - 1));
        v91 = *v90;
        v92 = v57;
        v8 = v55 + 16 * v57;
        v93 = *(v8 + 8);
        sub_1DC30D438((*a3 + 16 * *v90), (*a3 + 16 * *v8), (*a3 + 16 * v93), v113);
        if (v5)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_103;
        }

        v5 = *(v89 + 16);
        if (v92 > v5)
        {
          goto LABEL_104;
        }

        *v90 = v91;
        v90[1] = v93;
        if (v92 >= v5)
        {
          goto LABEL_105;
        }

        v94 = v92;
        v54 = v5 - 1;
        result = memmove(v8, (v8 + 16), 16 * (v5 - 1 - v94));
        v8 = v89;
        *(v89 + 16) = v5 - 1;
        v95 = v5 > 2;
        v5 = 0;
        if (!v95)
        {
          goto LABEL_88;
        }
      }

      v64 = v55 + 16 * v54;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_106;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_107;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_109;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_112;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_120;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v7 = v10;
    if (v10 >= v6)
    {
      goto LABEL_91;
    }
  }

  v36 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v36)
  {
    goto LABEL_39;
  }

  v106 = v5;
  v37 = *a3;
  v38 = *a3 + 16 * v10;
  v107 = v9;
  v39 = v9 - v10;
  v110 = v36;
LABEL_32:
  v112 = v38;
  v114 = v10;
  v40 = (v37 + 16 * v10);
  v41 = *v40;
  v42 = v40[1];
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = *(v44 - 2);
    v46 = *(v44 - 1);

    v47 = sub_1DC329364();
    v48 = sub_1DC329364();

    if (v47 >= v48)
    {
LABEL_37:
      v10 = (v114 + 1);
      v38 = v112 + 16;
      --v39;
      if (v114 + 1 == v110)
      {
        v10 = v110;
        v5 = v106;
        v9 = v107;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v49 = *v44;
    v50 = v44[1];
    *v44 = *(v44 - 1);
    *(v44 - 1) = v50;
    *(v44 - 2) = v49;
    v44 -= 2;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DC30D12C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DC30D6B0(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DC30D264((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DC30D264(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 24;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_25:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v11 - 6) < *v17)
    {
      v14 = v5 + 24 == v6;
      v6 -= 24;
      if (!v14)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != (v5 + 24))
    {
      v19 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v19;
    }

    v11 -= 24;
  }

LABEL_38:
  v21 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_1DC30D438(char *__src, char *__dst, char *a3, char *a4)
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

    for (i = &v4[16 * v8]; ; i = v14)
    {
      if (v4 >= i || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_37;
      }

      v13 = v7;
      v14 = i;
      v15 = v5;
      v16 = *v6;
      v17 = *(v6 + 1);
      v18 = v6;
      v19 = *v4;
      v20 = *(v4 + 1);

      v21 = sub_1DC329364();
      v22 = sub_1DC329364();

      if (v21 >= v22)
      {
        break;
      }

      v23 = v18;
      v6 = v18 + 16;
      v24 = v13;
      if (v13 != v18)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 = v24 + 16;
      v5 = v15;
    }

    v23 = v4;
    v24 = v13;
    v25 = v13 == v4;
    v4 += 16;
    v6 = v18;
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v24 = *v23;
    goto LABEL_17;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  i = &v4[16 * v9];
  v43 = v4;
  v42 = v7;
LABEL_24:
  v27 = v6 - 16;
  v28 = v5 - 16;
  while (i > v4 && v6 > v7)
  {
    v30 = v28;
    v31 = *(i - 2);
    v32 = *(i - 1);
    v33 = v6;
    v34 = *(v6 - 2);
    v35 = *(v6 - 1);

    v36 = sub_1DC329364();
    v37 = sub_1DC329364();

    v5 = v30;
    v38 = v30 + 16;
    if (v36 < v37)
    {
      v6 = v27;
      v7 = v42;
      v4 = v43;
      if (v38 != v33)
      {
        *v5 = *v27;
        v6 = v27;
      }

      goto LABEL_24;
    }

    if (i != v38)
    {
      *v30 = *(i - 1);
    }

    v28 = v30 - 16;
    i -= 16;
    v7 = v42;
    v4 = v43;
    v6 = v33;
  }

LABEL_37:
  v39 = (i - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v39])
  {
    memmove(v6, v4, 16 * v39);
  }

  return 1;
}

unint64_t sub_1DC30D6EC()
{
  result = qword_1ECC7BCF8;
  if (!qword_1ECC7BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCF8);
  }

  return result;
}

uint64_t sub_1DC30D740(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (*(a4 + 48) + 24 * (v16 | (v15 << 6)));
      v19 = v17[1];
      v18 = v17[2];
      *v11 = *v17;
      v11[1] = v19;
      v11[2] = v18;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC30D8AC()
{
  result = qword_1ECC7BBA0;
  if (!qword_1ECC7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE68F08](a1, a2, v2, v3);
}

uint64_t CDMClient.setup(with:embeddingVersion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DC30D93C, 0, 0);
}

uint64_t sub_1DC30D93C()
{
  OUTLINED_FUNCTION_1_0();
  [objc_opt_self() defaultDeallocationTimeout];
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DC30D9F0;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return CDMClient.setup(with:embeddingVersion:deallocationTime:)();
}

uint64_t sub_1DC30D9F0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t CDMClient.setup(with:embeddingVersion:deallocationTime:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[22] = v0;
  v1[21] = v2;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v6 = sub_1DC510C8C();
  v1[23] = v6;
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_6();
  v1[24] = v8;
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC30DB94, 0, 0);
}

uint64_t sub_1DC30DB94()
{
  v1 = *(v0 + 25);
  v14 = *(v0 + 22);
  v2 = v0[21];
  v4 = *(v0 + 19);
  v3 = *(v0 + 20);
  (*(*(v0 + 24) + 16))(v1, *(v0 + 18), *(v0 + 23));
  v5 = [objc_opt_self() graphNameForEmbedding];
  v6 = sub_1DC51772C();
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v10 = objc_allocWithZone(CDMClientSetup);

  v11 = sub_1DC30E9EC(v1, v4, v3, 0, 0, v6, v8, v9);
  *(v0 + 26) = v11;
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_1DC30DD8C;
  v12 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
  *(v0 + 10) = MEMORY[0x1E69E9820];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_1DC30DF70;
  *(v0 + 13) = &block_descriptor_0;
  *(v0 + 14) = v12;
  [v14 setup:v11 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC30DD8C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 216) = v4;
  if (v4)
  {
    v5 = sub_1DC30DEF8;
  }

  else
  {
    v5 = sub_1DC30DE94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC30DE94()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 200);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC30DEF8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();
  v5 = v0[27];

  return v4();
}

uint64_t sub_1DC30DF70(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_1DC30DFD4(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_1DC30DFD4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t CDMClient.processEmbeddingRequest(with:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return CDMClient.processEmbeddingRequest(with:requestId:)();
}

uint64_t CDMClient.processEmbeddingRequest(with:requestId:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  v6 = *(*(sub_1DC51670C() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4A0, &qword_1DC5231D0) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC30E1DC, 0, 0);
}

uint64_t sub_1DC30E1DC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = sub_1DC5176FC();
  v0[26] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DC30E318;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C8, &qword_1DC523650);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30E680;
  v0[13] = &block_descriptor_8;
  v0[14] = v6;
  [v2 processEmbeddingRequest:v5 requestId:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC30E318()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 216) = v4;
  if (v4)
  {
    v5 = sub_1DC30E5F8;
  }

  else
  {
    v5 = sub_1DC30E420;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC30E420()
{
  v1 = *(v0 + 144);

  v2 = v1;
  result = sub_1DC30EB38(v2);
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = sub_1DC5138BC();
    sub_1DC5166FC();
    sub_1DC30EBA8();
    sub_1DC51677C();
    v8 = *(v0 + 200);
    v9 = *(v0 + 152);

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v7);
    (*(*(v7 - 8) + 32))(v9, v8, v7);
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);

    OUTLINED_FUNCTION_2_2();

    return v12();
  }

  return result;
}

uint64_t sub_1DC30E5F8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();
  v6 = v0[27];

  return v5();
}

uint64_t *sub_1DC30E680(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1DC30DFD4(v6, a3);
  }

  if (a2)
  {
    v7 = a2;

    return sub_1DC30E044(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC30E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DC29F200;

  return CDMClient.setup(with:embeddingVersion:)(a1, a2, a3);
}

uint64_t sub_1DC30E7B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC29F200;

  return CDMClient.setup(with:embeddingVersion:deallocationTime:)();
}

uint64_t sub_1DC30E874()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC29F120;

  return CDMClient.processEmbeddingRequest(with:)();
}

uint64_t sub_1DC30E928()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC29F200;

  return CDMClient.processEmbeddingRequest(with:requestId:)();
}

id sub_1DC30E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v15 = sub_1DC510BFC();
  if (a3)
  {
    v16 = sub_1DC5176FC();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_1DC5176FC();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = sub_1DC5176FC();

LABEL_8:
  v19 = [v9 initWithLocaleIdentifier:v15 embeddingVersion:v16 sandboxId:v17 activeServiceGraph:v18 deallocationTimeout:a8];

  v20 = sub_1DC510C8C();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

uint64_t sub_1DC30EB38(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DC510A0C();

  return v3;
}

unint64_t sub_1DC30EBA8()
{
  result = qword_1ECC7C4B8;
  if (!qword_1ECC7C4B8)
  {
    sub_1DC5138BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C4B8);
  }

  return result;
}

uint64_t sub_1DC30EC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4A0, &qword_1DC5231D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of CDMEmbeddingClient.setup(with:embeddingVersion:)()
{
  OUTLINED_FUNCTION_0_8();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_6();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_5_9(v6);

  return v9(v7);
}

uint64_t dispatch thunk of CDMEmbeddingClient.setup(with:embeddingVersion:deallocationTime:)()
{
  OUTLINED_FUNCTION_0_8();
  v2 = v1;
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_6();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_5_9(v8);
  v10.n128_u64[0] = v2;

  return v12(v9, v10);
}

uint64_t dispatch thunk of CDMEmbeddingClient.processEmbeddingRequest(with:)()
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  v7 = *(v6 + 24);
  OUTLINED_FUNCTION_6();
  v15 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_1(v11);
  *v12 = v13;
  v12[1] = sub_1DC29F120;

  return v15(v5, v3, v2, v1, v0);
}

uint64_t dispatch thunk of CDMEmbeddingClient.processEmbeddingRequest(with:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 32);
  OUTLINED_FUNCTION_6();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3_1(v16);
  *v17 = v18;
  v17[1] = sub_1DC29F200;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DC30F12C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F718);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000015;
  v4[3] = 0x80000001DC53E5F0;
  v4[4] = 0x69746E4565746F4ELL;
  v4[5] = 0xEA00000000007974;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC30F204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = sub_1DC5172FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86250 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  __swift_project_value_buffer(v14, qword_1ECC8F718);
  v19 = sub_1DC5172DC();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v20 = sub_1DC5171EC();
    sub_1DC30F668(0x656C746974, 0xE500000000000000, v20, v13);

    v21 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v13);
    if (v22)
    {
      sub_1DC30F72C(v13);
    }

    else
    {
      sub_1DC382AC0();
      v31 = v30;
      v33 = v32;
      OUTLINED_FUNCTION_7_1(v21);
      (*(v34 + 8))(v13, v21);
      if (v33)
      {
LABEL_10:
        v35 = sub_1DC5171EC();
        sub_1DC30F668(0x6E6F697461657263, 0xEC00000065746144, v35, v11);

        OUTLINED_FUNCTION_3_3(v11);
        if (v22)
        {
          sub_1DC30F72C(v11);
        }

        else
        {
          sub_1DC382AC0();
          v26 = v36;
          v27 = v37;
          OUTLINED_FUNCTION_7_1(v21);
          (*(v38 + 8))(v11, v21);
          if (v27)
          {
LABEL_15:
            v39 = sub_1DC5171EC();
            sub_1DC30F668(0x73746E65746E6F63, 0xE800000000000000, v39, v8);

            OUTLINED_FUNCTION_3_3(v8);
            if (v22)
            {
              sub_1DC30F72C(v8);
            }

            else
            {
              sub_1DC382AC0();
              v28 = v40;
              v29 = v41;
              OUTLINED_FUNCTION_7_1(v21);
              (*(v42 + 8))(v8, v21);
              if (v29)
              {
                v43 = sub_1DC51721C();
                OUTLINED_FUNCTION_7_1(v43);
                result = (*(v44 + 8))(a1);
                goto LABEL_21;
              }
            }

            v45 = sub_1DC51721C();
            OUTLINED_FUNCTION_7_1(v45);
            (*(v46 + 8))(a1);

            v28 = 0;
            v29 = 0xE000000000000000;
            goto LABEL_21;
          }
        }

        v26 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_10;
  }

  v23 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v23);
  result = (*(v24 + 8))(a1);
  v31 = 0;
  v33 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
LABEL_21:
  *a2 = v31;
  a2[1] = v33;
  a2[2] = v26;
  a2[3] = v27;
  a2[4] = v28;
  a2[5] = v29;
  return result;
}

uint64_t sub_1DC30F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DC5172AC();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1DC5172AC();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1DC30F72C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC30F794()
{
  v1 = v0;
  sub_1DC517F4C();

  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000011, 0x80000001DC53E5D0);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0x65746E6F43207C20, 0xED0000203A73746ELL);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  return 0x203A656C746954;
}

uint64_t sub_1DC30F860@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86250 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F718);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC30F8F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC30F204(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DC30F94C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DC30F98C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1DC30FA4C(uint64_t a1)
{
  OUTLINED_FUNCTION_34_5();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DC30FB04(char a1)
{
  result = OUTLINED_FUNCTION_34_5();
  *(v1 + 24) = a1;
  return result;
}

void sub_1DC30FB88()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC517BCC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_113();
  v4 = sub_1DC517BEC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v10 = sub_1DC5173CC();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1DC312D80();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1DC5173AC();
  (*(v7 + 104))(v1, *MEMORY[0x1E69E8098], v4);
  sub_1DC312E24(&qword_1EDAC7FA8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2C4B5C(&qword_1EDAC7FB0, &unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC517E9C();
  *(v0 + 64) = sub_1DC517C1C();
  sub_1DC30FE2C();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC30FDAC()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_23_2();
  sub_1DC30FDE8(v1);
  return v0;
}

uint64_t sub_1DC30FDE8(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = a1;
  v2 = a1;
  sub_1DC30FE2C();

  return v1;
}

void sub_1DC30FE2C()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC51737C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v21 = sub_1DC5173CC();
  v8 = OUTLINED_FUNCTION_0(v21);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v20 = *(v0 + 64);
  v22[4] = sub_1DC312DC4;
  v23 = v0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1DC2AECB0;
  v22[3] = &block_descriptor_39;
  v16 = _Block_copy(v22);

  sub_1DC51739C();
  sub_1DC312E24(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC517E9C();
  MEMORY[0x1E12964B0](0, v15, v1, v16);
  _Block_release(v16);
  v17 = *(v5 + 8);
  v18 = OUTLINED_FUNCTION_30_6();
  v19(v18);
  (*(v10 + 8))(v15, v21);

  OUTLINED_FUNCTION_34();
}

void sub_1DC310088()
{
  type metadata accessor for SiriReferenceResolutionProxy();
  v0 = swift_allocObject();
  sub_1DC30FB88();
  qword_1ECC8F408 = v0;
}

uint64_t sub_1DC3100C4()
{
  v1 = *v0;
  v2 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8D8, &qword_1DC523748);
  sub_1DC517BFC();
  return v4;
}

void sub_1DC310164()
{
  OUTLINED_FUNCTION_33();
  v95 = v2;
  v104 = v3;
  v99 = v4;
  v94 = sub_1DC5162DC();
  v5 = OUTLINED_FUNCTION_0(v94);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v93 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  v21 = sub_1DC516F7C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v105 = v27;
  OUTLINED_FUNCTION_22();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = OUTLINED_FUNCTION_43_6();
  v33 = OUTLINED_FUNCTION_0(v32);
  v97 = v34;
  v98 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v37 = sub_1DC37824C();
  v38 = *v37;
  v39 = v37[1];
  v40 = *(v37 + 16);
  v96 = v0;
  OUTLINED_FUNCTION_33_6(v38, v39, v40, v41, &unk_1F57F9698, &off_1F57F95E8);
  v42 = sub_1DC28D414();
  v43 = *(v24 + 16);
  v101 = v42;
  v102 = v24 + 16;
  v100 = v43;
  (v43)(v1);
  v44 = sub_1DC516F6C();
  v45 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v45))
  {
    v46 = OUTLINED_FUNCTION_35_8();
    v92 = v31;
    *v46 = 0;
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v47, v48, v49, v50, v51, 2u);
    v31 = v92;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v53 = *(v24 + 8);
  v52 = v24 + 8;
  v103 = v53;
  v53(v1, v21);
  v54 = sub_1DC51713C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  if (AFIsHorseman())
  {
    v91 = v54;
    v100(v31, v101, v21);
    v58 = v94;
    (*(v7 + 16))(v12, v95, v94);
    v59 = v12;
    v60 = sub_1DC516F6C();
    v61 = sub_1DC517B9C();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_11();
      v62 = swift_slowAlloc();
      v90 = v52;
      v63 = v62;
      v88 = v62;
      OUTLINED_FUNCTION_19_3();
      v89 = swift_slowAlloc();
      v106 = v89;
      *v63 = 136315138;
      OUTLINED_FUNCTION_15_3();
      sub_1DC312E24(v64, v65);
      v66 = sub_1DC51823C();
      v92 = v31;
      v68 = v67;
      (*(v7 + 8))(v59, v58);
      sub_1DC291244(v66, v68, &v106);
      OUTLINED_FUNCTION_23_2();

      v69 = v88;
      *(v88 + 4) = v59;
      _os_log_impl(&dword_1DC287000, v60, v61, "Creating filter for userId: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();

      v70 = v92;
    }

    else
    {

      (*(v7 + 8))(v59, v58);
      v70 = v31;
    }

    v103(v70, v21);
    sub_1DC5162BC();
    v71 = v93;
    sub_1DC51712C();
    sub_1DC2BE530(v20, &unk_1ECC7D330, &unk_1DC5283B0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v91);
    sub_1DC312B94(v71, v20);
  }

  OUTLINED_FUNCTION_12_0();
  v76 = (*(v75 + 336))(v20);
  v78 = v77;
  sub_1DC3112A8(v76, v77 & 1);
  v100(v105, v101, v21);

  v79 = sub_1DC516F6C();
  v80 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v80))
  {
    OUTLINED_FUNCTION_11();
    v81 = swift_slowAlloc();
    OUTLINED_FUNCTION_44_4(v81, 3.852e-34);
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    sub_1DC312B88(v76, v78 & 1);
  }

  else
  {
    sub_1DC312B88(v76, v78 & 1);
  }

  v103(v105, v21);
  sub_1DC2BE530(v20, &unk_1ECC7D330, &unk_1DC5283B0);
  sub_1DC3107D4();
  OUTLINED_FUNCTION_23_2();

  *v99 = v79;
  v87 = v96;
  static SignpostLogger.end(_:_:)(v96, *v37, v37[1], *(v37 + 16), &unk_1F57F9698, &off_1F57F95E8);
  (*(v97 + 8))(v87, v98);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3107D4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8E0, &unk_1DC523750);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = sub_1DC5118BC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v55 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v50 = v16;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC516F7C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v53 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v51 = v11;
  v52 = v23 - v22;
  v24 = 0;
  v25 = *(v1 + 16);
  v54 = (v11 + 32);
  v26 = MEMORY[0x1E69E7CC0];
  while (v25 != v24)
  {
    v27 = *(sub_1DC516FCC() - 8);
    sub_1DC3114B8(v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1DC2BE530(v7, &qword_1ECC7C8E0, &unk_1DC523750);
      ++v24;
    }

    else
    {
      v48 = v26;
      v49 = v17;
      v28 = *v54;
      v29 = v50;
      (*v54)(v50, v7, v8);
      v47 = v28;
      v28(v55, v29, v8);
      v30 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DC312824(0, *(v30 + 16) + 1, 1, v30);
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      v33 = v30;
      if (v32 >= v31 >> 1)
      {
        v33 = sub_1DC312824(v31 > 1, v32 + 1, 1, v30);
      }

      ++v24;
      *(v33 + 16) = v32 + 1;
      v26 = v33;
      v47(v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32, v55, v8);
      v17 = v49;
    }
  }

  v34 = sub_1DC28D414();
  v35 = v52;
  v36 = v53;
  (*(v53 + 16))(v52, v34, v17);

  v37 = v26;
  v38 = sub_1DC516F6C();
  v39 = sub_1DC517B9C();
  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_11();
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = *(v37 + 16);

    OUTLINED_FUNCTION_40_8();
    _os_log_impl(v41, v42, v43, v44, v45, v46);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  (*(v36 + 8))(v35, v17);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC310BC0()
{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8D0, &qword_1DC523740);
  sub_1DC517BFC();
  return v3;
}

void sub_1DC310C38()
{
  OUTLINED_FUNCTION_33();
  v95 = v3;
  v96 = v2;
  v100 = v4;
  v5 = sub_1DC5162DC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v92 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v93 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  v21 = sub_1DC516F7C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v94 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_43_6();
  v34 = OUTLINED_FUNCTION_0(v33);
  v98 = v35;
  v99 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v38 = sub_1DC378258();
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  v97 = v0;
  OUTLINED_FUNCTION_33_6(v39, v40, v41, v42, &unk_1F57F9698, &off_1F57F95E8);
  v43 = sub_1DC28D414();
  v44 = *(v24 + 16);
  v103 = v43;
  v104 = v24 + 16;
  v102 = v44;
  (v44)(v1);
  v45 = sub_1DC516F6C();
  v46 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v46))
  {
    v47 = OUTLINED_FUNCTION_35_8();
    v105 = v20;
    *v47 = 0;
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    v20 = v105;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v105 = *(v24 + 8);
  (v105)(v1, v21);
  sub_1DC51713C();
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v45);
  v56 = AFIsHorseman();
  v101 = v24 + 8;
  if (v56)
  {
    v91 = v45;
    v102(v94, v103, v21);
    v57 = v92;
    (*(v8 + 16))(v92, v95, v5);
    v58 = sub_1DC516F6C();
    v59 = sub_1DC517B9C();
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_11();
      v60 = swift_slowAlloc();
      v90 = v29;
      v61 = v60;
      OUTLINED_FUNCTION_19_3();
      v89 = swift_slowAlloc();
      v106 = v89;
      *v61 = 136315138;
      OUTLINED_FUNCTION_15_3();
      sub_1DC312E24(v62, v63);
      HIDWORD(v88) = v59;
      v64 = sub_1DC51823C();
      (*(v8 + 8))(v57, v5);
      v65 = OUTLINED_FUNCTION_31_0();
      sub_1DC291244(v65, v66, v67);
      OUTLINED_FUNCTION_23_2();

      *(v61 + 4) = v64;
      _os_log_impl(&dword_1DC287000, v58, BYTE4(v88), "Creating filter for userId: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      v29 = v90;
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {

      (*(v8 + 8))(v57, v5);
    }

    (v105)(v94, v21);
    sub_1DC5162BC();
    sub_1DC51712C();
    sub_1DC2BE530(v20, &unk_1ECC7D330, &unk_1DC5283B0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v91);
    v71 = OUTLINED_FUNCTION_31_0();
    sub_1DC312B94(v71, v72);
  }

  OUTLINED_FUNCTION_12_0();
  v74 = v20;
  v75 = (*(v73 + 336))(v20);
  v77 = v76;
  v78 = sub_1DC3112A8(v75, v76 & 1);
  v102(v29, v103, v21);

  v79 = sub_1DC516F6C();
  v80 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v80))
  {
    OUTLINED_FUNCTION_11();
    v81 = swift_slowAlloc();
    OUTLINED_FUNCTION_44_4(v81, 3.852e-34);
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    sub_1DC312B88(v75, v77 & 1);
  }

  else
  {
    sub_1DC312B88(v75, v77 & 1);
  }

  (v105)(v29, v21);
  sub_1DC2BE530(v74, &unk_1ECC7D330, &unk_1DC5283B0);
  *v100 = v78;
  v87 = v97;
  static SignpostLogger.end(_:_:)(v97, *v38, v38[1], *(v38 + 16), &unk_1F57F9698, &off_1F57F95E8);
  (*(v98 + 8))(v87, v99);
  OUTLINED_FUNCTION_34();
}

void *sub_1DC3112A8(void *a1, char a2)
{
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  if (a2)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v16(v12);
    v17 = sub_1DC516F6C();
    v18 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v18))
    {
      v19 = OUTLINED_FUNCTION_35_8();
      *v19 = 0;
      _os_log_impl(&dword_1DC287000, v17, v18, "Entity callback from RRaSS failed", v19, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    a1 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v20(v15);

    v17 = sub_1DC516F6C();
    v21 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v21))
    {
      OUTLINED_FUNCTION_11();
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a1[2];
      sub_1DC312B88(a1, 0);
      OUTLINED_FUNCTION_9_4();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
      sub_1DC312B88(a1, 0);
    }
  }

  v28 = *(v7 + 8);
  v29 = OUTLINED_FUNCTION_30_6();
  v30(v29);
  return a1;
}

uint64_t sub_1DC3114B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v165 = v5;
  v166 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v179 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v167 = sub_1DC511B0C();
  v10 = OUTLINED_FUNCTION_0(v167);
  v152 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v150 = v15;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC51663C();
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v156 = v21 - v20;
  OUTLINED_FUNCTION_12();
  v173 = sub_1DC5118BC();
  v22 = OUTLINED_FUNCTION_0(v173);
  v160 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v162 = v27 - v26;
  OUTLINED_FUNCTION_12();
  v159 = sub_1DC51128C();
  v28 = OUTLINED_FUNCTION_0(v159);
  v158 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  v168 = v33;
  OUTLINED_FUNCTION_12();
  v34 = sub_1DC51665C();
  v35 = OUTLINED_FUNCTION_10(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v163 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8F8, &qword_1DC523848);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  v169 = v149 - v44;
  OUTLINED_FUNCTION_12();
  v164 = sub_1DC516FFC();
  v45 = OUTLINED_FUNCTION_0(v164);
  v161 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  v154 = v50 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C900, &unk_1DC523850);
  v52 = OUTLINED_FUNCTION_10(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  v171 = v57;
  OUTLINED_FUNCTION_12();
  v58 = sub_1DC510FDC();
  v177 = OUTLINED_FUNCTION_0(v58);
  v178 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_8();
  v64 = v62 - v63;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = v149 - v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_62();
  v176 = v69;
  OUTLINED_FUNCTION_12();
  v70 = sub_1DC51711C();
  v71 = OUTLINED_FUNCTION_0(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_8();
  v78 = v76 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = v149 - v80;
  v170 = a1;
  sub_1DC516FBC();
  sub_1DC51710C();
  v84 = *(v73 + 8);
  v82 = v73 + 8;
  v83 = v84;
  v84(v81, v70);
  v85 = sub_1DC5147AC();

  v172 = v85;
  v86 = v175;
  sub_1DC51391C();
  if (v86)
  {
    v87 = sub_1DC28D414();
    v89 = v165;
    v88 = v166;
    (*(v165 + 16))(v179, v87, v166);
    v90 = v86;
    v91 = sub_1DC516F6C();
    v92 = sub_1DC517BAC();

    if (os_log_type_enabled(v91, v92))
    {
      OUTLINED_FUNCTION_11();
      v93 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v94 = swift_slowAlloc();
      v181 = v94;
      *v93 = 136315138;
      v180 = v86;
      v95 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      v96 = sub_1DC51777C();
      v98 = sub_1DC291244(v96, v97, &v181);

      *(v93 + 4) = v98;
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_40_8();
      _os_log_impl(v99, v100, v101, v102, v103, v104);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
    }

    (*(v89 + 8))(v179, v88);
    OUTLINED_FUNCTION_19();
    return __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
  }

  v166 = v64;
  v179 = 0;
  (*(v178 + 32))(v176, v68, v177);
  v105 = v171;
  OUTLINED_FUNCTION_19();
  v106 = v167;
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v167);
  sub_1DC516FBC();
  v110 = v169;
  sub_1DC5170EC();
  v175 = v83;
  v83(v78, v70);
  v111 = v164;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v110, 1, v164);
  v113 = v106;
  v114 = v105;
  v115 = v70;
  v149[1] = v82;
  if (EnumTagSinglePayload != 1)
  {
    v124 = v154;
    (*(v161 + 32))(v154, v169, v111);
    v125 = v153;
    sub_1DC511AFC();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v113);
    sub_1DC312C74(v125, v114);
    v129 = __swift_getEnumTagSinglePayload(v114, 1, v113);
    v116 = v162;
    if (!v129)
    {
      sub_1DC516FDC();
      sub_1DC5177AC();

      v114 = v171;
      sub_1DC511AEC();
    }

    v130 = __swift_getEnumTagSinglePayload(v114, 1, v113);
    v117 = v168;
    v118 = v178;
    if (v130)
    {
      goto LABEL_14;
    }

    result = sub_1DC516FEC();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      sub_1DC511ACC();
      v111 = v164;
LABEL_14:
      (*(v161 + 8))(v124, v111);
      goto LABEL_15;
    }

    __break(1u);
    return result;
  }

  sub_1DC2BE530(v169, &qword_1ECC7C8F8, &qword_1DC523848);
  v116 = v162;
  v117 = v168;
  v118 = v178;
LABEL_15:
  sub_1DC516FBC();
  sub_1DC5170FC();
  v131 = OUTLINED_FUNCTION_23_2();
  v132 = v175;
  v175(v131, v115);
  sub_1DC3B8EB4(v81, v117);

  sub_1DC5118AC();
  (*(v118 + 16))(v166, v176, v177);
  sub_1DC51183C();
  sub_1DC516FAC();
  sub_1DC517B2C();
  sub_1DC51181C();
  sub_1DC516FBC();
  sub_1DC5170DC();
  v132(v81, v115);
  sub_1DC5177AC();

  sub_1DC51187C();
  sub_1DC516FBC();
  sub_1DC5170CC();
  v132(v81, v115);
  sub_1DC5177AC();

  sub_1DC5117EC();
  v133 = v171;
  v134 = v155;
  sub_1DC312C04(v171, v155);
  v135 = v167;
  if (__swift_getEnumTagSinglePayload(v134, 1, v167) == 1)
  {
    sub_1DC2BE530(v134, &qword_1ECC7C900, &unk_1DC523850);
  }

  else
  {
    v136 = v152;
    v137 = *(v152 + 32);
    v138 = v150;
    v139 = OUTLINED_FUNCTION_30_6();
    v140(v139);
    (*(v136 + 16))(v151, v138, v135);
    sub_1DC51185C();
    (*(v136 + 8))(v138, v135);
  }

  v141 = v160;
  v142 = v159;
  v143 = v158;
  v144 = v168;
  (*(v158 + 16))(v157, v168, v159);
  sub_1DC51189C();

  (*(v143 + 8))(v144, v142);
  (*(v178 + 8))(v176, v177);
  v145 = v173;
  (*(v141 + 32))(v174, v116, v173);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
  return sub_1DC2BE530(v133, &qword_1ECC7C900, &unk_1DC523850);
}

id sub_1DC312028()
{
  v0 = sub_1DC516F7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_12_0();
  if ((*(v9 + 120))())
  {
    v10 = sub_1DC516E1C();
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v11(v8);
    v12 = sub_1DC516F6C();
    v13 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v13))
    {
      OUTLINED_FUNCTION_11();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DC291244(0xD000000000000028, 0x80000001DC53E680, &v24);
      OUTLINED_FUNCTION_40_8();
      _os_log_impl(v16, v17, v18, v19, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    (*(v3 + 8))(v8, v0);
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    return OUTLINED_FUNCTION_18_6();
  }

  return v10;
}

uint64_t sub_1DC312214()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  sub_1DC51713C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = (*(*v0 + 272))(v1, 0, 0);
  v11 = OUTLINED_FUNCTION_30_6();
  sub_1DC2BE530(v11, v12, &unk_1DC5283B0);
  v13 = v0[8];
  OUTLINED_FUNCTION_27_5();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v10;
  OUTLINED_FUNCTION_27_5();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DC312B0C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1DC292A1C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  aBlock[2] = v16;
  aBlock[3] = &block_descriptor_13;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC312400()
{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8E8, &qword_1DC523760);
  sub_1DC517BFC();
  return v3;
}

uint64_t sub_1DC312474()
{
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_27_5();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DC312B6C;
  *(v2 + 24) = v0;
  v6[4] = sub_1DC292A1C;
  v6[5] = v2;
  OUTLINED_FUNCTION_13_1();
  v6[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v6[2] = v3;
  v6[3] = &block_descriptor_20;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC312580()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);
  sub_1DC2B5848(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_1DC3125BC()
{
  sub_1DC312580();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

id sub_1DC312744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DC5176FC();

  if (a4)
  {
    v8 = sub_1DC51760C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_1DC3127F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DC310164();
}

size_t sub_1DC312824(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC312910(v8, v7);
  v10 = *(sub_1DC5118BC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC312A0C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC312910(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8F0, &qword_1DC523840);
  v4 = *(sub_1DC5118BC() - 8);
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

uint64_t sub_1DC312A0C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC5118BC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC5118BC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DC312AE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DC310C38();
}

uint64_t sub_1DC312B0C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1DC312B6C()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

void sub_1DC312B88(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DC312B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC312C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C900, &unk_1DC523850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC312C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C900, &unk_1DC523850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC312CE4(void *a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1DC3112A8(a1, a2 & 1);
  OUTLINED_FUNCTION_34_5();
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  return sub_1DC517D1C();
}

uint64_t sub_1DC312D3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DC312D80()
{
  result = qword_1EDAC7FA0;
  if (!qword_1EDAC7FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAC7FA0);
  }

  return result;
}

uint64_t sub_1DC312DC4()
{
  sub_1DC516E4C();
  v1 = sub_1DC516E3C();
  v2 = *(*v0 + 128);

  return v2(v1);
}

uint64_t sub_1DC312E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC312E7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v6 = MEMORY[0x1E69D02F8];
      goto LABEL_6;
    case 2:
      v6 = MEMORY[0x1E69D02D8];
      goto LABEL_6;
    case 3:
      v6 = MEMORY[0x1E69D02F0];
LABEL_6:
      v7 = *v6;
      v8 = sub_1DC5157EC();
      (*(*(v8 - 8) + 104))(a2, v7, v8);
      v4 = a2;
      v5 = 0;
      v3 = v8;
      break;
    default:
      v3 = sub_1DC5157EC();
      v4 = a2;
      v5 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
}

uint64_t sub_1DC312F68()
{
  v0 = sub_1DC51808C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DC312FB4(char a1)
{
  result = 6710863;
  switch(a1)
  {
    case 1:
      result = 0x72656E6E616C50;
      break;
    case 2:
      result = 0x5869726953;
      break;
    case 3:
      result = 0x6372616553415150;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC31303C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6261736944;
  }

  else
  {
    v3 = 0x64656C62616E45;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6261736944;
  }

  else
  {
    v5 = 0x64656C62616E45;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3130DC(unsigned __int8 a1, char a2)
{
  v2 = 6710863;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6710863;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72656E6E616C50;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x5869726953;
      break;
    case 3:
      v5 = 0x6372616553415150;
      v3 = 0xE900000000000068;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72656E6E616C50;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x5869726953;
      break;
    case 3:
      v2 = 0x6372616553415150;
      v6 = 0xE900000000000068;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC31322C()
{
  sub_1DC5182FC();
  sub_1DC313288();
  return sub_1DC51833C();
}

uint64_t sub_1DC313288()
{
  sub_1DC51769C();
}

uint64_t sub_1DC313338()
{
  sub_1DC51769C();
}

uint64_t sub_1DC3133AC()
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC31342C()
{
  sub_1DC5182FC();
  sub_1DC313288();
  return sub_1DC51833C();
}

uint64_t sub_1DC313470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC312F68();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3134A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC312FB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC3134CC()
{
  v0 = sub_1DC51808C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC313520(char a1)
{
  if (a1)
  {
    return 0x64656C6261736944;
  }

  else
  {
    return 0x64656C62616E45;
  }
}

uint64_t sub_1DC31357C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC3134CC();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3135AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC313520(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1DC313670()
{
  v0 = sub_1DC343138();
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC3136DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for HeuristicRulesUserDefault();
  result = (*(*(a8 - 8) + 32))(&a9[v16[7]], a3, a8);
  *&a9[v16[8]] = a4;
  v18 = &a9[v16[9]];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&a9[v16[10]] = a7;
  return result;
}

uint64_t sub_1DC3137AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v101 = a2;
  v3 = a1 - 8;
  v99 = *(a1 - 8);
  v4 = v99[8];
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_8();
  v92 = (v5 - v6);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v88 - v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v88 - v10;
  v11 = *(v3 + 24);
  v12 = sub_1DC517D8C();
  OUTLINED_FUNCTION_2_3();
  v97 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  OUTLINED_FUNCTION_2_3();
  v102 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v93 = (v27 - v28);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v88 - v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  v91 = &v88 - v32;
  OUTLINED_FUNCTION_22();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v88 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v96 = &v88 - v37;
  v38 = *(v2 + *(v3 + 48));
  v39 = *v2;
  v40 = v2[1];
  v41 = sub_1DC5176FC();
  v42 = [v38 objectForKey_];

  if (v42)
  {
    sub_1DC517E8C();
    swift_unknownObjectRelease();
    sub_1DC291F78(v104, v103);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_10_8(v22, 0);
      v43 = v102;
      v44 = v96;
      v97 = *(v102 + 32);
      v98 = (v102 + 32);
      (v97)(v96, v22, v11);
      v45 = sub_1DC517B9C();
      v46 = v100;
      v47 = *(v2 + *(v100 + 32));
      v48 = v99[2];
      v48(v94, v2, v100);
      v48(v95, v2, v46);
      v49 = *(v43 + 16);
      v92 = v11;
      v93 = v36;
      v49(v36, v44, v11);
      LODWORD(v89) = v45;
      v90 = v47;
      if (os_log_type_enabled(v47, v45))
      {
        v50 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v103[0] = v88;
        *v50 = 136315650;
        v51 = v94;
        v52 = &v94[*(v46 + 36)];
        v53 = v49;
        v54 = *v52;
        v55 = *(v52 + 1);
        v56 = v102;
        v57 = v99[1];

        v57(v51, v46);
        v58 = OUTLINED_FUNCTION_6_7();

        *(v50 + 4) = v58;
        *(v50 + 12) = 2080;
        v59 = v95;
        v60 = *v95;
        v61 = *(v95 + 1);

        v57(v59, v46);
        v62 = OUTLINED_FUNCTION_6_7();

        *(v50 + 14) = v62;
        *(v50 + 22) = 2080;
        v63 = v92;
        v64 = v93;
        v53(v91, v93, v92);
        OUTLINED_FUNCTION_43();
        sub_1DC51777C();
        (*(v56 + 8))(v64, v63);
        v65 = OUTLINED_FUNCTION_6_7();

        *(v50 + 24) = v65;
        _os_log_impl(&dword_1DC287000, v90, v89, "defaults read %s %s -> %s", v50, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {
        v63 = v92;
        (*(v102 + 8))(v93, v92);
        v87 = v99[1];
        v87(v95, v46);
        v87(v94, v46);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      return (v97)(v101, v96, v63);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    OUTLINED_FUNCTION_10_8(v22, 1);
    (*(v97 + 8))(v22, v12);
  }

  sub_1DC41DAEC(v39, v40, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_10_8(v19, 0);
    v66 = v102;
    v67 = v98;
    v96 = *(v102 + 32);
    v97 = v102 + 32;
    (v96)(v98, v19, v11);
    v68 = sub_1DC517B9C();
    v69 = v99;
    v70 = v100;
    v71 = *(v2 + *(v100 + 32));
    v72 = v92;
    (v99[2])(v92, v2, v100);
    v73 = v93;
    v90 = *(v66 + 16);
    (v90)(v93, v67, v11);
    LODWORD(v94) = v68;
    v95 = v71;
    if (os_log_type_enabled(v71, v68))
    {
      v74 = swift_slowAlloc();
      *&v104[0] = swift_slowAlloc();
      *v74 = 136315394;
      v75 = v72[1];
      v89 = *v72;
      v76 = v66;
      v77 = v69[1];

      v77(v72, v70);
      v78 = sub_1DC291244(v89, v75, v104);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v79 = v93;
      (v90)(v91, v93, v11);
      v80 = sub_1DC51777C();
      v82 = v81;
      (*(v76 + 8))(v79, v11);
      v83 = sub_1DC291244(v80, v82, v104);

      *(v74 + 14) = v83;
      _os_log_impl(&dword_1DC287000, v95, v94, "heuristic rule configured by asset: %s -> %s", v74, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      v84 = v11;
      OUTLINED_FUNCTION_66();
    }

    else
    {
      v86 = v73;
      v84 = v11;
      (*(v66 + 8))(v86, v11);
      (v69[1])(v72, v70);
    }

    return (v96)(v101, v98, v84);
  }

  else
  {
    OUTLINED_FUNCTION_10_8(v19, 1);
    (*(v97 + 8))(v19, v12);
    return (*(v102 + 16))(v101, v2 + *(v100 + 28), v11);
  }
}

uint64_t sub_1DC31405C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC3140C8()
{
  result = qword_1ECC7C908;
  if (!qword_1ECC7C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C908);
  }

  return result;
}

unint64_t sub_1DC314120()
{
  result = qword_1ECC7C910;
  if (!qword_1ECC7C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeuristicRoutingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for HeuristicRoutingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HeuristicRewriteOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC3143B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1DC298C74(319, &qword_1EDAC7F90, 0x1E69E9BF8);
    if (v4 <= 0x3F)
    {
      result = sub_1DC298C74(319, &qword_1ECC7B9B0, 0x1E695E000);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DC314488(uint64_t result, unsigned int a2, uint64_t a3)
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

        result = OUTLINED_FUNCTION_41_0(v8 + (v11 | v16));
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DC3145DC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1DC314820()
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](0);
  return sub_1DC51833C();
}

uint64_t sub_1DC314874()
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](0);
  return sub_1DC51833C();
}

uint64_t NLRouterBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_1DC28FB9C(a3, v18);
  v17[3] = type metadata accessor for NLRouterClientProvider();
  v17[4] = &off_1F57F6D58;
  v17[0] = swift_allocObject();
  sub_1DC28FB9C(a6, v16);
  v15[3] = type metadata accessor for BackgroundTaskScheduler();
  v15[4] = &off_1F57F88A0;
  v15[0] = sub_1DC2BA4FC();
  v13 = (*(v6 + class metadata base offset for NLRouterBridge + 112))(a1, a2, v18, a4, a5, v17, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

void sub_1DC3149E4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v0 + 48);
  v18 = *(v0 + 52);
  swift_allocObject();
  sub_1DC314A68(v16, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC314A68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = sub_1DC516F7C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  *(v8 + _MergedGlobals) = 0;
  *(v8 + qword_1EDAC7D98) = 0;
  *(v8 + qword_1EDAC7DA0) = 0;
  sub_1DC28FB9C(a6, v8 + qword_1EDAC7DA8);
  sub_1DC28FB9C(a8, v8 + qword_1EDAC7DB0);
  sub_1DC28FB9C(a3, v41);
  sub_1DC28FB9C(a7, v40);
  swift_unknownObjectRetain();
  v22 = a5;
  v23 = sub_1DC29120C();
  (*(v16 + 16))(v21, v23, v13);
  v24 = sub_1DC51692C();
  v25 = *(v24 + qword_1EDAC7D98);
  *(v24 + qword_1EDAC7D98) = 0;

  v26 = *(v24 + qword_1EDAC7DA0);
  *(v24 + qword_1EDAC7DA0) = 0;

  sub_1DC315228();
  sub_1DC28FB9C(v24 + qword_1EDAC7DB0, v41);
  v27 = v42;
  v28 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v29 = *sub_1DC3590F4();
  v30 = sub_1DC3590E8();
  v32 = *v30;
  v31 = v30[1];
  v33 = *(v28 + 8);

  v33(v32, v31, v27, v28, v29);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return v24;
}

uint64_t sub_1DC314CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v86 = a7;
  v87 = a8;
  v81 = a6;
  v84 = a4;
  v85 = a2;
  v82 = a3;
  v83 = a1;
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v79 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C918, &qword_1DC523AB0);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v72 - v22;
  v23 = sub_1DC510C8C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = sub_1DC510B6C();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = *(v9 + _MergedGlobals);
  if (v40)
  {
    v41 = *(v36 + 16);
    v78 = v39;
    v41();

    v42 = sub_1DC516AAC();
    v76 = v43;
    v77 = v42;
    (*(v26 + 16))(v31, v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale, v23);
    sub_1DC516A8C();
    v75 = sub_1DC516A7C();
    sub_1DC28FB9C(v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState, v94);
    sub_1DC28FB9C(v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider, v93);
    v44 = type metadata accessor for UserDefaultsRoutingDecisionOverrideProvider();
    v45 = sub_1DC2BA4FC();
    v92[3] = v44;
    v92[4] = &off_1F57F90D8;
    v92[0] = v45;
    sub_1DC28FB9C(v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient, v91);
    sub_1DC28FB9C(v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController, v90);
    v46 = *(v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient);
    v89[3] = sub_1DC5151AC();
    v89[4] = &off_1F57F9B00;
    v89[0] = v46;
    v47 = *(v40 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient);

    v74 = v47;

    v73 = sub_1DC3B5114(0);
    v72 = sub_1DC3B5114(0);
    sub_1DC51735C();
    v48 = v80;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    v53 = 0;
    if (sub_1DC3B5114(1))
    {
      v53 = sub_1DC2D14F0();
    }

    v79 = v31;
    sub_1DC316BEC();
    if (v54)
    {
      sub_1DC316BEC();
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v80 = type metadata accessor for NLRouterRequestProcessor(0);
    v63 = *(v9 + qword_1EDAC7DA0);

    sub_1DC36549C();
    v64 = sub_1DC3654E8();
    v65 = v87;

    v66 = v85;

    v67 = v84;

    HIBYTE(v71) = v56 & 1;
    LOBYTE(v71) = v53 & 1;
    HIBYTE(v70) = v72 & 1;
    LOBYTE(v70) = v73 & 1;
    sub_1DC365514(v82, v67, v78, v83, v66, v86, v65, v77, v76, v79, v81 & 1, v95, v75, v94, v93, v92, v91, v90, v89, v74, v70, v48, 0, 0, 1, &v88, v64, v71, v63);
    v17 = v68;
  }

  else
  {
    v57 = sub_1DC29120C();
    v58 = v79;
    (*(v79 + 16))(v17, v57, v10);
    v59 = sub_1DC516F6C();
    v60 = sub_1DC517BAC();
    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_17_4();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_31_2(v61);
      _os_log_impl(&dword_1DC287000, v59, v60, "sessionContext should have been created when we received SessionStartedMessage and should never be nil here.", v26, 2u);
      v62 = OUTLINED_FUNCTION_7_7();
      MEMORY[0x1E1298840](v62);
    }

    (*(v58 + 8))(v17, v10);
    sub_1DC316FBC();
    swift_allocError();
    swift_willThrow();
  }

  return v17;
}

void sub_1DC315228()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC516A0C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  sub_1DC5153FC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC51529C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC5152EC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  v9 = *MEMORY[0x1E69D2B08];
  v10 = *(v3 + 104);
  v11 = OUTLINED_FUNCTION_4_8();
  v10(v11);
  sub_1DC515B7C();
  type metadata accessor for NLRouterRequestProcessor(0);
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_36();
  v12(v13);
  v14 = OUTLINED_FUNCTION_4_8();
  v10(v14);
  sub_1DC515ABC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v15 = OUTLINED_FUNCTION_36();
  v12(v15);
  (v10)(v8, *MEMORY[0x1E69D2B10], v0);
  sub_1DC515C2C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v16 = OUTLINED_FUNCTION_36();
  v12(v16);
  v17 = *MEMORY[0x1E69D2B20];
  v18 = OUTLINED_FUNCTION_4_8();
  v10(v18);
  sub_1DC515BBC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v19 = OUTLINED_FUNCTION_36();
  v12(v19);
  v20 = OUTLINED_FUNCTION_4_8();
  v10(v20);
  sub_1DC515AFC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v21 = OUTLINED_FUNCTION_36();
  v12(v21);
  v22 = OUTLINED_FUNCTION_4_8();
  v10(v22);
  sub_1DC515C4C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v23 = OUTLINED_FUNCTION_36();
  v12(v23);
  v24 = *MEMORY[0x1E69D2B18];
  (v10)(v8, v24, v0);
  sub_1DC5152DC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v25 = OUTLINED_FUNCTION_36();
  v12(v25);
  (v10)(v8, v24, v0);
  sub_1DC515A9C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v26 = OUTLINED_FUNCTION_36();
  v12(v26);
  v27 = OUTLINED_FUNCTION_4_8();
  v10(v27);
  sub_1DC515CFC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v28 = OUTLINED_FUNCTION_36();
  v12(v28);
  v29 = OUTLINED_FUNCTION_4_8();
  v10(v29);
  sub_1DC515B9C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v30 = OUTLINED_FUNCTION_36();
  v12(v30);
  v31 = OUTLINED_FUNCTION_4_8();
  v10(v31);
  sub_1DC51539C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v32 = OUTLINED_FUNCTION_36();
  v12(v32);
  v33 = OUTLINED_FUNCTION_4_8();
  v10(v33);
  sub_1DC515D5C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v34 = OUTLINED_FUNCTION_36();
  v12(v34);
  v35 = OUTLINED_FUNCTION_4_8();
  v10(v35);
  sub_1DC515D4C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v36 = OUTLINED_FUNCTION_36();
  v12(v36);
  OUTLINED_FUNCTION_34();
}