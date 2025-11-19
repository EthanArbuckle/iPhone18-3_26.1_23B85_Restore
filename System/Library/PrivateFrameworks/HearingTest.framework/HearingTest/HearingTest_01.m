uint64_t sub_252096F0C(void *a1, uint64_t a2, uint64_t a3)
{
  __C[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2520982A0(a1, a2, a3);
  if (v5)
  {
LABEL_12:
    v30 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = sub_2520EEE44(2, v9, v10, v11);
  v16 = *(v15 + 16);
  __I = 0;
  __C[0] = NAN;
  vDSP_maxviD((v15 + 32), 1, __C, &__I, v16);
  v17 = __I;

  if (v17 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v17 >= v13)
  {

    sub_2520A2090();
    v3 = swift_allocError();
    *v23 = 0xD000000000000022;
    v23[1] = 0x8000000252148E80;
    swift_willThrow();
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_252143AB0;
  if (v14 < 1)
  {
    goto LABEL_39;
  }

  v19 = v17 * v14;
  if ((v17 * v14) >> 64 != (v17 * v14) >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = *(v12 + 16);
  if (v19 >= v20)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = v18;
  *(v18 + 32) = *(v12 + 32 + 8 * v19);
  if (v14 == 1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v21 = v19 + 1;
  if (v21 >= v20)
  {
    goto LABEL_44;
  }

  v22 = *(v12 + 32 + 8 * v21);

  *(v3 + 40) = v22;
  *&__C[0] = v3;
  v24 = sub_2520F1D74(4, a1, a2, a3);
  v26 = v25;
  v28 = v27;
  v29 = sub_2520F1D5C(0, v24, v25, v27, __C);
  v33 = v32;
  v35 = v34;
  v36 = v29;
  v37 = sub_2520F1D5C(0, v24, v26, v28, __C);
  v39 = v38;
  v41 = v40;
  v42 = v37;

  if (v33 < 1 || v39 < 1)
  {

    sub_2520A2090();
    swift_allocError();
    *v45 = 0xD000000000000032;
    v45[1] = 0x8000000252148EB0;
    swift_willThrow();

    goto LABEL_12;
  }

  if (v35 < 2)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (*(v36 + 16) < 2uLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = *(v36 + 40);

  if (v41 < 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (*(v42 + 16) < 3uLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v43 = *(v42 + 48);

  if (v22 + v43 < 3.0)
  {
    goto LABEL_29;
  }

  v44 = vabdd_f64(v22, v43);
  if (v43 >= v22)
  {
    if (v22 >= v43)
    {
      goto LABEL_29;
    }

    if (*(v3 + 16) >= 2uLL)
    {
      v22 = v44 * 1.5 + *(v3 + 40);
LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_52;
      }

      while (1)
      {
        *(v3 + 40) = v22;
        *&__C[0] = v3;
LABEL_29:
        if (*(v3 + 16) < 2uLL)
        {
          break;
        }

        v46 = *(v3 + 40);
        if (*(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) < v46)
        {
          v46 = *(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
        }

        if (*(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel) > v46)
        {
          v22 = *(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
        }

        else
        {
          v22 = v46;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_36:
        if (*(v3 + 16) >= 2uLL)
        {
          *(v3 + 40) = v22;
          goto LABEL_12;
        }

        __break(1u);
LABEL_52:
        v3 = sub_2520A598C(v3);
      }

LABEL_49:
      __break(1u);
LABEL_50:
      v3 = sub_2520A598C(v3);
      goto LABEL_36;
    }
  }

  else
  {
    if (*(v3 + 16) >= 2uLL)
    {
      v22 = *(v3 + 40) + v44 * -1.5;
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252097390@<X0>(char **a1@<X8>)
{
  v3 = v1;
  v103 = *MEMORY[0x277D85DE8];
  v5 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v6 = sub_2520EEE44(1, __C, v98, v99);

  if (!v2)
  {
    v8 = *(v6 + 16);
    __C = 0x7FF8000000000000;
    vDSP_minvD((v6 + 32), 1, &__C, v8);
    v9 = *&__C;

    MEMORY[0x28223BE20](v10);
    sub_25214200C();
    v11 = sub_2520EEE44(1, __C, v98, v99);

    v12 = *(v11 + 16);
    __C = 0x7FF8000000000000;
    vDSP_maxvD((v11 + 32), 1, &__C, v12);
    v13 = *&__C;

    v14 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v14 + 32);
      v17 = v15 - 1;
      if (v17)
      {
        v19 = (v14 + 40);
        v20 = v17;
        v18 = *(v14 + 32);
        do
        {
          v21 = *v19++;
          v22 = v21;
          if (v21 < v18)
          {
            v18 = v22;
          }

          --v20;
        }

        while (v20);
        v23 = (v14 + 40);
        do
        {
          v24 = *v23++;
          v25 = v24;
          if (v16 < v24)
          {
            v16 = v25;
          }

          --v17;
        }

        while (v17);
      }

      else
      {
        v18 = *(v14 + 32);
      }
    }

    else
    {
      v18 = 250.0;
      v16 = 8000.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
    inited = swift_initStackObject();
    v95 = xmmword_252143AC0;
    *(inited + 16) = xmmword_252143AC0;
    *(inited + 32) = v18;
    v27 = sub_25209D6D8(inited);
    swift_setDeallocating();
    if (*(v27 + 16))
    {
      v28 = *(v27 + 32);

      v29 = swift_initStackObject();
      *(v29 + 16) = v95;
      *(v29 + 32) = v16;
      v30 = sub_25209D6D8(v29);
      swift_setDeallocating();
      if (*(v30 + 16))
      {
        v85 = a1;
        v31 = v9 + -5.0;
        v32 = v13 + 5.0;
        v33 = *(v30 + 32);

        if (v31 <= v32 && v28 <= v33)
        {
          sub_2520F1250(85, 100, &__C, v28, v33, v31, v32);
          v90 = __C;
          v89 = v98;
          v88 = v99;
          v91 = v100;
          v87 = v101;
          v86 = v102;
          v34 = sub_2520F1620(__C, v98, v99, v100, v101, v102);
          v93 = sub_2520F1A00(v34);
          *&v95 = v35;
          v94 = v36;

          MEMORY[0x28223BE20](v37);
          v38 = sub_25214200C();
          v39 = __C;
          v40 = v98;
          v92 = v99;
          MEMORY[0x28223BE20](v38);
          v41 = sub_25214200C();
          v42 = __C;
          MEMORY[0x28223BE20](v41);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
          sub_25214200C();
          v43 = *(v3 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_kernelLength);
          sub_25209EA3C(v93, v95, v94, v39, v40, v92, v42, __C, &__C);
          v94 = __C;
          v44 = v98;
          v92 = v99;
          *&v95 = v100;
          v84 = v101;
          v83 = v102;

          if (v44 < 1 || v92 <= 0)
          {

            v66 = 0x8000000252148C70;
            sub_2520A2090();
            swift_allocError();
            v68 = 0xD00000000000001DLL;
          }

          else
          {
            v45 = v84;
            v46 = v83;
            if (v84 >= 1 && v83 >= 1)
            {
              __C = v95;
              v98 = v84;
              v99 = v83;
              MEMORY[0x28223BE20](*(v95 + 16));
              v48 = sub_2520AABEC(v47, sub_2520A2144);
              if ((v84 * v83) >> 64 == (v84 * v83) >> 63)
              {
                v49 = v48[2];
                if (v49 == v84 * v83)
                {
                  v93 = &v83;
                  __C = v48;
                  v98 = v84;
                  v99 = v83;
                  MEMORY[0x28223BE20](v48);
                  v50 = sub_2520AABEC(v49, sub_2520A2178);

                  if (v50[2] == v49)
                  {
                    __C = v50;
                    v98 = v45;
                    v99 = v46;
                    MEMORY[0x28223BE20](v51);
                    v52 = sub_2520AABEC(v49, sub_2520A2198);
                    v93 = 0;

                    if (v52[2] == v49)
                    {
                      __C = v52;
                      v98 = v45;
                      v99 = v46;
                      MEMORY[0x28223BE20](v53);
                      v54 = v93;
                      v55 = sub_2520AABEC(v49, sub_2520A21CC);

                      __C = v55;
                      MEMORY[0x28223BE20](v55[2]);
                      v57 = sub_2520AABEC(v56, sub_2520A222C);

                      __C = v57;
                      v96 = v94;
                      MEMORY[0x28223BE20](v57[2]);
                      v59 = sub_2520AABEC(v58, sub_2520A338C);

                      v60 = sub_25209E75C(v59);

                      v61 = v89;
                      v62 = v88;
                      v63 = sub_25209DBDC(v89, v88, v60, *(v60 + 16), 1);
                      if (!v54)
                      {
                        *&v95 = v63;
                        v70 = v64;
                        v93 = v64;
                        v71 = v65;

                        v72 = v62;
                        v73 = v90;
                        v74 = v91;
                        v94 = sub_252098060(v90, v61, v72, v91, v87, v86, v95, v70, v71);
                        v92 = v75;
                        MEMORY[0x28223BE20](v94);
                        sub_25214200C();
                        v76 = sub_25209F7E8(v73, v89, v88, v74, v87, v86, v95, v93, 12.5, v71, __C, v98, v99);
                        v78 = v77;
                        v80 = v79;

                        v81 = v85;
                        v82 = v92;
                        *v85 = v94;
                        v81[1] = v82;
                        v81[2] = 2;
                        v81[3] = v76;
                        v81[4] = v78;
                        v81[5] = v80;
                        goto LABEL_32;
                      }

                      goto LABEL_31;
                    }

LABEL_40:
                    __break(1u);
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v66 = 0x8000000252148C90;
            sub_2520A2090();
            swift_allocError();
            v68 = 0xD00000000000001ELL;
          }

          *v67 = v68;
          v67[1] = v66;
          swift_willThrow();
LABEL_31:
          result = swift_willThrow();
          goto LABEL_32;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_32:
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_252098060(uint64_t a1, vDSP_Length a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32[7] = *MEMORY[0x277D85DE8];
  v32[0] = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = a2;
  if (a2)
  {
    if (a3 < 1)
    {
      __break(1u);
    }

    v14 = 0;
    v15 = a1 + 32;
    v16 = *(a1 + 16);
    while (1)
    {
      v19 = v14 * a3;
      if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
      {
        break;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v19 >= v16)
      {
        goto LABEL_15;
      }

      v12 = *(v15 + 8 * v19);
      v20 = sub_2520F0530(v14, a7, a8, a9);
      v21 = sub_2520F0530(v14, a4, a5, a6);
      _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v20, v21, 0.5);
      v11 = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AB0;
      *(inited + 32) = v12;
      *(inited + 40) = v11;
      ++v14;
      v9 = v32;
      sub_2520806CC(inited);
      if (v10 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v11 = *(v24 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
  v12 = *(v24 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
  if (v11 > v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v32[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v9 = sub_2520A598C(v9);
  }

  __C = v12;
  __B[0] = v11;
  vDSP_vclipD(v9 + 5, 2, __B, &__C, v9 + 5, 2, v10);
  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2520982A0(void *a1, uint64_t a2, uint64_t a3)
{
  v88[2] = *MEMORY[0x277D85DE8];
  result = sub_2520F1D74(4, a1, a2, a3);
  if (v3)
  {
    goto LABEL_2;
  }

  v8 = v5;
  if (v5 < 0)
  {
    goto LABEL_84;
  }

  v9 = result;
  if (!v5)
  {

    v73 = 0;
    v15 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v10 = v6;
  v11 = 0;
  v12 = 0;
  v13 = *(v74 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
  v14 = *(v74 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
  v72 = result + 32;
  v15 = MEMORY[0x277D84F90];
  v77 = result;
  v75 = v6;
  v76 = v5;
  while (2)
  {
    v16 = v11 * v10;
    if ((v11 * v10) >> 64 != (v11 * v10) >> 63)
    {
      goto LABEL_69;
    }

    v17 = v16 + v10;
    if (__OFADD__(v16, v10))
    {
      goto LABEL_70;
    }

    if (v17 < v16)
    {
      goto LABEL_71;
    }

    if (v16 < 0)
    {
      goto LABEL_72;
    }

    v18 = v9[2];
    if (v18 < v16 || v18 < v17)
    {
      goto LABEL_73;
    }

    v79 = v11;
    if (v18 == v10)
    {

      v19 = v9;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (v17 != v16)
      {
        if (v10 < 1)
        {
          v40 = 8 * v10;
          v19 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v19 = swift_allocObject();
          v39 = _swift_stdlib_malloc_size(v19);
          v40 = 8 * v10;
          v41 = v39 - 32;
          if (v39 < 32)
          {
            v41 = v39 - 25;
          }

          v19[2] = v10;
          v19[3] = 2 * (v41 >> 3);
        }

        memcpy(v19 + 4, (v72 + 8 * v16), v40);
      }
    }

    v88[0] = v13;
    v88[1] = v14;
    v87[0] = 0.0;
    v87[1] = (v14 - v13) / 2.5;
    v86[0] = 0x7FF8000000000000;
    vDSP_maxvD(v87, 1, v86, 2uLL);
    if ((v86[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_74;
    }

    if (*v86 <= -9.22337204e18)
    {
      goto LABEL_75;
    }

    if (*v86 >= 9.22337204e18)
    {
      goto LABEL_76;
    }

    v20 = *v86 + 1;
    if (__OFADD__(*v86, 1))
    {
      goto LABEL_77;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

    if (*v86 == -1)
    {
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v21 = sub_252141D3C();
      *(v21 + 16) = v20;
    }

    vDSP_vgenpD(v88, 1, v87, 1, (v21 + 32), 1, v20, 2uLL);
    *(v21 + 16) = v20;
    v22 = v20;
    if (!v20)
    {

      goto LABEL_7;
    }

    if (!v19[2])
    {
      goto LABEL_79;
    }

    v78 = v12 + v20;
    v23 = v12 - 0x7FFFFFFFFFFFFFFFLL;
    v24 = 32;
    v25 = v15;
    v80 = v21;
    do
    {
      v83 = v22;
      v26 = *(v21 + v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AB0;
      v28 = v19;
      *(inited + 32) = v19[4];
      v29 = (inited + 32);
      *(inited + 40) = v26;
      v30 = *(v25 + 2);
      v31 = v30 + 2;
      if (__OFADD__(v30, 2))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v33 = *(v25 + 3) >> 1, v33 < v31))
      {
        if (v30 <= v31)
        {
          v34 = v30 + 2;
        }

        else
        {
          v34 = v30;
        }

        v25 = sub_252099194(isUniquelyReferenced_nonNull_native, v34, 1, v25);
        v33 = *(v25 + 3) >> 1;
      }

      v19 = v28;
      v21 = v80;
      v35 = *(v25 + 2);
      if (v33 - v35 < 2)
      {
        goto LABEL_66;
      }

      *&v25[8 * v35 + 32] = *v29;

      v36 = *(v25 + 2);
      v37 = __OFADD__(v36, 2);
      v38 = v36 + 2;
      if (v37)
      {
        goto LABEL_67;
      }

      *(v25 + 2) = v38;
      if (!v23)
      {
        goto LABEL_68;
      }

      ++v23;
      v24 += 8;
      v22 = v83 - 1;
    }

    while (v83 != 1);
    v15 = v25;

    v9 = v77;

    v12 = v78;
    v10 = v75;
    v8 = v76;
LABEL_7:
    v11 = v79 + 1;
    if (v79 + 1 != v8)
    {
      continue;
    }

    break;
  }

  v73 = v12;
LABEL_48:
  v43 = *(v74 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  v44 = sub_25214200C();
  v45 = v86[0];
  v81 = v86[2];
  v84 = v86[1];
  MEMORY[0x28223BE20](v44);
  v46 = sub_25214200C();
  v47 = v86[0];
  MEMORY[0x28223BE20](v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  sub_25214200C();
  v48 = *(v74 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_kernelLength);
  sub_25209EA3C(v15, v73, 2, v45, v84, v81, v47, v86[0], v86);
  v49 = v86[0];
  v50 = v86[3];

  v86[0] = MEMORY[0x277D84F90];
  if ((v73 & 0x8000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if (v73)
  {
    if (v73 <= *(v49 + 16))
    {
      if (v73 <= *(v50 + 16))
      {
        v51 = v50;
        v52 = 0;
        v53 = 0;
        v82 = v51 + 32;
        v85 = v49 + 32;
        v54 = (v15 + 40);
        v55 = 1.0;
        while (1)
        {
          v56 = *(v85 + 8 * v53);
          v57 = *(v82 + 8 * v53);
          v58 = v55 / sqrt(v57 * 3.14159265 * 0.125 + v55);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v59 = swift_initStackObject();
          *(v59 + 16) = xmmword_252143AC0;
          *(v59 + 32) = v56 * v58;
          v60 = sub_25209E75C(v59);
          swift_setDeallocating();
          if (!*(v60 + 16))
          {
            goto LABEL_80;
          }

          v61 = *(v60 + 32);

          if (v61 <= 0.99999)
          {
            v62 = v61;
          }

          else
          {
            v62 = 0.99999;
          }

          if (v61 >= 0.00001)
          {
            v63 = v62;
          }

          else
          {
            v63 = 0.00001;
          }

          v64 = log2(v63);
          v65 = log2(1.0 - v63);
          v66 = v57 + 1.08879305;
          v67 = exp(-(v56 * v56) / (v66 + v66));
          v68 = sqrt(v66);
          v69 = swift_initStackObject();
          *(v69 + 16) = xmmword_252143AD0;
          if (v73 + 1 == v53)
          {
            goto LABEL_81;
          }

          v70 = *(v15 + 16);
          if (v52 >= v70)
          {
            goto LABEL_82;
          }

          *(v69 + 32) = *(v54 - 1);
          if (v52 + 1 >= v70)
          {
            goto LABEL_83;
          }

          v71 = *v54;
          v54 += 2;
          *(v69 + 40) = v71;
          *(v69 + 48) = -(v63 * v64) - (1.0 - v63) * v65 + v67 * -1.04345246 / v68;
          ++v53;
          sub_2520806CC(v69);
          v52 += 2;
          v55 = 1.0;
          if (v73 == v53)
          {
            goto LABEL_64;
          }
        }
      }

LABEL_87:
      __break(1u);
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_64:

  result = v86[0];
LABEL_2:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252098B74(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](result);
  result = sub_2520AABEC(v2, sub_2520A33A4);
  if (v2 != *(result + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_252098C1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5 || a3 != a6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = MEMORY[0x28223BE20](*(result + 16));
  result = sub_2520AABEC(v8, v9);
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(result + 16) != a2 * a3)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_252098CE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    v6 = 0;
    v7 = result + 32;
    if (a3 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = a3;
    }

    v9 = v8 + 1;
    v10 = a3 & ~(a3 >> 63);
    v11 = MEMORY[0x277D84F90];
    while (v9 != v6)
    {
      if (v10 == v6)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = v6 * a3;
      if ((v6 * a3) >> 64 != (v6 * a3) >> 63)
      {
        goto LABEL_22;
      }

      v13 = __OFADD__(v12, v6);
      v14 = v12 + v6;
      if (v13)
      {
        goto LABEL_23;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v14 >= *(v5 + 16))
      {
        goto LABEL_25;
      }

      v15 = *(v7 + 8 * v14);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_252099194(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_252099194((v16 > 1), v17 + 1, 1, v11);
        v11 = result;
      }

      ++v6;
      *(v11 + 16) = v17 + 1;
      *(v11 + 8 * v17 + 32) = v15;
      if (a2 == v6)
      {
        return v11;
      }
    }

    return v11;
  }

  return result;
}

void sub_252098E44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_252098F14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB28, &qword_252143CD8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_252098FD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB88, &qword_252143D38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_2520990C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_252099194(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
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

char *sub_252099298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB50, &qword_252143D00);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25209939C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
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

void *sub_2520994A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBC0, &qword_252143D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2520995E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB28, &qword_252143CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2520996DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB88, &qword_252143D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252099804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB30, &qword_252143CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_25209992C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAF0, &qword_252143C98);
  v10 = *(type metadata accessor for ContinuationItem(0) - 8);
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
  v15 = *(type metadata accessor for ContinuationItem(0) - 8);
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

char *sub_252099B04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBB0, &qword_252143D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_252099C2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_252099D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAD8, &qword_252143C80);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_252099E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_252099F10(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB30, &qword_252143CE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_252099F94(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2520DE2A0(v2);
  }

  v3 = *(v2 + 16);
  v18[0] = v2 + 32;
  v18[1] = v3;
  result = sub_25214243C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 32);
      do
      {
        v11 = *(v2 + 32 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252141D3C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25209A24C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25209A0C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2520DE2B4(v2);
  }

  v3 = *(v2 + 2);
  v25[0] = (v2 + 32);
  v25[1] = v3;
  result = sub_25214243C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 2);
          if (v14 >= *(v12 - 5))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = *(v12 + 5);
          v18 = v12[48];
          v19 = *(v12 + 7);
          result = v12[64];
          v20 = *(v12 - 24);
          *v13 = *(v12 - 40);
          *(v12 + 2) = v20;
          *(v12 + 3) = *(v12 - 8);
          v21 = *(v12 + 1);
          *(v12 - 5) = v14;
          *(v12 - 4) = v15;
          *(v12 - 24) = v16;
          *(v12 - 2) = v17;
          *(v12 - 8) = v18;
          *v12 = v19;
          v12[8] = result;
          v12 -= 56;
          *(v13 + 6) = v21;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252141D3C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v23[0] = v7 + 32;
    v23[1] = v6;
    sub_25209A7A8(v23, v24, v25, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25209A24C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2520DE28C(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_25209ADB4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252099298(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_252099298((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_25209ADB4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t sub_25209A7A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v106 = *v105;
    if (!*v105)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2520DE28C(v8);
      v8 = result;
    }

    v97 = (v8 + 16);
    v98 = *(v8 + 16);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = (v8 + 16 * v98);
        v100 = *v99;
        v101 = &v97[2 * v98];
        v102 = v101[1];
        sub_25209AFA8((*a3 + 56 * *v99), (*a3 + 56 * *v101), *a3 + 56 * v102, v106);
        if (v5)
        {
        }

        if (v102 < v100)
        {
          goto LABEL_114;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_115;
        }

        *v99 = v100;
        v99[1] = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_116;
        }

        v98 = *v97 - 1;
        result = memmove(v101, v101 + 2, 16 * v103);
        *v97 = v98;
        if (v98 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v104 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 56 * v7);
      v11 = 56 * v9;
      v12 = (*a3 + 56 * v9);
      v14 = *v12;
      v13 = v12 + 7;
      v15 = v14;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v13;
        v18 = v13[7];
        v13 += 7;
        ++v16;
        if (v10 < v15 == v18 >= v17)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 56 * v7 - 56;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v33 + v11);
            v23 = *(v33 + v11 + 16);
            v24 = (v33 + v19);
            v25 = *(v22 + 3);
            v26 = *(v22 + 32);
            v27 = *(v22 + 5);
            v28 = *(v22 + 48);
            v29 = *v22;
            v31 = v24[1];
            v30 = v24[2];
            result = *(v24 + 6);
            v32 = *v24;
            *(v22 + 6) = result;
            v22[1] = v31;
            v22[2] = v30;
            *v22 = v32;
            *v24 = v29;
            *(v24 + 16) = v23;
            *(v24 + 3) = v25;
            *(v24 + 32) = v26;
            *(v24 + 5) = v27;
            *(v24 + 48) = v28;
          }

          ++v21;
          v19 -= 56;
          v11 += 56;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252099298(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 16);
    v49 = *(v8 + 24);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_252099298((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v51;
    v52 = v8 + 32;
    v53 = (v8 + 32 + 16 * v50);
    *v53 = v9;
    v53[1] = v7;
    v106 = *v105;
    if (!*v105)
    {
      goto LABEL_127;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v8 + 32);
          v56 = *(v8 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_57:
          if (v58)
          {
            goto LABEL_104;
          }

          v71 = (v8 + 16 * v51);
          v73 = *v71;
          v72 = v71[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_106;
          }

          v77 = (v52 + 16 * v54);
          v79 = *v77;
          v78 = v77[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_111;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v51 < 2)
        {
          goto LABEL_112;
        }

        v81 = (v8 + 16 * v51);
        v83 = *v81;
        v82 = v81[1];
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_72:
        if (v76)
        {
          goto LABEL_108;
        }

        v84 = (v52 + 16 * v54);
        v86 = *v84;
        v85 = v84[1];
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_110;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v92 = (v52 + 16 * (v54 - 1));
        v93 = *v92;
        v94 = (v52 + 16 * v54);
        v95 = v94[1];
        sub_25209AFA8((*a3 + 56 * *v92), (*a3 + 56 * *v94), *a3 + 56 * v95, v106);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_99;
        }

        if (v54 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *(v8 + 16);
        if (v54 >= v96)
        {
          goto LABEL_101;
        }

        v51 = v96 - 1;
        result = memmove((v52 + 16 * v54), v94 + 2, 16 * (v96 - 1 - v54));
        *(v8 + 16) = v96 - 1;
        if (v96 <= 2)
        {
          goto LABEL_3;
        }
      }

      v59 = v52 + 16 * v51;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_102;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_103;
      }

      v66 = (v8 + 16 * v51);
      v68 = *v66;
      v67 = v66[1];
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_105;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_107;
      }

      if (v70 >= v62)
      {
        v88 = (v52 + 16 * v54);
        v90 = *v88;
        v89 = v88[1];
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v104;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v34 = *a3;
  v35 = *a3 + 56 * v7 - 56;
  v36 = v9 - v7;
LABEL_30:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = v38 + 56;
    v40 = *(v38 + 56);
    if (v40 >= *v38)
    {
LABEL_29:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v34)
    {
      break;
    }

    v41 = *(v38 + 64);
    v42 = *(v38 + 72);
    v43 = *(v38 + 80);
    v44 = *(v38 + 88);
    v45 = *(v38 + 96);
    result = *(v38 + 104);
    v46 = *(v38 + 16);
    *v39 = *v38;
    *(v38 + 72) = v46;
    *(v38 + 88) = *(v38 + 32);
    v47 = *(v38 + 48);
    *v38 = v40;
    *(v38 + 8) = v41;
    *(v38 + 16) = v42;
    *(v38 + 24) = v43;
    *(v38 + 32) = v44;
    *(v38 + 40) = v45;
    *(v38 + 48) = result;
    v38 -= 56;
    *(v39 + 48) = v47;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t sub_25209ADB4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_25209AFA8(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    v12 = 7 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 7;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 7;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 7;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    v7[6] = v14[6];
    *(v7 + 1) = v17;
    *(v7 + 2) = v18;
    *v7 = v16;
    goto LABEL_9;
  }

  v19 = 7 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v20 = v6 - 7;
    v5 -= 56;
    v21 = v13;
    do
    {
      v22 = (v5 + 56);
      v23 = *(v21 - 56);
      v21 -= 56;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v27 = *v20;
          v28 = *(v6 - 5);
          v29 = *(v6 - 3);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v28;
          *(v5 + 32) = v29;
          *v5 = v27;
        }

        if (v13 <= v4 || (v6 -= 7, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v22 != v13)
      {
        v24 = *v21;
        v25 = *(v21 + 16);
        v26 = *(v21 + 32);
        *(v5 + 48) = *(v21 + 48);
        *(v5 + 16) = v25;
        *(v5 + 32) = v26;
        *v5 = v24;
      }

      v5 -= 56;
      v13 = v21;
    }

    while (v21 > v4);
    v13 = v21;
  }

LABEL_31:
  v30 = 7 * ((v13 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, v30 * 8);
  }

  return 1;
}

char *sub_25209B1F4(char *a1, int64_t a2, char a3)
{
  result = sub_25209BB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B214(char *a1, int64_t a2, char a3)
{
  result = sub_25209B3B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B234(char *a1, int64_t a2, char a3)
{
  result = sub_25209B4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B254(char *a1, int64_t a2, char a3)
{
  result = sub_25209B5B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B274(char *a1, int64_t a2, char a3)
{
  result = sub_25209B6CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B294(void *a1, int64_t a2, char a3)
{
  result = sub_25209B7DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B2B4(char *a1, int64_t a2, char a3)
{
  result = sub_25209B910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B2D4(void *a1, int64_t a2, char a3)
{
  result = sub_25209BE90(a1, a2, a3, *v3, &qword_27F4CDAF8, &qword_252143CA0, &qword_27F4CDB00, &qword_252143CA8);
  *v3 = result;
  return result;
}

char *sub_25209B314(char *a1, int64_t a2, char a3)
{
  result = sub_25209BA14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B334(void *a1, int64_t a2, char a3)
{
  result = sub_25209BC30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25209B354(char *a1, int64_t a2, char a3)
{
  result = sub_25209BD84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25209B374(void *a1, int64_t a2, char a3)
{
  result = sub_25209BE90(a1, a2, a3, *v3, &qword_27F4CDB08, &unk_252143CB0, &qword_27F4CE6E0, &qword_252144530);
  *v3 = result;
  return result;
}

char *sub_25209B3B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB58, &qword_252143D08);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25209B4BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB28, &qword_252143CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_25209B5B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC18, &qword_252143DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_25209B6CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC30, &qword_252143DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_25209B7DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBB8, &qword_252143D70);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25209B910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
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

char *sub_25209BA14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC08, &qword_252143DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25209BB2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
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

void *sub_25209BC30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB40, &qword_252143CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 248);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[31 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 248 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB48, &qword_252143CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25209BD84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAD8, &qword_252143C80);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25209BE90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_25209BFC4(double *a1, char a2, void *a3)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[4];
  v8 = a1[5];
  v9 = *a3;
  v10 = sub_25213E6C0(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2520A7768(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_25213E6C0(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2521424CC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_2520A6D14();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v7;
  *(v22[7] + 8 * v10) = v8;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v22[2] = v24;
    if (v4 != 1)
    {
      v6 = a1 + 7;
      v25 = 1;
      while (v25 < *(a1 + 2))
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v26 = *a3;
        v27 = sub_25213E6C0(v7);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_22;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_2520A7768(v31, 1);
          v32 = *a3;
          v27 = sub_25213E6C0(v7);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v16)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + 8 * v27) = v7;
        *(v34[7] + 8 * v27) = v8;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        ++v25;
        v34[2] = v36;
        v6 += 2;
        if (v4 == v25)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x8000000252148C50);
  sub_25214230C();
  MEMORY[0x253098DA0](39, 0xE100000000000000);
  sub_25214231C();
  __break(1u);
}

void *sub_25209C308(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25209C408(void *a1, void *a2, uint64_t *a3, double a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_25209C6D0(a1, a2, a3, MEMORY[0x277CB87E8], a4);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25209C468(uint64_t a1, void *a2, uint64_t *a3, double a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*(*a3 + 16) != v5)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8[0] = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  vDSP_vsdivD((v4 + 32), 1, v8, *a1, 1, v5);
  *a2 = *(v4 + 16);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_25209C510@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *result * a3;
  if ((*result * a3) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4 + a3;
  if (__OFADD__(v4, a3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(a2 + 16);
  if (v6 >= v4)
  {
    v8 = __OFSUB__(v6, v5);
    v7 = (v6 - v5) < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 == v8)
  {
    *a4 = a2;
    a4[1] = a2 + 32;
    a4[2] = v4;
    a4[3] = (2 * v5) | 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25209C578(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void, uint64_t), double a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  *v9 = a5;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = a4(v5 + 32, 1, v9, *a1, 1);
  *a2 = *(v5 + 16);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25209C628(uint64_t a1, void *a2, uint64_t *a3, double a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*(*a3 + 16) != v5)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8[0] = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  vDSP_svdivD(v8, (v4 + 32), 1, *a1, 1, v5);
  *a2 = *(v4 + 16);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25209C6D0(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, void, uint64_t), double a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  *v9 = a5;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = a4(v5 + 32, 1, v9, *a1, 1);
  *a2 = *(v5 + 16);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25209C780(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (*(*a3 + 16) == v4)
  {
    if (*a1)
    {
      vDSP_vnegD((v3 + 32), 1, *a1, 1, v4);
      *a2 = *(v3 + 16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25209C7EC(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (*(*a3 + 16) == v4)
  {
    if (*a1)
    {
      vDSP_vabsD((v3 + 32), 1, *a1, 1, v4);
      *a2 = *(v3 + 16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_25209C858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC38, &qword_252143DD8);
    v3 = sub_25214235C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25213E6C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209C938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC10, &qword_252143DB0);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25213E648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209CA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
    v3 = sub_25214235C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25213E6C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209CB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA0, &qword_252143D58);
    v3 = sub_25214235C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25213E6C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209CBF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB70, &qword_252143D20);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25213E648(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209CCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB38, &qword_252143CE8);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25213E648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25209CDF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB10, &qword_252143CC0);
  v3 = sub_25214235C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_25213E70C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_25213E70C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25209CF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB60, &qword_252143D10);
    v3 = sub_25214235C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2520A2D9C(v4, v13, &qword_27F4CDB68, &qword_252143D18);
      result = sub_25213E754(v13);
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
      result = sub_2520A1F80(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209D048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE0, &qword_252143C88);
    v3 = sub_25214235C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2520A2D9C(v4, &v13, &qword_27F4CDAE8, &qword_252143C90);
      v5 = v13;
      v6 = v14;
      result = sub_25213E648(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2520A1F80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25209D178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB18, &qword_252143CC8);
    v3 = sub_25214235C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25213E648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25209D27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (*(a2 + 16))
  {
    v7 = *(v5 + 8 * v4);
    v8 = *(a2 + 40);
    if (v7 != 0.0)
    {
      v9 = *(v5 + 8 * v4);
    }

    v10 = sub_25214254C();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      break;
    }

    ++v4;
    v13 = ~v11;
    while (*(*(a2 + 48) + 8 * v12) != v7)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_25209D424()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_25209D474()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_25209D56C()
{
  result = qword_27F4CDC50;
  if (!qword_27F4CDC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CDC50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25209D600(uint64_t a1)
{
  v4 = sub_2520AABEC(*(a1 + 16), sub_2520A2178);
  v1 = sub_2520AABEC(*(v4 + 16), sub_2520A25E4);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A2644);

  return v2;
}

uint64_t sub_25209D6D8(uint64_t a1)
{
  v4 = sub_2520AABEC(*(a1 + 16), sub_2520A3B60);
  v1 = sub_2520AABEC(*(v4 + 16), sub_2520A3374);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A3B48);

  return v2;
}

float sub_25209D7C8@<S0>(float *a1@<X8>)
{
  result = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__lastProgress);
  *a1 = result;
  return result;
}

__n128 sub_25209D818@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__stimulus;
  result = *v2;
  v4 = *(v2 + 16);
  *a1 = *v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25209DB4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25209DBDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = (a4 * a5) >> 64;
  if (result != -1)
  {
    v7 = result;
    if (v5 == -1)
    {
      if (v6 != (a4 * a5) >> 63)
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (!result)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v5 = a4 * a5 / result;
    }

LABEL_10:
    if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
    {
      v8 = a4 * a5;
      if (v6 == (a4 * a5) >> 63)
      {
        if (v7 * v5 == v8)
        {
          if (*(a3 + 16) == v8)
          {
            return a3;
          }

          __break(1u);
        }

        sub_25214222C();
        MEMORY[0x253098DA0](0xD000000000000021, 0x8000000252148CB0);
        v9 = sub_25214244C();
        MEMORY[0x253098DA0](v9);

        MEMORY[0x253098DA0](0xD000000000000016, 0x8000000252148CE0);
        v10 = sub_25214244C();
        MEMORY[0x253098DA0](v10);

        MEMORY[0x253098DA0](41, 0xE100000000000000);
        v12 = 0;
        v11 = 0xE000000000000000;
        sub_2520A2090();
        swift_allocError();
LABEL_17:
        *v13 = v12;
        v13[1] = v11;
        swift_willThrow();
        return a3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (a2 == -1)
  {
    v11 = 0x8000000252148D00;
    sub_2520A2090();
    swift_allocError();
    v12 = 0xD00000000000002ELL;
    goto LABEL_17;
  }

  if (v6 != (a4 * a5) >> 63)
  {
    goto LABEL_22;
  }

  if (a2)
  {
    v7 = a4 * a5 / a2;
    goto LABEL_10;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25209DDF4(int64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  if (a1 < 0)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v8 = sub_252141D3C();
    *(v8 + 16) = a1;
    if (((a4 | a3) & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v8 = MEMORY[0x277D84F90];
  if ((a4 | a3) < 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_4:
  vDSP_mtransD((a2 + 32), 1, (v8 + 32), 1, a4, a3);
  v9 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= a1)
  {
    *(v8 + 16) = v9;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_25209DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 1)
  {
    v11 = "x1 must have at least 1 column.";
LABEL_7:
    v7 = (v11 - 32) | 0x8000000000000000;
    sub_2520A2090();
    swift_allocError();
    v10 = 0xD00000000000001FLL;
    goto LABEL_8;
  }

  if (a6 < 1)
  {
    v11 = "x2 must have at least 1 column.";
    goto LABEL_7;
  }

  if (*(a7 + 16) < 2uLL)
  {
    v7 = 0x8000000252148E10;
    sub_2520A2090();
    swift_allocError();
    v10 = 0xD000000000000024;
LABEL_8:
    *v9 = v10;
    v9[1] = v7;
    swift_willThrow();
    return v7;
  }

  v112 = a7;
  v113 = a5;
  v117 = a6;
  v17 = sub_2520EEE44(0, a1, a2, a3);
  if (v8)
  {
    return v7;
  }

  v20 = sub_2520F0D68(v17, v18, v19, 2.0);
  v22 = v21;
  v24 = v23;

  v25 = sub_25209DBDC(-1, 1, v20, v22, v24);
  v110 = v26;
  v111 = v27;
  v28 = v25;

  v29 = sub_2520EEE44(0, a4, v113, v117);
  v32 = sub_2520F0D68(v29, v30, v31, 2.0);

  v33 = sub_2520EEE44(0, a1, a2, a3);
  v36 = sub_25209DBDC(-1, 1, v33, v34, v35);
  v108 = v38;
  v109 = v37;
  v39 = v36;

  v40 = sub_2520EEE44(0, a4, v113, v117);
  v107 = v40;
  v43 = sub_25209DBDC(-1, 1, v40, v41, v42);
  v45 = v44;
  v105 = v39;
  v106 = v46;
  v47 = v43;

  if ((v106 * v45) >> 64 != (v106 * v45) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  v107 = v106 * v45;
  sub_25209DDF4(v106 * v45, v47, v106, v45);
  v49 = v48;
  v104 = 0;

  if (*(v49 + 16) != v107)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_252112780(v105, v109, v108, v49, v106);
  v51 = v50;
  v108 = v53;
  v109 = v52;

  v106 = sub_2520F0F90(v28, v110, v111, v32);
  v107 = v54;
  v110 = v55;

  v111 = &v103;
  v56 = v108;
  v57 = v109;
  v114 = v51;
  v115 = v109;
  v116 = v108;
  v58 = (MEMORY[0x28223BE20])(*(v51 + 16));
  v59 = v104;
  v60 = sub_2520AABEC(v58, sub_2520A3B00);

  if ((v57 * v56) >> 64 != (v57 * v56) >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v111 = v59;
  if (*(v60 + 16) != v57 * v56)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v61 = sub_252098C1C(v106, v110, v107, v60, v57, v56);
  v63 = v62;
  v65 = v64;

  v66 = *(v112 + 32);
  v114 = v61;
  v115 = v63;
  v116 = v65;
  v67 = (MEMORY[0x28223BE20])(*(v61 + 16));
  v68 = v111;
  v69 = sub_2520AABEC(v67, sub_2520A3B00);
  v111 = v68;

  if ((v63 * v65) >> 64 != (v63 * v65) >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v70 = v69;
  v71 = *(v69 + 16);
  if (v71 != v63 * v65)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v110 = &v103;
  v114 = v70;
  v115 = v63;
  v116 = v65;
  MEMORY[0x28223BE20](result);
  v72 = v111;
  v73 = sub_2520AABEC(v71, sub_2520A24F8);
  v111 = v72;

  if (*(v73 + 16) != v71)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v109 = v63;
  v110 = &v103;
  v114 = v73;
  v115 = v63;
  v108 = v65;
  v116 = v65;
  MEMORY[0x28223BE20](result);
  v74 = v111;
  v7 = sub_2520AABEC(v71, sub_2520A3B00);

  if (*(v7 + 16) != v71)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v75 = *(v112 + 40);
  v76 = sub_2520EEE44(1, a1, a2, a3);
  if (v74)
  {

    return v7;
  }

  v79 = sub_25209DBDC(-1, 1, v76, v77, v78);
  v81 = v80;
  v83 = v82;
  v84 = v7;

  v85 = sub_2520EEE44(1, a4, v113, v117);
  v88 = sub_25209DBDC(-1, 1, v85, v86, v87);
  v90 = v89;
  v92 = v91;

  if ((v90 * v92) >> 64 != (v90 * v92) >> 63)
  {
    goto LABEL_35;
  }

  sub_25209DDF4(v90 * v92, v88, v90, v92);
  v94 = v93;

  if (*(v94 + 16) != v90 * v92)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_252112780(v79, v81, v83, v94, v90);
  v96 = v95;
  v98 = v97;
  v100 = v99;

  v114 = v96;
  v115 = v98;
  v116 = v100;
  MEMORY[0x28223BE20](*(v96 + 16));
  v102 = sub_2520AABEC(v101, sub_2520A3B30);

  if ((v98 * v100) >> 64 != (v98 * v100) >> 63)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (*(v102 + 16) == v98 * v100)
  {
    v7 = sub_252098C1C(v84, v109, v108, v102, v98, v100);

    return v7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25209E75C(uint64_t a1)
{
  v5 = sub_2520AABEC(*(a1 + 16), sub_2520A224C);
  v1 = sub_2520AABEC(*(v5 + 16), sub_2520A332C);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A3B18);

  v3 = sub_2520AABEC(*(v2 + 16), sub_2520A3AE8);

  return v3;
}

uint64_t sub_25209E868(uint64_t a1)
{
  v1 = sub_25209E75C(a1);
  v11 = sub_2520AABEC(*(v1 + 16), sub_2520A3718);
  sub_2520AABEC(*(v11 + 16), sub_2520A3B18);

  v2 = sub_2520AABEC(*(v1 + 16), sub_2520A338C);

  v3 = *(v2 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25209B1F4(0, v3, 0);
    v4 = v12;
    v5 = *(v12 + 16);
    v6 = 32;
    do
    {
      if (*(v2 + v6) >= 0.00001)
      {
        v7 = *(v2 + v6);
      }

      else
      {
        v7 = 0.00001;
      }

      v8 = *(v12 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25209B1F4((v8 > 1), v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      *(v12 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v9 = sub_2520805A0(v4);

  return v9;
}

void sub_25209EA3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v201 = *MEMORY[0x277D85DE8];
  if (a2 < 1 || a3 < 1)
  {
    v11 = 0x8000000252148D30;
    sub_2520A2090();
    swift_allocError();
    v13 = 0xD000000000000019;
    goto LABEL_12;
  }

  if (a5 < 1 || a6 < 1)
  {
    v14 = "x must not be empty.";
LABEL_11:
    v11 = (v14 - 32) | 0x8000000000000000;
    sub_2520A2090();
    swift_allocError();
    v13 = 0xD000000000000014;
    goto LABEL_12;
  }

  v10 = *(a7 + 16);
  if (!v10)
  {
    v14 = "t must not be empty.";
    goto LABEL_11;
  }

  if (*(a8 + 16) < 2uLL)
  {
    v11 = 0x8000000252148E10;
    sub_2520A2090();
    swift_allocError();
    v13 = 0xD000000000000024;
LABEL_12:
    *v12 = v13;
    v12[1] = v11;
    swift_willThrow();
LABEL_13:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v187 = a9;
  v188 = a7;
  v193 = a1;
  v194 = a2;
  v195 = a3;
  v20 = sub_252141D3C();
  *(v20 + 16) = a5;
  memset_pattern16((v20 + 32), &unk_252143B30, 8 * a5);
  v21 = sub_2520805A0(v20);
  v191 = v23;
  v192 = v22;

  v189 = a4;
  v190 = a6;
  v196 = a8;
  v197 = a5;
  v24 = sub_25209DEBC(a4, a5, a6, a4, a5, a6, a8);
  if (v9)
  {
LABEL_15:

    goto LABEL_13;
  }

  v27 = v24;
  v28 = v25;
  v29 = v26;
  v185 = 8 * a5;
  v30 = &v177;
  v31 = v191;
  v32 = v192;
  *&__C = v21;
  v199 = v192;
  v200 = v191;
  MEMORY[0x28223BE20](*(v21 + 16));
  v34 = sub_2520AABEC(v33, sub_2520A3B00);
  v186 = 0;

  if ((v32 * v31) >> 64 != (v32 * v31) >> 63)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (*(v34 + 16) != v32 * v31)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v35 = sub_252098C1C(v27, v28, v29, v34, v32, v31);
  v37 = v36;
  v39 = v38;

  v40 = v186;
  v41 = sub_25209DEBC(v189, v197, v190, v193, v194, v195, v196);
  if (v40)
  {
    goto LABEL_15;
  }

  v44 = v197;
  if (v10 != v197)
  {

    v101 = 0x8000000252148D90;
    sub_2520A2090();
    swift_allocError();
    v103 = 0xD00000000000002ALL;
LABEL_29:
    *v102 = v103;
    v102[1] = v101;
    swift_willThrow();
    goto LABEL_15;
  }

  if (v37 != v197)
  {

    v101 = 0x8000000252148DC0;
    sub_2520A2090();
    swift_allocError();
    v103 = 0xD00000000000002CLL;
    goto LABEL_29;
  }

  if (v39 <= 0)
  {

    v101 = 0x8000000252148DF0;
    sub_2520A2090();
    swift_allocError();
    v103 = 0xD000000000000016;
    goto LABEL_29;
  }

  v177 = v43;
  v178 = v42;
  v179 = v41;
  v45 = sub_252141D3C();
  *(v45 + 16) = v44;
  v46 = v185;
  bzero((v45 + 32), v185);
  v47 = sub_252141D3C();
  *(v47 + 16) = v44;
  memset_pattern16((v47 + 32), &unk_252143B30, v46);
  v182 = sub_2520805A0(v47);
  v181 = v48;
  v180 = v49;

  v50 = 16;
  v191 = v39;
  v192 = v35;
  while (1)
  {
    v51 = v50 - 1;
    if (!v51)
    {
      break;
    }

    v190 = v51;
    v52 = sub_25209E868(v45);
    v54 = v53;
    v56 = v55;
    sub_252112780(v52, v53, v55, v35, v39);
    v60 = sub_252098C1C(v182, v181, v180, v57, v58, v59);
    v62 = v61;
    v64 = v63;

    v65 = sub_2520F0B6C(v60, v62, v64);
    v67 = v66;

    v68 = sub_25209E75C(v45);
    v183 = *(v68 + 16);

    sub_252112780(v52, v54, v56, v45, 1);
    v70 = v69;
    v189 = v71;
    v186 = v72;

    v73 = v197;
    sub_252112780(v192, v197, v191, v65, v67);
    v75 = v74;
    v184 = v77;
    v185 = v76;

    v78 = sub_252098C1C(v188, v73, 1, v68, v183, 1);
    v80 = v79;
    v82 = v81;

    v83 = sub_252098C1C(v78, v80, v82, v70, v189, v186);
    v85 = v84;

    sub_252112780(v75, v185, v184, v83, v85);
    v87 = v86;
    v89 = v88;
    v91 = v90;

    v92 = sub_252098C1C(v87, v89, v91, v45, *(v45 + 16), 1);
    v94 = v93;
    v96 = v95;

    *&__C = v92;
    v199 = v94;
    v200 = v96;
    MEMORY[0x28223BE20](*(v92 + 16));
    v98 = sub_2520AABEC(v97, sub_2520A2268);

    v99 = *(v98 + 16);
    __C = NAN;
    vDSP_maxvD((v98 + 32), 1, &__C, v99);
    v100 = __C;

    v45 = v87;
    v39 = v191;
    v35 = v192;
    v50 = v190;
    if (v100 <= 0.000000001)
    {
      goto LABEL_32;
    }
  }

  v87 = v45;
LABEL_32:

  v104 = sub_25209E868(v87);
  v107 = sub_2520F0B6C(v104, v105, v106);
  v109 = v108;
  v111 = v110;

  v112 = sub_252098C1C(v107, v109, v111, v35, v197, v39);
  v114 = v113;
  v116 = v115;

  v117 = sub_2520F0B6C(v112, v114, v116);
  v119 = v118;
  v121 = v120;
  v122 = v117;

  v123 = v178 * v177;
  if ((v178 * v177) >> 64 != (v178 * v177) >> 63)
  {
    goto LABEL_63;
  }

  v124 = v179;

  sub_25209DDF4(v123, v124, v178, v177);
  v126 = v125;

  if (*(v126 + 16) != v123)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v127 = sub_25209E75C(v87);

  v128 = sub_252098B74(v188, v127);

  v129 = v177;
  v130 = v178;
  sub_252112780(v126, v177, v178, v128, 1);
  v28 = v131;
  v197 = v132;
  v192 = v133;

  v134 = v179;
  sub_252112780(v122, v121, v119, v179, v129);
  v136 = v135;
  v138 = v137;
  v140 = v139;

  v141 = sub_252098C1C(v136, v138, v140, v134, v130, v129);
  v143 = v142;
  v145 = v144;

  if (v145 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v145)
  {
    v146 = sub_252141D3C();
    *(v146 + 16) = v145;
    if ((v143 & 0x8000000000000000) != 0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v32 = v146;
    v147 = (v141 + 32);
    v148 = (v146 + 32);
    v149 = v145;
    do
    {
      vDSP_sveD(v147++, v145, v148++, v143);
      --v149;
    }

    while (v149);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  *(v32 + 16) = v145;

  v150 = *(v196 + 32);
  v34 = 0;
  v151 = sub_2520EEE44(1, v193, v194, v195);
  sub_25209DBDC(-1, 1, v151, v152, v153);
  v30 = v154;
  v27 = v155;

  v10 = v30 * v30;
  if ((v30 * v30) >> 64 != (v30 * v30) >> 63)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v10 < 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v10)
  {
    v156 = sub_252141D3C();
    *(v156 + 16) = v10;
    goto LABEL_50;
  }

LABEL_49:
  v156 = MEMORY[0x277D84F90];
LABEL_50:
  if (v30 > 0x7FFFFFFF)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v30 < 0xFFFFFFFF80000000 || v27 < 0xFFFFFFFF80000000)
  {
    goto LABEL_70;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  cblas_dgemm_NEWLAPACK();
  *(v156 + 16) = v10;

  if (v30 < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v30)
  {
    v157 = 0;
    v158 = *(v196 + 40) * *(v196 + 40);
    while (1)
    {
      v159 = v157 * v30;
      if ((v157 * v30) >> 64 != (v157 * v30) >> 63)
      {
        break;
      }

      ++v157;
      __C = v158;
      vDSP_vsaddD((v156 + 32 + 8 * v159), 1, &__C, (v156 + 32 + 8 * v159), 1, v30);
      if (v30 == v157)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_59:
  v160 = sub_252098CE4(v156, v30, v30);

  *&__C = v160;
  MEMORY[0x28223BE20](*(v160 + 16));
  v162 = sub_2520AABEC(v161, sub_2520A2284);
  v163 = *(v160 + 16);

  if (v163 == *(v162 + 16))
  {
    v164 = sub_25209DBDC(-1, 1, v162, 1, v163);
    if (!v34)
    {
      v167 = v164;
      v168 = v165;
      v169 = v166;

      v170 = sub_252098C1C(v167, v168, v169, v32, *(v32 + 16), 1);
      v172 = v171;
      v174 = v173;

      v175 = v187;
      v176 = v197;
      *v187 = v28;
      v175[1] = v176;
      v175[2] = v192;
      v175[3] = v170;
      v175[4] = v172;
      v175[5] = v174;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_73:
  __break(1u);
}

uint64_t sub_25209F7E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, void *a11, unint64_t a12, uint64_t a13)
{
  v15 = v14;
  v16 = v13;
  v184 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if ((a2 + 0x4000000000000000) < 0)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v22 = 2 * a2;
  if (((2 * a2) & 0x8000000000000000) != 0)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  if (v22)
  {
    v23 = sub_252141D3C();
    *(v23 + 16) = v22;
    v157 = (v23 + 16);
    v159 = v23;
    bzero((v23 + 32), 16 * a2);
  }

  else
  {
    v159 = MEMORY[0x277D84F90];
    v157 = (MEMORY[0x277D84F90] + 16);
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_224;
  }

  if (a2)
  {
    v24 = 0;
    v165 = 0;
    v164 = a7 + 32;
    v25 = a10;
    v156 = v159 + 4;
    v163 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel;
    v162 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel;
    v161 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
    v175 = v16;
    v160 = a8;
    v166 = a7;
    v170 = a3;
    v158 = a2;
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_199;
      }

      if (a3 < 1)
      {
        goto LABEL_200;
      }

      v28 = v24 * a3;
      if ((v24 * a3) >> 64 != (v24 * a3) >> 63)
      {
        goto LABEL_201;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_202;
      }

      if (v28 >= *(a1 + 16))
      {
        goto LABEL_203;
      }

      v29 = *(a1 + 32 + 8 * v28);
      v178 = v24;
      v30 = sub_2520F0530(v24, a7, a8, v25);
      if (v15)
      {

        goto LABEL_190;
      }

      v179 = v27;
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = 0;
        while (*(v30 + 32 + 8 * v32) <= 0.5)
        {
          if (v31 == ++v32)
          {
            goto LABEL_21;
          }
        }

        if (!v32)
        {
          v33 = v30;
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v34 = sub_25214198C();
          __swift_project_value_buffer(v34, qword_27F4CDE68);
          v35 = sub_25214196C();
          v36 = sub_252141FBC();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            __C = v38;
            *v37 = 136446210;
            v39 = sub_2521425DC();
            v41 = sub_2520A5448(v39, v40, &__C);
            a8 = v160;

            *(v37 + 4) = v41;
            v15 = 0;
            _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] getBoundedPoints using idx 1", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x253099FD0](v38, -1, -1);
            v42 = v37;
            v16 = v175;
            MEMORY[0x253099FD0](v42, -1, -1);
          }

          v32 = 1;
          v30 = v33;
          a7 = v166;
        }
      }

      else
      {
LABEL_21:
        v32 = 1;
      }

      v43 = *(v30 + 16);

      if (v32 >= v43)
      {
        a3 = v170;
        v25 = a10;
        v26 = v179;
        if (v179 == a2)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v178 > a8 || v32 >= a10)
      {
        goto LABEL_205;
      }

      v45 = v178 * a10;
      if ((v178 * a10) >> 64 != (v178 * a10) >> 63)
      {
        goto LABEL_206;
      }

      v46 = v45 + v32;
      if (__OFADD__(v45, v32))
      {
        goto LABEL_207;
      }

      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_208;
      }

      v47 = *(a7 + 16);
      if (v46 >= v47)
      {
        goto LABEL_209;
      }

      v48 = v32 - 1;
      v49 = __OFADD__(v45, v32 - 1);
      v50 = v45 + v32 - 1;
      if (v49)
      {
        goto LABEL_210;
      }

      if ((v50 & 0x8000000000000000) != 0)
      {
        goto LABEL_211;
      }

      if (v50 >= v47)
      {
        goto LABEL_212;
      }

      if (v178 > a5 || v32 >= a6)
      {
        goto LABEL_213;
      }

      v51 = v178 * a6;
      if ((v178 * a6) >> 64 != (v178 * a6) >> 63)
      {
        goto LABEL_214;
      }

      v52 = v51 + v32;
      if (__OFADD__(v51, v32))
      {
        goto LABEL_215;
      }

      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_216;
      }

      v53 = *(a4 + 16);
      if (v52 >= v53)
      {
        goto LABEL_217;
      }

      v49 = __OFADD__(v51, v48);
      v54 = v51 + v48;
      if (v49)
      {
        goto LABEL_218;
      }

      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_219;
      }

      if (v54 >= v53)
      {
        goto LABEL_220;
      }

      v55 = *(a4 + 32 + 8 * v54) + (0.5 - *(v164 + 8 * v50)) / (*(v164 + 8 * v46) - *(v164 + 8 * v50)) * (*(a4 + 32 + 8 * v52) - *(a4 + 32 + 8 * v54));
      if (v55 <= *(v16 + v163))
      {
        v55 = *(v16 + v163);
      }

      if (*(v16 + v162) >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = *(v16 + v162);
      }

      v57 = *(v16 + v161);
      MEMORY[0x28223BE20](v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
      sub_25214200C();
      v58 = sub_2520EEE44(0, __C, v182, v183);

      v59 = *(v58 + 16);
      if (v59)
      {
        v60 = 0;
        v61 = v29 * -0.07256762 + 2.530248;
        v62 = v29 - v61;
        v63 = v29 + v61;
        v64 = MEMORY[0x277D84F90];
        do
        {
          v67 = *(v58 + 32 + 8 * v60);
          if (v62 <= v67 && v67 <= v63)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            __C = v64;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25209B2B4(0, v64[2] + 1, 1);
              v64 = __C;
            }

            v66 = v64[2];
            v65 = v64[3];
            if (v66 >= v65 >> 1)
            {
              sub_25209B2B4((v65 > 1), v66 + 1, 1);
              v64 = __C;
            }

            v64[2] = v66 + 1;
            v64[v66 + 4] = v60;
          }

          ++v60;
        }

        while (v59 != v60);
      }

      else
      {
        v64 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v70);
      sub_25214200C();
      v71 = sub_2520EEE44(1, __C, v182, v183);

      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = 0;
        v74 = MEMORY[0x277D84F90];
        do
        {
          v77 = *(v71 + 32 + 8 * v73);
          if (v56 - a9 <= v77 && v77 <= v56 + a9)
          {
            v79 = swift_isUniquelyReferenced_nonNull_native();
            __C = v74;
            if ((v79 & 1) == 0)
            {
              sub_25209B2B4(0, v74[2] + 1, 1);
              v74 = __C;
            }

            v76 = v74[2];
            v75 = v74[3];
            if (v76 >= v75 >> 1)
            {
              sub_25209B2B4((v75 > 1), v76 + 1, 1);
              v74 = __C;
            }

            v74[2] = v76 + 1;
            v74[v76 + 4] = v73;
          }

          ++v73;
        }

        while (v72 != v73);
      }

      else
      {
        v74 = MEMORY[0x277D84F90];
      }

      v80 = v64[2];
      if (v80)
      {
        v81 = 0;
        v82 = MEMORY[0x277D84F90];
        do
        {
          v85 = v64[v81 + 4];
          v86 = v74[2];
          v87 = 4;
          while (v86)
          {
            v88 = v74[v87++];
            --v86;
            if (v88 == v85)
            {
              v89 = swift_isUniquelyReferenced_nonNull_native();
              __C = v82;
              if ((v89 & 1) == 0)
              {
                sub_25209B2B4(0, v82[2] + 1, 1);
                v82 = __C;
              }

              v84 = v82[2];
              v83 = v82[3];
              if (v84 >= v83 >> 1)
              {
                sub_25209B2B4((v83 > 1), v84 + 1, 1);
                v82 = __C;
              }

              v82[2] = v84 + 1;
              v82[v84 + 4] = v85;
              break;
            }
          }

          ++v81;
        }

        while (v81 != v80);
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v90);
      sub_25214200C();
      sub_2520F01BC(v82, __C, v182, v183);
      v92 = v91;

      MEMORY[0x28223BE20](v93);
      sub_25214200C();
      v94 = sub_2520F01BC(v82, __C, v182, v183);

      v95 = sub_2520F01BC(v82, a11, a12, a13);

      v96 = *(v94 + 16);
      if (v96)
      {

        v97 = 32;
        v98 = MEMORY[0x277D84F90];
        do
        {
          if (*(v94 + v97) == 1.0)
          {
            v101 = swift_isUniquelyReferenced_nonNull_native();
            __C = v98;
            if ((v101 & 1) == 0)
            {
              sub_25209B1F4(0, v98[2] + 1, 1);
              v98 = __C;
            }

            v100 = v98[2];
            v99 = v98[3];
            if (v100 >= v99 >> 1)
            {
              sub_25209B1F4((v99 > 1), v100 + 1, 1);
              v98 = __C;
            }

            v98[2] = v100 + 1;
            v98[v100 + 4] = 0x3FF0000000000000;
          }

          v97 += 8;
          --v96;
        }

        while (v96);
      }

      else
      {
        v98 = MEMORY[0x277D84F90];
      }

      v172 = v98[2];

      v102 = *(v94 + 16);
      if (v102)
      {
        v103 = (v94 + 32);
        v104 = MEMORY[0x277D84F90];
        do
        {
          v107 = *v103;
          if (*v103 == 0.0)
          {
            v108 = swift_isUniquelyReferenced_nonNull_native();
            __C = v104;
            if ((v108 & 1) == 0)
            {
              sub_25209B1F4(0, v104[2] + 1, 1);
              v104 = __C;
            }

            v106 = v104[2];
            v105 = v104[3];
            if (v106 >= v105 >> 1)
            {
              sub_25209B1F4((v105 > 1), v106 + 1, 1);
              v104 = __C;
            }

            v104[2] = v106 + 1;
            *&v104[v106 + 4] = v107;
          }

          ++v103;
          --v102;
        }

        while (v102);
      }

      else
      {
        v104 = MEMORY[0x277D84F90];
      }

      v109 = v104[2];

      if (v92)
      {
        v110 = *(v95 + 16);
        *&__C = NAN;
        vDSP_sveD((v95 + 32), 1, &__C, v110);
        v111 = *&__C;

        a2 = v158;
        a8 = v160;
        v26 = v179;
        if (v111 > 0.0)
        {
          v25 = a10;
          if (v178 + 0x4000000000000000 < 0)
          {
            goto LABEL_227;
          }

          v112 = 2 * v178;
          if (2 * v178 < 0)
          {
            goto LABEL_228;
          }

          v113 = *v157;
          if (v112 >= *v157)
          {
            goto LABEL_229;
          }

          *&v156[2 * v178] = v29;
          v114 = v112 | 1;
          if (v114 >= v113)
          {
            goto LABEL_230;
          }

          v15 = 0;
          *&v156[v114] = v56;
          if (v179 == v158)
          {
            break;
          }

          v165 = 1;
          v16 = v175;
          a7 = v166;
          goto LABEL_132;
        }

        v15 = 0;
        v25 = a10;
        if (v92 < 4)
        {
          v16 = v175;
          a7 = v166;
        }

        else
        {
          v16 = v175;
          a7 = v166;
          if (v172 && v109)
          {
            if (v179 == v158)
            {
              break;
            }

            v165 = 0;
LABEL_132:
            a3 = v170;
            goto LABEL_10;
          }
        }

        a3 = v170;
        if (v179 == v158)
        {
          break;
        }
      }

      else
      {

        a2 = v158;
        a8 = v160;
        v26 = v179;
        if (v165)
        {
          v25 = a10;
          a7 = v166;
          a3 = v170;
          if (v178 + 0x4000000000000000 < 0)
          {
            goto LABEL_232;
          }

          v115 = 2 * v178;
          if (2 * v178 < 0)
          {
            goto LABEL_233;
          }

          v116 = *v157;
          if (v115 >= *v157)
          {
            goto LABEL_234;
          }

          *&v156[2 * v178] = v29;
          v117 = v115 | 1;
          if (v117 >= v116)
          {
            goto LABEL_235;
          }

          v15 = 0;
          *&v156[v117] = v56;
          if (v179 == v158)
          {
            break;
          }

          v165 = 1;
          v16 = v175;
        }

        else
        {
          v15 = 0;
          a7 = v166;
          a3 = v170;
          v25 = a10;
          if (v179 == v158)
          {
            break;
          }

          v165 = 0;
          v16 = v175;
        }
      }

LABEL_10:
      v24 = v26;
      if (v26 >= a2)
      {
        goto LABEL_204;
      }
    }
  }

  a3 = v159;
  v118 = sub_2520EFDE8(0, v159, a2, 2);
  v120 = v119;
  v122 = v121;

  if (!v15)
  {
    v180 = v118;
    if ((v120 & 0x8000000000000000) != 0)
    {
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    v123 = 0;
    v124 = 0;
    v177 = v118 + 32;
    v173 = MEMORY[0x277D84F90];
    v174 = (MEMORY[0x277D84F90] + 32);
    v176 = v118 + 24;
LABEL_143:
    if (v124 == v120)
    {
LABEL_183:

      a3 = v173;
      v151 = v173[3];
      if (v151 >= 2)
      {
        v152 = v151 >> 1;
        v49 = __OFSUB__(v152, v123);
        v153 = v152 - v123;
        if (v49)
        {
          goto LABEL_239;
        }

        v173[2] = v153;
      }

      if ((v120 + 0x4000000000000000) >= 0)
      {
        if (v173[2] == 2 * v120)
        {
          goto LABEL_190;
        }

        goto LABEL_238;
      }

LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
    }

    if (v124 >= v120)
    {
LABEL_191:
      __break(1u);
    }

    else
    {
      v127 = v124 + 1;
      if (!__OFADD__(v124, 1))
      {
        v128 = v124 * v122;
        if ((v124 * v122) >> 64 == (v124 * v122) >> 63)
        {
          v129 = v128 + v122;
          if (!__OFADD__(v128, v122))
          {
            if (v129 >= v128)
            {
              if ((v128 & 0x8000000000000000) == 0)
              {
                v130 = *(v180 + 16);
                if (v130 >= v128 && v130 >= v129)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                  v131 = swift_allocObject();
                  *(v131 + 16) = xmmword_252143AB0;
                  if (v128 < v129)
                  {
                    v126 = v131;
                    *(v131 + 32) = *(v177 + 8 * v128);
                    *(v131 + 40) = *(v176 + 8 * v129);

                    if (!*(v126 + 16))
                    {
                      do
                      {
                        if (v120 == v127)
                        {
                          goto LABEL_183;
                        }

                        if (v127 >= v120)
                        {
                          goto LABEL_191;
                        }

                        v132 = v127 + 1;
                        if (__OFADD__(v127, 1))
                        {
                          goto LABEL_192;
                        }

                        v133 = v127 * v122;
                        if ((v127 * v122) >> 64 != (v127 * v122) >> 63)
                        {
                          goto LABEL_193;
                        }

                        v134 = v133 + v122;
                        if (__OFADD__(v133, v122))
                        {
                          goto LABEL_194;
                        }

                        if (v134 < v133)
                        {
                          goto LABEL_195;
                        }

                        if ((v133 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_196;
                        }

                        v135 = *(v180 + 16);
                        if (v135 < v133 || v135 < v134)
                        {
                          goto LABEL_197;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                        v136 = swift_allocObject();
                        *(v136 + 16) = xmmword_252143AB0;
                        if (v133 >= v134)
                        {
                          goto LABEL_198;
                        }

                        v126 = v136;
                        *(v136 + 32) = *(v177 + 8 * v133);
                        *(v136 + 40) = *(v176 + 8 * v134);

                        ++v127;
                      }

                      while (!*(v126 + 16));
                      v127 = v132;
                    }

                    v137 = 0;
                    v138 = v126;
                    v124 = v127;
                    while (1)
                    {
                      v139 = *(v126 + 8 * v137 + 32);
                      if (!v123)
                      {
                        v140 = v173[3];
                        if (((v140 >> 1) + 0x4000000000000000) < 0)
                        {
                          goto LABEL_231;
                        }

                        v141 = v140 & 0xFFFFFFFFFFFFFFFELL;
                        if (v141 <= 1)
                        {
                          v142 = 1;
                        }

                        else
                        {
                          v142 = v141;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                        v143 = swift_allocObject();
                        v144 = _swift_stdlib_malloc_size(v143);
                        v145 = v144 - 32;
                        if (v144 < 32)
                        {
                          v145 = v144 - 25;
                        }

                        v146 = v145 >> 3;
                        v143[2] = v142;
                        v143[3] = 2 * (v145 >> 3);
                        v147 = (v143 + 4);
                        v148 = v173[3] >> 1;
                        if (v173[2])
                        {
                          v149 = v173 + 4;
                          if (v143 != v173 || v147 >= v149 + 8 * v148)
                          {
                            v150 = v145 >> 3;
                            memmove(v143 + 4, v149, 8 * v148);
                            v146 = v150;
                          }

                          v173[2] = 0;
                        }

                        v174 = (v147 + 8 * v148);
                        v123 = (v146 & 0x7FFFFFFFFFFFFFFFLL) - v148;

                        v173 = v143;
                      }

                      v49 = __OFSUB__(v123--, 1);
                      if (v49)
                      {
                        goto LABEL_226;
                      }

                      ++v137;
                      *v174++ = v139;
                      if (!v138)
                      {
                        goto LABEL_143;
                      }

                      v125 = *(v138 + 16);
                      if (v137 == v125)
                      {
                        goto LABEL_143;
                      }

                      v126 = v138;
                      if (v137 >= v125)
                      {
                        goto LABEL_225;
                      }
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
                goto LABEL_221;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

LABEL_193:
        __break(1u);
        goto LABEL_194;
      }
    }

LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

LABEL_190:
  v154 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_2520A0A6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253099040](v2, MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25213EA8C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

float sub_2520A0AE0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__lastProgress) = result;
  return result;
}

uint64_t sub_2520A0AF8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *&a1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520A34A4;
  *(v9 + 24) = v8;
  v47[4] = sub_2520A3768;
  v47[5] = v9;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 1107296256;
  v47[2] = sub_252083924;
  v47[3] = &block_descriptor_1283;
  v10 = _Block_copy(v47);

  v11 = a1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    return result;
  }

  v13 = v46;
  v14 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v15 = swift_beginAccess();
  if (v11[v14] == 1)
  {
    HTAudiometry.resultSamples.getter(v47);
    v16 = v47[0];
    HTAudiometry.resultSamples.getter(v46);
    v17 = BYTE8(v46[0]);

    sub_252086B9C();
    *(&v45[12] + 7) = v41;
    *(&v45[13] + 7) = v42;
    *(&v45[14] + 7) = v43;
    *(&v45[15] + 7) = v44;
    *(&v45[8] + 7) = v37;
    *(&v45[9] + 7) = v38;
    *(&v45[10] + 7) = v39;
    *(&v45[11] + 7) = v40;
    *(&v45[4] + 7) = v33;
    *(&v45[5] + 7) = v34;
    *(&v45[6] + 7) = v35;
    *(&v45[7] + 7) = v36;
    *(v45 + 7) = v29;
    *(&v45[1] + 7) = v30;
    *(&v45[2] + 7) = v31;
    *(&v45[3] + 7) = v32;
    *(&v46[13] + 1) = v45[12];
    *(&v46[14] + 1) = v45[13];
    *(&v46[15] + 1) = v45[14];
    v46[16] = *(&v45[14] + 15);
    *(&v46[9] + 1) = v45[8];
    *(&v46[10] + 1) = v45[9];
    *(&v46[11] + 1) = v45[10];
    *(&v46[12] + 1) = v45[11];
    *(&v46[5] + 1) = v45[4];
    *(&v46[6] + 1) = v45[5];
    *(&v46[7] + 1) = v45[6];
    *(&v46[8] + 1) = v45[7];
    *(&v46[1] + 1) = v45[0];
    *(&v46[2] + 1) = v45[1];
    *(&v46[3] + 1) = v45[2];
    *&v46[0] = 0;
    *(&v46[0] + 1) = v16;
    LOBYTE(v46[1]) = v17;
    *(&v46[4] + 1) = v45[3];
    sub_25209D844(v46);
    memcpy(v28, v46, sizeof(v28));
    (a2)(v28);
    memcpy(v47, v28, 0x110uLL);
    sub_25209D858(v47);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
    result = sub_25214200C();
    v18 = v47[2];
    if (LOBYTE(v47[2]) == 2)
    {
      v19 = swift_allocObject();
      v19[2] = v11;
      v19[3] = sub_2520A2FB8;
      v19[4] = v6;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2520A34A4;
      *(a2 + 24) = v19;
      v47[4] = sub_2520A3768;
      v47[5] = a2;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 1107296256;
      v47[2] = sub_252083924;
      v47[3] = &block_descriptor_1295;
      v20 = _Block_copy(v47);
      v13 = v47[5];
      swift_retain_n();
      v21 = v11;

      dispatch_sync(v7, v20);

      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v23 = v47[3];
    v24 = v13[17];
    v25 = 1.0;
    if ((v11[v14] & 1) == 0)
    {
      MEMORY[0x28223BE20](result);
      v27 = v26;
      sub_25214200C();
      v24 = v27;
      v25 = *v47;
    }

    v13[17] = v24;
    LOBYTE(v47[2]) = v18 & 1;
    v47[3] = v23;
    *&v47[4] = v25;
    sub_25209D834(v47);
    memcpy(v46, v47, sizeof(v46));
    (a2)(v46);
  }
}

uint64_t sub_2520A10E0(char *a1, void (*a2)(__int128 *), uint64_t a3)
{
  v6 = swift_allocObject();
  v28 = a2;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *&a1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520A34B8;
  *(v9 + 24) = v8;
  *&v63 = sub_2520A3768;
  *(&v63 + 1) = v9;
  *&v61 = MEMORY[0x277D85DD0];
  *(&v61 + 1) = 1107296256;
  *&v62 = sub_252083924;
  *(&v62 + 1) = &block_descriptor_1317;
  v10 = _Block_copy(&v61);

  v11 = a1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    return result;
  }

  v13 = v60;
  v14 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v15 = swift_beginAccess();
  if (v11[v14] == 1)
  {
    HTAudiometry.resultSamples.getter(&v43);
    v16 = v43;
    v17 = v44;
    sub_2520883BC();
    *&v59[167] = v55;
    *&v59[183] = v56;
    *&v59[199] = v57;
    *&v59[215] = v58;
    *&v59[103] = v51;
    *&v59[119] = v52;
    *&v59[135] = v53;
    *&v59[151] = v54;
    *&v59[39] = v47;
    *&v59[55] = v48;
    *&v59[71] = v49;
    *&v59[87] = v50;
    *&v59[7] = v45;
    *&v59[23] = v46;
    *&v60[169] = *&v59[160];
    *&v60[185] = *&v59[176];
    *&v60[201] = *&v59[192];
    *&v60[216] = *&v59[207];
    *&v60[105] = *&v59[96];
    *&v60[121] = *&v59[112];
    *&v60[137] = *&v59[128];
    *&v60[153] = *&v59[144];
    *&v60[41] = *&v59[32];
    *&v60[57] = *&v59[48];
    *&v60[73] = *&v59[64];
    *&v60[89] = *&v59[80];
    *&v60[9] = *v59;
    *v60 = v16;
    v60[8] = v17;
    *&v60[25] = *&v59[16];
    sub_25209D9B0(v60);
    v41 = *&v60[192];
    v42[0] = *&v60[208];
    *(v42 + 9) = *&v60[217];
    v37 = *&v60[128];
    v38 = *&v60[144];
    v39 = *&v60[160];
    v40 = *&v60[176];
    v33 = *&v60[64];
    v34 = *&v60[80];
    v35 = *&v60[96];
    v36 = *&v60[112];
    v29 = *v60;
    v30 = *&v60[16];
    v31 = *&v60[32];
    v32 = *&v60[48];
    v28(&v29);
    v73 = v41;
    v74[0] = v42[0];
    *(v74 + 9) = *(v42 + 9);
    v69 = v37;
    v70 = v38;
    v72 = v40;
    v71 = v39;
    v65 = v33;
    v66 = v34;
    v68 = v36;
    v67 = v35;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    v64 = v32;
    sub_25209D9BC(&v61);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
    result = sub_25214200C();
    v18 = v62;
    if (v62 == 2)
    {
      v19 = swift_allocObject();
      v19[2] = v11;
      v19[3] = sub_2520A2FB8;
      v19[4] = v6;
      v13 = swift_allocObject();
      *(v13 + 2) = sub_2520A34B8;
      *(v13 + 3) = v19;
      *&v63 = sub_2520A3768;
      *(&v63 + 1) = v13;
      *&v61 = MEMORY[0x277D85DD0];
      *(&v61 + 1) = 1107296256;
      *&v62 = sub_252083924;
      *(&v62 + 1) = &block_descriptor_1329;
      v20 = _Block_copy(&v61);
      v14 = *(&v63 + 1);
      swift_retain_n();
      v21 = v11;

      dispatch_sync(v7, v20);

      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v23 = *(&v62 + 1);
    v24 = v61;
    v25 = 1.0;
    if ((v11[v14] & 1) == 0)
    {
      MEMORY[0x28223BE20](result);
      v27 = v26;
      sub_25214200C();
      v24 = v27;
      v25 = *&v61;
    }

    v61 = v24;
    LOBYTE(v62) = v18 & 1;
    *(&v62 + 1) = v23;
    *&v63 = v25;
    sub_25209D9A8(&v61);
    *&v60[192] = v73;
    *&v60[208] = v74[0];
    *(v13 + 217) = *(v74 + 9);
    *&v60[128] = v69;
    *&v60[144] = v70;
    *&v60[160] = v71;
    *&v60[176] = v72;
    *&v60[64] = v65;
    *&v60[80] = v66;
    *&v60[96] = v67;
    *&v60[112] = v68;
    *v60 = v61;
    *&v60[16] = v62;
    *&v60[32] = v63;
    *&v60[48] = v64;
    v28(v60);
  }
}

uint64_t sub_2520A1718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v32 = MEMORY[0x277D84F90];
  v31 = *(a1 + 16);
  sub_25209B214(0, v4, 0);
  v5 = v32;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = sub_25214219C();
  v11 = v31;
  v12 = 0;
  v13 = *(a2 + *a3);
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v15 = result >> 6;
    v16 = 1 << result;
    if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(*(a1 + 48) + 8 * result);
    v18 = *(a1 + 36);
    v20 = *(v32 + 16);
    v19 = *(v32 + 24);
    if (v20 >= v19 >> 1)
    {
      v29 = *(a1 + 36);
      v30 = result;
      sub_25209B214((v19 > 1), v20 + 1, 1);
      v11 = v31;
      v18 = v29;
      result = v30;
    }

    *(v32 + 16) = v20 + 1;
    v21 = v32 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v13;
    v14 = 1 << *(a1 + 32);
    if (result >= v14)
    {
      goto LABEL_22;
    }

    v22 = *(v8 + 8 * v15);
    if ((v22 & v16) == 0)
    {
      goto LABEL_23;
    }

    if (v18 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (result & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (a1 + 64 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_2520A1FF4(result, v18, 0);
          v11 = v31;
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      sub_2520A1FF4(result, v18, 0);
      v11 = v31;
    }

LABEL_4:
    ++v12;
    result = v14;
    if (v12 == v11)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

__n128 sub_2520A1964@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metrics;
  v3 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v3;
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 208) = *(v2 + 208);
  v4 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v4;
  v5 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v5;
  v6 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v6;
  v7 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v7;
  result = *v2;
  v9 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_2520A19B8()
{

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

__n128 sub_2520A19F0()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metrics;
  v2 = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  *(v1 + 64) = *(v0 + 88);
  *(v1 + 80) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  v6 = *(v0 + 136);
  v7 = *(v0 + 168);
  v8 = *(v0 + 120);
  *(v1 + 128) = *(v0 + 152);
  *(v1 + 144) = v7;
  *(v1 + 96) = v8;
  *(v1 + 112) = v6;
  result = *(v0 + 200);
  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  *(v1 + 208) = *(v0 + 232);
  *(v1 + 176) = result;
  *(v1 + 192) = v10;
  *(v1 + 160) = v11;
  return result;
}

uint64_t sub_2520A1A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2520A1AE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2520A1B40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HTAudiometry.previousAudiogram.setter(v4);
}

__n128 sub_2520A1B6C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_2520A1BE4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  result = sub_25214200C();
  *a2 = v5;
  return result;
}

uint64_t type metadata accessor for HTAudiometry()
{
  result = qword_27F4CDAC0;
  if (!qword_27F4CDAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2520A1D14()
{
  sub_2520A1E80();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2520A1E80()
{
  if (!qword_27F4CDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDA10, &qword_252143B58);
    v0 = sub_2521419DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4CDAD0);
    }
  }
}

uint64_t sub_2520A1EE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253099040](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25213ECFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

_OWORD *sub_2520A1F80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2520A1FE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2520A1FF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2520A2090()
{
  result = qword_27F4CDB90;
  if (!qword_27F4CDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDB90);
  }

  return result;
}

uint64_t sub_2520A21CC(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8830]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t sub_2520A22E4(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v5 = *(v3 + 24);
  v6 = **(v3 + 16);
  result = sub_2520A2430(v6, *v5, a1, a3);
  *a2 = *(v6 + 16);
  return result;
}

void sub_2520A2338(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_2520A2480(v5, *v4, a1);
  *a2 = *(v5 + 16);
}

uint64_t sub_2520A23A0(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t, int *))
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 != a2[1])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 >> 31)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v6 = *(a1 + 16);
  if (!*a2)
  {
    goto LABEL_7;
  }

  result = a3(*a2, a1 + 32, &v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2520A2430(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v4 = a3[1];
  if (*(result + 16) != v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    return a4(result + 32, 1, a2 + 32, 1, *a3, 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2520A2480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*(a1 + 16) != v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    vDSP_vsubD((a2 + 32), 1, (a1 + 32), 1, *a3, 1, v3);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2520A24F8(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8808]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t sub_2520A2584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2520A25E4(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8828]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t sub_2520A26A4(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8800]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t objectdestroy_886Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD0, &qword_252143D88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2520A283C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_969Tm()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 264);

  return MEMORY[0x2821FE8E8](v0, 272, 7);
}

uint64_t sub_2520A28C4()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metricsV2;
  v2 = *(v1 + 48);
  v4 = *v1;
  v3 = *(v1 + 16);
  v28[2] = *(v1 + 32);
  v28[3] = v2;
  v28[0] = v4;
  v28[1] = v3;
  v5 = *(v1 + 112);
  v7 = *(v1 + 64);
  v6 = *(v1 + 80);
  v28[6] = *(v1 + 96);
  v28[7] = v5;
  v28[4] = v7;
  v28[5] = v6;
  v8 = *(v1 + 176);
  v10 = *(v1 + 128);
  v9 = *(v1 + 144);
  v28[10] = *(v1 + 160);
  v28[11] = v8;
  v28[8] = v10;
  v28[9] = v9;
  v12 = *(v1 + 208);
  v11 = *(v1 + 224);
  v13 = *(v1 + 192);
  v29 = *(v1 + 240);
  v28[13] = v12;
  v28[14] = v11;
  v28[12] = v13;
  v14 = *(v0 + 24);
  v15 = *(v0 + 40);
  v16 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 56);
  *(v1 + 48) = v16;
  *v1 = v14;
  *(v1 + 16) = v15;
  v17 = *(v0 + 88);
  v18 = *(v0 + 104);
  v19 = *(v0 + 136);
  *(v1 + 96) = *(v0 + 120);
  *(v1 + 112) = v19;
  *(v1 + 64) = v17;
  *(v1 + 80) = v18;
  v20 = *(v0 + 152);
  v21 = *(v0 + 168);
  v22 = *(v0 + 200);
  *(v1 + 160) = *(v0 + 184);
  *(v1 + 176) = v22;
  *(v1 + 128) = v20;
  *(v1 + 144) = v21;
  v23 = *(v0 + 216);
  v24 = *(v0 + 232);
  v25 = *(v0 + 248);
  *(v1 + 240) = *(v0 + 264);
  *(v1 + 208) = v24;
  *(v1 + 224) = v25;
  *(v1 + 192) = v23;
  sub_2520A2A98(v0 + 24, v27);
  return sub_2520A1F90(v28);
}

uint64_t sub_2520A29BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metricsV2;
  v3 = *(v2 + 48);
  v5 = *v2;
  v4 = *(v2 + 16);
  v24[2] = *(v2 + 32);
  v24[3] = v3;
  v24[0] = v5;
  v24[1] = v4;
  v6 = *(v2 + 112);
  v8 = *(v2 + 64);
  v7 = *(v2 + 80);
  v24[6] = *(v2 + 96);
  v24[7] = v6;
  v24[4] = v8;
  v24[5] = v7;
  v9 = *(v2 + 176);
  v11 = *(v2 + 128);
  v10 = *(v2 + 144);
  v24[10] = *(v2 + 160);
  v24[11] = v9;
  v24[8] = v11;
  v24[9] = v10;
  v13 = *(v2 + 208);
  v12 = *(v2 + 224);
  v14 = *(v2 + 192);
  v25 = *(v2 + 240);
  v24[13] = v13;
  v24[14] = v12;
  v24[12] = v14;
  v15 = *(v2 + 208);
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 208) = v15;
  *(a1 + 224) = *(v2 + 224);
  *(a1 + 240) = *(v2 + 240);
  v16 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v16;
  v17 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v17;
  v18 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v18;
  v19 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v19;
  v20 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v20;
  v21 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v21;
  return sub_2520A2A98(v24, v23);
}

uint64_t sub_2520A2AF4()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520A2B2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2520A2B84(void *a1)
{
  v2 = (*(v1 + 16) + *a1);
  v3 = *v2;
  v4 = *(v1 + 32);
  *v2 = *(v1 + 24);
  *(v2 + 1) = v4;
}

uint64_t sub_2520A2BD8()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_2520A2C10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2520A2C70(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[6];
  v5 = v1[7];
  v8 = *a1;
  v4(v7, &v8);
  v3(v7);

  return swift_unknownObjectRelease();
}

uint64_t objectdestroy_1189Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520A2D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[6];
  v7 = v2[7];
  v10 = *a1;
  v6(v9, &v10);
  v5(&v11, v9);
  result = swift_unknownObjectRelease();
  *a2 = v11;
  return result;
}

uint64_t sub_2520A2D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2520A2E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16) + *a1;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2520A2E84(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_2520A2ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2520A2F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2520A2F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520A2FB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2520A2FE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_118Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2520A3074(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = (v3[2] + *a1);
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  a2(v5);

  return a3(v8, v9);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2520A30F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2520A3138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2520A3B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

HearingTest::NoiseMode_optional __swiftcall NoiseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s11HearingTest12HTFaultStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t sub_2520A3C6C()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t HTNoiseSynth.__allocating_init(_:totalTime:transitTime:temporaryTime:queue:)(unsigned __int8 *a1, void *a2, float a3, float a4, float a5)
{
  v10 = swift_allocObject();
  HTNoiseSynth.init(_:totalTime:transitTime:temporaryTime:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t HTNoiseSynth.init(_:totalTime:transitTime:temporaryTime:queue:)(unsigned __int8 *a1, void *a2, float a3, float a4, float a5)
{
  v6 = v5;
  v12 = sub_252141A4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v105 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252141A8C();
  v104 = *(v16 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v16);
  v103 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_252141A1C();
  v101 = *(v102 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = (&v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v98 = (&v92 - v22);
  v99 = sub_252141ABC();
  v97 = *(v99 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_25214205C();
  v94 = *(v95 - 8);
  v25 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_252141A5C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  *(v6 + 72) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v108 = v12;
  v107 = v13;
  v106 = v16;
  if (a2)
  {
    v33 = a2;
  }

  else
  {
    sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
    (*(v28 + 104))(v31, *MEMORY[0x277D851C8], v27);
    v33 = sub_25214203C();
    (*(v28 + 8))(v31, v27);
  }

  *(v6 + 32) = v33;
  *(v6 + 16) = v32;
  *(v6 + 20) = a3;
  *(v6 + 24) = a4;
  v109 = v6;
  *(v6 + 28) = a5;
  v34 = lroundf(a3 * 10.0);
  v35 = lroundf(a4 * 10.0);
  v36 = lroundf(a5 * 10.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  switch(v32)
  {
    case 1:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AB0;
      *(v37 + 32) = 0;
      v38 = (v37 + 40);
      v39 = &unk_28644C218;
      break;
    case 2:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AB0;
      *(v37 + 32) = 0;
      v38 = (v37 + 40);
      v39 = &unk_28644C248;
      break;
    case 3:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AD0;
      *(v37 + 32) = 0;
      *(v37 + 40) = v35;
      v38 = (v37 + 48);
      v39 = &unk_28644C278;
      break;
    case 4:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AD0;
      *(v37 + 32) = 0;
      *(v37 + 40) = v35;
      v38 = (v37 + 48);
      v39 = &unk_28644C2B0;
      break;
    case 5:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AD0;
      *(v37 + 32) = 0;
      *(v37 + 40) = v35;
      v38 = (v37 + 48);
      v39 = &unk_28644C2E8;
      break;
    case 6:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AD0;
      *(v37 + 32) = 0;
      *(v37 + 40) = v35;
      v38 = (v37 + 48);
      v39 = &unk_28644C320;
      break;
    case 7:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AD0;
      *(v37 + 32) = 0;
      *(v37 + 40) = v35;
      v38 = (v37 + 48);
      v39 = &unk_28644C358;
      break;
    case 8:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AD0;
      *(v37 + 32) = 0;
      *(v37 + 40) = v35;
      v38 = (v37 + 48);
      v39 = &unk_28644C390;
      break;
    case 9:
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_252143E80;
      *(v43 + 32) = 0;
      *(v43 + 40) = v35;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_74;
      }

      v37 = v43;
      *(v43 + 48) = v35 + v36;
      v38 = (v43 + 56);
      v39 = &unk_28644C508;
      break;
    case 10:
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_252143E80;
      *(v45 + 32) = 0;
      *(v45 + 40) = v35;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_76;
      }

      v37 = v45;
      *(v45 + 48) = v35 + v36;
      v38 = (v45 + 56);
      v39 = &unk_28644C4C8;
      break;
    case 11:
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_252143E80;
      *(v41 + 32) = 0;
      *(v41 + 40) = v35;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_72;
      }

      v37 = v41;
      *(v41 + 48) = v35 + v36;
      v38 = (v41 + 56);
      v39 = &unk_28644C488;
      break;
    case 12:
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_252143E80;
      *(v42 + 32) = 0;
      *(v42 + 40) = v35;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_73;
      }

      v37 = v42;
      *(v42 + 48) = v35 + v36;
      v38 = (v42 + 56);
      v39 = &unk_28644C448;
      break;
    case 13:
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_252143E80;
      *(v44 + 32) = 0;
      *(v44 + 40) = v35;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_75;
      }

      v37 = v44;
      *(v44 + 48) = v35 + v36;
      v38 = (v44 + 56);
      v39 = &unk_28644C408;
      break;
    case 14:
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_252143E80;
      *(v40 + 32) = 0;
      *(v40 + 40) = v35;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_71;
      }

      v37 = v40;
      *(v40 + 48) = v35 + v36;
      v38 = (v40 + 56);
      v39 = &unk_28644C3C8;
      break;
    default:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143AB0;
      *(v37 + 32) = 0;
      v38 = (v37 + 40);
      v39 = &unk_28644C1E8;
      break;
  }

  v117 = v39;
  *v38 = v34;
  if (v34 < 0)
  {
    goto LABEL_69;
  }

  v92 = a2;

  v46 = MEMORY[0x277D84F90];
  if (v34)
  {
    v46 = sub_252141D3C();
    *(v46 + 16) = v34;
    bzero((v46 + 32), 8 * v34);
  }

  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = swift_allocObject();
  v49 = sub_252141D3C();
  *(v49 + 16) = 16;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  v50 = sub_2520F752C(v49, v34);

  *(v48 + 16) = v50;
  v51 = *(v37 + 16);

  v116 = v51 - 2;
  if (v51 < 2)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    JUMPOUT(0x2520A4C08);
  }

  v52 = 0;
  v53 = v37 + 32;
  v54 = (v117 + 4);
  v55 = *(v37 + 16);
  v56 = v117[2];
  if (v55 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = *(v37 + 16);
  }

  v58 = v57 - 1;
  v114 = v37 + 32;
  v115 = v37;
  v112 = v55;
  v113 = (v117 + 4);
  v111 = v56;
  v110 = v57 - 1;
  v120 = v47;
  do
  {
    if (v52 == v55)
    {
      goto LABEL_64;
    }

    if (v52 == v58)
    {
      goto LABEL_65;
    }

    v59 = *(v53 + 8 * (v52 + 1));
    v60 = v59 - 1;
    if (__OFSUB__(v59, 1))
    {
      goto LABEL_66;
    }

    v122 = *(v53 + 8 * v52);
    if (v60 < v122)
    {
      goto LABEL_67;
    }

    if (v52 == v56)
    {
      goto LABEL_68;
    }

    v118 = v52 + 1;
    v119 = v52;
    v121 = *&v54[8 * v52];
    v61 = v122;
    do
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 16) = v46;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v122 < 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = sub_2520A59C8(v46);
        v46 = isUniquelyReferenced_nonNull_native;
        if (v122 < 0)
        {
          goto LABEL_62;
        }
      }

      if (v61 >= *(v46 + 16))
      {
        goto LABEL_63;
      }

      *(v46 + 32 + 8 * v61) = v121;
      *(v47 + 16) = v46;
      sub_2520A59F0(isUniquelyReferenced_nonNull_native, 0.0, 1.0);
      if (v61 >= *(v46 + 16))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v65 = v64;
      v66 = 0;
      v67 = *(v48 + 16);
      while (1)
      {
        v68 = *(v46 + 32 + 8 * v61);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *(v48 + 16) = v67;
        if ((v69 & 1) == 0)
        {
          v67 = sub_2520A59B4(v67);
          *(v48 + 16) = v67;
        }

        if (v61 >= v67[2])
        {
          goto LABEL_60;
        }

        v70 = v67[v61 + 4];
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v67[v61 + 4] = v70;
        if ((v71 & 1) == 0)
        {
          v71 = sub_2520A59A0(v70);
          v70 = v71;
          v67[v61 + 4] = v71;
        }

        if (v66 >= *(v70 + 16))
        {
          goto LABEL_61;
        }

        *(v70 + 4 * v66 + 32) = ((v65 * 10.0) + 20.0) * (v68 + 1.0);
        if (v66 == 15)
        {
          break;
        }

        ++v66;
        sub_2520A59F0(v71, 0.0, 1.0);
        v65 = v72;
        if (v61 >= *(v46 + 16))
        {
          goto LABEL_59;
        }
      }

      v62 = v61++ == v60;
      v47 = v120;
    }

    while (!v62);
    v52 = v118;
    v54 = v113;
    v53 = v114;
    v55 = v112;
    v56 = v111;
    v58 = v110;
  }

  while (v119 != v116);

  v73 = v109;
  *(v109 + 64) = 0;
  sub_2520A5A94(0, &unk_27F4CDC60, 0x277D85CA0);
  v74 = *(v73 + 32);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520A6020(&qword_27F4CEB00, MEMORY[0x277D85278]);
  v122 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDC70, &qword_252143E98);
  sub_2520A2F1C(&unk_27F4CEB10, &unk_27F4CDC70, &qword_252143E98);
  v75 = v93;
  v76 = v95;
  sub_25214218C();
  v77 = sub_25214206C();

  (*(v94 + 8))(v75, v76);
  *(v73 + 40) = v77;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v79 = v96;
  sub_252141AAC();
  v80 = v98;
  *v98 = 100;
  v81 = v47;
  v82 = v101;
  v83 = v102;
  (*(v101 + 104))(v80, *MEMORY[0x277D85178], v102);
  v84 = v100;
  sub_2520A4C7C(v100);
  MEMORY[0x253099290](v79, v80, v84, ObjectType);
  swift_unknownObjectRelease();
  v85 = *(v82 + 8);
  v85(v84, v83);
  v85(v80, v83);
  (*(v97 + 8))(v79, v99);
  v86 = *(v73 + 40);
  swift_getObjectType();
  v87 = swift_allocObject();
  v87[2] = v73;
  v87[3] = v81;
  v87[4] = v48;
  aBlock[4] = sub_2520A5B24;
  aBlock[5] = v87;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_0;
  v88 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v89 = v103;
  sub_252141A6C();
  v90 = v105;
  sub_2520A4E18();
  sub_25214207C();
  _Block_release(v88);
  swift_unknownObjectRelease();

  (*(v107 + 8))(v90, v108);
  (*(v104 + 8))(v89, v106);

  return v73;
}

uint64_t sub_2520A4C44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520A4C7C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_252141A1C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2520A4CF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  result = swift_beginAccess();
  v8 = *(a2 + 16);
  if (v6 < *(v8 + 16))
  {
    if (a1[6])
    {
      v9 = a1[7];
      v10 = a1[6];
      result = swift_getObjectType();
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v11 = result;
      v12 = *(v8 + 8 * v6 + 32);
      result = swift_beginAccess();
      v13 = *(a3 + 16);
      if (v6 >= *(v13 + 16))
      {
LABEL_11:
        __break(1u);
        return result;
      }

      v14 = *(v13 + 8 * v6 + 32);
      v15 = *(v9 + 8);
      swift_unknownObjectRetain();

      v15(v12, v14, v11, v9);

      result = swift_unknownObjectRelease();
    }

    v16 = a1[8];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      a1[8] = v18;
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2520A4E18()
{
  sub_252141A4C();
  sub_2520A6020(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  return sub_25214218C();
}

void sub_2520A4F04()
{
  v1 = v0;
  v2 = *v0;
  if ((v0[9] & 1) == 0)
  {
    v3 = v0[10];
    [v3 lock];
    v4 = v0[5];
    v5 = v1[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_25214209C();
    swift_unknownObjectRelease();
    *(v1 + 72) = 1;
    [v3 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v6 = sub_25214198C();
    __swift_project_value_buffer(v6, qword_27F4CDE68);
    v7 = sub_25214196C();
    v8 = sub_252141FBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      v11 = sub_2521425DC();
      v13 = sub_2520A5448(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] NoiseSynth timer resumed", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253099FD0](v10, -1, -1);
      MEMORY[0x253099FD0](v9, -1, -1);
    }
  }

  v1[8] = 0;
}

void sub_2520A50DC()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + 72) == 1)
  {
    v3 = v0[10];
    [v3 lock];
    v4 = v0[5];
    v5 = v1[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2521420AC();
    swift_unknownObjectRelease();
    *(v1 + 72) = 0;
    [v3 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v6 = sub_25214198C();
    __swift_project_value_buffer(v6, qword_27F4CDE68);
    v7 = sub_25214196C();
    v8 = sub_252141FBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      v11 = sub_2521425DC();
      v13 = sub_2520A5448(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] NoiseSynth timer suspended", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253099FD0](v10, -1, -1);
      MEMORY[0x253099FD0](v9, -1, -1);
    }
  }

  v1[8] = 0;
}

uint64_t HTNoiseSynth.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t HTNoiseSynth.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2520A533C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2520A5388(void (*a1)(void))
{
  a1();

  return sub_2521425DC();
}

uint64_t sub_2520A53EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2520A5448(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2520A5448(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2520A5514(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2520A5FC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}