void sub_19356CB34()
{
  OUTLINED_FUNCTION_62_3();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  if (v1 != 1701869940 || v2 != 0xE400000000000000)
  {
    v7 = v2;
    v8 = v1;
    v10 = v0[2];
    v9 = v0[3];
    if ((OUTLINED_FUNCTION_55_4() & 1) == 0)
    {
      v11 = v8 == 25705 && v7 == 0xE200000000000000;
      if (!v11 && (OUTLINED_FUNCTION_55_4() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v13 = v12;
        *v12 = v8;
        v12[1] = v7;
        v12[5] = &type metadata for IntelligenceFlowResponseGeneration.Event.Override;
        OUTLINED_FUNCTION_95();
        v14 = swift_allocObject();
        v13[2] = v14;
        *(v14 + 16) = v3;
        *(v14 + 24) = v4;
        *(v14 + 25) = v5;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        *(v13 + 48) = 1;
        swift_willThrow();

        goto LABEL_16;
      }

      if (!v9)
      {
        goto LABEL_7;
      }

LABEL_15:
      OUTLINED_FUNCTION_118_0();
      goto LABEL_16;
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_29();
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

void sub_19356CC98()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  if (v3 != 0x7265566C65646F6DLL || v1 != 0xEC0000006E6F6973)
  {
    v9 = v0[2];
    v8 = v0[3];
    if ((OUTLINED_FUNCTION_44_0() & 1) == 0)
    {
      v11 = v4 == OUTLINED_FUNCTION_32_16() && v2 == v10;
      if (!v11 && (OUTLINED_FUNCTION_44_0() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v13 = v12;
        *v12 = v4;
        v12[1] = v2;
        v12[5] = &type metadata for IntelligenceFlowResponseGeneration.Event.ModelInference;
        OUTLINED_FUNCTION_95();
        v14 = swift_allocObject();
        v13[2] = v14;
        v14[2] = v6;
        v14[3] = v5;
        v14[4] = v9;
        v14[5] = v8;
        *(v13 + 48) = 1;
        swift_willThrow();

        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_19356CDE8()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  if (v2 != 0x656D614E656C7572 || v1 != 0xE800000000000000)
  {
    v7 = v1;
    v8 = *(v0 + 16);
    v10 = v0[3];
    v9 = v0[4];
    if ((OUTLINED_FUNCTION_31_3() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v12 = v3 == 0xD000000000000013 && v11 == v7;
      if (v12 || (OUTLINED_FUNCTION_31_3() & 1) != 0)
      {
        if (v8 != 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v3 != 0xD000000000000011 || v13 != v7)
        {
          OUTLINED_FUNCTION_49_1();
          if ((OUTLINED_FUNCTION_31_3() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            v16 = v15;
            *v15 = v3;
            v15[1] = v7;
            v15[5] = &type metadata for IntelligenceFlowResponseGeneration.Event.SafetyCheck;
            v17 = swift_allocObject();
            v16[2] = v17;
            *(v17 + 16) = v5;
            *(v17 + 24) = v4;
            *(v17 + 32) = v8;
            *(v17 + 40) = v10;
            *(v17 + 48) = v9;
            *(v16 + 48) = 1;
            swift_willThrow();

            goto LABEL_15;
          }
        }

        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

uint64_t OUTLINED_FUNCTION_41_11()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 216);

  return sub_19393CA30();
}

double IntelligenceFlowResponseGeneration.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19343E508(v4);
  v5 = v2[7];
  sub_19357B6A8();
  v6 = v2[8];
  v7 = sub_19344BA58();
  v8 = v2[9];
  sub_19343E518(v7);
  v9 = v2[10];
  v10 = sub_19357B8F4();
  v11 = v2[11];
  v12 = sub_19343E518(v10);
  v13 = v2[12];
  sub_19343E518(v12);
  sub_19343E51C((a1 + v2[13]));
  v33 = v2[14];
  v15 = sub_19343E518(v14);
  v34 = v2[15];
  sub_19343E518(v15);
  v35 = v2[16];
  sub_19357BD60();
  v36 = v2[17];
  sub_19357BE70();
  v37 = v2[18];
  sub_1934DCAF4();
  v16 = a1 + v2[19];
  sub_19357C038(v16);
  *a1 = *sub_19357B508();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v17 = sub_19393BE00();
  OUTLINED_FUNCTION_16_1(a1 + v3, v18, v19, v17);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3D3C0, &qword_193963840);
  v20 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  OUTLINED_FUNCTION_16_1(a1 + v5, v21, v22, v20);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v23 = type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_16_1(a1 + v6, v24, v25, v23);
  sub_1934354B4(*(a1 + v8));
  *(a1 + v8) = 0xF000000000000007;
  sub_19344E6DC(a1 + v9, &qword_1EAE3D3C8, &qword_193963848);
  v26 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_16_1(a1 + v9, v27, v28, v26);
  OUTLINED_FUNCTION_121_4();
  sub_1934354B4(*(a1 + v13));
  *(a1 + v13) = 0xF000000000000007;
  OUTLINED_FUNCTION_121_4();
  OUTLINED_FUNCTION_121_4();
  OUTLINED_FUNCTION_121_4();
  sub_19344E6DC(a1 + v35, &qword_1EAE3D3D0, &unk_193964150);
  v29 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
  OUTLINED_FUNCTION_81_6(v29);
  sub_19344E6DC(a1 + v36, &qword_1EAE3D3D8, &qword_193963850);
  v30 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
  OUTLINED_FUNCTION_81_6(v30);
  sub_19344E6DC(a1 + v37, &qword_1EAE3B948, &qword_193957C10);
  v31 = type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_81_6(v31);
  OUTLINED_FUNCTION_123_6(v38);
  sub_19344E6DC(v38, &qword_1EAE3D3E0, &qword_193963858);
  result = 0.0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = -1;
  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v205 = a1;
  v184 = type metadata accessor for IntelligenceFlowIdentifiers();
  v2 = OUTLINED_FUNCTION_4_1(v184);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v179 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v181 = v10;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B950, &unk_193959140);
  OUTLINED_FUNCTION_4_1(v182);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v187 = v14;
  v15 = OUTLINED_FUNCTION_22_2();
  v189 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v15);
  v16 = OUTLINED_FUNCTION_4_1(v189);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_289();
  v180 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v186 = v24;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3E8, &qword_193963B38);
  OUTLINED_FUNCTION_4_1(v185);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_53_1();
  v192 = v28;
  v29 = OUTLINED_FUNCTION_22_2();
  v193 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v29);
  v30 = OUTLINED_FUNCTION_4_1(v193);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_289();
  v183 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
  OUTLINED_FUNCTION_47(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_53_1();
  v188 = v38;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3F0, &qword_193963B40);
  OUTLINED_FUNCTION_4_1(v190);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_53_1();
  v191 = v42;
  v43 = OUTLINED_FUNCTION_22_2();
  v198 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v43);
  v44 = OUTLINED_FUNCTION_4_1(v198);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_289();
  v194 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
  OUTLINED_FUNCTION_47(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_53_1();
  v195 = v52;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3F8, &qword_193963B48);
  OUTLINED_FUNCTION_4_1(v196);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_53_1();
  v197 = v56;
  OUTLINED_FUNCTION_22_2();
  v202 = type metadata accessor for MonotonicTimestamp();
  v57 = OUTLINED_FUNCTION_4_1(v202);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_289();
  v199 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_53_1();
  v200 = v65;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v201);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v178 - v69;
  v71 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v72 = OUTLINED_FUNCTION_4_1(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_1();
  v77 = v76 - v75;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
  OUTLINED_FUNCTION_47(v78);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v178 - v82;
  v84 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D400, &qword_193963B50) - 8);
  v85 = *(*v84 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v178 - v87;
  v203 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v89 = v203[7];
  v90 = v84[14];
  sub_193448850();
  sub_193448850();
  OUTLINED_FUNCTION_31(v88);
  if (v91)
  {
    OUTLINED_FUNCTION_31(&v88[v90]);
    if (v91)
    {
      sub_19344E6DC(v88, &qword_1EAE3D3C0, &qword_193963840);
      goto LABEL_11;
    }

LABEL_9:
    v93 = &qword_1EAE3D400;
    v94 = &qword_193963B50;
    v95 = v88;
    goto LABEL_20;
  }

  sub_193448850();
  OUTLINED_FUNCTION_31(&v88[v90]);
  if (v91)
  {
    OUTLINED_FUNCTION_46_13();
    sub_193571CCC(v83, v92);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_44_11();
  sub_19356E794();
  OUTLINED_FUNCTION_43_10();
  sub_193571D78(v96, v97);
  v98 = sub_19393C550();
  sub_193571CCC(v77, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
  sub_193571CCC(v83, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
  sub_19344E6DC(v88, &qword_1EAE3D3C0, &qword_193963840);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v99 = v203;
  v100 = v203[8];
  v101 = *(v201 + 48);
  v102 = &unk_193959120;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  v103 = v202;
  OUTLINED_FUNCTION_6_3(v70, 1, v202);
  if (v91)
  {
    OUTLINED_FUNCTION_31(&v70[v101]);
    if (v91)
    {
      sub_19344E6DC(v70, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_24;
    }

LABEL_19:
    v93 = &qword_1EAE3B958;
    v94 = &qword_193957B50;
    v95 = v70;
    goto LABEL_20;
  }

  v104 = v200;
  sub_193448850();
  OUTLINED_FUNCTION_31(&v70[v101]);
  if (v105)
  {
    OUTLINED_FUNCTION_57_5();
    sub_193571CCC(v104, v106);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_56_7();
  v108 = v199;
  sub_19356E794();
  OUTLINED_FUNCTION_55_8();
  sub_193571D78(v109, v110);
  v103 = sub_19393C550();
  v102 = type metadata accessor for MonotonicTimestamp;
  sub_193571CCC(v108, type metadata accessor for MonotonicTimestamp);
  sub_193571CCC(v104, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v70, &qword_1EAE3B498, &unk_193959120);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  OUTLINED_FUNCTION_14_23(v99[9]);
  if (v91)
  {
    v112 = v111 & ~v103;
    OUTLINED_FUNCTION_35_15();
    if (v112)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v102);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v113)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    sub_19356E740();
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v102);
    if ((v103 & 1) == 0)
    {
      return 0;
    }
  }

  v114 = v99[10];
  v115 = v197;
  v116 = *(v196 + 48);
  v102 = &qword_193963848;
  OUTLINED_FUNCTION_79_10();
  v117 = v115;
  OUTLINED_FUNCTION_79_10();
  v103 = v198;
  OUTLINED_FUNCTION_6_3(v115, 1, v198);
  if (v91)
  {
    OUTLINED_FUNCTION_31(v115 + v116);
    if (v91)
    {
      sub_19344E6DC(v115, &qword_1EAE3D3C8, &qword_193963848);
      goto LABEL_43;
    }

LABEL_41:
    v93 = &qword_1EAE3D3F8;
    v94 = &qword_193963B48;
    v95 = v117;
    goto LABEL_20;
  }

  v118 = v195;
  sub_193448850();
  OUTLINED_FUNCTION_31(v117 + v116);
  if (v119)
  {
    OUTLINED_FUNCTION_54_8();
    sub_193571CCC(v118, v120);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_53_12();
  v121 = v194;
  sub_19356E794();
  OUTLINED_FUNCTION_52_11();
  sub_193571D78(v122, v123);
  v103 = sub_19393C550();
  v102 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1;
  sub_193571CCC(v121, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
  sub_193571CCC(v118, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
  sub_19344E6DC(v117, &qword_1EAE3D3C8, &qword_193963848);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  OUTLINED_FUNCTION_14_23(v99[11]);
  if (v91)
  {
    v125 = v124 & ~v103;
    OUTLINED_FUNCTION_35_15();
    if (v125)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v102);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v126)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    sub_19356E6EC();
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v102);
    if ((v103 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23(v99[12]);
  if (v91)
  {
    v128 = v127 & ~v103;
    OUTLINED_FUNCTION_35_15();
    if (v128)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v102);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v129)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    sub_19356E698();
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v102);
    if ((v103 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23(v99[13]);
  if (v91)
  {
    v131 = v130 & ~v103;
    OUTLINED_FUNCTION_35_15();
    if (v131)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v102);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v132)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    sub_19356E644();
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v102);
    if ((v103 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23(v99[14]);
  if (v91)
  {
    v134 = v133 & ~v103;
    OUTLINED_FUNCTION_35_15();
    if (v134)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v102);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v135)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    sub_19356E5F0();
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v102);
    if ((v103 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23(v99[15]);
  if (v91)
  {
    v137 = v136 & ~v103;
    OUTLINED_FUNCTION_35_15();
    if (!v137)
    {
      sub_1934354B4(v102);
      goto LABEL_73;
    }

LABEL_31:
    sub_1934354B4(v102);
    sub_1934354B4(v103);
    return 0;
  }

  OUTLINED_FUNCTION_86_8();
  if (v138)
  {
LABEL_30:
    OUTLINED_FUNCTION_35_15();
    sub_193438388(v102);

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_20_17();
  sub_19356E59C();
  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_60_8();
  OUTLINED_FUNCTION_101_10();
  sub_1934354B4(v102);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_73:
  v139 = v99[16];
  v140 = *(v190 + 48);
  v141 = v191;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_6_3(v141, 1, v193);
  if (v91)
  {
    OUTLINED_FUNCTION_31(v141 + v140);
    if (v91)
    {
      sub_19344E6DC(v141, &qword_1EAE3D3D0, &unk_193964150);
      goto LABEL_83;
    }

LABEL_81:
    v93 = &qword_1EAE3D3F0;
    v94 = &qword_193963B40;
    v95 = v141;
    goto LABEL_20;
  }

  v142 = v188;
  sub_193448850();
  OUTLINED_FUNCTION_31(v141 + v140);
  if (v143)
  {
    OUTLINED_FUNCTION_51_10();
    sub_193571CCC(v142, v144);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_50_8();
  v145 = v183;
  sub_19356E794();
  OUTLINED_FUNCTION_49_8();
  sub_193571D78(v146, v147);
  v148 = sub_19393C550();
  sub_193571CCC(v145, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
  sub_193571CCC(v142, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
  sub_19344E6DC(v141, &qword_1EAE3D3D0, &unk_193964150);
  if ((v148 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v149 = v203[17];
  v150 = *(v185 + 48);
  v151 = v192;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_6_3(v151, 1, v189);
  if (!v91)
  {
    v152 = v192;
    sub_193448850();
    OUTLINED_FUNCTION_6_3(v152 + v150, 1, v189);
    if (!v153)
    {
      OUTLINED_FUNCTION_47_14();
      v155 = v192;
      v156 = v180;
      sub_19356E794();
      OUTLINED_FUNCTION_45_13();
      sub_193571D78(v157, v158);
      v159 = v186;
      v160 = sub_19393C550();
      sub_193571CCC(v156, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      sub_193571CCC(v159, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      sub_19344E6DC(v155, &qword_1EAE3D3D8, &qword_193963850);
      if ((v160 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_93;
    }

    OUTLINED_FUNCTION_48_9();
    sub_193571CCC(v186, v154);
LABEL_91:
    v93 = &qword_1EAE3D3E8;
    v94 = &qword_193963B38;
    v95 = v192;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_6_3(&v192[v150], 1, v189);
  if (!v91)
  {
    goto LABEL_91;
  }

  sub_19344E6DC(v192, &qword_1EAE3D3D8, &qword_193963850);
LABEL_93:
  v161 = v203[18];
  v162 = *(v182 + 48);
  v163 = v187;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_6_3(v163, 1, v184);
  if (v91)
  {
    OUTLINED_FUNCTION_6_3(&v187[v162], 1, v184);
    if (v91)
    {
      sub_19344E6DC(v187, &qword_1EAE3B948, &qword_193957C10);
      goto LABEL_103;
    }
  }

  else
  {
    v164 = v187;
    sub_193448850();
    OUTLINED_FUNCTION_6_3(v164 + v162, 1, v184);
    if (!v165)
    {
      OUTLINED_FUNCTION_41_12();
      v167 = v187;
      v168 = v179;
      sub_19356E794();
      OUTLINED_FUNCTION_40_9();
      sub_193571D78(v169, v170);
      v171 = v181;
      v172 = sub_19393C550();
      sub_193571CCC(v168, type metadata accessor for IntelligenceFlowIdentifiers);
      sub_193571CCC(v171, type metadata accessor for IntelligenceFlowIdentifiers);
      sub_19344E6DC(v167, &qword_1EAE3B948, &qword_193957C10);
      if ((v172 & 1) == 0)
      {
        return 0;
      }

LABEL_103:
      v173 = v203[19];
      memcpy(v214, (v205 + v173), sizeof(v214));
      v174 = v203[19];
      memcpy(__dst, (v204 + v174), sizeof(__dst));
      memcpy(v213, (v205 + v173), sizeof(v213));
      v175 = v214[96];
      memcpy(&v212[7], (v204 + v174), 0x60uLL);
      v176 = __dst[96];
      if (v214[96] == 255)
      {
        if (__dst[96] != 255)
        {
          OUTLINED_FUNCTION_79_10();
          OUTLINED_FUNCTION_79_10();
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_120_4();
        v210[96] = -1;
        OUTLINED_FUNCTION_79_10();
        OUTLINED_FUNCTION_79_10();
        sub_19344E6DC(v210, &qword_1EAE3D3E0, &qword_193963858);
      }

      else
      {
        OUTLINED_FUNCTION_120_4();
        v210[96] = v175;
        memcpy(v209, v210, sizeof(v209));
        if (v176 == 255)
        {
          memcpy(v208, v210, 0x61uLL);
          OUTLINED_FUNCTION_79_10();
          OUTLINED_FUNCTION_79_10();
          OUTLINED_FUNCTION_79_10();
          sub_19356E4F4(v208);
LABEL_111:
          memcpy(v210, v213, 0x60uLL);
          v210[96] = v175;
          memcpy(v211, v212, 0x67uLL);
          v211[103] = v176;
          v93 = &unk_1EAE3D408;
          v94 = &unk_193963B58;
          v95 = v210;
          goto LABEL_20;
        }

        memcpy(v208, (v204 + v174), 0x60uLL);
        v208[96] = v176;
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_102_9();
        sub_19356E548();
        v177 = sub_19393C550();
        memcpy(v206, v208, 0x61uLL);
        sub_19356E4F4(v206);
        memcpy(v207, v209, 0x61uLL);
        sub_19356E4F4(v207);
        memcpy(v208, v213, 0x60uLL);
        v208[96] = v175;
        sub_19344E6DC(v208, &qword_1EAE3D3E0, &qword_193963858);
        if ((v177 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    OUTLINED_FUNCTION_42_16();
    sub_193571CCC(v181, v166);
  }

  v93 = &qword_1EAE3B950;
  v94 = &unk_193959140;
  v95 = v187;
LABEL_20:
  sub_19344E6DC(v95, v93, v94);
  return 0;
}

unint64_t sub_19356E548()
{
  result = qword_1EAE3D410;
  if (!qword_1EAE3D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D410);
  }

  return result;
}

unint64_t sub_19356E59C()
{
  result = qword_1EAE3D428;
  if (!qword_1EAE3D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D428);
  }

  return result;
}

unint64_t sub_19356E5F0()
{
  result = qword_1EAE3D430;
  if (!qword_1EAE3D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D430);
  }

  return result;
}

unint64_t sub_19356E644()
{
  result = qword_1EAE3D438;
  if (!qword_1EAE3D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D438);
  }

  return result;
}

unint64_t sub_19356E698()
{
  result = qword_1EAE3D440;
  if (!qword_1EAE3D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D440);
  }

  return result;
}

unint64_t sub_19356E6EC()
{
  result = qword_1EAE3D448;
  if (!qword_1EAE3D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D448);
  }

  return result;
}

unint64_t sub_19356E740()
{
  result = qword_1EAE3D458;
  if (!qword_1EAE3D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D458);
  }

  return result;
}

uint64_t sub_19356E794()
{
  OUTLINED_FUNCTION_91_0();
  v3 = v2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t IntelligenceFlowResponseGeneration.hash(into:)(uint64_t a1)
{
  v118 = a1;
  v126 = type metadata accessor for IntelligenceFlowIdentifiers();
  v2 = OUTLINED_FUNCTION_4_1(v126);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v116 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v125 = v10;
  v11 = OUTLINED_FUNCTION_22_2();
  v124 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v11);
  v12 = OUTLINED_FUNCTION_4_1(v124);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_289();
  v115 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_1();
  v123 = v20;
  v21 = OUTLINED_FUNCTION_22_2();
  v122 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v21);
  v22 = OUTLINED_FUNCTION_4_1(v122);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_289();
  v114 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v121 = v30;
  v31 = OUTLINED_FUNCTION_22_2();
  v120 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v31);
  v32 = OUTLINED_FUNCTION_4_1(v120);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_289();
  v113 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53_1();
  v119 = v40;
  OUTLINED_FUNCTION_22_2();
  v117 = type metadata accessor for MonotonicTimestamp();
  v41 = OUTLINED_FUNCTION_4_1(v117);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_289();
  v112 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v111 - v49;
  v51 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v52 = OUTLINED_FUNCTION_4_1(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_1();
  v57 = v56 - v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
  OUTLINED_FUNCTION_47(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v111 - v62;
  v64 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v65 = v64[7];
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v63, 1, v51);
  if (v66)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_44_11();
    sub_19356E794();
    sub_19393CAD0();
    OUTLINED_FUNCTION_43_10();
    sub_193571D78(v67, v68);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_46_13();
    sub_193571CCC(v57, v69);
  }

  v70 = v64[8];
  v71 = v1;
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v50, 1, v117);
  v72 = v122;
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_56_7();
    v73 = v112;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_55_8();
    sub_193571D78(v74, v75);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_57_5();
    sub_193571CCC(v73, v76);
  }

  OUTLINED_FUNCTION_27_15(v64[9]);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F098();
    OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_99_10();
  }

  v77 = v120;
  v78 = v64[10];
  sub_193448850();
  v79 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v79, v80, v77);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_53_12();
    v81 = v113;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_52_11();
    sub_193571D78(v82, v83);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_54_8();
    sub_193571CCC(v81, v84);
  }

  OUTLINED_FUNCTION_27_15(v64[11]);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F0EC();
    OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15(v64[12]);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F140();
    OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15(v64[13]);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F194();
    OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15(v64[14]);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F1E8();
    OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15(v64[15]);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F23C();
    OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_99_10();
  }

  v85 = v126;
  v86 = v124;
  v87 = v64[16];
  sub_193448850();
  v88 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v88, v89, v72);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_50_8();
    v90 = v114;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_49_8();
    sub_193571D78(v91, v92);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_51_10();
    sub_193571CCC(v90, v93);
  }

  v94 = v64[17];
  sub_193448850();
  v95 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v95, v96, v86);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_47_14();
    v97 = v115;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_45_13();
    sub_193571D78(v98, v99);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_48_9();
    sub_193571CCC(v97, v100);
  }

  v101 = v64[18];
  sub_193448850();
  v102 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v102, v103, v85);
  if (v66)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_41_12();
    v104 = v116;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_40_9();
    sub_193571D78(v105, v106);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_42_16();
    sub_193571CCC(v104, v107);
  }

  v108 = (v1 + v64[19]);
  memcpy(__dst, (v71 + v64[19]), sizeof(__dst));
  v109 = v108[96];
  if (v109 == 255)
  {
    return OUTLINED_FUNCTION_87_9();
  }

  memcpy(v127, v108, 0x60uLL);
  v127[96] = v109;
  OUTLINED_FUNCTION_85_11();
  memcpy(v128, __dst, 0x60uLL);
  v128[96] = v109;
  sub_19356C6FC(v128, v129);
  sub_19356F290();
  sub_19393C540();
  memcpy(v129, v127, 0x61uLL);
  return sub_19356E4F4(v129);
}

unint64_t sub_19356F098()
{
  result = qword_1EAE3D470;
  if (!qword_1EAE3D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D470);
  }

  return result;
}

unint64_t sub_19356F0EC()
{
  result = qword_1EAE3D480;
  if (!qword_1EAE3D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D480);
  }

  return result;
}

unint64_t sub_19356F140()
{
  result = qword_1EAE3D488;
  if (!qword_1EAE3D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D488);
  }

  return result;
}

unint64_t sub_19356F194()
{
  result = qword_1EAE3D490;
  if (!qword_1EAE3D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D490);
  }

  return result;
}

unint64_t sub_19356F1E8()
{
  result = qword_1EAE3D498;
  if (!qword_1EAE3D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D498);
  }

  return result;
}

unint64_t sub_19356F23C()
{
  result = qword_1EAE3D4A0;
  if (!qword_1EAE3D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4A0);
  }

  return result;
}

unint64_t sub_19356F290()
{
  result = qword_1EAE3D4B8;
  if (!qword_1EAE3D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4B8);
  }

  return result;
}

uint64_t IntelligenceFlowResponseGeneration.ResponseSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.ResponseSource.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    v70 = sub_1934B0FCC(v64, v65, v66, v67, v68, v69);
    v8 = OUTLINED_FUNCTION_17_2(v70);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v71 = OUTLINED_FUNCTION_39(v19);
    v75 = OUTLINED_FUNCTION_85(v71, v72, v73, v74, &qword_1EAE3D5E8, &qword_193963E08);
    v15 = OUTLINED_FUNCTION_17_2(v75);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v76, v77, v78, v79, v80, v81);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v82, v83, v84, v85, v86, v87);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v88 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v88, v89, v90, v91, &qword_1EAE3D5E8, &qword_193963E08);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v41);
    OUTLINED_FUNCTION_31_17();
    v37 = sub_1934B0FCC(v92, v93, v94, v95, v96, v97);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v98 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v98, v99, v100, v101, &qword_1EAE3D5E8, &qword_193963E08);
    v45 = v42;
  }

  OUTLINED_FUNCTION_47_5(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4(v47, v48);
  if (v0 + 8 > (v53 >> 1))
  {
    OUTLINED_FUNCTION_39(v53);
    OUTLINED_FUNCTION_31_17();
    v49 = sub_1934B0FCC(v102, v103, v104, v105, v106, v107);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  OUTLINED_FUNCTION_4(v54, v55);
  if (v0 + 9 > (v60 >> 1))
  {
    v108 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v108, v109, v110, v111, &qword_1EAE3D5E8, &qword_193963E08);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  return OUTLINED_FUNCTION_89_3(v61, v62);
}

unint64_t IntelligenceFlowResponseGeneration.ResponseSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_64_7();
      break;
    case 2:
      result = OUTLINED_FUNCTION_63_8();
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_159();
      break;
    case 5:
      result = 0x6C65646F4D676C4ELL;
      break;
    case 6:
      result = 0x7070416E49;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowResponseGeneration.ResponseSource.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_141_0();
      v6 = v3 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_96_10();
        v7 = v3 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == OUTLINED_FUNCTION_165_2() && v0 == v8;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == OUTLINED_FUNCTION_159() && v0 == v10;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_95_7();
              v12 = v3 && v0 == 0xE800000000000000;
              if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v13 = v1 == 0x7070416E49 && v0 == 0xE500000000000000;
                if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v4 = 6;
                }

                else if (v1 == 0xD000000000000010 && 0x8000000193A1E940 == v0)
                {

                  v4 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t IntelligenceFlowResponseGeneration.OverrideType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.OverrideType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6944676E69727453;
  if (*v0 != 1)
  {
    v1 = 0x6F6C616944746143;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626C6C6146;
  }
}

uint64_t IntelligenceFlowResponseGeneration.FallbackReason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.FallbackReason.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    v84 = sub_1934B0FCC(v78, v79, v80, v81, v82, v83);
    v8 = OUTLINED_FUNCTION_17_2(v84);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v85 = OUTLINED_FUNCTION_39(v19);
    v89 = OUTLINED_FUNCTION_85(v85, v86, v87, v88, &qword_1EAE3D5D8, &qword_193963DF8);
    v15 = OUTLINED_FUNCTION_17_2(v89);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v90, v91, v92, v93, v94, v95);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v96, v97, v98, v99, v100, v101);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v102 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v102, v103, v104, v105, &qword_1EAE3D5D8, &qword_193963DF8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v41);
    OUTLINED_FUNCTION_31_17();
    v37 = sub_1934B0FCC(v106, v107, v108, v109, v110, v111);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v112 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v112, v113, v114, v115, &qword_1EAE3D5D8, &qword_193963DF8);
    v45 = v42;
  }

  OUTLINED_FUNCTION_47_5(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4(v47, v48);
  if (v0 + 8 > (v53 >> 1))
  {
    OUTLINED_FUNCTION_39(v53);
    OUTLINED_FUNCTION_31_17();
    v49 = sub_1934B0FCC(v116, v117, v118, v119, v120, v121);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  OUTLINED_FUNCTION_4(v54, v55);
  if (v0 + 9 > (v60 >> 1))
  {
    v122 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v122, v123, v124, v125, &qword_1EAE3D5D8, &qword_193963DF8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61, v62);
  if (v0 + 10 > (v67 >> 1))
  {
    OUTLINED_FUNCTION_39(v67);
    OUTLINED_FUNCTION_31_17();
    v63 = sub_1934B0FCC(v126, v127, v128, v129, v130, v131);
    v66 = v63;
  }

  OUTLINED_FUNCTION_50(v63, v64, v65, v66);
  OUTLINED_FUNCTION_4(v68, v69);
  if (v0 + 11 > (v74 >> 1))
  {
    v132 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v132, v133, v134, v135, &qword_1EAE3D5D8, &qword_193963DF8);
    v73 = v70;
  }

  OUTLINED_FUNCTION_47_5(v70, v71, v72, v73);
  return OUTLINED_FUNCTION_89_3(v75, v76);
}

void IntelligenceFlowResponseGeneration.FallbackReason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 8:
      case 9:
        return;
      case 2:
        OUTLINED_FUNCTION_158();
        break;
      case 3:
        OUTLINED_FUNCTION_73_7();
        break;
      case 4:
        OUTLINED_FUNCTION_59_10();
        break;
      case 5:
        OUTLINED_FUNCTION_58_9();
        break;
      case 6:
        OUTLINED_FUNCTION_75();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_74_7();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowResponseGeneration.FallbackReason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_83_8();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_61_7();
      v9 = v4 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = v1 == OUTLINED_FUNCTION_158() && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_118_6();
          v13 = v4 && v12 == v0;
          if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
            v15 = v4 && v14 == v0;
            if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_78_8();
              v17 = v4 && v0 == v16;
              if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_138();
                v19 = v4 && v18 == v0;
                if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v20 = v1 == v2 && 0x8000000193A19960 == v0;
                  if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_78_5();
                    v22 = v4 && v21 == v0;
                    if (v22 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else if (v1 == v2 + 7 && 0x8000000193A1E960 == v0)
                    {

                      v5 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9();
                      OUTLINED_FUNCTION_89();
                      v5 = 9;
                      if ((v1 & 1) == 0)
                      {
                        v5 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowResponseGeneration.FatalError.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

char *static IntelligenceFlowResponseGeneration.FatalError.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v4 = sub_193571B68(v0, v1, v2, v3);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_31_17();
    v4 = sub_193571B68(v8, v9, v10, v11);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = 0;
  return v4;
}

uint64_t IntelligenceFlowResponseGeneration.FatalError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 != 0x6E776F6E6B6E55 || a2 != 0xE700000000000000)
  {
    sub_19393CA30();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.RequestContext.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = *a1 >> 62;
  if (!v15)
  {
    if (v14 >> 62)
    {
LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    v21 = *(v14 + 16);
    LOBYTE(v36) = *(v13 + 16);
    LOBYTE(v31) = v21;

    v20 = static IntelligenceFlowResponseGeneration.RequestStarted.== infix(_:_:)(&v36, &v31);
    goto LABEL_8;
  }

  if (v15 == 1)
  {
    OUTLINED_FUNCTION_113_6();
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = swift_projectBox();
    v18 = swift_projectBox();
    sub_193571C68(v17, v12);
    sub_193571C68(v18, v10);

    static IntelligenceFlowResponseGeneration.RequestEnded.== infix(_:_:)();
    v20 = v19;
    sub_193571CCC(v10, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
    sub_193571CCC(v12, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
LABEL_8:

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_112_8();
  if (!v16)
  {
    goto LABEL_13;
  }

  v22 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v23 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
  v24 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v25 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  v28 = *(v25 + 48);
  v29 = *(v25 + 52);
  v36 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v37 = v24;
  v38 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v40 = v23;
  v39 = v22;
  v31 = v26;
  v32 = v27;
  v33 = *(v25 + 32);
  v35 = v29;
  v34 = v28;

  v20 = static IntelligenceFlowResponseGeneration.RequestFailed.== infix(_:_:)(&v36, &v31);

LABEL_12:

  return v20 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.RequestContext.hash(into:)()
{
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *v0 >> 62;
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = swift_projectBox();
      sub_193571C68(v10, v7);
      sub_193571D78(&qword_1EAE3D4C8, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
      sub_19393C540();
      return sub_193571CCC(v7, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
    }

    OUTLINED_FUNCTION_6_7((v8 & 0x3FFFFFFFFFFFFFFFLL));
    sub_193571D24();
  }

  else
  {
    v12 = *(v8 + 16);
    sub_193571DC0();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowResponseGeneration.OverrideContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_88_8(a1, a2);
  if (v5)
  {
    if (v5 == 1)
    {
      OUTLINED_FUNCTION_113_6();
      if (!v6)
      {
        goto LABEL_13;
      }

      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = *(v7 + 16);
      v49 = *(v7 + 24);
      v51 = *(v7 + 25);
      v52 = *(v7 + 32);
      v39 = *(v8 + 16);
      LOWORD(v40) = *(v8 + 24);
      v43 = *(v8 + 32);

      v17 = OUTLINED_FUNCTION_72_7(v9, v10, v11, v12, v13, v14, v15, v16, v39, v40, v43, *(&v43 + 1), v45, v47);
      static IntelligenceFlowResponseGeneration.OverrideEnded.== infix(_:_:)(v17, v18);
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (!v6)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_16_18();
      OUTLINED_FUNCTION_22_19();
      OUTLINED_FUNCTION_67_8();

      v36 = OUTLINED_FUNCTION_72_7(v28, v29, v30, v31, v32, v33, v34, v35, v38, v40, v42, v44, v45, v46);
      static IntelligenceFlowResponseGeneration.OverrideFailed.== infix(_:_:)(v36);
    }

    OUTLINED_FUNCTION_98_10();
  }

  else
  {
    if (v2 >> 62)
    {
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    v48 = *(v4 + 16);
    v50 = *(v4 + 24);
    LOBYTE(v38) = *(v2 + 16);
    v41 = *(v2 + 24);

    v27 = OUTLINED_FUNCTION_72_7(v19, v20, v21, v22, v23, v24, v25, v26, v38, v41, *(&v41 + 1), v44, v45, v48);
    static IntelligenceFlowResponseGeneration.OverrideStarted.== infix(_:_:)(v27);
    OUTLINED_FUNCTION_98_10();
  }

  return v3 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.OverrideContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      v7 = *(v2 + 25);
      v8 = *(v2 + 32);
      sub_193571E68();
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      sub_193571E14();
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_8(v0);
    sub_193571EBC();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t IntelligenceFlowResponseGeneration.ValidationContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      OUTLINED_FUNCTION_105_9(v2);
      sub_193571F64();
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      sub_193571F10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_8(v0);
    sub_193571FB8();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t sub_19357063C(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(char *), uint64_t (*a4)(char *), uint64_t (*a5)(char *))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a1 >> 62;
  if (!v7)
  {
    if (!(v6 >> 62))
    {
      v60 = *(v5 + 16);
      v61 = *(v5 + 24);
      LOBYTE(v51) = *(v6 + 16);
      v53 = *(v6 + 24);

      v28 = OUTLINED_FUNCTION_72_7(v20, v21, v22, v23, v24, v25, v26, v27, v51, v53, *(&v53 + 1), v56, v57, v60);
      v18 = a3(v28);

      goto LABEL_9;
    }

LABEL_10:
    v18 = 0;
    return v18 & 1;
  }

  if (v7 != 1)
  {
    if (v6 >> 62 == 2)
    {
      v30 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v31 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
      v32 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v33 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v34 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = *(v34 + 16);
      v36 = *(v34 + 24);
      v37 = *(v34 + 48);
      v38 = *(v34 + 52);
      OUTLINED_FUNCTION_22_19();
      v55 = *(v34 + 32);
      BYTE4(v57) = v39;
      LODWORD(v57) = v40;

      v49 = OUTLINED_FUNCTION_72_7(v41, v42, v43, v44, v45, v46, v47, v48, v51, v52, v55, *(&v55 + 1), v57, v58);
      v18 = a5(v49);

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v6 >> 62 != 1)
  {
    goto LABEL_10;
  }

  v59 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v51) = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

  v17 = OUTLINED_FUNCTION_72_7(v9, v10, v11, v12, v13, v14, v15, v16, v51, v52, v54, v56, v57, v59);
  v18 = a4(v17);

LABEL_9:

  return v18 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.CatalogContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      OUTLINED_FUNCTION_105_9(v2);
      sub_193572060();
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      sub_19357200C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_8(v0);
    sub_1935720B4();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t static IntelligenceFlowResponseGeneration.InferenceContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_88_8(a1, a2);
  if (v5)
  {
    if (v5 == 1)
    {
      OUTLINED_FUNCTION_113_6();
      if (!v6)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_119_5();
      LOBYTE(__dst[0]) = v7;
      LOBYTE(v16[0]) = v8;

      static IntelligenceFlowResponseGeneration.InferenceEnded.== infix(_:_:)(__dst, v16);
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (!v6)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_16_18();
      *&__dst[0] = v9;
      BYTE8(__dst[0]) = v10;
      __dst[1] = *(v4 + 32);
      BYTE4(__dst[2]) = v11;
      LODWORD(__dst[2]) = v12;
      v16[0] = v13;
      LOBYTE(v16[1]) = v14;
      OUTLINED_FUNCTION_67_8();

      static IntelligenceFlowResponseGeneration.InferenceFailed.== infix(_:_:)(__dst, v16);
    }

    OUTLINED_FUNCTION_98_10();
  }

  else
  {
    if (v2 >> 62)
    {
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    memcpy(v16, (v2 + 16), sizeof(v16));
    memcpy(__dst, (v4 + 16), sizeof(__dst));

    static IntelligenceFlowResponseGeneration.InferenceStarted.== infix(_:_:)(__dst, v16);
    OUTLINED_FUNCTION_98_10();
  }

  return v3 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.InferenceContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      LOBYTE(__dst[0]) = v2[1].n128_u8[0];
      sub_19357215C();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_6_7(v2);
      *&__dst[0] = v5;
      BYTE8(__dst[0]) = v6;
      __dst[1] = v4;
      BYTE4(__dst[2]) = v7;
      LODWORD(__dst[2]) = v8;
      sub_193572108();
    }
  }

  else
  {
    memcpy(__dst, (v0 + 16), sizeof(__dst));
    memcpy(v10, __dst, sizeof(v10));
    sub_1935721B0();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowResponseGeneration.HallucinationDetectionContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_88_8(a1, a2);
  if (v5)
  {
    if (v5 == 1)
    {
      OUTLINED_FUNCTION_113_6();
      if (!v6)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_119_5();
      v43 = v7;
      LOBYTE(v37) = v8;

      v17 = OUTLINED_FUNCTION_72_7(v9, v10, v11, v12, v13, v14, v15, v16, v37, v38, v39, v40, v41, v43);
      static IntelligenceFlowResponseGeneration.HallucinationDetectionEnded.== infix(_:_:)(v17);
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (!v6)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_16_18();
      OUTLINED_FUNCTION_22_19();
      OUTLINED_FUNCTION_67_8();

      v35 = OUTLINED_FUNCTION_72_7(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42);
      static IntelligenceFlowResponseGeneration.HallucinationDetectionFailed.== infix(_:_:)(v35);
    }

    OUTLINED_FUNCTION_98_10();
  }

  else
  {
    if (v2 >> 62)
    {
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    v44 = *(v4 + 16);
    LOBYTE(v37) = *(v2 + 16);

    v26 = OUTLINED_FUNCTION_72_7(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v40, v41, v44);
    static IntelligenceFlowResponseGeneration.HallucinationDetectionStarted.== infix(_:_:)(v26);
    OUTLINED_FUNCTION_98_10();
  }

  return v3 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.HallucinationDetectionContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      OUTLINED_FUNCTION_105_9(v2);
      sub_193572258();
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      sub_193572204();
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_9(v0);
    sub_1935722AC();
  }

  return OUTLINED_FUNCTION_154_0();
}

BOOL static IntelligenceFlowResponseGeneration.Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_123_6(&v207);
  memcpy(__dst, v0, 0x61uLL);
  OUTLINED_FUNCTION_123_6(v221);
  memcpy(v222, v0, sizeof(v222));
  v9 = v210;
  switch(v219)
  {
    case 1:
      if (LOBYTE(__dst[6]) != 1)
      {
        goto LABEL_14;
      }

      v194 = v207;
      LOWORD(v195) = v208 & 0x1FF;
      v185 = *&__dst[0];
      LOWORD(v186) = WORD4(__dst[0]) & 0x1FF;
      v135 = static IntelligenceFlowResponseGeneration.Event.Fallback.== infix(_:_:)(&v194, &v185);
      sub_19344E6DC(v221, &qword_1EAE3D550, &qword_193963B60);
      return v135;
    case 2:
      if (LOBYTE(__dst[6]) != 2)
      {
        goto LABEL_13;
      }

      LOWORD(v186) = v208 & 0x1FF;
      WORD4(v184[0]) = WORD4(__dst[0]) & 0x1FF;
      v57 = OUTLINED_FUNCTION_90_11(v210, v2, v3, v4, v5, v6, v7, v8, *&__dst[0], *(&v184[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v207, v186, v209, v210, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
      v65 = OUTLINED_FUNCTION_91_6(v57, v58, v59, v60, v61, v62, v63, v64, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
      v73 = OUTLINED_FUNCTION_91_6(v65, v66, v67, v68, v69, v70, v71, v72, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
      v81 = OUTLINED_FUNCTION_90_11(v73, v74, v75, v76, v77, v78, v79, v80, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
      v89 = OUTLINED_FUNCTION_109(v81, v82, v83, v84, v85, v86, v87, v88, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
      v56 = static IntelligenceFlowResponseGeneration.Event.Override.== infix(_:_:)(v89, v90);
      goto LABEL_16;
    case 3:
      if (LOBYTE(__dst[6]) != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_68_8();
      HIWORD(v186) = v91;
      v101 = OUTLINED_FUNCTION_90_11(v92, v93, v94, v95, v96, v97, v98, v99, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v100, v92, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
      v109 = OUTLINED_FUNCTION_91_6(v101, v102, v103, v104, v105, v106, v107, v108, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
      v117 = OUTLINED_FUNCTION_91_6(v109, v110, v111, v112, v113, v114, v115, v116, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
      v125 = OUTLINED_FUNCTION_90_11(v117, v118, v119, v120, v121, v122, v123, v124, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
      v133 = OUTLINED_FUNCTION_109(v125, v126, v127, v128, v129, v130, v131, v132, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
      v56 = static IntelligenceFlowResponseGeneration.Event.ModelInference.== infix(_:_:)(v133, v134);
      goto LABEL_16;
    case 4:
      if (LOBYTE(__dst[6]) == 4)
      {
        OUTLINED_FUNCTION_68_8();
        HIWORD(v186) = v10;
        LOBYTE(v187) = v11;
        LOBYTE(v184[1]) = v12;
        v22 = OUTLINED_FUNCTION_90_11(v13, v14, v15, v16, v17, v18, v19, v20, *&__dst[0], *(&__dst[0] + 1), *&v184[1], *(&__dst[1] + 1), *&__dst[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v13, v21, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
        v30 = OUTLINED_FUNCTION_91_6(v22, v23, v24, v25, v26, v27, v28, v29, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
        v38 = OUTLINED_FUNCTION_91_6(v30, v31, v32, v33, v34, v35, v36, v37, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
        v46 = OUTLINED_FUNCTION_90_11(v38, v39, v40, v41, v42, v43, v44, v45, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
        v54 = OUTLINED_FUNCTION_109(v46, v47, v48, v49, v50, v51, v52, v53, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
        v56 = static IntelligenceFlowResponseGeneration.Event.SafetyCheck.== infix(_:_:)(v54, v55);
        goto LABEL_16;
      }

LABEL_12:

LABEL_13:

      goto LABEL_14;
    default:
      if (LOBYTE(__dst[6]))
      {
        OUTLINED_FUNCTION_123_6(&v194);
        v9 = sub_19356C9B8(&v194, &v185);
LABEL_14:
        OUTLINED_FUNCTION_90_11(v9, v2, v3, v4, v5, v6, v7, v8, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
        sub_19344E6DC(v221, &qword_1EAE3D550, &qword_193963B60);
        return 0;
      }

      else
      {
        OUTLINED_FUNCTION_68_8();
        HIWORD(v186) = v136;
        v187 = v138;
        v188 = v137;
        v190 = *(v1 + 40);
        v191 = *(v1 + 56);
        v192 = *(v1 + 72);
        v139 = *(v1 + 88);
        v189 = v140;
        v193 = v139;
        v141 = memcpy(v184, v0, sizeof(v184));
        v149 = OUTLINED_FUNCTION_90_11(v141, v142, v143, v144, v145, v146, v147, v148, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
        v157 = OUTLINED_FUNCTION_91_6(v149, v150, v151, v152, v153, v154, v155, v156, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
        v165 = OUTLINED_FUNCTION_91_6(v157, v158, v159, v160, v161, v162, v163, v164, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
        v173 = OUTLINED_FUNCTION_90_11(v165, v166, v167, v168, v169, v170, v171, v172, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, __dst[0]);
        v181 = OUTLINED_FUNCTION_109(v173, v174, v175, v176, v177, v178, v179, v180, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
        v56 = static IntelligenceFlowResponseGeneration.Event.Generation.== infix(_:_:)(v181, v182);
LABEL_16:
        v135 = v56;
        sub_19344E6DC(v221, &qword_1EAE3D550, &qword_193963B60);
        sub_19356E4F4(__dst);
        sub_19356E4F4(&v207);
      }

      return v135;
  }
}

uint64_t IntelligenceFlowResponseGeneration.Event.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 10) | (*(v0 + 7) << 32);
  v4 = v0[4];
  switch(*(v0 + 96))
  {
    case 1:
      v7 = *v0;
      v9 = *(v0 + 8);
      sub_1935723FC();
      break;
    case 2:
      v6 = *v0;
      v8 = *(v0 + 8);
      v10 = v0[2];
      v11 = v0[3];
      sub_1935723A8();
      break;
    case 3:
      OUTLINED_FUNCTION_28_13();
      sub_193572354();
      break;
    case 4:
      OUTLINED_FUNCTION_28_13();
      sub_193572300();
      break;
    default:
      OUTLINED_FUNCTION_28_13();
      v12 = *(v0 + 5);
      v13 = *(v0 + 7);
      v14 = *(v0 + 9);
      v15 = v0[11];
      sub_193572450();
      break;
  }

  return sub_19393C540();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.Source.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.Event.Generation.Source.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    v55 = sub_1934B0FCC(v49, v50, v51, v52, v53, v54);
    v7 = OUTLINED_FUNCTION_17_2(v55);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v56 = OUTLINED_FUNCTION_39(v18);
    v60 = OUTLINED_FUNCTION_85(v56, v57, v58, v59, &qword_1EAE3D5C8, &qword_193963DE8);
    v14 = OUTLINED_FUNCTION_17_2(v60);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v61, v62, v63, v64, v65, v66);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v67, v68, v69, v70, v71, v72);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v73 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v73, v74, v75, v76, &qword_1EAE3D5C8, &qword_193963DE8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v77, v78, v79, v80, v81, v82);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v83 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE3D5C8, &qword_193963DE8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  return OUTLINED_FUNCTION_89_3(v46, v47);
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.Source.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_64_7();
      break;
    case 2:
      result = OUTLINED_FUNCTION_63_8();
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_159();
      break;
    case 5:
      result = 0x6C65646F4D676C4ELL;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowResponseGeneration.Event.Generation.Source.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_141_0();
      v6 = v3 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_96_10();
        v7 = v3 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == OUTLINED_FUNCTION_165_2() && v0 == v8;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == OUTLINED_FUNCTION_159() && v0 == v10;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_95_7();
              if (v3 && v0 == 0xE800000000000000)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_0_9();
                OUTLINED_FUNCTION_89();
                v4 = 5;
                if ((v1 & 1) == 0)
                {
                  v4 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t IntelligenceFlowResponseGeneration.Event.Fallback.Reason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.Event.Fallback.Reason.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    v77 = sub_1934B0FCC(v71, v72, v73, v74, v75, v76);
    v8 = OUTLINED_FUNCTION_17_2(v77);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v78 = OUTLINED_FUNCTION_39(v19);
    v82 = OUTLINED_FUNCTION_85(v78, v79, v80, v81, &qword_1EAE3D5C0, &qword_193963DE0);
    v15 = OUTLINED_FUNCTION_17_2(v82);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v83, v84, v85, v86, v87, v88);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v89, v90, v91, v92, v93, v94);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v95 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v95, v96, v97, v98, &qword_1EAE3D5C0, &qword_193963DE0);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v41);
    OUTLINED_FUNCTION_31_17();
    v37 = sub_1934B0FCC(v99, v100, v101, v102, v103, v104);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v105 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v105, v106, v107, v108, &qword_1EAE3D5C0, &qword_193963DE0);
    v45 = v42;
  }

  OUTLINED_FUNCTION_47_5(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4(v47, v48);
  if (v0 + 8 > (v53 >> 1))
  {
    OUTLINED_FUNCTION_39(v53);
    OUTLINED_FUNCTION_31_17();
    v49 = sub_1934B0FCC(v109, v110, v111, v112, v113, v114);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  OUTLINED_FUNCTION_4(v54, v55);
  if (v0 + 9 > (v60 >> 1))
  {
    v115 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v115, v116, v117, v118, &qword_1EAE3D5C0, &qword_193963DE0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61, v62);
  if (v0 + 10 > (v67 >> 1))
  {
    OUTLINED_FUNCTION_39(v67);
    OUTLINED_FUNCTION_31_17();
    v63 = sub_1934B0FCC(v119, v120, v121, v122, v123, v124);
    v66 = v63;
  }

  OUTLINED_FUNCTION_50(v63, v64, v65, v66);
  return OUTLINED_FUNCTION_38_1(v68, v69);
}

void IntelligenceFlowResponseGeneration.Event.Fallback.Reason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 8:
        return;
      case 2:
        OUTLINED_FUNCTION_158();
        break;
      case 3:
        OUTLINED_FUNCTION_73_7();
        break;
      case 4:
        OUTLINED_FUNCTION_59_10();
        break;
      case 5:
        OUTLINED_FUNCTION_58_9();
        break;
      case 6:
        OUTLINED_FUNCTION_75();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_74_7();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowResponseGeneration.Event.Fallback.Reason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_83_8();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_61_7();
      v9 = v4 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = v1 == OUTLINED_FUNCTION_158() && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_118_6();
          v13 = v4 && v12 == v0;
          if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
            v15 = v4 && v14 == v0;
            if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_78_8();
              v17 = v4 && v0 == v16;
              if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_138();
                v19 = v4 && v18 == v0;
                if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v20 = v1 == v2 && 0x8000000193A19960 == v0;
                  if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_78_5();
                    if (v4 && v21 == v0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9();
                      OUTLINED_FUNCTION_89();
                      v5 = 8;
                      if ((v1 & 1) == 0)
                      {
                        v5 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_193571920()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v2, v3, v4, v5, v1, v0);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v19 = OUTLINED_FUNCTION_51((v8 > 1), v9 + 1, v6, v7);
    OUTLINED_FUNCTION_17_2(v19);
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  *(v12 + 4) = 0;
  v12[40] = 0;
  v13 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v20 = OUTLINED_FUNCTION_51((v8 > 1), v9 + 2, v6, v7);
    OUTLINED_FUNCTION_17_2(v20);
  }

  *(v7 + 2) = v13;
  v14 = &v7[16 * v11];
  *(v14 + 4) = 0;
  v14[40] = 1;
  v15 = v9 + 3;
  if (v10 < (v9 + 3))
  {
    v7 = OUTLINED_FUNCTION_51((v8 > 1), v9 + 3, v6, v7);
  }

  *(v7 + 2) = v15;
  v16 = &v7[16 * v13];
  *(v16 + 4) = 1;
  v16[40] = 1;
  v17 = *(v7 + 3);
  if ((v9 + 4) > (v17 >> 1))
  {
    v7 = OUTLINED_FUNCTION_51((v17 > 1), v9 + 4, v6, v7);
  }

  *(v7 + 2) = v9 + 4;
  return OUTLINED_FUNCTION_38_1(v7, &v7[16 * v15]);
}

void _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV12OverrideTypeOyAESgSScfC_0()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_141_0();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == 0x6944676E69727453 && v0 == 0xEC000000676F6C61;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x6F6C616944746143 && v0 == 0xE900000000000067)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

char *sub_193571B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D5D0, &qword_193963DF0);
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

uint64_t sub_193571C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_193571CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_193571D24()
{
  result = qword_1EAE3D4C0;
  if (!qword_1EAE3D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4C0);
  }

  return result;
}

uint64_t sub_193571D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_193571DC0()
{
  result = qword_1EAE3D4D0;
  if (!qword_1EAE3D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4D0);
  }

  return result;
}

unint64_t sub_193571E14()
{
  result = qword_1EAE3D4D8;
  if (!qword_1EAE3D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4D8);
  }

  return result;
}

unint64_t sub_193571E68()
{
  result = qword_1EAE3D4E0;
  if (!qword_1EAE3D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4E0);
  }

  return result;
}

unint64_t sub_193571EBC()
{
  result = qword_1EAE3D4E8;
  if (!qword_1EAE3D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4E8);
  }

  return result;
}

unint64_t sub_193571F10()
{
  result = qword_1EAE3D4F0;
  if (!qword_1EAE3D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4F0);
  }

  return result;
}

unint64_t sub_193571F64()
{
  result = qword_1EAE3D4F8;
  if (!qword_1EAE3D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4F8);
  }

  return result;
}

unint64_t sub_193571FB8()
{
  result = qword_1EAE3D500;
  if (!qword_1EAE3D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D500);
  }

  return result;
}

unint64_t sub_19357200C()
{
  result = qword_1EAE3D508;
  if (!qword_1EAE3D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D508);
  }

  return result;
}

unint64_t sub_193572060()
{
  result = qword_1EAE3D510;
  if (!qword_1EAE3D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D510);
  }

  return result;
}

unint64_t sub_1935720B4()
{
  result = qword_1EAE3D518;
  if (!qword_1EAE3D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D518);
  }

  return result;
}

unint64_t sub_193572108()
{
  result = qword_1EAE3D520;
  if (!qword_1EAE3D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D520);
  }

  return result;
}

unint64_t sub_19357215C()
{
  result = qword_1EAE3D528;
  if (!qword_1EAE3D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D528);
  }

  return result;
}

unint64_t sub_1935721B0()
{
  result = qword_1EAE3D530;
  if (!qword_1EAE3D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D530);
  }

  return result;
}

unint64_t sub_193572204()
{
  result = qword_1EAE3D538;
  if (!qword_1EAE3D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D538);
  }

  return result;
}

unint64_t sub_193572258()
{
  result = qword_1EAE3D540;
  if (!qword_1EAE3D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D540);
  }

  return result;
}

unint64_t sub_1935722AC()
{
  result = qword_1EAE3D548;
  if (!qword_1EAE3D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D548);
  }

  return result;
}

unint64_t sub_193572300()
{
  result = qword_1EAE3D558;
  if (!qword_1EAE3D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D558);
  }

  return result;
}

unint64_t sub_193572354()
{
  result = qword_1EAE3D560;
  if (!qword_1EAE3D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D560);
  }

  return result;
}

unint64_t sub_1935723A8()
{
  result = qword_1EAE3D568;
  if (!qword_1EAE3D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D568);
  }

  return result;
}

unint64_t sub_1935723FC()
{
  result = qword_1EAE3D570;
  if (!qword_1EAE3D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D570);
  }

  return result;
}

unint64_t sub_193572450()
{
  result = qword_1EAE3D578;
  if (!qword_1EAE3D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D578);
  }

  return result;
}

unint64_t sub_1935724A8()
{
  result = qword_1EAE3D580;
  if (!qword_1EAE3D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D580);
  }

  return result;
}

unint64_t sub_193572500()
{
  result = qword_1EAE3D588;
  if (!qword_1EAE3D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D588);
  }

  return result;
}

unint64_t sub_193572558()
{
  result = qword_1EAE3D590;
  if (!qword_1EAE3D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D590);
  }

  return result;
}

unint64_t sub_1935725B0()
{
  result = qword_1EAE3D598;
  if (!qword_1EAE3D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D598);
  }

  return result;
}

unint64_t sub_193572608()
{
  result = qword_1EAE3D5A0;
  if (!qword_1EAE3D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D5A0);
  }

  return result;
}

unint64_t sub_193572660()
{
  result = qword_1EAE3D5A8;
  if (!qword_1EAE3D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D5A8);
  }

  return result;
}

unint64_t sub_1935726B8()
{
  result = qword_1EAE3D5B0;
  if (!qword_1EAE3D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D5B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60_8()
{
  v2 = *(v0 + 848) & 0x3FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_65_8()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_66_10()
{
  *(v0 + 336) = v1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  v3 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_101_10()
{
  v2 = *(v0 + 640) & 0x3FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_102_9()
{

  return sub_193448850();
}

void *OUTLINED_FUNCTION_120_4()
{
  v3 = (*(v0 + 216) + v1);

  return memcpy((v0 + 640), v3, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_121_4()
{
  result = sub_1934354B4(*(v0 + v2));
  *(v0 + v2) = v1;
  return result;
}

void *OUTLINED_FUNCTION_123_6(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

void sub_1935729AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA0E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v46 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v46, xmmword_193952680);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("metadata");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_0_0(v10, "timestamp");
  v8(v11);
  v12 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v13 = 10;
  v14 = OUTLINED_FUNCTION_0_0(v12, "requestContext");
  v8(v14);
  v15 = OUTLINED_FUNCTION_45_2(3 * v4);
  *v16 = 11;
  *v15 = "requestEndedTier1";
  v15[1] = 17;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  v8(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v19 = 12;
  *v18 = "overrideContext";
  v18[1] = 15;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  v8(v20);
  v21 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v22 = 13;
  v23 = OUTLINED_FUNCTION_16_6(v21, "validationContext");
  v8(v23);
  v24 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v25 = 14;
  *v24 = "catalogContext";
  v24[1] = 14;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  v8(v26);
  OUTLINED_FUNCTION_120();
  v28 = OUTLINED_FUNCTION_45_2(v27);
  *v29 = 15;
  *v28 = "inferenceContext";
  v28[1] = 16;
  v30 = OUTLINED_FUNCTION_1_3(v28);
  v8(v30);
  v31 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v32 = 16;
  v33 = OUTLINED_FUNCTION_0_0(v31, "hallucinationDetectionContext");
  v8(v33);
  v34 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v35 = 17;
  v36 = OUTLINED_FUNCTION_16_6(v34, "gmsCallContext");
  v8(v36);
  v37 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v38 = 18;
  v39 = OUTLINED_FUNCTION_0_0(v37, "cacheManagerCallContext");
  v8(v39);
  v40 = OUTLINED_FUNCTION_3_1(v0 + 11 * v4);
  *v41 = 1001;
  v42 = OUTLINED_FUNCTION_0_0(v40, "intelligenceFlowIds");
  v8(v42);
  v43 = OUTLINED_FUNCTION_3_1(v0 + 12 * v4);
  *v44 = 1002;
  v45 = OUTLINED_FUNCTION_0_0(v43, "event");
  v8(v45);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193572CEC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 28);
        type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 2:
        v10 = *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 32);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        continue;
      case 10:
        v7 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v7 + 36));
        goto LABEL_20;
      case 11:
        v8 = *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 40);
        type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 12:
        v5 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v5 + 44));
        goto LABEL_20;
      case 13:
        v11 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v11 + 48));
        goto LABEL_20;
      case 14:
        v12 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v12 + 52));
        goto LABEL_20;
      case 15:
        v9 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v9 + 56));
        goto LABEL_20;
      case 16:
        v14 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v14 + 60));
        goto LABEL_20;
      case 17:
        v6 = *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 64);
        type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 18:
        v13 = *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 68);
        type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      default:
        if (v1 == 1001)
        {
          v15 = *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 72);
          type metadata accessor for IntelligenceFlowIdentifiers();
          OUTLINED_FUNCTION_42_4();
        }

        else
        {
          if (v1 != 1002)
          {
            continue;
          }

          v4 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
          OUTLINED_FUNCTION_160(*(v4 + 76));
        }

LABEL_20:
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193572F7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193573204();
  if (!v1)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193573310();
    v2 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v3 = v2;
    if ((~*(v0 + *(v2 + 36)) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + *(v2 + 36));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_19357341C();
    if ((~*(v0 + v3[11]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[11]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[12]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[12]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[13]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[13]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[14]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[14]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[15]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[15]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193573528();
    OUTLINED_FUNCTION_11_1();
    sub_193573634();
    OUTLINED_FUNCTION_11_1();
    sub_193573740();
    v4 = (v0 + v3[19]);
    v5 = v4[96];
    if (v5 != 255)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v7 = v5;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_193573204()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowResponseGeneration(v13);
  OUTLINED_FUNCTION_39_1(*(v14 + 28));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3C0, &qword_193963840);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573310()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for MonotonicTimestamp();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowResponseGeneration(v12);
  OUTLINED_FUNCTION_39_1(*(v13 + 32));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19357341C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowResponseGeneration(v13);
  OUTLINED_FUNCTION_39_1(*(v14 + 40));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3C8, &qword_193963848);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573528()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowResponseGeneration(v13);
  OUTLINED_FUNCTION_39_1(*(v14 + 64));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3D0, &unk_193964150);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573634()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowResponseGeneration(v13);
  OUTLINED_FUNCTION_39_1(*(v14 + 68));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3D8, &qword_193963850);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573740()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for IntelligenceFlowIdentifiers();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowResponseGeneration(v12);
  OUTLINED_FUNCTION_39_1(*(v13 + 72));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3B948, &qword_193957C10);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowIdentifiers);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935738B0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA100);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_193951270);
  OUTLINED_FUNCTION_102("ResponseSourceUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "ResponseSourceTool");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = v0;
  *v14 = "ResponseSourceFallback";
  v14[1] = 22;
  v16 = OUTLINED_FUNCTION_56_0(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v17 = "ResponseSourceOverride";
  *(v17 + 1) = 22;
  v18 = OUTLINED_FUNCTION_56_0(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_25(v19, "ResponseSourceClientCache");
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v22 = OUTLINED_FUNCTION_25(v21, "ResponseSourceResponseCatalog");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_54_1(6);
  *v23 = "ResponseSourceNlgModel";
  *(v23 + 1) = 22;
  v24 = OUTLINED_FUNCTION_56_0(v23);
  (v10)(v24);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_44(v25);
  OUTLINED_FUNCTION_181_0(v26);
  v28 = OUTLINED_FUNCTION_25(v27, "ResponseSourceInApp");
  (v10)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v30 = 8;
  *v29 = "ResponseSourceContinueOnDevice";
  *(v29 + 8) = 30;
  *(v29 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193573B7C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA130);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_1939526F0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("FallbackReasonUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_0_0(v11, "FallbackReasonNotAdoptingNLGAPI");
  v9(v12);
  v13 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "FallbackReasonNotInAllowList");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "FallbackReasonDeniedRequest");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "FallbackReasonGuardrailDetectedHallucination");
  v9(v18);
  v19 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_0_0(v19, "FallbackReasonModelDetectedHallucination");
  v9(v21);
  v22 = OUTLINED_FUNCTION_54_1(6);
  v23 = OUTLINED_FUNCTION_0_0(v22, "FallbackReasonOverridden");
  v9(v23);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_45_2(v24);
  OUTLINED_FUNCTION_181_0(v25);
  v27 = OUTLINED_FUNCTION_0_0(v26, "FallbackReasonModelServerTimeout");
  v9(v27);
  v28 = OUTLINED_FUNCTION_3_1(&v0[v4]);
  *v29 = 8;
  v30 = OUTLINED_FUNCTION_0_0(v28, "FallbackReasonModelServerError");
  v9(v30);
  v31 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_0_0(v31, "FallbackReasonDetectedSafetyIssue");
  v9(v33);
  v34 = OUTLINED_FUNCTION_54_1(10);
  v35 = OUTLINED_FUNCTION_0_0(v34, "FallbackReasonCatalogCATMissingLocale");
  v9(v35);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193573EA8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA160);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("ifRequestId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "postingSpanId");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "rgId");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193573FF8()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 24);
        type metadata accessor for AIML.UUID();
LABEL_10:
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 20));
        sub_19393C230();
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        goto LABEL_10;
    }
  }
}

void sub_1935740CC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193574EA4();
  if (!v1)
  {
    v2 = (v0 + *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 20));
    if ((v2[1] & 1) == 0)
    {
      v3 = *v2;
      OUTLINED_FUNCTION_130();
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193574158();
  }
}

void sub_193574158()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v12);
  OUTLINED_FUNCTION_39_1(*(v13 + 24));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_73_8();
    sub_19357B254(v0, v1, v15);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::RequestStarted sub_1935742B8@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowResponseGeneration.RequestStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935742F4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA178);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_24_0(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193574440()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  OUTLINED_FUNCTION_37_11();
  v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v39 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D890, &qword_193963E10);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36[-v15];
  v53 = &v36[-v15];
  v37 = v3;
  v38 = v0;
  while (1)
  {
    v17 = OUTLINED_FUNCTION_124();
    if (v1 || (v18 & 1) != 0)
    {
      break;
    }

    switch(v17)
    {
      case 3:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 2;
        v52 = 0;
        v51 = 0;
        sub_193498018();
        v25 = OUTLINED_FUNCTION_106_10();
        v26 = v50;
        if (v50 == 2)
        {
          IntelligenceFlowResponseGeneration.RequestFailed.init()(&v41, v25);
          v27 = v41;
          v28 = v42;
          v29 = v43;
          v26 = v44;
          v30 = v45 | (v46 << 32);
        }

        else
        {
          v30 = v51 | (v52 << 32);
          v29 = v49;
          v28 = v48;
          v27 = v47;
          v41 = v47;
        }

        OUTLINED_FUNCTION_100_11();
        v35 = swift_allocObject();
        *(v35 + 16) = v27;
        *(v35 + 24) = v28 & 1;
        *(v35 + 32) = v29;
        *(v35 + 40) = v26;
        *(v35 + 52) = BYTE4(v30);
        *(v35 + 48) = v30;
        v3 = v37;
        v2 = v38;
        *v38 = v35 | 0x8000000000000000;
        v16 = v53;
        break;
      case 2:
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        v21 = v16;
        v22 = v16;
        v23 = v40;
        sub_1934486F8(v21, v40, &qword_1EAE3D890, &qword_193963E10);
        if (__swift_getEnumTagSinglePayload(v23, 1, v3) == 1)
        {
          v24 = v39;
          IntelligenceFlowResponseGeneration.RequestEnded.init()();
          sub_19344E6DC(v22, &qword_1EAE3D890, &qword_193963E10);
          if (__swift_getEnumTagSinglePayload(v23, 1, v3) != 1)
          {
            sub_19344E6DC(v40, &qword_1EAE3D890, &qword_193963E10);
          }
        }

        else
        {
          sub_19344E6DC(v22, &qword_1EAE3D890, &qword_193963E10);
          OUTLINED_FUNCTION_76_8();
          v24 = v39;
          sub_19357B254(v23, v39, v31);
        }

        v32 = swift_allocBox();
        OUTLINED_FUNCTION_76_8();
        sub_19357B254(v24, v33, v34);
        *v2 = v32 | 0x4000000000000000;
        v16 = v53;
        break;
      case 1:
        LOBYTE(v47) = 3;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        v19 = v47;
        if (v47 == 3)
        {
          IntelligenceFlowResponseGeneration.RequestStarted.init()();
          v19 = v41;
        }

        OUTLINED_FUNCTION_111_7();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *v2 = v20;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193574808()
{
  OUTLINED_FUNCTION_103();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *v0 >> 62;
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = swift_projectBox();
      sub_193571C68(v10, v7);
      sub_193447600();
      sub_19357B2B4(v7, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
      return;
    }

    OUTLINED_FUNCTION_6_7((v8 & 0x3FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v11 = *(v8 + 16);
  }

  sub_193447600();
}

void sub_193574A1C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA1A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v0;
  v6 = v4 + v0 + dword_1EAEAA1E0;
  *(v4 + v0) = 1;
  *v6 = "linkId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_59_2((v5 + v3));
  v13 = OUTLINED_FUNCTION_16_6(v12, "responseSource");
  v10(v13);
  v14 = OUTLINED_FUNCTION_9_4((v5 + 2 * v3));
  v15 = OUTLINED_FUNCTION_16_6(v14, "characterCount");
  v10(v15);
  v16 = OUTLINED_FUNCTION_13((v5 + 3 * v3));
  v17 = OUTLINED_FUNCTION_0_0(v16, "wordCount");
  v10(v17);
  v18 = OUTLINED_FUNCTION_19_2((v5 + 4 * v3));
  v19 = OUTLINED_FUNCTION_16_6(v18, "fallbackReason");
  v10(v19);
  v20 = OUTLINED_FUNCTION_3_1(v5 + 5 * v3);
  *v21 = 6;
  v22 = OUTLINED_FUNCTION_0_0(v20, "transcriptEventId");
  v10(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193574C14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID();
        goto LABEL_13;
      case 2:
        v5 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
        OUTLINED_FUNCTION_160(*(v5 + 20));
        goto LABEL_11;
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0) + 24);
        goto LABEL_9;
      case 4:
        v4 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0) + 28);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C220();
        break;
      case 5:
        v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
        OUTLINED_FUNCTION_160(*(v3 + 32));
LABEL_11:
        sub_1934982A8();
        break;
      case 6:
        v6 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0) + 36);
        type metadata accessor for AIML.UUID();
LABEL_13:
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193574D64()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193574EA4();
  if (!v1)
  {
    v2 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v3 = v0 + v2[5];
    if ((*(v3 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147(v3);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }

    v10 = (v0 + v2[6]);
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      OUTLINED_FUNCTION_130();
      sub_19393C3D0();
    }

    v12 = (v0 + v2[7]);
    if ((v12[1] & 1) == 0)
    {
      v13 = *v12;
      OUTLINED_FUNCTION_130();
      sub_19393C3D0();
    }

    v14 = v0 + v2[8];
    if ((*(v14 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147(v14);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v15, v16, v17, v18, v19, v20);
    }

    OUTLINED_FUNCTION_11_1();
    sub_193574FC0();
  }
}

void sub_193574EA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  sub_1934486F8(v1, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19357B254(v0, v14, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193574FC0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v12);
  OUTLINED_FUNCTION_39_1(*(v13 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_73_8();
    sub_19357B254(v0, v1, v15);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193575120()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA1C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("reason");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575284()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAA1D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("linkId");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "displayString");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "spokenString");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_16_6(v15, "catId");
  v9(v16);
  v17 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v18 = 5;
  v19 = OUTLINED_FUNCTION_0_0(v17, "staticDialogId");
  v9(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575438()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        continue;
      case 2:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 20);
        goto LABEL_10;
      case 3:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 24);
        goto LABEL_10;
      case 4:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 28);
        goto LABEL_10;
      case 5:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 32);
LABEL_10:
        OUTLINED_FUNCTION_8_2(v3);
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193575528()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193574EA4();
  if (!v0)
  {
    v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
    OUTLINED_FUNCTION_16_4(v1[5]);
    if (v3)
    {
      v4 = *v2;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v1[6]);
    if (v6)
    {
      v7 = *v5;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v1[7]);
    if (v9)
    {
      v10 = *v8;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v1[8]);
    if (v12)
    {
      v13 = *v11;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

unsigned __int8 sub_193575660@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_97_6();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowResponseGeneration.OverrideStarted.init()();
  *a1 = v1;
  return result;
}

void sub_19357569C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA1F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_24_0(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575A08()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v8)
    {
      v23 = *(v7 + 24);
      v24 = *(v7 + 25);
      v25 = *(v7 + 32);
      OUTLINED_FUNCTION_165_4(v1, v2, v3, &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded, v4, &off_1F07CC698, v5, v6, v21, *(v7 + 16));
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v15, v16, v17, &type metadata for IntelligenceFlowResponseGeneration.OverrideFailed, v18, &off_1F07CC6C8, v19, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_9();
    OUTLINED_FUNCTION_153(v9, v10, v11, &type metadata for IntelligenceFlowResponseGeneration.OverrideStarted, v12, &off_1F07CC668, v13, v14, v21, v22);
  }

  sub_193447600();
}

void sub_193575B18()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA208);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "assetVersion");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575C7C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA220);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("overrideType");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "overrideId");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575E30()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA238);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

unsigned __int8 sub_193575F94@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_97_6();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowResponseGeneration.ValidationStarted.init()();
  *a1 = v1;
  return result;
}

void sub_193575FD0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA250);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_24_0(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935762DC()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v1)
    {
      OUTLINED_FUNCTION_184_5();
      OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.ValidationEnded, v5, &off_1F07CC758, v6, v7, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for IntelligenceFlowResponseGeneration.ValidationFailed, v17, &off_1F07CC788, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_9();
    OUTLINED_FUNCTION_153(v8, v9, v10, &type metadata for IntelligenceFlowResponseGeneration.ValidationStarted, v11, &off_1F07CC728, v12, v13, v20, v21);
  }

  sub_193447600();
}

void sub_1935763D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA268);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "assetVersion");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357657C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA298);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935766F0()
{
  OUTLINED_FUNCTION_115();
  v19 = v1;
  v3 = v2;
  v4 = sub_19393C420();
  __swift_allocate_value_buffer(v4, v3);
  __swift_project_value_buffer(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v6 = *(*v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19394FBC0;
  v8 = v7 + v0;
  v9 = v7 + v0 + v5[14];
  *(v7 + v0) = 1;
  *v9 = "startedOrChanged";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v11);
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_10_0();
  v13();
  v14 = v8 + v6 + v5[14];
  *(v8 + v6) = 2;
  *v14 = "ended";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v13();
  v15 = (v8 + 2 * v6);
  v16 = v15 + v5[14];
  *v15 = 3;
  *v16 = "failed";
  *(v16 + 1) = 6;
  v16[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v13();
  v17 = (v8 + 3 * v6);
  v18 = v17 + v5[14];
  *v17 = v19;
  *v18 = "traceId";
  *(v18 + 1) = 7;
  v18[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v13();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1935768F8()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.CacheManagerCallStarted.init()();
          v5 = v37;
        }

        *v0 = v5;
        break;
      case 2:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.CacheManagerCallEnded.init()();
          v7 = v37;
        }

        *(v0 + 1) = v7;
        break;
      case 3:
        OUTLINED_FUNCTION_99_11();
        sub_193498018();
        if (v45 == 2)
        {
          v2 = &v37;
          v16 = IntelligenceFlowResponseGeneration.CacheManagerCallFailed.init()(&v37);
          OUTLINED_FUNCTION_98_11(v16, v17, v18, v19, v20, v21, v22, v23, v33, v35, v37, v38, v39);
        }

        else
        {
          OUTLINED_FUNCTION_91_7(v8, v9, v10, v11, v12, v13, v14, v15, v33, v35, v37, v38, v39, v40, v41, v42, v43, v44);
        }

        v2 = *v2;
        v24 = *(v0 + 40) | (*(v0 + 44) << 32);
        v25 = sub_193456418(*(v0 + 24), *(v0 + 32));
        OUTLINED_FUNCTION_87_10(v25, v26, v27, v28, v29, v30, v31, v32, v34, *v36, v36[4]);
        break;
      case 4:
        v2 = *(type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0) + 28);
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193576AC4()
{
  v3 = v1;
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_178_4();
  IntelligenceFlowResponseGeneration.CacheManagerCallStarted.init()();
  sub_19357B200();
  if ((OUTLINED_FUNCTION_102_10() & 1) == 0)
  {
    LOBYTE(v62) = v2;
    OUTLINED_FUNCTION_61_8();
    v3 = v1;
  }

  if (!v3)
  {
    v4 = *(v0 + 1);
    LOBYTE(v62) = v4;
    IntelligenceFlowResponseGeneration.CacheManagerCallEnded.init()();
    sub_19357B1AC();
    if ((OUTLINED_FUNCTION_102_10() & 1) != 0 || (LOBYTE(v62) = v4, OUTLINED_FUNCTION_61_8(), !v1))
    {
      v5 = *(v0 + 16);
      v6 = *(v0 + 24);
      v7 = *(v0 + 32);
      v8 = *(v0 + 44);
      v9 = *(v0 + 40);
      v10 = v9 | (v8 << 32);
      v68 = *(v0 + 8);
      v62 = v68;
      HIDWORD(v40) = v5;
      LOBYTE(v63) = v5;
      v64 = v6;
      v65 = v7;
      v67 = v8;
      v66 = v9;
      v11 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v11, v12);
      v13 = IntelligenceFlowResponseGeneration.CacheManagerCallFailed.init()(&v58);
      OUTLINED_FUNCTION_79_11(v13, v14, v15, v16, v17, v18, v19, v20, v40, v43, v46, v49, v52, v55, v58, v59, v60);
      sub_19357B158();
      v21 = sub_19393C550();
      v22 = sub_193456418(v50, v53);
      OUTLINED_FUNCTION_78_9(v22, v23, v24, v25, v26, v27, v28, v29, v41, v44, v47, v50, v53, v56, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65);
      if (v21)
      {
        goto LABEL_8;
      }

      v62 = v68;
      LOBYTE(v63) = BYTE4(v42);
      v64 = v6;
      v65 = v7;
      v66 = v10;
      v67 = BYTE4(v10);
      v30 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v30, v31);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_78_9(v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v51, v54, v57, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65);
      if (!v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_130();
        sub_1935772F0();
      }
    }
  }
}

void sub_193576DB4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA2F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193576F28()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.GMSCallStarted.init()();
          v5 = v37;
        }

        *v0 = v5;
        break;
      case 2:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.GMSCallEnded.init()();
          v7 = v37;
        }

        *(v0 + 1) = v7;
        break;
      case 3:
        OUTLINED_FUNCTION_99_11();
        sub_193498018();
        if (v45 == 2)
        {
          v2 = &v37;
          v16 = IntelligenceFlowResponseGeneration.GMSCallFailed.init()(&v37);
          OUTLINED_FUNCTION_98_11(v16, v17, v18, v19, v20, v21, v22, v23, v33, v35, v37, v38, v39);
        }

        else
        {
          OUTLINED_FUNCTION_91_7(v8, v9, v10, v11, v12, v13, v14, v15, v33, v35, v37, v38, v39, v40, v41, v42, v43, v44);
        }

        v2 = *v2;
        v24 = *(v0 + 40) | (*(v0 + 44) << 32);
        v25 = sub_193456418(*(v0 + 24), *(v0 + 32));
        OUTLINED_FUNCTION_87_10(v25, v26, v27, v28, v29, v30, v31, v32, v34, *v36, v36[4]);
        break;
      case 5:
        v2 = *(type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0) + 28);
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935770F4()
{
  v3 = v1;
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_178_4();
  IntelligenceFlowResponseGeneration.GMSCallStarted.init()();
  sub_19357B104();
  if ((OUTLINED_FUNCTION_102_10() & 1) == 0)
  {
    LOBYTE(v62) = v2;
    OUTLINED_FUNCTION_61_8();
    v3 = v1;
  }

  if (!v3)
  {
    v4 = *(v0 + 1);
    LOBYTE(v62) = v4;
    IntelligenceFlowResponseGeneration.GMSCallEnded.init()();
    sub_19357B0B0();
    if ((OUTLINED_FUNCTION_102_10() & 1) != 0 || (LOBYTE(v62) = v4, OUTLINED_FUNCTION_61_8(), !v1))
    {
      v5 = *(v0 + 16);
      v6 = *(v0 + 24);
      v7 = *(v0 + 32);
      v8 = *(v0 + 44);
      v9 = *(v0 + 40);
      v10 = v9 | (v8 << 32);
      v68 = *(v0 + 8);
      v62 = v68;
      HIDWORD(v40) = v5;
      LOBYTE(v63) = v5;
      v64 = v6;
      v65 = v7;
      v67 = v8;
      v66 = v9;
      v11 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v11, v12);
      v13 = IntelligenceFlowResponseGeneration.GMSCallFailed.init()(&v58);
      OUTLINED_FUNCTION_79_11(v13, v14, v15, v16, v17, v18, v19, v20, v40, v43, v46, v49, v52, v55, v58, v59, v60);
      sub_19357B05C();
      v21 = sub_19393C550();
      v22 = sub_193456418(v50, v53);
      OUTLINED_FUNCTION_78_9(v22, v23, v24, v25, v26, v27, v28, v29, v41, v44, v47, v50, v53, v56, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65);
      if (v21)
      {
        goto LABEL_8;
      }

      v62 = v68;
      LOBYTE(v63) = BYTE4(v42);
      v64 = v6;
      v65 = v7;
      v66 = v10;
      v67 = BYTE4(v10);
      v30 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v30, v31);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_78_9(v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v51, v54, v57, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65);
      if (!v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_130();
        sub_1935772F0();
      }
    }
  }
}

void sub_1935772F0()
{
  OUTLINED_FUNCTION_26();
  v20[0] = v1;
  v20[1] = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v3(0);
  sub_1934486F8(v5 + *(v19 + 28), v11, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19344E6DC(v11, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19357B254(v11, v18, type metadata accessor for AIML.UUID);
    sub_193447600();
    sub_19357B2B4(v18, type metadata accessor for AIML.UUID);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193577568()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA358);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

unsigned __int8 sub_1935776CC@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_97_6();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowResponseGeneration.CatalogStarted.init()();
  *a1 = v1;
  return result;
}

void sub_193577708()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA370);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_24_0(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193577A14()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v1)
    {
      OUTLINED_FUNCTION_184_5();
      OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.CatalogEnded, v5, &off_1F07CC998, v6, v7, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for IntelligenceFlowResponseGeneration.CatalogFailed, v17, &off_1F07CC9C8, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_9();
    OUTLINED_FUNCTION_153(v8, v9, v10, &type metadata for IntelligenceFlowResponseGeneration.CatalogStarted, v11, &off_1F07CC968, v12, v13, v20, v21);
  }

  sub_193447600();
}

void sub_193577B08()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA388);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "assetVersion");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193577C38()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193577CA0()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_71_11();
    }
  }
}

void sub_193577DC4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA3B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193577F58(void *a1@<X8>)
{
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  IntelligenceFlowResponseGeneration.InferenceStarted.init()(v3);
  *a1 = v1;
}

void sub_193577F98()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA3D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_24_0(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935780E4()
{
  v2 = v0;
  OUTLINED_FUNCTION_37_11();
  v21 = v0;
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        __src = 0uLL;
        *&v16 = 0;
        *(&v16 + 1) = 2;
        BYTE4(v17) = 0;
        LODWORD(v17) = 0;
        sub_193498018();
        v7 = OUTLINED_FUNCTION_106_10();
        if (*(&v16 + 1) == 2)
        {
          p_dst = &__dst;
          IntelligenceFlowResponseGeneration.InferenceFailed.init()(&__dst, v7);
        }

        else
        {
          p_dst = &__src;
        }

        v9 = *p_dst;
        OUTLINED_FUNCTION_100_11();
        v10 = swift_allocObject();
        OUTLINED_FUNCTION_92_6(v10);
        v2 = v21;
        *v21 = v11;
        break;
      case 2:
        LOBYTE(__src) = 3;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        if (__src == 3)
        {
          IntelligenceFlowResponseGeneration.InferenceEnded.init()();
        }

        OUTLINED_FUNCTION_111_7();
        v5 = swift_allocObject();
        OUTLINED_FUNCTION_175_4(v5);
        *v2 = v6;
        break;
      case 1:
        __src = 0u;
        v16 = 0u;
        v17 = 2;
        v18 = 0u;
        v19 = 0u;
        v20 = 0;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        if (v17 == 2)
        {
          IntelligenceFlowResponseGeneration.InferenceStarted.init()(v13);
        }

        else
        {
          v13[0] = __src;
          v13[1] = v16;
          *(&v13[2] + 8) = v18;
          *(&v13[3] + 8) = v19;
          *(&v13[4] + 1) = v20;
          *&v13[2] = v17;
        }

        v12 = swift_allocObject();
        memcpy((v12 + 16), v13, 0x50uLL);
        *v2 = v12;
        break;
    }
  }
}

void sub_193578388()
{
  OUTLINED_FUNCTION_103();
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    if (v2 == 1)
    {
      LOBYTE(__dst[0]) = v3[1].n128_u8[0];
    }

    else
    {
      v10 = OUTLINED_FUNCTION_6_7(v3);
      *&__dst[0] = v11;
      BYTE8(__dst[0]) = v12;
      __dst[1] = v10;
      BYTE4(__dst[2]) = v13;
      LODWORD(__dst[2]) = v14;
    }
  }

  else
  {
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    v4 = memcpy(v15, __dst, sizeof(v15));
    OUTLINED_FUNCTION_134(v4, v5, v6, &type metadata for IntelligenceFlowResponseGeneration.InferenceStarted, v7, &off_1F07CCA28, v8, v9, v15[0]);
  }

  sub_193447600();
}

void sub_1935784E4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA3E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("modelVersion");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "promptVersion");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193578614()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193578688()
{
  v2 = *(v0 + 9);
  if (*(v0 + 4) != 1)
  {
    v3 = *v0;
    v5 = v0[1];
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1 && v2 != 1)
  {
    v4 = *(v0 + 40);
    v6 = *(v0 + 56);
    sub_193447600();
  }
}

void sub_1935787F0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA418);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::HallucinationDetectionStarted sub_193578954@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowResponseGeneration.HallucinationDetectionStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_193578990()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA430);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_24_0(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 40) != 1)
  {
  }

  OUTLINED_FUNCTION_100_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_193578CF8()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v1)
    {
      OUTLINED_FUNCTION_184_5();
      OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionEnded, v5, &off_1F07CCB18, v6, v7, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionFailed, v17, &off_1F07CCB48, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_5();
    OUTLINED_FUNCTION_153(v8, v9, v10, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionStarted, v11, &off_1F07CCAE8, v12, v13, v20, v21);
  }

  sub_193447600();
}

uint64_t sub_193578E48()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193578EC8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA478);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "error");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193578FF8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

void sub_19357909C()
{
  OUTLINED_FUNCTION_22_0();
  v8 = v0[2];
  v9 = v0[3];
  LOBYTE(v24) = *(v0 + 8);
  v23 = *v0;
  if (v24)
  {
    if (v1)
    {
      return;
    }
  }

  else
  {
    sub_19357B000(&v23, v27);
    v10 = sub_19357B000(v27, &v22);
    OUTLINED_FUNCTION_134(v10, v11, v12, &type metadata for IntelligenceFlowResponseGeneration.FatalError, v13, &off_1F07CC4F0, v14, v15, v22);
    OUTLINED_FUNCTION_78_1();
    v2 = sub_193447324(v16, v17, v18, v19, v20, v21);
    if (v1)
    {
      return;
    }
  }

  if (v9 != 1)
  {
    v25 = *(v0 + 8);
    v26 = *(v0 + 36);
    v24 = v9;
    OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.RGError, v5, &off_1F07CCB78, v6, v7, v22, v8);
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }
}

void sub_1935791B8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA490);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("errorDomain");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "errorCode");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935792E8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C170();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_193579350()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 20);
  if (v0[1])
  {
    v4 = *v0;
    result = OUTLINED_FUNCTION_181();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    return sub_19393C350();
  }

  return result;
}

void *sub_193579430@<X0>(_BYTE *a1@<X8>)
{
  IntelligenceFlowResponseGeneration.Event.Generation.init()(v3);
  result = memcpy(a1, v3, 0x60uLL);
  a1[96] = 0;
  return result;
}

void sub_193579474()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA4A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("generation");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_16_6(v11, "fallback");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_16_6(v13, "override");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "modelInference");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "safetyCheck");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193579620()
{
  OUTLINED_FUNCTION_37_11();
  v28 = xmmword_1939526A0;
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v30 = 0u;
        memset(v31, 0, 24);
        *&v31[24] = 1;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, *(&v28 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), 0);
        sub_193498018();
        memcpy(__dst, v0, 0x61uLL);
        sub_19356E4F4(__dst);
        if (*&v31[24] == 1)
        {
          IntelligenceFlowResponseGeneration.Event.Generation.init()(__src);
        }

        else
        {
          __src[0] = v30;
          __src[1] = *v31;
          __src[3] = v32;
          __src[4] = v33;
          __src[5] = v34;
          __src[2] = *&v31[16];
        }

        memcpy(v0, __src, 0x60uLL);
        *(v0 + 96) = 0;
        break;
      case 2:
        WORD4(v30) = 0;
        BYTE10(v30) = 1;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, *(&v28 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), 0);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        v23 = sub_19356E4F4(__dst);
        if (BYTE10(v30))
        {
          v24 = &v35;
          IntelligenceFlowResponseGeneration.Event.Fallback.init()(&v35, v23);
          object = v35.ruleName.value._object;
          LOBYTE(v26) = BYTE1(v35.ruleName.value._object);
        }

        else
        {
          object = BYTE8(v30);
          v26 = HIBYTE(WORD4(v30)) & 1;
          v24 = &v30;
        }

        countAndFlagsBits = v24->ruleName.value._countAndFlagsBits;
        v37 = v26;
        *v0 = countAndFlagsBits;
        *(v0 + 8) = object;
        *(v0 + 9) = v26;
        *(v0 + 96) = 1;
        break;
      case 3:
        v30 = 0uLL;
        *v31 = 0;
        *&v31[8] = 1;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, *(&v28 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), 0);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        v14 = sub_19356E4F4(__dst);
        v15 = *&v31[8];
        if (*&v31[8] == 1)
        {
          IntelligenceFlowResponseGeneration.Event.Override.init()(&v35, v14);
          v16 = v35.ruleName.value._countAndFlagsBits;
          v17 = v35.ruleName.value._object;
          LOBYTE(v18) = BYTE1(v35.ruleName.value._object);
          v19 = *&v35.isProfanityFiltered.value;
          v15 = v35.ruleFailureReason.value._countAndFlagsBits;
        }

        else
        {
          v17 = BYTE8(v30);
          v19 = *v31;
          v16 = v30;
          v18 = (*(&v30 + 1) >> 8) & 1;
          v35.ruleName.value._countAndFlagsBits = v30;
        }

        v37 = v18;
        *v0 = v16;
        *(v0 + 8) = v17;
        *(v0 + 9) = v18;
        v0[2] = v19;
        v0[3] = v15;
        *(v0 + 96) = 2;
        break;
      case 4:
        *(&v30 + 1) = *(&v28 + 1);
        *v31 = 0uLL;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, *(&v28 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), v28);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        sub_19356E4F4(__dst);
        v20 = *(&v30 + 1);
        if (*(&v30 + 1) == 1)
        {
          v21 = &v35;
          IntelligenceFlowResponseGeneration.Event.ModelInference.init()();
          v20 = v35.ruleName.value._object;
          v22 = *&v35.isProfanityFiltered.value;
        }

        else
        {
          v21 = &v30;
          v22 = *v31;
        }

        *v0 = v21->ruleName.value._countAndFlagsBits;
        v0[1] = v20;
        *(v0 + 1) = v22;
        *(v0 + 96) = 3;
        break;
      case 5:
        *(&v30 + 1) = *(&v28 + 1);
        memset(v31, 0, 24);
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, *(&v28 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), v28);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        sub_19356E4F4(__dst);
        v10 = *(&v30 + 1);
        if (*(&v30 + 1) == 1)
        {
          IntelligenceFlowResponseGeneration.Event.SafetyCheck.init()(&v35);
          v11 = v35.ruleName.value._countAndFlagsBits;
          v10 = v35.ruleName.value._object;
          value = v35.isProfanityFiltered.value;
          ruleFailureReason = v35.ruleFailureReason;
        }

        else
        {
          ruleFailureReason = *&v31[8];
          v11 = v30;
          value = v31[0];
          v35.ruleName = v30;
        }

        *v0 = v11;
        v0[1] = v10;
        *(v0 + 16) = value;
        *(v0 + 3) = ruleFailureReason;
        *(v0 + 96) = 4;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935799F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_193579A40()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 10) | (*(v0 + 7) << 32);
  v4 = v0[4];
  switch(*(v0 + 96))
  {
    case 1:
      v13 = *v0;
      v15 = *(v0 + 8);
      break;
    case 2:
      v12 = *v0;
      v14 = *(v0 + 8);
      v16 = v0[2];
      v17 = v0[3];
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_58_10();
      break;
    default:
      OUTLINED_FUNCTION_58_10();
      v18 = *(v0 + 5);
      v19 = *(v0 + 7);
      v20 = *(v0 + 9);
      v21 = v0[11];
      OUTLINED_FUNCTION_134(v5, v6, v7, &type metadata for IntelligenceFlowResponseGeneration.Event.Generation, v8, &off_1F07CCBD8, v9, v10, v11);
      break;
  }

  sub_193447600();
}

void sub_193579C08()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA4C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v25 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v25, xmmword_193952700);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("source");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "characterCount");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "wordCount");
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v16 = OUTLINED_FUNCTION_0_0(v15, "displayString");
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v18 = 5;
  v19 = OUTLINED_FUNCTION_0_0(v17, "spokenString");
  (v9)(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v21 = 6;
  v22 = OUTLINED_FUNCTION_16_6(v20, "catId");
  (v9)(v22);
  OUTLINED_FUNCTION_3_1(v0 + 6 * v5);
  OUTLINED_FUNCTION_181_0(v23);
  *v24 = "staticDialogId";
  *(v24 + 8) = 14;
  *(v24 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193579E1C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193579EEC()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v5 = *(v0 + 24);
  v6 = v0[5];
  v21 = v0[4];
  v7 = v0[7];
  v15 = v0[8];
  v16 = v0[6];
  v14 = v0[10];
  v17 = v0[9];
  v18 = v0[11];
  if ((*(v0 + 9) & 1) == 0)
  {
    v19 = *v0;
    v20 = *(v0 + 8);
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v8, v9, v10, v11, v12, v13);
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v17)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v18)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_19357A0A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA4D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_193952700);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SourceUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_17_8((v0 + v5));
  v13 = OUTLINED_FUNCTION_0_0(v12, "SourceTool");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_59_2((v0 + 2 * v5));
  v15 = OUTLINED_FUNCTION_16_6(v14, "SourceFallback");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_9_4((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_16_6(v16, "SourceOverride");
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_13((v0 + 4 * v5));
  v19 = OUTLINED_FUNCTION_0_0(v18, "SourceClientCache");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v21 = 5;
  v22 = OUTLINED_FUNCTION_0_0(v20, "SourceResponseCatalog");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_54_1(6);
  *v23 = "SourceNlgModel";
  *(v23 + 1) = 14;
  v23[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357A2F4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_1934982A8();
    }
  }
}

void sub_19357A358()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    v14 = *(v0 + 8) & 1;
    v8 = OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for IntelligenceFlowResponseGeneration.Event.Fallback.Reason, v4, &off_1F07CCC60, v5, v6, v7);
    sub_193447324(v8, v9, v10, v11, v12, v13);
  }
}

void sub_19357A418()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA508);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_193952660);
  OUTLINED_FUNCTION_102("ReasonUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "ReasonNotAdoptingNLGAPI");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_25(v14, "ReasonNotInAllowList");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "ReasonDeniedRequest");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_25(v19, "ReasonGuardrailDetectedHallucination");
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v22 = OUTLINED_FUNCTION_25(v21, "ReasonModelDetectedHallucination");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_54_1(6);
  v24 = OUTLINED_FUNCTION_25(v23, "ReasonOverridden");
  (v10)(v24);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_44(v25);
  OUTLINED_FUNCTION_181_0(v26);
  v28 = OUTLINED_FUNCTION_25(v27, "ReasonModelServerTimeout");
  (v10)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v30 = 8;
  v31 = OUTLINED_FUNCTION_25(v29, "ReasonModelServerError");
  (v10)(v31);
  v32 = OUTLINED_FUNCTION_44(9 * v5);
  *v33 = 9;
  *v32 = "ReasonDetectedSafetyIssue";
  *(v32 + 8) = 25;
  *(v32 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357A6D4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA520);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("type");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "id";
  *(v11 + 8) = v0;
  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357A808()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_19393C200();
    }

    else if (v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

void sub_19357A8A4()
{
  OUTLINED_FUNCTION_89_11();
  v2 = v0[2];
  v3 = v0[3];
  if ((*(v0 + 9) & 1) == 0)
  {
    v10 = *v0;
    v11 = v0[1] & 1;
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v4, v5, v6, v7, v8, v9);
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_71_11();
    }
  }
}

void sub_19357A9AC()
{
  OUTLINED_FUNCTION_115();
  v3 = v2;
  v4 = sub_19393C420();
  __swift_allocate_value_buffer(v4, v3);
  __swift_project_value_buffer(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v8, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("OverrideTypeUnknown");
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  v13 = OUTLINED_FUNCTION_50_1();
  (v12)(v13);
  v14 = OUTLINED_FUNCTION_17_8((v1 + v7));
  v15 = OUTLINED_FUNCTION_25(v14, "OverrideTypeFallbackDialog");
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v17 = v0;
  v18 = OUTLINED_FUNCTION_25(v16, "OverrideTypeStringDialog");
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_9_4((v1 + 3 * v7));
  *v19 = "OverrideTypeCatDialog";
  *(v19 + 1) = 21;
  v19[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357AB78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA550);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("modelVersion");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "promptVersion");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357ACA8()
{
  OUTLINED_FUNCTION_89_11();
  v2 = v0[2];
  v3 = v0[3];
  if (v0[1])
  {
    v4 = *v0;
    OUTLINED_FUNCTION_86_9();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_71_11();
    }
  }
}

void sub_19357AD48()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA568);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("ruleName");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "isProfanityFiltered");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "ruleFailureReason");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19357AE98()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
    }
  }
}

void sub_19357AF10()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = v0[4];
  if (v0[1])
  {
    v5 = *v0;
    OUTLINED_FUNCTION_86_9();
  }

  if (!v1)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v4)
    {
      OUTLINED_FUNCTION_86_9();
    }
  }
}

unint64_t sub_19357B05C()
{
  result = qword_1EAE3D8A8;
  if (!qword_1EAE3D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8A8);
  }

  return result;
}

unint64_t sub_19357B0B0()
{
  result = qword_1EAE3D8B0;
  if (!qword_1EAE3D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8B0);
  }

  return result;
}

unint64_t sub_19357B104()
{
  result = qword_1EAE3D8B8;
  if (!qword_1EAE3D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8B8);
  }

  return result;
}

unint64_t sub_19357B158()
{
  result = qword_1EAE3D8C0;
  if (!qword_1EAE3D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8C0);
  }

  return result;
}

unint64_t sub_19357B1AC()
{
  result = qword_1EAE3D8C8;
  if (!qword_1EAE3D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8C8);
  }

  return result;
}

unint64_t sub_19357B200()
{
  result = qword_1EAE3D8D0;
  if (!qword_1EAE3D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8D0);
  }

  return result;
}

uint64_t sub_19357B254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19357B2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_21_16()
{
  result = v0[2];
  v2 = v0[1].n128_u64[0];
  v3 = v0[1].n128_u8[8];
  v5 = v0[3].n128_u8[4];
  v4 = v0[3].n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_63_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_19345FEB8(a14, a15, a16, a17);
}

uint64_t OUTLINED_FUNCTION_86_9()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_102_10()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_109_9(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *v4 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_173_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_19345FEB8(a16, a17, a18, a19);
}

uint64_t IntelligenceFlowResponseGeneration.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t IntelligenceFlowResponseGeneration.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t IntelligenceFlowResponseGeneration.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowResponseGeneration.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowResponseGeneration.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357B6A8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowResponseGeneration.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowResponseGeneration.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.requestContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 36));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.requestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357B8F4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.requestEndedTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3D3C8, &qword_193963848, *(v1 + 40));
}

uint64_t IntelligenceFlowResponseGeneration.requestEndedTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3D3C8, &qword_193963848, *(v1 + 40));
}

uint64_t IntelligenceFlowResponseGeneration.requestEndedTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.overrideContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 44));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.overrideContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.validationContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 48));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.validationContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.catalogContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 52));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.catalogContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.inferenceContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 56));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.inferenceContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.hallucinationDetectionContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 60));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.hallucinationDetectionContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357BD60()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.gmsCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3D3D0, &unk_193964150, *(v1 + 64));
}

uint64_t IntelligenceFlowResponseGeneration.gmsCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3D3D0, &unk_193964150, *(v1 + 64));
}

uint64_t IntelligenceFlowResponseGeneration.gmsCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357BE70()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.cacheManagerCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3D3D8, &qword_193963850, *(v1 + 68));
}

uint64_t IntelligenceFlowResponseGeneration.cacheManagerCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3D3D8, &qword_193963850, *(v1 + 68));
}

uint64_t IntelligenceFlowResponseGeneration.cacheManagerCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.intelligenceFlowIds.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3B948, &qword_193957C10, *(v1 + 72));
}

uint64_t IntelligenceFlowResponseGeneration.intelligenceFlowIds.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3B948, &qword_193957C10, *(v1 + 72));
}

uint64_t IntelligenceFlowResponseGeneration.intelligenceFlowIds.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

double sub_19357C038@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = -1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.event.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v2) + 76);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  memcpy(v0, (v1 + v3), 0x61uLL);
  return sub_193448804(__dst, &v5, &qword_1EAE3D3E0, &qword_193963858);
}

void *IntelligenceFlowResponseGeneration.event.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v2) + 76);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  sub_19344E6DC(__dst, &qword_1EAE3D3E0, &qword_193963858);
  return memcpy((v1 + v3), v0, 0x61uLL);
}

uint64_t IntelligenceFlowResponseGeneration.event.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v0) + 76);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357C180@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C1A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.ResponseSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C200()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19357C250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19357C39C()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19357C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19357C534@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.OverrideType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C55C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.OverrideType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C64C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C674@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.FallbackReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C764@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19357C78C@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.FatalError.allCases.getter();
  *a1 = result;
  return result;
}

BOOL sub_19357C7CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_19357C47C();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.postingSpanId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.postingSpanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.postingSpanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.rgId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 24));
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.rgId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 24));
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.rgId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v6 = *(v5 + 24);
  v7 = v0 + *(v5 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_187();
  sub_19344E6DC(v12, v13, &unk_19395C320);
  v14 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v1);
  *v7 = 0;
  *(v7 + 8) = 1;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v17, v18, v19);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

void static IntelligenceFlowResponseGeneration.Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v55 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v54 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v25 = v23 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  v30 = *(v27 + 48);
  sub_193448804(v3, &v54 - v28, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1, &v29[v30], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v29);
  if (!v31)
  {
    sub_193448804(v29, v18, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v29[v30]);
    if (!v31)
    {
      v33 = &v29[v30];
      v34 = v55;
      sub_19355A5F8(v33, v55);
      OUTLINED_FUNCTION_0_40();
      sub_19357CFFC(v35, v36);
      v37 = sub_19393C550();
      sub_1934F8A10(v34);
      sub_1934F8A10(v18);
      sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v37 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1934F8A10(v18);
LABEL_9:
    v32 = v29;
LABEL_10:
    sub_19344E6DC(v32, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31(&v29[v30]);
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_13:
  v38 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v39 = *(v38 + 20);
  v40 = (v3 + v39);
  v41 = *(v3 + v39 + 8);
  v42 = (v1 + v39);
  v43 = *(v1 + v39 + 8);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (*v40 != *v42)
  {
    LOBYTE(v43) = 1;
  }

  if ((v43 & 1) == 0)
  {
LABEL_19:
    v44 = *(v38 + 24);
    v45 = *(v19 + 48);
    OUTLINED_FUNCTION_175();
    sub_193448804(v46, v47, v48, &unk_19395C320);
    sub_193448804(v1 + v44, v25 + v45, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v25);
    if (v31)
    {
      OUTLINED_FUNCTION_31(v25 + v45);
      if (v31)
      {
        sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }
    }

    else
    {
      v49 = v54;
      sub_193448804(v25, v54, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(v25 + v45);
      if (!v50)
      {
        v51 = v55;
        sub_19355A5F8(v25 + v45, v55);
        OUTLINED_FUNCTION_0_40();
        sub_19357CFFC(v52, v53);
        sub_19393C550();
        sub_1934F8A10(v51);
        sub_1934F8A10(v49);
        sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }

      sub_1934F8A10(v49);
    }

    v32 = v25;
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_58_11(v14, v15, v16, v17, v18, v19, v20, v21, v31);
  OUTLINED_FUNCTION_6_3(v0, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v0, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    sub_19357CFFC(v23, v24);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  v25 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v26 = v0 + *(v25 + 20);
  if (*(v26 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v27 = *v26;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v27);
  }

  sub_193448804(v0 + *(v25 + 24), v12, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v12, 1, v2);
  if (v22)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v12, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_40();
  sub_19357CFFC(v28, v29);
  OUTLINED_FUNCTION_33();
  return sub_1934F8A10(v1);
}

uint64_t sub_19357CFFC(unint64_t *a1, void (*a2)(uint64_t))
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

void IntelligenceFlowResponseGeneration.RequestEnded.responseSource.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 20));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.responseSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowResponseGeneration.RequestEnded.characterCount.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_263(*(v1 + 24));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.characterCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowResponseGeneration.RequestEnded.wordCount.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_263(*(v1 + 28));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.wordCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowResponseGeneration.RequestEnded.fallbackReason.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 32));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.fallbackReason.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.transcriptEventId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 36));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.transcriptEventId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 36));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.init()()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v6 = v0 + v5[5];
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = v0 + v5[6];
  v8 = v0 + v5[7];
  v9 = v0 + v5[8];
  *v9 = 0;
  *(v9 + 8) = 256;
  v10 = v5[9];
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_187();
  sub_19344E6DC(v15, v16, &unk_19395C320);
  v17 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v1);
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 4) = 1;
  *v8 = 0;
  *(v8 + 4) = 1;
  *v9 = 0;
  *(v9 + 8) = 256;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v20, v21, v22);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_116();

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

void static IntelligenceFlowResponseGeneration.RequestEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v61 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v62 = v24 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v61 - v28;
  v30 = *(v27 + 48);
  OUTLINED_FUNCTION_96(v3, &v61 - v28);
  OUTLINED_FUNCTION_96(v1, &v29[v30]);
  OUTLINED_FUNCTION_14_1(v29);
  if (!v31)
  {
    sub_193448804(v29, v19, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(&v29[v30]);
    if (!v31)
    {
      sub_19355A5F8(&v29[v30], v10);
      OUTLINED_FUNCTION_0_40();
      sub_19357CFFC(v33, v34);
      v35 = sub_19393C550();
      sub_1934F8A10(v10);
      sub_1934F8A10(v19);
      sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v35 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1934F8A10(v19);
LABEL_9:
    v32 = v29;
LABEL_10:
    sub_19344E6DC(v32, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_1(&v29[v30]);
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_13:
  v36 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v37 = v36[5];
  OUTLINED_FUNCTION_90_13();
  if (v40)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v39)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_48_2(v38);
    v41 = IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter();
    if (v41 != IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter())
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_86_10(v36[6]);
  if (v43)
  {
    if (!v42)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v44)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_86_10(v36[7]);
  if (v46)
  {
    if (!v45)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v47)
    {
      goto LABEL_11;
    }
  }

  v48 = v36[8];
  OUTLINED_FUNCTION_90_13();
  if (v51)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  if ((v50 & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2(v49);
    v52 = IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter();
    if (v52 == IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter())
    {
LABEL_31:
      v53 = v36[9];
      v54 = *(v20 + 48);
      v55 = v3 + v53;
      v56 = v62;
      OUTLINED_FUNCTION_96(v55, v62);
      OUTLINED_FUNCTION_96(v1 + v53, v56 + v54);
      OUTLINED_FUNCTION_14_1(v56);
      if (v31)
      {
        OUTLINED_FUNCTION_14_1(v56 + v54);
        if (v31)
        {
          sub_19344E6DC(v56, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_11;
        }
      }

      else
      {
        v57 = v61;
        sub_193448804(v56, v61, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_14_1(v56 + v54);
        if (!v58)
        {
          sub_19355A5F8(v56 + v54, v10);
          OUTLINED_FUNCTION_0_40();
          sub_19357CFFC(v59, v60);
          sub_19393C550();
          sub_1934F8A10(v10);
          sub_1934F8A10(v57);
          sub_19344E6DC(v56, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_11;
        }

        sub_1934F8A10(v57);
      }

      v32 = v56;
      goto LABEL_10;
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowResponseGeneration.RequestEnded.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_58_11(v14, v15, v16, v17, v18, v19, v20, v21, v40);
  OUTLINED_FUNCTION_6_3(v0, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v0, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    sub_19357CFFC(v23, v24);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  v25 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v26 = v0 + v25[5];
  if (*(v26 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v27 = *(v26 + 8);
    v28 = *v26;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_83_10();
    v29 = IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter();
    MEMORY[0x193B18030](v29);
  }

  v30 = (v0 + v25[6]);
  if (*(v30 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v31 = *v30;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v32 = (v0 + v25[7]);
  if (*(v32 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v33 = *v32;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v34 = v0 + v25[8];
  if (*(v34 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v35 = *(v34 + 8);
    v36 = *v34;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_83_10();
    v37 = IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter();
    MEMORY[0x193B18030](v37);
  }

  sub_193448804(v0 + v25[9], v12, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v12, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    sub_19357CFFC(v38, v39);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_19357DC74(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19357DCD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.displayString.getter()
{
  v0 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 20));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.displayString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.displayString.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.spokenString.getter()
{
  v0 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 24));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.spokenString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.spokenString.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.catId.getter()
{
  v0 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.catId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.catId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.staticDialogId.getter()
{
  v0 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.staticDialogId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.staticDialogId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  v6 = (v0 + v5[5]);
  v7 = (v0 + v5[6]);
  v8 = (v0 + v5[7]);
  v9 = (v0 + v5[8]);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  return result;
}

void static IntelligenceFlowResponseGeneration.RequestEndedTier1.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_50_0();
  v25 = type metadata accessor for AIML.UUID();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_3_0();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &a9 - v40;
  v42 = *(v39 + 56);
  sub_193448804(v21, &a9 - v40, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v20, &v41[v42], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v41);
  if (v43)
  {
    OUTLINED_FUNCTION_31(&v41[v42]);
    if (v43)
    {
      sub_19344E6DC(v41, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v41, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  sub_193448804(v41, v34, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v41[v42]);
  if (v43)
  {
    sub_1934F8A10(v34);
    goto LABEL_9;
  }

  sub_19355A5F8(&v41[v42], v22);
  OUTLINED_FUNCTION_0_40();
  sub_19357CFFC(v44, v45);
  v46 = sub_19393C550();
  sub_1934F8A10(v22);
  sub_1934F8A10(v34);
  sub_19344E6DC(v41, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v46 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v47 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  v48 = v47[5];
  OUTLINED_FUNCTION_3();
  if (v51)
  {
    if (!v49)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v50);
    v54 = v43 && v52 == v53;
    if (!v54 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v49)
  {
    goto LABEL_10;
  }

  v55 = v47[6];
  OUTLINED_FUNCTION_3();
  if (v58)
  {
    if (!v56)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v57);
    v61 = v43 && v59 == v60;
    if (!v61 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v56)
  {
    goto LABEL_10;
  }

  v62 = v47[7];
  OUTLINED_FUNCTION_3();
  if (v65)
  {
    if (!v63)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v64);
    v68 = v43 && v66 == v67;
    if (!v68 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v63)
  {
    goto LABEL_10;
  }

  v69 = v47[8];
  OUTLINED_FUNCTION_3();
  if (v72 && v70)
  {
    OUTLINED_FUNCTION_5(v71);
    if (v43)
    {
      v75 = v73 == v74;
    }

    else
    {
      v75 = 0;
    }

    if (!v75)
    {
      sub_19393CA30();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  sub_193448804(v1, &v28 - v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v14, 1, v2);
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v14, v8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    sub_19357CFFC(v16, v17);
    sub_19393C540();
    sub_1934F8A10(v8);
  }

  v18 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  v19 = (v1 + v18[5]);
  if (v19[1])
  {
    v20 = *v19;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = (v1 + v18[6]);
  if (v21[1])
  {
    v22 = *v21;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v23 = (v1 + v18[7]);
  if (v23[1])
  {
    v24 = *v23;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v25 = (v1 + v18[8]);
  if (!v25[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v26 = *v25;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.OverrideEnded.overrideId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.OverrideEnded.overrideId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void IntelligenceFlowResponseGeneration.OverrideEnded.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_19357E808(void (*a1)(uint64_t *))
{
  OUTLINED_FUNCTION_39_14();
  sub_19393CAB0();
  a1(&v3);
  return sub_19393CB00();
}

uint64_t sub_19357E870(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  OUTLINED_FUNCTION_39_14();
  sub_19393CAB0();
  a4(&v6);
  return sub_19393CB00();
}

uint64_t sub_19357E944(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v7[72] = *v4;
  v8 = *(v4 + 8);
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.CacheManagerCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357ED74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 44);
  v6 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 36) = v5;
  *(a1 + 32) = v6;
  return sub_19350CB08(v3, v4);
}

uint64_t sub_19357EDA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v9 = *(v1 + 40);
  v8 = v1 + 40;
  v10 = v9 | (*(v8 + 4) << 32);
  result = sub_193456418(*(v8 - 16), *(v8 - 8));
  *(v8 - 32) = v2;
  *(v8 - 24) = v3;
  *(v8 - 16) = v4;
  *(v8 - 8) = v5;
  *(v8 + 4) = v7;
  *v8 = v6;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.GMSCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357EED8()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v3 = *(v2(v1) + 28);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *v0 = 514;
  sub_193456418(0, 1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  *(v0 + 24) = xmmword_1939526A0;
  *(v0 + 44) = 0;
  *(v0 + 40) = 0;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_19357EFBC()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_150();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v26 = *v8;
  v27 = *v6;
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
  {
    goto LABEL_21;
  }

  v28 = v8[1];
  v29 = v6[1];
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
  {
    goto LABEL_21;
  }

  v54 = v0;
  v55 = v2;
  v53 = v15;
  v30 = *(v8 + 1);
  v31 = v8[16];
  v33 = *(v8 + 3);
  v32 = *(v8 + 4);
  v34 = v8[44];
  v35 = *(v8 + 10);
  v56 = v9;
  v57 = v35 | (v34 << 32);
  v64 = v30;
  v65 = v31;
  v66 = v33;
  v67 = v32;
  v69 = v34;
  v68 = v35;
  v36 = v6[16];
  v37 = *(v6 + 3);
  v38 = *(v6 + 4);
  LOBYTE(v34) = v6[44];
  LODWORD(v35) = *(v6 + 10);
  v58 = *(v6 + 1);
  v59 = v36;
  v60 = v37;
  v61 = v38;
  v63 = v34;
  v62 = v35;
  sub_19350CB08(v33, v32);
  v39 = OUTLINED_FUNCTION_13_0();
  sub_19350CB08(v39, v40);
  v41 = v4(&v64, &v58);
  v42 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v42, v43);
  sub_193456418(v33, v32);
  if (v41)
  {
    v44 = *(v55(0) + 28);
    v45 = *(v20 + 48);
    sub_193448804(&v8[v44], v25, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(&v6[v44], &v25[v45], &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v25, 1, v56);
    if (!v47)
    {
      v46 = v54;
      sub_193448804(v25, v54, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(&v25[v45]);
      if (!v47)
      {
        v48 = &v25[v45];
        v49 = v53;
        sub_19355A5F8(v48, v53);
        OUTLINED_FUNCTION_0_40();
        sub_19357CFFC(v50, v51);
        sub_19393C550();
        sub_1934F8A10(v49);
        sub_1934F8A10(v46);
        sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_21;
      }

      sub_1934F8A10(v46);
LABEL_20:
      sub_19344E6DC(v25, &qword_1EAE3BD08, &qword_1939595A0);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31(&v25[v45]);
    if (!v47)
    {
      goto LABEL_20;
    }

    sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void sub_19357F360()
{
  OUTLINED_FUNCTION_117();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_3_4();
  v7 = type metadata accessor for AIML.UUID();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (*(v1 + 1) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v17 = *(v1 + 16);
  v18 = *(v1 + 40);
  v19 = *(v1 + 44);
  v24[1] = *(v1 + 8);
  v25 = v17;
  v26 = *(v1 + 24);
  v28 = v19;
  v27 = v18;
  v6(v0);
  v20 = v4(0);
  sub_193448804(v1 + *(v20 + 28), v16, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v16, 1, v7);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v16, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    sub_19357CFFC(v22, v23);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v2);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowResponseGeneration.CatalogStarted.assetVersion.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.CatalogStarted.assetVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::CatalogStarted __swiftcall IntelligenceFlowResponseGeneration.CatalogStarted.init()()
{
  *v0 = 2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_19357F708(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
    {
      return v10;
    }
  }

  if (v6)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = v5 == v8 && v6 == v9;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_19357F79C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v2)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t sub_19357F82C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

BOOL static IntelligenceFlowResponseGeneration.CatalogEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void IntelligenceFlowResponseGeneration.CatalogFailed.fatalError.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t IntelligenceFlowResponseGeneration.CatalogFailed.fatalError.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double IntelligenceFlowResponseGeneration.CatalogFailed.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_193456418(0, 1);
  result = 0.0;
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  return result;
}

__n128 IntelligenceFlowResponseGeneration.InferenceStarted.modelVersion.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193564E0C(*v1, v1[1], v1[2], v1[3], v1[4]);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v5;
  v1[4] = v3;
  return result;
}

__n128 IntelligenceFlowResponseGeneration.InferenceStarted.promptVersion.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193564E0C(v1[5], v1[6], v1[7], v1[8], v1[9]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  v1[9] = v3;
  return result;
}

void IntelligenceFlowResponseGeneration.InferenceStarted.init()(uint64_t a1@<X8>)
{
  *&v2 = OUTLINED_FUNCTION_98_12();
  *a1 = v2;
  *(a1 + 16) = v2;
  *(a1 + 32) = 1;
  *&v3 = OUTLINED_FUNCTION_98_12();
  *(a1 + 56) = v3;
  *(a1 + 40) = v3;
  *(a1 + 72) = 1;
}

uint64_t static IntelligenceFlowResponseGeneration.InferenceStarted.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v130 = *(a1 + 5);
  v131 = *(a1 + 7);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v127 = *(a2 + 5);
  v128 = *(a2 + 7);
  v129 = a1[9];
  v126 = a2[9];
  if (v6 == 1)
  {
    v12 = OUTLINED_FUNCTION_6_29();
    sub_193564DF8(v12, v13, v14, v15, 1);
    if (v11 == 1)
    {
      v16 = OUTLINED_FUNCTION_25_18();
      sub_193564DF8(v16, v17, v18, v19, 1);
      v20 = OUTLINED_FUNCTION_6_29();
      sub_193564E0C(v20, v21, v22, v23, 1);
LABEL_9:
      if (v129 == 1)
      {
        v65 = *(&v130 + 1);
        v66 = v130;
        v67 = *(&v131 + 1);
        v68 = v131;
        OUTLINED_FUNCTION_46_14();
        sub_193564DF8(v69, v70, v71, v72, 1);
        v73 = v126;
        v75 = *(&v127 + 1);
        v76 = v127;
        v74 = v128;
        if (v126 == 1)
        {
          v77 = 1;
          v78 = OUTLINED_FUNCTION_44_12();
          sub_193564DF8(v78, v79, v80, *(&v128 + 1), 1);
          OUTLINED_FUNCTION_46_14();
          v85 = 1;
LABEL_20:
          sub_193564E0C(v81, v82, v83, v84, v85);
          return v77 & 1;
        }

        v100 = OUTLINED_FUNCTION_44_12();
        v86 = *(&v128 + 1);
        sub_193564DF8(v100, v101, v102, *(&v128 + 1), v126);
      }

      else
      {
        v65 = *(&v130 + 1);
        v66 = v130;
        v139 = v130;
        v67 = *(&v131 + 1);
        v68 = v131;
        v140 = v131;
        v141 = v129;
        v73 = v126;
        v76 = v127;
        v86 = *(&v128 + 1);
        v74 = v128;
        v75 = *(&v127 + 1);
        if (v126 != 1)
        {
          v104 = OUTLINED_FUNCTION_9_40();
          sub_193564DF8(v104, v105, v106, v107, v108);
          v109 = OUTLINED_FUNCTION_44_12();
          sub_193564DF8(v109, v110, v111, *(&v128 + 1), v126);
          v112 = OUTLINED_FUNCTION_9_40();
          sub_193564DF8(v112, v113, v114, v115, v116);
          sub_1935013C0();
          v117 = sub_19393C550();
          v77 = v117;
          OUTLINED_FUNCTION_71_12(v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v127, v128, v126, v134, v135, v136);
          OUTLINED_FUNCTION_31_18();
          sub_193564E20(v137);
          v81 = OUTLINED_FUNCTION_9_40();
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_31_18();
        v87 = OUTLINED_FUNCTION_9_40();
        sub_193564DF8(v87, v88, v89, v90, v91);
        v92 = OUTLINED_FUNCTION_44_12();
        sub_193564DF8(v92, v93, v94, *(&v128 + 1), 1);
        v95 = OUTLINED_FUNCTION_9_40();
        sub_193564DF8(v95, v96, v97, v98, v99);
        sub_193564E20(v137);
      }

      *&v139 = v66;
      *(&v139 + 1) = v65;
      *&v140 = v68;
      *(&v140 + 1) = v67;
      v141 = v129;
      v142 = v76;
      v143 = v75;
      v144 = v74;
      v145 = v86;
      v146 = v73;
      goto LABEL_16;
    }

    v36 = OUTLINED_FUNCTION_25_18();
    sub_193564DF8(v36, v37, v38, v39, v11);
LABEL_7:
    *&v139 = v2;
    *(&v139 + 1) = v3;
    *&v140 = v4;
    *(&v140 + 1) = v5;
    v141 = v6;
    v142 = v8;
    v143 = v7;
    v144 = v10;
    v145 = v9;
    v146 = v11;
LABEL_16:
    sub_19344E6DC(&v139, &qword_1EAE3D8D8, &qword_193964160);
    goto LABEL_17;
  }

  *&v139 = *a1;
  *(&v139 + 1) = v3;
  *&v140 = v4;
  *(&v140 + 1) = v5;
  v141 = v6;
  if (v11 == 1)
  {
    v137[0] = v139;
    v137[1] = v140;
    v138 = v141;
    v24 = OUTLINED_FUNCTION_6_29();
    sub_193564DF8(v24, v25, v26, v27, v6);
    v28 = OUTLINED_FUNCTION_25_18();
    sub_193564DF8(v28, v29, v30, v31, 1);
    v32 = OUTLINED_FUNCTION_6_29();
    sub_193564DF8(v32, v33, v34, v35, v6);
    sub_193564E20(v137);
    goto LABEL_7;
  }

  *&v132 = v8;
  *(&v132 + 1) = v7;
  *&v133 = v10;
  *(&v133 + 1) = v9;
  v40 = OUTLINED_FUNCTION_6_29();
  sub_193564DF8(v40, v41, v42, v43, v6);
  v44 = OUTLINED_FUNCTION_25_18();
  sub_193564DF8(v44, v45, v46, v47, v11);
  v48 = OUTLINED_FUNCTION_6_29();
  sub_193564DF8(v48, v49, v50, v51, v6);
  sub_1935013C0();
  v52 = sub_19393C550();
  v53 = v52;
  OUTLINED_FUNCTION_71_12(v52, v54, v55, v56, v57, v58, v59, v60, v125, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v11, v134, v135, v136);
  OUTLINED_FUNCTION_31_18();
  sub_193564E20(v137);
  v61 = OUTLINED_FUNCTION_6_29();
  sub_193564E0C(v61, v62, v63, v64, v6);
  if (v53)
  {
    goto LABEL_9;
  }

LABEL_17:
  v77 = 0;
  return v77 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.InferenceStarted.hash(into:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v8 = v0[2];
    v7 = v0[3];
    v31 = v0[5];
    v33 = v0[7];
    v9 = v0[8];
    v10 = v0[6];
    v12 = *v0;
    v11 = v0[1];
    *&v34 = *v0;
    *(&v34 + 1) = v11;
    *&v36 = v8;
    *(&v36 + 1) = v7;
    OUTLINED_FUNCTION_103_0();
    v38 = v12;
    v39 = v11;
    v3 = v10;
    v6 = v9;
    v1 = v31;
    v4 = v33;
    v40 = v8;
    v41 = v7;
    v42 = v2;
    sub_1934FDBFC(&v38, &v43);
    sub_193564EA4();
    v13 = sub_19393C540();
    OUTLINED_FUNCTION_78_10(v13, v14, v15, v16, v17, v18, v19, v20, v31, v33, v34, v36, v2, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  if (v5 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  *&v35 = v1;
  *(&v35 + 1) = v3;
  *&v37 = v4;
  *(&v37 + 1) = v6;
  OUTLINED_FUNCTION_103_0();
  v38 = v1;
  v39 = v3;
  v40 = v4;
  v41 = v6;
  v42 = v5;
  sub_1934FDBFC(&v38, &v43);
  sub_193564EA4();
  v22 = sub_19393C540();
  return OUTLINED_FUNCTION_78_10(v22, v23, v24, v25, v26, v27, v28, v29, v30, v32, v35, v37, v5, v38, v39, v40, v41, v42, v43, v44, v45);
}

uint64_t IntelligenceFlowResponseGeneration.InferenceStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowResponseGeneration.InferenceStarted.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193580064()
{
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.InferenceStarted.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19358014C(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1935801C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV5errorAC7RGErrorVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 36);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return sub_19350CB08(v2, v3);
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV5errorAC7RGErrorVSgvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v7 = *(v1 + 32);
  v6 = v1 + 32;
  v8 = v7 | (*(v6 + 4) << 32);
  result = sub_193456418(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 36);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 36);
  v10 = *(a2 + 8);
  if (a1[1])
  {
    if ((a2[1] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    v51 = *a2;
    v52 = *a1;
    v11 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
    if (v11 != IntelligenceFlowResponseGeneration.FatalError.rawValue.getter())
    {
      return 0;
    }
  }

  v12 = v5 | (v4 << 32);
  v13 = v10 | (v9 << 32);
  if (v3 != 1)
  {
    if (v8 == 1)
    {
      v15 = OUTLINED_FUNCTION_14_24();
      sub_19350CB08(v15, v16);
      sub_19350CB08(v7, 1);
      v17 = OUTLINED_FUNCTION_14_24();
      sub_19350CB08(v17, v18);

LABEL_12:
      v21 = OUTLINED_FUNCTION_14_24();
      sub_193456418(v21, v22);
      v23 = OUTLINED_FUNCTION_17_19();
LABEL_26:
      sub_193456418(v23, v24);
      return 0;
    }

    if (v3)
    {
      if (v8)
      {
        if (v2 != v7 || v3 != v8)
        {
          v26 = sub_19393CA30();
          v27 = OUTLINED_FUNCTION_14_24();
          sub_19350CB08(v27, v28);
          v29 = OUTLINED_FUNCTION_17_19();
          sub_19350CB08(v29, v30);
          v31 = OUTLINED_FUNCTION_14_24();
          sub_19350CB08(v31, v32);
          v33 = OUTLINED_FUNCTION_17_19();
          sub_193456418(v33, v34);
          if ((v26 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }

        sub_19350CB08(v2, v3);
        v45 = OUTLINED_FUNCTION_187();
        sub_19350CB08(v45, v46);
        v47 = OUTLINED_FUNCTION_14_24();
        sub_19350CB08(v47, v48);
        v36 = OUTLINED_FUNCTION_187();
LABEL_30:
        sub_193456418(v36, v37);
LABEL_31:
        if ((v12 & 0x100000000) == 0)
        {
          if ((v13 & 0x100000000) != 0 || v12 != v10)
          {
            goto LABEL_25;
          }

LABEL_36:

          v49 = OUTLINED_FUNCTION_14_24();
          sub_193456418(v49, v50);
          return 1;
        }

        if ((v13 & 0x100000000) != 0)
        {
          goto LABEL_36;
        }

LABEL_25:

        v23 = OUTLINED_FUNCTION_14_24();
        goto LABEL_26;
      }

      v38 = OUTLINED_FUNCTION_14_24();
      sub_19350CB08(v38, v39);
      v35 = v3;
    }

    else
    {
      sub_19350CB08(v2, 0);
      v35 = 0;
      if (!v8)
      {
        sub_19350CB08(v7, 0);
        sub_19350CB08(v2, 0);
        v36 = v7;
        v37 = 0;
        goto LABEL_30;
      }
    }

    v40 = OUTLINED_FUNCTION_17_19();
    sub_19350CB08(v40, v41);
    sub_19350CB08(v2, v35);
    v42 = OUTLINED_FUNCTION_17_19();
    sub_193456418(v42, v43);
    goto LABEL_25;
  }

  sub_19350CB08(v2, 1);
  if (v8 != 1)
  {
    v19 = OUTLINED_FUNCTION_17_19();
    sub_19350CB08(v19, v20);
    goto LABEL_12;
  }

  v14 = 1;
  sub_19350CB08(v7, 1);
  sub_193456418(v2, 1);
  return v14;
}