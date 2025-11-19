uint64_t sub_2442E5150(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_244313108() & 1) == 0)
  {
    return 0;
  }

  return sub_2442E4D50(v2, v3);
}

uint64_t sub_2442E51C4()
{
  sub_2443131A8();
  sub_244312CF8();
  return sub_2443131D8();
}

uint64_t sub_2442E5228()
{
  sub_2443131A8();
  sub_244312CF8();
  return sub_2443131D8();
}

uint64_t sub_2442E5274@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_244312F98();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2442E52F4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_244312F98();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2442E534C(uint64_t a1)
{
  v2 = sub_2442F18E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E5388(uint64_t a1)
{
  v2 = sub_2442F18E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442E53D8(char a1)
{
  result = 0x6570797440;
  switch(a1)
  {
    case 1:
      result = 0x687061726740;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x726F68747561;
      break;
    case 6:
      result = 0x656873696C627570;
      break;
    case 7:
      result = 0x7255656372756F73;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 1701669236;
      break;
    case 10:
      v3 = 1885696624;
      goto LABEL_23;
    case 11:
      v3 = 1802465123;
LABEL_23:
      result = v3 | 0x656D695400000000;
      break;
    case 12:
      result = 0x6D69546C61746F74;
      break;
    case 13:
      result = 0x4D676E696B6F6F63;
      break;
    case 14:
      result = 0x6C62755065746164;
      break;
    case 15:
      result = 0x7543657069636572;
      break;
    case 16:
      result = 0x7364726F7779656BLL;
      break;
    case 17:
      result = 0x6959657069636572;
      break;
    case 18:
      result = 0x617551646C656979;
      break;
    case 19:
      result = 0x6143657069636572;
      break;
    case 20:
      result = 0x6569646572676E69;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0x7463757274736E69;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0x65676175676E616CLL;
      break;
    case 25:
      result = 0x6175676E614C6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2442E5718(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2442E53D8(*a1);
  v5 = v4;
  if (v3 == sub_2442E53D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_244313108();
  }

  return v8 & 1;
}

uint64_t sub_2442E57A0()
{
  v1 = *v0;
  sub_2443131A8();
  sub_2442E53D8(v1);
  sub_244312CF8();

  return sub_2443131D8();
}

uint64_t sub_2442E5804()
{
  sub_2442E53D8(*v0);
  sub_244312CF8();
}

uint64_t sub_2442E5858()
{
  v1 = *v0;
  sub_2443131A8();
  sub_2442E53D8(v1);
  sub_244312CF8();

  return sub_2443131D8();
}

uint64_t sub_2442E58B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2442F3220();
  *a2 = result;
  return result;
}

uint64_t sub_2442E58E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2442E53D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2442E591C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2442F3220();
  *a1 = result;
  return result;
}

uint64_t sub_2442E5950(uint64_t a1)
{
  v2 = sub_2442F1240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E598C(uint64_t a1)
{
  v2 = sub_2442F1240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v512 = a1;
  v491 = a2;
  v3 = sub_244312EE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v471 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v497 = sub_244312ED8();
  *&v508 = *(v497 - 8);
  v8 = *(v508 + 64);
  v9 = MEMORY[0x28223BE20](v497);
  v496 = &v471 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v500 = (&v471 - v11);
  v12 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v489 = &v471 - v14;
  v15 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v488 = &v471 - v17;
  v18 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v487 = &v471 - v20;
  v21 = sub_2442C6564(&qword_27EDDEFD0, &unk_2443160E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v492 = &v471 - v23;
  v498 = sub_244312F28();
  *&v494 = *(v498 - 8);
  v24 = *(v494 + 64);
  MEMORY[0x28223BE20](v498);
  v493 = &v471 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  *&v475 = *(v476 - 8);
  v26 = *(v475 + 64);
  MEMORY[0x28223BE20](v476);
  v486 = &v471 - v27;
  v28 = sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  v501 = *(v28 - 8);
  v29 = *(v501 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v495 = &v471 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v474 = &v471 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v471 - v35;
  MEMORY[0x28223BE20](v34);
  v513 = &v471 - v37;
  v38 = type metadata accessor for InternalJSONLDRecipe(0);
  v39 = *(*(v38 - 1) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v471 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v40 + 28);
  v44 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v504 = v43;
  v479 = v44;
  v478 = v46;
  v477 = v45 + 56;
  (v46)(&v42[v43], 1, 1);
  v47 = &v42[v38[8]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v505 = v47;
  v48 = v38[9];
  v49 = sub_244312BB8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v506 = v48;
  v482 = v49;
  v481 = v51;
  v480 = v50 + 56;
  (v51)(&v42[v48], 1, 1);
  v52 = v38[14];
  v53 = sub_244312C08();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v507 = v52;
  v485 = v53;
  v484 = v55;
  v483 = v54 + 56;
  (v55)(&v42[v52], 1, 1);
  v56 = &v42[v38[21]];
  *v56 = 0;
  *(v56 + 1) = 0;
  v490 = v56;
  v509 = v38;
  v57 = v38[22];
  v510 = v42;
  v502 = &v42[v57];
  *&v42[v57] = xmmword_244317110;
  if (qword_27EDDE818 != -1)
  {
    swift_once();
  }

  v503 = v28;
  v58 = sub_244312C38();
  v511 = sub_2442D40C8(v58, qword_27EDED120);
  v59 = sub_244312C18();
  v60 = sub_244312E48();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_2442C5000, v59, v60, "Will decode JSON-LD", v61, 2u);
    MEMORY[0x245D5F2C0](v61, -1, -1);
  }

  v62 = v512[4];
  sub_2442C65AC(v512, v512[3]);
  v63 = sub_2442F1240();
  sub_244313228();
  if (!v2)
  {
    v471 = *(v501 + 32);
    v471(v513, v36, v503);
    v75 = sub_244312C18();
    v76 = sub_244312E48();
    v77 = os_log_type_enabled(v75, v76);
    v499 = 0;
    v472 = v63;
    if (v77)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2442C5000, v75, v76, "JSON-LD root element is dictionary.", v78, 2u);
      MEMORY[0x245D5F2C0](v78, -1, -1);
    }

    v79 = v510;
LABEL_14:
    KeyPath = swift_getKeyPath();
    v495 = sub_2442C6564(&qword_27EDDF398, &qword_2443171E8);
    inited = swift_initStackObject();
    v508 = xmmword_244317120;
    *(inited + 16) = xmmword_244317120;
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(inited + 32) = sub_2442F1304;
    *(inited + 40) = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    *(v83 + 24) = sub_2442F433C;
    *(v83 + 32) = 0;
    *(inited + 48) = sub_2442F1344;
    *(inited + 56) = v83;
    v84 = sub_244312E38();
    *&v518 = KeyPath;

    v496 = sub_2442C6564(&qword_27EDDF3A0, &qword_2443171F0);
    v85 = sub_244312CD8();
    v87 = v86;
    v88 = sub_2442EE07C(v85, v86, v84, inited);
    swift_setDeallocating();
    v473 = sub_2442C6564(&qword_27EDDF3A8, &qword_2443171F8);
    swift_arrayDestroy();
    if (v88)
    {
    }

    else
    {

      v89 = sub_244312C18();

      if (!os_log_type_enabled(v89, v84))
      {

        v88 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v518 = v91;
      *v90 = 136446466;
      v92 = sub_2442EEF8C(v85, v87, &v518);

      *(v90 + 4) = v92;
      *(v90 + 12) = 2082;
      v88 = MEMORY[0x277D84F90];
      *&v515 = MEMORY[0x277D84F90];
      sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
      v93 = sub_244312CD8();
      v95 = sub_2442EEF8C(v93, v94, &v518);

      *(v90 + 14) = v95;
      swift_arrayDestroy();
      MEMORY[0x245D5F2C0](v91, -1, -1);
      MEMORY[0x245D5F2C0](v90, -1, -1);
    }

LABEL_21:
    v96 = (v88 + 40);
    v97 = -*(v88 + 16);
    v98 = -1;
    v99 = 0xE600000000000000;
    while (v97 + v98 != -1)
    {
      if (++v98 >= *(v88 + 16))
      {
        __break(1u);
        goto LABEL_211;
      }

      v100 = *(v96 - 1);
      v101 = *v96;
      if (sub_244312CE8() == 0x657069636572 && v102 == 0xE600000000000000)
      {

LABEL_36:
        v110 = v499;

        v111 = sub_244312C18();
        v112 = sub_244312E28();
        v115 = os_log_type_enabled(v111, v112);
        v97 = v503;
        v99 = v513;
        if (v115)
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          v114 = "Found recipe at top level.";
LABEL_38:
          _os_log_impl(&dword_2442C5000, v111, v112, v114, v113, 2u);
          MEMORY[0x245D5F2C0](v113, -1, -1);
        }

        goto LABEL_39;
      }

      v96 += 2;
      v104 = sub_244313108();

      if (v104)
      {
        goto LABEL_36;
      }
    }

    v105 = sub_244312C18();
    v106 = sub_244312E48();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_2442C5000, v105, v106, "Look for @graph entry in top level dictionary.", v107, 2u);
      MEMORY[0x245D5F2C0](v107, -1, -1);
    }

    LOBYTE(v520) = 1;
    v97 = v503;
    v99 = v513;
    v108 = v499;
    sub_244312FA8();
    v109 = v472;
    if (v108)
    {
      v110 = 0;
      MEMORY[0x245D5F140](v108);
      v515 = 0u;
      v516 = 0u;
      v517 = 0;
      sub_2442F3A40(&v515, &qword_27EDDF490, &qword_244317500);
      v111 = sub_244312C18();
      v112 = sub_244312E28();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        v114 = "No @graph entry at top level. Will attempt to decode root object as recipe.";
        goto LABEL_38;
      }

LABEL_39:
    }

    else
    {
      v499 = 0;
      sub_2442F186C(&v515, &v518);
      sub_2442C65AC(&v518, *(&v519 + 1));
      if ((sub_2443130F8() & 1) == 0)
      {
        v472 = v109;
        v500 = (v475 + 8);
        *&v153 = 136446466;
        v475 = v153;
        *&v153 = 136446210;
        v497 = v153;
LABEL_60:
        sub_2442F1884(&v518, &v515);
        sub_2442F1294(&v518, *(&v519 + 1));
        sub_2442F18E8();
        v154 = v499;
        sub_2443130E8();
        if (v154)
        {
LABEL_211:
          (*(v501 + 8))(v99, v97);
        }

        else
        {
          v499 = 0;
          v155 = swift_getKeyPath();
          sub_2442C6564(&qword_27EDDF4A0, &qword_244317508);
          v156 = swift_allocObject();
          *(v156 + 16) = v508;
          *(v156 + 32) = sub_2442F193C;
          *(v156 + 40) = 0;
          v157 = swift_allocObject();
          *(v157 + 16) = sub_2442F433C;
          *(v157 + 24) = 0;
          *(v156 + 48) = sub_2442F1954;
          *(v156 + 56) = v157;
          v158 = sub_244312E38();
          v520 = v155;

          v159 = sub_244312CD8();
          v161 = v160;
          v162 = sub_2442EE07C(v159, v160, v158, v156);
          swift_setDeallocating();
          sub_2442C6564(&qword_27EDDF4A8, &qword_244317510);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          if (v162)
          {
          }

          else
          {

            v163 = sub_244312C18();

            if (os_log_type_enabled(v163, v158))
            {
              v164 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              v520 = v165;
              *v164 = v475;
              v166 = sub_2442EEF8C(v159, v161, &v520);

              *(v164 + 4) = v166;
              *(v164 + 12) = 2082;
              v167 = MEMORY[0x277D84F90];
              v514 = MEMORY[0x277D84F90];
              sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
              v168 = sub_244312CD8();
              v170 = sub_2442EEF8C(v168, v169, &v520);

              *(v164 + 14) = v170;
              swift_arrayDestroy();
              MEMORY[0x245D5F2C0](v165, -1, -1);
              MEMORY[0x245D5F2C0](v164, -1, -1);

              v162 = v167;
            }

            else
            {

              v162 = MEMORY[0x277D84F90];
            }
          }

          v99 = v513;

          v171 = sub_244312C18();
          v172 = sub_244312E28();

          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v520 = v174;
            *v173 = v497;
            v175 = MEMORY[0x245D5E9E0](v162, MEMORY[0x277D837D0]);
            v177 = sub_2442EEF8C(v175, v176, &v520);

            *(v173 + 4) = v177;
            _os_log_impl(&dword_2442C5000, v171, v172, "Looking through graph entries. Current entry types=%{public}s", v173, 0xCu);
            sub_2442C6908(v174);
            MEMORY[0x245D5F2C0](v174, -1, -1);
            MEMORY[0x245D5F2C0](v173, -1, -1);
          }

          v97 = v503;
          v178 = (v162 + 40);
          v179 = -1;
          while (1)
          {
            ++v179;
            v180 = *(v162 + 16);
            if (v179 == v180)
            {

              (*v500)(v486, v476);
              sub_2442C6908(&v515);
              sub_2442C65AC(&v518, *(&v519 + 1));
              v187 = sub_2443130F8();
              v79 = v510;
              if ((v187 & 1) == 0)
              {
                goto LABEL_60;
              }

              goto LABEL_209;
            }

            if (v179 >= v180)
            {
              __break(1u);
              goto LABEL_213;
            }

            v181 = *(v178 - 1);
            v182 = *v178;
            v183 = sub_244312CE8();
            v171 = v184;
            if (v183 == 0x657069636572 && v184 == 0xE600000000000000)
            {
              break;
            }

            v178 += 2;
            v186 = sub_244313108();

            if (v186)
            {
              goto LABEL_204;
            }
          }

LABEL_204:

          v465 = sub_244312C18();
          v466 = sub_244312E48();
          v467 = os_log_type_enabled(v465, v466);
          v79 = v510;
          v468 = v499;
          v469 = v474;
          if (v467)
          {
            v470 = swift_slowAlloc();
            *v470 = 0;
            _os_log_impl(&dword_2442C5000, v465, v466, "Found recipe in @graph array.", v470, 2u);
            MEMORY[0x245D5F2C0](v470, -1, -1);
          }

          sub_2442F1294(&v515, *(&v516 + 1));
          sub_2443130E8();
          (*v500)(v486, v476);
          (*(v501 + 8))(v99, v97);
          if (!v468)
          {
            v499 = 0;
            v471(v99, v469, v97);
            sub_2442C6908(&v515);
            goto LABEL_209;
          }
        }

        sub_2442C6908(&v515);
        sub_2442C6908(&v518);
        goto LABEL_82;
      }

LABEL_209:
      sub_2442C6908(&v518);
      v110 = v499;
    }

    LOBYTE(v518) = 2;
    v116 = sub_244313008();
    if (v110)
    {
      (*(v501 + 8))(v99, v97);
      goto LABEL_82;
    }

    v118 = v117;
    v499 = 0;
    v119 = v116;
    *v79 = v116;
    v79[1] = v117;

    v120 = sub_244312C18();
    v121 = sub_244312E48();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v518 = v123;
      *v122 = 136446210;
      v124 = sub_2442EEF8C(v119, v118, &v518);

      *(v122 + 4) = v124;
      _os_log_impl(&dword_2442C5000, v120, v121, "Decoding JSON-LD for: %{public}s", v122, 0xCu);
      sub_2442C6908(v123);
      MEMORY[0x245D5F2C0](v123, -1, -1);
      MEMORY[0x245D5F2C0](v122, -1, -1);
    }

    else
    {
    }

    v126 = v493;
    v127 = v492;
    v128 = v512[4];
    sub_2442C65AC(v512, v512[3]);
    v129 = sub_244313218();
    sub_244312F18();
    v130 = v494;
    v131 = v498;
    result = (*(v494 + 48))(v127, 1, v498);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v130 + 32))(v126, v127, v131);
    if (*(v129 + 16) && (v133 = sub_2442DC91C(v126), (v134 & 1) != 0))
    {
      sub_2442F1810(*(v129 + 56) + 32 * v133, &v518);
      (*(v130 + 8))(v126, v131);

      sub_2442C6564(&qword_27EDDF488, &qword_2443174F8);
      if (swift_dynamicCast())
      {
        v135 = v515;
        goto LABEL_54;
      }
    }

    else
    {

      (*(v130 + 8))(v126, v131);
    }

    v135 = &unk_2857A8E30;
LABEL_54:
    *&v497 = v135;
    v136 = swift_getKeyPath();
    v500 = sub_2442C6564(&qword_27EDDF3B0, &qword_244317220);
    v137 = swift_allocObject();
    v494 = xmmword_244313970;
    *(v137 + 16) = xmmword_244313970;
    v138 = swift_allocObject();
    *(v138 + 16) = 3;
    *(v137 + 32) = sub_2442F1370;
    *(v137 + 40) = v138;
    v139 = sub_244312E38();
    *&v518 = v136;

    sub_2442C6564(&qword_27EDDF3B8, &qword_244317228);
    v140 = sub_244312CD8();
    v142 = v141;
    v143 = sub_2442ED22C(v140, v141, v139, v137);
    v145 = v144;
    swift_setDeallocating();
    sub_2442F3A40(v137 + 32, &qword_27EDDF3C0, &qword_244317230);
    swift_deallocClassInstance();
    if (v145)
    {
    }

    else
    {

      v146 = sub_244312C18();

      if (os_log_type_enabled(v146, v139))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v515 = v148;
        *v147 = 136446466;
        v149 = sub_2442EEF8C(v140, v142, &v515);

        *(v147 + 4) = v149;
        *(v147 + 12) = 2082;
        v145 = 0xE000000000000000;
        *&v518 = 0;
        *(&v518 + 1) = 0xE000000000000000;
        v150 = sub_244312CD8();
        v152 = sub_2442EEF8C(v150, v151, &v515);

        *(v147 + 14) = v152;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v148, -1, -1);
        MEMORY[0x245D5F2C0](v147, -1, -1);

        v143 = 0;
      }

      else
      {

        v143 = 0;
        v145 = 0xE000000000000000;
      }
    }

    v194 = (v497 + 32);
    v79[2] = v143;
    v79[3] = v145;
    v195 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF3C8, &qword_244317258);
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_244317130;
    v197 = swift_allocObject();
    *(v197 + 16) = 4;
    *(v196 + 32) = sub_2442F138C;
    *(v196 + 40) = v197;
    v198 = swift_allocObject();
    *(v198 + 16) = 4;
    *(v198 + 24) = sub_2442E9F0C;
    *(v198 + 32) = 0;
    *(v196 + 48) = sub_2442F13CC;
    *(v196 + 56) = v198;
    v199 = swift_allocObject();
    *(v199 + 16) = 4;
    *(v199 + 24) = sub_2442EA3A4;
    *(v199 + 32) = 0;
    *(v196 + 64) = sub_2442F13F8;
    *(v196 + 72) = v199;
    v200 = swift_allocObject();
    *(v200 + 16) = 4;
    *(v200 + 24) = sub_2442EA49C;
    *(v200 + 32) = 0;
    *(v196 + 80) = sub_2442F1424;
    *(v196 + 88) = v200;
    v201 = sub_244312E38();
    *&v518 = v195;

    sub_2442C6564(&qword_27EDDF3D0, &qword_244317260);
    v202 = sub_244312CD8();
    v204 = v203;
    v205 = sub_2442EE07C(v202, v203, v201, v196);
    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF3D8, &qword_244317268);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v205)
    {
    }

    else
    {

      v206 = sub_244312C18();

      if (os_log_type_enabled(v206, v201))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *&v518 = v208;
        *v207 = 136446466;
        v209 = sub_2442EEF8C(v202, v204, &v518);

        *(v207 + 4) = v209;
        *(v207 + 12) = 2082;
        *&v515 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF480, &qword_2443174F0);
        v210 = sub_244312CD8();
        v212 = sub_2442EEF8C(v210, v211, &v518);

        *(v207 + 14) = v212;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v208, -1, -1);
        MEMORY[0x245D5F2C0](v207, -1, -1);
      }

      else
      {
      }

      v205 = MEMORY[0x277D84F90];
    }

    v79[4] = v205;
    v213 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF3E0, &qword_244317290);
    v214 = swift_allocObject();
    *(v214 + 16) = v508;
    v215 = swift_allocObject();
    *(v214 + 32) = sub_2442F1450;
    *(v215 + 16) = 5;
    *(v214 + 40) = v215;
    v216 = swift_allocObject();
    *(v216 + 16) = 5;
    *(v216 + 24) = sub_2442EA670;
    *(v216 + 32) = 0;
    *(v214 + 48) = sub_2442F14B0;
    *(v214 + 56) = v216;
    v217 = v497;
    v218 = *(v497 + 16);
    v219 = v194;
    v220 = v488;
    while (v218)
    {
      v221 = *v219++;
      --v218;
      if (v221 == 2)
      {
        v222 = sub_244312E38();
        *&v518 = v213;

        sub_2442C6564(&qword_27EDDF478, &qword_2443174E8);
        v223 = sub_244312CD8();
        v224 = v217;
        v225 = v220;
        v226 = v487;
        sub_2442EDC44(v223, v227, v222, v214, v487);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF3E8, &qword_244317298);
        swift_arrayDestroy();
        v228 = v226;
        v220 = v225;
        v217 = v224;
        v79 = v510;
        swift_deallocClassInstance();
        goto LABEL_95;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF3E8, &qword_244317298);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v228 = v487;
    v478(v487, 1, 1, v479);
LABEL_95:
    sub_2442E40C4(v228, v79 + v504, &qword_27EDDF368, &qword_244317190);
    v229 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF3F0, &qword_2443172C0);
    v230 = swift_allocObject();
    *(v230 + 16) = v508;
    v231 = swift_allocObject();
    *(v230 + 32) = sub_2442F14D0;
    *(v231 + 16) = 6;
    *(v230 + 40) = v231;
    v232 = swift_allocObject();
    *(v232 + 16) = 6;
    *(v232 + 24) = sub_2442EA73C;
    *(v232 + 32) = 0;
    *(v230 + 48) = sub_2442F14EC;
    *(v230 + 56) = v232;
    v233 = *(v217 + 16);
    v234 = v194;
    while (v233)
    {
      v235 = *v234++;
      --v233;
      if (v235 == 3)
      {
        v236 = sub_244312E38();
        *&v518 = v229;

        sub_2442C6564(&qword_27EDDF470, &qword_2443174E0);
        v237 = sub_244312CD8();
        sub_2442ED954(v237, v238, v236, v230, &v518);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF3F8, &qword_2443172C8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v239 = *(&v518 + 1);
        v240 = v518;
        goto LABEL_100;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF3F8, &qword_2443172C8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v239 = 0;
    v240 = 0;
LABEL_100:
    v241 = v505;
    v242 = *(v505 + 1);

    *v241 = v240;
    *(v241 + 1) = v239;
    v243 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF400, &qword_2443172F0);
    v244 = swift_allocObject();
    *(v244 + 16) = v508;
    v245 = swift_allocObject();
    *(v244 + 32) = sub_2442F150C;
    *(v245 + 16) = 7;
    *(v244 + 40) = v245;
    v246 = swift_allocObject();
    *(v246 + 16) = 8;
    *(v244 + 48) = sub_2442F4464;
    *(v244 + 56) = v246;
    v247 = *(v217 + 16);
    v248 = v194;
    while (v247)
    {
      v249 = *v248++;
      --v247;
      if (v249 == 4)
      {
        v250 = sub_244312E38();
        *&v518 = v243;

        sub_2442C6564(&qword_27EDDF468, &qword_2443174D8);
        v251 = sub_244312CD8();
        sub_2442ED518(v251, v252, v250, v244, &qword_27EDDF370, &qword_244317198, MEMORY[0x277CC9260], v220);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF408, &qword_2443172F8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_105;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF408, &qword_2443172F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v481(v220, 1, 1, v482);
LABEL_105:
    sub_2442E40C4(v220, v79 + v506, &qword_27EDDF370, &qword_244317198);
    v253 = swift_getKeyPath();
    v254 = swift_allocObject();
    *(v254 + 16) = v508;
    v255 = swift_allocObject();
    *(v254 + 32) = sub_2442F156C;
    *(v255 + 16) = 9;
    *(v255 + 24) = sub_2442EA780;
    *(v255 + 32) = 0;
    *(v254 + 40) = v255;
    v256 = swift_allocObject();
    *(v256 + 16) = 10;
    *(v254 + 48) = sub_2442F447C;
    *(v254 + 56) = v256;
    v257 = *(v217 + 16);
    v258 = v194;
    while (v257)
    {
      v259 = *v258++;
      --v257;
      if (v259 == 6)
      {
        v260 = sub_244312E38();
        *&v518 = v253;

        sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
        v261 = sub_244312CD8();
        v263 = sub_2442ED22C(v261, v262, v260, v254);
        v265 = v264;

        goto LABEL_110;
      }
    }

    sub_244312E38();

    v263 = 0;
    v265 = 0;
LABEL_110:
    v266 = (v79 + v509[10]);
    swift_setDeallocating();
    v506 = sub_2442C6564(&qword_27EDDF3C0, &qword_244317230);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v266 = v263;
    v266[1] = v265;
    v267 = swift_getKeyPath();
    v268 = swift_allocObject();
    *(v268 + 16) = v508;
    v269 = swift_allocObject();
    *(v268 + 32) = sub_2442F436C;
    *(v269 + 16) = 9;
    *(v269 + 24) = sub_2442EA7A0;
    *(v269 + 32) = 0;
    *(v268 + 40) = v269;
    v270 = swift_allocObject();
    *(v270 + 16) = 11;
    *(v268 + 48) = sub_2442F447C;
    *(v268 + 56) = v270;
    v271 = *(v217 + 16);
    v272 = v194;
    while (v271)
    {
      v273 = *v272++;
      --v271;
      if (v273 == 7)
      {
        v274 = sub_244312E38();
        *&v518 = v267;

        sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
        v275 = sub_244312CD8();
        v277 = sub_2442ED22C(v275, v276, v274, v268);
        v279 = v278;

        goto LABEL_115;
      }
    }

    sub_244312E38();

    v277 = 0;
    v279 = 0;
LABEL_115:
    v280 = (v79 + v509[11]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v280 = v277;
    v280[1] = v279;
    v281 = swift_getKeyPath();
    v282 = swift_allocObject();
    *(v282 + 16) = v508;
    v283 = swift_allocObject();
    *(v282 + 32) = sub_2442F436C;
    *(v283 + 16) = 9;
    *(v283 + 24) = sub_2442EA7C0;
    *(v283 + 32) = 0;
    *(v282 + 40) = v283;
    v284 = swift_allocObject();
    *(v284 + 16) = 12;
    *(v282 + 48) = sub_2442F447C;
    *(v282 + 56) = v284;
    v285 = *(v217 + 16);
    v286 = v194;
    while (v285)
    {
      v287 = *v286++;
      --v285;
      if (v287 == 8)
      {
        v288 = sub_244312E38();
        *&v518 = v281;

        sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
        v289 = sub_244312CD8();
        v291 = sub_2442ED22C(v289, v290, v288, v282);
        v293 = v292;

        goto LABEL_120;
      }
    }

    sub_244312E38();

    v291 = 0;
    v293 = 0;
LABEL_120:
    v294 = (v79 + v509[12]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v294 = v291;
    v294[1] = v293;
    v295 = swift_getKeyPath();
    v296 = swift_allocObject();
    *(v296 + 16) = v494;
    v297 = swift_allocObject();
    *(v296 + 32) = sub_2442F447C;
    *(v297 + 16) = 13;
    *(v296 + 40) = v297;
    v298 = *(v217 + 16);
    v299 = v194;
    do
    {
      if (!v298)
      {
        sub_244312E38();

        swift_setDeallocating();
        sub_2442F3A40(v296 + 32, &qword_27EDDF3C0, &qword_244317230);
        swift_deallocClassInstance();
        v307 = 0;
        v306 = 0;
        goto LABEL_127;
      }

      v300 = *v299++;
      --v298;
    }

    while (v300 != 9);
    v301 = sub_244312E38();
    *&v518 = v295;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v302 = sub_244312CD8();
    v304 = sub_2442ED22C(v302, v303, v301, v296);
    v306 = v305;

    swift_setDeallocating();
    sub_2442F3A40(v296 + 32, &qword_27EDDF3C0, &qword_244317230);
    swift_deallocClassInstance();
    if (v306)
    {
      v307 = v304;
    }

    else
    {
      v307 = 0;
    }

LABEL_127:
    v308 = (v79 + v509[13]);
    *v308 = v307;
    v308[1] = v306;
    v309 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF410, &qword_2443173A0);
    v310 = swift_allocObject();
    *(v310 + 16) = v508;
    v311 = swift_allocObject();
    *(v310 + 32) = sub_2442F1598;
    *(v311 + 16) = 14;
    *(v310 + 40) = v311;
    v312 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v313 = swift_allocObject();
    *(v313 + 16) = v312;
    v314 = swift_allocObject();
    *(v314 + 16) = sub_2442F1630;
    *(v314 + 24) = v313;
    v315 = swift_allocObject();
    *(v315 + 16) = 14;
    *(v315 + 24) = sub_2442F1670;
    *(v315 + 32) = v314;
    *(v310 + 48) = sub_2442F16D8;
    *(v310 + 56) = v315;
    v316 = *(v217 + 16);
    v317 = v194;
    v318 = v489;
    while (v316)
    {
      v319 = *v317++;
      --v316;
      if (v319 == 10)
      {
        v320 = sub_244312E38();
        *&v518 = v309;

        sub_2442C6564(&qword_27EDDF460, &qword_2443174D0);
        v321 = sub_244312CD8();
        sub_2442ED518(v321, v322, v320, v310, &qword_27EDDF378, &unk_2443171A0, MEMORY[0x277CC9578], v318);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF418, &qword_2443173A8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_132;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF418, &qword_2443173A8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v484(v318, 1, 1, v485);
LABEL_132:
    sub_2442E40C4(v318, v79 + v507, &qword_27EDDF378, &unk_2443171A0);
    v323 = swift_getKeyPath();
    v324 = swift_allocObject();
    *(v324 + 16) = v508;
    v325 = swift_allocObject();
    *(v324 + 32) = sub_2442F447C;
    *(v325 + 16) = 15;
    *(v324 + 40) = v325;
    v326 = swift_allocObject();
    *(v326 + 16) = 15;
    *(v326 + 24) = sub_2442F4354;
    *(v326 + 32) = 0;
    *(v324 + 48) = sub_2442F16F8;
    *(v324 + 56) = v326;
    v327 = *(v217 + 16);
    v328 = v194;
    do
    {
      if (!v327)
      {
        sub_244312E38();

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v336 = 0;
        v335 = 0;
        goto LABEL_139;
      }

      v329 = *v328++;
      --v327;
    }

    while (v329 != 11);
    v330 = sub_244312E38();
    *&v518 = v323;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v331 = sub_244312CD8();
    v333 = sub_2442ED22C(v331, v332, v330, v324);
    v335 = v334;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v335)
    {
      v336 = v333;
    }

    else
    {
      v336 = 0;
    }

LABEL_139:
    v337 = (v79 + v509[15]);
    *v337 = v336;
    v337[1] = v335;
    v338 = swift_getKeyPath();
    v339 = sub_244312E48();
    v340 = swift_allocObject();
    *(v340 + 16) = v508;
    v341 = swift_allocObject();
    *(v341 + 16) = 16;
    *(v341 + 24) = sub_2442EA8BC;
    *(v341 + 32) = 0;
    *(v340 + 32) = sub_2442F4384;
    *(v340 + 40) = v341;
    v342 = swift_allocObject();
    *(v342 + 16) = 16;
    *(v340 + 48) = sub_2442F4494;
    *(v340 + 56) = v342;
    *&v518 = v338;

    v343 = sub_244312CD8();
    v345 = v344;
    v346 = sub_2442EE07C(v343, v344, v339, v340);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v346)
    {
    }

    else
    {

      v347 = sub_244312C18();

      if (os_log_type_enabled(v347, v339))
      {
        v348 = swift_slowAlloc();
        v349 = swift_slowAlloc();
        *&v518 = v349;
        *v348 = 136446466;
        v350 = sub_2442EEF8C(v343, v345, &v518);

        *(v348 + 4) = v350;
        *(v348 + 12) = 2082;
        v351 = MEMORY[0x277D84F90];
        *&v515 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
        v352 = sub_244312CD8();
        v354 = sub_2442EEF8C(v352, v353, &v518);

        *(v348 + 14) = v354;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v349, -1, -1);
        MEMORY[0x245D5F2C0](v348, -1, -1);

        v346 = v351;
      }

      else
      {

        v346 = MEMORY[0x277D84F90];
      }
    }

    v355 = v510;
    v356 = *(v346 + 16);
    if (v356)
    {
      *&v518 = MEMORY[0x277D84F90];
      sub_2442EF4C0(0, v356, 0);
      v357 = v518;
      v358 = (v346 + 40);
      do
      {
        v360 = *(v358 - 1);
        v359 = *v358;
        *&v518 = v357;
        v362 = *(v357 + 16);
        v361 = *(v357 + 24);

        if (v362 >= v361 >> 1)
        {
          sub_2442EF4C0((v361 > 1), v362 + 1, 1);
          v357 = v518;
        }

        *(v357 + 16) = v362 + 1;
        v363 = v357 + 16 * v362;
        *(v363 + 32) = v360;
        *(v363 + 40) = v359;
        v358 += 2;
        --v356;
      }

      while (v356);

      v355 = v510;
    }

    else
    {

      v357 = MEMORY[0x277D84F90];
    }

    *(v355 + v509[16]) = v357;
    v364 = swift_getKeyPath();
    v365 = swift_allocObject();
    *(v365 + 16) = xmmword_244317140;
    v366 = swift_allocObject();
    *(v365 + 32) = sub_2442F447C;
    *(v366 + 16) = 17;
    *(v365 + 40) = v366;
    v367 = swift_allocObject();
    *(v367 + 16) = 17;
    *(v367 + 24) = sub_2442F4354;
    *(v367 + 32) = 0;
    *(v365 + 48) = sub_2442F439C;
    *(v365 + 56) = v367;
    v368 = swift_allocObject();
    *(v368 + 16) = 18;
    *(v365 + 64) = sub_2442F447C;
    *(v365 + 72) = v368;
    v369 = swift_allocObject();
    *(v369 + 16) = 18;
    *(v369 + 24) = sub_2442F4354;
    *(v369 + 32) = 0;
    *(v365 + 80) = sub_2442F439C;
    *(v365 + 88) = v369;
    v370 = swift_allocObject();
    *(v370 + 16) = 17;
    *(v370 + 24) = sub_2442EAAF8;
    *(v370 + 32) = 0;
    *(v365 + 96) = sub_2442F1724;
    *(v365 + 104) = v370;
    v371 = *(v497 + 16);
    v372 = v194;
    do
    {
      if (!v371)
      {
        sub_244312E38();

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v380 = 0;
        v379 = 0;
        goto LABEL_158;
      }

      v373 = *v372++;
      --v371;
    }

    while (v373 != 13);
    v374 = sub_244312E38();
    *&v518 = v364;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v375 = sub_244312CD8();
    v377 = sub_2442ED22C(v375, v376, v374, v365);
    v379 = v378;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v379)
    {
      v380 = v377;
    }

    else
    {
      v380 = 0;
    }

LABEL_158:
    v381 = (v355 + v509[17]);
    *v381 = v380;
    v381[1] = v379;
    v382 = swift_getKeyPath();
    v383 = swift_allocObject();
    *(v383 + 16) = v508;
    v384 = swift_allocObject();
    *(v383 + 32) = sub_2442F447C;
    *(v384 + 16) = 19;
    *(v383 + 40) = v384;
    v385 = swift_allocObject();
    *(v385 + 16) = 19;
    *(v385 + 24) = sub_2442F4354;
    *(v385 + 32) = 0;
    *(v383 + 48) = sub_2442F439C;
    *(v383 + 56) = v385;
    v386 = *(v497 + 16);
    v387 = v194;
    do
    {
      if (!v386)
      {
        sub_244312E38();

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v395 = 0;
        v394 = 0;
        goto LABEL_165;
      }

      v388 = *v387++;
      --v386;
    }

    while (v388 != 14);
    v389 = sub_244312E38();
    *&v518 = v382;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v390 = sub_244312CD8();
    v392 = sub_2442ED22C(v390, v391, v389, v383);
    v394 = v393;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v394)
    {
      v395 = v392;
    }

    else
    {
      v395 = 0;
    }

LABEL_165:
    v396 = (v355 + v509[18]);
    *v396 = v395;
    v396[1] = v394;
    v397 = swift_getKeyPath();
    v398 = swift_allocObject();
    *(v398 + 16) = v508;
    v399 = swift_allocObject();
    *(v399 + 16) = 21;
    *(v398 + 32) = sub_2442F4494;
    *(v398 + 40) = v399;
    v400 = swift_allocObject();
    *(v400 + 16) = 20;
    *(v398 + 48) = sub_2442F4494;
    *(v398 + 56) = v400;
    v401 = sub_244312E38();
    *&v518 = v397;

    v402 = sub_244312CD8();
    v404 = v403;
    v405 = sub_2442EE07C(v402, v403, v401, v398);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v405)
    {
    }

    else
    {

      v406 = sub_244312C18();

      if (os_log_type_enabled(v406, v401))
      {
        v407 = swift_slowAlloc();
        v408 = swift_slowAlloc();
        *&v518 = v408;
        *v407 = 136446466;
        v409 = sub_2442EEF8C(v402, v404, &v518);

        *(v407 + 4) = v409;
        *(v407 + 12) = 2082;
        v410 = MEMORY[0x277D84F90];
        *&v515 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
        v411 = sub_244312CD8();
        v413 = sub_2442EEF8C(v411, v412, &v518);

        *(v407 + 14) = v413;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v408, -1, -1);
        MEMORY[0x245D5F2C0](v407, -1, -1);

        v405 = v410;
      }

      else
      {

        v405 = MEMORY[0x277D84F90];
      }
    }

    v162 = v510;
    v414 = *(v405 + 16);
    if (v414)
    {
      *&v518 = MEMORY[0x277D84F90];
      sub_2442EF4C0(0, v414, 0);
      v415 = v518;
      v416 = (v405 + 40);
      do
      {
        v418 = *(v416 - 1);
        v417 = *v416;
        *&v518 = v415;
        v420 = *(v415 + 16);
        v419 = *(v415 + 24);

        if (v420 >= v419 >> 1)
        {
          sub_2442EF4C0((v419 > 1), v420 + 1, 1);
          v415 = v518;
        }

        *(v415 + 16) = v420 + 1;
        v421 = v415 + 16 * v420;
        *(v421 + 32) = v418;
        *(v421 + 40) = v417;
        v416 += 2;
        --v414;
      }

      while (v414);

      v162 = v510;
    }

    else
    {

      v415 = MEMORY[0x277D84F90];
    }

    *(v162 + v509[19]) = v415;
    v422 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF420, &qword_244317470);
    v423 = swift_allocObject();
    *(v423 + 16) = xmmword_244317150;
    v424 = swift_allocObject();
    *(v424 + 16) = 23;
    *(v423 + 32) = sub_2442F178C;
    *(v423 + 40) = v424;
    v425 = swift_allocObject();
    *(v425 + 16) = 23;
    *(v425 + 24) = sub_2442EAB4C;
    *(v425 + 32) = 0;
    *(v423 + 48) = sub_2442F17A8;
    *(v423 + 56) = v425;
    v426 = swift_allocObject();
    *(v426 + 16) = 22;
    *(v423 + 64) = sub_2442F44AC;
    *(v423 + 72) = v426;
    v427 = sub_244312E38();
    *&v518 = v422;

    sub_2442C6564(&qword_27EDDF428, &qword_244317478);
    v428 = sub_244312CD8();
    v430 = v429;
    v431 = sub_2442EE07C(v428, v429, v427, v423);
    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF430, &qword_244317480);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v431)
    {
    }

    else
    {

      v432 = sub_244312C18();

      if (os_log_type_enabled(v432, v427))
      {
        v433 = swift_slowAlloc();
        v434 = swift_slowAlloc();
        *&v518 = v434;
        *v433 = 136446466;
        v435 = sub_2442EEF8C(v428, v430, &v518);

        *(v433 + 4) = v435;
        *(v433 + 12) = 2082;
        *&v515 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF450, &qword_2443174C0);
        v436 = sub_244312CD8();
        v438 = sub_2442EEF8C(v436, v437, &v518);

        *(v433 + 14) = v438;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v434, -1, -1);
        MEMORY[0x245D5F2C0](v433, -1, -1);
      }

      else
      {
      }

      v431 = MEMORY[0x277D84F90];
    }

    v99 = v513;
    *(v162 + v509[20]) = v431;
    v439 = swift_getKeyPath();
    v440 = swift_allocObject();
    *(v440 + 16) = v508;
    v441 = swift_allocObject();
    *(v440 + 32) = sub_2442F447C;
    *(v441 + 16) = 24;
    *(v440 + 40) = v441;
    v442 = swift_allocObject();
    *(v442 + 16) = 25;
    *(v440 + 48) = sub_2442F447C;
    *(v440 + 56) = v442;
    v443 = *(v497 + 16);
    do
    {
      v444 = v443;
      if (!v443)
      {
        break;
      }

      v445 = *v194++;
      --v443;
    }

    while (v445 != 17);

    v446 = sub_244312E38();
    if (v444)
    {
      v447 = v446;
      *&v518 = v439;

      sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
      v448 = sub_244312CD8();
      v450 = sub_2442ED22C(v448, v449, v447, v440);
      v444 = v451;
    }

    else
    {

      v450 = 0;
    }

    v452 = v490;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v452 = v450;
    v452[1] = v444;
    v453 = v512[4];
    sub_2442C65AC(v512, v512[3]);
    v171 = sub_244313218();
    if (qword_27EDDE810 != -1)
    {
LABEL_213:
      swift_once();
    }

    v454 = sub_2442D40C8(v498, qword_27EDDEFB8);
    v455 = v503;
    if (v171[2].isa && (v456 = sub_2442DC91C(v454), (v457 & 1) != 0))
    {
      sub_2442F1810(v171[7].isa + 32 * v456, &v518);
    }

    else
    {
      v518 = 0u;
      v519 = 0u;
    }

    if (*(&v519 + 1))
    {
      sub_2442C6564(&qword_27EDDF440, &qword_2443174B0);
      if (swift_dynamicCast())
      {
        v458 = v515;
        v459 = v512[4];
        sub_2442C65AC(v512, v512[3]);
        *&v515 = sub_2443131E8();
        v458(&v518, &v515);

        (*(v501 + 8))(v99, v455);

        v460 = v518;
        v461 = v502;
        sub_2442E4788(*v502, *(v502 + 1));
        *v461 = v460;
      }

      else
      {
        (*(v501 + 8))(v99, v455);
      }
    }

    else
    {
      (*(v501 + 8))(v99, v455);
      sub_2442F3A40(&v518, &qword_27EDDF438, &qword_2443174A8);
    }

    sub_2442F19D8(v162, v491, type metadata accessor for InternalJSONLDRecipe);
    sub_2442C6908(v512);
    return sub_2442F1A40(v162, type metadata accessor for InternalJSONLDRecipe);
  }

  *&v515 = v2;
  MEMORY[0x245D5F150](v2);
  sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
  if (swift_dynamicCast())
  {
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D84160])
    {
      MEMORY[0x245D5F140](v2);
      (*(v4 + 96))(v7, v3);
      v64 = sub_2442C6564(&qword_27EDDEC40, &qword_244313E00);
      v65 = v508;
      v66 = v500;
      v67 = v497;
      (*(v508 + 32))(v500, &v7[*(v64 + 48)], v497);
      v68 = v496;
      (*(v65 + 16))(v496, v66, v67);
      v69 = sub_244312C18();
      v70 = sub_244312E28();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        if (sub_244312EB8())
        {
          v73 = _swift_stdlib_bridgeErrorToNSError();
          v74 = *(v65 + 8);
          v74(v68, v67);
        }

        else
        {
          v74 = *(v65 + 8);
          v74(v68, v67);
          v73 = 0;
        }

        *(v71 + 4) = v73;
        *v72 = v73;
        _os_log_impl(&dword_2442C5000, v69, v70, "Failed to decode top level object as Dictionary, will try Array. error=%@", v71, 0xCu);
        sub_2442F3A40(v72, &qword_27EDDF4B0, &qword_244317518);
        MEMORY[0x245D5F2C0](v72, -1, -1);
        MEMORY[0x245D5F2C0](v71, -1, -1);

        v125 = v74;
      }

      else
      {

        v125 = *(v65 + 8);
        v125(v68, v67);
      }

      v188 = v512[4];
      sub_2442C65AC(v512, v512[3]);
      sub_2443131F8();
      v79 = v510;
      v189 = v513;
      v190 = v495;
      sub_2442F1294(&v518, *(&v519 + 1));
      sub_2443130E8();
      v471 = *(v501 + 32);
      v471(v189, v190, v503);
      v462 = sub_244312C18();
      v463 = sub_244312E48();
      if (os_log_type_enabled(v462, v463))
      {
        v464 = swift_slowAlloc();
        *v464 = 0;
        _os_log_impl(&dword_2442C5000, v462, v463, "Extracted dictionary from top level array.", v464, 2u);
        MEMORY[0x245D5F2C0](v464, -1, -1);
      }

      v472 = v63;
      v499 = 0;

      v125(v500, v497);
      sub_2442C6908(&v518);
      MEMORY[0x245D5F140](v515);
      goto LABEL_14;
    }

    (*(v4 + 8))(v7, v3);
  }

  MEMORY[0x245D5F140](v515);
  v79 = v510;
LABEL_82:
  v191 = v502;
  v192 = v507;
  sub_2442C6908(v512);
  sub_2442F3A40(v79 + v504, &qword_27EDDF368, &qword_244317190);
  v193 = *(v505 + 1);

  sub_2442F3A40(v79 + v506, &qword_27EDDF370, &qword_244317198);
  sub_2442F3A40(v79 + v192, &qword_27EDDF378, &unk_2443171A0);
  return sub_2442E4788(*v191, *(v191 + 1));
}

uint64_t sub_2442E9D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2442C6564(&qword_27EDDF6A8, &unk_244318190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_244313970;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *a2 = v5;
}

uint64_t static CodingUserInfoKey.propertiesToDecode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2442C6564(&qword_27EDDEFD0, &unk_2443160E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_244312F18();
  v6 = sub_244312F28();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2442E9F0C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v40 = a2;
  v3 = sub_244312BB8();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageObject(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v47 = &v40 - v19;
  v20 = *a1;
  v21 = *(*a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v49 = MEMORY[0x277D84F90];
    sub_2442EF4E0(0, v21, 0);
    v22 = v49;
    v23 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = *(v7 + 72);
    do
    {
      sub_2442F19D8(v23, v10, type metadata accessor for ImageObject);
      sub_2442F3798(v10, v18, &qword_27EDDF370, &qword_244317198);
      sub_2442F1A40(v10, type metadata accessor for ImageObject);
      v49 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2442EF4E0(v25 > 1, v26 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v26 + 1;
      sub_2442F391C(v18, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26);
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  v27 = *(v22 + 16);
  if (v27)
  {
    v28 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v29 = *(v12 + 72);
    v30 = v43;
    v44 = (v42 + 48);
    v45 = (v42 + 32);
    v31 = MEMORY[0x277D84F90];
    v41 = v29;
    do
    {
      v32 = v47;
      sub_2442F3798(v28, v47, &qword_27EDDF370, &qword_244317198);
      v33 = v32;
      v34 = v46;
      sub_2442F391C(v33, v46);
      if ((*v44)(v34, 1, v30) == 1)
      {
        sub_2442F3A40(v34, &qword_27EDDF370, &qword_244317198);
      }

      else
      {
        v35 = v34;
        v36 = *v45;
        (*v45)(v48, v35, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2442DC154(0, *(v31 + 2) + 1, 1, v31);
        }

        v38 = *(v31 + 2);
        v37 = *(v31 + 3);
        if (v38 >= v37 >> 1)
        {
          v31 = sub_2442DC154(v37 > 1, v38 + 1, 1, v31);
        }

        *(v31 + 2) = v38 + 1;
        v30 = v43;
        v36(&v31[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38], v48, v43);
        v29 = v41;
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  *v40 = v31;
  return result;
}

uint64_t sub_2442EA3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2442C6564(&qword_27EDDF030, &qword_2443164C0);
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_244313970;
  result = (*(v5 + 16))(v8 + v7, a1, v4);
  *a2 = v8;
  return result;
}

uint64_t sub_2442EA49C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  sub_2442F3798(a1, v19 - v11, &qword_27EDDF370, &qword_244317198);
  result = (*(v5 + 48))(v12, 1, v4);
  v14 = 0;
  if (result != 1)
  {
    v16 = *(v5 + 32);
    v15 = v5 + 32;
    v16(v8, v12, v4);
    sub_2442C6564(&qword_27EDDF030, &qword_2443164C0);
    v17 = *(v15 + 40);
    v18 = (*(v15 + 48) + 32) & ~*(v15 + 48);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_244313970;
    result = (v16)(v14 + v18, v8, v4);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_2442EA670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v6 = *(v5 - 8);
  if (v4)
  {
    sub_2442F19D8(v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for InternalJSONLDRecipe.Author);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return (*(v6 + 56))(a2, v7, 1, v5);
}

uint64_t sub_2442EA73C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_2442EA780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2442EA7A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2442EA7C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2442EA7E0@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_244312C98();
  v5 = [a1 dateFromString_];

  if (v5)
  {
    sub_244312BF8();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_244312C08();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_2442EA8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v31 = sub_244312B48();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  *&v34 = 44;
  *(&v34 + 1) = 0xE100000000000000;
  v33 = &v34;

  v12 = v11;
  v13 = v3;
  v15 = sub_2442EEBCC(0x7FFFFFFFFFFFFFFFLL, 1, sub_2442F3420, v32, v12, v10, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v28[2] = v13;
    v29 = a2;
    v37 = MEMORY[0x277D84F90];
    sub_2442EF4C0(0, v16, 0);
    v17 = v37;
    v30 = (v6 + 8);
    v28[1] = v15;
    v18 = (v15 + 56);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v34 = *(v18 - 3);
      v35 = v19;
      v36 = v20;

      sub_244312B38();
      sub_2442F3478();
      v21 = sub_244312E78();
      v23 = v22;
      (*v30)(v9, v31);

      v37 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2442EF4C0((v24 > 1), v25 + 1, 1);
        v17 = v37;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += 4;
      --v16;
    }

    while (v16);

    a2 = v29;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *a2 = v17;
  return result;
}

uint64_t sub_2442EAAF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_2443130D8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2442EAB4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_2442C6564(&qword_27EDDF6C0, &qword_2443181A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_244313970;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  *a2 = v7;
  return sub_2442F33BC(v3, v4, v5, v6);
}

uint64_t sub_2442EABE0()
{
  v1 = 0x656D69546B6F6F63;
  if (*v0 != 1)
  {
    v1 = 0x6D69546C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695470657270;
  }
}

uint64_t sub_2442EAC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442F3D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442EAC68(uint64_t a1)
{
  v2 = sub_2442F405C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EACA4(uint64_t a1)
{
  v2 = sub_2442F405C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2442EACE0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2442F3E58(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2442EAD3C()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_2442EAD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442EAE44(uint64_t a1)
{
  v2 = sub_2442F1984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EAE80(uint64_t a1)
{
  v2 = sub_2442F1984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.Author.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_2442C6564(&qword_27EDDF4B8, &qword_244317520);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = sub_244312BB8();
  v19 = *(*(v18 - 8) + 56);
  v27 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442F1984();
  sub_244313228();
  if (v2)
  {
    sub_2442C6908(a1);
    return sub_2442F3A40(v16 + v27, &qword_27EDDF370, &qword_244317198);
  }

  else
  {
    v21 = v25;
    v29 = 0;
    *v16 = sub_244313008();
    v16[1] = v22;
    v28 = 1;
    sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260]);
    sub_244312FF8();
    (*(v21 + 8))(v11, v26);
    sub_2442E40C4(v7, v16 + v27, &qword_27EDDF370, &qword_244317198);
    sub_2442F19D8(v16, v24, type metadata accessor for InternalJSONLDRecipe.Author);
    sub_2442C6908(a1);
    return sub_2442F1A40(v16, type metadata accessor for InternalJSONLDRecipe.Author);
  }
}

uint64_t sub_2442EB240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442EB2C8(uint64_t a1)
{
  v2 = sub_2442F1AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EB304(uint64_t a1)
{
  v2 = sub_2442F1AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.InstructionEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_244313208();
  if (!v2)
  {
    v17[6] = v6;
    sub_2442C65AC(v17, v17[3]);
    v9 = sub_244313118();
    v11 = v10;
    if (qword_27EDDE818 != -1)
    {
      swift_once();
    }

    v12 = sub_244312C38();
    sub_2442D40C8(v12, qword_27EDED120);
    v13 = sub_244312C18();
    v14 = sub_244312E18();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2442C5000, v13, v14, "Decoded InstructionEntry as String", v15, 2u);
      MEMORY[0x245D5F2C0](v15, -1, -1);
    }

    sub_2442C6908(v17);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return sub_2442C6908(a1);
}

uint64_t sub_2442EBB7C()
{
  if (*v0)
  {
    result = 0x7473694C6D657469;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_2442EBBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473694C6D657469 && a2 == 0xEF746E656D656C45)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442EBCA0(uint64_t a1)
{
  v2 = sub_2442F1B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EBCDC(uint64_t a1)
{
  v2 = sub_2442F1B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.HowToSection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF4F0, &qword_244317530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442F1B9C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v22 = 0;
  v11 = sub_244313008();
  v13 = v12;
  v18 = a2;
  v19 = v11;
  sub_2442C6564(&qword_27EDDF500, &qword_244317538);
  v21 = 1;
  sub_2442F35BC(&qword_27EDDF508, &qword_27EDDF500, &qword_244317538, sub_2442F1AF4);
  sub_244313038();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v18;
  *v18 = v19;
  v15[1] = v13;
  v15[2] = v14;

  sub_2442C6908(a1);
}

uint64_t sub_2442EBF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442EC01C(uint64_t a1)
{
  v2 = sub_2442F1BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EC058(uint64_t a1)
{
  v2 = sub_2442F1BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442EC0D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = sub_2442C6564(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  a4();
  sub_244313228();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_244313008();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return sub_2442C6908(a1);
}

uint64_t sub_2442EC270(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v19 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F32F0();
  sub_244312FF8();
  if (!v3)
  {
    v6 = v15;
    v7 = v16;
    v8 = v17;
    v9 = v18;
    if (v18 == 255)
    {
      a1 = 0;
      v10 = -1;
    }

    else
    {
      v12[0] = v15;
      v12[1] = v16;
      v12[2] = v17;
      v13 = v18;
      sub_2442F33BC(v15, v16, v17, v18);
      a3(&v14, v12);
      sub_2442F3344(v6, v7, v8, v9);
      a1 = v14;
      v6 = v15;
      v7 = v16;
      v8 = v17;
      v10 = v18;
    }

    sub_2442F3344(v6, v7, v8, v10);
  }

  return a1;
}

uint64_t sub_2442EC3C0(uint64_t a1, char a2, void (*a3)(void *__return_ptr, uint64_t *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      return 0;
    }

    else
    {
      v6 = v7[2];
      a3(v7, &v6);
      return v7[0];
    }
  }

  return result;
}

uint64_t sub_2442EC47C(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3274();
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v6 = v8;

      a3(&v7, &v6);
      swift_bridgeObjectRelease_n();
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2442EC570@<X0>(char a1@<W1>, void (*a2)(void *)@<X2>, uint64_t a3@<X8>)
{
  v10 = a1;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v9)
    {
      v8[0] = v8[2];
      v8[1] = v9;

      a2(v8);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v7 = sub_244312C08();
      return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
    }
  }

  return result;
}

uint64_t sub_2442EC688(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v16 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3514();
  result = sub_244312FF8();
  if (!v3)
  {
    v6 = v11;
    if (v11 == 1)
    {
      return 0;
    }

    else
    {
      v7 = v10;
      v8[0] = v10;
      v8[1] = v11;
      v8[2] = v12;
      v8[3] = v13;
      v8[4] = v14;
      v8[5] = v15;

      a3(&v9, v8);

      sub_2442F3568(v7, v6);
      return v9;
    }
  }

  return result;
}

uint64_t sub_2442EC7C8@<X0>(char a1@<W1>, void (*a2)(uint64_t *)@<X2>, void *a3@<X8>)
{
  v9 = a1;
  sub_2442C6564(&qword_27EDDF6E8, &qword_2443181A8);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F35BC(&qword_27EDDF6F0, &qword_27EDDF6E8, &qword_2443181A8, sub_2442F3638);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v7 = v8;

      a2(&v7);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  return result;
}

uint64_t sub_2442EC8EC@<X0>(char a1@<W1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X8>)
{
  v10 = a1;
  sub_2442C6564(&qword_27EDDF700, &qword_2443181B0);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F368C();
  result = sub_244312FF8();
  if (!v3)
  {
    if (v9)
    {
      v8 = v9;

      a2(&v8);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v7 = type metadata accessor for InternalJSONLDRecipe.Author(0);
      return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
    }
  }

  return result;
}

uint64_t sub_2442ECA20(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4)
{
  v20 = a4;
  v7 = type metadata accessor for ImageObject(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2442C6564(&qword_27EDDF718, &unk_2443181B8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - v17;
  v22 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F34CC(&qword_27EDDF720, type metadata accessor for ImageObject);
  sub_244312FF8();
  if (!v4)
  {
    sub_2442F3798(v18, v16, &qword_27EDDF718, &unk_2443181B8);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      v8 = 0;
    }

    else
    {
      sub_2442F3800(v16, v11, type metadata accessor for ImageObject);
      a3(&v21, v11);
      v8 = v21;
      sub_2442F1A40(v11, type metadata accessor for ImageObject);
    }

    sub_2442F3A40(v18, &qword_27EDDF718, &unk_2443181B8);
  }

  return v8;
}

uint64_t sub_2442ECCE0(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4)
{
  v21 = a4;
  v8 = sub_244312BB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v21 - v18;
  v23 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260]);
  sub_244312FF8();
  if (!v4)
  {
    sub_2442F3798(v19, v17, &qword_27EDDF370, &qword_244317198);
    if ((*(v9 + 48))(v17, 1, v8) == 1)
    {
      a1 = 0;
    }

    else
    {
      (*(v9 + 32))(v12, v17, v8);
      a3(&v22, v12);
      a1 = v22;
      (*(v9 + 8))(v12, v8);
    }

    sub_2442F3A40(v19, &qword_27EDDF370, &qword_244317198);
  }

  return a1;
}

uint64_t sub_2442ECF9C(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF728, &qword_2443181C8);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3868();
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v6 = v8;

      a3(&v7, &v6);
      swift_bridgeObjectRelease_n();
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2442ED08C(uint64_t a1, void (*a2)(void *__return_ptr, void *))
{
  sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  result = sub_244312FF8();
  if (!v2)
  {
    if (v7)
    {
      v5[0] = v6[1];
      v5[1] = v7;

      a2(v6, v5);
      swift_bridgeObjectRelease_n();
      return v6[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2442ED158(uint64_t a1, char a2, void (*a3)(void *__return_ptr, void *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v6[0] = v7[1];
      v6[1] = v8;

      a3(v7, v6);
      swift_bridgeObjectRelease_n();
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2442ED22C(uint64_t a1, unint64_t a2, os_log_type_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = v4;
    v9 = (a4 + 40);
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = *(v9 - 1);
      v11 = *v9;

      v12(v25, v8);

      if (v25[1])
      {
        break;
      }

      v9 += 2;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v23 = v25[0];

    return v23;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v10 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v13 = sub_244312C38();
      sub_2442D40C8(v13, qword_27EDED120);

      v14 = sub_244312C18();

      if (os_log_type_enabled(v14, a3))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25[0] = v16;
        *v15 = 136446466;
        *(v15 + 4) = sub_2442EEF8C(a1, a2, v25);
        *(v15 + 12) = 2082;
        v17 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v18 = MEMORY[0x245D5E9E0](v10, v17);
        v20 = v19;

        v21 = sub_2442EEF8C(v18, v20, v25);

        *(v15 + 14) = v21;
        _os_log_impl(&dword_2442C5000, v14, a3, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v16, -1, -1);
        MEMORY[0x245D5F2C0](v15, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_2442ED518@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v41 = a6;
  v42 = a7;
  v10 = v8;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v40 = a8;
  v12 = sub_2442C6564(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = *(a4 + 16);
  if (v16)
  {
    v17 = (a4 + 40);
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v20 = *(v17 - 1);
      v19 = *v17;

      v20(v10);

      v21 = v42(0);
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) != 1)
      {
        break;
      }

      sub_2442F3A40(v15, a5, v41);
      v17 += 2;
      if (!--v16)
      {
        goto LABEL_7;
      }
    }

    v36 = v40;
    (*(v22 + 32))(v40, v15, v21);
    return (*(v22 + 56))(v36, 0, 1, v21);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v18 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v23 = sub_244312C38();
      sub_2442D40C8(v23, qword_27EDED120);
      v24 = v38;

      v25 = sub_244312C18();

      v26 = v39;
      if (os_log_type_enabled(v25, v39))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43[0] = v28;
        *v27 = 136446466;
        *(v27 + 4) = sub_2442EEF8C(v37, v24, v43);
        *(v27 + 12) = 2082;
        v29 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v30 = MEMORY[0x245D5E9E0](v18, v29);
        v32 = v31;

        v33 = sub_2442EEF8C(v30, v32, v43);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_2442C5000, v25, v26, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v28, -1, -1);
        MEMORY[0x245D5F2C0](v27, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v34 = v42(0);
    return (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
  }
}

void sub_2442ED954(uint64_t a1@<X0>, unint64_t a2@<X1>, os_log_type_t a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = v5;
    v10 = (a4 + 40);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v13 = *(v10 - 1);
      v12 = *v10;

      v13(&v26, v9);

      v14 = v27;
      if (v27)
      {
        break;
      }

      v10 += 2;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    *a5 = v26;
    a5[1] = v14;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v11 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v15 = sub_244312C38();
      sub_2442D40C8(v15, qword_27EDED120);

      v16 = sub_244312C18();

      if (os_log_type_enabled(v16, a3))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136446466;
        *(v17 + 4) = sub_2442EEF8C(a1, a2, &v26);
        *(v17 + 12) = 2082;
        v19 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v20 = MEMORY[0x245D5E9E0](v11, v19);
        v22 = v21;

        v23 = sub_2442EEF8C(v20, v22, &v26);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_2442C5000, v16, a3, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v18, -1, -1);
        MEMORY[0x245D5F2C0](v17, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    *a5 = 0;
    a5[1] = 0;
  }
}

uint64_t sub_2442EDC44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v36 = a5;
  v8 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = (a4 + 40);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      v15 = *(v13 - 1);
      v16 = *v13;

      v15(v6);

      v17 = type metadata accessor for InternalJSONLDRecipe.Author(0);
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v11, 1, v17) != 1)
      {
        break;
      }

      sub_2442F3A40(v11, &qword_27EDDF368, &qword_244317190);
      v13 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    v32 = v36;
    sub_2442F3800(v11, v36, type metadata accessor for InternalJSONLDRecipe.Author);
    return (*(v18 + 56))(v32, 0, 1, v17);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v14 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v19 = sub_244312C38();
      sub_2442D40C8(v19, qword_27EDED120);
      v20 = v34;

      v21 = sub_244312C18();

      v22 = v35;
      if (os_log_type_enabled(v21, v35))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37[0] = v24;
        *v23 = 136446466;
        *(v23 + 4) = sub_2442EEF8C(v33, v20, v37);
        *(v23 + 12) = 2082;
        v25 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v26 = MEMORY[0x245D5E9E0](v14, v25);
        v28 = v27;

        v29 = sub_2442EEF8C(v26, v28, v37);

        *(v23 + 14) = v29;
        _os_log_impl(&dword_2442C5000, v21, v22, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v24, -1, -1);
        MEMORY[0x245D5F2C0](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v30 = type metadata accessor for InternalJSONLDRecipe.Author(0);
    return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
  }
}

uint64_t sub_2442EE07C(uint64_t a1, unint64_t a2, os_log_type_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = v4;
    v9 = (a4 + 40);
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = *(v9 - 1);
      v11 = *v9;

      v12(&v25, v8);

      if (v25)
      {
        break;
      }

      v9 += 2;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v23 = v25;

    return v23;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v10 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v13 = sub_244312C38();
      sub_2442D40C8(v13, qword_27EDED120);

      v14 = sub_244312C18();

      if (os_log_type_enabled(v14, a3))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25 = v16;
        *v15 = 136446466;
        *(v15 + 4) = sub_2442EEF8C(a1, a2, &v25);
        *(v15 + 12) = 2082;
        v17 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v18 = MEMORY[0x245D5E9E0](v10, v17);
        v20 = v19;

        v21 = sub_2442EEF8C(v18, v20, &v25);

        *(v15 + 14) = v21;
        _os_log_impl(&dword_2442C5000, v14, a3, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v16, -1, -1);
        MEMORY[0x245D5F2C0](v15, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_2442EE360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_2442C6564(&qword_27EDDF798, &qword_244318250);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ImageObject(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_244312BB8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442F40B0();
  v17 = v23;
  sub_244313228();
  if (v17)
  {
    sub_2442C6908(a1);
    v19 = v14;
  }

  else
  {
    v18 = v21;
    sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260]);
    sub_244312FF8();
    (*(v22 + 8))(v10, v7);
    sub_2442E40C4(v6, v14, &qword_27EDDF370, &qword_244317198);
    sub_2442F19D8(v14, v18, type metadata accessor for ImageObject);
    sub_2442C6908(a1);
    v19 = v14;
  }

  return sub_2442F1A40(v19, type metadata accessor for ImageObject);
}

uint64_t sub_2442EE650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442EE6D8(uint64_t a1)
{
  v2 = sub_2442F40B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EE714(uint64_t a1)
{
  v2 = sub_2442F40B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipeProperty.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t sub_2442EE80C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_244312B68();
    if (v10)
    {
      v11 = sub_244312B88();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_244312B78();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_244312B68();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_244312B88();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_244312B78();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2442EEA3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2442EFBD8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2442D5DE8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2442EE80C(v14, a3, a4, &v13);
  v10 = v4;
  sub_2442D5DE8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

unint64_t sub_2442EEBCC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_244312D88();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2442DC32C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2442DC32C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_244312D78();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_244312D08();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_244312D08();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_244312D88();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2442DC32C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_244312D88();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2442DC32C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2442DC32C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_244312D08();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2442EEF8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2442EF058(v11, 0, 0, 1, a1, a2);
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
    sub_2442F1810(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2442C6908(v11);
  return v7;
}

unint64_t sub_2442EF058(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2442EF164(a5, a6);
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
    result = sub_244312EF8();
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

uint64_t sub_2442EF164(uint64_t a1, unint64_t a2)
{
  v4 = sub_2442EF1B0(a1, a2);
  sub_2442EF2E0(&unk_2857A8E08);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2442EF1B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2442D54E0(v5, 0);
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

  result = sub_244312EF8();
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
        v10 = sub_244312D28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2442D54E0(v10, 0);
        result = sub_244312E88();
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

uint64_t sub_2442EF2E0(uint64_t result)
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

  result = sub_2442EF3CC(result, v12, 1, v3);
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

char *sub_2442EF3CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDE920, &qword_244316370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_2442EF4C0(char *a1, int64_t a2, char a3)
{
  result = sub_2442EF500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2442EF4E0(size_t a1, int64_t a2, char a3)
{
  result = sub_2442EF60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2442EF500(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF6A8, &unk_244318190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_2442EF60C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2442C6564(&qword_27EDDF738, &qword_2443181D0);
  v10 = *(sub_2442C6564(&qword_27EDDF370, &qword_244317198) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_2442C6564(&qword_27EDDF370, &qword_244317198) - 8);
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

uint64_t sub_2442EF7FC@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v5 = *a1;
  sub_2442C6564(&qword_27EDDF450, &qword_2443174C0);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F35BC(&qword_27EDDF6C8, &qword_27EDDF450, &qword_2443174C0, sub_2442F32F0);
  result = sub_244312FF8();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_2442EF8D8(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3638();
  return sub_244312FF8();
}

uint64_t sub_2442EF958(uint64_t a1, char *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *a2;
  a3(0);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F34CC(a4, a5);
  return sub_244312FF8();
}

uint64_t sub_2442EFA10@<X0>(char *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(void)@<X4>, void *a5@<X8>)
{
  v9 = *a1;
  sub_2442C6564(a2, a3);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  a4();
  result = sub_244312FF8();
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

double sub_2442EFABC@<D0>(char *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = *a1;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_244312FF8();
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2442EFB44@<X0>(void *a1@<X8>)
{
  sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
  sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  sub_2442F3274();
  result = sub_244312FF8();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2442EFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_244312B68();
  v11 = result;
  if (result)
  {
    result = sub_244312B88();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_244312B78();
  sub_2442EE80C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2442EFC90(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2442D5D94(a3, a4);
          return sub_2442EEA3C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s11CookingData20InternalJSONLDRecipeV16InstructionEntryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      v14 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v16 = sub_244313108();
        sub_2442F33BC(v7, v6, v8, 0);
        sub_2442F33BC(v3, v2, v4, 0);
        sub_2442F3358(v3, v2, v4, 0);
        sub_2442F3358(v7, v6, v8, 0);
        return v16 & 1;
      }

      sub_2442F33BC(v14, v2, v8, 0);
      sub_2442F33BC(v3, v2, v4, 0);
      sub_2442F3358(v3, v2, v4, 0);
      v24 = v3;
      v25 = v2;
      v26 = v8;
      v27 = 0;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      v17 = v3 == v7 && v2 == v6;
      if (v17 || (v18 = *a1, (sub_244313108() & 1) != 0))
      {
        v19 = sub_2442E4D50(v4, v8);
        sub_2442F33BC(v7, v6, v8, 2u);
        sub_2442F33BC(v3, v2, v4, 2u);
        sub_2442F3358(v3, v2, v4, 2u);
        sub_2442F3358(v7, v6, v8, 2u);
        return (v19 & 1) != 0;
      }

      sub_2442F33BC(v7, v6, v8, 2u);
      sub_2442F33BC(v3, v2, v4, 2u);
      sub_2442F3358(v3, v2, v4, 2u);
      v20 = v7;
      v21 = v6;
      v22 = v8;
      v23 = 2;
LABEL_25:
      sub_2442F3358(v20, v21, v22, v23);
      return 0;
    }

LABEL_24:
    sub_2442F33BC(*a2, *(a2 + 8), v8, v9);
    sub_2442F33BC(v3, v2, v4, v5);
    sub_2442F3358(v3, v2, v4, v5);
    v20 = v7;
    v21 = v6;
    v22 = v8;
    v23 = v9;
    goto LABEL_25;
  }

  if (v9 != 1)
  {
    goto LABEL_24;
  }

  v10 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_2442F33BC(v10, v2, v8, 1u);
    sub_2442F33BC(v3, v2, v4, 1u);
    sub_2442F3358(v3, v2, v4, 1u);
    v24 = v3;
    v25 = v2;
    v26 = v8;
    v27 = 1;
LABEL_30:
    sub_2442F3358(v24, v25, v26, v27);
    return 1;
  }

  v12 = sub_244313108();
  sub_2442F33BC(v7, v6, v8, 1u);
  sub_2442F33BC(v3, v2, v4, 1u);
  sub_2442F3358(v3, v2, v4, 1u);
  sub_2442F3358(v7, v6, v8, 1u);
  result = 0;
  if (v12)
  {
    return 1;
  }

  return result;
}

BOOL _s11CookingData20InternalJSONLDRecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_244312C08();
  v133 = *(v4 - 8);
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v4);
  v130 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v139 = &v126 - v9;
  v131 = sub_2442C6564(&qword_27EDDF748, &qword_2443181D8);
  v10 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v132 = &v126 - v11;
  v12 = sub_244312BB8();
  v13 = *(v12 - 8);
  v135 = v12;
  v136 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v134 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v137 = &v126 - v18;
  v19 = sub_2442C6564(&qword_27EDDF750, &qword_2443181E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v138 = &v126 - v21;
  v22 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v126 - v29);
  v31 = sub_2442C6564(&qword_27EDDF758, &qword_2443181E8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v126 - v33;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_244313108() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_244313108() & 1) == 0 || (sub_2442E4B3C(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v126 = v4;
  v35 = type metadata accessor for InternalJSONLDRecipe(0);
  v129 = a2;
  v36 = *(v35 + 28);
  v37 = *(v31 + 48);
  v127 = v35;
  v128 = a1;
  sub_2442F3798(a1 + v36, v34, &qword_27EDDF368, &qword_244317190);
  v38 = v129 + v36;
  v39 = v129;
  sub_2442F3798(v38, &v34[v37], &qword_27EDDF368, &qword_244317190);
  v40 = *(v23 + 48);
  if (v40(v34, 1, v22) == 1)
  {
    if (v40(&v34[v37], 1, v22) == 1)
    {
      sub_2442F3A40(v34, &qword_27EDDF368, &qword_244317190);
      goto LABEL_16;
    }

LABEL_13:
    v41 = &qword_27EDDF758;
    v42 = &qword_2443181E8;
LABEL_14:
    sub_2442F3A40(v34, v41, v42);
    return 0;
  }

  sub_2442F3798(v34, v30, &qword_27EDDF368, &qword_244317190);
  if (v40(&v34[v37], 1, v22) == 1)
  {
    sub_2442F1A40(v30, type metadata accessor for InternalJSONLDRecipe.Author);
    goto LABEL_13;
  }

  sub_2442F3800(&v34[v37], v26, type metadata accessor for InternalJSONLDRecipe.Author);
  v43 = _s11CookingData20InternalJSONLDRecipeV6AuthorV2eeoiySbAE_AEtFZ_0(v30, v26);
  sub_2442F1A40(v26, type metadata accessor for InternalJSONLDRecipe.Author);
  sub_2442F1A40(v30, type metadata accessor for InternalJSONLDRecipe.Author);
  sub_2442F3A40(v34, &qword_27EDDF368, &qword_244317190);
  if (!v43)
  {
    return 0;
  }

LABEL_16:
  v45 = v127;
  v44 = v128;
  v46 = v127[8];
  v47 = (v128 + v46);
  v48 = *(v128 + v46 + 8);
  v49 = (v39 + v46);
  v50 = v49[1];
  if (!v48)
  {
    v34 = v138;
    v51 = v139;
    v52 = v137;
    if (!v50)
    {

      goto LABEL_27;
    }

    v54 = v49[1];
LABEL_24:

    return 0;
  }

  v34 = v138;
  v51 = v139;
  v52 = v137;
  if (!v50)
  {
    goto LABEL_24;
  }

  if (*v47 != *v49 || v48 != v50)
  {
    v53 = v49[1];
    if ((sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_27:
  v56 = v45[9];
  v57 = *(v19 + 48);
  sub_2442F3798(v44 + v56, v34, &qword_27EDDF370, &qword_244317198);
  v58 = v129 + v56;
  v59 = v129;
  sub_2442F3798(v58, &v34[v57], &qword_27EDDF370, &qword_244317198);
  v60 = v135;
  v61 = *(v136 + 48);
  if (v61(v34, 1, v135) == 1)
  {
    if (v61(&v34[v57], 1, v60) == 1)
    {
      sub_2442F3A40(v34, &qword_27EDDF370, &qword_244317198);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  sub_2442F3798(v34, v52, &qword_27EDDF370, &qword_244317198);
  if (v61(&v34[v57], 1, v60) == 1)
  {
    (*(v136 + 8))(v52, v60);
LABEL_32:
    v41 = &qword_27EDDF750;
    v42 = &qword_2443181E0;
    goto LABEL_14;
  }

  v62 = v136;
  v63 = v134;
  (*(v136 + 32))(v134, &v34[v57], v60);
  sub_2442F34CC(&qword_27EDDF768, MEMORY[0x277CC9260]);
  v64 = sub_244312C68();
  v65 = *(v62 + 8);
  v65(v63, v60);
  v65(v52, v60);
  sub_2442F3A40(v34, &qword_27EDDF370, &qword_244317198);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v66 = v45[10];
  v67 = v128;
  v68 = (v128 + v66);
  v69 = *(v128 + v66 + 8);
  v70 = (v59 + v66);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v72 = v45[11];
  v73 = (v67 + v72);
  v74 = *(v67 + v72 + 8);
  v75 = (v59 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  v77 = v45[12];
  v78 = (v67 + v77);
  v79 = *(v67 + v77 + 8);
  v80 = (v59 + v77);
  v81 = v80[1];
  if (v79)
  {
    if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v81)
  {
    return 0;
  }

  v82 = v45[13];
  v83 = (v67 + v82);
  v84 = *(v67 + v82 + 8);
  v85 = (v59 + v82);
  v86 = v85[1];
  if (v84)
  {
    if (!v86 || (*v83 != *v85 || v84 != v86) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  v87 = v45[14];
  v34 = v132;
  v88 = *(v131 + 48);
  sub_2442F3798(v67 + v87, v132, &qword_27EDDF378, &unk_2443171A0);
  v89 = v129 + v87;
  v90 = v129;
  sub_2442F3798(v89, &v34[v88], &qword_27EDDF378, &unk_2443171A0);
  v91 = *(v133 + 48);
  v92 = v126;
  if (v91(v34, 1, v126) == 1)
  {
    if (v91(&v34[v88], 1, v92) == 1)
    {
      sub_2442F3A40(v34, &qword_27EDDF378, &unk_2443171A0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  sub_2442F3798(v34, v51, &qword_27EDDF378, &unk_2443171A0);
  if (v91(&v34[v88], 1, v92) == 1)
  {
    (*(v133 + 8))(v51, v92);
LABEL_67:
    v41 = &qword_27EDDF748;
    v42 = &qword_2443181D8;
    goto LABEL_14;
  }

  v93 = v133;
  v94 = v130;
  (*(v133 + 32))(v130, &v34[v88], v92);
  sub_2442F34CC(&qword_27EDDF760, MEMORY[0x277CC9578]);
  v95 = sub_244312C68();
  v96 = *(v93 + 8);
  v96(v94, v92);
  v96(v51, v92);
  sub_2442F3A40(v34, &qword_27EDDF378, &unk_2443171A0);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v97 = v45[15];
  v98 = v128;
  v99 = (v128 + v97);
  v100 = *(v128 + v97 + 8);
  v101 = (v90 + v97);
  v102 = v101[1];
  if (v100)
  {
    if (!v102 || (*v99 != *v101 || v100 != v102) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v102)
  {
    return 0;
  }

  if ((sub_2442E4D50(*(v98 + v45[16]), *(v90 + v45[16])) & 1) == 0)
  {
    return 0;
  }

  v103 = v45[17];
  v104 = (v98 + v103);
  v105 = *(v98 + v103 + 8);
  v106 = (v90 + v103);
  v107 = v106[1];
  if (v105)
  {
    if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v108 = v127[18];
  v109 = (v128 + v108);
  v110 = *(v128 + v108 + 8);
  v111 = (v129 + v108);
  v112 = v111[1];
  if (v110)
  {
    if (!v112 || (*v109 != *v111 || v110 != v112) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  if ((sub_2442E4D50(*(v128 + v127[19]), *(v129 + v127[19])) & 1) == 0 || (sub_2442E4DE0(*(v128 + v127[20]), *(v129 + v127[20])) & 1) == 0)
  {
    return 0;
  }

  v113 = v127[21];
  v114 = (v128 + v113);
  v115 = *(v128 + v113 + 8);
  v116 = (v129 + v113);
  v117 = v116[1];
  if (!v115)
  {
    if (!v117)
    {
      goto LABEL_100;
    }

    return 0;
  }

  if (!v117 || (*v114 != *v116 || v115 != v117) && (sub_244313108() & 1) == 0)
  {
    return 0;
  }

LABEL_100:
  v118 = v127[22];
  v119 = v128 + v118;
  v121 = *(v128 + v118);
  v120 = *(v128 + v118 + 8);
  v122 = (v129 + v118);
  v124 = *v122;
  v123 = v122[1];
  if (v120 >> 60 == 15)
  {
    if (v123 >> 60 == 15)
    {
      sub_2442E472C(*v119, *(v119 + 1));
      sub_2442E472C(v124, v123);
      sub_2442E4788(v121, v120);
      return 1;
    }

    goto LABEL_104;
  }

  if (v123 >> 60 == 15)
  {
LABEL_104:
    sub_2442E472C(*v119, *(v119 + 1));
    sub_2442E472C(v124, v123);
    sub_2442E4788(v121, v120);
    sub_2442E4788(v124, v123);
    return 0;
  }

  sub_2442E472C(*v119, *(v119 + 1));
  sub_2442E472C(v124, v123);
  v125 = sub_2442EFC90(v121, v120, v124, v123);
  sub_2442E4788(v124, v123);
  sub_2442E4788(v121, v120);
  return (v125 & 1) != 0;
}

BOOL _s11CookingData20InternalJSONLDRecipeV6AuthorV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_2442C6564(&qword_27EDDF750, &qword_2443181E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_244313108(), result = 0, (v17 & 1) != 0))
  {
    v26 = v8;
    v19 = *(type metadata accessor for InternalJSONLDRecipe.Author(0) + 20);
    v20 = *(v13 + 48);
    sub_2442F3798(a1 + v19, v16, &qword_27EDDF370, &qword_244317198);
    sub_2442F3798(a2 + v19, &v16[v20], &qword_27EDDF370, &qword_244317198);
    v21 = *(v5 + 48);
    if (v21(v16, 1, v4) == 1)
    {
      if (v21(&v16[v20], 1, v4) == 1)
      {
        sub_2442F3A40(v16, &qword_27EDDF370, &qword_244317198);
        return 1;
      }
    }

    else
    {
      sub_2442F3798(v16, v12, &qword_27EDDF370, &qword_244317198);
      if (v21(&v16[v20], 1, v4) != 1)
      {
        v22 = v26;
        (*(v5 + 32))(v26, &v16[v20], v4);
        sub_2442F34CC(&qword_27EDDF768, MEMORY[0x277CC9260]);
        v23 = sub_244312C68();
        v24 = *(v5 + 8);
        v24(v22, v4);
        v24(v12, v4);
        sub_2442F3A40(v16, &qword_27EDDF370, &qword_244317198);
        return (v23 & 1) != 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_2442F3A40(v16, &qword_27EDDF750, &qword_2443181E0);
    return 0;
  }

  return result;
}

unint64_t sub_2442F1240()
{
  result = qword_27EDDF390;
  if (!qword_27EDDF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF390);
  }

  return result;
}

uint64_t sub_2442F1294(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2442F15F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2442F1638()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2442F1670(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_2442F16A0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2442F1750@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_2442F17D4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2442F1810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2442F186C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2442F1884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2442F18E8()
{
  result = qword_27EDDF498;
  if (!qword_27EDDF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF498);
  }

  return result;
}

uint64_t sub_2442F1954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  result = sub_2442ED08C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2442F1984()
{
  result = qword_27EDDF4C0;
  if (!qword_27EDDF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4C0);
  }

  return result;
}

uint64_t sub_2442F19D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2442F1A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2442F1AA0()
{
  result = qword_27EDDF4D8;
  if (!qword_27EDDF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4D8);
  }

  return result;
}

unint64_t sub_2442F1AF4()
{
  result = qword_27EDDF4E0;
  if (!qword_27EDDF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4E0);
  }

  return result;
}

unint64_t sub_2442F1B48()
{
  result = qword_27EDDF4E8;
  if (!qword_27EDDF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4E8);
  }

  return result;
}

unint64_t sub_2442F1B9C()
{
  result = qword_27EDDF4F8;
  if (!qword_27EDDF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4F8);
  }

  return result;
}

unint64_t sub_2442F1BF0()
{
  result = qword_27EDDF518;
  if (!qword_27EDDF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF518);
  }

  return result;
}

unint64_t sub_2442F1C48()
{
  result = qword_27EDDF520;
  if (!qword_27EDDF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF520);
  }

  return result;
}

unint64_t sub_2442F1CA0()
{
  result = qword_27EDDF528;
  if (!qword_27EDDF528)
  {
    sub_2442C745C(&qword_27EDDF488, &qword_2443174F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF528);
  }

  return result;
}

uint64_t sub_2442F1D18(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_2442F1EBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_2442F204C()
{
  sub_2442F2314(319, &qword_27EDDF540, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2442F2314(319, &qword_27EDDF548, type metadata accessor for InternalJSONLDRecipe.Author, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2442F2378(319, &qword_27EDDF550, &type metadata for InternalJSONLDRecipe.Publisher, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2442F2314(319, &qword_27EDDF558, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2442F2378(319, &qword_27EDDF560, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2442F2314(319, &qword_27EDDF568, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2442F2378(319, &qword_27EDDF570, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_2442F2378(319, &qword_27EDDF578, &type metadata for InternalJSONLDRecipe.InstructionEntry, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_2442F2378(319, &qword_27EDDF580, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
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

void sub_2442F2314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2442F2378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2442F23DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2442F24AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2442F255C()
{
  sub_2442F2314(319, &qword_27EDDF558, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 initializeBufferWithCopyOfBuffer for IARFTextRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_2442F2630(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2442F2644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2442F268C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2442F26F0(uint64_t a1, int a2)
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

uint64_t sub_2442F273C(uint64_t result, int a2, int a3)
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

uint64_t sub_2442F2788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2442F27D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalJSONLDRecipeProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalJSONLDRecipeProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2442F29B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2442F29F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2442F2A3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for InternalJSONLDRecipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalJSONLDRecipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442F2BF4()
{
  result = qword_27EDDF618;
  if (!qword_27EDDF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF618);
  }

  return result;
}

unint64_t sub_2442F2C4C()
{
  result = qword_27EDDF620;
  if (!qword_27EDDF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF620);
  }

  return result;
}

unint64_t sub_2442F2CA4()
{
  result = qword_27EDDF628;
  if (!qword_27EDDF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF628);
  }

  return result;
}

unint64_t sub_2442F2CFC()
{
  result = qword_27EDDF630;
  if (!qword_27EDDF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF630);
  }

  return result;
}

unint64_t sub_2442F2D54()
{
  result = qword_27EDDF638;
  if (!qword_27EDDF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF638);
  }

  return result;
}

unint64_t sub_2442F2DAC()
{
  result = qword_27EDDF640;
  if (!qword_27EDDF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF640);
  }

  return result;
}

unint64_t sub_2442F2E04()
{
  result = qword_27EDDF648;
  if (!qword_27EDDF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF648);
  }

  return result;
}

unint64_t sub_2442F2E5C()
{
  result = qword_27EDDF650;
  if (!qword_27EDDF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF650);
  }

  return result;
}

unint64_t sub_2442F2EB4()
{
  result = qword_27EDDF658;
  if (!qword_27EDDF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF658);
  }

  return result;
}

unint64_t sub_2442F2F0C()
{
  result = qword_27EDDF660;
  if (!qword_27EDDF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF660);
  }

  return result;
}

unint64_t sub_2442F2F64()
{
  result = qword_27EDDF668;
  if (!qword_27EDDF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF668);
  }

  return result;
}

unint64_t sub_2442F2FBC()
{
  result = qword_27EDDF670;
  if (!qword_27EDDF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF670);
  }

  return result;
}

unint64_t sub_2442F3014()
{
  result = qword_27EDDF678;
  if (!qword_27EDDF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF678);
  }

  return result;
}

unint64_t sub_2442F306C()
{
  result = qword_27EDDF680;
  if (!qword_27EDDF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF680);
  }

  return result;
}

unint64_t sub_2442F30C4()
{
  result = qword_27EDDF688;
  if (!qword_27EDDF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF688);
  }

  return result;
}

unint64_t sub_2442F311C()
{
  result = qword_27EDDF690;
  if (!qword_27EDDF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF690);
  }

  return result;
}

unint64_t sub_2442F3174()
{
  result = qword_27EDDF698;
  if (!qword_27EDDF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF698);
  }

  return result;
}

unint64_t sub_2442F31CC()
{
  result = qword_27EDDF6A0;
  if (!qword_27EDDF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6A0);
  }

  return result;
}

uint64_t sub_2442F3220()
{
  v0 = sub_244313138();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2442F3274()
{
  result = qword_27EDDF6B0;
  if (!qword_27EDDF6B0)
  {
    sub_2442C745C(&qword_27EDDF458, &qword_2443174C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6B0);
  }

  return result;
}

unint64_t sub_2442F32F0()
{
  result = qword_27EDDF6B8;
  if (!qword_27EDDF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6B8);
  }

  return result;
}

uint64_t sub_2442F3344(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_2442F3358(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_2442F3358(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_2442F33BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_2442F3420(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_244313108() & 1;
  }
}

unint64_t sub_2442F3478()
{
  result = qword_27EDDF6D0;
  if (!qword_27EDDF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6D0);
  }

  return result;
}

uint64_t sub_2442F34CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2442F3514()
{
  result = qword_27EDDF6E0;
  if (!qword_27EDDF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6E0);
  }

  return result;
}

uint64_t sub_2442F3568(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2442F35BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442F3638()
{
  result = qword_27EDDF6F8;
  if (!qword_27EDDF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6F8);
  }

  return result;
}

unint64_t sub_2442F368C()
{
  result = qword_27EDDF708;
  if (!qword_27EDDF708)
  {
    sub_2442C745C(&qword_27EDDF700, &qword_2443181B0);
    sub_2442F34CC(&qword_27EDDF710, type metadata accessor for InternalJSONLDRecipe.Author);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF708);
  }

  return result;
}

uint64_t sub_2442F3760(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2442F3798(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2442C6564(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2442F3800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2442F3868()
{
  result = qword_27EDDF730;
  if (!qword_27EDDF730)
  {
    sub_2442C745C(&qword_27EDDF728, &qword_2443181C8);
    sub_2442F34CC(&qword_27EDDF720, type metadata accessor for ImageObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF730);
  }

  return result;
}

uint64_t sub_2442F391C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2442F398C()
{
  result = qword_27EDDF740;
  if (!qword_27EDDF740)
  {
    sub_2442C745C(&qword_27EDDF480, &qword_2443174F0);
    sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF740);
  }

  return result;
}

uint64_t sub_2442F3A40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2442C6564(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2442F3AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2442F3B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2442F3BBC()
{
  sub_2442F2314(319, &qword_27EDDF558, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_2442F3C58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2442F3C6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2442F3CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2442F3D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695470657270 && a2 == 0xE800000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D69546B6F6F63 && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2442F3E58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF788, &qword_244318248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442F405C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v27 = 0;
  v11 = sub_244312FD8();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_244312FD8();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_244312FD8();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_2442C6908(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

unint64_t sub_2442F405C()
{
  result = qword_27EDDF790;
  if (!qword_27EDDF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF790);
  }

  return result;
}

unint64_t sub_2442F40B0()
{
  result = qword_27EDDF7A0;
  if (!qword_27EDDF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7A0);
  }

  return result;
}

unint64_t sub_2442F4128()
{
  result = qword_27EDDF7A8;
  if (!qword_27EDDF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7A8);
  }

  return result;
}

unint64_t sub_2442F4180()
{
  result = qword_27EDDF7B0;
  if (!qword_27EDDF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7B0);
  }

  return result;
}

unint64_t sub_2442F41D8()
{
  result = qword_27EDDF7B8;
  if (!qword_27EDDF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7B8);
  }

  return result;
}

unint64_t sub_2442F4230()
{
  result = qword_27EDDF7C0;
  if (!qword_27EDDF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7C0);
  }

  return result;
}

unint64_t sub_2442F4288()
{
  result = qword_27EDDF7C8;
  if (!qword_27EDDF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7C8);
  }

  return result;
}

unint64_t sub_2442F42E0()
{
  result = qword_27EDDF7D0;
  if (!qword_27EDDF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7D0);
  }

  return result;
}

uint64_t sub_2442F44DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 32);
  if (v8 > 3221225471)
  {
    sub_2442DDB84();
    swift_allocError();
    *v15 = 2;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    *(v15 + 64) = 7;
    return swift_willThrow();
  }

  v10 = a1[1];
  v11 = a1[2];
  LOBYTE(v31) = 1;
  *(&v31 + 1) = v8;
  LODWORD(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  *(&v33 + 1) = v7;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = a4;
  *&v34[24] = a5;
  v34[28] = BYTE4(a5) & 1;
  if (a3)
  {

    sub_2442E13BC(a2, a3);
    if (v6)
    {
LABEL_4:
      v29 = v33;
      v30[0] = *v34;
      *(v30 + 13) = *&v34[13];
      v27 = v31;
      v28 = v32;
      return sub_2442DE954(&v27);
    }
  }

  else
  {
  }

  if ((*(v7 + 24) & 3) != 0)
  {
    *&v27 = MEMORY[0x277D84CC0];
    sub_2442C6564(&qword_27EDDF268, qword_244316998);
    v16 = sub_244312CD8();
    v18 = v17;
    sub_2442DDB84();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
    v20 = v29;
    v21 = v28;
    *(v19 + 24) = v27;
    *(v19 + 40) = v21;
    *(v19 + 56) = v20;
    *(v19 + 64) = 0;
    swift_willThrow();
    goto LABEL_4;
  }

  Verifier.rangeInBuffer(position:size:)(0, 4);
  if (v22)
  {
    goto LABEL_4;
  }

  sub_2442F7728(&v31, **(v7 + 24));
  v23 = *(*(v7 + 24) + *(v7 + 32) - v10);
  v29 = v33;
  v30[0] = *v34;
  *(v30 + 13) = *&v34[13];
  v27 = v31;
  v28 = v32;

  result = sub_2442DE954(&v27);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = *(v7 + 32) - v10;
  if (v24 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (!v25)
  {
    *a6 = v7;
    *(a6 + 8) = v10;
    *(a6 + 16) = v11;
    *(a6 + 24) = v26;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t IARFRecipe.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IARFRecipe.schemaVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IARFRecipe.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IARFRecipe.description.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t IARFRecipe.prepTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t IARFRecipe.cookTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 136);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t IARFRecipe.totalTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 176);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t IARFRecipe.language.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t sub_2442F48DC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7463655370657473;
    v7 = 0x65676175676E616CLL;
    if (a1 != 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6D69546C61746F74;
    v9 = 0x6959657069636572;
    if (a1 != 7)
    {
      v9 = 0x6569646572676E69;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7470697263736564;
    v3 = 0x656D695470657270;
    if (a1 != 4)
    {
      v3 = 0x656D69546B6F6F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6556616D65686373;
    if (a1 != 1)
    {
      v4 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2442F4A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442F87C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442F4AB8(uint64_t a1)
{
  v2 = sub_2442F5100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F4AF4(uint64_t a1)
{
  v2 = sub_2442F5100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFRecipe.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDF7D8, &qword_244318480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v59 = v1[3];
  v60 = v10;
  v11 = v1[4];
  v57 = v1[5];
  v58 = v11;
  v12 = v1[6];
  v55 = v1[7];
  v56 = v12;
  v13 = v1[8];
  v15 = v1[10];
  v14 = v1[11];
  v51 = v1[9];
  v52 = v15;
  v53 = v14;
  v54 = v13;
  v67 = *(v1 + 96);
  v16 = v1[14];
  v46 = v1[13];
  v47 = v16;
  v17 = v1[16];
  v48 = v1[15];
  v49 = v17;
  v50 = *(v1 + 136);
  v18 = v1[19];
  v41 = v1[18];
  v42 = v18;
  v19 = v1[21];
  v43 = v1[20];
  v44 = v19;
  v45 = *(v1 + 176);
  v20 = v1[24];
  v40 = v1[23];
  v39 = v20;
  v21 = v1[26];
  v38 = v1[25];
  v36 = v21;
  v22 = v1[28];
  v37 = v1[27];
  v35 = v22;
  v23 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442F5100();
  v24 = v3;
  sub_244313238();
  LOBYTE(v62) = 0;
  v25 = v61;
  sub_244313098();
  if (v25)
  {
    v61 = v25;
    return (*(v4 + 8))(v7, v3);
  }

  v26 = v54;
  LOBYTE(v62) = 1;
  sub_244313098();
  LOBYTE(v62) = 2;
  sub_244313098();
  v60 = v4;
  LOBYTE(v62) = 3;
  sub_244313098();
  v61 = 0;
  v62 = v26;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v67;
  v68 = 4;
  sub_2442C6EFC(v26, v51, v52, v53, v67);
  sub_2442C73A0();
  v28 = v61;
  sub_244313088();
  v61 = v28;
  if (v28)
  {
    goto LABEL_7;
  }

  sub_2442C73F4(v62, v63, v64, v65, v66);
  v62 = v46;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v68 = 5;
  sub_2442C6EFC(v46, v47, v48, v49, v50);
  v29 = v61;
  sub_244313088();
  v61 = v29;
  if (v29)
  {
    goto LABEL_7;
  }

  sub_2442C73F4(v62, v63, v64, v65, v66);
  v62 = v41;
  v63 = v42;
  v64 = v43;
  v65 = v44;
  v66 = v45;
  v68 = 6;
  sub_2442C6EFC(v41, v42, v43, v44, v45);
  v30 = v61;
  sub_244313088();
  v61 = v30;
  if (v30)
  {
LABEL_7:
    sub_2442C73F4(v62, v63, v64, v65, v66);
    return (*(v60 + 8))(v7, v24);
  }

  sub_2442C73F4(v62, v63, v64, v65, v66);
  v62 = v40;
  v68 = 7;
  sub_2442C6564(&qword_27EDDF7E8, &qword_244318488);
  sub_2442F5154();
  v31 = v61;
  sub_244313088();
  v61 = v31;
  if (v31)
  {
    return (*(v60 + 8))(v7, v24);
  }

  v62 = v39;
  v68 = 8;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  sub_2442F522C();
  v32 = v61;
  sub_2443130C8();
  v61 = v32;
  if (v32)
  {
    return (*(v60 + 8))(v7, v24);
  }

  v62 = v38;
  v68 = 9;
  sub_2442C6564(&qword_27EDDF800, &qword_244318490);
  sub_2442F52B0();
  v33 = v61;
  sub_2443130C8();
  v61 = v33;
  if (v33)
  {
    return (*(v60 + 8))(v7, v24);
  }

  LOBYTE(v62) = 10;
  sub_244313098();
  v61 = 0;
  v62 = v35;
  v68 = 11;
  sub_2442C6564(&qword_27EDDF818, &qword_244318498);
  sub_2442F5388();
  sub_2443130C8();
  return (*(v4 + 8))(v7, v24);
}

unint64_t sub_2442F5100()
{
  result = qword_27EDDF7E0;
  if (!qword_27EDDF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7E0);
  }

  return result;
}

unint64_t sub_2442F5154()
{
  result = qword_27EDDF7F0;
  if (!qword_27EDDF7F0)
  {
    sub_2442C745C(&qword_27EDDF7E8, &qword_244318488);
    sub_2442F51D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7F0);
  }

  return result;
}

unint64_t sub_2442F51D8()
{
  result = qword_27EDDF7F8;
  if (!qword_27EDDF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7F8);
  }

  return result;
}

unint64_t sub_2442F522C()
{
  result = qword_27EDDE8A0;
  if (!qword_27EDDE8A0)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    sub_2442C74A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8A0);
  }

  return result;
}

unint64_t sub_2442F52B0()
{
  result = qword_27EDDF808;
  if (!qword_27EDDF808)
  {
    sub_2442C745C(&qword_27EDDF800, &qword_244318490);
    sub_2442F5334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF808);
  }

  return result;
}

unint64_t sub_2442F5334()
{
  result = qword_27EDDF810;
  if (!qword_27EDDF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF810);
  }

  return result;
}

unint64_t sub_2442F5388()
{
  result = qword_27EDDF820;
  if (!qword_27EDDF820)
  {
    sub_2442C745C(&qword_27EDDF818, &qword_244318498);
    sub_2442F540C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF820);
  }

  return result;
}

unint64_t sub_2442F540C()
{
  result = qword_27EDDF828;
  if (!qword_27EDDF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF828);
  }

  return result;
}

uint64_t IARFRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF830, &qword_2443184A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v115 = a1;
  sub_2442C65AC(a1, v10);
  sub_2442F5100();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(v115);
  }

  v12 = v6;
  v87[0] = 0;
  v14 = sub_244313008();
  v70 = v15;
  v87[0] = 1;
  v16 = sub_244313008();
  v69 = v17;
  v18 = v16;
  v87[0] = 2;
  v56 = sub_244313008();
  v68 = v19;
  v87[0] = 3;
  v20 = sub_244313008();
  v71 = 0;
  v55 = v20;
  v67 = v21;
  LOBYTE(v72) = 4;
  v59 = sub_2442C7938();
  v22 = v71;
  sub_244312FF8();
  if (v22)
  {
    v71 = v22;
    (*(v12 + 8))(v9, v5);
    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_8:
    sub_2442C6908(v115);

    if (v23)
    {
      result = sub_2442C73F4(v65, *(&v65 + 1), v66, *(&v66 + 1), v64);
      if (v24)
      {
        goto LABEL_14;
      }
    }

    else if (v24)
    {
LABEL_14:
      result = sub_2442C73F4(v60, v61, *(&v61 + 1), v62, v63);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      return sub_2442C73F4(v57, *(&v57 + 1), v58, *(&v58 + 1), v59);
    }

    if (!v25)
    {
      return result;
    }

    return sub_2442C73F4(v57, *(&v57 + 1), v58, *(&v58 + 1), v59);
  }

  v65 = *v87;
  v66 = *&v87[16];
  v64 = v88;
  LOBYTE(v72) = 5;
  sub_244312FF8();
  v60 = *v87;
  v61 = *&v87[8];
  v62 = *&v87[24];
  v63 = v88;
  LOBYTE(v72) = 6;
  sub_244312FF8();
  v71 = 0;
  v57 = *v87;
  v58 = *&v87[16];
  LODWORD(v59) = v88;
  sub_2442C6564(&qword_27EDDF7E8, &qword_244318488);
  LOBYTE(v72) = 7;
  sub_2442F5D8C();
  v26 = v71;
  sub_244312FF8();
  v71 = v26;
  if (v26)
  {
    (*(v12 + 8))(v9, v5);
    v23 = 1;
    v24 = 1;
    v25 = 1;
    goto LABEL_8;
  }

  v54 = *v87;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  LOBYTE(v72) = 8;
  sub_2442F5E64();
  v27 = v71;
  sub_244313038();
  v28 = v27;
  if (v27)
  {
    (*(v12 + 8))(v9, v5);
    v29 = 0;
    v30 = 0;
    v71 = v27;
  }

  else
  {
    v53 = *v87;
    sub_2442C6564(&qword_27EDDF800, &qword_244318490);
    LOBYTE(v72) = 9;
    sub_2442F5EE8();
    sub_244313038();
    v71 = 0;
    v52 = *v87;
    v87[0] = 10;
    *&v51 = sub_244313008();
    *(&v51 + 1) = v31;
    v71 = 0;
    sub_2442C6564(&qword_27EDDF818, &qword_244318498);
    v110 = 11;
    sub_2442F5FC0();
    v32 = v71;
    sub_244313038();
    v71 = v32;
    if (!v32)
    {
      (*(v12 + 8))(v9, v5);
      v33 = v111;
      v34 = v70;
      *&v72 = v14;
      *(&v72 + 1) = v70;
      *&v73 = v18;
      *(&v73 + 1) = v69;
      v35 = v56;
      v36 = v67;
      v37 = v68;
      *&v74 = v56;
      *(&v74 + 1) = v68;
      *&v75 = v55;
      *(&v75 + 1) = v67;
      v76 = v65;
      v77 = v66;
      v38 = v64;
      LOBYTE(v78) = v64;
      *(&v78 + 1) = v60;
      v79 = v61;
      *&v80 = v62;
      BYTE8(v80) = v63;
      v81 = v57;
      v82 = v58;
      LOBYTE(v83) = v59;
      *(&v83 + 1) = v54;
      *&v84 = v53;
      *(&v84 + 1) = v52;
      v85 = v51;
      v86 = v111;
      v50 = v111;
      v39 = v57;
      *(a2 + 128) = v80;
      *(a2 + 144) = v39;
      v40 = v82;
      v41 = v83;
      v42 = v84;
      v43 = v85;
      *(a2 + 224) = v33;
      *(a2 + 192) = v42;
      *(a2 + 208) = v43;
      *(a2 + 160) = v40;
      *(a2 + 176) = v41;
      v44 = v73;
      *a2 = v72;
      *(a2 + 16) = v44;
      v45 = v74;
      v46 = v75;
      v47 = v79;
      *(a2 + 96) = v78;
      *(a2 + 112) = v47;
      v48 = v77;
      *(a2 + 64) = v76;
      *(a2 + 80) = v48;
      *(a2 + 32) = v45;
      *(a2 + 48) = v46;
      sub_2442F6098(&v72, v87);
      sub_2442C6908(v115);
      *v87 = v14;
      *&v87[8] = v34;
      *&v87[16] = v18;
      *&v87[24] = v69;
      v88 = v35;
      v89 = v37;
      v90 = v55;
      v91 = v36;
      v92 = v65;
      v93 = v66;
      v94 = v38;
      *v95 = v114[0];
      *&v95[3] = *(v114 + 3);
      v96 = v60;
      v97 = v61;
      v98 = v62;
      v99 = v63;
      *&v100[3] = *&v113[3];
      *v100 = *v113;
      v101 = v57;
      v102 = v58;
      v103 = v59;
      *&v104[3] = *&v112[3];
      *v104 = *v112;
      v105 = v54;
      v106 = v53;
      v107 = v52;
      v108 = v51;
      v109 = v50;
      return sub_2442F60D0(v87);
    }

    (*(v12 + 8))(v9, v5);
    v29 = 1;
    v30 = 1;
  }

  sub_2442C6908(v115);

  sub_2442C73F4(v65, *(&v65 + 1), v66, *(&v66 + 1), v64);
  sub_2442C73F4(v60, v61, *(&v61 + 1), v62, v63);
  sub_2442C73F4(v57, *(&v57 + 1), v58, *(&v58 + 1), v59);

  if (v28)
  {
    if (v29)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v29)
    {
LABEL_22:

      if (v30)
      {
      }

      return result;
    }
  }

  if (v30)
  {
  }

  return result;
}

unint64_t sub_2442F5D8C()
{
  result = qword_27EDDF838;
  if (!qword_27EDDF838)
  {
    sub_2442C745C(&qword_27EDDF7E8, &qword_244318488);
    sub_2442F5E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF838);
  }

  return result;
}

unint64_t sub_2442F5E10()
{
  result = qword_27EDDF840;
  if (!qword_27EDDF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF840);
  }

  return result;
}

unint64_t sub_2442F5E64()
{
  result = qword_27EDDE8D8;
  if (!qword_27EDDE8D8)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    sub_2442C7A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8D8);
  }

  return result;
}

unint64_t sub_2442F5EE8()
{
  result = qword_27EDDF848;
  if (!qword_27EDDF848)
  {
    sub_2442C745C(&qword_27EDDF800, &qword_244318490);
    sub_2442F5F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF848);
  }

  return result;
}

unint64_t sub_2442F5F6C()
{
  result = qword_27EDDF850;
  if (!qword_27EDDF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF850);
  }

  return result;
}

unint64_t sub_2442F5FC0()
{
  result = qword_27EDDF858;
  if (!qword_27EDDF858)
  {
    sub_2442C745C(&qword_27EDDF818, &qword_244318498);
    sub_2442F6044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF858);
  }

  return result;
}

unint64_t sub_2442F6044()
{
  result = qword_27EDDF860;
  if (!qword_27EDDF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF860);
  }

  return result;
}

double static IARFRecipe.exampleChocolateChipCookies.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v3 = sub_2443130D8();
  MEMORY[0x245D5E950](v3);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v4 = sub_2443130D8();
  MEMORY[0x245D5E950](v4);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v5 = sub_2443130D8();
  MEMORY[0x245D5E950](v5);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDEFE8, &unk_244316460);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_244317120;
  sub_2442E2620(v15 + 32);
  sub_2442E266C(v15 + 112);
  sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_244317130;
  sub_244300090(v6 + 32);
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_244313970;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 4;
  *(v6 + 80) = 1953259891;
  *(v6 + 88) = 0xE400000000000000;
  *(v6 + 96) = 1953259891;
  *(v6 + 104) = 0xE400000000000000;
  *(v6 + 112) = 0;
  *(v6 + 120) = v7;
  sub_244300188((v6 + 128));
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_244313970;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 4;
  *(v6 + 176) = 1953259891;
  *(v6 + 184) = 0xE400000000000000;
  *(v6 + 192) = 1953259891;
  *(v6 + 200) = 0xE400000000000000;
  *(v6 + 208) = 0;
  *(v6 + 216) = v8;
  sub_2442C6564(&qword_27EDDEFF0, &qword_244316470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_244313970;
  v10 = sub_2443130D8();
  MEMORY[0x245D5E950](v10);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v11 = sub_2443130D8();
  MEMORY[0x245D5E950](v11);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDF000, &qword_244316480);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_244317120;
  sub_2442C7E1C(v12 + 32);
  sub_2442C7F88(v12 + 88);
  result = 1.51227698e20;
  *(v9 + 32) = xmmword_244318470;
  *(v9 + 48) = 21584;
  *(v9 + 56) = 0xE200000000000000;
  *(v9 + 64) = 21584;
  *(v9 + 72) = 0xE200000000000000;
  *(v9 + 80) = 1;
  *(v9 + 88) = v12;
  *(v9 + 96) = 0;
  *a1 = 0x7365696B6F6F63;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 49;
  *(a1 + 24) = 0xE100000000000000;
  *(a1 + 32) = 0xD00000000000001CLL;
  *(a1 + 40) = 0x800000024431C480;
  *(a1 + 48) = 0xD00000000000017ALL;
  *(a1 + 56) = 0x800000024431C4A0;
  *(a1 + 64) = 21584;
  *(a1 + 72) = 0xE200000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 21584;
  *(a1 + 112) = 0xE200000000000000;
  *(a1 + 120) = 21584;
  *(a1 + 128) = 0xE200000000000000;
  *(a1 + 136) = 1;
  *(a1 + 144) = 21584;
  *(a1 + 152) = 0xE200000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = v15;
  *(a1 + 192) = v6;
  *(a1 + 200) = v9;
  *(a1 + 208) = 28261;
  v14 = MEMORY[0x277D84F90];
  *(a1 + 216) = 0xE200000000000000;
  *(a1 + 224) = v14;
  return result;
}

__n128 IARFRecipe.init(data:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2442D5D94(a1, a2);
  v24[0] = _s11CookingData10ByteBufferV4dataAC10Foundation0B0V_tcfC_0(a1, a2);
  v24[1] = v7;
  v24[2] = v8;
  sub_2442F44DC(v24, 0, 0, 0xF424080000000, 0xFFFFFFFFLL, &v21);
  if (v3)
  {

    sub_2442D5DE8(a1, a2);
  }

  else
  {
    v16 = v21;
    v17 = v22;
    v18 = v23;
    sub_2442F66B8(&v16, v19);
    sub_2442D5DE8(a1, a2);

    v10 = v19[13];
    *(a3 + 192) = v19[12];
    *(a3 + 208) = v10;
    *(a3 + 224) = v20;
    v11 = v19[9];
    *(a3 + 128) = v19[8];
    *(a3 + 144) = v11;
    v12 = v19[11];
    *(a3 + 160) = v19[10];
    *(a3 + 176) = v12;
    v13 = v19[5];
    *(a3 + 64) = v19[4];
    *(a3 + 80) = v13;
    v14 = v19[7];
    *(a3 + 96) = v19[6];
    *(a3 + 112) = v14;
    v15 = v19[1];
    *a3 = v19[0];
    *(a3 + 16) = v15;
    result = v19[3];
    *(a3 + 32) = v19[2];
    *(a3 + 48) = result;
  }

  return result;
}

uint64_t sub_2442F66B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = Table.offset(_:)(4);
  v8 = __OFADD__(v7, v6);
  result = (v7 + v6);
  if (v8)
  {
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v10 = Table.directString(at:)(result);
  result = v10.value._countAndFlagsBits;
  if (!v10.value._object)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v11 = Table.offset(_:)(6);
  v8 = __OFADD__(v11, v6);
  result = (v11 + v6);
  if (v8)
  {
    goto LABEL_229;
  }

  v12 = Table.directString(at:)(result);
  result = v12.value._countAndFlagsBits;
  if (!v12.value._object)
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v13 = Table.offset(_:)(8);
  v8 = __OFADD__(v13, v6);
  result = (v13 + v6);
  if (v8)
  {
    goto LABEL_230;
  }

  v14 = Table.directString(at:)(result);
  result = v14.value._countAndFlagsBits;
  if (!v14.value._object)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v15 = Table.offset(_:)(10);
  v8 = __OFADD__(v15, v6);
  result = (v15 + v6);
  if (v8)
  {
    goto LABEL_231;
  }

  v16 = Table.directString(at:)(result);
  result = v16.value._countAndFlagsBits;
  if (!v16.value._object)
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  result = Table.offset(_:)(12);
  v200 = v5;
  if (!result)
  {
    goto LABEL_30;
  }

  if (__OFADD__(result, v6))
  {
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v17 = *(v4 + 24);
  v18 = *(v17 + result + v6);
  if (v18 != 2)
  {
    if (v18 == 1)
    {
      result = Table.offset(_:)(14);
      if (result)
      {
        v19 = result + v6;
        if (__OFADD__(result, v6))
        {
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        v20 = *(v17 + v19);
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        result = Table.offset(_:)(4);
        if (result)
        {
          v22 = v3;
          v23 = result + v21;
          if (__OFADD__(result, v21))
          {
LABEL_255:
            __break(1u);
            goto LABEL_256;
          }

          v24 = v23;
          v3 = v22;
          v5 = v200;
          v25 = Table.directString(at:)(v24);
          countAndFlagsBits = v25.value._countAndFlagsBits;

          object = v25.value._object;
          if (v25.value._object)
          {
            v191 = 0;
            v192 = 0;
            v186 = 0;
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_30;
  }

  result = Table.offset(_:)(14);
  if (!result)
  {
LABEL_30:
    countAndFlagsBits = 0;
    object = 0;
    v191 = 0;
    v192 = 0;
    v35 = -1;
    goto LABEL_31;
  }

  v26 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  v27 = *(v17 + v26);
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  result = Table.offset(_:)(4);
  v29 = v5;
  v30 = v3;
  v31 = result + v28;
  if (__OFADD__(result, v28))
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  v32 = Table.directString(at:)(v31);
  v3 = v30;
  object = v32.value._object;
  if (!v32.value._object)
  {

    countAndFlagsBits = 0;
    object = 0;
    v191 = 0;
    v192 = 0;
    v186 = -1;
    v5 = v29;
    goto LABEL_32;
  }

  countAndFlagsBits = v32.value._countAndFlagsBits;
  v33 = Table.offset(_:)(6);
  v8 = __OFADD__(v33, v28);
  result = (v33 + v28);
  if (v8)
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  v5 = v29;
  v34 = Table.directString(at:)(result);
  v192 = v34.value._countAndFlagsBits;

  v191 = v34.value._object;
  if (!v34.value._object)
  {

    goto LABEL_30;
  }

  v35 = 1;
LABEL_31:
  v186 = v35;
LABEL_32:
  result = Table.offset(_:)(16);
  if (!result)
  {
    goto LABEL_53;
  }

  if (__OFADD__(result, v6))
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v36 = *(v4 + 24);
  v37 = *(v36 + result + v6);
  if (v37 == 2)
  {
    result = Table.offset(_:)(18);
    if (result)
    {
      v45 = result + v6;
      if (__OFADD__(result, v6))
      {
LABEL_245:
        __break(1u);
        goto LABEL_246;
      }

      v46 = *(v36 + v45);
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
LABEL_248:
        __break(1u);
        goto LABEL_249;
      }

      result = Table.offset(_:)(4);
      v48 = v5;
      v49 = v3;
      v50 = result + v47;
      if (__OFADD__(result, v47))
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v51 = Table.directString(at:)(v50);
      v3 = v49;
      v197 = v51.value._object;
      if (!v51.value._object)
      {

        v194 = 0;
        v197 = 0;
        v189 = 0;
        v190 = 0;
        v185 = -1;
        v5 = v48;
        goto LABEL_55;
      }

      v194 = v51.value._countAndFlagsBits;
      v52 = Table.offset(_:)(6);
      v8 = __OFADD__(v52, v47);
      result = (v52 + v47);
      if (v8)
      {
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      v5 = v48;
      v53 = Table.directString(at:)(result);
      v190 = v53.value._countAndFlagsBits;

      v189 = v53.value._object;
      if (v53.value._object)
      {
        v54 = 1;
LABEL_54:
        v185 = v54;
        goto LABEL_55;
      }
    }

LABEL_53:
    v194 = 0;
    v197 = 0;
    v189 = 0;
    v190 = 0;
    v54 = -1;
    goto LABEL_54;
  }

  if (v37 != 1)
  {
    goto LABEL_53;
  }

  result = Table.offset(_:)(18);
  if (!result)
  {
    goto LABEL_53;
  }

  v38 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v39 = *(v36 + v38);
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  result = Table.offset(_:)(4);
  if (!result)
  {
    goto LABEL_53;
  }

  v41 = v3;
  v42 = result + v40;
  if (__OFADD__(result, v40))
  {
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  v43 = v42;
  v3 = v41;
  v5 = v200;
  v44 = Table.directString(at:)(v43);
  v194 = v44.value._countAndFlagsBits;

  v197 = v44.value._object;
  if (!v44.value._object)
  {
    goto LABEL_53;
  }

  v189 = 0;
  v190 = 0;
  v185 = 0;
LABEL_55:
  result = Table.offset(_:)(20);
  if (!result)
  {
    goto LABEL_76;
  }

  if (__OFADD__(result, v6))
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v55 = *(v4 + 24);
  v56 = *(v55 + result + v6);
  if (v56 != 2)
  {
    if (v56 == 1)
    {
      result = Table.offset(_:)(22);
      if (result)
      {
        v57 = result + v6;
        if (__OFADD__(result, v6))
        {
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v58 = *(v55 + v57);
        v59 = v57 + v58;
        if (__OFADD__(v57, v58))
        {
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        result = Table.offset(_:)(4);
        if (result)
        {
          v60 = v3;
          v61 = result + v59;
          if (__OFADD__(result, v59))
          {
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
            goto LABEL_262;
          }

          v62 = v61;
          v3 = v60;
          v5 = v200;
          v63 = Table.directString(at:)(v62);
          v193 = v63.value._countAndFlagsBits;

          v196 = v63.value._object;
          if (v63.value._object)
          {
            v187 = 0;
            v188 = 0;
            v184 = 0;
            goto LABEL_78;
          }
        }
      }
    }

    goto LABEL_76;
  }

  result = Table.offset(_:)(22);
  if (!result)
  {
LABEL_76:
    v193 = 0;
    v196 = 0;
    v187 = 0;
    v188 = 0;
    v73 = -1;
    goto LABEL_77;
  }

  v64 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  v65 = *(v55 + v64);
  v66 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  result = Table.offset(_:)(4);
  v67 = v5;
  v68 = v3;
  v69 = result + v66;
  if (__OFADD__(result, v66))
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  v70 = Table.directString(at:)(v69);
  v3 = v68;
  v196 = v70.value._object;
  if (!v70.value._object)
  {

    v193 = 0;
    v196 = 0;
    v187 = 0;
    v188 = 0;
    v184 = -1;
    v5 = v67;
    goto LABEL_78;
  }

  v193 = v70.value._countAndFlagsBits;
  v71 = Table.offset(_:)(6);
  v8 = __OFADD__(v71, v66);
  result = (v71 + v66);
  if (v8)
  {
    goto LABEL_260;
  }

  v5 = v67;
  v72 = Table.directString(at:)(result);
  v188 = v72.value._countAndFlagsBits;

  v187 = v72.value._object;
  if (!v72.value._object)
  {

    goto LABEL_76;
  }

  v73 = 1;
LABEL_77:
  v184 = v73;
LABEL_78:
  v214.value._countAndFlagsBits = v4;
  v214.value._object = v3;
  v201 = v3;
  *&v215 = v5;
  DWORD2(v215) = v6;
  result = IARFFB_Recipe.recipeYieldCount.getter();
  if ((result & 0x80000000) != 0)
  {
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v74 = result;
  v183 = a2;
  v204 = v6;
  if (result)
  {
    v75 = 0;
    v199 = MEMORY[0x277D84F90];
    v76 = -536870912;
    while (1)
    {
      v81 = *(v4 + 24);
      v82 = *(v81 + v6);
      v8 = __OFSUB__(v6, v82);
      v83 = v6 - v82;
      if (v8)
      {
        goto LABEL_192;
      }

      if (*(v81 + v83) >= 0x19u)
      {
        v8 = __OFADD__(v83, 24);
        v84 = v83 + 24;
        if (v8)
        {
          goto LABEL_195;
        }

        v85 = *(v81 + v84);
        if (v85)
        {
          v8 = __OFADD__(v85, v6);
          v86 = v85 + v6;
          if (v8)
          {
            goto LABEL_199;
          }

          v87 = *(v81 + v86);
          v8 = __OFADD__(v86, v87);
          v88 = v86 + v87;
          if (v8)
          {
            goto LABEL_200;
          }

          v8 = __OFADD__(v88, 4);
          v89 = v88 + 4;
          if (v8)
          {
            goto LABEL_201;
          }

          if (v76 >> 30 != 3)
          {
            goto LABEL_202;
          }

          v8 = __OFADD__(v89, v75);
          v90 = v89 + v75;
          if (v8)
          {
            goto LABEL_203;
          }

          v91 = *(v81 + v90);
          v92 = v90 + v91;
          if (__OFADD__(v90, v91))
          {
            goto LABEL_204;
          }

          v93 = *(v81 + v92);
          v8 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v8)
          {
            goto LABEL_205;
          }

          if (*(v81 + v94) < 5u)
          {
            v96 = 0;
          }

          else
          {
            v8 = __OFADD__(v94, 4);
            v95 = v94 + 4;
            if (v8)
            {
              goto LABEL_224;
            }

            v96 = *(v81 + v95);
          }

          v97 = v96 + v92;
          if (__OFADD__(v96, v92))
          {
            goto LABEL_206;
          }

          v98 = Table.directString(at:)(v97);
          result = v98.value._countAndFlagsBits;
          if (!v98.value._object)
          {
            goto LABEL_261;
          }

          v99 = *(v4 + 24);
          v100 = *(v99 + v92);
          v8 = __OFSUB__(v92, v100);
          v101 = v92 - v100;
          if (v8)
          {
            goto LABEL_207;
          }

          if (*(v99 + v101) < 7u)
          {
            goto LABEL_107;
          }

          v8 = __OFADD__(v101, 6);
          v102 = v101 + 6;
          if (v8)
          {
            goto LABEL_225;
          }

          v103 = *(v99 + v102);
          if (v103)
          {
            v8 = __OFADD__(v103, v92);
            v104 = v103 + v92;
            if (v8)
            {
              goto LABEL_226;
            }

            v105 = *(v99 + v104);
            v106 = v104 + v105;
            if (__OFADD__(v104, v105))
            {
              goto LABEL_227;
            }

            v107 = v4;
            v109 = v200;
            v108 = v201;
          }

          else
          {
LABEL_107:
            v107 = 0;
            v108 = 0;
            v109 = 0;
            v106 = 0;
          }

          v209.value._countAndFlagsBits = v107;
          v209.value._object = v108;
          *&v210 = v109;
          DWORD2(v210) = v106;
          sub_2442C6D98(&v209, &v214);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2442DC660(0, *(v199 + 16) + 1, 1, v199);
            v199 = result;
          }

          v111 = *(v199 + 16);
          v110 = *(v199 + 24);
          if (v111 >= v110 >> 1)
          {
            result = sub_2442DC660((v110 > 1), v111 + 1, 1, v199);
            v199 = result;
          }

          *(v199 + 16) = v111 + 1;
          v77 = v199 + 80 * v111;
          *(v77 + 32) = v98;
          v78 = v214;
          v79 = v215;
          v80 = *v216;
          *(v77 + 89) = *&v216[9];
          *(v77 + 64) = v79;
          *(v77 + 80) = v80;
          *(v77 + 48) = v78;
          v6 = v204;
          v5 = v200;
        }
      }

      ++v76;
      v75 += 4;
      if (!--v74)
      {
        goto LABEL_113;
      }
    }
  }

  v199 = MEMORY[0x277D84F90];
LABEL_113:
  v214.value._countAndFlagsBits = v4;
  v214.value._object = v201;
  *&v215 = v5;
  DWORD2(v215) = v6;
  result = IARFFB_Recipe.ingredientsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_233;
  }

  v112 = result;
  v203 = v4;
  if (result)
  {
    v113 = 0;
    v114 = MEMORY[0x277D84F90];
    v115 = -536870912;
    while (1)
    {
      v116 = *(v4 + 24);
      v117 = *(v116 + v204);
      v8 = __OFSUB__(v204, v117);
      v118 = v204 - v117;
      if (v8)
      {
        break;
      }

      if (*(v116 + v118) < 0x1Bu)
      {
        goto LABEL_129;
      }

      v8 = __OFADD__(v118, 26);
      v119 = v118 + 26;
      if (v8)
      {
        goto LABEL_196;
      }

      v120 = *(v116 + v119);
      if (v120)
      {
        v8 = __OFADD__(v120, v204);
        v121 = v120 + v204;
        if (v8)
        {
          goto LABEL_208;
        }

        v122 = *(v116 + v121);
        v8 = __OFADD__(v121, v122);
        v123 = v121 + v122;
        if (v8)
        {
          goto LABEL_209;
        }

        v8 = __OFADD__(v123, 4);
        v124 = v123 + 4;
        if (v8)
        {
          goto LABEL_210;
        }

        if (v115 >> 30 != 3)
        {
          goto LABEL_211;
        }

        v8 = __OFADD__(v124, v113);
        v125 = v124 + v113;
        if (v8)
        {
          goto LABEL_212;
        }

        v126 = *(v116 + v125);
        v127 = v125 + v126;
        if (__OFADD__(v125, v126))
        {
          goto LABEL_213;
        }

        v129 = v200;
        v128 = v201;
      }

      else
      {
LABEL_129:
        v4 = 0;
        v128 = 0;
        v129 = 0;
        v127 = 0;
      }

      v209.value._countAndFlagsBits = v4;
      v209.value._object = v128;
      *&v210 = v129;
      DWORD2(v210) = v127;
      sub_244300288(&v209, &v214);
      v131 = v214.value._countAndFlagsBits;
      v130 = v214.value._object;
      v132 = v215;
      v134 = *v216;
      v133 = *&v216[8];
      if (v214.value._object)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v202 = v133;
        if ((result & 1) == 0)
        {
          result = sub_2442DB9A8(0, *(v114 + 16) + 1, 1, v114);
          v114 = result;
        }

        v136 = *(v114 + 16);
        v135 = *(v114 + 24);
        v137 = v114;
        if (v136 >= v135 >> 1)
        {
          result = sub_2442DB9A8((v135 > 1), v136 + 1, 1, v114);
          v137 = result;
        }

        *(v137 + 16) = v136 + 1;
        v114 = v137;
        v138 = v137 + 48 * v136;
        *(v138 + 32) = v131;
        *(v138 + 40) = v130;
        *(v138 + 48) = v132;
        *(v138 + 64) = v134;
        *(v138 + 72) = v202;
      }

      else
      {
        result = sub_2442F8BA4(v214.value._countAndFlagsBits, 0);
      }

      ++v115;
      v113 += 4;
      --v112;
      v4 = v203;
      if (!v112)
      {
        goto LABEL_137;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
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
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
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
    goto LABEL_228;
  }

  v114 = MEMORY[0x277D84F90];
LABEL_137:
  v214.value._countAndFlagsBits = v4;
  v214.value._object = v201;
  *&v215 = v200;
  v139 = v204;
  DWORD2(v215) = v204;
  result = IARFFB_Recipe.stepSectionsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_234;
  }

  if (result)
  {
    v140 = *(v4 + 24);
    v141 = *(v140 + v204);
    v8 = __OFSUB__(v204, v141);
    v142 = v204 - v141;
    if (!v8)
    {
      v143 = v114;
      v144 = 0;
      v145 = result - 1;
      v146 = MEMORY[0x277D84F90];
      v147 = -536870912;
      do
      {
        if (*(v140 + v142) < 0x1Du)
        {
          goto LABEL_151;
        }

        v8 = __OFADD__(v142, 28);
        v148 = v142 + 28;
        if (v8)
        {
          goto LABEL_197;
        }

        v149 = *(v140 + v148);
        if (v149)
        {
          v8 = __OFADD__(v149, v204);
          v150 = v149 + v204;
          if (v8)
          {
            goto LABEL_214;
          }

          v151 = *(v140 + v150);
          v8 = __OFADD__(v150, v151);
          v152 = v150 + v151;
          if (v8)
          {
            goto LABEL_215;
          }

          v8 = __OFADD__(v152, 4);
          v153 = v152 + 4;
          if (v8)
          {
            goto LABEL_216;
          }

          if (v147 >> 30 != 3)
          {
            goto LABEL_217;
          }

          v8 = __OFADD__(v153, v144);
          v154 = v153 + v144;
          if (v8)
          {
            goto LABEL_218;
          }

          v155 = *(v140 + v154);
          v156 = v154 + v155;
          if (__OFADD__(v154, v155))
          {
            goto LABEL_219;
          }

          v157 = v4;
          v159 = v200;
          v158 = v201;
        }

        else
        {
LABEL_151:
          v157 = 0;
          v158 = 0;
          v159 = 0;
          v156 = 0;
        }

        v209.value._countAndFlagsBits = v157;
        v209.value._object = v158;
        *&v210 = v159;
        DWORD2(v210) = v156;
        sub_2442FA8C0(&v209, &v214);
        if (*&v216[24])
        {
          v211 = *v216;
          v212 = *&v216[16];
          v213 = v217;
          v209 = v214;
          v210 = v215;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2442DC538(0, *(v146 + 16) + 1, 1, v146);
            v146 = result;
          }

          v161 = *(v146 + 16);
          v160 = *(v146 + 24);
          if (v161 >= v160 >> 1)
          {
            result = sub_2442DC538((v160 > 1), v161 + 1, 1, v146);
            v146 = result;
          }

          v208 = v213;
          v206 = v211;
          v207 = v212;
          v162 = v209;
          v205 = v210;
          *(v146 + 16) = v161 + 1;
          v163 = v146 + 72 * v161;
          *(v163 + 32) = v162;
          *(v163 + 96) = v208;
          *(v163 + 64) = v206;
          *(v163 + 80) = v207;
          *(v163 + 48) = v205;
          if (!v145)
          {
LABEL_163:
            v114 = v143;
            goto LABEL_165;
          }
        }

        else
        {
          v211 = *v216;
          v212 = *&v216[16];
          v213 = v217;
          v209 = v214;
          v210 = v215;
          result = sub_2442F8C08(&v209);
          if (!v145)
          {
            goto LABEL_163;
          }
        }

        v140 = *(v4 + 24);
        v164 = *(v140 + v204);
        ++v147;
        v144 += 4;
        --v145;
        v8 = __OFSUB__(v204, v164);
        v142 = v204 - v164;
      }

      while (!v8);
    }

    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v146 = MEMORY[0x277D84F90];
LABEL_165:
  v165 = Table.offset(_:)(32);
  v8 = __OFADD__(v165, v204);
  result = (v165 + v204);
  if (v8)
  {
    goto LABEL_235;
  }

  v166 = Table.directString(at:)(result);
  result = v166.value._countAndFlagsBits;
  if (!v166.value._object)
  {
LABEL_266:
    __break(1u);
    return result;
  }

  v214.value._countAndFlagsBits = v4;
  v214.value._object = v201;
  *&v215 = v200;
  DWORD2(v215) = v204;
  result = IARFFB_Recipe.structuredComponentsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_236;
  }

  v167 = result;
  if (result)
  {
    v168 = 0;
    v169 = MEMORY[0x277D84F90];
    while (1)
    {
      v170 = *(v4 + 24);
      v171 = *(v170 + v139);
      v8 = __OFSUB__(v139, v171);
      v172 = v139 - v171;
      if (v8)
      {
        goto LABEL_194;
      }

      if (*(v170 + v172) < 0x1Fu)
      {
        break;
      }

      v8 = __OFADD__(v172, 30);
      v173 = v172 + 30;
      if (v8)
      {
        goto LABEL_198;
      }

      v174 = *(v170 + v173);
      if (!v174)
      {
        break;
      }

      v8 = __OFADD__(v174, v139);
      v175 = v174 + v139;
      if (v8)
      {
        goto LABEL_220;
      }

      v176 = *(v170 + v175);
      v8 = __OFADD__(v175, v176);
      v177 = v175 + v176;
      if (v8)
      {
        goto LABEL_221;
      }

      v8 = __OFADD__(v177, 4);
      v178 = v177 + 4;
      if (v8)
      {
        goto LABEL_222;
      }

      v8 = __OFADD__(v178, v168);
      v179 = v178 + v168;
      if (v8)
      {
        goto LABEL_223;
      }

      v180 = *(v170 + v179);
      if (v180 <= 4)
      {
        goto LABEL_183;
      }

      v4 = v203;
LABEL_171:
      if (v167 == ++v168)
      {

        goto LABEL_190;
      }
    }

    LOBYTE(v180) = 0;
LABEL_183:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2442DC438(0, *(v169 + 16) + 1, 1, v169);
      v169 = result;
    }

    v182 = *(v169 + 16);
    v181 = *(v169 + 24);
    if (v182 >= v181 >> 1)
    {
      result = sub_2442DC438((v181 > 1), v182 + 1, 1, v169);
      v169 = result;
    }

    *(v169 + 16) = v182 + 1;
    *(v169 + v182 + 32) = v180;
    v4 = v203;
    v139 = v204;
    goto LABEL_171;
  }

  v169 = MEMORY[0x277D84F90];
LABEL_190:
  *v183 = v10;
  *(v183 + 16) = v12;
  *(v183 + 32) = v14;
  *(v183 + 48) = v16;
  *(v183 + 64) = countAndFlagsBits;
  *(v183 + 72) = object;
  *(v183 + 80) = v192;
  *(v183 + 88) = v191;
  *(v183 + 96) = v186;
  *(v183 + 104) = v194;
  *(v183 + 112) = v197;
  *(v183 + 120) = v190;
  *(v183 + 128) = v189;
  *(v183 + 136) = v185;
  *(v183 + 144) = v193;
  *(v183 + 152) = v196;
  *(v183 + 160) = v188;
  *(v183 + 168) = v187;
  *(v183 + 176) = v184;
  *(v183 + 184) = v199;
  *(v183 + 192) = v114;
  *(v183 + 200) = v146;
  *(v183 + 208) = v166;
  *(v183 + 224) = v169;
  return result;
}

void sub_2442F7728(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v108);
  if (!v2)
  {
    sub_244306DC0(4u, 25705, 0xE200000000000000, 1);
    sub_244306DC0(6u, 0x6556616D65686373, 0xED00006E6F697372, 1);
    sub_244306DC0(8u, 0x656C746974, 0xE500000000000000, 1);
    sub_244306DC0(0xAu, 0x7470697263736564, 0xEB000000006E6F69, 1);
    v4 = v109;
    if (v109 <= 12)
    {
      goto LABEL_151;
    }

    v5 = *(&v108 + 1) + 12;
    if (BYTE8(v109) == 1 && ((*(v112 + 24) + v5) & 1) != 0)
    {
      goto LABEL_16;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 12, 2);
    if (v6)
    {
      goto LABEL_39;
    }

    v7 = *(v112 + 24);
    v8 = *(v7 + v5);
    v9 = v108 + v8;
    if (*(v7 + v5))
    {
      v10 = v108 + v8;
    }

    else
    {
      v10 = 0;
    }

    if (v4 <= 0xE)
    {
      goto LABEL_34;
    }

    v5 = *(&v108 + 1) + 14;
    if (BYTE8(v109) == 1 && ((v7 + v5) & 1) != 0)
    {
LABEL_16:
      *&v102 = MEMORY[0x277D84C58];
      v11 = &qword_27EDDF260;
      v12 = &unk_24431B160;
LABEL_17:
      sub_2442C6564(v11, v12);
      v13 = sub_244312CD8();
      v15 = v14;
      sub_2442DDB84();
      swift_allocError();
      *v16 = v5;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15;
      v17 = v104;
      v18 = v103;
      *(v16 + 24) = v102;
      *(v16 + 40) = v18;
      *(v16 + 56) = v17;
      *(v16 + 64) = 0;
LABEL_38:
      swift_willThrow();
      goto LABEL_39;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 14, 2);
    v3 = v19;
    if (v19)
    {
      goto LABEL_39;
    }

    v114 = v9;
    if (*(*(v112 + 24) + v5))
    {
      v5 = v108 + *(*(v112 + 24) + v5);
      if (v8)
      {
        Verifier.rangeInBuffer(position:size:)(v114, 1);
        v3 = v20;
        if (v20)
        {
          goto LABEL_39;
        }

        v21 = v112;
        v22 = *(v112 + 24);
        v23 = *(v22 + v114);
        if (!*(v22 + v114))
        {
          goto LABEL_53;
        }

        if (v23 == 1)
        {
          if (BYTE8(v109) != 1 || ((v22 + v5) & 3) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(v5, 4);
            if (v31)
            {
              goto LABEL_39;
            }

            v32 = v5 + *(*(v21 + 24) + v5);
            if (v32 < 0)
            {
              v32 = -v32;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            sub_24431297C(&v109 + 8, v33);
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        if (v23 == 2)
        {
          if (BYTE8(v109) != 1 || ((v22 + v5) & 3) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(v5, 4);
            if (!v24)
            {
              v25 = v5 + *(*(v21 + 24) + v5);
              if (v25 < 0)
              {
                v25 = -v25;
              }

              if (v25 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v25;
              }

              sub_2443088F4(&v109 + 8, v26);
LABEL_52:
              v3 = 0;
LABEL_53:
              if (v4 < 0x11)
              {
                goto LABEL_151;
              }

              v34 = *(&v108 + 1) + 16;
              if (BYTE8(v109) == 1 && ((*(v112 + 24) + v34) & 1) != 0)
              {
                goto LABEL_63;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 16, 2);
              v114 = v35;
              if (v35)
              {
                goto LABEL_39;
              }

              v36 = *(v112 + 24);
              v37 = *(v36 + v34);
              v3 = v108 + v37;
              if (*(v36 + v34))
              {
                v38 = v108 + v37;
              }

              else
              {
                v38 = 0;
              }

              if (v4 <= 0x12)
              {
                goto LABEL_81;
              }

              v34 = *(&v108 + 1) + 18;
              if (BYTE8(v109) == 1 && ((v36 + v34) & 1) != 0)
              {
                goto LABEL_63;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 18, 2);
              v114 = v48;
              if (v48)
              {
                goto LABEL_39;
              }

              if (*(*(v112 + 24) + v34))
              {
                v34 = v108 + *(*(v112 + 24) + v34);
                if (v37)
                {
                  Verifier.rangeInBuffer(position:size:)(v3, 1);
                  v114 = v49;
                  if (v49)
                  {
                    goto LABEL_39;
                  }

                  v50 = v112;
                  v51 = *(v112 + 24);
                  v52 = *(v51 + v3);
                  if (*(v51 + v3))
                  {
                    if (v52 == 1)
                    {
                      if (BYTE8(v109) == 1 && ((v51 + v34) & 3) != 0)
                      {
                        goto LABEL_91;
                      }

                      Verifier.rangeInBuffer(position:size:)(v34, 4);
                      v114 = v63;
                      if (v63)
                      {
                        goto LABEL_39;
                      }

                      v64 = v34 + *(*(v50 + 24) + v34);
                      if (v64 < 0)
                      {
                        v64 = -v64;
                      }

                      if (v64 >= 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v65 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v65 = v64;
                      }

                      v56 = v114;
                      sub_24431297C(&v109 + 8, v65);
                    }

                    else
                    {
                      if (v52 != 2)
                      {
LABEL_129:
                        sub_2442DDB84();
                        v44 = swift_allocError();
                        *v59 = 5;
                        *(v59 + 8) = 0u;
                        *(v59 + 24) = 0u;
                        *(v59 + 40) = 0u;
                        *(v59 + 56) = 0;
                        v62 = 7;
                        goto LABEL_85;
                      }

                      if (BYTE8(v109) == 1 && ((v51 + v34) & 3) != 0)
                      {
                        goto LABEL_91;
                      }

                      Verifier.rangeInBuffer(position:size:)(v34, 4);
                      v114 = v53;
                      if (v53)
                      {
                        goto LABEL_39;
                      }

                      v54 = v34 + *(*(v50 + 24) + v34);
                      if (v54 < 0)
                      {
                        v54 = -v54;
                      }

                      if (v54 >= 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v55 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v55 = v54;
                      }

                      v56 = v114;
                      sub_2443088F4(&v109 + 8, v55);
                    }

                    v114 = v56;
                  }

LABEL_100:
                  if (v4 < 0x15)
                  {
                    goto LABEL_151;
                  }

                  v34 = *(&v108 + 1) + 20;
                  if (BYTE8(v109) != 1 || ((*(v112 + 24) + v34) & 1) == 0)
                  {
                    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 20, 2);
                    v114 = v66;
                    if (v66)
                    {
                      goto LABEL_39;
                    }

                    v67 = *(v112 + 24);
                    v68 = *(v67 + v34);
                    v3 = v108 + v68;
                    if (*(v67 + v34))
                    {
                      v69 = v108 + v68;
                    }

                    else
                    {
                      v69 = 0;
                    }

                    if (v4 <= 0x16)
                    {
                      goto LABEL_126;
                    }

                    v34 = *(&v108 + 1) + 22;
                    if (BYTE8(v109) != 1 || ((v67 + v34) & 1) == 0)
                    {
                      Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 22, 2);
                      v114 = v70;
                      if (v70)
                      {
                        goto LABEL_39;
                      }

                      if (*(*(v112 + 24) + v34))
                      {
                        v34 = v108 + *(*(v112 + 24) + v34);
                        if (v68)
                        {
                          Verifier.rangeInBuffer(position:size:)(v3, 1);
                          v114 = v71;
                          if (v71)
                          {
                            goto LABEL_39;
                          }

                          v72 = v112;
                          v73 = *(v112 + 24);
                          v74 = *(v73 + v3);
                          if (!*(v73 + v3))
                          {
LABEL_141:
                            if (v4 >= 0x19)
                            {
                              v3 = *(&v108 + 1) + 24;
                              v84 = BYTE8(v109);
                              if (BYTE8(v109) == 1 && ((*(v112 + 24) + v3) & 1) != 0)
                              {
LABEL_160:
                                *&v102 = MEMORY[0x277D84C58];
                                v90 = &qword_27EDDF260;
                                v91 = &unk_24431B160;
                                goto LABEL_161;
                              }

                              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 24, 2);
                              if (v85)
                              {
                                goto LABEL_3;
                              }

                              v86 = v112;
                              v87 = *(v112 + 24);
                              v88 = *(v87 + v3);
                              if (*(v87 + v3))
                              {
                                v3 = v108 + v88;
                                if (((v87 + v108 + v88) & 3) != 0)
                                {
                                  v89 = v84;
                                }

                                else
                                {
                                  v89 = 0;
                                }

                                if (v89 == 1)
                                {
                                  *&v102 = MEMORY[0x277D84CC0];
                                  v90 = &qword_27EDDF268;
                                  v91 = qword_244316998;
LABEL_161:
                                  sub_2442C6564(v90, v91);
                                  v93 = sub_244312CD8();
                                  v95 = v94;
                                  sub_2442DDB84();
                                  swift_allocError();
                                  *v96 = v3;
                                  *(v96 + 8) = v93;
                                  *(v96 + 16) = v95;
                                  v97 = v104;
                                  v98 = v103;
                                  *(v96 + 24) = v102;
                                  *(v96 + 40) = v98;
                                  *(v96 + 56) = v97;
                                  *(v96 + 64) = 0;
                                  swift_willThrow();
LABEL_3:
                                  v106 = v112;
                                  *v107 = v113[0];
                                  *&v107[13] = *(v113 + 13);
                                  v102 = v108;
                                  v103 = v109;
                                  v104 = v110;
                                  v105 = v111;
LABEL_4:
                                  sub_2442F8C70(&v102);
                                  return;
                                }

                                Verifier.rangeInBuffer(position:size:)(v108 + v88, 4);
                                if (v99)
                                {
                                  goto LABEL_3;
                                }

                                v100 = v3 + *(*(v86 + 24) + v3);
                                if (v100 < 0)
                                {
                                  v100 = -v100;
                                }

                                if (v100 >= 0x7FFFFFFFFFFFFFFFLL)
                                {
                                  v101 = 0x7FFFFFFFFFFFFFFFLL;
                                }

                                else
                                {
                                  v101 = v100;
                                }

                                sub_244307704(&v109 + 8, v101);
                              }
                            }

LABEL_151:
                            sub_244307058(0x1Au, 0x6569646572676E69, 0xEB0000000073746ELL, 1);
                            sub_244307084(0x1Cu, 0x7463655370657473, 0xEC000000736E6F69, 1);
                            if (v4 > 30)
                            {
                              v3 = *(&v108 + 1) + 30;
                              sub_2442E0E9C(*(&v108 + 1) + 30);
                              Verifier.rangeInBuffer(position:size:)(v3, 2);
                              if (v92)
                              {
                                goto LABEL_3;
                              }

                              if (*(*(v112 + 24) + v3))
                              {
                                sub_244306980(&v109 + 8, v108 + *(*(v112 + 24) + v3));
                              }
                            }

                            sub_244306DC0(0x20u, 0x65676175676E616CLL, 0xE800000000000000, 1);
                            if (!__OFSUB__(*(&v111 + 1), 1))
                            {
                              --*(&v111 + 1);
                              v106 = v112;
                              *v107 = v113[0];
                              *&v107[13] = *(v113 + 13);
                              v102 = v108;
                              v103 = v109;
                              v104 = v110;
                              v105 = v111;
                              goto LABEL_4;
                            }

                            __break(1u);
                            goto LABEL_160;
                          }

                          if (v74 == 1)
                          {
                            if (BYTE8(v109) != 1 || ((v73 + v34) & 3) == 0)
                            {
                              Verifier.rangeInBuffer(position:size:)(v34, 4);
                              v114 = v81;
                              if (v81)
                              {
                                goto LABEL_39;
                              }

                              v82 = v34 + *(*(v72 + 24) + v34);
                              if (v82 < 0)
                              {
                                v82 = -v82;
                              }

                              if (v82 >= 0x7FFFFFFFFFFFFFFFLL)
                              {
                                v83 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v83 = v82;
                              }

                              v78 = v114;
                              sub_24431297C(&v109 + 8, v83);
LABEL_140:
                              v114 = v78;
                              goto LABEL_141;
                            }

LABEL_91:
                            *&v102 = MEMORY[0x277D84CC0];
                            v39 = &qword_27EDDF268;
                            v40 = qword_244316998;
                            goto LABEL_64;
                          }

                          if (v74 == 2)
                          {
                            if (BYTE8(v109) != 1 || ((v73 + v34) & 3) == 0)
                            {
                              Verifier.rangeInBuffer(position:size:)(v34, 4);
                              v114 = v75;
                              if (v75)
                              {
                                goto LABEL_39;
                              }

                              v76 = v34 + *(*(v72 + 24) + v34);
                              if (v76 < 0)
                              {
                                v76 = -v76;
                              }

                              if (v76 >= 0x7FFFFFFFFFFFFFFFLL)
                              {
                                v77 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v77 = v76;
                              }

                              v78 = v114;
                              sub_2443088F4(&v109 + 8, v77);
                              goto LABEL_140;
                            }

                            goto LABEL_91;
                          }

                          goto LABEL_129;
                        }

                        v80 = 0;
                        v79 = 1;
                        goto LABEL_128;
                      }

LABEL_126:
                      if (!v68)
                      {
                        goto LABEL_141;
                      }

                      v34 = 0;
                      v79 = 0;
                      v80 = 1;
LABEL_128:
                      LOBYTE(v102) = v79;
                      sub_2442DDB84();
                      v44 = swift_allocError();
                      *v59 = v69;
                      *(v59 + 8) = v79;
                      v60 = 0x6D69546C61746F74;
                      strcpy((v59 + 16), "totalTimeType");
                      *(v59 + 30) = -4864;
                      *(v59 + 32) = v34;
                      *(v59 + 40) = v80;
                      v61 = 0xE900000000000065;
                      goto LABEL_84;
                    }
                  }

LABEL_63:
                  *&v102 = MEMORY[0x277D84C58];
                  v39 = &qword_27EDDF260;
                  v40 = &unk_24431B160;
LABEL_64:
                  sub_2442C6564(v39, v40);
                  v41 = sub_244312CD8();
                  v43 = v42;
                  sub_2442DDB84();
                  v44 = swift_allocError();
                  *v45 = v34;
                  *(v45 + 8) = v41;
                  *(v45 + 16) = v43;
                  v46 = v104;
                  v47 = v103;
                  *(v45 + 24) = v102;
                  *(v45 + 40) = v47;
                  *(v45 + 56) = v46;
                  *(v45 + 64) = 0;
LABEL_86:
                  v114 = v44;
                  swift_willThrow();
                  goto LABEL_39;
                }

                v58 = 0;
                v57 = 1;
              }

              else
              {
LABEL_81:
                if (!v37)
                {
                  goto LABEL_100;
                }

                v34 = 0;
                v57 = 0;
                v58 = 1;
              }

              LOBYTE(v102) = v57;
              sub_2442DDB84();
              v44 = swift_allocError();
              *v59 = v38;
              *(v59 + 8) = v57;
              v60 = 0x656D69546B6F6F63;
              strcpy((v59 + 16), "cookTimeType");
              *(v59 + 29) = 0;
              *(v59 + 30) = -5120;
              *(v59 + 32) = v34;
              *(v59 + 40) = v58;
              v61 = 0xE800000000000000;
LABEL_84:
              *(v59 + 48) = v60;
              *(v59 + 56) = v61;
              v62 = 5;
LABEL_85:
              *(v59 + 64) = v62;
              goto LABEL_86;
            }

LABEL_39:
            v106 = v112;
            *v107 = v113[0];
            *&v107[13] = *(v113 + 13);
            v102 = v108;
            v103 = v109;
            v104 = v110;
            v105 = v111;
            sub_2442F8C70(&v102);
            return;
          }

LABEL_43:
          *&v102 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
          goto LABEL_17;
        }

        sub_2442DDB84();
        swift_allocError();
        *v29 = 5;
        *(v29 + 8) = 0u;
        *(v29 + 24) = 0u;
        *(v29 + 40) = 0u;
        *(v29 + 56) = 0;
        v30 = 7;
LABEL_37:
        *(v29 + 64) = v30;
        goto LABEL_38;
      }

      v28 = 0;
      v27 = 1;
    }

    else
    {
LABEL_34:
      if (!v8)
      {
        goto LABEL_53;
      }

      v5 = 0;
      v27 = 0;
      v28 = 1;
    }

    LOBYTE(v102) = v27;
    sub_2442DDB84();
    swift_allocError();
    *v29 = v10;
    *(v29 + 8) = v27;
    strcpy((v29 + 16), "prepTimeType");
    *(v29 + 29) = 0;
    *(v29 + 30) = -5120;
    *(v29 + 32) = v5;
    *(v29 + 40) = v28;
    *(v29 + 48) = 0x656D695470657270;
    *(v29 + 56) = 0xE800000000000000;
    v30 = 5;
    goto LABEL_37;
  }
}