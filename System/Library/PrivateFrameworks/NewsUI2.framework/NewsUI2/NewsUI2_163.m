void sub_21990D924()
{
  if (!qword_27CC20D30)
  {
    sub_21990E3B0(255, &qword_27CC20D38, &type metadata for HighlightSourceHeadline, MEMORY[0x277D83940]);
    sub_218A4247C(255, &unk_280E8EB90, &qword_280E8DFF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20D30);
    }
  }
}

uint64_t sub_21990D9EC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_21990DA08()
{
  result = qword_27CC20D48;
  if (!qword_27CC20D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D48);
  }

  return result;
}

uint64_t sub_21990DA64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_21990DAC8()
{
  if (!qword_27CC20D50)
  {
    sub_21990E3B0(255, &qword_27CC20D38, &type metadata for HighlightSourceHeadline, MEMORY[0x277D83940]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20D50);
    }
  }
}

uint64_t sub_21990DB44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21990DBA8()
{
  if (!qword_27CC20D60)
  {
    sub_21990E3B0(255, &unk_27CC1ABE0, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20D60);
    }
  }
}

uint64_t sub_21990DCB8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = *(v4 + 184);
  v8 = [objc_msgSend(v7 configurationManager)];
  swift_unknownObjectRelease();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  v60 = a3;
  if (v9)
  {
    v11 = sub_21947D1C0(v9, 0);
    v12 = sub_2194ABD64(&v65, v11 + 4, v9, a2);

    result = sub_21892DE98();
    if (v12 != v9)
    {
      __break(1u);
      return result;
    }

    v10 = MEMORY[0x277D84F90];
  }

  v14 = objc_opt_self();
  v15 = sub_219BF5904();

  v16 = [v14 transformationWithFilterOptions:0x20002813ALL configuration:v8 context:v7 otherArticleIDs:v15];
  swift_unknownObjectRelease();

  sub_2186D6710(0, &qword_280E8E260);
  v17 = sub_219BF5904();
  v58 = v16;
  v18 = [v16 transformHeadlinesWithResult_];

  sub_2186C6148(0, &qword_280E8DB98);
  v19 = sub_219BF5924();

  v65 = v10;
  v20 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
LABEL_24:
    v21 = sub_219BF7214();
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_25:
    v59 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_6:
  v22 = 0;
  v59 = MEMORY[0x277D84F90];
  v23 = v19 & 0xC000000000000001;
  v24 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v62 = v20;
  v63 = v19;
  v61 = v21;
  do
  {
    v25 = v22;
    while (1)
    {
      if (v23)
      {
        v41 = MEMORY[0x21CECE0F0](v25, v19);
      }

      else
      {
        if (v25 >= *(v20 + 16))
        {
          goto LABEL_23;
        }

        v41 = *(v19 + 8 * v25 + 32);
      }

      v42 = v41;
      v22 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (![v41 v24[510]])
      {
        break;
      }

      sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_219C0B8C0;
      v27 = [a4 identifier];
      v28 = sub_219BF5414();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
      *(v26 + 56) = MEMORY[0x277D837D0];
      v32 = sub_2186FC3BC();
      *(v26 + 64) = v32;
      *(v26 + 32) = v28;
      *(v26 + 40) = v30;
      v33 = [objc_msgSend(v42 item)];
      swift_unknownObjectRelease();
      v34 = sub_219BF5414();
      v36 = v35;

      *(v26 + 96) = v31;
      *(v26 + 104) = v32;
      *(v26 + 72) = v34;
      *(v26 + 80) = v36;
      [v42 filteredReasons];
      v37 = FCFeedFilterOptionsToNSString();
      v38 = sub_219BF5414();
      v40 = v39;

      *(v26 + 136) = v31;
      *(v26 + 144) = v32;
      v24 = &selRef_moveShortcutWithIdentifier_toIndex_;
      *(v26 + 112) = v38;
      *(v26 + 120) = v40;
      v20 = v62;
      v19 = v63;
      v21 = v61;
      sub_219BF6214();
      sub_219BE5314();

LABEL_9:
      ++v25;
      if (v22 == v21)
      {
        goto LABEL_26;
      }
    }

    v43 = [v42 item];

    if (!v43)
    {
      goto LABEL_9;
    }

    MEMORY[0x21CECC690]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v59 = v65;
  }

  while (v22 != v21);
LABEL_26:

  sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C0EE20;
  v45 = [a4 identifier];
  v46 = sub_219BF5414();
  v48 = v47;

  *(v44 + 56) = MEMORY[0x277D837D0];
  v49 = sub_2186FC3BC();
  *(v44 + 64) = v49;
  *(v44 + 32) = v46;
  *(v44 + 40) = v48;
  if (v60 >> 62)
  {
    v50 = sub_219BF7214();
  }

  else
  {
    v50 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = MEMORY[0x277D83B88];
  v52 = MEMORY[0x277D83C10];
  *(v44 + 96) = MEMORY[0x277D83B88];
  *(v44 + 104) = v52;
  *(v44 + 72) = v50;
  if (v59 >> 62)
  {
    v53 = sub_219BF7214();
  }

  else
  {
    v53 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v44 + 136) = v51;
  *(v44 + 144) = v52;
  *(v44 + 112) = v53;
  v54 = FCFeedFilterOptionsToNSString();
  v55 = sub_219BF5414();
  v57 = v56;

  *(v44 + 176) = MEMORY[0x277D837D0];
  *(v44 + 184) = v49;
  *(v44 + 152) = v55;
  *(v44 + 160) = v57;
  sub_219BF6214();
  sub_219BE5314();

  return v59;
}

uint64_t sub_21990E314(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_21990E3B0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21990E3B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7NewsUI234TagHighlightHeadlinesRequestSourceO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_21990E43C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_21990E47C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x73656C6369747261;
      break;
    case 2:
      result = 0x6E6F6365536C7474;
      break;
    case 3:
      result = 0x61636F4C72657375;
      break;
    case 4:
      result = 0x74695470756F7267;
      break;
    case 5:
      result = 0x62755370756F7267;
      break;
    case 6:
      result = 0x63416F546C6C6163;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x73746F6C73;
      break;
    case 11:
      v3 = 1315858797;
      goto LABEL_6;
    case 12:
      v3 = 1316512109;
LABEL_6:
      result = v3 | 0x5673776500000000;
      break;
    case 13:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21990E63C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21990E708()
{
  sub_219BF5524();
}

uint64_t sub_21990E7C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21990E888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199120B0();
  *a1 = result;
  return result;
}

void sub_21990E8B8(unint64_t *a1@<X8>)
{
  v2 = 0xED0000474E494645;
  v3 = 0x495242594C494144;
  v4 = 0xE400000000000000;
  v5 = 1330791752;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000219CD91A0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000219CD9180;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21990EA08()
{
  sub_219BF5524();
}

uint64_t sub_21990EB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199120FC();
  *a1 = result;
  return result;
}

void sub_21990EB64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E696665;
  v4 = 0x697242796C696164;
  v5 = 0xEE00646579616C50;
  v6 = 0x796C746E65636572;
  if (v2 != 5)
  {
    v6 = 0x6C6C6177796170;
    v5 = 0xE700000000000000;
  }

  v7 = 0x8000000219CD91E0;
  v8 = 0x7473696C79616C70;
  if (v2 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000219CD91C0;
  v10 = 0xD000000000000014;
  if (v2 != 1)
  {
    v10 = 1869768040;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21990ED08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21990E47C(*a1);
  v5 = v4;
  if (v3 == sub_21990E47C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21990ED90()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21990E47C(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21990EDF4()
{
  sub_21990E47C(*v0);
  sub_219BF5524();
}

uint64_t sub_21990EE48()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21990E47C(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21990EEA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219912148();
  *a1 = result;
  return result;
}

uint64_t sub_21990EED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21990E47C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21990EF20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219912148();
  *a1 = result;
  return result;
}

uint64_t sub_21990EF48(uint64_t a1)
{
  v2 = sub_219911B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21990EF84(uint64_t a1)
{
  v2 = sub_219911B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21990EFC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v168 = sub_219BDBD64();
  v176 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v175 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = &v160 - v7;
  MEMORY[0x28223BE20](v8);
  v177 = &v160 - v9;
  sub_219911C04(0, &unk_280E8CCF8, MEMORY[0x277D844C8]);
  v178 = v10;
  v171 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v160 - v11;
  v170 = type metadata accessor for LegacyAudioFeedGroupConfig();
  MEMORY[0x28223BE20](v170);
  v174 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v173 = (&v160 - v15);
  MEMORY[0x28223BE20](v16);
  v172 = (&v160 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v160 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v160 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v160 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v160 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v160 - v31;
  v33 = a1[3];
  v179 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_219911B08();
  v34 = v180;
  sub_219BF7B34();
  if (!v34)
  {
    v36 = v173;
    v35 = v174;
    v163 = v29;
    v164 = v20;
    v37 = v172;
    v162 = v23;
    v38 = v175;
    v161 = v26;
    v39 = v176;
    v165 = v32;
    sub_219910334();
    if (v40 > 2u)
    {
      if (v40 > 4u)
      {
        v51 = v39;
        if (v40 != 5)
        {
          LOBYTE(v181) = 13;
          v67 = v178;
          v68 = sub_219BF7694();
          v70 = v167;
          v71 = v168;
          v180 = 0;
          v80 = v12;
          if (v69)
          {
            v81 = v69;
            v82 = v68;
          }

          else
          {
            sub_219BDBD54();
            v111 = sub_219BDBD44();
            v112 = v51;
            v82 = v111;
            v81 = v113;
            (*(v112 + 8))(v70, v71);
          }

          v43 = v169;
          v183 = 10;
          sub_218968414();
          sub_219BF7674();
          (*(v171 + 8))(v80, v67);
          v114 = v181;
          if (v181 == 1)
          {
            v114 = 0;
          }

          *v35 = v82;
          v35[1] = v81;
          v35[2] = v114;
          swift_storeEnumTagMultiPayload();
          v94 = v35;
          goto LABEL_53;
        }

        LOBYTE(v181) = 13;
        v52 = v178;
        v53 = sub_219BF7694();
        v55 = v167;
        v56 = v168;
        v180 = 0;
        v57 = v12;
        if (v54)
        {
          v58 = v54;
          v59 = v53;
        }

        else
        {
          sub_219BDBD54();
          v59 = sub_219BDBD44();
          v58 = v92;
          (*(v51 + 8))(v55, v56);
        }

        v183 = 10;
        sub_218968414();
        sub_219BF7674();
        if (v181 == 1)
        {
          v93 = 0;
        }

        else
        {
          v93 = v181;
        }

        (*(v171 + 8))(v57, v52);
        *v36 = v59;
        v36[1] = v58;
        v36[2] = v93;
        swift_storeEnumTagMultiPayload();
        v94 = v36;
        goto LABEL_52;
      }

      v42 = v12;
      v43 = v169;
      if (v40 != 3)
      {
        LOBYTE(v181) = 13;
        v65 = sub_219BF7694();
        v180 = 0;
        v79 = v171;
        if (v66)
        {
          v177 = v66;
          v175 = v65;
        }

        else
        {
          v106 = v167;
          sub_219BDBD54();
          v175 = sub_219BDBD44();
          v177 = v107;
          (*(v39 + 8))(v106, v168);
        }

        v183 = 10;
        sub_218968414();
        v108 = v178;
        sub_219BF7674();
        if (v181 == 1)
        {
          v109 = 0;
        }

        else
        {
          v109 = v181;
        }

        (*(v79 + 8))(v42, v108);
        v110 = v177;
        *v37 = v175;
        v37[1] = v110;
        v37[2] = v109;
        swift_storeEnumTagMultiPayload();
        v94 = v37;
        goto LABEL_53;
      }

      LOBYTE(v181) = 7;
      v44 = v178;
      v45 = sub_219BF76F4();
      v76 = v75;
      v177 = v45;
      LOBYTE(v181) = 8;
      v77 = sub_219BF7694();
      v180 = 0;
      v174 = v78;
      v175 = v77;
      type metadata accessor for LegacyAudioConfigArticle(0);
      LOBYTE(v181) = 9;
      sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle);
      v95 = sub_219BF7684();
      v96 = MEMORY[0x277D84F90];
      if (v95)
      {
        v96 = v95;
      }

      v173 = v96;
      v97 = v167;
      sub_219BDBD54();
      v98 = sub_219BDBD44();
      v100 = v99;
      (*(v39 + 8))(v97, v168);
      (*(v171 + 8))(v12, v44);
      v101 = v164;
      *v164 = v98;
      v101[1] = v100;
      v102 = v177;
      v101[2] = &unk_282A2B290;
      v101[3] = v102;
      v104 = v174;
      v103 = v175;
      v101[4] = v76;
      v101[5] = v103;
      v105 = v173;
      v101[6] = v104;
      v101[7] = v105;
      goto LABEL_39;
    }

    if (v40)
    {
      v46 = v178;
      if (v40 == 1)
      {
        LOBYTE(v181) = 13;
        v47 = sub_219BF7694();
        if (v48)
        {
          v49 = v47;
          v50 = v48;
        }

        else
        {
          v83 = v167;
          sub_219BDBD54();
          v49 = sub_219BDBD44();
          v50 = v84;
          (*(v39 + 8))(v83, v168);
        }

        v183 = 10;
        sub_218968414();
        sub_219BF7674();
        v85 = v181;
        if (v181 == 1)
        {
          v86 = 0;
        }

        else
        {
          v86 = v181;
        }

        type metadata accessor for LegacyAudioConfigArticle(0);
        LOBYTE(v181) = 1;
        sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle);
        v87 = 0;
        v177 = sub_219BF7654();
        LOBYTE(v181) = 4;
        v90 = sub_219BF7694();
        v176 = v90;
        if (v91)
        {
          v130 = v91;
        }

        else
        {
          v131 = v12;
          v180 = 0;
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v133 = [objc_opt_self() bundleForClass_];
          v12 = v131;
          v176 = sub_219BDB5E4();
          v130 = v134;

          v87 = v180;
        }

        LOBYTE(v181) = 5;
        v135 = v178;
        v136 = sub_219BF7694();
        if (!v87)
        {
          v175 = v12;
          if (v137)
          {
            v173 = v136;
            v174 = v137;
          }

          else
          {
            type metadata accessor for Localized();
            v138 = swift_getObjCClassFromMetadata();
            v139 = [objc_opt_self() bundleForClass_];
            v173 = sub_219BDB5E4();
            v174 = v140;
          }

          v183 = 6;
          sub_218D63934();
          sub_219BF76E4();
          v168 = v181;
          v172 = v182;
          v183 = 2;
          v141 = sub_219BF76B4();
          LODWORD(v167) = v142;
          v180 = 0;
          v143 = v141;
          sub_219BDBD34();
          v183 = 3;
          sub_219911DF8(&unk_280EE9C70, MEMORY[0x277CC9578]);
          v144 = v180;
          sub_219BF76E4();
          v180 = v144;
          if (v144)
          {
            (*(v171 + 8))(v175, v178);
            sub_2190FDFDC(v85);

            sub_2188398B4(v168, v172);
            return __swift_destroy_boxed_opaque_existential_1(v179);
          }

          v183 = 11;
          v164 = sub_219BF7694();
          v180 = 0;
          v146 = v145;
          v183 = 12;
          v147 = sub_219BF7694();
          v162 = v148;
          v163 = v147;
          v180 = 0;
          v149 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig();
          v160 = v149[12];
          v150 = *MEMORY[0x277D32628];
          v151 = sub_219BEF554();
          v101 = v161;
          (*(*(v151 - 8) + 104))(&v161[v160], v150, v151);
          *v101 = v49;
          v101[1] = v50;
          v101[2] = v86;
          (*(v171 + 8))(v175, v178);
          v152 = v176;
          v101[3] = v177;
          v101[4] = v152;
          v153 = v173;
          v154 = v174;
          v101[5] = v130;
          v101[6] = v153;
          v155 = v168;
          v101[7] = v154;
          v101[8] = v155;
          v101[9] = v172;
          v101[10] = v143;
          *(v101 + 88) = v167 & 1;
          sub_218A5DD60(v166, v101 + v149[11]);
          v156 = (v101 + v149[13]);
          v157 = v163;
          *v156 = v164;
          v156[1] = v146;
          v158 = (v101 + v149[14]);
          v159 = v162;
          *v158 = v157;
          v158[1] = v159;
LABEL_39:
          swift_storeEnumTagMultiPayload();
          v94 = v101;
LABEL_52:
          v43 = v169;
LABEL_53:
          v129 = v165;
          sub_219911A40(v94, v165, type metadata accessor for LegacyAudioFeedGroupConfig);
          sub_219911A40(v129, v43, type metadata accessor for LegacyAudioFeedGroupConfig);
          return __swift_destroy_boxed_opaque_existential_1(v179);
        }

        v180 = v87;
        (*(v171 + 8))(v12, v135);
        sub_2190FDFDC(v85);

LABEL_63:

        return __swift_destroy_boxed_opaque_existential_1(v179);
      }

      type metadata accessor for LegacyAudioConfigArticle(0);
      LOBYTE(v181) = 1;
      sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle);
      v72 = sub_219BF7654();
      LOBYTE(v181) = 2;
      v73 = sub_219BF76B4();
      v180 = 0;
      v88 = v12;
      LODWORD(v177) = v74;
      v174 = v73;
      sub_219BDBD34();
      LOBYTE(v181) = 3;
      sub_219911DF8(&unk_280EE9C70, MEMORY[0x277CC9578]);
      v89 = v180;
      sub_219BF76E4();
      v180 = v89;
      if (v89)
      {
        (*(v171 + 8))(v12, v46);
        goto LABEL_63;
      }

      v123 = v167;
      sub_219BDBD54();
      v124 = sub_219BDBD44();
      v126 = v125;
      (*(v39 + 8))(v123, v168);
      v118 = v162;
      *v162 = v124;
      v118[1] = v126;
      v118[2] = &unk_282A2B268;
      (*(v171 + 8))(v88, v46);
      v127 = v174;
      v118[3] = v72;
      v118[4] = v127;
      *(v118 + 40) = v177 & 1;
      v128 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
      sub_218A5DD60(v38, v118 + *(v128 + 32));
    }

    else
    {
      type metadata accessor for LegacyAudioConfigArticle(0);
      LOBYTE(v181) = 1;
      sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle);
      v60 = v178;
      v61 = sub_219BF7654();
      LOBYTE(v181) = 2;
      v62 = sub_219BF76B4();
      v180 = 0;
      LODWORD(v175) = v63;
      v174 = v62;
      sub_219BDBD34();
      LOBYTE(v181) = 3;
      sub_219911DF8(&unk_280EE9C70, MEMORY[0x277CC9578]);
      v64 = v180;
      sub_219BF76E4();
      v180 = v64;
      if (v64)
      {
        (*(v171 + 8))(v12, v60);

        return __swift_destroy_boxed_opaque_existential_1(v179);
      }

      v115 = v167;
      sub_219BDBD54();
      v116 = sub_219BDBD44();
      v173 = v117;
      (*(v39 + 8))(v115, v168);
      (*(v171 + 8))(v12, v60);
      v118 = v163;
      v119 = v174;
      *v163 = v61;
      v118[1] = v119;
      *(v118 + 16) = v175 & 1;
      v120 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig();
      sub_218A5DD60(v177, v118 + *(v120 + 24));
      v121 = (v118 + *(v120 + 28));
      v122 = v173;
      *v121 = v116;
      v121[1] = v122;
    }

    swift_storeEnumTagMultiPayload();
    v94 = v118;
    goto LABEL_52;
  }

  v180 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v179);
}

void sub_219910334()
{
  sub_219911C04(0, &unk_280E8CCF8, MEMORY[0x277D844C8]);
  sub_219911B5C();
  sub_219BF7734();
  if (v0)
  {
    sub_219911BB0();
    sub_219BF7734();
  }
}

uint64_t sub_21991040C(void *a1)
{
  v43 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
  MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig();
  MEMORY[0x28223BE20](v41);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig();
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacyAudioFeedGroupConfig();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219911C04(0, &qword_27CC20DA0, MEMORY[0x277D84538]);
  v48 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219911B08();
  v47 = v13;
  sub_219BF7B44();
  sub_2199119DC(v44, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v15 = v47;
      v16 = v48;
      v30 = *(v10 + 2);
      if (EnumCaseMultiPayload == 5)
      {
        v31 = 5;
      }

      else
      {
        v31 = 6;
      }
    }

    else
    {
      v15 = v47;
      v16 = v48;
      if (EnumCaseMultiPayload == 3)
      {
        v17 = *(v10 + 1);
        v51 = *v10;
        v52 = v17;
        v18 = *(v10 + 3);
        v53 = *(v10 + 2);
        v54 = v18;
        LOBYTE(v49) = 3;
        v55 = 0;
        sub_219911C68();
        v19 = v45;
        sub_219BF7834();
        if (v19)
        {
          (*(v46 + 8))(v15, v16);
          return sub_218D242E8(&v51);
        }

        LOBYTE(v49) = 13;
        sub_219BF77F4();
        v49 = v52;
        v55 = 10;
        sub_2189684CC();

        sub_219BF7834();

        LOBYTE(v49) = 7;
        sub_219BF77F4();
        v49 = *(&v53 + 1);
        v50 = v54;
        v55 = 8;
        sub_2186DEEA0(0, &qword_280E8F860);
        sub_219911D94(&qword_280E8F850, &qword_280E8F860);

        sub_219BF7834();

        v49 = *(&v54 + 1);
        v55 = 9;
        sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
        sub_219911CBC();

        sub_219BF7834();
        sub_218D242E8(&v51);
LABEL_26:

        return (*(v46 + 8))(v15, v16);
      }

      v30 = *(v10 + 2);
      v31 = 4;
    }

    LOBYTE(v51) = v31;
    LOBYTE(v49) = 0;
    sub_219911C68();
    v39 = v45;
    sub_219BF7834();
    if (v39)
    {
      (*(v46 + 8))(v15, v16);
    }

    LOBYTE(v51) = 13;
    sub_219BF77F4();
    *&v51 = v30;
    LOBYTE(v49) = 10;
    sub_2189684CC();

    sub_219BF7834();
    swift_bridgeObjectRelease_n();
    goto LABEL_26;
  }

  v21 = v7;
  v22 = v41;
  if (EnumCaseMultiPayload)
  {
    v23 = v47;
    v24 = v48;
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v4;
      sub_219911A40(v10, v4, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      LOBYTE(v51) = 1;
      LOBYTE(v49) = 0;
      sub_219911C68();
      v26 = v45;
      sub_219BF7834();
      if (v26)
      {
        (*(v46 + 8))(v23, v24);
        return sub_219911AA8(v4, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      }

      LOBYTE(v51) = 13;
      sub_219BF77F4();
      *&v51 = *(v4 + 2);
      LOBYTE(v49) = 10;
      sub_2189684CC();
      sub_219BF7834();
      *&v51 = *(v4 + 3);
      LOBYTE(v49) = 1;
      sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
      sub_219911CBC();
      sub_219BF7834();
      v51 = *(v4 + 2);
      LOBYTE(v49) = 4;
      sub_2186DEEA0(0, &qword_280E8F860);
      v28 = v27;
      sub_219911D94(&qword_280E8F850, &qword_280E8F860);
      sub_219BF7834();
      v51 = *(v4 + 3);
      LOBYTE(v49) = 5;
      sub_219BF7834();
      v51 = *(v4 + 4);
      LOBYTE(v49) = 6;
      sub_2186DEEA0(0, &qword_280EB4118);
      sub_219911E40();
      sub_219BF7834();
      v45 = v28;
      v29 = v4[88];
      *&v51 = *(v4 + 10);
      BYTE8(v51) = v29;
      LOBYTE(v49) = 2;
      sub_2186DEEA0(0, &qword_280E8EA30);
      sub_219911D94(&qword_27CC20DB0, &qword_280E8EA30);
      sub_219BF7834();
      LOBYTE(v51) = 3;
      sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      sub_21897A904();
      sub_219BF7834();
      v51 = *&v4[*(v22 + 52)];
      LOBYTE(v49) = 11;
      sub_219BF7834();
      v51 = *&v4[*(v22 + 56)];
      LOBYTE(v49) = 12;
      sub_219BF7834();
      (*(v46 + 8))(v47, v48);
      v40 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig;
    }

    else
    {
      v25 = v42;
      sub_219911A40(v10, v42, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
      LOBYTE(v51) = 2;
      LOBYTE(v49) = 0;
      sub_219911C68();
      v37 = v45;
      sub_219BF7834();
      if (!v37)
      {
        LOBYTE(v51) = 13;
        sub_219BF77F4();
        *&v51 = *(v25 + 16);
        LOBYTE(v49) = 10;
        sub_2189684CC();
        sub_219BF7834();
        *&v51 = *(v25 + 24);
        LOBYTE(v49) = 1;
        sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
        sub_219911CBC();
        sub_219BF7834();
        v38 = *(v25 + 40);
        *&v51 = *(v25 + 32);
        BYTE8(v51) = v38;
        LOBYTE(v49) = 2;
        sub_2186DEEA0(0, &qword_280E8EA30);
        sub_219911D94(&qword_27CC20DB0, &qword_280E8EA30);
        sub_219BF7834();
        LOBYTE(v51) = 3;
        sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        sub_21897A904();
        sub_219BF7834();
      }

      (*(v46 + 8))(v23, v24);
      v40 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig;
    }

    return sub_219911AA8(v25, v40);
  }

  else
  {
    v32 = v21;
    sub_219911A40(v10, v21, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
    LOBYTE(v51) = 0;
    LOBYTE(v49) = 0;
    sub_219911C68();
    v33 = v47;
    v34 = v48;
    v35 = v45;
    sub_219BF7834();
    if (!v35)
    {
      LOBYTE(v51) = 13;
      sub_219BF77F4();
      *&v51 = *v32;
      LOBYTE(v49) = 1;
      sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
      sub_219911CBC();
      sub_219BF7834();
      v36 = *(v32 + 16);
      *&v51 = *(v32 + 8);
      BYTE8(v51) = v36;
      LOBYTE(v49) = 2;
      sub_2186DEEA0(0, &qword_280E8EA30);
      sub_219911D94(&qword_27CC20DB0, &qword_280E8EA30);
      sub_219BF7834();
      LOBYTE(v51) = 3;
      sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      sub_21897A904();
      sub_219BF7834();
    }

    (*(v46 + 8))(v33, v34);
    return sub_219911AA8(v32, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
  }
}

uint64_t sub_2199112BC()
{
  v1 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LegacyAudioFeedGroupConfig();
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2199119DC(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_219911A40(v12, v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
        v14 = *v6;

        sub_219911AA8(v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      }

      else
      {
        sub_219911A40(v12, v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
        v14 = *v3;

        sub_219911AA8(v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
      }
    }

    else
    {
      sub_219911A40(v12, v9, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
      v14 = *&v9[*(v7 + 28)];

      sub_219911AA8(v9, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
    }
  }

  else
  {
    v14 = *v12;
    if (EnumCaseMultiPayload == 3)
    {
    }
  }

  return v14;
}

void *sub_219911580()
{
  v1 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyAudioFeedGroupConfig();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199119DC(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_219911A40(v9, v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
        v11 = *(v6 + 2);

        sub_219911AA8(v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      }

      else
      {
        sub_219911A40(v9, v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
        v11 = *(v3 + 2);

        sub_219911AA8(v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
      }
    }

    else
    {
      sub_219911AA8(v9, type metadata accessor for LegacyAudioFeedGroupConfig);
      return &unk_282A2B2B8;
    }
  }

  else
  {
    v11 = *(v9 + 2);
    if (EnumCaseMultiPayload == 3)
    {
    }
  }

  return v11;
}

uint64_t sub_2199117BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE3184();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_219911838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219911DF8(&qword_280EBB508, type metadata accessor for LegacyAudioFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_2199119DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219911A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219911AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219911B08()
{
  result = qword_280EBB530;
  if (!qword_280EBB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB530);
  }

  return result;
}

unint64_t sub_219911B5C()
{
  result = qword_280EBB510;
  if (!qword_280EBB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB510);
  }

  return result;
}

unint64_t sub_219911BB0()
{
  result = qword_27CC20D98;
  if (!qword_27CC20D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D98);
  }

  return result;
}

void sub_219911C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219911B08();
    v7 = a3(a1, &type metadata for LegacyAudioFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219911C68()
{
  result = qword_27CC20DA8;
  if (!qword_27CC20DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DA8);
  }

  return result;
}

unint64_t sub_219911CBC()
{
  result = qword_27CC114B0;
  if (!qword_27CC114B0)
  {
    sub_2186DD55C(255, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
    sub_219911DF8(&qword_27CC114B8, type metadata accessor for LegacyAudioConfigArticle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC114B0);
  }

  return result;
}

uint64_t sub_219911D94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186DEEA0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219911DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219911E40()
{
  result = qword_27CC20DB8;
  if (!qword_27CC20DB8)
  {
    sub_2186DEEA0(255, &qword_280EB4118);
    sub_218D63B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DB8);
  }

  return result;
}

unint64_t sub_219911EFC()
{
  result = qword_27CC20DC0;
  if (!qword_27CC20DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DC0);
  }

  return result;
}

unint64_t sub_219911F54()
{
  result = qword_27CC20DC8;
  if (!qword_27CC20DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DC8);
  }

  return result;
}

unint64_t sub_219911FAC()
{
  result = qword_27CC20DD0;
  if (!qword_27CC20DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DD0);
  }

  return result;
}

unint64_t sub_219912004()
{
  result = qword_280EBB520;
  if (!qword_280EBB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB520);
  }

  return result;
}

unint64_t sub_21991205C()
{
  result = qword_280EBB528;
  if (!qword_280EBB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB528);
  }

  return result;
}

uint64_t sub_2199120B0()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2199120FC()
{
  v0 = sub_219BF7614();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_219912148()
{
  v0 = sub_219BF7614();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_219912194()
{
  result = qword_280EBB518;
  if (!qword_280EBB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB518);
  }

  return result;
}

unint64_t sub_2199121E8()
{
  result = qword_27CC20DD8;
  if (!qword_27CC20DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DD8);
  }

  return result;
}

uint64_t sub_219912250(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v62 = a3;
  v6 = sub_219BE6DF4();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219912D94(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v9;
  sub_218950928();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v49 - v29;
  sub_219912D94(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v32 = v31;
  v33 = MEMORY[0x28223BE20](v31);
  v52 = &v49 - v34;
  v53 = v35;
  (*(v35 + 16))(v33);
  v54 = v32;
  v59 = a1;
  sub_219BEB354();
  sub_219912A48(v51, v27);
  v36 = *(v12 + 48);
  if (v36(v27, 1, v11) != 1)
  {
    v51 = a2;
    v42 = *(v12 + 32);
    v42(v18, v27, v11);
    sub_218F83E20(v30, v24);
    v37 = v30;
    if (v36(v24, 1, v11) == 1)
    {
      sub_218B062D0(v24);
      sub_2186D572C(&qword_280EE5760, sub_218950928);
      sub_219BF5DF4();
      sub_219BF5E84();
      v40 = v54;
      v41 = v52;
      if (v64 != v63)
      {
        sub_218B0632C();
        sub_219BEB324();
      }

      (*(v12 + 8))(v18, v11);
    }

    else
    {
      v46 = v49;
      v42(v49, v24, v11);
      v40 = v54;
      v41 = v52;
      sub_219BEB234();
      v47 = *(v12 + 8);
      v47(v46, v11);
      v47(v18, v11);
    }

    a2 = v51;
    v38 = v60;
    v39 = v58;
    goto LABEL_11;
  }

  sub_218B062D0(v27);
  sub_218F83E20(v30, v21);
  v37 = v30;
  if (v36(v21, 1, v11) == 1)
  {
    sub_218B062D0(v21);
    v38 = v60;
    v39 = v58;
    v40 = v54;
    v41 = v52;
LABEL_11:
    v44 = v61;
    (*(v38 + 104))(v39, *MEMORY[0x277D6D868], v61);
    type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
    sub_218A7BAF8();
    v45 = v55;
    sub_219BE85A4();
    goto LABEL_12;
  }

  v43 = v50;
  (*(v12 + 32))(v50, v21, v11);
  sub_219BE6944();
  v40 = v54;
  v41 = v52;
  sub_219BEB214();

  (*(v12 + 8))(v43, v11);
  v38 = v60;
  v44 = v61;
  v39 = v58;
  (*(v60 + 104))(v58, *MEMORY[0x277D6D868], v61);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_218A7BAF8();
  v45 = v55;
  sub_219BE85E4();
LABEL_12:
  (*(v38 + 8))(v39, v44);
  a2(v45);
  (*(v56 + 8))(v45, v57);
  sub_218B062D0(v37);
  return (*(v53 + 8))(v41, v40);
}

uint64_t sub_219912A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218B061E4();
  MEMORY[0x28223BE20](v4 - 8);
  if (a1)
  {
    sub_218725F94();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C146A0;
    *(inited + 32) = a1;

    v6 = sub_219A912FC(inited);

    sub_218950B84();
    v8 = v7;
    v9 = sub_2186D572C(&unk_280EE5C80, sub_218950B84);
    v10 = sub_2186D572C(&unk_280EE5C90, sub_218950B84);
    MEMORY[0x21CEB9170](v6, v8, v9, v10);
    type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
    sub_219BE6924();
    sub_218950928();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {
    sub_218950928();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_219912D00(uint64_t a1)
{
  v2 = sub_218B126D8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219912D40()
{
  result = qword_280EB8C08;
  if (!qword_280EB8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8C08);
  }

  return result;
}

void sub_219912D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for RecipeBoxRefreshResult()
{
  result = qword_27CC20DE0;
  if (!qword_27CC20DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219912ED8()
{
  sub_218799754(319);
  if (v0 <= 0x3F)
  {
    sub_2186D0BA8();
    if (v1 <= 0x3F)
    {
      sub_219BF0BD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_219912F78()
{
  result = qword_27CC20DF0;
  if (!qword_27CC20DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DF0);
  }

  return result;
}

unint64_t sub_219912FCC(void *a1, uint64_t a2)
{
  sub_219913E30(0, &qword_280E8C4B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219913D88();
  sub_219BF7B44();
  if (!a2)
  {
    *&v12[11] = 0;
    sub_219913E94();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v12[14] = 1;
    v12[13] = 0;
    sub_219913E94();
LABEL_5:
    sub_219BF7834();
    return (*(v7 + 8))(v9, v6);
  }

  v11 = *(a2 + 16);
  v15 = 2;
  v14 = 0;
  sub_219913A60(v11);
  sub_219913E94();
  sub_219BF7834();
  if (!v2)
  {
    v13 = v11;
    v12[15] = 1;
    sub_218D5578C();
    sub_219BF7834();
  }

  (*(v7 + 8))(v9, v6);
  return sub_219913A70(v11);
}

BOOL sub_219913200(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  sub_219913A60(v4);
  LOBYTE(v3) = sub_219913200(v3, v4);
  sub_219913A70(v4);
  return v3 & 1;
}

uint64_t sub_21991327C@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2199132DC@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2199133F0(uint64_t a1)
{
  v2 = sub_219913D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21991342C(uint64_t a1)
{
  v2 = sub_219913D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219913468(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x8000000219CD7330;
  if (v2 == 1)
  {
    v5 = 0x8000000219CD7330;
  }

  else
  {
    v3 = 0x42646570756F7267;
    v5 = 0xEF65756761654C79;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F6C6F6E6F726863;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xED00006C61636967;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x42646570756F7267;
    v4 = 0xEF65756761654C79;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F6C6F6E6F726863;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED00006C61636967;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_219913584()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219913644()
{
  sub_219BF5524();
}

uint64_t sub_2199136F0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2199137AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199140BC();
  *a1 = result;
  return result;
}

void sub_2199137DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006C61636967;
  v4 = 0x8000000219CD7330;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x42646570756F7267;
    v4 = 0xEF65756761654C79;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6C6F6E6F726863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_219913908@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219913B40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21991395C(uint64_t a1)
{
  if (!a1)
  {
    return 0x6F6C6F6E6F726863;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  v2 = *(a1 + 16);
  sub_219913A60(v2);
  sub_219BF7314();

  v3 = sub_21991395C(v2);
  MEMORY[0x21CECC330](v3);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_219913A70(v2);
  return 0xD000000000000010;
}

unint64_t sub_219913A60(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_219913A70(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_219913A80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219913AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_219913B40(void *a1)
{
  sub_219913E30(0, &qword_280E8CCE0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219913D88();
  sub_219BF7B34();
  if (!v1)
  {
    v13 = 0;
    sub_219913DDC();
    sub_219BF7734();
    if (v14)
    {
      if (v14 == 1)
      {
        (*(v5 + 8))(v7, v4);
        v8 = 1;
      }

      else
      {
        v11[15] = 1;
        sub_218D55738();
        sub_219BF7734();
        (*(v5 + 8))(v7, v4);
        v10 = v12;
        v8 = swift_allocObject();
        *(v8 + 16) = v10;
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v8 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219913D88()
{
  result = qword_280EBA0C0[0];
  if (!qword_280EBA0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBA0C0);
  }

  return result;
}

unint64_t sub_219913DDC()
{
  result = qword_280EBA098;
  if (!qword_280EBA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA098);
  }

  return result;
}

void sub_219913E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219913D88();
    v7 = a3(a1, &type metadata for SportsScoreSortingOrdering.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219913E94()
{
  result = qword_280EBA0A8;
  if (!qword_280EBA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0A8);
  }

  return result;
}

unint64_t sub_219913F0C()
{
  result = qword_27CC20DF8;
  if (!qword_27CC20DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DF8);
  }

  return result;
}

unint64_t sub_219913F64()
{
  result = qword_27CC20E00;
  if (!qword_27CC20E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E00);
  }

  return result;
}

unint64_t sub_219913FBC()
{
  result = qword_280EBA0B0;
  if (!qword_280EBA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0B0);
  }

  return result;
}

unint64_t sub_219914014()
{
  result = qword_280EBA0B8;
  if (!qword_280EBA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0B8);
  }

  return result;
}

unint64_t sub_219914068()
{
  result = qword_280EBA0A0;
  if (!qword_280EBA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0A0);
  }

  return result;
}

uint64_t sub_2199140BC()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_219914108()
{
  result = qword_27CC20E08;
  if (!qword_27CC20E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E08);
  }

  return result;
}

void sub_2199141A8()
{
  v1 = type metadata accessor for FeedAvailability();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  v5 = objc_allocWithZone(MEMORY[0x277D31348]);
  v6 = v4;
  v7 = sub_219BF53D4();
  v8 = sub_219BF53D4();
  v9 = [v5 initForTestingWithTagType:1 identifier:v7 name:v8];

  if (v9)
  {
    sub_218BFB73C();
    v11 = *(v10 + 48);
    v12 = [objc_allocWithZone(MEMORY[0x277D31300]) initWithContext:v6 tag:v9 feedConfiguration:0];

    *v3 = v12;
    v13 = sub_219BEC004();
    (*(*(v13 - 8) + 56))(&v3[v11], 1, 1, v13);
    swift_storeEnumTagMultiPayload();
    sub_21881AE10(0, &qword_27CC0F230, type metadata accessor for FeedAvailability, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  else
  {
    __break(1u);
  }
}

double static MainMetrics.minimumWindowSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetHeight(v10);
  return 860.0;
}

void _s7NewsUI211MainMetricsV013defaultWindowF4SizeSo6CGSizeVvgZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v54.origin.x = v3;
  v54.origin.y = v5;
  v54.size.width = v7;
  v54.size.height = v9;
  Width = CGRectGetWidth(v54);
  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v55.origin.x = v13;
  v55.origin.y = v15;
  v55.size.width = v17;
  v55.size.height = v19;
  Height = CGRectGetHeight(v55);
  if (Width > 1280.0 || Height > 800.0)
  {
    if (Width > 1366.0 || Height > 768.0)
    {
      if ((Width > 1440.0 || Height > 900.0) && (Width > 1680.0 || Height > 1050.0) && (Width > 1920.0 || Height > 1080.0) && (Width > 2560.0 || Height > 1440.0))
      {
        v27 = [v0 mainScreen];
        [v27 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v56.origin.x = v29;
        v56.origin.y = v31;
        v56.size.width = v33;
        v56.size.height = v35;
        CGRectGetHeight(v56);
      }
    }

    else
    {
      v45 = [v0 mainScreen];
      [v45 bounds];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v58.origin.x = v47;
      v58.origin.y = v49;
      v58.size.width = v51;
      v58.size.height = v53;
      CGRectGetHeight(v58);
    }
  }

  else
  {
    v36 = [v0 mainScreen];
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v57.origin.x = v38;
    v57.origin.y = v40;
    v57.size.width = v42;
    v57.size.height = v44;
    CGRectGetHeight(v57);
  }
}

uint64_t sub_2199147FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 < 0)
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D3DDF0);
    MEMORY[0x21CECC330](v1, v2);
    MEMORY[0x21CECC330](0xD000000000000036, 0x8000000219D3DE10);
    return 0;
  }

  else
  {
    v5 = v0[2];
    v4 = v0[3];
    sub_218D5E640(0, &qword_280E8B750, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09EC0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D3DDF0);
    MEMORY[0x21CECC330](v1, v2);
    MEMORY[0x21CECC330](0xD00000000000003CLL, 0x8000000219D3DE50);
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    *(v6 + 48) = sub_2199149E8(v5, v4, v3 & 1);
    *(v6 + 56) = v7;
    sub_218D5E640(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    sub_2189DD328();
    v8 = sub_219BF5324();
  }

  return v8;
}

uint64_t sub_2199149E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_219BF7314();
    v3 = "laylist to history, because ";
    v4 = 0xD000000000000013;
  }

  else
  {
    sub_219BF7314();
    v3 = "rrent threshold (";
    v4 = 0xD000000000000015;
  }

  MEMORY[0x21CECC330](v4, v3 | 0x8000000000000000);
  v5 = sub_219BF7894();
  MEMORY[0x21CECC330](v5);

  MEMORY[0x21CECC330](0xD000000000000021, 0x8000000219D3DEB0);
  v6 = sub_219BF7894();
  MEMORY[0x21CECC330](v6);

  MEMORY[0x21CECC330](11817, 0xE200000000000000);
  return 0;
}

uint64_t sub_219914B44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219914B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_219914C48()
{
  if (!qword_280E92480)
  {
    sub_2197B8968();
    sub_2197B89BC();
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92480);
    }
  }
}

uint64_t type metadata accessor for PaywallTagFeedGroupEmitter()
{
  result = qword_280EBADB0;
  if (!qword_280EBADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219914D10()
{
  sub_219914C48();
  if (v0 <= 0x3F)
  {
    sub_2186C709C(319, &qword_280EE6430);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PaywallTagFeedGroupKnobs();
      if (v2 <= 0x3F)
      {
        sub_218B7A520();
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, &unk_280EE6480);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_219914E0C()
{
  v1 = type metadata accessor for PaywallTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaywallTagFeedGroupEmitter();
  sub_219916E8C(v0 + *(v4 + 24), v3, type metadata accessor for PaywallTagFeedGroupKnobs);
  v15 = 6;
  sub_219916CBC(0, &qword_280E91A80, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D321A0]);
  v6 = v5;
  v7 = sub_219BEE964();
  (*(*(v6 - 8) + 8))(v3, v6);
  sub_219916DB8(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_219916CBC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v9);
  v14 = v7;
  sub_2191EDA0C(v12);
  return v14;
}

uint64_t sub_2199150D0(uint64_t a1)
{
  v3 = type metadata accessor for PaywallTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  v18 = a1;
  v16 = v1;
  sub_219916ACC();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v7 = sub_219BF66A4();
  sub_219916E8C(v1, v6, type metadata accessor for PaywallTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_219916B34(v6, v9 + v8);
  *(v9 + ((v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_219916B98;
  *(v10 + 24) = v9;
  sub_218A59C84();

  sub_219BE2F64();

  sub_219916E8C(v16, v6, type metadata accessor for PaywallTagFeedGroupEmitter);
  v11 = swift_allocObject();
  sub_219916B34(v6, v11 + v8);
  v12 = sub_219BE2E54();
  v13 = sub_219BE3064();

  return v13;
}

uint64_t sub_21991533C()
{
  sub_219BE4864();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE3064();

  sub_219BEF0C4();
  v1 = sub_219BE31C4();

  return v1;
}

char *sub_219915410(uint64_t a1, void **a2)
{
  sub_218A59C84();
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219915784(*a2, v34);
  if (!v2)
  {
    v31[1] = a1;
    v31[2] = v6;
    v35 = 0;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    v13 = sub_21988DFA0();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_219BF6214();
    sub_219BE5314();

    sub_219914C48();
    v16 = sub_219BEDCA4();
    v18 = v17;
    v19 = sub_219BE47D4();
    v21 = v20;
    v32 = v16;
    v33 = v18;

    MEMORY[0x21CECC330](v19, v21);

    v22 = v32;
    v23 = v33;
    v24 = sub_219BE47D4();
    v26 = v25;
    sub_218718690(v34, (v11 + 32));
    v27 = *(v9 + 28);
    v28 = *MEMORY[0x277D32628];
    v29 = sub_219BEF554();
    (*(*(v29 - 8) + 104))(&v11[v27], v28, v29);
    *v11 = v22;
    *(v11 + 1) = v23;
    *(v11 + 2) = v24;
    *(v11 + 3) = v26;
    *&v11[*(v9 + 32)] = 0x3FF0000000000000;
    sub_219916E8C(v11, v8, type metadata accessor for PaywallTagFeedGroup);
    type metadata accessor for TagFeedGroup();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_219916DB8(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v8 = sub_219BE3014();
    sub_219916F3C(v11, type metadata accessor for PaywallTagFeedGroup);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return v8;
}

uint64_t sub_219915784@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v45[1] = a2;
  v3 = sub_219BE4884();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = sub_219BE4914();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = v48;
  result = sub_219915F4C(a1, v47, v45 - v14);
  if (!v16)
  {
    v47 = v8;
    v18 = v46;
    v48 = 0;
    (*(v10 + 16))(v12, v15, v9);
    v19 = (*(v10 + 88))(v12, v9);
    v20 = v9;
    if (v19 == *MEMORY[0x277D353A0])
    {
      v21 = v10;
      (*(v10 + 96))(v12, v9);
      v22 = v9;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09BA0;
      v24 = sub_21988DFA0();
      v26 = v25;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_2186FC3BC();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      sub_219BE5314();

      sub_219916E1C();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();
      (*(v21 + 8))(v15, v22);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else if (v19 == *MEMORY[0x277D353B0])
    {
      v45[0] = v15;
      (*(v10 + 96))(v12, v9);
      if (*(*v12 + 16))
      {
        (*(v18 + 16))(v5, *v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v3);

        v28 = v47;
        (*(v18 + 32))(v47, v5, v3);
        sub_219BE4874();
        (*(v18 + 8))(v28, v3);
        return (*(v10 + 8))(v45[0], v20);
      }

      else
      {

        sub_219916E1C();
        swift_allocError();
        *v44 = 4;
        swift_willThrow();
        return (*(v10 + 8))(v45[0], v9);
      }
    }

    else if (v19 == *MEMORY[0x277D353A8])
    {
      v29 = v10;
      v30 = v15;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09BA0;
      v32 = sub_21988DFA0();
      v34 = v33;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_2186FC3BC();
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      sub_219BF6214();
      sub_219BE5314();

      sub_219916E1C();
      swift_allocError();
      *v35 = 4;
      swift_willThrow();
      return (*(v29 + 8))(v30, v20);
    }

    else
    {
      v48 = v12;
      v36 = v10;
      v37 = v9;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_219C09BA0;
      v39 = sub_21988DFA0();
      v41 = v40;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = sub_2186FC3BC();
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      sub_219BE5314();

      sub_219916E1C();
      swift_allocError();
      *v42 = 3;
      swift_willThrow();
      v43 = *(v36 + 8);
      v43(v15, v37);
      return (v43)(v48, v37);
    }
  }

  return result;
}

uint64_t sub_219915E34()
{
  type metadata accessor for PaywallTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_219915EF8()
{
  type metadata accessor for PaywallTagFeedGroupEmitter();
  swift_getObjectType();
  return sub_219BE3F74();
}

uint64_t sub_219915F4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_219BE4034();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3E04();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 backingChannel];
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for PaywallTagFeedGroupEmitter();
    __swift_project_boxed_opaque_existential_1((a2 + *(v15 + 20)), *(a2 + *(v15 + 20) + 24));
    *v12 = v14;
    (*(v9 + 104))(v12, *MEMORY[0x277D34E40], v8);
    v16 = v46;
    (*(v46 + 104))(v7, *MEMORY[0x277D34EF0], v5);
    sub_219BE4064();
    v17 = v16;
    v18 = v9;
    v19 = v12;
LABEL_3:
    (*(v17 + 8))(v7, v5);
    return (*(v18 + 8))(v19, v8);
  }

  v43 = v12;
  v44 = v7;
  v21 = v46;
  v42 = v5;
  sub_219BEF0B4();
  v22 = *(v49 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v23 = [v22 useFood];
  swift_unknownObjectRelease();
  if (!v23 || (v24 = [objc_msgSend(a1 backingTag)], swift_unknownObjectRelease(), (v24 & 1) == 0))
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v27 = sub_21988DFA0();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_219BF6214();
    sub_219BE5314();

    v30 = 1;
    goto LABEL_11;
  }

  v40 = type metadata accessor for PaywallTagFeedGroupEmitter();
  v25 = [*(a2 + *(v40 + 28)) cachedSubscription];
  if (objc_getAssociatedObject(v25, v25 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {
    sub_219916F3C(&v49, sub_21880702C);
    goto LABEL_18;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v32 = 0;
    v33 = 0;
LABEL_19:
    v41 = v33;
    if (objc_getAssociatedObject(v25, ~v33))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v49 = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v34 = v32;
        v35 = v51;
        v36 = [v35 integerValue];

        if ((v36 ^ v41))
        {
          goto LABEL_25;
        }

LABEL_28:
        __swift_project_boxed_opaque_existential_1((a2 + *(v40 + 20)), *(a2 + *(v40 + 20) + 24));
        v37 = [a1 backingTag];
        v19 = v43;
        *v43 = v37;
        v18 = v9;
        (*(v9 + 104))(v19, *MEMORY[0x277D34E70], v8);
        v38 = v21;
        v39 = *(v21 + 104);
        v7 = v44;
        v5 = v42;
        v39(v44, *MEMORY[0x277D34EF0], v42);
        v17 = v38;
        sub_219BE4064();
        goto LABEL_3;
      }
    }

    else
    {
      sub_219916F3C(&v49, sub_21880702C);
    }

    if (v41)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v32 = v51;
  v33 = [v51 integerValue];
  if (v33 != -1)
  {
    goto LABEL_19;
  }

LABEL_25:
  v30 = 5;
LABEL_11:
  sub_219916E1C();
  swift_allocError();
  *v31 = v30;
  return swift_willThrow();
}

uint64_t sub_2199165AC()
{
  sub_219916DB8(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21991662C@<X0>(uint64_t *a1@<X8>)
{
  sub_219914C48();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000004;
  return result;
}

uint64_t sub_2199166AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for PaywallTagFeedGroupKnobs();
  a2[4] = sub_219916EF4(qword_280EC0CA0, type metadata accessor for PaywallTagFeedGroupKnobs);
  a2[5] = sub_219916EF4(&qword_27CC20E50, type metadata accessor for PaywallTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219916E8C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PaywallTagFeedGroupKnobs);
}

uint64_t sub_219916774()
{
  sub_219914C48();

  return sub_219BEDCA4();
}

uint64_t sub_2199167A0@<X0>(uint64_t *a1@<X8>)
{
  sub_219916DB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219914C48();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219916F3C(inited + 32, sub_2188317B0);
  sub_219916DB8(0, &qword_27CC20E58, type metadata accessor for PaywallTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219916F9C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219916924()
{
  sub_219916EF4(&unk_27CC20E20, type metadata accessor for PaywallTagFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_219916ACC()
{
  if (!qword_27CC20E38)
  {
    sub_219BE4864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20E38);
    }
  }
}

uint64_t sub_219916B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219916C40(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219916ACC();
  v5 = (a1 + *(v4 + 48));
  v6 = v5[5];
  v11[4] = v5[4];
  v11[5] = v6;
  v7 = v5[7];
  v11[6] = v5[6];
  v11[7] = v7;
  v8 = v5[1];
  v11[0] = *v5;
  v11[1] = v8;
  v9 = v5[3];
  v11[2] = v5[2];
  v11[3] = v9;
  return v3(a1, v11);
}

void sub_219916CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_219916DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219916E1C()
{
  result = qword_27CC20E40;
  if (!qword_27CC20E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E40);
  }

  return result;
}

uint64_t sub_219916E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219916EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219916F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219916F9C()
{
  result = qword_27CC20E60;
  if (!qword_27CC20E60)
  {
    sub_219916DB8(255, &qword_27CC20E58, type metadata accessor for PaywallTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E60);
  }

  return result;
}

unint64_t sub_219917038()
{
  result = qword_27CC20E68;
  if (!qword_27CC20E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E68);
  }

  return result;
}

uint64_t sub_21991708C(uint64_t a1, uint64_t a2)
{
  sub_2186E5D48(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v2 + 32) appConfiguration];
  if (qword_280EE96E8 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_21897CBB0();
LABEL_10:
    type metadata accessor for AudioPlaylistFeedConfigFetchResult();

    sub_219BE3204();

    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = v13;

    swift_unknownObjectRetain();
    v19 = sub_219BE2E54();
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    v16 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_27CC08170 != -1)
  {
    swift_once();
  }

  sub_2199177D0(&qword_27CC20E78, v14, type metadata accessor for AudioPlaylistFeedServiceConfigFetcher);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v17 = off_282A2E978;
    type metadata accessor for AudioPlaylistFeedConfigManager();
    v17(v12);
    (*(v9 + 8))(v12, v8);
    goto LABEL_10;
  }

  sub_218838478(v7);
  sub_219917818();
  swift_allocError();
  *v15 = 0;
  sub_2186E5D48(0, &qword_27CC20E88, type metadata accessor for AudioPlaylistFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v16;
}

double sub_219917508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioPlaylistFeedContentConfig();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21964C058(a1, v16);
  v17 = *(a1 + *(type metadata accessor for AudioPlaylistFeedConfigFetchResult() + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for AudioPlaylistFeedServiceConfig();
  sub_21964C058(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[9]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_21964C0BC(v16);
  result = v20;
  *&a5[v18[8]] = v20;
  return result;
}

uint64_t sub_2199177D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_219917818()
{
  result = qword_27CC20E80;
  if (!qword_27CC20E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E80);
  }

  return result;
}

unint64_t sub_219917880()
{
  result = qword_27CC20E90;
  if (!qword_27CC20E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E90);
  }

  return result;
}

uint64_t sub_2199178D4(uint64_t a1, void *a2, void *a3)
{
  v53 = a1;
  sub_219918430(0, &unk_280EE8530, MEMORY[0x277D2E1C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_219BE1124();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFD74();
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDEF04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD34();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFD64();
  v52 = *(v19 - 8);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 startTime];
  v51 = v18;
  sub_219BDBC74();
  if (([a2 dnsDuration] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = [a2 connectDuration];
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v50 = v23;
  v24 = [a2 requestDuration];
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v24;
  v25 = [a2 responseDuration];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v48 = v25;
  v26 = [a2 responseSize];
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v26;
  v27 = [a2 pbNetworkEventCacheState];
  if (v27 >= 3)
  {
LABEL_24:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  (*(v14 + 104))(v56, **(&unk_278243558 + v27), v13);
  if (([a2 httpStatusCode] & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = [a2 errorCode];
  sub_21991810C(v54);
  v44 = [a3 wifiReachable];
  v29 = [a3 pbCellularRadioAccessTechnology];
  if (v29 >= 0xE)
  {
    goto LABEL_24;
  }

  (*(v9 + 104))(v55, **(&unk_278243570 + v29), v8);
  v30 = [a2 respondingPOP];
  v45 = v28;
  v46 = v19;
  if (v30)
  {
    v31 = v30;
    v43 = sub_219BF5414();
  }

  else
  {
    v43 = 0;
  }

  [a2 isProxyConnection];
  v32 = [a2 smarterFetchSources];
  if (!v32 || (*&v57[0] = 0, v33 = v32, sub_219BF5914(), v33, !*&v57[0]))
  {
  }

  v34 = [a2 smarterFetchStrategy];
  if (v34)
  {
    v35 = v34;
    sub_219BF5414();
  }

  sub_219BDFE84();
  v36 = sub_219BDFE94();
  (*(*(v36 - 8) + 56))(v7, 0, 1, v36);
  sub_219BDFD54();
  sub_219918430(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v37 = sub_219BDCD44();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x277CEAD18], v37);
  sub_219918494(&qword_280EE8558, MEMORY[0x277D2E0B8]);
  v41 = v46;
  sub_219BDCCC4();

  (*(v52 + 8))(v22, v41);
  sub_219BDF784();
  sub_219918494(&qword_280EE8688, MEMORY[0x277D2DD48]);
  memset(v57, 0, sizeof(v57));
  sub_219BDCCE4();
  return sub_218806FD0(v57);
}

uint64_t sub_21991810C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 pbNetworkEventType];
  if (v3 >= 0x14)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    v4 = **(&unk_2782435E0 + v3);
    v5 = sub_219BDFD74();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  return result;
}

uint64_t sub_2199182BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_219BDBD24();
  sub_219BDCD94();

  return (*(v5 + 8))(v7, v4);
}

void sub_219918430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219918494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219918500()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2199185C4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

unint64_t sub_219918690()
{
  result = qword_27CC20F00;
  if (!qword_27CC20F00)
  {
    sub_2199186E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20F00);
  }

  return result;
}

void sub_2199186E8()
{
  if (!qword_27CC20F08)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20F08);
    }
  }
}

uint64_t sub_219918738(char a1)
{
  result = 0x64657461727563;
  switch(a1)
  {
    case 1:
      result = 0x657061707377656ELL;
      break;
    case 2:
      result = 0x77654E6C61636F6CLL;
      break;
    case 3:
      result = 0x676E69646E657274;
      break;
    case 4:
      result = 0x756F59726F66;
      break;
    case 5:
      v3 = 0x74736574616CLL;
      goto LABEL_21;
    case 6:
      v3 = 0x64657373696DLL;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 7:
      result = 0x59726F4665726F6DLL;
      break;
    case 8:
      result = 0x6369706F74;
      break;
    case 9:
      result = 0x656E697A6167616DLL;
      break;
    case 10:
      result = 0x6F6C6C6F4677656ELL;
      break;
    case 11:
      result = 0x7069726373627573;
      break;
    case 12:
      result = 25697;
      break;
    case 13:
      result = 0x6867696C746F7073;
      break;
    case 14:
      result = 0x6974736567677573;
      break;
    case 15:
      result = 0x746E6F436E656573;
      break;
    case 16:
      result = 0x6957646572616873;
      break;
    case 17:
      result = 0x656D656761676E65;
      break;
    case 18:
      result = 0x7374726F7053796DLL;
      break;
    case 19:
      result = 0x536F546F72746E69;
      break;
    case 20:
      result = 0x74756374726F6873;
      break;
    case 21:
      result = 0x6C656E6E616863;
      break;
    case 22:
      result = 0x6F74536465766173;
      break;
    case 23:
      result = 0x506C656E6E616863;
      break;
    case 24:
      result = 1685024614;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219918A04()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219918738(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219918A68()
{
  sub_219918738(*v0);
  sub_219BF5524();
}

uint64_t sub_219918ABC()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219918738(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219918B1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219918738(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219918B48(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_219918738(*a1);
  v5 = v4;
  if (v3 == sub_219918738(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

unint64_t sub_219918C34()
{
  result = qword_280ED2250;
  if (!qword_280ED2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2250);
  }

  return result;
}

uint64_t sub_219918C88(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61890);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E50, type metadata accessor for SearchFeedPoolService, sub_2186D75DC);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219918E18(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08238 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD86B8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91F20, type metadata accessor for SearchMoreFeedPoolService, sub_2186D7A20);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219918FA8(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08220 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD8688);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91F00, type metadata accessor for AudioHistoryFeedPoolService, sub_2186D7A54);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219919138(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08228 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD86A0);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91EE8, type metadata accessor for AudioPlaylistFeedPoolService, sub_2186D7AAC);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199192C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DD80);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for IssueBookmarkProvider();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A3D8F0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199193B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_2186D5C5C(qword_280EE0BF8, type metadata accessor for NewsActivityManager);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21991945C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E97540);
  result = sub_219BE1E34();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EA0C00);
    result = sub_219BE1E34();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for ContinueReadingEligibilityProcessor();
      v33[3] = v15;
      v33[4] = &off_282A470F0;
      v33[0] = v13;
      v16 = type metadata accessor for ContinueReadingPromptPresenter();
      v31 = v16;
      v32 = &off_282A4ABE8;
      v30[0] = v14;
      v17 = type metadata accessor for AppDiscardedStateRestorationActivityHandler();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x28223BE20](v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_282A470F0;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_282A4ABE8;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_282A5BC20;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_219919894@<X0>(void *a1@<X8>)
{
  v2 = sub_219BE7994();
  result = [objc_allocWithZone(v2) init];
  v4 = MEMORY[0x277D6DC00];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2199198E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DD80);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for CampaignReferralManager();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A565F8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199199CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ANFSceneActivityBridge();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219919A20()
{
  type metadata accessor for ANFSceneActivityBridge();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_219919A54(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2186D5C5C(qword_280EC9300, type metadata accessor for ANFSceneActivityBridge);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219919B50(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE6310);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219BE4284();
    if (swift_dynamicCastClass())
    {
      sub_2186D5C5C(&qword_280EE63B8, MEMORY[0x277D35018]);
      sub_219BE25F4();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219919C78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_218746BE0(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_219919CF0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81328(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_219BF7884();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 < *(v13 - 1))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 5);
          result = *(v13 + 6);
          v17 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v17;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v11;
          *v13 = v16;
          *(v13 + 1) = result;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
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
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_21991CF18(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t PuzzleStreakLocalNotificationScheduler.nextTargetNotificationDeliveryTime.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_219BDBF94();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v27 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  sub_219BDBD24();
  sub_219BDBE64();
  sub_219BDC784();
  sub_21991A210();
  sub_219BDC7D4();

  if (v34 == 1)
  {
    sub_219BDBD24();
    v21 = v29;
    sub_219BDBF34();
    sub_219BDBE64();
    (*(v30 + 8))(v21, v31);
    v22 = v28;
    sub_219BDBBF4();
    sub_219BDBBE4();
    v23 = *(v4 + 8);
    v23(v22, v3);
    v23(v11, v3);
    v23(v14, v3);
  }

  sub_219BDBBF4();
  if (sub_219BDBC24())
  {
    sub_219BF5CE4();
    sub_219BDBBF4();
    v24 = *(v4 + 8);
    v24(v6, v3);
    v24(v17, v3);
    return (v24)(v20, v3);
  }

  else
  {
    v26 = *(v4 + 8);
    v26(v17, v3);
    v26(v20, v3);
    return (*(v4 + 32))(v33, v6, v3);
  }
}

unint64_t sub_21991A210()
{
  result = qword_27CC20F40;
  if (!qword_27CC20F40)
  {
    type metadata accessor for PuzzleStreakLocalNotificationScheduler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20F40);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleStreakLocalNotificationScheduler()
{
  result = qword_27CC20F70;
  if (!qword_27CC20F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(Swift::OpaquePointer a1, Swift::String_optional puzzleHubTagID)
{
  object = puzzleHubTagID.value._object;
  countAndFlagsBits = puzzleHubTagID.value._countAndFlagsBits;
  sub_21875FE40(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v36 - v7;
  v8 = *(a1._rawValue + 2);
  if (v8)
  {
    v9 = 0;
    v10 = a1._rawValue + 40;
    v43 = MEMORY[0x277D84F90];
    v39 = object;
    v40 = v2;
    v41 = countAndFlagsBits;
    while (1)
    {
      v11 = &v10[16 * v9];
      v12 = v9;
      while (1)
      {
        if (v12 >= v8)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_24;
        }

        v14 = *(v11 - 1);
        v13 = *v11;
        v15 = [swift_unknownObjectRetain_n() latestPuzzleIDs];
        if (v15)
        {
          break;
        }

        swift_unknownObjectRelease_n();
LABEL_5:
        ++v12;
        v11 += 16;
        if (v9 == v8)
        {
          object = v39;
          v2 = v40;
          countAndFlagsBits = v41;
          goto LABEL_22;
        }
      }

      v16 = v15;
      v17 = sub_219BF5924();

      if (!v17[2])
      {
        break;
      }

      v18 = v17[4];
      v37 = v17[5];
      v38 = v18;

      v19 = [v14 nameCompact];
      if (v19)
      {
        v20 = v19;
        v36 = sub_219BF5414();
        v22 = v21;
        swift_unknownObjectRelease_n();
      }

      else
      {
        v23 = [v14 name];
        v36 = sub_219BF5414();
        v22 = v24;

        swift_unknownObjectRelease_n();
      }

      countAndFlagsBits = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2191FBAB8(0, *(v43 + 2) + 1, 1, v43);
      }

      v26 = *(v43 + 2);
      v25 = *(v43 + 3);
      if (v26 >= v25 >> 1)
      {
        v43 = sub_2191FBAB8((v25 > 1), v26 + 1, 1, v43);
      }

      v27 = v43;
      *(v43 + 2) = v26 + 1;
      v28 = &v27[40 * v26];
      v29 = v37;
      *(v28 + 4) = v38;
      *(v28 + 5) = v29;
      v30 = v36;
      *(v28 + 6) = v13;
      *(v28 + 7) = v30;
      *(v28 + 8) = v22;
      object = v39;
      v2 = v40;
      if (v9 == v8)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRelease_n();

    goto LABEL_5;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_22:
  v31 = sub_219BF5BF4();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v34 = v43;
  v33[4] = v2;
  v33[5] = v34;
  v33[6] = countAndFlagsBits;
  v33[7] = object;

  v35 = v2;
  sub_218AB3D80(0, 0, v32, &unk_219CB4E88, v33);
}

uint64_t sub_21991A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21991A640, 0, 0);
}

uint64_t sub_21991A640()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21991A6F4;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_21991A6F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21991A848, 0, 0);
  }
}

uint64_t sub_21991A848()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = [*(v0 + 56) puzzlesConfig];
  swift_unknownObjectRelease();
  sub_21991A8F8(v3, v2, v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21991A8F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 24);
  v10 = *(v4 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService), v9);
  LOBYTE(v15[0]) = 7;
  (*(v10 + 96))(v15, v9, v10);
  v11 = *(a1 + 16);
  if (v11 == 1)
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    *&v15[0] = *(a1 + 32);
    *(&v15[0] + 1) = v13;
    v15[1] = *(a1 + 48);
    v16 = v14;

    sub_21991AAC4(v15, a2, a3, a4);
  }

  else if (v11)
  {

    return sub_21991B338(a1, a2, a3, a4);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();

    return sub_219BE5314();
  }
}

uint64_t sub_21991AAC4(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v70 = a3;
  v69 = a2;
  v75 = sub_219BDBD34();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v68);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_219BDBD64();
  v11 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  sub_21875FE40(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_21875FE40(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  v76 = xmmword_219C09BA0;
  *(v20 + 16) = xmmword_219C09BA0;
  v80 = *(a1 + 24);
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_2186FC3BC();
  *(v20 + 32) = *(a1 + 24);
  swift_bridgeObjectRetain_n();
  sub_219BF6214();
  sub_219BE5314();

  v21 = [a4 streakNotificationBodyOneStreak];
  v64 = a4;
  v22 = v21;
  sub_219BF5414();

  sub_218BE55B8(0, &qword_280E8B750);
  inited = swift_initStackObject();
  v24 = v80;
  *(inited + 16) = v76;
  *(inited + 32) = v24;
  sub_219BDBDF4();
  v25 = sub_219BDBE34();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_218ACFA38(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  v66 = sub_219BF5444();
  v65 = v26;

  sub_21991CDD8(v19);
  sub_218BE55B8(0, &qword_27CC0F910);
  v27 = swift_allocObject();
  v29 = a1[1];
  v79 = *a1;
  v28 = v79;
  *(v27 + 16) = v76;
  *(v27 + 32) = v28;
  *(v27 + 48) = v29;
  *(v27 + 64) = *(a1 + 4);
  sub_218A18DB4(&v80, v78);
  sub_218A18DB4(&v79, v78);
  sub_219BDBD54();
  v30 = sub_219BDBD44();
  v32 = v31;
  v33 = *(v11 + 8);
  v34 = v67;
  v33(v16, v67);
  v35 = v70;

  sub_219BDBD54();
  *&v76 = sub_219BDBD44();
  v63 = v36;
  v33(v13, v34);
  v37 = v69;
  *v10 = v27;
  v10[1] = v37;
  v10[2] = v35;
  v10[3] = v30;
  v10[4] = v32;
  swift_storeEnumTagMultiPayload();

  v38 = [v64 streakNotificationTitle];
  v39 = sub_219BF5414();
  v67 = v40;

  v41 = v71;
  v42 = *(v71 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier + 8);
  v68 = *(v71 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier);
  v78[0] = v27;
  v78[1] = v37;
  v78[2] = v35;
  v78[3] = v30;
  v78[4] = v32;
  sub_21991CE64();

  v43 = sub_219BF52C4();

  if (v43)
  {
    v44 = sub_218E9B5CC(v43);
  }

  else
  {
    v44 = 0;
  }

  sub_218C1A090();
  v46 = v72;
  (*(*(v45 - 8) + 56))(v72, 1, 2, v45);
  v47 = type metadata accessor for UserNotification(0);
  v48 = objc_allocWithZone(v47);
  v49 = &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
  v50 = v63;
  *v49 = v76;
  *(v49 + 1) = v50;
  sub_2198CC4AC(v10, &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
  v51 = &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
  v52 = v67;
  *v51 = v39;
  v51[1] = v52;
  v53 = &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  v54 = &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
  v55 = v65;
  *v54 = v66;
  v54[1] = v55;
  v56 = &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
  *v56 = v68;
  v56[1] = v42;
  *&v48[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v44;
  sub_2198CC4AC(v46, &v48[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
  v77.receiver = v48;
  v77.super_class = v47;
  v57 = objc_msgSendSuper2(&v77, sel_init);
  sub_21991CEB8(v46, type metadata accessor for UserNotification.DeliveryStatus);
  sub_21991CEB8(v10, type metadata accessor for UserNotification.Kind);
  v58 = *(v41 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 24);
  v59 = *(v41 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService), v58);
  v60 = v73;
  PuzzleStreakLocalNotificationScheduler.nextTargetNotificationDeliveryTime.getter(v73);
  (*(v59 + 48))(v57, v60, v58, v59);

  return (*(v74 + 8))(v60, v75);
}

uint64_t sub_21991B338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v86 = a4;
  v85 = a2;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_219BDBD64();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v74 - v17;
  sub_21875FE40(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v74 - v20;
  if (*(a1 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v80 = v7;
    if (qword_280E8D870 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_219BF6214();
  sub_219BE5314();
  *&v89 = a1;

  sub_219919CF0(&v89);
  v22 = v89;
  v23 = *(v89 + 16);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v78 = v11;
      v79 = v6;
      v34 = [v86 streakNotificationBodyTwoStreaks];
      sub_219BF5414();
      v36 = v35;

      sub_218BE55B8(0, &qword_280E8B750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09EC0;
      v38 = v22[2];
      if (v38)
      {
        v39 = inited;
        v74[1] = v36;
        v40 = v22[8];
        v39[4] = v22[7];
        v39[5] = v40;
        if (v38 != 1)
        {
          v30 = a3;
          v77 = v15;
          v41 = v22[13];
          v39[6] = v22[12];
          v39[7] = v41;

          sub_219BDBDF4();
          v42 = sub_219BDBE34();
          (*(*(v42 - 8) + 56))(v21, 0, 1, v42);
          sub_218ACFA38(v39);
          swift_setDeallocating();
          swift_arrayDestroy();
          v76 = sub_219BF5444();
          v75 = v43;

          sub_21991CDD8(v21);
          v31 = v86;
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);

      __break(1u);
      return result;
    }

LABEL_10:
    v77 = v15;
    v78 = v11;
    v30 = a3;
    v79 = v6;
    v31 = v86;
    v32 = [v86 streakNotificationBodyMultipleStreaks];
    v76 = sub_219BF5414();
    v75 = v33;

LABEL_17:
    sub_219BDBD54();
    v44 = sub_219BDBD44();
    v46 = v45;
    v47 = *(v81 + 8);
    v48 = v82;
    v47(v18, v82);

    v49 = v77;
    sub_219BDBD54();
    v86 = sub_219BDBD44();
    v81 = v50;
    v47(v49, v48);
    v51 = v85;
    *v13 = v22;
    v13[1] = v51;
    v13[2] = v30;
    v13[3] = v44;
    v13[4] = v46;
    swift_storeEnumTagMultiPayload();

    v52 = [v31 streakNotificationTitle];
    v53 = sub_219BF5414();
    v55 = v54;

    v56 = *(v87 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier + 8);
    v82 = *(v87 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier);
    *&v89 = v22;
    *(&v89 + 1) = v51;
    v90 = v30;
    v91 = v44;
    v92 = v46;
    sub_21991CE64();

    v57 = sub_219BF52C4();

    if (v57)
    {
      v58 = sub_218E9B5CC(v57);
    }

    else
    {
      v58 = 0;
    }

    sub_218C1A090();
    v60 = v83;
    (*(*(v59 - 8) + 56))(v83, 1, 2, v59);
    v61 = type metadata accessor for UserNotification(0);
    v62 = objc_allocWithZone(v61);
    v63 = &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
    v64 = v81;
    *v63 = v86;
    *(v63 + 1) = v64;
    sub_2198CC4AC(v13, &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
    v65 = &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
    *v65 = v53;
    v65[1] = v55;
    v66 = &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
    *v66 = 0;
    *(v66 + 1) = 0xE000000000000000;
    v67 = &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
    v68 = v75;
    *v67 = v76;
    v67[1] = v68;
    v69 = &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
    *v69 = v82;
    v69[1] = v56;
    *&v62[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v58;
    sub_2198CC4AC(v60, &v62[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
    v88.receiver = v62;
    v88.super_class = v61;
    v70 = objc_msgSendSuper2(&v88, sel_init);
    sub_21991CEB8(v60, type metadata accessor for UserNotification.DeliveryStatus);
    sub_21991CEB8(v13, type metadata accessor for UserNotification.Kind);
    v71 = *(v87 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 24);
    v72 = *(v87 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 32);
    __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService), v71);
    v73 = v84;
    PuzzleStreakLocalNotificationScheduler.nextTargetNotificationDeliveryTime.getter(v84);
    (*(v72 + 48))(v70, v73, v71, v72);

    return (*(v80 + 8))(v73, v79);
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v25 = *(v89 + 32);
      v24 = *(v89 + 40);
      v26 = *(v89 + 48);
      v27 = *(v89 + 56);
      v28 = *(v89 + 64);

      *&v89 = v25;
      *(&v89 + 1) = v24;
      v90 = v26;
      v91 = v27;
      v92 = v28;
      sub_21991AAC4(&v89, v85, a3, v86);
    }

    goto LABEL_10;
  }

  sub_219BF61F4();

  return sub_219BE5314();
}

Swift::Void __swiftcall PuzzleStreakLocalNotificationScheduler.removeCompletedStreaksFromPendingNotification()()
{
  swift_getObjectType();
  sub_21875FE40(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

void sub_21991BDF4(uint64_t (**a1)(uint64_t a1), uint64_t a2, char *a3)
{
  v59 = a3;
  sub_21875FE40(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v49 - v7;
  v65 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v65);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v12 = *a1;
  v64 = v13;
  if (v12 >> 62)
  {
LABEL_38:
    v14 = sub_219BF7214();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  v15 = 0;
  while ((v12 & 0xC000000000000001) == 0)
  {
    if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v16 = *(v12 + 8 * v15 + 32);
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v4 = OBJC_IVAR____TtC7NewsUI216UserNotification_kind;
    v3 = v16;
    sub_2198CC4AC(v16 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v11, type metadata accessor for UserNotification.Kind);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_13;
    }

    sub_21991CEB8(v11, type metadata accessor for UserNotification.Kind);
    ++v15;
    if (v17 == v14)
    {
      return;
    }
  }

  v16 = MEMORY[0x21CECE0F0](v15, v12, v9);
  v17 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v12 = type metadata accessor for UserNotification.Kind;
  sub_21991CEB8(v11, type metadata accessor for UserNotification.Kind);
  v18 = v64;
  sub_2198CC4AC(v3 + v4, v64, type metadata accessor for UserNotification.Kind);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_21991CEB8(v18, type metadata accessor for UserNotification.Kind);
    return;
  }

  v11 = *v18;
  v55 = v18[1];
  v56 = v3;
  v19 = v18[2];
  v53 = v18[4];
  v54 = v19;
  v20 = *(v11 + 2);
  if (v20)
  {
    v21 = 0;
    v63 = &v59[OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleHistoryService];
    v22 = v11 + 64;
    v61 = v20;
    v51 = v20 - 1;
    v57 = MEMORY[0x277D84F90];
    v60 = xmmword_219C09BA0;
    v62 = v11;
    v52 = v11 + 64;
LABEL_16:
    v23 = &v22[40 * v21];
    v24 = v21;
    while (v24 < *(v11 + 2))
    {
      v25 = *(v23 - 3);
      v4 = *(v23 - 2);
      v12 = *(v23 - 1);
      v26 = *v23;
      v64 = *(v23 - 4);
      v65 = v24 + 1;
      v3 = __swift_project_boxed_opaque_existential_1(v63, *(v63 + 3));
      v27 = v26;
      v28 = v64;

      if ((sub_219BF3414() & 1) == 0)
      {
        v49 = v27;
        v50 = v4;
        v30 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v30;
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v30;
        }

        else
        {
          v3 = &v66;
          sub_218C38458(0, *(v30 + 16) + 1, 1);
          v32 = v66;
        }

        v11 = v62;
        v21 = v65;
        v33 = v50;
        v4 = v12;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        v12 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v3 = &v66;
          sub_218C38458((v34 > 1), v35 + 1, 1);
          v33 = v50;
          v32 = v66;
        }

        *(v32 + 16) = v12;
        v57 = v32;
        v36 = (v32 + 40 * v35);
        v36[4] = v28;
        v36[5] = v25;
        v36[6] = v33;
        v36[7] = v4;
        v36[8] = v49;
        v22 = v52;
        if (v51 != v24)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v3 = qword_280F61750;
      sub_21875FE40(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v29 = swift_allocObject();
      *(v29 + 16) = v60;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_2186FC3BC();
      *(v29 + 32) = v28;
      *(v29 + 40) = v25;

      sub_219BF6214();
      sub_219BE5314();

      v23 += 40;
      v24 = v65;
      v11 = v62;
      if (v61 == v65)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_37;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_32:
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_21875FE40(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_219C09EC0;
  v38 = *(v11 + 2);
  v39 = MEMORY[0x277D83B88];
  v40 = MEMORY[0x277D83C10];
  *(v37 + 56) = MEMORY[0x277D83B88];
  *(v37 + 64) = v40;
  *(v37 + 32) = v38;
  v41 = v57;
  v42 = *(v57 + 16);
  *(v37 + 96) = v39;
  *(v37 + 104) = v40;
  *(v37 + 72) = v42;
  sub_219BF6214();
  sub_219BE5314();

  v43 = sub_219BF5BF4();
  v44 = v58;
  (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v46 = v59;
  v45[4] = v59;
  v45[5] = v41;
  v47 = v54;
  v45[6] = v55;
  v45[7] = v47;
  v48 = v46;
  sub_218AB3D80(0, 0, v44, &unk_219CB4FD0, v45);
}

uint64_t sub_21991C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21991C500, 0, 0);
}

uint64_t sub_21991C500()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21991C5B4;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_21991C5B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21991D75C, 0, 0);
  }
}

id PuzzleStreakLocalNotificationScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleStreakLocalNotificationScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PuzzleStreakLocalNotificationScheduler.historyService(_:observedChanges:)()
{
  swift_getObjectType();
  sub_21875FE40(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

void sub_21991C99C()
{
  swift_getObjectType();
  sub_21875FE40(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_21991CAB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_21991A61C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21991CBC4()
{
  result = sub_219BDBF94();
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

uint64_t sub_21991CC9C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_21991CD04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_21991C4DC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21991CDD8(uint64_t a1)
{
  sub_21875FE40(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21991CE64()
{
  result = qword_27CC20F80;
  if (!qword_27CC20F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20F80);
  }

  return result;
}

uint64_t sub_21991CEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21991CF18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_218C81048(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_21991D4F0((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v96, v100);
        if (v5)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 16);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 16);
      v13 = v9 + 2;
      v14 = (v11 + 96);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = (v10 >= v12) ^ (v16 < v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 < v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 < v12)
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
        v18 = 40 * v7;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = v30 + v18;
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = *(v22 - 1);
            v28 = *(v23 - 8);
            v29 = *(v23 - 24);
            *(v22 - 2) = *(v23 - 40);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v23 - 40) = v24;
            *(v23 - 32) = v25;
            *(v23 - 24) = v27;
            *(v23 - 8) = v26;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
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
      result = sub_2191F6B60(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 16);
    v43 = *(v8 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_2191F6B60((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v45;
    v46 = v8 + 32;
    v47 = (v8 + 32 + 16 * v44);
    *v47 = v9;
    v47[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
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

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        sub_21991D4F0((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v100);
        if (v5)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = *(v31 + 40 * v7 + 16);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 < *(v36 + 16))
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 40);
    v37 = *(v36 + 48);
    v39 = *(v36 + 16);
    v40 = *(v36 + 32);
    *(v36 + 40) = *v36;
    v41 = *(v36 + 64);
    result = *(v36 + 72);
    *(v36 + 56) = v39;
    *(v36 + 72) = v40;
    *v36 = v38;
    *(v36 + 8) = v37;
    *(v36 + 16) = v34;
    *(v36 + 24) = v41;
    *(v36 + 32) = result;
    v36 -= 40;
    if (__CFADD__(v35++, 1))
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

uint64_t sub_21991D4F0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
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

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 40;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 3) >= *(v6 - 3))
      {
        v21 = v6 - 40;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 40, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 40;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 24);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 40;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[40 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_21991D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = type metadata accessor for SavedFeedSectionDescriptor();
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDBD64();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A74FF4();
  v25 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A74F28();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v26 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  sub_21991DBC8(&qword_280EE5C48, sub_218A74FF4);
  sub_21991DBC8(&unk_280EE5C50, sub_218A74FF4);
  sub_219BE2444();
  sub_218E32330();
  v19 = *(v18 + 48);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v3 + 8))(v5, v29);
  *v7 = v20;
  v7[1] = v22;
  sub_218A2F228(v30, v7 + v19);
  swift_storeEnumTagMultiPayload();
  sub_21991DBC8(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v28 + 8))(v10, v25);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v26, v17, v12);
  sub_21991DBC8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
  sub_219BE6924();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_21991DBC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21991DC7C(uint64_t a1)
{
  sub_21872F21C();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v5;
  sub_2186FFFE8();
  v7 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_218714064();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for SearchMoreFeedGroupConfig();
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991E278(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v40;
      v26 = *(v40 + 32);
      v26(v12, v23, v7);
      (*(v25 + 16))(v9, v12, v7);
      sub_218718690(v44 + 16, v45);
      type metadata accessor for RecipesSearchMoreFeedGroupEmitter();
      v27 = swift_allocObject();
      v26((v27 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_config), v9, v7);
      sub_2186CB1F0(v45, v27 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_formatService);
      *&v45[0] = v27;
      sub_21991E2DC();
      swift_allocObject();
      sub_21991E370(&qword_27CC20F98, type metadata accessor for RecipesSearchMoreFeedGroupEmitter);
      v28 = sub_219BEDF84();
      (*(v25 + 8))(v12, v7);
    }

    else
    {
      v32 = v41;
      v31 = v42;
      v33 = *(v42 + 32);
      v34 = v43;
      v33(v41, v23, v43);
      v35 = v39;
      (*(v31 + 16))(v39, v32, v34);
      sub_218718690(v44 + 16, v45);
      type metadata accessor for TagsSearchMoreFeedGroupEmitter();
      v36 = swift_allocObject();
      v33((v36 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_config), v35, v34);
      sub_2186CB1F0(v45, v36 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_formatService);
      *&v45[0] = v36;
      sub_21991E2DC();
      swift_allocObject();
      sub_21991E370(&qword_27CC20F90, type metadata accessor for TagsSearchMoreFeedGroupEmitter);
      v28 = sub_219BEDF84();
      (*(v31 + 8))(v32, v34);
    }
  }

  else
  {
    v29 = *(v15 + 32);
    v29(v20, v23, v14);
    (*(v15 + 16))(v17, v20, v14);
    sub_218718690(v44 + 16, v45);
    type metadata accessor for ArticlesSearchMoreFeedGroupEmitter();
    v30 = swift_allocObject();
    v29((v30 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_config), v17, v14);
    sub_2186CB1F0(v45, v30 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_formatService);
    *&v45[0] = v30;
    sub_21991E2DC();
    swift_allocObject();
    sub_21991E370(&qword_27CC20FA0, type metadata accessor for ArticlesSearchMoreFeedGroupEmitter);
    v28 = sub_219BEDF84();
    (*(v15 + 8))(v20, v14);
  }

  return v28;
}

uint64_t sub_21991E278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21991E2DC()
{
  if (!qword_27CC20F88)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_21991E370(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v0 = sub_219BEDFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20F88);
    }
  }
}

uint64_t sub_21991E370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsManagementModel()
{
  result = qword_27CC20FA8;
  if (!qword_27CC20FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21991E404()
{
  v1 = v0;
  v2 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = [*(*v7 + 16) identifier];
    v9 = sub_219BF5414();
  }

  else
  {
    sub_218A3A4F8(v7, v4);
    v10 = [*(*&v4[*(v2 + 24)] + 16) identifier];
    v9 = sub_219BF5414();

    sub_21991EF54(v4, type metadata accessor for SportsModel);
  }

  return v9;
}

uint64_t sub_21991E594(uint64_t a1, uint64_t a2)
{
  v4 = sub_21991EEAC(&qword_27CC20FD0);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

BOOL sub_21991E69C()
{
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(*v2 + 27);

    return v4 >= 0;
  }

  else
  {
    sub_21991EF54(v2, type metadata accessor for SportsManagementModel);
    return 0;
  }
}

uint64_t sub_21991E760@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21991EF54(v9, type metadata accessor for SportsManagementModel);
    v10 = *MEMORY[0x277D6D5D8];
    v11 = sub_219BE63D4();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }

  else
  {
    sub_218A3A4F8(v9, v6);
    v13 = *(*&v6[*(v4 + 20)] + 16);
    sub_21991EF54(v6, type metadata accessor for SportsModel);
    v14 = sub_219BE63D4();
    if (v13)
    {
      v15 = MEMORY[0x277D6D5E0];
    }

    else
    {
      v15 = MEMORY[0x277D6D5D8];
    }

    return (*(*(v14 - 8) + 104))(a1, *v15, v14);
  }
}

uint64_t sub_21991E938()
{
  v1 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if ((*(*v3 + 27) & 0x80000000) == 0)
    {
      v4 = MEMORY[0x277D84560];
      sub_21991EFB4(0, &qword_27CC13A28, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
      v5 = sub_219BE7674();
      v6 = *(v5 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = swift_allocObject();
      v24 = xmmword_219C09BA0;
      *(v8 + 16) = xmmword_219C09BA0;
      v9 = (v8 + v7);
      sub_218F3C5F8();
      v11 = *(v10 + 48);
      v25 = *(v10 + 64);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_219BDB5E4();
      v16 = v15;

      *v9 = v14;
      v9[1] = v16;
      v17 = *MEMORY[0x277D6DA70];
      v18 = sub_219BE7634();
      (*(*(v18 - 8) + 104))(v9 + v11, v17, v18);
      sub_21991EFB4(0, &qword_27CC13A40, MEMORY[0x277D6DAF8], v4);
      v19 = sub_219BE7664();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v24;
      (*(v20 + 104))(v22 + v21, *MEMORY[0x277D6DAD8], v19);
      *(v9 + v25) = v22;
      (*(v6 + 104))(v9, *MEMORY[0x277D6DA90], v5);

      return v8;
    }
  }

  else
  {
    sub_21991EF54(v3, type metadata accessor for SportsManagementModel);
  }

  return 0;
}

uint64_t sub_21991ECE8@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v5, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21991EF54(v4, type metadata accessor for SportsManagementModel);
    v6 = *MEMORY[0x277D6D580];
    v7 = sub_219BE6244();
    return (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    v9 = *MEMORY[0x277D6D588];
    v10 = sub_219BE6244();
    (*(*(v10 - 8) + 104))(a1, v9, v10);
    return sub_21991EF54(v4, type metadata accessor for SportsManagementModel);
  }
}

uint64_t sub_21991EEAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsManagementModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21991EEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21991EF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21991EFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21991F018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  sub_21991F354();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 56);
  sub_21991EEF0(a1, v12);
  sub_21991EEF0(a2, v12 + v14);
  type metadata accessor for SportsManagementModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v12 + v14);
      v17 = [*(v15 + 16) identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      v21 = [*(v16 + 16) identifier];
      v22 = sub_219BF5414();
      v24 = v23;

      if (v18 == v22 && v20 == v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_219BF78F4();
      }

      return v26 & 1;
    }

LABEL_11:
    sub_21991EF54(v12 + v14, type metadata accessor for SportsManagementModel);
    v26 = 0;
    return v26 & 1;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21991EF54(v12, type metadata accessor for SportsModel);
    goto LABEL_11;
  }

  sub_218A3A4F8(v12, v9);
  sub_218A3A4F8(v12 + v14, v6);
  v27 = [*(*&v9[*(v4 + 24)] + 16) identifier];
  v28 = sub_219BF5414();
  v30 = v29;

  v31 = [*(*&v6[*(v4 + 24)] + 16) identifier];
  v32 = sub_219BF5414();
  v34 = v33;

  if (v28 == v32 && v30 == v34)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_219BF78F4();
  }

  sub_21991EF54(v6, type metadata accessor for SportsModel);
  sub_21991EF54(v9, type metadata accessor for SportsModel);
  return v26 & 1;
}

void sub_21991F354()
{
  if (!qword_27CC20FE0)
  {
    type metadata accessor for SportsManagementModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20FE0);
    }
  }
}

uint64_t sub_21991F3B8(uint64_t a1, double *a2, char *a3)
{
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v169 = &v167 - v7;
  v188 = sub_219BF3344();
  v192 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v189 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDCAF4();
  v196 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_iconImageView];
  [v12 setImage_];
  v170 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel];
  [v170 setAttributedText_];
  v186 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_secondaryNameLabel];
  [v186 &selRef_sheetPresentationController];
  sub_218718690(a1, v202);
  [a3 setIsAccessibilityElement_];
  [v12 setIsAccessibilityElement_];
  v187 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton];
  [v187 setIsAccessibilityElement_];
  v13 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton];
  [v13 setIsAccessibilityElement_];
  v197 = a2;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v193 = a3;
  [a3 setFrame_];
  [v13 &selRef_minShortcutsOnboardCount];
  [v12 &selRef_minShortcutsOnboardCount];
  v195 = v12;
  v18 = [v12 layer];
  [v18 setCornerRadius_];

  v19 = [v12 layer];
  [v19 setCornerCurve_];

  v20 = *(a1 + 40);
  v190 = *(a1 + 48);
  v191 = v20;
  v168 = a1;
  sub_218846D60(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v173 = v21;
  inited = swift_initStackObject();
  v175 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v23 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v24 = objc_opt_self();
  v25 = v9;
  v171 = v23;
  v26 = [v24 labelColor];
  v27 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 40) = v26;
  v28 = *MEMORY[0x277D740A8];
  v172 = v27;
  *(inited + 64) = v27;
  *(inited + 72) = v28;
  v29 = sub_219BF0CD4();
  v30 = sub_2186C6148(0, &qword_280E8DB00);
  v176 = v28;
  v31 = sub_219BF6BD4();
  v32 = v196;
  v33 = *(v196 + 104);
  v177 = *MEMORY[0x277D6D198];
  v178 = v33;
  v179 = v196 + 104;
  v33(v11);
  v181 = v29;
  v34 = sub_219BF0CB4();

  v35 = *(v32 + 8);
  v183 = v11;
  v174 = v25;
  v196 = v32 + 8;
  v180 = v35;
  v35(v11, v25);
  *(inited + 104) = v30;
  *(inited + 80) = v34;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  v182 = v36;
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v38 = v170;
  v39 = sub_219BF53D4();
  type metadata accessor for Key(0);
  v41 = v40;
  v184 = sub_219272358(&qword_280E8E118, type metadata accessor for Key);
  v185 = v41;
  v42 = sub_219BF5204();

  v43 = [v37 initWithString:v39 attributes:v42];

  [v38 setAttributedText_];
  v44 = v197;
  [v38 setFrame_];
  [v38 setNumberOfLines_];
  [v38 setLineBreakMode_];
  v45 = [v38 centerXAnchor];
  v46 = v195;
  v47 = [v195 centerXAnchor];
  v48 = &selRef_boldSystemFontOfSize_;
  v49 = [v45 constraintEqualToAnchor_];

  [v49 setActive_];
  v50 = [v38 topAnchor];
  v51 = [v46 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:6.0];

  [v52 setActive_];
  v53 = [v38 leftAnchor];
  v54 = [v46 leftAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  [v55 setActive_];
  v56 = [v38 rightAnchor];
  v57 = [v46 rightAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  [v58 setActive_];
  [v38 sizeToFit];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  if ([*(*__swift_project_boxed_opaque_existential_1(v202 v203) + 16)])
  {
    v59 = v44;
    v60 = v172;
    v61 = v171;
    v62 = v174;
    if ((v59[29] & 1) == 0)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v79 = [objc_opt_self() bundleForClass_];
      v80 = sub_219BDB5E4();
      v167 = v81;
      v168 = v80;

      v82 = swift_initStackObject();
      *(v82 + 16) = v175;
      *(v82 + 32) = v61;
      v83 = objc_allocWithZone(MEMORY[0x277D75348]);
      v84 = v61;
      *(v82 + 40) = [v83 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
      v85 = v176;
      *(v82 + 64) = v60;
      *(v82 + 72) = v85;
      v86 = v85;
      v87 = sub_219BF6BD4();
      v88 = v183;
      v178(v183, v177, v62);
      v89 = sub_219BF0CB4();

      v180(v88, v62);
      *(v82 + 104) = v30;
      *(v82 + 80) = v89;
      sub_2188195F4(v82);
      swift_setDeallocating();
      swift_arrayDestroy();
      v90 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v91 = sub_219BF53D4();
      v92 = sub_219BF5204();

      v77 = [v90 initWithString:v91 attributes:v92];

      v93 = v194;
      v48 = &selRef_boldSystemFontOfSize_;
      goto LABEL_10;
    }

    v63 = *(v168 + 64);
    if (v63)
    {
      v167 = *(v168 + 56);
      v168 = v63;
    }

    else
    {
      v167 = 0;
      v168 = 0xE000000000000000;
    }

    v94 = v172;
    v95 = swift_initStackObject();
    *(v95 + 16) = v175;
    *(v95 + 32) = v61;
    v96 = objc_allocWithZone(MEMORY[0x277D75348]);
    v97 = v61;

    *(v95 + 40) = [v96 initWithRed:0.43 green:0.43 blue:0.45 alpha:{1.0, v167, v168}];
    v98 = v176;
    *(v95 + 64) = v94;
    *(v95 + 72) = v98;
    v99 = v98;
    v100 = sub_219BF6BD4();
    v101 = v183;
    v178(v183, v177, v62);
    v102 = sub_219BF0CB4();

    v180(v101, v62);
    *(v95 + 104) = v30;
    *(v95 + 80) = v102;
    sub_2188195F4(v95);
    swift_setDeallocating();
    swift_arrayDestroy();
    v103 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v104 = sub_219BF53D4();
    v105 = sub_219BF5204();

    v77 = [v103 initWithString:v104 attributes:v105];

    v48 = &selRef_boldSystemFontOfSize_;
  }

  else
  {
    v64 = swift_initStackObject();
    *(v64 + 16) = v175;
    v65 = v171;
    *(v64 + 32) = v171;
    v66 = objc_allocWithZone(MEMORY[0x277D75348]);
    v67 = v65;
    *(v64 + 40) = [v66 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
    v68 = v176;
    *(v64 + 64) = v172;
    *(v64 + 72) = v68;
    v69 = v68;
    v70 = sub_219BF6BD4();
    v71 = v183;
    v72 = v174;
    v178(v183, v177, v174);
    v73 = sub_219BF0CB4();

    v180(v71, v72);
    *(v64 + 104) = v30;
    *(v64 + 80) = v73;
    sub_2188195F4(v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v75 = sub_219BF53D4();
    v76 = sub_219BF5204();

    v77 = [v74 initWithString:v75 attributes:v76];
  }

  v93 = v194;
LABEL_10:
  v106 = v186;
  [v186 setAttributedText_];

  [v106 setFrame_];
  [v106 setNumberOfLines_];
  [v106 setLineBreakMode_];
  v107 = [v106 centerXAnchor];
  v108 = [v195 centerXAnchor];
  v109 = [v107 v48[479]];

  [v109 setActive_];
  v110 = [v106 topAnchor];
  v111 = [v38 bottomAnchor];
  v112 = [v110 constraintEqualToAnchor:v111 constant:2.0];

  [v112 setActive_];
  v113 = [v106 leftAnchor];
  v114 = [v38 leftAnchor];
  v115 = [v113 v48[479]];

  [v115 setActive_];
  v116 = [v106 rightAnchor];
  v117 = [v38 rightAnchor];
  v118 = [v116 v48[479]];

  [v118 setActive_];
  [v106 sizeToFit];
  [v106 setTranslatesAutoresizingMaskIntoConstraints_];
  v119 = *(v93 + 16);
  v120 = *(*__swift_project_boxed_opaque_existential_1(v202, v203) + 16);
  swift_unknownObjectRetain();
  v121 = v193;
  v122 = sub_2199E5B28();
  if (v123)
  {
    v124 = v122;
    v125 = v123;
  }

  else
  {
    v125 = v190;

    v124 = v191;
  }

  v126 = v192;
  if ([v120 tagType] - 1 < 2)
  {
    v127 = [v120 groupTitleColor];
    v128 = *(v119 + 56);
    swift_unknownObjectRetain();
    if (v127)
    {
      v129 = [v127 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v130 = swift_allocObject();
      *(v130 + 16) = v129;
      *(v130 + 24) = v128;
      v128 = v130;
    }

    swift_unknownObjectRetain();
    v131 = v195;
    v132 = [v195 traitCollection];
    [v132 displayScale];
    v134 = v133;

    v135 = type metadata accessor for FeedNavImageAssetHandle();
    v136 = objc_allocWithZone(v135);
    v137 = &v136[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v137 = 0;
    *(v137 + 1) = 0;
    *&v136[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v136[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v120;
    v138 = swift_unknownObjectRetain();
    v139 = sub_219352488(v138);
    v140 = &v136[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v140 = v139;
    v140[1] = v141;
    *&v136[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize] = vdupq_n_s64(0x4059000000000000uLL);
    *&v136[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v128;
    *&v136[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v134;
    *&v136[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v198.receiver = v136;
    v198.super_class = v135;
    v142 = objc_msgSendSuper2(&v198, sel_init);
    sub_218A462FC(v142, v131, v124, v125, 0, 100.0, 100.0, 1.0);
    swift_unknownObjectRelease();

    v126 = v192;
    v121 = v193;
  }

  swift_unknownObjectRelease();
  v143 = v197;
  v144 = v187;
  [v187 setFrame_];
  [v144 accessibilityActivationPoint];
  [v121 setAccessibilityActivationPoint_];
  v145 = *MEMORY[0x277D765D0];
  v146 = type metadata accessor for ChannelCoinView();
  v201.receiver = v121;
  v201.super_class = v146;
  v147 = objc_msgSendSuper2(&v201, sel_accessibilityTraits);
  v148 = *MEMORY[0x277D76548];
  if ((*MEMORY[0x277D76548] & ~v147) == 0)
  {
    v148 = 0;
  }

  v149 = v148 | v147;
  if ((v145 & ~v149) != 0)
  {
    v150 = v145;
  }

  else
  {
    v150 = 0;
  }

  v200.receiver = v121;
  v200.super_class = v146;
  objc_msgSendSuper2(&v200, sel_setAccessibilityTraits_, v150 | v149);
  v151 = *(v143 + 192);
  if (v151 == 5)
  {
    [v144 setHidden_];
  }

  else
  {
    v152 = qword_280EDB508;
    v153 = v144[qword_280EDB508];
    v144[qword_280EDB508] = v151;
    sub_219BE61D4();
    if (v153 != v144[v152] || !*&v144[qword_280F620E8] || !*&v144[qword_280F620E0])
    {
      sub_218EC2D64(0);
    }

    [v144 setHidden_];
    __swift_project_boxed_opaque_existential_1(v202, v203);
    swift_unknownObjectRetain();
    v154 = v189;
    sub_219BF3324();
    sub_219BEAF14();
    v155 = v154;
    v156 = v126;
    v157 = v169;
    v158 = v188;
    v196 = *(v126 + 16);
    (v196)(v169, v155, v188);
    v159 = *(v126 + 56);
    v159(v157, 0, 1, v158);
    sub_219BE89C4();

    sub_218AD7DC0(v157);
    sub_219920C88(v199[0]);
    if (*(v197 + 193))
    {
      sub_219BEAF14();
      v160 = v188;
      (v196)(v157, v189, v188);
      v159(v157, 0, 1, v160);
      v161 = v156;
      v162 = swift_allocObject();
      swift_weakInit();
      v163 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v164 = swift_allocObject();
      *(v164 + 16) = v162;
      *(v164 + 24) = v163;
      sub_218E14F94();
      sub_219BE89B4();

      sub_218AD7DC0(v157);
      __swift_project_boxed_opaque_existential_1(v199, v199[3]);
      v165 = *&v121[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_token];
      sub_219BE1A04();

      (*(v161 + 8))(v189, v160);
      __swift_destroy_boxed_opaque_existential_1(v199);
    }

    else
    {
      (*(v156 + 8))(v189, v188);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v202);
}

void sub_2199209C0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_219920C88(v1);
    }

    else
    {
    }
  }
}

uint64_t sub_219920A64(void *a1)
{
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_219BF3344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_219BF3324();
  sub_219BEAF14();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_219BE89C4();

  sub_218AD7DC0(v4);
  v9 = v12 == 2 || (v12 & 1) != 0;
  sub_219920C88(v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219920C88(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 2 || (a1 & 1) != 0)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6D340], v3);
    type metadata accessor for AccessoryButton();
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton);
    sub_219BEB694();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v8 bundleForClass_];
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6D338], v3);
    type metadata accessor for AccessoryButton();
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton);
    sub_219BEB694();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for Localized();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v12 bundleForClass_];
  }

  sub_219BDB5E4();
}

uint64_t sub_219921088()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v37 = *(v0 - 8);
  v1 = *(v37 + 8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v11 + 8))(v13, v10);
  v14 = sub_219BE22C4();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  if (v16)
  {
    if (v14 == 1702195828 && v16 == 0xE400000000000000)
    {

      v19 = 1;
    }

    else
    {
      v18 = sub_219BF78F4();

      v19 = v18 & 1;
    }
  }

  else
  {
    v19 = 2;
  }

  v20 = *(v36 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v21 | 0x3000000000000000;
  v23 = sub_219BDFA44();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = v20;
  sub_2187B15C0(v44, &v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v40 + 1))
  {
    sub_21875F93C(&v39, v41);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    sub_2188202A8(v24);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_2187449F0(&v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    sub_2188202A8(v24);
  }

  v38 = v22;
  v40 = 0u;
  v39 = 0u;
  sub_2187B15C0(v5, v2, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187B15C0(v46, v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v27 = (v37[80] + 24) & ~v37[80];
  v28 = (v1 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v5;
  v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  sub_2189B4EAC(v2, v30 + v27);
  v31 = v30 + v28;
  v32 = v41[1];
  *v31 = v41[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v42;
  v33 = (v30 + v29);
  v34 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v33 = 0;
  v33[1] = 0;
  *v34 = v25;
  v34[1] = v24;
  v34[2] = v26;

  sub_2188202A8(v24);
  sub_2186CF94C();
  sub_219921A20(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v24);
  sub_2187449F0(v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187449F0(v46, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187449F0(v37, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187449F0(&v39, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_219921A20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_219921A78()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219921B40()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t MagazineCategoriesPickerModule.createViewController(selectedCategory:)(uint64_t a1)
{
  sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for MagazineCategoriesPickerViewController();

  v3 = sub_219BE1E04();

  if (v3)
  {
    sub_21896FC94(a1, v6);
    sub_219BE20C4();
    sub_219921D30(v6);
    v5 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219921D30(uint64_t a1)
{
  sub_218EF544C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MagazineCategoriesPickerModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t MagazineCategoriesPickerModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219921E68(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v37 = a2;
  sub_219928A80(0, qword_27CC1E440, MEMORY[0x277D32E20]);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_219BF0614();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v35 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = sub_219BF2DF4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x277D33C10])
  {
    (*(v19 + 96))(v22, v18);
    (*(v10 + 32))(v17, v22, v9);
    (*(v10 + 56))(v8, 1, 1, v9);
    v39 = sub_219BF04D4();
    v40 = v24;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_2199223B0(v17, v37, v38, v8, &v39);
    sub_21896FC30(v39, v40, v41, v42, v43);
    sub_21992A460(v8, qword_27CC1E440, MEMORY[0x277D32E20]);
    return (*(v10 + 8))(v17, v9);
  }

  else if (v23 == *MEMORY[0x277D33C08])
  {
    (*(v19 + 96))(v22, v18);
    sub_219928A18();
    v27 = *(v26 + 48);
    v28 = *(v10 + 32);
    v29 = v35;
    v28(v35, v22, v9);
    v28(v12, &v22[v27], v9);
    v30 = v36;
    (*(v10 + 16))(v36, v12, v9);
    (*(v10 + 56))(v30, 0, 1, v9);
    v39 = sub_219BF04D4();
    v40 = v31;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_2199223B0(v29, v37, v38, v30, &v39);
    sub_21896FC30(v39, v40, v41, v42, v43);
    sub_21992A460(v30, qword_27CC1E440, MEMORY[0x277D32E20]);
    v32 = *(v10 + 8);
    v32(v12, v9);
    return (v32)(v29, v9);
  }

  else
  {
    v33 = sub_219BF3CB4();
    sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D34160], v33);
    swift_willThrow();
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_2199223B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v593 = a4;
  v514 = a3;
  v565 = a2;
  v608 = a1;
  sub_219928A80(0, &unk_280E90A30, MEMORY[0x277D33058]);
  MEMORY[0x28223BE20](v6 - 8);
  v563 = &v504[-v7];
  v8 = sub_219BE89F4();
  v561 = *(v8 - 8);
  v562 = v8;
  MEMORY[0x28223BE20](v8);
  v564 = &v504[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v599 = sub_219BDB954();
  v594 = *(v599 - 8);
  MEMORY[0x28223BE20](v599);
  v575 = &v504[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v579 = sub_219BF3484();
  v578 = *(v579 - 8);
  MEMORY[0x28223BE20](v579);
  v571 = &v504[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &qword_280E90180, MEMORY[0x277D33E20]);
  MEMORY[0x28223BE20](v12 - 8);
  v577 = &v504[-v13];
  v595 = sub_219BF1094();
  v596 = *(v595 - 8);
  MEMORY[0x28223BE20](v595);
  v584 = &v504[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_219BDD804();
  v538 = *(v15 - 8);
  v539 = v15;
  MEMORY[0x28223BE20](v15);
  v530 = &v504[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v537 = &v504[-v18];
  sub_219928A80(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v19 - 8);
  v529 = &v504[-v20];
  v21 = sub_219BDDED4();
  v526 = *(v21 - 8);
  v527 = v21;
  MEMORY[0x28223BE20](v21);
  v528 = &v504[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_219BDDBF4();
  v535 = *(v23 - 8);
  v536 = v23;
  MEMORY[0x28223BE20](v23);
  v534 = &v504[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_219BF0B74();
  v541 = *(v25 - 8);
  v542 = v25;
  MEMORY[0x28223BE20](v25);
  v540 = &v504[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_219BEDB94();
  v516 = *(v27 - 8);
  v517 = v27;
  MEMORY[0x28223BE20](v27);
  v515 = &v504[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v513 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v513);
  v523 = &v504[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_219BF3CA4();
  v508 = *(v30 - 8);
  v509 = v30;
  MEMORY[0x28223BE20](v30);
  v507 = &v504[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &qword_280E90470, MEMORY[0x277D338C0]);
  MEMORY[0x28223BE20](v32 - 8);
  v512 = &v504[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v520 = &v504[-v35];
  v36 = sub_219BF0AC4();
  v521 = *(v36 - 8);
  v522 = v36;
  MEMORY[0x28223BE20](v36);
  v531 = &v504[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  MEMORY[0x28223BE20](v38 - 8);
  v544 = &v504[-v39];
  sub_219928A80(0, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  MEMORY[0x28223BE20](v40 - 8);
  v545 = &v504[-v41];
  v42 = sub_219BDDDA4();
  v546 = *(v42 - 8);
  v547 = v42;
  MEMORY[0x28223BE20](v42);
  v532 = &v504[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v568 = sub_219BDE4D4();
  v570 = *(v568 - 8);
  MEMORY[0x28223BE20](v568);
  v550 = &v504[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &unk_280EE8C40, MEMORY[0x277D30018]);
  MEMORY[0x28223BE20](v45 - 8);
  v553 = &v504[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v47);
  v574 = &v504[-v48];
  v582 = sub_219BF07A4();
  v581 = *(v582 - 8);
  MEMORY[0x28223BE20](v582);
  v580 = &v504[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_219BF04A4();
  v559 = *(v50 - 8);
  v560 = v50;
  MEMORY[0x28223BE20](v50);
  v558 = &v504[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v590 = sub_219BDE294();
  v589 = *(v590 - 8);
  MEMORY[0x28223BE20](v590);
  v588 = &v504[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v53 - 8);
  v556 = &v504[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55);
  v57 = &v504[-v56];
  MEMORY[0x28223BE20](v58);
  v587 = &v504[-v59];
  v592 = sub_219BDEE04();
  v591 = *(v592 - 8);
  MEMORY[0x28223BE20](v592);
  v555 = &v504[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v61);
  v601 = &v504[-v62];
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v602 = *(v63 - 8);
  v64 = *(v602 + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v549 = &v504[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v65);
  v554 = &v504[-v66];
  MEMORY[0x28223BE20](v67);
  v543 = &v504[-v68];
  MEMORY[0x28223BE20](v69);
  v548 = &v504[-v70];
  MEMORY[0x28223BE20](v71);
  v525 = &v504[-v72];
  MEMORY[0x28223BE20](v73);
  v533 = &v504[-v74];
  MEMORY[0x28223BE20](v75);
  v518 = &v504[-v76];
  MEMORY[0x28223BE20](v77);
  v524 = &v504[-v78];
  MEMORY[0x28223BE20](v79);
  v506 = &v504[-v80];
  MEMORY[0x28223BE20](v81);
  v511 = &v504[-v82];
  MEMORY[0x28223BE20](v83);
  v510 = &v504[-v84];
  MEMORY[0x28223BE20](v85);
  v519 = &v504[-v86];
  MEMORY[0x28223BE20](v87);
  v569 = &v504[-v88];
  MEMORY[0x28223BE20](v89);
  v583 = &v504[-v90];
  MEMORY[0x28223BE20](v91);
  v552 = &v504[-v92];
  MEMORY[0x28223BE20](v93);
  v567 = &v504[-v94];
  MEMORY[0x28223BE20](v95);
  v551 = &v504[-v96];
  MEMORY[0x28223BE20](v97);
  v557 = &v504[-v98];
  MEMORY[0x28223BE20](v99);
  v586 = &v504[-v100];
  MEMORY[0x28223BE20](v101);
  v600 = &v504[-v102];
  MEMORY[0x28223BE20](v103);
  v105 = &v504[-v104];
  MEMORY[0x28223BE20](v106);
  v585 = &v504[-v107];
  v598 = sub_219BDD0A4();
  v597 = *(v598 - 8);
  MEMORY[0x28223BE20](v598);
  v109 = &v504[-((v108 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v606 = sub_219BF0F34();
  v607 = *(v606 - 1);
  MEMORY[0x28223BE20](v606);
  v566 = &v504[-((v110 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v111);
  v604 = &v504[-v112];
  v113 = sub_219BF0614();
  v114 = *(v113 - 8);
  v115 = MEMORY[0x28223BE20](v113);
  v117 = &v504[-((v116 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = *(a5 + 8);
  v576 = *a5;
  v572 = v118;
  v119 = *(a5 + 24);
  *&v573 = *(a5 + 16);
  *(&v573 + 1) = v119;
  v120 = *(a5 + 32);
  (*(v114 + 16))(v117, v608, v113, v115);
  v121 = (*(v114 + 88))(v117, v113);
  if (v121 == *MEMORY[0x277D32DB8] || v121 == *MEMORY[0x277D32D10] || v121 == *MEMORY[0x277D32E00])
  {
    goto LABEL_32;
  }

  if (v121 != *MEMORY[0x277D32E10])
  {
    if (v121 == *MEMORY[0x277D32E18])
    {
      v148 = v120;
      (*(v114 + 96))(v117, v113);
      v149 = v584;
      (*(v596 + 32))(v584, v117, v595);
      v150 = v577;
      sub_219BF1034();
      v151 = v150;
      v152 = v578;
      v153 = v150;
      v154 = v579;
      if ((*(v578 + 48))(v153, 1, v579) != 1)
      {
        v200 = v571;
        (*(v152 + 32))(v571, v151, v154);
        *&v619 = v576;
        *(&v619 + 1) = v572;
        v620 = v573;
        LOBYTE(v621) = v148;
        sub_21897010C(v576, v572, v573, *(&v573 + 1), v148);
        sub_219928AD8(v200, &v619);
        sub_218DFAEC4(v619, *(&v619 + 1), v620, *(&v620 + 1), v621);
        (*(v152 + 8))(v200, v154);
        return (*(v596 + 8))(v149, v595);
      }

      sub_219BF1084();
      v155 = v594;
      v156 = v599;
      if ((*(v594 + 48))(v57, 1, v599) != 1)
      {
        (*(v155 + 32))(v575, v57, v156);
        (*(v561 + 104))(v564, *MEMORY[0x277D6E0F8], v562);
        v203 = v605;
        v204 = v605[4];
        *(&v620 + 1) = sub_219BDD274();
        v621 = sub_21992A4BC(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
        *&v619 = v204;
        v622 = 0u;
        v623 = 0u;
        v624 = 1;
        sub_219BE8314();
        swift_allocObject();

        v205 = v565;
        sub_219BE82F4();
        v608 = v203[7];
        swift_getObjectType();
        sub_219BEAB74();
        v206 = v556;
        (*(v155 + 16))(v556, v575, v156);
        (*(v155 + 56))(v206, 0, 1, v156);

        sub_219BE7044();

        sub_21992A460(v206, &unk_280EE9D00, MEMORY[0x277CC9260]);
        (*(v155 + 8))(v575, v599);
        return (*(v596 + 8))(v149, v595);
      }

      sub_21992A460(v57, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v157 = v563;
      sub_219BF1074();
      v158 = v607;
      v159 = v606;
      if ((*(v607 + 48))(v157, 1, v606) == 1)
      {
        (*(v596 + 8))(v149, v595);
        return sub_21992A460(v157, &unk_280E90A30, MEMORY[0x277D33058]);
      }

      v245 = v566;
      (*(v158 + 32))(v566, v157, v159);
      v246 = v605;
      v247 = v605[4];
      *v109 = 0x656E696C64616568;
      *(v109 + 1) = 0xE800000000000000;
      v248 = v597;
      v249 = v598;
      (*(v597 + 104))(v109, *MEMORY[0x277CEAE48], v598);
      sub_219BDD204();
      (*(v248 + 8))(v109, v249);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v250 = v246[3];
        ObjectType = swift_getObjectType();
        (*(v250 + 8))(&v619, v245, v593, ObjectType, v250);
        swift_unknownObjectRelease();
        v252 = v619;
        if ((~v619 & 0xF000000000000007) != 0)
        {
          v353 = v246[5];
          v354 = sub_219BDFA44();
          v355 = v548;
          (*(*(v354 - 8) + 56))(v548, 1, 1, v354);
          sub_218718690((v246 + 8), &v619);
          v618 = 0;
          v616 = 0u;
          v617 = 0u;
          v625 = v353;
          sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
          if (*(&v612 + 1))
          {
            sub_21875F93C(&v611, &v613);
            *&v611 = v252;
            v356 = sub_2194DA78C(&v613);
            v608 = v357;
            v605 = v358;
            __swift_destroy_boxed_opaque_existential_1(&v613);
          }

          else
          {
            sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v356 = qword_280ED32D8;
            v387 = qword_280ED32E0;
            v388 = qword_280ED32E8;

            v608 = v387;
            v605 = v388;
            sub_2188202A8(v387);
          }

          v610 = v252;
          *(&v612 + 1) = sub_219BDD274();
          *&v611 = v247;
          v389 = v543;
          sub_21992A3F4(v355, v543, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
          v390 = (*(v602 + 80) + 24) & ~*(v602 + 80);
          v391 = v247;
          v392 = (v64 + v390 + 7) & 0xFFFFFFFFFFFFFFF8;
          v393 = (v392 + 47) & 0xFFFFFFFFFFFFFFF8;
          v604 = v252;
          v394 = swift_allocObject();
          *(v394 + 16) = v391;
          sub_2189B4EAC(v389, v394 + v390);
          v395 = v394 + v392;
          v396 = v614;
          *v395 = v613;
          *(v395 + 16) = v396;
          *(v395 + 32) = v615;
          v397 = (v394 + v393);
          v398 = (v394 + ((v393 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v397 = 0;
          v397[1] = 0;
          v399 = v608;
          *v398 = v356;
          v398[1] = v399;
          v398[2] = v605;
          swift_retain_n();

          sub_2188202A8(v399);
          sub_2186CF94C();
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
          v400 = v603;
          sub_219BEB464();
          if (!v400)
          {

            sub_2187FABEC(v399);
            sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v548, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v607 + 8))(v566, v606);
            (*(v596 + 8))(v584, v595);
            sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
            return sub_218970170(v604);
          }

          sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
          sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE2FF4();
          sub_218970170(v604);

          sub_2187FABEC(v399);
          sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v548, &qword_280EE8610, MEMORY[0x277D2DED0]);
LABEL_115:
          (*(v607 + 8))(v566, v606);
          return (*(v596 + 8))(v584, v595);
        }
      }

      v604 = v247;
      sub_219BF0F14();
      sub_219BF04D4();
      sub_219BDEDD4();
      v601 = v246[5];
      sub_2187B2C48();
      v254 = v253;
      v255 = swift_allocBox();
      v257 = v256;
      v608 = *(v254 + 48);
      sub_2187B2DA0();
      v600 = *(v258 + 48);
      v259 = v587;
      (*(v594 + 56))(v587, 1, 1, v599);
      v260 = v589;
      v261 = v588;
      v262 = v590;
      (*(v589 + 104))(v588, *MEMORY[0x277D2FF08], v590);
      sub_219BDD904();
      (*(v260 + 8))(v261, v262);
      sub_21992A460(v259, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v263 = MEMORY[0x277D84F90];
      *(v257 + v600) = MEMORY[0x277D84F90];
      *(v257 + v608) = v263;
      v608 = v255;
      v264 = sub_219BDFA44();
      v265 = v554;
      (*(*(v264 - 8) + 56))(v554, 1, 1, v264);
      sub_218718690((v605 + 8), &v619);
      v618 = 0;
      v616 = 0u;
      v617 = 0u;
      v625 = v601;
      sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
      if (*(&v612 + 1))
      {
        sub_21875F93C(&v611, &v613);
        *&v611 = v255 | 2;
        v266 = sub_2194DA78C(&v613);
        v605 = v267;
        v601 = v268;
        __swift_destroy_boxed_opaque_existential_1(&v613);
      }

      else
      {
        sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v266 = qword_280ED32D8;
        v359 = qword_280ED32E0;
        v360 = qword_280ED32E8;

        v605 = v359;
        v601 = v360;
        sub_2188202A8(v359);
      }

      v610 = v255 | 2;
      *(&v612 + 1) = sub_219BDD274();
      v361 = v604;
      *&v611 = v604;
      v362 = v549;
      sub_21992A3F4(v265, v549, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
      v363 = (*(v602 + 80) + 24) & ~*(v602 + 80);
      v364 = (v64 + v363 + 7) & 0xFFFFFFFFFFFFFFF8;
      v365 = (v364 + 47) & 0xFFFFFFFFFFFFFFF8;
      v366 = swift_allocObject();
      *(v366 + 16) = v361;
      sub_2189B4EAC(v362, v366 + v363);
      v367 = v366 + v364;
      v368 = v614;
      *v367 = v613;
      *(v367 + 16) = v368;
      *(v367 + 32) = v615;
      v369 = (v366 + v365);
      v370 = (v366 + ((v365 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v369 = 0;
      v369[1] = 0;
      v371 = v605;
      *v370 = v266;
      v370[1] = v371;
      v370[2] = v601;
      swift_retain_n();

      sub_2188202A8(v371);
      sub_2186CF94C();
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
      v372 = v603;
      sub_219BEB464();
      if (v372)
      {

        sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_2187FABEC(v371);
        sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v554, &qword_280EE8610, MEMORY[0x277D2DED0]);
        (*(v591 + 8))(v555, v592);
        goto LABEL_115;
      }

      sub_2187FABEC(v371);
      sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v554, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v591 + 8))(v555, v592);
      (*(v607 + 8))(v566, v606);
      (*(v596 + 8))(v584, v595);
LABEL_82:
      sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
    }

    if (v121 == *MEMORY[0x277D32DD8])
    {
      (*(v114 + 96))(v117, v113);
      v161 = v580;
      (*(v581 + 32))(v580, v117, v582);
      v162 = v605;
      if (!swift_unknownObjectWeakLoadStrong() || (v163 = v162[3], v164 = swift_getObjectType(), (*(v163 + 16))(&v619, v161, v593, v164, v163), swift_unknownObjectRelease(), v165 = v619, (~v619 & 0xF000000000000007) == 0))
      {
        v166 = __swift_project_boxed_opaque_existential_1(v162 + 13, v162[16]);
        v167 = sub_219BF06B4();
        v608 = sub_219BF04D4();
        v607 = v168;
        v169 = v570;
        v170 = v568;
        (*(v570 + 56))(v574, 1, 1, v568);
        v171 = *v166;
        v172 = *(*v166 + 16);
        v173 = [objc_msgSend(v167 sourceChannel)];
        swift_unknownObjectRelease();
        if (!v173)
        {
          sub_219BF5414();
          v173 = sub_219BF53D4();
        }

        v174 = [v172 hasMutedSubscriptionForTagID_];

        v175 = v605;
        if (v174)
        {
          v176 = v574;
          v177 = v553;
          sub_21992A3F4(v574, v553, &unk_280EE8C40, MEMORY[0x277D30018]);
          if ((*(v169 + 48))(v177, 1, v170) == 1)
          {
            v178 = v176;
            v179 = MEMORY[0x277D30018];
            sub_21992A460(v178, &unk_280EE8C40, MEMORY[0x277D30018]);
            sub_21992A460(v177, &unk_280EE8C40, v179);
          }

          else
          {
            v606 = v167;
            v271 = v550;
            (*(v169 + 32))(v550, v177, v170);
            if (sub_219BDE4A4())
            {
              v272 = v171[6];
              v604 = v171[7];
              __swift_project_boxed_opaque_existential_1(v171 + 3, v272);
              v273 = v544;
              sub_219BDE4C4();
              v274 = v545;
              sub_219BDEA24();
              v275 = v274;
              sub_21992A460(v273, &qword_280EE8D20, MEMORY[0x277D2FD40]);
              v277 = v546;
              v276 = v547;
              if ((*(v546 + 48))(v274, 1, v547) != 1)
              {
                v373 = *(v277 + 32);
                v374 = v532;
                v373(v532, v275, v276);
                v375 = swift_allocObject();
                *(v375 + 40) = v276;
                *(v375 + 48) = sub_21992A4BC(&qword_27CC11940, MEMORY[0x277D2FD50]);
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v375 + 16));
                v373(boxed_opaque_existential_1, v374, v276);
                (*(v570 + 8))(v271, v170);
                sub_21992A460(v574, &unk_280EE8C40, MEMORY[0x277D30018]);
                v377 = v607;
                *(v375 + 56) = v608;
                *(v375 + 64) = v377;
                *(v375 + 80) = 0;
                *(v375 + 88) = 0;
                v332 = 1;
                v331 = v375;
                *(v375 + 72) = v606;
                *(v375 + 96) = 0;
                v333 = 0;
                v167 = 0;
                v175 = v605;
                goto LABEL_86;
              }

              (*(v570 + 8))(v271, v170);
              sub_21992A460(v574, &unk_280EE8C40, MEMORY[0x277D30018]);
              sub_21992A460(v274, &unk_280EE8D10, MEMORY[0x277D2FD50]);
              v175 = v605;
            }

            else
            {
              (*(v169 + 8))(v271, v170);
              sub_21992A460(v176, &unk_280EE8C40, MEMORY[0x277D30018]);
            }

            v167 = v606;
          }
        }

        else
        {
          sub_21992A460(v574, &unk_280EE8C40, MEMORY[0x277D30018]);
        }

        v331 = v608;
        v332 = 0;
        v333 = v607;
LABEL_86:
        v334 = v175[5];
        v335 = swift_allocObject();
        v609 = v332;
        *(v335 + 16) = v331;
        *(v335 + 24) = v333;
        *(v335 + 40) = 0;
        *(v335 + 48) = 0;
        *(v335 + 32) = v167;
        *(v335 + 56) = v332;
        *(v335 + 63) = 0;
        *(v335 + 61) = 0;
        *(v335 + 57) = 0;
        *(v335 + 64) = MEMORY[0x277D84F90];
        v598 = v335 | 0x5000000000000000;
        v600 = v175[4];
        v336 = sub_219BDFA44();
        (*(*(v336 - 8) + 56))(v583, 1, 1, v336);
        sub_218718690((v175 + 8), &v619);
        v618 = 0;
        v616 = 0u;
        v617 = 0u;
        v625 = v334;
        sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
        v606 = v167;
        v608 = v331;
        v607 = v333;
        LODWORD(v604) = v332;
        if (*(&v612 + 1))
        {
          sub_21875F93C(&v611, &v613);
          sub_21896FE24(v331, v333, v167, 0, 0, v332);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v337 = qword_280ED32E0;
          v338 = qword_280ED32E8;
          v599 = qword_280ED32D8;

          v605 = v337;
          v601 = v338;
          sub_2188202A8(v337);
          __swift_destroy_boxed_opaque_existential_1(&v613);
        }

        else
        {
          sub_21896FE24(v331, v333, v167, 0, 0, v332);
          sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v339 = qword_280ED32E0;
          v340 = qword_280ED32E8;
          v599 = qword_280ED32D8;

          v605 = v339;
          v601 = v340;
          sub_2188202A8(v339);
        }

        v610 = v598;
        *(&v612 + 1) = sub_219BDD274();
        v341 = v600;
        *&v611 = v600;
        v342 = v569;
        sub_21992A3F4(v583, v569, &qword_280EE8610, MEMORY[0x277D2DED0]);
        sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
        v343 = (*(v602 + 80) + 24) & ~*(v602 + 80);
        v344 = (v64 + v343 + 7) & 0xFFFFFFFFFFFFFFF8;
        v345 = (v344 + 47) & 0xFFFFFFFFFFFFFFF8;
        v346 = swift_allocObject();
        *(v346 + 16) = v341;
        sub_2189B4EAC(v342, v346 + v343);
        v347 = v346 + v344;
        v348 = v614;
        *v347 = v613;
        *(v347 + 16) = v348;
        *(v347 + 32) = v615;
        v349 = (v346 + v345);
        v350 = (v346 + ((v345 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v349 = 0;
        v349[1] = 0;
        v351 = v605;
        *v350 = v599;
        v350[1] = v351;
        v350[2] = v601;
        swift_retain_n();

        sub_2188202A8(v351);
        sub_2186CF94C();
        sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
        v352 = v603;
        sub_219BEB464();
        if (!v352)
        {

          sub_2187FABEC(v351);
          sub_21896FDCC(v608, v607, v606, 0, 0, v604);
          sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v583, &qword_280EE8610, MEMORY[0x277D2DED0]);
          (*(v581 + 8))(v580, v582);
          sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        }

        sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_2187FABEC(v351);
        sub_21896FDCC(v608, v607, v606, 0, 0, v604);
        sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        v316 = MEMORY[0x277D2DED0];
        v317 = v583;
LABEL_95:
        sub_21992A460(v317, &qword_280EE8610, v316);
        return (*(v581 + 8))(v580, v582);
      }

      v239 = v162[4];
      v238 = v162[5];
      v240 = sub_219BDFA44();
      v241 = v567;
      (*(*(v240 - 8) + 56))(v567, 1, 1, v240);
      sub_218718690((v162 + 8), &v619);
      v618 = 0;
      v616 = 0u;
      v617 = 0u;
      v625 = v238;
      sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
      if (*(&v612 + 1))
      {
        sub_21875F93C(&v611, &v613);
        *&v611 = v165;
        v242 = sub_2194DA78C(&v613);
        v607 = v243;
        v606 = v244;
        __swift_destroy_boxed_opaque_existential_1(&v613);
      }

      else
      {
        sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v242 = qword_280ED32D8;
        v303 = qword_280ED32E0;
        v304 = qword_280ED32E8;

        v607 = v303;
        v606 = v304;
        sub_2188202A8(v303);
      }

      v610 = v165;
      *(&v612 + 1) = sub_219BDD274();
      *&v611 = v239;
      v608 = v165;
      v305 = v552;
      sub_21992A3F4(v241, v552, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
      v306 = (*(v602 + 80) + 24) & ~*(v602 + 80);
      v307 = (v64 + v306 + 7) & 0xFFFFFFFFFFFFFFF8;
      v308 = (v307 + 47) & 0xFFFFFFFFFFFFFFF8;
      v309 = swift_allocObject();
      *(v309 + 16) = v239;
      sub_2189B4EAC(v305, v309 + v306);
      v310 = v309 + v307;
      v311 = v614;
      *v310 = v613;
      *(v310 + 16) = v311;
      *(v310 + 32) = v615;
      v312 = (v309 + v308);
      v313 = (v309 + ((v308 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v312 = 0;
      v312[1] = 0;
      v314 = v607;
      *v313 = v242;
      v313[1] = v314;
      v313[2] = v606;
      swift_retain_n();

      sub_2188202A8(v314);
      sub_2186CF94C();
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
      v315 = v603;
      sub_219BEB464();
      if (v315)
      {

        sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();
        sub_218970170(v608);

        sub_2187FABEC(v314);
        sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        v316 = MEMORY[0x277D2DED0];
        v317 = v567;
        goto LABEL_95;
      }

      sub_2187FABEC(v314);
      sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v567, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v581 + 8))(v580, v582);
LABEL_75:
      sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      return sub_218970170(v608);
    }

    if (v121 == *MEMORY[0x277D32CF8])
    {
      goto LABEL_32;
    }

    if (v121 == *MEMORY[0x277D32DC0])
    {
      (*(v114 + 96))(v117, v113);
      v207 = *(v559 + 32);
      v208 = v120;
      v505 = v120;
      v207(v558, v117, v560);
      v607 = v605[5];
      v209 = sub_219BF0404();
      v606 = v209;
      v608 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      v210 = swift_allocObject();
      v211 = v572;
      v212 = v573;
      sub_21897010C(v576, v572, v573, *(&v573 + 1), v208);
      v213 = [v209 identifier];
      v214 = sub_219BF5414();
      v216 = v215;

      swift_unknownObjectRelease();
      *(v210 + 16) = v214;
      *(v210 + 24) = v216;
      *(v210 + 32) = v608;
      *(v210 + 40) = 0;
      *(v210 + 48) = 1;
      v217 = v576;
      *(v210 + 56) = 0;
      *(v210 + 64) = v217;
      *(v210 + 72) = v211;
      *(v210 + 80) = v212;
      *(v210 + 96) = v505;
      v608 = v210;
      v218 = v210 | 0x2000000000000006;
      v219 = v605[4];
      v220 = sub_219BDFA44();
      v221 = v557;
      (*(*(v220 - 8) + 56))(v557, 1, 1, v220);
      v621 = 0;
      v619 = 0u;
      v620 = 0u;
      v618 = 0;
      v616 = 0u;
      v617 = 0u;
      v625 = v607;
      sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
      if (*(&v612 + 1))
      {
        sub_21875F93C(&v611, &v613);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v222 = qword_280ED32E0;
        v223 = qword_280ED32E8;
        v606 = qword_280ED32D8;

        v607 = v222;
        v224 = v223;
        sub_2188202A8(v222);
        __swift_destroy_boxed_opaque_existential_1(&v613);
      }

      else
      {
        sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v318 = qword_280ED32E0;
        v319 = qword_280ED32E8;
        v606 = qword_280ED32D8;

        v607 = v318;
        v224 = v319;
        sub_2188202A8(v318);
      }

      v610 = v218;
      *(&v612 + 1) = sub_219BDD274();
      *&v611 = v219;
      v320 = v551;
      sub_21992A3F4(v221, v551, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
      v321 = (*(v602 + 80) + 24) & ~*(v602 + 80);
      v322 = (v64 + v321 + 7) & 0xFFFFFFFFFFFFFFF8;
      v323 = (v322 + 47) & 0xFFFFFFFFFFFFFFF8;
      v324 = swift_allocObject();
      *(v324 + 16) = v219;
      sub_2189B4EAC(v320, v324 + v321);
      v325 = v324 + v322;
      v326 = v614;
      *v325 = v613;
      *(v325 + 16) = v326;
      *(v325 + 32) = v615;
      v327 = (v324 + v323);
      v328 = (v324 + ((v323 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v327 = 0;
      v327[1] = 0;
      v329 = v607;
      *v328 = v606;
      v328[1] = v329;
      v328[2] = v224;
      swift_retain_n();

      sub_2188202A8(v329);
      sub_2186CF94C();
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
      v330 = v603;
      sub_219BEB464();
      if (v330)
      {

        sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_2187FABEC(v329);
        sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v557, &qword_280EE8610, MEMORY[0x277D2DED0]);
        return (*(v559 + 8))(v558, v560);
      }

      sub_2187FABEC(v329);
      sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v557, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v559 + 8))(v558, v560);
      goto LABEL_82;
    }

    if (v121 == *MEMORY[0x277D32CF0])
    {
LABEL_55:
      v269 = sub_219BF3CB4();
      sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168]);
      swift_allocError();
      (*(*(v269 - 8) + 104))(v270, *MEMORY[0x277D34160], v269);
      swift_willThrow();
      return (*(v114 + 8))(v117, v113);
    }

    if (v121 != *MEMORY[0x277D32E08] && v121 != *MEMORY[0x277D32DB0] && v121 != *MEMORY[0x277D32DE0])
    {
      if (v121 == *MEMORY[0x277D32DF0])
      {
        (*(v114 + 96))(v117, v113);
        v278 = v540;
        (*(v541 + 32))(v540, v117, v542);
        v279 = v605;
        if (swift_unknownObjectWeakLoadStrong() && (v280 = v279[3], v281 = swift_getObjectType(), (*(v280 + 24))(&v619, v278, v593, v281, v280), swift_unknownObjectRelease(), v282 = v619, (~v619 & 0xF000000000000007) != 0))
        {
          v402 = v279[4];
          v401 = v279[5];
          v403 = sub_219BDFA44();
          v404 = v524;
          (*(*(v403 - 8) + 56))(v524, 1, 1, v403);
          sub_218718690((v279 + 8), &v619);
          v618 = 0;
          v616 = 0u;
          v617 = 0u;
          v625 = v401;
          sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
          if (*(&v612 + 1))
          {
            sub_21875F93C(&v611, &v613);
            *&v611 = v282;
            v405 = sub_2194DA78C(&v613);
            v607 = v406;
            v606 = v407;
            __swift_destroy_boxed_opaque_existential_1(&v613);
          }

          else
          {
            sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v405 = qword_280ED32D8;
            v464 = qword_280ED32E0;
            v465 = qword_280ED32E8;

            v607 = v464;
            v606 = v465;
            sub_2188202A8(v464);
          }

          v610 = v282;
          *(&v612 + 1) = sub_219BDD274();
          *&v611 = v402;
          v608 = v282;
          v466 = v518;
          sub_21992A3F4(v404, v518, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
          v467 = (*(v602 + 80) + 24) & ~*(v602 + 80);
          v468 = (v64 + v467 + 7) & 0xFFFFFFFFFFFFFFF8;
          v469 = (v468 + 47) & 0xFFFFFFFFFFFFFFF8;
          v470 = swift_allocObject();
          *(v470 + 16) = v402;
          sub_2189B4EAC(v466, v470 + v467);
          v471 = v470 + v468;
          v472 = v614;
          *v471 = v613;
          *(v471 + 16) = v472;
          *(v471 + 32) = v615;
          v473 = (v470 + v469);
          v474 = (v470 + ((v469 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v473 = 0;
          v473[1] = 0;
          v475 = v607;
          *v474 = v405;
          v474[1] = v475;
          v474[2] = v606;
          swift_retain_n();

          sub_2188202A8(v475);
          sub_2186CF94C();
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
          v476 = v603;
          sub_219BEB464();
          if (!v476)
          {

            sub_2187FABEC(v475);
            sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v524, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v541 + 8))(v540, v542);
            goto LABEL_75;
          }

          sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
          sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE2FF4();
          sub_218970170(v608);

          sub_2187FABEC(v475);
          sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v524, &qword_280EE8610, MEMORY[0x277D2DED0]);
        }

        else
        {
          v283 = sub_219BF04D4();
          v284 = v527;
          v285 = v528;
          *v528 = v283;
          v285[1] = v286;
          (*(v526 + 104))(v285, *MEMORY[0x277D2FDC8], v284);
          v287 = sub_219BDD944();
          (*(*(v287 - 8) + 56))(v529, 1, 1, v287);
          v288 = v534;
          sub_219BDDBD4();
          sub_2191B3054();
          v290 = *(v289 + 48);
          v291 = sub_219BF0B44();
          v292 = v536;
          v293 = v537;
          *v537 = v291;
          (*(v535 + 16))(v293 + v290, v288, v292);
          v295 = v538;
          v294 = v539;
          (*(v538 + 104))(v293, *MEMORY[0x277D2FAF8], v539);
          v607 = v279[5];
          v296 = swift_allocObject();
          sub_219BF0AF4();
          (*(v295 + 16))(v530, v293, v294);
          sub_219BDE674();
          swift_allocObject();
          *(v296 + 16) = sub_219BDE614();
          v608 = v296;
          v297 = v296 | 0x7000000000000004;
          v298 = sub_219BDFA44();
          v299 = v533;
          (*(*(v298 - 8) + 56))(v533, 1, 1, v298);
          v621 = 0;
          v619 = 0u;
          v620 = 0u;
          v618 = 0;
          v616 = 0u;
          v617 = 0u;
          v625 = v607;
          sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
          if (*(&v612 + 1))
          {
            sub_21875F93C(&v611, &v613);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v301 = qword_280ED32D8;
            v300 = qword_280ED32E0;
            v302 = qword_280ED32E8;

            v607 = v300;
            sub_2188202A8(v300);
            __swift_destroy_boxed_opaque_existential_1(&v613);
          }

          else
          {
            sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v301 = qword_280ED32D8;
            v408 = qword_280ED32E0;
            v302 = qword_280ED32E8;

            v607 = v408;
            sub_2188202A8(v408);
          }

          v610 = v297;
          v611 = 0u;
          v612 = 0u;
          v409 = v525;
          sub_21992A3F4(v299, v525, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
          v410 = (*(v602 + 80) + 24) & ~*(v602 + 80);
          v411 = (v64 + v410 + 7) & 0xFFFFFFFFFFFFFFF8;
          v412 = (v411 + 47) & 0xFFFFFFFFFFFFFFF8;
          v413 = swift_allocObject();
          *(v413 + 16) = 0;
          sub_2189B4EAC(v409, v413 + v410);
          v414 = v413 + v411;
          v415 = v614;
          *v414 = v613;
          *(v414 + 16) = v415;
          *(v414 + 32) = v615;
          v416 = (v413 + v412);
          v417 = (v413 + ((v412 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v416 = 0;
          v416[1] = 0;
          v418 = v607;
          *v417 = v301;
          v417[1] = v418;
          v417[2] = v302;

          sub_2188202A8(v418);
          sub_2186CF94C();
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
          v419 = v603;
          sub_219BEB464();
          if (!v419)
          {

            sub_2187FABEC(v418);
            sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v533, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v538 + 8))(v537, v539);
            (*(v535 + 8))(v534, v536);
            (*(v541 + 8))(v540, v542);
            goto LABEL_82;
          }

          sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
          sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE2FF4();

          sub_2187FABEC(v418);
          sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v533, &qword_280EE8610, MEMORY[0x277D2DED0]);
          (*(v538 + 8))(v537, v539);
          (*(v535 + 8))(v534, v536);
        }

        return (*(v541 + 8))(v540, v542);
      }

      if (v121 != *MEMORY[0x277D32D38])
      {
        if (v121 == *MEMORY[0x277D32DE8])
        {
          (*(v114 + 96))(v117, v113);
          (*(v521 + 32))(v531, v117, v522);
          v379 = v507;
          v378 = v508;
          v380 = v509;
          (*(v508 + 104))(v507, *MEMORY[0x277D34140], v509);
          v381 = sub_218C32B18(v379, v514);
          (*(v378 + 8))(v379, v380);
          v382 = MEMORY[0x277D338A8];
          if (v381)
          {
            v383 = *MEMORY[0x277D338A8];
            v384 = sub_219BF24E4();
            v385 = *(v384 - 8);
            v386 = v520;
            (*(v385 + 104))(v520, v383, v384);
            (*(v385 + 56))(v386, 0, 1, v384);
          }

          else
          {
            v384 = sub_219BF24E4();
            v386 = v520;
            (*(*(v384 - 8) + 56))(v520, 1, 1, v384);
          }

          v438 = v512;
          sub_21992A3F4(v386, v512, &qword_280E90470, MEMORY[0x277D338C0]);
          sub_219BF24E4();
          v439 = *(v384 - 8);
          if ((*(v439 + 48))(v438, 1, v384) == 1)
          {
            sub_21992A460(v438, &qword_280E90470, MEMORY[0x277D338C0]);
            v440 = v605;
          }

          else
          {
            v441 = (*(v439 + 88))(v438, v384);
            v442 = *v382;
            (*(v439 + 8))(v438, v384);
            v443 = v441 == v442;
            v440 = v605;
            if (v443)
            {
              strcpy(v109, "puzzleTeaser");
              v109[13] = 0;
              *(v109 + 7) = -5120;
              v444 = v597;
              v445 = v598;
              (*(v597 + 104))(v109, *MEMORY[0x277CEAE48], v598);
              sub_219BDD204();
              (*(v444 + 8))(v109, v445);
            }
          }

          v446 = sub_219BF0AA4();
          v447 = v513;
          v448 = v523;
          sub_21992A3F4(v386, &v523[*(v513 + 20)], &qword_280E90470, MEMORY[0x277D338C0]);
          v449 = sub_219BF04D4();
          *v448 = v446;
          *(v448 + 1) = 0;
          v448[16] = 1;
          v450 = &v448[v447[6]];
          *v450 = v449;
          v450[1] = v451;
          v452 = &v448[v447[7]];
          *v452 = 0;
          v452[1] = 0;
          v453 = &v448[v447[8]];
          *v453 = 0;
          v453[1] = 0;
          v454 = v440[5];
          v455 = swift_allocBox();
          sub_2189F7F80(v448, v456);
          v608 = v455;
          v457 = v455 | 0xE000000000000006;
          v458 = v440[4];
          v459 = sub_219BDFA44();
          v460 = v519;
          (*(*(v459 - 8) + 56))(v519, 1, 1, v459);
          sub_218718690((v440 + 8), &v619);
          v618 = 0;
          v616 = 0u;
          v617 = 0u;
          v625 = v454;
          sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
          if (*(&v612 + 1))
          {
            sub_21875F93C(&v611, &v613);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v462 = qword_280ED32D8;
            v461 = qword_280ED32E0;
            v463 = qword_280ED32E8;

            v607 = v461;
            v606 = v463;
            sub_2188202A8(v461);
            __swift_destroy_boxed_opaque_existential_1(&v613);
          }

          else
          {
            sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v462 = qword_280ED32D8;
            v477 = qword_280ED32E0;
            v478 = qword_280ED32E8;

            v607 = v477;
            v606 = v478;
            sub_2188202A8(v477);
          }

          v610 = v457;
          *(&v612 + 1) = sub_219BDD274();
          *&v611 = v458;
          v479 = v510;
          sub_21992A3F4(v460, v510, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
          v480 = (*(v602 + 80) + 24) & ~*(v602 + 80);
          v481 = (v64 + v480 + 7) & 0xFFFFFFFFFFFFFFF8;
          v482 = v458;
          v483 = (v481 + 47) & 0xFFFFFFFFFFFFFFF8;
          v484 = swift_allocObject();
          *(v484 + 16) = v482;
          sub_2189B4EAC(v479, v484 + v480);
          v485 = v484 + v481;
          v486 = v614;
          *v485 = v613;
          *(v485 + 16) = v486;
          *(v485 + 32) = v615;
          v487 = (v484 + v483);
          v488 = (v484 + ((v483 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v487 = 0;
          v487[1] = 0;
          v489 = v607;
          *v488 = v462;
          v488[1] = v489;
          v488[2] = v606;
          swift_retain_n();

          sub_2188202A8(v489);
          sub_2186CF94C();
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
          v490 = v603;
          sub_219BEB464();
          if (v490)
          {

            sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
            sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
            swift_allocObject();
            sub_219BE2FF4();

            sub_2187FABEC(v489);
            sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v519, &qword_280EE8610, MEMORY[0x277D2DED0]);
            sub_2189F7FE4(v523);
            sub_21992A460(v520, &qword_280E90470, MEMORY[0x277D338C0]);
            return (*(v521 + 8))(v531, v522);
          }

          sub_2187FABEC(v489);
          sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v519, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2189F7FE4(v523);
          sub_21992A460(v520, &qword_280E90470, MEMORY[0x277D338C0]);
          (*(v521 + 8))(v531, v522);
          goto LABEL_82;
        }

        if (v121 == *MEMORY[0x277D32D18])
        {
          (*(v114 + 96))(v117, v113);
          v420 = *(v516 + 32);
          v421 = v120;
          v505 = v120;
          v420(v515, v117, v517);
          v607 = v605[5];
          v422 = sub_219BEDB74();
          v606 = v422;
          v608 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
          v423 = swift_allocObject();
          v424 = v572;
          v425 = v573;
          sub_21897010C(v576, v572, v573, *(&v573 + 1), v421);
          v426 = [v422 identifier];
          v427 = sub_219BF5414();
          v429 = v428;

          swift_unknownObjectRelease();
          *(v423 + 16) = v427;
          *(v423 + 24) = v429;
          *(v423 + 32) = v608;
          *(v423 + 40) = 0;
          *(v423 + 48) = 1;
          v430 = v576;
          *(v423 + 56) = 0;
          *(v423 + 64) = v430;
          *(v423 + 72) = v424;
          *(v423 + 80) = v425;
          *(v423 + 96) = v505;
          v608 = v423;
          v431 = v423 | 0x2000000000000006;
          v432 = v605[4];
          v433 = sub_219BDFA44();
          v434 = v511;
          (*(*(v433 - 8) + 56))(v511, 1, 1, v433);
          v621 = 0;
          v619 = 0u;
          v620 = 0u;
          v618 = 0;
          v616 = 0u;
          v617 = 0u;
          v625 = v607;
          sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
          if (*(&v612 + 1))
          {
            sub_21875F93C(&v611, &v613);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v435 = qword_280ED32E0;
            v436 = qword_280ED32E8;
            v606 = qword_280ED32D8;

            v607 = v435;
            v437 = v436;
            sub_2188202A8(v435);
            __swift_destroy_boxed_opaque_existential_1(&v613);
          }

          else
          {
            sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v491 = qword_280ED32E0;
            v492 = qword_280ED32E8;
            v606 = qword_280ED32D8;

            v607 = v491;
            v437 = v492;
            sub_2188202A8(v491);
          }

          v610 = v431;
          *(&v612 + 1) = sub_219BDD274();
          *&v611 = v432;
          v493 = v506;
          sub_21992A3F4(v434, v506, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
          v494 = (*(v602 + 80) + 24) & ~*(v602 + 80);
          v495 = (v64 + v494 + 7) & 0xFFFFFFFFFFFFFFF8;
          v496 = (v495 + 47) & 0xFFFFFFFFFFFFFFF8;
          v497 = swift_allocObject();
          *(v497 + 16) = v432;
          sub_2189B4EAC(v493, v497 + v494);
          v498 = v497 + v495;
          v499 = v614;
          *v498 = v613;
          *(v498 + 16) = v499;
          *(v498 + 32) = v615;
          v500 = (v497 + v496);
          v501 = (v497 + ((v496 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v500 = 0;
          v500[1] = 0;
          v502 = v607;
          *v501 = v606;
          v501[1] = v502;
          v501[2] = v437;
          swift_retain_n();

          sub_2188202A8(v502);
          sub_2186CF94C();
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
          v503 = v603;
          sub_219BEB464();
          if (v503)
          {

            sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
            sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
            swift_allocObject();
            sub_219BE2FF4();

            sub_2187FABEC(v502);
            sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v511, &qword_280EE8610, MEMORY[0x277D2DED0]);
            return (*(v516 + 8))(v515, v517);
          }

          sub_2187FABEC(v502);
          sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v511, &qword_280EE8610, MEMORY[0x277D2DED0]);
          (*(v516 + 8))(v515, v517);
          goto LABEL_82;
        }

        if (v121 != *MEMORY[0x277D32DA8] && v121 != *MEMORY[0x277D32DF8])
        {
          if (v121 == *MEMORY[0x277D32DD0])
          {
            goto LABEL_33;
          }

          goto LABEL_55;
        }
      }
    }

LABEL_32:
    (*(v114 + 8))(v117, v113);
LABEL_33:
    v201 = sub_219BF3CB4();
    sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168]);
    swift_allocError();
    (*(*(v201 - 8) + 104))(v202, *MEMORY[0x277D34160], v201);
    return swift_willThrow();
  }

  (*(v114 + 96))(v117, v113);
  v122 = v604;
  (*(v607 + 32))(v604, v117, v606);
  v123 = v605;
  v124 = v605[4];
  *v109 = 0x656E696C64616568;
  *(v109 + 1) = 0xE800000000000000;
  v125 = v597;
  v126 = v598;
  (*(v597 + 104))(v109, *MEMORY[0x277CEAE48], v598);
  v596 = v124;
  sub_219BDD204();
  (*(v125 + 8))(v109, v126);
  if (!swift_unknownObjectWeakLoadStrong() || (v127 = v123[3], v128 = swift_getObjectType(), (*(v127 + 8))(&v619, v122, v593, v128, v127), swift_unknownObjectRelease(), v129 = v619, (~v619 & 0xF000000000000007) == 0))
  {
    v598 = v64;
    sub_219BF0F14();
    sub_219BF04D4();
    sub_219BDEDD4();
    v597 = v123[5];
    sub_2187B2C48();
    v131 = v130;
    v132 = swift_allocBox();
    v134 = v133;
    v608 = *(v131 + 48);
    sub_2187B2DA0();
    v595 = *(v135 + 48);
    v136 = v587;
    (*(v594 + 56))(v587, 1, 1, v599);
    v137 = v589;
    v138 = v588;
    v139 = v590;
    (*(v589 + 104))(v588, *MEMORY[0x277D2FF08], v590);
    sub_219BDD904();
    (*(v137 + 8))(v138, v139);
    sub_21992A460(v136, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v140 = MEMORY[0x277D84F90];
    *(v134 + v595) = MEMORY[0x277D84F90];
    *(v134 + v608) = v140;
    v608 = v132;
    v141 = v132 | 2;
    v142 = sub_219BDFA44();
    v143 = v600;
    (*(*(v142 - 8) + 56))(v600, 1, 1, v142);
    sub_218718690((v123 + 8), &v619);
    v618 = 0;
    v616 = 0u;
    v617 = 0u;
    v625 = v597;
    sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
    if (*(&v612 + 1))
    {
      sub_21875F93C(&v611, &v613);
      *&v611 = v132 | 2;
      v144 = sub_2194DA78C(&v613);
      v605 = v145;
      v599 = v146;
      __swift_destroy_boxed_opaque_existential_1(&v613);
      v147 = v598;
    }

    else
    {
      sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v147 = v598;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v144 = qword_280ED32D8;
      v186 = qword_280ED32E0;
      v187 = qword_280ED32E8;

      v605 = v186;
      v599 = v187;
      sub_2188202A8(v186);
    }

    v610 = v141;
    *(&v612 + 1) = sub_219BDD274();
    v188 = v596;
    *&v611 = v596;
    v189 = v586;
    sub_21992A3F4(v143, v586, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
    v190 = (*(v602 + 80) + 24) & ~*(v602 + 80);
    v191 = (v147 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = (v191 + 47) & 0xFFFFFFFFFFFFFFF8;
    v193 = swift_allocObject();
    *(v193 + 16) = v188;
    sub_2189B4EAC(v189, v193 + v190);
    v194 = v193 + v191;
    v195 = v614;
    *v194 = v613;
    *(v194 + 16) = v195;
    *(v194 + 32) = v615;
    v196 = (v193 + v192);
    v197 = (v193 + ((v192 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v196 = 0;
    v196[1] = 0;
    v198 = v605;
    *v197 = v144;
    v197[1] = v198;
    v197[2] = v599;
    swift_retain_n();

    sub_2188202A8(v198);
    sub_2186CF94C();
    sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
    v199 = v603;
    sub_219BEB464();
    if (v199)
    {

      sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      sub_2187FABEC(v198);
      sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v600, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v591 + 8))(v601, v592);
      return (*(v607 + 8))(v604, v606);
    }

    sub_2187FABEC(v198);
    sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_21992A460(v600, &qword_280EE8610, MEMORY[0x277D2DED0]);
    (*(v591 + 8))(v601, v592);
    (*(v607 + 8))(v604, v606);
    goto LABEL_82;
  }

  v180 = v123[5];
  v181 = sub_219BDFA44();
  v182 = v585;
  (*(*(v181 - 8) + 56))(v585, 1, 1, v181);
  sub_218718690((v123 + 8), &v619);
  v618 = 0;
  v616 = 0u;
  v617 = 0u;
  v625 = v180;
  sub_2187B14CC(&v616, &v611, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v612 + 1))
  {
    sub_21875F93C(&v611, &v613);
    *&v611 = v129;
    v183 = sub_2194DA78C(&v613);
    v608 = v184;
    v605 = v185;
    __swift_destroy_boxed_opaque_existential_1(&v613);
  }

  else
  {
    sub_218745F4C(&v611, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v183 = qword_280ED32D8;
    v225 = qword_280ED32E0;
    v226 = qword_280ED32E8;

    v608 = v225;
    v605 = v226;
    sub_2188202A8(v225);
  }

  v610 = v129;
  *(&v612 + 1) = sub_219BDD274();
  v227 = v596;
  *&v611 = v596;
  sub_21992A3F4(v182, v105, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B14CC(&v619, &v613, &qword_280EE33A0, &qword_280EE33B0);
  v228 = (*(v602 + 80) + 24) & ~*(v602 + 80);
  v229 = (v64 + v228 + 7) & 0xFFFFFFFFFFFFFFF8;
  v602 = v129;
  v230 = (v229 + 47) & 0xFFFFFFFFFFFFFFF8;
  v231 = swift_allocObject();
  *(v231 + 16) = v227;
  sub_2189B4EAC(v105, v231 + v228);
  v232 = v231 + v229;
  v233 = v614;
  *v232 = v613;
  *(v232 + 16) = v233;
  *(v232 + 32) = v615;
  v234 = (v231 + v230);
  v235 = (v231 + ((v230 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v234 = 0;
  v234[1] = 0;
  v236 = v608;
  *v235 = v183;
  v235[1] = v236;
  v235[2] = v605;
  swift_retain_n();

  sub_2188202A8(v236);
  sub_2186CF94C();
  sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
  v237 = v603;
  sub_219BEB464();
  if (v237)
  {

    sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
    sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();
    sub_218970170(v602);

    sub_2187FABEC(v236);
    sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_21992A460(v585, &qword_280EE8610, MEMORY[0x277D2DED0]);
    return (*(v607 + 8))(v604, v606);
  }

  sub_2187FABEC(v236);
  sub_218745F4C(&v616, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218745F4C(&v619, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_21992A460(v585, &qword_280EE8610, MEMORY[0x277D2DED0]);
  (*(v607 + 8))(v604, v606);
  sub_218745F4C(&v611, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
  return sub_218970170(v602);
}

uint64_t sub_219928960()
{
  sub_218774F78(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  sub_218745F4C(v0 + 144, &unk_280EE89A0, &unk_280EE89B0, MEMORY[0x277D302D8], sub_2186C6F70);

  return swift_deallocClassInstance();
}

void sub_219928A18()
{
  if (!qword_27CC20FF0)
  {
    sub_219BF0614();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20FF0);
    }
  }
}

void sub_219928A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219928AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v149 = *(v6 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v142 = &v137 - v9;
  MEMORY[0x28223BE20](v10);
  v141 = &v137 - v11;
  MEMORY[0x28223BE20](v12);
  v144 = &v137 - v13;
  MEMORY[0x28223BE20](v14);
  v143 = &v137 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v137 - v17;
  v19 = sub_219BF3484();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a2 + 8);
  v145 = *a2;
  v150 = v24;
  v25 = *(a2 + 24);
  v146 = *(a2 + 16);
  v147 = v25;
  LODWORD(v148) = *(a2 + 32);
  (*(v20 + 16))(v23, a1, v19, v21);
  v26 = (*(v20 + 88))(v23, v19);
  if (v26 == *MEMORY[0x277D33DF0])
  {
    (*(v20 + 96))(v23, v19);
    v27 = *v23;
    v28 = *(v27 + 2);

    v29 = sub_219BF4024();
    if (v29)
    {
      v30 = v29;
      v141 = v28;
      v144 = v27;
      v138 = *(v3 + 40);
      v31 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      v32 = swift_allocObject();
      v140 = v30;
      v33 = [v30 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      *(v32 + 16) = v34;
      *(v32 + 24) = v36;
      *(v32 + 32) = v31;
      *(v32 + 40) = 0;
      *(v32 + 48) = 1;
      *(v32 + 56) = 8;
      v37 = v145;
      v38 = v150;
      *(v32 + 64) = v145;
      *(v32 + 72) = v38;
      v39 = v146;
      v40 = v147;
      *(v32 + 80) = v146;
      *(v32 + 88) = v40;
      v41 = v148;
      *(v32 + 96) = v148;
      v139 = v32;
      v42 = v32 | 0x2000000000000006;
      v142 = *(v3 + 32);
      v43 = sub_219BDFA44();
      (*(*(v43 - 8) + 56))(v18, 1, 1, v43);
      v163 = 0;
      v161 = 0u;
      v162 = 0u;
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
      v165 = v138;
      sub_2187B14CC(&v158, &v153, &unk_280EE7DB0, &qword_280EE7DC0);
      if (v154)
      {
        sub_21875F93C(&v153, &v155);
        sub_218F20858(v37, v38, v39, v40, v41);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v45 = qword_280ED32D8;
        v44 = qword_280ED32E0;
        v46 = qword_280ED32E8;

        v150 = v46;
        sub_2188202A8(v44);
        __swift_destroy_boxed_opaque_existential_1(&v155);
      }

      else
      {
        sub_218F20858(v37, v38, v39, v40, v41);
        sub_218745F4C(&v153, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v45 = qword_280ED32D8;
        v44 = qword_280ED32E0;
        v90 = qword_280ED32E8;

        v150 = v90;
        sub_2188202A8(v44);
      }

      v152 = v42;
      v154 = sub_219BDD274();
      v91 = v142;
      *&v153 = v142;
      v92 = v143;
      sub_21992A3F4(v18, v143, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v161, &v155, &qword_280EE33A0, &qword_280EE33B0);
      v93 = (*(v149 + 80) + 24) & ~*(v149 + 80);
      v94 = v18;
      v95 = (v7 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v149 = v94;
      v96 = (v95 + 47) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      *(v97 + 16) = v91;
      sub_2189B4EAC(v92, v97 + v93);
      v98 = v97 + v95;
      v99 = v156;
      *v98 = v155;
      *(v98 + 16) = v99;
      *(v98 + 32) = v157;
      v100 = (v97 + v96);
      v101 = (v97 + ((v96 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v100 = 0;
      v100[1] = 0;
      *v101 = v45;
      v101[1] = v44;
      v101[2] = v150;
      swift_retain_n();

      sub_2188202A8(v44);
      sub_2186CF94C();
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
      v102 = v151;
      sub_219BEB464();

      if (v102)
      {
        sub_218745F4C(&v153, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        swift_unknownObjectRelease();

        sub_2187FABEC(v44);
        sub_218745F4C(&v158, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v161, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v149, &qword_280EE8610, MEMORY[0x277D2DED0]);
      }

      else
      {
        swift_unknownObjectRelease();

        sub_2187FABEC(v44);
        sub_218745F4C(&v158, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v161, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v149, &qword_280EE8610, MEMORY[0x277D2DED0]);
        sub_218745F4C(&v153, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      }
    }

LABEL_19:
  }

  if (v26 == *MEMORY[0x277D33E08])
  {
    (*(v20 + 96))(v23, v19);
    v47 = *v23;
    v48 = *(v47 + 16);

    v49 = sub_219BF46D4();
    v50 = v150;
    if (!v49)
    {
      goto LABEL_19;
    }

    v51 = v49;
    v140 = v48;
    v143 = v47;
    v137 = *(v3 + 40);
    v52 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    v53 = swift_allocObject();
    v139 = v51;
    v54 = [v51 identifier];
    v55 = sub_219BF5414();
    v57 = v56;

    *(v53 + 16) = v55;
    *(v53 + 24) = v57;
    *(v53 + 32) = v52;
    *(v53 + 40) = 0;
    *(v53 + 48) = 1;
    *(v53 + 56) = 4;
    v58 = v145;
    *(v53 + 64) = v145;
    *(v53 + 72) = v50;
    v59 = v146;
    v60 = v50;
    v61 = v147;
    *(v53 + 80) = v146;
    *(v53 + 88) = v61;
    v62 = v148;
    *(v53 + 96) = v148;
    v138 = v53 | 0x2000000000000006;
    v142 = *(v3 + 32);
    v63 = sub_219BDFA44();
    v64 = v144;
    (*(*(v63 - 8) + 56))(v144, 1, 1, v63);
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
    v165 = v137;
    sub_2187B14CC(&v158, &v153, &unk_280EE7DB0, &qword_280EE7DC0);
    if (v154)
    {
      sub_21875F93C(&v153, &v155);
      sub_218F20858(v58, v60, v59, v61, v62);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v66 = qword_280ED32D8;
      v65 = qword_280ED32E0;
      v67 = qword_280ED32E8;

      v150 = v65;
      v148 = v67;
      sub_2188202A8(v65);
      __swift_destroy_boxed_opaque_existential_1(&v155);
    }

    else
    {
      sub_218F20858(v58, v60, v59, v61, v62);
      sub_218745F4C(&v153, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v66 = qword_280ED32D8;
      v105 = qword_280ED32E0;
      v106 = qword_280ED32E8;

      v150 = v105;
      v148 = v106;
      sub_2188202A8(v105);
    }

    v152 = v138;
    v154 = sub_219BDD274();
    v107 = v142;
    *&v153 = v142;
    v108 = v141;
    sub_21992A3F4(v64, v141, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B14CC(&v161, &v155, &qword_280EE33A0, &qword_280EE33B0);
    v109 = (*(v149 + 80) + 24) & ~*(v149 + 80);
    v110 = (v7 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v110 + 47) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    *(v112 + 16) = v107;
    sub_2189B4EAC(v108, v112 + v109);
    v113 = v112 + v110;
    v114 = v156;
    *v113 = v155;
    *(v113 + 16) = v114;
    *(v113 + 32) = v157;
    v115 = (v112 + v111);
    v116 = (v112 + ((v111 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v115 = 0;
    v115[1] = 0;
    v117 = v150;
    *v116 = v66;
    v116[1] = v117;
    v116[2] = v148;
    swift_retain_n();

    sub_2188202A8(v117);
    sub_2186CF94C();
    sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
    v118 = v151;
    sub_219BEB464();
    if (v118)
    {

      sub_218745F4C(&v153, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      swift_unknownObjectRelease();

      sub_2187FABEC(v117);
      sub_218745F4C(&v158, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v161, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v119 = MEMORY[0x277D2DED0];
      v120 = &v165;
LABEL_44:
      sub_21992A460(*(v120 - 32), &qword_280EE8610, v119);
    }

    swift_unknownObjectRelease();

    sub_2187FABEC(v117);
    sub_218745F4C(&v158, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v161, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v121 = MEMORY[0x277D2DED0];
    v122 = &v165;
    goto LABEL_46;
  }

  if (v26 == *MEMORY[0x277D33DF8])
  {
    v144 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 96))(v23, v19);
    v68 = *v23;
    v69 = *(v68 + 16);

    v70 = sub_219BF4BE4();
    if (!v70)
    {
      goto LABEL_19;
    }

    v71 = v70;
    v140 = v69;
    v143 = v68;
    v72 = v3;
    v137 = *(v3 + 40);
    v73 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    v74 = swift_allocObject();
    v139 = v71;
    v75 = [v71 identifier];
    v76 = sub_219BF5414();
    v78 = v77;

    *(v74 + 16) = v76;
    *(v74 + 24) = v78;
    *(v74 + 32) = v73;
    *(v74 + 40) = 0;
    *(v74 + 48) = 1;
    v79 = v145;
    *(v74 + 56) = 7;
    *(v74 + 64) = v79;
    v80 = v150;
    v81 = v146;
    *(v74 + 72) = v150;
    *(v74 + 80) = v81;
    v82 = v147;
    *(v74 + 88) = v147;
    v83 = v148;
    *(v74 + 96) = v148;
    v138 = v74 | 0x2000000000000006;
    v141 = *(v72 + 32);
    v84 = sub_219BDFA44();
    v85 = v142;
    (*(*(v84 - 8) + 56))(v142, 1, 1, v84);
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
    v165 = v137;
    sub_2187B14CC(&v158, &v153, &unk_280EE7DB0, &qword_280EE7DC0);
    if (v154)
    {
      sub_21875F93C(&v153, &v155);
      sub_218F20858(v79, v80, v81, v82, v83);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v87 = qword_280ED32D8;
      v86 = qword_280ED32E0;
      v88 = qword_280ED32E8;

      v150 = v86;
      v148 = v88;
      sub_2188202A8(v86);
      __swift_destroy_boxed_opaque_existential_1(&v155);
    }

    else
    {
      sub_218F20858(v79, v80, v81, v82, v83);
      sub_218745F4C(&v153, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v87 = qword_280ED32D8;
      v123 = qword_280ED32E0;
      v124 = qword_280ED32E8;

      v150 = v123;
      v148 = v124;
      sub_2188202A8(v123);
    }

    v125 = v144;
    v152 = v138;
    v154 = sub_219BDD274();
    v126 = v141;
    *&v153 = v141;
    sub_21992A3F4(v85, v125, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B14CC(&v161, &v155, &qword_280EE33A0, &qword_280EE33B0);
    v127 = (*(v149 + 80) + 24) & ~*(v149 + 80);
    v128 = (v7 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v129 = (v128 + 47) & 0xFFFFFFFFFFFFFFF8;
    v130 = swift_allocObject();
    *(v130 + 16) = v126;
    sub_2189B4EAC(v125, v130 + v127);
    v131 = v130 + v128;
    v132 = v156;
    *v131 = v155;
    *(v131 + 16) = v132;
    *(v131 + 32) = v157;
    v133 = (v130 + v129);
    v134 = (v130 + ((v129 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v133 = 0;
    v133[1] = 0;
    v135 = v150;
    *v134 = v87;
    v134[1] = v135;
    v134[2] = v148;
    swift_retain_n();

    sub_2188202A8(v135);
    sub_2186CF94C();
    sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C);
    v136 = v151;
    sub_219BEB464();
    if (v136)
    {

      sub_218745F4C(&v153, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      swift_unknownObjectRelease();

      sub_2187FABEC(v135);
      sub_218745F4C(&v158, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v161, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v119 = MEMORY[0x277D2DED0];
      v120 = &v164;
      goto LABEL_44;
    }

    swift_unknownObjectRelease();

    sub_2187FABEC(v135);
    sub_218745F4C(&v158, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v161, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v121 = MEMORY[0x277D2DED0];
    v122 = &v164;
LABEL_46:
    sub_21992A460(*(v122 - 32), &qword_280EE8610, v121);
    sub_218745F4C(&v153, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
  }

  if (v26 != *MEMORY[0x277D33E00] && v26 != *MEMORY[0x277D33E18] && v26 != *MEMORY[0x277D33DE8] && v26 != *MEMORY[0x277D33E10])
  {
    v103 = sub_219BF3CB4();
    sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168]);
    swift_allocError();
    (*(*(v103 - 8) + 104))(v104, *MEMORY[0x277D34160], v103);
    swift_willThrow();
  }

  return (*(v20 + 8))(v23, v19);
}