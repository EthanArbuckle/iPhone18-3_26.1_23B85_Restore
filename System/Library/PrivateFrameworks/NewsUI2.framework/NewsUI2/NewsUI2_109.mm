void sub_21930EEC4()
{
  if (!qword_280E8D3C0)
  {
    type metadata accessor for TagFeedServiceContext();
    sub_21930EF60(&unk_280EC9720, type metadata accessor for TagFeedServiceContext);
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D3C0);
    }
  }
}

uint64_t sub_21930EF60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21930EFA8()
{
  result = qword_27CC18B68;
  if (!qword_27CC18B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B68);
  }

  return result;
}

void sub_21930EFFC(uint64_t a1, uint64_t a2)
{
  v45 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v6;
LABEL_12:
    v6 = (v9 - 1) & v9;
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v9)) | (v8 << 6);
      v12 = *(*(a1 + 48) + 8 * v11);
      v13 = (*(a1 + 56) + 32 * v11);
      v14 = v13[2];
      v15 = v13[3];
      v16 = *v13;
      v17 = v13[1];

      v18 = sub_21870F700(v16, v17);
      if ((v19 & 1) != 0 && *(a2 + 16))
      {
        v44 = v12;
        v20 = *(*(a2 + 56) + 8 * v18);
        v21 = v14;
        v22 = a2;
        v23 = sub_21870F700(v21, v15);
        if (v24)
        {
          v25 = *(*(a2 + 56) + 8 * v23);
          sub_2186E9518();
          v42 = v25;
          v43 = v20;
          LOBYTE(v25) = sub_219BF6DD4();

          if (v25)
          {

            v26 = 0;
            v27 = v45;
            v28 = v44;
          }

          else
          {
            v27 = v45;
            v28 = v44;
            v26 = v42;
          }

          v29 = *(v27 + 16);
          if (*(v27 + 24) <= v29)
          {
            sub_2194857E4(v29 + 1, 1);
            v27 = v47;
          }

          v45 = v27;
          sub_219BF7AA4();
          sub_219BF5524();
          v30 = sub_219BF7AE4();
          v31 = v45 + 64;
          v32 = -1 << *(v45 + 32);
          v33 = v30 & ~v32;
          v34 = v33 >> 6;
          if (((-1 << v33) & ~*(v45 + 64 + 8 * (v33 >> 6))) == 0)
          {
            v37 = 0;
            v38 = (63 - v32) >> 6;
            a2 = v22;
            v36 = v43;
            while (++v34 != v38 || (v37 & 1) == 0)
            {
              v39 = v34 == v38;
              if (v34 == v38)
              {
                v34 = 0;
              }

              v37 |= v39;
              v40 = *(v31 + 8 * v34);
              if (v40 != -1)
              {
                v35 = __clz(__rbit64(~v40)) + (v34 << 6);
                goto LABEL_32;
              }
            }

            goto LABEL_35;
          }

          v35 = __clz(__rbit64((-1 << v33) & ~*(v45 + 64 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
          a2 = v22;
          v36 = v43;
LABEL_32:
          *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
          *(*(v45 + 48) + 8 * v35) = v28;
          v41 = (*(v45 + 56) + 16 * v35);
          *v41 = v36;
          v41[1] = v26;
          ++*(v45 + 16);
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

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v9 = *(v3 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char **sub_21930F328(void *a1, id a2, char a3)
{
  v6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v7 = &selRef_filteredReasons;
  if (([a2 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = [a2 superfeedConfigOverrideResourceIDs];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = sub_219BF5214();

  if ((a3 & 1) == 0 || (v11 = [a1 alternativeFeedDescriptor]) == 0 || (v12 = v11, v13 = objc_msgSend(v11, sel_backingTag), v12, !v13))
  {
    v22 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    v23 = sub_219BF5414();
    v25 = v24;

    if (*(v10 + 16))
    {
      v26 = sub_21870F700(v23, v25);
      v28 = v27;

      if (v28)
      {
        v21 = *(*(v10 + 56) + 16 * v26);

        return v21;
      }
    }

    else
    {
    }

    v6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v7 = &selRef_filteredReasons;
LABEL_14:
    if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = [v13 identifier];
  v15 = sub_219BF5414();
  v17 = v16;

  if (*(v10 + 16))
  {
    v18 = sub_21870F700(v15, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v10 + 56) + 16 * v18);

      swift_unknownObjectRelease();
      return v21;
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v7 = &selRef_filteredReasons;
LABEL_15:
  v29 = [a1 alternativeFeedDescriptor];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 backingTag];

    v32 = [v31 v7[79]];
    swift_unknownObjectRelease();
    if (v32)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v32 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (v32)
  {
LABEL_18:
    v21 = sub_219BF5414();

    return v21;
  }

  v33 = sub_21930EA30([a1 backingTag], a2);
  if (v34 >= 2)
  {
    v21 = v33;
  }

  else
  {
    v21 = &selRef_filteredReasons;
    if (([a2 v6[238]] & 1) == 0 || (v35 = objc_msgSend(a2, sel_tagFeedLayoutConfigurationResourceId)) == 0)
    {
      sub_21930EC40();
      swift_allocError();
      *v37 = 0;
      v37[1] = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v21;
    }

    v36 = v35;
    v21 = sub_219BF5414();
  }

  swift_unknownObjectRelease();
  return v21;
}

void sub_21930F6D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7NewsUI220TagFeedConfigManagerC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_21930F780()
{
  result = qword_27CC18B70;
  if (!qword_27CC18B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B70);
  }

  return result;
}

unint64_t sub_21930F7D8()
{
  result = qword_27CC18B78;
  if (!qword_27CC18B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B78);
  }

  return result;
}

uint64_t sub_21930FA00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_21930FA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21930FAE4@<X0>(void *a1@<X8>)
{
  v103 = a1;
  sub_2186EB308();
  v100 = *(v1 - 8);
  v101 = v1;
  MEMORY[0x28223BE20](v1);
  v99 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB228();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v93 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FACE4();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v16 = v15;
  v81 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v20 = v19;
  v80 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1584();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2193173B0(v102, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v24 + 32))(v26, v29, v23);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v67 = v103;
      sub_219BEDB14();
      (*(v24 + 8))(v26, v23);
      v68 = *MEMORY[0x277D32D10];
      v69 = sub_219BF0614();
      return (*(*(v69 - 8) + 104))(v67, v68, v69);
    case 2u:
      v50 = v81;
      (*(v81 + 32))(v18, v29, v16);
      v51 = v103;
      sub_219BF07D4();
      (*(v50 + 8))(v18, v16);
      v52 = *MEMORY[0x277D32E10];
      v53 = sub_219BF0614();
      return (*(*(v53 - 8) + 104))(v51, v52, v53);
    case 3u:
      v54 = v29[8];
      v55 = v29[9];
      v56 = v29[6];
      v110[0] = v29[7];
      v110[1] = v54;
      v111[0] = v55;
      *(v111 + 9) = *(v29 + 153);
      v57 = v29[4];
      v58 = v29[5];
      v59 = v29[2];
      v108[1] = v29[3];
      v109[0] = v57;
      v109[1] = v58;
      v109[2] = v56;
      v60 = v29[1];
      v107[0] = *v29;
      v107[1] = v60;
      v108[0] = v59;
      sub_218AB7A30(v108, &v106);
      sub_218AB7A30(v109 + 8, &v105);
      sub_218AB7A30(v110, &v104);

      v61 = v103;
      sub_219BF0D84();
      sub_218C113E0(v107);
      v62 = *MEMORY[0x277D32E08];
      v63 = sub_219BF0614();
      return (*(*(v63 - 8) + 104))(v61, v62, v63);
    case 4u:
      v42 = v82;
      v41 = v83;
      v43 = v79;
      (*(v82 + 32))(v79, v29, v83);
      v39 = v103;
      sub_219BF07D4();
      (*(v42 + 8))(v43, v41);
      v40 = MEMORY[0x277D32DD8];
      goto LABEL_15;
    case 5u:
      v70 = v80;
      (*(v80 + 32))(v22, v29, v20);
      v39 = v103;
      sub_219BF07D4();
      (*(v70 + 8))(v22, v20);
      v40 = MEMORY[0x277D32E18];
      goto LABEL_15;
    case 6u:
      v39 = v103;
      *v103 = *v29;
      v40 = MEMORY[0x277D32DE0];
      goto LABEL_15;
    case 7u:
      v64 = v84;
      v65 = v85;
      v66 = v86;
      (*(v85 + 32))(v84, v29, v86);
      v39 = v103;
      sub_219BF07D4();
      (*(v65 + 8))(v64, v66);
      v40 = MEMORY[0x277D32CF0];
      goto LABEL_15;
    case 8u:
      v74 = v87;
      v75 = v88;
      v76 = v89;
      (*(v88 + 32))(v87, v29, v89);
      v39 = v103;
      sub_219BF07D4();
      (*(v75 + 8))(v74, v76);
      v40 = MEMORY[0x277D32DE8];
      goto LABEL_15;
    case 9u:
      v47 = v90;
      v48 = v91;
      v49 = v92;
      (*(v91 + 32))(v90, v29, v92);
      v39 = v103;
      sub_219BF07D4();
      (*(v48 + 8))(v47, v49);
      v40 = MEMORY[0x277D32D18];
      goto LABEL_15;
    case 0xAu:
      v71 = v93;
      v72 = v94;
      v73 = v95;
      (*(v94 + 32))(v93, v29, v95);
      v39 = v103;
      sub_219BF07D4();
      (*(v72 + 8))(v71, v73);
      v40 = MEMORY[0x277D32DA8];
      goto LABEL_15;
    case 0xBu:
      v36 = v96;
      v37 = v97;
      v38 = v98;
      (*(v97 + 32))(v96, v29, v98);
      v39 = v103;
      sub_219BF07D4();
      (*(v37 + 8))(v36, v38);
      v40 = MEMORY[0x277D32DC0];
      goto LABEL_15;
    case 0xCu:
      v44 = v99;
      v45 = v100;
      v46 = v101;
      (*(v100 + 32))(v99, v29, v101);
      v39 = v103;
      sub_219BF07D4();
      (*(v45 + 8))(v44, v46);
      v40 = MEMORY[0x277D32DF0];
LABEL_15:
      v77 = *v40;
      v78 = sub_219BF0614();
      result = (*(*(v78 - 8) + 104))(v39, v77, v78);
      break;
    default:
      sub_2186F6F00();
      v31 = *(v30 + 48);
      v32 = v103;
      sub_219BF03C4();
      v33 = *MEMORY[0x277D32DB8];
      v34 = sub_219BF0614();
      (*(*(v34 - 8) + 104))(v32, v33, v34);
      result = sub_219317414(v29 + v31, type metadata accessor for MagazineFeedGapLocation);
      break;
  }

  return result;
}

uint64_t sub_219310654()
{
  sub_2186EB308();
  v71 = v0;
  v70 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v69 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v68 = v2;
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v66 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB228();
  v65 = v4;
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v62 = v6;
  v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v59 = v8;
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v56 = v10;
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FACE4();
  v53 = v12;
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v16 = v15;
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v20 = v19;
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1584();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2193173B0(v72, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v24 + 32))(v26, v29, v23);
      v30 = sub_219BF1524();
      (*(v24 + 8))(v26, v23);
      return v30;
    case 2u:
      v40 = v51;
      (*(v51 + 32))(v18, v29, v16);
      v30 = sub_219BF07B4();
      (*(v40 + 8))(v18, v16);
      return v30;
    case 3u:
      v41 = v29[9];
      v74[1] = v29[8];
      *v75 = v41;
      *&v75[9] = *(v29 + 153);
      v42 = v29[5];
      v73[4] = v29[4];
      v73[5] = v42;
      v43 = v29[7];
      v73[6] = v29[6];
      v74[0] = v43;
      v44 = v29[1];
      v73[0] = *v29;
      v45 = v29[2];
      v73[3] = v29[3];
      v73[1] = v44;
      v73[2] = v45;
      v30 = *&v73[0];

      sub_218C113E0(v73);
      return v30;
    case 4u:
      v38 = v52;
      v39 = v53;
      (*(v52 + 32))(v14, v29, v53);
      v30 = sub_219BF07B4();
      (*(v38 + 8))(v14, v39);
      return v30;
    case 5u:
      v46 = v50;
      (*(v50 + 32))(v22, v29, v20);
      v30 = sub_219BF07B4();
      (*(v46 + 8))(v22, v20);
      return v30;
    case 6u:
      v30 = sub_219BE5B24();

      return v30;
    case 7u:
      v32 = v55;
      v33 = *(v55 + 32);
      v34 = v54;
      v35 = v54;
      v36 = v29;
      v37 = v74 + 8;
      goto LABEL_15;
    case 8u:
      v32 = v58;
      v33 = *(v58 + 32);
      v34 = v57;
      v35 = v57;
      v36 = v29;
      v37 = v75;
      goto LABEL_15;
    case 9u:
      v32 = v61;
      v33 = *(v61 + 32);
      v34 = v60;
      v35 = v60;
      v36 = v29;
      v37 = &v75[24];
      goto LABEL_15;
    case 0xAu:
      v32 = v64;
      v33 = *(v64 + 32);
      v34 = v63;
      v35 = v63;
      v36 = v29;
      v37 = &v76;
      goto LABEL_15;
    case 0xBu:
      v32 = v67;
      v33 = *(v67 + 32);
      v34 = v66;
      v35 = v66;
      v36 = v29;
      v37 = &v77;
      goto LABEL_15;
    case 0xCu:
      v32 = v70;
      v33 = *(v70 + 32);
      v34 = v69;
      v35 = v69;
      v36 = v29;
      v37 = &v78;
LABEL_15:
      v47 = *(v37 - 32);
      v33(v35, v36, v47);
      v30 = sub_219BF07B4();
      (*(v32 + 8))(v34, v47);
      break;
    default:
      v30 = *v29;
      sub_2186F6F00();
      sub_219317414(v29 + *(v31 + 48), type metadata accessor for MagazineFeedGapLocation);
      break;
  }

  return v30;
}

uint64_t sub_219310F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2186EFD3C(&qword_280ED5CD8, type metadata accessor for MagazineFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_219310FEC@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v2 = sub_219BF0B74();
  v116 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v114 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v115 = v4;
  v113 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v112 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF04A4();
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v109 = v8;
  v107 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEEAD4();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v102 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB228();
  v103 = v12;
  v101 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v100 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEDB94();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x28223BE20](v14);
  v96 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v97 = v16;
  v95 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v94 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BF0AC4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v91 = v19;
  v89 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v88 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BEDAE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v85 = v22;
  v83 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v82 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BF0F34();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v79 = v25;
  v77 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v76 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF07A4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FACE4();
  v73 = v29;
  v72 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF1094();
  v71 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v36 = v35;
  v70 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v39);
  v41 = &v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219311EF4())
  {
    v42 = sub_219BEAF84();
    v43 = *(*(v42 - 8) + 56);
    v44 = v42;
    v45 = v117;

    return v43(v45, 1, 1, v44);
  }

  else
  {
    v69 = v2;
    v47 = v117;
    sub_2193173B0(v1, v41);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v66 = sub_219BF1584();
        (*(*(v66 - 8) + 8))(v41, v66);
        goto LABEL_17;
      case 2u:
        v50 = v77;
        v51 = v76;
        v52 = v79;
        (*(v77 + 32))(v76, v41, v79);
        v62 = v78;
        sub_219BF07D4();
        sub_219BF0F04();
        v57 = *(v80 + 8);
        v58 = v62;
        v59 = &v113;
        goto LABEL_21;
      case 3u:
      case 6u:
        v48 = type metadata accessor for MagazineFeedModel;
        v49 = v41;
        goto LABEL_15;
      case 4u:
        v63 = v72;
        v64 = v73;
        (*(v72 + 32))(v31, v41, v73);
        sub_219BF07D4();
        sub_219BF0754();
        (*(v74 + 8))(v28, v75);
        return (*(v63 + 8))(v31, v64);
      case 5u:
        v60 = v70;
        (*(v70 + 32))(v38, v41, v36);
        sub_219BF07D4();
        sub_219BF1064();
        (*(v71 + 8))(v34, v32);
        return (*(v60 + 8))(v38, v36);
      case 7u:
        v50 = v83;
        v51 = v82;
        v52 = v85;
        (*(v83 + 32))(v82, v41, v85);
        v61 = v84;
        sub_219BF07D4();
        sub_219BEDA74();
        v57 = *(v86 + 8);
        v58 = v61;
        v59 = &v118;
        goto LABEL_21;
      case 8u:
        v50 = v89;
        v51 = v88;
        v52 = v91;
        (*(v89 + 32))(v88, v41, v91);
        v68 = v90;
        sub_219BF07D4();
        sub_219BF0AB4();
        v57 = *(v92 + 8);
        v58 = v68;
        v59 = &v119;
        goto LABEL_21;
      case 9u:
        v50 = v95;
        v51 = v94;
        v52 = v97;
        (*(v95 + 32))(v94, v41, v97);
        v53 = v96;
        sub_219BF07D4();
        sub_219BEDB84();
        v55 = v98;
        v54 = v99;
        goto LABEL_19;
      case 0xAu:
        v51 = v100;
        v50 = v101;
        v52 = v103;
        (*(v101 + 32))(v100, v41, v103);
        v53 = v102;
        sub_219BF07D4();
        sub_219BEEAC4();
        v55 = v104;
        v54 = v105;
        goto LABEL_19;
      case 0xBu:
        v51 = v106;
        v50 = v107;
        v52 = v109;
        (*(v107 + 32))(v106, v41, v109);
        v53 = v108;
        sub_219BF07D4();
        sub_219BF0454();
        v55 = v110;
        v54 = v111;
LABEL_19:
        (*(v55 + 8))(v53, v54);
        goto LABEL_22;
      case 0xCu:
        v51 = v112;
        v50 = v113;
        v52 = v115;
        (*(v113 + 32))(v112, v41, v115);
        v56 = v114;
        sub_219BF07D4();
        sub_219BF0B54();
        v57 = *(v116 + 8);
        v58 = v56;
        v59 = &v101;
LABEL_21:
        v57(v58, *(v59 - 32));
LABEL_22:
        result = (*(v50 + 8))(v51, v52);
        break;
      default:

        sub_2186F6F00();
        v48 = type metadata accessor for MagazineFeedGapLocation;
        v49 = &v41[*(v65 + 48)];
LABEL_15:
        sub_219317414(v49, v48);
LABEL_17:
        v67 = sub_219BEAF84();
        result = (*(*(v67 - 8) + 56))(v47, 1, 1, v67);
        break;
    }
  }

  return result;
}

uint64_t sub_219311EF4()
{
  v0 = sub_219BEE614();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21930FAE4(v7);
  sub_219BF04E4();
  (*(v5 + 8))(v7, v4);
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D32070])
  {
    (*(v1 + 8))(v3, v0);
    goto LABEL_7;
  }

  (*(v1 + 96))(v3, v0);
  v8 = sub_219BEECB4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 88))(v3, v8);
  v11 = *MEMORY[0x277D32338];
  (*(v9 + 8))(v3, v8);
  if (v10 != v11)
  {
LABEL_7:
    v12 = 0;
    return v12 & 1;
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v12 = sub_219BDC8C4();

  return v12 & 1;
}

uint64_t sub_219312198()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 0xB)
  {
    if (EnumCaseMultiPayload)
    {
      v7 = sub_219BF1584();
      (*(*(v7 - 8) + 8))(v3, v7);
    }

    else
    {

      sub_2186F6F00();
      sub_219317414(&v3[*(v6 + 48)], type metadata accessor for MagazineFeedGapLocation);
    }

    return 0;
  }

  else
  {
    sub_219317414(v3, type metadata accessor for MagazineFeedModel);
    return 1;
  }
}

uint64_t sub_2193122C0()
{
  v1 = v0;
  v2 = sub_219BEDAE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 0xC)
  {
    if (((1 << EnumCaseMultiPayload) & 0x1F3C) != 0)
    {
      sub_219317414(v13, type metadata accessor for MagazineFeedModel);
      v15 = 1;
      return v15 & 1;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v15 = sub_219BE5B54();

      return v15 & 1;
    }

    if (EnumCaseMultiPayload == 7)
    {
      (*(v8 + 32))(v10, v13, v7);
      sub_219BF07D4();
      v15 = sub_219BEDAA4();
      (*(v3 + 8))(v5, v2);
      (*(v8 + 8))(v10, v7);
      return v15 & 1;
    }
  }

  if (EnumCaseMultiPayload)
  {
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(v13, v18);
  }

  else
  {

    sub_2186F6F00();
    sub_219317414(&v13[*(v17 + 48)], type metadata accessor for MagazineFeedGapLocation);
  }

  v15 = 0;
  return v15 & 1;
}

void *sub_2193125B0()
{
  v1 = v0;
  v2 = sub_219BF0B74();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_219317474(0, &qword_27CC19220, MEMORY[0x277D6D5B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v63 - v8;
  v74 = sub_219BE6364();
  v80 = *(v74 - 8);
  v9 = MEMORY[0x28223BE20](v74);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v63 - v11;
  v12 = sub_219BF0F34();
  v78 = *(v12 - 1);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x28223BE20](v15);
  v81 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2B34();
  v76 = *(v17 - 8);
  v77 = v17;
  MEMORY[0x28223BE20](v17);
  v75 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF1094();
  v65 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219317474(0, &unk_280E90A30, MEMORY[0x277D33058], v6);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v63 - v23;
  sub_2186F700C();
  v66 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219311EF4())
  {
    return MEMORY[0x277D84F90];
  }

  sub_2193173B0(v1, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = sub_219BF1584();
      (*(*(v56 - 8) + 8))(v31, v56);
      return MEMORY[0x277D84F90];
    case 2u:
      (*(v82 + 32))(v81, v31, v83);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v78 + 8))(v14, v79);
      sub_219317474(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      v40 = v80;
      v41 = *(v80 + 72);
      v42 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v78 = 2 * v41;
      v72 = v42 + 3 * v41;
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_219C0B8C0;
      v79 = v43;
      swift_unknownObjectRetain();
      sub_219310654();
      v44 = v75;
      sub_219BF2B14();
      sub_219BE62F4();
      v45 = v77;
      v46 = *(v76 + 8);
      v46(v44, v77);
      swift_unknownObjectRetain();
      sub_219310654();
      sub_219BF2B14();
      sub_219BE6344();
      v46(v44, v45);
      sub_219BE6314();
      v47 = v73;
      sub_219BE62E4();
      v48 = v74;
      if ((*(v40 + 48))(v47, 1, v74) == 1)
      {
        (*(v82 + 8))(v81, v83);
        swift_unknownObjectRelease();
        sub_219317538(v47, &qword_27CC19220, MEMORY[0x277D6D5B8]);
        return v79;
      }

      else
      {
        v60 = *(v40 + 32);
        v61 = v63;
        v60(v63, v47, v48);
        v62 = v64;
        (*(v40 + 16))(v64, v61, v48);
        v54 = sub_2191F976C(1uLL, 4, 1, v79);
        swift_unknownObjectRelease();
        (*(v40 + 8))(v61, v48);
        (*(v82 + 8))(v81, v83);
        *(v54 + 16) = 4;
        v60((v54 + v72), v62, v48);
        return v54;
      }

    case 3u:
    case 4u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
      v32 = type metadata accessor for MagazineFeedModel;
      v33 = v31;
      goto LABEL_4;
    case 5u:
      v35 = v26;
      v36 = *(v26 + 32);
      v37 = v66;
      v36(v28, v31, v66);
      sub_219BF07D4();
      sub_219BF1074();
      (*(v65 + 8))(v21, v19);
      v39 = v78;
      v38 = v79;
      if ((*(v78 + 48))(v24, 1, v79) == 1)
      {
        sub_219317538(v24, &unk_280E90A30, MEMORY[0x277D33058]);
        (*(v35 + 8))(v28, v37);
        return MEMORY[0x277D84F90];
      }

      sub_219BF0F14();
      (*(v39 + 8))(v24, v38);
      sub_219317474(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      v83 = v35;
      v82 = 2 * *(v80 + 72);
      v79 = swift_allocObject();
      *(v79 + 1) = xmmword_219C0B8C0;
      swift_unknownObjectRetain();
      sub_219310654();
      v57 = v75;
      sub_219BF2B14();
      sub_219BE62F4();
      v58 = v77;
      v59 = *(v76 + 8);
      v59(v57, v77);
      swift_unknownObjectRetain();
      sub_219310654();
      sub_219BF2B14();
      sub_219BE6344();
      v59(v57, v58);
      sub_219BE6314();
      swift_unknownObjectRelease();
      (*(v83 + 8))(v28, v37);
      result = v79;
      break;
    case 0xCu:
      v50 = v70;
      v49 = v71;
      v51 = v72;
      (*(v71 + 32))(v70, v31, v72);
      v52 = v67;
      sub_219BF07D4();
      v53 = sub_219BF0B44();
      (*(v68 + 8))(v52, v69);
      sub_219317474(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_219C0B8C0;
      sub_219BE6354();
      sub_219BE62D4();
      sub_219BE6304();

      (*(v49 + 8))(v50, v51);
      return v54;
    default:

      sub_2186F6F00();
      v32 = type metadata accessor for MagazineFeedGapLocation;
      v33 = &v31[*(v55 + 48)];
LABEL_4:
      sub_219317414(v33, v32);
      return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21931321C()
{
  v1 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = sub_219BF1584();
      (*(*(v8 - 8) + 8))(v3, v8);
      result = 0;
      break;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      v4 = type metadata accessor for MagazineFeedModel;
      v5 = v3;
      goto LABEL_3;
    default:

      sub_2186F6F00();
      v4 = type metadata accessor for MagazineFeedGapLocation;
      v5 = &v3[*(v7 + 48)];
LABEL_3:
      sub_219317414(v5, v4);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_2193133B0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a1;
  v8 = v5;
  v35 = a5;
  v9 = sub_219BEDAE4();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v8, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 0xC)
  {
    if (((1 << EnumCaseMultiPayload) & 0x1F3C) != 0)
    {
      sub_219317414(v19, type metadata accessor for MagazineFeedModel);
      v21 = *a4;
      v22 = a2(0);
      return (*(*(v22 - 8) + 104))(v35, v21, v22);
    }

    if (EnumCaseMultiPayload == 6)
    {
      v24 = type metadata accessor for MagazineFeedModel;
      v25 = v19;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 7)
    {
      (*(v14 + 32))(v16, v19, v13);
      v26 = sub_219BF07D4();
      v33(v26);
      (*(v32 + 8))(v11, v9);
      return (*(v14 + 8))(v16, v13);
    }
  }

  if (EnumCaseMultiPayload)
  {
    v28 = sub_219BF1584();
    (*(*(v28 - 8) + 8))(v19, v28);
    goto LABEL_12;
  }

  sub_2186F6F00();
  v24 = type metadata accessor for MagazineFeedGapLocation;
  v25 = &v19[*(v27 + 48)];
LABEL_10:
  sub_219317414(v25, v24);
LABEL_12:
  v29 = v35;
  v30 = *v34;
  v31 = a2(0);
  return (*(*(v31 - 8) + 104))(v29, v30, v31);
}

uint64_t sub_21931377C()
{
  v1 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = sub_219BF1584();
      (*(*(v6 - 8) + 8))(v3, v6);
      goto LABEL_3;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      sub_219317414(v3, type metadata accessor for MagazineFeedModel);
LABEL_3:
      result = 0;
      break;
    default:

      sub_2186F6F00();
      sub_219317414(&v3[*(v5 + 48)], type metadata accessor for MagazineFeedGapLocation);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_2193138C4()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 0xB)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = sub_219BF1584();
      (*(*(v12 - 8) + 8))(v7, v12);
    }

    else
    {

      sub_2186F6F00();
      sub_219317414(&v7[*(v11 + 48)], type metadata accessor for MagazineFeedGapLocation);
    }

    return 0;
  }

  else
  {
    sub_219317414(v7, type metadata accessor for MagazineFeedModel);
    sub_21930FAE4(v4);
    v9 = sub_219BF05A4();
    (*(v2 + 8))(v4, v1);
  }

  return v9;
}

uint64_t sub_219313AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v156 = a1;
  sub_2186EB308();
  v145 = *(v17 - 8);
  v146 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v142 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = &v120 - v20;
  sub_2186EB018();
  v141 = v21;
  v140 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v138 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v139 = &v120 - v24;
  sub_2186EB140();
  v137 = v25;
  v136 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v134 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v135 = &v120 - v28;
  sub_2186EFC0C();
  v133 = v29;
  v132 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v129 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v130 = &v120 - v32;
  sub_2186F0758();
  v128 = v33;
  v127 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v125 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v126 = &v120 - v36;
  v37 = sub_219BE59F4();
  v149 = *(v37 - 8);
  v150 = v37;
  MEMORY[0x28223BE20](v37);
  v148 = (&v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = sub_219BE5A04();
  v123 = *(v124 - 8);
  v39 = MEMORY[0x28223BE20](v124);
  v122 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v121 = &v120 - v41;
  v151 = sub_219BF07A4();
  v131 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v152 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FACE4();
  v147 = v43;
  v154 = *(v43 - 8);
  v44 = *(v154 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v144 = &v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v153 = &v120 - v46;
  v157 = a2;
  v158 = a3;
  v159 = a4;
  v160 = a5;
  v161 = a6;
  v162 = a7;
  v163 = a8;
  v164 = a9;
  v47 = sub_219BE57D4();
  v155 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = &v120 - v48;
  sub_2186F700C();
  v51 = v50;
  v52 = *(v50 - 8);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = (&v120 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v57 = &v120 - v56;
  v58 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v58);
  v60 = &v120 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219311EF4();
  result = 0;
  if ((v61 & 1) == 0)
  {
    sub_2193173B0(v9, v60);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v91 = sub_219BF1584();
        (*(*(v91 - 8) + 8))(v60, v91);
        return 0;
      case 2u:
        v65 = v127;
        v66 = v126;
        v67 = v128;
        (*(v127 + 32))(v126, v60, v128);
        v75 = v125;
        (*(v65 + 16))(v125, v66, v67);
        (*(v155 + 16))(v49, v156, v47);
        WitnessTable = swift_getWitnessTable();
        v70 = sub_219877D58(v75, v49, MEMORY[0x277D84FA0], v47, WitnessTable);
        goto LABEL_18;
      case 3u:
      case 6u:
      case 7u:
      case 0xAu:
        v63 = type metadata accessor for MagazineFeedModel;
        v64 = v60;
        goto LABEL_4;
      case 4u:
        v77 = v147;
        v155 = *(v154 + 32);
        v156 = v154 + 32;
        (v155)(v153, v60, v147);
        v157 = MEMORY[0x277D84FA0];
        v78 = v152;
        sub_219BF07D4();
        v79 = sub_219BF0684();
        v80 = *(v131 + 8);
        v81 = v151;
        v80(v78, v151);
        if (v79)
        {
          v82 = v80;
          v83 = v123;
          v84 = v122;
          v85 = v124;
          (*(v123 + 104))(v122, *MEMORY[0x277D31AC0], v124);
          v86 = v121;
          sub_219498044(v121, v84);
          v87 = v83;
          v80 = v82;
          v81 = v151;
          (*(v87 + 8))(v86, v85);
        }

        v88 = sub_219BF0804();
        if (!v89)
        {
          goto LABEL_24;
        }

        if (v88 == 0xD000000000000012 && v89 == 0x8000000219D175F0)
        {
        }

        else
        {
          v96 = sub_219BF78F4();

          if ((v96 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v97 = v80;
        v98 = v123;
        v99 = v122;
        v100 = v124;
        (*(v123 + 104))(v122, *MEMORY[0x277D31A98], v124);
        v101 = v121;
        sub_219498044(v121, v99);
        (*(v98 + 8))(v101, v100);
        v80 = v97;
        v81 = v151;
LABEL_24:
        sub_219BE5A14();
        v102 = v152;
        sub_219BF07D4();
        v103 = sub_219BF06B4();
        v80(v102, v81);
        sub_219317474(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
        v104 = v77;
        v105 = sub_219BEAAD4();
        v106 = *(v105 - 8);
        v107 = *(v106 + 72);
        v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_219C09EC0;
        v110 = v109 + v108;
        v111 = *(v106 + 104);
        v111(v110, *MEMORY[0x277D31B18], v105);
        v111(v110 + v107, *MEMORY[0x277D31B10], v105);
        v113 = v148;
        v112 = v149;
        *v148 = v103;
        v113[1] = v109;
        v113[2] = 0;
        v114 = v150;
        (*(v112 + 104))(v113, *MEMORY[0x277D31A28], v150);
        MEMORY[0x21CEBC780](v113, v157);

        (*(v112 + 8))(v113, v114);
        v116 = v153;
        v115 = v154;
        v117 = v144;
        (*(v154 + 16))(v144, v153, v104);
        v118 = (*(v115 + 80) + 16) & ~*(v115 + 80);
        v119 = swift_allocObject();
        (v155)(v119 + v118, v117, v104);
        swift_allocObject();
        v94 = sub_219BE59B4();
        (*(v115 + 8))(v116, v104);
LABEL_19:
        result = v94;
        break;
      case 5u:
        (*(v52 + 32))(v57, v60, v51);
        (*(v52 + 16))(v55, v57, v51);
        (*(v155 + 16))(v49, v156, v47);
        v95 = swift_getWitnessTable();
        v94 = sub_219877D24(v55, v49, v47, v95);
        (*(v52 + 8))(v57, v51);
        goto LABEL_19;
      case 8u:
        v65 = v132;
        v66 = v130;
        v67 = v133;
        (*(v132 + 32))(v130, v60, v133);
        v73 = v129;
        (*(v65 + 16))(v129, v66, v67);
        (*(v155 + 16))(v49, v156, v47);
        v74 = swift_getWitnessTable();
        v70 = sub_219878404(v73, v49, v47, v74);
        goto LABEL_18;
      case 9u:
        v65 = v136;
        v66 = v135;
        v67 = v137;
        (*(v136 + 32))(v135, v60, v137);
        v92 = v134;
        (*(v65 + 16))(v134, v66, v67);
        (*(v155 + 16))(v49, v156, v47);
        v93 = swift_getWitnessTable();
        v70 = sub_219878904(v92, v49, MEMORY[0x277D84FA0], v47, v93);
        goto LABEL_18;
      case 0xBu:
        v65 = v140;
        v66 = v139;
        v67 = v141;
        (*(v140 + 32))(v139, v60, v141);
        v68 = v138;
        (*(v65 + 16))(v138, v66, v67);
        (*(v155 + 16))(v49, v156, v47);
        v69 = swift_getWitnessTable();
        v70 = sub_2198765A8(v68, v49, v47, v69);
        goto LABEL_18;
      case 0xCu:
        v65 = v145;
        v67 = v146;
        v66 = v143;
        (*(v145 + 32))(v143, v60, v146);
        v71 = v142;
        (*(v65 + 16))(v142, v66, v67);
        (*(v155 + 16))(v49, v156, v47);
        v72 = swift_getWitnessTable();
        v70 = sub_219876610(v71, v49, v47, v72);
LABEL_18:
        v94 = v70;
        (*(v65 + 8))(v66, v67);
        goto LABEL_19;
      default:

        sub_2186F6F00();
        v63 = type metadata accessor for MagazineFeedGapLocation;
        v64 = &v60[*(v90 + 48)];
LABEL_4:
        sub_219317414(v64, v63);
        return 0;
    }
  }

  return result;
}

uint64_t sub_219314BA4()
{
  v0 = sub_219BF07A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_219BF4504();
  sub_2186FACE4();
  sub_219BF07D4();
  sub_219BF06B4();
  v7 = *(v1 + 8);
  v7(v6, v0);
  sub_219BF07D4();
  sub_219BF0684();
  v7(v4, v0);
  return sub_219BF44F4();
}

uint64_t sub_219314D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v56 = a5;
  v57 = a8;
  v55 = a4;
  v58 = a2;
  v59 = a3;
  v60 = a6;
  v61 = a7;
  v15 = sub_219BEB334();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v52 - v17;
  v18 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v10, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_4;
      }

      v27 = sub_219BF1584();
      (*(*(v27 - 8) + 8))(v20, v27);
      return 0;
    }

    sub_2186F6F00();
    v49 = type metadata accessor for MagazineFeedGapLocation;
    v50 = &v20[*(v51 + 48)];
LABEL_28:
    sub_219317414(v50, v49);
    return 0;
  }

  if (EnumCaseMultiPayload > 0xC || ((1 << EnumCaseMultiPayload) & 0x1BB0) == 0)
  {
    v49 = type metadata accessor for MagazineFeedModel;
    v50 = v20;
    goto LABEL_28;
  }

LABEL_4:
  v54 = v16;
  sub_219317414(v20, type metadata accessor for MagazineFeedModel);
  sub_218C3DA24();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09BA0;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C12A40;
  v23 = sub_219BE6684();
  v24 = sub_219BE6654();
  if (v24)
  {
    v25 = MEMORY[0x277D6D630];
    v26 = v23;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
  }

  *(v22 + 32) = v24;
  *(v22 + 56) = v26;
  *(v22 + 64) = v25;
  v28 = sub_219BE6634();
  if (v28)
  {
    v29 = MEMORY[0x277D6D630];
    v30 = v23;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v22 + 80) = 0;
    *(v22 + 88) = 0;
  }

  *(v22 + 72) = v28;
  *(v22 + 96) = v30;
  *(v22 + 104) = v29;
  v31 = sub_219BE6614();
  if (v31)
  {
    v32 = MEMORY[0x277D6D630];
    v33 = v23;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(v22 + 120) = 0;
    *(v22 + 128) = 0;
  }

  *(v22 + 112) = v31;
  *(v22 + 136) = v33;
  *(v22 + 144) = v32;
  v34 = sub_219BE6664();
  if (v34)
  {
    v35 = MEMORY[0x277D6D630];
    v36 = v23;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    *(v22 + 160) = 0;
    *(v22 + 168) = 0;
  }

  *(v22 + 152) = v34;
  *(v22 + 176) = v36;
  *(v22 + 184) = v35;
  v58 = a2;
  v59 = a3;
  v60 = v55;
  v61 = v56;
  v62 = a6;
  v63 = a7;
  v64 = v57;
  v65 = a9;
  sub_219BE57D4();
  v37 = v53;
  sub_219BE57C4();
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EFD3C(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  v38 = sub_219BEB284();
  v39 = *(v54 + 8);
  v57 = v15;
  v54 += 8;
  v39(v37, v15);
  sub_219BE57B4();
  v40 = sub_219BE6624();

  sub_21885AB78(v38);
  v56 = v39;
  if (v40)
  {
    v41 = MEMORY[0x277D6D630];
    v42 = v23;
  }

  else
  {
    v42 = 0;
    v41 = 0;
    *(v22 + 200) = 0;
    *(v22 + 208) = 0;
  }

  *(v22 + 192) = v40;
  *(v22 + 216) = v42;
  *(v22 + 224) = v41;
  v43 = v53;
  sub_219BE57C4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186EFD3C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v44 = v57;
  v45 = sub_219BEB284();
  v56(v43, v44);
  sub_219BE57B4();
  v46 = sub_219BE6624();

  sub_21885AB78(v45);
  if (v46)
  {
    v47 = MEMORY[0x277D6D630];
  }

  else
  {
    v23 = 0;
    v47 = 0;
    *(v22 + 240) = 0;
    *(v22 + 248) = 0;
  }

  *(v22 + 232) = v46;
  *(v22 + 256) = v23;
  *(v22 + 264) = v47;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_219315364@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  sub_2186F0758();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BF2B34();
  v75 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219317474(0, &unk_280E90A30, MEMORY[0x277D33058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = (&v66 - v6);
  v7 = sub_219BF1094();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF0F34();
  v78 = *(v80 - 8);
  v9 = MEMORY[0x28223BE20](v80);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v66 - v11;
  sub_2186F700C();
  v73 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v72 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEE614();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF0614();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = v1;
  sub_21930FAE4(v25);
  sub_219BF04E4();
  (*(v23 + 8))(v25, v22);
  if ((*(v19 + 88))(v21, v18) == *MEMORY[0x277D32070])
  {
    (*(v19 + 96))(v21, v18);
    v26 = sub_219BEECB4();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 88))(v21, v26);
    v29 = *MEMORY[0x277D32338];
    (*(v27 + 8))(v21, v26);
    if (v28 == v29)
    {
LABEL_8:
      v34 = 1;
      v35 = v83;
      goto LABEL_9;
    }
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }

  sub_2193173B0(v82, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = v81;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v53 = sub_219BF1584();
      (*(*(v53 - 8) + 8))(v17, v53);
      goto LABEL_8;
    case 2:
      v42 = v71;
      (*(v76 + 32))(v71, v17, v77);
      sub_219317474(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v44 = *(v43 - 8);
      v73 = *(v44 + 72);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      v81 = v46;
      *(v46 + 16) = xmmword_219C09EC0;
      v47 = v46 + v45;
      v48 = v70;
      sub_219BF07D4();
      sub_219BF0F14();
      v78 = *(v78 + 8);
      (v78)(v48, v80);
      sub_219310654();
      v49 = v74;
      sub_219BF2B14();
      sub_219BE5C34();
      v75 = *(v75 + 8);
      (v75)(v49, v79);
      v50 = sub_219BE5C44();
      v72 = *(*(v50 - 8) + 56);
      (v72)(v47, 0, 1, v50);
      sub_219BF07D4();
      sub_219BF0F14();
      (v78)(v48, v80);
      sub_219310654();
      sub_219BF2B14();
      v51 = v73;
      sub_219BE5C04();
      (v75)(v49, v79);
      (v72)(v47 + v51, 0, 1, v50);
      v35 = v83;
      sub_219BE68A4();
      (*(v76 + 8))(v42, v77);
      goto LABEL_16;
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      v32 = type metadata accessor for MagazineFeedModel;
      v33 = v17;
      goto LABEL_7;
    case 5:
      v38 = v73;
      v39 = v72;
      v13[4]();
      v40 = v67;
      sub_219BF07D4();
      sub_219BF1074();
      (*(v68 + 8))(v40, v69);
      v41 = v78;
      if ((*(v78 + 48))(v31, 1, v80) == 1)
      {
        (v13[1])(v39, v38);
        sub_219317538(v31, &unk_280E90A30, MEMORY[0x277D33058]);
        goto LABEL_8;
      }

      v54 = v66;
      (*(v41 + 32))();
      sub_219317474(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v56 = *(v55 - 8);
      v76 = *(v56 + 72);
      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = swift_allocObject();
      v77 = v58;
      *(v58 + 16) = xmmword_219C09EC0;
      v59 = v58 + v57;
      v60 = v54;
      sub_219BF0F14();
      v81 = v13;
      sub_219310654();
      v61 = v74;
      sub_219BF2B14();
      sub_219BE5C34();
      v75 = *(v75 + 8);
      v62 = v79;
      (v75)(v61, v79);
      v63 = sub_219BE5C44();
      v64 = *(*(v63 - 8) + 56);
      v64(v59, 0, 1, v63);
      sub_219BF0F14();
      sub_219310654();
      sub_219BF2B14();
      v65 = v76;
      sub_219BE5C04();
      (v75)(v61, v62);
      v64(v59 + v65, 0, 1, v63);
      v35 = v83;
      sub_219BE68A4();
      (*(v78 + 8))(v60, v80);
      v81[1](v72, v73);
LABEL_16:
      v34 = 0;
      break;
    default:

      sub_2186F6F00();
      v32 = type metadata accessor for MagazineFeedGapLocation;
      v33 = &v17[*(v52 + 48)];
LABEL_7:
      sub_219317414(v33, v32);
      goto LABEL_8;
  }

LABEL_9:
  v36 = sub_219BE6894();
  return (*(*(v36 - 8) + 56))(v35, v34, 1, v36);
}

uint64_t sub_219315F94@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  sub_2186F0758();
  v79 = v2;
  v81 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v78 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219317474(0, &unk_280E90A30, MEMORY[0x277D33058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v71 - v5;
  v6 = sub_219BF1094();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0F34();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v71 - v11;
  sub_2186F700C();
  v80 = v12;
  v84 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v85 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BEE614();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF0614();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v1;
  sub_21930FAE4(v24);
  sub_219BF04E4();
  (*(v22 + 8))(v24, v21);
  if ((*(v18 + 88))(v20, v17) == *MEMORY[0x277D32070])
  {
    (*(v18 + 96))(v20, v17);
    v26 = sub_219BEECB4();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 88))(v20, v26);
    v29 = *MEMORY[0x277D32338];
    (*(v27 + 8))(v20, v26);
    if (v28 == v29)
    {
LABEL_8:
      v35 = 1;
      v36 = v86;
      goto LABEL_9;
    }
  }

  else
  {
    (*(v18 + 8))(v20, v17);
  }

  sub_2193173B0(v25, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = v84;
  v32 = v85;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v61 = sub_219BF1584();
      (*(*(v61 - 8) + 8))(v16, v61);
      goto LABEL_8;
    case 2:
      v46 = v79;
      v47 = v78;
      (*(v81 + 32))();
      sub_219317474(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v49 = *(v48 - 8);
      v84 = *(v49 + 72);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v51 = swift_allocObject();
      v85 = v51;
      *(v51 + 16) = xmmword_219C09EC0;
      v52 = v51 + v50;
      v53 = v77;
      v54 = v46;
      v55 = v47;
      sub_219BF07D4();
      sub_219BF0F14();
      v56 = v83;
      v82 = *(v82 + 8);
      (v82)(v53, v83);
      sub_219310654();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v57 = sub_219BE5C44();
      v58 = *(*(v57 - 8) + 56);
      v58(v52, 0, 1, v57);
      sub_219BF07D4();
      sub_219BF0F14();
      (v82)(v53, v56);
      v59 = v84;
      sub_219BE5C14();
      swift_unknownObjectRelease();
      v58(v52 + v59, 0, 1, v57);
      v36 = v86;
      sub_219BE68A4();
      (*(v81 + 8))(v55, v54);
      goto LABEL_16;
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      v33 = type metadata accessor for MagazineFeedModel;
      v34 = v16;
      goto LABEL_7;
    case 5:
      v39 = v16;
      v40 = v80;
      (*(v84 + 32))(v85, v39, v80);
      v41 = v73;
      sub_219BF07D4();
      v42 = v76;
      sub_219BF1074();
      v43 = v42;
      (*(v74 + 8))(v41, v75);
      v44 = v82;
      v45 = v83;
      if ((*(v82 + 48))(v43, 1, v83) == 1)
      {
        (*(v31 + 8))(v32, v40);
        sub_219317538(v43, &unk_280E90A30, MEMORY[0x277D33058]);
        goto LABEL_8;
      }

      v62 = v72;
      (*(v44 + 32))(v72, v43, v45);
      sub_219317474(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v64 = *(*(v63 - 8) + 72);
      v65 = (*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_219C09EC0;
      v67 = v31;
      v68 = v66 + v65;
      sub_219BF0F14();
      sub_219310654();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v69 = sub_219BE5C44();
      v70 = *(*(v69 - 8) + 56);
      v70(v68, 0, 1, v69);
      sub_219BF0F14();
      sub_219BE5C14();
      swift_unknownObjectRelease();
      v70(v68 + v64, 0, 1, v69);
      v36 = v86;
      sub_219BE68A4();
      (*(v44 + 8))(v62, v83);
      (*(v67 + 8))(v85, v80);
LABEL_16:
      v35 = 0;
      break;
    default:

      sub_2186F6F00();
      v33 = type metadata accessor for MagazineFeedGapLocation;
      v34 = &v16[*(v60 + 48)];
LABEL_7:
      sub_219317414(v34, v33);
      goto LABEL_8;
  }

LABEL_9:
  v37 = sub_219BE6894();
  return (*(*(v37 - 8) + 56))(v36, v35, 1, v37);
}

uint64_t sub_219316AA8@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v60 = sub_219BF0B74();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x277D83D88];
  sub_219317474(0, &qword_280E925F8, MEMORY[0x277D31CE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v52 - v4;
  sub_2186EB308();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF04A4();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v53 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0F34();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219317474(0, &unk_280E90850, MEMORY[0x277D33410], v2);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  sub_2186F0758();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193173B0(v64, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = sub_219BF1584();
      result = (*(*(v49 - 8) + 8))(v26, v49);
      goto LABEL_4;
    case 2u:
      (*(v21 + 32))(v23, v26, v20);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v52 + 8))(v15, v13);
      sub_219BF1624();
      v35 = sub_219BF1634();
      v36 = *(v35 - 8);
      v37 = (*(v36 + 48))(v18, 1, v35);
      v38 = v65;
      if (v37 == 1)
      {
        (*(v21 + 8))(v23, v20);
        result = sub_219317538(v18, &unk_280E90850, MEMORY[0x277D33410]);
        *v38 = 0u;
        *(v38 + 1) = 0u;
        v38[4] = 0;
      }

      else
      {
        v65[3] = v35;
        v38[4] = sub_2186EFD3C(&qword_280E90860, MEMORY[0x277D33410]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
        (*(v36 + 32))(boxed_opaque_existential_1, v18, v35);
        return (*(v21 + 8))(v23, v20);
      }

      return result;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      v27 = type metadata accessor for MagazineFeedModel;
      v28 = v26;
      goto LABEL_3;
    case 0xBu:
      v31 = v56;
      v32 = v53;
      (*(v56 + 32))(v12, v26, v53);
      sub_219BF07D4();
      sub_219BF0404();
      (*(v54 + 8))(v9, v55);
      v33 = sub_219BF09E4();
      v34 = v65;
      v65[3] = v33;
      v34[4] = sub_2186EFD3C(&qword_280E90CA8, MEMORY[0x277D32FA8]);
      __swift_allocate_boxed_opaque_existential_1(v34);
      sub_219BF09D4();
      return (*(v31 + 8))(v12, v32);
    case 0xCu:
      v40 = v61;
      v39 = v62;
      v41 = v59;
      (*(v61 + 32))(v59, v26, v62);
      v42 = v57;
      sub_219BF07D4();
      sub_219BF0B44();
      (*(v58 + 8))(v42, v60);
      v43 = v63;
      sub_219BED9C4();
      v44 = sub_219BED9D4();
      v45 = *(v44 - 8);
      v46 = (*(v45 + 48))(v43, 1, v44);
      v47 = v65;
      if (v46 == 1)
      {
        (*(v40 + 8))(v41, v39);
        result = sub_219317538(v43, &qword_280E925F8, MEMORY[0x277D31CE8]);
        *v47 = 0u;
        *(v47 + 1) = 0u;
        v47[4] = 0;
      }

      else
      {
        v65[3] = v44;
        v47[4] = sub_2186EFD3C(&qword_27CC0D938, MEMORY[0x277D31CE8]);
        v51 = __swift_allocate_boxed_opaque_existential_1(v47);
        (*(v45 + 32))(v51, v43, v44);
        return (*(v40 + 8))(v41, v39);
      }

      return result;
    default:

      sub_2186F6F00();
      v27 = type metadata accessor for MagazineFeedGapLocation;
      v28 = &v26[*(v48 + 48)];
LABEL_3:
      result = sub_219317414(v28, v27);
LABEL_4:
      v30 = v65;
      v65[4] = 0;
      *v30 = 0u;
      *(v30 + 1) = 0u;
      return result;
  }
}

uint64_t sub_2193173B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219317414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219317474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2193174D8()
{
  sub_2186FACE4();

  return sub_219314BA4();
}

uint64_t sub_219317538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219317474(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2193175A8(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    sub_2186F8B0C();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = sub_219BF6DD4();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_2186F8B0C();
      v10 = a4;
      v11 = a2;
      v12 = sub_219BF6DD4();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_219317678(uint64_t a1, uint64_t a2)
{
  sub_2186EB308();
  v133 = *(v4 - 8);
  v134 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v114 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v113 = &v97 - v7;
  sub_2186EB018();
  v131 = *(v8 - 8);
  v132 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v112 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v97 - v11;
  sub_2186EB228();
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v110 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v97 - v15;
  sub_2186EB140();
  v127 = *(v16 - 8);
  v128 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v108 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = &v97 - v19;
  sub_2186EFC0C();
  v125 = *(v20 - 8);
  v126 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v106 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v97 - v23;
  sub_2186EAE28();
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v104 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v97 - v27;
  sub_2186FACE4();
  v121 = *(v28 - 8);
  v122 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v102 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v101 = &v97 - v31;
  sub_2186F0758();
  v119 = *(v32 - 8);
  v120 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v100 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v99 = &v97 - v35;
  sub_2186F700C();
  v117 = *(v36 - 8);
  v118 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v98 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v97 = &v97 - v39;
  v40 = sub_219BF1584();
  v115 = *(v40 - 8);
  v116 = v40;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v97 - v44;
  sub_219318804();
  v47 = v46;
  MEMORY[0x28223BE20](v46);
  v49 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v51 = sub_219310654();
  v53 = v52;
  if (v51 == sub_219310654() && v53 == v54)
  {
  }

  else
  {
    v55 = sub_219BF78F4();

    v56 = 0;
    if ((v55 & 1) == 0)
    {
      return v56 & 1;
    }
  }

  v57 = &v49[*(v47 + 48)];
  sub_2193173B0(v50, v49);
  sub_2193173B0(a2, v57);
  type metadata accessor for MagazineFeedModel(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v95 = v115;
        v94 = v116;
        goto LABEL_46;
      }

      v85 = v115;
      v86 = *(v115 + 32);
      v87 = v49;
      v88 = v116;
      v86(v45, v87, v116);
      v86(v43, v57, v88);
      v56 = MEMORY[0x21CEC82E0](v45, v43);
      v89 = *(v85 + 8);
      v89(v43, v88);
      v89(v45, v88);
      return v56 & 1;
    case 2u:
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v64 = v119;
        v63 = v120;
        v73 = *(v119 + 32);
        v66 = v99;
        v73(v99, v49, v120);
        v67 = v100;
        v73(v100, v57, v63);
        sub_219BF0F34();
        v68 = MEMORY[0x277D33058];
        sub_2186EFD3C(&unk_280E90A40, MEMORY[0x277D33058]);
        v69 = &qword_280E90A50;
        goto LABEL_33;
      }

      v95 = v119;
      v94 = v120;
      goto LABEL_46;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_218C113E0(v49);
        goto LABEL_47;
      }

      v74 = *(v49 + 9);
      v137[8] = *(v49 + 8);
      v138[0] = v74;
      *(v138 + 9) = *(v49 + 153);
      v75 = *(v49 + 5);
      v137[4] = *(v49 + 4);
      v137[5] = v75;
      v76 = *(v49 + 7);
      v137[6] = *(v49 + 6);
      v137[7] = v76;
      v77 = *(v49 + 1);
      v137[0] = *v49;
      v137[1] = v77;
      v78 = *(v49 + 3);
      v137[2] = *(v49 + 2);
      v137[3] = v78;
      v79 = *(v57 + 144);
      v135[8] = *(v57 + 128);
      v136[0] = v79;
      *(v136 + 9) = *(v57 + 153);
      v80 = *(v57 + 80);
      v135[4] = *(v57 + 64);
      v135[5] = v80;
      v81 = *(v57 + 112);
      v135[6] = *(v57 + 96);
      v135[7] = v81;
      v82 = *(v57 + 16);
      v135[0] = *v57;
      v135[1] = v82;
      v83 = *(v57 + 48);
      v135[2] = *(v57 + 32);
      v135[3] = v83;
      if (v137[0] == v135[0])
      {
        v56 = 1;
      }

      else
      {
        v56 = sub_219BF78F4();
      }

      sub_218C113E0(v135);
      sub_218C113E0(v137);
      return v56 & 1;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v64 = v121;
        v63 = v122;
        v70 = *(v121 + 32);
        v66 = v101;
        v70(v101, v49, v122);
        v67 = v102;
        v70(v102, v57, v63);
        sub_219BF07A4();
        v68 = MEMORY[0x277D32F68];
        sub_2186EFD3C(&unk_280E90E90, MEMORY[0x277D32F68]);
        v69 = &qword_280E90EA0;
        goto LABEL_33;
      }

      v95 = v121;
      v94 = v122;
      goto LABEL_46;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v64 = v117;
        v63 = v118;
        v90 = *(v117 + 32);
        v66 = v97;
        v90(v97, v49, v118);
        v67 = v98;
        v90(v98, v57, v63);
        sub_219BF1094();
        v68 = MEMORY[0x277D330F8];
        sub_2186EFD3C(&unk_280E909A0, MEMORY[0x277D330F8]);
        v69 = &qword_280E909B0;
        goto LABEL_33;
      }

      v95 = v117;
      v94 = v118;
      goto LABEL_46;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_219BE5BA4();
        v56 = sub_219BE5B74();

        return v56 & 1;
      }

      goto LABEL_47;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v64 = v123;
        v63 = v124;
        v84 = *(v123 + 32);
        v66 = v103;
        v84(v103, v49, v124);
        v67 = v104;
        v84(v104, v57, v63);
        sub_219BEDAE4();
        v68 = MEMORY[0x277D31D50];
        sub_2186EFD3C(&unk_280E92550, MEMORY[0x277D31D50]);
        v69 = &unk_280E92560;
        goto LABEL_33;
      }

      v95 = v123;
      v94 = v124;
      goto LABEL_46;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v64 = v125;
        v63 = v126;
        v92 = *(v125 + 32);
        v66 = v105;
        v92(v105, v49, v126);
        v67 = v106;
        v92(v106, v57, v63);
        sub_219BF0AC4();
        v68 = MEMORY[0x277D32FB8];
        sub_2186EFD3C(&unk_280E90C90, MEMORY[0x277D32FB8]);
        v69 = &qword_280E90CA0;
        goto LABEL_33;
      }

      v95 = v125;
      v94 = v126;
      goto LABEL_46;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v64 = v127;
        v63 = v128;
        v72 = *(v127 + 32);
        v66 = v107;
        v72(v107, v49, v128);
        v67 = v108;
        v72(v108, v57, v63);
        sub_219BEDB94();
        v68 = MEMORY[0x277D31DE8];
        sub_2186EFD3C(&unk_280E924E0, MEMORY[0x277D31DE8]);
        v69 = &qword_280E924F0;
        goto LABEL_33;
      }

      v95 = v127;
      v94 = v128;
      goto LABEL_46;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v64 = v129;
        v63 = v130;
        v91 = *(v129 + 32);
        v66 = v109;
        v91(v109, v49, v130);
        v67 = v110;
        v91(v110, v57, v63);
        sub_219BEEAD4();
        v68 = MEMORY[0x277D32260];
        sub_2186EFD3C(&qword_280E91968, MEMORY[0x277D32260]);
        v69 = &unk_280E91970;
        goto LABEL_33;
      }

      v95 = v129;
      v94 = v130;
      goto LABEL_46;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v64 = v131;
        v63 = v132;
        v65 = *(v131 + 32);
        v66 = v111;
        v65(v111, v49, v132);
        v67 = v112;
        v65(v112, v57, v63);
        sub_219BF04A4();
        v68 = MEMORY[0x277D32CE0];
        sub_2186EFD3C(&unk_280E90F10, MEMORY[0x277D32CE0]);
        v69 = &unk_280E90F20;
        goto LABEL_33;
      }

      v95 = v131;
      v94 = v132;
      goto LABEL_46;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v64 = v133;
        v63 = v134;
        v71 = *(v133 + 32);
        v66 = v113;
        v71(v113, v49, v134);
        v67 = v114;
        v71(v114, v57, v63);
        sub_219BF0B74();
        v68 = MEMORY[0x277D32FD0];
        sub_2186EFD3C(&unk_280E90C70, MEMORY[0x277D32FD0]);
        v69 = &unk_280E90C80;
LABEL_33:
        sub_2186EFD3C(v69, v68);
        v56 = sub_219BF07C4();
        v93 = *(v64 + 8);
        v93(v67, v63);
        v93(v66, v63);
        return v56 & 1;
      }

      v95 = v133;
      v94 = v134;
LABEL_46:
      (*(v95 + 8))(v49, v94);
      goto LABEL_47;
    default:
      v59 = *v49;
      v58 = *(v49 + 1);
      sub_2186F6F00();
      v61 = v60;
      v62 = *(v60 + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_219317414(&v49[v62], type metadata accessor for MagazineFeedGapLocation);

LABEL_47:
        sub_219317414(v57, type metadata accessor for MagazineFeedModel);
        v56 = 0;
      }

      else
      {
        if (v59 == *v57 && v58 == *(v57 + 8))
        {
          v56 = 1;
        }

        else
        {
          v56 = sub_219BF78F4();
        }

        sub_219317414(v57 + *(v61 + 48), type metadata accessor for MagazineFeedGapLocation);
        sub_219317414(&v49[v62], type metadata accessor for MagazineFeedGapLocation);
      }

      break;
  }

  return v56 & 1;
}

void sub_219318804()
{
  if (!qword_280ED5BF0[0])
  {
    type metadata accessor for MagazineFeedModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED5BF0);
    }
  }
}

uint64_t sub_219318868@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = _s8ResolvedVMa();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shortcut();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for ShortcutsModel();
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219319444(a1, v15, type metadata accessor for ShortcutsModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2193194AC(v15, v12, type metadata accessor for Shortcut);
    sub_219319444(v12, v9, type metadata accessor for Shortcut);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_219BDD644();
      sub_219319514(a1, type metadata accessor for ShortcutsModel);
      sub_219319514(v12, type metadata accessor for Shortcut);
      type metadata accessor for ShortcutsRouteModel();
      return swift_storeEnumTagMultiPayload();
    }

    sub_2193194AC(v9, v6, _s8ResolvedVMa);
    sub_219318BD4(a2);
    sub_219319514(a1, type metadata accessor for ShortcutsModel);
    sub_219319514(v6, _s8ResolvedVMa);
    v19 = type metadata accessor for Shortcut;
    v18 = v12;
  }

  else
  {
    sub_219319514(a1, type metadata accessor for ShortcutsModel);
    v17 = swift_allocObject();
    *(v17 + 16) = 1;
    *a2 = v17 | 0x3000000000000000;
    type metadata accessor for ShortcutsRouteModel();
    swift_storeEnumTagMultiPayload();
    v18 = v15;
    v19 = type metadata accessor for ShortcutsModel;
  }

  return sub_219319514(v18, v19);
}

uint64_t type metadata accessor for ShortcutsRouteModel()
{
  result = qword_27CC18B88;
  if (!qword_27CC18B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219318BD4@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v2 = _s11SportsEventVMa();
  MEMORY[0x28223BE20](v2 - 8);
  v57 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BDE294();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BDEE04();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s13ResolvedModelOMa();
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  v28 = sub_219BDB954();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219933E74(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v32 = v58;
    sub_219319514(v27, sub_21873F65C);
    sub_219319444(v1, v21, _s13ResolvedModelOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v38 = v52;
          sub_2193194AC(v21, v52, _s3TagVMa);
          swift_unknownObjectRetain();
          sub_219BDD644();
          sub_219319514(v38, _s3TagVMa);
          type metadata accessor for ShortcutsRouteModel();
        }

        else
        {
          sub_2193194AC(v21, v12, _s5IssueVMa);
          v45 = *v12;
          sub_219319514(v12, _s5IssueVMa);
          *v32 = 0;
          *(v32 + 1) = 0;
          *(v32 + 2) = v45;
          type metadata accessor for ShortcutsRouteModel();
          *(v32 + 3) = 0;
          *(v32 + 4) = 0;
          v32[40] = 0;
        }
      }

      else
      {
        sub_2193194AC(v21, v18, _s8HeadlineVMa);
        swift_unknownObjectRetain();
        v41 = v48;
        sub_219BDEDE4();
        v43 = v53;
        v42 = v54;
        v44 = v50;
        (*(v53 + 104))(v50, *MEMORY[0x277D2FF08], v54);
        (*(v29 + 56))(v24, 1, 1, v28);
        sub_219BDD904();
        sub_219319514(v24, sub_21873F65C);
        (*(v43 + 8))(v44, v42);
        (*(v49 + 8))(v41, v51);
        sub_219319514(v18, _s8HeadlineVMa);
        type metadata accessor for ShortcutsRouteModel();
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v39 = v56;
        sub_2193194AC(v21, v56, _s10PuzzleFeedVMa);
        v40 = *v39;
        swift_unknownObjectRetain();
        sub_219319514(v39, _s10PuzzleFeedVMa);
        *v32 = v40;
      }

      else
      {
        (*(v29 + 32))(v32, v21, v28);
      }

      type metadata accessor for ShortcutsRouteModel();
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v34 = v57;
        sub_2193194AC(v21, v57, _s11SportsEventVMa);
        v35 = *v34;
        swift_unknownObjectRetain();
        sub_219319514(v34, _s11SportsEventVMa);
      }

      else
      {
        v46 = v55;
        sub_2193194AC(v21, v55, _s6PuzzleVMa);
        v35 = *v46;
        swift_unknownObjectRetain();
        sub_219319514(v46, _s6PuzzleVMa);
      }

      *v32 = v35;
      type metadata accessor for ShortcutsRouteModel();
    }
  }

  else
  {
    v36 = *(v29 + 32);
    v36(v31, v27, v28);
    v36(v58, v31, v28);
    type metadata accessor for ShortcutsRouteModel();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219319444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193194AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219319514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219319574()
{
  result = sub_219319684();
  if (v1 <= 0x3F)
  {
    result = sub_219BDD944();
    if (v2 <= 0x3F)
    {
      result = sub_219BDD664();
      if (v3 <= 0x3F)
      {
        result = sub_2186D6710(319, &qword_280E8E430);
        if (v4 <= 0x3F)
        {
          result = sub_2186D6710(319, &qword_280E8E130);
          if (v5 <= 0x3F)
          {
            result = sub_2186D6710(319, &qword_280E8DFF0);
            if (v6 <= 0x3F)
            {
              result = sub_219BDB954();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

ValueMetadata *sub_219319684()
{
  result = qword_27CC18B98;
  if (!qword_27CC18B98)
  {
    result = &type metadata for NewsActivity2;
    atomic_store(&type metadata for NewsActivity2, &qword_27CC18B98);
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedRemovalRequest()
{
  result = qword_27CC18BA0;
  if (!qword_27CC18BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219319728()
{
  sub_219BF0BD4();
  if (v0 <= 0x3F)
  {
    sub_2186D0BA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OfflineFeedsManifest.manifest(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219320894(0, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = *v2;
  if (*(v8 + 16) && (v9 = sub_2187539B8(*a1, *(a1 + 8)), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for OfflineFeedManifest(0);
    v14 = *(v13 - 8);
    sub_2187A963C(v12 + *(v14 + 72) * v11, v7, type metadata accessor for OfflineFeedManifest);
    (*(v14 + 56))(v7, 0, 1, v13);
    return sub_218754538(v7, a2, type metadata accessor for OfflineFeedManifest);
  }

  else
  {
    v16 = type metadata accessor for OfflineFeedManifest(0);
    v17 = *(v16 - 8);
    (*(v17 + 56))(v7, 1, 1, v16);
    if (qword_280ED0C20 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v16, qword_280ED0C30);
    sub_2187A963C(v18, a2, type metadata accessor for OfflineFeedManifest);
    result = (*(v17 + 48))(v7, 1, v16);
    if (result != 1)
    {
      return sub_219320AC4(v7, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
    }
  }

  return result;
}

void *sub_219319A28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21947D1C0(*(a1 + 16), 0);
  v4 = sub_2194ABD64(&v6, v3 + 4, v2, a1);
  sub_21892DE98();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

size_t sub_219319B10(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21947D534(a1[2], 0);
  v4 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
  v5 = sub_2194AC24C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_21892DE98();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_219319BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21947D1C0(*(a1 + 16), 0);
  v4 = sub_2194B7E3C(&v6, v3 + 4, v2, a1);
  sub_21892DE98();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

id OfflineFeedsManifest.contentManifest.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_21947D534(*(*v0 + 16), 0);
  v16 = sub_2194AC24C(&v17, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v6, v5);

  sub_21892DE98();
  if (v16 != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
  }

  OfflineFeedManifest.init(_:)(v7, v4);
  v8 = objc_allocWithZone(MEMORY[0x277D30F10]);
  sub_219BDB954();
  v9 = sub_219BF5904();
  v10 = sub_219BF5904();
  v11 = sub_219BF5904();
  v12 = sub_219BF5904();
  v13 = sub_219BF5904();
  v14 = [v8 initWithAssetURLs:v9 assetWrappingKeyIDs:v10 recordIDs:v11 avAssetIDs:v12 avAssetKeyIDs:v13];

  sub_218751370(v4, type metadata accessor for OfflineFeedManifest);
  return v14;
}

uint64_t sub_219319EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0204();
  v78 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v65 - v8;
  sub_2193208E8(0, &qword_27CC18C18, &qword_27CC18C20, MEMORY[0x277D32BE0]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v75 = v4;
  v71 = (&v65 - v12);
  v72 = v13;
  v70 = a2;
  v14 = 0;
  v67 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v65 = (v18 + 63) >> 6;
  v66 = v16;
  v74 = v78 + 16;
  v76 = (v78 + 32);
  v69 = (v78 + 8);
  v21 = &qword_27CC18C20;
  v68 = v7;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = v22 | (v14 << 6);
LABEL_16:
    v29 = (*(v67 + 48) + 16 * v24);
    v30 = *v29;
    v31 = v29[1];
    v33 = v77;
    v32 = v78;
    v34 = v75;
    (*(v78 + 16))(v77, *(v67 + 56) + *(v78 + 72) * v24, v75);
    sub_219320B20(0, v21, MEMORY[0x277D32BE0]);
    v36 = v35;
    v37 = *(v35 + 48);
    v38 = v72;
    *v72 = v30;
    *(v38 + 1) = v31;
    v39 = *(v32 + 32);
    v40 = v38;
    v39(&v38[v37], v33, v34);
    (*(*(v36 - 8) + 56))(v40, 0, 1, v36);

LABEL_17:
    v41 = MEMORY[0x277D32BE0];
    v42 = v40;
    v43 = v71;
    sub_219320B90(v42, v71, &qword_27CC18C18, v21, MEMORY[0x277D32BE0]);
    v44 = v21;
    sub_219320B20(0, v21, v41);
    v45 = (*(*(v36 - 8) + 48))(v43, 1, v36);
    v73 = v45 == 1;
    if (v45 == 1)
    {
      return v73;
    }

    v46 = v23;
    v47 = *(v36 + 48);
    v48 = v43;
    v49 = *v43;
    v50 = v43[1];
    v51 = v75;
    v52 = v68;
    (*v76)(v68, v48 + v47, v75);
    v53 = v49;
    v54 = v70;
    v55 = sub_21870F700(v53, v50);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      (*v69)(v52, v51);
      return 0;
    }

    v58 = v78;
    v59 = *(v54 + 56) + *(v78 + 72) * v55;
    v60 = v77;
    (*(v78 + 16))(v77, v59, v51);
    sub_2187A958C(&qword_27CC0DD78, MEMORY[0x277D32BE0]);
    v61 = sub_219BF53A4();
    v62 = *(v58 + 8);
    v62(v60, v51);
    result = (v62)(v52, v51);
    v21 = v44;
    v20 = v46;
    if ((v61 & 1) == 0)
    {
      return v73;
    }
  }

  if (v65 <= v14 + 1)
  {
    v25 = v14 + 1;
  }

  else
  {
    v25 = v65;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v27 >= v65)
    {
      sub_219320B20(0, v21, MEMORY[0x277D32BE0]);
      v36 = v63;
      v64 = v72;
      (*(*(v63 - 8) + 56))(v72, 1, 1, v63);
      v23 = 0;
      v14 = v26;
      v40 = v64;
      goto LABEL_17;
    }

    v28 = *(v66 + 8 * v27);
    ++v14;
    if (v28)
    {
      v23 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v14 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931A484(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v78 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v65 - v8;
  sub_2193208E8(0, &qword_27CC10CC8, &qword_280E8F8D8, MEMORY[0x277D32720]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v75 = v4;
  v71 = (&v65 - v12);
  v72 = v13;
  v70 = a2;
  v14 = 0;
  v67 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v65 = (v18 + 63) >> 6;
  v66 = v16;
  v74 = v78 + 16;
  v76 = (v78 + 32);
  v69 = (v78 + 8);
  v21 = &qword_280E8F8D8;
  v68 = v7;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = v22 | (v14 << 6);
LABEL_16:
    v29 = (*(v67 + 48) + 16 * v24);
    v30 = *v29;
    v31 = v29[1];
    v33 = v77;
    v32 = v78;
    v34 = v75;
    (*(v78 + 16))(v77, *(v67 + 56) + *(v78 + 72) * v24, v75);
    sub_219320B20(0, v21, MEMORY[0x277D32720]);
    v36 = v35;
    v37 = *(v35 + 48);
    v38 = v72;
    *v72 = v30;
    *(v38 + 1) = v31;
    v39 = *(v32 + 32);
    v40 = v38;
    v39(&v38[v37], v33, v34);
    (*(*(v36 - 8) + 56))(v40, 0, 1, v36);

LABEL_17:
    v41 = MEMORY[0x277D32720];
    v42 = v40;
    v43 = v71;
    sub_219320B90(v42, v71, &qword_27CC10CC8, v21, MEMORY[0x277D32720]);
    v44 = v21;
    sub_219320B20(0, v21, v41);
    v45 = (*(*(v36 - 8) + 48))(v43, 1, v36);
    v73 = v45 == 1;
    if (v45 == 1)
    {
      return v73;
    }

    v46 = v23;
    v47 = *(v36 + 48);
    v48 = v43;
    v49 = *v43;
    v50 = v43[1];
    v51 = v75;
    v52 = v68;
    (*v76)(v68, v48 + v47, v75);
    v53 = v49;
    v54 = v70;
    v55 = sub_21870F700(v53, v50);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      (*v69)(v52, v51);
      return 0;
    }

    v58 = v78;
    v59 = *(v54 + 56) + *(v78 + 72) * v55;
    v60 = v77;
    (*(v78 + 16))(v77, v59, v51);
    sub_2187A958C(&qword_27CC10CD8, MEMORY[0x277D32720]);
    v61 = sub_219BF53A4();
    v62 = *(v58 + 8);
    v62(v60, v51);
    result = (v62)(v52, v51);
    v21 = v44;
    v20 = v46;
    if ((v61 & 1) == 0)
    {
      return v73;
    }
  }

  if (v65 <= v14 + 1)
  {
    v25 = v14 + 1;
  }

  else
  {
    v25 = v65;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v27 >= v65)
    {
      sub_219320B20(0, v21, MEMORY[0x277D32720]);
      v36 = v63;
      v64 = v72;
      (*(*(v63 - 8) + 56))(v72, 1, 1, v63);
      v23 = 0;
      v14 = v26;
      v40 = v64;
      goto LABEL_17;
    }

    v28 = *(v66 + 8 * v27);
    ++v14;
    if (v28)
    {
      v23 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v14 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_21931AA0C(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v55 - v7;
  sub_2193208E8(0, &qword_27CC18BC0, &qword_27CC18BC8, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  if (a1 == a2)
  {
    v62 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v59 = a2;
    v60 = (&v55 - v12);
    v13 = 0;
    v58 = a1;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v56 = (v17 + 63) >> 6;
    v57 = v15;
    v20 = &qword_27CC18BC8;
    v21 = MEMORY[0x277D837D0];
    while (v19)
    {
      v22 = __clz(__rbit64(v19));
      v23 = (v19 - 1) & v19;
      v24 = v22 | (v13 << 6);
LABEL_16:
      v29 = (*(v58 + 48) + 16 * v24);
      v30 = *v29;
      v31 = v29[1];
      v32 = v63;
      sub_2187A963C(*(v58 + 56) + *(v64 + 72) * v24, v63, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      sub_219320B20(0, v20, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v34 = v33;
      v35 = *(v33 + 48);
      *v10 = v30;
      v10[1] = v31;
      sub_218754538(v32, v10 + v35, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      (*(*(v34 - 8) + 56))(v10, 0, 1, v34);

LABEL_17:
      v36 = v60;
      sub_219320B90(v10, v60, &qword_27CC18BC0, v20, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      sub_219320B20(0, v20, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v37 = (*(*(v34 - 8) + 48))(v36, 1, v34);
      v62 = v37 == 1;
      if (v37 == 1)
      {
        return;
      }

      v38 = v23;
      v39 = v21;
      v40 = v20;
      v41 = v10;
      v42 = *(v34 + 48);
      v43 = v36;
      v44 = *v36;
      v45 = v36[1];
      sub_218754538(v43 + v42, v5, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v46 = v44;
      v47 = v59;
      v48 = v5;
      v49 = sub_21870F700(v46, v45);
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        sub_218751370(v48, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
        goto LABEL_24;
      }

      v52 = v63;
      sub_2187A963C(*(v47 + 56) + *(v64 + 72) * v49, v63, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      sub_2187A958C(&qword_27CC18BD0, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v53 = sub_219BF53A4();
      sub_218751370(v52, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      sub_218751370(v48, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v5 = v48;
      v10 = v41;
      v20 = v40;
      v21 = v39;
      v19 = v38;
      if ((v53 & 1) == 0)
      {
        return;
      }
    }

    if (v56 <= v13 + 1)
    {
      v25 = v13 + 1;
    }

    else
    {
      v25 = v56;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v27 >= v56)
      {
        sub_219320B20(0, v20, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
        v34 = v54;
        (*(*(v54 - 8) + 56))(v10, 1, 1, v54);
        v23 = 0;
        v13 = v26;
        goto LABEL_17;
      }

      v28 = *(v57 + 8 * v27);
      ++v13;
      if (v28)
      {
        v23 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v13 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v62 = 0;
  }
}

uint64_t sub_21931AF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  v63 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - v8;
  sub_2193208E8(0, &qword_27CC18BE8, &qword_27CC18BF0, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v10);
  v60 = (&v56 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v58 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v56 = (v19 + 63) >> 6;
  v57 = v17;
  v22 = &qword_27CC18BF0;
  v23 = MEMORY[0x277D837D0];
  v59 = v7;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v25 = (v21 - 1) & v21;
    v26 = v24 | (v15 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v26);
    v32 = *v31;
    v33 = v31[1];
    v34 = v62;
    sub_2187A963C(*(v58 + 56) + *(v63 + 72) * v26, v62, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    sub_219320B20(0, v22, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    v36 = v35;
    v37 = *(v35 + 48);
    *v12 = v32;
    v12[1] = v33;
    sub_218754538(v34, v12 + v37, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    (*(*(v36 - 8) + 56))(v12, 0, 1, v36);

LABEL_17:
    v38 = v60;
    sub_219320B90(v12, v60, &qword_27CC18BE8, v22, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    sub_219320B20(0, v22, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    v39 = (*(*(v36 - 8) + 48))(v38, 1, v36);
    v61 = v39 == 1;
    if (v39 == 1)
    {
      return v61;
    }

    v40 = v25;
    v41 = v23;
    v42 = v22;
    v43 = v12;
    v44 = *(v36 + 48);
    v46 = *v38;
    v45 = v38[1];
    v47 = v38 + v44;
    v48 = v59;
    sub_218754538(v47, v59, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    v49 = sub_21870F700(v46, v45);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      sub_218751370(v48, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
      return 0;
    }

    v52 = *(a2 + 56) + *(v63 + 72) * v49;
    v53 = v62;
    sub_2187A963C(v52, v62, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    v54 = sub_2198C7950();
    sub_218751370(v53, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    result = sub_218751370(v48, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    v12 = v43;
    v22 = v42;
    v23 = v41;
    v21 = v40;
    if ((v54 & 1) == 0)
    {
      return v61;
    }
  }

  if (v56 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v56;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v29 >= v56)
    {
      sub_219320B20(0, v22, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
      v36 = v55;
      (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
      v25 = 0;
      v15 = v28;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v15;
    if (v30)
    {
      v25 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v15 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931B478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIcon();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219320894(0, qword_280EDEA48, type metadata accessor for ShortcutIcon);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v70 - v8;
  sub_2193209F4(0, &qword_27CC10AA0, qword_280EDEA48, type metadata accessor for ShortcutIcon);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = type metadata accessor for ShortcutCategory();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v84 = (&v70 - v17);
  MEMORY[0x28223BE20](v16);
  v79 = &v70 - v18;
  sub_2193208E8(0, &qword_27CC18C00, &qword_27CC18C08, type metadata accessor for ShortcutCategory);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v82 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v20);
  v81 = (&v70 - v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v24 = 0;
  v75 = a1;
  v76 = a2;
  v25 = *(a1 + 64);
  v72 = a1 + 64;
  v73 = v9;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v71 = (v26 + 63) >> 6;
  v77 = v4;
  v78 = (v5 + 48);
  while (v28)
  {
    v83 = (v28 - 1) & v28;
    v31 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_19:
    v37 = (*(v75 + 48) + 16 * v31);
    v39 = *v37;
    v38 = v37[1];
    v40 = v79;
    sub_2187A963C(*(v75 + 56) + *(v85 + 72) * v31, v79, type metadata accessor for ShortcutCategory);
    sub_219320B20(0, &qword_27CC18C08, type metadata accessor for ShortcutCategory);
    v42 = v41;
    v43 = *(v41 + 48);
    v44 = v82;
    *v82 = v39;
    v44[1] = v38;
    v45 = v40;
    v34 = v44;
    sub_218754538(v45, v44 + v43, type metadata accessor for ShortcutCategory);
    (*(*(v42 - 8) + 56))(v34, 0, 1, v42);

LABEL_20:
    v46 = v34;
    v47 = v81;
    sub_219320B90(v46, v81, &qword_27CC18C00, &qword_27CC18C08, type metadata accessor for ShortcutCategory);
    sub_219320B20(0, &qword_27CC18C08, type metadata accessor for ShortcutCategory);
    v48 = (*(*(v42 - 8) + 48))(v47, 1, v42);
    v49 = v48 == 1;
    if (v48 == 1)
    {
      return v49;
    }

    v50 = *(v42 + 48);
    v51 = *v47;
    v52 = v47[1];
    v53 = v84;
    sub_218754538(v47 + v50, v84, type metadata accessor for ShortcutCategory);
    v54 = sub_21870F700(v51, v52);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_37;
    }

    v57 = *(a2 + 56) + *(v85 + 72) * v54;
    v58 = v87;
    sub_2187A963C(v57, v87, type metadata accessor for ShortcutCategory);
    if ((*v58 != *v53 || v58[1] != v53[1]) && (sub_219BF78F4() & 1) == 0 || (v87[2] != v53[2] || v87[3] != v53[3]) && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_36;
    }

    v59 = *(v86 + 24);
    v60 = *(v80 + 48);
    sub_219320A58(v87 + v59, v12, qword_280EDEA48, type metadata accessor for ShortcutIcon);
    sub_219320A58(v53 + v59, &v12[v60], qword_280EDEA48, type metadata accessor for ShortcutIcon);
    v61 = v77;
    v62 = *v78;
    if ((*v78)(v12, 1, v77) == 1)
    {
      if (v62(&v12[v60], 1, v61) != 1)
      {
        goto LABEL_35;
      }

      sub_219320AC4(v12, qword_280EDEA48, type metadata accessor for ShortcutIcon);
      a2 = v76;
    }

    else
    {
      v63 = v49;
      v64 = v12;
      v65 = v12;
      v66 = v73;
      sub_219320A58(v64, v73, qword_280EDEA48, type metadata accessor for ShortcutIcon);
      if (v62((v65 + v60), 1, v61) == 1)
      {
        sub_218751370(v66, type metadata accessor for ShortcutIcon);
        v12 = v65;
        v53 = v84;
LABEL_35:
        sub_219320944(v12, &qword_27CC10AA0, qword_280EDEA48, type metadata accessor for ShortcutIcon);
LABEL_36:
        sub_218751370(v87, type metadata accessor for ShortcutCategory);
LABEL_37:
        sub_218751370(v53, type metadata accessor for ShortcutCategory);
        return 0;
      }

      v67 = v74;
      sub_218754538(v65 + v60, v74, type metadata accessor for ShortcutIcon);
      v68 = _s7NewsUI212ShortcutIconO2eeoiySbAC_ACtFZ_0(v66, v67);
      sub_218751370(v67, type metadata accessor for ShortcutIcon);
      sub_218751370(v66, type metadata accessor for ShortcutIcon);
      sub_219320AC4(v65, qword_280EDEA48, type metadata accessor for ShortcutIcon);
      v12 = v65;
      v53 = v84;
      a2 = v76;
      v49 = v63;
      if (!v68)
      {
        goto LABEL_36;
      }
    }

    v29 = v87;
    v30 = _s7NewsUI212ShortcutIconO2eeoiySbAC_ACtFZ_0(v87 + *(v86 + 28), v53 + *(v86 + 28));
    sub_218751370(v29, type metadata accessor for ShortcutCategory);
    result = sub_218751370(v53, type metadata accessor for ShortcutCategory);
    v28 = v83;
    if (!v30)
    {
      return v49;
    }
  }

  if (v71 <= v24 + 1)
  {
    v32 = v24 + 1;
  }

  else
  {
    v32 = v71;
  }

  v33 = v32 - 1;
  v34 = v82;
  while (1)
  {
    v35 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v35 >= v71)
    {
      sub_219320B20(0, &qword_27CC18C08, type metadata accessor for ShortcutCategory);
      v42 = v69;
      (*(*(v69 - 8) + 56))(v34, 1, 1, v69);
      v83 = 0;
      v24 = v33;
      goto LABEL_20;
    }

    v36 = *(v72 + 8 * v35);
    ++v24;
    if (v36)
    {
      v83 = (v36 - 1) & v36;
      v31 = __clz(__rbit64(v36)) | (v35 << 6);
      v24 = v35;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931BD74(uint64_t a1, uint64_t a2)
{
  v85 = sub_219BEF814();
  v4 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D32720];
  sub_219320894(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v74 - v9;
  sub_2193209F4(0, &qword_27CC10CD0, &qword_280E912E0, v7);
  v84 = v10;
  MEMORY[0x28223BE20](v10);
  v92 = &v74 - v11;
  v12 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v86 = &v74 - v18;
  sub_2193208E8(0, &qword_280E8F900, &qword_280E8F908, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  result = MEMORY[0x28223BE20](v20);
  v89 = (&v74 - v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v75 = v6;
  v24 = 0;
  v25 = *(a1 + 64);
  v77 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v76 = (v26 + 63) >> 6;
  v80 = (v4 + 48);
  v81 = a2;
  v74 = (v4 + 32);
  v78 = (v4 + 8);
  v79 = a1;
  v29 = v22;
  v88 = v22;
  while (v28)
  {
    v87 = (v28 - 1) & v28;
    v34 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_19:
    v40 = (*(a1 + 48) + 16 * v34);
    v42 = *v40;
    v41 = v40[1];
    v43 = v86;
    sub_2187A963C(*(a1 + 56) + *(v91 + 72) * v34, v86, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    sub_219320B20(0, &qword_280E8F908, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    v45 = v44;
    v46 = *(v44 + 48);
    v47 = v88;
    *v88 = v42;
    v47[1] = v41;
    v48 = v43;
    v37 = v47;
    sub_218754538(v48, v47 + v46, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    (*(*(v45 - 8) + 56))(v37, 0, 1, v45);

LABEL_20:
    v49 = v89;
    sub_219320B90(v37, v89, &qword_280E8F900, &qword_280E8F908, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    sub_219320B20(0, &qword_280E8F908, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    v50 = (*(*(v45 - 8) + 48))(v49, 1, v45);
    v30 = v50 == 1;
    if (v50 == 1)
    {
      return v30;
    }

    v51 = *(v45 + 48);
    v52 = *v49;
    v53 = v49[1];
    sub_218754538(v49 + v51, v94, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    v54 = v52;
    v55 = v81;
    v56 = sub_21870F700(v54, v53);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_2187A963C(*(v55 + 56) + *(v91 + 72) * v56, v93, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2187A958C(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v59 = sub_219BEE9F4();
    v60 = v90;
    if ((v59 & 1) == 0)
    {
      goto LABEL_36;
    }

    if ((sub_219BEEC64() & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_2186F9548();
    if ((sub_219BEF504() & 1) == 0)
    {
      goto LABEL_36;
    }

    if ((sub_219BEF504() & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_2186F95C4();
    if ((sub_219BEF504() & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_2186ECA28();
    if ((sub_219BEF504() & 1) == 0)
    {
      goto LABEL_36;
    }

    v82 = v30;
    v61 = *(v60 + 40);
    v62 = *(v84 + 48);
    v63 = MEMORY[0x277D32720];
    v64 = v92;
    sub_219320A58(v93 + v61, v92, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_219320A58(v94 + v61, v64 + v62, &qword_280E912E0, v63);
    v65 = *v80;
    v66 = v85;
    if ((*v80)(v64, 1, v85) == 1)
    {
      if (v65(v92 + v62, 1, v66) != 1)
      {
        goto LABEL_35;
      }

      sub_219320AC4(v92, &qword_280E912E0, MEMORY[0x277D32720]);
      v28 = v87;
      v29 = v88;
      v30 = v82;
    }

    else
    {
      v67 = v92;
      sub_219320A58(v92, v83, &qword_280E912E0, MEMORY[0x277D32720]);
      if (v65(v67 + v62, 1, v66) == 1)
      {
        (*v78)(v83, v66);
LABEL_35:
        sub_219320944(v92, &qword_27CC10CD0, &qword_280E912E0, MEMORY[0x277D32720]);
LABEL_36:
        sub_218751370(v93, type metadata accessor for CuratedMagazineFeedGroupKnobs);
LABEL_37:
        sub_218751370(v94, type metadata accessor for CuratedMagazineFeedGroupKnobs);
        return 0;
      }

      v68 = v75;
      v69 = v92;
      v70 = v83;
      (*v74)(v75, v92 + v62, v66);
      sub_2187A958C(&qword_27CC10CD8, MEMORY[0x277D32720]);
      v71 = sub_219BF53A4();
      v72 = *v78;
      (*v78)(v68, v66);
      v29 = v88;
      v72(v70, v66);
      sub_219320AC4(v69, &qword_280E912E0, MEMORY[0x277D32720]);
      v28 = v87;
      v30 = v82;
      if ((v71 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v31 = v93;
    v32 = v94;
    v33 = sub_219BEF504();
    sub_218751370(v31, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    result = sub_218751370(v32, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    a1 = v79;
    if ((v33 & 1) == 0)
    {
      return v30;
    }
  }

  if (v76 <= v24 + 1)
  {
    v35 = v24 + 1;
  }

  else
  {
    v35 = v76;
  }

  v36 = v35 - 1;
  v37 = v29;
  while (1)
  {
    v38 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v38 >= v76)
    {
      sub_219320B20(0, &qword_280E8F908, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      v45 = v73;
      (*(*(v73 - 8) + 56))(v29, 1, 1, v73);
      v87 = 0;
      v24 = v36;
      goto LABEL_20;
    }

    v39 = *(v77 + 8 * v38);
    ++v24;
    if (v39)
    {
      v87 = (v39 - 1) & v39;
      v34 = __clz(__rbit64(v39)) | (v38 << 6);
      v24 = v38;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931C79C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v28 = result;
  while (v8)
  {
    v12 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_14:
    v15 = v12 | (v4 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(v3 + 56) + 24 * v15);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];

    if (!v17)
    {
      return 1;
    }

    v23 = sub_21870F700(v18, v17);
    v25 = v24;

    if ((v25 & 1) == 0 || ((v26 = (*(a2 + 56) + 24 * v23), *v26 == v21) ? (v27 = v20 == v26[1]) : (v27 = 0), !v27 && (sub_219BF78F4() & 1) == 0))
    {

      return 0;
    }

    v11 = sub_21947B1F8(v10, v22);

    v3 = v28;
    v8 = v29;
    result = v17 == 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v29 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931C99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v186 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v187 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v166 - v7;
  v178 = type metadata accessor for OfflineFeedManifest.Group(0);
  v9 = *(v178 - 8);
  v10 = MEMORY[0x28223BE20](v178);
  v177 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v166 - v12;
  v185 = type metadata accessor for OfflineFeedManifest(0);
  v14 = *(v185 - 1);
  v15 = MEMORY[0x28223BE20](v185);
  v188 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v189 = &v166 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v166 - v19;
  sub_2193208E8(0, &qword_280EDA060, &unk_280EDA068, type metadata accessor for OfflineFeedManifest);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v22);
  v27 = (&v166 - v26);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v173 = v9;
  v174 = a2;
  v28 = 0;
  v29 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a1 + 64);
  v33 = (v30 + 63) >> 6;
  v183 = v186 + 16;
  v184 = v8;
  v182 = (v186 + 8);
  v190 = v4;
  v181 = v13;
  v172 = v20;
  v170 = a1;
  v176 = v14;
  v169 = v24;
  v175 = v27;
  v168 = a1 + 64;
  v167 = v33;
  if (v32)
  {
    while (1)
    {
      v171 = (v32 - 1) & v32;
      v34 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_15:
      v39 = (*(a1 + 48) + 16 * v34);
      v40 = *v39;
      v41 = v39[1];
      v42 = *(a1 + 56) + *(v14 + 72) * v34;
      v43 = v172;
      sub_2187A963C(v42, v172, type metadata accessor for OfflineFeedManifest);
      sub_219320B20(0, &unk_280EDA068, type metadata accessor for OfflineFeedManifest);
      v45 = v44;
      v46 = *(v44 + 48);
      *v24 = v40;
      v24[1] = v41;
      sub_218754538(v43, v24 + v46, type metadata accessor for OfflineFeedManifest);
      (*(*(v45 - 8) + 56))(v24, 0, 1, v45);
      sub_218720448(v40, v41);
      v27 = v175;
LABEL_16:
      sub_219320B90(v24, v27, &qword_280EDA060, &unk_280EDA068, type metadata accessor for OfflineFeedManifest);
      sub_219320B20(0, &unk_280EDA068, type metadata accessor for OfflineFeedManifest);
      result = (*(*(v45 - 8) + 48))(v27, 1, v45);
      if (result == 1)
      {
        break;
      }

      v47 = *v27;
      v48 = v27[1];
      v49 = v189;
      sub_218754538(v27 + *(v45 + 48), v189, type metadata accessor for OfflineFeedManifest);
      v50 = v174;
      v51 = sub_2187539B8(v47, v48);
      v53 = v52;
      sub_218720434(v47, v48);
      if ((v53 & 1) == 0)
      {
        goto LABEL_175;
      }

      sub_2187A963C(*(v50 + 56) + *(v176 + 72) * v51, v188, type metadata accessor for OfflineFeedManifest);
      if ((sub_219BDBC94() & 1) == 0)
      {
        goto LABEL_174;
      }

      result = sub_219BDBC94();
      if ((result & 1) == 0)
      {
        goto LABEL_174;
      }

      v54 = v185[6];
      v55 = *(v188 + v54);
      v56 = *(v189 + v54);
      v57 = *(v55 + 16);
      if (v57 != *(v56 + 16))
      {
        goto LABEL_174;
      }

      if (v57 && v55 != v56)
      {
        v58 = 0;
        v59 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v60 = v55 + v59;
        v180 = v56 + v59;
        v166 = v55 + v59;
        while (v58 < *(v55 + 16))
        {
          v61 = *(v173 + 72) * v58;
          result = sub_2187A963C(v60 + v61, v181, type metadata accessor for OfflineFeedManifest.Group);
          v62 = *(v56 + 16);
          v179 = v58;
          v64 = v177;
          v63 = v178;
          if (v58 >= v62)
          {
            goto LABEL_190;
          }

          sub_2187A963C(v180 + v61, v177, type metadata accessor for OfflineFeedManifest.Group);
          if ((sub_219BDBC94() & 1) == 0 || (sub_219BDBC94() & 1) == 0 || ((v65 = v63[6], v66 = &v181[v65], result = *&v181[v65], v67 = *&v181[v65 + 8], v68 = (v64 + v65), *v66 == *v68) ? (v69 = v67 == v68[1]) : (v69 = 0), !v69 && (result = sub_219BF78F4(), (result & 1) == 0)))
          {
LABEL_173:
            sub_218751370(v64, type metadata accessor for OfflineFeedManifest.Group);
            sub_218751370(v181, type metadata accessor for OfflineFeedManifest.Group);
            goto LABEL_174;
          }

          v70 = v63[7];
          v71 = &v181[v70];
          v72 = *&v181[v70 + 8];
          v73 = (v64 + v70);
          v74 = v73[1];
          if (v72)
          {
            if (!v74)
            {
              goto LABEL_173;
            }

            result = *v71;
            if (*v71 != *v73 || v72 != v74)
            {
              result = sub_219BF78F4();
              if ((result & 1) == 0)
              {
                goto LABEL_173;
              }
            }
          }

          else if (v74)
          {
            goto LABEL_173;
          }

          v75 = v63[8];
          v76 = *&v181[v75];
          v77 = *(v64 + v75);
          v78 = *(v76 + 16);
          if (v78 != *(v77 + 16))
          {
            goto LABEL_173;
          }

          if (v78)
          {
            v79 = v76 == v77;
          }

          else
          {
            v79 = 1;
          }

          if (!v79)
          {
            v100 = (v76 + 40);
            v101 = (v77 + 40);
            while (v78)
            {
              result = *(v100 - 1);
              if (result != *(v101 - 1) || *v100 != *v101)
              {
                result = sub_219BF78F4();
                if ((result & 1) == 0)
                {
                  goto LABEL_173;
                }
              }

              v100 += 2;
              v101 += 2;
              if (!--v78)
              {
                goto LABEL_46;
              }
            }

            goto LABEL_179;
          }

LABEL_46:
          v80 = v63[9];
          v81 = *&v181[v80];
          v82 = *(v64 + v80);
          v83 = *(v81 + 16);
          if (v83 != *(v82 + 16))
          {
            goto LABEL_173;
          }

          if (v83)
          {
            v84 = v81 == v82;
          }

          else
          {
            v84 = 1;
          }

          if (!v84)
          {
            v103 = (v81 + 40);
            v104 = (v82 + 40);
            while (v83)
            {
              result = *(v103 - 1);
              if (result != *(v104 - 1) || *v103 != *v104)
              {
                result = sub_219BF78F4();
                if ((result & 1) == 0)
                {
                  goto LABEL_173;
                }
              }

              v103 += 2;
              v104 += 2;
              if (!--v83)
              {
                goto LABEL_52;
              }
            }

            goto LABEL_183;
          }

LABEL_52:
          v85 = v63[10];
          v86 = *&v181[v85];
          v87 = *(v64 + v85);
          v88 = *(v86 + 16);
          if (v88 != *(v87 + 16))
          {
            goto LABEL_173;
          }

          if (v88)
          {
            v89 = v86 == v87;
          }

          else
          {
            v89 = 1;
          }

          if (!v89)
          {
            v106 = (v86 + 40);
            v107 = (v87 + 40);
            while (v88)
            {
              result = *(v106 - 1);
              if (result != *(v107 - 1) || *v106 != *v107)
              {
                result = sub_219BF78F4();
                if ((result & 1) == 0)
                {
                  goto LABEL_173;
                }
              }

              v106 += 2;
              v107 += 2;
              if (!--v88)
              {
                goto LABEL_58;
              }
            }

            goto LABEL_185;
          }

LABEL_58:
          v90 = v63[11];
          v91 = *&v181[v90];
          v92 = *(v64 + v90);
          v93 = *(v91 + 16);
          if (v93 != *(v92 + 16))
          {
            goto LABEL_173;
          }

          if (v93)
          {
            v94 = v91 == v92;
          }

          else
          {
            v94 = 1;
          }

          if (!v94)
          {
            v109 = (v91 + 40);
            v110 = (v92 + 40);
            while (v93)
            {
              result = *(v109 - 1);
              if (result != *(v110 - 1) || *v109 != *v110)
              {
                result = sub_219BF78F4();
                if ((result & 1) == 0)
                {
                  goto LABEL_173;
                }
              }

              v109 += 2;
              v110 += 2;
              if (!--v93)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_187;
          }

LABEL_64:
          v95 = v63[12];
          v96 = *&v181[v95];
          v97 = *(v64 + v95);
          v98 = *(v96 + 16);
          if (v98 != *(v97 + 16))
          {
            goto LABEL_173;
          }

          if (v98)
          {
            v99 = v96 == v97;
          }

          else
          {
            v99 = 1;
          }

          if (!v99)
          {
            v112 = (v96 + 40);
            v113 = (v97 + 40);
            while (v98)
            {
              result = *(v112 - 1);
              if (result != *(v113 - 1) || *v112 != *v113)
              {
                result = sub_219BF78F4();
                if ((result & 1) == 0)
                {
                  goto LABEL_173;
                }
              }

              v112 += 2;
              v113 += 2;
              if (!--v98)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_188;
          }

LABEL_70:
          v58 = v179 + 1;
          sub_218751370(v64, type metadata accessor for OfflineFeedManifest.Group);
          result = sub_218751370(v181, type metadata accessor for OfflineFeedManifest.Group);
          v60 = v166;
          if (v58 == v57)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_189;
      }

LABEL_112:
      v115 = v185[7];
      v116 = *(v188 + v115);
      v117 = *(v189 + v115);
      v118 = *(v116 + 16);
      if (v118 != *(v117 + 16))
      {
        goto LABEL_174;
      }

      if (v118 && v116 != v117)
      {
        v119 = 0;
        v120 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v179 = v117 + v120;
        v180 = v116 + v120;
        while (v119 < *(v116 + 16))
        {
          v121 = *(v186 + 72) * v119;
          v122 = *(v186 + 16);
          v123 = v184;
          result = v122(v184, v180 + v121, v4);
          if (v119 >= *(v117 + 16))
          {
            goto LABEL_181;
          }

          v124 = v187;
          v122(v187, v179 + v121, v190);
          sub_2187A958C(&qword_280EE9D20, MEMORY[0x277CC9260]);
          v125 = sub_219BF53A4();
          v126 = *v182;
          v127 = v124;
          v4 = v190;
          (*v182)(v127, v190);
          result = (v126)(v123, v4);
          if ((v125 & 1) == 0)
          {
            goto LABEL_174;
          }

          if (v118 == ++v119)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_180;
      }

LABEL_120:
      result = sub_219419F58(*(v188 + v185[8]), *(v189 + v185[8]));
      if ((result & 1) == 0)
      {
        goto LABEL_174;
      }

      v128 = v185[9];
      v129 = *(v188 + v128);
      v130 = *(v189 + v128);
      v131 = *(v129 + 16);
      if (v131 != *(v130 + 16))
      {
        goto LABEL_174;
      }

      if (v131)
      {
        v132 = v129 == v130;
      }

      else
      {
        v132 = 1;
      }

      if (!v132)
      {
        v157 = (v129 + 40);
        v158 = (v130 + 40);
        while (v131)
        {
          result = *(v157 - 1);
          if (result != *(v158 - 1) || *v157 != *v158)
          {
            result = sub_219BF78F4();
            if ((result & 1) == 0)
            {
              goto LABEL_174;
            }
          }

          v157 += 2;
          v158 += 2;
          if (!--v131)
          {
            goto LABEL_127;
          }
        }

        goto LABEL_182;
      }

LABEL_127:
      v133 = v185[10];
      v134 = *(v188 + v133);
      v135 = *(v189 + v133);
      v136 = *(v134 + 16);
      if (v136 != *(v135 + 16))
      {
        goto LABEL_174;
      }

      if (v136)
      {
        v137 = v134 == v135;
      }

      else
      {
        v137 = 1;
      }

      if (!v137)
      {
        v160 = (v134 + 40);
        v161 = (v135 + 40);
        while (v136)
        {
          result = *(v160 - 1);
          if (result != *(v161 - 1) || *v160 != *v161)
          {
            result = sub_219BF78F4();
            if ((result & 1) == 0)
            {
              goto LABEL_174;
            }
          }

          v160 += 2;
          v161 += 2;
          if (!--v136)
          {
            goto LABEL_133;
          }
        }

        goto LABEL_184;
      }

LABEL_133:
      v138 = v185[11];
      v139 = *(v188 + v138);
      v140 = *(v189 + v138);
      v141 = *(v139 + 16);
      if (v141 != *(v140 + 16))
      {
        goto LABEL_174;
      }

      if (v141)
      {
        v142 = v139 == v140;
      }

      else
      {
        v142 = 1;
      }

      if (!v142)
      {
        v163 = (v139 + 40);
        v164 = (v140 + 40);
        while (v141)
        {
          result = *(v163 - 1);
          if (result != *(v164 - 1) || *v163 != *v164)
          {
            result = sub_219BF78F4();
            if ((result & 1) == 0)
            {
              goto LABEL_174;
            }
          }

          v163 += 2;
          v164 += 2;
          if (!--v141)
          {
            goto LABEL_139;
          }
        }

        goto LABEL_186;
      }

LABEL_139:
      v143 = v185[12];
      v144 = *(v188 + v143);
      v145 = *(v189 + v143);
      v146 = *(v144 + 16);
      if (v146 != *(v145 + 16))
      {
        goto LABEL_174;
      }

      if (v146 && v144 != v145)
      {
        v147 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v148 = v144 + v147;
        v149 = v145 + v147;
        v180 = *(v186 + 72);
        v150 = *(v186 + 16);
        while (1)
        {
          v151 = v184;
          v150(v184, v148, v4);
          v152 = v187;
          v150(v187, v149, v190);
          sub_2187A958C(&qword_280EE9D20, MEMORY[0x277CC9260]);
          v153 = sub_219BF53A4();
          v154 = *v182;
          v155 = v152;
          v4 = v190;
          (*v182)(v155, v190);
          v154(v151, v4);
          if ((v153 & 1) == 0)
          {
            break;
          }

          v149 += v180;
          v148 += v180;
          if (!--v146)
          {
            goto LABEL_145;
          }
        }

LABEL_174:
        sub_218751370(v188, type metadata accessor for OfflineFeedManifest);
        v49 = v189;
LABEL_175:
        sub_218751370(v49, type metadata accessor for OfflineFeedManifest);
        return 0;
      }

LABEL_145:
      sub_218751370(v188, type metadata accessor for OfflineFeedManifest);
      result = sub_218751370(v189, type metadata accessor for OfflineFeedManifest);
      a1 = v170;
      v32 = v171;
      v27 = v175;
      v14 = v176;
      v24 = v169;
      v29 = v168;
      v33 = v167;
      if (!v171)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v33 <= v28 + 1)
    {
      v35 = v28 + 1;
    }

    else
    {
      v35 = v33;
    }

    v36 = v35 - 1;
    while (1)
    {
      v37 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v37 >= v33)
      {
        sub_219320B20(0, &unk_280EDA068, type metadata accessor for OfflineFeedManifest);
        v45 = v156;
        (*(*(v156 - 8) + 56))(v24, 1, 1, v156);
        v171 = 0;
        v28 = v36;
        goto LABEL_16;
      }

      v38 = *(v29 + 8 * v37);
      ++v28;
      if (v38)
      {
        v171 = (v38 - 1) & v38;
        v34 = __clz(__rbit64(v38)) | (v37 << 6);
        v28 = v37;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
  }

  return result;
}

uint64_t sub_21931D8CC(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for AudioFeedTrack(0);
  v4 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v72 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v61 - v8);
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - v10;
  sub_2193208E8(0, &qword_280E8F920, &qword_280E8F928, type metadata accessor for AudioFeedTrack);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = v15;
  v16 = 0;
  v62 = a1;
  v63 = (&v61 - v14);
  v17 = (&v61 - v14);
  v18 = *(a1 + 64);
  v61 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = &qword_280E8F928;
  v23 = (v19 + 63) >> 6;
  v64 = v23;
  v65 = a2;
  v71 = v4;
  while (v21)
  {
    v70 = (v21 - 1) & v21;
    v27 = __clz(__rbit64(v21)) | (v16 << 6);
LABEL_18:
    v33 = (*(v62 + 48) + 16 * v27);
    v34 = *v33;
    v35 = v33[1];
    v36 = *(v62 + 56) + *(v4 + 72) * v27;
    v37 = v66;
    sub_2187A963C(v36, v66, type metadata accessor for AudioFeedTrack);
    sub_219320B20(0, v22, type metadata accessor for AudioFeedTrack);
    v39 = v38;
    v40 = *(v38 + 48);
    v30 = v68;
    *v68 = v34;
    *(v30 + 8) = v35;
    sub_218754538(v37, v30 + v40, type metadata accessor for AudioFeedTrack);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);

    v17 = v63;
LABEL_19:
    sub_219320B90(v30, v17, &qword_280E8F920, v22, type metadata accessor for AudioFeedTrack);
    v41 = v22;
    sub_219320B20(0, v22, type metadata accessor for AudioFeedTrack);
    v42 = (*(*(v39 - 8) + 48))(v17, 1, v39);
    v69 = v42 == 1;
    if (v42 == 1)
    {
      return v69;
    }

    v43 = *(v39 + 48);
    v44 = *v17;
    v45 = v17[1];
    sub_218754538(v17 + v43, v9, type metadata accessor for AudioFeedTrack);
    v46 = sub_21870F700(v44, v45);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_27;
    }

    v49 = *(a2 + 56) + *(v71 + 72) * v46;
    v50 = v72;
    sub_2187A963C(v49, v72, type metadata accessor for AudioFeedTrack);
    v51 = [*v50 identifier];
    v52 = sub_219BF5414();
    v54 = v53;

    v55 = v9;
    v56 = [*v9 identifier];
    v57 = sub_219BF5414();
    v59 = v58;

    if (v52 == v57 && v54 == v59)
    {
    }

    else
    {
      v24 = sub_219BF78F4();

      if ((v24 & 1) == 0)
      {
        sub_218751370(v72, type metadata accessor for AudioFeedTrack);
        v9 = v55;
LABEL_27:
        sub_218751370(v9, type metadata accessor for AudioFeedTrack);
        return 0;
      }
    }

    v25 = v72;
    v9 = v55;
    v26 = sub_2198DA058((v72 + *(v67 + 32)), (v55 + *(v67 + 32)));
    sub_218751370(v25, type metadata accessor for AudioFeedTrack);
    result = sub_218751370(v55, type metadata accessor for AudioFeedTrack);
    v21 = v70;
    v4 = v71;
    v23 = v64;
    a2 = v65;
    v22 = v41;
    if ((v26 & 1) == 0)
    {
      return v69;
    }
  }

  if (v23 <= v16 + 1)
  {
    v28 = v16 + 1;
  }

  else
  {
    v28 = v23;
  }

  v29 = v28 - 1;
  v30 = v68;
  while (1)
  {
    v31 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v31 >= v23)
    {
      sub_219320B20(0, v22, type metadata accessor for AudioFeedTrack);
      v39 = v60;
      (*(*(v60 - 8) + 56))(v30, 1, 1, v60);
      v70 = 0;
      v16 = v29;
      goto LABEL_19;
    }

    v32 = *(v61 + 8 * v31);
    ++v16;
    if (v32)
    {
      v70 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v16 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931DEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  v63 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - v8;
  sub_2193208E8(0, &qword_27CC18BD8, &qword_27CC18BE0, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v10);
  v60 = (&v56 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v58 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v56 = (v19 + 63) >> 6;
  v57 = v17;
  v22 = &qword_27CC18BE0;
  v23 = MEMORY[0x277D837D0];
  v59 = v7;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v25 = (v21 - 1) & v21;
    v26 = v24 | (v15 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v26);
    v32 = *v31;
    v33 = v31[1];
    v34 = v62;
    sub_2187A963C(*(v58 + 56) + *(v63 + 72) * v26, v62, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    sub_219320B20(0, v22, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    v36 = v35;
    v37 = *(v35 + 48);
    *v12 = v32;
    v12[1] = v33;
    sub_218754538(v34, v12 + v37, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    (*(*(v36 - 8) + 56))(v12, 0, 1, v36);

LABEL_17:
    v38 = v60;
    sub_219320B90(v12, v60, &qword_27CC18BD8, v22, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    sub_219320B20(0, v22, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    v39 = (*(*(v36 - 8) + 48))(v38, 1, v36);
    v61 = v39 == 1;
    if (v39 == 1)
    {
      return v61;
    }

    v40 = v25;
    v41 = v23;
    v42 = v22;
    v43 = v12;
    v44 = *(v36 + 48);
    v46 = *v38;
    v45 = v38[1];
    v47 = v38 + v44;
    v48 = v59;
    sub_218754538(v47, v59, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    v49 = sub_21870F700(v46, v45);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      sub_218751370(v48, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
      return 0;
    }

    v52 = *(a2 + 56) + *(v63 + 72) * v49;
    v53 = v62;
    sub_2187A963C(v52, v62, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    v54 = sub_218E3C928();
    sub_218751370(v53, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    result = sub_218751370(v48, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    v12 = v43;
    v22 = v42;
    v23 = v41;
    v21 = v40;
    if ((v54 & 1) == 0)
    {
      return v61;
    }
  }

  if (v56 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v56;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v29 >= v56)
    {
      sub_219320B20(0, v22, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
      v36 = v55;
      (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
      v25 = 0;
      v15 = v28;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v15;
    if (v30)
    {
      v25 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v15 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21931E3F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_21870F700(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_21947C09C(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21931E560()
{
  result = sub_2194B17A0(MEMORY[0x277D84F90]);
  qword_27CC18BB0 = result;
  return result;
}

NewsUI2::OfflineFeedsManifest __swiftcall OfflineFeedsManifest.init()()
{
  v1 = v0;
  result.manifestsByKind._rawValue = sub_2194B17A0(MEMORY[0x277D84F90]);
  v1->manifestsByKind._rawValue = result.manifestsByKind._rawValue;
  return result;
}

uint64_t static OfflineFeedsManifest.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_27CC084E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CC18BB0;
}

char *OfflineFeedsManifest.manifest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = sub_21947D534(v3, 0);
    v6 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
    v7 = sub_2194AC24C(&v9, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, v2);

    result = sub_21892DE98();
    if (v7 != v3)
    {
      __break(1u);
      return result;
    }

    a1 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  return OfflineFeedManifest.init(_:)(v5, a1);
}

uint64_t OfflineFeedsManifest.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for OfflineFeedManifest(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(*v1 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v12 = a1;
  v9 = sub_21947D534(v8, 0);
  v10 = sub_2194AC24C(&v13, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v8, v7);

  result = sub_21892DE98();
  if (v10 == v8)
  {
    a1 = v12;
LABEL_5:
    OfflineFeedManifest.init(_:)(v9, v6);
    OfflineFeedManifest.shortDescription.getter(a1);
    return sub_218751370(v6, type metadata accessor for OfflineFeedManifest);
  }

  __break(1u);
  return result;
}

uint64_t sub_21931E8D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = sub_219319B10(v5);
  OfflineFeedManifest.init(_:)(v6, v4);
  OfflineFeedManifest.shortDescription.getter(a1);
  return sub_218751370(v4, type metadata accessor for OfflineFeedManifest);
}

uint64_t sub_21931E984()
{
  sub_2193209A0();

  return sub_219BE2324();
}

unint64_t sub_21931E9C0(uint64_t *a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  _s9DataStoreC10CaptureKeyVMa();
  sub_219BE4D74();
  sub_2187A958C(&qword_27CC1ACE0, MEMORY[0x277D34A70]);
  sub_219BF52F4();
  v2 = sub_219BF7AE4();

  return sub_21931F4D8(a1, v2);
}

unint64_t sub_21931EADC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BDC104();
  sub_2187A958C(&qword_280EE9BC8, MEMORY[0x277CC9AF8]);
  sub_219BF52F4();
  sub_218A98884();
  sub_219BF5524();

  v2 = sub_219BF7AE4();

  return sub_21931F754(a1, v2);
}

unint64_t sub_21931EC7C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BDC104();
  sub_2187A958C(&qword_280EE9BC8, MEMORY[0x277CC9AF8]);
  sub_219BF52F4();
  sub_218A9DB94();
  if (*(a1 + *(v2 + 52) + 8))
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  v3 = sub_219BF7AE4();

  return sub_21931FB68(a1, v3);
}

unint64_t sub_21931ED80(void *a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  if (a1[5])
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  v2 = sub_219BF7AE4();

  return sub_21931FDB0(a1, v2);
}

unint64_t sub_21931EECC(uint64_t a1)
{
  v2 = sub_219BF7284();

  return sub_21931FF74(a1, v2);
}

unint64_t sub_21931EF10(uint64_t a1)
{
  sub_219BF7AA4();
  v2 = *(a1 + 16);
  MEMORY[0x21CECE850](v2);
  if (v2)
  {
    v3 = *(sub_219BE4C24() - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_2187A958C(&unk_27CC13250, MEMORY[0x277D34998]);
    do
    {
      sub_219BF52F4();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v6 = sub_219BF7AE4();

  return sub_21932003C(a1, v6);
}

unint64_t sub_21931F048(uint64_t a1)
{
  sub_219BE5854();
  v2 = MEMORY[0x277D6D240];
  sub_2187A958C(&unk_27CC1AAE0, MEMORY[0x277D6D240]);
  v3 = sub_219BF52E4();
  return sub_219320310(a1, v3, MEMORY[0x277D6D240], &qword_27CC18BB8, v2, MEMORY[0x277D6D250]);
}

unint64_t sub_21931F11C(uint64_t a1)
{
  sub_219BE4B94();
  v2 = MEMORY[0x277D34968];
  sub_2187A958C(&qword_27CC1AD10, MEMORY[0x277D34968]);
  v3 = sub_219BF52E4();
  return sub_219320310(a1, v3, MEMORY[0x277D34968], &qword_27CC140B8, v2, MEMORY[0x277D34978]);
}

unint64_t sub_21931F1F0(uint64_t a1)
{
  sub_219BE2CB4();
  v2 = MEMORY[0x277D6CEA0];
  sub_2187A958C(&qword_27CC1ADA0, MEMORY[0x277D6CEA0]);
  v3 = sub_219BF52E4();
  return sub_219320310(a1, v3, MEMORY[0x277D6CEA0], &qword_27CC18C10, v2, MEMORY[0x277D6CEB0]);
}

unint64_t sub_21931F2C4(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  v2 = sub_219BF7AE4();

  return sub_2193204B0(a1, v2);
}

unint64_t sub_21931F330(uint64_t a1)
{
  sub_219BE3514();
  v2 = MEMORY[0x277D31550];
  sub_2187A958C(&qword_280EE66A0, MEMORY[0x277D31550]);
  v3 = sub_219BF52E4();
  return sub_219320310(a1, v3, MEMORY[0x277D31550], &unk_280EE6690, v2, MEMORY[0x277D31568]);
}

unint64_t sub_21931F404(uint64_t a1)
{
  sub_219BF7AA4();
  sub_2191B64BC(v4);
  v2 = sub_219BF7AE4();

  return sub_2193206B0(a1, v2);
}

unint64_t sub_21931F470(char a1)
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](a1 & 1);
  v2 = sub_219BF7AE4();
  return sub_219320810(a1 & 1, v2);
}

unint64_t sub_21931F4D8(uint64_t *a1, uint64_t a2)
{
  v16 = _s9DataStoreC10CaptureKeyVMa();
  MEMORY[0x28223BE20](v16);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2 + 64;
  v19 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return v9;
  }

  v17 = ~v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = *(v5 + 72);
  while (1)
  {
    sub_2187A963C(*(v19 + 48) + v12 * v9, v7, _s9DataStoreC10CaptureKeyVMa);
    v14 = *v7 == v10 && v7[1] == v11;
    if (!v14 && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_219BE4D74();
    sub_2187A958C(&qword_27CC0C300, MEMORY[0x277D34A70]);
    sub_219BF5874();
    sub_219BF5874();
    if (v22 == v20 && v23 == v21)
    {
      break;
    }

    v13 = sub_219BF78F4();

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_4:
    sub_218751370(v7, _s9DataStoreC10CaptureKeyVMa);
    v9 = (v9 + 1) & v17;
    if (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return v9;
    }
  }

LABEL_13:
  sub_218751370(v7, _s9DataStoreC10CaptureKeyVMa);
  return v9;
}

unint64_t sub_21931F754(uint64_t a1, uint64_t a2)
{
  sub_218A98884();
  v23 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_219BDC104();
    v12 = *(v6 + 72);
    v22 = v11;
    while (1)
    {
      sub_2187A963C(*(v2 + 48) + v12 * v10, v8, sub_218A98884);
      sub_2187A958C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
      if ((sub_219BF53A4() & 1) == 0)
      {
        sub_218751370(v8, sub_218A98884);
        goto LABEL_4;
      }

      v13 = *(v23 + 52);
      v14 = v8[v13];
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v16 = 0xE600000000000000;
          v15 = 0x7265746F6F66;
        }

        else if (v14 == 4)
        {
          v16 = 0xE900000000000072;
          v15 = 0x6F74617261706573;
        }

        else
        {
          v15 = 0x697242796C696164;
          v16 = 0xED0000676E696665;
        }
      }

      else if (v8[v13])
      {
        if (v14 == 1)
        {
          v15 = 0x6C65436B63617274;
          v16 = 0xE90000000000006CLL;
        }

        else
        {
          v16 = 0xE600000000000000;
          v15 = 0x726564616568;
        }
      }

      else
      {
        v15 = 0x6E6F436B63617274;
        v16 = 0xEC000000746E6574;
      }

      v17 = *(a1 + v13);
      if (v17 <= 2)
      {
        break;
      }

      if (v17 == 3)
      {
        v18 = 0xE600000000000000;
        v19 = 1953460070;
LABEL_30:
        if (v15 == (v19 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v17 == 4)
      {
        v18 = 0xE900000000000072;
        if (v15 == 0x6F74617261706573)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v18 = 0xED0000676E696665;
        if (v15 == 0x697242796C696164)
        {
LABEL_33:
          if (v16 == v18)
          {

            sub_218751370(v8, sub_218A98884);
            return v10;
          }
        }
      }

LABEL_34:
      v20 = sub_219BF78F4();

      sub_218751370(v8, sub_218A98884);
      v11 = v22;
      if (v20)
      {
        return v10;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    if (!v17)
    {
      v18 = 0xEC000000746E6574;
      if (v15 == 0x6E6F436B63617274)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v17 == 1)
    {
      v18 = 0xE90000000000006CLL;
      if (v15 == 0x6C65436B63617274)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v18 = 0xE600000000000000;
    v19 = 1684104552;
    goto LABEL_30;
  }

  return v10;
}

unint64_t sub_21931FB68(uint64_t a1, uint64_t a2)
{
  sub_218A9DB94();
  v22 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_219BDC104();
    v12 = *(v6 + 72);
    while (1)
    {
      sub_2187A963C(*(v2 + 48) + v12 * v10, v8, sub_218A9DB94);
      sub_2187A958C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
      if ((sub_219BF53A4() & 1) == 0)
      {
        goto LABEL_4;
      }

      v13 = *(v22 + 52);
      v14 = &v8[v13];
      v15 = (a1 + v13);
      v16 = *(v14 + 1);
      v17 = v15[1];
      if (!v16)
      {
        break;
      }

      if (!v17)
      {
        goto LABEL_4;
      }

      if (*v14 == *v15 && v16 == v17)
      {
LABEL_16:
        sub_218751370(v8, sub_218A9DB94);
        return v10;
      }

      v19 = sub_219BF78F4();
      sub_218751370(v8, sub_218A9DB94);
      if (v19)
      {
        return v10;
      }

LABEL_5:
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    if (!v17)
    {
      goto LABEL_16;
    }

LABEL_4:
    sub_218751370(v8, sub_218A9DB94);
    goto LABEL_5;
  }

  return v10;
}

unint64_t sub_21931FDB0(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = a1[2];
    v9 = a1[3];
    v10 = *(v2 + 48);
    do
    {
      v11 = *(v10 + 8 * v5);
      v12 = v11[2] == v8 && v11[3] == v9;
      if (v12 || (sub_219BF78F4() & 1) != 0)
      {
        v13 = v11[5];
        v14 = a1[5];
        if (v13)
        {
          if (v14)
          {
            v15 = v11[4] == a1[4] && v13 == v14;
            if (v15 || (sub_219BF78F4() & 1) != 0)
            {
              return v5;
            }
          }
        }

        else if (!v14)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21931FEA8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_2186C6148(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_219BF6DD4();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21931FF74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2187A1D40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CECE030](v9, a1);
      sub_218B6B67C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21932003C(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE4C24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = v2 + 64;
  v13 = -1 << *(v2 + 32);
  result = a2 & ~v13;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v15 = ~v13;
    v34 = *(a1 + 16);
    v31 = v6 + 16;
    v16 = (v6 + 8);
    v28 = a1;
    v29 = v2;
    v26 = ~v13;
    v27 = v2 + 64;
    while (1)
    {
      v17 = *(*(v2 + 48) + 8 * result);
      if (*(v17 + 16) == v34)
      {
        break;
      }

LABEL_4:
      result = (result + 1) & v15;
      if (((*(v12 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v34 && v17 != a1)
    {
      v30 = result;
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v32 = a1 + v18;
      v33 = v17 + v18;

      v19 = 0;
      while (v19 < *(v17 + 16))
      {
        v20 = *(v6 + 72) * v19;
        v21 = v6;
        v22 = *(v6 + 16);
        result = v22(v11, v33 + v20, v5);
        if (v34 == v19)
        {
          goto LABEL_17;
        }

        v22(v9, v32 + v20, v5);
        sub_2187A958C(&qword_27CC18BF8, MEMORY[0x277D34998]);
        v23 = sub_219BF53A4();
        v24 = *v16;
        (*v16)(v9, v5);
        result = (v24)(v11, v5);
        if ((v23 & 1) == 0)
        {

          a1 = v28;
          v2 = v29;
          result = v30;
          v6 = v21;
          v15 = v26;
          v12 = v27;
          goto LABEL_4;
        }

        ++v19;
        v6 = v21;
        if (v34 == v19)
        {

          return v30;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_219320310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2187A958C(v23, v24);
      v19 = sub_219BF53A4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_2193204B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v23 = ~v3;
    v6 = 0x6E6F697461727563;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    do
    {
      v10 = *(*(v2 + 48) + 8 * v4);
      v11 = *(v10 + 16) == v7 && *(v10 + 24) == v8;
      if (v11 || (sub_219BF78F4() & 1) != 0)
      {
        v12 = *(v10 + 56);
        if (v12 > 1)
        {
          v13 = 0x6863746566657270;
          if (v12 == 2)
          {
            v15 = 0x6863746566657270;
          }

          else
          {
            v15 = v6;
          }

          v14 = 0xE800000000000000;
        }

        else
        {
          v13 = 0x6863746566657270;
          v14 = 0xE700000000000000;
          if (v12)
          {
            v15 = 0x68736572666572;
          }

          else
          {
            v15 = 0x746C7561666564;
          }
        }

        v16 = v5;
        v17 = *(v5 + 56);
        v18 = v6;
        if (v17 != 2)
        {
          v13 = v6;
        }

        v19 = 0x746C7561666564;
        if (v17)
        {
          v19 = 0x68736572666572;
        }

        if (v17 <= 1)
        {
          v20 = v19;
        }

        else
        {
          v20 = v13;
        }

        if (v17 <= 1)
        {
          v21 = 0xE700000000000000;
        }

        else
        {
          v21 = 0xE800000000000000;
        }

        if (v15 == v20 && v14 == v21)
        {

          return v4;
        }

        v9 = sub_219BF78F4();

        v6 = v18;
        v5 = v16;
        if (v9)
        {
          return v4;
        }
      }

      v4 = (v4 + 1) & v23;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2193206B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_2187A963C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v13 = sub_2191B6D4C(v8, a1);
      sub_218751370(v8, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_219320810(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_219320894(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_2193208E8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_219320B20(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_219320944(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2193209F4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_2193209A0()
{
  result = qword_280ECE2B8[0];
  if (!qword_280ECE2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECE2B8);
  }

  return result;
}

void sub_2193209F4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_219320894(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219320A58(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_219320894(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219320AC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219320894(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219320B20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219320B90(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_2193208E8(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_219320C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  sub_21896FA3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v54 = v10;
    v55 = v9;
    v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v15[5];
    v19 = a4;
    v20 = v15;
    v21 = sub_219BF2EB4();
    (*(*(v21 - 8) + 16))(&v17[v18], a1, v21);
    v22 = *MEMORY[0x277D338B0];
    v23 = sub_219BF24E4();
    v24 = *(v23 - 8);
    (*(v24 + 104))(&v17[v18], v22, v23);
    (*(v24 + 56))(&v17[v18], 0, 1, v23);
    *v17 = a2;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v25 = &v17[v20[6]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v17[v20[7]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v17[v20[8]];
    *v27 = v58;
    *(v27 + 1) = v19;
    v28 = *(v4 + 80);
    v29 = v13;
    v30 = swift_allocBox();
    sub_219323B2C(v17, v31, type metadata accessor for PuzzleModel);
    v57 = v30;
    v32 = v30 | 0xE000000000000006;
    v33 = *(v4 + 64);
    v34 = sub_219BDFA44();
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    v64 = v28;
    sub_2187B14CC(v65, &v60, &unk_280EE7DB0, &qword_280EE7DC0);
    if (v61)
    {
      sub_2186CB1F0(&v60, v62);
      v35 = qword_280ED32D0;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if (v35 != -1)
      {
        swift_once();
      }

      v37 = qword_280ED32D8;
      v36 = qword_280ED32E0;
      v38 = qword_280ED32E8;

      v58 = v36;
      sub_2188202A8(v36);
      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_21874564C(&v60, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v37 = qword_280ED32D8;
      v39 = qword_280ED32E0;
      v38 = qword_280ED32E8;

      v58 = v39;
      sub_2188202A8(v39);
    }

    v40 = v55;
    v41 = v54;
    v59 = v32;
    v61 = sub_219BDD274();
    *&v60 = v33;
    v42 = v13;
    v43 = v56;
    sub_219323B2C(v42, v56, sub_21896FA3C);
    sub_2187B14CC(v67, v62, &qword_280EE33A0, &qword_280EE33B0);
    v44 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v45 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v55 = v29;
    v48 = v47;
    *(v47 + 16) = v33;
    sub_2189B4EAC(v43, v47 + v44);
    v49 = v48 + v45;
    v50 = v62[1];
    *v49 = v62[0];
    *(v49 + 16) = v50;
    *(v49 + 32) = v63;
    v51 = (v48 + v46);
    v52 = (v48 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v51 = 0;
    v51[1] = 0;
    v53 = v58;
    *v52 = v37;
    v52[1] = v53;
    v52[2] = v38;
    swift_retain_n();

    sub_2188202A8(v53);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v53);
    sub_21874564C(v65, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(v67, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_219308AAC(v55, sub_21896FA3C);
    sub_219308AAC(v17, type metadata accessor for PuzzleModel);
    sub_21874564C(&v60, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }
}

uint64_t sub_219321418(uint64_t *a1)
{
  v2 = *a1;
  v11 = *(a1 + 1);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  sub_2186CFDE4(0, qword_280EC0A40);
  v3 = v1[9];
  *(swift_allocObject() + 16) = v3;
  swift_unknownObjectRetain();
  sub_219BE1E14();

  if (v14)
  {
    sub_2186CB1F0(&v12, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v12 = v2;
    v13 = v11;
    v7 = (*(v6 + 8))(&v12, v5, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v9 presentViewController:v10 animated:1 completion:0];
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193215B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21921A68C();
  return sub_219BE1B94();
}

void sub_219321608(void *a1)
{
  v2 = v1;
  sub_21896FA3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v88 = (&v79 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v82 = &v79 - v11;
  MEMORY[0x28223BE20](v10);
  v83 = &v79 - v12;
  v85 = sub_219BDB954();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v14 = sub_219BE5434();
  v15 = __swift_project_value_buffer(v14, qword_280F625E0);
  swift_unknownObjectRetain();
  v81 = v15;
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v80 = v6;
    v79 = v2;
    v20 = v19;
    *&v99 = v19;
    *v18 = 136315138;
    v21 = [a1 identifier];
    v22 = v5;
    v23 = sub_219BF5414();
    v25 = v24;

    v26 = v23;
    v5 = v22;
    v27 = sub_2186D1058(v26, v25, &v99);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_2186C1000, v16, v17, "Navigating to puzzle type feed with id %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v28 = v20;
    v2 = v79;
    v6 = v80;
    MEMORY[0x21CECF960](v28, -1, -1);
    MEMORY[0x21CECF960](v18, -1, -1);
  }

  if (![objc_opt_self() isTagAllowedInContentStoreFront_])
  {
    v42 = *(v2 + 80);
    v43 = swift_allocObject();
    v44 = [a1 tagType];
    *(v43 + 40) = &type metadata for AlertFeedAccessDenied;
    *(v43 + 48) = sub_218BF7A98();
    *(v43 + 16) = v44;
    *(v43 + 56) = 1;
    v45 = sub_219BDFA44();
    v46 = v88;
    (*(*(v45 - 8) + 56))(v88, 1, 1, v45);
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v95 = v42;
    sub_2187B14CC(&v96, &v90, &unk_280EE7DB0, &qword_280EE7DC0);
    if (*(&v91 + 1))
    {
      sub_2186CB1F0(&v90, &v92);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v48 = qword_280ED32D8;
      v47 = qword_280ED32E0;
      v49 = qword_280ED32E8;

      sub_2188202A8(v47);
      __swift_destroy_boxed_opaque_existential_1(&v92);
    }

    else
    {
      sub_21874564C(&v90, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v48 = qword_280ED32D8;
      v47 = qword_280ED32E0;
      v49 = qword_280ED32E8;

      sub_2188202A8(v47);
    }

    v89 = v43;
    v91 = 0u;
    v90 = 0u;
    v58 = v84;
    sub_219323B2C(v46, v84, sub_21896FA3C);
    sub_2187B14CC(&v99, &v92, &qword_280EE33A0, &qword_280EE33B0);
    v59 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v60 = (v6 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 47) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    sub_2189B4EAC(v58, v62 + v59);
    v63 = v62 + v60;
    v64 = v93;
    *v63 = v92;
    *(v63 + 16) = v64;
    *(v63 + 32) = v94;
    v65 = (v62 + v61);
    v66 = (v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v65 = 0;
    v65[1] = 0;
    *v66 = v48;
    v66[1] = v47;
    v66[2] = v49;

    sub_2188202A8(v47);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v47);
    sub_21874564C(&v96, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(&v99, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_219308AAC(v88, sub_21896FA3C);
    sub_21874564C(&v90, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    goto LABEL_27;
  }

  v29 = [a1 &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
  if (!v29)
  {
    sub_219BF5414();
    v29 = sub_219BF53D4();
  }

  v30 = [objc_opt_self() nss:v29 NewsURLForPuzzleTypeID:?];

  if (v30)
  {
    v31 = v5;
    v32 = v86;
    sub_219BDB8B4();

    v33 = *(v2 + 80);
    v34 = v85;
    v35 = swift_allocBox();
    (*(v87 + 16))(v36, v32, v34);
    v88 = v35;
    v37 = sub_219BDFA44();
    v38 = v83;
    (*(*(v37 - 8) + 56))(v83, 1, 1, v37);
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v95 = v33;
    sub_2187B14CC(&v96, &v90, &unk_280EE7DB0, &qword_280EE7DC0);
    if (*(&v91 + 1))
    {
      sub_2186CB1F0(&v90, &v92);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v40 = qword_280ED32D8;
      v39 = qword_280ED32E0;
      v41 = qword_280ED32E8;

      v84 = v39;
      sub_2188202A8(v39);
      __swift_destroy_boxed_opaque_existential_1(&v92);
    }

    else
    {
      sub_21874564C(&v90, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v40 = qword_280ED32D8;
      v67 = qword_280ED32E0;
      v41 = qword_280ED32E8;

      v84 = v67;
      sub_2188202A8(v67);
    }

    v89 = v35 | 0x6000000000000000;
    v91 = 0u;
    v90 = 0u;
    v68 = v82;
    sub_219323B2C(v38, v82, sub_21896FA3C);
    sub_2187B14CC(&v99, &v92, &qword_280EE33A0, &qword_280EE33B0);
    v69 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v70 = (v6 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 47) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    sub_2189B4EAC(v68, v72 + v69);
    v73 = v72 + v70;
    v74 = v93;
    *v73 = v92;
    *(v73 + 16) = v74;
    *(v73 + 32) = v94;
    v75 = (v72 + v71);
    v76 = (v72 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v75 = 0;
    v75[1] = 0;
    v77 = v84;
    *v76 = v40;
    v76[1] = v77;
    v76[2] = v41;

    sub_2188202A8(v77);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v77);
    sub_21874564C(&v96, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(&v99, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_219308AAC(v38, sub_21896FA3C);
    (*(v87 + 8))(v86, v85);
    sub_21874564C(&v90, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
LABEL_27:

    return;
  }

  swift_unknownObjectRetain();
  v88 = sub_219BE5414();
  v50 = sub_219BF61F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v88, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v99 = v52;
    *v51 = 136315138;
    v53 = [a1 &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
    v54 = sub_219BF5414();
    v56 = v55;

    v57 = sub_2186D1058(v54, v56, &v99);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_2186C1000, v88, v50, "Failed to navigate to puzzle feed with puzzleType ID = %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x21CECF960](v52, -1, -1);
    MEMORY[0x21CECF960](v51, -1, -1);
  }

  else
  {
    v78 = v88;
  }
}

uint64_t sub_2193225F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21896FA3C();
  v50 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = type metadata accessor for PuzzleModel();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 20);
  v16 = sub_219BF3A44();
  (*(*(v16 - 8) + 16))(&v14[v15], a2, v16);
  v17 = *MEMORY[0x277D338B8];
  v18 = sub_219BF24E4();
  v19 = *(v18 - 8);
  (*(v19 + 104))(&v14[v15], v17, v18);
  (*(v19 + 56))(&v14[v15], 0, 1, v18);
  *v14 = a1;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v20 = &v14[v11[6]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v14[v11[7]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v14[v11[8]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = *(v3 + 80);
  v24 = swift_allocBox();
  sub_219323B2C(v14, v25, type metadata accessor for PuzzleModel);
  v53 = v24;
  v26 = v24 | 0xE000000000000006;
  v27 = *(v3 + 64);
  v28 = sub_219BDFA44();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v63 = v23;
  sub_2187B14CC(v59, &v55, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v56)
  {
    sub_2186CB1F0(&v55, v57);
    v29 = qword_280ED32D0;
    swift_unknownObjectRetain();
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = qword_280ED32D8;
    v30 = qword_280ED32E0;
    v32 = qword_280ED32E8;

    v49 = v30;
    v48 = v32;
    sub_2188202A8(v30);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_21874564C(&v55, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v31 = qword_280ED32D8;
    v33 = qword_280ED32E0;
    v34 = qword_280ED32E8;

    v49 = v33;
    v48 = v34;
    sub_2188202A8(v33);
  }

  v54 = v26;
  v56 = sub_219BDD274();
  *&v55 = v27;
  v35 = v51;
  sub_219323B2C(v10, v51, sub_21896FA3C);
  sub_2187B14CC(v61, v57, &qword_280EE33A0, &qword_280EE33B0);
  v36 = (v50[80] + 24) & ~v50[80];
  v50 = v10;
  v37 = (v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v27;
  sub_2189B4EAC(v35, v39 + v36);
  v40 = v39 + v37;
  v41 = v57[1];
  *v40 = v57[0];
  *(v40 + 16) = v41;
  *(v40 + 32) = v58;
  v42 = (v39 + v38);
  v43 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v42 = 0;
  v42[1] = 0;
  v44 = v49;
  *v43 = v31;
  v43[1] = v44;
  v43[2] = v48;
  swift_retain_n();

  sub_2188202A8(v44);
  sub_2186CF94C();
  sub_2189B4DD4();
  v45 = v52;
  sub_219BEB464();

  if (v45)
  {
    sub_21874564C(&v55, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();

    sub_2187FABEC(v44);
    sub_21874564C(v59, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(v61, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_219308AAC(v50, sub_21896FA3C);
    return sub_219308AAC(v14, type metadata accessor for PuzzleModel);
  }

  else
  {

    sub_2187FABEC(v44);
    sub_21874564C(v59, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(v61, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_219308AAC(v50, sub_21896FA3C);
    sub_219308AAC(v14, type metadata accessor for PuzzleModel);
    sub_21874564C(&v55, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }
}

uint64_t sub_219322E0C(uint64_t a1, int a2)
{
  v66 = a2;
  sub_21896FA3C();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - v7;
  MEMORY[0x28223BE20](v9);
  v64 = &v64 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 20);
  v19 = sub_219BF24E4();
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v67 = a1;
  *v16 = a1;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v20 = &v16[v14[6]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v16[v14[7]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v16[v14[8]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = *(v2 + 80);
  v24 = swift_allocBox();
  v70 = v16;
  sub_219323B2C(v16, v25, type metadata accessor for PuzzleModel);
  v68 = v24 | 0xE000000000000006;
  v26 = *(v2 + 64);
  v27 = sub_219BDFA44();
  v28 = *(*(v27 - 8) + 56);
  v72 = v24;
  if (v66)
  {
    v28(v13, 1, 1, v27);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v85 = v23;
    sub_2187B14CC(&v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0);
    v29 = v13;
    v30 = v26;
    if (v75)
    {
      sub_2186CB1F0(&v74, &v76);
      v31 = qword_280ED32D0;
      swift_unknownObjectRetain();
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = qword_280ED32D8;
      v32 = qword_280ED32E0;
      v34 = qword_280ED32E8;

      v67 = v32;
      sub_2188202A8(v32);
      __swift_destroy_boxed_opaque_existential_1(&v76);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_21874564C(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v33 = qword_280ED32D8;
      v40 = qword_280ED32E0;
      v34 = qword_280ED32E8;

      v67 = v40;
      sub_2188202A8(v40);
    }

    v73 = v68;
    v75 = sub_219BDD274();
    *&v74 = v26;
    v41 = v64;
    sub_219323B2C(v29, v64, sub_21896FA3C);
    sub_2187B14CC(&v82, &v76, &qword_280EE33A0, &qword_280EE33B0);
    v42 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v43 = (v5 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = v29;
    v44 = (v43 + 47) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = v30;
    sub_2189B4EAC(v41, v45 + v42);
    v46 = v45 + v43;
    v47 = v77;
    *v46 = v76;
    *(v46 + 16) = v47;
    *(v46 + 32) = v78;
    v48 = (v45 + v44);
    v49 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v48 = 0;
    v48[1] = 0;
    v50 = v67;
    *v49 = v33;
    v49[1] = v50;
    v49[2] = v34;
    swift_retain_n();

    sub_2188202A8(v50);
    sub_2186CF94C();
    sub_2189B4DD4();
    v51 = v71;
    sub_219BEB464();
    if (v51)
    {

      sub_21874564C(&v74, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
      sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      sub_2187FABEC(v50);
      sub_21874564C(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_21874564C(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v52 = &v87;
LABEL_20:
      sub_219308AAC(*(v52 - 32), sub_21896FA3C);
      return sub_219308AAC(v70, type metadata accessor for PuzzleModel);
    }

    sub_2187FABEC(v50);
    sub_21874564C(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v63 = &v87;
  }

  else
  {
    v28(v8, 1, 1, v27);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v85 = v23;
    sub_2187B14CC(&v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0);
    if (v75)
    {
      v35 = v8;
      sub_2186CB1F0(&v74, &v76);
      v36 = qword_280ED32D0;
      swift_unknownObjectRetain();
      if (v36 != -1)
      {
        swift_once();
      }

      v37 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v39 = qword_280ED32E8;

      sub_2188202A8(v38);
      __swift_destroy_boxed_opaque_existential_1(&v76);
    }

    else
    {
      v35 = v8;
      swift_unknownObjectRetain();
      sub_21874564C(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v37 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v39 = qword_280ED32E8;

      sub_2188202A8(v38);
    }

    v73 = v68;
    v75 = sub_219BDD274();
    *&v74 = v26;
    v68 = v35;
    v53 = v65;
    sub_219323B2C(v35, v65, sub_21896FA3C);
    sub_2187B14CC(&v82, &v76, &qword_280EE33A0, &qword_280EE33B0);
    v54 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v55 = v26;
    v56 = (v5 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    sub_2189B4EAC(v53, v57 + v54);
    v58 = v57 + v56;
    v59 = v77;
    *v58 = v76;
    *(v58 + 16) = v59;
    *(v58 + 32) = v78;
    v60 = (v57 + ((v56 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v60 = v37;
    v60[1] = v38;
    v60[2] = v39;
    swift_retain_n();

    sub_2188202A8(v38);
    sub_2186CF94C();
    sub_2189B4DD4();
    v61 = v71;
    sub_219BEB474();
    if (v61)
    {

      sub_21874564C(&v74, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
      sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      sub_2187FABEC(v38);
      sub_21874564C(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_21874564C(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v52 = &v86;
      goto LABEL_20;
    }

    sub_2187FABEC(v38);
    sub_21874564C(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_21874564C(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v63 = &v86;
  }

  sub_219308AAC(*(v63 - 32), sub_21896FA3C);
  sub_219308AAC(v70, type metadata accessor for PuzzleModel);
  sub_21874564C(&v74, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_219323AA0()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  swift_unknownObjectRelease();

  sub_21874564C(v0 + 88, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908], sub_2186C6F70);

  return swift_deallocClassInstance();
}

uint64_t sub_219323B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219323B94(void *a1)
{
  sub_21896FA3C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAE0C(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t type metadata accessor for SportsBracketTagFeedGroupKnobs()
{
  result = qword_280EAB248;
  if (!qword_280EAB248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219323CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v19 = a2;
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a2 = v19;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  v17 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
  *(a4 + *(v17 + 20)) = a2;
  if (!a3)
  {
    v20 = 1;
    sub_2186F9548();
    swift_allocObject();
    a3 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v17 + 24)) = a3;
  return result;
}

uint64_t sub_219323FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2189AD5C8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v11;
  sub_2193249A4(0, &qword_27CC18C28, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193248EC();
  v17 = v52;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v52 = v7;
  LOBYTE(v55) = 0;
  sub_21877C750(&qword_280E91A88, sub_2189AD5C8);
  v19 = v50;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v54) = 1;
  sub_21877C750(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v40 = v55;
  LOBYTE(v53) = 2;
  v21 = v13;
  v45 = v16;
  sub_219BF7674();
  v41 = v54;
  v22 = v19;
  v23 = v51;
  sub_2189ADE64(v22, v51);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v20;
  if (v26 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v28 = v48;
    sub_219BEE974();
    v29 = v25(v51, 1, v20);
    v30 = v28;
    v31 = v43;
    v32 = v44;
    if (v29 != 1)
    {
      sub_2189ADEC8(v51);
    }
  }

  else
  {
    v30 = v48;
    (*(v24 + 32))(v48, v51, v20);
    v31 = v43;
    v32 = v44;
  }

  v33 = v52;
  (*(v24 + 32))(v52, v30, v27);
  v34 = v40;
  if (!v40)
  {
    v53 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v45;
  *(v33 + *(v5 + 20)) = v34;
  v36 = v49;
  v37 = v41;
  if (v41)
  {
    sub_2189ADEC8(v50);
    (*(v31 + 8))(v35, v21);
  }

  else
  {
    v53 = 1;
    v38 = v50;
    swift_allocObject();
    v37 = sub_219BEF534();
    sub_2189ADEC8(v38);
    (*(v31 + 8))(v45, v21);
  }

  *(v33 + *(v5 + 24)) = v37;
  sub_219324940(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_219324550(void *a1)
{
  v3 = v1;
  sub_2193249A4(0, &qword_27CC18C38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193248EC();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C750(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_2186F9548();
    sub_21877C750(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2193247B4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_219324814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219324B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21932483C(uint64_t a1)
{
  v2 = sub_2193248EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219324878(uint64_t a1)
{
  v2 = sub_2193248EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2193248EC()
{
  result = qword_27CC18C30;
  if (!qword_27CC18C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18C30);
  }

  return result;
}

uint64_t sub_219324940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193249A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193248EC();
    v7 = a3(a1, &type metadata for SportsBracketTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219324A1C()
{
  result = qword_27CC18C40;
  if (!qword_27CC18C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18C40);
  }

  return result;
}

unint64_t sub_219324A74()
{
  result = qword_27CC18C48;
  if (!qword_27CC18C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18C48);
  }

  return result;
}

unint64_t sub_219324ACC()
{
  result = qword_27CC18C50;
  if (!qword_27CC18C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18C50);
  }

  return result;
}

uint64_t sub_219324B20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219324C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v95 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_219327964(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v72 - v7;
  sub_219327964(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v72 - v10;
  sub_219327964(0, &qword_280E919F0, sub_2186FF4C0, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v72 - v12;
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v94 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v82 = &v72 - v14;
  v93 = sub_219BF2AB4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327964(0, &unk_280E91B60, MEMORY[0x277D32040], v5);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = &v72 - v17;
  v90 = sub_219BEF554();
  v89 = *(v90 - 8);
  v18 = MEMORY[0x28223BE20](v90);
  v86 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v85 = &v72 - v20;
  v21 = type metadata accessor for TopicsSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v21 - 8);
  v84 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BF3E84();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF2124();
  v75 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = (&v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_219BF14C4();
  v79 = *(v80 - 1);
  MEMORY[0x28223BE20](v80);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BF0BD4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6F704(a1, v96);
  if (!v96[0])
  {
    sub_218B6F78C(v96, &qword_27CC0E4F8, &type metadata for SearchFeedPool);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    goto LABEL_8;
  }

  v33 = v96[1];

  sub_218B6F84C(v96);
  if (!*(v33 + 16))
  {

    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    goto LABEL_8;
  }

  sub_218B6F318(v33 + 32, &v97);

  if (!v97)
  {
LABEL_8:
    sub_218B6F78C(&v97, &qword_27CC0E500, &type metadata for SearchFeedPool.TagSearchResults);
    v40 = sub_219BEEDD4();
    sub_219326FE8(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D323A8], v40);
    swift_willThrow();
    return v40;
  }

  v73 = v8;
  v74 = v3;
  v100[0] = v97;
  v100[1] = v98;
  v100[2] = v99;
  v34 = *(v97 + 16);
  v35 = v95 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_knobs;
  type metadata accessor for TopicsSearchFeedGroupKnobs();
  v72 = v35;
  sub_219BED8E4();
  sub_219BEF524();
  (*(v30 + 8))(v32, v29);
  if (v96[0] >= v34)
  {
    sub_218B6F8A0();
    v42 = swift_allocBox();
    LOBYTE(v96[0]) = 0;
    v43 = MEMORY[0x277D84F90];
    sub_219BF2704();
    *v26 = v42;
    (*(v75 + 104))(v26, *MEMORY[0x277D33758], v24);
    sub_219BF14A4();
    sub_219327964(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    v44 = v79;
    v45 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_219C09BA0;
    (*(v44 + 16))(v46 + v45, v28, v80);
    sub_218F0B984(v43);
    sub_218F0BA7C(v43);
    sub_218F0BB90(v43);
    v47 = v76;
    sub_219BF3E74();
    v48 = sub_2191F6E6C(0, 1, 1, v43);
    v50 = v48[2];
    v49 = v48[3];
    v51 = v73;
    v39 = v84;
    if (v50 >= v49 >> 1)
    {
      v48 = sub_2191F6E6C(v49 > 1, v50 + 1, 1, v48);
    }

    v37 = v86;
    v38 = v85;
    (*(v79 + 8))(v28, v80);
    v48[2] = v50 + 1;
    v52 = *(v77 + 32);
    v53 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v80 = v48;
    v52(v48 + v53 + *(v77 + 72) * v50, v47, v78);
    v36 = v51;
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
    v36 = v73;
    v37 = v86;
    v38 = v85;
    v39 = v84;
  }

  v54 = *(v95 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_formatService + 24);
  v84 = *(v95 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_formatService + 32);
  v85 = v54;
  v86 = __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_formatService), v54);
  sub_218713528();
  sub_219BEDD14();
  sub_219BEDCC4();
  sub_219BEDCC4();
  v55 = sub_219BEE5D4();
  v56 = v87;
  (*(*(v55 - 8) + 56))(v87, 1, 1, v55);
  (*(v81 + 16))(v82, v101, v94);
  sub_2186FF4C0(0);
  v58 = v57;
  v59 = *(v57 - 8);
  v60 = v83;
  (*(v59 + 16))(v83, v72, v57);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = sub_219BF35D4();
  (*(*(v61 - 8) + 56))(v88, 1, 1, v61);
  LOBYTE(v96[0]) = 2;
  sub_2186FF3C0(0, &qword_27CC0E508, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v62 = sub_219BF2774();
  (*(*(v62 - 8) + 56))(v36, 1, 1, v62);
  v63 = v39;
  v64 = v38;
  v65 = v37;
  v66 = qword_280E8D828;
  *MEMORY[0x277D30B98];
  if (v66 != -1)
  {
    swift_once();
  }

  qword_280F61720;
  v67 = v91;
  sub_219BF2A84();
  v40 = sub_218F0AF50(v63, 0x736369706F74, 0xE600000000000000, v64, v65, v80, v56, v67, v85, v84);

  (*(v92 + 8))(v67, v93);
  sub_2188175F4(v56, &unk_280E91B60, MEMORY[0x277D32040]);
  v68 = *(v89 + 8);
  v69 = v90;
  v68(v65, v90);
  v68(v64, v69);
  v70 = sub_219BF1934();
  (*(*(v70 - 8) + 8))(v63, v70);
  sub_218B6F544(v100);
  return v40;
}

uint64_t sub_219325B74(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v5, v2);
  v9[3] = v6;
  v9[0] = v7;
  sub_218A80D28();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219325CB8()
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_218B6F1EC();
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  sub_218B6F29C(0);
  sub_219BE2F84();

  v2 = sub_219BE2E54();
  v3 = sub_219BE3054();

  return v3;
}

uint64_t sub_219325E2C()
{
  sub_219BEF0C4();

  v0 = sub_219BE2E54();
  sub_218B6F1EC();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_219325EC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  sub_218B6F29C(0);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_219327964(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = v69 - v9;
  sub_219327964(0, &unk_280E8FE90, MEMORY[0x277D343A8], v7);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = v69 - v11;
  sub_219327964(0, &qword_280E91210, MEMORY[0x277D32A30], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = v69 - v13;
  sub_219327964(0, &qword_280E907B0, MEMORY[0x277D33528], v7);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = v69 - v15;
  sub_219327964(0, &qword_280EE9C40, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = v69 - v17;
  v75 = sub_219BDBD64();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF1904();
  v78 = *(v19 - 8);
  v79 = v19;
  MEMORY[0x28223BE20](v19);
  v86 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327964(0, &qword_280E90840, MEMORY[0x277D33470], v7);
  MEMORY[0x28223BE20](v21 - 8);
  v77 = v69 - v22;
  v90 = sub_219BF04A4();
  v23 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v76);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BF0BD4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[1];
  if (!*(v32 + 16))
  {
    v42 = sub_219BEEDD4();
    sub_219326FE8(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D323A8], v42);
    swift_willThrow();
    return v42;
  }

  v71 = v27;
  v72 = v3;
  v33 = *a1;
  sub_218B6F318(v32 + 32, &v91);
  v34 = v91;
  type metadata accessor for TopicsSearchFeedGroupKnobs();

  sub_219BEF134();
  sub_219BEF524();
  v36 = *(v29 + 8);
  v35 = v29 + 8;
  v36(v31, v28);
  v37 = sub_219A780D8(v93, v34);
  v89 = v39;
  v41 = v40 >> 1;
  if (v38 == v40 >> 1)
  {
    v42 = sub_219BEEDD4();
    sub_219326FE8(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D323A8], v42);
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_21:
    sub_218B6F544(&v91);
    return v42;
  }

  v45 = v38;
  v69[1] = v37;
  v46 = v41 - v38;
  if (__OFSUB__(v41, v38))
  {
    goto LABEL_18;
  }

  v35 = MEMORY[0x277D84F90];
  v70 = v33;
  if (!v46)
  {
LABEL_14:
    if (!(v35 >> 62))
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:

        v42 = sub_219BEEDD4();
        sub_219326FE8(&qword_280E917E0, MEMORY[0x277D32430]);
        swift_allocError();
        (*(*(v42 - 8) + 104))(v68, *MEMORY[0x277D323A8], v42);
        swift_willThrow();
        swift_unknownObjectRelease();

        goto LABEL_21;
      }

      goto LABEL_16;
    }

LABEL_19:
    if (!sub_219BF7214())
    {
      goto LABEL_20;
    }

LABEL_16:
    v89 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
    sub_219BED874();
    v90 = v35;
    v49 = v73;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v74 + 8))(v49, v75);
    v50 = sub_219BDBD34();
    (*(*(v50 - 8) + 56))(v87, 1, 1, v50);
    v51 = sub_219BF1AD4();
    v52 = v80;
    (*(*(v51 - 8) + 56))(v80, 1, 1, v51);
    v53 = sub_219BEFC64();
    v54 = v81;
    (*(*(v53 - 8) + 56))(v81, 1, 1, v53);
    v55 = sub_219BF4334();
    v56 = v82;
    (*(*(v55 - 8) + 56))(v82, 1, 1, v55);
    v57 = sub_219BEC004();
    v58 = v83;
    (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
    v59 = v77;
    v60 = v86;
    sub_219BF1854();

    sub_2188175F4(v58, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_2188175F4(v56, &unk_280E8FE90, MEMORY[0x277D343A8]);
    sub_2188175F4(v54, &qword_280E91210, MEMORY[0x277D32A30]);
    sub_2188175F4(v52, &qword_280E907B0, MEMORY[0x277D33528]);
    sub_2188175F4(v87, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v62 = v78;
    v61 = v79;
    (*(v78 + 8))(v60, v79);
    (*(v62 + 56))(v59, 0, 1, v61);
    v63 = v70;
    v64 = v71;
    sub_219BED824();
    sub_2188175F4(v59, &qword_280E90840, MEMORY[0x277D33470]);
    v65 = type metadata accessor for TopicsSearchFeedGroup();
    sub_2193277A8(&v92, v64 + *(v65 + 24), sub_218A32864);
    *(v64 + *(v65 + 20)) = v90;
    swift_storeEnumTagMultiPayload();
    sub_218B6F3E4();
    v67 = (v85 + *(v66 + 48));
    sub_2193277A8(v64, v85, type metadata accessor for SearchFeedGroup);
    v67[3] = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
    *v67 = v63;
    swift_storeEnumTagMultiPayload();
    sub_219327964(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
    swift_allocObject();

    v42 = sub_219BE3014();

    swift_unknownObjectRelease();
    sub_219327810(v64, type metadata accessor for SearchFeedGroup);
    sub_218B6F544(&v91);
    return v42;
  }

  v93 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v46 & 0x8000000000000000) == 0)
  {
    v88 = v23 + 16;
    if (v45 <= v41)
    {
      v35 = v41;
    }

    else
    {
      v35 = v45;
    }

    while (v35 != v45)
    {
      v48 = v90;
      (*(v23 + 16))(v25, v89 + *(v23 + 72) * v45, v90);
      sub_219BF0404();
      (*(v23 + 8))(v25, v48);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v41 == ++v45)
      {
        v35 = v93;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_219326C88(uint64_t a1)
{
  sub_218B6F29C(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219CE91A0);
  v9 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_219327964(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219326DF0()
{
  v1 = OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_config;
  sub_218713528();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219327810(v0 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_knobs, type metadata accessor for TopicsSearchFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopicsSearchFeedGroupEmitter()
{
  result = qword_27CC18C70;
  if (!qword_27CC18C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219326F14()
{
  sub_218713528();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TopicsSearchFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219326FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219327030(uint64_t a1)
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-v5];
  v15 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_218B6F7FC(0, &qword_27CC0E4F8, &type metadata for SearchFeedPool, MEMORY[0x277D83D88]);
  sub_219BE3204();
  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = sub_219BE2E54();
  sub_219BED8D4();
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  sub_218B6F7FC(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, v7);
  v12 = sub_219BE2F64();

  return v12;
}

uint64_t sub_2193272D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_config;
  sub_218713528();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219327364@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for TopicsSearchFeedGroupKnobs();
  a1[4] = sub_219326FE8(&qword_280EB9988, type metadata accessor for TopicsSearchFeedGroupKnobs);
  a1[5] = sub_219326FE8(&qword_27CC0ECA8, type metadata accessor for TopicsSearchFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2193277A8(v3 + v4, boxed_opaque_existential_1, type metadata accessor for TopicsSearchFeedGroupKnobs);
}

uint64_t sub_219327468@<X0>(uint64_t *a1@<X8>)
{
  sub_219327964(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218713528();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219327810(inited + 32, sub_2188317B0);
  sub_219327964(0, &qword_27CC18CA0, type metadata accessor for TopicsSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2193279C8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2193275E4()
{
  sub_219326FE8(&qword_27CC18C90, type metadata accessor for TopicsSearchFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2193277A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219327810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219327870@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = v2;
  a2[1] = v3;
}

void sub_219327964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2193279C8()
{
  result = qword_27CC18CA8;
  if (!qword_27CC18CA8)
  {
    sub_219327964(255, &qword_27CC18CA0, type metadata accessor for TopicsSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18CA8);
  }

  return result;
}

void sub_219327A64()
{
  if (!qword_280E92230)
  {
    type metadata accessor for RecentStoriesTagFeedGroupConfigData();
    sub_219327B30(&unk_280E9C850, type metadata accessor for RecentStoriesTagFeedGroupConfigData);
    sub_219327B30(&qword_280E9C860, type metadata accessor for RecentStoriesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92230);
    }
  }
}

uint64_t sub_219327B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RecentStoriesTagFeedGroupEmitter()
{
  result = qword_280EA5570;
  if (!qword_280EA5570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219327BD8()
{
  sub_219327A64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecentStoriesTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E910C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_219327CB8(uint64_t a1)
{
  v3 = type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_218831BDC(0, &unk_280EDF3B0);
  sub_219BE2F64();

  sub_21932C704(v1, v6, type metadata accessor for RecentStoriesTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21[1] = v8 + v5;
  v9 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_219328810(v6, v10 + v8);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_219328874;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_2193298A8();
  sub_219BE2F64();

  v13 = v21[0];
  sub_21932C704(v21[0], v6, type metadata accessor for RecentStoriesTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_219328810(v6, v14 + v8);
  *(v14 + v9) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_219329DE4;
  *(v15 + 24) = v14;

  v16 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_21932C704(v13, v6, type metadata accessor for RecentStoriesTagFeedGroupEmitter);
  v17 = swift_allocObject();
  sub_219328810(v6, v17 + v8);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_21932801C@<X0>(uint64_t *a1@<X8>)
{
  sub_219327A64();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x7000000000000000;
  return result;
}

uint64_t sub_219328094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  a2[4] = sub_219327B30(&qword_280EAB938, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  a2[5] = sub_219327B30(&qword_27CC18CB0, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21932C704(v2 + v4, boxed_opaque_existential_1, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
}

uint64_t sub_219328158()
{
  sub_2189AD5C8();
  v1 = sub_219BEE964();
  sub_2191EDA0C(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_2193281C8()
{
  sub_219327A64();

  return sub_219BEDCA4();
}

uint64_t sub_2193281F4@<X0>(uint64_t *a1@<X8>)
{
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219327A64();

  v3 = sub_219BEDCA4();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21932C584(inited + 32, &qword_280E8F6E0, v4, MEMORY[0x277D84F70] + 8, sub_218831BDC);
  sub_2186E4A44(0, &qword_280EE7788, type metadata accessor for RecentStoriesTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v6;
  a1[4] = sub_21932C76C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219328360()
{
  sub_219327B30(&qword_280EA5598, type metadata accessor for RecentStoriesTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2193284EC(_OWORD *a1)
{
  v2 = a1[5];
  v15[4] = a1[4];
  v15[5] = v2;
  v3 = a1[7];
  v15[6] = a1[6];
  v15[7] = v3;
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = a1[5];
  v6[5] = a1[4];
  v6[6] = v7;
  v8 = a1[7];
  v6[7] = a1[6];
  v6[8] = v8;
  v9 = a1[1];
  v6[1] = *a1;
  v6[2] = v9;
  v10 = a1[3];
  v6[3] = a1[2];
  v6[4] = v10;
  sub_218A80CA4(v15, &v14);
  v11 = sub_219BE2E54();
  sub_218831BDC(0, &unk_280EDF3B0);
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_2193285F4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *(a1 + 32);
  v4 = a2[4];
  v5 = a2[6];
  v6 = a2[7];
  *(a3 + 128) = a2[5];
  *(a3 + 144) = v5;
  *(a3 + 160) = v6;
  v7 = *a2;
  v8 = a2[1];
  *(a3 + 32) = v15;
  *(a3 + 48) = v7;
  v9 = a2[2];
  v10 = a2[3];
  *(a3 + 64) = v8;
  *(a3 + 80) = v9;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 96) = v10;
  *(a3 + 112) = v4;

  sub_2189EEB80(v13, v15);
  return sub_218A80CA4(a2, v16);
}

uint64_t sub_21932869C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  sub_219BEF164();
  if (!v4)
  {
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v17;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    v8 = sub_21932BF80(a4, v18, *a1);
    sub_218A410EC(v18);
    sub_21932891C(a4, v8);

    sub_2186E4A44(0, &unk_280EE6C28, MEMORY[0x277D32740], MEMORY[0x277D6CF30]);
    swift_allocObject();

    sub_219BE3014();
    v7 = sub_219BE31C4();
  }

  return v7;
}

uint64_t sub_219328810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219328874(unint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RecentStoriesTagFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_21932869C(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

size_t sub_21932891C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_2186E4A44(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v77 - v6;
  sub_2186E4A44(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v77 - v8;
  sub_2186E4A44(0, &qword_280E91A70, sub_2189AD5C8, v4);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v77 - v10;
  v11 = sub_219BF2AB4();
  v92 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4A44(0, &unk_280E8FF30, sub_218A42400, v4);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v77 - v14;
  v80 = type metadata accessor for RecentStoriesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v80);
  v82 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BF1934();
  v101 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4A44(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v77 - v18;
  v87 = sub_219BF2034();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v99 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF3C84();
  v105 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v77 - v24);
  v26 = sub_219BF3E84();
  v97 = *(v26 - 8);
  v98 = v26;
  MEMORY[0x28223BE20](v26);
  v96 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  sub_219BEF0B4();
  v28 = *(v107 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v100 = sub_219BF6394();

  v29 = a2;
  if (a2 >> 62)
  {
    v75 = sub_219BF7214();
    v29 = a2;
    v30 = v75;
  }

  else
  {
    v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = v11;
  if (v30)
  {
    v31 = v29;
    v107 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v107;
    v34 = v31;
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = 0;
      LODWORD(v104) = *MEMORY[0x277D34128];
      v36 = (v105 + 104);
      v103 = (v105 + 32);
      do
      {
        v37 = v34;
        *v25 = MEMORY[0x21CECE0F0](v35);
        (*v36)(v25, v104, v20);
        v107 = v33;
        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_218C34A88(v38 > 1, v39 + 1, 1);
          v33 = v107;
        }

        ++v35;
        *(v33 + 16) = v39 + 1;
        (*(v105 + 32))(v33 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v39, v25, v20);
        v34 = v37;
      }

      while (v30 != v35);
    }

    else
    {
      v41 = (v31 + 32);
      LODWORD(v104) = *MEMORY[0x277D34128];
      v42 = *(v105 + 104);
      v102 = v105 + 32;
      v103 = v42;
      v43 = v20;
      do
      {
        *v23 = *v41;
        v103(v23, v104, v43);
        v107 = v33;
        v45 = *(v33 + 16);
        v44 = *(v33 + 24);
        swift_unknownObjectRetain();
        if (v45 >= v44 >> 1)
        {
          sub_218C34A88(v44 > 1, v45 + 1, 1);
          v33 = v107;
        }

        *(v33 + 16) = v45 + 1;
        (*(v105 + 32))(v33 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v45, v23, v43);
        ++v41;
        --v30;
      }

      while (v30);
    }

    v40 = MEMORY[0x277D84F90];
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v40);
  sub_218F0BA7C(v40);
  sub_218F0BB90(v40);
  v46 = v96;
  sub_219BF3E74();
  sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v47 = swift_allocObject();
  v105 = v47;
  *(v47 + 16) = xmmword_219C146A0;
  *(v47 + 32) = v100;
  sub_2186E4A44(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v48 = v97;
  v49 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_219C09BA0;
  (*(v48 + 16))(v50 + v49, v46, v98);
  v79 = sub_219BEC004();
  v51 = *(v79 - 8);
  v78 = *(v51 + 56);
  v102 = v51 + 56;
  v52 = v95;
  v78(v95, 1, 1, v79);
  swift_unknownObjectRetain();
  sub_219A95188(v40);
  sub_219A95188(v40);
  sub_219A951A0(v40);
  sub_219A951B8(v40);
  sub_219A952CC(v40);
  sub_219A952E4(v40);
  sub_219A953F8(v40);
  v76 = v52;
  sub_219BF2024();
  v53 = (v83 + *(type metadata accessor for RecentStoriesTagFeedGroupEmitter() + 24));
  v54 = v53[3];
  v105 = v53[4];
  v103 = v54;
  v104 = __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_219327A64();
  v55 = v82;
  sub_219BEDD14();
  v56 = *(v80 + 20);
  v57 = [v100 identifier];
  sub_219BF5414();

  v58 = v95;
  v78(v95, 1, 1, v79);
  sub_218A42400(0);
  v60 = v81;
  (*(*(v59 - 8) + 56))(v81, 1, 1, v59);
  v61 = v88;
  sub_219BF1764();

  v62 = MEMORY[0x277D83D88];
  sub_21932C584(v60, &unk_280E8FF30, sub_218A42400, MEMORY[0x277D83D88], sub_2186E4A44);
  sub_21932C584(v58, &qword_280EE33F0, MEMORY[0x277D2D4E0], v62, sub_2186E4A44);
  v63 = *(v101 + 8);
  v64 = &v55[v56];
  v65 = v90;
  v101 += 8;
  v63(v64, v90);
  sub_2189AD5C8();
  (*(*(v66 - 8) + 56))(v84, 1, 1, v66);
  sub_219BEF0B4();
  v67 = *(v107 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v68 = sub_219BF35D4();
  (*(*(v68 - 8) + 56))(v85, 1, 1, v68);
  LOBYTE(v106) = 29;
  sub_21932C5E4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v69 = *(v106 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v70 = sub_219BF2774();
  (*(*(v70 - 8) + 56))(v94, 1, 1, v70);
  v71 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v71 != -1)
  {
    swift_once();
  }

  v76 = qword_280F61708;
  v72 = v91;
  sub_219BF2A84();
  v73 = v99;
  v74 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v92 + 8))(v72, v93);
  v63(v61, v65);
  (*(v86 + 8))(v73, v87);
  (*(v97 + 8))(v96, v98);
  return v74;
}

uint64_t sub_219329840(_OWORD *a1)
{
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v3 = a1[3];
  v11[2] = a1[2];
  v12[0] = v3;
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[6];
  v12[4] = a1[7];
  v12[5] = v4;
  v7 = a1[10];
  v12[6] = v5;
  v12[7] = v7;
  v8 = a1[5];
  v12[1] = a1[4];
  v12[2] = v8;
  v9 = *(v1 + 16);
  v12[3] = v6;
  return v9(v11, v12);
}

void sub_2193298A8()
{
  if (!qword_280E90820)
  {
    sub_219BF1904();
    sub_219BEF864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90820);
    }
  }
}

uint64_t sub_219329918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a2;
  sub_218A59C84();
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4A44(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = v27 - v8;
  v9 = sub_219BEF554();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v27[1] = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v27[2] = v27 - v12;
  v13 = sub_219BF1904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BED8D4();
  v17 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v28);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  sub_219327A64();
  v22 = sub_219BEDCB4();
  v27[3] = v23;
  v27[4] = v22;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v24 = sub_219BEE5D4();
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);

  sub_219BED854();
  (*(v17 + 32))(v21, v19, v29);
  swift_storeEnumTagMultiPayload();
  sub_21932C704(v21, v33, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2186E4A44(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v25 = sub_219BE3014();
  sub_21932BA54(v21);
  return v25;
}

uint64_t sub_219329DE4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RecentStoriesTagFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219329918(a1, a2, v2 + v6, v7);
}

uint64_t sub_219329E90(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2193298A8();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_219329EE0()
{
  type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_21932A020(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a2;
  v29 = sub_219BDBD34();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v30 = qword_280F61708;
  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  sub_219BF6214();
  sub_219BE5314();

  v15 = sub_21932BC50(a1, a3);
  v16 = sub_21932B3A8(v15, a3);

  type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v9 + 8))(v11, v8);
  v17 = v31;
  v18 = sub_219BDBC54();
  MEMORY[0x28223BE20](v18);
  v28[-2] = v7;

  v19 = sub_2195EB294(sub_21932C664, &v28[-4], v16);
  if (v19 >> 62)
  {
    sub_218731D50();
    v20 = sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_218731D50();
    v20 = v19;
  }

  (*(v5 + 8))(v7, v29);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C0B8C0;
  if (v16 >> 62)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 >> 62)
  {
    result = sub_219BF7214();
    v24 = v22 - result;
    if (!__OFSUB__(v22, result))
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v22 - result;
    if (!__OFSUB__(v22, result))
    {
LABEL_11:
      v25 = MEMORY[0x277D83B88];
      *(v21 + 56) = MEMORY[0x277D83B88];
      v26 = MEMORY[0x277D83C10];
      *(v21 + 64) = MEMORY[0x277D83C10];
      *(v21 + 32) = v24;
      v27 = MEMORY[0x277D83A80];
      *(v21 + 96) = MEMORY[0x277D839F8];
      *(v21 + 104) = v27;
      *(v21 + 72) = v17;
      *(v21 + 136) = v25;
      *(v21 + 144) = v26;
      *(v21 + 112) = result;
      sub_219BF6214();
      sub_219BE5314();

      return v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21932A488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = sub_219BEE6E4();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BEDC04();
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BF0BD4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF02F4();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v61 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEE6F4();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v16 = qword_280F61708;
  sub_2186F20D4();
  v58 = v17;
  v18 = swift_allocObject();
  v57 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v20;
  *(v18 + 32) = v19;
  sub_219BF6214();
  sub_219BE5314();

  v52 = type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  sub_218718690(v3 + *(v52 + 28), v76);
  v54 = v78;
  v55 = v77;
  v53 = __swift_project_boxed_opaque_existential_1(v76, v77);
  v67 = v16;
  v68 = v4;
  if (v19)
  {
    v51[0] = v3;
    v51[1] = a3;
    v51[2] = a2;
    v79 = MEMORY[0x277D84F90];
    sub_218C34908(0, v19, 0);
    v21 = v79;
    v22 = *(v75 + 16);
    v23 = a1 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v69 = *(v75 + 72);
    v70 = v22;
    v75 += 16;
    v24 = (v75 - 8);
    do
    {
      v25 = v72;
      v26 = v73;
      v70(v72, v23, v73);
      sub_219BEE6A4();
      (*v24)(v25, v26);
      v79 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C34908(v27 > 1, v28 + 1, 1);
        v21 = v79;
      }

      *(v21 + 16) = v28 + 1;
      (*(v74 + 32))(v21 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v28, v10, v71);
      v23 += v69;
      --v19;
    }

    while (v19);
  }

  v29 = *MEMORY[0x277D32980];
  v30 = sub_219BEFBD4();
  v31 = v59;
  (*(*(v30 - 8) + 104))(v59, v29, v30);
  v32 = v63;
  v33 = v64;
  (*(v63 + 104))(v31, *MEMORY[0x277D320E8], v64);
  type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  v34 = v56;
  sub_219BEF134();
  v35 = v61;
  sub_219BEF7E4();
  (*(v60 + 8))(v34, v62);
  v36 = v68;
  v37 = sub_219BEFFD4();
  if (v36)
  {

    (*(v65 + 8))(v35, v66);
    (*(v32 + 8))(v31, v33);
    __swift_destroy_boxed_opaque_existential_1(v76);
    sub_219BF61F4();
    v38 = swift_allocObject();
    *(v38 + 16) = v57;
    v76[0] = v36;
    v39 = v36;
    sub_2186CFDE4(0, &qword_280E8B580);
    v40 = sub_219BF5484();
    v42 = v41;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_2186FC3BC();
    *(v38 + 32) = v40;
    *(v38 + 40) = v42;
    sub_219BE5314();

    v43 = sub_219BEEDD4();
    sub_219327B30(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v44 = v36;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D32378], v43);
    swift_willThrow();
  }

  else
  {
    v45 = v33;
    v46 = v37;

    (*(v65 + 8))(v35, v66);
    (*(v32 + 8))(v31, v45);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v47 = swift_allocObject();
    *(v47 + 16) = v57;
    v48 = *(v46 + 16);
    *(v47 + 56) = MEMORY[0x277D83B88];
    *(v47 + 64) = MEMORY[0x277D83C10];
    *(v47 + 32) = v48;
    sub_219BF6214();
    sub_219BE5314();

    v76[0] = v46;
    v49 = MEMORY[0x277D31DF8];
    sub_2186E4A44(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
    sub_21932C684(&qword_280E8EF80, &unk_280E8EF90, v49);
    v43 = sub_219BF5794();
  }

  return v43;
}