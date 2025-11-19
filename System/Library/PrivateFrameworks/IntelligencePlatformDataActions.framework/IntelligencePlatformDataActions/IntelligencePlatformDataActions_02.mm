void __swiftcall SportsAction.getTeamForId(id:shortName:)(IntelligencePlatformDataActions::SportsTeam_optional *__return_ptr retstr, Swift::String id, Swift::String_optional shortName)
{
  object = shortName.value._object;
  countAndFlagsBits = shortName.value._countAndFlagsBits;
  v6 = id._object;
  v7 = id._countAndFlagsBits;
  sub_254FC0048(&qword_27F76CD18, &unk_254FF4710);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_254FF3720;
  v26._countAndFlagsBits = v7;
  v26._object = v6;

  v10 = MEMORY[0x277D837D0];
  v11 = sub_254FF2014();
  v12 = MEMORY[0x277D21228];
  *(v9 + 56) = v10;
  *(v9 + 64) = v12;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v30 = MEMORY[0x277D84F90];
  v25[0] = *v3;
  sub_254FE19CC(&v26);
  v14 = v28._countAndFlagsBits;
  v15 = sub_254FC3908(&v26, v27._object);
  MEMORY[0x28223BE20](v15);
  sub_254FEDD00();
  *(v16 - 16) = &v30;
  (*(v14 + 24))(0xD000000000000079, 0x8000000254FF6070, v9, sub_254FE9B0C);
  sub_254FC49C4(&v26._countAndFlagsBits);

  if (v30[1]._countAndFlagsBits)
  {
    v17 = v30[3];
    v26 = v30[2];
    v27 = v17;
    v18 = v30[5];
    v28 = v30[4];
    v29 = v18;
    sub_254FE9A5C(&v26, v25);

    if (object)
    {
      v19 = v29;
      v20 = v28;
      v21 = v26;

      v22._countAndFlagsBits = countAndFlagsBits;
      v22._object = object;
      SportsTeam.init(id:name:league:imageData:)(retstr, v21, v22, v20, v19);
      sub_254FE9AB8(&v26);
    }

    else
    {
      v23 = v27;
      retstr->value.id = v26;
      retstr->value.name = v23;
      v24 = v29;
      retstr->value.league = v28;
      retstr->value.imageData = v24;
    }
  }

  else
  {

    retstr->value.league = 0u;
    retstr->value.imageData = 0u;
    retstr->value.id = 0u;
    retstr->value.name = 0u;
  }
}

uint64_t sub_254FE5754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_254FF2404();
  sub_254FF2424();
  if (a2)
  {
    sub_254FF1FC4();
  }

  v8 = sub_254FF2434();
  v9 = a3 + 56;
  v10 = -1 << *(a3 + 32);
  v11 = v8 & ~v10;
  if (((*(a3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(a3 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_16:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v16 = *v14 == a1 && v15 == a2;
  if (!v16 && (sub_254FF2364() & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

void sub_254FE587C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      v4 = *v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        sub_254FD2F04(v1);
        v1 = v29;
      }

      v2 = (v2 << 6) - 32;
      v5 = 1;
      v6 = 32;
      do
      {
        if (v5 - 1 != v3)
        {
          v7 = *(v1 + 16);
          if (v5 - 1 >= v7)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          v8 = (v1 + v6);
          v9 = *(v1 + v6);
          v10 = *(v1 + v6 + 16);
          v11 = *(v1 + v6 + 48);
          v32 = *(v1 + v6 + 32);
          v33 = v11;
          v30 = v9;
          v31 = v10;
          if (v3 >= v7)
          {
            goto LABEL_14;
          }

          v12 = (v1 + v2);
          v13 = *(v1 + v2);
          v14 = *(v1 + v2 + 16);
          v15 = *(v1 + v2 + 48);
          v36 = *(v1 + v2 + 32);
          v37 = v15;
          v34 = v13;
          v35 = v14;
          sub_254FE9A5C(&v30, v39);
          sub_254FE9A5C(&v34, v39);
          v16 = *v8;
          v17 = v8[1];
          v18 = v8[3];
          v38[2] = v8[2];
          v38[3] = v18;
          v38[0] = v16;
          v38[1] = v17;
          v19 = v34;
          v20 = v35;
          v21 = v37;
          v8[2] = v36;
          v8[3] = v21;
          *v8 = v19;
          v8[1] = v20;
          sub_254FE9AB8(v38);
          if (v3 >= *(v1 + 16))
          {
            goto LABEL_15;
          }

          v22 = *v12;
          v23 = v12[1];
          v24 = v12[3];
          v39[2] = v12[2];
          v39[3] = v24;
          v39[0] = v22;
          v39[1] = v23;
          v25 = v30;
          v26 = v31;
          v27 = v33;
          v12[2] = v32;
          v12[3] = v27;
          *v12 = v25;
          v12[1] = v26;
          sub_254FE9AB8(v39);
        }

        --v3;
        v2 -= 64;
        v6 += 64;
      }

      while (v5++ < v3);
      *v0 = v1;
    }
  }
}

uint64_t sub_254FE59E0(void (**a1)(char *, void *))
{
  v93 = a1;
  v2 = sub_254FF1744();
  v85 = *(v2 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254FC0048(&qword_27F76CD58, &qword_254FF47B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v90 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v64 - v10;
  v91 = sub_254FF1794();
  v70 = *(v91 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v91);
  v95 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254FF17A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_254FF1C14();
  v89 = *(v84 - 8);
  v16 = *(v89 + 64);
  v17 = MEMORY[0x28223BE20](v84);
  v83 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v64 - v19;
  v87 = sub_254FF1724();
  v76 = *(v87 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_254FF17E4();
  v67 = *(v77 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x28223BE20](v77);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_254FF1CB4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1[1];
  v98 = *v1;
  v30 = v98;
  v99 = v31;
  sub_254FE0A18(v93, v29);
  v96 = v30;
  v97 = v31;
  v32 = v94;
  sub_254FE17D8(&v98);
  if (v32)
  {
    v34 = *(v26 + 8);
    v33 = (v26 + 8);
    v34(v29, v25);
    return v33;
  }

  else
  {
    v66 = v26;
    v75 = v25;
    v35 = v100;
    v36 = v101;
    sub_254FC3908(&v98, v100);
    (*(v36 + 8))(v29, v35, v36);
    v64 = v29;
    v81 = 0;
    sub_254FC49C4(&v98);
    v102 = MEMORY[0x277D84FA0];
    v65 = v24;
    result = sub_254FF17D4();
    v38 = 0;
    v74 = *(result + 16);
    v39 = v76;
    v71 = v76 + 16;
    v80 = (v89 + 8);
    v72 = (v76 + 8);
    v94 = v70 + 16;
    v93 = (v70 + 8);
    LODWORD(v89) = *MEMORY[0x277D38FA0];
    v86 = (v85 + 32);
    v85 += 8;
    v33 = v91;
    v40 = v92;
    v41 = v77;
    for (i = result; ; result = i)
    {
      v42 = v75;
      if (v38 == v74)
      {

        v33 = sub_254FE6474(v102);
        (*(v67 + 8))(v65, v41);
        (*(v66 + 8))(v64, v42);
        return v33;
      }

      if (v38 >= *(result + 16))
      {
        break;
      }

      v43 = result + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v44 = *(v39 + 72);
      v79 = v38;
      (*(v39 + 16))(v88, v43 + v44 * v38, v87);
      sub_254FF1674();
      v45 = v81;
      sub_254FF1BE4();
      v81 = v45;
      if (v45)
      {

        (*v72)(v88, v87);

        (*(v67 + 8))(v65, v41);
        (*(v66 + 8))(v64, v75);
        return v33;
      }

      sub_254FF1C04();
      sub_254FEDC98(&qword_27F76CDC8, MEMORY[0x277D1F200]);
      sub_254FF2024();
      sub_254FF2024();
      if (v98 == v96 && v99 == v97)
      {
        v47 = 1;
      }

      else
      {
        v47 = sub_254FF2364();
      }

      v78 = *v80;
      v78(v83, v84);

      v41 = v77;
      v48 = v87;
      if (v47)
      {
        v49 = sub_254FF16E4();
        v50 = *(v49 + 16);
        if (v50)
        {
          v51 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v68 = v49;
          v52 = v49 + v51;
          v53 = *(v70 + 72);
          v54 = *(v70 + 16);
          do
          {
            v55 = v95;
            v54(v95, v52, v33);
            sub_254FF1784();
            (*v93)(v55, v33);
            v56 = sub_254FF1774();
            if (sub_254FC5364(v40, 1, v56) != 1)
            {
              v57 = v2;
              v58 = v90;
              sub_254FC5770();
              v59 = *(v56 - 8);
              v60 = (*(v59 + 88))(v58, v56);
              if (v60 == v89)
              {
                (*(v59 + 96))(v58, v56);
                v2 = v57;
                (*v86)(v5, v58, v57);
                v61 = sub_254FF1694();
                sub_254FED090(&v98, v61, v62);

                (*v85)(v5, v57);
              }

              else
              {
                (*(v59 + 8))(v58, v56);
                v2 = v57;
              }

              v33 = v91;
              v40 = v92;
            }

            sub_254FC538C(v40, &qword_27F76CD58, &qword_254FF47B0);
            v52 += v53;
            --v50;
          }

          while (v50);

          v41 = v77;
          v48 = v87;
        }

        else
        {
        }
      }

      v63 = v79 + 1;
      v78(v82, v84);
      (*v72)(v88, v48);
      v38 = v63;
      v39 = v76;
    }

    __break(1u);
  }

  return result;
}

void *sub_254FE6474(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_254FC42EC(*(a1 + 16), 0);
  v4 = sub_254FED92C(&v6, v3 + 4, v2, a1);
  sub_254FEDCE0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t SportsAction.getUpcomingGames(team:)(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v8 = *v1;
  sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_254FF3720;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  v6 = sub_254FE65F0(v5);

  if (!v2)
  {
    *&v8 = v6;

    sub_254FEA45C(&v8);

    return v8;
  }

  return result;
}

uint64_t sub_254FE65F0(uint64_t a1)
{
  v189 = sub_254FF1D84();
  v183 = *(v189 - 8);
  v3 = *(v183 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_254FF1614();
  v185 = *(v186 - 8);
  v5 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v184 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254FC0048(&qword_27F76CD38, "B1");
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v178 = (&v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v192 = &v176 - v11;
  v199 = type metadata accessor for SportsAction.CacheEntry();
  v203 = *(v199 - 8);
  v12 = *(v203 + 64);
  v13 = MEMORY[0x28223BE20](v199);
  v15 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v190 = (&v176 - v16);
  v202 = sub_254FC0048(&qword_27F76CD40, "B1");
  v17 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v210 = (&v176 - v18);
  v19 = sub_254FF1EB4();
  v20 = *(v19 - 8);
  v208 = v19;
  v209 = v20;
  isa = v20[8].isa;
  v22 = MEMORY[0x28223BE20](v19);
  v187 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v177 = (&v176 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v181 = &v176 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v180 = &v176 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v179 = &v176 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v195 = &v176 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v182 = &v176 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v207 = &v176 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v176 - v38;
  v40 = v1[1];
  v196 = *v1;
  v197 = v40;
  sub_254FF1D14();
  v41 = sub_254FF1EA4();
  v42 = sub_254FF2164();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v15;
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    if (qword_27F76C7C0 != -1)
    {
      swift_once();
    }

    v45 = off_27F76CD10;
    swift_beginAccess();
    *(v44 + 4) = *(v45[2] + 16);
    _os_log_impl(&dword_254FBD000, v41, v42, "SportsAction: Cache contains %ld items", v44, 0xCu);
    MEMORY[0x259C32150](v44, -1, -1);
    v15 = v43;
  }

  v194 = a1;

  v47 = v209 + 1;
  v46 = v209[1].isa;
  ++v209;
  v206 = v46;
  v46(v39, v208);
  if (qword_27F76C7C0 != -1)
  {
    swift_once();
  }

  v48 = off_27F76CD10;
  swift_beginAccess();
  v193 = v48;
  v49 = v48[2];
  v50 = (v49 + 64);
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 64);
  v54 = (v51 + 63) >> 6;
  v204 = v49;
  swift_bridgeObjectRetain_n();
  v55 = 0;
  *&v56 = 136643075;
  v198 = v56;
  v201 = v50;
  if (v53)
  {
    while (1)
    {
      v57 = v15;
LABEL_15:
      v59 = __clz(__rbit64(v53)) | (v55 << 6);
      v60 = (*(v204 + 48) + 16 * v59);
      v61 = *v60;
      v62 = v60[1];
      v63 = *(v204 + 56) + *(v203 + 72) * v59;
      v64 = *(v202 + 48);
      v65 = v210;
      sub_254FEDB10();
      v205 = v61;
      *v65 = v61;
      v65[1] = v62;

      v66 = v207;
      sub_254FF1D14();
      sub_254FEDB10();

      v47 = sub_254FF1EA4();
      v67 = sub_254FF2164();

      if (os_log_type_enabled(v47, v67))
      {
        v68 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v211 = v200;
        *v68 = v198;
        *(v68 + 4) = sub_254FC4454(v205, v62, &v211);
        *(v68 + 12) = 2080;
        v69 = v57 + *(v199 + 20);
        v70 = sub_254FF1584();
        v72 = v71;
        sub_254FEDB68(v57, type metadata accessor for SportsAction.CacheEntry);
        v73 = sub_254FC4454(v70, v72, &v211);

        *(v68 + 14) = v73;
        _os_log_impl(&dword_254FBD000, v47, v67, "SportsAction: Cache key %{sensitive}s, timestamp: %s", v68, 0x16u);
        v74 = v200;
        swift_arrayDestroy();
        MEMORY[0x259C32150](v74, -1, -1);
        MEMORY[0x259C32150](v68, -1, -1);

        v75 = v207;
      }

      else
      {

        sub_254FEDB68(v57, type metadata accessor for SportsAction.CacheEntry);
        v75 = v66;
      }

      v206(v75, v208);
      v15 = v57;
      v50 = v201;
      v53 &= v53 - 1;
      sub_254FC538C(v210, &qword_27F76CD40, "B1");
      if (!v53)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v58 >= v54)
    {
      break;
    }

    v53 = v50[v58].isa;
    ++v55;
    if (v53)
    {
      v57 = v15;
      v55 = v58;
      goto LABEL_15;
    }
  }

  v76 = v194;
  v211 = v194;

  v77 = v191;
  sub_254FEA3F0(&v211);
  if (!v77)
  {
    sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
    sub_254FC53E4();
    v78 = sub_254FF1F04();
    v80 = v79;

    v81 = v193[2];

    v82 = v192;
    sub_254FC00E4(v81, v192);

    v83 = v199;
    v84 = sub_254FC5364(v82, 1, v199);
    v85 = v196;
    v86 = v197;
    if (v84 == 1)
    {
      v210 = v78;
      sub_254FC538C(v82, &qword_27F76CD38, "B1");
      goto LABEL_28;
    }

    v87 = v190;
    sub_254FEDBC0();
    v88 = v184;
    sub_254FF1604();
    v89 = *(v83 + 20);
    sub_254FF1594();
    v91 = v90;
    (*(v185 + 8))(v88, v186);
    if (v91 < 1800.0)
    {

      v92 = v182;
      sub_254FF1D14();

      v93 = sub_254FF1EA4();
      v94 = sub_254FF2164();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v211 = v96;
        *v95 = 136642819;
        v97 = MEMORY[0x259C31780](v76, MEMORY[0x277D837D0]);
        v99 = sub_254FC4454(v97, v98, &v211);

        *(v95 + 4) = v99;
        _os_log_impl(&dword_254FBD000, v93, v94, "SportsAction: Using cached games for: %{sensitive}s", v95, 0xCu);
        sub_254FC49C4(v96);
        MEMORY[0x259C32150](v96, -1, -1);
        v100 = v95;
        v87 = v190;
        MEMORY[0x259C32150](v100, -1, -1);
      }

      v206(v92, v208);
      v101 = *v87;

      sub_254FEDB68(v87, type metadata accessor for SportsAction.CacheEntry);
      return v101;
    }

    v210 = v78;
    sub_254FEDB68(v87, type metadata accessor for SportsAction.CacheEntry);
LABEL_28:
    v211 = v85;
    v212 = v86;
    sub_254FE7B08();
    v102 = v195;
    sub_254FF1D14();

    v103 = sub_254FF1EA4();
    v104 = sub_254FF2164();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v211 = v106;
      *v105 = 136642819;
      v107 = MEMORY[0x259C31780](v76, MEMORY[0x277D837D0]);
      v109 = v80;
      v110 = sub_254FC4454(v107, v108, &v211);

      *(v105 + 4) = v110;
      v80 = v109;
      v86 = v197;
      _os_log_impl(&dword_254FBD000, v103, v104, "SportsAction: Fetching games for: %{sensitive}s", v105, 0xCu);
      sub_254FC49C4(v106);
      v111 = v106;
      v85 = v196;
      MEMORY[0x259C32150](v111, -1, -1);
      MEMORY[0x259C32150](v105, -1, -1);

      v112 = v195;
    }

    else
    {

      v112 = v102;
    }

    v206(v112, v208);
    v211 = v85;
    v212 = v86;
    v113 = sub_254FE59E0(v76);
    v124 = v113;
    if (!*(v113 + 16))
    {

      v136 = v179;
      sub_254FF1D14();

      v137 = sub_254FF1EA4();
      v138 = sub_254FF2174();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v211 = v140;
        *v139 = 136642819;
        v141 = MEMORY[0x259C31780](v76, MEMORY[0x277D837D0]);
        v143 = sub_254FC4454(v141, v142, &v211);

        *(v139 + 4) = v143;
        _os_log_impl(&dword_254FBD000, v137, v138, "SportsAction: No games found for: %{sensitive}s", v139, 0xCu);
        sub_254FC49C4(v140);
        MEMORY[0x259C32150](v140, -1, -1);
        MEMORY[0x259C32150](v139, -1, -1);
      }

      v206(v136, v208);
      return MEMORY[0x277D84F90];
    }

    v207 = v80;
    v125 = v180;
    sub_254FF1D14();

    v126 = sub_254FF1EA4();
    v127 = sub_254FF2164();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v211 = v129;
      *v128 = 136642819;
      v130 = MEMORY[0x259C317A0](v124, MEMORY[0x277D837D0]);
      v132 = sub_254FC4454(v130, v131, &v211);

      *(v128 + 4) = v132;
      _os_log_impl(&dword_254FBD000, v126, v127, "SportsAction: games found: %{sensitive}s", v128, 0xCu);
      sub_254FC49C4(v129);
      MEMORY[0x259C32150](v129, -1, -1);
      v133 = v128;
      v85 = v196;
      MEMORY[0x259C32150](v133, -1, -1);
    }

    v206(v125, v208);
    v134 = v181;
    v211 = v85;
    v212 = v197;
    v101 = sub_254FE1BBC(v124);
    sub_254FF1D14();

    v144 = sub_254FF1EA4();
    v145 = sub_254FF2164();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v211 = v147;
      *v146 = 136642819;
      v148 = type metadata accessor for SportsEvent();
      v149 = MEMORY[0x259C31780](v101, v148);
      v151 = sub_254FC4454(v149, v150, &v211);

      *(v146 + 4) = v151;
      _os_log_impl(&dword_254FBD000, v144, v145, "SportsAction: Games found: %{sensitive}s", v146, 0xCu);
      sub_254FC49C4(v147);
      MEMORY[0x259C32150](v147, -1, -1);
      MEMORY[0x259C32150](v146, -1, -1);

      v152 = v181;
    }

    else
    {

      v152 = v134;
    }

    v206(v152, v208);
    v153 = v194;
    v154 = v207;
    if (*(v101 + 16))
    {

      v155 = v199;
      v156 = *(v199 + 20);

      v157 = v178;
      sub_254FF1604();
      *v157 = v101;
      sub_254FC4BB8(v157, 0, 1, v155);
      swift_beginAccess();
      sub_254FE065C(v157, v210, v154);
      swift_endAccess();
      return v101;
    }

    v47 = v177;
    sub_254FF1D14();

    v50 = sub_254FF1EA4();
    v158 = sub_254FF2174();

    if (os_log_type_enabled(v50, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v211 = v160;
      *v159 = v198;
      v161 = MEMORY[0x277D837D0];
      v162 = MEMORY[0x259C31780](v153, MEMORY[0x277D837D0]);
      v164 = v47;
      v165 = sub_254FC4454(v162, v163, &v211);

      *(v159 + 4) = v165;
      *(v159 + 12) = 2085;
      v166 = MEMORY[0x259C317A0](v124, v161);
      v168 = v167;

      v169 = sub_254FC4454(v166, v168, &v211);

      *(v159 + 14) = v169;
      _os_log_impl(&dword_254FBD000, v50, v158, "SportsAction: Games array is empty for: %{sensitive}s and found events: %{sensitive}s", v159, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C32150](v160, -1, -1);
      MEMORY[0x259C32150](v159, -1, -1);

      v170 = v164;
LABEL_56:
      v206(v170, v208);
      v171 = v189;
      v172 = v188;
      v173 = v187;
      sub_254FC389C();
      v174 = swift_allocError();
      *v175 = 2;
      swift_willThrow();
      sub_254FF1D14();
      v114 = v174;
      v115 = sub_254FF1EA4();
      v116 = sub_254FF2174();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v117 = 138412290;
        v119 = v174;
        v120 = _swift_stdlib_bridgeErrorToNSError();
        *(v117 + 4) = v120;
        *v118 = v120;
        _os_log_impl(&dword_254FBD000, v115, v116, "SportsAction error: %@", v117, 0xCu);
        sub_254FC538C(v118, &qword_27F76CBE0, &qword_254FF3F40);
        MEMORY[0x259C32150](v118, -1, -1);
        MEMORY[0x259C32150](v117, -1, -1);
      }

      v206(v173, v208);
      v211 = v174;
      v121 = v174;
      v101 = sub_254FC0048(&qword_27F76CC58, &qword_254FF3F38);
      if (swift_dynamicCast())
      {
        (*(v183 + 8))(v172, v171);
        goto LABEL_37;
      }

      v211 = v174;
      v122 = v174;
      if (swift_dynamicCast())
      {
LABEL_37:
        sub_254FC389C();
        v101 = swift_allocError();
        *v123 = 5;
        swift_willThrow();
      }

      else
      {
        swift_willThrow();
      }

      return v101;
    }

LABEL_55:

    v170 = v47;
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_254FE7B08()
{
  v0 = sub_254FC0048(&qword_27F76CD38, "B1");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v61 = &v60 - v2;
  v66 = sub_254FF1614();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsAction.CacheEntry();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - v11;
  v12 = sub_254FC0048(&qword_27F76CDD8, &qword_254FF4808);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = (&v60 - v17);
  if (qword_27F76C7C0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v18 = off_27F76CD10;
  swift_beginAccess();
  v60 = v18;
  v19 = v18[2];
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v63 = v19;
  v64 = (v3 + 8);

  v25 = 0;
  v69 = v6;
  v70 = v10;
  v71 = v16;
  while (1)
  {
    if (!v23)
    {
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {
          v58 = sub_254FC0048(&qword_27F76CD40, "B1");
          sub_254FC4BB8(v16, 1, 1, v58);
          v23 = 0;
          goto LABEL_12;
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v26 = v25;
LABEL_11:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = v27 | (v26 << 6);
    v29 = (*(v63 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v63 + 56) + *(v68 + 72) * v28;
    sub_254FEDB10();
    v33 = sub_254FC0048(&qword_27F76CD40, "B1");
    v34 = *(v33 + 48);
    v35 = v71;
    *v71 = v31;
    v35[1] = v30;
    v36 = v35;
    sub_254FEDBC0();
    sub_254FC4BB8(v36, 0, 1, v33);

    v6 = v69;
LABEL_12:
    v37 = v67;
    sub_254FC57C8();
    v38 = sub_254FC0048(&qword_27F76CD40, "B1");
    if (sub_254FC5364(v37, 1, v38) == 1)
    {
    }

    v3 = *v37;
    v39 = v37[1];
    v40 = *(v38 + 48);
    v41 = v70;
    sub_254FEDBC0();
    v10 = v65;
    sub_254FF1604();
    v42 = *(v6 + 20);
    sub_254FF1594();
    v44 = v43;
    (*v64)(v10, v66);
    if (v44 >= 1800.0)
    {
      v45 = v60;
      swift_beginAccess();
      v46 = v45[2];
      v47 = sub_254FC4A60();
      if (v48)
      {
        v49 = v47;
        v50 = v45[2];
        swift_isUniquelyReferenced_nonNull_native();
        v72 = v45[2];
        v51 = v72;
        v45[2] = 0x8000000000000000;
        v52 = *(v51 + 24);
        sub_254FC0048(&qword_27F76CD48, &qword_254FF4798);
        v6 = v69;
        sub_254FF22A4();
        v53 = v72;
        v54 = *(*(v72 + 48) + 16 * v49 + 8);

        v55 = *(v53 + 56) + *(v68 + 72) * v49;
        sub_254FEDBC0();
        sub_254FF22C4();
        v56 = v45[2];
        v45[2] = v53;

        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      v3 = v70;
      v16 = v71;
      v10 = v61;
      sub_254FC4BB8(v61, v57, 1, v6);
      sub_254FC538C(v10, &qword_27F76CD38, "B1");
      swift_endAccess();

      sub_254FEDB68(v3, type metadata accessor for SportsAction.CacheEntry);
    }

    else
    {
      sub_254FEDB68(v41, type metadata accessor for SportsAction.CacheEntry);

      v16 = v71;
    }
  }
}

uint64_t SportsAction.getTeamsFromSql(query:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v14 = MEMORY[0x277D84F90];
  sub_254FE19CC(v13);
  if (v4)
  {
  }

  else
  {
    v9 = v13[4];
    v10 = sub_254FC3908(v13, v13[3]);
    MEMORY[0x28223BE20](v10);
    sub_254FEDD00();
    *(v11 - 16) = &v14;
    (*(v9 + 24))(a1, a2, a3, sub_254FEDCE8);
    sub_254FC49C4(v13);
  }

  return v14;
}

uint64_t SportsAction.getAllTeams()()
{
  v7 = MEMORY[0x277D84F90];
  v5 = *v0;
  sub_254FE19CC(v6);
  v1 = v6[4];
  v2 = sub_254FC3908(v6, v6[3]);
  MEMORY[0x28223BE20](v2);
  sub_254FEDD00();
  *(v3 - 16) = &v7;
  (*(v1 + 24))(0xD000000000000083, 0x8000000254FF60F0, MEMORY[0x277D84F90], sub_254FEDCE8);
  sub_254FC49C4(v6);
  return v7;
}

uint64_t sub_254FE8374(uint64_t a1, void *a2)
{
  v75 = a2;
  v3 = sub_254FF1EB4();
  v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254FF1DD4();
  v79 = *(v7 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v65 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  result = sub_254FF1E74();
  if (!v2)
  {
    v70 = v11;
    v71 = v14;
    v73 = v19;
    v68 = v6;
    v72 = v7;
    sub_254FF1E74();
    v69 = v17;
    v21 = v71;
    sub_254FF1E74();
    v22 = v73;
    sub_254FF1E74();
    v67 = (v74 + 8);
    *&v23 = 136315138;
    v65 = v23;
    v66 = v3;
    while ((sub_254FF1E64() & 1) != 0)
    {
      v24 = sub_254FF1DA4();
      if (v25)
      {
        v26 = v24;
        v27 = v25;
        v28 = sub_254FF1DA4();
        if (v29)
        {
          v74 = v28;
          v30 = v29;
          v31 = sub_254FF1DA4();
          if (v32)
          {
            v33 = v31;
            v34 = v32;
            v35 = sub_254FF1DA4();
            if (v36)
            {
              v37 = v35;
              v38 = v36;

              v39._countAndFlagsBits = v74;
              v39._object = v30;
              v40._countAndFlagsBits = v26;
              v40._object = v27;
              v41._countAndFlagsBits = v33;
              v41._object = v34;
              v42._countAndFlagsBits = v37;
              v42._object = v38;
              SportsTeam.init(id:name:league:imageData:)(v76, v39, v40, v41, v42);
              v43 = *&v76[8];
              *&v76[64] = *&v76[16];
              v77 = *&v76[32];
              v78 = *&v76[48];
              if (*&v76[8])
              {
                v44 = *v76;

                v45 = v75;
                v46 = *v75;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v45 = v46;
                v22 = v73;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v60 = *(v46 + 16);
                  sub_254FC4070();
                  v46 = v61;
                  *v45 = v61;
                }

                v48 = *(v46 + 16);
                if (v48 >= *(v46 + 24) >> 1)
                {
                  sub_254FC4070();
                  v46 = v62;
                  *v75 = v62;
                }

                *(v46 + 16) = v48 + 1;
                v49 = v46 + (v48 << 6);
                *(v49 + 32) = v44;
                *(v49 + 40) = v43;
                v50 = *&v76[64];
                v51 = v78;
                *(v49 + 64) = v77;
                *(v49 + 80) = v51;
                *(v49 + 48) = v50;
              }

              else
              {
                v52 = v68;
                sub_254FF1D14();

                v53 = sub_254FF1EA4();
                v54 = sub_254FF2174();

                v55 = os_log_type_enabled(v53, v54);
                v22 = v73;
                if (v55)
                {
                  v56 = v53;
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  *v76 = v58;
                  *v57 = v65;
                  v59 = sub_254FC4454(v74, v30, v76);

                  *(v57 + 4) = v59;
                  _os_log_impl(&dword_254FBD000, v56, v54, "SportsAction: Failed to create team from SQL for %s", v57, 0xCu);
                  sub_254FC49C4(v58);
                  MEMORY[0x259C32150](v58, -1, -1);
                  MEMORY[0x259C32150](v57, -1, -1);

                  v21 = v71;
                  (*v67)(v68, v66);
                }

                else
                {

                  (*v67)(v52, v66);
                }
              }
            }

            else
            {

              v22 = v73;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    v63 = *(v79 + 8);
    v64 = v72;
    v63(v70, v72);
    v63(v21, v64);
    v63(v69, v64);
    return (v63)(v22, v64);
  }

  return result;
}

void sub_254FE89B8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_254FC59CC();
    if (v8 != v9)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254FC59AC();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254FC0048(&qword_27F76CDE8, &unk_254FF4828);
  v12 = sub_254FC0048(&qword_27F76C900, &qword_254FF3900);
  sub_254FC58B0(v12);
  v14 = *(v13 + 72);
  v15 = sub_254FEDD10();
  v16 = j__malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_18:
  v18 = *(sub_254FC0048(&qword_27F76C900, &qword_254FF3900) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_254FD15A0(a4 + v19, v10, v15 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void sub_254FE8B80(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_254FC59CC();
    if (v8 != v9)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254FC59AC();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254FC0048(&qword_27F76CDB8, &qword_254FF47F0);
  v12 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  sub_254FC58B0(v12);
  v14 = *(v13 + 72);
  v15 = sub_254FEDD10();
  v16 = j__malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_18:
  v18 = *(sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_254FD1668(a4 + v19, v10, v15 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

uint64_t sub_254FE8D48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254FC0048(&qword_27F76C8A0, &qword_254FF47C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_254FD1838((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_254FE8E48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_254FD1610((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_254FE8F48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_254FC59CC();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254FC59AC();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254FC0048(a5, a6);
  v17 = a7(0);
  sub_254FC58B0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (a1)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_254FE90F8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_254FF1CD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_254FC0048(&qword_27F76CD90, &qword_254FF47D8);
  v43 = a2;
  result = sub_254FF22F4();
  v14 = result;
  if (!*(v11 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v14;
    return result;
  }

  v47 = v10;
  v39 = v3;
  v15 = 0;
  v16 = (v11 + 64);
  v17 = 1 << *(v11 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v11 + 64);
  v20 = (v17 + 63) >> 6;
  v40 = (v7 + 16);
  v41 = v11;
  v42 = v7;
  v44 = (v7 + 32);
  v21 = result + 64;
  if (!v19)
  {
LABEL_9:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = v16[v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      sub_254FE957C(0, (v37 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_14:
    v25 = v22 | (v15 << 6);
    v26 = *(v11 + 48);
    v46 = *(v42 + 72);
    v27 = v26 + v46 * v25;
    if (v43)
    {
      (*v44)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    else
    {
      (*v40)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    v28 = *(v14 + 40);
    sub_254FEDC98(&qword_27F76C8B0, MEMORY[0x277D1F340]);
    result = sub_254FF1EF4();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (*v44)(*(v14 + 48) + v46 * v32, v47, v6);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    v11 = v41;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v21 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_254FE94D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7];
  v8 = *(*(type metadata accessor for SportsAction.CacheEntry() - 8) + 72);
  result = sub_254FEDBC0();
  v10 = a5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v12;
  }

  return result;
}

uint64_t sub_254FE957C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254FF46E0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254FE95E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_254FC4A60();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    sub_254FC0048(&qword_27F76CD48, &qword_254FF4798);
    sub_254FF22A4();
    v10 = *(*(v18 + 48) + 16 * v7 + 8);

    v11 = *(v18 + 56);
    v12 = type metadata accessor for SportsAction.CacheEntry();
    v13 = *(*(v12 - 8) + 72);
    sub_254FEDBC0();
    sub_254FF22C4();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = type metadata accessor for SportsAction.CacheEntry();
    v14 = a1;
    v15 = 1;
  }

  return sub_254FC4BB8(v14, v15, 1, v16);
}

uint64_t sub_254FE9728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_254FC4A60();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_254FC0048(&qword_27F76CD48, &qword_254FF4798);
  if ((sub_254FF22A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_254FC4A60();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_254FF2384();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for SportsAction.CacheEntry() - 8) + 72) * v11;

    return sub_254FEDC18(a1, v18);
  }

  else
  {
    sub_254FE94D0(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_254FE9880(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_25;
  }

  sub_254FC0048(&qword_27F76CDE0, &qword_254FF4818);
  result = sub_254FF2224();
  v3 = result;
  v23 = *(a1 + 16);
  if (!v23)
  {
    goto LABEL_25;
  }

  v4 = 0;
  v5 = result + 56;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v6 = (a1 + 32 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v3 + 40);
    sub_254FF2404();
    sub_254FF2424();
    if (v7)
    {

      sub_254FF1FC4();
    }

    result = sub_254FF2434();
    v10 = ~(-1 << *(v3 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v5 + 8 * v12);
    v14 = 1 << (result & v10);
    v15 = *(v3 + 48);
    if ((v14 & v13) == 0)
    {
      break;
    }

    while (1)
    {
      v16 = (v15 + 16 * v11);
      v17 = v16[1];
      if (!v17)
      {
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      if (v7)
      {
        if (*v16 == v8 && v17 == v7)
        {
          break;
        }

        result = sub_254FF2364();
        if (result)
        {
          break;
        }
      }

LABEL_17:
      v11 = (v11 + 1) & v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        v15 = *(v3 + 48);
        goto LABEL_19;
      }
    }

LABEL_22:
    if (++v4 == v23)
    {
LABEL_25:

      return v3;
    }
  }

LABEL_19:
  *(v5 + 8 * v12) = v13 | v14;
  v19 = (v15 + 16 * v11);
  *v19 = v8;
  v19[1] = v7;
  v20 = *(v3 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v3 + 16) = v22;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_254FE9B28(uint64_t a1)
{
  v2 = sub_254FF1C84();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_254FC0048(&qword_27F76CDA0, &qword_254FF47E8);
  result = sub_254FF2224();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_254FEDC98(&qword_27F76CDA8, MEMORY[0x277D1F310]);
    v16 = sub_254FF1EF4();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_254FEDC98(&qword_27F76CDB0, MEMORY[0x277D1F310]);
      v23 = sub_254FF1F14();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_254FE9E6C(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_254FF1CD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v41 - v14;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v41 = v3;
  v42 = v6;
  v15 = 0;
  v45 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v43 = v7;
  v44 = v16;
  v48 = (v7 + 32);
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_254FF2384();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = *(v13 + 72);
    v19 = v47;
    sub_254FC5770();
    v20 = *v48;
    v21 = v50;
    (*v48)(v50, v19, v6);
    v22 = *&v19[v44];
    v23 = *v49;
    v25 = sub_254FC4D14(v21);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a2)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_254FC0048(&qword_27F76CD98, &qword_254FF47E0);
      sub_254FF22B4();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = v50;
    v35 = *v49;
    *(*v49 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v6 = v42;
    v20(v35[6] + *(v43 + 72) * v25, v34, v42);
    *(v35[7] + 8 * v25) = v22;
    v36 = v35[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_20;
    }

    ++v15;
    v35[2] = v38;
    a2 = 1;
    v13 = v17;
    if (v46 == v15)
    {
      goto LABEL_13;
    }
  }

  v30 = v49;
  sub_254FE90F8(v28, a2 & 1);
  v31 = *v30;
  v32 = sub_254FC4D14(v50);
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v25 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v39 = swift_allocError();
  swift_willThrow();

  v53 = v39;
  v40 = v39;
  sub_254FC0048(&qword_27F76CC58, &qword_254FF3F38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v43 + 8))(v50, v42);

    return;
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_254FF2254();
  MEMORY[0x259C316D0](0xD00000000000001BLL, 0x8000000254FF6290);
  sub_254FF2294();
  MEMORY[0x259C316D0](39, 0xE100000000000000);
  sub_254FF22D4();
  __break(1u);
}

_BYTE *sub_254FEA2D8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_254FEA344(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_254FEDA88(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;

  sub_254FEA790(v9, a2, a3);
  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_254FEA3F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_254FEDA9C(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_254FEA8DC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_254FEA45C(uint64_t *a1)
{
  v2 = *(type metadata accessor for SportsEvent() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_254FEDAB0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_254FEA9D0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_254FEA54C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254FF1614();
    v9 = a1 + *(a3 + 20);

    return sub_254FC5364(v9, a2, v8);
  }
}

void *sub_254FEA5E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_254FF1614();
    v8 = v5 + *(a4 + 20);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SportsAction.CacheEntry()
{
  result = qword_27F76CD20;
  if (!qword_27F76CD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_254FEA6B4()
{
  sub_254FEA738();
  if (v0 <= 0x3F)
  {
    sub_254FF1614();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254FEA738()
{
  if (!qword_27F76CD30)
  {
    type metadata accessor for SportsEvent();
    v0 = sub_254FF20D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76CD30);
    }
  }
}

uint64_t sub_254FEA790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_254FF2334();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_254FF20B4();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_254FEAF2C(v11, v12, a1, v8, a2, a3);
      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
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
    sub_254FEAB00(0, v6, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_254FEA8DC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_254FF2334();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_254FF20B4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_254FEB6D0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_254FEAC24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254FEA9D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_254FF2334();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SportsEvent();
        v6 = sub_254FF20B4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SportsEvent() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254FEBBD8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_254FEACEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254FEAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = (*a4 + (a3 << 6));
    v10 = a1 - a3;
    while (2)
    {
      v27 = a3;
      v11 = v10;
      v26 = v9;
      do
      {
        v12 = v9 - 4;
        v13 = *(v9 - 8);
        v14 = *(v9 - 7);
        v15 = *v9 == a5 && *(v9 + 1) == a6;
        if (!v15 && (sub_254FF2364() & 1) == 0)
        {
          break;
        }

        if (v13 == a5 && v14 == a6)
        {
          break;
        }

        result = sub_254FF2364();
        if (result)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v19 = v9[2];
        v18 = v9[3];
        v21 = *v9;
        v20 = v9[1];
        v22 = *(v9 - 3);
        *v9 = *v12;
        v9[1] = v22;
        v23 = *(v9 - 1);
        v9[2] = *(v9 - 2);
        v9[3] = v23;
        *v12 = v21;
        *(v9 - 3) = v20;
        v9 -= 4;
        v12[2] = v19;
        v12[3] = v18;
      }

      while (!__CFADD__(v11++, 1));
      a3 = v27 + 1;
      v9 = v26 + 4;
      --v10;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_254FEAC24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_254FF2364();
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

uint64_t sub_254FEACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for SportsEvent();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      v23 = v35;
      do
      {
        sub_254FEDB10();
        sub_254FEDB10();
        v24 = *(v23 + 32);
        v25 = sub_254FF15C4();
        sub_254FEDB68(v12, type metadata accessor for SportsEvent);
        result = sub_254FEDB68(v16, type metadata accessor for SportsEvent);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_254FEDBC0();
        v23 = v35;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_254FEDBC0();
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_254FEAF2C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_122:
    v135 = *a1;
    if (!*a1)
    {
      goto LABEL_165;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_124:
      v134 = v10;
      v117 = v10 + 16;
      for (i = *(v10 + 2); ; *v10 = i)
      {
        v118 = i - 2;
        if (i < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_162;
        }

        v120 = &v134[16 * i];
        v121 = *v120;
        v10 = v117;
        v139 = i;
        v122 = &v117[16 * i];
        v123 = *(v122 + 1);
        v124 = (v119 + (*v120 << 6));
        v125 = (v119 + (*v122 << 6));
        v126 = (v119 + (v123 << 6));

        sub_254FEC610(v124, v125, v126, v135, a5, a6);
        if (v141)
        {
          break;
        }

        if (v123 < v121)
        {
          goto LABEL_150;
        }

        if (v118 >= *v10)
        {
          goto LABEL_151;
        }

        v117 = v10;
        *v120 = v121;
        *(v120 + 1) = v123;
        if (*v10 < v139)
        {
          goto LABEL_152;
        }

        i = *v10 - 1;
        memmove(v122, v122 + 16, 16 * (*v10 - v139));
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_159:
    v10 = sub_254FECE9C(v10);
    goto LABEL_124;
  }

  v128 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v136 = a6;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_41;
    }

    v12 = (*a3 + (v9 << 6));
    v13 = (*a3 + (v11 << 6));
    v14 = *v13;
    v15 = v13[1];
    v16 = a5;
    v17 = *v12 == a5 && v12[1] == a6;
    if (v17 || (v18 = sub_254FF2364(), v16 = a5, (v18 & 1) != 0))
    {
      v19 = v11;
      if (v14 != v16 || v15 != a6)
      {
        v21 = sub_254FF2364();
        v16 = a5;
        v22 = v21 ^ 1;
        goto LABEL_16;
      }
    }

    else
    {
      v19 = v11;
    }

    v22 = 0;
LABEL_16:
    v23 = v19;
    v9 = v19 + 2;
    v129 = v23;
    v24 = v23 << 6;
    v25 = v13 + 17;
    while (v9 < v8)
    {
      v26 = *(v25 - 9);
      v27 = *(v25 - 8);
      v28 = *(v25 - 1) == v16 && *v25 == a6;
      if (v28 || (v29 = sub_254FF2364(), v16 = a5, (v29)) && (v26 == v16 ? (v30 = v27 == a6) : (v30 = 0), !v30))
      {
        v31 = sub_254FF2364();
        v16 = a5;
        if (((v22 ^ v31) & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        goto LABEL_32;
      }

      ++v9;
      v25 += 8;
    }

    if ((v22 & 1) == 0)
    {
      v11 = v129;
      goto LABEL_41;
    }

LABEL_32:
    v11 = v129;
    if (v9 < v129)
    {
      goto LABEL_156;
    }

    if (v129 < v9)
    {
      v32 = (v9 << 6) - 64;
      v33 = v9;
      v34 = v129;
      do
      {
        if (v34 != --v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v36 = (v35 + v24);
          v37 = (v35 + v32);
          v39 = v36[2];
          v38 = v36[3];
          v41 = *v36;
          v40 = v36[1];
          v42 = v37[3];
          v44 = *v37;
          v43 = v37[1];
          v36[2] = v37[2];
          v36[3] = v42;
          *v36 = v44;
          v36[1] = v43;
          *v37 = v41;
          v37[1] = v40;
          v37[2] = v39;
          v37[3] = v38;
        }

        ++v34;
        v32 -= 64;
        v24 += 64;
      }

      while (v34 < v33);
    }

LABEL_41:
    v45 = a3[1];
    if (v9 < v45)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_155;
      }

      if (v9 - v11 < v128)
      {
        break;
      }
    }

LABEL_68:
    if (v9 < v11)
    {
      goto LABEL_154;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = *(v10 + 2);
      sub_254FC412C();
      v10 = v114;
    }

    v67 = *(v10 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v10 + 3) >> 1)
    {
      sub_254FC412C();
      v10 = v115;
    }

    *(v10 + 2) = v68;
    v69 = v10 + 32;
    v70 = &v10[16 * v67 + 32];
    *v70 = v11;
    *(v70 + 1) = v9;
    v135 = *a1;
    if (!*a1)
    {
      goto LABEL_164;
    }

    if (v67)
    {
      v138 = v9;
      v133 = v10 + 32;
      while (1)
      {
        v71 = v68 - 1;
        v72 = &v69[16 * v68 - 16];
        v73 = &v10[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v10 + 4);
          v75 = *(v10 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_89:
          if (v77)
          {
            goto LABEL_141;
          }

          v89 = *v73;
          v88 = *(v73 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_144;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_147;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_149;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        if (v68 < 2)
        {
          goto LABEL_143;
        }

        v96 = *v73;
        v95 = *(v73 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_104:
        if (v92)
        {
          goto LABEL_146;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_148;
        }

        if (v99 < v91)
        {
          goto LABEL_118;
        }

LABEL_111:
        if (v71 - 1 >= v68)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
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
          goto LABEL_158;
        }

        v103 = *a3;
        if (!*a3)
        {
          goto LABEL_161;
        }

        v104 = v10;
        v105 = &v69[16 * v71 - 16];
        v10 = *v105;
        v106 = v71;
        v107 = &v69[16 * v71];
        v108 = *(v107 + 1);
        v109 = (v103 + (*v105 << 6));
        v110 = (v103 + (*v107 << 6));
        v111 = (v103 + (v108 << 6));
        a6 = v136;

        sub_254FEC610(v109, v110, v111, v135, a5, v136);
        if (v141)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v108 < v10)
        {
          goto LABEL_136;
        }

        v112 = *(v104 + 2);
        if (v106 > v112)
        {
          goto LABEL_137;
        }

        *v105 = v10;
        *(v105 + 1) = v108;
        if (v106 >= v112)
        {
          goto LABEL_138;
        }

        v68 = v112 - 1;
        memmove(v107, v107 + 16, 16 * (v112 - 1 - v106));
        v10 = v104;
        *(v104 + 2) = v112 - 1;
        a6 = v136;
        v9 = v138;
        v69 = v133;
        if (v112 <= 2)
        {
          goto LABEL_118;
        }
      }

      v78 = &v69[16 * v68];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_139;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_140;
      }

      v85 = *(v73 + 1);
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_142;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_145;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_153;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_89;
    }

LABEL_118:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_122;
    }
  }

  v46 = (v11 + v128);
  if (__OFADD__(v11, v128))
  {
    goto LABEL_157;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v11)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v9 == v46)
  {
    goto LABEL_68;
  }

  v132 = v10;
  v47 = *a3;
  v48 = v9;
  v49 = *a3 + (v9 << 6);
  v137 = v48;
  v130 = v11;
  v50 = v11 - v48;
  v51 = a5;
  v135 = v46;
LABEL_50:
  v52 = v50;
  v53 = v49;
  while (1)
  {
    v54 = v53 - 4;
    v55 = *(v53 - 8);
    v56 = *(v53 - 7);
    if (*v53 != v51 || *(v53 + 1) != a6)
    {
      v58 = sub_254FF2364();
      v51 = a5;
      if ((v58 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (v55 == v51 && v56 == a6)
    {
      goto LABEL_66;
    }

    if (sub_254FF2364())
    {
      v51 = a5;
LABEL_66:
      v49 += 64;
      --v50;
      if (++v137 == v135)
      {
        v9 = v135;
        v10 = v132;
        v11 = v130;
        goto LABEL_68;
      }

      goto LABEL_50;
    }

    if (!v47)
    {
      break;
    }

    v61 = v53[2];
    v60 = v53[3];
    v63 = *v53;
    v62 = v53[1];
    v64 = *(v53 - 3);
    *v53 = *v54;
    v53[1] = v64;
    v65 = *(v53 - 1);
    v53[2] = *(v53 - 2);
    v53[3] = v65;
    *v54 = v63;
    *(v53 - 3) = v62;
    v53 -= 4;
    v54[2] = v61;
    v54[3] = v60;
    v66 = __CFADD__(v52++, 1);
    v51 = a5;
    if (v66)
    {
      goto LABEL_66;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_162:

  __break(1u);
LABEL_163:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_164:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_165:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_254FEB6D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_254FF2364();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_254FF2364()))
          {
            break;
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
            v27 = v9 + a4;
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_254FF2364() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_254FC412C();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_254FC412C();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_254FEC86C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
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
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
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
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_254FEC4E4(&v92, *a1, a3);
LABEL_102:
}

void sub_254FEBBD8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v105 = a1;
  v9 = type metadata accessor for SportsEvent();
  v113 = *(v9 - 8);
  v10 = *(v113 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v103 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v118 = &v103 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v103 - v17;
  v115 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_103:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v97 = v21 + 16;
      v98 = *(v21 + 2);
      for (i = v21; v98 >= 2; v21 = i)
      {
        if (!*v115)
        {
          goto LABEL_141;
        }

        v99 = &v21[16 * v98];
        v100 = *v99;
        v21 = &v97[2 * v98];
        v101 = *(v21 + 1);
        sub_254FECA10(*v115 + *(v113 + 72) * *v99, *v115 + *(v113 + 72) * *v21, *v115 + *(v113 + 72) * v101, v5);
        if (v6)
        {
          break;
        }

        if (v101 < v100)
        {
          goto LABEL_129;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_130;
        }

        *v99 = v100;
        *(v99 + 1) = v101;
        v102 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_131;
        }

        v98 = *v97 - 1;
        memmove(v21, v21 + 16, 16 * v102);
        *v97 = v98;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v21 = sub_254FECE9C(v21);
    goto LABEL_105;
  }

  v104 = a4;
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v119 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    i = v21;
    v106 = v20;
    if (v20 + 1 < v19)
    {
      v24 = *v115;
      v25 = *(v113 + 72);
      v26 = *v115 + v25 * v23;
      v112 = v19;
      sub_254FEDB10();
      v5 = v118;
      sub_254FEDB10();
      v27 = *(v9 + 32);
      LODWORD(v111) = sub_254FF15C4();
      sub_254FEDB68(v5, type metadata accessor for SportsEvent);
      sub_254FEDB68(v18, type metadata accessor for SportsEvent);
      v28 = v112;
      v29 = v106 + 2;
      v114 = v25;
      v21 = (v24 + v25 * (v106 + 2));
      while (1)
      {
        v30 = v29;
        if (++v23 >= v28)
        {
          break;
        }

        sub_254FEDB10();
        v5 = v118;
        sub_254FEDB10();
        v31 = *(v119 + 32);
        v32 = sub_254FF15C4() & 1;
        sub_254FEDB68(v5, type metadata accessor for SportsEvent);
        sub_254FEDB68(v18, type metadata accessor for SportsEvent);
        v21 += v114;
        v26 += v114;
        v29 = v30 + 1;
        v28 = v112;
        if ((v111 & 1) != v32)
        {
          goto LABEL_9;
        }
      }

      v23 = v28;
LABEL_9:
      if (v111)
      {
        v22 = v106;
        if (v23 < v106)
        {
          goto LABEL_135;
        }

        if (v106 >= v23)
        {
          v21 = i;
          v9 = v119;
          goto LABEL_32;
        }

        v103 = v6;
        if (v28 >= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v28;
        }

        v34 = v114 * (v33 - 1);
        v35 = v106;
        v36 = v114 * v33;
        v37 = v106 * v114;
        v38 = v23;
        v21 = i;
        do
        {
          if (v35 != --v38)
          {
            v5 = v23;
            v39 = *v115;
            if (!*v115)
            {
              goto LABEL_142;
            }

            sub_254FEDBC0();
            v40 = v37 < v34 || v39 + v37 >= (v39 + v36);
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_254FEDBC0();
            v21 = i;
            v23 = v5;
          }

          ++v35;
          v34 -= v114;
          v36 -= v114;
          v37 += v114;
        }

        while (v35 < v38);
        v6 = v103;
      }

      else
      {
        v21 = i;
      }

      v9 = v119;
      v22 = v106;
    }

LABEL_32:
    v41 = v115[1];
    if (v23 < v41)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_134;
      }

      if (v23 - v22 < v104)
      {
        break;
      }
    }

LABEL_50:
    if (v23 < v22)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = *(v21 + 2);
      sub_254FC412C();
      v21 = v95;
    }

    v52 = *(v21 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v21 + 3) >> 1)
    {
      sub_254FC412C();
      v21 = v96;
    }

    *(v21 + 2) = v53;
    v54 = v21 + 32;
    v55 = &v21[16 * v52 + 32];
    *v55 = v106;
    *(v55 + 1) = v23;
    v112 = *v105;
    if (!v112)
    {
      goto LABEL_143;
    }

    v114 = v23;
    if (v52)
    {
      i = v21;
      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v21[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_120;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_123;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_128;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v53 < 2)
        {
          goto LABEL_122;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_86:
        if (v77)
        {
          goto LABEL_125;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_127;
        }

        if (v84 < v76)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v56 - 1 >= v53)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v115)
        {
          goto LABEL_140;
        }

        v5 = v18;
        v88 = &v54[16 * v56 - 16];
        v89 = *v88;
        v90 = v54;
        v91 = v56;
        v21 = &v54[16 * v56];
        v92 = *(v21 + 1);
        sub_254FECA10(*v115 + *(v113 + 72) * *v88, *v115 + *(v113 + 72) * *v21, *v115 + *(v113 + 72) * v92, v112);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v92 < v89)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v91 > v6)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v91 >= v6)
        {
          goto LABEL_117;
        }

        v53 = v6 - 1;
        memmove(v21, v21 + 16, 16 * (v6 - 1 - v91));
        v21 = i;
        *(i + 2) = v6 - 1;
        v93 = v6 > 2;
        v6 = 0;
        v9 = v119;
        v54 = v90;
        v18 = v5;
        if (!v93)
        {
          goto LABEL_100;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_118;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_119;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_121;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_124;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_132;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v20 = v114;
    v19 = v115[1];
    if (v114 >= v19)
    {
      goto LABEL_103;
    }
  }

  v42 = v22 + v104;
  if (__OFADD__(v22, v104))
  {
    goto LABEL_136;
  }

  if (v42 >= v41)
  {
    v42 = v115[1];
  }

  if (v42 < v22)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v23 == v42)
  {
    goto LABEL_50;
  }

  v103 = v6;
  v43 = *v115;
  v44 = *(v113 + 72);
  v45 = *v115 + v44 * (v23 - 1);
  v46 = -v44;
  v47 = v22 - v23;
  v107 = v44;
  v108 = v42;
  v48 = v43 + v23 * v44;
LABEL_41:
  v114 = v23;
  v110 = v48;
  v111 = v47;
  v112 = v45;
  v49 = v45;
  while (1)
  {
    sub_254FEDB10();
    v5 = v118;
    sub_254FEDB10();
    v50 = *(v9 + 32);
    v51 = sub_254FF15C4();
    sub_254FEDB68(v5, type metadata accessor for SportsEvent);
    sub_254FEDB68(v18, type metadata accessor for SportsEvent);
    if ((v51 & 1) == 0)
    {
      v9 = v119;
LABEL_48:
      v23 = v114 + 1;
      v45 = v112 + v107;
      v47 = v111 - 1;
      v48 = v110 + v107;
      if (v114 + 1 == v108)
      {
        v23 = v108;
        v6 = v103;
        v21 = i;
        v22 = v106;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v43)
    {
      break;
    }

    v5 = v117;
    sub_254FEDBC0();
    v9 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_254FEDBC0();
    v49 += v46;
    v48 += v46;
    v40 = __CFADD__(v47++, 1);
    if (v40)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_254FEC4E4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_254FECE9C(v5);
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
    sub_254FEC86C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_254FEC610(char *a1, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 64;
  v12 = (a3 - a2) / 64;
  if (v11 < v12)
  {
    sub_254FD1838(a1, (a2 - a1) / 64, a4);
    v13 = &v7[64 * v11];
    v14 = a6;
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_46;
      }

      v16 = *v7;
      v17 = *(v7 + 1);
      v18 = *v9 == a5 && *(v9 + 1) == v14;
      if (!v18)
      {
        v19 = sub_254FF2364();
        v14 = a6;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if (v16 == a5 && v17 == v14)
      {
        break;
      }

      v21 = sub_254FF2364();
      v14 = a6;
      if (v21)
      {
        break;
      }

      v22 = v9;
      v18 = v10 == v9;
      v9 += 64;
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v10 += 64;
    }

    v22 = v7;
    v18 = v10 == v7;
    v7 += 64;
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = *(v22 + 3);
    *(v10 + 2) = *(v22 + 2);
    *(v10 + 3) = v25;
    *v10 = v23;
    *(v10 + 1) = v24;
    goto LABEL_19;
  }

  sub_254FD1838(a2, (a3 - a2) / 64, a4);
  v13 = &v7[64 * v12];
  v26 = a6;
LABEL_24:
  v43 = v9 - 64;
  for (v8 -= 64; v13 > v7 && v9 > v10; v8 -= 64)
  {
    v28 = *(v9 - 8);
    v29 = *(v9 - 7);
    v30 = *(v13 - 8) == a5 && *(v13 - 7) == v26;
    if (v30 || (v31 = sub_254FF2364(), v26 = a6, (v31 & 1) != 0))
    {
      if (v28 != a5 || v29 != v26)
      {
        v33 = sub_254FF2364();
        v26 = a6;
        if ((v33 & 1) == 0)
        {
          v18 = v8 + 64 == v9;
          v9 -= 64;
          if (!v18)
          {
            v37 = *v43;
            v38 = *(v43 + 1);
            v39 = *(v43 + 3);
            *(v8 + 2) = *(v43 + 2);
            *(v8 + 3) = v39;
            *v8 = v37;
            *(v8 + 1) = v38;
            v9 = v43;
          }

          goto LABEL_24;
        }
      }
    }

    if (v13 != v8 + 64)
    {
      v34 = *(v13 - 4);
      v35 = *(v13 - 3);
      v36 = *(v13 - 1);
      *(v8 + 2) = *(v13 - 2);
      *(v8 + 3) = v36;
      *v8 = v34;
      *(v8 + 1) = v35;
    }

    v13 -= 64;
  }

LABEL_46:
  v40 = (v13 - v7) / 64;
  if (v9 != v7 || v9 >= &v7[64 * v40])
  {
    memmove(v9, v7, v40 << 6);
  }

  return 1;
}

uint64_t sub_254FEC86C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_254FD1610(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_254FF2364() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_254FD1610(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_254FF2364() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_254FECA10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for SportsEvent();
  v8 = *(*(v57 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v20 = v16 / v15;
  v60 = a1;
  v59 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    sub_254FD1764(a2, v18 / v15, a4);
    v31 = a4 + v21 * v15;
    v32 = -v15;
    v33 = v31;
    v52 = a1;
    v53 = v32;
LABEL_36:
    v54 = a2 + v32;
    v55 = a2;
    v34 = a3;
    v35 = v33;
    v51 = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v60 = v55;
        v58 = v35;
        goto LABEL_58;
      }

      if (v55 <= a1)
      {
        break;
      }

      v50 = v35;
      v36 = a4;
      v37 = v34 + v32;
      v38 = v31 + v32;
      v39 = v34;
      sub_254FEDB10();
      v40 = v13;
      v41 = v56;
      sub_254FEDB10();
      v42 = *(v57 + 32);
      v43 = sub_254FF15C4();
      v44 = v41;
      v13 = v40;
      sub_254FEDB68(v44, type metadata accessor for SportsEvent);
      sub_254FEDB68(v40, type metadata accessor for SportsEvent);
      if (v43)
      {
        v47 = v39 < v55 || v37 >= v55;
        a4 = v36;
        if (v47)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v37;
          v33 = v50;
          a1 = v52;
          v32 = v53;
        }

        else
        {
          v17 = v39 == v55;
          v32 = v53;
          v48 = v54;
          a2 = v54;
          a3 = v37;
          v33 = v50;
          a1 = v52;
          if (!v17)
          {
            v33 = v50;
            swift_arrayInitWithTakeBackToFront();
            a2 = v48;
          }
        }

        goto LABEL_36;
      }

      v45 = v39 < v31 || v37 >= v31;
      a4 = v36;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v37;
        v31 = v38;
        v35 = v38;
        a1 = v52;
        v32 = v53;
        v33 = v51;
      }

      else
      {
        v35 = v38;
        v17 = v31 == v39;
        v34 = v37;
        v31 = v38;
        v46 = v37;
        a1 = v52;
        v32 = v53;
        v33 = v51;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v46;
          v31 = v38;
          v35 = v38;
        }
      }
    }

    v60 = v55;
    v58 = v33;
  }

  else
  {
    sub_254FD1764(a1, v16 / v15, a4);
    v55 = a4 + v20 * v15;
    v58 = v55;
    while (a4 < v55 && a2 < a3)
    {
      v23 = a3;
      sub_254FEDB10();
      v24 = a2;
      v25 = v56;
      sub_254FEDB10();
      v26 = *(v57 + 32);
      v27 = sub_254FF15C4();
      sub_254FEDB68(v25, type metadata accessor for SportsEvent);
      sub_254FEDB68(v13, type metadata accessor for SportsEvent);
      if (v27)
      {
        a2 = v24 + v15;
        v28 = a1 < v24 || a1 >= a2;
        v29 = v24;
        if (v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v24;
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = a4 + v15;
        a4 += v15;
      }

      a1 += v15;
      v60 = a1;
    }
  }

LABEL_58:
  sub_254FECEB0(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_254FECEB0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SportsEvent();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254FECF90(char *result, int64_t a2, char a3, char *a4)
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
    sub_254FC0048(&qword_27F76C898, &unk_254FF3150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

BOOL sub_254FED090(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_254FF2404();
  sub_254FF1FC4();
  v9 = sub_254FF2434();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_254FF2364() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_254FED438(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_254FED1DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254FC0048(&qword_27F76CDD0, &qword_254FF4800);
  result = sub_254FF2214();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_254FE957C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_254FF2404();
    sub_254FF1FC4();
    result = sub_254FF2434();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254FED438(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_254FED1DC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_254FED6F8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_254FF2404();
      sub_254FF1FC4();
      result = sub_254FF2434();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_254FF2364() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_254FED5A0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_254FF2374();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_254FED5A0()
{
  v1 = v0;
  sub_254FC0048(&qword_27F76CDD0, &qword_254FF4800);
  v2 = *v0;
  v3 = sub_254FF2204();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_254FED6F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254FC0048(&qword_27F76CDD0, &qword_254FF4800);
  result = sub_254FF2214();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_254FF2404();

        sub_254FF1FC4();
        result = sub_254FF2434();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_254FED92C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

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

uint64_t sub_254FEDB10()
{
  sub_254FC5DD4();
  v2 = v1(0);
  sub_254FC5864(v2);
  v4 = *(v3 + 16);
  v5 = sub_254FBF6B0();
  v6(v5);
  return v0;
}

uint64_t sub_254FEDB68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_254FC5864(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254FEDBC0()
{
  sub_254FC5DD4();
  v2 = v1(0);
  sub_254FC5864(v2);
  v4 = *(v3 + 32);
  v5 = sub_254FBF6B0();
  v6(v5);
  return v0;
}

uint64_t sub_254FEDC18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsAction.CacheEntry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FEDC98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254FEDD10()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t SportsEvent.init(id:teams:homeTeam:awayTeam:startTime:firstTeamId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v129 = a7;
  v128 = a6;
  v132 = a3;
  v133 = a2;
  v127 = a8;
  v121 = sub_254FF1644();
  v11 = sub_254FC583C(v121);
  v120 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_254FC7780();
  v17 = v16 - v15;
  v119 = sub_254FF1654();
  v18 = sub_254FC583C(v119);
  v118 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_254FC7780();
  v24 = v23 - v22;
  v25 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v114 - v27;
  v131 = sub_254FF1614();
  v29 = sub_254FC583C(v131);
  v130 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_254FDE4EC();
  v116 = v33;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v114 - v36;
  MEMORY[0x28223BE20](v35);
  v122 = v114 - v38;
  v125 = sub_254FF1EB4();
  v39 = sub_254FC583C(v125);
  v124 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_254FDE4EC();
  v117 = v43;
  v45 = MEMORY[0x28223BE20](v44);
  v47 = v114 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = v114 - v48;
  v126 = type metadata accessor for SportsEvent();
  v50 = sub_254FC5864(v126);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_254FC7780();
  v55 = v54 - v53;
  v56 = a4[1];
  v135 = *a4;
  v136 = v56;
  v57 = a4[2];
  v58 = a4[3];
  v59 = v133;
  v137 = v57;
  v138 = v58;
  v60 = a5[1];
  v139 = *a5;
  v140 = v60;
  v61 = a5[2];
  v62 = a5[3];
  v63 = HIBYTE(v133) & 0xF;
  v123 = a1;
  if ((v133 & 0x2000000000000000) == 0)
  {
    v63 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v141 = v61;
  v142 = v62;
  if (!v63)
  {
    sub_254FC538C(&v135, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FC538C(&v139, &qword_27F76CD80, &qword_254FF47C8);

    sub_254FF1D14();
    v88 = sub_254FF1EA4();
    v89 = sub_254FF2174();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_254FBD000, v88, v89, "SportsEvent: Event has an empty ID", v90, 2u);
      sub_254FDE524();
    }

    v91 = sub_254FEEE80();
    v92(v91);
    sub_254FEEE70();
    v94 = v49;
    goto LABEL_16;
  }

  v64 = v132;
  if (*(v132 + 16) != 2)
  {

    sub_254FC538C(&v135, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FC538C(&v139, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FF1D14();

    v95 = sub_254FF1EA4();
    v96 = sub_254FF2174();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = v64;
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v134 = v99;
      *v98 = 136643075;
      v100 = sub_254FC4454(v123, v59, &v134);

      *(v98 + 4) = v100;
      *(v98 + 12) = 2048;
      v101 = *(v97 + 16);

      *(v98 + 14) = v101;

      _os_log_impl(&dword_254FBD000, v95, v96, "SportsEvent: Event %{sensitive}s has %ld teams instead of 2", v98, 0x16u);
      sub_254FC49C4(v99);
      sub_254FDE524();
      sub_254FDE524();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v102 = sub_254FEEE80();
    v103(v102);
    sub_254FEEE70();
    v94 = v47;
LABEL_16:
    v93(v94, v125);
    goto LABEL_17;
  }

  sub_254FF1634();
  v65 = v120;
  v66 = v121;
  (*(v120 + 104))(v17, *MEMORY[0x277CC9968], v121);
  sub_254FF1604();
  sub_254FF1624();
  v67 = v130;
  v68 = v37;
  v69 = v131;
  v115 = *(v130 + 8);
  v114[1] = v130 + 8;
  v115(v68, v131);
  (*(v65 + 8))(v17, v66);
  (*(v118 + 8))(v24, v119);
  result = sub_254FC5364(v28, 1, v69);
  if (result != 1)
  {

    v71 = *(v67 + 32);
    v72 = v122;
    v71(v122, v28, v69);
    v73 = v128;
    if ((sub_254FF15C4() & 1) == 0)
    {
      v115(v72, v69);
      v107 = v133;
      *v55 = v123;
      *(v55 + 8) = v107;
      v106 = v126;
      v71((v55 + *(v126 + 32)), v73, v69);
      *(v55 + 144) = v132;
      v108 = v136;
      *(v55 + 16) = v135;
      *(v55 + 32) = v108;
      v109 = v138;
      *(v55 + 48) = v137;
      *(v55 + 64) = v109;
      v110 = v140;
      *(v55 + 80) = v139;
      *(v55 + 96) = v110;
      v111 = v142;
      *(v55 + 112) = v141;
      *(v55 + 128) = v111;
      v105 = v127;
      sub_254FEEADC(v55, v127);
      v104 = 0;
      return sub_254FC4BB8(v105, v104, 1, v106);
    }

    sub_254FC538C(&v135, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FC538C(&v139, &qword_27F76CD80, &qword_254FF47C8);
    v74 = v117;
    sub_254FF1D14();
    v75 = v116;
    (*(v67 + 16))(v116, v73, v69);
    v76 = v133;

    v77 = sub_254FF1EA4();
    v78 = sub_254FF2174();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v79 = 136643075;
      v80 = sub_254FC4454(v123, v76, &v134);

      *(v79 + 4) = v80;
      *(v79 + 12) = 2080;
      sub_254FEEB40();
      v81 = sub_254FF2344();
      v83 = v82;
      v84 = v75;
      v85 = v115;
      v115(v84, v69);
      v86 = sub_254FC4454(v81, v83, &v134);

      *(v79 + 14) = v86;
      _os_log_impl(&dword_254FBD000, v77, v78, "SportsEvent: Event %{sensitive}s is earlier than yesterday: %s", v79, 0x16u);
      swift_arrayDestroy();
      sub_254FDE524();
      sub_254FDE524();

      v85(v73, v69);
      sub_254FEEE70();
      v87(v117, v125);
      v85(v122, v69);
    }

    else
    {

      v112 = v115;
      v115(v73, v69);
      v112(v75, v69);
      sub_254FEEE70();
      v113(v74, v125);
      v112(v72, v69);
    }

LABEL_17:
    v104 = 1;
    v105 = v127;
    v106 = v126;
    return sub_254FC4BB8(v105, v104, 1, v106);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SportsEvent()
{
  result = qword_27F76CDF0;
  if (!qword_27F76CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SportsEvent.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SportsEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsEvent() + 32);
  v4 = sub_254FF1614();
  v5 = sub_254FC5864(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SportsEvent.init(id:teams:startTime:firstTeamId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_254FF1614();
  v13 = sub_254FC583C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_254FC7780();
  v20 = (v19 - v18);
  v21 = sub_254FC0048(&qword_27F76CD50, &unk_254FF47A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v28 - v23;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  (*(v15 + 16))(v20, a4, v12);
  SportsEvent.init(id:teams:homeTeam:awayTeam:startTime:firstTeamId:)(a1, a2, a3, v29, v28, v20, a5, v24);
  (*(v15 + 8))(a4, v12);
  v25 = type metadata accessor for SportsEvent();
  if (sub_254FC5364(v24, 1, v25))
  {
    sub_254FC538C(v24, &qword_27F76CD50, &unk_254FF47A0);
    v26 = 1;
  }

  else
  {
    sub_254FEEADC(v24, a6);
    v26 = 0;
  }

  return sub_254FC4BB8(a6, v26, 1, v25);
}

uint64_t sub_254FEEAB4@<X0>(uint64_t *a1@<X8>)
{
  result = SportsEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FEEADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254FEEB40()
{
  result = qword_27F76CC38;
  if (!qword_27F76CC38)
  {
    sub_254FF1614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC38);
  }

  return result;
}

uint64_t sub_254FEEB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CD80, &qword_254FF47C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FEEC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254FF1614();
    v9 = a1 + *(a3 + 32);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FEECB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FF1614();
    v8 = v5 + *(a4 + 32);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FEED38()
{
  sub_254FEEE1C(319, &qword_27F76CE00, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_254FEEE1C(319, &qword_27F76CE08, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_254FF1614();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254FEEE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SportsTeam);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_254FEEE80()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 256);
  return result;
}

uint64_t sub_254FEEE9C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a18, __n128 a19)
{
  a18 = a4;
  a19 = a5;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;

  return sub_254FEEB98(&a14, &a6);
}

IntelligencePlatformDataActions::SportsEventTimeFrame_optional __swiftcall SportsEventTimeFrame.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

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

uint64_t SportsEventTimeFrame.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746E6F4D7478656ELL;
  }

  else
  {
    result = 0x6B6565577478656ELL;
  }

  *v0;
  return result;
}

unint64_t sub_254FEEF74()
{
  result = qword_27F76CE10;
  if (!qword_27F76CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE10);
  }

  return result;
}

uint64_t sub_254FEEFEC@<X0>(uint64_t *a1@<X8>)
{
  result = SportsEventTimeFrame.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsEventTimeFrame(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsEventTimeFrame(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254FEF218);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254FEF25C()
{
  result = qword_27F76CE18;
  if (!qword_27F76CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE18);
  }

  return result;
}

void __swiftcall SportsTeam.init(id:name:league:imageData:)(IntelligencePlatformDataActions::SportsTeam_optional *__return_ptr retstr, Swift::String id, Swift::String name, Swift::String league, Swift::String imageData)
{
  object = imageData._object;
  countAndFlagsBits = imageData._countAndFlagsBits;
  v7 = league._object;
  v8 = league._countAndFlagsBits;
  v9 = name._object;
  v10 = name._countAndFlagsBits;
  v11 = id._object;
  v12 = id._countAndFlagsBits;
  v14 = sub_254FF1EB4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  v22 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v22 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v23 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      retstr->value.id._countAndFlagsBits = v12;
      retstr->value.id._object = v11;
      retstr->value.name._countAndFlagsBits = v10;
      retstr->value.name._object = v9;
      retstr->value.league._countAndFlagsBits = v8;
      retstr->value.league._object = v7;
      retstr->value.imageData._countAndFlagsBits = countAndFlagsBits;
      retstr->value.imageData._object = object;
      return;
    }

    v29 = v18;
    v36 = v17;
    v30 = v19;

    sub_254FF1D14();

    v31 = sub_254FF1EA4();
    v32 = sub_254FF2174();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v33 = 136642819;
      v35 = sub_254FC4454(v12, v11, &v37);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_254FBD000, v31, v32, "SportsTeam: Cannot initialize with empty name for team with id:%{sensitive}s", v33, 0xCu);
      sub_254FC49C4(v34);
      MEMORY[0x259C32150](v34, -1, -1);
      MEMORY[0x259C32150](v33, -1, -1);
    }

    else
    {
    }

    (*(v29 + 8))(v30, v36);
  }

  else
  {
    v24 = v18;
    v25 = v17;

    sub_254FF1D14();
    v26 = sub_254FF1EA4();
    v27 = sub_254FF2174();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_254FBD000, v26, v27, "SportsTeam: Team has an empty ID", v28, 2u);
      MEMORY[0x259C32150](v28, -1, -1);
    }

    (*(v24 + 8))(v21, v25);
  }

  retstr->value.league = 0u;
  retstr->value.imageData = 0u;
  retstr->value.id = 0u;
  retstr->value.name = 0u;
}

uint64_t SportsTeam.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254FBF6B0();
}

uint64_t SportsTeam.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_254FBF6B0();
}

uint64_t SportsTeam.league.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_254FBF6B0();
}

uint64_t SportsTeam.imageData.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_254FBF6B0();
}

uint64_t sub_254FEF67C@<X0>(uint64_t *a1@<X8>)
{
  result = SportsTeam.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_254FEF6A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254FEF6B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_254FEF6F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WalletOrder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WalletOrder.productDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WalletOrder.merchant.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_254FEF800@<X0>(uint64_t *a1@<X8>)
{
  result = WalletOrder.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FEF830(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_254FEF870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WalletOrderShipping.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254FBF6B0();
}

uint64_t WalletOrderShipping.trackingNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_254FBF6B0();
}

uint64_t WalletOrderShipping.carrierName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_254FBF6B0();
}

uint64_t WalletOrderShipping.shippingMethod.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_254FBF6B0();
}

uint64_t WalletOrderShipping.shippingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletOrderShipping() + 32);

  return sub_254FDCD30(v3, a1);
}

uint64_t type metadata accessor for WalletOrderShipping()
{
  result = qword_27F76CE20;
  if (!qword_27F76CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletOrderShipping.estimatedDeliveryStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletOrderShipping() + 36);

  return sub_254FDCD30(v3, a1);
}

uint64_t WalletOrderShipping.estimatedDeliveryEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletOrderShipping() + 40);

  return sub_254FDCD30(v3, a1);
}

uint64_t WalletOrderShipping.emails.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletOrderShipping() + 44));
}

uint64_t sub_254FEFACC@<X0>(uint64_t *a1@<X8>)
{
  result = WalletOrderShipping.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FEFB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = a1 + *(a3 + 32);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FEFBB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v8 = v5 + *(a4 + 32);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FEFC3C()
{
  sub_254FD6F54();
  if (v0 <= 0x3F)
  {
    sub_254FEFD58(319, &qword_27F76CB58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_254FEFD58(319, &qword_27F76CE30, type metadata accessor for Email, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254FEFD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_254FEFDBC(unsigned __int8 a1, char a2)
{
  v2 = 1685024614;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1685024614;
  switch(v4)
  {
    case 1:
      v5 = 0x6961747265746E65;
      v3 = 0xED0000746E656D6ELL;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C6576617274;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x676E6970706F6873;
      break;
    case 4:
      v5 = 0x616368746C616568;
      v3 = 0xEA00000000006572;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x65636E616E6966;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6961747265746E65;
      v6 = 0xED0000746E656D6ELL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C6576617274;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x676E6970706F6873;
      break;
    case 4:
      v2 = 0x616368746C616568;
      v6 = 0xEA00000000006572;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x65636E616E6966;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x726568746FLL;
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
    v8 = sub_254FF2364();
  }

  return v8 & 1;
}

uint64_t sub_254FEFFDC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746E6F4D7478656ELL;
  }

  else
  {
    v3 = 0x6B6565577478656ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000068;
  }

  if (a2)
  {
    v5 = 0x746E6F4D7478656ELL;
  }

  else
  {
    v5 = 0x6B6565577478656ELL;
  }

  if (a2)
  {
    v6 = 0xE900000000000068;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254FF1340();
  }

  return v8 & 1;
}

uint64_t sub_254FF0074()
{
  v0 = SoftwareCategory.rawValue.getter();
  v2 = v1;
  if (v0 == SoftwareCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_254FF1340();
  }

  return v5 & 1;
}

uint64_t sub_254FF00FC(unsigned __int8 a1, char a2)
{
  v2 = 0x746867696C66;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746867696C66;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C65746F68;
      break;
    case 2:
      v5 = 0x72656E6E6964;
      break;
    case 3:
      sub_254FF1368();
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x656C6369686576;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 2003789939;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C65746F68;
      break;
    case 2:
      v2 = 0x72656E6E6964;
      break;
    case 3:
      v2 = 0x726F70736E617274;
      v6 = 0xEE006E6F69746174;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x656C6369686576;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 2003789939;
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
    v8 = sub_254FF1340();
  }

  return v8 & 1;
}

uint64_t sub_254FF02AC(char a1, char a2)
{
  v2 = 7105633;
  if (a1)
  {
    sub_254FF135C();
    if (v3)
    {
      v5 = 7368801;
    }

    else
    {
      v5 = 0x65746973626577;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7105633;
  }

  if (a2)
  {
    sub_254FF135C();
    if (v7)
    {
      v2 = 7368801;
    }

    else
    {
      v2 = 0x65746973626577;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_254FF1340();
  }

  return v11 & 1;
}

uint64_t sub_254FF03BC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_254FF2404();
  a2(v5, a1);
  return sub_254FF2434();
}

uint64_t sub_254FF040C()
{
  sub_254FF1FC4();
}

uint64_t sub_254FF0528()
{
  sub_254FF1FC4();
}

uint64_t sub_254FF0598()
{
  SoftwareCategory.rawValue.getter();
  sub_254FF1FC4();
}

uint64_t sub_254FF05F8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_254FF1368();
      break;
    default:
      break;
  }

  sub_254FF1FC4();
}

uint64_t sub_254FF06E0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_254FF135C();
  }

  sub_254FF1FC4();
}

uint64_t sub_254FF0758(uint64_t a1, char a2)
{
  sub_254FF2404();
  if (a2)
  {
    sub_254FF135C();
  }

  sub_254FF1FC4();

  return sub_254FF2434();
}

uint64_t sub_254FF07FC()
{
  sub_254FF2404();
  SoftwareCategory.rawValue.getter();
  sub_254FF1FC4();

  return sub_254FF2434();
}

uint64_t sub_254FF0860()
{
  sub_254FF2404();
  sub_254FF1FC4();

  return sub_254FF2434();
}

uint64_t sub_254FF08E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_254FF2404();
  a3(v6, a2);
  return sub_254FF2434();
}

uint64_t WalletOrderTransaction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for WalletOrderTransaction()
{
  result = qword_27F76CE58;
  if (!qword_27F76CE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletOrderTransaction.description.getter()
{
  v1 = (v0 + *(type metadata accessor for WalletOrderTransaction() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WalletOrderTransaction.category.getter()
{
  result = sub_254FF137C();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_254FF0AD8@<X0>(uint64_t *a1@<X8>)
{
  result = WalletOrderTransaction.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatformDataActions::TransactionMerchantCategory_optional __swiftcall TransactionMerchantCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TransactionMerchantCategory.rawValue.getter()
{
  result = 1685024614;
  switch(*v0)
  {
    case 1:
      result = 0x6961747265746E65;
      break;
    case 2:
      result = 0x6C6576617274;
      break;
    case 3:
      result = 0x676E6970706F6873;
      break;
    case 4:
      result = 0x616368746C616568;
      break;
    case 5:
      result = 0x65636E616E6966;
      break;
    case 6:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254FF0C5C()
{
  result = qword_27F76CE40;
  if (!qword_27F76CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE40);
  }

  return result;
}

uint64_t sub_254FF0D24@<X0>(uint64_t *a1@<X8>)
{
  result = TransactionMerchantCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254FF0D50()
{
  result = qword_27F76CE48;
  if (!qword_27F76CE48)
  {
    sub_254FC5448(&qword_27F76CE50, &qword_254FF4C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE48);
  }

  return result;
}

uint64_t sub_254FF0DD8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = sub_254FDFC9C(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_254FC0048(&qword_27F76CC88, ",5");
      v14 = sub_254FDFC9C(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = sub_254FC0048(&qword_27F76CE38, &qword_254FF4B90);
        v12 = a3[8];
      }
    }

    return sub_254FC5364(a1 + v12, a2, v11);
  }
}

uint64_t sub_254FF0F18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = sub_254FDFC9C(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_254FC0048(&qword_27F76CC88, ",5");
      v14 = sub_254FDFC9C(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = sub_254FC0048(&qword_27F76CE38, &qword_254FF4B90);
        v12 = a4[8];
      }
    }

    return sub_254FC4BB8(v5 + v12, a2, a2, v11);
  }

  return result;
}

void sub_254FF1040()
{
  sub_254FF1160(319, &qword_27F76CB58, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_254FF1160(319, &qword_27F76CCD8, MEMORY[0x277CBA1B8]);
    if (v1 <= 0x3F)
    {
      sub_254FD6F54();
      if (v2 <= 0x3F)
      {
        sub_254FF1160(319, &qword_27F76CE68, MEMORY[0x277CBA0A0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254FF1160(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_254FF21A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionMerchantCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransactionMerchantCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x254FF1308);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254FF1340()
{

  return sub_254FF2364();
}

uint64_t sub_254FF137C()
{

  return type metadata accessor for WalletOrderTransaction();
}