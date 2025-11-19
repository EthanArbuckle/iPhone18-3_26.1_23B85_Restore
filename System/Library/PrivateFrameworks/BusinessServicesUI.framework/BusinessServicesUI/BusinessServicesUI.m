uint64_t sub_242136A88(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_27EC8C800 != -1)
  {
    swift_once();
  }

  v12 = sub_24214386C();
  __swift_project_value_buffer(v12, qword_27EC8D540);

  v13 = sub_24214384C();
  v14 = sub_242143E8C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_242136F1C(a1, a2, aBlock);
    _os_log_impl(&dword_242135000, v13, v14, "Fetching brand with URI: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245D08DF0](v16, -1, -1);
    MEMORY[0x245D08DF0](v15, -1, -1);
  }

  objc_opt_self();
  v17 = +[BSUIMapService sharedService];
  v18 = sub_242143DBC();
  v19 = [(BSUIMapService *)v17 ticketForBrandLookupWithIMessageUid:v18];

  sub_242136D70(v6, v25);
  v20 = swift_allocObject();
  v21 = v25[1];
  *(v20 + 56) = v25[0];
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3 & 1;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 72) = v21;
  *(v20 + 88) = v26;
  aBlock[4] = sub_2421394AC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242139340;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  [(_BSUIMapServiceTicket *)v19 submitWithHandler:v22];
  _Block_release(v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_242136D28()
{
  v1 = v0[3];

  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242136E00()
{
  v0 = sub_24214386C();
  __swift_allocate_value_buffer(v0, qword_27EC8D540);
  __swift_project_value_buffer(v0, qword_27EC8D540);
  return sub_24214385C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_242136F1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242136FF4(v11, 0, 0, 1, a1, a2);
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
    sub_242137100(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242136FF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2421394C8(a5, a6);
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
    result = sub_242143F1C();
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

uint64_t sub_242137100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2421372B0(unint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), int a5, void (*a6)(__int128 *), uint64_t a7, void *a8)
{
  v152 = a8;
  v155 = a6;
  v156 = a7;
  LODWORD(v153) = a5;
  v157 = a4;
  v154 = a3;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C830, &qword_242144ED0) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v141 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v141 - v17;
  v19 = sub_24214378C();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v141 - v25;
  v27 = sub_24214376C();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v32 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v151 = v24;
    v152 = v20;
    v153 = v26;
    if (a1)
    {
      v54 = v19;
      v55 = v13;
      if (a1 >> 62)
      {
        if (sub_242143F2C())
        {
LABEL_12:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x245D08890](0, a1);
          }

          else
          {
            if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_71:
              swift_once();
LABEL_58:
              v110 = sub_24214386C();
              __swift_project_value_buffer(v110, qword_27EC8D540);
              v111 = a2[2];
              v112 = v151;
              v111(v151, v55, v54);
              v113 = sub_24214384C();
              v114 = sub_242143E7C();
              if (os_log_type_enabled(v113, v114))
              {
                v115 = v112;
                v116 = swift_slowAlloc();
                *&v159 = swift_slowAlloc();
                v157 = v111;
                v117 = v159;
                *v116 = 136315138;
                sub_242139A08(&qword_27EC8C858, MEMORY[0x277CF3648]);
                v118 = sub_242143F3C();
                v119 = a2;
                v121 = v120;
                v122 = v115;
                v123 = v119[1];
                v123(v122, v54);
                v124 = sub_242136F1C(v118, v121, &v159);

                *(v116 + 4) = v124;
                _os_log_impl(&dword_242135000, v113, v114, "Fetched brand with model: %s", v116, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v117);
                v125 = v117;
                v111 = v157;
                MEMORY[0x245D08DF0](v125, -1, -1);
                MEMORY[0x245D08DF0](v116, -1, -1);
              }

              else
              {

                v123 = a2[1];
                v123(v112, v54);
              }

              v126 = v155;
              v127 = v150;
              *(&v160 + 1) = v54;
              v161 = v152;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
              v129 = v153;
              v111(boxed_opaque_existential_1, v153, v54);
              v163 = &type metadata for BSUIMapItemWrapper;
              v164 = sub_2421399B4();
              v162 = v127;
              v165 = 0;
              v130 = v127;
              v126(&v159);

              v123(v129, v54);
              goto LABEL_68;
            }

            v56 = *(a1 + 32);
          }

          v57 = v56;
          v58 = [(BSUIMapItem *)v56 name];
          if (!v58)
          {
            if (qword_27EC8C800 != -1)
            {
              swift_once();
            }

            v79 = sub_24214386C();
            __swift_project_value_buffer(v79, qword_27EC8D540);
            v80 = v157;

            v81 = sub_24214384C();
            v82 = sub_242143E8C();

            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              *&v159 = v84;
              *v83 = 136315138;
              *(v83 + 4) = sub_242136F1C(v154, v80, &v159);
              _os_log_impl(&dword_242135000, v81, v82, "Found a brand with URI: %s but it was missing the name", v83, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v84);
              MEMORY[0x245D08DF0](v84, -1, -1);
              MEMORY[0x245D08DF0](v83, -1, -1);
            }

            v85 = v155;
            v86 = sub_2421437BC();
            sub_242139A08(&qword_27EC8C838, MEMORY[0x277CF3668]);
            v87 = swift_allocError();
            (*(*(v86 - 8) + 104))(v88, *MEMORY[0x277CF3658], v86);
            *&v159 = v87;
            v165 = 1;
            v85(&v159);

            goto LABEL_68;
          }

          v59 = v58;
          sub_242143DCC();

          v60 = [(BSUIMapItem *)v57 phoneNumber];
          if (v60)
          {
            v61 = v60;
            v149 = sub_242143DCC();
            v148 = v62;
          }

          else
          {
            v149 = 0;
            v148 = 0;
          }

          v95 = [(BSUIMapItem *)v57 _navBackgroundbrandColor];
          if (v95)
          {
            v96 = v95;
            v147 = sub_242139AF4();
            v146 = v97;
          }

          else
          {
            v147 = 0;
            v146 = 0;
          }

          v98 = [(BSUIMapItem *)v57 _navTintBrandColor];
          if (v98)
          {
            v99 = v98;
            v145 = sub_242139AF4();
            v144 = v100;
          }

          else
          {
            v145 = 0;
            v144 = 0;
          }

          isMessage = [(BSUIMapItem *)v57 _isMessageIDVerified];
          v102 = [(BSUIMapItem *)v57 url];
          v143 = isMessage;
          if (v102)
          {
            v103 = v102;
            sub_24214366C();

            v104 = sub_24214369C();
            (*(*(v104 - 8) + 56))(v18, 0, 1, v104);
          }

          else
          {
            v104 = sub_24214369C();
            (*(*(v104 - 8) + 56))(v18, 1, 1, v104);
          }

          sub_24214369C();
          v105 = *(*(v104 - 8) + 56);
          v105(v16, 1, 1, v104);
          v150 = v57;
          v106 = [(BSUIMapItem *)v57 _localizedResponseTime];
          if (v106)
          {
            v107 = v106;
            v142 = sub_242143DCC();
            v141 = v108;
          }

          else
          {
            v142 = 0;
            v141 = 0;
          }

          a2 = v152;
          v105(v13, 1, 1, v104);
          v109 = sub_242139A08(&qword_27EC8C848, MEMORY[0x277CF3648]);

          v152 = v109;
          v55 = v153;
          sub_24214377C();
          if (qword_27EC8C800 == -1)
          {
            goto LABEL_58;
          }

          goto LABEL_71;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (qword_27EC8C800 != -1)
    {
      swift_once();
    }

    v131 = sub_24214386C();
    __swift_project_value_buffer(v131, qword_27EC8D540);
    v132 = v157;

    v133 = sub_24214384C();
    v134 = sub_242143E8C();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&v159 = v136;
      *v135 = 136315138;
      *(v135 + 4) = sub_242136F1C(v154, v132, &v159);
      _os_log_impl(&dword_242135000, v133, v134, "Failed to find a brand with URI: %s - no results returned", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x245D08DF0](v136, -1, -1);
      MEMORY[0x245D08DF0](v135, -1, -1);
    }

    v137 = v155;
    v138 = sub_2421437BC();
    sub_242139A08(&qword_27EC8C838, MEMORY[0x277CF3668]);
    v139 = swift_allocError();
    *v140 = 0;
    (*(*(v138 - 8) + 104))(v140, *MEMORY[0x277CF3660], v138);
    *&v159 = v139;
    v165 = 1;
    v137(&v159);
    goto LABEL_68;
  }

  v33 = v30;
  v151 = v29;
  v34 = a2;
  if (qword_27EC8C800 != -1)
  {
    swift_once();
  }

  v35 = sub_24214386C();
  __swift_project_value_buffer(v35, qword_27EC8D540);
  v36 = a2;
  v37 = v157;

  v38 = sub_24214384C();
  v39 = sub_242143E8C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v159 = v41;
    *v40 = 136315650;
    *(v40 + 4) = sub_242136F1C(v154, v37, &v159);
    *(v40 + 12) = 2080;
    v158 = a2;
    v42 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C860, &unk_242144EE0);
    v43 = sub_242143DEC();
    v45 = sub_242136F1C(v43, v44, &v159);

    *(v40 + 14) = v45;
    *(v40 + 22) = 1024;
    *(v40 + 24) = v153 & 1;
    _os_log_impl(&dword_242135000, v38, v39, "Failed to fetch brand with URI: %s error: %s isNetworkRetry: %{BOOL}d", v40, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x245D08DF0](v41, -1, -1);
    MEMORY[0x245D08DF0](v40, -1, -1);
  }

  v46 = sub_24214365C();
  v47 = [v46 domain];
  v48 = sub_242143DCC();
  v50 = v49;

  v51 = [v46 code];
  v52 = *MEMORY[0x277CD4B48];
  if (sub_242143DCC() == v48 && v53 == v50)
  {
  }

  else
  {
    v63 = sub_242143F4C();

    if ((v63 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v51 != 4)
  {
LABEL_22:
    v67 = GEOErrorDomain();
    if (v67)
    {
      v68 = v67;
      v69 = sub_242143DCC();
      v71 = v70;

      if (v69 == v48 && v71 == v50)
      {

        v37 = v157;
        if (v51 == -8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v72 = sub_242143F4C();

        v37 = v157;
        if ((v72 & 1) != 0 && v51 == -8)
        {
          goto LABEL_20;
        }
      }
    }

    v73 = *MEMORY[0x277CCA738];
    if (sub_242143DCC() == v48 && v74 == v50)
    {
    }

    else
    {
      v75 = sub_242143F4C();

      if ((v75 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    sub_24214374C();
    v76 = sub_24214375C();
    (*(v33 + 8))(v32, v151);
    if (v76 == v51)
    {
      if ((v153 & 1) == 0)
      {
        v89 = v152;
        v90 = v152[4];
        __swift_project_boxed_opaque_existential_1(v152, v152[3]);
        sub_242136D70(v89, &v159);
        v91 = swift_allocObject();
        v92 = v160;
        *(v91 + 16) = v159;
        *(v91 + 32) = v92;
        v94 = v154;
        v93 = v155;
        *(v91 + 48) = v161;
        *(v91 + 56) = v94;
        *(v91 + 64) = v37;
        *(v91 + 72) = v93;
        *(v91 + 80) = v156;

        sub_24214381C();

        return;
      }

      *&v159 = a2;
      v165 = 1;
      v77 = a2;
      goto LABEL_21;
    }

LABEL_36:

    *&v159 = a2;
    v165 = 1;
    v78 = a2;
    v155(&v159);

    goto LABEL_37;
  }

LABEL_20:
  v64 = sub_2421437BC();
  sub_242139A08(&qword_27EC8C838, MEMORY[0x277CF3668]);
  v65 = swift_allocError();
  *v66 = v46;
  (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277CF3660], v64);
  *&v159 = v65;
  v165 = 1;
  v46 = v46;
LABEL_21:
  v155(&v159);

LABEL_37:

LABEL_68:
  sub_2421398E8(&v159);
}

uint64_t sub_242138354()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_242138430()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24213848C@<X0>(uint64_t a1@<X8>)
{
  result = sub_24214394C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2421384C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24214395C();
}

uint64_t sub_2421384F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2421438EC();
  *a1 = result;
  return result;
}

uint64_t sub_242138544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24214390C();
  *a1 = result;
  return result;
}

uint64_t sub_242138570(uint64_t *a1)
{
  v1 = *a1;

  return sub_24214391C();
}

uint64_t sub_24213859C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2421385F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242138630(uint64_t *a1)
{
  v1 = *a1;
  swift_getTupleTypeMetadata2();
  sub_242143D6C();
  swift_getWitnessTable();
  sub_242143D2C();
  sub_2421438BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CC48, &qword_242145590);
  sub_2421438BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590);
  return swift_getWitnessTable();
}

uint64_t sub_242138798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCB0, &qword_2421455D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242138808()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242138840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id MapKitBrandDataSourceObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapKitBrandDataSourceObjcShim.init()()
{
  v1 = v0;
  v2 = sub_2421437DC();
  v3 = sub_2421437CC();
  v9[3] = v2;
  v9[4] = MEMORY[0x277CF3678];
  v9[0] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CF3690]);
  sub_242136D70(v9, v8);
  v5 = [v4 initWithThing_];
  swift_unknownObjectRelease();
  sub_2421389F4(v9);
  *&v1[OBJC_IVAR___BSUIMapKitBrandDataSourceObjcShim_opaqueWrapper] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MapKitBrandDataSourceObjcShim();
  return objc_msgSendSuper2(&v7, sel_init);
}

id MapKitBrandDataSourceObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapKitBrandDataSourceObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BrandPlacecardViewControllerObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandPlacecardViewControllerObjcShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandPlacecardViewControllerObjcShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BrandPlacecardViewControllerObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandPlacecardViewControllerObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s18BusinessServicesUI36BrandPlacecardViewControllerObjcShimC04makedefG005brandhI13OpaqueWrapperSo06UIViewG0CSo08BSOpaqueM0C_tFZ_0(void *a1)
{
  v1 = [a1 wrappedThing];
  sub_242143EEC();
  swift_unknownObjectRelease();
  sub_2421437AC();
  result = swift_dynamicCast();
  if (result)
  {
    sub_24214379C();
    sub_24214383C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C810, &qword_242144DA8);
    result = swift_dynamicCast();
    if (result)
    {
      v3 = [(BSUIMapItem *)v4 makePlacecardViewController];

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id _s18BusinessServicesUI36BrandPlacecardViewControllerObjcShimC18hoursConfiguration3foryXlSgSo15BSOpaqueWrapperC_tFZ_0(void *a1)
{
  v2 = sub_24214373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = [a1 wrappedThing];
  sub_242143EEC();
  swift_unknownObjectRelease();
  sub_2421437AC();
  if (swift_dynamicCast())
  {
    v11 = v25;
    sub_24214379C();
    sub_24214383C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C810, &qword_242144DA8);
    if (swift_dynamicCast())
    {
      v12 = v25;
      v13 = [(BSUIMapItem *)v25 messageBusinessHours];
      if (v13)
      {
        v14 = v13;
        v15 = [(BSUIMapItem *)v12 timeZone];
        if (v15)
        {
          v16 = v15;
          sub_24214372C();

          (*(v3 + 32))(v9, v7, v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CBC0, &qword_242144DB0);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_242144D60;
          *(v17 + 32) = v14;
          v18 = objc_allocWithZone(MEMORY[0x277D26690]);
          sub_242139074();
          v19 = v14;
          v20 = sub_242143E4C();

          v21 = sub_24214371C();
          v22 = [v18 initWithBusinessHours:v20 timeZone:v21];

          (*(v3 + 8))(v9, v2);
          return v22;
        }
      }
    }
  }

  return 0;
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

unint64_t sub_242139074()
{
  result = qword_27EC8C818;
  if (!qword_27EC8C818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8C818);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_242139134(void (*a1)(uint64_t, uint64_t))
{
  sub_24214382C();
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  a1(v2, v3);
  v5 = v4;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);
    v7 = sub_242143DBC();

    v5 = [v6 initWithHexString_];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return v5;
}

void __swiftcall Brand.makeBrandPlacecardViewController()(UIViewController *__return_ptr retstr)
{
  sub_24214383C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C810, &qword_242144DA8);
  if (swift_dynamicCast())
  {
    [(BSUIMapItem *)v1 makePlacecardViewController];
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2421392A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2421392E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242139340(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_24213989C();
    v4 = sub_242143E5C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_24213940C@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = 1;
  v6 = a1(v4, 1);
  if (v6)
  {
    v7 = v6;
    sub_24214366C();

    v5 = 0;
  }

  v8 = sub_24214369C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v5, 1, v8);
}

uint64_t sub_2421394C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_242139514(a1, a2);
  sub_242139644(&unk_285465568);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_242139514(uint64_t a1, unint64_t a2)
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

  v6 = sub_242139730(v5, 0);
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

  result = sub_242143F1C();
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
        v10 = sub_242143E3C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242139730(v10, 0);
        result = sub_242143EFC();
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

uint64_t sub_242139644(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2421397A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_242139730(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C820, &qword_242144EC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2421397A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C820, &qword_242144EC8);
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

unint64_t sub_24213989C()
{
  result = qword_27EC8C828;
  if (!qword_27EC8C828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8C828);
  }

  return result;
}

uint64_t sub_2421398E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C840, &qword_242144ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_2421399B4()
{
  result = qword_27EC8C850;
  if (!qword_27EC8C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C850);
  }

  return result;
}

uint64_t sub_242139A08(unint64_t *a1, void (*a2)(uint64_t))
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

UIColor_optional __swiftcall UIColor.init(hexString:)(Swift::String hexString)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_242143DBC();

  v3 = [v1 initWithHexString_];

  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t sub_242139AF4()
{
  v1 = [v0 CGColor];
  v2 = sub_242143E6C();

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3 < 3)
  {

    return 0;
  }

  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  if (v3 == 3)
  {

    v8 = 255.0;
  }

  else
  {
    v9 = *(v2 + 56);

    v10 = v9;
    v8 = v10 * 255.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C870, &qword_242145360);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_242144EF0;
  v12 = lroundf(v5 * 255.0);
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v15 = lroundf(v6 * 255.0);
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  v16 = lroundf(v7 * 255.0);
  *(v11 + 136) = v13;
  *(v11 + 144) = v14;
  *(v11 + 112) = v16;
  v17 = lroundf(v8);
  *(v11 + 176) = v13;
  *(v11 + 184) = v14;
  *(v11 + 152) = v17;
  return sub_242143DDC();
}

id UIColor.init(hexString:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = *MEMORY[0x277D85DE8];
  v6 = sub_24214363C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  sub_24214362C();
  sub_242139F44();
  v11 = sub_242143ECC();
  v13 = v12;
  (*(v7 + 8))(v10, v6);

  v25 = v11;
  v26 = v13;
  v24[3] = 35;
  v24[4] = 0xE100000000000000;
  v24[1] = 0;
  v24[2] = 0xE000000000000000;
  sub_242143EDC();

  v25 = 0;
  v14 = sub_242143E0C();
  v15 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v16 = sub_242143DBC();

  v17 = [v15 initWithString_];

  LODWORD(v16) = [v17 scanHexLongLong_];
  if (v16)
  {
    if (v14 == 8)
    {
      v19 = v25 >> 24;
      v20 = v25 >> 16;
      v18 = v25 >> 8;
      v21 = v25 / 255.0;
      goto LABEL_7;
    }

    if (v14 == 6)
    {
      LOBYTE(v18) = v25;
      v19 = v25 >> 16;
      v20 = v25 >> 8;
      v21 = 1.0;
LABEL_7:
      result = [v3 initWithRed:v19 / 255.0 green:v20 / 255.0 blue:v18 / 255.0 alpha:v21];
      goto LABEL_8;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  result = 0;
LABEL_8:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_242139F44()
{
  result = qword_27EC8C868;
  if (!qword_27EC8C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C868);
  }

  return result;
}

uint64_t BrandCardContentView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C878, &qword_242144F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v15 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C880, &qword_242144F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v15 - v9;
  v11 = *v0;
  if (*v0)
  {
    MEMORY[0x28223BE20](v8);
    v15[-2] = v11;
    v15[1] = 0;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8A0, &qword_242144F10);
    sub_242143CEC();
    v13 = v16;
    v17 = 0;
    v16 = v11;
    v18 = v13;
    sub_24213A340();
    sub_24213A394();
    sub_242143D3C();
    (*(v6 + 16))(v4, v10, v5);
    swift_storeEnumTagMultiPayload();
    sub_24213A260();
    sub_242143ABC();

    return (*(v6 + 8))(v10, v5);
  }

  else
  {
    *v4 = sub_242143C6C();
    swift_storeEnumTagMultiPayload();
    sub_24213A260();
    return sub_242143ABC();
  }
}

unint64_t sub_24213A260()
{
  result = qword_27EC8C888;
  if (!qword_27EC8C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C880, &qword_242144F08);
    sub_24213A340();
    sub_24213A394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C888);
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

unint64_t sub_24213A340()
{
  result = qword_27EC8C890;
  if (!qword_27EC8C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C890);
  }

  return result;
}

unint64_t sub_24213A394()
{
  result = qword_27EC8C898;
  if (!qword_27EC8C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C898);
  }

  return result;
}

id sub_24213A3E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_24213A420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24213A47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24213A4DC()
{
  result = qword_27EC8C8A8;
  if (!qword_27EC8C8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8B0, &qword_242144FA8);
    sub_24213A260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C8A8);
  }

  return result;
}

double BrandHeaderView.init(brand:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8A0, &qword_242144F10);
  sub_242143CEC();
  result = *&v5;
  *(a2 + 24) = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  return result;
}

double BrandHeaderView.init(brand:fallbackHandle:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8A0, &qword_242144F10);
  sub_242143CEC();
  result = *&v9;
  *(a4 + 24) = v9;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_24213A640()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    v3 = *v0;
    v4 = [v3 name];
    v5 = sub_242143DCC();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      goto LABEL_5;
    }

    v18 = [v3 primaryPhoneNumber];
    if (!v18)
    {
      goto LABEL_5;
    }

    v19 = v18;
    v20 = sub_242143DCC();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23 && (v24 = [v3 primaryPhoneNumber]) != 0)
    {
      v25 = v24;
      v9 = sub_242143DCC();
      v10 = v26;
    }

    else
    {
LABEL_5:
      v9 = 0;
      v10 = 0;
    }

    v11 = [v3 name];
    v12 = sub_242143DCC();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      v16 = [v3 name];
      v9 = sub_242143DCC();
      v10 = v17;

      if (!v2)
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if (!v2)
    {
      goto LABEL_33;
    }
  }

  v27 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v27 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    if (v10)
    {
      v28 = v9 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = 0;
    }

    if (v10)
    {
      v29 = v10;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28;
    }

    if (!v30)
    {

      return v1;
    }
  }

LABEL_33:
  if (!v10)
  {
    v31 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];

    v9 = sub_24214364C();
  }

  return v9;
}

uint64_t sub_24213A910()
{
  v1 = sub_2421439AC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  if (*v0)
  {
    v3 = *v0;
    if ([v3 isRCSChatBot])
    {
      if ([v3 isVerified])
      {
        v4 = [v3 verifiedBy];
        if (v4)
        {
          v5 = v4;
          v6 = sub_242143DCC();
          v8 = v7;

          v9 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
          swift_getObjectType();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v11 = [objc_opt_self() bundleForClass_];

          sub_24214364C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C870, &qword_242145360);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_242144FB0;
          *(v12 + 56) = MEMORY[0x277D837D0];
          *(v12 + 64) = sub_24213D900();
          *(v12 + 32) = v6;
          *(v12 + 40) = v8;
          sub_242143DDC();

          sub_242139F44();
          v13 = sub_242143BEC();
LABEL_8:
          v17 = v13;

          return v17;
        }
      }
    }

    if ([v3 isVerified])
    {
      v14 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
      swift_getObjectType();
      v15 = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];

      sub_24214364C();
      sub_24214399C();
      sub_24214398C();
      sub_242143CBC();
      sub_24214396C();

      sub_24214398C();
      sub_24214397C();

      sub_24214398C();
      sub_2421439BC();
      v13 = sub_242143BDC();
      goto LABEL_8;
    }
  }

  v19 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];

  sub_24214364C();
  sub_242139F44();
  return sub_242143BEC();
}

uint64_t BrandHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8B8, &qword_242145008);
  v2 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v4 = &v57 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8C0, &qword_242145010);
  v5 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8C8, &qword_242145018);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8D0, &qword_242145020);
  v11 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8D8, &qword_242145028);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8E0, &qword_242145030);
  v18 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v20 = &v57 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8E8, &qword_242145038);
  v21 = *(*(v60 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v60);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v57 - v25;
  v27 = v1[1];
  v107 = *v1;
  v108 = v27;
  v109 = *(v1 + 4);
  if (v107)
  {
    v28 = v107;
    *v10 = sub_2421439DC();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C968, &qword_242145098);
    sub_24213B52C(&v107, v28, &v10[*(v29 + 44)]);
    sub_242143D5C();
    sub_2421438DC();
    sub_24213D20C(v10, v13, &qword_27EC8C8C8, &qword_242145018);
    v30 = &v13[*(v58 + 36)];
    v31 = v99;
    *(v30 + 4) = v98;
    *(v30 + 5) = v31;
    *(v30 + 6) = v100;
    v32 = v95;
    *v30 = v94;
    *(v30 + 1) = v32;
    v33 = v97;
    *(v30 + 2) = v96;
    *(v30 + 3) = v33;
    v34 = &v17[*(v14 + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C900, &qword_242145050) + 28);
    v36 = sub_242143BBC();
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
    *v34 = swift_getKeyPath();
    sub_24213D20C(v13, v17, &qword_27EC8C8D0, &qword_242145020);
    LODWORD(v34) = sub_242143ACC();
    sub_24213D20C(v17, v20, &qword_27EC8C8D8, &qword_242145028);
    *&v20[*(v59 + 36)] = v34;
    v37 = swift_allocObject();
    *(v37 + 16) = v28;
    v38 = v108;
    *(v37 + 24) = v107;
    *(v37 + 40) = v38;
    *(v37 + 56) = v109;
    sub_24213D20C(v20, v24, &qword_27EC8C8E0, &qword_242145030);
    v39 = &v24[*(v60 + 36)];
    *v39 = sub_24213D200;
    v39[1] = v37;
    v39[2] = 0;
    v39[3] = 0;
    v40 = &qword_27EC8C8E8;
    v41 = &qword_242145038;
    sub_24213D20C(v24, v26, &qword_27EC8C8E8, &qword_242145038);
    sub_24213D954(v26, v62, &qword_27EC8C8E8, &qword_242145038);
    swift_storeEnumTagMultiPayload();
    sub_24213D274(&v107, &v81);
    sub_24213CDB0();
    sub_24213D064();
    sub_242143ABC();
    v42 = v26;
  }

  else
  {
    v43 = sub_2421439DC();
    v80 = 0;
    sub_24213C4BC(&v107, &v66);
    v91 = v76;
    v92 = v77;
    v87 = v72;
    v88 = v73;
    v89 = v74;
    v90 = v75;
    v83 = v68;
    v84 = v69;
    v85 = v70;
    v86 = v71;
    v81 = v66;
    v82 = v67;
    v104 = v76;
    v105 = v77;
    v100 = v72;
    v101 = v73;
    v102 = v74;
    v103 = v75;
    v96 = v68;
    v97 = v69;
    v98 = v70;
    v99 = v71;
    v93 = v78;
    v106 = v78;
    v94 = v66;
    v95 = v67;
    sub_24213D954(&v81, &v65, &qword_27EC8C8F0, &qword_242145040);
    sub_24213D8A0(&v94, &qword_27EC8C8F0, &qword_242145040);
    *&v79[151] = v90;
    *&v79[167] = v91;
    *&v79[183] = v92;
    *&v79[87] = v86;
    *&v79[103] = v87;
    *&v79[119] = v88;
    *&v79[135] = v89;
    *&v79[23] = v82;
    *&v79[39] = v83;
    *&v79[55] = v84;
    *&v79[71] = v85;
    v79[199] = v93;
    *&v79[7] = v81;
    v44 = v80;
    v45 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8F8, &qword_242145048) + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C900, &qword_242145050) + 28);
    v47 = sub_242143BBC();
    (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
    *v45 = swift_getKeyPath();
    v48 = *&v79[16];
    *(v4 + 17) = *v79;
    v49 = *&v79[80];
    *(v4 + 81) = *&v79[64];
    v50 = *&v79[32];
    *(v4 + 65) = *&v79[48];
    *(v4 + 49) = v50;
    *(v4 + 33) = v48;
    v51 = *&v79[144];
    *(v4 + 145) = *&v79[128];
    v52 = *&v79[96];
    *(v4 + 129) = *&v79[112];
    *(v4 + 113) = v52;
    *(v4 + 97) = v49;
    v53 = *&v79[160];
    *(v4 + 193) = *&v79[176];
    *(v4 + 177) = v53;
    *v4 = v43;
    *(v4 + 1) = 0;
    v4[16] = v44;
    *(v4 + 209) = *&v79[192];
    *(v4 + 161) = v51;
    v54 = sub_242143ACC();
    v55 = v62;
    *&v4[*(v63 + 36)] = v54;
    v40 = &qword_27EC8C8B8;
    v41 = &qword_242145008;
    sub_24213D954(v4, v55, &qword_27EC8C8B8, &qword_242145008);
    swift_storeEnumTagMultiPayload();
    sub_24213CDB0();
    sub_24213D064();
    sub_242143ABC();
    v42 = v4;
  }

  return sub_24213D8A0(v42, v40, v41);
}

uint64_t sub_24213B52C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v139 = a2;
  v128 = a3;
  v4 = sub_242143B6C();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = *(v126 + 64);
  MEMORY[0x28223BE20](v4);
  v130 = &v121[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_242143CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9C8, &qword_242145310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v121[-v14];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9D0, &qword_242145318);
  v16 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v18 = &v121[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9D8, &qword_242145320);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v142 = &v121[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v24 = &v121[-v23];
  v129 = a1;
  *v172 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9C0, &qword_242145308);
  sub_242143CFC();
  if (*&v168[0])
  {
    v140 = *&v168[0];
    sub_242143CAC();
    (*(v8 + 104))(v11, *MEMORY[0x277CE0FE0], v7);
    v25 = sub_242143CDC();

    (*(v8 + 8))(v11, v7);
    sub_242143D5C();
    sub_24214389C();
    LOBYTE(v172[0]) = 1;
    *&v144[6] = v193;
    *&v144[22] = v194;
    *&v144[38] = v195;
    v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9F0, &qword_242145328) + 36)];
    v27 = *(sub_2421438CC() + 20);
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_2421439CC();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    __asm { FMOV            V0.2D, #18.0 }

    *v26 = _Q0;
    *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C998, &qword_2421452B0) + 36)] = 256;
    v35 = *&v144[16];
    *(v15 + 18) = *v144;
    *v15 = v25;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    *(v15 + 34) = v35;
    *(v15 + 50) = *&v144[32];
    *(v15 + 8) = *&v144[46];
    v36 = sub_242143AFC();
    sub_24214387C();
    v37 = &v15[*(v12 + 36)];
    *v37 = v36;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    sub_24213D954(v15, v18, &qword_27EC8C9C8, &qword_242145310);
    swift_storeEnumTagMultiPayload();
    sub_24213D5F8();
    sub_24213D84C();
    sub_242143ABC();

    sub_24213D8A0(v15, &qword_27EC8C9C8, &qword_242145310);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24213D5F8();
    sub_24213D84C();
    sub_242143ABC();
  }

  v125 = sub_24213A640();
  v140 = v42;
  v43 = v139;
  v44 = [v139 isRCSChatBot];
  v45 = v127;
  if (v44)
  {
    v46 = [v43 brandURI];
    v124 = sub_242143DCC();
    v143 = v47;
  }

  else
  {
    v124 = 0;
    v143 = 0;
  }

  v48 = [v43 categories];
  v49 = MEMORY[0x277CE0A10];
  v141 = v24;
  if (!v48)
  {
    goto LABEL_14;
  }

  v50 = v48;
  v51 = sub_242143E5C();

  if (!v51[2])
  {
    goto LABEL_13;
  }

  v52 = v51[4];
  v53 = v51[5];

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
LABEL_13:

LABEL_14:
    v138 = 0;
    v139 = 0;
    KeyPath = 0;
    v137 = 0;
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v60 = v126;
    goto LABEL_15;
  }

  v172[0] = v52;
  v172[1] = v53;
  sub_242139F44();
  v55 = sub_242143BEC();
  v57 = v56;
  v59 = v58;
  sub_242143B1C();
  v60 = v126;
  v61 = v130;
  (*(v126 + 104))(v130, *v49, v45);
  sub_242143B7C();

  (*(v60 + 8))(v61, v45);
  v62 = sub_242143BCC();
  v138 = v63;
  v139 = v62;
  v65 = v64;
  v137 = v66;
  v49 = MEMORY[0x277CE0A10];

  sub_24213D508(v55, v57, v59 & 1);

  KeyPath = swift_getKeyPath();
  v67 = sub_242143AEC();
  LOBYTE(v172[0]) = v65 & 1;
  LOBYTE(v168[0]) = 0;
  LOBYTE(v145) = 0;
  v131 = v65 & 1;
  v133 = 0;
  v132 = v67;
  v134 = 1;
  v135 = 0x4000000000000000;
LABEL_15:
  v68 = sub_24213A910();
  v70 = v69;
  v72 = v71;
  sub_242143B0C();
  v73 = v130;
  (*(v60 + 104))(v130, *v49, v45);
  sub_242143B7C();

  (*(v60 + 8))(v73, v45);
  v74 = sub_242143BCC();
  v76 = v75;
  LOBYTE(v73) = v77;

  sub_24213D508(v68, v70, v72 & 1);

  LODWORD(v172[0]) = sub_242143ADC();
  v78 = sub_242143BAC();
  v129 = v78;
  v130 = v79;
  v123 = v80;
  v82 = v81;
  v83 = v79;
  sub_24213D508(v74, v76, v73 & 1);

  v84 = sub_242143AEC();
  LOBYTE(v73) = v84;
  LODWORD(v127) = v84;
  LOBYTE(v172[0]) = v82 & 1;
  v85 = v82 & 1;
  LODWORD(v126) = v82 & 1;
  LOBYTE(v168[0]) = 0;
  v86 = sub_242143C6C();
  sub_242143D5C();
  sub_2421438DC();
  v122 = sub_242143AEC();
  sub_24214387C();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  LOBYTE(v172[0]) = 0;
  v95 = v142;
  sub_24213D954(v141, v142, &qword_27EC8C9D8, &qword_242145320);
  v96 = v95;
  v97 = v128;
  sub_24213D954(v96, v128, &qword_27EC8C9D8, &qword_242145320);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CA28, &qword_242145340);
  v99 = (v97 + v98[12]);
  v100 = v140;
  *v99 = v125;
  v99[1] = v100;
  v101 = v143;
  v99[2] = v124;
  v99[3] = v101;
  v143 = v101;
  v102 = v97 + v98[16];
  *&v155 = v139;
  *(&v155 + 1) = v138;
  *&v156 = v131;
  *(&v156 + 1) = v137;
  *&v157 = KeyPath;
  *(&v157 + 1) = v134;
  *&v158 = v133;
  *(&v158 + 1) = v132;
  v159 = v135;
  v160 = 0uLL;
  v161 = 0;
  *(v102 + 96) = 0;
  v103 = v156;
  *v102 = v155;
  *(v102 + 16) = v103;
  v104 = v158;
  *(v102 + 32) = v157;
  *(v102 + 48) = v104;
  v105 = v160;
  *(v102 + 64) = v159;
  *(v102 + 80) = v105;
  v106 = (v97 + v98[20]);
  v107 = v123;
  *&v162 = v78;
  *(&v162 + 1) = v123;
  LOBYTE(v163) = v85;
  DWORD1(v163) = *&v153[3];
  *(&v163 + 1) = *v153;
  *(&v163 + 1) = v83;
  LOBYTE(v164) = v73;
  DWORD1(v164) = *&v152[3];
  *(&v164 + 1) = *v152;
  *(&v164 + 1) = 0x4010000000000000;
  v165 = 0uLL;
  v166 = 0;
  v167 = 0;
  v108 = v162;
  v109 = v163;
  *(v106 + 57) = 0u;
  v110 = v165;
  v106[2] = v164;
  v106[3] = v110;
  *v106 = v108;
  v106[1] = v109;
  v111 = v97 + v98[24];
  v112 = v86;
  *&v168[0] = v86;
  *(&v168[5] + 8) = v150;
  *(&v168[6] + 8) = v151;
  *(&v168[2] + 8) = v147;
  *(&v168[1] + 8) = v146;
  *(v168 + 8) = v145;
  *(&v168[4] + 8) = v149;
  *(&v168[3] + 8) = v148;
  LOBYTE(v86) = v122;
  BYTE8(v168[7]) = v122;
  HIDWORD(v168[7]) = *&v154[3];
  *(&v168[7] + 9) = *v154;
  *&v169 = v88;
  *(&v169 + 1) = v90;
  *&v170 = v92;
  *(&v170 + 1) = v94;
  v171 = 0;
  v113 = v169;
  v114 = v170;
  *(v111 + 160) = 0;
  *(v111 + 128) = v113;
  *(v111 + 144) = v114;
  v115 = v168[1];
  *v111 = v168[0];
  *(v111 + 16) = v115;
  v116 = v168[2];
  v117 = v168[3];
  v118 = v168[7];
  *(v111 + 96) = v168[6];
  *(v111 + 112) = v118;
  v119 = v168[5];
  *(v111 + 64) = v168[4];
  *(v111 + 80) = v119;
  *(v111 + 32) = v116;
  *(v111 + 48) = v117;

  sub_24213D954(&v155, v172, &qword_27EC8CA30, &qword_242145348);
  sub_24213D954(&v162, v172, &qword_27EC8CA38, &qword_242145350);
  sub_24213D954(v168, v172, &qword_27EC8CA40, &qword_242145358);
  sub_24213D8A0(v141, &qword_27EC8C9D8, &qword_242145320);
  *&v172[7] = v148;
  *&v172[9] = v149;
  *&v172[11] = v150;
  *&v172[13] = v151;
  *&v172[1] = v145;
  *&v172[3] = v146;
  v172[0] = v112;
  *&v172[5] = v147;
  v173 = v86;
  *&v174[3] = *&v154[3];
  *v174 = *v154;
  v175 = v88;
  v176 = v90;
  v177 = v92;
  v178 = v94;
  v179 = 0;
  sub_24213D8A0(v172, &qword_27EC8CA40, &qword_242145358);
  v180[0] = v129;
  v180[1] = v107;
  v181 = v126;
  *v182 = *v153;
  *&v182[3] = *&v153[3];
  v183 = v130;
  v184 = v127;
  *v185 = *v152;
  *&v185[3] = *&v152[3];
  v186 = 0x4010000000000000;
  v187 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  sub_24213D8A0(v180, &qword_27EC8CA38, &qword_242145350);
  v191[0] = v139;
  v191[1] = v138;
  v191[2] = v131;
  v191[3] = v137;
  v191[4] = KeyPath;
  v191[5] = v134;
  v191[6] = v133;
  v191[7] = v132;
  v191[8] = v135;
  memset(&v191[9], 0, 24);
  v192 = 0;
  sub_24213D8A0(v191, &qword_27EC8CA30, &qword_242145348);

  return sub_24213D8A0(v142, &qword_27EC8C9D8, &qword_242145320);
}

void sub_24213C1A4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  aBlock[4] = sub_24213D518;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24213C410;
  aBlock[3] = &block_descriptor_0;
  v6 = _Block_copy(aBlock);
  sub_24213D274(a2, v7);

  [a1 squareLogoDataForDesiredSize:v6 completion:{80.0, 80.0}];
  _Block_release(v6);
}

uint64_t sub_24213C2A0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v16[9] = v4;
    v16[10] = v5;
    v7 = result;
    v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_24213D590(v7, a2);
    sub_24213D5A4(v7, a2);
    v10 = sub_2421436AC();
    v11 = [v9 initWithData_];

    sub_24213D528(v7, a2);
    v12 = *(a4 + 24);
    v15 = *(a4 + 32);
    v16[0] = v12;
    v14[2] = v12;
    v14[3] = v15;
    v14[1] = v11;
    sub_24213D954(v16, v14, &qword_27EC8C8A0, &qword_242144F10);
    sub_24213D954(&v15, v14, &qword_27EC8C9B8, &qword_242145300);
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9C0, &qword_242145308);
    sub_242143D0C();
    sub_24213D528(v7, a2);

    sub_24213D8A0(v16, &qword_27EC8C8A0, &qword_242144F10);
    return sub_24213D8A0(&v15, &qword_27EC8C9B8, &qword_242145300);
  }

  return result;
}

uint64_t sub_24213C410(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_2421436BC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_24213D528(v4, v9);
}

uint64_t sub_24213C4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24213A640();
  v6 = v5;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);

  v9 = sub_242143C6C();
  sub_242143D5C();
  sub_2421438DC();
  v10 = sub_242143AEC();
  sub_24214387C();
  *v37 = v9;
  v11 = v32;
  *&v37[56] = v33;
  v12 = v33;
  *&v37[72] = v34;
  v13 = v34;
  *&v37[88] = v35;
  v14 = v35;
  *&v37[104] = v36;
  v15 = v31;
  *&v37[8] = v30;
  v16 = v30;
  *&v37[24] = v31;
  *&v37[40] = v32;
  v37[120] = v10;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  *&v39 = v19;
  *(&v39 + 1) = v20;
  v21 = *&v37[112];
  v22 = v39;
  *(a2 + 160) = v38;
  *(a2 + 176) = v22;
  v23 = *&v37[16];
  v24 = *&v37[32];
  v25 = v36;
  *(a2 + 32) = *v37;
  *(a2 + 48) = v23;
  v26 = *&v37[80];
  *(a2 + 128) = *&v37[96];
  *(a2 + 144) = v21;
  v27 = *&v37[48];
  *(a2 + 96) = *&v37[64];
  *(a2 + 112) = v26;
  *(a2 + 64) = v24;
  *(a2 + 80) = v27;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v40 = 0;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  *(a2 + 192) = 0;
  v41 = v9;
  v48 = v25;
  v42 = v16;
  v43 = v15;
  v44 = v11;
  v49 = v10;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  v54 = 0;

  sub_24213D954(v37, v29, &qword_27EC8CA40, &qword_242145358);
  sub_24213D8A0(&v41, &qword_27EC8CA40, &qword_242145358);
}

uint64_t sub_24213C694@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C980, &qword_242145298);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - v4;
  v6 = sub_242143C5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C988, &qword_2421452A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_242144FC0;
  v12 = *MEMORY[0x277CE0EE0];
  v13 = *(v7 + 104);
  v13(v10, v12, v6);
  *(v11 + 32) = sub_242143C9C();
  v13(v10, v12, v6);
  *(v11 + 40) = sub_242143C9C();
  sub_242143D8C();
  sub_242143D9C();
  MEMORY[0x245D086D0](v11);
  sub_2421438AC();
  v14 = v49;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C990, &qword_2421452A8) + 36));
  v16 = *(sub_2421438CC() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_2421439CC();
  v19 = *(*(v18 - 8) + 104);
  v47 = v51;
  v48 = v50;
  v19(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #18.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C998, &qword_2421452B0) + 36)] = 256;
  *a1 = v14;
  v25 = v48;
  *(a1 + 24) = v47;
  *(a1 + 8) = v25;
  sub_242143D5C();
  sub_24214389C();
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9A0, &qword_2421452B8) + 36));
  v27 = v53;
  *v26 = v52;
  v26[1] = v27;
  v26[2] = v54;
  v28 = sub_242143D5C();
  v30 = v29;
  v31 = sub_242143CBC();
  v32 = sub_242143C7C();
  v33 = sub_242143B4C();
  (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
  v34 = sub_242143B5C();
  sub_24213D8A0(v5, &qword_27EC8C980, &qword_242145298);
  KeyPath = swift_getKeyPath();
  v36 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9A8, &qword_2421452F0) + 36));
  *v36 = v31;
  v36[1] = v32;
  v36[2] = KeyPath;
  v36[3] = v34;
  v36[4] = v28;
  v36[5] = v30;
  LOBYTE(KeyPath) = sub_242143AFC();
  sub_24214387C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9B0, &qword_2421452F8);
  v46 = a1 + *(result + 36);
  *v46 = KeyPath;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_24213CAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_242139F44();

  v8 = sub_242143BEC();
  v10 = v9;
  v12 = v11;
  sub_242143B3C();
  sub_242143B2C();

  v13 = sub_242143BCC();
  v39 = v14;
  v40 = v13;
  v16 = v15;
  v38 = v17;

  sub_24213D508(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = v16 & 1;
  v21 = sub_242143AEC();
  sub_24214387C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = sub_242143D5C();
  if (a4)
  {
    v32 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v32 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = result;
      v34 = v31;

      v31 = v34;
      result = v33;
      v32 = a3;
      v35 = a1;
    }

    else
    {
      v35 = 0;
      a2 = 0;
      a4 = 0;
    }
  }

  else
  {
    v35 = 0;
    a2 = 0;
    v32 = 0;
  }

  *a5 = v40;
  *(a5 + 8) = v39;
  *(a5 + 16) = v20;
  *(a5 + 24) = v38;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v19;
  *(a5 + 64) = 1;
  *(a5 + 66) = 1;
  *(a5 + 72) = v21;
  *(a5 + 80) = v23;
  *(a5 + 88) = v25;
  *(a5 + 96) = v27;
  *(a5 + 104) = v29;
  *(a5 + 112) = 0;
  *(a5 + 120) = v35;
  *(a5 + 128) = a2;
  *(a5 + 136) = v32;
  *(a5 + 144) = a4;
  *(a5 + 152) = result;
  *(a5 + 160) = v31;
  return result;
}

uint64_t sub_24213CD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CA50, &qword_242145368);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24213D954(a1, &v6 - v4, &qword_27EC8CA50, &qword_242145368);
  return sub_24214393C();
}

unint64_t sub_24213CDB0()
{
  result = qword_27EC8C908;
  if (!qword_27EC8C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8E8, &qword_242145038);
    sub_24213CE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C908);
  }

  return result;
}

unint64_t sub_24213CE3C()
{
  result = qword_27EC8C910;
  if (!qword_27EC8C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8E0, &qword_242145030);
    sub_24213CEF4();
    sub_24213E090(&qword_27EC8C938, &qword_27EC8C940, &qword_242145088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C910);
  }

  return result;
}

unint64_t sub_24213CEF4()
{
  result = qword_27EC8C918;
  if (!qword_27EC8C918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8D8, &qword_242145028);
    sub_24213CFAC();
    sub_24213E090(&qword_27EC8C930, &qword_27EC8C900, &qword_242145050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C918);
  }

  return result;
}

unint64_t sub_24213CFAC()
{
  result = qword_27EC8C920;
  if (!qword_27EC8C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8D0, &qword_242145020);
    sub_24213E090(&qword_27EC8C928, &qword_27EC8C8C8, &qword_242145018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C920);
  }

  return result;
}

unint64_t sub_24213D064()
{
  result = qword_27EC8C948;
  if (!qword_27EC8C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8B8, &qword_242145008);
    sub_24213D11C();
    sub_24213E090(&qword_27EC8C938, &qword_27EC8C940, &qword_242145088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C948);
  }

  return result;
}

unint64_t sub_24213D11C()
{
  result = qword_27EC8C950;
  if (!qword_27EC8C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8F8, &qword_242145048);
    sub_24213E090(&qword_27EC8C958, &qword_27EC8C960, &qword_242145090);
    sub_24213E090(&qword_27EC8C930, &qword_27EC8C900, &qword_242145050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C950);
  }

  return result;
}

uint64_t sub_24213D20C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24213D2C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24213D324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24213D390()
{
  result = qword_27EC8C970;
  if (!qword_27EC8C970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C978, &qword_242145148);
    sub_24213CDB0();
    sub_24213D064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C970);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24213D428(uint64_t a1, int a2)
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

uint64_t sub_24213D470(uint64_t result, int a2, int a3)
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

uint64_t sub_24213D508(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24213D528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24213D53C(a1, a2);
  }

  return a1;
}

uint64_t sub_24213D53C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24213D590(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24213D5A4(a1, a2);
  }

  return a1;
}

uint64_t sub_24213D5A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24213D5F8()
{
  result = qword_27EC8C9E0;
  if (!qword_27EC8C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9C8, &qword_242145310);
    sub_24213D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C9E0);
  }

  return result;
}

unint64_t sub_24213D684()
{
  result = qword_27EC8C9E8;
  if (!qword_27EC8C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9F0, &qword_242145328);
    sub_24213D73C();
    sub_24213E090(&qword_27EC8CA18, &qword_27EC8C998, &qword_2421452B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C9E8);
  }

  return result;
}

unint64_t sub_24213D73C()
{
  result = qword_27EC8C9F8;
  if (!qword_27EC8C9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA00, &qword_242145330);
    sub_24213D7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C9F8);
  }

  return result;
}

unint64_t sub_24213D7C8()
{
  result = qword_27EC8CA08;
  if (!qword_27EC8CA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA10, &qword_242145338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA08);
  }

  return result;
}

unint64_t sub_24213D84C()
{
  result = qword_27EC8CA20;
  if (!qword_27EC8CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA20);
  }

  return result;
}

uint64_t sub_24213D8A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24213D900()
{
  result = qword_27EC8CA48;
  if (!qword_27EC8CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA48);
  }

  return result;
}

uint64_t sub_24213D954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24213D9BC()
{
  result = qword_27EC8CA58;
  if (!qword_27EC8CA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA60, &qword_242145370);
    sub_24213DA74();
    sub_24213E090(&qword_27EC8CAC8, &qword_27EC8CAD0, &qword_2421453A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA58);
  }

  return result;
}

unint64_t sub_24213DA74()
{
  result = qword_27EC8CA68;
  if (!qword_27EC8CA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA70, &qword_242145378);
    sub_24213DB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA68);
  }

  return result;
}

unint64_t sub_24213DB00()
{
  result = qword_27EC8CA78;
  if (!qword_27EC8CA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA80, &qword_242145380);
    sub_24213DB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA78);
  }

  return result;
}

unint64_t sub_24213DB8C()
{
  result = qword_27EC8CA88;
  if (!qword_27EC8CA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA90, &qword_242145388);
    sub_24213DC44();
    sub_24213E090(&qword_27EC8CAB8, &qword_27EC8CAC0, &qword_2421453A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA88);
  }

  return result;
}

unint64_t sub_24213DC44()
{
  result = qword_27EC8CA98;
  if (!qword_27EC8CA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CAA0, &qword_242145390);
    sub_24213E090(&qword_27EC8CAA8, &qword_27EC8CAB0, &qword_242145398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA98);
  }

  return result;
}

unint64_t sub_24213DCFC()
{
  result = qword_27EC8CAD8;
  if (!qword_27EC8CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9B0, &qword_2421452F8);
    sub_24213DD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAD8);
  }

  return result;
}

unint64_t sub_24213DD88()
{
  result = qword_27EC8CAE0;
  if (!qword_27EC8CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9A8, &qword_2421452F0);
    sub_24213DE40();
    sub_24213E090(&qword_27EC8CB20, &qword_27EC8CB28, &unk_2421453C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAE0);
  }

  return result;
}

unint64_t sub_24213DE40()
{
  result = qword_27EC8CAE8;
  if (!qword_27EC8CAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9A0, &qword_2421452B8);
    sub_24213DECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAE8);
  }

  return result;
}

unint64_t sub_24213DECC()
{
  result = qword_27EC8CAF0;
  if (!qword_27EC8CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C990, &qword_2421452A8);
    sub_24213DF84();
    sub_24213E090(&qword_27EC8CA18, &qword_27EC8C998, &qword_2421452B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAF0);
  }

  return result;
}

unint64_t sub_24213DF84()
{
  result = qword_27EC8CAF8;
  if (!qword_27EC8CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CB00, &qword_2421453B0);
    sub_24213E03C();
    sub_24213E090(&qword_27EC8CB10, &qword_27EC8CB18, &qword_2421453B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAF8);
  }

  return result;
}

unint64_t sub_24213E03C()
{
  result = qword_27EC8CB08;
  if (!qword_27EC8CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CB08);
  }

  return result;
}

uint64_t sub_24213E090(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_24213E0E4(void *a1)
{
  *&v1[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction] = 0;
  v3 = &v1[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_name];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_sip];
  v5 = type metadata accessor for BrandCardCopyMenu();
  *v4 = 0;
  *(v4 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_24213E258();
  }

  return v7;
}

void sub_24213E258()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D754C8]) initWithDelegate_];
  v2 = *&v0[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction] = v1;
  v3 = v1;

  if (v3)
  {
    [v0 addInteraction_];

    v4 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v0 action:sel_handleLongPress_];
    [v4 setMinimumPressDuration_];
    [v0 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_24213E3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() generalPasteboard];
  v6 = (a2 + *a3);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];

    v9 = sub_242143DBC();
  }

  else
  {
    v9 = 0;
  }

  [v5 setString_];
}

id sub_24213E4D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandCardCopyMenu();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24213E590()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for BrandCardCopyMenu();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_name];
  v8 = *&v6[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_name + 8];
  *v7 = v2;
  *(v7 + 1) = v1;

  v9 = &v6[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_sip];
  v10 = *&v6[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_sip + 8];
  *v9 = v4;
  *(v9 + 1) = v3;

  return v6;
}

uint64_t sub_24213E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24213EC10();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24213E6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24213EC10();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24213E72C()
{
  sub_24213EC10();
  sub_242143A8C();
  __break(1u);
}

void sub_24213E754()
{
  [v0 bounds];
  MidX = CGRectGetMidX(v6);
  [v0 bounds];
  MinY = CGRectGetMinY(v7);
  CGPointMake(MidX, MinY);
  sub_24213EB54(0, &qword_27EC8CBC8, 0x277D754C0);
  v4 = sub_242143E9C();
  v3 = *&v0[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction];
  [v3 presentEditMenuWithConfiguration_];
}

uint64_t sub_24213E838()
{
  sub_24213EB54(0, &qword_27EC8CBB0, 0x277D750C8);
  v1 = type metadata accessor for FrameworkBundleAnchor();
  v2 = [objc_allocWithZone(v1) init];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];

  sub_24214364C();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = v0;
  v8 = sub_242143EBC();
  v9 = [objc_allocWithZone(v1) init];
  swift_getObjectType();
  v10 = [v4 bundleForClass_];

  sub_24214364C();
  *(swift_allocObject() + 16) = v7;
  v11 = v7;
  v12 = sub_242143EBC();
  sub_24213EB54(0, &qword_27EC8CBB8, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CBC0, &qword_242144DB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2421453D0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  return sub_242143EAC();
}

uint64_t sub_24213EB54(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_24213EBBC()
{
  result = qword_27EC8CBD0;
  if (!qword_27EC8CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CBD0);
  }

  return result;
}

unint64_t sub_24213EC10()
{
  result = qword_27EC8CBD8;
  if (!qword_27EC8CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CBD8);
  }

  return result;
}

id sub_24213ECA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrameworkBundleAnchor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24213ECFC(uint64_t a1)
{
  v2 = sub_24214370C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC40, &qword_242145558);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  sub_2421436FC();
  sub_2421436EC();
  (*(v3 + 8))(v6, v2);
  v11 = sub_2421436DC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24213EF84(v10);
  }

  else
  {
    sub_2421436CC();
    (*(v12 + 8))(v10, v11);
    sub_242143DFC();
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = sub_242143DBC();
  v15 = sub_242143DBC();

  v16 = CFPhoneNumberCreate();

  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_8:

    return a1;
  }

  v19 = String;
  a1 = sub_242143DCC();

  return a1;
}

uint64_t sub_24213EF84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC40, &qword_242145558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_24213EFEC()
{

  do
  {
    sub_242143E2C();
    v1 = v0;
    if (!v0)
    {
      break;
    }

    v2 = sub_242143DAC();
  }

  while ((v2 & 1) != 0);

  return v1 == 0;
}

uint64_t sub_24213F074(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_242143D7C();
}

id sub_24213F244(int a1, id a2)
{
  result = [a2 hoursConfig];
  if (result)
  {
    sub_242143EEC();
    swift_unknownObjectRelease();
    sub_2421428D8(&v7, &v8);
    sub_2421428E8();
    swift_dynamicCast();
    v3 = [objc_opt_self() viewModelForBusinessConfiguration:v6 showHoursAndOpenState:1];

    v4 = [objc_allocWithZone(MEMORY[0x277D266A0]) initWithViewModel_];
    LODWORD(v5) = 1144750080;
    [v4 setContentHuggingPriority:1 forAxis:v5];
    [v4 setDirectionalLayoutMargins_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24213F37C(uint64_t result, char a2, int a3, char a4, id a5)
{
  if (a2)
  {
    [a5 intrinsicContentSize];
    result = v7;
  }

  if (a4)
  {
    v8 = result;
    [a5 systemLayoutSizeFittingSize_];
    return v8;
  }

  return result;
}

uint64_t sub_24213F3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142988();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24213F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142988();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24213F4C0()
{
  sub_242142988();
  sub_242143A8C();
  __break(1u);
}

id sub_24213F4E8(int a1, id a2)
{
  result = [a2 hoursConfig];
  if (result)
  {
    sub_242143EEC();
    swift_unknownObjectRelease();
    sub_2421428D8(&v7, &v8);
    sub_2421428E8();
    swift_dynamicCast();
    v3 = [objc_allocWithZone(MEMORY[0x277D26698]) initWithBusinessHoursConfiguration_];

    v4 = v3;
    LODWORD(v5) = 1144750080;
    [v4 setContentHuggingPriority:1 forAxis:v5];
    [v4 setDirectionalLayoutMargins_];

    [v4 setBottomHairlineHidden_];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24213F604(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    [a5 intrinsicContentSize];
    a1 = v7;
  }

  [a5 intrinsicContentSize];
  return a1;
}

uint64_t sub_24213F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142934();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24213F6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142934();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24213F728()
{
  sub_242142934();
  sub_242143A8C();
  __break(1u);
}

uint64_t BrandCardRowView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v28[0] = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v28[2] = sub_242143D6C();
  v28[1] = swift_getWitnessTable();
  v3 = sub_242143D2C();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - v5;
  v7 = sub_2421438BC();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CC48, &qword_242145590);
  v11 = sub_2421438BC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = v28 - v17;
  v18 = *v2;
  v19 = v2[3];
  sub_2421439EC();
  v20 = *(v29 + 24);
  v34 = v28[0];
  v35 = v20;
  v36 = v18;
  v37 = *(v2 + 1);
  v38 = v19;
  sub_242143D1C();
  WitnessTable = swift_getWitnessTable();
  sub_242143C4C();
  (*(v31 + 8))(v6, v3);
  v43 = xmmword_242145560;
  v44 = xmmword_242145560;
  v45 = 0;
  v41 = WitnessTable;
  v42 = MEMORY[0x277CDF918];
  v22 = swift_getWitnessTable();
  sub_242143C1C();
  (*(v32 + 8))(v10, v7);
  v23 = sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590);
  v39 = v22;
  v40 = v23;
  swift_getWitnessTable();
  v24 = v12[2];
  v25 = v30;
  v24(v30, v16, v11);
  v26 = v12[1];
  v26(v16, v11);
  v24(v33, v25, v11);
  return (v26)(v25, v11);
}

uint64_t sub_24213FB98@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v39 = a3;
  v40 = a2;
  v43 = a6;
  v44 = *(a4 - 8);
  v6 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v38 = &v36[-v11];
  v48 = v10;
  v49 = v12;
  sub_242139F44();

  v13 = sub_242143BEC();
  v15 = v14;
  v17 = v16;
  sub_242143C8C();
  v18 = sub_242143B9C();
  v20 = v19;
  v22 = v21;

  sub_24213D508(v13, v15, v17 & 1);

  sub_242143B0C();
  v23 = sub_242143BCC();
  v25 = v24;
  v37 = v26;
  v28 = v27;

  sub_24213D508(v18, v20, v22 & 1);

  v40(v29);
  v30 = v44;
  v31 = *(v44 + 16);
  v32 = v38;
  v33 = v41;
  v31(v38, v9, v41);
  v34 = *(v30 + 8);
  v44 = v30 + 8;
  v34(v9, v33);
  v48 = v23;
  v49 = v25;
  LOBYTE(v30) = v37 & 1;
  v50 = v37 & 1;
  v51 = v28;
  v52[0] = &v48;
  v31(v9, v32, v33);
  v52[1] = v9;
  sub_242142CF0(v23, v25, v30);

  v47[0] = MEMORY[0x277CE0BD8];
  v47[1] = v33;
  v45 = MEMORY[0x277CE0BC8];
  v46 = v42;
  sub_24213F074(v52, 2uLL, v47);
  sub_24213D508(v23, v25, v30);

  v34(v32, v33);
  v34(v9, v33);
  sub_24213D508(v48, v49, v50);
}

uint64_t BrandCardDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC58, &qword_242145598);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v50 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC60, &qword_2421455A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v59 = v50 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC68, &qword_2421455A8);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC70, &qword_2421455B0);
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = v50 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC78, &qword_2421455B8);
  v17 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC80, &qword_2421455C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC88, &qword_2421455C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v50 - v28;
  v30 = *v2;
  if (*v2)
  {
    v50[2] = v3;
    v50[3] = v7;
    v51 = v6;
    v61 = v30;
    v31 = [v61 localizedDescription];
    v60 = v29;
    if (v31)
    {
      v32 = v31;
      v33 = sub_242143DCC();
      v35 = v34;

      v50[1] = v50;
      MEMORY[0x28223BE20](v36);
      v50[-2] = v33;
      v50[-1] = v35;
      sub_2421406B8();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCC8, &qword_2421455E8);
      v38 = sub_2421425C4();
      v63 = v37;
      v64 = v38;
      swift_getOpaqueTypeConformance2();
      sub_242143D3C();

      (*(v19 + 32))(v29, v22, v18);
      v39 = (*(v19 + 56))(v29, 0, 1, v18);
    }

    else
    {
      v39 = (*(v19 + 56))(v29, 1, 1, v18);
    }

    MEMORY[0x28223BE20](v39);
    v41 = v61;
    v50[-2] = v61;
    sub_242142100(v41, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC98, &qword_2421455D0);
    sub_242142450();
    v52 = MEMORY[0x277CE14C0];
    sub_24213E090(&qword_27EC8CCB8, &qword_27EC8CC98, &qword_2421455D0);
    v42 = v56;
    sub_242143D3C();
    sub_24213D954(v60, v27, &qword_27EC8CC88, &qword_2421455C8);
    v43 = v57;
    v44 = v58;
    v45 = *(v57 + 16);
    v46 = v55;
    v45(v55, v42, v58);
    v47 = v59;
    sub_24213D954(v27, v59, &qword_27EC8CC88, &qword_2421455C8);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCC0, &qword_2421455E0);
    v45((v47 + *(v48 + 48)), v46, v44);
    v49 = *(v43 + 8);
    v49(v46, v44);
    sub_24213D8A0(v27, &qword_27EC8CC88, &qword_2421455C8);
    sub_24213D954(v47, v51, &qword_27EC8CC60, &qword_2421455A0);
    swift_storeEnumTagMultiPayload();
    sub_24213E090(&qword_27EC8CC90, &qword_27EC8CC60, &qword_2421455A0);
    sub_242143ABC();

    sub_24213D8A0(v47, &qword_27EC8CC60, &qword_2421455A0);
    v49(v42, v44);
    return sub_24213D8A0(v60, &qword_27EC8CC88, &qword_2421455C8);
  }

  else
  {
    *v6 = sub_242143C6C();
    swift_storeEnumTagMultiPayload();
    sub_24213E090(&qword_27EC8CC90, &qword_27EC8CC60, &qword_2421455A0);
    return sub_242143ABC();
  }
}

__n128 sub_2421405C4@<Q0>(__n128 *a1@<X8>)
{
  sub_242139F44();

  v2 = sub_242143BEC();
  v4 = v3;
  v6 = v5;
  sub_242143B1C();
  v7 = sub_242143BCC();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_24213D508(v2, v4, v6 & 1);

  a1->n128_u64[0] = v7;
  a1->n128_u64[1] = v9;
  a1[1].n128_u8[0] = v11 & 1;
  a1[1].n128_u64[1] = v13;
  __asm { FMOV            V0.2D, #16.0 }

  a1[2] = result;
  a1[3] = result;
  a1[4].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2421406B8()
{
  v0 = sub_24214388C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];

  v8 = sub_24214364C();
  v10 = v9;

  *&v24[0] = v8;
  *(&v24[0] + 1) = v10;
  sub_242139F44();
  v11 = sub_242143BEC();
  v23 = v12 & 1;
  v22 = 0;
  *&v17 = v11;
  *(&v17 + 1) = v13;
  LOBYTE(v18) = v12 & 1;
  *(&v18 + 1) = v14;
  v19 = xmmword_242145570;
  v20 = xmmword_242145580;
  v21 = 0;
  (*(v1 + 104))(v4, *MEMORY[0x277CDF350], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCC8, &qword_2421455E8);
  sub_2421425C4();
  sub_242143C3C();
  (*(v1 + 8))(v4, v0);
  v24[2] = v19;
  v24[3] = v20;
  v25 = v21;
  v24[0] = v17;
  v24[1] = v18;
  return sub_24213D8A0(v24, &qword_27EC8CCC8, &qword_2421455E8);
}

uint64_t sub_242140914@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v168 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C830, &qword_242144ED0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v193 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v195 = &v165 - v8;
  MEMORY[0x28223BE20](v7);
  v196 = &v165 - v9;
  v10 = sub_24214369C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v174 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v173 = &v165 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v191 = &v165 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v192 = &v165 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v165 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v165 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v165 - v28;
  v30 = [a1 website];
  v190 = a1;
  v186 = v12;
  v187 = v11;
  if (v30)
  {
    v31 = v30;
    sub_24214366C();

    v32 = *(v11 + 32);
    v32(v29, v27, v10);
    v194 = "BRAND_CARD_PHONE_HEADER";
    v33 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass_];

    v185 = sub_24214364C();
    v184 = v36;

    a1 = v190;
    v32(v24, v29, v10);
    v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v183 = swift_allocObject();
    v32((v183 + v37), v24, v10);
    v182 = sub_242142D54;
  }

  else
  {
    v185 = 0;
    v184 = 0;
    v182 = 0;
    v183 = 0;
  }

  v38 = v10;
  v39 = v24;
  v40 = [a1 primaryPhoneNumber];
  if (!v40)
  {
    v181 = 0;
    v179 = 0;
    v180 = 0;
    v196 = 1;
    goto LABEL_8;
  }

  v41 = v40;
  v42 = sub_242143DCC();
  v44 = v43;

  if (sub_24213EFEC())
  {

    v181 = 0;
    v179 = 0;
    v180 = 0;
    v196 = 1;
    a1 = v190;
LABEL_8:
    v45 = v187;
    goto LABEL_9;
  }

  *&v201[0] = v42;
  *(&v201[0] + 1) = v44;
  v199 = 980182388;
  v200 = 0xE400000000000000;
  v197 = 0;
  v198 = 0xE000000000000000;
  sub_242139F44();
  v51 = sub_242143EDC();
  v53 = v52;

  v194 = sub_24213ECFC(v51);
  v55 = v54;
  *&v201[0] = 980182388;
  *(&v201[0] + 1) = 0xE400000000000000;
  MEMORY[0x245D087A0](v51, v53);

  v56 = v196;
  sub_24214368C();

  v45 = v187;
  if ((*(v187 + 48))(v56, 1, v38) == 1)
  {

    sub_24213D8A0(v56, &qword_27EC8C830, &qword_242144ED0);
    v181 = 0;
    v196 = 0;
    v179 = 0;
    v180 = 0;
  }

  else
  {
    v188 = v55;
    v65 = *(v45 + 32);
    v66 = v189;
    v65(v189, v56, v38);
    v67 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v68 = swift_getObjCClassFromMetadata();
    v69 = [objc_opt_self() bundleForClass_];

    v181 = sub_24214364C();
    v196 = v70;

    v65(v24, v66, v38);
    v71 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v72 = swift_allocObject();
    v73 = v188;
    *(v72 + 16) = v194;
    *(v72 + 24) = v73;
    v180 = v72;
    v65(v72 + v71, v24, v38);
    v179 = sub_242142C00;
  }

  a1 = v190;
LABEL_9:
  v46 = [a1 messageNumber];
  if (!v46)
  {
LABEL_17:
    v194 = 0;
    v195 = 0;
    v177 = 0;
    v178 = 0;
    goto LABEL_18;
  }

  v47 = v46;
  v48 = sub_242143DCC();
  v50 = v49;

  if (sub_24213EFEC())
  {

    goto LABEL_17;
  }

  v57 = v195;
  sub_24214368C();
  if ((*(v45 + 48))(v57, 1, v38) == 1)
  {

    sub_24213D8A0(v57, &qword_27EC8C830, &qword_242144ED0);
    goto LABEL_17;
  }

  v74 = v187 + 32;
  v75 = *(v187 + 32);
  v75(v192, v57, v38);
  *&v201[0] = v48;
  *(&v201[0] + 1) = v50;
  v199 = 980643187;
  v200 = 0xE400000000000000;
  v197 = 0;
  v198 = 0xE000000000000000;
  sub_242139F44();
  v76 = sub_242143EDC();

  v77 = sub_24213ECFC(v76);
  v79 = v78;

  v80 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  v81 = swift_getObjCClassFromMetadata();
  v82 = [objc_opt_self() bundleForClass_];

  a1 = v190;
  v83 = sub_24214364C();
  v194 = v84;
  v195 = v83;

  v75(v24, v192, v38);
  v85 = (*(v74 + 48) + 32) & ~*(v74 + 48);
  v86 = swift_allocObject();
  *(v86 + 16) = v77;
  *(v86 + 24) = v79;
  v178 = v86;
  v75(v86 + v85, v24, v38);
  v45 = v187;
  v177 = sub_242142D50;
LABEL_18:
  v58 = [a1 emailAddress];
  if (!v58)
  {
LABEL_21:
    v193 = 0;
    v176 = 0;
    v191 = 0;
    v192 = 1;
    goto LABEL_28;
  }

  v59 = v58;
  v60 = sub_242143DCC();
  v62 = v61;

  if (sub_24213EFEC())
  {

    goto LABEL_21;
  }

  *&v201[0] = v60;
  *(&v201[0] + 1) = v62;
  v199 = 0x3A6F746C69616DLL;
  v200 = 0xE700000000000000;
  v197 = 0;
  v198 = 0xE000000000000000;
  sub_242139F44();
  v63 = sub_242143EDC();
  *&v201[0] = 0x3A6F746C69616DLL;
  *(&v201[0] + 1) = 0xE700000000000000;
  MEMORY[0x245D087A0](v63);

  v64 = v193;
  sub_24214368C();

  if ((*(v45 + 48))(v64, 1, v38) == 1)
  {

    sub_24213D8A0(v64, &qword_27EC8C830, &qword_242144ED0);
    v192 = 0;
    v193 = 0;
    v176 = 0;
    v191 = 0;
  }

  else
  {
    v87 = v45 + 32;
    v88 = *(v45 + 32);
    v89 = v191;
    v88(v191, v64, v38);
    v90 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v91 = swift_getObjCClassFromMetadata();
    v92 = [objc_opt_self() bundleForClass_];

    v45 = v187;
    v93 = sub_24214364C();
    v192 = v94;
    v193 = v93;

    v95 = v89;
    v39 = v24;
    v88(v24, v95, v38);
    v96 = (*(v87 + 48) + 32) & ~*(v87 + 48);
    v97 = swift_allocObject();
    *(v97 + 16) = v60;
    *(v97 + 24) = v62;
    v191 = v97;
    v88((v97 + v96), v24, v38);
    v176 = sub_242142D50;
  }

  a1 = v190;
LABEL_28:
  v98 = [a1 address];
  v172 = v39;
  if (!v98)
  {
LABEL_31:
    v189 = 0;
    v190 = 0;
    v175 = 0;
    v188 = 0;
    goto LABEL_33;
  }

  v99 = v98;
  v100 = sub_242143DCC();
  v102 = v101;

  if (sub_24213EFEC())
  {

    goto LABEL_31;
  }

  v103 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  v104 = swift_getObjCClassFromMetadata();
  v105 = [objc_opt_self() bundleForClass_];

  v45 = v187;
  v106 = sub_24214364C();
  v189 = v107;
  v190 = v106;

  v108 = swift_allocObject();
  *(v108 + 16) = v100;
  *(v108 + 24) = v102;
  v188 = v108;
  v175 = sub_242142AB8;
LABEL_33:
  v109 = [a1 termsAndConditionsURL];
  if (v109)
  {
    v110 = v174;
    v111 = v109;
    sub_24214366C();

    v112 = *(v45 + 32);
    v113 = v173;
    v112(v173, v110, v38);
    v114 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v115 = swift_getObjCClassFromMetadata();
    v116 = [objc_opt_self() bundleForClass_];

    v174 = sub_24214364C();
    v187 = v117;

    v118 = v172;
    v112(v172, v113, v38);
    v119 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v173 = swift_allocObject();
    v112(&v173[v119], v118, v38);
    v186 = sub_242142AB4;
  }

  else
  {
    v174 = 0;
    v186 = 0;
    v187 = 0;
    v173 = 0;
  }

  v120 = [a1 localizedResponseTime];
  if (v120)
  {
    v121 = v120;
    v122 = sub_242143DCC();
    v124 = v123;

    v125 = 0x278D3E000uLL;
    if (sub_24213EFEC())
    {

      v172 = 0;
      v167 = 0;
      v170 = 0;
      v171 = 0;
    }

    else
    {
      v126 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
      swift_getObjectType();
      v127 = swift_getObjCClassFromMetadata();
      v128 = [objc_opt_self() bundleForClass_];

      v172 = sub_24214364C();
      v167 = v129;

      v130 = swift_allocObject();
      *(v130 + 16) = v122;
      *(v130 + 24) = v124;
      v171 = v130;
      v170 = sub_242142D58;
    }
  }

  else
  {
    v172 = 0;
    v167 = 0;
    v170 = 0;
    v171 = 0;
    v125 = 0x278D3E000;
  }

  if ([a1 hoursConfig])
  {
    sub_242143EEC();
    swift_unknownObjectRelease();
    sub_24213D8A0(v201, &qword_27EC8CD90, &qword_242145950);
    v131 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v132 = swift_getObjCClassFromMetadata();
    v133 = [objc_opt_self() *(v125 + 3808)];

    v166 = sub_24214364C();
    v169 = v134;

    v135 = swift_allocObject();
    *(v135 + 16) = a1;
    v136 = a1;
    v137 = sub_242142AAC;
  }

  else
  {
    memset(v201, 0, sizeof(v201));
    sub_24213D8A0(v201, &qword_27EC8CD90, &qword_242145950);
    v166 = 0;
    v169 = 0;
    v137 = 0;
    v135 = 0;
  }

  v138 = v185;
  v139 = v168;
  *v168 = v185;
  v140 = v138;
  v185 = v138;
  v141 = v184;
  v139[1] = v184;
  v142 = v141;
  v184 = v141;
  v143 = v182;
  v139[2] = v182;
  v182 = v143;
  v144 = v183;
  v139[3] = v183;
  v183 = v144;
  v145 = v181;
  v146 = v196;
  v139[4] = v181;
  v139[5] = v146;
  v147 = v180;
  v139[6] = v179;
  v139[7] = v147;
  v180 = v147;
  v148 = v194;
  v139[8] = v195;
  v139[9] = v148;
  v149 = v178;
  v139[10] = v177;
  v139[11] = v149;
  v178 = v149;
  v150 = v192;
  v139[12] = v193;
  v139[13] = v150;
  v152 = v190;
  v151 = v191;
  v139[14] = v176;
  v139[15] = v151;
  v153 = v189;
  v139[16] = v152;
  v139[17] = v153;
  v154 = v188;
  v139[18] = v175;
  v139[19] = v154;
  v155 = v186;
  v156 = v187;
  v139[20] = v174;
  v139[21] = v156;
  v139[22] = v155;
  v157 = v172;
  v139[23] = v173;
  v139[24] = v157;
  v158 = v167;
  v159 = v170;
  v139[25] = v167;
  v139[26] = v159;
  v160 = v166;
  v139[27] = v171;
  v139[28] = v160;
  v139[29] = v169;
  v139[30] = v137;
  v165 = v135;
  v139[31] = v135;
  sub_242142A00(v140, v142);
  sub_2421429DC(v145, v196);
  sub_242142A00(v195, v194);
  sub_2421429DC(v193, v192);
  sub_242142A00(v190, v189);
  v161 = v174;
  sub_242142A00(v174, v187);
  v162 = v172;
  sub_242142A00(v172, v158);
  v163 = v169;
  sub_242142A00(v160, v169);
  sub_242142A44(v160, v163);
  sub_242142A44(v162, v158);
  sub_242142A44(v161, v187);
  sub_242142A44(v190, v189);
  sub_242142A88(v193, v192);
  sub_242142A44(v195, v194);
  sub_242142A88(v181, v196);
  return sub_242142A44(v185, v184);
}

uint64_t sub_242141DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24214369C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11[0] = a1;
  v11[1] = a2;
  (*(v9 + 16))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_242139F44();

  return sub_242143B8C();
}

uint64_t sub_242141EB4(uint64_t a1)
{
  v2 = sub_24214369C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24214367C();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  v12[0] = v9;
  v12[1] = v10;
  (*(v3 + 16))(v6, a1, v2);
  sub_242139F44();
  return sub_242143B8C();
}

uint64_t sub_242141FC0@<X0>(uint64_t a1@<X8>)
{
  sub_242139F44();

  result = sub_242143BEC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_24214202C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2421439DC();
  v5 = a1;
  sub_242143D5C();
  sub_2421438DC();
  *(a2 + 88) = v10;
  *(a2 + 104) = v11;
  *(a2 + 120) = v12;
  *(a2 + 136) = v13;
  result = *&v7;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v5;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_242142100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24214388C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCB0, &qword_2421455D8);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  if ([a1 isRCSChatBot])
  {
    v13 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = a2;
    v15 = [objc_opt_self() bundleForClass_];

    v16 = sub_24214364C();
    v18 = v17;

    v31 = v16;
    v32 = v18;
    sub_242139F44();
    v19 = sub_242143BEC();
    v21 = v20;
    v31 = v19;
    v32 = v20;
    v23 = v22 & 1;
    v33 = v22 & 1;
    v34 = v24;
    (*(v5 + 104))(v8, *MEMORY[0x277CDF350], v4);
    sub_242143C3C();
    (*(v5 + 8))(v8, v4);
    sub_24213D508(v19, v21, v23);

    v25 = &v12[*(v9 + 36)];
    *v25 = xmmword_242145570;
    *(v25 + 1) = xmmword_242145580;
    v25[32] = 0;
    v26 = v29;
    sub_242138798(v12, v29);
    return (*(v30 + 56))(v26, 0, 1, v9);
  }

  else
  {
    v28 = *(v30 + 56);

    return v28(a2, 1, 1, v9);
  }
}

unint64_t sub_242142450()
{
  result = qword_27EC8CCA0;
  if (!qword_27EC8CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CC68, &qword_2421455A8);
    sub_2421424D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CCA0);
  }

  return result;
}

unint64_t sub_2421424D4()
{
  result = qword_27EC8CCA8;
  if (!qword_27EC8CCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CCB0, &qword_2421455D8);
    swift_getOpaqueTypeConformance2();
    sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CCA8);
  }

  return result;
}

double sub_2421425BC@<D0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *&result = sub_2421405C4(a1).n128_u64[0];
  return result;
}

unint64_t sub_2421425C4()
{
  result = qword_27EC8CCD0[0];
  if (!qword_27EC8CCD0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CCC8, &qword_2421455E8);
    sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC8CCD0);
  }

  return result;
}

uint64_t sub_2421426E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_242142750()
{
  result = qword_27EC8CD58;
  if (!qword_27EC8CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CD60, &qword_242145738);
    sub_24213E090(&qword_27EC8CC90, &qword_27EC8CC60, &qword_2421455A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD58);
  }

  return result;
}

unint64_t sub_24214282C()
{
  result = qword_27EC8CD68;
  if (!qword_27EC8CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD68);
  }

  return result;
}

unint64_t sub_242142884()
{
  result = qword_27EC8CD70;
  if (!qword_27EC8CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD70);
  }

  return result;
}

_OWORD *sub_2421428D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2421428E8()
{
  result = qword_27EC8CD78;
  if (!qword_27EC8CD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8CD78);
  }

  return result;
}

unint64_t sub_242142934()
{
  result = qword_27EC8CD80;
  if (!qword_27EC8CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD80);
  }

  return result;
}

unint64_t sub_242142988()
{
  result = qword_27EC8CD88;
  if (!qword_27EC8CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD88);
  }

  return result;
}

uint64_t sub_2421429DC(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_242142A00(result, a2);
  }

  return result;
}

uint64_t sub_242142A00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_242142A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_242142A88(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_242142A44(result, a2);
  }

  return result;
}

uint64_t sub_242142AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_242141FC0(a1);
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_24214369C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_24214369C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242142CF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}