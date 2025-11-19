uint64_t static PhraseSemantic.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79625F706F7473;
  }

  else
  {
    v4 = 6645107;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x79625F706F7473;
  }

  else
  {
    v6 = 6645107;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t PhraseSemantic.rawValue.getter()
{
  if (*v0)
  {
    result = 0x79625F706F7473;
  }

  else
  {
    result = 6645107;
  }

  *v0;
  return result;
}

HomeAutomationInternal::PhraseSemantic_optional __swiftcall PhraseSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252AACA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79625F706F7473;
  }

  else
  {
    v4 = 6645107;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x79625F706F7473;
  }

  else
  {
    v6 = 6645107;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252AACB10()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AACB8C()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252AACBF4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AACC6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_252AACCCC(uint64_t *a1@<X8>)
{
  v2 = 6645107;
  if (*v1)
  {
    v2 = 0x79625F706F7473;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252AACD04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79625F706F7473;
  }

  else
  {
    v4 = 6645107;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x79625F706F7473;
  }

  else
  {
    v6 = 6645107;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252AACDA4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (*a2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (v2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252AACE58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79625F706F7473;
  }

  else
  {
    v4 = 6645107;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x79625F706F7473;
  }

  else
  {
    v6 = 6645107;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_252AACF0C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (*a2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (v2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AAD06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252AAD25C();
  v5 = sub_252AAD2B0();
  v6 = sub_252AAD304();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252AAD0E0()
{
  result = qword_27F542AB0;
  if (!qword_27F542AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AB0);
  }

  return result;
}

unint64_t sub_252AAD138()
{
  result = qword_27F542AB8;
  if (!qword_27F542AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AB8);
  }

  return result;
}

unint64_t sub_252AAD190()
{
  result = qword_27F542AC0;
  if (!qword_27F542AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409F0, &qword_252E3DF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AC0);
  }

  return result;
}

unint64_t sub_252AAD1F8()
{
  result = qword_27F542AC8;
  if (!qword_27F542AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AC8);
  }

  return result;
}

unint64_t sub_252AAD25C()
{
  result = qword_27F542AD0;
  if (!qword_27F542AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AD0);
  }

  return result;
}

unint64_t sub_252AAD2B0()
{
  result = qword_27F542AD8;
  if (!qword_27F542AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AD8);
  }

  return result;
}

unint64_t sub_252AAD304()
{
  result = qword_27F542AE0;
  if (!qword_27F542AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AE0);
  }

  return result;
}

uint64_t sub_252AAD370(uint64_t a1)
{
  v1 = a1;
  v230 = *a1;
  v231 = *(a1 + 16);
  LODWORD(v2) = *(a1 + 24);
  v3 = *(a1 + 73);
  v4 = *(a1 + 105);
  v228 = *(a1 + 89);
  v229[0] = v4;
  v5 = *(a1 + 128);
  *(v229 + 15) = *(a1 + 120);
  v6 = *(a1 + 41);
  v224 = *(a1 + 25);
  v225 = v6;
  v226 = *(a1 + 57);
  v227 = v3;
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v9 = *(a1 + 152);
  v10 = *(a1 + 160);
  v11 = *(a1 + 168);
  v12 = *(a1 + 192);
  v222 = *(a1 + 176);
  v223 = v12;
  LODWORD(v13) = *(a1 + 208);
  memcpy(__dst, (a1 + 209), sizeof(__dst));
  if (v13 != 9)
  {
    goto LABEL_43;
  }

LABEL_2:
  v202 = *v1;
  v203 = *(v1 + 16);
  v204 = v2;
  v208 = *(v1 + 73);
  v209 = *(v1 + 89);
  *v210 = *(v1 + 105);
  v14 = *(v1 + 120);
  v205 = *(v1 + 25);
  v206 = *(v1 + 41);
  v207 = *(v1 + 57);
  *&v210[15] = v14;
  v211 = v5;
  v15 = v7;
  v212 = v7;
  v213 = v8;
  v192 = v8;
  v193 = v11;
  v196 = v9;
  v214 = v9;
  v215 = v10;
  v216 = v11;
  v16 = *(v1 + 192);
  v217 = *(v1 + 176);
  v218 = v16;
  v219 = v13;
  memcpy(v220, (v1 + 209), sizeof(v220));
  v17 = sub_252A10F24();
  v1 = sub_252DF9098(v17);

  if (qword_27F53F520 != -1)
  {
    goto LABEL_282;
  }

LABEL_3:
  v18 = sub_252E36AD4();
  v11 = __swift_project_value_buffer(v18, qword_27F544E08);
  sub_252E379F4();

  v9 = 0xD00000000000001ALL;
  *&v202 = 0xD00000000000001ALL;
  *(&v202 + 1) = 0x8000000252E77910;
  v19 = sub_252C65520(v1);
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E77910, 0xD00000000000008ELL, 0x8000000252E77930);

  v200 = *(v1 + 16);
  if (!v200)
  {

    v40 = sub_252E36AC4();
    v41 = sub_252E374C4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_252917000, v40, v41, "Empty intent attributes", v42, 2u);
      MEMORY[0x2530AED00](v42, -1, -1);
    }

    return 1;
  }

  v201 = v1;
  v202 = v230;
  v208 = v227;
  v209 = v228;
  *v210 = v229[0];
  v205 = v224;
  v203 = v231;
  v204 = v2;
  v206 = v225;
  v207 = v226;
  *&v210[15] = *(v229 + 15);
  v211 = v5;
  v212 = v15;
  v213 = v192;
  v214 = v196;
  v215 = v10;
  v216 = v193;
  v217 = v222;
  v218 = v223;
  v219 = v13;
  memcpy(v220, __dst, sizeof(v220));
  v2 = sub_252BAC7E4();
  KeyPath = swift_getKeyPath();
  v21 = sub_2529304DC(KeyPath, v2);

  if ((v21 & 1) == 0)
  {
    v22 = swift_getKeyPath();
    v23 = sub_252BAF91C(v22, v2);

    if (!v23)
    {
      type metadata accessor for HomeStore();
      v43 = static HomeStore.shared.getter();
      v8 = HomeStore.services(matching:supporting:)(v2, 0);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_53:
      sub_252929F10(v8, 1);

LABEL_293:

      v179 = sub_252E36AC4();
      v180 = sub_252E374C4();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *&v202 = v182;
        *v181 = 136315138;
        v183 = type metadata accessor for HomeFilter();
        v184 = MEMORY[0x2530AD730](v2, v183);
        v186 = v185;

        v187 = sub_252BE2CE0(v184, v186, &v202);

        *(v181 + 4) = v187;
        _os_log_impl(&dword_252917000, v179, v180, "Can't get any accessories matching %s. Invalidating candidate", v181, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v182);
        MEMORY[0x2530AED00](v182, -1, -1);
        MEMORY[0x2530AED00](v181, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  type metadata accessor for HomeStore();
  v24 = static HomeStore.shared.getter();
  v8 = HomeStore.accessories(matching:supporting:)(v2, 0);
  v26 = v25;

  if (v26)
  {
    goto LABEL_53;
  }

  v27 = (v8 & 0xFFFFFFFFFFFFFF8);
  if (!(v8 >> 62))
  {
    v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_292;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_292;
    }

LABEL_9:

    v189 = v5;
    v191 = v27;
    v188 = v8;
    if (v13 == 9)
    {
      break;
    }

    result = sub_252A0D524(v13, 0);
    if ((result & 1) == 0)
    {
      break;
    }

    if (*(v196 + 16) <= 1uLL && *(v193 + 16) <= 1uLL && *(v192 + 16) <= 1uLL && *(v15 + 16) <= 1uLL)
    {
      goto LABEL_187;
    }

    v13 = 0;
    v196 = v8 & 0xC000000000000001;
    v15 = v8 + 32;
    v10 = v1 + 32;
LABEL_16:
    if (v196)
    {
      v7 = MEMORY[0x2530ADF00](v13, v188);
      v29 = __OFADD__(v13++, 1);
      if (v29)
      {
        goto LABEL_42;
      }

LABEL_19:
      v9 = 0;
      while (v9 < *(v1 + 16))
      {
        v5 = *(v10 + 8 * v9);
        v30 = (*v7 + 352);
        v31 = *v30;
        v8 = v30;
        v32 = (*v30)();
        v33 = *(v32 + 16);
        v34 = 32;
        if (v5 == 5)
        {
          while (v33)
          {
            v35 = *(v32 + v34);
            v34 += 8;
            --v33;
            if (v35 == 3)
            {

              v11 = (v31)(v36);
              v2 = sub_2529A6C5C(4, v11);

              if ((v2 & 1) == 0)
              {
                goto LABEL_31;
              }

              v11 = (v31)(v37);
              v2 = sub_2529A6C5C(2, v11);

              if ((v2 & 1) == 0)
              {
                goto LABEL_31;
              }

              goto LABEL_39;
            }
          }
        }

        else
        {
          while (v33)
          {
            v38 = *(v32 + v34);
            v34 += 8;
            --v33;
            if (v38 == v5)
            {
              v11 = v32;

              goto LABEL_37;
            }
          }
        }

LABEL_31:
        v39 = (*(*v7 + 256))(v37) == 29 && v5 == 6;
        if (v39)
        {
LABEL_39:

LABEL_37:
          v1 = v201;
          v27 = v191;
          if (v13 != v189)
          {
            goto LABEL_16;
          }

          goto LABEL_157;
        }

        ++v9;
        v1 = v201;
        if (v9 == v200)
        {

          goto LABEL_159;
        }
      }

LABEL_281:
      __break(1u);
LABEL_282:
      swift_once();
      goto LABEL_3;
    }

    if (v13 < v27[2])
    {
      v7 = *(v15 + 8 * v13);

      v29 = __OFADD__(v13++, 1);
      if (!v29)
      {
        goto LABEL_19;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      if ((sub_252A0D524(v13, 1u) & 1) != 0 && *(v5 + 16))
      {
        return 0;
      }

      if ((sub_252A0D524(v13, 0) & 1) != 0 && v2 == 2 && *(v5 + 16))
      {
        return 1;
      }

      goto LABEL_2;
    }

LABEL_286:
    __break(1u);
  }

  if (*(v196 + 16) <= 1uLL && *(v193 + 16) <= 1uLL && *(v192 + 16) <= 1uLL && *(v15 + 16) <= 1uLL)
  {
    v93 = 0;
    v94 = v8 & 0xC000000000000001;
    v95 = v8 + 32;
    v96 = v1 + 32;
    v197 = v8 + 32;
    while (1)
    {
      if (v94)
      {
        result = MEMORY[0x2530ADF00](v93, v188);
        v27 = result;
        v29 = __OFADD__(v93++, 1);
        if (v29)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v93 >= v27[2])
        {
          goto LABEL_303;
        }

        v27 = *(v95 + 8 * v93);

        v29 = __OFADD__(v93++, 1);
        if (v29)
        {
LABEL_186:
          __break(1u);
LABEL_187:
          v113 = 0;
          v114 = v8 + 32;
          v115 = v1 + 32;
LABEL_188:
          if ((v8 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x2530ADF00](v113, v188);
            v116 = result;
            v29 = __OFADD__(v113++, 1);
            if (!v29)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if (v113 >= v27[2])
            {
              goto LABEL_305;
            }

            v116 = *(v114 + 8 * v113);

            v29 = __OFADD__(v113++, 1);
            if (!v29)
            {
LABEL_191:
              v117 = 0;
              while (v117 < *(v1 + 16))
              {
                v118 = *(v115 + 8 * v117);
                v119 = (*v116 + 352);
                v120 = *v119;
                v121 = (*v119)();
                v122 = *(v121 + 16);
                v123 = 32;
                if (v118 == 5)
                {
                  while (v122)
                  {
                    v124 = *(v121 + v123);
                    v123 += 8;
                    --v122;
                    if (v124 == 3)
                    {

                      v126 = (v120)(v125);
                      v127 = sub_2529A6C5C(4, v126);

                      if (!v127)
                      {
                        goto LABEL_203;
                      }

                      v129 = (v120)(v128);
                      v130 = sub_2529A6C5C(2, v129);

                      if (!v130)
                      {
                        goto LABEL_203;
                      }

                      goto LABEL_214;
                    }
                  }
                }

                else
                {
                  while (v122)
                  {
                    v131 = *(v121 + v123);
                    v123 += 8;
                    --v122;
                    if (v131 == v118)
                    {
                      goto LABEL_213;
                    }
                  }
                }

LABEL_203:
                result = (*(*v116 + 256))(v128);
                if (result == 29 && v118 == 6)
                {
                  goto LABEL_214;
                }

                ++v117;
                v1 = v201;
                if (v117 == v200)
                {

                  v27 = v191;
                  v114 = v8 + 32;
                  if (v113 != v189)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_159;
                }
              }

              goto LABEL_302;
            }
          }

          __break(1u);
LABEL_213:

LABEL_214:

          sub_252929F10(v188, 0);
          goto LABEL_215;
        }
      }

      for (i = 0; i != v200; ++i)
      {
        if (i >= *(v1 + 16))
        {
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
          goto LABEL_301;
        }

        v98 = *(v96 + 8 * i);
        v99 = (*v27 + 336);
        v100 = *v99;
        v8 = v99;
        v101 = (*v99)();
        v102 = *(v101 + 16);
        v103 = 32;
        if (v98 == 5)
        {
          do
          {
            if (!v102)
            {
              goto LABEL_176;
            }

            v104 = *(v101 + v103);
            v103 += 8;
            --v102;
          }

          while (v104 != 3);

          v106 = (v100)(v105);
          v107 = sub_2529A6C5C(4, v106);

          if (v107)
          {
            v109 = (v100)(v108);
            v110 = sub_2529A6C5C(2, v109);

            if (v110)
            {
              goto LABEL_214;
            }
          }
        }

        else
        {
          while (v102)
          {
            v111 = *(v101 + v103);
            v103 += 8;
            --v102;
            if (v111 == v98)
            {
              goto LABEL_213;
            }
          }

LABEL_176:
        }

        result = (*(*v27 + 256))(v108);
        if (result == 29 && v98 == 6)
        {
          goto LABEL_214;
        }

        v1 = v201;
      }

      v27 = v191;
      v95 = v197;
      if (v93 == v189)
      {
LABEL_159:

        v92 = v188;
        goto LABEL_160;
      }
    }
  }

  v13 = 0;
  v196 = v8 & 0xC000000000000001;
  v15 = v8 + 32;
  v10 = v1 + 32;
  while (2)
  {
    if (v196)
    {
      v46 = MEMORY[0x2530ADF00](v13, v188);
      v29 = __OFADD__(v13++, 1);
      if (v29)
      {
        break;
      }

      goto LABEL_62;
    }

    if (v13 >= v27[2])
    {
      __break(1u);
      goto LABEL_284;
    }

    v46 = *(v15 + 8 * v13);

    v29 = __OFADD__(v13++, 1);
    if (!v29)
    {
LABEL_62:
      v47 = 0;
      while (1)
      {
        if (v47 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_248;
        }

        v8 = *(v10 + 8 * v47);
        v48 = (*v46 + 336);
        v49 = *v48;
        v9 = v48;
        v50 = (*v48)();
        v51 = *(v50 + 16);
        v52 = 32;
        if (v8 == 5)
        {
          while (v51)
          {
            v53 = *(v50 + v52);
            v52 += 8;
            --v51;
            if (v53 == 3)
            {

              v55 = (v49)(v54);
              v2 = sub_2529A6C5C(4, v55);

              if ((v2 & 1) == 0)
              {
                goto LABEL_74;
              }

              v57 = (v49)(v56);
              v2 = sub_2529A6C5C(2, v57);

              if ((v2 & 1) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_82;
            }
          }
        }

        else
        {
          while (v51)
          {
            v58 = *(v50 + v52);
            v52 += 8;
            --v51;
            if (v58 == v8)
            {

              goto LABEL_80;
            }
          }
        }

LABEL_74:
        if ((*(*v46 + 256))(v56) == 29 && v8 == 6)
        {
          break;
        }

        ++v47;
        v1 = v201;
        if (v47 == v200)
        {
          goto LABEL_122;
        }
      }

LABEL_82:

LABEL_80:
      v1 = v201;
      v27 = v191;
      if (v13 == v189)
      {
LABEL_157:

        v91 = v188;
        goto LABEL_158;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_86:
  v27 = (v8 & 0xFFFFFFFFFFFFFF8);
  if (v8 >> 62)
  {
    goto LABEL_291;
  }

  v60 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v60)
  {
LABEL_292:

    sub_252929F10(v8, 0);
    goto LABEL_293;
  }

LABEL_88:

  v190 = v27;
  v191 = v8;
  v188 = v60;
  if (v13 == 9 || (result = sub_252A0D524(v13, 0), (result & 1) == 0))
  {
    if (*(v196 + 16) > 1uLL || *(v193 + 16) > 1uLL || *(v192 + 16) > 1uLL || *(v15 + 16) > 1uLL)
    {
      v13 = 0;
      v76 = v8 & 0xC000000000000001;
      v193 = v8 & 0xC000000000000001;
      v196 = v8 + 32;
      v8 = &qword_27F546000;
      while (1)
      {
        if (v76)
        {
          v2 = MEMORY[0x2530ADF00](v13, v191);
          v29 = __OFADD__(v13++, 1);
          if (v29)
          {
LABEL_155:
            __break(1u);
LABEL_156:

            sub_252929F10(v191, 0);

            return 0;
          }
        }

        else
        {
          if (v13 >= v27[2])
          {
            __break(1u);
LABEL_291:
            v60 = sub_252E378C4();
            if (!v60)
            {
              goto LABEL_292;
            }

            goto LABEL_88;
          }

          v2 = *(v196 + 8 * v13);

          v29 = __OFADD__(v13++, 1);
          if (v29)
          {
            goto LABEL_155;
          }
        }

        v77 = 0;
        v5 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
        while (1)
        {
          if (v77 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_281;
          }

          v9 = *(v1 + 8 * v77 + 32);
          v78 = sub_252CD95D8();
          if (v9 == 5)
          {
            v79 = sub_2529A6C5C(3, v78);

            if (!v79)
            {
              goto LABEL_143;
            }

            v80 = sub_252CD95D8();
            v81 = sub_2529A6C5C(4, v80);

            if (!v81)
            {
              goto LABEL_143;
            }

            v82 = sub_252CD95D8();
            v83 = 2;
          }

          else
          {
            v15 = sub_2529A6C5C(v9, v78);

            if (v15)
            {
              goto LABEL_128;
            }

            v82 = sub_252CD995C();
            v83 = v9;
          }

          v15 = sub_2529A6C5C(v83, v82);

          if (v15)
          {
            goto LABEL_128;
          }

LABEL_143:
          v84 = [*(v2 + v5) serviceType];
          v10 = sub_252E36F34();
          v15 = v85;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v86 = off_27F546230;
          if (*(off_27F546230 + 2))
          {
            v87 = sub_252A44A10(v10, v15);
            if (v88)
            {
              break;
            }
          }

LABEL_134:
          if (v200 == ++v77)
          {
            goto LABEL_156;
          }
        }

        v89 = *(v86[7] + 8 * v87);

        v39 = v89 == 29;
        v1 = v201;
        if (!v39 || v9 != 6)
        {
          goto LABEL_134;
        }

LABEL_128:

        v27 = v190;
        v76 = v193;
        if (v13 == v188)
        {
LABEL_248:

          v91 = v191;
          goto LABEL_158;
        }
      }
    }

    v133 = 0;
    v134 = v8 & 0xC000000000000001;
    v135 = v8 + 32;
    v194 = v8 + 32;
    v198 = v8 & 0xC000000000000001;
LABEL_217:
    if (v134)
    {
      result = MEMORY[0x2530ADF00](v133, v8);
      v136 = result;
      v29 = __OFADD__(v133++, 1);
      if (v29)
      {
        goto LABEL_245;
      }
    }

    else
    {
      if (v133 >= v27[2])
      {
        goto LABEL_304;
      }

      v136 = *(v135 + 8 * v133);

      v29 = __OFADD__(v133++, 1);
      if (v29)
      {
LABEL_245:
        __break(1u);
LABEL_279:

        sub_252929F10(v191, 0);
LABEL_215:

        return 1;
      }
    }

    v137 = 0;
    v138 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    while (1)
    {
      if (v137 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_299;
      }

      v139 = *(v1 + 8 * v137 + 32);
      v140 = sub_252CD95D8();
      if (v139 != 5)
      {
        break;
      }

      v141 = sub_2529A6C5C(3, v140);

      if (v141)
      {
        v142 = sub_252CD95D8();
        v143 = sub_2529A6C5C(4, v142);

        if (v143)
        {
          v144 = sub_252CD95D8();
          v145 = 2;
          goto LABEL_230;
        }
      }

LABEL_231:
      v148 = [*(v136 + v138) serviceType];
      v149 = sub_252E36F34();
      v151 = v150;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v152 = off_27F546230;
      if (*(off_27F546230 + 2) && (v153 = sub_252A44A10(v149, v151), (v154 & 1) != 0))
      {
        v155 = *(v152[7] + 8 * v153);

        v39 = v155 == 29;
        v1 = v201;
        if (v39 && v139 == 6)
        {
          goto LABEL_279;
        }
      }

      else
      {
      }

      if (v200 == ++v137)
      {

        v27 = v190;
        v8 = v191;
        v135 = v194;
        v134 = v198;
        if (v133 == v188)
        {
          goto LABEL_289;
        }

        goto LABEL_217;
      }
    }

    v146 = sub_2529A6C5C(v139, v140);

    if (v146)
    {
      goto LABEL_279;
    }

    v144 = sub_252CD995C();
    v145 = v139;
LABEL_230:
    v147 = sub_2529A6C5C(v145, v144);

    if (v147)
    {
      goto LABEL_279;
    }

    goto LABEL_231;
  }

  if (*(v196 + 16) <= 1uLL && *(v193 + 16) <= 1uLL && *(v192 + 16) <= 1uLL && *(v15 + 16) <= 1uLL)
  {
    v157 = 0;
    v158 = v8 & 0xC000000000000001;
    v159 = v8 + 32;
    v195 = v8 + 32;
    v199 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v158)
      {
        result = MEMORY[0x2530ADF00](v157, v8);
        v160 = result;
        v29 = __OFADD__(v157++, 1);
        if (v29)
        {
          goto LABEL_278;
        }
      }

      else
      {
        if (v157 >= v27[2])
        {
          goto LABEL_306;
        }

        v160 = *(v159 + 8 * v157);

        v29 = __OFADD__(v157++, 1);
        if (v29)
        {
LABEL_278:
          __break(1u);
          goto LABEL_279;
        }
      }

      v161 = 0;
      v162 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      do
      {
        if (v161 >= *(v1 + 16))
        {
          goto LABEL_300;
        }

        v163 = *(v1 + 8 * v161 + 32);
        v164 = sub_252CD9C58();
        if (v163 == 5)
        {
          v165 = sub_2529A6C5C(3, v164);

          if (!v165)
          {
            goto LABEL_264;
          }

          v166 = sub_252CD9C58();
          v167 = sub_2529A6C5C(4, v166);

          if (!v167)
          {
            goto LABEL_264;
          }

          v164 = sub_252CD9C58();
          v168 = 2;
        }

        else
        {
          v168 = v163;
        }

        v169 = sub_2529A6C5C(v168, v164);

        if (v169)
        {
          goto LABEL_279;
        }

LABEL_264:
        v170 = [*(v160 + v162) serviceType];
        v171 = sub_252E36F34();
        v173 = v172;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v174 = off_27F546230;
        if (*(off_27F546230 + 2) && (v175 = sub_252A44A10(v171, v173), (v176 & 1) != 0))
        {
          v177 = *(v174[7] + 8 * v175);

          v39 = v177 == 29;
          v1 = v201;
          if (v39 && v163 == 6)
          {
            goto LABEL_279;
          }
        }

        else
        {
        }

        ++v161;
      }

      while (v200 != v161);

      v27 = v190;
      v8 = v191;
      v159 = v195;
      v158 = v199;
      if (v157 == v188)
      {
LABEL_289:

        v92 = v8;
LABEL_160:
        sub_252929F10(v92, 0);
        return 0;
      }
    }
  }

  v13 = 0;
  v61 = v8 & 0xC000000000000001;
  v62 = v8 + 32;
  v11 = &qword_27F546000;
  v193 = v8 + 32;
  v196 = v8 & 0xC000000000000001;
  while (2)
  {
    if (!v61)
    {
      if (v13 < v27[2])
      {
        v2 = *(v62 + 8 * v13);

        v29 = __OFADD__(v13++, 1);
        if (!v29)
        {
          goto LABEL_98;
        }

LABEL_121:
        __break(1u);
LABEL_122:

        sub_252929F10(v188, 0);

        return 0;
      }

LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      return result;
    }

    v2 = MEMORY[0x2530ADF00](v13, v8);
    v29 = __OFADD__(v13++, 1);
    if (v29)
    {
      goto LABEL_121;
    }

LABEL_98:
    v63 = 0;
    v8 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    while (2)
    {
      if (v63 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_286;
      }

      v9 = *(v1 + 8 * v63 + 32);
      v64 = sub_252CD9C58();
      if (v9 != 5)
      {
        v68 = v9;
        goto LABEL_107;
      }

      v65 = sub_2529A6C5C(3, v64);

      if (v65)
      {
        v66 = sub_252CD9C58();
        v67 = sub_2529A6C5C(4, v66);

        if (v67)
        {
          v64 = sub_252CD9C58();
          v68 = 2;
LABEL_107:
          v15 = sub_2529A6C5C(v68, v64);

          if (v15)
          {
            break;
          }
        }
      }

      v69 = [*(v2 + v8) serviceType];
      v70 = sub_252E36F34();
      v15 = v71;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v27 = off_27F546230;
      if (!*(off_27F546230 + 2) || (v72 = sub_252A44A10(v70, v15), (v73 & 1) == 0))
      {

        goto LABEL_100;
      }

      v74 = *(v27[7] + 8 * v72);

      v39 = v74 == 29;
      v1 = v201;
      if (!v39 || v9 != 6)
      {
LABEL_100:
        if (v200 == ++v63)
        {
          goto LABEL_156;
        }

        continue;
      }

      break;
    }

    v27 = v190;
    v8 = v191;
    v62 = v193;
    v61 = v196;
    if (v13 != v188)
    {
      continue;
    }

    break;
  }

LABEL_284:

  v91 = v8;
LABEL_158:
  sub_252929F10(v91, 0);
  return 1;
}

uint64_t sub_252AAEA44(void *__src)
{
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252AAEAB4, 0, 0);
}

uint64_t sub_252AAEAB4()
{
  v35 = v0;
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544E08);
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E779C0);
  sub_252B680FC();
  v2 = sub_252B63B0C();

  v3 = MEMORY[0x2530AD730](v2, &type metadata for ReferencedEntityValue);
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000009BLL, 0x8000000252E77A10);

  v6 = sub_252AB0020();
  v8 = v7;
  sub_252B680FC();
  v9 = sub_252B63B0C();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = MEMORY[0x277D84F90];
    v13 = 32;
    v32 = v9;
    while (1)
    {
      v14 = *(v9 + v13 + 16);
      *(v0 + 1528) = *(v9 + v13);
      *(v0 + 1544) = v14;
      v15 = *(v9 + v13 + 32);
      v16 = *(v9 + v13 + 48);
      v17 = *(v9 + v13 + 80);
      *(v0 + 1592) = *(v9 + v13 + 64);
      *(v0 + 1608) = v17;
      *(v0 + 1560) = v15;
      *(v0 + 1576) = v16;
      v18 = *(v9 + v13 + 96);
      v19 = *(v9 + v13 + 112);
      v20 = *(v9 + v13 + 128);
      *(v0 + 1672) = *(v9 + v13 + 144);
      *(v0 + 1640) = v19;
      *(v0 + 1656) = v20;
      *(v0 + 1624) = v18;
      v21 = *(v9 + v13 + 112);
      __dst[6] = *(v9 + v13 + 96);
      __dst[7] = v21;
      __dst[8] = *(v9 + v13 + 128);
      LOWORD(__dst[9]) = *(v9 + v13 + 144);
      v22 = *(v9 + v13 + 48);
      __dst[2] = *(v9 + v13 + 32);
      __dst[3] = v22;
      v23 = *(v9 + v13 + 80);
      __dst[4] = *(v9 + v13 + 64);
      __dst[5] = v23;
      v24 = *(v9 + v13 + 16);
      __dst[0] = *(v9 + v13);
      __dst[1] = v24;
      sub_25297DE08(v0 + 1528, v0 + 1680);
      sub_252AAEEB4(v0 + 16, __dst, v6, v8, __src);
      sub_2529AEC80(v0 + 1528);
      memcpy((v0 + 1024), __src, 0x1F8uLL);
      memcpy((v0 + 520), __src, 0x1F8uLL);
      if (sub_252956B94((v0 + 520)) != 1)
      {
        v25 = v8;
        v26 = v6;
        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        memcpy(__dst, (v0 + 520), 0x1F8uLL);
        sub_252E1EBE8(__dst);

        sub_252E1F258(&unk_2864A77A0);

        sub_252E1E4F8(__dst);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F7FB0(0, *(v12 + 2) + 1, 1, v12);
        }

        v28 = *(v12 + 2);
        v27 = *(v12 + 3);
        if (v28 >= v27 >> 1)
        {
          v12 = sub_2529F7FB0((v27 > 1), v28 + 1, 1, v12);
        }

        sub_25299F5D4(v0 + 1024);
        *(v12 + 2) = v28 + 1;
        memcpy(&v12[504 * v28 + 32], __dst, 0x1F8uLL);
        v6 = v26;
        v8 = v25;
        v9 = v32;
      }

      if (!v11)
      {
        break;
      }

      --v11;
      v13 += 152;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v29 = sub_252DF93D8(v12);

  v30 = *(v0 + 8);

  return v30(v29);
}

void *sub_252AAEEB4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a1 + 48);
  __dst[2] = *(a1 + 32);
  __dst[3] = v10;
  __dst[4] = *(a1 + 64);
  *&__dst[5] = *(a1 + 80);
  v11 = *(a1 + 16);
  __dst[0] = *a1;
  __dst[1] = v11;
  v12 = *(a1 + 104);
  v13 = *(a1 + 144);
  __dst[8] = *(a1 + 128);
  __dst[9] = v13;
  __dst[7] = *(a1 + 112);
  v14 = *(a1 + 160);
  memcpy(&__dst[10] + 8, (a1 + 168), 0x150uLL);
  v15 = a2[7];
  v87 = a2[6];
  v88 = v15;
  v89 = a2[8];
  v90 = *(a2 + 72);
  v16 = a2[3];
  v83 = a2[2];
  v84 = v16;
  v17 = a2[5];
  v85 = a2[4];
  v86 = v17;
  v18 = a2[1];
  v81 = *a2;
  v82 = v18;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v78 = *(a1 + 88);
  *(&__dst[5] + 8) = v78;
  v76 = v12;
  *(&__dst[6] + 1) = v12;
  *&__dst[10] = v14;
  v19 = sub_252E1EBE8(__dst);

  v77 = a5;
  v74 = v14;
  if (!v90)
  {

    if (a4)
    {
      goto LABEL_7;
    }

LABEL_14:
    swift_beginAccess();
    if (*(v19[8] + 16))
    {
      goto LABEL_15;
    }

    v34 = v89;
    if (!v89)
    {
      goto LABEL_15;
    }

    v35 = *(&v88 + 1);
    if (*(v78 + 16))
    {
      __dst[6] = v87;
      __dst[7] = v88;
      __dst[8] = v89;
      LOWORD(__dst[9]) = v90;
      __dst[2] = v83;
      __dst[3] = v84;
      __dst[4] = v85;
      __dst[5] = v86;
      __dst[0] = v81;
      __dst[1] = v82;
      if (sub_252AAFAAC())
      {
LABEL_15:
        v75 = 0;
        v73 = 0;
        goto LABEL_16;
      }
    }

    swift_beginAccess();
    v36 = v19[8];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[8] = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_2529F7A80(0, *(v36 + 2) + 1, 1, v36);
      v19[8] = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    a3 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v36 = sub_2529F7A80((v38 > 1), v39 + 1, 1, v36);
    }

    *(v36 + 2) = a3;
    v40 = &v36[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v34;
    v19[8] = v36;
    swift_endAccess();
    v73 = 0;
    v27 = 1;
    v28 = &unk_2864A7750;
    goto LABEL_13;
  }

  v20 = sub_252E37DB4();

  if ((v20 & 1) == 0 || !a4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (qword_27F53F520 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544E08);
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&__dst[0] = 0xD000000000000014;
    *(&__dst[0] + 1) = 0x8000000252E77AB0;
    MEMORY[0x2530AD570](a3, a4);
    sub_252CC3D90(*&__dst[0], *(&__dst[0] + 1), 0xD00000000000009BLL, 0x8000000252E77A10);

    swift_beginAccess();
    v22 = v19[8];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v19[8] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_2529F7A80(0, *(v22 + 2) + 1, 1, v22);
      v19[8] = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2529F7A80((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[16 * v25];
    *(v26 + 4) = a3;
    *(v26 + 5) = a4;
    v19[8] = v22;
    swift_endAccess();
    v27 = 0;
    v73 = 1;
    v28 = &unk_2864A7728;
LABEL_13:
    v75 = v27;

    v29 = sub_252E1F258(v28);

    v19 = v29;
LABEL_16:
    v30 = *(v78 + 16);
    if (!v30)
    {
      goto LABEL_35;
    }

    v31 = 0;
    a4 = 0x6572656874;
LABEL_18:
    if (v31 < *(v78 + 16))
    {
      break;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v32 = *(v78 + 32 + v31++);
  switch(v32)
  {
    case 2:
LABEL_33:

      break;
    default:
      v33 = sub_252E37DB4();

      if ((v33 & 1) == 0)
      {
        switch(v32)
        {
          case 0:
          case 1:
          case 2:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
            a3 = sub_252E37DB4();

            if (a3)
            {
              goto LABEL_34;
            }

            if (v30 == v31)
            {
              goto LABEL_35;
            }

            goto LABEL_18;
          case 3:
            goto LABEL_33;
          default:
            JUMPOUT(0);
        }
      }

      return result;
  }

LABEL_34:
  if (!*(v76 + 16))
  {
    v54 = sub_252AB0E20();
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_252E3C290;
      *(v58 + 32) = v56;
      *(v58 + 40) = v57;
      v59 = v19[15];
      v19[15] = v58;
      goto LABEL_48;
    }
  }

LABEL_35:
  v41 = v87;
  if (v87 && !*(v76 + 16))
  {
    v51 = *(&v86 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_252E3C290;
    *(v52 + 32) = v51;
    *(v52 + 40) = v41;
    v53 = v19[15];
    v19[15] = v52;

LABEL_48:

    v44 = 1;
    v43 = v77;
    goto LABEL_49;
  }

  v42 = *(&v82 + 1);
  v43 = v77;
  if (*(&v82 + 1))
  {
    v44 = v75;
    if (!*(v74 + 16))
    {
      v45 = v82;
      swift_beginAccess();
      v46 = v19[22];

      v47 = swift_isUniquelyReferenced_nonNull_native();
      v19[22] = v46;
      if ((v47 & 1) == 0)
      {
        v46 = sub_2529F7A80(0, *(v46 + 2) + 1, 1, v46);
        v19[22] = v46;
      }

      v49 = *(v46 + 2);
      v48 = *(v46 + 3);
      if (v49 >= v48 >> 1)
      {
        v46 = sub_2529F7A80((v48 > 1), v49 + 1, 1, v46);
      }

      *(v46 + 2) = v49 + 1;
      v50 = &v46[16 * v49];
      *(v50 + 4) = v45;
      *(v50 + 5) = v42;
      v19[22] = v46;
      swift_endAccess();
      v44 = 1;
    }
  }

  else
  {
    v44 = v75;
  }

LABEL_49:
  if (!*(v19[30] + 16))
  {
    v60 = v88;
    if (v88)
    {
      v61 = *(&v87 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_252E3C290;
      *(v62 + 32) = v61;
      *(v62 + 40) = v60;
      v19[30] = v62;

      goto LABEL_55;
    }
  }

  if (v44)
  {
LABEL_55:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v63 = swift_allocObject();
    v64 = v87;
    v65 = v89;
    *(v63 + 144) = v88;
    *(v63 + 160) = v65;
    v66 = v83;
    v67 = v85;
    v68 = v86;
    *(v63 + 80) = v84;
    *(v63 + 96) = v67;
    *(v63 + 112) = v68;
    *(v63 + 128) = v64;
    v69 = v81;
    v70 = v82;
    *(v63 + 16) = xmmword_252E3C290;
    *(v63 + 32) = v69;
    *(v63 + 176) = v90;
    *(v63 + 48) = v70;
    *(v63 + 64) = v66;
    sub_25297DE08(&v81, __dst);
    v71 = sub_2529FE8B4(v63);
    swift_setDeallocating();
    sub_2529AEC80(v63 + 32);
    swift_deallocClassInstance();
    sub_252E1E320(v71);

    goto LABEL_56;
  }

  if (v73)
  {
LABEL_56:
    sub_252E1E4F8(__src);

    memcpy(__dst, __src, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__dst);
    return memcpy(v43, __dst, 0x1F8uLL);
  }

  sub_25293DEE0(__dst);
  return memcpy(v43, __dst, 0x1F8uLL);
}

BOOL sub_252AAFAAC()
{
  v1 = v0[12];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[16];
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : v0[11] & 0xFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  if (v4)
  {
    type metadata accessor for HomeStore();
    v6 = static HomeStore.shared.getter();
    v7 = sub_2529D9114();

    if (!v7)
    {
      return 0;
    }

    v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v8 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    if (v2 == v9 && v4 == v8)
    {
    }

    else
    {
      v11 = sub_252E37DB4();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return v3 == 0;
}

uint64_t sub_252AAFB9C(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252AAEA44(a1);
}

uint64_t sub_252AAFC30(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 280);
  v3 = *(a1 + 288);
  v4 = *(a1 + 289);
  v5 = *(a1 + 386);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 288), v19);

  v7 = v20;
  v8 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  LOBYTE(v7) = (*(v8 + 152))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v18 = v5;
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 16), v19);

  __swift_project_boxed_opaque_existential_1(v19, v20);
  result = sub_2529796B4();
  if ((result & 1) != 0 && (v11 = *(v1 + 16)) != 0)
  {
    v12 = 0;
    while (v12 < *(v1 + 16))
    {
      v13 = v12 + 1;
      switch(*(v1 + 32 + v12))
      {
        case 2:

          goto LABEL_22;
        default:
          v14 = sub_252E37DB4();

          if (v14)
          {
LABEL_22:
            __swift_destroy_boxed_opaque_existential_1(v19);
            return 0;
          }

          v12 = v13;
          if (v11 == v13)
          {
            goto LABEL_9;
          }

          break;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (v4)
    {
      v15 = 0;
      result = 0;
      if (!v18)
      {
        return result;
      }
    }

    else if ((v3 & 1) != 0 && v2 == 3)
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      v15 = 1;
    }

    else
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      v15 = v3 & (v2 > 4);
    }

    sub_252B680FC();
    v16 = sub_252B63B0C();

    v17 = *(v16 + 16);

    if (v17)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AB0020()
{
  v0 = 1701736302;
  sub_252B680FC();
  v1 = sub_252B63B0C();

  v2 = -*(v1 + 16);
  v3 = -1;
  v4 = 176;
  while (1)
  {
    if (v2 + v3 == -1)
    {

      if (qword_27F53F520 == -1)
      {
LABEL_9:
        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_27F544E08);
        v8 = "rom the onScreen entities";
        v9 = 0xD00000000000001ELL;
        goto LABEL_158;
      }

LABEL_119:
      swift_once();
      goto LABEL_9;
    }

    if (++v3 >= *(v1 + 16))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:

LABEL_93:

      sub_2529AEC80(&v110);
      v78 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
LABEL_143:
      v99 = v78;
      if (!v99)
      {

        return 0;
      }

      v100 = v99;
      v101 = type metadata accessor for Home();
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      v69 = sub_2529E65BC(v100);

      goto LABEL_145;
    }

    v6 = *(v1 + v4);
    if (v6 != 1 && v6 != 2)
    {
      break;
    }

    v4 += 152;
    v5 = sub_252E37DB4();

    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_11:

  sub_252B680FC();
  v10 = sub_252B63B0C();

  v11 = *(v10 + 16);
  if (!v11)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v12 = 0;
  v13 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  while (2)
  {
    v15 = v13 + 152 * v12;
    v16 = v12;
    while (2)
    {
      if (v16 >= *(v10 + 16))
      {
        goto LABEL_91;
      }

      v17 = *(v15 + 16);
      v110 = *v15;
      v111 = v17;
      v18 = *(v15 + 32);
      v19 = *(v15 + 48);
      v20 = *(v15 + 80);
      v114 = *(v15 + 64);
      v115 = v20;
      v112 = v18;
      v113 = v19;
      v21 = *(v15 + 96);
      v22 = *(v15 + 112);
      v23 = *(v15 + 128);
      v119 = *(v15 + 144);
      v117 = v22;
      v118 = v23;
      v116 = v21;
      if (v119)
      {
        v24 = sub_252E37DB4();
        sub_25297DE08(&v110, v109);

        if ((v24 & 1) == 0)
        {
LABEL_16:
          sub_2529AEC80(&v110);
          ++v16;
          v15 += 152;
          if (v11 == v16)
          {
            goto LABEL_28;
          }

          continue;
        }
      }

      else
      {
        sub_25297DE08(&v110, v109);
      }

      break;
    }

    if (!v118)
    {
      goto LABEL_16;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA580(0, *(v14 + 16) + 1, 1);
      v14 = v120;
    }

    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_2529AA580((v26 > 1), v27 + 1, 1);
      v14 = v120;
    }

    v12 = v16 + 1;
    *(v14 + 16) = v27 + 1;
    v28 = v14 + 152 * v27;
    v29 = v111;
    *(v28 + 32) = v110;
    *(v28 + 48) = v29;
    v30 = v112;
    v31 = v113;
    v32 = v115;
    *(v28 + 96) = v114;
    *(v28 + 112) = v32;
    *(v28 + 64) = v30;
    *(v28 + 80) = v31;
    v33 = v116;
    v34 = v117;
    v35 = v118;
    *(v28 + 176) = v119;
    *(v28 + 144) = v34;
    *(v28 + 160) = v35;
    *(v28 + 128) = v33;
    v13 = v10 + 32;
    if (v11 - 1 != v16)
    {
      continue;
    }

    break;
  }

LABEL_28:

  if (*(v14 + 16) == 1)
  {
    v36 = *(v14 + 144);
    v116 = *(v14 + 128);
    v117 = v36;
    v118 = *(v14 + 160);
    v119 = *(v14 + 176);
    v37 = *(v14 + 80);
    v112 = *(v14 + 64);
    v113 = v37;
    v38 = *(v14 + 112);
    v114 = *(v14 + 96);
    v115 = v38;
    v39 = *(v14 + 48);
    v110 = *(v14 + 32);
    v111 = v39;
    sub_25297DE08(&v110, v109);

    v40 = *(&v117 + 1);

    sub_2529AEC80(&v110);
    return v40;
  }

  sub_252B680FC();
  v42 = sub_252B63B0C();

  v108 = *(v42 + 16);
  if (!v108)
  {
    goto LABEL_154;
  }

  v43 = 0;
  v44 = 32;
  while (2)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v45 = *(v42 + v44 + 16);
    v110 = *(v42 + v44);
    v111 = v45;
    v46 = *(v42 + v44 + 32);
    v47 = *(v42 + v44 + 48);
    v48 = *(v42 + v44 + 80);
    v114 = *(v42 + v44 + 64);
    v115 = v48;
    v112 = v46;
    v113 = v47;
    v49 = *(v42 + v44 + 96);
    v50 = *(v42 + v44 + 112);
    v51 = *(v42 + v44 + 128);
    v119 = *(v42 + v44 + 144);
    v117 = v50;
    v118 = v51;
    v116 = v49;
    if (v119 == 1 || v119 == 2)
    {
      LODWORD(v52) = HIBYTE(v119);
      v53 = v110;
      v54 = sub_252E37DB4();
      sub_25297DE08(&v110, v109);

      if (v54)
      {
        v107 = v53;
        goto LABEL_40;
      }

      ++v43;
      sub_2529AEC80(&v110);
      v44 += 152;
      if (v108 == v43)
      {
        goto LABEL_154;
      }

      continue;
    }

    break;
  }

  LODWORD(v52) = HIBYTE(v119);
  v107 = v110;
  sub_25297DE08(&v110, v109);

LABEL_40:

  if (v52)
  {
    v55 = sub_252E37DB4();

    if ((v55 & 1) == 0)
    {
      if (v52 <= 2)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    }
  }

  else
  {
  }

  type metadata accessor for HomeStore();
  v56 = static HomeStore.shared.getter();
  v57 = sub_2529D9D50();
  v58 = sub_2529D70E4(v57);

  if (v58 >> 62)
  {
    goto LABEL_122;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v59)
  {
LABEL_123:

    v89 = static HomeStore.shared.getter();
    v90 = sub_2529D9D50();

    if (v90 >> 62)
    {
      goto LABEL_148;
    }

    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v91)
    {
      while (1)
      {
        v92 = 0;
        while ((v90 & 0xC000000000000001) != 0)
        {
          v93 = MEMORY[0x2530ADF00](v92, v90);
          v94 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
LABEL_140:
            __break(1u);
LABEL_141:

LABEL_142:

            sub_2529AEC80(&v110);
            v78 = [*(v93 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
            goto LABEL_143;
          }

LABEL_131:
          v95 = sub_252E32E24();
          if (*(&v107 + 1))
          {
            if (v95 == v107 && *(&v107 + 1) == v96)
            {
              goto LABEL_141;
            }

            v98 = sub_252E37DB4();

            if (v98)
            {
              goto LABEL_142;
            }
          }

          else
          {
          }

          ++v92;
          if (v94 == v91)
          {
            goto LABEL_153;
          }
        }

        if (v92 < *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_148:
        v91 = sub_252E378C4();
        if (!v91)
        {
          goto LABEL_153;
        }
      }

      v93 = *(v90 + 8 * v92 + 32);

      v94 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        goto LABEL_140;
      }

      goto LABEL_131;
    }

LABEL_153:
    sub_2529AEC80(&v110);
LABEL_154:

    goto LABEL_155;
  }

  while (2)
  {
    v60 = 0;
    v52 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
    while ((v58 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v60, v58);
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_62;
      }

LABEL_53:
      v63 = sub_252E32E24();
      if (*(&v107 + 1))
      {
        if (v63 == v107 && *(&v107 + 1) == v64)
        {

LABEL_68:

          sub_2529AEC80(&v110);
          sub_252CDB4B0();
          v69 = v68;

          if (!v69)
          {
            return 0;
          }

          goto LABEL_145;
        }

        v66 = sub_252E37DB4();

        if (v66)
        {
          goto LABEL_68;
        }
      }

      else
      {
      }

      ++v60;
      if (v62 == v59)
      {
        goto LABEL_123;
      }
    }

    if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_118;
    }

    v61 = *(v58 + 8 * v60 + 32);

    v62 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
      goto LABEL_53;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    if (v52 == 1)
    {
LABEL_64:
      v67 = sub_252E37DB4();

      if ((v67 & 1) == 0)
      {
        if (v52 != 4)
        {
          goto LABEL_94;
        }

LABEL_95:
        type metadata accessor for HomeStore();
        v80 = static HomeStore.shared.getter();
        v58 = sub_2529D9884();

        if (v58 >> 62)
        {
          v81 = sub_252E378C4();
          if (!v81)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v81 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v81)
          {
            goto LABEL_153;
          }
        }

        v82 = 0;
        while (1)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v82, v58);
            v84 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_112;
            }
          }

          else
          {
            if (v82 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_121;
            }

            v83 = *(v58 + 8 * v82 + 32);

            v84 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
LABEL_112:
              __break(1u);
              goto LABEL_113;
            }
          }

          v85 = sub_252E32E24();
          if (*(&v107 + 1))
          {
            if (v85 == v107 && *(&v107 + 1) == v86)
            {

LABEL_115:

              sub_2529AEC80(&v110);
              v69 = sub_2529A2E84();

              if (!v69)
              {
                return 0;
              }

LABEL_145:
              v105 = *(v69 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v104 = *(v69 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              return v105;
            }

            v88 = sub_252E37DB4();

            if (v88)
            {
              goto LABEL_115;
            }
          }

          else
          {
          }

          ++v82;
          if (v84 == v81)
          {
            goto LABEL_153;
          }
        }
      }
    }

    else
    {
    }

    type metadata accessor for HomeStore();
    v70 = static HomeStore.shared.getter();
    v58 = sub_2529DA828();

    if (v58 >> 62)
    {
      v71 = sub_252E378C4();
      if (!v71)
      {
        goto LABEL_153;
      }
    }

    else
    {
      v71 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        goto LABEL_153;
      }
    }

    v72 = 0;
LABEL_76:
    if ((v58 & 0xC000000000000001) == 0)
    {
      if (v72 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v0 = *(v58 + 8 * v72 + 32);

        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_88;
        }

        goto LABEL_79;
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      v59 = sub_252E378C4();
      if (!v59)
      {
        goto LABEL_123;
      }

      continue;
    }

    break;
  }

  v0 = MEMORY[0x2530ADF00](v72, v58);
  v73 = v72 + 1;
  if (!__OFADD__(v72, 1))
  {
LABEL_79:
    v74 = sub_252E32E24();
    if (*(&v107 + 1))
    {
      if (v74 == v107 && *(&v107 + 1) == v75)
      {
        goto LABEL_92;
      }

      v77 = sub_252E37DB4();

      if (v77)
      {
        goto LABEL_93;
      }
    }

    else
    {
    }

    ++v72;
    if (v73 == v71)
    {
      goto LABEL_153;
    }

    goto LABEL_76;
  }

LABEL_88:
  __break(1u);
LABEL_94:
  v79 = sub_252E37DB4();

  if (v79)
  {
    goto LABEL_95;
  }

LABEL_113:
  sub_2529AEC80(&v110);
LABEL_155:
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v106 = sub_252E36AD4();
  __swift_project_value_buffer(v106, qword_27F544E08);
  v8 = "Adding onScreenHome ";
  v9 = 0xD000000000000039;
LABEL_158:
  sub_252CC3D90(v9, v8 | 0x8000000000000000, 0xD00000000000009BLL, 0x8000000252E77A10);
  return 0;
}

uint64_t sub_252AB0E20()
{
  sub_252B680FC();
  v0 = sub_252B63B0C();

  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = v4 + 152 * v3;
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v0 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 + 16);
        v32 = *v6;
        v33 = v8;
        v9 = *(v6 + 32);
        v10 = *(v6 + 48);
        v11 = *(v6 + 80);
        v36 = *(v6 + 64);
        v37 = v11;
        v34 = v9;
        v35 = v10;
        v12 = *(v6 + 96);
        v13 = *(v6 + 112);
        v14 = *(v6 + 128);
        v41 = *(v6 + 144);
        v39 = v13;
        v40 = v14;
        v38 = v12;
        if (v41)
        {
          v15 = sub_252E37DB4();
          sub_25297DE08(&v32, v31);

          if ((v15 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_25297DE08(&v32, v31);
        }

        if (v38)
        {
          break;
        }

LABEL_6:
        result = sub_2529AEC80(&v32);
        ++v7;
        v6 += 152;
        if (v2 == v7)
        {
          goto LABEL_18;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v5;
      if ((result & 1) == 0)
      {
        result = sub_2529AA580(0, *(v5 + 16) + 1, 1);
        v5 = v42;
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_2529AA580((v16 > 1), v17 + 1, 1);
        v5 = v42;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v17 + 1;
      v18 = v5 + 152 * v17;
      v19 = v33;
      *(v18 + 32) = v32;
      *(v18 + 48) = v19;
      v20 = v34;
      v21 = v35;
      v22 = v37;
      *(v18 + 96) = v36;
      *(v18 + 112) = v22;
      *(v18 + 64) = v20;
      *(v18 + 80) = v21;
      v23 = v38;
      v24 = v39;
      v25 = v40;
      *(v18 + 176) = v41;
      *(v18 + 144) = v24;
      *(v18 + 160) = v25;
      *(v18 + 128) = v23;
      v4 = v0 + 32;
      if (v2 - 1 == v7)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_18:

  if (*(v5 + 16) == 1)
  {
    v26 = *(v5 + 144);
    v38 = *(v5 + 128);
    v39 = v26;
    v40 = *(v5 + 160);
    v41 = *(v5 + 176);
    v27 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v27;
    v28 = *(v5 + 112);
    v36 = *(v5 + 96);
    v37 = v28;
    v29 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v29;
    sub_25297DE08(&v32, v31);

    v30 = *(&v37 + 1);

    sub_2529AEC80(&v32);
  }

  else
  {

    return 0;
  }

  return v30;
}

uint64_t sub_252AB1104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000252E77BC0 == a2;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x474E494752414843;
    v8 = 0xE800000000000000;
LABEL_7:
    v9 = sub_25299CB2C(v7, v8);
    v10 = type metadata accessor for HomeAutomationBatteryResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v9;
    a3[3] = v10;
LABEL_8:
    *a3 = result;
    return result;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E77BE0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v12 = *(sub_25299C704(43) + 24);

    v13 = type metadata accessor for HomeAutomationBatteryResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v12;
    a3[3] = v13;
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E77C00 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x524148435F544F4ELL;
    v8 = 0xEC000000474E4947;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E77C20 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x524148435F544F4ELL;
    v8 = 0xEE00454C42414547;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x8000000252E77C40 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x5F59524554544142;
    v8 = 0xEB00000000574F4CLL;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E77C60 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x5F59524554544142;
    v8 = 0xEE004C414D524F4ELL;
    goto LABEL_7;
  }

  return sub_252CDF514(a1, a2, a3);
}

uint64_t sub_252AB1414(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_252E33C44();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_252E33DB4();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AB1534, 0, 0);
}

uint64_t sub_252AB1534()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v5 = sub_252E34024();
  v0[14] = v5;
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = v6 == 0x6B73615472657375 && v8 == 0xE800000000000000;
  if (v9 || (sub_252E37DB4() & 1) != 0)
  {

    if ((sub_252CCFCB8() & 1) != 0 || (v10 = [v5 userTask]) == 0)
    {
      v16 = v0[10];
      v15 = *(v0[7] + 16);
      v17 = 0;
      v18 = 2;
    }

    else
    {
      v11 = v0[10];
      v12 = v0[7];
      v13 = v10;
      v14 = [v10 attribute];

      v15 = *(v12 + 16);
      v16 = v11;
      v17 = v14;
      v18 = 1;
    }

    sub_252A6105C(v17, v18, v15, 4, v16);
    v19 = sub_252B680FC();
    swift_beginAccess();
    v20 = *(v19 + 16);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 504 * v21 - 85);
    }

    else
    {
      v22 = 0;
    }

    v23 = v0[7];

    v24 = v23[7];
    v25 = v23[8];
    __swift_project_boxed_opaque_existential_1(v23 + 4, v24);
    v26 = swift_allocObject();
    v0[15] = v26;
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    *(v26 + 32) = v5;

    v27 = v5;
    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_252AB18B0;
    v29 = v0[10];
    v30 = v0[5];

    return sub_252BDB3DC(v30, &unk_252E480B0, v26, v29, v24, v25);
  }

  else
  {
    sub_2529515FC(0, 1, 0xD000000000000017, 0x8000000252E6FB60);
    type metadata accessor for HomeAutomationError();
    sub_252AB2D54(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v32 = v6;
    v32[1] = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v33 = v0[13];
    v34 = v0[10];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_252AB18B0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_252AB1A80;
  }

  else
  {
    v6 = sub_252AB19E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252AB19E4()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252AB1A80()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252AB1B20(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v5 = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  *(v3 + 80) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = sub_252E36324();
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AB1C58, 0, 0);
}

void sub_252AB1C58()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 72, (v0 + 2));
  v40 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = [v1 filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v0;
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_20:
      v7 = MEMORY[0x277D84F90];
LABEL_21:
      v21 = v7;
      v23 = v0[12];
      v22 = v0[13];
      v24 = v0[10];
      v25 = v0[11];
      v26 = v0[8];
      v27 = *(v0 + 160);

      v28 = *v40;
      v29 = v24[5];
      v30 = *(v22 + 56);
      v30(&v25[v29], 1, 1, v23);
      v30(&v25[v24[8]], 1, 1, v23);
      *v25 = 0;
      v25[v24[6]] = 0;
      v25[v24[7]] = v27;
      *&v25[v24[9]] = v21;
      v31 = [v26 userTask];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 attribute];
      }

      else
      {
        v33 = 0;
      }

      v34 = v32 == 0;
      v35 = v44[11];
      v36 = v44[9];
      static SemanticMapper.getSemanticKey(for:)(v33, v34, v36);
      sub_252956C98(v36, &v25[v29]);
      v37 = sub_252C07E14();
      v44[16] = v37;
      v38 = *(MEMORY[0x277D55BE8] + 4);
      v48 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v39 = swift_task_alloc();
      v44[17] = v39;
      *v39 = v44;
      v39[1] = sub_2529CD40C;

      v48(0xD000000000000020, 0x8000000252E6FD10, v37);
      return;
    }
  }

  v5 = sub_252E378C4();
  v44 = v0;
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_4:
  v6 = 0;
  v45 = v4 & 0xFFFFFFFFFFFFFF8;
  v46 = v4 & 0xC000000000000001;
  v41 = v0[13];
  v47 = (v41 + 32);
  v7 = MEMORY[0x277D84F90];
  v42 = v5;
  v43 = v4;
  while (1)
  {
    if (v46)
    {
      v8 = MEMORY[0x2530ADF00](v6, v4);
    }

    else
    {
      if (v6 >= *(v45 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v11 = [v8 homeEntityName];
    if (v11)
    {
      v13 = v0[14];
      v12 = v0[15];
      v14 = v0[12];
      v15 = v11;
      sub_252E36F34();

      sub_252E37024();

      v16 = *v47;
      (*v47)(v12, v13, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7F74(0, v7[2] + 1, 1, v7);
      }

      v18 = v7[2];
      v17 = v7[3];
      v0 = v44;
      if (v18 >= v17 >> 1)
      {
        v7 = sub_2529F7F74(v17 > 1, v18 + 1, 1, v7);
      }

      v19 = v44[15];
      v20 = v44[12];
      v7[2] = v18 + 1;
      v16(v7 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v18, v19, v20);
      v5 = v42;
      v4 = v43;
    }

    else
    {
    }

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_252AB2080()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return swift_deallocClassInstance();
}

uint64_t sub_252AB20F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252AB21BC(a1, a2, a3);
}

uint64_t sub_252AB21BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[133] = a3;
  v3[132] = a2;
  v3[131] = a1;
  v4 = sub_252E34164();
  v3[134] = v4;
  v5 = *(v4 - 8);
  v3[135] = v5;
  v6 = *(v5 + 64) + 15;
  v3[136] = swift_task_alloc();
  v7 = sub_252E33DB4();
  v3[137] = v7;
  v8 = *(v7 - 8);
  v3[138] = v8;
  v9 = *(v8 + 64) + 15;
  v3[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AB22E0, 0, 0);
}

uint64_t sub_252AB22E0()
{
  v36 = v0;
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[133];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v5 = sub_252E34024();
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = v6 == 0x6B73615472657375 && v8 == 0xE800000000000000;
  if (!v9 && (sub_252E37DB4() & 1) == 0 && (v6 != 0x6174616D6F747561 || v8 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    sub_2529515FC(6, 1, 0xD000000000000017, 0x8000000252E6FB60);
    type metadata accessor for HomeAutomationError();
    sub_252AB2D54(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v34 = v6;
    v34[1] = v8;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    v17 = v0[139];
    v18 = v0[136];
    swift_willThrow();

    v19 = v0[1];
    goto LABEL_20;
  }

  v10 = v0[136];
  v11 = v0[135];
  v12 = v0[134];
  v13 = v0[132];
  sub_252E340E4();
  sub_252AB3FEC(v10, 0, v35);
  (*(v11 + 8))(v10, v12);
  memcpy(v0 + 65, v35, 0x1F8uLL);
  memcpy(v0 + 2, v35, 0x1F8uLL);
  if (sub_252956B94(v0 + 2) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v14 = v0[132];
    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544DA8);
    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v35[0] = 0xD000000000000026;
    *(&v35[0] + 1) = 0x8000000252E6FC90;
    v16 = sub_252E340C4();
    MEMORY[0x2530AD570](v16);

    sub_252CC4050(*&v35[0], *(&v35[0] + 1), 0xD00000000000008DLL, 0x8000000252E6FAD0, 0xD000000000000028, 0x8000000252E6FC40, 46);

    sub_2529515FC(6, 1, 0xD000000000000015, 0x8000000252E6FCC0);
    type metadata accessor for HomeAutomationError();
    sub_252AB2D54(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    sub_252E340E4();
    goto LABEL_13;
  }

  v20 = [v5 userTask];
  if (v20)
  {
    v21 = v20;
    v22 = type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v23 = sub_252D6CA80(v21);
    memcpy(v35, v0 + 2, 0x1F8uLL);
    v24 = sub_252BBB45C(v23[3]);
    if (v24)
    {
      type metadata accessor for MutableAttributeValue();
      swift_allocObject();
      v24 = sub_252D6CC80(v24);
    }

    v25 = v0[131];
    swift_beginAccess();
    v26 = v23[4];
    v23[4] = v24;

    v27 = sub_252D6CB58();
    ControlHomeIntent.withUpdated(task:)(v27);

    *(&v35[1] + 1) = v22;
    *&v35[0] = v23;
    type metadata accessor for ControlHomeIntent();

    sub_252E33CC4();
    sub_25299F5D4((v0 + 65));
  }

  else
  {
    v28 = v0[131];
    type metadata accessor for ControlHomeIntent();
    memset(v35, 0, 32);
    sub_252E33CC4();
    sub_25299F5D4((v0 + 65));
  }

  v29 = v0[139];
  v30 = v0[136];
  v31 = v0[131];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D0, &qword_252E480A0);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);

  v19 = v0[1];
LABEL_20:

  return v19();
}

uint64_t sub_252AB28C0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252AB1414(a1, a2);
}

uint64_t sub_252AB296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_252AB2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_252AB2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252AB2BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v15 = v7;
  v15[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_252AB2CFC(uint64_t a1, uint64_t a2)
{
  result = sub_252AB2D54(&qword_27F542AF0, a2, type metadata accessor for ControlHomeNeedsValueStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252AB2D54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252AB2D9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252AB1B20(v2, v3, v4);
}

uint64_t sub_252AB2E5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    sub_252E37EC4();

    sub_252E37044();
    v11 = sub_252E37F14();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_252AB2FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    v82 = *(a1 + 16);
    do
    {
      memcpy(__dst, v2, 0x1F8uLL);
      if ((sub_252CDFDD4() & 1) == 0)
      {
        return v3;
      }

      v2 += 504;
      --v1;
    }

    while (v1);
    v4 = type metadata accessor for HomeStore();
    v5 = static HomeStore.shared.getter();
    v6 = sub_2529DA2BC();

    isUniquelyReferenced_nonNull_native = v6;
    __dst[0] = v3;
    if (v6 >> 62)
    {
      goto LABEL_116;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v67 = v4;
      v10 = 0;
      v76 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v78 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v70 = isUniquelyReferenced_nonNull_native;
      v72 = v8;
      v74 = isUniquelyReferenced_nonNull_native + 32;
      while (1)
      {
        if (v78)
        {
          isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v10, v70);
          v4 = isUniquelyReferenced_nonNull_native;
          v11 = __OFADD__(v10++, 1);
          if (v11)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v10 >= *(v76 + 16))
          {
            goto LABEL_113;
          }

          v4 = *(v74 + 8 * v10);

          v11 = __OFADD__(v10++, 1);
          if (v11)
          {
            goto LABEL_112;
          }
        }

        v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v14 = *&v12[v13];
        if (v14 >> 62)
        {
          if (v14 < 0)
          {
            v19 = *&v12[v13];
          }

          v20 = sub_252E378C4();

          if (!v20)
          {
LABEL_24:
            v18 = v9;
            goto LABEL_25;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v15)
          {
            goto LABEL_24;
          }
        }

        v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v17 = sub_252AC0F68(v4);

        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v9;
        }

LABEL_25:
        if (v18 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_252E378C4();
          v21 = isUniquelyReferenced_nonNull_native;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_9;
          }
        }

        v22 = 0;
        do
        {
          v23 = v22;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v23, v18);
            }

            else
            {
              if (v23 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_107;
              }

              isUniquelyReferenced_nonNull_native = *(v18 + 8 * v23 + 32);
            }

            v4 = isUniquelyReferenced_nonNull_native;
            v22 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
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
              v66 = isUniquelyReferenced_nonNull_native;
              v8 = sub_252E378C4();
              isUniquelyReferenced_nonNull_native = v66;
              goto LABEL_7;
            }

            v24 = [isUniquelyReferenced_nonNull_native name];
            if (v24)
            {
              break;
            }

            ++v23;
            if (v22 == v21)
            {
              goto LABEL_9;
            }
          }

          v25 = v24;
          v26 = sub_252E36F34();
          v80 = v27;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v9 + 16) + 1, 1, v9);
            v9 = isUniquelyReferenced_nonNull_native;
          }

          v4 = *(v9 + 16);
          v28 = *(v9 + 24);
          if (v4 >= v28 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_2529F7A80((v28 > 1), v4 + 1, 1, v9);
            v9 = isUniquelyReferenced_nonNull_native;
          }

          *(v9 + 16) = v4 + 1;
          v29 = v9 + 16 * v4;
          *(v29 + 32) = v26;
          *(v29 + 40) = v80;
        }

        while (v22 != v21);
LABEL_9:

        isUniquelyReferenced_nonNull_native = sub_25297A744(v9);
        v9 = MEMORY[0x277D84F90];
        if (v10 == v72)
        {
          v30 = __dst[0];
          v4 = v67;
          goto LABEL_48;
        }
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_48:

    v79 = sub_252C75848(v30);

    v31 = static HomeStore.shared.getter();
    v32 = sub_2529DA2BC();

    __dst[0] = v9;
    if (v32 >> 62)
    {
      isUniquelyReferenced_nonNull_native = sub_252E378C4();
      v33 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v35 = 0;
      v75 = v32 & 0xFFFFFFFFFFFFFF8;
      v77 = v32 & 0xC000000000000001;
      v68 = v32;
      v71 = v33;
      v73 = v32 + 32;
      while (1)
      {
        if (v77)
        {
          isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v35, v68);
          v4 = isUniquelyReferenced_nonNull_native;
          v11 = __OFADD__(v35++, 1);
          if (v11)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v35 >= *(v75 + 16))
          {
            goto LABEL_115;
          }

          v4 = *(v73 + 8 * v35);

          v11 = __OFADD__(v35++, 1);
          if (v11)
          {
            goto LABEL_114;
          }
        }

        v36 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v37 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v38 = *&v36[v37];
        if (v38 >> 62)
        {
          if (v38 < 0)
          {
            v43 = *&v36[v37];
          }

          v44 = sub_252E378C4();

          if (!v44)
          {
LABEL_67:
            v42 = v34;
            goto LABEL_68;
          }
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v39)
          {
            goto LABEL_67;
          }
        }

        v40 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v41 = sub_252AC11C8(v4);

        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v34;
        }

LABEL_68:
        if (v42 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_252E378C4();
          v45 = isUniquelyReferenced_nonNull_native;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_70:
            v46 = 0;
            do
            {
              v47 = v46;
              while (1)
              {
                if ((v42 & 0xC000000000000001) != 0)
                {
                  isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v47, v42);
                }

                else
                {
                  if (v47 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_109;
                  }

                  isUniquelyReferenced_nonNull_native = *(v42 + 8 * v47 + 32);
                }

                v4 = isUniquelyReferenced_nonNull_native;
                v46 = v47 + 1;
                if (__OFADD__(v47, 1))
                {
                  goto LABEL_108;
                }

                v48 = [isUniquelyReferenced_nonNull_native name];
                if (v48)
                {
                  break;
                }

                ++v47;
                if (v46 == v45)
                {
                  goto LABEL_52;
                }
              }

              v49 = v48;
              v50 = sub_252E36F34();
              v81 = v51;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v34 + 16) + 1, 1, v34);
                v34 = isUniquelyReferenced_nonNull_native;
              }

              v53 = *(v34 + 16);
              v52 = *(v34 + 24);
              v4 = v53 + 1;
              if (v53 >= v52 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_2529F7A80((v52 > 1), v53 + 1, 1, v34);
                v34 = isUniquelyReferenced_nonNull_native;
              }

              *(v34 + 16) = v4;
              v54 = v34 + 16 * v53;
              *(v54 + 32) = v50;
              *(v54 + 40) = v81;
            }

            while (v46 != v45);
          }
        }

        else
        {
          v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45)
          {
            goto LABEL_70;
          }
        }

LABEL_52:

        isUniquelyReferenced_nonNull_native = sub_25297A744(v34);
        v34 = MEMORY[0x277D84F90];
        if (v35 == v71)
        {
          v34 = __dst[0];
          break;
        }
      }
    }

    v55 = sub_252C75848(v34);

    v56 = 0;
    v3 = MEMORY[0x277D84F90];
    v57 = v82;
LABEL_90:
    v58 = (a1 + 32 + 504 * v56);
    v59 = v56;
    while (1)
    {
      if (v59 >= v57)
      {
        goto LABEL_110;
      }

      isUniquelyReferenced_nonNull_native = memcpy(__dst, v58, 0x1F8uLL);
      v56 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_111;
      }

      memcpy(v84, v58, sizeof(v84));
      sub_2529353AC(__dst, v83);
      if (sub_252CDFDD4())
      {
        memcpy(v84, __dst, sizeof(v84));
        v60 = sub_252E09BA8(v84);
        memcpy(v84, __dst, sizeof(v84));
        v61 = sub_252E09F40(v84);
        v62 = sub_252AB2E5C(v60, v79);

        if ((v62 & 1) == 0)
        {

LABEL_99:
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v85 = v3;
          if ((v63 & 1) == 0)
          {
            sub_2529AA480(0, *(v3 + 16) + 1, 1);
            v3 = v85;
          }

          v4 = *(v3 + 16);
          v64 = *(v3 + 24);
          if (v4 >= v64 >> 1)
          {
            sub_2529AA480((v64 > 1), v4 + 1, 1);
            v3 = v85;
          }

          *(v3 + 16) = v4 + 1;
          isUniquelyReferenced_nonNull_native = memcpy((v3 + 504 * v4 + 32), __dst, 0x1F8uLL);
          v57 = v82;
          if (v56 == v82)
          {
LABEL_104:

            return v3;
          }

          goto LABEL_90;
        }

        v4 = sub_252AB2E5C(v61, v55);

        if ((v4 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      isUniquelyReferenced_nonNull_native = sub_252935408(__dst);
      ++v59;
      v58 += 504;
      v57 = v82;
      if (v56 == v82)
      {
        goto LABEL_104;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252AB37C4()
{
  sub_252E37044();
}

uint64_t sub_252AB394C()
{
  sub_252E37044();
}

uint64_t sub_252AB3AB0()
{
  sub_252E37044();
}

uint64_t sub_252AB3C18()
{
  sub_252E37044();
}

uint64_t sub_252AB3D9C()
{
  sub_252E37044();
}

uint64_t sub_252AB3ED8()
{
  sub_252E37044();
}

void *sub_252AB3FEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F53F5A8 != -1)
  {
    swift_once();
  }

  v11 = qword_27F544F30;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v12 = sub_252D2D190(201, 0x6E776F6E6B6E75, 0xE700000000000000);
  sub_252AB431C(a1, a2 & 1, v14);
  if (v12)
  {

    sub_252D2D83C(0, 0);
  }

  sub_252E375C4();
  sub_252E36A74();

  (*(v7 + 8))(v10, v6);
  return memcpy(a3, v14, 0x1F8uLL);
}

unint64_t HomeAutomationIntent.Verb.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 7628135;
    v6 = 0x656C67676F74;
    if (v1 != 2)
    {
      v6 = 2003789939;
    }

    if (!*v0)
    {
      v5 = 7628147;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    if (v1 != 7)
    {
      v2 = 0x656E4F6863696877;
    }

    if (v1 == 6)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (v1 == 4)
    {
      v3 = 0x746E756F63;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

void *sub_252AB431C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252B680FC();
  sub_252B63EE0(a1, v17);

  memcpy(v18, v17, sizeof(v18));
  if (sub_252956B94(v18) == 1)
  {
    (*(v7 + 16))(v10, a1, v6);
    sub_252AB4570(v10, a2 & 1, v16);
    sub_252B680FC();
    memcpy(v15, v16, sizeof(v15));
    sub_252B64134(a1, v15);

    v11 = v16;
  }

  else
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D90);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_252E379F4();

    v15[0] = 0xD00000000000001ALL;
    v15[1] = 0x8000000252E78250;
    memcpy(v16, v18, sizeof(v16));
    v13 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v13);

    sub_252CC7784(v15[0], v15[1], 0, 0xD000000000000072, 0x8000000252E78270);

    v11 = v17;
  }

  return memcpy(a3, v11, 0x1F8uLL);
}

void *sub_252AB4570@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v55 = a2;
  v60 = a3;
  v4 = sub_252E34134();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34284();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_252E341A4();
  v50 = *(v52 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HomeAutomationNLV3Intent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E34164();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_252E358D4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v65[0] = MEMORY[0x277D84F90];
  LOWORD(v65[1]) = 771;
  BYTE2(v65[1]) = 1;
  v65[2] = 0;
  LOWORD(v65[3]) = 770;
  BYTE2(v65[3]) = 4;
  v65[4] = MEMORY[0x277D84F90];
  LOBYTE(v65[5]) = 4;
  v65[6] = MEMORY[0x277D84F90];
  v65[7] = MEMORY[0x277D84F90];
  LOBYTE(v65[8]) = 4;
  v65[9] = MEMORY[0x277D84F90];
  v65[10] = MEMORY[0x277D84F90];
  v65[11] = MEMORY[0x277D84F90];
  v65[12] = MEMORY[0x277D84F90];
  v65[13] = MEMORY[0x277D84F90];
  v65[14] = MEMORY[0x277D84F90];
  v65[15] = MEMORY[0x277D84F90];
  v65[16] = MEMORY[0x277D84F90];
  v65[17] = MEMORY[0x277D84F90];
  v65[18] = MEMORY[0x277D84F90];
  v65[19] = MEMORY[0x277D84F90];
  v65[20] = MEMORY[0x277D84F90];
  v65[21] = MEMORY[0x277D84F90];
  v65[22] = MEMORY[0x277D84F90];
  v65[23] = MEMORY[0x277D84F90];
  v65[24] = MEMORY[0x277D84F90];
  v65[25] = MEMORY[0x277D84F90];
  LOWORD(v65[26]) = 521;
  v65[27] = MEMORY[0x277D84F90];
  v65[28] = MEMORY[0x277D84F90];
  LOBYTE(v65[29]) = 1;
  v65[31] = 0;
  v65[30] = 0;
  v65[32] = MEMORY[0x277D84F90];
  memset(&v65[33], 0, 24);
  LOWORD(v65[36]) = 256;
  v65[37] = 0;
  v65[38] = 0;
  LOBYTE(v65[39]) = 2;
  v65[40] = 0;
  v65[41] = MEMORY[0x277D84F90];
  v65[42] = MEMORY[0x277D84F90];
  v65[43] = MEMORY[0x277D84F90];
  v65[44] = MEMORY[0x277D84F90];
  v65[45] = MEMORY[0x277D84F90];
  v65[46] = MEMORY[0x277D84F90];
  v65[47] = MEMORY[0x277D84F90];
  LOBYTE(v65[48]) = 22;
  *(&v65[48] + 1) = 0;
  BYTE5(v65[48]) = 0;
  v65[49] = MEMORY[0x277D84F90];
  v65[50] = MEMORY[0x277D84F90];
  v65[51] = MEMORY[0x277D84F90];
  v65[52] = MEMORY[0x277D84F90];
  v65[53] = MEMORY[0x277D84F90];
  v65[54] = MEMORY[0x277D84F90];
  v65[55] = MEMORY[0x277D84F90];
  v65[56] = MEMORY[0x277D84F90];
  v65[57] = MEMORY[0x277D84F90];
  v65[58] = MEMORY[0x277D84F90];
  v65[59] = MEMORY[0x277D84F90];
  v65[60] = MEMORY[0x277D84F90];
  v65[61] = MEMORY[0x277D84FA0];
  v65[62] = 0;
  v29 = *(v17 + 16);
  v59 = a1;
  v29(v20, a1, v16);
  v30 = (*(v17 + 88))(v20, v16);
  if (v30 == *MEMORY[0x277D5C128])
  {
    (*(v17 + 96))(v20, v16);
LABEL_5:
    v32 = *(v22 + 32);
    v32(v28, v20, v21);
    v32(v26, v28, v21);
    HomeAutomationNLV3Intent.init(_:)(v26, v15);
    sub_25295B778(v15);
    sub_25294E8F4(v15);
    goto LABEL_6;
  }

  if (v30 == *MEMORY[0x277D5C158])
  {
    (*(v17 + 96))(v20, v16);
    v31 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D5C150])
  {
    (*(v17 + 96))(v20, v16);
    v38 = v56;
    v37 = v57;
    v39 = v58;
    (*(v57 + 32))(v56, v20, v58);
    sub_252BC38D8();
    (*(v37 + 8))(v38, v39);
  }

  else
  {
    if (v30 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v46 = sub_252E36AD4();
      __swift_project_value_buffer(v46, qword_27F544D90);
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E782F0);
      v47 = v59;
      sub_252E37AE4();
      sub_252CC4050(v64[0], v64[1], 0xD000000000000072, 0x8000000252E78270, 0xD00000000000001DLL, 0x8000000252E78310, 149);

      v48 = *(v17 + 8);
      v48(v47, v16);
      v48(v20, v16);
      goto LABEL_21;
    }

    (*(v17 + 96))(v20, v16);
    v43 = v49;
    v42 = v50;
    v44 = v52;
    (*(v50 + 32))(v49, v20, v52);
    v45 = v51;
    sub_252E34184();
    sub_252CE341C(v45, v55 & 1);
    (*(v53 + 8))(v45, v54);
    (*(v42 + 8))(v43, v44);
  }

LABEL_6:
  memcpy(v64, v65, 0x182uLL);
  v33 = BYTE2(v65[48]);
  BYTE2(v64[48]) = BYTE2(v65[48]);
  *(&v64[56] + 3) = *(&v65[56] + 3);
  *(&v64[58] + 3) = *(&v65[58] + 3);
  *(&v64[60] + 3) = *(&v65[60] + 3);
  *(&v64[48] + 3) = *(&v65[48] + 3);
  *(&v64[50] + 3) = *(&v65[50] + 3);
  *(&v64[52] + 3) = *(&v65[52] + 3);
  *(&v64[54] + 3) = *(&v65[54] + 3);
  v64[62] = v65[62];
  if ((sub_252AB5058() & 1) != 0 && (v33 & 1) == 0)
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D90);
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E78350);
    v41 = v59;
    sub_252E37AE4();
    sub_252CC4050(v64[0], v64[1], 0xD000000000000072, 0x8000000252E78270, 0xD00000000000001DLL, 0x8000000252E78310, 154);

    (*(v17 + 8))(v41, v16);
LABEL_21:
    memcpy(v63, v65, sizeof(v63));
    sub_252935408(v63);
    sub_25293DEE0(v64);
    return memcpy(v60, v64, 0x1F8uLL);
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D90);
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  sub_252E379F4();

  v63[0] = 0xD000000000000013;
  v63[1] = 0x8000000252E78330;
  memcpy(v64, v65, sizeof(v64));
  v35 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v35);

  sub_252CC7784(v63[0], v63[1], 0, 0xD000000000000072, 0x8000000252E78270);

  (*(v17 + 8))(v59, v16);
  memcpy(v62, v65, sizeof(v62));
  memcpy(v63, v65, sizeof(v63));
  GEOLocationCoordinate2DMake(v63);
  memcpy(v60, v63, 0x1F8uLL);
  memcpy(v64, v65, sizeof(v64));
  sub_2529353AC(v62, &v61);
  return sub_252935408(v64);
}

uint64_t sub_252AB5058()
{
  v1 = *v0;
  *&__dst[184] = *(v0 + 23);
  *&__dst[200] = *(v0 + 25);
  *&__dst[216] = *(v0 + 27);
  *&__dst[232] = *(v0 + 29);
  v2 = *(v0 + 15);
  *&__dst[136] = *(v0 + 17);
  *&__dst[152] = *(v0 + 19);
  *&__dst[168] = *(v0 + 21);
  v3 = *(v0 + 9);
  *&__dst[56] = *(v0 + 7);
  *&__dst[72] = v3;
  *&__dst[88] = *(v0 + 11);
  *&__dst[104] = *(v0 + 13);
  *&__dst[120] = v2;
  v4 = *(v0 + 3);
  *&__dst[8] = *(v0 + 1);
  *&__dst[24] = v4;
  *&__dst[40] = *(v0 + 5);
  v5 = v0[31];
  *&__dst[256] = *(v0 + 16);
  v6 = v0[34];
  v7 = *(v0 + 57);
  *&__dst[440] = *(v0 + 55);
  *&__dst[456] = v7;
  v8 = *(v0 + 61);
  *&__dst[472] = *(v0 + 59);
  *&__dst[488] = v8;
  v9 = *(v0 + 49);
  *&__dst[376] = *(v0 + 47);
  *&__dst[392] = v9;
  v10 = *(v0 + 53);
  *&__dst[408] = *(v0 + 51);
  *&__dst[424] = v10;
  v11 = *(v0 + 41);
  *&__dst[312] = *(v0 + 39);
  *&__dst[328] = v11;
  v12 = *(v0 + 45);
  *&__dst[344] = *(v0 + 43);
  *&__dst[360] = v12;
  v13 = *(v0 + 37);
  *&__dst[280] = *(v0 + 35);
  *&__dst[296] = v13;
  *__dst = v1;
  *&__dst[248] = v5;
  *&__dst[272] = v6;
  result = sub_252AB51DC();
  if ((result & 1) == 0 || v5 | v6)
  {
    LOBYTE(result) = 0;
    return result & 1;
  }

  v15 = *(v1 + 16);
  if (!v15)
  {
    LOBYTE(result) = 1;
    return result & 1;
  }

  v16 = 0;
  v17 = (v1 + 32);
  v18 = v15 - 1;
  while (v16 < *(v1 + 16))
  {
    v19 = memcpy(__dst, v17, sizeof(__dst));
    result = sub_252AB5058(v19);
    if (result)
    {
      v17 += 504;
      if (v18 != v16++)
      {
        continue;
      }
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_252AB51DC()
{
  result = 0;
  if (*(v0 + 8) == 3 && *(v0 + 9) == 3 && !v0[2])
  {
    if (*(v0 + 10))
    {
      if (*(v0 + 24) == 2 && *(v0 + 25) == 3 && *(v0 + 26) == 4)
      {
        result = 0;
        if (!*(v0[4] + 16) && *(v0 + 40) == 4)
        {
          if (*(v0[6] + 16))
          {
            return 0;
          }

          result = 0;
          if (!*(v0[7] + 16) && *(v0 + 64) == 4)
          {
            if (*(v0[9] + 16) || *(v0[10] + 16) || *(v0[11] + 16) || *(v0[13] + 16) || *(v0[14] + 16) || *(v0[15] + 16) || *(v0[16] + 16) || *(v0[17] + 16) || *(v0[18] + 16) || *(v0[19] + 16) || *(v0[20] + 16) || *(v0[21] + 16) || *(v0[22] + 16) || *(v0[23] + 16) || *(v0[24] + 16))
            {
              return 0;
            }

            result = 0;
            if (!*(v0[25] + 16) && *(v0 + 208) == 9 && *(v0 + 209) == 2)
            {
              if (*(v0[27] + 16) || ((*(v0[28] + 16) == 0) & v0[29]) != 1)
              {
                return 0;
              }

              result = 0;
              if (((*(v0[32] + 16) == 0) & *(v0 + 289)) == 1 && *(v0 + 384) == 22)
              {
                if (*(v0[12] + 16) || *(v0[44] + 16) || *(v0[42] + 16) || *(v0[45] + 16) || *(v0[43] + 16) || *(v0[41] + 16) || *(v0[47] + 16))
                {
                  return 0;
                }

                v2 = *v0;
                v3 = v0[38];
                v4 = v0[49];
                v5 = v0[62];
                if (v4 >> 62)
                {
                  goto LABEL_53;
                }

                if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  return 0;
                }

                while (1)
                {
                  v6 = *(v2 + 16);
                  if (!v6)
                  {
                    break;
                  }

                  v7 = 0;
                  v8 = (v2 + 32);
                  while (v7 < *(v2 + 16))
                  {
                    v9 = memcpy(__dst, v8, sizeof(__dst));
                    if ((sub_252AB51DC(v9) & 1) == 0)
                    {
                      return 0;
                    }

                    ++v7;
                    v8 += 504;
                    if (v6 == v7)
                    {
                      return (v5 | v3) == 0;
                    }
                  }

                  __break(1u);
LABEL_53:
                  if (sub_252E378C4())
                  {
                    return 0;
                  }
                }

                return (v5 | v3) == 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_252AB54DC()
{
  switch(*v0)
  {
    case 1:
      v35 = sub_252E35474();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      result = sub_252E35464();
      break;
    case 2:
      v23 = sub_252E35404();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      result = sub_252E353F4();
      break;
    case 3:
      v29 = sub_252E35224();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      result = sub_252E35214();
      break;
    case 4:
      v14 = sub_252E354E4();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      result = sub_252E354D4();
      break;
    case 5:
      v44 = sub_252E35594();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      result = sub_252E35584();
      break;
    case 6:
      v53 = sub_252E35574();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      result = sub_252E35564();
      break;
    case 7:
      v32 = sub_252E356C4();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      result = sub_252E356B4();
      break;
    case 8:
      v62 = sub_252E357B4();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      result = sub_252E357A4();
      break;
    case 9:
      v20 = sub_252E35794();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      result = sub_252E35784();
      break;
    case 0xA:
      v59 = sub_252E35504();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      result = sub_252E354F4();
      break;
    case 0xB:
      v11 = sub_252E35684();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      result = sub_252E35674();
      break;
    case 0xC:
      v17 = sub_252E354C4();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      result = sub_252E354B4();
      break;
    case 0xD:
      v50 = sub_252E353E4();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      result = sub_252E353D4();
      break;
    case 0xE:
      v8 = sub_252E35774();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      result = sub_252E35764();
      break;
    case 0xF:
      v26 = sub_252E356A4();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      result = sub_252E35694();
      break;
    case 0x10:
      v5 = sub_252E355B4();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      result = sub_252E355A4();
      break;
    case 0x11:
      v38 = sub_252E35664();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      result = sub_252E35654();
      break;
    case 0x12:
      v56 = sub_252E35204();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      result = sub_252E351F4();
      break;
    case 0x13:
      v65 = sub_252E35334();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      result = sub_252E35324();
      break;
    case 0x14:
      v41 = sub_252E35144();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      result = sub_252E35134();
      break;
    case 0x15:
      v47 = sub_252E35644();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      result = sub_252E35634();
      break;
    default:
      v1 = sub_252E353C4();
      v2 = *(v1 + 48);
      v3 = *(v1 + 52);
      swift_allocObject();
      result = sub_252E353B4();
      break;
  }

  return result;
}

uint64_t HomeAutomationIntent.description.getter()
{
  v1 = *(v0 + 29);
  v2 = *(v0 + 27);
  v3 = *(v0 + 26);
  v471 = *(v0 + 28);
  v472 = v1;
  v4 = *(v0 + 25);
  v469 = *(v0 + 26);
  v470 = v2;
  v468 = v4;
  v461 = v2;
  v462 = v471;
  v463 = *(v0 + 29);
  v398 = *v0;
  v376 = *(v0 + 8);
  v377 = *(v0 + 9);
  v481 = *(v0 + 10);
  *(&v400 + 11) = *(v0 + 11);
  HIBYTE(v400) = *(v0 + 15);
  v378 = v0[2];
  v379 = *(v0 + 24);
  v380 = *(v0 + 25);
  v381 = *(v0 + 26);
  *(&v401 + 11) = *(v0 + 27);
  HIBYTE(v401) = *(v0 + 31);
  v382 = v0[4];
  v383 = *(v0 + 40);
  HIDWORD(v402) = *(v0 + 11);
  *(&v402 + 9) = *(v0 + 41);
  v384 = *(v0 + 3);
  v385 = *(v0 + 64);
  *(&v404 + 1) = *(v0 + 65);
  DWORD1(v404) = *(v0 + 17);
  v386 = v0[9];
  v387 = v0[10];
  v388 = v0[11];
  v389 = v0[13];
  v390 = v0[14];
  v391 = v0[15];
  v395 = v0[17];
  v396 = v0[12];
  v375 = v0[18];
  v394 = v0[19];
  v392 = v0[16];
  v393 = v0[20];
  v423 = *(v0 + 210);
  v424 = *(v0 + 107);
  v480 = *(v0 + 232);
  *v428 = *(v0 + 233);
  *&v428[3] = *(v0 + 59);
  v437 = *(v0 + 290);
  v438 = *(v0 + 147);
  *v442 = *(v0 + 313);
  *&v442[3] = *(v0 + 79);
  v473 = v0[60];
  *&v467 = 0xD000000000000017;
  *(&v467 + 1) = 0x8000000252E77CE0;
  v479 = *(v0 + 289);
  BYTE10(v400) = v481;
  v5 = v0[46];
  v397 = v0[47];
  v427 = v480;
  v478 = *(v0 + 385);
  v436 = v479;
  v477 = *(v0 + 386);
  v449 = v5;
  v476 = *(v0 + 387);
  v452 = v478;
  v475 = *(v0 + 388);
  v453 = v477;
  v474 = *(v0 + 389);
  v454 = v476;
  LOWORD(v5) = *(v0 + 195);
  v455 = v475;
  v6 = v0[49];
  v456 = v474;
  v457 = v5;
  v7 = v0[60];
  v8 = v0[61];
  v373 = v6;
  v458 = v6;
  v464 = v7;
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[25];
  v14 = *(v0 + 208);
  v15 = *(v0 + 209);
  v16 = v0[27];
  v17 = v0[28];
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[32];
  v21 = v0[33];
  v22 = v0[34];
  v23 = v0[35];
  v24 = *(v0 + 288);
  v26 = v0[37];
  v25 = v0[38];
  LODWORD(v6) = *(v0 + 312);
  v27 = v0[40];
  v28 = v0[41];
  v29 = v0[42];
  v30 = v0[43];
  v31 = v0[44];
  v32 = v0[45];
  v33 = *(v0 + 384);
  v34 = v0[62];
  *&v400 = v398;
  BYTE8(v400) = v376;
  BYTE9(v400) = v377;
  *&v401 = v378;
  BYTE8(v401) = v379;
  BYTE9(v401) = v380;
  BYTE10(v401) = v381;
  *&v402 = v382;
  BYTE8(v402) = v383;
  v403 = v384;
  LOBYTE(v404) = v385;
  *(&v404 + 1) = v386;
  v405 = v387;
  v406 = v388;
  v407 = v396;
  v408 = v389;
  v409 = v390;
  v410 = v391;
  v411 = v392;
  v412 = v395;
  v413 = v375;
  v414 = v394;
  v415 = v393;
  v416 = v10;
  v355 = v19;
  v356 = v9;
  v417 = v9;
  v418 = v11;
  v419 = v12;
  v420 = v13;
  v360 = v14;
  v421 = v14;
  v359 = v15;
  v422 = v15;
  v357 = v20;
  v358 = v16;
  v425 = v16;
  v361 = v17;
  v362 = v22;
  v426 = v17;
  v429 = v19;
  v363 = v18;
  v364 = v26;
  v430 = v18;
  v431 = v20;
  v353 = v23;
  v354 = v21;
  v432 = v21;
  v433 = v22;
  v434 = v23;
  v352 = v24;
  v435 = v24;
  v439 = v26;
  v365 = v25;
  v440 = v25;
  v371 = v6;
  v441 = v6;
  v372 = v27;
  v443 = v27;
  v369 = v30;
  v370 = v28;
  v444 = v28;
  v366 = v31;
  v367 = v29;
  v445 = v29;
  v446 = v30;
  v447 = v31;
  v368 = v32;
  v448 = v32;
  v450 = v397;
  v451 = v33;
  v459 = v4;
  v460 = v3;
  v374 = v8;
  v465 = v8;
  v466 = v34;
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v399);
  *&v400 = sub_252E37F14();
  v35 = sub_252E37D94();
  MEMORY[0x2530AD570](v35);

  MEMORY[0x2530AD570](0xA7B203A3ELL, 0xE500000000000000);
  v36 = v467;
  v37 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v10 + 16))
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000014;
    *(&v399[0] + 1) = 0x8000000252E77D00;
    v38 = MEMORY[0x2530AD730](v10, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v38);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v40 = *(&v399[0] + 1);
    v39 = *&v399[0];
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v39, v40);

  v41 = v400;
  v400 = v36;

  MEMORY[0x2530AD570](v41, *(&v41 + 1));

  v42 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v375 + 16))
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000014;
    *(&v399[0] + 1) = 0x8000000252E77D20;
    v43 = MEMORY[0x2530AD730](v375, &type metadata for AccessoryTypeSemantic);
    MEMORY[0x2530AD570](v43);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v37 = *(&v399[0] + 1);
    v44 = *&v399[0];
  }

  else
  {
    v44 = 0;
  }

  MEMORY[0x2530AD570](v44, v37);

  v46 = *(&v400 + 1);
  v45 = v400;
  v400 = v42;

  MEMORY[0x2530AD570](v45, v46);

  v47 = v400;
  v48 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v376 == 3)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD000000000000019;
    *(&v399[0] + 1) = 0x8000000252E781E0;
    LOBYTE(v467) = v376;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B68, &qword_252E48178);
    v51 = sub_252E36F94();
    MEMORY[0x2530AD570](v51);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v50 = *(&v399[0] + 1);
    v49 = *&v399[0];
  }

  MEMORY[0x2530AD570](v49, v50);

  v52 = v400;
  v400 = v47;

  MEMORY[0x2530AD570](v52, *(&v52 + 1));

  v53 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v377 == 3)
  {
    v54 = 0;
  }

  else
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E781C0;
    LOBYTE(v467) = v377;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v55 = sub_252E36F94();
    MEMORY[0x2530AD570](v55);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v48 = *(&v399[0] + 1);
    v54 = *&v399[0];
  }

  MEMORY[0x2530AD570](v54, v48);

  v56 = v400;
  v400 = v53;

  MEMORY[0x2530AD570](v56, *(&v56 + 1));

  v57 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v481)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E781A0;
    LOBYTE(v467) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B60, &qword_252E48168);
    v60 = sub_252E36F94();
    MEMORY[0x2530AD570](v60);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v59 = *(&v399[0] + 1);
    v58 = *&v399[0];
  }

  MEMORY[0x2530AD570](v58, v59);

  v61 = v400;
  v400 = v57;

  MEMORY[0x2530AD570](v61, *(&v61 + 1));

  v62 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v378)
  {
    strcpy(v399, "    dateTime: ");
    HIBYTE(v399[0]) = -18;
    *&v467 = v378;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B58, &qword_252E48160);
    v63 = sub_252E36F94();
    MEMORY[0x2530AD570](v63);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
  }

  MEMORY[0x2530AD570]();

  v65 = *(&v400 + 1);
  v64 = v400;
  v400 = v62;

  MEMORY[0x2530AD570](v64, v65);

  v66 = v400;
  v67 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v379 == 2)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    delta: ");
    HIDWORD(v399[0]) = -352321536;
    LOBYTE(v467) = v379;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B50, &qword_252E48158);
    v70 = sub_252E36F94();
    MEMORY[0x2530AD570](v70);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v69 = *(&v399[0] + 1);
    v68 = *&v399[0];
  }

  MEMORY[0x2530AD570](v68, v69);

  v71 = v400;
  v400 = v66;

  MEMORY[0x2530AD570](v71, *(&v71 + 1));

  v72 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v380 == 3)
  {
    v73 = 0;
  }

  else
  {
    *&v399[0] = 0xD000000000000015;
    *(&v399[0] + 1) = 0x8000000252E78180;
    LOBYTE(v467) = v380;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B48, &qword_252E48150);
    v74 = sub_252E36F94();
    MEMORY[0x2530AD570](v74);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v67 = *(&v399[0] + 1);
    v73 = *&v399[0];
  }

  MEMORY[0x2530AD570](v73, v67);

  v76 = *(&v400 + 1);
  v75 = v400;
  v400 = v72;

  MEMORY[0x2530AD570](v75, v76);

  v77 = v400;
  v78 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v381 == 4)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0x746C656420202020;
    *(&v399[0] + 1) = 0xEF203A656C6F5261;
    LOBYTE(v467) = v381;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B40, &qword_252E48148);
    v81 = sub_252E36F94();
    MEMORY[0x2530AD570](v81);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v80 = *(&v399[0] + 1);
    v79 = *&v399[0];
  }

  MEMORY[0x2530AD570](v79, v80);

  v82 = v400;
  v400 = v77;

  MEMORY[0x2530AD570](v82, *(&v82 + 1));

  v83 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v382 + 16))
  {
    *&v399[0] = 0xD000000000000017;
    *(&v399[0] + 1) = 0x8000000252E77D40;
    v84 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v84);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v78 = *(&v399[0] + 1);
    v85 = *&v399[0];
  }

  else
  {
    v85 = 0;
  }

  MEMORY[0x2530AD570](v85, v78);

  v87 = *(&v400 + 1);
  v86 = v400;
  v400 = v83;

  MEMORY[0x2530AD570](v86, v87);

  v88 = v400;
  v89 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v383 == 4)
  {
    v90 = 0;
    v91 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    event: ");
    HIDWORD(v399[0]) = -352321536;
    LOBYTE(v467) = v383;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B38, &qword_252E48140);
    v92 = sub_252E36F94();
    MEMORY[0x2530AD570](v92);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v91 = *(&v399[0] + 1);
    v90 = *&v399[0];
  }

  MEMORY[0x2530AD570](v90, v91);

  v93 = v400;
  v400 = v88;

  MEMORY[0x2530AD570](v93, *(&v93 + 1));

  v94 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v356 + 16))
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E77D60;
    v95 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v95);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v89 = *(&v399[0] + 1);
    v96 = *&v399[0];
  }

  else
  {
    v96 = 0;
  }

  MEMORY[0x2530AD570](v96, v89);

  v98 = *(&v400 + 1);
  v97 = v400;
  v400 = v94;

  MEMORY[0x2530AD570](v97, v98);

  v99 = v400;
  v100 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v384 + 16))
  {
    strcpy(v399, "    homes: ");
    HIDWORD(v399[0]) = -352321536;
    v101 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v101);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v103 = *(&v399[0] + 1);
    v102 = *&v399[0];
  }

  else
  {
    v102 = 0;
    v103 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v102, v103);

  v104 = v400;
  v400 = v99;

  MEMORY[0x2530AD570](v104, *(&v104 + 1));

  v105 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(*(&v384 + 1) + 16))
  {
    strcpy(v399, "    hues: ");
    BYTE11(v399[0]) = 0;
    HIDWORD(v399[0]) = -369098752;
    v106 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v106);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v100 = *(&v399[0] + 1);
    v107 = *&v399[0];
  }

  else
  {
    v107 = 0;
  }

  MEMORY[0x2530AD570](v107, v100);

  v109 = *(&v400 + 1);
  v108 = v400;
  v400 = v105;

  MEMORY[0x2530AD570](v108, v109);

  v110 = v400;
  v111 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v385 == 4)
  {
    v112 = 0;
    v113 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    limit: ");
    HIDWORD(v399[0]) = -352321536;
    LOBYTE(v467) = v385;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B30, &qword_252E48138);
    v114 = sub_252E36F94();
    MEMORY[0x2530AD570](v114);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v113 = *(&v399[0] + 1);
    v112 = *&v399[0];
  }

  MEMORY[0x2530AD570](v112, v113);

  v115 = v400;
  v400 = v110;

  MEMORY[0x2530AD570](v115, *(&v115 + 1));

  v116 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v386 + 16))
  {
    strcpy(v399, "    misc: ");
    BYTE11(v399[0]) = 0;
    HIDWORD(v399[0]) = -369098752;
    v117 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v117);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v111 = *(&v399[0] + 1);
    v118 = *&v399[0];
  }

  else
  {
    v118 = 0;
  }

  MEMORY[0x2530AD570](v118, v111);

  v120 = *(&v400 + 1);
  v119 = v400;
  v400 = v116;

  MEMORY[0x2530AD570](v119, v120);

  v121 = v400;
  v122 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v387 + 16))
  {
    strcpy(v399, "    nouns: ");
    HIDWORD(v399[0]) = -352321536;
    v123 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v123);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v125 = *(&v399[0] + 1);
    v124 = *&v399[0];
  }

  else
  {
    v124 = 0;
    v125 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v124, v125);

  v126 = v400;
  v400 = v121;

  MEMORY[0x2530AD570](v126, *(&v126 + 1));

  v127 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v357 + 16))
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E77D80;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
    v129 = MEMORY[0x2530AD730](v357, v128);
    MEMORY[0x2530AD570](v129);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v122 = *(&v399[0] + 1);
    v130 = *&v399[0];
  }

  else
  {
    v130 = 0;
  }

  MEMORY[0x2530AD570](v130, v122);

  v132 = *(&v400 + 1);
  v131 = v400;
  v400 = v127;

  MEMORY[0x2530AD570](v131, v132);

  v133 = v400;
  v134 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v358 + 16))
  {
    strcpy(v399, "    phrases: ");
    HIWORD(v399[0]) = -4864;
    v135 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v135);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v137 = *(&v399[0] + 1);
    v136 = *&v399[0];
  }

  else
  {
    v136 = 0;
    v137 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v136, v137);

  v138 = v400;
  v400 = v133;

  MEMORY[0x2530AD570](v138, *(&v138 + 1));

  v139 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v388 + 16))
  {
    *&v399[0] = 0xD000000000000010;
    *(&v399[0] + 1) = 0x8000000252E77DA0;
    v140 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v140);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v134 = *(&v399[0] + 1);
    v141 = *&v399[0];
  }

  else
  {
    v141 = 0;
  }

  MEMORY[0x2530AD570](v141, v134);

  v143 = *(&v400 + 1);
  v142 = v400;
  v400 = v139;

  MEMORY[0x2530AD570](v142, v143);

  v144 = v400;
  v145 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v359 == 2)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E78160;
    LOBYTE(v467) = v359;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B28, &qword_252E48130);
    v148 = sub_252E36F94();
    MEMORY[0x2530AD570](v148);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v147 = *(&v399[0] + 1);
    v146 = *&v399[0];
  }

  MEMORY[0x2530AD570](v146, v147);

  v149 = v400;
  v400 = v144;

  MEMORY[0x2530AD570](v149, *(&v149 + 1));

  v150 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v479)
  {
    v151 = 0;
  }

  else
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E78140;
    *&v467 = v353;
    WORD4(v467) = v352;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B20, &qword_252E48128);
    v152 = sub_252E36F94();
    MEMORY[0x2530AD570](v152);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v145 = *(&v399[0] + 1);
    v151 = *&v399[0];
  }

  MEMORY[0x2530AD570](v151, v145);

  v154 = *(&v400 + 1);
  v153 = v400;
  v400 = v150;

  MEMORY[0x2530AD570](v153, v154);

  v155 = v400;
  v156 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v389 + 16))
  {
    strcpy(v399, "    rooms: ");
    HIDWORD(v399[0]) = -352321536;
    v157 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v157);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v159 = *(&v399[0] + 1);
    v158 = *&v399[0];
  }

  else
  {
    v158 = 0;
    v159 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v158, v159);

  v160 = v400;
  v400 = v155;

  MEMORY[0x2530AD570](v160, *(&v160 + 1));

  v161 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v390 + 16))
  {
    *&v399[0] = 0xD000000000000011;
    *(&v399[0] + 1) = 0x8000000252E77DC0;
    v162 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v162);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v156 = *(&v399[0] + 1);
    v163 = *&v399[0];
  }

  else
  {
    v163 = 0;
  }

  MEMORY[0x2530AD570](v163, v156);

  v165 = *(&v400 + 1);
  v164 = v400;
  v400 = v161;

  MEMORY[0x2530AD570](v164, v165);

  v166 = v400;
  v167 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v391 + 16))
  {
    *&v399[0] = 0xD000000000000010;
    *(&v399[0] + 1) = 0x8000000252E77DE0;
    v168 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v168);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v170 = *(&v399[0] + 1);
    v169 = *&v399[0];
  }

  else
  {
    v169 = 0;
    v170 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v169, v170);

  v171 = v400;
  v400 = v166;

  MEMORY[0x2530AD570](v171, *(&v171 + 1));

  v172 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v392 + 16))
  {
    strcpy(v399, "    scenes: ");
    BYTE13(v399[0]) = 0;
    HIWORD(v399[0]) = -5120;
    v173 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v173);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v167 = *(&v399[0] + 1);
    v174 = *&v399[0];
  }

  else
  {
    v174 = 0;
  }

  MEMORY[0x2530AD570](v174, v167);

  v176 = *(&v400 + 1);
  v175 = v400;
  v400 = v172;

  MEMORY[0x2530AD570](v175, v176);

  v177 = v400;
  v178 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v393 + 16))
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E77E00;
    v179 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v179);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v181 = *(&v399[0] + 1);
    v180 = *&v399[0];
  }

  else
  {
    v180 = 0;
    v181 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v180, v181);

  v182 = v400;
  v400 = v177;

  MEMORY[0x2530AD570](v182, *(&v182 + 1));

  v183 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v394 + 16))
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E77E20;
    v184 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v184);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v178 = *(&v399[0] + 1);
    v185 = *&v399[0];
  }

  else
  {
    v185 = 0;
  }

  MEMORY[0x2530AD570](v185, v178);

  v187 = *(&v400 + 1);
  v186 = v400;
  v400 = v183;

  MEMORY[0x2530AD570](v186, v187);

  v188 = v400;
  v189 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v395 + 16))
  {
    strcpy(v399, "    services: ");
    HIBYTE(v399[0]) = -18;
    v190 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v190);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v192 = *(&v399[0] + 1);
    v191 = *&v399[0];
  }

  else
  {
    v191 = 0;
    v192 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v191, v192);

  v193 = v400;
  v400 = v188;

  MEMORY[0x2530AD570](v193, *(&v193 + 1));

  v194 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v12 + 16))
  {
    strcpy(v399, "    states: ");
    BYTE13(v399[0]) = 0;
    HIWORD(v399[0]) = -5120;
    v195 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v195);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v189 = *(&v399[0] + 1);
    v196 = *&v399[0];
  }

  else
  {
    v196 = 0;
  }

  MEMORY[0x2530AD570](v196, v189);

  v198 = *(&v400 + 1);
  v197 = v400;
  v400 = v194;

  MEMORY[0x2530AD570](v197, v198);

  v199 = v400;
  v200 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v396 + 16))
  {
    strcpy(v399, "    tagSets: ");
    HIWORD(v399[0]) = -4864;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540990, &qword_252E3DF50);
    v202 = MEMORY[0x2530AD730](v396, v201);
    MEMORY[0x2530AD570](v202);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v204 = *(&v399[0] + 1);
    v203 = *&v399[0];
  }

  else
  {
    v203 = 0;
    v204 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v203, v204);

  v205 = v400;
  v400 = v199;

  MEMORY[0x2530AD570](v205, *(&v205 + 1));

  v206 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v11 + 16))
  {
    *&v399[0] = 0xD000000000000010;
    *(&v399[0] + 1) = 0x8000000252E77E40;
    v207 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v207);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v200 = *(&v399[0] + 1);
    v208 = *&v399[0];
  }

  else
  {
    v208 = 0;
  }

  MEMORY[0x2530AD570](v208, v200);

  v210 = *(&v400 + 1);
  v209 = v400;
  v400 = v206;

  MEMORY[0x2530AD570](v209, v210);

  v211 = v400;
  v212 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v480)
  {
    v213 = 0;
    v214 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    trigger: ");
    HIWORD(v399[0]) = -4864;
    LOBYTE(v467) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B18, &qword_252E48120);
    v215 = sub_252E36F94();
    MEMORY[0x2530AD570](v215);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v214 = *(&v399[0] + 1);
    v213 = *&v399[0];
  }

  MEMORY[0x2530AD570](v213, v214);

  v216 = v400;
  v400 = v211;

  MEMORY[0x2530AD570](v216, *(&v216 + 1));

  v217 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v13 + 16))
  {
    strcpy(v399, "    units: ");
    HIDWORD(v399[0]) = -352321536;
    v218 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v218);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v212 = *(&v399[0] + 1);
    v219 = *&v399[0];
  }

  else
  {
    v219 = 0;
  }

  MEMORY[0x2530AD570](v219, v212);

  v221 = *(&v400 + 1);
  v220 = v400;
  v400 = v217;

  MEMORY[0x2530AD570](v220, v221);

  v222 = v400;
  v223 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v360 == 9)
  {
    v224 = 0;
    v225 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    verb: ");
    BYTE11(v399[0]) = 0;
    HIDWORD(v399[0]) = -369098752;
    LOBYTE(v467) = v360;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B10, &qword_252E48118);
    v226 = sub_252E36F94();
    MEMORY[0x2530AD570](v226);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v225 = *(&v399[0] + 1);
    v224 = *&v399[0];
  }

  MEMORY[0x2530AD570](v224, v225);

  v227 = v400;
  v400 = v222;

  MEMORY[0x2530AD570](v227, *(&v227 + 1));

  v228 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v361 + 16))
  {
    strcpy(v399, "    zones: ");
    HIDWORD(v399[0]) = -352321536;
    v229 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v229);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v223 = *(&v399[0] + 1);
    v230 = *&v399[0];
  }

  else
  {
    v230 = 0;
  }

  MEMORY[0x2530AD570](v230, v223);

  v231 = v400;
  v400 = v228;

  MEMORY[0x2530AD570](v231, *(&v231 + 1));

  v232 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  v233 = v362;
  if (v362)
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E78120;
    *&v467 = v354;
    *(&v467 + 1) = v362;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v234 = sub_252E36F94();
    MEMORY[0x2530AD570](v234);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v235 = *(&v399[0] + 1);
    v233 = *&v399[0];
  }

  else
  {
    v235 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v233, v235);

  v236 = v400;
  v400 = v232;

  MEMORY[0x2530AD570](v236, *(&v236 + 1));

  v237 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v363)
  {
    *&v399[0] = 0xD00000000000001CLL;
    *(&v399[0] + 1) = 0x8000000252E78100;
    *&v467 = v355;
    *(&v467 + 1) = v363;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v238 = sub_252E36F94();
    MEMORY[0x2530AD570](v238);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
  }

  MEMORY[0x2530AD570]();

  v240 = *(&v400 + 1);
  v239 = v400;
  v400 = v237;

  MEMORY[0x2530AD570](v239, v240);

  v241 = v400;
  v242 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v364)
  {
    if (v364 >> 62)
    {
      v243 = sub_252E378C4();
      if (v243)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v243 = *((v364 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v243)
      {
LABEL_116:
        *&v399[0] = 0xD000000000000020;
        *(&v399[0] + 1) = 0x8000000252E780D0;
        *&v467 = v364;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
        v244 = sub_252E36F94();
        MEMORY[0x2530AD570](v244);

        MEMORY[0x2530AD570](2604, 0xE200000000000000);
        v245 = *(&v399[0] + 1);
        v243 = *&v399[0];
        goto LABEL_119;
      }
    }
  }

  else
  {
    v243 = 0;
  }

  v245 = 0xE000000000000000;
LABEL_119:
  MEMORY[0x2530AD570](v243, v245);

  v246 = v400;
  v400 = v241;

  MEMORY[0x2530AD570](v246, *(&v246 + 1));

  v247 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v365)
  {
    if (!(v365 >> 62))
    {
      v248 = *((v365 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v248)
      {
        goto LABEL_124;
      }

      goto LABEL_122;
    }

    v248 = sub_252E378C4();
    if (v248)
    {
LABEL_122:
      *&v399[0] = 0xD00000000000001ELL;
      *(&v399[0] + 1) = 0x8000000252E780B0;
      *&v467 = v365;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
      v249 = sub_252E36F94();
      MEMORY[0x2530AD570](v249);

      MEMORY[0x2530AD570](2604, 0xE200000000000000);
      v242 = *(&v399[0] + 1);
      v248 = *&v399[0];
    }
  }

  else
  {
    v248 = 0;
  }

LABEL_124:
  MEMORY[0x2530AD570](v248, v242);

  v251 = *(&v400 + 1);
  v250 = v400;
  v400 = v247;

  MEMORY[0x2530AD570](v250, v251);

  v252 = v400;
  v253 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v33 == 22)
  {
    v254 = 0;
    v255 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD00000000000001DLL;
    *(&v399[0] + 1) = 0x8000000252E78090;
    LOBYTE(v467) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B08, &qword_252E48110);
    v256 = sub_252E36F94();
    MEMORY[0x2530AD570](v256);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v255 = *(&v399[0] + 1);
    v254 = *&v399[0];
  }

  MEMORY[0x2530AD570](v254, v255);

  v257 = v400;
  v400 = v252;

  MEMORY[0x2530AD570](v257, *(&v257 + 1));

  v258 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v366 + 16))
  {
    *&v399[0] = 0xD000000000000018;
    *(&v399[0] + 1) = 0x8000000252E77E60;
    v259 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v259);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v253 = *(&v399[0] + 1);
    v260 = *&v399[0];
  }

  else
  {
    v260 = 0;
  }

  MEMORY[0x2530AD570](v260, v253);

  v262 = *(&v400 + 1);
  v261 = v400;
  v400 = v258;

  MEMORY[0x2530AD570](v261, v262);

  v263 = v400;
  v264 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v367 + 16))
  {
    *&v399[0] = 0xD000000000000018;
    *(&v399[0] + 1) = 0x8000000252E77E80;
    v265 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v265);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v267 = *(&v399[0] + 1);
    v266 = *&v399[0];
  }

  else
  {
    v266 = 0;
    v267 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v266, v267);

  v268 = v400;
  v400 = v263;

  MEMORY[0x2530AD570](v268, *(&v268 + 1));

  v269 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v368 + 16))
  {
    *&v399[0] = 0xD000000000000014;
    *(&v399[0] + 1) = 0x8000000252E77EA0;
    v270 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v270);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v264 = *(&v399[0] + 1);
    v271 = *&v399[0];
  }

  else
  {
    v271 = 0;
  }

  MEMORY[0x2530AD570](v271, v264);

  v273 = *(&v400 + 1);
  v272 = v400;
  v400 = v269;

  MEMORY[0x2530AD570](v272, v273);

  v274 = v400;
  v275 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v369 + 16))
  {
    *&v399[0] = 0xD000000000000016;
    *(&v399[0] + 1) = 0x8000000252E77EC0;
    v276 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v276);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v278 = *(&v399[0] + 1);
    v277 = *&v399[0];
  }

  else
  {
    v277 = 0;
    v278 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v277, v278);

  v279 = v400;
  v400 = v274;

  MEMORY[0x2530AD570](v279, *(&v279 + 1));

  v280 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v370 + 16))
  {
    *&v399[0] = 0xD000000000000016;
    *(&v399[0] + 1) = 0x8000000252E77EE0;
    v281 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v281);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v275 = *(&v399[0] + 1);
    v282 = *&v399[0];
  }

  else
  {
    v282 = 0;
  }

  MEMORY[0x2530AD570](v282, v275);

  v284 = *(&v400 + 1);
  v283 = v400;
  v400 = v280;

  MEMORY[0x2530AD570](v283, v284);

  v285 = v400;
  v286 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0xD000000000000013;
  *(&v399[0] + 1) = 0x8000000252E77F00;
  if (v477)
  {
    v287 = 1702195828;
  }

  else
  {
    v287 = 0x65736C6166;
  }

  if (v477)
  {
    v288 = 0xE400000000000000;
  }

  else
  {
    v288 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v287, v288);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v289 = v400;
  v400 = v285;

  MEMORY[0x2530AD570](v289, *(&v289 + 1));

  v290 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0xD000000000000020;
  *(&v399[0] + 1) = 0x8000000252E77F20;
  if (v476)
  {
    v291 = 1702195828;
  }

  else
  {
    v291 = 0x65736C6166;
  }

  if (v476)
  {
    v292 = 0xE400000000000000;
  }

  else
  {
    v292 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v291, v292);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v293 = v400;
  v400 = v290;

  MEMORY[0x2530AD570](v293, *(&v293 + 1));

  v294 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v399[0] = 0xD000000000000012;
  *(&v399[0] + 1) = 0x8000000252E77F50;
  if (v478)
  {
    v295 = 1702195828;
  }

  else
  {
    v295 = 0x65736C6166;
  }

  if (v478)
  {
    v296 = 0xE400000000000000;
  }

  else
  {
    v296 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v295, v296);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v297 = v400;
  v400 = v294;

  MEMORY[0x2530AD570](v297, *(&v297 + 1));

  v298 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v399[0] = 0xD000000000000015;
  *(&v399[0] + 1) = 0x8000000252E77F70;
  if (v475)
  {
    v299 = 1702195828;
  }

  else
  {
    v299 = 0x65736C6166;
  }

  if (v475)
  {
    v300 = 0xE400000000000000;
  }

  else
  {
    v300 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v299, v300);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v301 = v400;
  v400 = v298;

  MEMORY[0x2530AD570](v301, *(&v301 + 1));

  v302 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v371 == 2)
  {
    v303 = 0;
    v304 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000015;
    *(&v399[0] + 1) = 0x8000000252E78070;
    LOBYTE(v467) = v371;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    v305 = sub_252E36F94();
    MEMORY[0x2530AD570](v305);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v304 = *(&v399[0] + 1);
    v303 = *&v399[0];
  }

  MEMORY[0x2530AD570](v303, v304);

  v306 = v400;
  v400 = v302;

  MEMORY[0x2530AD570](v306, *(&v306 + 1));

  v307 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v400 = 0xD000000000000014;
  *(&v400 + 1) = 0x8000000252E77F90;
  *&v399[0] = v372;
  v308 = sub_252E37D94();
  MEMORY[0x2530AD570](v308);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  v309 = v400;
  v400 = v307;

  MEMORY[0x2530AD570](v309, *(&v309 + 1));

  v310 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v397 + 16))
  {
    strcpy(v399, "    flags: ");
    HIDWORD(v399[0]) = -352321536;
    v311 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v311);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v286 = *(&v399[0] + 1);
    v312 = *&v399[0];
  }

  else
  {
    v312 = 0;
  }

  MEMORY[0x2530AD570](v312, v286);

  v313 = v400;
  v400 = v310;

  MEMORY[0x2530AD570](v313, *(&v313 + 1));

  v314 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v373 >> 62)
  {
    v315 = sub_252E378C4();
    v316 = 0xE000000000000000;
    if (v315)
    {
      goto LABEL_174;
    }
  }

  else
  {
    v315 = *((v373 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v316 = 0xE000000000000000;
    if (v315)
    {
LABEL_174:
      *&v399[0] = 0;
      *(&v399[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v399[0] = 0xD000000000000012;
      *(&v399[0] + 1) = 0x8000000252E77FB0;
      v317 = type metadata accessor for Entity();
      v318 = MEMORY[0x2530AD730](v373, v317);
      MEMORY[0x2530AD570](v318);

      MEMORY[0x2530AD570](2604, 0xE200000000000000);
      v319 = *(&v399[0] + 1);
      v315 = *&v399[0];
      goto LABEL_177;
    }
  }

  v319 = 0xE000000000000000;
LABEL_177:
  MEMORY[0x2530AD570](v315, v319);

  v320 = v400;
  v400 = v314;

  MEMORY[0x2530AD570](v320, *(&v320 + 1));

  v321 = v400;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  if (sub_252C5CF44())
  {
    v322 = 0;
  }

  else
  {
    *&v400 = 0;
    *(&v400 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v467 = v400;
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E77FD0);
    v402 = v470;
    v403 = v471;
    v404 = v472;
    v405 = v473;
    v400 = v468;
    v401 = v469;
    sub_252E37AE4();
    MEMORY[0x2530AD570](663596, 0xE300000000000000);
    v316 = *(&v467 + 1);
    v322 = v467;
  }

  MEMORY[0x2530AD570](v322, v316);

  v324 = *(&v399[0] + 1);
  v323 = *&v399[0];
  v400 = v321;

  MEMORY[0x2530AD570](v323, v324);

  v325 = v400;
  v326 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v374 + 16))
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD00000000000001CLL;
    *(&v399[0] + 1) = 0x8000000252E77FF0;
    sub_252ABC210();
    v327 = sub_252E373B4();
    MEMORY[0x2530AD570](v327);

    MEMORY[0x2530AD570](663596, 0xE300000000000000);
    v329 = *(&v399[0] + 1);
    v328 = *&v399[0];
  }

  else
  {
    v328 = 0;
    v329 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v328, v329);

  v330 = v400;
  v400 = v325;

  MEMORY[0x2530AD570](v330, *(&v330 + 1));

  v331 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v474)
  {
    v332 = 0xD00000000000001FLL;
  }

  else
  {
    v332 = 0;
  }

  if (v474)
  {
    v333 = 0x8000000252E78050;
  }

  else
  {
    v333 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v332, v333);

  v334 = v400;
  v400 = v331;

  MEMORY[0x2530AD570](v334, *(&v334 + 1));

  v335 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v34)
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    v336 = v34;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E78030;
    *&v467 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B00, &unk_252E48100);
    v337 = sub_252E36F94();
    MEMORY[0x2530AD570](v337);

    MEMORY[0x2530AD570](663596, 0xE300000000000000);
    v326 = *(&v399[0] + 1);
    v338 = *&v399[0];
  }

  else
  {
    v338 = 0;
  }

  MEMORY[0x2530AD570](v338, v326);

  v340 = *(&v400 + 1);
  v339 = v400;
  v400 = v335;

  MEMORY[0x2530AD570](v339, v340);

  v341 = v400;
  v342 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  v343 = *(v398 + 16);
  if (v343)
  {
    v344 = 0xD000000000000014;
  }

  else
  {
    v344 = 0;
  }

  if (v343)
  {
    v345 = 0x8000000252E78010;
  }

  else
  {
    v345 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v344, v345);

  v346 = v400;
  v400 = v341;

  MEMORY[0x2530AD570](v346, *(&v346 + 1));

  v347 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v343)
  {
    v348 = MEMORY[0x2530AD730](v398, &type metadata for HomeAutomationIntent);
    v342 = v349;
  }

  else
  {
    v348 = 0;
  }

  MEMORY[0x2530AD570](v348, v342);

  v350 = v400;
  v400 = v347;

  MEMORY[0x2530AD570](v350, *(&v350 + 1));

  MEMORY[0x2530AD570](32010, 0xE200000000000000);

  return v400;
}

uint64_t HomeAutomationIntent.hashValue.getter()
{
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v1);
  return sub_252E37F14();
}

HomeAutomationInternal::HomeAutomationIntent::Verb_optional __swiftcall HomeAutomationIntent.Verb.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252AB8974()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3D9C();
  return sub_252E37F14();
}

uint64_t sub_252AB89C4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3D9C();
  return sub_252E37F14();
}

unint64_t sub_252AB8A14@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationIntent.Verb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_252AB8B00()
{
  v1 = *v0;
  v2 = 0x76697463656A626FLL;
  v3 = 0x797469746E65;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 1954047342;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7669736573736F70;
  if (v1 != 1)
  {
    v5 = 0x69736F507473696CLL;
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

uint64_t sub_252AB8BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252ABF240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252AB8C10(uint64_t a1)
{
  v2 = sub_252ABD2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8C4C(uint64_t a1)
{
  v2 = sub_252ABD2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8C94(uint64_t a1)
{
  v2 = sub_252ABD3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8CD0(uint64_t a1)
{
  v2 = sub_252ABD3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252AB8D98(uint64_t a1)
{
  v2 = sub_252ABD49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8DD4(uint64_t a1)
{
  v2 = sub_252ABD49C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8E10(uint64_t a1)
{
  v2 = sub_252ABD34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8E4C(uint64_t a1)
{
  v2 = sub_252ABD34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8E88(uint64_t a1)
{
  v2 = sub_252ABD3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8EC4(uint64_t a1)
{
  v2 = sub_252ABD3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8F00(uint64_t a1)
{
  v2 = sub_252ABD448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8F3C(uint64_t a1)
{
  v2 = sub_252ABD448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8F78(uint64_t a1)
{
  v2 = sub_252ABD544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8FB4(uint64_t a1)
{
  v2 = sub_252ABD544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8FF0(uint64_t a1)
{
  v2 = sub_252ABD4F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB902C(uint64_t a1)
{
  v2 = sub_252ABD4F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationIntent.ReferenceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B70, &qword_252E48180);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B78, &qword_252E48188);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B80, &qword_252E48190);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B88, &qword_252E48198);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B90, &qword_252E481A0);
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B98, &qword_252E481A8);
  v49 = *(v20 - 8);
  v50 = v20;
  v21 = *(v49 + 64);
  MEMORY[0x28223BE20](v20);
  v48 = &v45 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BA0, &qword_252E481B0);
  v46 = *(v23 - 8);
  v47 = v23;
  v24 = *(v46 + 64);
  MEMORY[0x28223BE20](v23);
  v45 = &v45 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BA8, &qword_252E481B8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v45 - v29;
  v31 = *v2;
  v32 = *(v2 + 8);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ABD2F8();
  sub_252E37F84();
  if (v32 == 1)
  {
    v34 = (v27 + 8);
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v69 = 4;
        sub_252ABD3F4();
        v41 = v54;
        sub_252E37C84();
        v43 = v55;
        v42 = v56;
      }

      else if (v31 == 4)
      {
        v70 = 5;
        sub_252ABD3A0();
        v41 = v57;
        sub_252E37C84();
        v43 = v58;
        v42 = v59;
      }

      else
      {
        v71 = 6;
        sub_252ABD34C();
        v41 = v60;
        sub_252E37C84();
        v43 = v61;
        v42 = v62;
      }

      (*(v43 + 8))(v41, v42);
      return (*v34)(v30, v26);
    }

    else
    {
      v35 = v30;
      if (v31)
      {
        if (v31 == 1)
        {
          v66 = 1;
          sub_252ABD4F0();
          v36 = v48;
          sub_252E37C84();
          v38 = v49;
          v37 = v50;
        }

        else
        {
          v68 = 3;
          sub_252ABD448();
          v36 = v51;
          sub_252E37C84();
          v38 = v52;
          v37 = v53;
        }

        (*(v38 + 8))(v36, v37);
      }

      else
      {
        v65 = 0;
        sub_252ABD544();
        v44 = v45;
        sub_252E37C84();
        (*(v46 + 8))(v44, v47);
      }

      return (*v34)(v35, v26);
    }
  }

  else
  {
    v67 = 2;
    sub_252ABD49C();
    sub_252E37C84();
    v39 = v64;
    sub_252E37D34();
    (*(v63 + 8))(v19, v39);
    return (*(v27 + 8))(v30, v26);
  }
}

uint64_t HomeAutomationIntent.ReferenceType.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t HomeAutomationIntent.ReferenceType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252E37EC4();
  if (v2)
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t HomeAutomationIntent.ReferenceType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BF0, &qword_252E481C0);
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v88 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BF8, &qword_252E481C8);
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v84 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C00, &qword_252E481D0);
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v87 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C08, &qword_252E481D8);
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = &v66 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C10, &qword_252E481E0);
  v74 = *(v71 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v86 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C18, &qword_252E481E8);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C20, &qword_252E481F0);
  v70 = *(v23 - 8);
  v24 = *(v70 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C28, &qword_252E481F8);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v66 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_252ABD2F8();
  v34 = v90;
  sub_252E37F74();
  if (!v34)
  {
    v67 = v23;
    v68 = v22;
    v36 = v86;
    v35 = v87;
    v37 = v88;
    v69 = v28;
    v90 = v27;
    v38 = sub_252E37C74();
    if (*(v38 + 16) == 1)
    {
      v39 = *(v38 + 32);
      if (v39 != 7)
      {
        if (*(v38 + 32) > 2u)
        {
          if (*(v38 + 32) > 4u)
          {
            v40 = v85;
            v54 = v90;
            if (v39 == 5)
            {
              v96 = 5;
              sub_252ABD3A0();
              v55 = v84;
              sub_252E37B84();
              v56 = v69;
              (*(v79 + 8))(v55, v80);
              (*(v56 + 8))(v31, v54);
              swift_unknownObjectRelease();
              v44 = 1;
              v45 = 4;
            }

            else
            {
              v97 = 6;
              sub_252ABD34C();
              v61 = v37;
              sub_252E37B84();
              v62 = v69;
              (*(v81 + 8))(v61, v82);
              (*(v62 + 8))(v31, v54);
              swift_unknownObjectRelease();
              v44 = 1;
              v45 = 5;
            }
          }

          else
          {
            v40 = v85;
            v41 = v90;
            if (v39 == 3)
            {
              v94 = 3;
              sub_252ABD448();
              v42 = v83;
              sub_252E37B84();
              v43 = v69;
              (*(v76 + 8))(v42, v75);
              (*(v43 + 8))(v31, v41);
              swift_unknownObjectRelease();
              v44 = 1;
              v45 = 2;
            }

            else
            {
              v95 = 4;
              sub_252ABD3F4();
              sub_252E37B84();
              v60 = v69;
              (*(v78 + 8))(v35, v77);
              (*(v60 + 8))(v31, v41);
              swift_unknownObjectRelease();
              v44 = 1;
              v45 = 3;
            }
          }

          v65 = v89;
          goto LABEL_22;
        }

        if (*(v38 + 32))
        {
          if (v39 != 1)
          {
            v93 = 2;
            sub_252ABD49C();
            v58 = v36;
            v59 = v90;
            sub_252E37B84();
            v64 = v71;
            v45 = sub_252E37C44();
            (*(v74 + 8))(v58, v64);
            (*(v69 + 8))(v31, v59);
            swift_unknownObjectRelease();
            v65 = v89;
            v44 = 0;
            v40 = v85;
LABEL_22:
            *v40 = v45;
            *(v40 + 8) = v44;
            return __swift_destroy_boxed_opaque_existential_1(v65);
          }

          v92 = 1;
          sub_252ABD4F0();
          v51 = v68;
          v52 = v31;
          v53 = v90;
          sub_252E37B84();
          (*(v72 + 8))(v51, v73);
          (*(v69 + 8))(v52, v53);
          swift_unknownObjectRelease();
          v45 = 1;
        }

        else
        {
          v91 = 0;
          sub_252ABD544();
          v57 = v90;
          sub_252E37B84();
          (*(v70 + 8))(v26, v67);
          (*(v69 + 8))(v31, v57);
          swift_unknownObjectRelease();
          v45 = 0;
        }

        v44 = 1;
        v65 = v89;
        v40 = v85;
        goto LABEL_22;
      }
    }

    v46 = sub_252E37A74();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C30, &qword_252E48200) + 48);
    *v48 = &type metadata for HomeAutomationIntent.ReferenceType;
    v50 = v90;
    sub_252E37B94();
    sub_252E37A64();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    (*(v69 + 8))(v31, v50);
    swift_unknownObjectRelease();
  }

  v65 = v89;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_252ABA29C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252ABA2D8()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252ABA328()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252E37EC4();
  if (v2)
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

HomeAutomationInternal::HomeAutomationIntent::HomeIntentFlag_optional __swiftcall HomeAutomationIntent.HomeIntentFlag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HomeAutomationIntent.HomeIntentFlag.rawValue.getter()
{
  result = 0x48746E6572727563;
  switch(*v0)
  {
    case 1:
      result = 0x6C706552726F6F64;
      break;
    case 2:
      result = 0x4966664F6E727574;
      break;
    case 3:
      result = 0x7972616D697270;
      break;
    case 4:
      result = 0x656372756F73;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x45656C6946636F76;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x636E657265666572;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x6465766C6F736572;
      break;
    case 0xC:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252ABA634@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationIntent.HomeIntentFlag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HomeAutomationInternal::HomeAutomationIntent::ListPositionDefinedValues_optional __swiftcall HomeAutomationIntent.ListPositionDefinedValues.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == -100)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 50)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t HomeAutomationIntent.ListPositionDefinedValues.rawValue.getter()
{
  if (*v0)
  {
    return -100;
  }

  else
  {
    return 50;
  }
}

uint64_t sub_252ABA740()
{
  v1 = *v0;
  sub_252E37EC4();
  if (v1)
  {
    v2 = -100;
  }

  else
  {
    v2 = 50;
  }

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

uint64_t sub_252ABA794()
{
  if (*v0)
  {
    v1 = -100;
  }

  else
  {
    v1 = 50;
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252ABA7D0()
{
  v1 = *v0;
  sub_252E37EC4();
  if (v1)
  {
    v2 = -100;
  }

  else
  {
    v2 = 50;
  }

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

void *sub_252ABA820@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == -100)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 50)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_252ABA840(uint64_t *a1@<X8>)
{
  v2 = 50;
  if (*v1)
  {
    v2 = -100;
  }

  *a1 = v2;
}

HomeAutomationInternal::HomeAutomationIntent::UsoTaskType_optional __swiftcall HomeAutomationIntent.UsoTaskType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
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
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t HomeAutomationIntent.UsoTaskType.rawValue.getter()
{
  result = 0x4E6F7355706F7473;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 4:
    case 0xA:
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 5:
    case 6:
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 7:
    case 0xB:
    case 0xF:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 9:
      result = 0xD000000000000022;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0x11:
    case 0x15:
      result = 0xD000000000000019;
      break;
    case 0x13:
      result = 0xD000000000000011;
      break;
    case 0x14:
      return result;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_252ABABC8(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252ABAC88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_252E37EC4();
  a3(v6);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252ABAD10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_252E37044();
}

uint64_t sub_252ABAD90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_252E37EC4();
  a4(v7);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252ABAE08@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationIntent.UsoTaskType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void HomeAutomationIntent.hash(into:)(__int128 *a1)
{
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v195 = *(v228 - 8);
  v3 = *(v195 + 64);
  MEMORY[0x28223BE20](v228);
  v194 = &v158 - v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  v162 = *(v1 + 10);
  v163 = v1[2];
  LODWORD(v4) = *(v1 + 25);
  v164 = *(v1 + 24);
  v165 = v4;
  v8 = *(v1 + 26);
  v166 = v1[4];
  v9 = *(v1 + 40);
  v10 = v1[7];
  v227 = v1[6];
  v168 = v10;
  v169 = *(v1 + 64);
  v11 = v1[10];
  v170 = v1[9];
  v171 = v11;
  v12 = v1[12];
  v172 = v1[11];
  v173 = v12;
  v13 = v1[14];
  v174 = v1[13];
  v175 = v13;
  v14 = v1[16];
  v176 = v1[15];
  v177 = v14;
  v15 = v1[18];
  v178 = v1[17];
  v179 = v15;
  v16 = v1[20];
  v180 = v1[19];
  v181 = v16;
  v17 = v1[22];
  v182 = v1[21];
  v183 = v17;
  v18 = v1[24];
  v184 = v1[23];
  v185 = v18;
  v19 = v1[25];
  LODWORD(v18) = *(v1 + 209);
  v186 = *(v1 + 208);
  v187 = v18;
  v20 = v1[28];
  v188 = v1[27];
  v189 = v20;
  v167 = *(v1 + 232);
  v21 = v1[30];
  v23 = v1[32];
  v22 = v1[33];
  v190 = v1[31];
  v191 = v23;
  v160 = v21;
  v161 = v22;
  v24 = v1[35];
  v192 = v1[34];
  v159 = v24;
  HIDWORD(v158) = *(v1 + 288);
  v193 = *(v1 + 289);
  v25 = v1[38];
  v196 = v1[37];
  v197 = v25;
  v198 = *(v1 + 312);
  v26 = v1[41];
  v199 = v1[40];
  v200 = v26;
  v27 = v1[43];
  v201 = v1[42];
  v202 = v27;
  v28 = v1[45];
  v203 = v1[44];
  v204 = v28;
  v29 = v1[47];
  v205 = v1[46];
  v206 = v29;
  v207 = *(v1 + 384);
  v208 = *(v1 + 385);
  v209 = *(v1 + 386);
  v210 = *(v1 + 387);
  v211 = *(v1 + 388);
  v212 = *(v1 + 389);
  v30 = v1[50];
  v213 = v1[49];
  v214 = v30;
  v31 = v1[52];
  v215 = v1[51];
  v216 = v31;
  v32 = v1[54];
  v217 = v1[53];
  v218 = v32;
  v33 = v1[56];
  v219 = v1[55];
  v220 = v33;
  v34 = v1[58];
  v221 = v1[57];
  v222 = v34;
  v35 = v1[60];
  v223 = v1[59];
  v224 = v35;
  v36 = v1[62];
  v225 = v1[61];
  v226 = v36;
  MEMORY[0x2530AE390](*(v5 + 16));
  v37 = *(v5 + 16);
  if (v37)
  {
    v38 = (v5 + 32);
    do
    {
      memcpy(v229, v38, sizeof(v229));
      memcpy(v231, v38, sizeof(v231));
      sub_2529353AC(v229, v230);
      HomeAutomationIntent.hash(into:)(a1);
      memcpy(v230, v231, sizeof(v230));
      sub_252935408(v230);
      v38 += 504;
      --v37;
    }

    while (v37);
  }

  sub_252E37EE4();
  if (v6 == 3)
  {
    v39 = v19;
    v40 = v9;
  }

  else
  {
    v40 = v9;
    sub_252E37044();

    v39 = v19;
  }

  v41 = v8;
  if (v7 == 3)
  {
    sub_252E37EE4();
    v42 = v167;
    v43 = v163;
    if ((v162 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_252E37EE4();
    v44 = v186;
    if (v43)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_252E37EE4();
  v43 = v163;
  sub_252E37044();

  v42 = v167;
  if (v162)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_252E37EE4();
  sub_252E37044();
  v44 = v186;
  if (v43)
  {
LABEL_10:
    v231[0] = v43;
    sub_252E37EE4();
    sub_252E35DD4();
    sub_252ABF5E8(&qword_27F542C38, MEMORY[0x277D56498]);
    sub_252E36E94();
    goto LABEL_14;
  }

LABEL_13:
  sub_252E37EE4();
LABEL_14:
  v45 = v227;
  v46 = v165;
  if (v164 == 2)
  {
    sub_252E37EE4();
    if (v46 != 3)
    {
LABEL_16:
      sub_252E37EE4();
      sub_252E37044();

      if (v41 == 4)
      {
        goto LABEL_21;
      }

LABEL_19:
      sub_252E37EE4();
      sub_252E37044();

      goto LABEL_22;
    }
  }

  else
  {
    sub_252E37EE4();
    v45 = v227;
    sub_252E37044();

    if (v46 != 3)
    {
      goto LABEL_16;
    }
  }

  sub_252E37EE4();
  if (v41 != 4)
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_252E37EE4();
LABEL_22:
  sub_252ABCE88(a1, v166);
  sub_252E37EE4();
  if (v40 != 4)
  {
    sub_252E37044();
  }

  MEMORY[0x2530AE390](*(v45 + 16));
  v47 = *(v45 + 16);
  if (v47)
  {
    v48 = (v45 + 40);
    do
    {
      v49 = *(v48 - 1);
      v50 = *v48;

      sub_252E37044();

      v48 += 2;
      --v47;
    }

    while (v47);
  }

  sub_252ABCE04(a1, v168);
  if (v169 == 4)
  {
    sub_252E37EE4();
    v51 = v170;
  }

  else
  {
    sub_252E37EE4();
    v51 = v170;
    sub_252E37044();
  }

  MEMORY[0x2530AE390](*(v51 + 16));
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = (v51 + 40);
    do
    {
      v54 = *(v53 - 1);
      v55 = *v53;

      sub_252E37044();

      v53 += 2;
      --v52;
    }

    while (v52);
  }

  sub_252ABCD70(a1, v171, AttributeSemantic.rawValue.getter);
  sub_252ABCAD8(a1, v172);
  v56 = v173;
  MEMORY[0x2530AE390](*(v173 + 16));
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = (v56 + 32);
    do
    {
      v59 = *v58++;

      sub_252ABC420(a1, v59);

      --v57;
    }

    while (v57);
  }

  v60 = v174;
  MEMORY[0x2530AE390](*(v174 + 16));
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = (v60 + 40);
    do
    {
      v63 = *(v62 - 1);
      v64 = *v62;

      sub_252E37044();

      v62 += 2;
      --v61;
    }

    while (v61);
  }

  v65 = v175;
  MEMORY[0x2530AE390](*(v175 + 16));
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = (v65 + 40);
    do
    {
      v68 = *(v67 - 1);
      v69 = *v67;

      sub_252E37044();

      v67 += 2;
      --v66;
    }

    while (v66);
  }

  v70 = v176;
  MEMORY[0x2530AE390](*(v176 + 16));
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = (v70 + 40);
    do
    {
      v73 = *(v72 - 1);
      v74 = *v72;

      sub_252E37044();

      v72 += 2;
      --v71;
    }

    while (v71);
  }

  v75 = v177;
  MEMORY[0x2530AE390](*(v177 + 16));
  v76 = *(v75 + 16);
  if (v76)
  {
    v77 = (v75 + 40);
    do
    {
      v78 = *(v77 - 1);
      v79 = *v77;

      sub_252E37044();

      v77 += 2;
      --v76;
    }

    while (v76);
  }

  sub_252ABCD70(a1, v178, AccessoryTypeSemantic.rawValue.getter);
  sub_252ABCD70(a1, v179, AccessoryTypeSemantic.rawValue.getter);
  v80 = v180;
  MEMORY[0x2530AE390](*(v180 + 16));
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = (v80 + 40);
    do
    {
      v83 = *(v82 - 1);
      v84 = *v82;

      sub_252E37044();

      v82 += 2;
      --v81;
    }

    while (v81);
  }

  v85 = v181;
  MEMORY[0x2530AE390](*(v181 + 16));
  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = (v85 + 40);
    do
    {
      v88 = *(v87 - 1);
      v89 = *v87;

      sub_252E37044();

      v87 += 2;
      --v86;
    }

    while (v86);
  }

  v90 = v182;
  MEMORY[0x2530AE390](*(v182 + 16));
  v91 = *(v90 + 16);
  if (v91)
  {
    v92 = (v90 + 40);
    do
    {
      v93 = *(v92 - 1);
      v94 = *v92;

      sub_252E37044();

      v92 += 2;
      --v91;
    }

    while (v91);
  }

  v95 = v183;
  MEMORY[0x2530AE390](*(v183 + 16));
  v96 = *(v95 + 16);
  if (v96)
  {
    v97 = (v95 + 40);
    do
    {
      v98 = *(v97 - 1);
      v99 = *v97;

      sub_252E37044();

      v97 += 2;
      --v96;
    }

    while (v96);
  }

  v100 = v184;
  MEMORY[0x2530AE390](*(v184 + 16));
  v101 = *(v100 + 16);
  if (v101)
  {
    v102 = (v100 + 40);
    do
    {
      v103 = *(v102 - 1);
      v104 = *v102;

      sub_252E37044();

      v102 += 2;
      --v101;
    }

    while (v101);
  }

  sub_252ABCD70(a1, v185, StateSemantic.rawValue.getter);
  sub_252ABC9D0(a1, v39);
  sub_252E37EE4();
  if (v44 != 9)
  {
    sub_252AB3D9C();
  }

  v106 = v188;
  v105 = v189;
  if (v187 == 2)
  {
    sub_252E37EE4();
  }

  else
  {
    sub_252E37EE4();
    sub_252E37044();
  }

  sub_252ABC934(a1, v106);
  MEMORY[0x2530AE390](*(v105 + 16));
  v107 = *(v105 + 16);
  if (v107)
  {
    v108 = (v105 + 40);
    do
    {
      v109 = *(v108 - 1);
      v110 = *v108;

      sub_252E37044();

      v108 += 2;
      --v107;
    }

    while (v107);
  }

  if (v42)
  {
    sub_252E37EE4();
    v111 = v191;
    if (v190)
    {
LABEL_73:
      sub_252E37EE4();
      sub_252E37044();
      goto LABEL_76;
    }
  }

  else
  {
    sub_252E37EE4();
    sub_252E37044();
    v111 = v191;
    if (v190)
    {
      goto LABEL_73;
    }
  }

  sub_252E37EE4();
LABEL_76:
  MEMORY[0x2530AE390](*(v111 + 16));
  v112 = *(v111 + 16);
  v113 = v228;
  v114 = v194;
  if (v112)
  {
    v115 = *(v195 + 16);
    v116 = v111 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
    v117 = *(v195 + 72);
    v118 = (v195 + 8);
    do
    {
      v115(v114, v116, v113);
      sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80);
      sub_252E36E94();
      v113 = v228;
      (*v118)(v114, v228);
      v116 += v117;
      --v112;
    }

    while (v112);
  }

  if (v192)
  {
    sub_252E37EE4();
    sub_252E37044();
  }

  else
  {
    sub_252E37EE4();
  }

  v119 = v200;
  v120 = v198;
  v122 = v196;
  v121 = v197;
  if (v193)
  {
    sub_252E37EE4();
    if (v122)
    {
      goto LABEL_84;
    }
  }

  else
  {
    sub_252E37EE4();
    if ((v158 & 0x100000000) != 0)
    {
      if (v159 > 2)
      {
        if (v159 == 3)
        {
          v123 = 4;
        }

        else if (v159 == 4)
        {
          v123 = 5;
        }

        else
        {
          v123 = 6;
        }
      }

      else if (v159)
      {
        if (v159 == 1)
        {
          v123 = 1;
        }

        else
        {
          v123 = 3;
        }
      }

      else
      {
        v123 = 0;
      }
    }

    else
    {
      MEMORY[0x2530AE390](2);
      v123 = v159;
    }

    MEMORY[0x2530AE390](v123);
    if (v122)
    {
LABEL_84:
      sub_252E37EE4();
      sub_252ABD13C(a1, v122);
      if (v121)
      {
        goto LABEL_85;
      }

      goto LABEL_102;
    }
  }

  sub_252E37EE4();
  if (v121)
  {
LABEL_85:
    sub_252E37EE4();
    sub_252ABD13C(a1, v121);
    if (v120 == 2)
    {
      goto LABEL_104;
    }

LABEL_103:
    sub_252E37EE4();
    goto LABEL_104;
  }

LABEL_102:
  sub_252E37EE4();
  if (v120 != 2)
  {
    goto LABEL_103;
  }

LABEL_104:
  sub_252E37EE4();
  MEMORY[0x2530AE390](v199);
  MEMORY[0x2530AE390](*(v119 + 16));
  v124 = *(v119 + 16);
  if (v124)
  {
    v125 = (v119 + 40);
    do
    {
      v126 = *(v125 - 1);
      v127 = *v125;

      sub_252E37044();

      v125 += 2;
      --v124;
    }

    while (v124);
  }

  v128 = v201;
  MEMORY[0x2530AE390](*(v201 + 16));
  v129 = *(v128 + 16);
  if (v129)
  {
    v130 = (v128 + 40);
    do
    {
      v131 = *(v130 - 1);
      v132 = *v130;

      sub_252E37044();

      v130 += 2;
      --v129;
    }

    while (v129);
  }

  v133 = v202;
  MEMORY[0x2530AE390](*(v202 + 16));
  v134 = *(v133 + 16);
  if (v134)
  {
    v135 = (v133 + 40);
    do
    {
      v136 = *(v135 - 1);
      v137 = *v135;

      sub_252E37044();

      v135 += 2;
      --v134;
    }

    while (v134);
  }

  v138 = v203;
  MEMORY[0x2530AE390](*(v203 + 16));
  v139 = *(v138 + 16);
  if (v139)
  {
    v140 = (v138 + 40);
    do
    {
      v141 = *(v140 - 1);
      v142 = *v140;

      sub_252E37044();

      v140 += 2;
      --v139;
    }

    while (v139);
  }

  v143 = v204;
  MEMORY[0x2530AE390](*(v204 + 16));
  v144 = *(v143 + 16);
  if (v144)
  {
    v145 = (v143 + 40);
    do
    {
      v146 = *(v145 - 1);
      v147 = *v145;

      sub_252E37044();

      v145 += 2;
      --v144;
    }

    while (v144);
  }

  v148 = v205;
  MEMORY[0x2530AE390](*(v205 + 16));
  v149 = *(v148 + 16);
  if (v149)
  {
    v150 = (v148 + 40);
    do
    {
      v151 = *(v150 - 1);
      v152 = *v150;

      sub_252E37044();

      v150 += 2;
      --v149;
    }

    while (v149);
  }

  sub_252ABC6F8(a1, v206);
  v153 = v207;
  if (v207 == 22)
  {
    sub_252E37EE4();
  }

  else
  {
    sub_252E37EE4();
    LOBYTE(v231[0]) = v153;
    HomeAutomationIntent.UsoTaskType.rawValue.getter();
    sub_252E37044();
  }

  v155 = v225;
  v154 = v226;
  v156 = v224;
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252ABC57C(a1, v213);
  sub_252ABCF68(a1, v214);
  sub_252ABCF68(a1, v215);
  sub_252ABCF68(a1, v216);
  sub_252ABCF68(a1, v217);
  sub_252ABCF68(a1, v218);
  sub_252ABCF68(a1, v219);
  sub_252ABCF68(a1, v220);
  sub_252ABCF68(a1, v221);
  sub_252ABCF68(a1, v222);
  sub_252ABCF68(a1, v223);
  sub_252ABCF68(a1, v156);
  sub_252ABC268(a1, v155);
  sub_252E37EE4();
  if (v154)
  {
    v157 = v154;
    sub_252E376A4();
  }
}

uint64_t sub_252ABC190()
{
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252ABC1D4()
{
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v1);
  return sub_252E37F14();
}

unint64_t sub_252ABC210()
{
  result = qword_27F542AF8;
  if (!qword_27F542AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AF8);
  }

  return result;
}

uint64_t sub_252ABC268(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v32 = a1[2];
  v33 = v3;
  v34 = *(a1 + 8);
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  sub_252E37F14();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v25)
  {
    v12 = i;
LABEL_9:
    v13 = *(a2 + 48) + 152 * (__clz(__rbit64(v7)) | (v12 << 6));
    v14 = *(v13 + 16);
    v7 &= v7 - 1;
    v28[0] = *v13;
    v28[1] = v14;
    v15 = *(v13 + 80);
    v17 = *(v13 + 32);
    v16 = *(v13 + 48);
    v28[4] = *(v13 + 64);
    v28[5] = v15;
    v28[2] = v17;
    v28[3] = v16;
    v19 = *(v13 + 112);
    v18 = *(v13 + 128);
    v20 = *(v13 + 96);
    v29 = *(v13 + 144);
    v28[7] = v19;
    v28[8] = v18;
    v28[6] = v20;
    v21 = *(v13 + 112);
    v26[20] = *(v13 + 96);
    v26[21] = v21;
    v26[22] = *(v13 + 128);
    v27 = *(v13 + 144);
    v22 = *(v13 + 48);
    v26[16] = *(v13 + 32);
    v26[17] = v22;
    v23 = *(v13 + 80);
    v26[18] = *(v13 + 64);
    v26[19] = v23;
    v24 = *(v13 + 16);
    v26[14] = *v13;
    v26[15] = v24;
    sub_252E37EC4();
    sub_25297DE08(v28, v26);
    sub_252A34930();
    v25 = sub_252E37F14();
    result = sub_2529AEC80(v28);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x2530AE390](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252ABC420(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_252E37F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_252E37EC4();

    sub_252E37044();
    v15 = sub_252E37F14();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2530AE390](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252ABC57C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v9 = sub_252E378C4();
    MEMORY[0x2530AE390](v9);
    result = sub_252E378C4();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x2530AE390](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, a2);
      }

      else
      {
        v6 = *(a2 + 8 * v5 + 32);
      }

      ++v5;
      sub_252E32E84();
      sub_252ABF5E8(&qword_27F540680, MEMORY[0x277CC95F0]);
      sub_252E36E94();
      MEMORY[0x2530AE390](*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v7 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v8 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      sub_252E37044();
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_252ABC6F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABC934(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABC9D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCAD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCD70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v5);
  if (v5)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      a3(result);
      sub_252E37044();

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_252ABCE04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      HueSemantic.rawValue.getter();
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCE88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}