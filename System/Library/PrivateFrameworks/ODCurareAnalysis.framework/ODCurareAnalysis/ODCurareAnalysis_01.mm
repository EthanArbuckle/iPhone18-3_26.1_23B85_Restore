uint64_t sub_25C7C8E5C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25C7CD354();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25C7B9970(i, v6);
    sub_25C7CD108();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25C7CD334();
    v4 = *(v7 + 16);
    sub_25C7CD364();
    sub_25C7CD374();
    sub_25C7CD344();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_25C7C8F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_25C7CD1D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v24 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_25C7CC5FC(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v5;
    v25 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_25C7C51B4(v15, v27, &qword_27FC158F0, &qword_25C7CDE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v7;
      (*v25)(v5, 0, 1, v6);
      v18 = *v16;
      v19 = v26;
      (*v16)(v26, v5, v6);
      v18(v11, v19, v6);
      v28 = v14;
      v20 = v11;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25C7CC5FC(v21 > 1, v22 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v22 + 1;
      v7 = v17;
      v18((v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22), v20, v6);
      v15 += 32;
      --v13;
      v11 = v20;
      v5 = v24;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_25C7BDAE8(v5);
    return 0;
  }

  return v14;
}

uint64_t sub_25C7C9220(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25C7CC61C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25C7C51B4(i, v9, &qword_27FC158F0, &qword_25C7CDE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C7CC61C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_25C7C9350(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25C7CC63C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25C7C51B4(i, v9, &qword_27FC158F0, &qword_25C7CDE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C7CC63C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_25C7C9480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v141 = a5;
  v136 = a4;
  v137 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v123 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v123 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v123 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v133 = &v123 - v24;
  MEMORY[0x28223BE20](v23);
  v134 = &v123 - v25;
  if ((a1 != 0x6C61696D6F6E6942 || a2 != 0xEC00000074736554) && (sub_25C7CD414() & 1) == 0)
  {
    if (a1 == 0x747365545ALL && a2 == 0xE500000000000000 || (sub_25C7CD414() & 1) != 0)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_61;
      }

      v33 = sub_25C7BB2FC(0x6C65694661746164, 0xE900000000000064);
      if ((v34 & 1) == 0)
      {
        goto LABEL_61;
      }

      sub_25C7B9970(*(a3 + 56) + 32 * v33, v140);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_61;
      }

      v35 = v139;
      if (!*(a3 + 16) || (v36 = v138, v37 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064), (v38 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v37, v140), (swift_dynamicCast() & 1) == 0))
      {
LABEL_60:

LABEL_61:
        v83 = 0x800000025C7CF0B0;
        sub_25C7B9A14();
        v60 = swift_allocError();
        v84 = 0xD000000000000056;
LABEL_62:
        *v59 = v84;
        *(v59 + 8) = v83;
        goto LABEL_63;
      }

      v39 = v139;
      if (*(a3 + 16))
      {
        v40 = v138;
        v41 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
        v43 = v42;
        if ((v42 & 1) == 0)
        {
          v44 = 0;
          goto LABEL_54;
        }

        sub_25C7B9970(*(a3 + 56) + 32 * v41, v140);
        if (swift_dynamicCast())
        {
          v44 = v138;
LABEL_54:
          if (*(a3 + 16))
          {
            v76 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CECC0);
            if (v77)
            {
              sub_25C7B9970(*(a3 + 56) + 32 * v76, v140);
              if (swift_dynamicCast())
              {
                v78 = v43 ^ 1;
                v79 = *&v138;
                v80 = type metadata accessor for ZTestResult(0);
                v54 = v137;
                v137[3] = v80;
                v54[4] = &off_286E69A48;
                boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
                v82 = v135;
                sub_25C7CA648(v136, v36, v35, v40, v39, v44, v78 & 1, boxed_opaque_existential_0, v79);
                v60 = v82;
                if (v82)
                {
                  goto LABEL_69;
                }

                goto LABEL_70;
              }
            }
          }
        }
      }

      goto LABEL_60;
    }

    if ((a1 != 0x74736554534BLL || a2 != 0xE600000000000000) && (sub_25C7CD414() & 1) == 0)
    {
      v140[0] = 0;
      v140[1] = 0xE000000000000000;
      sub_25C7CD314();

      strcpy(v140, "Unknown test: ");
      HIBYTE(v140[1]) = -18;
      MEMORY[0x25F88E8A0](a1, a2);
      v57 = v140[0];
      v58 = v140[1];
      sub_25C7B9A14();
      v60 = swift_allocError();
      *v59 = v57;
      *(v59 + 8) = v58;
LABEL_63:
      *(v59 + 16) = 0;
      result = swift_willThrow();
LABEL_64:
      v73 = v141;
      goto LABEL_65;
    }

    if (!*(a3 + 16) || (v45 = sub_25C7BB2FC(0x6C65694661746164, 0xE900000000000064), (v46 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v45, v140), (swift_dynamicCast() & 1) == 0))
    {
LABEL_73:
      v83 = 0x800000025C7CF070;
      sub_25C7B9A14();
      v60 = swift_allocError();
      v84 = 0xD000000000000039;
      goto LABEL_62;
    }

    v47 = v139;
    if (*(a3 + 16))
    {
      v48 = v138;
      v49 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064);
      if (v50)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v49, v140);
        if (swift_dynamicCast())
        {
          v51 = v138;
          v52 = v139;
          if (*(a3 + 16))
          {
            v53 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
            v54 = v137;
            if (v55)
            {
              sub_25C7B9970(*(a3 + 56) + 32 * v53, v140);
              if (swift_dynamicCast())
              {
                v56 = 0;
                goto LABEL_68;
              }

              goto LABEL_72;
            }

            v56 = 1;
          }

          else
          {
            v56 = 1;
            v54 = v137;
          }

LABEL_68:
          v54[3] = type metadata accessor for KSTestTwoSampleResult(0);
          v54[4] = &off_286E69A78;
          v85 = __swift_allocate_boxed_opaque_existential_0(v54);
          v86 = v135;
          sub_25C7CB684(v136, v48, v47, v51, v52, v56, v85);
          v60 = v86;
          if (v86)
          {
LABEL_69:
            __swift_deallocate_boxed_opaque_existential_1(v54);

            goto LABEL_64;
          }

LABEL_70:
        }
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_52;
  }

  v26 = sub_25C7BB2FC(0x6C65694661746164, 0xE900000000000064);
  if ((v27 & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v26, v140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  v28 = v139;
  if (!*(a3 + 16) || (v132 = v138, v29 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064), (v30 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v29, v140), (swift_dynamicCast() & 1) == 0))
  {
LABEL_51:

LABEL_52:
    v73 = v141;
    sub_25C7B9A14();
    v60 = swift_allocError();
    *v74 = 0xD00000000000006ALL;
    *(v74 + 8) = 0x800000025C7CF110;
    *(v74 + 16) = 0;
    result = swift_willThrow();
LABEL_65:
    *v73 = v60;
    return result;
  }

  v131 = v139;
  if (!*(a3 + 16))
  {
    goto LABEL_50;
  }

  v129 = v138;
  v31 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
  v130 = v32;
  if ((v32 & 1) == 0)
  {
    v128 = 0;
    goto LABEL_42;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v31, v140);
  if (!swift_dynamicCast())
  {
LABEL_50:

    goto LABEL_51;
  }

  v128 = v138;
LABEL_42:
  if (!*(a3 + 16))
  {
    goto LABEL_50;
  }

  v61 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CECC0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v61, v140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_50;
  }

  v63 = *&v138;
  v64 = sub_25C7BB2FC(0x6568746F70794870, 0xEB00000000736973);
  if ((v65 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v64, v140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  v127 = *&v138;
  v66 = type metadata accessor for BinomialTestResult(0);
  v67 = v137;
  v137[3] = v66;
  v67[4] = &off_286E69A18;
  v68 = __swift_allocate_boxed_opaque_existential_0(v67);
  if ((v130 & (v128 < 1)) == 1)
  {

    v70 = 0x800000025C7CF220;
    sub_25C7B9A14();
    v60 = swift_allocError();
    v72 = 0xD000000000000031;
LABEL_83:
    *v71 = v72;
    *(v71 + 8) = v70;
    *(v71 + 16) = 0;
    swift_willThrow();
LABEL_84:
    v73 = v141;
    result = __swift_deallocate_boxed_opaque_existential_1(v137);
    goto LABEL_65;
  }

  v125 = v66;
  v126 = v68;
  if (v63 < 0.0 || v63 > 1.0)
  {

    v70 = 0x800000025C7CF1E0;
    sub_25C7B9A14();
    v60 = swift_allocError();
    v72 = 0xD000000000000035;
    goto LABEL_83;
  }

  if (v127 < 0.0 || v127 > 1.0)
  {

    v70 = 0x800000025C7CF1B0;
    sub_25C7B9A14();
    v60 = swift_allocError();
    v72 = 0xD00000000000002FLL;
    goto LABEL_83;
  }

  v87 = *(v136 + 16);
  if (v87)
  {
    v88 = (v136 + 32 * v87);
    v89 = *v88;
    v124 = v88[1];
    v90 = v88[3];
    v136 = v88[2];
    v123 = v89;
    swift_unknownObjectRetain();
  }

  else
  {
    v136 = 0;
    v123 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90] + 32;
    v90 = 1;
  }

  v91 = v135;
  v135 = sub_25C7CC244(v22, v19, v69, v124, v136, v90, v129, v131);
  v60 = v91;
  if (v91)
  {
    swift_unknownObjectRelease();

    goto LABEL_84;
  }

  sub_25C7CC50C(v22, v134);
  sub_25C7CC50C(v19, v133);
  v92 = sub_25C7CCEF8(v124, v136, v90, v132, v28);
  v93 = sub_25C7C9220(v92);

  if (!v93)
  {
    sub_25C7B9A14();
    v60 = swift_allocError();
    *v108 = 0xD000000000000026;
    *(v108 + 8) = 0x800000025C7CF180;
    *(v108 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_25C7BDAE8(v133);
    sub_25C7BDAE8(v134);
    goto LABEL_84;
  }

  v94 = 0;
  v95 = *(v93 + 16);
  v96 = MEMORY[0x277D84F90];
  while (v95 != v94)
  {
    if (v94 >= *(v93 + 16))
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v97 = v94 + 1;
    v98 = *(v93 + 8 * v94++ + 32);
    if (v98 == 1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v96;
      if ((result & 1) == 0)
      {
        result = sub_25C7CC61C(0, *(v96 + 16) + 1, 1);
        v96 = v140[0];
      }

      v100 = *(v96 + 16);
      v99 = *(v96 + 24);
      v141 = v100 + 1;
      v137 = v100;
      if (v100 >= v99 >> 1)
      {
        result = sub_25C7CC61C((v99 > 1), v141, 1);
        v96 = v140[0];
      }

      *(v96 + 16) = v141;
      *(v96 + 8 * v137 + 32) = 1;
      v94 = v97;
    }
  }

  v141 = *(v96 + 16);

  if (v130)
  {
    if (v135 < v128)
    {
LABEL_100:

      v102 = v125;
      v101 = v126;
      v103 = v134;
      sub_25C7C51B4(v134, v126 + v125[12], &qword_27FC15920, &qword_25C7CE220);
      v104 = v133;
      sub_25C7C51B4(v133, v101 + v102[13], &qword_27FC15920, &qword_25C7CE220);
      swift_unknownObjectRelease();
      sub_25C7BDAE8(v104);
      sub_25C7BDAE8(v103);
      strcpy(v101, "BinomialTest");
      *(v101 + 13) = 0;
      *(v101 + 7) = -5120;
      *(v101 + 17) = 1;
      *(v101 + v102[10]) = v135;
      *(v101 + v102[11]) = v141;
      v105 = v102[7];
      v106 = sub_25C7CD1D4();
      result = (*(*(v106 - 8) + 56))(v101 + v105, 1, 1, v106);
      *(v101 + 16) = 0;
      v107 = v101 + v102[8];
      *v107 = 0;
      v107[8] = 1;
      *(v101 + v102[9]) = 2;
      return result;
    }
  }

  else if (v135 <= 0)
  {
    goto LABEL_100;
  }

  sub_25C7BB83C(v135, v141, 0, v127);
  v110 = v109;
  sub_25C7C51B4(v134, v16, &qword_27FC15920, &qword_25C7CE220);
  v111 = sub_25C7CD1D4();
  v136 = *(v111 - 1);
  v137 = v111;
  v112 = *(v136 + 48);
  result = v112(v16, 1);
  if (result == 1)
  {
    goto LABEL_107;
  }

  sub_25C7C51B4(v133, v13, &qword_27FC15920, &qword_25C7CE220);
  result = (v112)(v13, 1, v137);
  if (result == 1)
  {
LABEL_108:
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();

    sub_25C7BDAE8(v133);
    sub_25C7BDAE8(v134);
    v113 = v126;
    *v126 = 0x6C61696D6F6E6942;
    v113[1] = 0xEC00000074736554;
    v114 = v125;
    v115 = (v113 + v125[8]);
    *v115 = v110;
    *(v115 + 8) = 0;
    *(v113 + v114[9]) = v110 < v63;
    v116 = v136;
    *(v113 + v114[10]) = v135;
    *(v113 + v114[11]) = v141;
    v117 = v114[12];
    v135 = *(v116 + 32);
    v141 = v116 + 32;
    v118 = v137;
    v135(v113 + v117, v16, v137);
    v119 = *(v116 + 56);
    v119(v113 + v117, 0, 1, v118);
    v120 = v119;
    v121 = v114[13];
    (*(v116 + 16))(v113 + v121, v13, v118);
    v120(v113 + v121, 0, 1, v118);
    v122 = v114[7];
    v135(v113 + v122, v13, v118);
    result = (v120)(v113 + v122, 0, 1, v118);
    *(v113 + 8) = 513;
  }

  return result;
}

uint64_t sub_25C7CA648@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, void *a8@<X8>, double a9@<D0>)
{
  v10 = v9;
  v174 = a4;
  v175 = a5;
  v172 = a2;
  v173 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](&v154 - v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v154 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v154 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v154 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v154 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v39 = MEMORY[0x28223BE20](v38);
  if ((a7 & 1) == 0 && a6 <= 0)
  {
    v46 = 0x800000025C7CF220;
    sub_25C7B9A14();
    swift_allocError();
    v48 = 0xD000000000000031;
LABEL_10:
    *v47 = v48;
    *(v47 + 8) = v46;
    *(v47 + 16) = 0;
    return swift_willThrow();
  }

  if (a9 < 0.0 || a9 > 1.0)
  {
    v46 = 0x800000025C7CF1E0;
    sub_25C7B9A14();
    swift_allocError();
    v48 = 0xD000000000000035;
    goto LABEL_10;
  }

  v171 = a7;
  v165 = a6;
  v156 = v41;
  v157 = v40;
  v158 = v39;
  v159 = v20;
  v162 = v44;
  v163 = v45;
  v166 = &v154 - v42;
  v167 = v43;
  v160 = a8;
  v49 = *(a1 + 16);
  v50 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90] + 32;
  if (v49)
  {
    v52 = (a1 + 32 * v49);
    v53 = v52[1];
    v169 = *v52;
    v170 = v53;
    v54 = v52[3];
    v164 = v52[2];
    swift_unknownObjectRetain();
    if (v49 == 1)
    {
      v49 = 0;
      v55 = 1;
      v50 = MEMORY[0x277D84F90];
    }

    else
    {
      v51 = *(v52 - 3);
      v49 = *(v52 - 2);
      v55 = *(v52 - 1);
      v50 = *(v52 - 4);
      swift_unknownObjectRetain();
    }

    v57 = v170;
  }

  else
  {
    v164 = 0;
    v54 = 1;
    v57 = MEMORY[0x277D84F90] + 32;
    v169 = MEMORY[0x277D84F90];
    v55 = 1;
  }

  v161 = v54;
  v170 = v57;
  if (v171)
  {
    v168 = v50;
  }

  else
  {
    v168 = sub_25C7CC464(v165, v50, v51, v49, v55);
    v51 = v58;
    v49 = v41;
    v55 = v59;
  }

  v60 = sub_25C7CC244(v37, v34, v41, v51, v49, v55, v174, v175);
  v61 = v171;
  if (v10)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v155 = v60;
  sub_25C7CC50C(v37, v166);
  v62 = v34;
  v63 = 0;
  sub_25C7CC50C(v62, v167);
  v64 = sub_25C7CCEF8(v51, v49, v55, v172, v173);
  v65 = sub_25C7C9220(v64);

  if (!v65)
  {
    sub_25C7B9A14();
    swift_allocError();
    *v83 = 0xD000000000000026;
    *(v83 + 8) = 0x800000025C7CF180;
    *(v83 + 16) = 1;
    swift_willThrow();
    v84 = v166;
    v85 = v167;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v85);
    return sub_25C7BDAE8(v84);
  }

  v66 = 0;
  v67 = *(v65 + 16);
  v68 = MEMORY[0x277D84F90];
LABEL_21:
  v69 = v164;
  while (v67 != v66)
  {
    v70 = *(v65 + 16);
    if (v66 >= v70)
    {
      __break(1u);
      goto LABEL_58;
    }

    v71 = v66 + 1;
    v72 = *(v65 + 8 * v66++ + 32);
    if (v72 == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25C7CC61C(0, *(v68 + 16) + 1, 1);
        v68 = v176;
      }

      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v154 = v75 + 1;
        sub_25C7CC61C((v74 > 1), v75 + 1, 1);
        v76 = v154;
        v68 = v176;
      }

      *(v68 + 16) = v76;
      *(v68 + 8 * v75 + 32) = 1;
      v66 = v71;
      goto LABEL_21;
    }
  }

  v164 = *(v68 + 16);

  v77 = v170;
  v78 = v161;
  v80 = sub_25C7CC244(v29, v26, v79, v170, v69, v161, v174, v175);
  v81 = v167;
  v82 = v163;
  v175 = v80;
  v86 = v29;
  v87 = v162;
  sub_25C7CC50C(v86, v162);
  sub_25C7CC50C(v26, v82);
  v88 = sub_25C7CCEF8(v77, v69, v78, v172, v173);
  v89 = v82;
  v90 = v81;
  v173 = 0;
  v91 = sub_25C7C9220(v88);

  if (!v91)
  {
    sub_25C7B9A14();
    swift_allocError();
    *v100 = 0xD000000000000026;
    *(v100 + 8) = 0x800000025C7CF180;
    *(v100 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v89);
    sub_25C7BDAE8(v87);
    sub_25C7BDAE8(v90);
    return sub_25C7BDAE8(v166);
  }

  v92 = 0;
  v93 = *(v91 + 16);
  v94 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v93 == v92)
    {

      v174 = *(v94 + 16);

      if (v61)
      {
        v63 = v155;
        if (v175 < 1 || v155 < 1)
        {
LABEL_51:
          v102 = type metadata accessor for ZTestResult(0);
          v103 = v160;
          v104 = v166;
          sub_25C7C51B4(v166, v160 + v102[12], &qword_27FC15920, &qword_25C7CE220);
          v105 = v167;
          sub_25C7C51B4(v167, v103 + v102[13], &qword_27FC15920, &qword_25C7CE220);
          v106 = v162;
          sub_25C7C51B4(v162, v103 + v102[16], &qword_27FC15920, &qword_25C7CE220);
          sub_25C7C51B4(v89, v103 + v102[17], &qword_27FC15920, &qword_25C7CE220);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_25C7BDAE8(v89);
          sub_25C7BDAE8(v106);
          sub_25C7BDAE8(v105);
          sub_25C7BDAE8(v104);
          *v103 = 0x747365545ALL;
          v103[1] = 0xE500000000000000;
          *(v103 + 17) = 1;
          *(v103 + v102[10]) = v63;
          *(v103 + v102[11]) = v164;
          v107 = v174;
          *(v103 + v102[14]) = v175;
          *(v103 + v102[15]) = v107;
          v108 = v103;
          v109 = v102[7];
          v110 = sub_25C7CD1D4();
          result = (*(*(v110 - 8) + 56))(v103 + v109, 1, 1, v110);
          *(v103 + 16) = 0;
          v111 = v103 + v102[8];
          *v111 = 0;
          v111[8] = 1;
          v112 = v102[9];
          goto LABEL_56;
        }
      }

      else
      {
        v63 = v155;
        if (v175 < v165 || v155 < v165)
        {
          goto LABEL_51;
        }
      }

      v70 = 0xD00000000000001BLL;
      if (v63 < v164)
      {
        v101 = "k1 must be in range [1, n1]";
LABEL_54:
        v113 = v101 - 32;
        v91 = 0xD00000000000001BLL;
        goto LABEL_55;
      }

      if (v175 < v174)
      {
        v101 = "k2 must be in range [1, n2]";
        goto LABEL_54;
      }

LABEL_58:
      v113 = "n2 must be in range (1, maxInt]";
      v91 = v70 + 19;
      if (a9 >= 1.0 || a9 <= 0.0)
      {
        goto LABEL_55;
      }

      v91 = v70 + 4;
      if (v63 < 1)
      {
        v153 = "n1 must be in range (1, maxInt]";
        goto LABEL_78;
      }

      if (!v175)
      {
        goto LABEL_77;
      }

      if ((sub_25C7CD414() & 1) == 0)
      {
        if (sub_25C7CD414())
        {
          a9 = 1.0 - a9;
        }

        else
        {
          a9 = a9 * 0.5;
        }
      }

      sub_25C7B9B1C(a9);
      v128 = v127;
      v129 = 0.0;
      if (v164 | v174 && (v164 != v155 || v174 != v175))
      {
        v130 = v164 / v155;
        v131 = v174 / v175;
        v132 = (v130 * v155 + v131 * v175) / (v155 + v175);
        v129 = (v130 - v131) / sqrt((1.0 / v155 + 1.0 / v175) * (v132 * (1.0 - v132)));
      }

      v133 = v156;
      sub_25C7C51B4(v166, v156, &qword_27FC15920, &qword_25C7CE220);
      v134 = sub_25C7CD1D4();
      v135 = *(v134 - 8);
      v136 = *(v135 + 48);
      result = v136(v133, 1, v134);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v137 = v157;
        sub_25C7C51B4(v167, v157, &qword_27FC15920, &qword_25C7CE220);
        result = v136(v137, 1, v134);
        if (result != 1)
        {
          v138 = v158;
          sub_25C7C51B4(v162, v158, &qword_27FC15920, &qword_25C7CE220);
          result = v136(v138, 1, v134);
          if (result != 1)
          {
            v139 = v159;
            sub_25C7C51B4(v163, v159, &qword_27FC15920, &qword_25C7CE220);
            result = v136(v139, 1, v134);
            if (result != 1)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_25C7BDAE8(v163);
              sub_25C7BDAE8(v162);
              sub_25C7BDAE8(v167);
              sub_25C7BDAE8(v166);
              v108 = v160;
              *v160 = 0x747365545ALL;
              v108[1] = 0xE500000000000000;
              v140 = type metadata accessor for ZTestResult(0);
              v141 = (v108 + v140[8]);
              *v141 = v129;
              *(v141 + 8) = 0;
              *(v108 + v140[9]) = fabs(v128 + 0.0) < fabs(v129);
              *(v108 + v140[10]) = v155;
              *(v108 + v140[11]) = v164;
              v142 = v140[12];
              v143 = v135;
              v144 = *(v135 + 32);
              v144(v108 + v142, v156, v134);
              v145 = v144;
              v146 = *(v143 + 56);
              v146(v108 + v142, 0, 1, v134);
              v147 = v140[13];
              v145(v108 + v147, v157, v134);
              v172 = v145;
              v146(v108 + v147, 0, 1, v134);
              v148 = v174;
              *(v108 + v140[14]) = v175;
              *(v108 + v140[15]) = v148;
              v149 = v140[16];
              v145(v108 + v149, v158, v134);
              v146(v108 + v149, 0, 1, v134);
              v150 = v140[17];
              v151 = v159;
              (*(v143 + 16))(v108 + v150, v159, v134);
              v146(v108 + v150, 0, 1, v134);
              v152 = v140[7];
              v172(v108 + v152, v151, v134);
              result = (v146)(v108 + v152, 0, 1, v134);
              *(v108 + 16) = 1;
              v112 = 17;
              goto LABEL_56;
            }

            goto LABEL_82;
          }

LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    if (v92 >= *(v91 + 16))
    {
      break;
    }

    v95 = v92 + 1;
    v96 = *(v91 + 8 * v92++ + 32);
    if (v96 == 1)
    {
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v176 = v94;
      if ((v97 & 1) == 0)
      {
        sub_25C7CC61C(0, *(v94 + 16) + 1, 1);
        v94 = v176;
      }

      v99 = *(v94 + 16);
      v98 = *(v94 + 24);
      if (v99 >= v98 >> 1)
      {
        sub_25C7CC61C((v98 > 1), v99 + 1, 1);
        v94 = v176;
      }

      *(v94 + 16) = v99 + 1;
      *(v94 + 8 * v99 + 32) = 1;
      v92 = v95;
      v89 = v163;
    }
  }

  __break(1u);
LABEL_77:
  v153 = "n2 must be in range (1, maxInt]";
LABEL_78:
  v113 = v153 - 32;
LABEL_55:
  v114 = v113 | 0x8000000000000000;
  sub_25C7B9A14();
  v115 = swift_allocError();
  *v116 = v91;
  *(v116 + 8) = v114;
  *(v116 + 16) = 0;
  swift_willThrow();
  v117 = type metadata accessor for ZTestResult(0);
  v118 = v160;
  v119 = v166;
  sub_25C7C51B4(v166, v160 + v117[12], &qword_27FC15920, &qword_25C7CE220);
  v120 = v167;
  sub_25C7C51B4(v167, v118 + v117[13], &qword_27FC15920, &qword_25C7CE220);
  v121 = v162;
  sub_25C7C51B4(v162, v118 + v117[16], &qword_27FC15920, &qword_25C7CE220);
  v122 = v163;
  sub_25C7C51B4(v163, v118 + v117[17], &qword_27FC15920, &qword_25C7CE220);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x25F88EF00](v115);
  sub_25C7BDAE8(v122);
  sub_25C7BDAE8(v121);
  sub_25C7BDAE8(v120);
  sub_25C7BDAE8(v119);
  *v118 = 0x747365545ALL;
  v118[1] = 0xE500000000000000;
  *(v118 + 17) = 0;
  *(v118 + v117[10]) = v155;
  *(v118 + v117[11]) = v164;
  v123 = v174;
  *(v118 + v117[14]) = v175;
  *(v118 + v117[15]) = v123;
  v108 = v118;
  v124 = v117[7];
  v125 = sub_25C7CD1D4();
  result = (*(*(v125 - 8) + 56))(v118 + v124, 1, 1, v125);
  *(v118 + 16) = 0;
  v126 = v118 + v117[8];
  *v126 = 0;
  v126[8] = 1;
  v112 = v117[9];
LABEL_56:
  *(v108 + v112) = 2;
  return result;
}

uint64_t sub_25C7CB684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W6>, void *a7@<X8>)
{
  v125 = a3;
  v124 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](&v104 - v17);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v104 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v104 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v104 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v104 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v35 = MEMORY[0x28223BE20](v34);
  if ((a6 & 1) == 0 && v38 <= 0)
  {
    sub_25C7B9A14();
    swift_allocError();
    *v43 = 0xD000000000000034;
    *(v43 + 8) = 0x800000025C7CF380;
    *(v43 + 16) = 0;
    return swift_willThrow();
  }

  v109 = v38;
  v105 = v37;
  v106 = v36;
  v107 = v35;
  v108 = v16;
  v113 = v42;
  v114 = v41;
  v118 = v40;
  v119 = &v104 - v39;
  v110 = a7;
  v45 = *(a1 + 16);
  v121 = MEMORY[0x277D84F90] + 32;
  v115 = v22;
  if (v45)
  {
    v112 = a4;
    v46 = a5;
    v47 = (a1 + 32 * v45);
    v48 = *v47;
    v120 = v47[1];
    v49 = v47[2];
    v111 = v47[3];
    v122 = v48;
    swift_unknownObjectRetain();
    if (v45 == 1)
    {
      v116 = 1;
      v117 = 0;
      v123 = MEMORY[0x277D84F90];
    }

    else
    {
      v52 = *(v47 - 4);
      v121 = *(v47 - 3);
      v53 = *(v47 - 2);
      v116 = *(v47 - 1);
      v117 = v53;
      v123 = v52;
      swift_unknownObjectRetain();
    }

    v45 = v49;
    a5 = v46;
    v50 = v111;
    a4 = v112;
    v51 = v120;
  }

  else
  {
    v50 = 1;
    v51 = MEMORY[0x277D84F90] + 32;
    v122 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v116 = 1;
    v117 = 0;
  }

  v54 = v126;
  v55 = sub_25C7CC244(v33, v30, v37, v51, v45, v50, a4, a5);
  if (v54)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v120 = v51;
  v112 = v45;
  v126 = v55;
  sub_25C7CC50C(v33, v119);
  sub_25C7CC50C(v30, v118);
  v56 = v115;
  v58 = sub_25C7CC244(v25, v115, v57, v121, v117, v116, a4, a5);
  sub_25C7CC50C(v25, v114);
  sub_25C7CC50C(v56, v113);
  if (a6)
  {
    v59 = v126;
    v60 = v126 < 1 || v58 < 1;
    v62 = v116;
    v61 = v117;
    if (!v60)
    {
      goto LABEL_17;
    }

LABEL_23:
    v67 = type metadata accessor for KSTestTwoSampleResult(0);
    v68 = v110;
    sub_25C7C51B4(v114, v110 + v67[10], &qword_27FC15920, &qword_25C7CE220);
    v69 = v113;
    sub_25C7C51B4(v113, v68 + v67[11], &qword_27FC15920, &qword_25C7CE220);
    v70 = v119;
    sub_25C7C51B4(v119, v68 + v67[13], &qword_27FC15920, &qword_25C7CE220);
    v71 = v68 + v67[14];
    v125 = v58;
    v72 = v118;
    sub_25C7C51B4(v118, v71, &qword_27FC15920, &qword_25C7CE220);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v69);
    sub_25C7BDAE8(v114);
    sub_25C7BDAE8(v72);
    sub_25C7BDAE8(v70);
    *v68 = 0x775474736554534BLL;
    v68[1] = 0xEF656C706D61536FLL;
    *(v68 + 17) = 1;
    *(v68 + v67[9]) = v125;
    *(v68 + v67[12]) = v59;
    v73 = v67[7];
    v74 = sub_25C7CD1D4();
    result = (*(*(v74 - 8) + 56))(v68 + v73, 1, 1, v74);
    *(v68 + 16) = 0;
    v75 = v68 + v67[8];
    *v75 = 0;
    v75[8] = 1;
    return result;
  }

  v59 = v126;
  v66 = v126 < v109 || v58 < v109;
  v62 = v116;
  v61 = v117;
  if (v66)
  {
    goto LABEL_23;
  }

LABEL_17:
  v64 = v124;
  v63 = v125;
  v65 = sub_25C7CCEF8(v120, v112, v50, v124, v125);
  v76 = sub_25C7CCEF8(v121, v61, v62, v64, v63);
  v77 = sub_25C7C9350(v65);
  if (!v77)
  {
    goto LABEL_29;
  }

  v78 = v77;
  v79 = sub_25C7C9350(v76);
  if (!v79)
  {

LABEL_29:

    sub_25C7B9A14();
    swift_allocError();
    *v80 = 0xD00000000000001DLL;
    *(v80 + 8) = 0x800000025C7CF360;
    *(v80 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v113);
    sub_25C7BDAE8(v114);
    sub_25C7BDAE8(v118);
    return sub_25C7BDAE8(v119);
  }

  v125 = v58;
  sub_25C7C8B54(v79, v78, 0);
  v82 = v81;
  v83 = v105;
  sub_25C7C51B4(v114, v105, &qword_27FC15920, &qword_25C7CE220);
  v84 = sub_25C7CD1D4();
  v121 = *(v84 - 8);
  v85 = *(v121 + 48);
  result = v85(v83, 1, v84);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v86 = v106;
  sub_25C7C51B4(v113, v106, &qword_27FC15920, &qword_25C7CE220);
  result = v85(v86, 1, v84);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v87 = v107;
  sub_25C7C51B4(v119, v107, &qword_27FC15920, &qword_25C7CE220);
  v124 = v84;
  result = v85(v87, 1, v84);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v88 = v118;
  v89 = v108;
  sub_25C7C51B4(v118, v108, &qword_27FC15920, &qword_25C7CE220);
  result = v85(v89, 1, v124);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25C7BDAE8(v113);
    sub_25C7BDAE8(v114);
    sub_25C7BDAE8(v88);
    sub_25C7BDAE8(v119);
    v90 = v110;
    *v110 = 0x775474736554534BLL;
    *(v90 + 1) = 0xEF656C706D61536FLL;
    v91 = type metadata accessor for KSTestTwoSampleResult(0);
    v92 = &v90[v91[8]];
    *v92 = v82;
    v92[8] = 0;
    v93 = v124;
    *&v90[v91[9]] = v125;
    v94 = v91[10];
    v95 = v121;
    v96 = v121 + 32;
    v123 = *(v121 + 32);
    v123(&v90[v94], v105, v93);
    v125 = v96;
    v122 = *(v95 + 56);
    v122(&v90[v94], 0, 1, v93);
    v97 = v91[11];
    v98 = v123;
    v123(&v90[v97], v106, v93);
    v99 = v122;
    v122(&v90[v97], 0, 1, v93);
    *&v90[v91[12]] = v126;
    v100 = v91[13];
    v98(&v90[v100], v107, v93);
    v99(&v90[v100], 0, 1, v93);
    v101 = v91[14];
    v102 = v108;
    (*(v95 + 16))(&v90[v101], v108, v93);
    v99(&v90[v101], 0, 1, v93);
    v103 = v91[7];
    v123(&v90[v103], v102, v93);
    result = (v99)(&v90[v103], 0, 1, v93);
    *(v90 + 8) = 513;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25C7CC244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v13 = sub_25C7CCEF8(a4, a5, a6, a7, a8);
  if (v8)
  {
    return v10;
  }

  v14 = sub_25C7C8F48(v13);

  if (!v14)
  {
    v10 = 0x800000025C7CF280;
    sub_25C7B9A14();
    swift_allocError();
    *v24 = 0xD000000000000021;
    *(v24 + 8) = 0x800000025C7CF280;
    *(v24 + 16) = 1;
    swift_willThrow();
    return v10;
  }

  v16 = __OFSUB__(a6 >> 1, v10);
  v10 = (a6 >> 1) - v10;
  if (!v16)
  {
    v17 = *(v14 + 16);
    v18 = sub_25C7CD1D4();
    v19 = *(v18 - 8);
    v20 = v19;
    if (v17)
    {
      v26 = v17;
      v21 = v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v22 = *(v19 + 16);
      v22(a1, v21, v18);
      v23 = *(v20 + 56);
      v23(a1, 0, 1, v18);
      v22(a2, v21 + *(v20 + 72) * (v26 - 1), v18);

      v23(a2, 0, 1, v18);
    }

    else
    {
      v25 = *(v19 + 56);
      v25(a1, 1, 1, v18);

      v25(a2, 1, 1, v18);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C7CC464(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = a5 >> 1;
  v6 = a4 - (a5 >> 1);
  if (__OFSUB__(a4, a5 >> 1))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 > -result && v6 < 1)
  {
    v8 = a4;
  }

  else
  {
    v8 = v5 - result;
  }

  if (v5 < v8)
  {
    goto LABEL_14;
  }

  if (v8 >= a4)
  {
    return a2;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F88EFF0);
  }

  return result;
}

uint64_t sub_25C7CC50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_25C7CC57C(char *a1, int64_t a2, char a3)
{
  result = sub_25C7CC65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC59C(void *a1, int64_t a2, char a3)
{
  result = sub_25C7CC880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC5BC(void *a1, int64_t a2, char a3)
{
  result = sub_25C7CC9B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC5DC(void *a1, int64_t a2, char a3)
{
  result = sub_25C7CCAE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25C7CC5FC(size_t a1, int64_t a2, char a3)
{
  result = sub_25C7CCC1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7CC61C(char *a1, int64_t a2, char a3)
{
  result = sub_25C7CCDF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7CC63C(char *a1, int64_t a2, char a3)
{
  result = sub_25C7CC77C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7CC65C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A00, &qword_25C7CE230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_25C7CC77C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15900, &qword_25C7CDE30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25C7CC880(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15918, &qword_25C7CDE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7CC9B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15908, &qword_25C7CDE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7CCAE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A50, &qword_25C7CE2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25C7CCC1C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A58, &unk_25C7CE300);
  v10 = *(sub_25C7CD1D4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25C7CD1D4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25C7CCDF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A48, &qword_25C7CE2F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_25C7CCEF8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v9 = result;
  v28 = MEMORY[0x277D84F90];
  result = sub_25C7CC5DC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v6 = v28;
    v23 = v9 + 8 * a2;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((a2 + v10) >= v24 || v10 >= v5)
      {
        goto LABEL_21;
      }

      v12 = *(v23 + 8 * v10);
      v13 = *(v12 + 16);

      if (!v13 || (, sub_25C7BB2FC(a4, a5), v15 = v14, , (v15 & 1) == 0))
      {
        sub_25C7B9A14();
        swift_allocError();
        *v22 = 0xD000000000000017;
        *(v22 + 8) = 0x800000025C7CF260;
        *(v22 + 16) = 1;
        swift_willThrow();

        return v6;
      }

      if (*(v12 + 16) && (v16 = sub_25C7BB2FC(a4, a5), (v17 & 1) != 0))
      {
        sub_25C7B9970(*(v12 + 56) + 32 * v16, &v26);
      }

      else
      {

        v26 = 0u;
        v27 = 0u;
      }

      v28 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_25C7CC5DC((v18 > 1), v19 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 32 * v19;
      v21 = v27;
      *(v20 + 32) = v26;
      *(v20 + 48) = v21;
      ++v10;
      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_25C7CD108()
{
  result = qword_27FC159B8;
  if (!qword_27FC159B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC159B8);
  }

  return result;
}