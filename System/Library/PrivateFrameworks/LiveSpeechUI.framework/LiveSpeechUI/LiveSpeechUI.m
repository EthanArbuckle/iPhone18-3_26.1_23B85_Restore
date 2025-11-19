void *LiveSpeechPreferredLanguages()()
{
  v144 = sub_256021850();
  v134 = *(v144 - 8);
  v0 = *(v134 + 64);
  (MEMORY[0x28223BE20])();
  v143 = &v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_256021870();
  v145 = *(v142 - 8);
  v2 = v145[8];
  (MEMORY[0x28223BE20])();
  v141 = (&v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8251E0, &qword_256021AF0) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v121 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v116 = &v112 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v112 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v112 - v11;
  v128 = sub_256021810();
  v13 = *(v128 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v128);
  v120 = (&v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v115 = (&v112 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = &v112 - v19;
  v21 = sub_256021830();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v127 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v129 = &v112 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v112 - v28;
  v30 = sub_2560217E0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v118 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v119 = &v112 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v113 = &v112 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v114 = &v112 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v132 = &v112 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v112 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v139 = &v112 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v112 - v48;
  sub_2560217F0();
  sub_256021820();
  v50 = *(v22 + 8);
  v126 = v21;
  v125 = v22 + 8;
  v124 = v50;
  v50(v29, v21);
  sub_256021800();
  v51 = *(v13 + 8);
  v123 = v13 + 8;
  v122 = v51;
  v51(v20, v128);
  v146 = *(v31 + 48);
  v147 = v31 + 48;
  if (v146(v12, 1, v30) != 1)
  {
    v138 = *(v31 + 32);
    v138(v49, v12, v30);
    v53 = v139;
    (*(v31 + 16))(v139, v49, v30);
    v52 = sub_2560214F4(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = v52[2];
    v54 = v52[3];
    v56 = (v55 + 1);
    if (v55 >= v54 >> 1)
    {
      goto LABEL_91;
    }

    goto LABEL_4;
  }

  sub_2560212E4(v12);
  v52 = MEMORY[0x277D84F90];
LABEL_5:
  sub_2560218D0();
  v57 = MEMORY[0x259C56E70]();
  v58 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v59 = *&v57[v58];

  v60 = sub_2560218B0();
  v139 = *(v60 + 16);
  if (v139)
  {
    v61 = 0;
    v138 = v145[2];
    v62 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v117 = v60;
    v137 = v60 + v62;
    v145 += 2;
    v135 = v145[7];
    v136 = (v145 - 1);
    v63 = (v134 + 8);
    v134 = v31 + 32;
    v130 = (v31 + 16);
    v131 = (v31 + 8);
    do
    {
      v64 = v141;
      v65 = v142;
      v138(v141, (v137 + v135 * v61), v142);
      v66 = v143;
      sub_256021860();
      (*v136)(v64, v65);
      v67 = v140;
      sub_256021840();
      (*v63)(v66, v144);
      if (v146(v67, 1, v30) == 1)
      {
        sub_2560212E4(v67);
      }

      else
      {
        v133 = *v134;
        (v133)(v45, v67, v30);
        v68 = 0;
        v69 = v52;
        v70 = v52[2];
        while (v70 != v68)
        {
          v71 = v68 + 1;
          v72 = v69 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v68;
          sub_256021718();
          v73 = sub_256021880();
          v68 = v71;
          if (v73)
          {
            (*v131)(v45, v30);
            v52 = v69;
            goto LABEL_8;
          }
        }

        (*v130)(v132, v45, v30);
        v52 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_2560214F4(0, v69[2] + 1, 1, v69);
        }

        v74 = v133;
        v76 = v52[2];
        v75 = v52[3];
        if (v76 >= v75 >> 1)
        {
          v52 = sub_2560214F4(v75 > 1, v76 + 1, 1, v52);
        }

        (*(v31 + 8))(v45, v30);
        v52[2] = v76 + 1;
        (v74)(v52 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v76, v132, v30);
      }

LABEL_8:
      ++v61;
    }

    while (v61 != v139);
  }

  v77 = [objc_opt_self() sharedInputModeController];
  v55 = v129;
  if (v77)
  {
    v135 = v77;
    v78 = [v77 activeUserSelectableInputModes];
    if (v78)
    {
      v49 = v78;
      v56 = sub_2560218A0();

      v53 = sub_25602134C(v56);

      if (v53)
      {
        v45 = v53 & 0xFFFFFFFFFFFFFF8;
        if (v53 >> 62)
        {
          v79 = sub_256021940();
          if (v79)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v79 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v79)
          {
LABEL_24:
            v80 = 0;
            v142 = v79;
            v143 = (v53 & 0xC000000000000001);
            v136 = (v31 + 32);
            v137 = v53 + 32;
            v133 = (v31 + 16);
            v134 = v31 + 8;
            v138 = (v53 & 0xFFFFFFFFFFFFFF8);
            v139 = v53;
            while (1)
            {
              if (v143)
              {
                v81 = v80;
                v82 = MEMORY[0x259C56E90](v80, v53);
                v83 = __OFADD__(v81, 1);
                v49 = (v81 + 1);
                if (v83)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v54 = *(v45 + 16);
                if (v80 >= v54)
                {
                  goto LABEL_89;
                }

                v84 = v80;
                v82 = *(v137 + 8 * v80);
                v83 = __OFADD__(v84, 1);
                v49 = (v84 + 1);
                if (v83)
                {
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  v52 = sub_2560214F4(v54 > 1, v56, 1, v52);
LABEL_4:
                  (*(v31 + 8))(v49, v30);
                  v52[2] = v56;
                  v138(v52 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v55, v53, v30);
                  goto LABEL_5;
                }
              }

              v144 = v49;
              v145 = v82;
              v85 = [v82 primaryLanguage];
              if (!v85)
              {
                goto LABEL_51;
              }

              v86 = v85;
              v56 = sub_256021890();
              v49 = v87;

              v88 = v56 == 7107949 && v49 == 0xE300000000000000;
              if (!v88 && (sub_256021950() & 1) == 0 && (v56 != 0x696A6F6D65 || v49 != 0xE500000000000000) && (sub_256021950() & 1) == 0)
              {
                break;
              }

LABEL_26:
              v80 = v144;
              if (v144 == v142)
              {
                goto LABEL_93;
              }
            }

            sub_2560217D0();
            v89 = v115;
            sub_256021820();
            v49 = v116;
            v56 = v89;
            sub_256021800();
            v122(v89, v128);
            if (v146(v49, 1, v30) == 1)
            {
              v124(v55, v126);
              sub_2560212E4(v49);
            }

            else
            {
              v56 = *v136;
              v90 = v114;
              (*v136)(v114, v49, v30);
              if (sub_2560211C4(v90, v52))
              {
                (*v134)(v90, v30);
                v124(v55, v126);
              }

              else
              {
                (*v133)(v113, v90, v30);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v52 = sub_2560214F4(0, v52[2] + 1, 1, v52);
                }

                v92 = v52[2];
                v91 = v52[3];
                v49 = (v92 + 1);
                if (v92 >= v91 >> 1)
                {
                  v52 = sub_2560214F4(v91 > 1, v92 + 1, 1, v52);
                }

                (*(v31 + 8))(v114, v30);
                v124(v55, v126);
                v52[2] = v49;
                v56(v52 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v92, v113, v30);
              }
            }

LABEL_51:
            v93 = [v145 multilingualSet];
            if (v93)
            {
              v49 = v93;
              sub_2560216CC();
              v45 = sub_2560218A0();

              if (!(v45 >> 62))
              {
                goto LABEL_53;
              }
            }

            else
            {
              v45 = MEMORY[0x277D84F90];
              if (!(MEMORY[0x277D84F90] >> 62))
              {
LABEL_53:
                v54 = v45 & 0xFFFFFFFFFFFFFF8;
                v53 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v53)
                {
                  goto LABEL_54;
                }

LABEL_86:

                v55 = v129;
LABEL_87:
                v45 = v138;
                v53 = v139;
                goto LABEL_26;
              }
            }

            v53 = sub_256021940();
            if (v53)
            {
LABEL_54:
              if (v53 < 1)
              {
                goto LABEL_90;
              }

              v141 = v52;
              v94 = 0;
              v95 = v45 & 0xC000000000000001;
              v140 = (v45 & 0xC000000000000001);
              while (2)
              {
                if (v95)
                {
                  v96 = MEMORY[0x259C56E90](v94, v45);
                }

                else
                {
                  v96 = *(v45 + 8 * v94 + 32);
                }

                v49 = v96;
                v97 = [v96 primaryLanguage];
                if (v97)
                {
                  v98 = v97;
                  v99 = sub_256021890();
                  v56 = v100;

                  v101 = v99 == 7107949 && v56 == 0xE300000000000000;
                  if (v101 || (sub_256021950() & 1) != 0 || (v99 == 0x696A6F6D65 ? (v102 = v56 == 0xE500000000000000) : (v102 = 0), v102 || (sub_256021950() & 1) != 0))
                  {

                    goto LABEL_71;
                  }

                  v103 = v127;
                  sub_2560217D0();
                  v104 = v120;
                  sub_256021820();
                  v105 = v121;
                  v56 = v104;
                  sub_256021800();
                  v122(v104, v128);
                  if (v146(v105, 1, v30) == 1)
                  {
                    v124(v103, v126);

                    sub_2560212E4(v105);
                    goto LABEL_78;
                  }

                  v106 = *v136;
                  v56 = v119;
                  (*v136)(v119, v105, v30);
                  if (sub_2560211C4(v56, v141))
                  {

                    (*v134)(v56, v30);
                    v124(v127, v126);
LABEL_78:
                    v95 = v140;
                  }

                  else
                  {
                    (*v133)(v118, v56, v30);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v95 = v140;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v141 = sub_2560214F4(0, v141[2] + 1, 1, v141);
                    }

                    v109 = v141[2];
                    v108 = v141[3];
                    v56 = (v109 + 1);
                    if (v109 >= v108 >> 1)
                    {
                      v141 = sub_2560214F4(v108 > 1, v109 + 1, 1, v141);
                    }

                    (*(v31 + 8))(v119, v30);
                    v124(v127, v126);
                    v110 = v141;
                    v141[2] = v56;
                    v106(&v110[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v109], v118, v30);
                  }
                }

                else
                {
LABEL_71:
                }

                if (v53 == ++v94)
                {

                  v55 = v129;
                  v52 = v141;
                  goto LABEL_87;
                }

                continue;
              }
            }

            goto LABEL_86;
          }
        }

LABEL_93:
      }
    }
  }

  return v52;
}

BOOL sub_2560211C4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_2560217E0() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_256021718();
  }

  while ((sub_256021880() & 1) == 0);
  return v4 != v5;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2560212E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8251E0, &qword_256021AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25602134C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_256021910();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_256021774(i, v6);
    sub_2560216CC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2560218F0();
    v4 = *(v7 + 16);
    sub_256021920();
    sub_256021930();
    sub_256021900();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall LiveSpeechCurrentInputModeID()()
{
  v0 = [objc_opt_self() sharedInputModeController];
  if (!v0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v0;
  v3 = [v0 currentInputMode];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 identifier];
  if (!v4)
  {

LABEL_6:
    v0 = 0;
    v1 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_256021890();
  v8 = v7;

  v1 = v8;
  v0 = v6;
LABEL_8:
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

size_t sub_2560214F4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8251F8, &qword_256021AF8);
  v10 = *(sub_2560217E0() - 8);
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
  v15 = *(sub_2560217E0() - 8);
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

unint64_t sub_2560216CC()
{
  result = qword_27F8251E8;
  if (!qword_27F8251E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8251E8);
  }

  return result;
}

unint64_t sub_256021718()
{
  result = qword_27F8251F0;
  if (!qword_27F8251F0)
  {
    sub_2560217E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8251F0);
  }

  return result;
}

uint64_t sub_256021774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}