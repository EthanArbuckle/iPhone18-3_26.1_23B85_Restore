uint64_t sub_24EFD369C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232348);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFDB7FC(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v1 = &v10[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis];
  swift_beginAccess();
  v2 = *v1;

  *(v0 + 32) = v2;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v3 = &v8[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis];
  swift_beginAccess();
  v4 = *v3;

  *(v0 + 36) = v4;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v5 = &v9[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis];
  swift_beginAccess();
  v6 = *v5;

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_24EFD38D8()
{
  v1 = *(v0 + 104);
  if (v1 == 1)
  {
    v2 = *(sub_24EFD3460() + 16);

    if (!v2)
    {
      return result;
    }

    result = sub_24EFD3460();
  }

  else
  {
    v4 = *(sub_24EFD369C() + 16);

    if (!v4)
    {
      return result;
    }

    result = sub_24EFD369C();
  }

  if (*(result + 16))
  {
    v5 = *(result + 32);

    if (v1)
    {
      v6 = sub_24EFD3460();
      v7 = *(v6 + 16);
      if (!v7)
      {
      }
    }

    else
    {
      v6 = sub_24EFD369C();
      v7 = *(v6 + 16);
      if (!v7)
      {
      }
    }

    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (fabsf(v5) < fabsf(v9))
      {
        v5 = v10;
      }

      --v7;
    }

    while (v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFD39A0()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v12 != 1)
    {
      return 0;
    }
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v12 = *(v0 + 32);
  v13 = v8;
  v14 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  MEMORY[0x25304CAF0]((&v11 + 7), v10);
  return HIBYTE(v11);
}

id sub_24EFD3B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v53 = a2;
  v3 = sub_24F924BE8();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236358);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v47 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236360);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236368);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236370);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v47 - v16;
  v17 = *(v2 + 104);
  v61 = v11;
  v62 = v13;
  if (v17 == 1)
  {
    v18 = sub_24EFD3460();
  }

  else
  {
    v18 = sub_24EFD369C();
  }

  v54 = v18;
  v66 = v18;
  sub_24EFDBFC4(v2, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v6 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_24EFDC02C(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236378);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236380);
  v24 = sub_24E602068(&qword_27F236388, &qword_27F236378);
  v25 = v2;
  v64 = v7;
  v26 = v24;
  v27 = sub_24EFDC110();
  sub_24F926AB8();

  LOBYTE(v65) = sub_24EFD39A0() & 1;
  sub_24EFDBFC4(v2, v8);
  v28 = swift_allocObject();
  sub_24EFDC02C(v8, v28 + v20);
  v66 = v22;
  v67 = v23;
  v68 = v26;
  v69 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v56;
  v30 = v60;
  v31 = v63;
  sub_24F926AB8();

  (*(v58 + 8))(v31, v30);
  sub_24EFDBFC4(v25, v8);
  v63 = v19;
  v32 = swift_allocObject();
  sub_24EFDC02C(v8, v32 + v20);
  v33 = v62;
  (*(v57 + 32))(v62, v29, v59);
  v34 = (v33 + *(v61 + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_24EFDC20C;
  v34[3] = v32;
  v35 = v25[11];
  v36 = v25[12];
  v66 = v25[10];
  v67 = v35;
  v68 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](&v65, v37);
  result = AXFormatFloatWithPercentage();
  if (result)
  {
    v39 = result;
    v40 = sub_24F92B0D8();
    v42 = v41;

    v66 = v40;
    v67 = v42;
    sub_24EFDC268();
    sub_24E600AEC();
    v43 = v47;
    sub_24F926558();

    sub_24E601704(v33, &qword_27F236368);
    v44 = v50;
    sub_24F924BB8();
    v45 = v48;
    sub_24F924018();
    (*(v51 + 8))(v44, v52);
    sub_24E601704(v43, &qword_27F236370);
    sub_24EFDBFC4(v25, v8);
    v46 = swift_allocObject();
    sub_24EFDC02C(v8, v46 + v20);
    sub_24F924028();

    return sub_24E601704(v45, &qword_27F236370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EFD4260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a3 + 48);
  v9 = *(a3 + 32);
  v10 = v3;
  v11 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  MEMORY[0x25304CAF0](&v8, v5);
  if (v8 == 1)
  {
    sub_24EFD38D8();
    return sub_24EFD4654(v6);
  }

  else
  {
    sub_24EFD42DC();
    return sub_24EFD448C();
  }
}

uint64_t sub_24EFD42DC()
{
  LOBYTE(v5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927178();
  type metadata accessor for ControlSliderControllerNavigableModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0);
  result = sub_24F926F38();
  if (v5)
  {

    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9220D8();
    __swift_project_value_buffer(v1, qword_27F39E7D8);
    v2 = sub_24F9220B8();
    v3 = sub_24F92BD98();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "Stopping long press timer.", v4, 2u);
      MEMORY[0x2530542D0](v4, -1, -1);
    }

    sub_24F926F38();
    [v5 invalidate];

    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24EFD448C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-v5];
  v7 = *(v0 + 152);
  v16 = *(v0 + 144);
  v17 = v7;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8);
  sub_24F926F48();
  v8 = sub_24F91F648();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = type metadata accessor for ControlSliderControllerNavigableModifier();
  sub_24E60169C(v6, v3, &unk_27F22EC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
  sub_24F926F48();
  sub_24E601704(v6, &unk_27F22EC30);
  v10 = (v0 + *(v9 + 72));
  v11 = *v10;
  v12 = *(v10 + 1);
  v16 = v11;
  v17 = v12;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24EFD4654(float a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v167 = *(v4 - 8);
  v168 = v4;
  MEMORY[0x28223BE20](v4);
  v164 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v165 = *(v6 - 8);
  v166 = v6;
  MEMORY[0x28223BE20](v6);
  v163 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v158 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v153 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v9;
  MEMORY[0x28223BE20](v10);
  v160 = &v141 - v11;
  v171 = sub_24F927DE8();
  v162 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v157 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v161 = &v141 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v15 - 8);
  v154 = (&v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v155 = &v141 - v18;
  MEMORY[0x28223BE20](v19);
  v156 = &v141 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v141 - v22;
  v24 = sub_24F91F648();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v151 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v141 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v141 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v141 - v34;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
  sub_24F926F38();
  v152 = *(v25 + 48);
  v36 = v152(v23, 1, v24);
  v169 = v25;
  if (v36 == 1)
  {
    sub_24E601704(v23, &unk_27F22EC30);
  }

  else
  {
    (*(v25 + 32))(v35, v23, v24);
    sub_24F91F568();
    sub_24F91F618();
    v37 = sub_24F91F588();
    v38 = *(v25 + 8);
    v38(v29, v24);
    v38(v32, v24);
    result = (v38)(v35, v24);
    if (v37)
    {
      return result;
    }
  }

  v40 = *(v2 + 108);
  if (-v40 > a1)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2 * (v40 < a1);
  }

  v42 = (v2 + *(v8 + 80));
  v43 = *v42;
  v44 = v42[1];
  aBlock = v43;
  v173 = v44;
  v178 = ((fabsf(a1) - v40) / (1.0 - v40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F48();
  v45 = *(v2 + 144);
  v46 = *(v2 + 152);
  LOBYTE(aBlock) = v45;
  v173 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8);
  result = sub_24F926F38();
  if (v41 == LOBYTE(v178))
  {
    if (v41)
    {
      return result;
    }
  }

  else if (v41)
  {
    LOBYTE(aBlock) = v45;
    v173 = v46;
    sub_24F926F38();
    if (LOBYTE(v178))
    {
      LOBYTE(aBlock) = v45;
      v173 = v46;
      result = sub_24F926F38();
      if (!LOBYTE(v178))
      {
        return result;
      }

      LOBYTE(aBlock) = v45;
      v173 = v46;
      result = sub_24F926F38();
      if (v41 == LOBYTE(v178))
      {
        return result;
      }

      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v148 = v8;
      v47 = sub_24F9220D8();
      v48 = __swift_project_value_buffer(v47, qword_27F39E7D8);
      v49 = v153;
      sub_24EFDBFC4(v2, v153);
      v145 = v48;
      v50 = sub_24F9220B8();
      LODWORD(v146) = sub_24F92BD98();
      if (os_log_type_enabled(v50, v146))
      {
        v147 = swift_slowAlloc();
        *&v144 = COERCE_DOUBLE(swift_slowAlloc());
        v178 = *&v144;
        *v147 = 136315394;
        v51 = *(v49 + 152);
        LOBYTE(aBlock) = *(v49 + 144);
        v173 = v51;
        v143 = v50;
        sub_24F926F38();
        v142 = sub_24F92B188();
        v53 = v52;
        sub_24EFDC6A4(v49);
        v54 = sub_24E7620D4(v142, v53, &v178);

        v55 = v147;
        *(v147 + 4) = v54;
        *(v55 + 12) = 2080;
        LOBYTE(aBlock) = v41;
        v56 = sub_24F92B188();
        v58 = sub_24E7620D4(v56, v57, &v178);

        v59 = v147;
        *(v147 + 14) = v58;
        v60 = v143;
        _os_log_impl(&dword_24E5DD000, v143, v146, "Direction changed (%s -> %s", v59, 0x16u);
        v61 = v144;
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v61, -1, -1);
        MEMORY[0x2530542D0](v147, -1, -1);
      }

      else
      {

        sub_24EFDC6A4(v49);
      }

      LOBYTE(aBlock) = v45;
      v173 = v46;
      sub_24F926F38();
      LODWORD(v147) = LOBYTE(v178);
      sub_24EFD42DC();
      v153 = *(v148 + 64);
      v107 = v154;
      sub_24F926F38();
      v108 = v107;
      if (v152(v107, 1, v24) == 1)
      {
        sub_24E601704(v107, &unk_27F22EC30);
      }

      else
      {
        v109 = v169;
        v110 = v151;
        (*(v169 + 32))(v151, v108, v24);
        v111 = v2 + *(v148 + 72);
        v112 = *v111;
        v113 = *(v111 + 8);
        LOBYTE(aBlock) = v112;
        v173 = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
        sub_24F926F38();
        if (LOBYTE(v178))
        {
          (*(v109 + 8))(v110, v24);
        }

        else
        {
          sub_24F91F638();
          sub_24F91F558();
          v115 = v114;
          v116 = *(v109 + 8);
          v116(v32, v24);
          if (v115 < *(v2 + 112))
          {
            v152 = v116;
            v117 = sub_24F9220B8();
            v118 = sub_24F92BD98();
            v154 = v117;
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v146 = v119;
              v145 = swift_slowAlloc();
              aBlock = v145;
              *v119 = 136315138;
              LOBYTE(v119) = v147;
              LOBYTE(v178) = v147;
              v120 = sub_24F92B188();
              v122 = sub_24E7620D4(v120, v121, &aBlock);
              LODWORD(v144) = v118;
              v123 = v122;
              v110 = v151;

              v124 = v146;
              *(v146 + 1) = v123;
              v125 = v119;
              _os_log_impl(&dword_24E5DD000, v154, v144, "Short press detected on direction change (%s", v124, 0xCu);
              v126 = v145;
              __swift_destroy_boxed_opaque_existential_1(v145);
              MEMORY[0x2530542D0](v126, -1, -1);
              MEMORY[0x2530542D0](v146, -1, -1);
            }

            else
            {

              v125 = v147;
            }

            sub_24EFD624C(v125, 0, 1, *(v2 + 128));
            v116 = v152;
          }

          v116(v110, v24);
        }
      }

      sub_24EFD448C();
      LOBYTE(aBlock) = v45;
      v173 = v46;
      LOBYTE(v178) = v41;
      sub_24F926F48();
      v127 = v156;
      sub_24F91F638();
      (*(v169 + 56))(v127, 0, 1, v24);
      sub_24E60169C(v127, v155, &unk_27F22EC30);
      sub_24F926F48();
      sub_24E601704(v127, &unk_27F22EC30);
      v128 = v2 + *(v148 + 72);
      v129 = *v128;
      v130 = *(v128 + 8);
      LOBYTE(aBlock) = v129;
      v173 = v130;
      LOBYTE(v178) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
      sub_24F926F48();
      sub_24E69A5C4(0, &qword_27F222300);
      v91 = sub_24F92BEF8();
      v131 = v157;
      sub_24F927DD8();
      v93 = v161;
      sub_24F927E58();
      v170 = *(v162 + 8);
      v170(v131, v171);
      v132 = v160;
      sub_24EFDBFC4(v2, v160);
      v133 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v134 = v41;
      v135 = v133 + v159;
      v136 = swift_allocObject();
      sub_24EFDC02C(v132, v136 + v133);
      *(v136 + v135) = v134;
      v176 = sub_24EFDC704;
      v177 = v136;
      aBlock = MEMORY[0x277D85DD0];
      v173 = 1107296256;
      v98 = &block_descriptor_99;
    }

    else
    {
      v75 = v41;
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v76 = sub_24F9220D8();
      __swift_project_value_buffer(v76, qword_27F39E7D8);
      v77 = sub_24F9220B8();
      v78 = sub_24F92BD98();
      v79 = os_log_type_enabled(v77, v78);
      v149 = v2;
      v150 = v75;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        aBlock = v154;
        *v80 = 136315138;
        LOBYTE(v178) = v75;
        v81 = sub_24F92B188();
        v83 = v8;
        v84 = sub_24E7620D4(v81, v82, &aBlock);

        *(v80 + 4) = v84;
        v8 = v83;
        _os_log_impl(&dword_24E5DD000, v77, v78, "Press detected (%s", v80, 0xCu);
        v85 = v154;
        __swift_destroy_boxed_opaque_existential_1(v154);
        MEMORY[0x2530542D0](v85, -1, -1);
        MEMORY[0x2530542D0](v80, -1, -1);
      }

      LOBYTE(aBlock) = v45;
      v173 = v46;
      LOBYTE(v178) = v150;
      sub_24F926F48();
      v86 = v156;
      sub_24F91F638();
      (*(v169 + 56))(v86, 0, 1, v24);
      sub_24E60169C(v86, v155, &unk_27F22EC30);
      v87 = v149;
      sub_24F926F48();
      sub_24E601704(v86, &unk_27F22EC30);
      v88 = v87 + *(v8 + 72);
      v89 = *v88;
      v90 = *(v88 + 8);
      LOBYTE(aBlock) = v89;
      v173 = v90;
      LOBYTE(v178) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
      sub_24F926F48();
      sub_24E69A5C4(0, &qword_27F222300);
      v91 = sub_24F92BEF8();
      v92 = v157;
      sub_24F927DD8();
      v93 = v161;
      sub_24F927E58();
      v170 = *(v162 + 8);
      v170(v92, v171);
      v94 = v160;
      sub_24EFDBFC4(v87, v160);
      v95 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v96 = v95 + v159;
      v97 = swift_allocObject();
      sub_24EFDC02C(v94, v97 + v95);
      *(v97 + v96) = v150;
      v176 = sub_24EFDC734;
      v177 = v97;
      aBlock = MEMORY[0x277D85DD0];
      v173 = 1107296256;
      v98 = &block_descriptor_82_3;
    }

    v174 = sub_24EAF8248;
    v175 = v98;
    v137 = _Block_copy(&aBlock);

    v138 = v163;
    sub_24F927DA8();
    aBlock = MEMORY[0x277D84F90];
    sub_24EFDB7FC(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    v139 = v164;
    v140 = v168;
    sub_24F92C6A8();
    MEMORY[0x253051820](v93, v138, v139, v137);
    _Block_release(v137);

    (*(v167 + 8))(v139, v140);
    (*(v165 + 8))(v138, v166);
    return (v170)(v93, v171);
  }

  LOBYTE(aBlock) = v45;
  v173 = v46;
  result = sub_24F926F38();
  if (LOBYTE(v178))
  {
    LOBYTE(aBlock) = v45;
    v173 = v46;
    sub_24F926F38();
    v62 = v8;
    v63 = LOBYTE(v178);
    sub_24EFD42DC();
    v64 = v2 + *(v62 + 72);
    v65 = *v64;
    v66 = *(v64 + 8);
    LOBYTE(aBlock) = v65;
    v173 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F38();
    if (LOBYTE(v178))
    {
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v67 = sub_24F9220D8();
      __swift_project_value_buffer(v67, qword_27F39E7D8);
      v68 = sub_24F9220B8();
      v69 = sub_24F92BD98();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock = v71;
        *v70 = 136315138;
        LOBYTE(v178) = v63;
        v72 = sub_24F92B188();
        v74 = sub_24E7620D4(v72, v73, &aBlock);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_24E5DD000, v68, v69, "Long press released (%s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x2530542D0](v71, -1, -1);
        MEMORY[0x2530542D0](v70, -1, -1);
      }
    }

    else
    {
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v99 = sub_24F9220D8();
      __swift_project_value_buffer(v99, qword_27F39E7D8);
      v100 = sub_24F9220B8();
      v101 = sub_24F92BD98();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock = v103;
        *v102 = 136315138;
        LOBYTE(v178) = v63;
        v104 = sub_24F92B188();
        v106 = sub_24E7620D4(v104, v105, &aBlock);

        *(v102 + 4) = v106;
        _os_log_impl(&dword_24E5DD000, v100, v101, "Short press detected (%s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x2530542D0](v103, -1, -1);
        MEMORY[0x2530542D0](v102, -1, -1);
      }

      sub_24EFD624C(v63, 0, 1, *(v2 + 128));
    }

    return sub_24EFD448C();
  }

  return result;
}

uint64_t sub_24EFD5B48(uint64_t a1, _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (*a2)
  {
    sub_24F91F618();
    v9 = sub_24F91F648();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    type metadata accessor for ControlSliderControllerNavigableModifier();
    sub_24E60169C(v8, v5, &unk_27F22EC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
    sub_24F926F48();
    return sub_24E601704(v8, &unk_27F22EC30);
  }

  else
  {
    v11 = sub_24F91F648();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for ControlSliderControllerNavigableModifier();
    sub_24E60169C(v8, v5, &unk_27F22EC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
    sub_24F926F48();
    sub_24E601704(v8, &unk_27F22EC30);
    sub_24EFD42DC();
    sub_24EFD448C();
    return sub_24EFD4654(0.0);
  }
}

void *sub_24EFD5D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9256B8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  result = (*(v9 + 88))(v12, v8);
  if (result == *MEMORY[0x277CDE498])
  {
    v14 = *a2;
    if (*(a2 + 8) == 1)
    {
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      sub_24F92BDC8();
      v16 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v14, 0);
      result = (*(v5 + 8))(v7, v4);
      if (v38 != 1)
      {
        return result;
      }
    }

    v17 = *(a2 + 40);
    v18 = *(a2 + 48);
    v38 = *(a2 + 32);
    v39 = v17;
    LOBYTE(v40) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
    result = MEMORY[0x25304CAF0](&v41, v19);
    if (LOBYTE(v41) != 1)
    {
      return result;
    }

    v20 = (a2 + *(type metadata accessor for ControlSliderControllerNavigableModifier() + 80));
    v21 = *v20;
    v22 = v20[1];
    v38 = v21;
    v39 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
    sub_24F926F38();
    v23 = v41 * (v41 * v41) * 0.1;
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    v26 = *(a2 + 96);
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    MEMORY[0x25304CAF0](&v41);
    v28 = v23 + v41;
  }

  else
  {
    if (result != *MEMORY[0x277CDE490])
    {
      return (*(v9 + 8))(v12, v8);
    }

    v15 = *a2;
    if (*(a2 + 8) == 1)
    {
      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      sub_24F92BDC8();
      v29 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v15, 0);
      result = (*(v5 + 8))(v7, v4);
      if (v38 != 1)
      {
        return result;
      }
    }

    v30 = *(a2 + 40);
    v31 = *(a2 + 48);
    v38 = *(a2 + 32);
    v39 = v30;
    LOBYTE(v40) = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
    result = MEMORY[0x25304CAF0](&v41, v32);
    if (LOBYTE(v41) != 1)
    {
      return result;
    }

    v33 = (a2 + *(type metadata accessor for ControlSliderControllerNavigableModifier() + 80));
    v34 = *v33;
    v35 = v33[1];
    v38 = v34;
    v39 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
    sub_24F926F38();
    v36 = v41 * (v41 * v41) * -0.1;
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    v26 = *(a2 + 96);
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    MEMORY[0x25304CAF0](&v41);
    v28 = v41 + v36;
  }

  if (v28 <= 0.0)
  {
    v28 = 0.0;
  }

  if (v28 <= 1.0)
  {
    v37 = v28;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = v24;
  v39 = v25;
  v40 = v26;
  result = MEMORY[0x25304CAF0](&v41, v27);
  if (v41 != v37)
  {
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v41 = v37;
    return sub_24F927178();
  }

  return result;
}

void sub_24EFD624C(char a1, char a2, char a3, double a4)
{
  v5 = v4;
  v10 = sub_24F924848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v14, 0);
    (*(v11 + 8))(v13, v10);
    if (v31 != 1)
    {
      return;
    }
  }

  v16 = *(v5 + 40);
  v17 = *(v5 + 48);
  v31 = *(v5 + 32);
  v32 = v16;
  LOBYTE(v33) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  MEMORY[0x25304CAF0](&v30, v18);
  if (LOBYTE(v30) != 1)
  {
    return;
  }

  if (a2)
  {
    v19 = (v5 + *(type metadata accessor for ControlSliderControllerNavigableModifier() + 80));
    v20 = *v19;
    v21 = v19[1];
    v31 = v20;
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
    sub_24F926F38();
    v22 = v30 * (v30 * v30);
    if (a1 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 1.0;
  if (a1 == 1)
  {
LABEL_10:
    a4 = -a4;
  }

LABEL_11:
  v23 = a4 * v22;
  v24 = *(v5 + 80);
  v25 = *(v5 + 88);
  v26 = *(v5 + 96);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](&v30);
  v28 = v23 + v30;
  if (a3)
  {
    v28 = round(v28 * *(v5 + 120)) / *(v5 + 120);
  }

  if (v28 <= 0.0)
  {
    v28 = 0.0;
  }

  if (v28 <= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v31 = v24;
  v32 = v25;
  v33 = v26;
  MEMORY[0x25304CAF0](&v30, v27);
  if (v30 != v29)
  {
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v30 = v29;
    sub_24F927178();
  }
}

uint64_t sub_24EFD651C(uint64_t a1, unsigned __int8 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for ControlSliderControllerNavigableModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
  sub_24F926F38();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_24E601704(v6, &unk_27F22EC30);
  }

  (*(v8 + 32))(v16, v6, v7);
  v19 = *(a1 + 152);
  LOBYTE(v39) = *(a1 + 144);
  *(&v39 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8);
  sub_24F926F38();
  if (v38 == a2)
  {
    v39 = *(a1 + *(v17 + 68));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0);
    sub_24F926F38();
    if (v38)
    {
    }

    else
    {
      sub_24F91F5A8();
      sub_24F91F638();
      sub_24EFDB7FC(&qword_27F2363D0, MEMORY[0x277CC9578]);
      LODWORD(v37) = sub_24F92AF78();
      v20 = a2;
      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v13, v7);
      if ((v37 & 1) == 0)
      {
        v22 = v20;
        if (qword_27F2113D8 != -1)
        {
          swift_once();
        }

        v23 = sub_24F9220D8();
        __swift_project_value_buffer(v23, qword_27F39E7D8);
        v24 = sub_24F9220B8();
        v25 = sub_24F92BD98();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v36 = v26;
          v37 = swift_slowAlloc();
          *&v39 = v37;
          *v26 = 136315138;
          LOBYTE(v38) = v22;
          v27 = sub_24F92B188();
          v29 = sub_24E7620D4(v27, v28, &v39);

          v30 = v36;
          *(v36 + 1) = v29;
          _os_log_impl(&dword_24E5DD000, v24, v25, "Long press triggered (%s", v30, 0xCu);
          v31 = v37;
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x2530542D0](v31, -1, -1);
          MEMORY[0x2530542D0](v30, -1, -1);
        }

        v32 = (a1 + *(v17 + 72));
        v33 = *v32;
        v34 = *(v32 + 1);
        LOBYTE(v39) = v33;
        *(&v39 + 1) = v34;
        LOBYTE(v38) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
        sub_24F926F48();
        sub_24EFD69B0(v22);
      }
    }
  }

  return (*(v8 + 8))(v16, v7);
}

void sub_24EFD69B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v1 + *(v7 + 68));
  v10 = *v8;
  v9 = v8[1];
  aBlock = *v8;
  v28 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0);
  sub_24F926F38();
  v11 = v33;
  if (v33)
  {
    goto LABEL_4;
  }

  sub_24F91F528();
  v12 = (v2 + *(v4 + 76));
  v13 = *v12;
  v14 = v12[1];
  aBlock = v13;
  v28 = v14;
  v33 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F48();
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  aBlock = *(v2 + 56);
  v28 = v16;
  LOBYTE(v29) = v17;
  LOBYTE(v33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927178();
  v26 = objc_opt_self();
  v18 = [objc_opt_self() mainScreen];
  v19 = a1;
  v20 = [v18 maximumFramesPerSecond];

  sub_24EFDBFC4(v2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_24EFDC02C(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  *(v22 + v21 + v6) = v19;
  v31 = sub_24EFDCA30;
  v32 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_24ECAEFC8;
  v30 = &block_descriptor_88_0;
  v23 = _Block_copy(&aBlock);

  v24 = [v26 scheduledTimerWithTimeInterval:1 repeats:v23 block:1.0 / v20];
  _Block_release(v23);
  aBlock = v10;
  v28 = v9;
  v33 = v24;
  sub_24F926F48();
  v25 = [objc_opt_self() mainRunLoop];
  aBlock = v10;
  v28 = v9;
  sub_24F926F38();
  v11 = v33;
  if (v33)
  {
    [v25 addTimer:v33 forMode:*MEMORY[0x277CBE738]];

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_24EFD6CEC(uint64_t a1, unsigned __int8 a2)
{
  v4 = *(a1 + 152);
  LOBYTE(v18) = *(a1 + 144);
  *(&v18 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8);
  sub_24F926F38();
  if (v17 == a2)
  {
    v5 = type metadata accessor for ControlSliderControllerNavigableModifier();
    v18 = *(a1 + *(v5 + 68));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0);
    sub_24F926F38();
    if (v17)
    {
    }

    else
    {
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v6 = sub_24F9220D8();
      __swift_project_value_buffer(v6, qword_27F39E7D8);
      v7 = sub_24F9220B8();
      v8 = sub_24F92BD98();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v18 = v10;
        *v9 = 136315138;
        v11 = sub_24F92B188();
        v13 = sub_24E7620D4(v11, v12, &v18);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_24E5DD000, v7, v8, "Long press triggered after direction change (%s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x2530542D0](v10, -1, -1);
        MEMORY[0x2530542D0](v9, -1, -1);
      }

      v14 = (a1 + *(v5 + 72));
      v15 = *v14;
      v16 = *(v14 + 1);
      LOBYTE(v18) = v15;
      *(&v18 + 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
      sub_24F926F48();
      sub_24EFD69B0(a2);
    }
  }
}

uint64_t sub_24EFD6F24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  type metadata accessor for ControlSliderControllerNavigableModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  result = sub_24F926F38();
  if (LOBYTE(v8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8);
    sub_24F926F38();
    if (LOBYTE(v8) == a3 && (sub_24EFD39A0() & 1) != 0)
    {
      sub_24F91F528();
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
      sub_24F926F38();
      sub_24EFD624C(a3, 1, 0, (v7 - v8) * *(a2 + 136));
      return sub_24F926F48();
    }

    else
    {
      return sub_24EFD42DC();
    }
  }

  return result;
}

uint64_t OverlayHorizontalControlSlider.init(value:in:isFocused:onEditingChanged:leadingSymbol:trailingSymbol:hideTrailingSymbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, char a14)
{
  sub_24F926F28();
  *(a9 + 104) = v27;
  *(a9 + 112) = v28;
  result = sub_24F926F28();
  *(a9 + 120) = v27;
  *(a9 + 128) = v28;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  return result;
}

uint64_t OverlayHorizontalControlSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v99);
  v98 = v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = v90 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  MEMORY[0x28223BE20](v96);
  v97 = (v90 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361B0);
  MEMORY[0x28223BE20](v6);
  v93 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361B8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v94 = v90 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361C0);
  MEMORY[0x28223BE20](v106);
  v105 = v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361C8);
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = v90 - v14;
  v15 = v1[7];
  v119[0] = v1[6];
  v119[1] = v15;
  v16 = v1[3];
  v115[1] = v1[2];
  v116 = v16;
  v17 = v1[5];
  v117 = v1[4];
  v118 = v17;
  v18 = v1[1];
  v114 = *v1;
  v115[0] = v18;
  v120 = *v1;
  *&v119[2] = *(v1 + 16);
  v19 = LOBYTE(v119[0]);
  v121 = *(v1 + 2);
  v107 = v114;
  v108 = *(v1 + 2);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  sub_24F927198();
  v20 = v112;
  v21 = v113;
  v122 = v116;
  v22 = swift_allocObject();
  v23 = v119[1];
  *(v22 + 112) = v119[0];
  *(v22 + 128) = v23;
  *(v22 + 144) = *&v119[2];
  v24 = v116;
  *(v22 + 48) = v115[1];
  *(v22 + 64) = v24;
  v25 = v118;
  *(v22 + 80) = v117;
  *(v22 + 96) = v25;
  v26 = v115[0];
  *(v22 + 16) = v114;
  *(v22 + 32) = v26;
  v112 = v20;
  v27 = 80;
  if (v19)
  {
    v27 = 88;
  }

  v113 = v21;
  v28 = *(&v115[-1] + v27);

  v110 = v28;
  v111 = 0;
  sub_24EFD7EA0(&v114, &v107);
  sub_24EFD7ED8();
  sub_24F9265E8();

  *&v107 = *(&v118 + 1);
  BYTE8(v107) = v19;
  sub_24F9265E8();
  sub_24EFD7F2C();
  sub_24E62C088();
  v29 = v94;
  sub_24F9270A8();
  KeyPath = swift_getKeyPath();
  v31 = (v29 + *(v10 + 44));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v33 = *MEMORY[0x277CDF3D0];
  v34 = sub_24F9234D8();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = KeyPath;
  v35 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v36 = *(v96 + 36);
  v37 = *MEMORY[0x277CE13D8];
  v38 = sub_24F927748();
  v39 = v97;
  (*(*(v38 - 8) + 104))(v97 + v36, v37, v38);
  *v39 = v35;
  sub_24E602068(&qword_27F236200, &qword_27F217DC0);
  v40 = sub_24F9238D8();
  v41 = swift_getKeyPath();
  *&v107 = v40;
  v42 = sub_24F9238D8();
  v43 = v105;
  sub_24EFDB2E0(v29, v105);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236208) + 36));
  *v44 = v41;
  v44[1] = v42;
  v45 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F236210) + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118) + 28);
  v47 = *MEMORY[0x277CDF438];
  v48 = sub_24F9234F8();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = swift_getKeyPath();
  v112 = *(v119 + 8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v50 = v107;
  LODWORD(v92) = v108;
  v122 = *(&v119[1] + 8);
  v112 = *(&v119[1] + 8);
  v97 = v49;
  sub_24F926F58();
  v51 = v107;
  LODWORD(v91) = v108;
  v107 = v120;
  v108 = v121;
  sub_24F927198();
  v52 = v112;
  v53 = v113;
  v54 = v43 + *(v106 + 36);
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v55 = qword_27F24E488;
  *&v112 = qword_27F24E488;
  type metadata accessor for GameControllerObserver();
  v56 = v55;
  sub_24F926F28();
  v57 = *(&v107 + 1);
  *(v54 + 16) = v107;
  *(v54 + 24) = v57;
  *(v54 + 32) = v50;
  *(v54 + 48) = v92;
  *(v54 + 56) = v51;
  v93 = *(&v51 + 1);
  v94 = v51;
  *(v54 + 72) = v91;
  *(v54 + 80) = v52;
  v95 = *(&v52 + 1);
  v96 = v52;
  *(v54 + 96) = v53;
  *(v54 + 104) = 1;
  *(v54 + 108) = 1045220557;
  *(v54 + 112) = 0x3FD0000000000000;
  *(v54 + 120) = 16;
  *(v54 + 128) = xmmword_24F9BA020;
  LOBYTE(v112) = 0;

  sub_24F926F28();
  v58 = *(&v107 + 1);
  *(v54 + 144) = v107;
  *(v54 + 152) = v58;
  v59 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v92 = v50;
  v60 = v59;
  v61 = sub_24F91F648();
  v62 = *(v61 - 8);
  v90[0] = *(v62 + 56);
  v90[1] = v62 + 56;
  v91 = *(&v50 + 1);
  v63 = v100;
  (v90[0])(v100, 1, 1, v61);
  v64 = v98;
  sub_24E60169C(v63, v98, &unk_27F22EC30);
  sub_24F926F28();
  sub_24E601704(v63, &unk_27F22EC30);
  v65 = v60[17];
  *&v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236228);
  sub_24F926F28();
  *(v54 + v65) = v107;
  v66 = v54 + v60[18];
  LOBYTE(v112) = 0;
  sub_24F926F28();
  v67 = *(&v107 + 1);
  *v66 = v107;
  *(v66 + 8) = v67;
  v68 = (v54 + v60[19]);
  *&v112 = 0;
  sub_24F926F28();
  v69 = *(&v107 + 1);
  *v68 = v107;
  v68[1] = v69;
  v70 = (v54 + v60[20]);
  *&v112 = 0;
  sub_24F926F28();
  v71 = *(&v107 + 1);
  *v70 = v107;
  v70[1] = v71;
  (v90[0])(v63, 1, 1, v61);
  sub_24E60169C(v63, v64, &unk_27F22EC30);
  sub_24F926F28();

  sub_24E601704(v63, &unk_27F22EC30);
  v107 = *(v115 + 8);
  LOBYTE(v108) = BYTE8(v115[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
  sub_24F923358();
  v72 = swift_allocObject();
  v73 = v119[1];
  *(v72 + 112) = v119[0];
  *(v72 + 128) = v73;
  *(v72 + 144) = *&v119[2];
  v74 = v116;
  *(v72 + 48) = v115[1];
  *(v72 + 64) = v74;
  v75 = v118;
  *(v72 + 80) = v117;
  *(v72 + 96) = v75;
  v76 = v115[0];
  *(v72 + 16) = v114;
  *(v72 + 32) = v76;
  sub_24EFD7EA0(&v114, &v107);
  v77 = sub_24EFDB4EC();
  v78 = MEMORY[0x277D839C8];
  v79 = v101;
  v80 = v105;
  v81 = v106;
  v82 = MEMORY[0x277D839B0];
  sub_24F926AB8();

  sub_24E601704(v80, &qword_27F2361C0);
  v107 = v122;
  sub_24F926F38();
  v83 = swift_allocObject();
  v84 = v119[1];
  *(v83 + 112) = v119[0];
  *(v83 + 128) = v84;
  *(v83 + 144) = *&v119[2];
  v85 = v116;
  *(v83 + 48) = v115[1];
  *(v83 + 64) = v85;
  v86 = v118;
  *(v83 + 80) = v117;
  *(v83 + 96) = v86;
  v87 = v115[0];
  *(v83 + 16) = v114;
  *(v83 + 32) = v87;
  sub_24EFD7EA0(&v114, &v107);
  *&v107 = v81;
  *(&v107 + 1) = v82;
  v108 = v77;
  v109 = v78;
  swift_getOpaqueTypeConformance2();
  v88 = v103;
  sub_24F926AB8();

  return (*(v102 + 8))(v79, v88);
}

uint64_t sub_24EFD7E0C(char a1)
{
  v1 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  result = sub_24F926F38();
  if (v3 != v1)
  {
    return sub_24F926F48();
  }

  return result;
}

unint64_t sub_24EFD7ED8()
{
  result = qword_27F2361D8;
  if (!qword_27F2361D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361D8);
  }

  return result;
}

unint64_t sub_24EFD7F2C()
{
  result = qword_27F2361E0;
  if (!qword_27F2361E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361B0);
    sub_24EFD7ED8();
    sub_24EFDB7FC(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361E0);
  }

  return result;
}

unsigned __int8 *sub_24EFD7FF0(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*result != *a2)
  {
    v3 = *(a3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F38();
    return v3(v4);
  }

  return result;
}

uint64_t sub_24EFD8070@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F236330);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  if (a2)
  {
    v11 = *(v7 + 56);

    return v11(a3, 1, 1, v6, v8);
  }

  else
  {
    v20[0] = v7;

    v13 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v20[1] = a1;
    v20[2] = KeyPath;
    v20[3] = v13;
    sub_24F925938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
    sub_24E60156C();
    sub_24F9260C8();

    v15 = swift_getKeyPath();
    v16 = &v10[*(v6 + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
    v18 = *MEMORY[0x277CDF3C0];
    v19 = sub_24F9234D8();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = v15;
    sub_24E6009C8(v10, a3, &unk_27F236330);
    return (*(v20[0] + 56))(a3, 0, 1, v6);
  }
}

uint64_t sub_24EFD82DC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 88);
  v5 = *(v0 + 80);
  v9 = v5;
  if (v10 != 1)
  {

    sub_24F92BDC8();
    v6 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v9, &qword_27F223A10);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void sub_24EFD843C(double a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v1 + 88);
  v7 = *(v1 + 80);
  v16 = v7;
  if (v17 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(v1 + 40))
    {
      if (a1 <= 0.001)
      {
        if (*(*(v1 + 24) + 16))
        {
LABEL_18:

          return;
        }

        goto LABEL_24;
      }

      v9 = *(v1 + 24);
      v10 = *(v9 + 16);
      if (!v10)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      sub_24E6B8D5C(v9, v9 + 32, 1, (2 * v10) | 1);
      v12 = v11;
    }

    else
    {
      v12 = *(v1 + 24);
    }

    v13 = *(v12 + 16);
    v14 = round((v13 - 1) * a1);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        if (v13)
        {

          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E601704(&v16, &qword_27F223A10);
  (*(v4 + 8))(v6, v3);
  if (v15[15])
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(*(v1 + 24) + 16))
  {
    goto LABEL_18;
  }
}

uint64_t sub_24EFD86D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v41 = a2;
  v37 = sub_24F9239C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F924E98();
  MEMORY[0x28223BE20](v35);
  v39 = sub_24F923568();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924158();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236550);
  MEMORY[0x28223BE20](v34);
  v13 = &v34 - v12;
  sub_24F924148();
  v14 = swift_allocObject();
  v15 = *(v3 + 112);
  *(v14 + 112) = *(v3 + 96);
  *(v14 + 128) = v15;
  *(v14 + 144) = *(v3 + 128);
  *(v14 + 160) = *(v3 + 144);
  v16 = *(v3 + 48);
  *(v14 + 48) = *(v3 + 32);
  *(v14 + 64) = v16;
  v17 = *(v3 + 80);
  *(v14 + 80) = *(v3 + 64);
  *(v14 + 96) = v17;
  v18 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v18;
  sub_24EFDD940(v3, v42);
  sub_24EFDB7FC(&qword_27F236558, MEMORY[0x277CDDAD8]);
  sub_24F927268();

  (*(v9 + 8))(v11, v8);
  sub_24F925228();
  sub_24F923518();
  v19 = v36;
  v20 = v37;
  (*(v4 + 16))(v36, v38, v37);
  v21 = (*(v4 + 80) + 168) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = *(v3 + 112);
  *(v22 + 112) = *(v3 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(v3 + 128);
  *(v22 + 160) = *(v3 + 144);
  v24 = *(v3 + 48);
  *(v22 + 48) = *(v3 + 32);
  *(v22 + 64) = v24;
  v25 = *(v3 + 80);
  *(v22 + 80) = *(v3 + 64);
  *(v22 + 96) = v25;
  v26 = *(v3 + 16);
  *(v22 + 16) = *v3;
  *(v22 + 32) = v26;
  (*(v4 + 32))(v22 + v21, v19, v20);
  sub_24EFDD940(v3, v42);
  sub_24EFDB7FC(&unk_27F236560, MEMORY[0x277CDD730]);
  sub_24EFDB7FC(&qword_27F2180A0, MEMORY[0x277CDD708]);
  v27 = v39;
  sub_24F927278();

  (*(v40 + 8))(v7, v27);
  v28 = swift_allocObject();
  v29 = *(v3 + 112);
  *(v28 + 112) = *(v3 + 96);
  *(v28 + 128) = v29;
  *(v28 + 144) = *(v3 + 128);
  *(v28 + 160) = *(v3 + 144);
  v30 = *(v3 + 48);
  *(v28 + 48) = *(v3 + 32);
  *(v28 + 64) = v30;
  v31 = *(v3 + 80);
  *(v28 + 80) = *(v3 + 64);
  *(v28 + 96) = v31;
  v32 = *(v3 + 16);
  *(v28 + 16) = *v3;
  *(v28 + 32) = v32;
  sub_24EFDD940(v3, v42);
  sub_24E602068(&qword_27F236570, &qword_27F236550);
  sub_24F927268();

  return sub_24E601704(v13, &qword_27F236550);
}

uint64_t sub_24EFD8CA8(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](&v5, v3);
  v6 = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F48();
  v6 = *(a2 + 64);
  LOBYTE(v5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24EFD8D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  sub_24F923558();
  sub_24F923538();
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  sub_24F927178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

BOOL sub_24EFD8E70()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 88);
  v5 = *(v0 + 80);
  v13 = v5;
  if (v14 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v13, &qword_27F223A10);
    (*(v2 + 8))(v4, v1);
    if (v11 != 1)
    {
      return 0;
    }
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 112);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](&v10, v8);
  return v10 >= 0.125;
}

uint64_t sub_24EFD9028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v78);
  v68 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236470);
  MEMORY[0x28223BE20](v6);
  v8 = (&v59 - v7);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236478);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - v9;
  v10 = swift_allocObject();
  v11 = *(v1 + 112);
  *(v10 + 112) = *(v1 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(v1 + 128);
  *(v10 + 160) = *(v1 + 144);
  v12 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v12;
  v13 = *(v1 + 80);
  *(v10 + 80) = *(v1 + 64);
  *(v10 + 96) = v13;
  v14 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v14;
  sub_24EFDD940(v1, &v81);
  v67 = sub_24F9276F8();
  v15 = sub_24EFD8E70();
  v79 = *(v1 + 136);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v77 = *(&v81 + 1);
  v17 = v81;
  LODWORD(v61) = v82;
  v84 = *(v1 + 64);
  v79 = *(v1 + 64);
  v69 = v16;
  sub_24F926F58();
  v18 = *(&v81 + 1);
  v76 = v81;
  LODWORD(v60) = v82;
  v81 = *(v1 + 96);
  v82 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  sub_24F927198();
  v19 = v79;
  v20 = v80;
  v71 = v6;
  v21 = *(v6 + 36);
  v70 = v8;
  v22 = v8 + v21;
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v65 = v15;
  v23 = qword_27F24E488;
  *&v79 = qword_27F24E488;
  type metadata accessor for GameControllerObserver();
  v24 = v23;
  sub_24F926F28();
  v25 = *(&v81 + 1);
  *(v22 + 2) = v81;
  *(v22 + 3) = v25;
  v26 = v77;
  *(v22 + 4) = v17;
  *(v22 + 5) = v26;
  v22[48] = v61;
  *(v22 + 7) = v76;
  *(v22 + 8) = v18;
  v62 = v18;
  v22[72] = v60;
  *(v22 + 5) = v19;
  v63 = *(&v19 + 1);
  v64 = v19;
  *(v22 + 12) = v20;
  v22[104] = 0;
  *(v22 + 27) = 1045220557;
  *(v22 + 14) = 0x3FD0000000000000;
  *(v22 + 15) = 16;
  *(v22 + 8) = xmmword_24F9BA020;
  LOBYTE(v79) = 0;

  sub_24F926F28();
  v27 = *(&v81 + 1);
  v22[144] = v81;
  *(v22 + 19) = v27;
  v28 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v61 = v17;
  v29 = v28;
  v30 = sub_24F91F648();
  v31 = *(v30 - 8);
  v59 = *(v31 + 56);
  v60 = v31 + 56;
  v32 = v66;
  v59(v66, 1, 1, v30);
  v33 = v68;
  sub_24E60169C(v32, v68, &unk_27F22EC30);
  sub_24F926F28();
  sub_24E601704(v32, &unk_27F22EC30);
  v34 = v29[17];
  *&v79 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236228);
  sub_24F926F28();
  *&v22[v34] = v81;
  v35 = &v22[v29[18]];
  LOBYTE(v79) = 0;
  sub_24F926F28();
  v36 = *(&v81 + 1);
  *v35 = v81;
  *(v35 + 1) = v36;
  v37 = &v22[v29[19]];
  *&v79 = 0;
  sub_24F926F28();
  v38 = *(&v81 + 1);
  *v37 = v81;
  *(v37 + 1) = v38;
  v39 = &v22[v29[20]];
  *&v79 = 0;
  sub_24F926F28();
  v40 = *(&v81 + 1);
  *v39 = v81;
  *(v39 + 1) = v40;
  v59(v32, 1, 1, v30);
  sub_24E60169C(v32, v33, &unk_27F22EC30);
  sub_24F926F28();

  sub_24E601704(v32, &unk_27F22EC30);
  v41 = v70;
  *v70 = sub_24EFDD938;
  *(v41 + 8) = v10;
  *(v41 + 16) = v67;
  *(v41 + 24) = v65;
  v81 = *v2;
  LOBYTE(v82) = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
  sub_24F923358();
  v42 = swift_allocObject();
  v43 = *(v2 + 112);
  *(v42 + 112) = *(v2 + 96);
  *(v42 + 128) = v43;
  *(v42 + 144) = *(v2 + 128);
  *(v42 + 160) = *(v2 + 144);
  v44 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v44;
  v45 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v45;
  v46 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v46;
  sub_24EFDD940(v2, &v81);
  v47 = sub_24EFDD9D0();
  v48 = MEMORY[0x277D839C8];
  v49 = v72;
  v50 = v71;
  v51 = MEMORY[0x277D839B0];
  sub_24F926AB8();

  sub_24E601704(v41, &qword_27F236470);
  v81 = v84;
  sub_24F926F38();
  v52 = swift_allocObject();
  v53 = *(v2 + 112);
  *(v52 + 112) = *(v2 + 96);
  *(v52 + 128) = v53;
  *(v52 + 144) = *(v2 + 128);
  *(v52 + 160) = *(v2 + 144);
  v54 = *(v2 + 48);
  *(v52 + 48) = *(v2 + 32);
  *(v52 + 64) = v54;
  v55 = *(v2 + 80);
  *(v52 + 80) = *(v2 + 64);
  *(v52 + 96) = v55;
  v56 = *(v2 + 16);
  *(v52 + 16) = *v2;
  *(v52 + 32) = v56;
  sub_24EFDD940(v2, &v81);
  *&v81 = v50;
  *(&v81 + 1) = v51;
  v82 = v47;
  v83 = v48;
  swift_getOpaqueTypeConformance2();
  v57 = v74;
  sub_24F926AB8();

  return (*(v73 + 8))(v49, v57);
}

uint64_t sub_24EFD99CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364D8);
  MEMORY[0x28223BE20](v30);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364E0);
  MEMORY[0x28223BE20](v9);
  v11 = (v29 - v10);
  *v11 = sub_24F927608();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364E8);
  v14 = a1;
  sub_24EFD9E74(a1, a2, v11 + *(v13 + 44));
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2364F0) + 36)) = 0;
  if (qword_27F210D98 != -1)
  {
    swift_once();
  }

  v15 = qword_27F39D330;
  v16 = *(v9 + 36);
  v29[1] = v9;
  v17 = (v11 + v16);
  v18 = *(sub_24F924258() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24F924B38();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = v15;
  v17[1] = v15;
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)) = 256;
  sub_24EFD86D8(v14, v8);
  sub_24E602068(&qword_27F236500, &qword_27F2364D0);
  sub_24F927258();
  (*(v6 + 8))(v8, v5);
  sub_24E602068(&qword_27F236508, &qword_27F2364D8);
  v32[0] = sub_24F923258();
  sub_24F9235A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236510);
  sub_24EFDDC64();
  sub_24E602068(&qword_27F236540, &qword_27F236510);
  v21 = v31;
  sub_24F9269D8();

  sub_24E601704(v11, &qword_27F2364E0);
  v22 = swift_allocObject();
  v23 = *(a2 + 112);
  *(v22 + 112) = *(a2 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(a2 + 128);
  *(v22 + 160) = *(a2 + 144);
  v24 = *(a2 + 48);
  *(v22 + 48) = *(a2 + 32);
  *(v22 + 64) = v24;
  v25 = *(a2 + 80);
  *(v22 + 80) = *(a2 + 64);
  *(v22 + 96) = v25;
  v26 = *(a2 + 16);
  *(v22 + 16) = *a2;
  *(v22 + 32) = v26;
  v27 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236548) + 36));
  *v27 = sub_24EFDDE00;
  v27[1] = v22;
  v27[2] = 0;
  v27[3] = 0;
  return sub_24EFDD940(a2, v32);
}

uint64_t sub_24EFD9E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = sub_24F927908();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24F9278E8();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236578);
  MEMORY[0x28223BE20](v67);
  v9 = &v66 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236580);
  MEMORY[0x28223BE20](v71);
  v75 = &v66 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236588);
  MEMORY[0x28223BE20](v74);
  v82 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v66 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236590);
  MEMORY[0x28223BE20](v16);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = sub_24F926C98();
  if (qword_27F210D98 != -1)
  {
    swift_once();
  }

  v22 = qword_27F39D330;
  v23 = &v20[*(v16 + 36)];
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = v22;
  v23[1] = v22;
  *v20 = v21;
  *(v20 + 4) = 256;
  v78 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F923998();
  if (sub_24EFD82DC())
  {
    *v87 = *(a2 + 96);
    v87[2] = *(a2 + 112);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    MEMORY[0x25304CAF0](v85, v27);
  }

  v79 = v20;
  v81 = a1;
  sub_24F927618();
  sub_24F9242E8();
  v66 = sub_24F927718();
  *v87 = *(a2 + 96);
  v87[2] = *(a2 + 112);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](v85);
  v29 = *&v85[0];
  *v87 = *(a2 + 96);
  v87[2] = *(a2 + 112);
  MEMORY[0x25304CAF0](v85, v28);
  sub_24EFD843C(*v85);
  v30 = sub_24F926DF8();
  v31 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v87[0] = v30;
  v87[1] = KeyPath;
  v87[2] = v31;
  sub_24F925958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
  sub_24E60156C();
  sub_24F9260C8();

  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236598) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
  sub_24F924CF8();
  v35 = sub_24F924D08();
  (*(*(v35 - 8) + 56))(v33 + v34, 0, 1, v35);
  *v33 = swift_getKeyPath();
  v36 = v68;
  sub_24F9278D8();
  v37 = v72;
  sub_24F9278F8();
  v38 = &v9[*(v67 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A8);
  sub_24EFDB7FC(&qword_27F2365B0, MEMORY[0x277CE1598]);
  v39 = v73;
  sub_24F924388();
  (*(v76 + 8))(v37, v77);
  (*(v70 + 8))(v36, v39);
  *v38 = swift_getKeyPath();
  if (sub_24EFD8E70())
  {
    v40 = *(a2 + 32);
  }

  else
  {
    v40 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v41 = v79;
  v42 = v75;
  sub_24E6009C8(v9, v75, &qword_27F236578);
  *(v42 + *(v71 + 36)) = v40;
  sub_24F923998();
  v44 = v43 * 0.5;
  sub_24F923998();
  v46 = v45 + -50.0;
  v47 = v69;
  sub_24E6009C8(v42, v69, &qword_27F236580);
  v48 = (v47 + *(v74 + 36));
  *v48 = v44;
  v48[1] = v46;
  v49 = v80;
  sub_24E6009C8(v47, v80, &qword_27F236588);
  v50 = v83;
  sub_24E60169C(v41, v83, &qword_27F236590);
  v51 = v41;
  v52 = v82;
  sub_24EFDE038(v49, v82);
  v53 = v84;
  sub_24E60169C(v50, v84, &qword_27F236590);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365B8);
  v55 = v53 + *(v54 + 48);
  v56 = v78;
  *&v85[0] = v78;
  *(v85 + 8) = v88;
  *(&v85[1] + 8) = v89;
  *(&v85[6] + 8) = v94;
  *(&v85[3] + 8) = v91;
  *(&v85[4] + 8) = v92;
  *(&v85[5] + 8) = v93;
  *(&v85[2] + 8) = v90;
  v57 = v66;
  *(&v85[7] + 1) = v66;
  v86 = v29;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v85[3];
  *(v55 + 32) = v85[2];
  *(v55 + 48) = v60;
  *v55 = v58;
  *(v55 + 16) = v59;
  v61 = v85[4];
  v62 = v85[5];
  v63 = v85[6];
  v64 = v85[7];
  *(v55 + 128) = v86;
  *(v55 + 96) = v63;
  *(v55 + 112) = v64;
  *(v55 + 64) = v61;
  *(v55 + 80) = v62;
  sub_24EFDE038(v52, v53 + *(v54 + 64));
  sub_24E60169C(v85, v87, &unk_27F2365C0);
  sub_24E601704(v49, &qword_27F236588);
  sub_24E601704(v51, &qword_27F236590);
  sub_24E601704(v52, &qword_27F236588);
  *&v87[7] = v91;
  *&v87[9] = v92;
  *&v87[11] = v93;
  *&v87[13] = v94;
  *&v87[1] = v88;
  *&v87[3] = v89;
  *&v87[5] = v90;
  v87[0] = v56;
  v87[15] = v57;
  v87[16] = v29;
  sub_24E601704(v87, &unk_27F2365C0);
  return sub_24E601704(v50, &qword_27F236590);
}

uint64_t sub_24EFDA82C(uint64_t a1)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](&v4, v2);
  v5 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  return sub_24F926F48();
}

double sub_24EFDA90C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*a1)
  {
    v34 = *(a1 + 48);
    *&v35 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    sub_24F927198();
    v34 = *(a1 + 72);
    LOBYTE(v35) = *(a1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
    sub_24F923378();
    v4 = *(*(a1 + 8) + 16);
    if (v4)
    {
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    v11 = sub_24F926DF8();
    if (v4)
    {
    }

    v12 = sub_24F926DF8();
    sub_24F926F28();
    sub_24F926F28();
    v22 = v20;
    v23 = v21;
    v24 = xmmword_24F98B440;
    v25 = v10;
    v26 = v9;
    v27 = v11;
    v28 = v12;
    LOBYTE(v29) = 0;
    BYTE8(v29) = v34;
    v30 = *(&v34 + 1);
    LOBYTE(v31) = v34;
    *(&v31 + 1) = *(&v34 + 1);
    sub_24EFDD740(&v20);
  }

  else
  {
    v34 = *(a1 + 72);
    LOBYTE(v35) = *(a1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
    sub_24F923378();
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v19 = *(a1 + 24);
    v7 = *(a1 + 40);
    v18 = *(a1 + 32);
    v34 = *(a1 + 48);
    *&v35 = *(a1 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    sub_24F927198();
    KeyPath = swift_getKeyPath();
    sub_24F926F28();
    sub_24F926F28();
    sub_24F926F28();
    *&v22 = v5;
    *(&v22 + 1) = v6;
    v23 = v19;
    *&v24 = v18;
    *(&v24 + 1) = v7;
    LOBYTE(v25) = v34;
    v26 = *(&v34 + 1);
    v27 = KeyPath;
    LOBYTE(v28) = 0;
    v29 = v20;
    v30 = v21;
    v31 = v34;
    v32 = v34;
    v33 = *(&v34 + 1);
    sub_24EFDD68C(&v20);
  }

  sub_24EFDD698();
  sub_24EFDD6EC();
  sub_24F924E28();
  v13 = v41;
  a2[6] = v40;
  a2[7] = v13;
  a2[8] = v42[0];
  *(a2 + 137) = *(v42 + 9);
  v14 = v37;
  a2[2] = v36;
  a2[3] = v14;
  v15 = v39;
  a2[4] = v38;
  a2[5] = v15;
  result = *&v34;
  v17 = v35;
  *a2 = v34;
  a2[1] = v17;
  return result;
}

double sub_24EFDACDC@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v11[0] = v1[4];
  *(v11 + 9) = *(v1 + 73);
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  sub_24EFDA90C(v10, v12);
  v5 = v12[7];
  a1[6] = v12[6];
  a1[7] = v5;
  a1[8] = v13[0];
  *(a1 + 137) = *(v13 + 9);
  v6 = v12[3];
  a1[2] = v12[2];
  a1[3] = v6;
  v7 = v12[5];
  a1[4] = v12[4];
  a1[5] = v7;
  result = *v12;
  v9 = v12[1];
  *a1 = v12[0];
  a1[1] = v9;
  return result;
}

uint64_t sub_24EFDAD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236420);
  sub_24E602068(&qword_27F236428, &qword_27F236420);
  sub_24EFDD4B0();
  return sub_24F9269E8();
}

id sub_24EFDAF24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer_recognizedPressTypes] = MEMORY[0x277D84F90];
  sub_24E60169C(a1, v17, &qword_27F2129B0);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_24F92CDE8();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, v13, a2);
  swift_unknownObjectRelease();
  sub_24E601704(a1, &qword_27F2129B0);
  return v14;
}

id sub_24EFDB254@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for UIArrowConsumingGestureRecognizer.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24EFDB2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDB374(uint64_t a1)
{
  v2 = sub_24F9234F8();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x253049E50](v5);
}

uint64_t type metadata accessor for ControlSliderControllerNavigableModifier()
{
  result = qword_27F2362C0;
  if (!qword_27F2362C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EFDB4EC()
{
  result = qword_27F236238;
  if (!qword_27F236238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361C0);
    sub_24EFDB5A8();
    sub_24EFDB7FC(&qword_27F236288, type metadata accessor for ControlSliderControllerNavigableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236238);
  }

  return result;
}

unint64_t sub_24EFDB5A8()
{
  result = qword_27F236240;
  if (!qword_27F236240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F236210);
    sub_24EFDB660();
    sub_24E602068(&qword_27F236280, &qword_27F217118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236240);
  }

  return result;
}

unint64_t sub_24EFDB660()
{
  result = qword_27F236248;
  if (!qword_27F236248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236208);
    sub_24EFDB718();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236248);
  }

  return result;
}

unint64_t sub_24EFDB718()
{
  result = qword_27F236250;
  if (!qword_27F236250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361B8);
    sub_24E602068(&qword_27F236258, &unk_27F236260);
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236250);
  }

  return result;
}

uint64_t sub_24EFDB7FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_48()
{

  return swift_deallocObject();
}

uint64_t sub_24EFDB938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361C0);
  sub_24EFDB4EC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EFDBA10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EFDBAE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EFDBB90()
{
  sub_24EFDBE64(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24EFDBE0C();
    if (v1 <= 0x3F)
    {
      sub_24EFDBE64(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24EFDBE64(319, &qword_27F22B450, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24EFDBE64(319, &unk_27F2362F0, &type metadata for ControlSliderControllerNavigableModifier.AxisState, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24EB8E864(319, &qword_27F22A040, &unk_27F22EC30);
            if (v5 <= 0x3F)
            {
              sub_24EB8E864(319, &unk_27F236300, &qword_27F236228);
              if (v6 <= 0x3F)
              {
                sub_24EFDBE64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_24EFDBE64(319, &qword_27F236310, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_24EFDBE0C()
{
  if (!qword_27F235C98)
  {
    type metadata accessor for GameControllerObserver();
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F235C98);
    }
  }
}

void sub_24EFDBE64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24EFDBED8()
{
  result = qword_27F236320;
  if (!qword_27F236320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236320);
  }

  return result;
}

unint64_t sub_24EFDBF30()
{
  result = qword_27F236328;
  if (!qword_27F236328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236328);
  }

  return result;
}

uint64_t sub_24EFDBFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSliderControllerNavigableModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDC02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSliderControllerNavigableModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDC090(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ControlSliderControllerNavigableModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EFD4260(a1, a2, v6);
}

unint64_t sub_24EFDC110()
{
  result = qword_27F236390;
  if (!qword_27F236390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236390);
  }

  return result;
}

uint64_t sub_24EFDC18C(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for ControlSliderControllerNavigableModifier();

  return sub_24EFD5B48(a1, a2);
}

unint64_t sub_24EFDC268()
{
  result = qword_27F236398;
  if (!qword_27F236398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236380);
    sub_24E602068(&qword_27F236388, &qword_27F236378);
    sub_24EFDC110();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236398);
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_24E62A5EC(*v2, *(v2 + 8));

  v3 = v2 + v1[16];
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);

  v7 = v2 + v1[21];
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  return swift_deallocObject();
}

void *sub_24EFDC61C(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlSliderControllerNavigableModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EFD5D60(a1, v4);
}

uint64_t sub_24EFDC6A4(uint64_t a1)
{
  v2 = type metadata accessor for ControlSliderControllerNavigableModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EFDC74C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ControlSliderControllerNavigableModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return a1(v3, v4);
}

uint64_t objectdestroy_75Tm()
{
  v1 = type metadata accessor for ControlSliderControllerNavigableModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_24E62A5EC(*v2, *(v2 + 8));

  v3 = v2 + v1[16];
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);

  v7 = v2 + v1[21];
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_24EFDCA30(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlSliderControllerNavigableModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_24EFD6F24(a1, v4, v5);
}

char *sub_24EFDCAD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236448);
  sub_24F925798();
  v3 = [objc_allocWithZone(type metadata accessor for UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer()) initWithTarget:v9 action:sel_handleGesture];

  sub_24E69A5C4(0, &qword_27F22BD50);
  v4 = v3;
  v5 = sub_24F92B588();
  [v4 setAllowedTouchTypes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F9BA030;
  *(v6 + 32) = sub_24F92BB08();
  *(v6 + 40) = sub_24F92BB08();
  *(v6 + 48) = sub_24F92BB08();
  *(v6 + 56) = sub_24F92BB08();
  v7 = sub_24F92B588();

  [v4 setAllowedPressTypes_];

  *&v4[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer_recognizedPressTypes] = a2;

  sub_24F925798();
  [v4 setDelegate_];

  return v4;
}

void sub_24EFDCC94(void *a1)
{
  v1 = [a1 allPresses];
  sub_24E69A5C4(0, &qword_27F2363F0);
  sub_24EFDD1F0(&qword_27F2363F8, &qword_27F2363F0);
  v2 = sub_24F92BAA8();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_24F92C6F8();
    sub_24F92BAE8();
    v2 = v41;
    v3 = v42;
    v4 = v43;
    v5 = v44;
    v6 = v45;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v10 = (v4 + 64) >> 6;
  v39 = 0u;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_24F92C778() || (swift_dynamicCast(), (v13 = v40) == 0))
      {
LABEL_29:
        sub_24E6586B4();
        v24 = sqrt(vaddvq_f64(vmulq_f64(v39, v39)));
        v25 = *&v38[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer_recognizedPressTypes];
        v26 = *(v25 + 16);
        if (!v26)
        {
          if (v24 > 0.25)
          {
LABEL_56:
            [v38 setState_];
          }

          return;
        }

        v27 = vmulq_n_f64(v39, 1.0 / v24);
        v28 = atan2(v27.f64[0], v27.f64[1]);
        v29 = 0;
        v30 = v28 > 0.785398163;
        if (v28 >= 2.35619449)
        {
          v30 = 0;
        }

        v31 = v28 < -0.785398163;
        if (v28 <= -2.35619449)
        {
          v31 = 0;
        }

        v32 = fabs(v28);
        v33 = 0;
        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_61;
          }

          v35 = *(v25 + 32 + 8 * v33);
          if (v35 > 1)
          {
            if (v35 == 2)
            {
              if (v31)
              {
                goto LABEL_52;
              }
            }

            else if (v35 == 3 && v30)
            {
LABEL_52:
              v29 = 1;
              if (v34 == v26)
              {
                return;
              }

              ++v33;
              if (v34 >= v26)
              {
                goto LABEL_54;
              }

              continue;
            }
          }

          else if (v35)
          {
            if (v35 == 1 && (v28 < -2.35619449 || v28 > 2.35619449))
            {
              goto LABEL_52;
            }
          }

          else if (v32 < 0.785398163)
          {
            goto LABEL_52;
          }

          ++v33;
          if (v34 == v26)
          {
            goto LABEL_55;
          }

          if (v33 >= v26)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            if (v29 & 1 | (v24 <= 0.25))
            {
              return;
            }

            goto LABEL_56;
          }
        }
      }

      goto LABEL_18;
    }

    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_18:
    v14 = [v13 type];
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        [v13 force];
        v23 = v22;

        v17.f64[0] = v39.f64[0] - v23;
        v18 = v39.f64[1] + 0.0;
LABEL_28:
        v17.f64[1] = v18;
        v39 = v17;
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_8;
        }

        [v13 force];
        v37 = v19;

        v20 = v37;
LABEL_26:
        v39 = vaddq_f64(v39, v20);
      }
    }

    else
    {
      if (!v14)
      {
        [v13 force];
        v37 = v21;

        v20.f64[0] = 0.0;
        *&v20.f64[1] = v37;
        goto LABEL_26;
      }

      if (v14 == 1)
      {
        [v13 force];
        v16 = v15;

        v17.f64[0] = v39.f64[0] + 0.0;
        v18 = v39.f64[1] - v16;
        goto LABEL_28;
      }

LABEL_8:
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_24EFDD0EC(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 window];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 _focusSystemGesturesForFailureRequirements];

  if (!v6)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F2363D8);
  sub_24EFDD1F0(&unk_27F2363E0, &qword_27F2363D8);
  v7 = sub_24F92BAA8();

  v8 = sub_24F4D44EC(a2, v7);

  return v8 & 1;
}

uint64_t sub_24EFDD1F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24E69A5C4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFDD244()
{
  result = qword_27F236400;
  if (!qword_27F236400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236408);
    sub_24EFDD2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236400);
  }

  return result;
}

unint64_t sub_24EFDD2C8()
{
  result = qword_27F236410;
  if (!qword_27F236410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F236330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212AA0);
    sub_24E60156C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236410);
  }

  return result;
}

unint64_t sub_24EFDD3C0()
{
  result = qword_27F236418;
  if (!qword_27F236418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236370);
    sub_24EFDC268();
    sub_24EFDB7FC(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236418);
  }

  return result;
}

unint64_t sub_24EFDD4B0()
{
  result = qword_27F236430;
  if (!qword_27F236430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236430);
  }

  return result;
}

uint64_t sub_24EFDD504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_24EFDD54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EFDD5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236420);
  sub_24E602068(&qword_27F236428, &qword_27F236420);
  sub_24EFDD4B0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EFDD698()
{
  result = qword_27F236438;
  if (!qword_27F236438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236438);
  }

  return result;
}

unint64_t sub_24EFDD6EC()
{
  result = qword_27F236440;
  if (!qword_27F236440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236440);
  }

  return result;
}

uint64_t sub_24EFDD748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_24EFDD790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFDD808()
{
  result = qword_27F236450;
  if (!qword_27F236450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236458);
    sub_24EFDD88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236450);
  }

  return result;
}

unint64_t sub_24EFDD88C()
{
  result = qword_27F236460;
  if (!qword_27F236460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236468);
    sub_24EFDD698();
    sub_24EFDD6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236460);
  }

  return result;
}

unint64_t sub_24EFDD9D0()
{
  result = qword_27F236480;
  if (!qword_27F236480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236470);
    sub_24EFDDA8C();
    sub_24EFDB7FC(&qword_27F236288, type metadata accessor for ControlSliderControllerNavigableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236480);
  }

  return result;
}

unint64_t sub_24EFDDA8C()
{
  result = qword_27F236488;
  if (!qword_27F236488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236490);
    sub_24EFDDB44();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236488);
  }

  return result;
}

unint64_t sub_24EFDDB44()
{
  result = qword_27F236498;
  if (!qword_27F236498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2364A0);
    sub_24E602068(&qword_27F2364A8, &unk_27F2364B0);
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236498);
  }

  return result;
}

uint64_t sub_24EFDDC28(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  result = *a2;
  if (v3 != result)
  {
    return (*(v2 + 64))();
  }

  return result;
}

unint64_t sub_24EFDDC64()
{
  result = qword_27F236518;
  if (!qword_27F236518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2364E0);
    sub_24EFDDD1C();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236518);
  }

  return result;
}

unint64_t sub_24EFDDD1C()
{
  result = qword_27F236520;
  if (!qword_27F236520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2364F0);
    sub_24E602068(&qword_27F236528, &unk_27F236530);
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236520);
  }

  return result;
}

uint64_t sub_24EFDDE10()
{
  v1 = sub_24F9239C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 168) & ~*(v2 + 80);

  sub_24E62A5EC(*(v0 + 96), *(v0 + 104));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFDDF28()
{
  sub_24F9239C8();

  return sub_24EFD8D5C();
}

uint64_t objectdestroy_129Tm_0()
{

  sub_24E62A5EC(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_24EFDE038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDE0A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236470);
  sub_24EFDD9D0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EFDE1B0()
{
  type metadata accessor for OverlayControlsVolumeViewModel();
  v0 = swift_allocObject();
  result = sub_24EFDE1EC();
  qword_27F39D2D0 = v0;
  return result;
}

uint64_t sub_24EFDE1EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0xD000000000000013;
  *(v0 + 32) = 0x800000024FA675C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  v3 = *MEMORY[0x277D26DE8];
  v4 = *MEMORY[0x277D26B00];
  *(v2 + 32) = *MEMORY[0x277D26DE8];
  *(v2 + 40) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  v5 = v3;
  v6 = v4;
  [v1 setMaxConcurrentOperationCount_];
  v7 = *(v0 + 16);

  v8 = sub_24F92B098();

  [v7 setName_];

  return v0;
}

uint64_t sub_24EFDE324()
{
  sub_24EFDEC48();

  sub_24E824448(*(v0 + 56));

  sub_24E601704(v0 + 96, &qword_27F2129B0);
  sub_24E601704(v0 + 128, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

void sub_24EFDE3E4(float a1)
{
  if (vabds_f32(*(v1 + 72), a1) >= 0.0001)
  {
    v3 = [objc_opt_self() sharedInstance];
    if (v3)
    {
      v19 = v3;
      v5 = *(v1 + 80);
      v4 = *(v1 + 88);
      v6 = v1;
      v7 = qword_27F2113D8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_24F9220D8();
      __swift_project_value_buffer(v8, qword_27F39E7D8);

      v9 = sub_24F9220B8();
      v10 = sub_24F92BDD8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 134218242;
        *(v11 + 4) = a1;
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_24E7620D4(v5, v4, &v20);
        _os_log_impl(&dword_24E5DD000, v9, v10, "Set volume to %f for %s", v11, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x2530542D0](v12, -1, -1);
        MEMORY[0x2530542D0](v11, -1, -1);
      }

      v13 = sub_24F92B098();

      *&v14 = a1;
      v15 = [v19 setVolumeTo:v13 forCategory:v14];

      if (v15)
      {

        *(v6 + 72) = a1;
      }

      else
      {
        v16 = sub_24F9220B8();
        v17 = sub_24F92BDB8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24E5DD000, v16, v17, "Audio: Unable to set volume for active category", v18, 2u);
          MEMORY[0x2530542D0](v18, -1, -1);
        }
      }
    }
  }
}

void sub_24EFDE684(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  if ((*(v2 + 48) & 1) == 0)
  {
    v3 = v2;
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E7D8);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "startObservingVolumeChanges", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    *(v3 + 48) = 1;
    v10 = *(v3 + 56);
    *(v3 + 56) = a1;
    *(v3 + 64) = a2;

    sub_24E824448(v10);
    sub_24EFDF090();
    v11 = [objc_opt_self() sharedInstance];
    if (!v11)
    {
      goto LABEL_9;
    }

    type metadata accessor for Name(0);
    v12 = v11;
    v13 = sub_24F92B588();
    v14 = *MEMORY[0x277D26DD0];
    aBlock = 0;
    v15 = [v12 setAttribute:v13 forKey:v14 error:&aBlock];

    if (v15)
    {
      v16 = aBlock;
LABEL_9:
      v17 = objc_opt_self();
      v18 = [v17 defaultCenter];
      v19 = *MEMORY[0x277D26DE8];
      v20 = *(v3 + 16);
      v21 = swift_allocObject();
      swift_weakInit();
      v42 = sub_24EFDF3FC;
      v43 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_24EEFA694;
      ObjectType = &block_descriptor_100;
      v22 = _Block_copy(&aBlock);

      v23 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v22];
      _Block_release(v22);

      ObjectType = swift_getObjectType();
      aBlock = v23;
      swift_beginAccess();
      sub_24E8E7708(&aBlock, v3 + 96);
      swift_endAccess();
      v24 = [v17 defaultCenter];
      v25 = *MEMORY[0x277D26B00];
      v26 = swift_allocObject();
      swift_weakInit();
      v42 = sub_24EFDF3D8;
      v43 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_24EEFA694;
      ObjectType = &block_descriptor_27_1;
      v27 = _Block_copy(&aBlock);

      v28 = [v24 addObserverForName:v25 object:0 queue:v20 usingBlock:v27];
      _Block_release(v27);

      ObjectType = swift_getObjectType();
      aBlock = v28;
      swift_beginAccess();
      sub_24E8E7708(&aBlock, v3 + 128);
      swift_endAccess();
      return;
    }

    v29 = aBlock;
    v30 = sub_24F91F278();

    swift_willThrow();
    v31 = v30;
    v32 = sub_24F9220B8();
    v33 = sub_24F92BDB8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_24E5DD000, v32, v33, "Audio: Could not subscribe to AVSystemController notifications: %@", v34, 0xCu);
      sub_24E601704(v35, &qword_27F227B20);
      MEMORY[0x2530542D0](v35, -1, -1);
      MEMORY[0x2530542D0](v34, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24EFDEBF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EFDF090();
  }

  return result;
}

void sub_24EFDEC48()
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E7D8);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "stopObservingVolumeChanges", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    *(v1 + 48) = 0;
    v6 = *(v1 + 56);
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    sub_24E824448(v6);
    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      sub_24EFDF33C();
      v9 = v8;
      v10 = MEMORY[0x253051CC0](MEMORY[0x277D84F90]);
      v11 = *MEMORY[0x277D26DD0];
      *&v27 = 0;
      v12 = [v9 setAttribute:v10 forKey:v11 error:&v27];

      if (v12)
      {
        v13 = v27;
      }

      else
      {
        v14 = v27;
        v15 = sub_24F91F278();

        swift_willThrow();
        v16 = v15;
        v17 = sub_24F9220B8();
        v18 = sub_24F92BDB8();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          v21 = v15;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v22;
          *v20 = v22;
          _os_log_impl(&dword_24E5DD000, v17, v18, "Audio: Could not clear subscriptions to AVSystemController notifications: %@", v19, 0xCu);
          sub_24E601704(v20, &qword_27F227B20);
          MEMORY[0x2530542D0](v20, -1, -1);
          MEMORY[0x2530542D0](v19, -1, -1);
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    sub_24E94E17C(v1 + 96, &v25);
    if (v26)
    {
      sub_24E612B0C(&v25, &v27);
      v23 = [objc_opt_self() defaultCenter];
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      [v23 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      sub_24E601704(&v25, &qword_27F2129B0);
    }

    swift_beginAccess();
    sub_24E94E17C(v1 + 128, &v25);
    if (v26)
    {
      sub_24E612B0C(&v25, &v27);
      v24 = [objc_opt_self() defaultCenter];
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      [v24 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      sub_24E601704(&v25, &qword_27F2129B0);
    }
  }
}

void sub_24EFDF090()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v23 = 0.0;
    v22 = 0;
    v3 = [v1 getActiveCategoryVolume:&v23 andName:&v22];
    v4 = v22;
    if (!v3)
    {
      v8 = qword_27F2113D8;
      v9 = v22;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = sub_24F9220D8();
      __swift_project_value_buffer(v10, qword_27F39E7D8);
      v11 = sub_24F9220B8();
      v12 = sub_24F92BDB8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24E5DD000, v11, v12, "Audio: Could not fetch active category volume.", v13, 2u);
        MEMORY[0x2530542D0](v13, -1, -1);
      }

      goto LABEL_21;
    }

    if (v22)
    {
      v5 = sub_24F92B0D8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    if (*(v0 + 80) == v5 && *(v0 + 88) == v7 || (sub_24F92CE08() & 1) != 0)
    {
      v14 = v4;

      v15 = (v0 + 72);
      v16 = v23;
      if (vabds_f32(*(v0 + 72), v23) < 0.0001)
      {

        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 80) = v5;
      *(v0 + 88) = v7;
      v17 = v4;

      v15 = (v0 + 72);
      v18 = *(v0 + 72);
      v16 = v23;
      if (vabds_f32(v18, v23) < 0.0001)
      {
LABEL_18:
        v19 = *(v0 + 56);
        if (v19)
        {
          v20 = *(v0 + 80);
          v21 = *(v0 + 88);
          sub_24E5FCA4C(*(v0 + 56));

          v19(0, v20, v21, v18);

          sub_24E824448(v19);
LABEL_22:

          return;
        }

LABEL_21:
        v4 = v2;
        goto LABEL_22;
      }
    }

    *v15 = v16;
    v18 = v16;
    goto LABEL_18;
  }
}

unint64_t sub_24EFDF33C()
{
  result = qword_27F22F948;
  if (!qword_27F22F948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22F948);
  }

  return result;
}

uint64_t sub_24EFDF388()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EFDF400()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel);
  sub_24F91FD88();

  v2 = *(v5 + 18);

  if (v2)
  {
    sub_24F92B018();
    if (qword_27F211820 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24EFDF684@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = v55 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50);
  MEMORY[0x28223BE20](v57);
  v6 = (v55 - v5);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236708);
  MEMORY[0x28223BE20](v61);
  v63 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = v55 - v9;
  MEMORY[0x28223BE20](v10);
  v62 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  MEMORY[0x28223BE20](v12);
  v14 = (v55 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236710);
  MEMORY[0x28223BE20](v15);
  v17 = v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236718);
  MEMORY[0x28223BE20](v18);
  v59 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v55 - v21;
  MEMORY[0x28223BE20](v23);
  v58 = v55 - v24;
  v70 = *a1;
  v67 = *a1;
  v55[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0);
  sub_24F926F38();
  v25 = v66;
  swift_getKeyPath();
  *&v67 = v25;
  v55[0] = sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel);
  sub_24F91FD88();

  v26 = *(v25 + 18);

  v27 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  if (!v26)
  {
    v28 = sub_24F926D08();

    v27 = v28;
  }

  v29 = *(v12 + 36);
  v30 = *MEMORY[0x277CE13D8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(v14 + v29, v30, v31);
  *v14 = v27;
  sub_24E6009C8(v14, v17, &qword_27F217DC0);
  *&v17[*(v15 + 56)] = 256;
  v32 = v58;
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v17, v22, &qword_27F236710);
  v33 = &v22[*(v18 + 36)];
  v34 = v68;
  *v33 = v67;
  *(v33 + 1) = v34;
  *(v33 + 2) = v69;
  sub_24E6009C8(v22, v32, &qword_27F236718);
  v35 = sub_24F926E48();
  v36 = sub_24F925908();
  v37 = v56;
  (*(*(v36 - 8) + 56))(v56, 1, 1, v36);
  sub_24F925968();
  sub_24E601704(v37, &qword_27F214698);
  sub_24F925958();
  v38 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  v40 = (v6 + *(v57 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v42 = *MEMORY[0x277CE1050];
  v43 = sub_24F926E78();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  *v6 = v35;
  v6[1] = KeyPath;
  v6[2] = v38;
  v66 = v70;
  sub_24F926F38();
  v44 = v65;
  swift_getKeyPath();
  *&v66 = v44;
  sub_24F91FD88();

  LODWORD(v35) = *(v44 + 18);

  if (v35)
  {
    v45 = sub_24F926C38();
  }

  else
  {
    v45 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v46 = v45;
  v48 = v60;
  v47 = v61;
  sub_24E6009C8(v6, v60, &qword_27F230A50);
  *(v48 + *(v47 + 36)) = v46;
  v49 = v62;
  sub_24E6009C8(v48, v62, &qword_27F236708);
  v50 = v59;
  sub_24E60169C(v32, v59, &qword_27F236718);
  v51 = v63;
  sub_24E60169C(v49, v63, &qword_27F236708);
  v52 = v64;
  sub_24E60169C(v50, v64, &qword_27F236718);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236720);
  sub_24E60169C(v51, v52 + *(v53 + 48), &qword_27F236708);
  sub_24E601704(v49, &qword_27F236708);
  sub_24E601704(v32, &qword_27F236718);
  sub_24E601704(v51, &qword_27F236708);
  return sub_24E601704(v50, &qword_27F236718);
}

uint64_t sub_24EFDFE54@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_24F924B38();
  v2 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9241F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236618);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236620);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = swift_allocObject();
  v16 = *(v1 + 16);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 32);
  *(v15 + 64) = *(v1 + 48);
  v52 = v1;
  sub_24EFE1AA0(v1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236628);
  sub_24EFE1AD8();
  sub_24F926F88();
  sub_24F9241E8();
  sub_24EFE1E0C();
  sub_24EFE1EF0(&qword_27F212838, MEMORY[0x277CDDB18]);
  sub_24F926178();
  (*(v5 + 8))(v7, v4);
  sub_24E601704(v10, &qword_27F236618);
  v17 = &v14[*(v12 + 44)];
  v18 = sub_24F924258();
  v19 = *MEMORY[0x277CE0118];
  v20 = *(v2 + 104);
  v21 = v50;
  v20(&v17[*(v18 + 20)], v19, v50);
  __asm { FMOV            V0.2D, #24.0 }

  v48 = _Q0;
  *v17 = _Q0;
  v27 = v51;
  v28 = v49;
  v20(v49, v19, v21);
  v29 = v14;
  v53[3] = v18;
  v53[4] = sub_24EFE1EF0(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(v2 + 16))(boxed_opaque_existential_1 + *(v18 + 20), v28, v21);
  *boxed_opaque_existential_1 = v48;
  (*(v2 + 8))(v28, v21);
  sub_24E60169C(v53, v27, &qword_27F2366A8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236610);
  sub_24E60169C(v14, v27 + v31[9], &qword_27F236620);
  v32 = v27 + v31[10];
  *v32 = sub_24F923398() & 1;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34 & 1;
  v35 = v27 + v31[11];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  v37 = sub_24F923398();
  v39 = v38;
  v41 = v40;
  v42 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236600) + 36);
  *v42 = v36;
  *(v42 + 8) = v37 & 1;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41 & 1;
  LOBYTE(v36) = sub_24F923398();
  v44 = v43;
  LOBYTE(v39) = v45;
  sub_24E601704(v53, &qword_27F2366A8);
  sub_24E601704(v29, &qword_27F236620);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365D8);
  v47 = v27 + *(result + 36);
  *v47 = v36 & 1;
  *(v47 + 8) = v44;
  *(v47 + 16) = v39 & 1;
  return result;
}

uint64_t sub_24EFE03EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0);
  sub_24F926F38();
  sub_24EFE4574();
}

uint64_t sub_24EFE0448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236660);
  MEMORY[0x28223BE20](v3);
  v5 = (&v32 - v4);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236658);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v32 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366B0);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236650);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v32 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236640);
  MEMORY[0x28223BE20](v38);
  v13 = &v32 - v12;
  *v5 = sub_24F927618();
  v5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366B8);
  sub_24EFE0A10(a1, v5 + *(v15 + 44));
  v16 = sub_24F9276F8();
  v40 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0);
  sub_24F926F38();
  v17 = v47;
  swift_getKeyPath();
  *&v40 = v17;
  sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel);
  sub_24F91FD88();

  v18 = *(v17 + 18);

  v19 = v5 + *(v3 + 36);
  *v19 = v16;
  v19[8] = v18;
  v20 = sub_24EFE1D28();
  sub_24F926B78();
  sub_24E601704(v5, &qword_27F236660);
  v40 = *(a1 + 32);
  LOBYTE(v41) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  *&v40 = v3;
  *(&v40 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v34;
  sub_24F9269C8();
  v23 = v32;

  (*(v35 + 8))(v7, v22);
  sub_24F927618();
  sub_24F9242E8();
  (*(v36 + 32))(v23, v21, v37);
  v24 = (v23 + *(v10 + 44));
  v25 = v45;
  v24[4] = v44;
  v24[5] = v25;
  v24[6] = v46;
  v26 = v41;
  *v24 = v40;
  v24[1] = v26;
  v27 = v43;
  v24[2] = v42;
  v24[3] = v27;
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v23, v13, &qword_27F236650);
  v28 = &v13[*(v38 + 36)];
  v29 = v48;
  *v28 = v47;
  *(v28 + 1) = v29;
  *(v28 + 2) = v49;
  v30 = v39;
  sub_24E6009C8(v13, v39, &qword_27F236640);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236628);
  *(v30 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24EFE0A10@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366D8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366E0);
  sub_24EFE0E08(a1, &v6[*(v16 + 44)]);
  v17 = sub_24F925838();
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v6, v9, &qword_27F2366C0);
  v27 = &v9[*(v7 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_24F925858();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24E6009C8(v9, v12, &qword_27F2366C8);
  v38 = &v12[*(v10 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_24F925818();
  v40 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v39)
  {
    v40 = sub_24F925848();
  }

  sub_24F923318();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_24E6009C8(v12, v15, &qword_27F2366D0);
  v49 = &v15[*(v13 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_24F925828();
  v51 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v50)
  {
    v51 = sub_24F925848();
  }

  sub_24F923318();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_24E6009C8(v15, a2, &qword_27F2366D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366E8);
  v61 = a2 + *(result + 36);
  *v61 = v51;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_24EFE0E08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  *v9 = sub_24F927618();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366F8);
  sub_24EFDF684(a1, v9 + *(v11 + 44));
  v12 = sub_24F924C98();
  LOBYTE(v27[0]) = 0;
  sub_24EFE105C(v24);
  *&v23[7] = v24[0];
  *&v23[23] = v24[1];
  *&v23[39] = v24[2];
  *&v23[55] = v24[3];
  v13 = v27[0];
  sub_24E60169C(v9, v6, &qword_27F2366F0);
  sub_24E60169C(v6, a2, &qword_27F2366F0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236700);
  v15 = a2 + *(v14 + 48);
  *&v25 = v12;
  *(&v25 + 1) = 0x4008000000000000;
  v26[0] = v13;
  *&v26[1] = *v23;
  *&v26[17] = *&v23[16];
  *&v26[33] = *&v23[32];
  *&v26[49] = *&v23[48];
  v16 = *&v23[63];
  *&v26[64] = *&v23[63];
  v17 = *v26;
  *v15 = v25;
  *(v15 + 16) = v17;
  v18 = *&v26[16];
  v19 = *&v26[32];
  v20 = *&v26[48];
  *(v15 + 80) = v16;
  *(v15 + 48) = v19;
  *(v15 + 64) = v20;
  *(v15 + 32) = v18;
  v21 = a2 + *(v14 + 64);
  *v21 = 0;
  *(v21 + 8) = 0;
  sub_24E60169C(&v25, v27, &qword_27F220848);
  sub_24E601704(v9, &qword_27F2366F0);
  v27[0] = v12;
  v27[1] = 0x4008000000000000;
  v28 = v13;
  v30 = *&v23[16];
  v31 = *&v23[32];
  *v32 = *&v23[48];
  *&v32[15] = *&v23[63];
  v29 = *v23;
  sub_24E601704(v27, &qword_27F220848);
  return sub_24E601704(v6, &qword_27F2366F0);
}

uint64_t sub_24EFE105C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  sub_24F92B148();
  sub_24E600AEC();
  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  sub_24E72FF4C();
  v10 = sub_24F925C58();
  v12 = v11;
  v14 = v13;
  sub_24E600B40(v5, v7, v9 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v15 = sub_24F925C98();
  v39 = v16;
  v40 = v15;
  v38 = v17;
  v41 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  sub_24EFDF400();
  v19 = sub_24F925E18();
  v21 = v20;
  v23 = v22;
  if (qword_27F210D58 != -1)
  {
    swift_once();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  __swift_project_value_buffer(v24, qword_27F39D2E8);
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v25 = sub_24F925C58();
  v27 = v26;
  v29 = v28;
  sub_24E600B40(v19, v21, v23 & 1);

  v30 = sub_24F925C98();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_24E600B40(v25, v27, v29 & 1);

  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v38 & 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = v30;
  *(a1 + 40) = v32;
  *(a1 + 48) = v34 & 1;
  *(a1 + 56) = v36;
  sub_24E5FD138(v40, v39, v38 & 1);

  sub_24E5FD138(v30, v32, v34 & 1);

  sub_24E600B40(v30, v32, v34 & 1);

  sub_24E600B40(v40, v39, v38 & 1);
}

uint64_t sub_24EFE14A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365D0);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365D8);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0);
  sub_24F926F38();
  v7 = v10[1];
  swift_getKeyPath();
  *&v11 = v7;
  sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel);
  sub_24F91FD88();

  v8 = *(v7 + 17);

  if (v8 == 1)
  {
    sub_24EFDFE54(v6);
    sub_24E60169C(v6, v3, &qword_27F2365D8);
    swift_storeEnumTagMultiPayload();
    sub_24EFE18F4();
    sub_24F924E28();
    return sub_24E601704(v6, &qword_27F2365D8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24EFE18F4();
    return sub_24F924E28();
  }
}

uint64_t sub_24EFE1738@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OverlayControlsGameModeViewModel();
  swift_allocObject();
  sub_24EFE34B0();
  sub_24F926F28();
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24E488;
  type metadata accessor for GameControllerObserver();
  v3 = v2;
  sub_24F926F28();
  result = sub_24F923398();
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = result & 1;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5 & 1;
  return result;
}

uint64_t sub_24EFE1828(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EFE1870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFE18F4()
{
  result = qword_27F2365F0;
  if (!qword_27F2365F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2365D8);
    sub_24EFE1980();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2365F0);
  }

  return result;
}

unint64_t sub_24EFE1980()
{
  result = qword_27F2365F8;
  if (!qword_27F2365F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236600);
    sub_24E602068(&qword_27F236608, &qword_27F236610);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2365F8);
  }

  return result;
}

uint64_t sub_24EFE1A38()
{

  return swift_deallocObject();
}

unint64_t sub_24EFE1AD8()
{
  result = qword_27F236630;
  if (!qword_27F236630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236628);
    sub_24EFE1B90();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236630);
  }

  return result;
}

unint64_t sub_24EFE1B90()
{
  result = qword_27F236638;
  if (!qword_27F236638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236640);
    sub_24EFE1C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236638);
  }

  return result;
}

unint64_t sub_24EFE1C1C()
{
  result = qword_27F236648;
  if (!qword_27F236648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236660);
    sub_24EFE1D28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236648);
  }

  return result;
}

unint64_t sub_24EFE1D28()
{
  result = qword_27F236668;
  if (!qword_27F236668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236660);
    sub_24E602068(&qword_27F236670, &qword_27F236678);
    sub_24E602068(&qword_27F236680, &qword_27F236688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236668);
  }

  return result;
}

unint64_t sub_24EFE1E0C()
{
  result = qword_27F236690;
  if (!qword_27F236690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236618);
    sub_24E602068(&qword_27F236698, &qword_27F2366A0);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236690);
  }

  return result;
}

uint64_t sub_24EFE1EF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EFE1F5C()
{
  result = qword_27F236728;
  if (!qword_27F236728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236730);
    sub_24EFE18F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236728);
  }

  return result;
}

uint64_t sub_24EFE2028(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  sub_24F925898();
  a2();
  v5 = sub_24F9259A8();

  *a3 = v5;
  return result;
}

uint64_t sub_24EFE207C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  __swift_allocate_value_buffer(v0, qword_27F39D2E8);
  v1 = __swift_project_value_buffer(v0, qword_27F39D2E8);
  v2 = sub_24F9251C8();
  v3 = *(v0 + 36);
  v4 = *MEMORY[0x277CE13B8];
  v5 = sub_24F927748();
  result = (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  *v1 = v2;
  return result;
}

double sub_24EFE2130()
{
  if (qword_27F210D68 != -1)
  {
    swift_once();
  }

  result = *&qword_27F39D308;
  qword_27F39D300 = qword_27F39D308;
  return result;
}

void sub_24EFE21A8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    if (qword_27F210D70 != -1)
    {
      swift_once();
    }

    v2 = *&qword_27F236740;
    if (qword_27F210D88 != -1)
    {
      swift_once();
    }

    v3 = v2 - (*&qword_27F39D320 + *&qword_27F39D320);
    v4 = MEMORY[0x277D84F90];
    for (i = 12; i != 17; ++i)
    {
      if (floor((v3 + i * -3.0) * 0.25) == (v3 + i * -3.0) * 0.25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_24E615EC4(0, *(v4 + 2) + 1, 1, v4);
        }

        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        if (v7 >= v6 >> 1)
        {
          v4 = sub_24E615EC4((v6 > 1), v7 + 1, 1, v4);
        }

        *(v4 + 2) = v7 + 1;
        *&v4[8 * v7 + 32] = i;
      }
    }
  }
}

double sub_24EFE238C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 394.0;
  }

  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  if (Height >= CGRectGetWidth(v23))
  {
    v17 = v5;
    v18 = v7;
    v19 = v9;
    v20 = v11;

    return CGRectGetWidth(*&v17);
  }

  else
  {
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;

    return CGRectGetHeight(*&v13);
  }
}

void sub_24EFE24F4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 66.0;
  }

  else
  {
    if (qword_27F210D70 != -1)
    {
      swift_once();
    }

    v3 = *&qword_27F236740;
    if (qword_27F210D88 != -1)
    {
      swift_once();
    }

    v4 = v3 - (*&qword_27F39D320 + *&qword_27F39D320);
    if (qword_27F210D68 != -1)
    {
      swift_once();
    }

    v2 = (v4 + *&qword_27F39D308 * -3.0) * 0.25;
  }

  qword_27F39D310 = *&v2;
}

double sub_24EFE2634()
{
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27F39D310;
  if (qword_27F210D68 != -1)
  {
    swift_once();
  }

  result = v0 * 4.0 + *&qword_27F39D308 * 3.0;
  *&qword_27F39D318 = result;
  return result;
}

void sub_24EFE26DC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 50.0;
  }

  else
  {
    if (qword_27F210D70 != -1)
    {
      swift_once();
    }

    v2 = 38.0;
    if (*&qword_27F236740 > 414.0)
    {
      v2 = 46.0;
    }
  }

  qword_27F39D320 = *&v2;
}

double sub_24EFE27A8()
{
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27F39D310;
  if (qword_27F210D68 != -1)
  {
    swift_once();
  }

  result = v0 + v0 - *&qword_27F39D308;
  *&qword_27F39D328 = result;
  return result;
}

double sub_24EFE2844()
{
  if (qword_27F210D90 != -1)
  {
    swift_once();
  }

  result = *&qword_27F39D328 * 0.5;
  *&qword_27F39D330 = *&qword_27F39D328 * 0.5;
  return result;
}

unint64_t sub_24EFE28B8()
{
  result = qword_27F236748;
  if (!qword_27F236748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236748);
  }

  return result;
}

uint64_t sub_24EFE291C()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24EFE298C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24EFE2A04(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE2AE4()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  return *(v0 + 17);
}

uint64_t sub_24EFE2B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_24EFE2BF4(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE2CD4()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  return *(v0 + 18);
}

uint64_t sub_24EFE2D44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_24EFE2DE4(uint64_t result)
{
  if (*(v1 + 18) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE2EBC()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_24EFE2F40@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_24EFE2FCC(int a1)
{
  result = swift_beginAccess();
  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE30B8()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t sub_24EFE313C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_24EFE31C8(int a1)
{
  result = swift_beginAccess();
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE32B4()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 88);
}

uint64_t sub_24EFE3338@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_24EFE33C4(int a1)
{
  result = swift_beginAccess();
  if (*(v1 + 88) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE34B0()
{
  v1 = v0;
  *(v0 + 24) = 0xD000000000000025;
  *(v0 + 32) = 0x800000024FA67890;
  *(v0 + 48) = 0xD000000000000029;
  *(v0 + 56) = 0x800000024FA678C0;
  *(v0 + 72) = 0xD00000000000002FLL;
  *(v0 + 80) = 0x800000024FA678F0;
  *(v0 + 96) = 0xD000000000000025;
  *(v0 + 104) = 0x800000024FA67920;
  *(v0 + 40) = 0;
  v2 = (v0 + 40);
  *(v0 + 64) = 0;
  v16 = (v0 + 64);
  *(v0 + 88) = 0;
  v17 = (v0 + 88);
  sub_24F91FDB8();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  sub_24E74EC40();
  v3 = sub_24F92BEF8();
  v4 = swift_allocObject();
  swift_weakInit();
  v22 = sub_24EFE4B64;
  v23 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_24EADC100;
  v21 = &block_descriptor_101;
  v5 = _Block_copy(&aBlock);

  v6 = sub_24F92B1B8();
  swift_getKeyPath();
  aBlock = v1;
  sub_24EFE48FC();
  sub_24F91FD88();

  aBlock = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  notify_register_dispatch((v6 + 32), v2, v3, v5);
  swift_endAccess();
  _Block_release(v5);

  aBlock = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  v7 = sub_24F92BEF8();
  v8 = swift_allocObject();
  swift_weakInit();
  v22 = sub_24EFE4B84;
  v23 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_24EADC100;
  v21 = &block_descriptor_67_2;
  v9 = _Block_copy(&aBlock);

  v10 = sub_24F92B1B8();
  swift_getKeyPath();
  aBlock = v1;
  sub_24F91FD88();

  aBlock = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  notify_register_dispatch((v10 + 32), v16, v7, v9);
  swift_endAccess();
  _Block_release(v9);

  aBlock = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  v11 = sub_24F92BEF8();
  v12 = swift_allocObject();
  swift_weakInit();

  v22 = sub_24EFE4B8C;
  v23 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_24EADC100;
  v21 = &block_descriptor_71_1;
  v13 = _Block_copy(&aBlock);

  v14 = sub_24F92B1B8();
  swift_getKeyPath();
  aBlock = v1;
  sub_24F91FD88();

  aBlock = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  notify_register_dispatch((v14 + 32), v17, v11, v13);
  swift_endAccess();
  _Block_release(v13);

  aBlock = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  sub_24EFE4068();
  return v1;
}

uint64_t sub_24EFE3A4C(int a1)
{
  state64[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    state64[0] = 0;
    if (notify_get_state(a1, state64))
    {
    }

    if (state64[0] == 1)
    {
      if (*(v3 + 16))
      {
        *(v3 + 16) = 1;
      }
    }

    else if ((*(v3 + 16) & 1) == 0)
    {
      *(v3 + 16) = 0;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE3C30(int a1)
{
  state64[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    state64[0] = 0;
    if (notify_get_state(a1, state64))
    {
    }

    v4 = *(v3 + 18);
    if (state64[0] == 2)
    {
      if (v4 == 2)
      {
      }
    }

    else if (state64[0] == 1)
    {
      if (v4 == 1)
      {
      }
    }

    else if (!*(v3 + 18))
    {
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE3E84(int a1)
{
  state64[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    state64[0] = 0;
    if (notify_get_state(a1, state64))
    {
    }

    if (state64[0] == 1)
    {
      if (*(v3 + 17))
      {
        *(v3 + 17) = 1;
      }
    }

    else if ((*(v3 + 17) & 1) == 0)
    {
      *(v3 + 17) = 0;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE4068()
{
  v12 = *MEMORY[0x277D85DE8];
  state64 = 0;
  swift_getKeyPath();
  v11 = v0;
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  if (!notify_get_state(*(v0 + 40), &state64))
  {
    if (state64 == 1)
    {
      if (*(v0 + 16))
      {
        *(v0 + 16) = 1;
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (*(v0 + 16))
    {
LABEL_6:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v10 = v0;
      sub_24F91FD78();

      goto LABEL_8;
    }

    *(v0 + 16) = 0;
  }

LABEL_8:
  v7 = 0;
  swift_getKeyPath();
  v10 = v0;
  sub_24F91FD88();

  swift_beginAccess();
  if (notify_get_state(*(v0 + 64), &v7))
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 18);
  if (v7 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_17;
    }
  }

  else if (v7 == 1)
  {
    if (v2 == 1)
    {
      goto LABEL_17;
    }
  }

  else if (!*(v0 + 18))
  {
    goto LABEL_17;
  }

  v3 = swift_getKeyPath();
  MEMORY[0x28223BE20](v3);
  v9 = v0;
  sub_24F91FD78();

LABEL_17:
  v6 = 0;
  swift_getKeyPath();
  v9 = v0;
  sub_24F91FD88();

  swift_beginAccess();
  result = notify_get_state(*(v0 + 88), &v6);
  if (result)
  {
    return result;
  }

  if (v6 == 1)
  {
    if (*(v0 + 17))
    {
      *(v0 + 17) = 1;
      return result;
    }

    goto LABEL_22;
  }

  if (*(v0 + 17))
  {
LABEL_22:
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_24F91FD78();
  }

  *(v0 + 17) = 0;
  return result;
}

uint64_t sub_24EFE4574()
{
  v1 = sub_24F92B138();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  v9[0] = *(v0 + 96);
  v9[1] = v5;

  sub_24F92B128();
  sub_24E600AEC();
  v6 = sub_24F92C5D8();
  (*(v2 + 8))(v4, v1);

  if (v6)
  {
    v7 = (v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  notify_post(v7);
}

uint64_t sub_24EFE4690()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit32OverlayControlsGameModeViewModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayControlsGameModeViewModel()
{
  result = qword_27F236758;
  if (!qword_27F236758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFE47A0()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24EFE487C()
{
  result = qword_27F236768;
  if (!qword_27F236768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236768);
  }

  return result;
}

unint64_t sub_24EFE48FC()
{
  result = qword_27F2365E8;
  if (!qword_27F2365E8)
  {
    type metadata accessor for OverlayControlsGameModeViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2365E8);
  }

  return result;
}

uint64_t sub_24EFE4A30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_24EFE4A84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_24EFE4AD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_24EFE4B2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24EFE4BA4()
{
  type metadata accessor for OverlayControlsBrightnessViewModel();
  v0 = swift_allocObject();
  *(v0 + 24) = 0x3FF0000000000000;
  *(v0 + 32) = 1;
  sub_24F91FDB8();
  result = [objc_allocWithZone(MEMORY[0x277CFD390]) init];
  *(v0 + 16) = result;
  qword_27F39D338 = v0;
  return result;
}

id sub_24EFE4C1C()
{
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v1 = *(v0 + 16);

  return v1;
}

id sub_24EFE4CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_24EFE4D84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_24E69A5C4(0, &qword_27F2367A0);
  v5 = v4;
  v6 = sub_24F92C408();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
    sub_24F91FD78();
  }
}

double sub_24EFE4EF0()
{
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  return *(v0 + 24);
}

double sub_24EFE4F90@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_24EFE5060(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
    sub_24F91FD78();
  }
}

uint64_t sub_24EFE5180()
{
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  return *(v0 + 32);
}

uint64_t sub_24EFE5220@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24EFE52F0(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
    sub_24F91FD78();
  }

  return result;
}

void sub_24EFE5400()
{
  v1 = v0;
  swift_getKeyPath();
  *&v14 = v0;
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v2 = *(v0 + 16);
  v3 = sub_24F92B098();
  v4 = [v2 copyPropertyForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v16 = 0u;
  }

  v17 = v14;
  v18 = v16;
  if (*(&v16 + 1))
  {
    sub_24E69A5C4(0, &qword_27F22BD50);
    if (swift_dynamicCast())
    {
LABEL_6:
      v5 = v13;
      sub_24F91FE38();
      v7 = v6;

      if (*(v1 + 24) == v7)
      {

        *(v1 + 24) = v7;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *&v17 = v1;
        sub_24F91FD78();
      }

      return;
    }
  }

  else
  {
    sub_24E857CC8(&v17);
  }

  swift_getKeyPath();
  *&v14 = v1;
  sub_24F91FD88();

  v8 = *(v1 + 16);
  v9 = sub_24F92B098();
  v10 = [v8 copyPropertyForKey_];

  if (v10)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v16 = 0u;
  }

  v17 = v14;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_21;
  }

  sub_24E69A5C4(0, &qword_27F236798);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  *&v15 = 0x656E746867697242;
  *(&v15 + 1) = 0xEA00000000007373;
  v11 = [v13 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_24F92C648();

    swift_unknownObjectRelease();
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
LABEL_21:
    sub_24E857CC8(&v17);
    return;
  }

  sub_24E69A5C4(0, &qword_27F22BD50);
  if (swift_dynamicCast())
  {
    goto LABEL_6;
  }
}

void sub_24EFE57EC(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v4 = *(v1 + 24);
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7D8);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v4;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Sync Brightness to %f, commit=%{BOOL}d", v8, 0x12u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236788);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656E746867697242;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 56) = 0x74696D6D6F43;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_24E60F6C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236790);
  swift_arrayDestroy();
  sub_24E69A5C4(0, &qword_27F22BD50);
  v10 = sub_24F92AE28();

  swift_getKeyPath();
  sub_24F91FD88();

  v11 = *(v2 + 16);
  v12 = v10;
  v13 = sub_24F92B098();
  [v11 setProperty:v12 forKey:v13];
}

void sub_24EFE5B20()
{
  v1 = v0;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7D8);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Start tracking brightness.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_getKeyPath();
  v12[0] = v1;
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_24EFE6590;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24EFE60C4;
  v12[3] = &block_descriptor_102;
  v8 = _Block_copy(v12);
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93DE60;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000011;
  *(v10 + 40) = 0x800000024FA679C0;
  v11 = sub_24F92B588();

  [v9 registerNotificationBlock:v8 forProperties:v11];

  _Block_release(v8);
  sub_24EFE5400();
}

uint64_t sub_24EFE5DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300);
  v13 = sub_24F92BEF8();
  aBlock[4] = sub_24EFE65B0;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_25_3;
  v14 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EFE65B8(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v12, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24EFE606C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EFE5400();
  }

  return result;
}

uint64_t sub_24EFE60C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  *&v9 = a3;
  sub_24E612B0C(&v9, v11);
LABEL_6:

  swift_unknownObjectRetain();
  v4(v5, v7, v11);

  return sub_24E857CC8(v11);
}

void sub_24EFE6188()
{
  v1 = v0;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7D8);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Stop tracking brightness.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x800000024FA679C0;
  v8 = v6;
  v9 = sub_24F92B588();

  [v8 unregisterNotificationForKeys_];
}

uint64_t sub_24EFE6378()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit34OverlayControlsBrightnessViewModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayControlsBrightnessViewModel()
{
  result = qword_27F236778;
  if (!qword_27F236778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFE6470()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EFE6558()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EFE65B8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24EFE662C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

void sub_24EFE6678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_24EFE66E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EFE6770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for OverlayControlsView()
{
  result = qword_27F2367A8;
  if (!qword_27F2367A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EFE6838()
{
  sub_24E684120();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24EFE68C0@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236880);
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236888);
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236890);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  if (qword_27F210D80 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v46 = v41;
  v45 = v43;
  *&v36 = sub_24EFE6DCC;
  *(&v36 + 1) = 0;
  *&v37 = v40;
  BYTE8(v37) = v41;
  *&v38 = v42;
  BYTE8(v38) = v43;
  v39 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236898);
  sub_24EFEAE8C();
  sub_24F926398();
  sub_24F9257D8();
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368B8);
  sub_24E602068(&qword_27F2368C0, &qword_27F2368B8);
  sub_24F923438();
  sub_24F927618();
  sub_24F9238C8();
  v13 = &v3[*(v1 + 36)];
  v14 = v37;
  *v13 = v36;
  *(v13 + 1) = v14;
  *(v13 + 2) = v38;
  sub_24EFEAF44();
  v15 = v35;
  sub_24F9265A8();
  sub_24E601704(v3, &qword_27F236880);
  v16 = v31;
  v28 = *(v31 + 16);
  v17 = v32;
  v28(v32, v12, v8);
  v18 = v33;
  v27 = *(v33 + 16);
  v19 = v30;
  v27(v5, v15, v30);
  v20 = v16;
  v21 = v34;
  *v34 = 0;
  *(v21 + 8) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368E0);
  v28(v21 + v22[12], v17, v8);
  v27(v21 + v22[16], v5, v19);
  v23 = v21 + v22[20];
  *v23 = 0;
  v23[8] = 0;
  v24 = *(v18 + 8);
  v24(v35, v19);
  v25 = *(v20 + 8);
  v25(v29, v8);
  v24(v5, v19);
  return (v25)(v17, v8);
}

uint64_t sub_24EFE6DCC()
{
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236910);
  sub_24EFEB004();
  return sub_24F923438();
}

__n128 sub_24EFE6E54@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v14 = qword_27F39D300;
  v13 = sub_24F924C88();
  v2 = sub_24F923398();
  v4 = v3;
  v6 = v5;
  v7 = sub_24F923398();
  v9 = v8;
  v11 = v10;
  if (qword_27F210D80 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  *&v22[7] = v23;
  *&v22[23] = v24;
  *&v22[39] = v25;
  sub_24F923998();
  sub_24F927618();
  sub_24F9242E8();
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v2 & 1;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6 & 1;
  *(a1 + 56) = v7 & 1;
  *(a1 + 64) = v9;
  *(a1 + 72) = v11 & 1;
  *(a1 + 73) = *v22;
  *(a1 + 89) = *&v22[16];
  *(a1 + 105) = *&v22[32];
  *(a1 + 120) = *(&v25 + 1);
  *(a1 + 192) = v19;
  *(a1 + 208) = v20;
  *(a1 + 224) = v21;
  *(a1 + 128) = v15;
  *(a1 + 144) = v16;
  result = v18;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  return result;
}

uint64_t sub_24EFE70B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v2 = qword_27F39D300;
  *a1 = sub_24F924C88();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368E8);
  return sub_24EFE7138(a1 + *(v3 + 44));
}

uint64_t sub_24EFE7138@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E0);
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x28223BE20](v1);
  v78 = &v70 - v2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368F0);
  MEMORY[0x28223BE20](v79);
  v84 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A00);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = &v70 - v7;
  v72 = type metadata accessor for OverlayGameControllerControls(0);
  MEMORY[0x28223BE20](v72);
  v9 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368F8);
  MEMORY[0x28223BE20](v73);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A40);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236900);
  MEMORY[0x28223BE20](v71);
  v77 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v70 - v18;
  if (qword_27F210FB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NowPlayingController(0);
  sub_24EFEAD94(&qword_27F236840, type metadata accessor for NowPlayingController);

  *&v94 = sub_24F923C28();
  *(&v94 + 1) = v19;
  v20 = sub_24EE52298();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236848);
  *&v104 = &type metadata for NowPlayingControls;
  *(&v104 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_24E8F20E4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A48);
  v24 = sub_24EE522EC();
  *&v104 = v13;
  *(&v104 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v105 = v23;
  *(&v105 + 1) = OpaqueTypeConformance2;
  *&v106 = v22;
  *(&v106 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v86;
  v26 = v22;
  sub_24F926B08();

  (*(v70 + 8))(v15, v13);
  if (qword_27F210D80 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v27 = (v25 + *(v71 + 36));
  v28 = v99;
  *v27 = v98;
  v27[1] = v28;
  v27[2] = v100;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  swift_storeEnumTagMultiPayload();
  v29 = v72;
  v30 = v9 + *(v72 + 20);
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v9 + v29[6];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = v9 + v29[7];
  *v32 = sub_24EFC6098;
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = v29[8];
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = (v9 + v33);
  v35 = qword_27F24E488;
  *&v94 = qword_27F24E488;
  type metadata accessor for GameControllerObserver();
  v36 = v35;
  sub_24F926F28();
  v37 = *(&v104 + 1);
  *v34 = v104;
  v34[1] = v37;
  v38 = v9 + v29[9];
  sub_24F9233A8();
  v39 = v106;
  v40 = v105;
  *v38 = v104;
  *(v38 + 1) = v40;
  *(v38 + 4) = v39;
  v41 = v9 + v29[10];
  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = sub_24EFEAD94(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls);
  v45 = v74;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236858);
  *&v104 = v29;
  *(&v104 + 1) = v44;
  v72 = MEMORY[0x277CDE7A8];
  v46 = swift_getOpaqueTypeConformance2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A08);
  v48 = sub_24EE52000();
  v49 = v76;
  *&v104 = v76;
  *(&v104 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v105 = v47;
  *(&v105 + 1) = v46;
  *&v106 = v26;
  *(&v106 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v87;
  sub_24F926B08();
  (*(v75 + 8))(v45, v49);
  sub_24EFEADDC(v9);
  sub_24F927618();
  sub_24F9238C8();
  v51 = (v50 + *(v73 + 36));
  v52 = v102;
  *v51 = v101;
  v51[1] = v52;
  v51[2] = v103;
  sub_24EFE1738(&v104);
  v94 = v104;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v53 = sub_24EE51EA4();
  v54 = v78;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236860);
  v88 = &type metadata for OverlayGameModeControls;
  v89 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319E8);
  v57 = sub_24EE51EF8();
  v58 = v81;
  v88 = v81;
  v89 = &type metadata for IsDebugFocusOverlayEnabled;
  v90 = v56;
  v91 = v55;
  v92 = v26;
  v93 = v57;
  swift_getOpaqueTypeConformance2();
  v59 = v83;
  sub_24F926B08();
  sub_24EFEAE38(&v104);
  (*(v80 + 8))(v54, v58);
  sub_24F927618();
  sub_24F9238C8();
  v60 = (v59 + *(v79 + 36));
  v61 = v95;
  *v60 = v94;
  v60[1] = v61;
  v60[2] = v96;
  v62 = v86;
  v63 = v77;
  sub_24E60169C(v86, v77, &qword_27F236900);
  v64 = v82;
  sub_24E60169C(v50, v82, &qword_27F2368F8);
  v65 = v84;
  sub_24E60169C(v59, v84, &qword_27F2368F0);
  v66 = v85;
  sub_24E60169C(v63, v85, &qword_27F236900);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236908);
  sub_24E60169C(v64, v66 + v67[12], &qword_27F2368F8);
  sub_24E60169C(v65, v66 + v67[16], &qword_27F2368F0);
  v68 = v66 + v67[20];
  *v68 = 0;
  *(v68 + 8) = 1;
  sub_24E601704(v59, &qword_27F2368F0);
  sub_24E601704(v87, &qword_27F2368F8);
  sub_24E601704(v62, &qword_27F236900);
  sub_24E601704(v65, &qword_27F2368F0);
  sub_24E601704(v64, &qword_27F2368F8);
  return sub_24E601704(v63, &qword_27F236900);
}

uint64_t sub_24EFE7CD4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F927618();
  a1[1] = v2;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236870) + 44);
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v4 = a1 + v3;
  v5 = qword_27F39D300;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = v5;
  v4[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236878);
  return sub_24EFE68C0(&v4[*(v6 + 44)]);
}

uint64_t sub_24EFE7D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-v3 - 8];
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v5 = qword_27F39D300;
  *v4 = sub_24F924C88();
  *(v4 + 1) = v5;
  v4[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236818);
  sub_24EFE7F70(&v4[*(v6 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v8 = sub_24F925838();
  *(inited + 32) = v8;
  v9 = sub_24F925858();
  *(inited + 33) = v9;
  v10 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v8)
  {
    v10 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v9)
  {
    v10 = sub_24F925848();
  }

  sub_24EB66094(v22);
  sub_24F923318();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24EFEACBC(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2367F8);
  v20 = a1 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_24EFE7F70@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E0);
  Description = v98[-1].Description;
  MEMORY[0x28223BE20](v98);
  v95 = &v87 - v1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236820);
  v99 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v113 = &v87 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A00);
  v93 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v92 = &v87 - v5;
  v91 = type metadata accessor for OverlayGameControllerControls(0);
  MEMORY[0x28223BE20](v91);
  v88 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236828);
  v97 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v87 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A20);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v87 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236830);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v110 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v87 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236838);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = &v87 - v20;
  if (qword_27F210FB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NowPlayingController(0);
  sub_24EFEAD94(&qword_27F236840, type metadata accessor for NowPlayingController);

  *&v121 = sub_24F923C28();
  *(&v121 + 1) = v21;
  v22 = sub_24EE52298();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236848);
  *&v125 = &type metadata for NowPlayingControls;
  *(&v125 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_24E8F20E4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A48);
  v26 = sub_24EE522EC();
  *&v125 = v14;
  *(&v125 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v126 = v25;
  *(&v126 + 1) = OpaqueTypeConformance2;
  *&v127 = v24;
  *(&v127 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();

  (*(v15 + 8))(v17, v14);
  v27 = sub_24F923398();
  v29 = v28;
  LOBYTE(OpaqueTypeConformance2) = v30;
  v31 = sub_24F923398();
  LOBYTE(v125) = 1;
  BYTE8(v125) = v27 & 1;
  *&v126 = v29;
  BYTE8(v126) = OpaqueTypeConformance2 & 1;
  LOBYTE(v127) = v31 & 1;
  *(&v127 + 1) = v32;
  v128 = v33 & 1;
  v34 = sub_24EE5213C();
  v35 = v87;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236850);
  *&v121 = &type metadata for OverlayVolumeBrightnessControlsView;
  *(&v121 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A28);
  v38 = sub_24EE52190();
  v39 = v90;
  *&v121 = v90;
  *(&v121 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v122 = v37;
  *(&v122 + 1) = v36;
  *&v123 = v24;
  *(&v123 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();

  (*(v89 + 8))(v35, v39);
  KeyPath = swift_getKeyPath();
  v41 = v88;
  *v88 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  swift_storeEnumTagMultiPayload();
  v42 = v91;
  v43 = v41 + *(v91 + 20);
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = v41 + v42[6];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v45 = v41 + v42[7];
  *v45 = sub_24EFC6098;
  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  v46 = v42[8];
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v47 = (v41 + v46);
  v48 = qword_27F24E488;
  *&v121 = qword_27F24E488;
  type metadata accessor for GameControllerObserver();
  v49 = v48;
  sub_24F926F28();
  v50 = *(&v125 + 1);
  *v47 = v125;
  v47[1] = v50;
  v51 = v41 + v42[9];
  sub_24F9233A8();
  v52 = v127;
  v53 = v126;
  *v51 = v125;
  *(v51 + 16) = v53;
  *(v51 + 32) = v52;
  v54 = v41 + v42[10];
  *v54 = sub_24F923398() & 1;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56 & 1;
  v57 = sub_24EFEAD94(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls);
  v58 = v92;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236858);
  *&v125 = v42;
  *(&v125 + 1) = v57;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A08);
  v61 = sub_24EE52000();
  v62 = v94;
  *&v125 = v94;
  *(&v125 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v126 = v60;
  *(&v126 + 1) = v59;
  *&v127 = v24;
  *(&v127 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v106;
  sub_24F926B08();
  (*(v93 + 8))(v58, v62);
  sub_24EFEADDC(v41);
  sub_24EFE1738(&v125);
  v121 = v125;
  v122 = v126;
  v123 = v127;
  v124 = v128;
  v64 = sub_24EE51EA4();
  v65 = v95;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236860);
  v115 = &type metadata for OverlayGameModeControls;
  v116 = v64;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319E8);
  v68 = sub_24EE51EF8();
  v69 = v98;
  v115 = v98;
  v116 = &type metadata for IsDebugFocusOverlayEnabled;
  v117 = v67;
  v118 = v66;
  v119 = v24;
  v120 = v68;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  sub_24EFEAE38(&v125);
  Description[1](v65, v69);
  v94 = *(v102 + 16);
  v70 = v101;
  v71 = v103;
  (v94)(v101, v109, v103);
  v98 = *(v104 + 16);
  (v98)(v110, v108, v105);
  v72 = v97;
  Description = *(v97 + 16);
  (Description)(v111, v63, v112);
  v73 = v99;
  v95 = *(v99 + 16);
  v74 = v107;
  (v95)(v107, v113, v114);
  v75 = v100;
  (v94)(v100, v70, v71);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236868);
  v77 = v105;
  (v98)(v75 + v76[12], v110, v105);
  v78 = v112;
  (Description)(v75 + v76[16], v111, v112);
  v79 = v114;
  (v95)(v75 + v76[20], v74, v114);
  v80 = v75 + v76[24];
  *v80 = 0;
  *(v80 + 8) = 0;
  v81 = *(v73 + 8);
  v81(v113, v79);
  v82 = *(v72 + 8);
  v82(v106, v78);
  v83 = *(v104 + 8);
  v83(v108, v77);
  v84 = *(v102 + 8);
  v85 = v103;
  v84(v109, v103);
  v81(v107, v114);
  v82(v111, v112);
  v83(v110, v77);
  return (v84)(v101, v85);
}

uint64_t sub_24EFE8EF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_24E60169C(v2, &v13 - v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v10, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EFE90C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for OverlayControlsView();
  sub_24E60169C(v1 + *(v10 + 20), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EFE929C()
{
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2367F8);
  sub_24EFEAC04();

  return sub_24F923438();
}

uint64_t sub_24EFE9324@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v151 = a2;
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v148 = &v129[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v6);
  v135 = &v129[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v150 = &v129[-v9];
  MEMORY[0x28223BE20](v10);
  v141 = &v129[-v11];
  MEMORY[0x28223BE20](v12);
  v146 = &v129[-v13];
  MEMORY[0x28223BE20](v14);
  v138 = &v129[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v129[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v19 - 8);
  v131 = &v129[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v134 = &v129[-v22];
  MEMORY[0x28223BE20](v23);
  v142 = &v129[-v24];
  MEMORY[0x28223BE20](v25);
  v137 = &v129[-v26];
  MEMORY[0x28223BE20](v27);
  v149 = &v129[-v28];
  MEMORY[0x28223BE20](v29);
  v145 = &v129[-v30];
  MEMORY[0x28223BE20](v31);
  v132 = &v129[-v32];
  MEMORY[0x28223BE20](v33);
  v35 = &v129[-v34];
  MEMORY[0x28223BE20](v36);
  v140 = &v129[-v37];
  MEMORY[0x28223BE20](v38);
  v139 = &v129[-v39];
  MEMORY[0x28223BE20](v40);
  v153 = &v129[-v41];
  MEMORY[0x28223BE20](v42);
  v154 = &v129[-v43];
  MEMORY[0x28223BE20](v44);
  v133 = &v129[-v45];
  MEMORY[0x28223BE20](v46);
  v143 = &v129[-v47];
  MEMORY[0x28223BE20](v48);
  v147 = &v129[-v49];
  MEMORY[0x28223BE20](v50);
  v52 = &v129[-v51];
  MEMORY[0x28223BE20](v53);
  v55 = &v129[-v54];
  MEMORY[0x28223BE20](v56);
  v58 = &v129[-v57];
  v161 = a1;
  sub_24EFE90C4(&v129[-v57]);
  v59 = v4[13];
  v136 = *MEMORY[0x277CE0558];
  v159 = v59;
  v160 = v4 + 13;
  v59(v55);
  v157 = v4[7];
  v158 = v4 + 7;
  v157(v55, 0, 1, v3);
  v155 = v6;
  v60 = *(v6 + 48);
  sub_24E60169C(v58, v18, &qword_27F215598);
  sub_24E60169C(v55, &v18[v60], &qword_27F215598);
  v156 = v4;
  v61 = v4[6];
  v62 = v61(v18, 1, v3);
  v162 = v61;
  v152 = v4 + 6;
  v144 = v35;
  if (v62 == 1)
  {
    sub_24E601704(v55, &qword_27F215598);
    sub_24E601704(v58, &qword_27F215598);
    if (v61(&v18[v60], 1, v3) != 1)
    {
      v63 = v155;
LABEL_14:
      sub_24E601704(v18, &unk_27F254F20);
      goto LABEL_15;
    }

    sub_24E601704(v18, &qword_27F215598);
    v63 = v155;
  }

  else
  {
    sub_24E60169C(v18, v52, &qword_27F215598);
    if (v61(&v18[v60], 1, v3) == 1)
    {
      v63 = v155;
LABEL_13:
      sub_24E601704(v55, &qword_27F215598);
      sub_24E601704(v58, &qword_27F215598);
      (v156[1])(v52, v3);
      goto LABEL_14;
    }

    v64 = v156;
    v65 = v148;
    (v156[4])(v148, &v18[v60], v3);
    sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570]);
    v130 = sub_24F92AFF8();
    v66 = v64[1];
    v66(v65, v3);
    sub_24E601704(v55, &qword_27F215598);
    sub_24E601704(v58, &qword_27F215598);
    v66(v52, v3);
    sub_24E601704(v18, &qword_27F215598);
    v63 = v155;
    if ((v130 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v67 = v147;
  sub_24EFE8EF4(v147);
  v68 = v143;
  (v159)(v143, *MEMORY[0x277CE0560], v3);
  v157(v68, 0, 1, v3);
  v69 = *(v63 + 48);
  v18 = v138;
  sub_24E60169C(v67, v138, &qword_27F215598);
  sub_24E60169C(v68, &v18[v69], &qword_27F215598);
  v70 = v162;
  if (v162(v18, 1, v3) != 1)
  {
    v52 = v133;
    sub_24E60169C(v18, v133, &qword_27F215598);
    if (v70(&v18[v69], 1, v3) != 1)
    {
      v110 = v18;
      v111 = v156;
      v112 = v148;
      (v156[4])(v148, v110 + v69, v3);
      sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570]);
      v113 = sub_24F92AFF8();
      v114 = v111[1];
      v114(v112, v3);
      sub_24E601704(v143, &qword_27F215598);
      sub_24E601704(v147, &qword_27F215598);
      v114(v52, v3);
      v63 = v155;
      sub_24E601704(v110, &qword_27F215598);
      if (v113)
      {
        goto LABEL_41;
      }

LABEL_15:
      v71 = v154;
      sub_24EFE90C4(v154);
      v72 = v63;
      v73 = v153;
      LODWORD(v147) = *MEMORY[0x277CE0560];
      v159(v153);
      v157(v73, 0, 1, v3);
      v74 = v72;
      v75 = *(v72 + 48);
      v76 = v146;
      sub_24E60169C(v71, v146, &qword_27F215598);
      sub_24E60169C(v73, &v76[v75], &qword_27F215598);
      v77 = v162;
      if (v162(v76, 1, v3) == 1)
      {
        sub_24E601704(v73, &qword_27F215598);
        sub_24E601704(v71, &qword_27F215598);
        if (v77(&v76[v75], 1, v3) != 1)
        {
          v79 = v74;
          v80 = v150;
LABEL_28:
          sub_24E601704(v76, &unk_27F254F20);
          goto LABEL_29;
        }

        v78 = v144;
        sub_24E601704(v76, &qword_27F215598);
        v79 = v74;
        v80 = v150;
      }

      else
      {
        v81 = v139;
        sub_24E60169C(v76, v139, &qword_27F215598);
        if (v77(&v76[v75], 1, v3) == 1)
        {
          v82 = v153;
          v83 = v154;
          v79 = v74;
          v80 = v150;
LABEL_27:
          sub_24E601704(v82, &qword_27F215598);
          sub_24E601704(v83, &qword_27F215598);
          (v156[1])(v81, v3);
          goto LABEL_28;
        }

        v84 = v76;
        v85 = v81;
        v78 = v144;
        v86 = v156;
        v87 = v148;
        (v156[4])(v148, &v84[v75], v3);
        sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570]);
        v88 = sub_24F92AFF8();
        v89 = v86[1];
        v89(v87, v3);
        sub_24E601704(v153, &qword_27F215598);
        sub_24E601704(v154, &qword_27F215598);
        v89(v85, v3);
        v79 = v155;
        v90 = v84;
        v80 = v150;
        sub_24E601704(v90, &qword_27F215598);
        if ((v88 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v91 = v140;
      sub_24EFE8EF4(v140);
      (v159)(v78, v136, v3);
      v157(v78, 0, 1, v3);
      v92 = *(v79 + 48);
      v93 = v141;
      sub_24E60169C(v91, v141, &qword_27F215598);
      sub_24E60169C(v78, &v93[v92], &qword_27F215598);
      v94 = v162;
      if (v162(v93, 1, v3) == 1)
      {
        sub_24E601704(v78, &qword_27F215598);
        v76 = v141;
        sub_24E601704(v91, &qword_27F215598);
        if (v162(&v76[v92], 1, v3) == 1)
        {
          sub_24E601704(v76, &qword_27F215598);
LABEL_43:
          LOBYTE(v163) = 1;
          goto LABEL_44;
        }

        goto LABEL_28;
      }

      v81 = v132;
      sub_24E60169C(v93, v132, &qword_27F215598);
      if (v94(&v93[v92], 1, v3) != 1)
      {
        v115 = v156;
        v116 = &v93[v92];
        v117 = v148;
        (v156[4])(v148, v116, v3);
        sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570]);
        v118 = sub_24F92AFF8();
        v119 = v115[1];
        v119(v117, v3);
        sub_24E601704(v144, &qword_27F215598);
        sub_24E601704(v140, &qword_27F215598);
        v119(v81, v3);
        v79 = v155;
        v80 = v150;
        sub_24E601704(v93, &qword_27F215598);
        if (v118)
        {
          goto LABEL_43;
        }

LABEL_29:
        v95 = v145;
        sub_24EFE90C4(v145);
        v96 = v149;
        (v159)(v149, v147, v3);
        v157(v96, 0, 1, v3);
        v97 = *(v79 + 48);
        sub_24E60169C(v95, v80, &qword_27F215598);
        sub_24E60169C(v96, v80 + v97, &qword_27F215598);
        v98 = v162;
        if (v162(v80, 1, v3) == 1)
        {
          sub_24E601704(v96, &qword_27F215598);
          sub_24E601704(v95, &qword_27F215598);
          v99 = v162((v80 + v97), 1, v3);
          v100 = v142;
          if (v99 != 1)
          {
LABEL_46:
            sub_24E601704(v80, &unk_27F254F20);
            goto LABEL_47;
          }

          sub_24E601704(v80, &qword_27F215598);
        }

        else
        {
          v101 = v137;
          sub_24E60169C(v80, v137, &qword_27F215598);
          if (v98(v80 + v97, 1, v3) == 1)
          {
LABEL_39:
            sub_24E601704(v96, &qword_27F215598);
            sub_24E601704(v95, &qword_27F215598);
            (v156[1])(v101, v3);
            goto LABEL_46;
          }

          v102 = v156;
          v103 = v80 + v97;
          v104 = v148;
          (v156[4])(v148, v103, v3);
          sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570]);
          LODWORD(v154) = sub_24F92AFF8();
          v105 = v102[1];
          v105(v104, v3);
          sub_24E601704(v149, &qword_27F215598);
          sub_24E601704(v95, &qword_27F215598);
          v100 = v142;
          v105(v101, v3);
          v79 = v155;
          sub_24E601704(v80, &qword_27F215598);
          if ((v154 & 1) == 0)
          {
LABEL_47:
            LOBYTE(v163) = 1;
            sub_24EFEA968();
            sub_24EFEA9BC();
            sub_24F924E28();
            LOBYTE(v163) = v164;
            HIBYTE(v163) = 1;
            goto LABEL_48;
          }
        }

        sub_24EFE8EF4(v100);
        v106 = v134;
        (v159)(v134, v147, v3);
        v157(v106, 0, 1, v3);
        v107 = *(v79 + 48);
        v108 = v135;
        sub_24E60169C(v100, v135, &qword_27F215598);
        sub_24E60169C(v106, &v108[v107], &qword_27F215598);
        v109 = v162;
        if (v162(v108, 1, v3) == 1)
        {
          sub_24E601704(v106, &qword_27F215598);
          sub_24E601704(v100, &qword_27F215598);
          if (v109(&v108[v107], 1, v3) == 1)
          {
            sub_24E601704(v108, &qword_27F215598);
LABEL_50:
            LOBYTE(v163) = 0;
            sub_24EFEA968();
            sub_24EFEA9BC();
            sub_24F924E28();
            LOBYTE(v163) = v164;
            HIBYTE(v163) = 1;
            goto LABEL_48;
          }

          v80 = v108;
          goto LABEL_46;
        }

        v101 = v131;
        sub_24E60169C(v108, v131, &qword_27F215598);
        if (v109(&v108[v107], 1, v3) == 1)
        {
          v96 = v106;
          v80 = v108;
          v95 = v100;
          goto LABEL_39;
        }

        v123 = v106;
        v124 = v156;
        v125 = &v108[v107];
        v126 = v148;
        (v156[4])(v148, v125, v3);
        sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570]);
        v127 = sub_24F92AFF8();
        v128 = v124[1];
        v128(v126, v3);
        sub_24E601704(v123, &qword_27F215598);
        sub_24E601704(v100, &qword_27F215598);
        v128(v101, v3);
        sub_24E601704(v108, &qword_27F215598);
        if (v127)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v82 = v144;
      v83 = v140;
      v76 = v93;
      goto LABEL_27;
    }

    v55 = v143;
    v58 = v147;
    goto LABEL_13;
  }

  sub_24E601704(v68, &qword_27F215598);
  sub_24E601704(v67, &qword_27F215598);
  if (v162(&v18[v69], 1, v3) != 1)
  {
    goto LABEL_14;
  }

  sub_24E601704(v18, &qword_27F215598);
LABEL_41:
  LOBYTE(v163) = 0;
LABEL_44:
  sub_24EFEA968();
  sub_24EFEA9BC();
  sub_24F924E28();
  v163 = v164;
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2367C8);
  sub_24EFEAA10();
  result = sub_24F924E28();
  v121 = v165;
  v122 = v151;
  *v151 = v164;
  v122[1] = v121;
  return result;
}

uint64_t sub_24EFEA924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EFE9324(v1, v5);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

unint64_t sub_24EFEA968()
{
  result = qword_27F2367B8;
  if (!qword_27F2367B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367B8);
  }

  return result;
}

unint64_t sub_24EFEA9BC()
{
  result = qword_27F2367C0;
  if (!qword_27F2367C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367C0);
  }

  return result;
}

unint64_t sub_24EFEAA10()
{
  result = qword_27F2367D0;
  if (!qword_27F2367D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367C8);
    sub_24EFEA968();
    sub_24EFEA9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367D0);
  }

  return result;
}

unint64_t sub_24EFEAAC0()
{
  result = qword_27F2367D8;
  if (!qword_27F2367D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367E0);
    sub_24EFEAB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367D8);
  }

  return result;
}

unint64_t sub_24EFEAB44()
{
  result = qword_27F2367E8;
  if (!qword_27F2367E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367F0);
    sub_24EFEAA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367E8);
  }

  return result;
}

unint64_t sub_24EFEAC04()
{
  result = qword_27F236800;
  if (!qword_27F236800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367F8);
    sub_24E602068(&qword_27F236808, &qword_27F236810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236800);
  }

  return result;
}

uint64_t sub_24EFEACBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFEAD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EFEAD94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EFEADDC(uint64_t a1)
{
  v2 = type metadata accessor for OverlayGameControllerControls(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EFEAE8C()
{
  result = qword_27F2368A0;
  if (!qword_27F2368A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236898);
    sub_24E602068(&qword_27F2368A8, &qword_27F2368B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2368A0);
  }

  return result;
}

unint64_t sub_24EFEAF44()
{
  result = qword_27F2368C8;
  if (!qword_27F2368C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236880);
    sub_24E602068(&qword_27F2368D0, &qword_27F2368D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2368C8);
  }

  return result;
}

unint64_t sub_24EFEB004()
{
  result = qword_27F236918;
  if (!qword_27F236918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236910);
    sub_24E602068(&qword_27F236920, &qword_27F236928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236918);
  }

  return result;
}

uint64_t sub_24EFEB19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v44 = sub_24F91F6B8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_24F91F4A8();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v57[3] = type metadata accessor for ReportConcernAction();
  v57[0] = a1;

  sub_24F928A98();
  v19 = sub_24F929D08();
  v21 = v20;
  v22 = type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 38;
  sub_24E60169C(v17, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v19;
  v28[1] = v21;
  sub_24E60169C(&v58, v56, &qword_27F235830);
  v29 = *(v9 + 16);
  v45 = v11;
  v29(v11, v14, v8);
  v30 = sub_24F929608();
  v31 = v7;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(v56, &v50, &qword_27F235830);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    v33 = v42;
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v36 = v35;
    (*(v43 + 8))(v33, v44);
    v48 = v34;
    v49 = v36;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830);
  }

  sub_24E601704(v56, &qword_27F235830);
  v37 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v38 = v54;
  *v37 = v53;
  *(v37 + 16) = v38;
  *(v37 + 32) = v55;
  sub_24E65E0D4(v31, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  (*(v9 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v45, v8);

  FlowAction.setPageData(_:)(v57);

  (*(v9 + 8))(v14, v8);
  sub_24E601704(v17, &qword_27F228530);
  sub_24E601704(&v58, &qword_27F235830);
  sub_24E601704(v57, &qword_27F2129B0);
  *(&v59 + 1) = v22;
  v60 = sub_24EFEB848(&qword_27F216400, type metadata accessor for FlowAction);
  *&v58 = v23;
  type metadata accessor for ReportConcernActionImplementation();

  swift_getWitnessTable();
  v39 = sub_24F1489C4(&v58);

  __swift_destroy_boxed_opaque_existential_1(&v58);
  return v39;
}

uint64_t sub_24EFEB848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EFEB8B0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for InviteFriendsCardAvatars(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24EFEBA90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for InviteFriendsCardAvatars(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for InviteFriendsCard()
{
  result = qword_27F2369D8;
  if (!qword_27F2369D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EFEBCA8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for InviteFriendsCardAvatars(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EFEBDBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for InviteFriendsCardAvatars(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v38);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2369F8);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for InviteFriendsCard();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v44 = v16 + 40;
  sub_24E61DA68(&v47, (v16 + 40), qword_27F21B590);
  v46 = v14;
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24EFEC8E4();
  v41 = v13;
  v21 = v42;
  sub_24F92D108();
  if (v21)
  {
    v23 = v43;
    v22 = v44;
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_24E601704(v22, qword_27F24EC90);
    return sub_24E601704(&v16[v23], &qword_27F215440);
  }

  else
  {
    v42 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v48;
    *v16 = v47;
    *(v16 + 1) = v25;
    *(v16 + 4) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v50 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v43;
    sub_24E61DA68(&v47, v44, qword_27F24EC90);
    LOBYTE(v47) = 2;
    sub_24E65CAA0();
    v27 = v10;
    sub_24F92CC68();
    v28 = v39;
    sub_24E61DA68(v27, &v16[v26], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v47) = 3;
    sub_24EFEC938(&qword_27F213F48, MEMORY[0x277D21F70]);
    v29 = v42;
    sub_24F92CC18();
    v30 = v46;
    sub_24E6009C8(v29, &v16[*(v46 + 28)], &qword_27F213E68);
    LOBYTE(v47) = 4;
    sub_24EFEC938(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v31 = v37;
    sub_24F92CC68();
    sub_24EFEC980(v31, &v16[*(v30 + 32)], type metadata accessor for CommonCardAttributes);
    LOBYTE(v47) = 5;
    sub_24EFEC938(&qword_27F236A08, type metadata accessor for InviteFriendsCardAvatars);
    v32 = v36;
    sub_24F92CC68();
    (*(v28 + 8))(v41, v40);
    sub_24EFEC980(v32, &v16[*(v30 + 36)], type metadata accessor for InviteFriendsCardAvatars);
    sub_24EFEC9E8(v16, v34, type metadata accessor for InviteFriendsCard);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_24EFECA50(v16, type metadata accessor for InviteFriendsCard);
  }
}

unint64_t sub_24EFEC5B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x73726174617661;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EFEC668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EFECBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EFEC690(uint64_t a1)
{
  v2 = sub_24EFEC8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFEC6CC(uint64_t a1)
{
  v2 = sub_24EFEC8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFEC740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24EFEC818(uint64_t a1)
{
  *(a1 + 8) = sub_24EFEC938(&qword_27F21AC50, type metadata accessor for InviteFriendsCard);
  result = sub_24EFEC938(&qword_27F2369E8, type metadata accessor for InviteFriendsCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EFEC8E4()
{
  result = qword_27F236A00;
  if (!qword_27F236A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A00);
  }

  return result;
}

uint64_t sub_24EFEC938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EFEC980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EFEC9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EFECA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EFECAC4()
{
  result = qword_27F236A10;
  if (!qword_27F236A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A10);
  }

  return result;
}

unint64_t sub_24EFECB1C()
{
  result = qword_27F236A18;
  if (!qword_27F236A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A18);
  }

  return result;
}

unint64_t sub_24EFECB74()
{
  result = qword_27F236A20;
  if (!qword_27F236A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A20);
  }

  return result;
}

uint64_t sub_24EFECBC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73726174617661 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24EFECE3C(uint64_t a1, void (*a2)(__n128), unsigned int *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v16 - v9);
  a2(v8);
  v11 = sub_24F926D08();

  v12 = *(v7 + 36);
  v13 = *a3;
  v14 = sub_24F927748();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  *v10 = v11;
  sub_24EFED12C(&qword_27F236200, &qword_27F217DC0);
  result = sub_24F9238D8();
  *a4 = result;
  return result;
}

uint64_t sub_24EFECF78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  v3 = sub_24F9251C8();
  v4 = *(v0 + 36);
  v5 = *MEMORY[0x277CE13B8];
  v6 = sub_24F927748();
  (*(*(v6 - 8) + 104))(&v2[v4], v5, v6);
  *v2 = v3;
  sub_24EFED12C(&qword_27F214428, &qword_27F213F10);
  result = sub_24F9238D8();
  qword_27F39D368 = result;
  return result;
}

uint64_t sub_24EFED0A4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_24F9234D8();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_24EFED12C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EFED180(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - v3);
  if (a1)
  {
    v11 = sub_24F926C88();
    return sub_24F9238D8();
  }

  else
  {
    sub_24E77ACC8();
    sub_24F92C398();
    sub_24F926BF8();
    v6 = sub_24F926D08();
    v7 = *(v2 + 36);
    v8 = *MEMORY[0x277CE13B0];
    v9 = sub_24F927748();
    (*(*(v9 - 8) + 104))(v4 + v7, v8, v9);
    *v4 = v6;
    sub_24EFED12C(&qword_27F236200, &qword_27F217DC0);
    v10 = sub_24F9238D8();

    return v10;
  }
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_24EFF0E44(a1, a2, a3);

  return v8;
}

id sub_24EFED3B0()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  }

  else
  {
    v4 = sub_24EFED494(*(v0 + OBJC_IVAR___AMPLanguageAwareString_baseAttributedString), *(v0 + OBJC_IVAR___AMPLanguageAwareString_paragraphs), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_24EFED480(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = a1;
}

id sub_24EFED494(void *a1, unint64_t a2, uint64_t a3, id a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    v8 = a2 >> 62;
    if (a2 >> 62)
    {
      if (sub_24F92C738() != 1 || !sub_24F92C738())
      {
        goto LABEL_15;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(a2 + 32); ; i = MEMORY[0x253052270](0, a2))
      {
        v10 = i;
        [i directionalRangeValue];

        v11 = MEMORY[0x253050CC0](a3, a4);
        if (!v31 && v32 == v11)
        {
          v12 = sub_24EFF0CB4(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24F93DE60;
          v14 = *MEMORY[0x277D74118];
          *(inited + 32) = *MEMORY[0x277D74118];
          *(inited + 64) = sub_24E69A5C4(0, &qword_27F221898);
          *(inited + 40) = v12;
          v15 = v12;
          v16 = v14;
          sub_24E608940(inited);
          swift_setDeallocating();
          sub_24EADDE6C(inited + 32);
          v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v18 = sub_24F92B098();
          type metadata accessor for Key(0);
          sub_24EADDED4();
          v19 = sub_24F92AE28();

          v20 = [v17 initWithString:v18 attributes:v19];

          return v20;
        }

LABEL_15:
        v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v22 = sub_24F92B098();
        a4 = [v21 initWithString_];

        if (v8)
        {
          a3 = sub_24F92C738();
          if (!a3)
          {
LABEL_35:
            v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

            return v29;
          }
        }

        else
        {
          a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        v23 = 0;
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        v24 = *MEMORY[0x277D74118];
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x253052270](v23, a2);
          }

          else
          {
            if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v26 = *(a2 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          [v26 directionalRangeValue];
          if (v33 == -1)
          {
            v25 = &qword_27F39D390;
            if (qword_27F210DE0 != -1)
            {
              swift_once();
              v25 = &qword_27F39D390;
            }
          }

          else if (v33 == 1)
          {
            v25 = &qword_27F39D398;
            if (qword_27F210DE8 != -1)
            {
              swift_once();
              v25 = &qword_27F39D398;
            }
          }

          else
          {
            if (v33)
            {
              goto LABEL_40;
            }

            v25 = &qword_27F39D388;
            if (qword_27F210DD8 != -1)
            {
              swift_once();
              v25 = &qword_27F39D388;
            }
          }

          [a4 addAttribute:v24 value:*v25 range:?];

          ++v23;
          if (v28 == a3)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }
    }

    __break(1u);
LABEL_40:
    sub_24F92C888();

    v30 = sub_24F92CD88();
    MEMORY[0x253050C20](v30);

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

void (*sub_24EFED9AC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFED3B0();
  return sub_24EFED9F4;
}

void sub_24EFED9F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = v2;
}

uint64_t LanguageAwareString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);

  return v1;
}

void sub_24EFEDB54(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = a1;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_24EFF11F8(a1, a2, a3, a4, a5);

  return v12;
}

void (*sub_24EFEDBD8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEDAEC();
  return sub_24EFEDC20;
}

void sub_24EFEDC20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = v2;
}

id sub_24EFEDC9C(uint64_t *a1, uint64_t (*a2)(void, unint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_24E600AEC();
    v8 = v2;
    v9 = a2(MEMORY[0x277D837D0], v7);
    v11 = v10;
    swift_beginAccess();
    v12 = byte_27F236A28;
    swift_beginAccess();
    v13 = byte_27F236A29;
    v14 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v15 = sub_24EFF11F8(v9, v11, 0, v12, v13);
    v16 = *(v8 + v3);
    *(v8 + v3) = v15;
    v5 = v15;

    v4 = 0;
  }

  v17 = v4;
  return v5;
}

void sub_24EFEDDF4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = a1;
}

void (*sub_24EFEDE08(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEDC7C();
  return sub_24EFEDE50;
}

void sub_24EFEDE50(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = v2;
}

id sub_24EFEDEAC()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  }

  else
  {
    sub_24E600AEC();
    v4 = v0;
    v5 = sub_24F92C568();
    v7 = v6;
    swift_beginAccess();
    v8 = byte_27F236A28;
    swift_beginAccess();
    v9 = byte_27F236A29;
    v10 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v11 = sub_24EFF11F8(v5, v7, 0, v8, v9);
    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_24EFEE044(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = a1;
}

void (*sub_24EFEE058(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEDEAC();
  return sub_24EFEE0A0;
}

void sub_24EFEE0A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = v2;
}

id sub_24EFEE0FC()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  v6 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    v21 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
    v22 = v8;

    sub_24F91EA68();
    sub_24E600AEC();
    v9 = v0;
    v10 = sub_24F92C538();
    v12 = v11;
    (*(v2 + 8))(v4, v1);

    swift_beginAccess();
    v13 = byte_27F236A28;
    swift_beginAccess();
    v14 = byte_27F236A29;
    v15 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v16 = sub_24EFF11F8(v10, v12, 0, v13, v14);
    v17 = *(v9 + v5);
    *(v9 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v18 = v6;
  return v7;
}

void sub_24EFEE304(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = a1;
}

void (*sub_24EFEE318(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEE0FC();
  return sub_24EFEE360;
}

void sub_24EFEE360(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = v2;
}

id sub_24EFEE3F8()
{
  sub_24E69A5C4(0, &qword_27F22F038);

  v0 = sub_24F92B588();

  return v0;
}

uint64_t sub_24EFEE4D8()
{
  v1 = v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange + 16) != 1)
  {
    return *v1;
  }

  v2 = sub_24EFEE6E8();
  result = 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_24EFEE540(uint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = 0;
  return result;
}

__n128 (*sub_24EFEE558(uint64_t *a1))(__n128 *a1)
{
  a1[2] = v1;
  *a1 = sub_24EFEE4D8();
  a1[1] = v3;
  return sub_24EFEE5A0;
}

__n128 sub_24EFEE5A0(__n128 *a1)
{
  v1 = a1[1].n128_u64[0] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  result = *a1;
  *v1 = *a1;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_24EFEE5E8()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    if ((v2 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string) & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v1) = v1 == 0;
    *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty) = v1;
  }

  return v1 & 1;
}

uint64_t (*sub_24EFEE650(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EFEE5E8() & 1;
  return sub_24EFEE69C;
}

uint64_t sub_24EFEE720(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_24EFEE738(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_24EFEE6E8();
  return sub_24EFEE780;
}

void *sub_24EFEE780(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

unint64_t sub_24EFEE7C0()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
  v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
  }

  v5 = 7;
  if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  result = sub_24EFF0998(0xFuLL, v5 | (v4 << 16), v2, v3);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_24EFEE860(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_24EFEE878(unint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_24EFEE7C0();
  return sub_24EFEE8C0;
}

void *sub_24EFEE8C0(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_24EFEE930(void *a1, uint64_t (*a2)(void, void))
{
  v3 = (v2 + *a1);
  if (v3[8] != 1)
  {
    return *v3;
  }

  result = a2(*(v2 + OBJC_IVAR___AMPLanguageAwareString_string), *(v2 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
  *v3 = result;
  v3[8] = 0;
  return result;
}

uint64_t sub_24EFEE9A4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_24EFEE9BC(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_24EFEE910();
  return sub_24EFEEA04;
}

void *sub_24EFEEA04(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F236A28 = a1;
  return result;
}

uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F236A29 = a1;
  return result;
}

uint64_t static LanguageAwareString.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_27F236A30 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_24EFEEEAC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_27F236A30 = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_24EFEEF10()
{
  swift_beginAccess();
  v0 = byte_27F236A28;
  swift_beginAccess();
  v1 = byte_27F236A29;
  v2 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  result = sub_24EFF11F8(0, 0xE000000000000000, 0, v0, v1);
  qword_27F236A38 = result;
  return result;
}

id static LanguageAwareString.empty.getter()
{
  if (qword_27F210DD0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F236A38;

  return v1;
}

id LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v5 = sub_24EFF0E44(a1, a2, a3);

  return v5;
}

id LanguageAwareString.__allocating_init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_24EFF1BF0(a1, a2, a3, a4, a5);

  return v12;
}

id LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = sub_24EFF1BF0(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v9 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

id LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v6 = sub_24EFF11F8(a1, a2, a3, a4, a5);

  return v6;
}

id LanguageAwareString.__allocating_init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_24EFF2004(a1, a2, a3);

  return v8;
}

id LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, char a3)
{
  v4 = sub_24EFF2004(a1, a2, a3);

  return v4;
}

char *LanguageAwareString.init(from:)(void *a1)
{
  v3 = v1;
  v4 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v1[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  v7 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  v73 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  v75 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v8 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v9 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v12 = 0;
  v12[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D0D8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v13 = sub_24F92CEB8();
    v16 = v15;
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_1(v79);
    swift_beginAccess();
    v18 = qword_27F236A30;
    if (qword_27F236A30)
    {
      swift_unknownObjectRetain();
      v19 = sub_24F92B098();
      v20 = [v18 preprocessForLanguageAwarenessString_];

      v76 = sub_24F92B0D8();
      v22 = v21;

      swift_unknownObjectRelease();

      v16 = v22;
    }

    else
    {
      v76 = v17;
    }

    swift_beginAccess();
    if (byte_27F236A28 == 1)
    {
      v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v24 = sub_24F92B098();
      v25 = [v23 initWithString_];

      v26 = 0;
      v27 = v25;
    }

    else
    {
      v25 = sub_24F92B098();
      v27 = 0;
      v26 = v25;
    }

    v28 = v25;
    swift_beginAccess();
    v29 = byte_27F236A29;
    v30 = v27;
    sub_24EBFACC8(v27, v26, 0, v29, v79);
    v31 = v27;
    v33 = v79[0];
    v32 = v79[1];
    v34 = v79[2];
    v74 = v80;
    v71 = v81;
    v35 = v82;

    v70 = v31;
    v72 = v32;
    if (v31)
    {
      if (!v35)
      {

        goto LABEL_29;
      }

      v66 = v33;
      v33 = v16;
      v36 = v35[2];
      if (v36)
      {
        v37 = 0;
        while (v37 < v35[2])
        {
          v38 = v37 + 1;
          v79[0] = v35[v37 + 4];
          sub_24EA25BD4(v79, v30, v34);
          v37 = v38;
          if (v36 == v38)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_17:

      v16 = v33;
    }

    else
    {
      if (!v35)
      {
LABEL_24:
        if (v71)
        {
          v69 = v34;
          v47 = sub_24EFED494(0, v34, v76, v16);
          *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v47;
          v48 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v49 = v47;
          v50 = [v48 initWithAttributedString_];
          if (qword_27F210100 != -1)
          {
            swift_once();
          }

          [v50 performSelector_];
          v51 = [v50 string];
          v52 = sub_24F92B0D8();
          v54 = v53;

          v34 = v69;
          goto LABEL_38;
        }

        *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
        goto LABEL_37;
      }

      v66 = v33;
      v68 = v34;
      v39 = sub_24F92B098();
      [v39 mutableCopy];

      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E69A5C4(0, &qword_27F236AD0);
      swift_dynamicCast();
      v40 = v83;
      v41 = v35[2];
      if (v41)
      {
        v42 = v35 + 4;
        do
        {
          v43 = *v42++;
          v44 = sub_24F92B098();
          [v40 replaceCharactersInRange:v43 withString:{1, v44}];

          --v41;
        }

        while (v41);
      }

      [v40 copy];
      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E69A5C4(0, &qword_27F236AD8);
      swift_dynamicCast();
      v45 = v83;
      v76 = sub_24F92B0D8();
      v16 = v46;

      v34 = v68;
    }

    v33 = v66;
    if (!v70)
    {
      goto LABEL_24;
    }

LABEL_29:
    [v30 copy];

    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E69A5C4(0, &qword_27F223430);
    v55 = swift_dynamicCast();
    v56 = v83;
    if (!v55)
    {
      v56 = 0;
    }

    *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v56;
    if (v71)
    {
      v67 = v34;
      v57 = qword_27F210100;
      v35 = v56;
      if (v57 == -1)
      {
LABEL_33:
        [v30 performSelector_];
        v58 = [v30 string];
        v52 = sub_24F92B0D8();
        v54 = v59;

        v34 = v67;
LABEL_38:
        v64 = &v3[OBJC_IVAR___AMPLanguageAwareString_string];
        *v64 = v52;
        v64[1] = v54;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v34;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v33;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v72;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v74;
        v78.receiver = v3;
        v78.super_class = type metadata accessor for LanguageAwareString();
        v3 = objc_msgSendSuper2(&v78, sel_init);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v3;
      }

LABEL_40:
      swift_once();
      goto LABEL_33;
    }

    if (v56)
    {
      v60 = v56;
      v65 = v26;
      v61 = v34;
      v62 = [v60 string];
      v52 = sub_24F92B0D8();
      v54 = v63;

      v34 = v61;
      goto LABEL_38;
    }

LABEL_37:

    v54 = v16;
    v52 = v76;
    goto LABEL_38;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  type metadata accessor for LanguageAwareString();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_24EFEFF20(uint64_t a1)
{
  v2 = sub_24EFED3B0();
  v3 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EFEFFEC()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    result = *(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough);
  }

  else
  {
    result = -1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}