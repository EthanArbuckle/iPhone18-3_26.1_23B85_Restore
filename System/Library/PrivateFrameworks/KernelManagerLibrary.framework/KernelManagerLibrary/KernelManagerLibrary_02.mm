uint64_t sub_2557A594C(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v47 = MEMORY[0x277D84F90];
    v33 = a2 >> 62;
    sub_2557AB37C(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_2557B0868();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_2557B0888();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_2557B0868();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_2557B0888();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2557B1770;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_2557B0C48();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_2557AB37C((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2557A5CC8(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), void (*a3)(uint64_t), uint64_t a4)
{
  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v8 = sub_2557B0B38();
  __swift_project_value_buffer(v8, qword_27F7D31B8);
  v9 = sub_2557B0B18();
  v10 = sub_2557B0DC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_255786000, v9, v10, "starting assets evaluation", v11, 2u);
    MEMORY[0x259C40F40](v11, -1, -1);
  }

  sub_2557A5F90(a2, &v26);
  if (!v4)
  {
    v30 = 0;
    v24 = v27;
    v25 = v26;
    v13 = v28;
    v12 = v29;
    v14 = sub_2557B0B18();
    v15 = sub_2557B0DC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_255786000, v14, v15, "assets evaluation completed", v16, 2u);
      MEMORY[0x259C40F40](v16, -1, -1);
    }

    v17 = sub_2557B0B18();
    v18 = sub_2557B0DC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_255786000, v17, v18, "starting assets execution", v19, 2u);
      MEMORY[0x259C40F40](v19, -1, -1);
    }

    v26 = v25;
    v27 = v24;
    v28 = v13;
    v29 = v12;
    v20 = v30;
    sub_2557A8AD8(&v26, a3, a4);

    if (!v20)
    {
      v21 = sub_2557B0B18();
      v22 = sub_2557B0DC8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_255786000, v21, v22, "assets execution completed", v23, 2u);
        MEMORY[0x259C40F40](v23, -1, -1);
      }
    }
  }
}

void sub_2557A5F90(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v3 = v2;
  v83 = a2;
  v4 = type metadata accessor for SLAMScript(0);
  v85 = *(v4 - 8);
  v5 = *(v85 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  sub_255793B04(v2 + 16, v94);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v23 = swift_initStackObject();
  sub_2557ABE30(v94, v23 + 16);
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(inited + 16) = v23;
  *(inited + 24) = &off_2867913F0;
  v24 = v21;
  (*(v85 + 56))(v21, 1, 1, v4);
  v25 = v87;
  v89[2] = v3;
  v89[3] = v86;
  v89[4] = inited;
  v89[5] = v21;
  v26 = sub_2557A0C60("api_evaluate-server-asset", 0x19, 2, 0, 0, sub_2557ABF14, v89);
  if (v25)
  {
    swift_setDeallocating();
    v27 = *(inited + 16);
    swift_unknownObjectRelease();
LABEL_46:
    sub_255799CFC(v24, &qword_27F7D3128, &unk_2557B2530);
    return;
  }

  v76 = v16;
  v77 = v19;
  v78 = 0;
  v79 = inited;
  v88 = v4;
  v92 = 0u;
  v93 = 0u;
  v28 = *(v26 + 16);
  v80 = v26;
  if (v28)
  {
    v75 = v21;
    v84 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v26 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v86 = *(v85 + 72);
    v87 = 0;
    v24 = v28;
    while (1)
    {
      sub_2557ABF34(v32, v9, type metadata accessor for SLAMScript);
      v33 = *&v9[*(v88 + 28)];
      v34 = [v33 nvmRequired];
      v35 = __CFADD__(v31, v34);
      v31 += v34;
      if (v35)
      {
        goto LABEL_48;
      }

      v36 = [v33 corRequired];
      v35 = __CFADD__(v30, v36);
      v30 += v36;
      if (v35)
      {
        goto LABEL_49;
      }

      v37 = [v33 indicesRequired];
      v35 = __CFADD__(v29, v37);
      v29 += v37;
      if (v35)
      {
        goto LABEL_50;
      }

      v38 = v9[*(v88 + 24)];
      if (v38 > 3)
      {
        if (v38 - 4 < 2)
        {
LABEL_14:
          v39 = [v33 codRequired];
          v40 = v87 + v39;
          if (__CFADD__(v87, v39))
          {
            goto LABEL_51;
          }

          v87 += v39;
          *&v93 = v40;
          goto LABEL_5;
        }

        if (v38 == 6)
        {
          v35 = __CFADD__(v31, 15000);
          v31 += 15000;
          if (v35)
          {
            goto LABEL_52;
          }

          v35 = __CFADD__(v30, 250);
          v30 += 250;
          if (v35)
          {
            goto LABEL_53;
          }

          if (v87 >= 0xFFFFFFFFFFFFFE0CLL)
          {
            goto LABEL_54;
          }

          *&v93 = v87 + 500;
          v35 = __CFADD__(v29, 300);
          v29 += 300;
          if (v35)
          {
            goto LABEL_55;
          }

          v87 += 500;
        }
      }

      else if (v9[*(v88 + 24)] > 1u)
      {
        if (v38 == 2)
        {
          v41 = [v33 codRequired];
          if (v84 < v41)
          {
            v84 = [v33 codRequired];
          }
        }
      }

      else if (!v9[*(v88 + 24)])
      {
        goto LABEL_14;
      }

LABEL_5:
      sub_2557ABF9C(v9, type metadata accessor for SLAMScript);
      v32 += v86;
      if (!--v24)
      {
        *(&v93 + 1) = v29;
        *&v92 = v31;
        *(&v92 + 1) = v30;
        v24 = v75;
        goto LABEL_27;
      }
    }
  }

  v84 = 0;
  v87 = 0;
LABEL_27:
  v42 = v77;
  sub_2557ABFFC(v24, v77, &qword_27F7D3128, &unk_2557B2530);
  v43 = v24;
  v44 = *(v85 + 48);
  v45 = v88;
  v46 = v44(v42, 1, v88);
  sub_255799CFC(v42, &qword_27F7D3128, &unk_2557B2530);
  if (v46 == 1)
  {
    v47 = v87 + v84;
    if (!__CFADD__(v87, v84))
    {
      v24 = v43;
LABEL_35:
      *&v93 = v47;
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_58;
  }

  v48 = v43;
  v49 = v76;
  sub_2557ABFFC(v43, v76, &qword_27F7D3128, &unk_2557B2530);
  v86 = v44;
  if (v44(v49, 1, v45) == 1)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v50 = *(v49 + *(v45 + 28));
  sub_2557ABF9C(v49, type metadata accessor for SLAMScript);
  v51 = [v50 codRequired];

  v24 = v48;
  if (v84 <= v51)
  {
LABEL_36:
    if (qword_27F7D2E18 != -1)
    {
      goto LABEL_56;
    }

    while (1)
    {
      v56 = sub_2557B0B38();
      __swift_project_value_buffer(v56, qword_27F7D31B8);
      v57 = sub_2557B0B18();
      v58 = sub_2557B0DE8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v60 = v24;
        v61 = v95;
        *v59 = 136446210;
        swift_beginAccess();
        v90 = v92;
        v91 = v93;
        v62 = SEMemoryInfo.description.getter();
        v64 = sub_2557AAA60(v62, v63, &v95);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_255786000, v57, v58, "Memory requirements: %{public}s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        v65 = v61;
        v24 = v60;
        MEMORY[0x259C40F40](v65, -1, -1);
        MEMORY[0x259C40F40](v59, -1, -1);
      }

      v66 = v83;
      if (!v28)
      {
        break;
      }

      LODWORD(v67) = 0;
      v68 = *(v88 + 28);
      v69 = v80 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v70 = *(v85 + 72);
      v71 = v82;
      while (1)
      {
        sub_2557ABF34(v69, v71, type metadata accessor for SLAMScript);
        v72 = [*(v71 + v68) apduCount];
        v35 = __CFADD__(v67, v72);
        v67 = v67 + v72;
        if (v35)
        {
          break;
        }

        sub_2557ABF9C(v71, type metadata accessor for SLAMScript);
        v69 += v70;
        if (!--v28)
        {

          v66 = v83;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      swift_once();
    }

    v67 = 0;
LABEL_45:
    swift_beginAccess();
    v73 = v93;
    *v66 = v92;
    *(v66 + 16) = v73;
    v74 = v80;
    *(v66 + 32) = v67;
    *(v66 + 40) = v74;
    goto LABEL_46;
  }

  v52 = v81;
  sub_2557ABFFC(v48, v81, &qword_27F7D3128, &unk_2557B2530);
  if (v86(v52, 1, v45) != 1)
  {
    v53 = *(v52 + *(v45 + 28));
    sub_2557ABF9C(v52, type metadata accessor for SLAMScript);
    v54 = [v53 codRequired];

    v55 = v84 - v54;
    if (v84 >= v54)
    {
      v35 = __CFADD__(v87, v55);
      v47 = v87 + v55;
      if (!v35)
      {
        goto LABEL_35;
      }

      goto LABEL_59;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_61:
  __break(1u);
}

uint64_t sub_2557A680C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X8>)
{
  v240 = a4;
  *&v265 = a3;
  v261 = a2;
  v241 = a5;
  v281 = *MEMORY[0x277D85DE8];
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v7 = *(*(v254 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v254);
  v239 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v246 = &v229 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v247 = &v229 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v248 = &v229 - v15;
  MEMORY[0x28223BE20](v14);
  v249 = (&v229 - v16);
  v267 = sub_2557B0968();
  v263 = *(v267 - 8);
  v17 = *(v263 + 64);
  v18 = MEMORY[0x28223BE20](v267);
  v256 = (&v229 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v18);
  v253 = &v229 - v20;
  MEMORY[0x28223BE20](v19);
  v257 = &v229 - v21;
  v259 = type metadata accessor for ProfileScript(0);
  v270 = *(v259 - 8);
  v22 = *(v270 + 8);
  MEMORY[0x28223BE20](v259);
  *&v266 = &v229 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v258 = (&v229 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v262 = &v229 - v28;
  v269 = type metadata accessor for SLAMScript(0);
  v268 = *(v269 - 8);
  v29 = *(v268 + 64);
  v30 = MEMORY[0x28223BE20](v269);
  v243 = (&v229 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v260 = &v229 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v251 = &v229 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v255 = (&v229 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v229 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v229 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = (&v229 - v45);
  MEMORY[0x28223BE20](v44);
  v48 = &v229 - v47;
  v49 = type metadata accessor for KernelAsset(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v229 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);

  v53 = sub_2557923C8("api_device-state", 0x10, 2, 0, 0, a1, 0);
  if (v5)
  {
    goto LABEL_2;
  }

  v271 = v52;
  v252 = v48;
  v235 = v46;
  v250 = v43;
  v237 = v49;
  v236 = v40;
  v245 = v17;
  v242 = v53;
  v238 = a1;

  v56 = v261;
  LODWORD(v57) = (*v261 & 1) != 0 || *(v242 + 104) != 0;
  v264 = 0;
  if (qword_27F7D2E18 != -1)
  {
LABEL_149:
    swift_once();
  }

  v58 = sub_2557B0B38();
  v59 = __swift_project_value_buffer(v58, qword_27F7D31B8);
  v60 = v271;
  sub_2557ABF34(v56, v271, type metadata accessor for KernelAsset);
  v244 = v59;
  v61 = sub_2557B0B18();
  v62 = sub_2557B0DE8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 67240192;
    v64 = *v60;
    sub_2557ABF9C(v60, type metadata accessor for KernelAsset);
    *(v63 + 4) = v64;
    _os_log_impl(&dword_255786000, v61, v62, "Forced Bee update: %{BOOL,public}d", v63, 8u);
    MEMORY[0x259C40F40](v63, -1, -1);
  }

  else
  {
    sub_2557ABF9C(v60, type metadata accessor for KernelAsset);
  }

  v65 = sub_2557B0B18();
  v66 = sub_2557B0DE8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 67240192;
    *(v67 + 4) = v57;
    _os_log_impl(&dword_255786000, v65, v66, "Bee (re)installation required: %{BOOL,public}d", v67, 8u);
    MEMORY[0x259C40F40](v67, -1, -1);
  }

  if (v57)
  {
    v68 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
    v69 = v264;
    sub_25579AF88(v238 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw, v252);
    if (!v69)
    {
      v264 = 0;
      v80 = sub_255794864(0, 1, 1, MEMORY[0x277D84F90]);
      inited = *(v80 + 2);
      v81 = *(v80 + 3);
      v83 = inited + 1;
      LODWORD(v234) = v57;
      if (inited >= v81 >> 1)
      {
        goto LABEL_153;
      }

      goto LABEL_23;
    }

    goto LABEL_2;
  }

  LODWORD(v234) = 0;
  v271 = MEMORY[0x277D84F90];
  v70 = v267;
  while (1)
  {
    v71 = *(v237 + 24);
    v72 = v262;
    sub_2557ABFFC(v56 + v71, v262, &qword_27F7D3138, &qword_2557B26A0);
    v73 = *(v263 + 48);
    v74 = v73(v72, 1, v70);
    sub_255799CFC(v72, &qword_27F7D3138, &qword_2557B26A0);
    if (v74 == 1)
    {
      v75 = v259;
    }

    else
    {
      v76 = v258;
      sub_2557ABFFC(v56 + v71, v258, &qword_27F7D3138, &qword_2557B26A0);
      result = v73(v76, 1, v70);
      v77 = v264;
      if (result == 1)
      {
LABEL_156:
        __break(1u);
        return result;
      }

      v78 = v250;
      sub_25579BB58(v76, v250);
      v79 = v263;
      if (v77)
      {

        result = (*(v79 + 8))(v76, v70);
        goto LABEL_3;
      }

      (*(v263 + 8))(v76, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v264 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v271 = sub_255794864(0, *(v271 + 2) + 1, 1, v271);
      }

      v90 = v268;
      v75 = v259;
      v91 = v271;
      v93 = *(v271 + 2);
      v92 = *(v271 + 3);
      if (v93 >= v92 >> 1)
      {
        v228 = sub_255794864(v92 > 1, v93 + 1, 1, v271);
        v90 = v268;
        v91 = v228;
      }

      *(v91 + 2) = v93 + 1;
      v94 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v271 = v91;
      sub_2557AC95C(v78, &v91[v94 + *(v90 + 72) * v93], type metadata accessor for SLAMScript);
    }

    if ((v234 & 1) != 0 || (v95 = *(v242 + 112)) == 0)
    {
      v95 = MEMORY[0x277D84F90];
    }

    else
    {
      v96 = *(v242 + 112);
    }

    v272 = v95;
    v97 = sub_2557B0B18();
    v98 = sub_2557B0DE8();
    v99 = os_log_type_enabled(v97, v98);
    v250 = v95;
    if (v99)
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      aBlock = v101;
      *v100 = 136446210;

      v103 = v75;
      v104 = MEMORY[0x259C40720](v102, MEMORY[0x277D84B78]);
      v106 = v105;

      v107 = sub_2557AAA60(v104, v106, &aBlock);

      *(v100 + 4) = v107;
      v75 = v103;
      _os_log_impl(&dword_255786000, v97, v98, "Installed kernel IDs: %{public}s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x259C40F40](v101, -1, -1);
      MEMORY[0x259C40F40](v100, -1, -1);
    }

    inited = v270;
    v57 = v266;
    v108 = *(v56 + *(v237 + 32));
    v252 = v108;
    if (v108)
    {
      v262 = *(v108 + 16);
      if (v262)
      {
        v56 = 0;
        v259 = *(v75 + 20);
        v258 = (v108 + ((v270[80] + 32) & ~v270[80]));
        v109 = MEMORY[0x277D84FA0];
        while (v56 < *(v108 + 16))
        {
          sub_2557ABF34(v258 + *(inited + 72) * v56, v57, type metadata accessor for ProfileScript);
          v110 = *(v57 + v259);

          sub_2557ABF9C(v57, type metadata accessor for ProfileScript);
          v111 = *(v110 + 16);
          if (v111)
          {
            v112 = 0;
            *&v265 = v110;
            v113 = v110 + 32;
            do
            {
              v115 = (v109 + 7);
              while (1)
              {
                v116 = *(v113 + v112++);
                v117 = MEMORY[0x259C409A0](v109[5], v116, 1);
                v118 = -1 << *(v109 + 32);
                v119 = v117 & ~v118;
                if (((*&v115[(v119 >> 3) & 0xFFFFFFFFFFFFFF8] >> v119) & 1) == 0)
                {
                  break;
                }

                v120 = ~v118;
                while (*(v109[6] + v119) != v116)
                {
                  v119 = (v119 + 1) & v120;
                  if (((*&v115[(v119 >> 3) & 0xFFFFFFFFFFFFFF8] >> v119) & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                if (v112 == v111)
                {
                  goto LABEL_52;
                }
              }

LABEL_44:
              v114 = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v109;
              sub_2557AB5EC(v116, v119, v114);
              v109 = aBlock;
            }

            while (v112 != v111);
LABEL_52:

            inited = v270;
            v108 = v252;
            v57 = v266;
          }

          else
          {
          }

          if (++v56 == v262)
          {
            goto LABEL_54;
          }
        }

LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }
    }

    v109 = MEMORY[0x277D84FA0];
LABEL_54:
    v68 = (v109 + 7);
    v83 = 1 << *(v109 + 32);
    v121 = -1;
    if (v83 < 64)
    {
      v121 = ~(-1 << v83);
    }

    v57 = v121 & v109[7];
    v230 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;

    swift_beginAccess();
    v122 = 0;
    v56 = (v83 + 63) >> 6;
    *&v123 = 16908544;
    v265 = v123;
    v266 = xmmword_2557B1770;
    for (i = v250; ; v272 = i)
    {
      v250 = i;
      v125 = i + 32;
LABEL_58:
      v126 = v122;
      if (!v57)
      {
        break;
      }

LABEL_62:
      v83 = *(v109[6] + (__clz(__rbit64(v57)) | (v122 << 6)));
      v127 = v264;
      v128 = sub_2557AE95C(*(v261 + 8), *(v261 + 16));
      v264 = v127;
      if (v127)
      {

        goto LABEL_3;
      }

      inited = v128;
      if (!*(v128 + 16) || (v129 = sub_2557896D0(v83), (v130 & 1) == 0))
      {

        sub_25578AA30();
        swift_allocError();
        *v215 = xmmword_2557B2850;
        *(v215 + 16) = 7;
        swift_willThrow();

LABEL_2:

        goto LABEL_3;
      }

      v57 &= v57 - 1;
      v131 = *(*(inited + 56) + v129);

      v132 = *(v250 + 2);
      v133 = v125;
      while (v132)
      {
        v134 = *v133++;
        --v132;
        if (v134 == v131)
        {
          goto LABEL_58;
        }
      }

      v135 = sub_2557B0B18();
      v136 = sub_2557B0DE8();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = v265;
        v137[4] = v131;
        _os_log_impl(&dword_255786000, v135, v136, "Kernel installation required for ckid: %{public}hhu", v137, 5u);
        MEMORY[0x259C40F40](v137, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
      inited = swift_initStackObject();
      *(inited + 16) = v266;
      *(inited + 32) = v131;
      v138 = v264;
      v139 = sub_25579DFD8(v238 + v230, inited);
      v264 = v138;
      if (v138)
      {

        swift_setDeallocating();

        goto LABEL_3;
      }

      v83 = v139;
      swift_setDeallocating();
      v81 = *(v83 + 16);
      if (!v81)
      {
        goto LABEL_151;
      }

      v140 = (*(v268 + 80) + 32) & ~*(v268 + 80);
      sub_2557ABF34(v83 + v140, v236, type metadata accessor for SLAMScript);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v141 = v271;
      }

      else
      {
        v141 = sub_255794864(0, *(v271 + 2) + 1, 1, v271);
      }

      v143 = *(v141 + 2);
      v142 = *(v141 + 3);
      v144 = v268;
      if (v143 >= v142 >> 1)
      {
        v146 = sub_255794864(v142 > 1, v143 + 1, 1, v141);
        v144 = v268;
        v141 = v146;
      }

      *(v141 + 2) = v143 + 1;
      v271 = v141;
      sub_2557AC95C(v236, &v141[v140 + *(v144 + 72) * v143], type metadata accessor for SLAMScript);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        i = v250;
      }

      else
      {
        i = sub_255794330(0, *(v250 + 2) + 1, 1, v250);
      }

      inited = *(i + 2);
      v145 = *(i + 3);
      v83 = inited + 1;
      if (inited >= v145 >> 1)
      {
        i = sub_255794330((v145 > 1), inited + 1, 1, i);
      }

      *(i + 2) = v83;
      i[inited + 32] = v131;
    }

    while (1)
    {
      v122 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        __break(1u);
        goto LABEL_147;
      }

      if (v122 >= v56)
      {
        break;
      }

      v57 = v68[v122];
      ++v126;
      if (v57)
      {
        goto LABEL_62;
      }
    }

    v147 = *(v261 + *(v237 + 28));
    if (v147)
    {
      v57 = v267;
      v68 = v256;
      v56 = v254;
      v148 = v260;
      v233 = *(v147 + 16);
      if (v233)
      {
        inited = 0;
        *&v266 = v263 + 16;
        v237 = v268 + 56;
        v236 = (v263 + 32);
        v235 = &v275;
        v234 = (v263 + 8);
        v231 = v147;
        v232 = (v268 + 48);
        while (1)
        {
          if (inited >= *(v147 + 16))
          {
            goto LABEL_148;
          }

          v149 = v263;
          v150 = (*(v263 + 80) + 32) & ~*(v263 + 80);
          v151 = *(v263 + 72);
          v244 = inited;
          v261 = *(v263 + 16);
          v152 = v257;
          (v261)(v257, v147 + v150 + v151 * inited, v57);
          v153 = swift_allocBox();
          v154 = v57;
          v155 = *v237;
          v258 = v156;
          v155(v156, 1, 1, v269);
          v157 = swift_allocObject();
          v157[2] = 0;
          v157[3] = 0;
          v157[4] = v153;
          *&v265 = objc_opt_self();
          v259 = v153;

          sub_2557B0948();
          v262 = sub_2557B0C08();

          v158 = v253;
          (v261)(v253, v152, v154);
          v159 = v150 + v245;
          v160 = swift_allocObject();
          *(v160 + 16) = sub_25579EC4C;
          *(v160 + 24) = v157;
          (*(v149 + 32))(v160 + v150, v158, v154);
          *(v160 + v159) = 5;
          v277 = sub_2557ACB2C;
          v278 = v160;
          aBlock = MEMORY[0x277D85DD0];
          v274 = 1107296256;
          v275 = sub_25579D364;
          v276 = &block_descriptor_38;
          v161 = _Block_copy(&aBlock);

          aBlock = 0;
          v162 = v262;
          v163 = [v265 InspectCompatibleHWSEFW:v262 closure:v161 error:&aBlock];
          _Block_release(v161);

          if (!v163)
          {
            break;
          }

          v164 = aBlock;

          v165 = v258;
          swift_beginAccess();
          v166 = v249;
          sub_2557ABFFC(v165, v249, &qword_27F7D3128, &unk_2557B2530);
          v167 = *v232;
          v168 = v269;
          if ((*v232)(v166, 1, v269) == 1)
          {

            sub_255799CFC(v166, &qword_27F7D3128, &unk_2557B2530);
            sub_25578AA30();
            swift_allocError();
            *v218 = xmmword_2557B24A0;
            *(v218 + 16) = 7;
            swift_willThrow();
LABEL_129:

            (*v234)(v257, v267);

            v219 = &v279;
LABEL_137:
            v224 = *(v219 - 32);

            goto LABEL_3;
          }

          sub_255799CFC(v166, &qword_27F7D3128, &unk_2557B2530);
          v169 = v248;
          sub_2557ABFFC(v165, v248, &qword_27F7D3128, &unk_2557B2530);
          result = (v167)(v169, 1, v168);
          if (result == 1)
          {
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          sub_2557AC95C(v169, v255, type metadata accessor for SLAMScript);

          v170 = swift_isUniquelyReferenced_nonNull_native();
          v68 = v256;
          v56 = v254;
          v148 = v260;
          if (v170)
          {
            v57 = v267;
            v171 = v271;
          }

          else
          {
            v171 = sub_255794864(0, *(v271 + 2) + 1, 1, v271);
            v57 = v267;
          }

          v173 = *(v171 + 2);
          v172 = *(v171 + 3);
          v83 = v173 + 1;
          if (v173 >= v172 >> 1)
          {
            v271 = sub_255794864(v172 > 1, v173 + 1, 1, v171);
          }

          else
          {
            v271 = v171;
          }

          v174 = v244 + 1;
          (*v234)(v257, v57);
          v175 = v271;
          *(v271 + 2) = v83;
          v176 = &v175[((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v173];
          inited = v174;
          sub_2557AC95C(v255, v176, type metadata accessor for SLAMScript);
          v147 = v231;
          if (v233 == v174)
          {
            goto LABEL_100;
          }
        }

        v217 = aBlock;

        sub_2557B0908();

        swift_willThrow();

        goto LABEL_129;
      }
    }

    else
    {
      v57 = v267;
      v68 = v256;
      v56 = v254;
      v148 = v260;
    }

LABEL_100:
    if (!v252 || (v248 = *(v252 + 2)) == 0)
    {
LABEL_114:
      v208 = *(v242 + 112);

      if (v208)
      {
        v209 = v264;
        v210 = sub_25579DFD8(v238 + v230, v208);
        v68 = v241;
        v211 = v240;
        v212 = v239;
        if (v209)
        {

          goto LABEL_117;
        }

        v83 = 0;
        inited = v210;
        if (v210)
        {
          v220 = *(v210 + 2);
          if (v220)
          {
            v270 = &v210[(*(v268 + 80) + 32) & ~*(v268 + 80)];
            sub_2557ABF34(v270, v148, type metadata accessor for SLAMScript);
            v221 = 0;
            if (v220 != 1)
            {
              v225 = 1;
              v56 = v269;
              do
              {
                v226 = v221;
                v81 = *(inited + 16);
                if (v225 >= v81)
                {
                  goto LABEL_152;
                }

                v68 = v243;
                sub_2557ABF34(&v270[*(v268 + 72) * v225], v243, type metadata accessor for SLAMScript);
                v227 = v260;
                v83 = [*&v260[*(v56 + 28)] codRequired];
                if (v83 >= [*(v68 + *(v56 + 28)) codRequired])
                {
                  sub_2557ABF9C(v68, type metadata accessor for SLAMScript);
                }

                else
                {
                  sub_2557ABF9C(v227, type metadata accessor for SLAMScript);
                  sub_2557AC95C(v68, v227, type metadata accessor for SLAMScript);
                }

                v221 = v226;
                v148 = v227;
              }

              while (v220 != ++v225);
            }

            v212 = v239;
            sub_2557AC95C(v148, v239, type metadata accessor for SLAMScript);
            v216 = 0;
            v68 = v241;
            v211 = v240;
LABEL_125:
            (*(v268 + 56))(v212, v216, 1, v269);
            sub_25579E948(v212, v211);

            *v68 = v271;
            goto LABEL_3;
          }

LABEL_124:
          v216 = 1;
          goto LABEL_125;
        }
      }

      else
      {
        v68 = v241;
        v211 = v240;
        v212 = v239;
      }

      goto LABEL_124;
    }

    v177 = 0;
    v259 = v263 + 16;
    v258 = (v268 + 56);
    v257 = (v263 + 32);
    v255 = &v275;
    v249 = (v263 + 8);
    v244 = (v268 + 48);
    while (1)
    {
      v81 = *(v252 + 2);
      if (v177 >= v81)
      {
        break;
      }

      v178 = &v252[(v270[80] + 32) & ~v270[80]];
      v179 = *(v270 + 9);
      v261 = v177;
      v180 = &v178[v179 * v177];
      v181 = v263;
      v182 = *(v263 + 16);
      v182(v68, v180, v57);
      v183 = swift_allocBox();
      v185 = v184;
      (*v258)(v184, 1, 1, v269);
      v186 = swift_allocObject();
      v186[2] = 0;
      v186[3] = 0;
      v186[4] = v183;
      *&v266 = objc_opt_self();
      v262 = v183;

      sub_2557B0948();
      *&v265 = sub_2557B0C08();

      v187 = v253;
      v188 = v68;
      v189 = v267;
      v182(v253, v188, v267);
      v190 = (*(v181 + 80) + 32) & ~*(v181 + 80);
      v191 = v190 + v245;
      v192 = swift_allocObject();
      *(v192 + 16) = sub_25579E5CC;
      *(v192 + 24) = v186;
      (*(v181 + 32))(v192 + v190, v187, v189);
      *(v192 + v191) = 6;
      v277 = sub_2557AC9CC;
      v278 = v192;
      aBlock = MEMORY[0x277D85DD0];
      v274 = 1107296256;
      v275 = sub_25579D364;
      v276 = &block_descriptor_1;
      v193 = _Block_copy(&aBlock);

      aBlock = 0;
      v194 = v265;
      LODWORD(v191) = [v266 InspectCompatibleHWSEFW:v265 closure:v193 error:&aBlock];
      _Block_release(v193);

      if (!v191)
      {
        v222 = aBlock;

        sub_2557B0908();

        swift_willThrow();

LABEL_136:

        (*v249)(v256, v267);

        v219 = &v280;
        goto LABEL_137;
      }

      v195 = aBlock;

      swift_beginAccess();
      v196 = v247;
      sub_2557ABFFC(v185, v247, &qword_27F7D3128, &unk_2557B2530);
      v197 = *v244;
      v198 = v269;
      if ((*v244)(v196, 1, v269) == 1)
      {

        sub_255799CFC(v196, &qword_27F7D3128, &unk_2557B2530);
        sub_25578AA30();
        swift_allocError();
        *v223 = xmmword_2557B24A0;
        *(v223 + 16) = 7;
        swift_willThrow();
        goto LABEL_136;
      }

      sub_255799CFC(v196, &qword_27F7D3128, &unk_2557B2530);
      v199 = v246;
      sub_2557ABFFC(v185, v246, &qword_27F7D3128, &unk_2557B2530);
      result = v197(v199, 1, v198);
      v68 = v256;
      if (result == 1)
      {
        goto LABEL_155;
      }

      v57 = v267;
      (*v249)(v256, v267);
      sub_2557AC95C(v199, v251, type metadata accessor for SLAMScript);

      v200 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v254;
      v148 = v260;
      v201 = v261;
      if (v200)
      {
        v202 = v271;
      }

      else
      {
        v202 = sub_255794864(0, *(v271 + 2) + 1, 1, v271);
      }

      inited = *(v202 + 2);
      v203 = *(v202 + 3);
      v83 = inited + 1;
      v204 = v268;
      v205 = v251;
      if (inited >= v203 >> 1)
      {
        v207 = sub_255794864(v203 > 1, inited + 1, 1, v202);
        v204 = v268;
        v202 = v207;
        v205 = v251;
      }

      v177 = v201 + 1;
      *(v202 + 2) = v83;
      v206 = (*(v204 + 80) + 32) & ~*(v204 + 80);
      v271 = v202;
      sub_2557AC95C(v205, &v202[v206 + *(v204 + 72) * inited], type metadata accessor for SLAMScript);
      if (v248 == v177)
      {
        goto LABEL_114;
      }
    }

    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v80 = sub_255794864(v81 > 1, v83, 1, v80);
LABEL_23:
    v84 = v268;
    *(v80 + 2) = v83;
    v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v86 = *(v84 + 72);
    v87 = v80;
    sub_2557AC95C(v252, &v80[v85 + v86 * inited], type metadata accessor for SLAMScript);
    v88 = v264;
    sub_25579B208(v68 + v238, v235);
    if (v88)
    {
      break;
    }

    v264 = 0;
    v214 = *(v87 + 2);
    v213 = *(v87 + 3);
    if (v214 >= v213 >> 1)
    {
      v87 = sub_255794864(v213 > 1, v214 + 1, 1, v87);
    }

    v70 = v267;
    *(v87 + 2) = v214 + 1;
    v271 = v87;
    sub_2557AC95C(v235, &v87[v85 + v214 * v86], type metadata accessor for SLAMScript);
  }

LABEL_117:

LABEL_3:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2557A8AD8(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v39 = sub_2557B0A88();
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v35 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = v34 - v11;
  v12 = a1[1];
  v42[0] = *a1;
  v42[1] = v12;
  v42[2] = a1[2];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = a1[1];
  *(v15 + 24) = *a1;
  *(v15 + 40) = v16;
  *(v15 + 56) = a1[2];
  *(v15 + 72) = v14;
  *(v15 + 80) = a2;
  v36 = a2;
  *(v15 + 88) = a3;
  sub_255793B04(v4 + 16, v41);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v18 = swift_allocObject();
  sub_2557ABE30(v41, v18 + 16);
  *(v18 + 48) = sub_2557AC0C4;
  *(v18 + 56) = v15;
  *(inited + 16) = v18;
  *(inited + 24) = &off_2867913F0;
  sub_2557AC0F8(v42, v40);

  sub_2557AC0F8(v42, v40);
  v19 = qword_27F7D2DE8;

  v20 = v4;

  v38 = v13;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_2557B0AB8();
  __swift_project_value_buffer(v21, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  v22 = sub_2557B0AA8();
  v23 = sub_2557B0E38();
  if (sub_2557B0E48())
  {
    v24 = swift_slowAlloc();
    v34[1] = v14;
    v25 = v24;
    *v24 = 0;
    v26 = sub_2557B0A78();
    _os_signpost_emit_with_name_impl(&dword_255786000, v22, v23, v26, "internal_execute-server-asset", "", v25, 2u);
    MEMORY[0x259C40F40](v25, -1, -1);
  }

  v27 = v37;
  v28 = v39;
  (*(v37 + 16))(v35, v43, v39);
  v29 = sub_2557B0AF8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_2557B0AE8();
  sub_2557A9008(v42, inited, v20, v36, a3);
  sub_2557920B8("internal_execute-server-asset", 29, 2);

  (*(v27 + 8))(v43, v28);
  sub_2557AC154(v42);

  swift_setDeallocating();
  v32 = *(inited + 16);
  swift_unknownObjectRelease();
}

uint64_t sub_2557A8F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  result = swift_beginAccess();
  v13 = *(a5 + 16);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  *(a5 + 16) = v14;
  v15 = 99 * v14;
  if ((v14 * 99) >> 64 != (99 * v14) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(a6 + 32);
  if (v16 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v16)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v17 = v15 / v16;
  if (v17 >= 99)
  {
    v18 = 99;
  }

  else
  {
    v18 = v17;
  }

  result = swift_beginAccess();
  if (*(a7 + 16) != v18)
  {
    swift_beginAccess();
    *(a7 + 16) = v18;
    return a8(v18);
  }

  return result;
}

void sub_2557A9008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v11 = type metadata accessor for SLAMScript(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (!v19)
  {
    return;
  }

  v36 = v15;
  v37 = a5;
  v38 = a4;
  v35 = a3;
  v20 = v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v21 = *(v14 + 72);
  while (1)
  {
    sub_2557ABF34(v20, v17, type metadata accessor for SLAMScript);
    v22 = *(a2 + 16);
    sub_25579C5A4(v17);
    if (v5)
    {
      break;
    }

    sub_2557ABF9C(v17, type metadata accessor for SLAMScript);
    v20 += v21;
    if (!--v19)
    {
      v38(100);
      if (qword_27F7D2DD0 != -1)
      {
        swift_once();
      }

      sub_255788A54();
      return;
    }
  }

  if (v17[*(v11 + 24)] == 6)
  {
  }

  else
  {
    v23 = sub_2557B0F98();

    if ((v23 & 1) == 0)
    {
      if (qword_27F7D2E18 != -1)
      {
        swift_once();
      }

      v29 = sub_2557B0B38();
      __swift_project_value_buffer(v29, qword_27F7D31B8);
      v30 = sub_2557B0B18();
      v31 = sub_2557B0DD8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_255786000, v30, v31, "An error has occured when processing assets, trying to deleting SSD", v32, 2u);
        MEMORY[0x259C40F40](v32, -1, -1);
      }

      v33 = v36;
      sub_25579AF88(v35 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw, v36);
      sub_25579C5A4(v33);
      sub_2557ABF9C(v33, type metadata accessor for SLAMScript);
      goto LABEL_17;
    }
  }

  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v24 = sub_2557B0B38();
  __swift_project_value_buffer(v24, qword_27F7D31B8);
  v25 = sub_2557B0B18();
  v26 = sub_2557B0DD8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_255786000, v25, v26, "An error has occured when processing profile asset, aborting", v27, 2u);
    MEMORY[0x259C40F40](v27, -1, -1);
  }

LABEL_17:
  sub_25578AA30();
  swift_allocError();
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 7;
  swift_willThrow();

  sub_2557ABF9C(v17, type metadata accessor for SLAMScript);
  if (qword_27F7D2DD0 != -1)
  {
    swift_once();
  }

  sub_255788A54();
}

uint64_t sub_2557A95EC(uint64_t a1)
{
  v4 = type metadata accessor for SLAMScript(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 30;
  sub_255793B04(v1 + 16, v12);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v9 = swift_allocObject();
  sub_2557ABE30(v12, v9 + 16);
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(inited + 16) = v9;
  *(inited + 24) = &off_2867913F0;
  sub_25579BB90(a1, v7);
  if (!v2)
  {
    sub_25579C5A4(v7);
    sub_2557ABF9C(v7, type metadata accessor for SLAMScript);
  }
}

uint64_t sub_2557A976C()
{
  sub_255793B04(v0 + 16, v6);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v2 = swift_allocObject();
  sub_2557ABE30(v6, v2 + 16);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(inited + 16) = v2;
  *(inited + 24) = &off_2867913F0;

  sub_255791870("api_remove-unused-asset", 23, 2, 0, 0, v0, inited, v3);
  swift_setDeallocating();
  v4 = *(inited + 16);
  return swift_unknownObjectRelease();
}

uint64_t sub_2557A9840(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SLAMScript(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_2557923C8("api_device-state", 0x10, 2, 0, 0, a1, 0);
  if (v2)
  {
  }

  v10 = v9;

  v11 = *(v10 + 112);
  if (!v11)
  {
  }

  v12 = *(a1 + 48);
  type metadata accessor for GetData();
  inited = swift_initStackObject();
  *(inited + 35) = 2;
  LOBYTE(v62[0]) = 1;
  *v64 = -1006581120;
  *&v64[8] = 0;
  *&v64[16] = 256;
  v64[18] = 0;
  v65 = -1006581120;
  v66 = 0;
  v67 = 256;
  v68 = 0;

  sub_25578BBE4(v64, v63);
  sub_25578BC40(&v65);
  v14 = *&v64[15];
  *(inited + 16) = *v64;
  *(inited + 31) = v14;
  v15 = sub_255792F64(inited, &unk_286790B00);
  v59 = v8;
  v56 = a2;
  v17 = sub_2557ABD08(v15);
  v19 = v18;

  v20 = sub_2557902CC(v17, v19);
  sub_25578AAE0(v17, v19);
  swift_setDeallocating();
  *v63 = *(inited + 16);
  *&v63[15] = *(inited + 31);
  result = sub_25578BC40(v63);
  v60 = *(v11 + 16);
  if (!v60)
  {
LABEL_54:
  }

  v53 = v10;
  v22 = 0;
  v57 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  *&v21 = 136446210;
  v54 = v21;
  v52 = xmmword_2557B1770;
  v55 = v11;
  v23 = v56;
  v58 = v20;
  while (v22 < *(v11 + 16))
  {
    v24 = *(v11 + v22 + 32);
    if (*(v20 + 16))
    {
      result = sub_2557896D0(*(v11 + v22 + 32));
      if (v25)
      {
        goto LABEL_7;
      }
    }

    v26 = sub_2557911E8(v24);
    if (v26 > 5)
    {
      if (v26 > 8)
      {
        if (v26 == 9)
        {
          v28 = 0xE700000000000000;
          v27 = 0x63617265746E49;
        }

        else
        {
          if (v26 != 10)
          {
            if (qword_27F7D2E18 != -1)
            {
              swift_once();
            }

            v39 = sub_2557B0B38();
            __swift_project_value_buffer(v39, qword_27F7D31B8);
            v40 = sub_2557B0B18();
            v41 = sub_2557B0DD8();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v51 = v42;
              v61 = swift_slowAlloc();
              v62[0] = v61;
              *v42 = v54;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
              v43 = swift_allocObject();
              *(v43 + 16) = v52;
              *(v43 + 56) = MEMORY[0x277D84B78];
              *(v43 + 64) = MEMORY[0x277D84BC0];
              *(v43 + 32) = v24;
              v44 = sub_2557B0C48();
              v46 = sub_2557AAA60(v44, v45, v62);

              v47 = v51;
              *(v51 + 1) = v46;
              v23 = v56;
              v48 = v47;
              _os_log_impl(&dword_255786000, v40, v41, "Trying to delete unknown applet with id %{public}s", v47, 0xCu);
              v49 = v61;
              __swift_destroy_boxed_opaque_existential_0(v61);
              MEMORY[0x259C40F40](v49, -1, -1);
              MEMORY[0x259C40F40](v48, -1, -1);
            }

            v20 = v58;
            goto LABEL_48;
          }

          v28 = 0xE700000000000000;
          v27 = 0x6E776F6E6B6E55;
        }
      }

      else if (v26 == 6)
      {
        v28 = 0xE300000000000000;
        v27 = 4804693;
      }

      else
      {
        if (v26 == 7)
        {
          v27 = 0x534F50544645;
        }

        else
        {
          v27 = 2020505932;
        }

        if (v26 == 7)
        {
          v28 = 0xE600000000000000;
        }

        else
        {
          v28 = 0xE400000000000000;
        }
      }
    }

    else if (v26 > 2)
    {
      if (v26 == 3)
      {
        v28 = 0xE400000000000000;
        v27 = 2019913025;
      }

      else
      {
        if (v26 == 4)
        {
          v27 = 4342602;
        }

        else
        {
          v27 = 0x7265766F63736944;
        }

        if (v26 == 4)
        {
          v28 = 0xE300000000000000;
        }

        else
        {
          v28 = 0xE800000000000000;
        }
      }
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        v27 = 0x616372657473614DLL;
      }

      else
      {
        v27 = 1634953558;
      }

      if (v26 == 1)
      {
        v28 = 0xEA00000000006472;
      }

      else
      {
        v28 = 0xE400000000000000;
      }
    }

    else
    {
      v28 = 0xE400000000000000;
      v27 = 1701999952;
    }

    LODWORD(v61) = v24;
    if (qword_27F7D2E18 != -1)
    {
      swift_once();
    }

    v29 = sub_2557B0B38();
    __swift_project_value_buffer(v29, qword_27F7D31B8);

    v30 = sub_2557B0B18();
    v31 = sub_2557B0DE8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69 = v33;
      *v32 = v54;

      v62[0] = v27;
      v62[1] = v28;
      v34 = sub_2557B0D68();
      v36 = sub_2557AAA60(v34, v35, &v69);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_255786000, v30, v31, "Deleting applet %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C40F40](v33, -1, -1);
      v23 = v56;
      MEMORY[0x259C40F40](v32, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v11 = v55;
    v20 = v58;
    LOBYTE(v24) = v61;
LABEL_48:
    v37 = v59;
    sub_25579B498(a1 + v57, v24, v59);
    v38 = *(v23 + 16);
    sub_25579C5A4(v37);
    result = sub_2557ABF9C(v37, type metadata accessor for SLAMScript);
LABEL_7:
    if (v60 == ++v22)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2557AA114()
{
  v2 = v1;
  v3 = *(v0 + 48);
  type metadata accessor for GetData();
  inited = swift_initStackObject();
  *(inited + 35) = 5;
  v12 = 1;
  *v13 = -922695040;
  *&v13[8] = 0;
  *&v13[16] = 256;
  v13[18] = 0;
  v14 = -922695040;
  v15 = 0;
  v16 = 256;
  v17 = 0;
  sub_25578BBE4(v13, v11);
  sub_25578BC40(&v14);
  v5 = *&v13[15];
  *(inited + 16) = *v13;
  *(inited + 31) = v5;
  v6 = sub_255792F64(inited, &unk_286790D48);
  if (!v1)
  {
    v7 = sub_2557ABD08(v6);
    v9 = v8;

    v2 = sub_25578F7D0(v7, v9);
    sub_25578AAE0(v7, v9);
  }

  swift_setDeallocating();
  *v11 = *(inited + 16);
  *&v11[15] = *(inited + 31);
  sub_25578BC40(v11);
  return v2;
}

uint64_t (*sub_2557AA2C0(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t), int8x8_t a4))(uint64_t, unint64_t)
{
  v10 = *(v4 + 48);
  type metadata accessor for GetData();
  inited = swift_initStackObject();
  *(inited + 35) = a1;
  v25 = 1;
  *v20 = vuzp1_s8(a4, v12).u32[0];
  *&v20[8] = 0;
  *&v20[16] = 256;
  v20[18] = 0;
  v21 = *v20;
  v22 = 0;
  v23 = 256;
  v24 = 0;
  sub_25578BBE4(v20, v19);
  sub_25578BC40(&v21);
  v13 = *&v20[15];
  *(inited + 16) = *v20;
  *(inited + 31) = v13;
  v14 = sub_255792F64(inited, a2);
  if (!v5)
  {
    v15 = sub_2557ABD08(v14);
    v17 = v16;

    a3 = a3(v15, v17);
    sub_25578AAE0(v15, v17);
  }

  swift_setDeallocating();
  *v19 = *(inited + 16);
  *&v19[15] = *(inited + 31);
  sub_25578BC40(v19);
  return a3;
}

uint64_t sub_2557AA434()
{
  v2 = *(v0 + 48);
  type metadata accessor for Select();
  swift_initStackObject();
  v3 = sub_25578C0EC(0);
  v4 = sub_255792F64(v3, &unk_286790D70);
  if (v1)
  {
  }

  v6 = sub_2557ABD08(v4);
  v8 = v7;

  return sub_25578AAE0(v6, v8);
}

uint64_t sub_2557AA504(char a1)
{
  v4 = type metadata accessor for SLAMScript(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 30;
  sub_255793B04(v1 + 16, v13);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v9 = swift_allocObject();
  sub_2557ABE30(v13, v9 + 16);
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(inited + 16) = v9;
  *(inited + 24) = &off_2867913F0;
  v10 = v1 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  if (a1)
  {
    sub_25579B8C4(v10, v7);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_25579AF88(v10, v7);
    if (!v2)
    {
LABEL_5:
      sub_25579C5A4(v7);
      sub_2557ABF9C(v7, type metadata accessor for SLAMScript);
    }
  }
}

uint64_t sub_2557AA6A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255793B04(a1 + 16, v13);
  v3 = type metadata accessor for SEInterface();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_255793B04(v13, v6 + 16);
  if (qword_27F7D2DF0 != -1)
  {
    swift_once();
  }

  v7 = sub_2557B0B38();
  v8 = __swift_project_value_buffer(v7, qword_27F7D3018);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v8, v7);
  sub_25578BB90(v13);
  sub_255793BE0(a2);
  swift_setDeallocating();
  sub_25578BB90(v6 + 16);
  (*(v9 + 8))(v6 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v7);
  v10 = *(*v6 + 48);
  v11 = *(*v6 + 52);
  return swift_deallocClassInstance();
}

unint64_t static KernelManager.getDefaultSEFWPath(isProduction:)(char a1)
{
  if (a1)
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t KernelManager.deinit()
{
  sub_25578BB90(v0 + 16);
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  v3 = sub_2557B0968();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 48);
  v5 = *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 56);
  v7 = *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 64);
  sub_2557AC1A8(*(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 8), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 16), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 24), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 32), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 40));
  return v0;
}

uint64_t KernelManager.__deallocating_deinit()
{
  sub_25578BB90((v0 + 16));
  v1 = *(v0 + 6);

  v2 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  v3 = sub_2557B0968();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 48];
  v5 = *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 56];
  v9 = *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 64];
  sub_2557AC1A8(*&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState], *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 8], *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 16], *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 24], *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 32], *&v0[OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 40]);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2557AA9DC()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D31B8);
  __swift_project_value_buffer(v0, qword_27F7D31B8);
  return sub_2557B0B28();
}

uint64_t sub_2557AAA60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2557AAB2C(v11, 0, 0, 1, a1, a2);
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
    sub_25578AC88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2557AAB2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2557AAC38(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2557B0F18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2557AAC38(uint64_t a1, unint64_t a2)
{
  v4 = sub_2557AAC84(a1, a2);
  sub_255794A3C(&unk_286790708);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2557AAC84(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2557ADB20(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2557B0F18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2557B0CE8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2557ADB20(v10, 0);
        result = sub_2557B0EE8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_2557AADB4@<X0>(void *(*a1)(uint64_t *__return_ptr, char *, char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *v2;
  v7 = v2[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 == 2)
    {

      sub_25578AAE0(v8, v7);
      *&v28 = v8;
      *(&v28 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_2557B2830;
      sub_25578AAE0(0, 0xC000000000000000);
      sub_2557B0978();
      v12 = *(&v28 + 1);
      result = sub_2557AB2A8(*(v28 + 16), *(v28 + 24), a1, &v29);
      v13 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
      *v4 = v28;
      v4[1] = v12 | 0x8000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(&v28 + 7) = 0;
      *&v28 = 0;
      result = a1(&v29, &v28, &v28);
      if (v3)
      {
        goto LABEL_21;
      }

      v13 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
    }

LABEL_20:
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    goto LABEL_21;
  }

  v26 = a2;
  if (v9)
  {
    v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25578AAE0(v8, v7);
    *v2 = xmmword_2557B2830;
    sub_25578AAE0(0, 0xC000000000000000);
    v18 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v18 < v8)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_2557B0868() && __OFSUB__(v8, sub_2557B0888()))
      {
LABEL_24:
        __break(1u);
      }

      v20 = sub_2557B0898();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_2557B0848();

      v17 = v23;
    }

    if (v18 >= v8)
    {

      sub_2557AB2A8(v8, v8 >> 32, a1, &v29);
      v13 = v29;
      v27 = v30;
      v15 = v31;
      v16 = v32;

      *v4 = v8;
      v4[1] = v17 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }

      a2 = v26;
      v14 = v27;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_25578AAE0(v8, v7);
  *&v28 = v8;
  WORD4(v28) = v7;
  BYTE10(v28) = BYTE2(v7);
  BYTE11(v28) = BYTE3(v7);
  BYTE12(v28) = BYTE4(v7);
  BYTE13(v28) = BYTE5(v7);
  BYTE14(v28) = BYTE6(v7);
  result = a1(&v29, &v28, &v28 + BYTE6(v7));
  if (!v3)
  {
    v13 = v29;
    v14 = v30;
    v15 = v31;
    v16 = v32;
    v19 = DWORD2(v28) | ((WORD6(v28) | (BYTE14(v28) << 16)) << 32);
    *v2 = v28;
    v2[1] = v19;
    goto LABEL_20;
  }

  v11 = DWORD2(v28) | ((WORD6(v28) | (BYTE14(v28) << 16)) << 32);
  *v2 = v28;
  v2[1] = v11;
LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2557AB18C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2557ABB50(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2557ABC08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2557ABC84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2557AB220@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v12;
      v8 = v13;
      v9 = v11;
      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 24) = v7;
      *(a4 + 32) = v8;
      return result;
    }
  }

  else
  {
    result = a1(&v10, 0, 0);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_2557AB2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_2557B0868();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_2557B0888();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_2557B0878();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v21;
    v17 = v22;
    v18 = v20;
    *a4 = v19;
    *(a4 + 8) = v18;
    *(a4 + 24) = v16;
    *(a4 + 32) = v17;
  }

  return result;
}

char *sub_2557AB37C(char *a1, int64_t a2, char a3)
{
  result = sub_2557ADBA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2557AB39C(char *a1, int64_t a2, char a3)
{
  result = sub_2557ADCB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2557AB3BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3258, &qword_2557B2A20);
  result = sub_2557B0ED8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      result = MEMORY[0x259C409A0](*(v6 + 40), v18, 1);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2557AB5EC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2557AB3BC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2557AB710();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2557AB850(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x259C409A0](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2557B0FA8();
  __break(1u);
  return result;
}

void *sub_2557AB710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3258, &qword_2557B2A20);
  v2 = *v0;
  v3 = sub_2557B0EC8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2557AB850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3258, &qword_2557B2A20);
  result = sub_2557B0ED8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      result = MEMORY[0x259C409A0](*(v6 + 40), v17, 1);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

__n128 sub_2557ABA44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 24);
  v13 = *a3;
  v14 = *(a3 + 1);
  v15 = v5;
  sub_2557AB220(sub_2557AC828, a1, a2, &v9);
  v6 = v11;
  v7 = v12;
  result = v10;
  *a4 = v9;
  *(a4 + 8) = result;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  return result;
}

void *sub_2557ABADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2557AC848(a1, a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), v11);
  if (!v4)
  {
    v7 = v11[1];
    v8 = v11[2];
    v9 = v12;
    v10 = v13;
    *a4 = v11[0];
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
  }

  return result;
}

uint64_t sub_2557ABB50(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2557ABC08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2557B0898();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2557B0858();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2557B0998();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2557ABC84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2557B0898();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2557B0858();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2557ABD08(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3248, &unk_2557B2A10);
  v10 = sub_25579AEE8(&qword_27F7D3250, &qword_27F7D3248, &unk_2557B2A10);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2557AB18C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t type metadata accessor for KernelManager()
{
  result = qword_27F7D3210;
  if (!qword_27F7D3210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2557ABEAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2557ABF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2557ABF9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2557ABFFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2557AC074()
{
  v1 = v0[2];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2557AC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_2557AC1FC()
{
  result = qword_27F7D3208;
  if (!qword_27F7D3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3208);
  }

  return result;
}

uint64_t sub_2557AC258()
{
  result = sub_2557B0968();
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

uint64_t sub_2557AC7D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_2557AC848@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *(*a4)(char *__return_ptr, uint64_t *)@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v16 = a3;
  if (!result)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v10 = a2;
  if (!a2)
  {
LABEL_17:
    *a7 = a3;
    *(a7 + 8) = a4;
    *(a7 + 16) = a5;
    *(a7 + 24) = a6 & 1;
    *(a7 + 32) = v10;
    return result;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a6)
    {
      v10 = 0;
      a6 = 1;
LABEL_16:
      a3 = v16;
      goto LABEL_17;
    }

    v11 = result;
    result = a4(&v14, &v16);
    if (v15)
    {
      v12 = 0;
LABEL_9:
      v10 = v12;
      a6 = 1;
      goto LABEL_16;
    }

    *v11 = v14;
    if (v10 == 1)
    {
LABEL_15:
      a6 = 0;
      goto LABEL_16;
    }

    v12 = 1;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      result = a4(&v14, &v16);
      if (v15)
      {
        goto LABEL_9;
      }

      v11[v12++] = v14;
      if (v13 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2557AC95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_2557B0968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2557ACB04(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

unint64_t KernelManagerError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      if (v3 == 2)
      {
        sub_2557B0EF8();

        v8 = "Provided SLAM or SEFW is not readable: ";
      }

      else
      {
        sub_2557B0EF8();

        v8 = "The script name has an invalid format: ";
      }

      v4 = (v8 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000027;
    }

    else
    {
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      if (v3)
      {
        sub_2557B0EF8();

        v4 = 0x80000002557B3FC0;
        v5 = 0xD000000000000029;
      }

      else
      {
        sub_2557B0EF8();

        v4 = 0x80000002557B3FF0;
        v5 = 0xD00000000000002ALL;
      }
    }

LABEL_16:
    v10[0] = v5;
    v10[1] = v4;
    goto LABEL_17;
  }

  if (*(v0 + 16) <= 5u)
  {
    if (v3 == 4)
    {
      v6 = v0[1];

      return v2;
    }

    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_2557B0EF8();

    v4 = 0x80000002557B3C80;
    v5 = 0xD00000000000001ALL;
    goto LABEL_16;
  }

  if (v3 == 6)
  {
    strcpy(v10, "Fatal Error: ");
    HIWORD(v10[1]) = -4864;
LABEL_17:
    MEMORY[0x259C40650](v2, v1);
    return v10[0];
  }

  result = 0x206E776F6E6B6E55;
  v9 = *v0;
  switch(v2)
  {
    case 1:
      result = 0xD00000000000004CLL;
      break;
    case 2:
      result = 0xD000000000000048;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
      result = 0xD00000000000002BLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000033;
      break;
    case 8:
      result = 0xD00000000000004FLL;
      break;
    case 9:
      result = 0xD000000000000028;
      break;
    case 10:
      result = 0xD000000000000032;
      break;
    case 11:
      result = 0xD000000000000036;
      break;
    case 12:
      return result;
    default:
      result = 0xD000000000000031;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20KernelManagerLibrary0aB5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2557ACF4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2557ACF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2557ACFD8(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t SEMemoryInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2557B0EF8();

  v5 = sub_2557B0F88();
  MEMORY[0x259C40650](v5);

  MEMORY[0x259C40650](0x203A524F43202CLL, 0xE700000000000000);
  v6 = sub_2557B0F88();
  MEMORY[0x259C40650](v6);

  MEMORY[0x259C40650](0x203A444F43202CLL, 0xE700000000000000);
  v7 = sub_2557B0F88();
  MEMORY[0x259C40650](v7);

  MEMORY[0x259C40650](0x203A584449202CLL, 0xE700000000000000);
  v8 = sub_2557B0F88();
  MEMORY[0x259C40650](v8);

  return 0x203A4D564ELL;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2557AD1AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2557AD1CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t SESessionWrapper.seid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void SESessionWrapper.session.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*SESessionWrapper.session.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2557AD2D4;
}

void sub_2557AD2D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  swift_unknownObjectWeakAssign();
}

void SESessionWrapper.init(seid:isProduction:session:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  swift_unknownObjectWeakInit();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2557AD388@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255793B04(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_25578BB90(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_2557AD3E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2557AD42C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_2557AD490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 19))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2557AD4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2557AD554(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = a1;
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = *(a2 + 16);
    if (HIDWORD(v6))
    {
      __break(1u);
    }

    if (v6 >> 23)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 16);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = HIWORD(a3) & 1;
  v9 = HIBYTE(a1);
  v10 = HIWORD(a1);
  v11 = a1 >> 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2557B2D20;
  *(v12 + 32) = v5;
  *(v12 + 33) = v11;
  *(v12 + 34) = v10;
  *(v12 + 35) = v9;
  if (v7 > 0xFF)
  {
    v8 = 1;
  }

  inited = swift_initStackObject();
  if (v8 == 1)
  {
    *(inited + 16) = xmmword_2557B2D30;
    *(inited + 32) = BYTE2(v7);
    *(inited + 33) = BYTE1(v7);
    v14 = (inited + 34);
  }

  else
  {
    *(inited + 16) = xmmword_2557B1770;
    v14 = (inited + 32);
  }

  *v14 = v7;
  sub_255794A3C(inited);

  v16 = sub_2557ABD08(v15);
  v18 = v17;

  v26 = v16;
  v27 = v18;
  if (a2 && *(a2 + 16))
  {
    sub_2557B09B8();
  }

  if (v8)
  {
    sub_2557B09B8();
  }

  else if ((v3 & 0x100) == 0)
  {
    if (v27 >> 62 == 2)
    {
      v19 = *(v26 + 24);
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3268, " $");
    v25 = sub_2557ADF68();
    LOBYTE(v23[0]) = v3;
    v22 = *__swift_project_boxed_opaque_existential_1(v23, v24);
    sub_2557B09A8();
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  result = v26;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2557AD7B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2557B0A18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_25578AAE0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2557ADB20(v11, 0);
      v15 = sub_2557B0988();
      sub_25578AAE0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_2557AD930(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_26:

    return v7;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = v3 - 1;
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v17 = result;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    v11 = *(v8 + 16);
    if (v11 < v2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2557AB39C(0, v11 + 1, 1);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2557AB39C((v12 > 1), v13 + 1, 1);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + v13 + 32) = v9;
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v4 >= v11)
    {
      break;
    }

    v14 = *(v8 + v4 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2557AB39C(0, *(v7 + 16) + 1, 1);
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2557AB39C((v15 > 1), v16 + 1, 1);
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2557ADB94(v8);
      v8 = result;
    }

    v2 = v17;
    if (v4 >= *(v8 + 16))
    {
      goto LABEL_29;
    }

    *(v8 + v4++ + 32) = v9;
    if (v4 < v17)
    {
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v4 = 0;
    }

LABEL_6:
    --v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_2557ADB20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2557ADBA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3068, &qword_2557B1FF0);
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

char *sub_2557ADCB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
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

uint64_t sub_2557ADDA8(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_25578AA30();
      swift_allocError();
      *v9 = xmmword_2557B2D40;
      *(v9 + 16) = 7;
      return swift_willThrow();
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (HIDWORD(result) - result < 2)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (v4 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v10 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v4 != 1)
  {
    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = HIDWORD(result) - result;
LABEL_19:
  result = v10 - 2;
  if (__OFSUB__(v10, 2))
  {
    __break(1u);
    goto LABEL_32;
  }

  sub_2557B09D8();
  result = sub_2557B09D8();
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      LODWORD(v13) = HIDWORD(v3) - v3;
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        v13 = v13;
        goto LABEL_28;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v7 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v7)
  {
    __break(1u);
LABEL_27:
    v13 = BYTE6(a2);
  }

LABEL_28:
  if (v13 < 3)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25578ACE4(v3, a2);
  v16 = sub_2557AD7B4(v3, a2);
  return sub_2557AD930(2, v16);
}

unint64_t sub_2557ADF68()
{
  result = qword_27F7D3270;
  if (!qword_27F7D3270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D3268, " $");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3270);
  }

  return result;
}

uint64_t sub_2557ADFCC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2557B0A18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2557ADB20(v11, 0);
      v15 = sub_2557B0988();
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return result;
}

uint64_t sub_2557AE130(unsigned __int8 a1)
{
  if (a1 <= 0x37u)
  {
    if (a1 == 44)
    {
      return 4;
    }

    if (a1 != 54)
    {
      if (a1 == 55)
      {
        return 5;
      }

      return 0;
    }

    return 6;
  }

  else if (a1 > 0xC7u)
  {
    if (a1 != 210)
    {
      if (a1 == 200)
      {
        return 2;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a1 != 56)
    {
      return a1 == 100;
    }

    return 8;
  }
}

id sub_2557AE1BC(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2557B0938();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_2557B0968();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_2557B0908();

    swift_willThrow();
    v9 = sub_2557B0968();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2557AE338(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = sub_2557B0B78();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2557B0968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2557B0BB8();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  sub_2557B0948();
  v16 = sub_2557B0C08();

  v17 = [v15 fileExistsAtPath_];

  if (!v17)
  {
    v18 = sub_2557B0948();
    v22 = v21;
    sub_25578AA30();
    swift_allocError();
    *v23 = v18;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  sub_2557B0BA8();
  sub_2557AEFF0();
  v19 = *(v7 + 16);
  v18 = v7 + 16;
  v19(v10, a1, v6);
  v20 = sub_2557AE1BC(v10);
  if (!v1)
  {
    v26 = v20;
    v39 = 0;
    while (1)
    {
      v27 = MEMORY[0x259C40A50]();
      v28 = [v26 readDataOfLength_];
      v29 = sub_2557B09F8();
      v31 = v30;

      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 != 2 || *(v29 + 16) == *(v29 + 24))
        {
LABEL_26:
          sub_25578AAE0(v29, v31);
          objc_autoreleasePoolPop(v27);
          v35 = v40;
          sub_2557B0B98();
          v36 = v42;
          v49 = v42;
          v50 = sub_2557AF03C(&qword_27F7D3288, MEMORY[0x277CC5290]);
          v37 = __swift_allocate_boxed_opaque_existential_1(&v46);
          v38 = v41;
          (*(v41 + 16))(v37, v35, v36);
          __swift_project_boxed_opaque_existential_1(&v46, v49);
          sub_2557B08E8();

          (*(v38 + 8))(v35, v36);
          v18 = v45;
          __swift_destroy_boxed_opaque_existential_0(&v46);
          (*(v43 + 8))(v14, v44);
          goto LABEL_5;
        }
      }

      else
      {
        if (!v32)
        {
          if ((v31 & 0xFF000000000000) == 0)
          {
            goto LABEL_26;
          }

          v46 = v29;
          v47 = v31;
          v48 = WORD2(v31);
          sub_2557AF03C(&qword_27F7D3280, MEMORY[0x277CC5540]);
          goto LABEL_8;
        }

        if (v29 == v29 >> 32)
        {
          goto LABEL_26;
        }
      }

      if (v32 == 2)
      {
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);

        if (sub_2557B0868() && __OFSUB__(v34, sub_2557B0888()))
        {
          goto LABEL_29;
        }

        if (__OFSUB__(v33, v34))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v29 >> 32 < v29)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
        }

        if (sub_2557B0868() && __OFSUB__(v29, sub_2557B0888()))
        {
          goto LABEL_30;
        }
      }

      sub_2557B0878();
      sub_2557AF03C(&qword_27F7D3280, MEMORY[0x277CC5540]);
LABEL_8:
      sub_2557B0B68();
      sub_25578AAE0(v29, v31);
      sub_25578AAE0(v29, v31);
      objc_autoreleasePoolPop(v27);
    }
  }

  (*(v43 + 8))(v14, v44);
LABEL_5:
  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_2557AE95C(uint64_t a1, unint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (v8)
      {
        goto LABEL_108;
      }

      if (v9 >= 1)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    sub_25578AA30();
    swift_allocError();
    v12 = xmmword_2557B2D90;
    goto LABEL_84;
  }

  if (v5)
  {
    goto LABEL_13;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  while (1)
  {
    v60 = HIDWORD(a1);
    if (v5 == 2)
    {
      break;
    }

    if (v5 != 1)
    {
      if ((a2 & 0x1000000000000) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_18;
    }

    v10 = BYTE4(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_109;
    }

    if (HIDWORD(a1) - a1 < 1)
    {
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v8 = __OFSUB__(v13, v14);
  v10 = v13 - v14;
  if (v8)
  {
    goto LABEL_110;
  }

LABEL_17:
  if (v10)
  {
LABEL_81:
    sub_25578AA30();
    swift_allocError();
    v12 = xmmword_2557B2DA0;
    goto LABEL_84;
  }

LABEL_18:
  v2 = sub_25578AD38(MEMORY[0x277D84F90]);
  v15 = 0;
  v16 = __OFSUB__(v60, a1);
  v59 = v16;
  v17 = BYTE6(a2);
  v61 = v5;
  v62 = a1 >> 32;
  while (1)
  {
    v18 = v17;
    if (v5)
    {
      if (v5 == 1)
      {
        v18 = v60 - a1;
        if (v59)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v20 = *(a1 + 16);
        v19 = *(a1 + 24);
        v8 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v8)
        {
          goto LABEL_89;
        }
      }
    }

    if (v15 >= v18)
    {
      goto LABEL_85;
    }

    if (v5 != 2)
    {
      break;
    }

    if (v15 < *(a1 + 16))
    {
      goto LABEL_91;
    }

    if (v15 >= *(a1 + 24))
    {
      goto LABEL_93;
    }

    v25 = sub_2557B0868();
    if (!v25)
    {
      goto LABEL_112;
    }

    v22 = v25;
    v26 = sub_2557B0888();
    v24 = v15 - v26;
    if (__OFSUB__(v15, v26))
    {
      goto LABEL_95;
    }

LABEL_42:
    v27 = *(v22 + v24);
    if (v2[2])
    {
      goto LABEL_43;
    }

LABEL_57:

    if (v5 == 2)
    {
LABEL_58:
      if (v15 < *(a1 + 16))
      {
        goto LABEL_96;
      }

      if (v15 >= *(a1 + 24))
      {
        goto LABEL_99;
      }

      v39 = sub_2557B0868();
      if (!v39)
      {
        goto LABEL_114;
      }

      v40 = v39;
      v41 = sub_2557B0888();
      if (__OFSUB__(v15, v41))
      {
        goto LABEL_103;
      }

      v42 = v15 + 1;
      if (v15 + 1 < *(a1 + 16))
      {
        goto LABEL_104;
      }

      if (v42 >= *(a1 + 24))
      {
        goto LABEL_106;
      }

      v34 = *(v40 + v15 - v41);
      v43 = sub_2557B0868();
      if (!v43)
      {
        goto LABEL_116;
      }

      v36 = v43;
      v44 = sub_2557B0888();
      v38 = v42 - v44;
      if (__OFSUB__(v42, v44))
      {
        goto LABEL_107;
      }

      goto LABEL_66;
    }

LABEL_45:
    if (v5 == 1)
    {
      if (v15 < a1 || v15 >= v62)
      {
        goto LABEL_98;
      }

      v30 = sub_2557B0868();
      if (!v30)
      {
        goto LABEL_113;
      }

      v31 = v30;
      v32 = sub_2557B0888();
      if (__OFSUB__(v15, v32))
      {
        goto LABEL_101;
      }

      v33 = v15 + 1;
      if (v15 + 1 >= v62)
      {
        goto LABEL_102;
      }

      v34 = *(v31 + v15 - v32);
      v35 = sub_2557B0868();
      if (!v35)
      {
        goto LABEL_115;
      }

      v36 = v35;
      v37 = sub_2557B0888();
      v38 = v33 - v37;
      if (__OFSUB__(v33, v37))
      {
        goto LABEL_105;
      }

LABEL_66:
      v45 = *(v36 + v38);
      goto LABEL_70;
    }

    if (v15 >= v17)
    {
      goto LABEL_97;
    }

    LOWORD(v63) = a1;
    BYTE2(v63) = BYTE2(a1);
    BYTE3(v63) = BYTE3(a1);
    BYTE4(v63) = v60;
    BYTE5(v63) = BYTE5(a1);
    BYTE6(v63) = BYTE6(a1);
    HIBYTE(v63) = HIBYTE(a1);
    LOWORD(v64) = a2;
    BYTE2(v64) = BYTE2(a2);
    HIBYTE(v64) = BYTE3(a2);
    LOBYTE(v65) = BYTE4(a2);
    HIBYTE(v65) = BYTE5(a2);
    if (v15 + 1 >= v17)
    {
      goto LABEL_100;
    }

    v34 = *(&v63 + v15);
    v63 = a1;
    v64 = a2;
    v65 = WORD2(a2);
    v45 = *(&v63 + v15 + 1);
LABEL_70:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v2;
    v47 = sub_2557896D0(v34);
    v49 = v2[2];
    v50 = (v48 & 1) == 0;
    v8 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (v8)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
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
    }

    v52 = v48;
    if (v2[3] < v51)
    {
      sub_255789BE8(v51, isUniquelyReferenced_nonNull_native);
      v47 = sub_2557896D0(v34);
      if ((v52 & 1) != (v53 & 1))
      {
        result = sub_2557B0FB8();
        __break(1u);
        return result;
      }

LABEL_75:
      v2 = v63;
      if (v52)
      {
        goto LABEL_22;
      }

      goto LABEL_76;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_75;
    }

    v56 = v47;
    sub_25578A3B0();
    v47 = v56;
    v2 = v63;
    if (v52)
    {
LABEL_22:
      *(v2[7] + v47) = v45;
      goto LABEL_23;
    }

LABEL_76:
    v2[(v47 >> 6) + 8] |= 1 << v47;
    *(v2[6] + v47) = v34;
    *(v2[7] + v47) = v45;
    v54 = v2[2];
    v8 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v8)
    {
      goto LABEL_87;
    }

    v2[2] = v55;
LABEL_23:
    v15 += 2;
    v17 = BYTE6(a2);
    LODWORD(v5) = v61;
  }

  if (v5 == 1)
  {
    if (v15 < a1 || v15 >= v62)
    {
      goto LABEL_92;
    }

    v21 = sub_2557B0868();
    if (!v21)
    {
      goto LABEL_111;
    }

    v22 = v21;
    v23 = sub_2557B0888();
    v24 = v15 - v23;
    if (__OFSUB__(v15, v23))
    {
      goto LABEL_94;
    }

    goto LABEL_42;
  }

  if (v15 >= v17)
  {
    goto LABEL_90;
  }

  LOWORD(v63) = a1;
  BYTE2(v63) = BYTE2(a1);
  BYTE3(v63) = BYTE3(a1);
  BYTE4(v63) = v60;
  BYTE5(v63) = BYTE5(a1);
  BYTE6(v63) = BYTE6(a1);
  HIBYTE(v63) = HIBYTE(a1);
  LOWORD(v64) = a2;
  BYTE2(v64) = BYTE2(a2);
  HIBYTE(v64) = BYTE3(a2);
  LOBYTE(v65) = BYTE4(a2);
  HIBYTE(v65) = BYTE5(a2);
  v27 = *(&v63 + v15);

  if (!v2[2])
  {
    goto LABEL_57;
  }

LABEL_43:
  sub_2557896D0(v27);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    if (v5 == 2)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
  }

  sub_25578AA30();
  swift_allocError();
  v12 = xmmword_2557B2DB0;
LABEL_84:
  *v11 = v12;
  *(v11 + 16) = 7;
  swift_willThrow();
LABEL_85:
  v57 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_2557AEFF0()
{
  result = qword_27F7D3278;
  if (!qword_27F7D3278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D3278);
  }

  return result;
}

uint64_t sub_2557AF03C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2557AF0E8()
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = sub_2557B0A18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_13:
      result = 0xFF00000000;
      goto LABEL_76;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  result = sub_2557B0140(v8, v9);
  if (v1)
  {
    goto LABEL_76;
  }

  v73 = result;
  v12 = v0;
  sub_2557AFC5C(BYTE4(result) + 1);
  v13 = *v0;
  v14 = *(v0 + 8);
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      if (!BYTE6(v14))
      {
LABEL_24:
        sub_2557B0430();
        swift_allocError();
        *v26 = 0xD000000000000022;
        *(v26 + 8) = 0x80000002557B40A0;
        *(v26 + 16) = 1;
LABEL_75:
        result = swift_willThrow();
        goto LABEL_76;
      }

      goto LABEL_17;
    }

    v19 = __OFSUB__(HIDWORD(v13), v13);
    v25 = HIDWORD(v13) - v13;
    if (!v19)
    {
      if (v25 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v15 != 2)
  {
    goto LABEL_24;
  }

  v18 = v13 + 16;
  v16 = *(v13 + 16);
  v17 = *(v18 + 8);
  v19 = __OFSUB__(v17, v16);
  v20 = v17 - v16;
  if (v19)
  {
    __break(1u);
    goto LABEL_103;
  }

  if (v20 < 1)
  {
    goto LABEL_24;
  }

LABEL_17:
  v21 = sub_2557AFD98();
  if (v21 < 0)
  {
    v0 = v21 & 0x7F;
    v22 = *v12;
    v2 = v12[1];
    v24 = v2 >> 62;
    if ((v2 >> 62) <= 1)
    {
      if (!v24)
      {
        v27 = BYTE6(v2);
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    goto LABEL_32;
  }

  v22 = v21;
  while (1)
  {
    v3 = *v0;
    v7 = *(v0 + 8);
    v23 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v23)
      {
        goto LABEL_36;
      }

      v24 = BYTE6(v7);
      goto LABEL_38;
    }

    if (v23 != 2)
    {
      break;
    }

    v29 = *(v3 + 16);
    v28 = *(v3 + 24);
    v19 = __OFSUB__(v28, v29);
    v24 = v28 - v29;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_32:
    if (v24 == 2)
    {
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      v19 = __OFSUB__(v30, v31);
      v27 = v30 - v31;
      if (!v19)
      {
LABEL_53:
        if (v27 < v0)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      __break(1u);
LABEL_36:
      LODWORD(v24) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_104;
      }

      v24 = v24;
LABEL_38:
      if (v24 < v22)
      {
        goto LABEL_64;
      }

      goto LABEL_41;
    }

    if (v0)
    {
LABEL_57:
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      sub_2557B0EF8();

      *&v76 = 1030185300;
      *(&v76 + 1) = 0xE400000000000000;
      v39 = sub_2557AF990(v73 & 0xFFFFFFFFFFLL);
      MEMORY[0x259C40650](v39);

      v40 = 0x80000002557B4070;
      v41 = 0xD000000000000022;
LABEL_74:
      MEMORY[0x259C40650](v41, v40);
      v54 = v76;
      sub_2557B0430();
      swift_allocError();
      *v55 = v54;
      *(v55 + 16) = 0;
      goto LABEL_75;
    }

LABEL_54:
    sub_25578ACE4(v22, v2);
    sub_2557AFEE0(v0, v22, v2, &v76);
    v2 = *(&v76 + 1);
    v38 = v76;
    sub_2557AFC5C(v0);
    if (v2 >> 62 == 2)
    {
      v42 = *(v38 + 16);
    }

    sub_25578ACE4(v38, v2);
    v72 = v38;
    sub_2557B0A28();
    sub_2557B0484();
    sub_2557B0E78();
    if (BYTE1(v76))
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v22 = v76 | (v22 << 8);
        sub_2557B0E78();
      }

      while ((BYTE1(v76) & 1) == 0);
    }

    sub_25578AAE0(v72, v2);
    v43 = *(v4 + 8);
    v4 += 8;
    v43(v7, v3);
    v0 = v12;
    if (v22 < 0)
    {
LABEL_64:
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      sub_2557B0EF8();

      *&v76 = 1030185300;
      *(&v76 + 1) = 0xE400000000000000;
      v44 = sub_2557AF990(v73 & 0xFFFFFFFFFFLL);
      MEMORY[0x259C40650](v44);

      MEMORY[0x259C40650](0x654C206874697720, 0xED00003D6874676ELL);
      *&v79 = v22;
      v45 = sub_2557B0F88();
      MEMORY[0x259C40650](v45);

      MEMORY[0x259C40650](0x6E6F206874697720, 0xEB0000000020796CLL);
      v46 = *v0;
      v47 = *(v0 + 8);
      v48 = v47 >> 62;
      if ((v47 >> 62) <= 1)
      {
        if (!v48)
        {
          v49 = BYTE6(v47);
          goto LABEL_73;
        }

LABEL_71:
        v19 = __OFSUB__(HIDWORD(v46), v46);
        v52 = HIDWORD(v46) - v46;
        if (!v19)
        {
          v49 = v52;
          goto LABEL_73;
        }

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
      }

      v49 = 0;
      if (v48 == 2)
      {
        v51 = v46 + 16;
        v46 = *(v46 + 16);
        v50 = *(v51 + 8);
        v19 = __OFSUB__(v50, v46);
        v49 = v50 - v46;
        if (v19)
        {
          __break(1u);
          goto LABEL_71;
        }
      }

LABEL_73:
      *&v79 = v49;
      v53 = sub_2557B0F88();
      MEMORY[0x259C40650](v53);

      v41 = 0xD000000000000010;
      v40 = 0x80000002557B4050;
      goto LABEL_74;
    }
  }

  if (v22)
  {
    goto LABEL_64;
  }

LABEL_41:
  sub_25578ACE4(v3, v7);
  sub_2557AFEE0(v22, v3, v7, &v79);
  v77 = MEMORY[0x277CC9318];
  v78 = MEMORY[0x277CC9300];
  v76 = v79;
  v32 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x277CC9318]);
  v33 = *v32;
  v7 = v32[1];
  v34 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v34 != 2)
    {
      memset(v74, 0, 14);
      v35 = v74;
      goto LABEL_89;
    }

    v36 = *(v33 + 16);
    v4 = *(v33 + 24);
    v0 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_2557B0868();
    if (v3)
    {
      v0 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v37 = sub_2557B0888();
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_110;
      }

      v3 += v36 - v37;
    }

    v19 = __OFSUB__(v4, v36);
    v2 = v4 - v36;
    if (!v19)
    {
      goto LABEL_81;
    }

    __break(1u);
LABEL_51:
    LODWORD(v27) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_106;
    }

    v27 = v27;
    goto LABEL_53;
  }

  if (!v34)
  {
    v74[0] = *v32;
    LOWORD(v74[1]) = v7;
    BYTE2(v74[1]) = BYTE2(v7);
    BYTE3(v74[1]) = BYTE3(v7);
    BYTE4(v74[1]) = BYTE4(v7);
    BYTE5(v74[1]) = BYTE5(v7);
    v35 = v74 + BYTE6(v7);
LABEL_89:
    sub_2557AB18C(v74, v35, v75);
    goto LABEL_90;
  }

  v57 = v33;
  v58 = v33 >> 32;
  v2 = v58 - v57;
  if (v58 < v57)
  {
    goto LABEL_107;
  }

  v3 = sub_2557B0868();
  if (v3)
  {
    v59 = sub_2557B0888();
    if (__OFSUB__(v57, v59))
    {
      goto LABEL_111;
    }

    v3 += v57 - v59;
  }

LABEL_81:
  v60 = sub_2557B0878();
  if (v60 >= v2)
  {
    v61 = v2;
  }

  else
  {
    v61 = v60;
  }

  v62 = (v61 + v3);
  if (v3)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  sub_2557AB18C(v3, v63, v75);
  v0 = v12;
LABEL_90:
  v64 = v75[0];
  v65 = v75[1];
  __swift_destroy_boxed_opaque_existential_0(&v76);
  v66 = v73 & 0xFFFFFFFFFFLL;
  if (!sub_2557AF944(v73 & 0xFFFFFFFFFFLL) || (*(v0 + 16) & 1) == 0)
  {
    sub_2557AFC5C(v22);
  }

  sub_25578ACE4(v64, v65);
  sub_255799C4C(0, 0xF000000000000000);
  v67 = v65;
  v68 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    v69 = v64;
    if (v68 == 2)
    {
      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      sub_25578AAE0(v64, v65);
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_108;
      }

      v69 = v64;
      goto LABEL_100;
    }
  }

  else
  {
    if (!v68)
    {
      v69 = v64;
      goto LABEL_101;
    }

    sub_25578AAE0(v64, v65);
    v69 = v64;
    if (__OFSUB__(HIDWORD(v64), v64))
    {
      goto LABEL_109;
    }

LABEL_100:
    v67 = v65;
  }

LABEL_101:
  sub_255799C60(v69, v67);
  sub_255799C4C(v64, v65);
  result = v66;
LABEL_76:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2557AF944(_BOOL8 result)
{
  if (BYTE4(result) <= 1u)
  {
    if (BYTE4(result))
    {
      v1 = 0x2000;
    }

    else
    {
      v1 = 32;
    }

    return (v1 & result) != 0;
  }

  if (BYTE4(result) != 2)
  {
    v1 = 0x20000000;
    return (v1 & result) != 0;
  }

  if ((result & 0xFF000000) == 0)
  {
    v1 = 0x200000;
    return (v1 & result) != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2557AF990(uint64_t a1)
{
  v1 = a1;
  if (BYTE4(a1) > 1u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2557B1770;
    v5 = MEMORY[0x277D84D30];
    *(v4 + 56) = MEMORY[0x277D84CC0];
    *(v4 + 64) = v5;
    *(v4 + 32) = v1;
  }

  else if (BYTE4(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2557B1770;
    v7 = MEMORY[0x277D84CB8];
    *(v6 + 56) = MEMORY[0x277D84C58];
    *(v6 + 64) = v7;
    *(v6 + 32) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2557B1770;
    v3 = MEMORY[0x277D84BC0];
    *(v2 + 56) = MEMORY[0x277D84B78];
    *(v2 + 64) = v3;
    *(v2 + 32) = v1;
  }

  return sub_2557B0C48();
}

uint64_t sub_2557AFB04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      if (BYTE6(a3) >= result)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= result)
      {
        return result;
      }

LABEL_8:
      sub_2557B0EF8();

      v8 = sub_2557B0F88();
      MEMORY[0x259C40650](v8);

      MEMORY[0x259C40650](0x736574796220, 0xE600000000000000);
      sub_2557B0430();
      swift_allocError();
      *v9 = 0xD00000000000001BLL;
      *(v9 + 8) = 0x80000002557B40D0;
      *(v9 + 16) = 1;
      return swift_willThrow();
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (v3 == 2)
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= result)
      {
        return result;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (result > 0)
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_2557AFC5C(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_2557B008C(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_2557B0028(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_25578ACE4(*v1, *(v1 + 8));
      result = sub_25578AAE0(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_2557B09C8();
        v15 = v14;
        result = sub_25578AAE0(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2557AFD98()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_255794BF4(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_25578ACE4(*v0, *(v0 + 8));
      result = sub_25578AAE0(v7, v8);
      if (v12 >= v11)
      {
        v13 = sub_2557B09C8();
        v15 = v14;
        sub_25578AAE0(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2557AFEE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2557B008C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2557B0028(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_2557B09C8();
    v15 = v14;
    result = sub_25578AAE0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2557B0028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2557B008C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2557B0140(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v6 = 0;
        goto LABEL_13;
      }

LABEL_10:
      sub_2557B0430();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      result = swift_willThrow();
      goto LABEL_25;
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = a1;
  }

LABEL_13:
  if ((~sub_2557B09D8() & 0x1F) == 0)
  {
    result = sub_2557AFB04(2, v4, a2);
    if (v2)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((sub_2557B09D8() & 0x80) == 0)
    {
      if (v5 == 2)
      {
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
        v9 = sub_2557B0868();
        if (v9)
        {
          v16 = sub_2557B0888();
          if (__OFSUB__(v14, v16))
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v9 = (v9 + v14 - v16);
        }

        if (!__OFSUB__(v15, v14))
        {
          goto LABEL_37;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v5 != 1)
      {
LABEL_38:
        result = (bswap32(v4) >> 16) | 0x100000000;
        goto LABEL_25;
      }

      if (v4 <= v4 >> 32)
      {
        v9 = sub_2557B0868();
        if (!v9)
        {
LABEL_37:
          sub_2557B0878();
          LODWORD(v4) = *v9;
          goto LABEL_38;
        }

        v10 = sub_2557B0888();
        if (!__OFSUB__(v4, v10))
        {
          v9 = (v9 + v4 - v10);
          goto LABEL_37;
        }

        goto LABEL_50;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    sub_2557AFB04(3, v4, a2);
    if (v5 == 2)
    {
      v17 = *(v4 + 16);
      v18 = *(v4 + 24);
      v12 = sub_2557B0868();
      if (v12)
      {
        v19 = sub_2557B0888();
        if (__OFSUB__(v17, v19))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
        }

        v12 += v17 - v19;
      }

      if (__OFSUB__(v18, v17))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      if (v5 != 1)
      {
        v20 = v4 & 0xFF00 | (v4 << 16) | BYTE2(v4);
        goto LABEL_45;
      }

      if (v4 > v4 >> 32)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v12 = sub_2557B0868();
      if (v12)
      {
        v13 = sub_2557B0888();
        if (__OFSUB__(v4, v13))
        {
          goto LABEL_54;
        }

        v12 += v4 - v13;
      }
    }

    sub_2557B0878();
    v20 = (*v12 << 16) | (v12[1] << 8) | v12[2];
LABEL_45:
    result = v20 | 0x200000000;
    goto LABEL_25;
  }

  result = sub_255794BF4(v4, a2);
  if ((result & 0x100) == 0)
  {
    result = result;
LABEL_25:
    v11 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2557B0430()
{
  result = qword_27F7D3290;
  if (!qword_27F7D3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3290);
  }

  return result;
}

unint64_t sub_2557B0484()
{
  result = qword_27F7D3298;
  if (!qword_27F7D3298)
  {
    sub_2557B0A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3298);
  }

  return result;
}

uint64_t sub_2557B04DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_25578ACE4(a2, a3);
  v5 = sub_2557AF0E8();
  if (v3)
  {
    return sub_25578AAE0(a2, a3);
  }

  while (1)
  {
    if ((~v5 & 0xFF00000000) == 0)
    {
      v11 = v5;
      goto LABEL_13;
    }

    v10 = BYTE4(v5) ? v5 : v5;
    if (BYTE4(v5) - 2 < 2)
    {
      v10 = v5;
    }

    if (a1 == v10)
    {
      break;
    }

    sub_255799C30(v5, v6, v7, v8);
    v5 = sub_2557AF0E8();
  }

  v11 = v5 & 0xFFFFFFFFFFLL;
LABEL_13:
  sub_25578AAE0(a2, a3);
  return v11;
}

uint64_t get_enum_tag_for_layout_string_20KernelManagerLibrary8TLVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2557B05FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2557B0644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2557B0688(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2557B06B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2557AB37C(0, v1, 0);
    v3 = v18;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84B78];
    v6 = MEMORY[0x277D84BC0];
    do
    {
      v7 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2557B1770;
      *(v8 + 56) = v5;
      *(v8 + 64) = v6;
      *(v8 + 32) = v7;
      v9 = sub_2557B0C48();
      v19 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        v17 = v9;
        v14 = v10;
        sub_2557AB37C((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v9 = v17;
        v3 = v19;
      }

      *(v3 + 16) = v12 + 1;
      v13 = v3 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
  sub_25578AB8C();
  v15 = sub_2557B0BF8();

  return v15;
}