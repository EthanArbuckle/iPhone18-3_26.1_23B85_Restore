uint64_t sub_24A7EA8F0(unint64_t a1)
{
  v25 = type metadata accessor for FMIPUnknownItem();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v25);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_24A82D6D4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = (v14 + 1) & v12;
      v16 = *(v3 + 72);
      while (1)
      {
        v17 = v16 * v11;
        sub_24A7F08F0(*(v8 + 48) + v16 * v11, v7, type metadata accessor for FMIPUnknownItem);
        v18 = *(v8 + 40);
        sub_24A82DCC4();
        FMIPUnknownItem.hash(into:)(v26);
        v19 = sub_24A82DD24();
        sub_24A7F09C0(v7, type metadata accessor for FMIPUnknownItem);
        v20 = v19 & v12;
        if (a1 >= v15)
        {
          break;
        }

        if (v20 < v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v21 = v16 * a1;
        if ((v16 * a1) < v17 || *(v8 + 48) + v16 * a1 >= *(v8 + 48) + v17 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v21 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v20 < v15)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v20)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v8 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v24;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_24A7EAB80(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for FMIPDiscoveredAccessory();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_24A67F378(v6, &qword_27EF5E9B0, &unk_24A839AD8))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_24A7F08F0(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A7E9FE0(v12, v6);
      sub_24A7F09C0(v12, type metadata accessor for FMIPDiscoveredAccessory);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A7EAD88(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for FMIPUnknownItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_24A67F378(v6, &qword_27EF5F480, &qword_24A83F528))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_24A7F08F0(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for FMIPUnknownItem);
      sub_24A7EA214(v12, v6);
      sub_24A7F09C0(v12, type metadata accessor for FMIPUnknownItem);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A7EAF90(unint64_t a1, uint64_t a2)
{
  v277 = *MEMORY[0x277D85DE8];
  v243 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  v4 = *(*(v243 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v243);
  v7 = &v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v236 = &v218 - v8;
  v9 = type metadata accessor for FMIPHawkeyeProductInformation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v220 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v219 = &v218 - v15;
  MEMORY[0x28223BE20](v14);
  v223 = &v218 - v16;
  v17 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v238 = (&v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v224 = &v218 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v227 = &v218 - v24;
  MEMORY[0x28223BE20](v23);
  v222 = &v218 - v25;
  v26 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v225 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v218 - v30;
  v248 = type metadata accessor for FMIPDiscoveredAccessory();
  v32 = *(*(v248 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v248);
  v35 = &v218 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v255 = (&v218 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v218 - v39;
  MEMORY[0x28223BE20](v38);
  v254 = (&v218 - v42);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_167;
  }

  v221 = v31;
  v237 = v7;
  v218 = 0;
  v43 = *(a1 + 56);
  v240 = a1 + 56;
  v44 = -1 << *(a1 + 32);
  v235 = ~v44;
  if (-v44 < 64)
  {
    v45 = ~(-1 << -v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v43;
  v229 = (63 - v44) >> 6;
  v234 = (v41 + 7);
  v228 = v41;
  v233 = (v41 + 6);
  v247 = (v10 + 48);
  v47 = (a2 + 56);

  v49 = 0;
  v246 = v9;
  v250 = v35;
  v251 = v40;
  v257 = a2;
  v232 = a1;
  v256 = (a2 + 56);
  while (1)
  {
    v50 = v46;
    v51 = v49;
    if (v46)
    {
LABEL_15:
      v55 = (v50 - 1) & v50;
      v56 = v221;
      sub_24A7F08F0(*(a1 + 48) + v228[9] * (__clz(__rbit64(v50)) | (v51 << 6)), v221, type metadata accessor for FMIPDiscoveredAccessory);
      v57 = 0;
      v35 = v51;
    }

    else
    {
      v52 = v229 <= v49 + 1 ? v49 + 1 : v229;
      v53 = v52 - 1;
      v54 = v49;
      while (1)
      {
        v51 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_169;
        }

        if (v51 >= v229)
        {
          break;
        }

        v50 = *(v240 + 8 * v51);
        ++v54;
        if (v50)
        {
          goto LABEL_15;
        }
      }

      v55 = 0;
      v57 = 1;
      v35 = v53;
      v56 = v221;
    }

    v58 = v248;
    v231 = *v234;
    v231(v56, v57, 1, v248);
    v272 = a1;
    v273 = v240;
    v274 = v235;
    v275 = v35;
    v244 = v35;
    v241 = v55;
    v276 = v55;
    v230 = *v233;
    if (v230(v56, 1, v58) == 1)
    {
      sub_24A67F378(v56, &qword_27EF5E9B0, &unk_24A839AD8);
      goto LABEL_166;
    }

    v59 = v254;
    sub_24A7F0958(v56, v254, type metadata accessor for FMIPDiscoveredAccessory);
    v60 = *(a2 + 40);
    sub_24A82DCC4();
    v259 = *v59;
    sub_24A82D5F4();
    if (v59[3])
    {
      v62 = v59[4];
      v61 = v59[5];
      v35 = v59[1];
      v63 = v59[2];
      sub_24A82DCE4();
      MEMORY[0x24C21D5E0](v35);
      v9 = v246;
      sub_24A82D094();
      sub_24A82D094();
    }

    else
    {
      sub_24A82DCE4();
    }

    v64 = v251;
    v239 = *(v248 + 24);
    v65 = v222;
    sub_24A67E964(v59 + v239, v222, &qword_27EF5D360, &unk_24A836200);
    v245 = *v247;
    if (v245(v65, 1, v9) == 1)
    {
      sub_24A82DCE4();
    }

    else
    {
      v66 = v65;
      v67 = v223;
      sub_24A7F0958(v66, v223, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A82DCE4();
      FMIPHawkeyeProductInformation.hash(into:)();
      sub_24A7F09C0(v67, type metadata accessor for FMIPHawkeyeProductInformation);
    }

    v68 = sub_24A82DD24();
    v69 = -1 << *(a2 + 32);
    v31 = v68 & ~v69;
    v70 = v31 >> 6;
    v71 = 1 << v31;
    if (((1 << v31) & v47[v31 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24A7F09C0(v254, type metadata accessor for FMIPDiscoveredAccessory);
    v49 = v244;
    v46 = v241;
    a1 = v232;
    v9 = v246;
  }

  v258 = ~v69;
  v260 = sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  v261 = v228[9];
  while (1)
  {
    sub_24A7F08F0(*(a2 + 48) + v261 * v31, v64, type metadata accessor for FMIPDiscoveredAccessory);
    v75 = *v64;
    if ((sub_24A82D5E4() & 1) == 0)
    {
      goto LABEL_27;
    }

    v249 = v71;
    v253 = v70;
    v77 = v64[1];
    v76 = v64[2];
    v79 = v64[3];
    v78 = v64[4];
    v80 = v64[5];
    v82 = v254[1];
    v81 = v254[2];
    v83 = v254[3];
    v84 = v254[5];
    if (!v79)
    {
      v94 = v254[4];
      v252 = v64[1];
      v95 = v77;
      v35 = v76;
      v96 = v78;
      v97 = v83;
      v98 = v80;
      sub_24A715CBC(v95, v76, 0);
      if (!v97)
      {
        sub_24A715CBC(v82, v81, 0);
        v79 = 0;
        v93 = v35;
        v77 = v252;
        goto LABEL_43;
      }

      v253 = v97;
      sub_24A715CBC(v82, v81, v97);
      v99 = v252;
LABEL_41:
      v262 = v99;
      v263 = v35;
      v264 = v79;
      v265 = v96;
      v266 = v98;
      v267 = v82;
      v268 = v81;
      v269 = v253;
      v270 = v94;
      v271 = v84;
      sub_24A67F378(&v262, qword_27EF5F488, &unk_24A83F540);
      goto LABEL_26;
    }

    if (!v83)
    {
      v100 = v64[1];
      v99 = v100;
      v35 = v64[2];
      v94 = v254[4];
      v96 = v64[4];
      v253 = 0;
      v98 = v80;
      sub_24A715CBC(v100, v76, v79);
      sub_24A715CBC(v82, v81, 0);
      sub_24A715CBC(v99, v35, v79);

      goto LABEL_41;
    }

    if (v77 != v82)
    {
      goto LABEL_25;
    }

    if (v78 != v254[4] || v80 != v84)
    {
      v85 = v64[2];
      v86 = v254[4];
      v87 = v64[4];
      v88 = v254[3];
      v89 = v254[5];
      v90 = v64[5];
      v91 = sub_24A82DC04();
      v83 = v88;
      v76 = v85;
      v78 = v87;
      v82 = v77;
      if ((v91 & 1) == 0)
      {
LABEL_25:
        v252 = v77;
        v72 = v76;
        v242 = v78;
        v73 = v83;
        sub_24A715CBC(v77, v76, v79);
        sub_24A715CBC(v82, v81, v73);
        v74 = v77;
        v35 = v242;
        sub_24A715CBC(v74, v72, v79);
        sub_24A7171DC(v82, v81, v73);

        sub_24A7171DC(v252, v72, v79);
LABEL_26:
        a2 = v257;
        v47 = v256;
        v64 = v251;
        goto LABEL_27;
      }
    }

    if (v76 == v81 && v79 == v83)
    {
      v92 = v76;
      sub_24A715CBC(v77, v76, v79);
      sub_24A715CBC(v77, v92, v79);
      sub_24A715CBC(v77, v92, v79);
      sub_24A7171DC(v77, v92, v79);

      v93 = v92;
LABEL_43:
      sub_24A7171DC(v77, v93, v79);
      v64 = v251;
      v35 = v253;
      goto LABEL_44;
    }

    v106 = v77;
    v107 = v76;
    v108 = v83;
    LODWORD(v226) = sub_24A82DC04();
    sub_24A715CBC(v106, v107, v79);
    sub_24A715CBC(v106, v81, v108);
    sub_24A715CBC(v106, v107, v79);
    sub_24A7171DC(v106, v81, v108);

    sub_24A7171DC(v106, v107, v79);
    a2 = v257;
    v47 = v256;
    v64 = v251;
    v35 = v253;
    if ((v226 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_44:
    v101 = *(v243 + 48);
    v102 = v236;
    sub_24A67E964(v64 + *(v248 + 24), v236, &qword_27EF5D360, &unk_24A836200);
    sub_24A67E964(v254 + v239, v102 + v101, &qword_27EF5D360, &unk_24A836200);
    v103 = v246;
    v104 = v245;
    if (v245(v102, 1, v246) == 1)
    {
      break;
    }

    v35 = v227;
    sub_24A67E964(v102, v227, &qword_27EF5D360, &unk_24A836200);
    if (v104(v102 + v101, 1, v103) == 1)
    {
      sub_24A7F09C0(v35, type metadata accessor for FMIPHawkeyeProductInformation);
      a2 = v257;
      goto LABEL_49;
    }

    v109 = v102;
    v110 = v102 + v101;
    v111 = v219;
    sub_24A7F0958(v110, v219, type metadata accessor for FMIPHawkeyeProductInformation);
    a2 = v257;
    v47 = v256;
    if (*v35 != *v111 || *(v35 + 8) != *(v111 + 8) || (*(v35 + 16) != *(v111 + 16) || *(v35 + 24) != *(v111 + 24)) && (v112 = sub_24A82DC04(), v35 = v227, (v112 & 1) == 0) || (*(v35 + 32) != *(v111 + 32) || *(v35 + 40) != *(v111 + 40)) && (v113 = sub_24A82DC04(), v35 = v227, (v113 & 1) == 0))
    {
LABEL_77:
      sub_24A7F09C0(v111, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A7F09C0(v35, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A67F378(v109, &qword_27EF5D360, &unk_24A836200);
      goto LABEL_27;
    }

    v114 = *(v35 + 56);
    v115 = *(v111 + 56);
    if (v114)
    {
      if (!v115)
      {
        goto LABEL_77;
      }

      if (*(v35 + 48) != *(v111 + 48) || v114 != v115)
      {
        v116 = sub_24A82DC04();
        v35 = v227;
        if ((v116 & 1) == 0)
        {
          goto LABEL_77;
        }
      }
    }

    else if (v115)
    {
      goto LABEL_77;
    }

    if (*(v35 + 64) != *(v111 + 64))
    {
      goto LABEL_77;
    }

    if (*(v35 + 72) != *(v111 + 72))
    {
      goto LABEL_77;
    }

    if (*(v35 + 73) != *(v111 + 73))
    {
      goto LABEL_77;
    }

    v117 = v103[12];
    v118 = sub_24A82C874();
    v35 = v227;
    if ((v118 & 1) == 0)
    {
      goto LABEL_77;
    }

    v119 = v103[13];
    v120 = sub_24A82C874();
    v35 = v227;
    if ((v120 & 1) == 0)
    {
      goto LABEL_77;
    }

    v121 = v103[14];
    v122 = sub_24A82C874();
    v35 = v227;
    if ((v122 & 1) == 0)
    {
      goto LABEL_77;
    }

    v123 = v103[15];
    v124 = sub_24A82C874();
    v35 = v227;
    if ((v124 & 1) == 0)
    {
      goto LABEL_77;
    }

    v125 = v103[16];
    v126 = sub_24A82C874();
    v35 = v227;
    if ((v126 & 1) == 0)
    {
      goto LABEL_77;
    }

    v127 = v103[17];
    v128 = sub_24A82C874();
    v129 = v111;
    v130 = v128;
    sub_24A7F09C0(v129, type metadata accessor for FMIPHawkeyeProductInformation);
    sub_24A7F09C0(v35, type metadata accessor for FMIPHawkeyeProductInformation);
    sub_24A67F378(v109, &qword_27EF5D360, &unk_24A836200);
    v35 = v253;
    a1 = v249;
    if (v130)
    {
      goto LABEL_80;
    }

LABEL_27:
    sub_24A7F09C0(v64, type metadata accessor for FMIPDiscoveredAccessory);
    v31 = (v31 + 1) & v258;
    v70 = v31 >> 6;
    v71 = 1 << v31;
    if ((v47[v31 >> 6] & (1 << v31)) == 0)
    {
      goto LABEL_6;
    }
  }

  v105 = v104(v102 + v101, 1, v103);
  a2 = v257;
  if (v105 != 1)
  {
LABEL_49:
    sub_24A67F378(v102, &qword_27EF5D428, &qword_24A832720);
    v47 = v256;
    goto LABEL_27;
  }

  sub_24A67F378(v102, &qword_27EF5D360, &unk_24A836200);
  a1 = v249;
  v47 = v256;
LABEL_80:
  sub_24A7F09C0(v64, type metadata accessor for FMIPDiscoveredAccessory);
  v131 = sub_24A7F09C0(v254, type metadata accessor for FMIPDiscoveredAccessory);
  v132 = *(a2 + 32);
  v51 = ((1 << v132) + 63) >> 6;
  v48 = 8 * v51;
  if ((v132 & 0x3Fu) > 0xD)
  {
    goto LABEL_170;
  }

  while (2)
  {
    v222 = v51;
    v226 = &v218;
    MEMORY[0x28223BE20](v131);
    v134 = &v218 - ((v133 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v134, v47, v133);
    v135 = *&v134[8 * v35] & ~a1;
    v228 = v134;
    *&v134[8 * v35] = v135;
    v136 = *(a2 + 16) - 1;
    v137 = v232;
    v138 = v225;
    v31 = v250;
    v139 = v240;
    v140 = v229;
    v141 = v244;
    v142 = v241;
LABEL_82:
    v227 = v136;
    while (2)
    {
      if (v142)
      {
        v244 = v141;
        v143 = v141;
LABEL_94:
        v146 = (v142 - 1) & v142;
        sub_24A7F08F0(*(v137 + 48) + (__clz(__rbit64(v142)) | (v143 << 6)) * v261, v138, type metadata accessor for FMIPDiscoveredAccessory);
        v147 = 0;
LABEL_95:
        v148 = v248;
        v231(v138, v147, 1, v248);
        v272 = v137;
        v273 = v240;
        v274 = v235;
        v275 = v244;
        v241 = v146;
        v276 = v146;
        if (v230(v138, 1, v148) == 1)
        {
          sub_24A67F378(v138, &qword_27EF5E9B0, &unk_24A839AD8);
          a2 = sub_24A7EFFA8(v228, v222, v227, a2);
          goto LABEL_166;
        }

        v51 = v255;
        sub_24A7F0958(v138, v255, type metadata accessor for FMIPDiscoveredAccessory);
        v149 = *(a2 + 40);
        sub_24A82DCC4();
        v259 = *v51;
        sub_24A82D5F4();
        if (*(v51 + 24))
        {
          v150 = v255[5];
          v151 = v255[4];
          v152 = v255[2];
          v35 = v255[1];
          sub_24A82DCE4();
          MEMORY[0x24C21D5E0](v35);
          sub_24A82D094();
          v51 = v255;
          sub_24A82D094();
        }

        else
        {
          sub_24A82DCE4();
        }

        v242 = *(v248 + 24);
        v153 = v224;
        sub_24A67E964(v51 + v242, v224, &qword_27EF5D360, &unk_24A836200);
        if (v245(v153, 1, v246) == 1)
        {
          sub_24A82DCE4();
        }

        else
        {
          v154 = v153;
          v155 = v223;
          sub_24A7F0958(v154, v223, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A82DCE4();
          FMIPHawkeyeProductInformation.hash(into:)();
          sub_24A7F09C0(v155, type metadata accessor for FMIPHawkeyeProductInformation);
        }

        v156 = sub_24A82DD24();
        v157 = -1 << *(a2 + 32);
        a1 = v156 & ~v157;
        v158 = a1 >> 6;
        v159 = 1 << a1;
        if (((1 << a1) & v47[a1 >> 6]) == 0)
        {
LABEL_83:
          sub_24A7F09C0(v255, type metadata accessor for FMIPDiscoveredAccessory);
          v137 = v232;
          v138 = v225;
          v139 = v240;
          v140 = v229;
          v141 = v244;
          v142 = v241;
          continue;
        }

        v258 = ~v157;
LABEL_108:
        sub_24A7F08F0(*(a2 + 48) + a1 * v261, v31, type metadata accessor for FMIPDiscoveredAccessory);
        v161 = *v31;
        if ((sub_24A82D5E4() & 1) == 0)
        {
          goto LABEL_107;
        }

        v163 = *(v31 + 8);
        v162 = *(v31 + 16);
        v164 = v31;
        v165 = *(v31 + 24);
        v166 = *(v164 + 32);
        v167 = *(v164 + 40);
        v169 = v255[1];
        v168 = v255[2];
        v170 = v255[3];
        v171 = v255[4];
        v51 = v255[5];
        if (v165)
        {
          if (v170)
          {
            if (v163 == v169)
            {
              if (v166 == v171 && v167 == v51)
              {
                goto LABEL_115;
              }

              v172 = *(v164 + 32);
              v252 = v162;
              v251 = v158;
              v173 = v166;
              v174 = v170;
              v175 = sub_24A82DC04();
              v170 = v174;
              v162 = v252;
              v166 = v173;
              v158 = v251;
              v169 = v163;
              if (v175)
              {
LABEL_115:
                v239 = v171;
                if (v162 == v168 && v165 == v170)
                {
                  v176 = v162;
                  sub_24A715CBC(v163, v162, v165);
                  sub_24A715CBC(v163, v176, v165);
                  sub_24A715CBC(v163, v176, v165);
                  sub_24A7171DC(v163, v176, v165);

                  v177 = v176;
                  goto LABEL_123;
                }

                v188 = v162;
                v236 = v168;
                v249 = v166;
                v189 = v170;
                v253 = v170;
                v35 = v163;
                LODWORD(v252) = sub_24A82DC04();
                sub_24A715CBC(v163, v188, v165);
                sub_24A715CBC(v163, v236, v189);
                sub_24A715CBC(v163, v188, v165);
                sub_24A7171DC(v163, v236, v253);

                sub_24A7171DC(v163, v188, v165);
                a2 = v257;
                v31 = v250;
                v47 = v256;
                if ((v252 & 1) == 0)
                {
                  goto LABEL_107;
                }

LABEL_124:
                v184 = *(v243 + 48);
                v35 = v237;
                v51 = &unk_24A836200;
                sub_24A67E964(v31 + *(v248 + 24), v237, &qword_27EF5D360, &unk_24A836200);
                sub_24A67E964(v255 + v242, v35 + v184, &qword_27EF5D360, &unk_24A836200);
                v185 = v246;
                v186 = v245;
                if (v245(v35, 1, v246) == 1)
                {
                  v187 = v186(v35 + v184, 1, v185);
                  a2 = v257;
                  if (v187 == 1)
                  {
                    sub_24A67F378(v35, &qword_27EF5D360, &unk_24A836200);
                    v47 = v256;
LABEL_159:
                    sub_24A7F09C0(v31, type metadata accessor for FMIPDiscoveredAccessory);
                    sub_24A7F09C0(v255, type metadata accessor for FMIPDiscoveredAccessory);
                    v209 = v228[v158];
                    v228[v158] = v209 & ~v159;
                    v137 = v232;
                    v138 = v225;
                    v139 = v240;
                    v140 = v229;
                    v141 = v244;
                    v142 = v241;
                    if ((v209 & v159) != 0)
                    {
                      v136 = v227 - 1;
                      if (__OFSUB__(v227, 1))
                      {
                        __break(1u);
                      }

                      if (v227 == 1)
                      {

                        a2 = MEMORY[0x277D84FA0];
                        goto LABEL_166;
                      }

                      goto LABEL_82;
                    }

                    continue;
                  }

LABEL_129:
                  sub_24A67F378(v35, &qword_27EF5D428, &qword_24A832720);
LABEL_106:
                  v47 = v256;
LABEL_107:
                  sub_24A7F09C0(v31, type metadata accessor for FMIPDiscoveredAccessory);
                  a1 = (a1 + 1) & v258;
                  v158 = a1 >> 6;
                  v159 = 1 << a1;
                  if ((v47[a1 >> 6] & (1 << a1)) == 0)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_108;
                }

                sub_24A67E964(v35, v238, &qword_27EF5D360, &unk_24A836200);
                if (v186(v35 + v184, 1, v185) == 1)
                {
                  sub_24A7F09C0(v238, type metadata accessor for FMIPHawkeyeProductInformation);
                  a2 = v257;
                  goto LABEL_129;
                }

                v51 = v185;
                v190 = v35;
                v191 = v35 + v184;
                v192 = v220;
                sub_24A7F0958(v191, v220, type metadata accessor for FMIPHawkeyeProductInformation);
                v35 = v238;
                a2 = v257;
                v47 = v256;
                if (*v238 == *v192 && v238[1] == *(v192 + 8))
                {
                  if (v238[2] == *(v192 + 16) && v238[3] == *(v192 + 24) || (v193 = sub_24A82DC04(), v35 = v238, (v193 & 1) != 0))
                  {
                    if (*(v35 + 32) == *(v192 + 32) && *(v35 + 40) == *(v192 + 40) || (v194 = sub_24A82DC04(), v35 = v238, (v194 & 1) != 0))
                    {
                      v195 = *(v35 + 56);
                      v196 = *(v192 + 56);
                      if (v195)
                      {
                        if (!v196)
                        {
                          goto LABEL_157;
                        }

                        if (*(v35 + 48) != *(v192 + 48) || v195 != v196)
                        {
                          v197 = sub_24A82DC04();
                          v35 = v238;
                          if ((v197 & 1) == 0)
                          {
                            goto LABEL_157;
                          }
                        }

LABEL_147:
                        if (*(v35 + 64) == *(v192 + 64) && *(v35 + 72) == *(v192 + 72) && *(v35 + 73) == *(v192 + 73))
                        {
                          v198 = *(v51 + 48);
                          v199 = sub_24A82C874();
                          v35 = v238;
                          if (v199)
                          {
                            v200 = *(v51 + 52);
                            v201 = sub_24A82C874();
                            v35 = v238;
                            if (v201)
                            {
                              v202 = *(v51 + 56);
                              v203 = sub_24A82C874();
                              v35 = v238;
                              if (v203)
                              {
                                v204 = *(v51 + 60);
                                v205 = sub_24A82C874();
                                v35 = v238;
                                if (v205)
                                {
                                  v206 = *(v51 + 64);
                                  v207 = sub_24A82C874();
                                  v35 = v238;
                                  if (v207)
                                  {
                                    v208 = *(v51 + 68);
                                    v51 = sub_24A82C874();
                                    sub_24A7F09C0(v192, type metadata accessor for FMIPHawkeyeProductInformation);
                                    sub_24A7F09C0(v35, type metadata accessor for FMIPHawkeyeProductInformation);
                                    sub_24A67F378(v190, &qword_27EF5D360, &unk_24A836200);
                                    if (v51)
                                    {
                                      goto LABEL_159;
                                    }

                                    goto LABEL_107;
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_157;
                      }

                      if (!v196)
                      {
                        goto LABEL_147;
                      }
                    }
                  }
                }

LABEL_157:
                sub_24A7F09C0(v192, type metadata accessor for FMIPHawkeyeProductInformation);
                sub_24A7F09C0(v35, type metadata accessor for FMIPHawkeyeProductInformation);
                sub_24A67F378(v190, &qword_27EF5D360, &unk_24A836200);
                goto LABEL_107;
              }
            }

            v160 = v162;
            v249 = v166;
            v35 = v170;
            v254 = v163;
            sub_24A715CBC(v163, v162, v165);
            sub_24A715CBC(v169, v168, v35);
            sub_24A715CBC(v163, v160, v165);
            sub_24A7171DC(v169, v168, v35);

            sub_24A7171DC(v254, v160, v165);
LABEL_105:
            a2 = v257;
            v31 = v250;
            goto LABEL_106;
          }

          v183 = v163;
          v182 = v162;
          v179 = *(v164 + 32);
          v253 = 0;
          v35 = v163;
          v181 = v167;
          sub_24A715CBC(v183, v162, v165);
          sub_24A715CBC(v169, v168, 0);
          sub_24A715CBC(v35, v182, v165);
        }

        else
        {
          v251 = v158;
          v254 = v163;
          v178 = v163;
          v252 = v162;
          v179 = v166;
          v180 = v170;
          v181 = v167;
          sub_24A715CBC(v178, v162, 0);
          if (!v180)
          {
            sub_24A715CBC(v169, v168, 0);
            v165 = 0;
            v158 = v251;
            v177 = v252;
            v163 = v254;
LABEL_123:
            sub_24A7171DC(v163, v177, v165);
            v31 = v250;
            goto LABEL_124;
          }

          v253 = v180;
          sub_24A715CBC(v169, v168, v180);
          v182 = v252;
          v35 = v254;
        }

        v262 = v35;
        v263 = v182;
        v264 = v165;
        v265 = v179;
        v266 = v181;
        v267 = v169;
        v268 = v168;
        v269 = v253;
        v270 = v171;
        v271 = v51;
        sub_24A67F378(&v262, qword_27EF5F488, &unk_24A83F540);
        goto LABEL_105;
      }

      break;
    }

    if (v140 <= v141 + 1)
    {
      v144 = v141 + 1;
    }

    else
    {
      v144 = v140;
    }

    v145 = v144 - 1;
    while (1)
    {
      v143 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        break;
      }

      if (v143 >= v140)
      {
        v146 = 0;
        v147 = 1;
        v244 = v145;
        goto LABEL_95;
      }

      v142 = *(v139 + 8 * v143);
      ++v141;
      if (v142)
      {
        v244 = v143;
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    v212 = v48;

    v213 = v212;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v214 = swift_slowAlloc();
  memcpy(v214, v47, v213);
  v215 = v51;
  v216 = v218;
  v217 = sub_24A7EE564(v214, v215, a2, v31, &v272);

  if (v216)
  {

    result = MEMORY[0x24C21E1D0](v214, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C21E1D0](v214, -1, -1);
    a2 = v217;
LABEL_166:
    sub_24A6BAFBC();
LABEL_167:
    v210 = *MEMORY[0x277D85DE8];
    return a2;
  }

  return result;
}

uint64_t sub_24A7ECFEC(unint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v158 = (&v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v155 = (&v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v144 - v12);
  v159 = sub_24A6BBA94(&qword_27EF5E768, &qword_24A83F520);
  v14 = *(*(v159 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v159);
  v156 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v144 - v17;
  v19 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v157 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v168 = (&v144 - v23);
  v24 = type metadata accessor for FMIPUnknownItem();
  v25 = *(*(v24 - 1) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v144 - v29;
  MEMORY[0x28223BE20](v28);
  v35 = &v144 - v34;
  if (!*(a2 + 16))
  {

    v83 = MEMORY[0x277D84FA0];
    goto LABEL_62;
  }

  v153 = v18;
  v149 = v13;
  v151 = v32;
  v154 = v31;
  v150 = v4;
  v148 = 0;
  v37 = a1 + 56;
  v36 = *(a1 + 56);
  v38 = -1 << *(a1 + 32);
  v169 = ~v38;
  if (-v38 < 64)
  {
    v39 = ~(-1 << -v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v36;
  v160 = (63 - v38) >> 6;
  v167 = (v33 + 56);
  v170 = v33;
  v166 = (v33 + 48);
  v165 = a2;
  v174 = (a2 + 56);
  v152 = (v5 + 48);

  v41 = 0;
  v42 = a1;
  v164 = a1;
  v163 = a1 + 56;
LABEL_7:
  v43 = v40;
  v44 = v41;
  v45 = v168;
  v173 = v40;
  if (v40)
  {
LABEL_15:
    v49 = (v43 - 1) & v43;
    sub_24A7F08F0(*(v42 + 48) + *(v170 + 72) * (__clz(__rbit64(v43)) | (v44 << 6)), v168, type metadata accessor for FMIPUnknownItem);
    v50 = 0;
    v47 = v44;
    v51 = v49;
    goto LABEL_16;
  }

  if (v160 <= (v41 + 1))
  {
    v46 = v41 + 1;
  }

  else
  {
    v46 = v160;
  }

  v47 = v46 - 1;
  v48 = v41;
  while (1)
  {
    v44 = (v48 + 1);
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v44 >= v160)
    {
      v51 = 0;
      v50 = 1;
LABEL_16:
      v52 = *v167;
      (*v167)(v45, v50, 1, v24);
      v176 = v42;
      v177 = v37;
      v178 = v169;
      v179 = v47;
      v180 = v51;
      v162 = *v166;
      if (v162(v45, 1, v24) == 1)
      {
        sub_24A67F378(v45, &qword_27EF5F480, &qword_24A83F528);
        sub_24A6BAFBC();
        v83 = v165;
LABEL_62:
        v84 = *MEMORY[0x277D85DE8];
        return v83;
      }

      v161 = v52;
      v172 = v51;
      v171 = v47;
      sub_24A7F0958(v45, v35, type metadata accessor for FMIPUnknownItem);
      v53 = v165;
      v54 = *(v165 + 40);
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v175);
      v55 = sub_24A82DD24();
      v37 = v53;
      v56 = -1 << *(v53 + 32);
      v42 = v55 & ~v56;
      v45 = v42 >> 6;
      v44 = 1 << v42;
      if (((1 << v42) & v174[v42 >> 6]) != 0)
      {
        v57 = ~v56;
        v58 = v35[v24[15]];
        v173 = *(v170 + 72);
        do
        {
          sub_24A7F08F0(*(v37 + 48) + v173 * v42, v30, type metadata accessor for FMIPUnknownItem);
          if (v30[v24[15]] != v58 || *&v30[v24[13]] != *&v35[v24[13]])
          {
            goto LABEL_54;
          }

          v59 = v24[6];
          v60 = &v30[v59];
          v61 = *&v30[v59 + 8];
          v62 = &v35[v59];
          v63 = *(v62 + 1);
          if (v61)
          {
            if (!v63)
            {
              goto LABEL_54;
            }

            v64 = *v60 == *v62 && v61 == v63;
            if (!v64 && (sub_24A82DC04() & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v63)
          {
            goto LABEL_54;
          }

          if ((sub_24A82CA74() & 1) == 0 || v30[v24[16]] != v35[v24[16]] || v30[v24[7]] != v35[v24[7]] || (sub_24A7D8828(*&v30[v24[8]], *&v35[v24[8]]) & 1) == 0)
          {
            goto LABEL_54;
          }

          v65 = v24[5];
          v66 = *&v30[v65];
          v67 = *&v30[v65 + 8];
          v68 = &v35[v65];
          if ((v66 != *v68 || v67 != *(v68 + 1)) && (sub_24A82DC04() & 1) == 0)
          {
            goto LABEL_54;
          }

          if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(&v30[v24[9]], &v35[v24[9]]) || v30[v24[10]] != v35[v24[10]] || *&v30[v24[14]] != *&v35[v24[14]])
          {
            goto LABEL_54;
          }

          v69 = v24[12];
          v70 = *&v35[v69];
          if (*&v30[v69])
          {
            if (!v70)
            {
              goto LABEL_54;
            }

            v146 = *&v30[v69];
            v147 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
            v145 = v70;
            v146 = v146;
            v71 = sub_24A82D5E4();

            if ((v71 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v70)
          {
            goto LABEL_54;
          }

          v146 = v24[11];
          v147 = *(v159 + 48);
          v72 = v153;
          sub_24A67E964(v146 + v30, v153, &qword_27EF5E520, &qword_24A8384B0);
          sub_24A67E964(v146 + v35, v72 + v147, &qword_27EF5E520, &qword_24A8384B0);
          v73 = v72;
          v74 = v150;
          v146 = *v152;
          if ((v146)(v73, 1, v150) == 1)
          {
            if ((v146)(&v153[v147], 1, v74) != 1)
            {
              goto LABEL_50;
            }

            sub_24A67F378(v153, &qword_27EF5E520, &qword_24A8384B0);
          }

          else
          {
            v75 = v153;
            sub_24A67E964(v153, v149, &qword_27EF5E520, &qword_24A8384B0);
            v76 = v75 + v147;
            v77 = v147;
            if ((v146)(v76, 1, v150) == 1)
            {
              sub_24A7F09C0(v149, type metadata accessor for FMIPUnknownItemUTMetadata);
LABEL_50:
              sub_24A67F378(v153, &qword_27EF5E768, &qword_24A83F520);
LABEL_54:
              sub_24A7F09C0(v30, type metadata accessor for FMIPUnknownItem);
              goto LABEL_55;
            }

            v78 = &v153[v77];
            v79 = v158;
            sub_24A7F0958(v78, v158, type metadata accessor for FMIPUnknownItemUTMetadata);
            LODWORD(v147) = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v149, v79);
            sub_24A7F09C0(v79, type metadata accessor for FMIPUnknownItemUTMetadata);
            sub_24A7F09C0(v149, type metadata accessor for FMIPUnknownItemUTMetadata);
            sub_24A67F378(v153, &qword_27EF5E520, &qword_24A8384B0);
            if ((v147 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          if (v30[v24[17]] != v35[v24[17]] || v30[v24[18]] != v35[v24[18]])
          {
            goto LABEL_54;
          }

          v80 = v24[19];
          v81 = *&v30[v80];
          v82 = *&v35[v80];
          sub_24A7F09C0(v30, type metadata accessor for FMIPUnknownItem);
          if (v81 == v82)
          {
            goto LABEL_64;
          }

LABEL_55:
          v42 = (v42 + 1) & v57;
          v45 = v42 >> 6;
          v44 = 1 << v42;
        }

        while ((v174[v42 >> 6] & (1 << v42)) != 0);
      }

      sub_24A7F09C0(v35, type metadata accessor for FMIPUnknownItem);
      v41 = v171;
      v40 = v172;
      v42 = v164;
      v37 = v163;
      goto LABEL_7;
    }

    v43 = *(v37 + 8 * v44);
    ++v48;
    if (v43)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_64:
  v86 = sub_24A7F09C0(v35, type metadata accessor for FMIPUnknownItem);
  v87 = v37;
  v88 = *(v37 + 32);
  v89 = v88 & 0x3F;
  v90 = ((1 << v88) + 63) >> 6;
  v170 = v90;
  if (v89 > 0xD)
  {
    v142 = 8 * v90;

    v143 = v142;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v97 = swift_slowAlloc();
      memcpy(v97, v174, v143);
      v104 = v148;
      v83 = sub_24A7EF590(v97, v170, v37, v42, &v176);

      if (v104)
      {
        goto LABEL_135;
      }

      MEMORY[0x24C21E1D0](v97, -1, -1);
LABEL_128:
      sub_24A6BAFBC();
      goto LABEL_62;
    }

    v87 = v37;
  }

  v149 = &v144;
  MEMORY[0x28223BE20](v86);
  v92 = &v144 - ((v91 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v92, v174, v91);
  v93 = *&v92[8 * v45] & ~v44;
  v168 = v92;
  *&v92[8 * v45] = v93;
  v153 = (*(v87 + 16) - 1);
  v94 = v164;
  v95 = v163;
  v96 = v171;
  while (2)
  {
    v97 = v157;
    v98 = v160;
    do
    {
      while (1)
      {
        if (v172)
        {
          v99 = v96;
LABEL_78:
          v102 = (v172 - 1) & v172;
          sub_24A7F08F0(*(v94 + 48) + (__clz(__rbit64(v172)) | (v99 << 6)) * v173, v97, type metadata accessor for FMIPUnknownItem);
          v103 = 0;
        }

        else
        {
          if (v98 <= (v96 + 1))
          {
            v100 = v96 + 1;
          }

          else
          {
            v100 = v98;
          }

          v101 = v100 - 1;
          while (1)
          {
            v99 = (v96 + 1);
            if (__OFADD__(v96, 1))
            {
              __break(1u);
            }

            if (v99 >= v98)
            {
              break;
            }

            ++v96;
            if (*(v95 + 8 * v99))
            {
              v172 = *(v95 + 8 * v99);
              v96 = v99;
              goto LABEL_78;
            }
          }

          v102 = 0;
          v103 = 1;
          v96 = v101;
        }

        v161(v97, v103, 1, v24);
        v176 = v94;
        v177 = v95;
        v178 = v169;
        v179 = v96;
        v180 = v102;
        if (v162(v97, 1, v24) == 1)
        {
          sub_24A67F378(v97, &qword_27EF5F480, &qword_24A83F528);
          v83 = sub_24A7F048C(v168, v170, v153, v87);
          goto LABEL_128;
        }

        v172 = v102;
        v104 = v96;
        v105 = v151;
        sub_24A7F0958(v97, v151, type metadata accessor for FMIPUnknownItem);
        v106 = *(v87 + 40);
        sub_24A82DCC4();
        FMIPUnknownItem.hash(into:)(v175);
        v107 = sub_24A82DD24();
        v108 = -1 << *(v87 + 32);
        v109 = v107 & ~v108;
        v110 = v109 >> 6;
        v111 = 1 << v109;
        if (((1 << v109) & v174[v109 >> 6]) != 0)
        {
          break;
        }

LABEL_67:
        sub_24A7F09C0(v151, type metadata accessor for FMIPUnknownItem);
        v87 = v37;
        v94 = v164;
        v97 = v157;
        v95 = v163;
        v98 = v160;
        v96 = v104;
      }

      v112 = ~v108;
      v113 = *(v105 + v24[15]);
      v114 = v154;
      while (1)
      {
        sub_24A7F08F0(*(v37 + 48) + v109 * v173, v114, type metadata accessor for FMIPUnknownItem);
        v115 = v154;
        if (*(v154 + v24[15]) != v113 || *(v154 + v24[13]) != *(v151 + v24[13]))
        {
          goto LABEL_117;
        }

        v116 = v24[6];
        v117 = (v154 + v116);
        v118 = *(v154 + v116 + 8);
        v119 = (v151 + v116);
        v120 = v119[1];
        if (v118)
        {
          if (!v120)
          {
            goto LABEL_117;
          }

          if (*v117 != *v119 || v118 != v120)
          {
            v122 = sub_24A82DC04();
            v115 = v154;
            if ((v122 & 1) == 0)
            {
              goto LABEL_117;
            }
          }
        }

        else if (v120)
        {
          goto LABEL_117;
        }

        v123 = sub_24A82CA74();
        v115 = v154;
        if ((v123 & 1) == 0)
        {
          goto LABEL_117;
        }

        if (*(v154 + v24[16]) != *(v151 + v24[16]))
        {
          goto LABEL_117;
        }

        if (*(v154 + v24[7]) != *(v151 + v24[7]))
        {
          goto LABEL_117;
        }

        v124 = sub_24A7D8828(*(v154 + v24[8]), *(v151 + v24[8]));
        v115 = v154;
        if ((v124 & 1) == 0)
        {
          goto LABEL_117;
        }

        v125 = v24[5];
        v126 = *(v154 + v125);
        v127 = *(v154 + v125 + 8);
        v128 = (v151 + v125);
        if (v126 != *v128 || v127 != v128[1])
        {
          v129 = sub_24A82DC04();
          v115 = v154;
          if ((v129 & 1) == 0)
          {
            goto LABEL_117;
          }
        }

        v130 = _s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(v115 + v24[9], v151 + v24[9]);
        v115 = v154;
        if (!v130 || *(v154 + v24[10]) != *(v151 + v24[10]) || *(v154 + v24[14]) != *(v151 + v24[14]))
        {
          goto LABEL_117;
        }

        v131 = v24[12];
        v132 = *(v151 + v131);
        v171 = *(v154 + v131);
        if (v171)
        {
          if (!v132)
          {
            goto LABEL_117;
          }

          v147 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
          v145 = v132;
          v171 = v171;
          v133 = sub_24A82D5E4();

          v115 = v154;
          if ((v133 & 1) == 0)
          {
            goto LABEL_117;
          }
        }

        else if (v132)
        {
          goto LABEL_117;
        }

        v147 = v24[11];
        v171 = *(v159 + 48);
        v134 = v156;
        sub_24A67E964(v115 + v147, v156, &qword_27EF5E520, &qword_24A8384B0);
        sub_24A67E964(v151 + v147, v171 + v134, &qword_27EF5E520, &qword_24A8384B0);
        if ((v146)(v134, 1, v150) == 1)
        {
          break;
        }

        v135 = v156;
        sub_24A67E964(v156, v155, &qword_27EF5E520, &qword_24A8384B0);
        if ((v146)(v171 + v135, 1, v150) == 1)
        {
          sub_24A7F09C0(v155, type metadata accessor for FMIPUnknownItemUTMetadata);
          goto LABEL_113;
        }

        v136 = v158;
        sub_24A7F0958(v171 + v156, v158, type metadata accessor for FMIPUnknownItemUTMetadata);
        LODWORD(v171) = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v155, v136);
        sub_24A7F09C0(v136, type metadata accessor for FMIPUnknownItemUTMetadata);
        sub_24A7F09C0(v155, type metadata accessor for FMIPUnknownItemUTMetadata);
        sub_24A67F378(v156, &qword_27EF5E520, &qword_24A8384B0);
        v115 = v154;
        if (v171)
        {
          goto LABEL_115;
        }

LABEL_117:
        sub_24A7F09C0(v115, type metadata accessor for FMIPUnknownItem);
LABEL_118:
        v109 = (v109 + 1) & v112;
        v110 = v109 >> 6;
        v111 = 1 << v109;
        v114 = v154;
        if ((v174[v109 >> 6] & (1 << v109)) == 0)
        {
          goto LABEL_67;
        }
      }

      if ((v146)(v171 + v156, 1, v150) != 1)
      {
LABEL_113:
        sub_24A67F378(v156, &qword_27EF5E768, &qword_24A83F520);
        v115 = v154;
        goto LABEL_117;
      }

      sub_24A67F378(v156, &qword_27EF5E520, &qword_24A8384B0);
      v115 = v154;
LABEL_115:
      if (*(v115 + v24[17]) != *(v151 + v24[17]) || *(v115 + v24[18]) != *(v151 + v24[18]))
      {
        goto LABEL_117;
      }

      v137 = v24[19];
      v138 = *(v115 + v137);
      v139 = *(v151 + v137);
      sub_24A7F09C0(v115, type metadata accessor for FMIPUnknownItem);
      if (v138 != v139)
      {
        goto LABEL_118;
      }

      sub_24A7F09C0(v151, type metadata accessor for FMIPUnknownItem);
      v140 = v168[v110];
      v168[v110] = v140 & ~v111;
      v64 = (v140 & v111) == 0;
      v87 = v37;
      v94 = v164;
      v97 = v157;
      v95 = v163;
      v98 = v160;
      v96 = v104;
    }

    while (v64);
    if (!__OFSUB__(v153--, 1))
    {
      v87 = v37;
      v94 = v164;
      v95 = v163;
      v96 = v104;
      if (!v153)
      {

        v83 = MEMORY[0x277D84FA0];
        goto LABEL_128;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_135:

  result = MEMORY[0x24C21E1D0](v97, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24A7EE564(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v132[0] = a2;
  v145 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  v9 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v144 = v132 - v10;
  v11 = type metadata accessor for FMIPHawkeyeProductInformation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v136 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = v132 - v16;
  v17 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v142 = v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v137 = v132 - v21;
  v22 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v141 = v132 - v24;
  v151 = type metadata accessor for FMIPDiscoveredAccessory();
  v25 = *(*(v151 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v151);
  v157 = v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v26);
  v161 = (v132 - v29);
  v30 = *(a3 + 16);
  v31 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v32 = *(a1 + v31) & ((-1 << a4) - 1);
  v134 = a1;
  *(a1 + v31) = v32;
  v33 = v30 - 1;
  v140 = (v34 + 56);
  v143 = v34;
  v139 = (v34 + 48);
  v149 = (v12 + 48);
  v166 = a3 + 56;
  v138 = a5;
  v150 = v11;
  v159 = a3;
LABEL_2:
  v133 = v33;
LABEL_4:
  while (2)
  {
    v35 = *a5;
    v36 = a5[1];
    v38 = a5[2];
    v37 = a5[3];
    v39 = a5[4];
    if (v39)
    {
      v40 = a5[3];
LABEL_13:
      v44 = (v39 - 1) & v39;
      v45 = v141;
      sub_24A7F08F0(*(v35 + 48) + *(v143 + 72) * (__clz(__rbit64(v39)) | (v40 << 6)), v141, type metadata accessor for FMIPDiscoveredAccessory);
      v46 = 0;
      v43 = v40;
LABEL_14:
      v47 = v151;
      (*v140)(v45, v46, 1, v151);
      *a5 = v35;
      a5[1] = v36;
      a5[2] = v38;
      a5[3] = v43;
      a5[4] = v44;
      if ((*v139)(v45, 1, v47) == 1)
      {
        sub_24A67F378(v45, &qword_27EF5E9B0, &unk_24A839AD8);
        v131 = v159;

        return sub_24A7EFFA8(v134, v132[0], v133, v131);
      }

      v48 = v161;
      sub_24A7F0958(v45, v161, type metadata accessor for FMIPDiscoveredAccessory);
      v49 = *(v159 + 40);
      sub_24A82DCC4();
      v167 = *v48;
      sub_24A82D5F4();
      if (v48[3])
      {
        v51 = v48[4];
        v50 = v48[5];
        v53 = v48[1];
        v52 = v48[2];
        sub_24A82DCE4();
        MEMORY[0x24C21D5E0](v53);
        sub_24A82D094();
        sub_24A82D094();
      }

      else
      {
        sub_24A82DCE4();
      }

      v54 = v137;
      v55 = v157;
      v148 = *(v151 + 24);
      sub_24A67E964(v48 + v148, v137, &qword_27EF5D360, &unk_24A836200);
      v147 = *v149;
      if (v147(v54, 1, v11) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v56 = v54;
        v57 = v135;
        sub_24A7F0958(v56, v135, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)();
        sub_24A7F09C0(v57, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      v58 = v159;
      v59 = sub_24A82DD24();
      v60 = -1 << *(v58 + 32);
      v61 = v59 & ~v60;
      v62 = v61 >> 6;
      v63 = 1 << v61;
      if (((1 << v61) & *(v166 + 8 * (v61 >> 6))) == 0)
      {
LABEL_3:
        result = sub_24A7F09C0(v161, type metadata accessor for FMIPDiscoveredAccessory);
        a5 = v138;
        v11 = v150;
        continue;
      }

      v163 = ~v60;
      v165 = sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
      v164 = *(v143 + 72);
      while (1)
      {
        sub_24A7F08F0(*(v58 + 48) + v164 * v61, v55, type metadata accessor for FMIPDiscoveredAccessory);
        v66 = *v55;
        if ((sub_24A82D5E4() & 1) == 0)
        {
          goto LABEL_25;
        }

        v68 = v55[1];
        v67 = v55[2];
        v70 = v55[3];
        v69 = v55[4];
        v71 = v55[5];
        v72 = v161[1];
        v73 = v161[2];
        v74 = v161[3];
        v75 = v161[4];
        v76 = v161[5];
        if (!v70)
        {
          break;
        }

        if (!v74)
        {
          v88 = v67;
          v160 = v161[5];
          v90 = v70;
          v156 = 0;
          v89 = v68;
          sub_24A715CBC(v68, v67, v70);
          sub_24A715CBC(v72, v73, 0);
          sub_24A715CBC(v89, v88, v90);

          goto LABEL_40;
        }

        v162 = v67;
        v154 = v75;
        if (v68 != v72)
        {
          goto LABEL_38;
        }

        if (v69 != v75 || v71 != v76)
        {
          v146 = v73;
          v155 = v70;
          v77 = v69;
          v78 = v74;
          v79 = v71;
          v80 = v68;
          v81 = sub_24A82DC04();
          v74 = v78;
          v70 = v155;
          v73 = v146;
          v68 = v80;
          v71 = v79;
          v67 = v162;
          v69 = v77;
          v72 = v80;
          if ((v81 & 1) == 0)
          {
LABEL_38:
            v91 = v70;
            v153 = v69;
            v92 = v74;
            v93 = v68;
            v158 = v68;
            sub_24A715CBC(v68, v67, v70);
            sub_24A715CBC(v72, v73, v92);
            v94 = v93;
            v95 = v162;
            sub_24A715CBC(v94, v162, v91);
            sub_24A7171DC(v72, v73, v92);

            v96 = v158;
            v97 = v95;
            v98 = v91;
LABEL_41:
            sub_24A7171DC(v96, v97, v98);
            v58 = v159;
LABEL_42:
            v55 = v157;
            goto LABEL_25;
          }
        }

        v160 = v76;
        if (v67 == v73 && v70 == v74)
        {
          v82 = v67;
          v83 = v70;
          v153 = v69;
          v84 = v68;
          sub_24A715CBC(v68, v67, v70);
          sub_24A715CBC(v84, v82, v83);
          sub_24A715CBC(v84, v82, v83);
          sub_24A7171DC(v84, v82, v83);

          v85 = v83;
          v86 = v82;
LABEL_44:
          sub_24A7171DC(v84, v86, v85);
          v55 = v157;
          goto LABEL_45;
        }

        v104 = v67;
        v105 = v73;
        v106 = v70;
        v146 = v73;
        v107 = v74;
        v156 = v74;
        v152 = v71;
        v108 = v68;
        LODWORD(v155) = sub_24A82DC04();
        sub_24A715CBC(v108, v104, v106);
        sub_24A715CBC(v108, v105, v107);
        sub_24A715CBC(v108, v162, v106);
        sub_24A7171DC(v108, v146, v156);

        sub_24A7171DC(v108, v162, v106);
        v58 = v159;
        v55 = v157;
        if ((v155 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_45:
        v99 = *(v145 + 48);
        v100 = v144;
        sub_24A67E964(v55 + *(v151 + 24), v144, &qword_27EF5D360, &unk_24A836200);
        sub_24A67E964(v161 + v148, v100 + v99, &qword_27EF5D360, &unk_24A836200);
        v101 = v150;
        v102 = v147;
        if (v147(v100, 1, v150) == 1)
        {
          v64 = v102(v100 + v99, 1, v101) == 1;
          v58 = v159;
          v65 = v100;
          if (v64)
          {
            sub_24A67F378(v100, &qword_27EF5D360, &unk_24A836200);
LABEL_78:
            sub_24A7F09C0(v55, type metadata accessor for FMIPDiscoveredAccessory);
            result = sub_24A7F09C0(v161, type metadata accessor for FMIPDiscoveredAccessory);
            v130 = v134[v62];
            v134[v62] = v130 & ~v63;
            v64 = (v130 & v63) == 0;
            a5 = v138;
            v11 = v150;
            if (!v64)
            {
              v33 = v133 - 1;
              if (__OFSUB__(v133, 1))
              {
                goto LABEL_85;
              }

              if (v133 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          goto LABEL_24;
        }

        v103 = v142;
        sub_24A67E964(v100, v142, &qword_27EF5D360, &unk_24A836200);
        if (v102(v100 + v99, 1, v101) == 1)
        {
          sub_24A7F09C0(v103, type metadata accessor for FMIPHawkeyeProductInformation);
          v55 = v157;
          v58 = v159;
          v65 = v100;
LABEL_24:
          sub_24A67F378(v65, &qword_27EF5D428, &qword_24A832720);
          goto LABEL_25;
        }

        v109 = v100 + v99;
        v110 = v136;
        sub_24A7F0958(v109, v136, type metadata accessor for FMIPHawkeyeProductInformation);
        v58 = v159;
        if (*v103 != *v110 || *(v103 + 8) != *(v110 + 8) || (*(v103 + 16) != *(v110 + 16) || *(v103 + 24) != *(v110 + 24)) && (v111 = sub_24A82DC04(), v103 = v142, (v111 & 1) == 0) || (*(v103 + 32) != *(v110 + 32) || *(v103 + 40) != *(v110 + 40)) && (v112 = sub_24A82DC04(), v103 = v142, (v112 & 1) == 0))
        {
LABEL_75:
          sub_24A7F09C0(v110, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A7F09C0(v103, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A67F378(v100, &qword_27EF5D360, &unk_24A836200);
          goto LABEL_42;
        }

        v113 = *(v103 + 56);
        v114 = *(v110 + 56);
        if (v113)
        {
          if (!v114)
          {
            goto LABEL_75;
          }

          if (*(v103 + 48) != *(v110 + 48) || v113 != v114)
          {
            v115 = sub_24A82DC04();
            v103 = v142;
            if ((v115 & 1) == 0)
            {
              goto LABEL_75;
            }
          }
        }

        else if (v114)
        {
          goto LABEL_75;
        }

        if (*(v103 + 64) != *(v110 + 64))
        {
          goto LABEL_75;
        }

        if (*(v103 + 72) != *(v110 + 72))
        {
          goto LABEL_75;
        }

        if (*(v103 + 73) != *(v110 + 73))
        {
          goto LABEL_75;
        }

        v116 = v150[12];
        v117 = sub_24A82C874();
        v103 = v142;
        if ((v117 & 1) == 0)
        {
          goto LABEL_75;
        }

        v118 = v150[13];
        v119 = sub_24A82C874();
        v103 = v142;
        if ((v119 & 1) == 0)
        {
          goto LABEL_75;
        }

        v120 = v150[14];
        v121 = sub_24A82C874();
        v103 = v142;
        if ((v121 & 1) == 0)
        {
          goto LABEL_75;
        }

        v122 = v150[15];
        v123 = sub_24A82C874();
        v103 = v142;
        if ((v123 & 1) == 0)
        {
          goto LABEL_75;
        }

        v124 = v150[16];
        v125 = sub_24A82C874();
        v103 = v142;
        if ((v125 & 1) == 0)
        {
          goto LABEL_75;
        }

        v126 = v150[17];
        v127 = sub_24A82C874();
        v128 = v110;
        v129 = v127;
        sub_24A7F09C0(v128, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A7F09C0(v103, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A67F378(v100, &qword_27EF5D360, &unk_24A836200);
        v55 = v157;
        if (v129)
        {
          goto LABEL_78;
        }

LABEL_25:
        sub_24A7F09C0(v55, type metadata accessor for FMIPDiscoveredAccessory);
        v61 = (v61 + 1) & v163;
        v62 = v61 >> 6;
        v63 = 1 << v61;
        if ((*(v166 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
        {
          goto LABEL_3;
        }
      }

      v155 = 0;
      v152 = v62;
      v158 = v68;
      v162 = v67;
      v87 = v74;
      sub_24A715CBC(v68, v67, 0);
      if (v87)
      {
        v156 = v87;
        v160 = v76;
        sub_24A715CBC(v72, v73, v87);
        v88 = v162;
        v89 = v158;
        v90 = v155;
LABEL_40:
        sub_24A7171DC(v89, v88, v90);
        v96 = v72;
        v97 = v73;
        v98 = v156;
        goto LABEL_41;
      }

      sub_24A715CBC(v72, v73, 0);
      v85 = 0;
      v62 = v152;
      v86 = v162;
      v84 = v158;
      goto LABEL_44;
    }

    break;
  }

  v41 = (v38 + 64) >> 6;
  if (v41 <= v37 + 1)
  {
    v42 = v37 + 1;
  }

  else
  {
    v42 = (v38 + 64) >> 6;
  }

  v43 = v42 - 1;
  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v40 >= v41)
    {
      v44 = 0;
      v46 = 1;
      v45 = v141;
      goto LABEL_14;
    }

    v39 = *(v36 + 8 * v40);
    ++v37;
    if (v39)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_24A7EF590(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v87 = a2;
  v84 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v9 = *(v84 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v84 - 8);
  v81 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = (&v79 - v14);
  v82 = sub_24A6BBA94(&qword_27EF5E768, &qword_24A83F520);
  v15 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v86 = &v79 - v16;
  v17 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = &v79 - v19;
  v20 = type metadata accessor for FMIPUnknownItem();
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v99 = &v79 - v25;
  v26 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v88 = v26 - 1;
  v89 = a1;
  v94 = v27;
  v91 = (v27 + 48);
  v92 = (v27 + 56);
  v96 = a3 + 56;
  v97 = a3;
  v90 = a5;
  v85 = (v9 + 48);
  do
  {
    while (1)
    {
LABEL_3:
      v29 = *a5;
      v28 = a5[1];
      v31 = a5[2];
      v30 = a5[3];
      v32 = a5[4];
      v95 = v31;
      if (v32)
      {
        v33 = v30;
LABEL_12:
        v37 = (v32 - 1) & v32;
        v38 = v93;
        sub_24A7F08F0(*(v29 + 48) + *(v94 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v93, type metadata accessor for FMIPUnknownItem);
        v39 = 0;
        v36 = v33;
      }

      else
      {
        v34 = (v31 + 64) >> 6;
        v35 = v34 <= v30 + 1 ? v30 + 1 : (v31 + 64) >> 6;
        v36 = v35 - 1;
        while (1)
        {
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            return MEMORY[0x277D84FA0];
          }

          if (v33 >= v34)
          {
            break;
          }

          v32 = *(v28 + 8 * v33);
          ++v30;
          if (v32)
          {
            goto LABEL_12;
          }
        }

        v37 = 0;
        v39 = 1;
        v38 = v93;
      }

      (*v92)(v38, v39, 1, v20);
      *a5 = v29;
      a5[1] = v28;
      a5[2] = v95;
      a5[3] = v36;
      a5[4] = v37;
      if ((*v91)(v38, 1, v20) == 1)
      {
        sub_24A67F378(v38, &qword_27EF5F480, &qword_24A83F528);
        v78 = v97;

        return sub_24A7F048C(v89, v87, v88, v78);
      }

      v40 = v99;
      sub_24A7F0958(v38, v99, type metadata accessor for FMIPUnknownItem);
      v41 = v97;
      v42 = *(v97 + 40);
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v98);
      v43 = sub_24A82DD24();
      v44 = -1 << *(v41 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      v47 = 1 << v45;
      if (((1 << v45) & *(v96 + 8 * (v45 >> 6))) != 0)
      {
        break;
      }

LABEL_2:
      sub_24A7F09C0(v99, type metadata accessor for FMIPUnknownItem);
      a5 = v90;
    }

    v48 = ~v44;
    v49 = *(v40 + v20[15]);
    v50 = *(v94 + 72);
    while (1)
    {
      sub_24A7F08F0(*(v97 + 48) + v50 * v45, v24, type metadata accessor for FMIPUnknownItem);
      if (v24[v20[15]] != v49 || *&v24[v20[13]] != *(v99 + v20[13]))
      {
        goto LABEL_51;
      }

      v51 = v20[6];
      v52 = &v24[v51];
      v53 = *&v24[v51 + 8];
      v54 = (v99 + v51);
      v55 = v54[1];
      if (v53)
      {
        if (!v55)
        {
          goto LABEL_51;
        }

        v56 = *v52 == *v54 && v53 == v55;
        if (!v56 && (sub_24A82DC04() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v55)
      {
        goto LABEL_51;
      }

      if ((sub_24A82CA74() & 1) == 0 || v24[v20[16]] != *(v99 + v20[16]) || v24[v20[7]] != *(v99 + v20[7]) || (sub_24A7D8828(*&v24[v20[8]], *(v99 + v20[8])) & 1) == 0)
      {
        goto LABEL_51;
      }

      v57 = v20[5];
      v58 = *&v24[v57];
      v59 = *&v24[v57 + 8];
      v60 = (v99 + v57);
      if ((v58 != *v60 || v59 != v60[1]) && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_51;
      }

      if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(&v24[v20[9]], v99 + v20[9]) || v24[v20[10]] != *(v99 + v20[10]) || *&v24[v20[14]] != *(v99 + v20[14]))
      {
        goto LABEL_51;
      }

      v61 = v20[12];
      v62 = *(v99 + v61);
      if (*&v24[v61])
      {
        if (!v62)
        {
          goto LABEL_51;
        }

        v80 = *&v24[v61];
        v95 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
        v79 = v62;
        v80 = v80;
        v63 = sub_24A82D5E4();

        if ((v63 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v62)
      {
        goto LABEL_51;
      }

      v80 = v20[11];
      v95 = *(v82 + 48);
      v64 = v86;
      sub_24A67E964(v80 + v24, v86, &qword_27EF5E520, &qword_24A8384B0);
      sub_24A67E964(v80 + v99, v64 + v95, &qword_27EF5E520, &qword_24A8384B0);
      v65 = v64;
      v66 = v84;
      v80 = *v85;
      if ((v80)(v65, 1, v84) == 1)
      {
        break;
      }

      v67 = v86;
      sub_24A67E964(v86, v83, &qword_27EF5E520, &qword_24A8384B0);
      v68 = v67 + v95;
      v69 = v95;
      if ((v80)(v68, 1, v84) == 1)
      {
        sub_24A7F09C0(v83, type metadata accessor for FMIPUnknownItemUTMetadata);
        goto LABEL_47;
      }

      v70 = v86 + v69;
      v71 = v81;
      sub_24A7F0958(v70, v81, type metadata accessor for FMIPUnknownItemUTMetadata);
      LODWORD(v95) = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v83, v71);
      sub_24A7F09C0(v71, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A7F09C0(v83, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A67F378(v86, &qword_27EF5E520, &qword_24A8384B0);
      if (v95)
      {
        goto LABEL_49;
      }

LABEL_51:
      sub_24A7F09C0(v24, type metadata accessor for FMIPUnknownItem);
LABEL_52:
      v45 = (v45 + 1) & v48;
      v46 = v45 >> 6;
      v47 = 1 << v45;
      if ((*(v96 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
      {
        goto LABEL_2;
      }
    }

    if ((v80)(v86 + v95, 1, v66) != 1)
    {
LABEL_47:
      sub_24A67F378(v86, &qword_27EF5E768, &qword_24A83F520);
      goto LABEL_51;
    }

    sub_24A67F378(v86, &qword_27EF5E520, &qword_24A8384B0);
LABEL_49:
    if (v24[v20[17]] != *(v99 + v20[17]) || v24[v20[18]] != *(v99 + v20[18]))
    {
      goto LABEL_51;
    }

    v72 = v20[19];
    v73 = *&v24[v72];
    v74 = *(v99 + v72);
    sub_24A7F09C0(v24, type metadata accessor for FMIPUnknownItem);
    if (v73 != v74)
    {
      goto LABEL_52;
    }

    result = sub_24A7F09C0(v99, type metadata accessor for FMIPUnknownItem);
    a5 = v90;
    v76 = v89[v46];
    v89[v46] = v76 & ~v47;
  }

  while ((v76 & v47) == 0);
  if (!__OFSUB__(v88--, 1))
  {
    a5 = v90;
    if (!v88)
    {
      return MEMORY[0x277D84FA0];
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7EFFA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPHawkeyeProductInformation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v48 - v15;
  v17 = type metadata accessor for FMIPDiscoveredAccessory();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v51 = v16;
  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  result = sub_24A82D814();
  v21 = result;
  v48[0] = v12;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v49 = (v9 + 48);
  v50 = result;
  v25 = result + 56;
  v53 = a2;
  v54 = a4;
  v52 = a1;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v57 = (v23 - 1) & v23;
LABEL_16:
    v29 = *(a4 + 48);
    v58 = *(v55 + 72);
    sub_24A7F08F0(v29 + v58 * (v26 | (v24 << 6)), v20, type metadata accessor for FMIPDiscoveredAccessory);
    v30 = v21[5];
    sub_24A82DCC4();
    v31 = *v20;
    sub_24A82D5F4();
    if (v20[3])
    {
      v32 = v20[4];
      v48[1] = v20[5];
      v33 = a3;
      v34 = v8;
      v35 = v20[1];
      v36 = v20[2];
      sub_24A82DCE4();
      MEMORY[0x24C21D5E0](v35);
      v8 = v34;
      a3 = v33;
      sub_24A82D094();
      sub_24A82D094();
    }

    else
    {
      sub_24A82DCE4();
    }

    v37 = v51;
    sub_24A67E964(v20 + *(v56 + 24), v51, &qword_27EF5D360, &unk_24A836200);
    if ((*v49)(v37, 1, v8) == 1)
    {
      sub_24A82DCE4();
    }

    else
    {
      v38 = v48[0];
      sub_24A7F0958(v37, v48[0], type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A82DCE4();
      FMIPHawkeyeProductInformation.hash(into:)();
      sub_24A7F09C0(v38, type metadata accessor for FMIPHawkeyeProductInformation);
    }

    a2 = v53;
    a4 = v54;
    a1 = v52;
    result = sub_24A82DD24();
    v21 = v50;
    v39 = -1 << *(v50 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v25 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v25 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    result = sub_24A7F0958(v20, v21[6] + v42 * v58, type metadata accessor for FMIPDiscoveredAccessory);
    ++v21[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_38;
    }

    v23 = v57;
    if (!a3)
    {
LABEL_34:

      return v21;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      goto LABEL_34;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v57 = (v28 - 1) & v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24A7F048C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPUnknownItem();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  result = sub_24A82D814();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v28 = result + 56;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v19 = a4;
    v20 = *(a4 + 48);
    v21 = *(v29 + 72);
    sub_24A7F08F0(v20 + v21 * (v16 | (v15 << 6)), v11, type metadata accessor for FMIPUnknownItem);
    v22 = *(v12 + 40);
    sub_24A82DCC4();
    FMIPUnknownItem.hash(into:)(v30);
    sub_24A82DD24();
    v23 = -1 << *(v12 + 32);
    v24 = v28;
    v25 = sub_24A82D6E4();
    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_24A7F0958(v11, *(v12 + 48) + v25 * v21, type metadata accessor for FMIPUnknownItem);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v19;
    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24A7F06EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_24A6BBA94(&qword_27EF5DDA0, &unk_24A83F550);
  result = sub_24A82D814();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_24A82D5D4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24A7F08F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7F0958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7F09C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A7F0AF0()
{
  v0 = sub_24A82C8B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6B24E4();
  sub_24A82C854();
  return (*(v1 + 8))(v4, v0);
}

void *FMIPItemImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A67ABB0(a1, a2);

  return v4;
}

uint64_t FMIPItemImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t FMIPSiriBaseResponseError.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPSiriSyncDeviceData.pushToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPSiriOwnerDevices.ownerFirstName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPSiriOwnerDevices.ownerLastName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPSiriController.__allocating_init()()
{
  v0 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_24A82CB94();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for FMIPSiriController();
  v5 = swift_allocObject();
  sub_24A7F0E88(v3);
  return v5;
}

void *sub_24A7F0E88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v1[2] = 0xD000000000000028;
  v1[3] = 0x800000024A84A520;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPSiriController: initialized", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = sub_24A82CBB4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_24A82CBA4();
  sub_24A7F2310(a1, v7);
  v15 = sub_24A82CC34();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v2[4] = sub_24A82CC24();
  v18 = sub_24A82CBD4();
  v19 = v2[2];
  v20 = v2[3];

  v21 = sub_24A82CBC4();
  v25 = v18;
  v26 = MEMORY[0x277D07D18];
  *&v24 = v21;
  sub_24A67F378(a1, &qword_27EF5E458, &unk_24A83CCD0);
  sub_24A696E80(&v24, (v2 + 5));
  return v2;
}

uint64_t sub_24A7F10A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v6 = v2[9];
  sub_24A67DF6C(v2 + 5, v2[8]);

  sub_24A82CB84();
}

void sub_24A7F1154(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5)
{
  if (a3)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = a1;
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4E4();
    sub_24A7F22B0(a1, a2, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = a1;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      v16 = sub_24A82D024();
      v18 = sub_24A68761C(v16, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPSiriController topic token resulted in a failure of %s", v13, 0xCu);
      sub_24A6876E8(v14);
      MEMORY[0x24C21E1D0](v14, -1, -1);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    v22 = 0;
    v23 = 0;
    v21 = a1;
    v24 = 1;
    v19 = a1;
    a4(&v21);
    sub_24A7F22C0(v21, v22, v23, v24);
  }

  else
  {
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a4;
    v20[5] = a5;
    sub_24A7F22A0(a1, a2, 0);

    sub_24A7F1694(a1, a2, sub_24A7F2294, v20);
  }
}

void sub_24A7F13CC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *))
{
  v4 = a4;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *a1;
    v7 = *a1;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = a3;
    v6 = a2;
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v30 = *(a1 + 72);
      v41[0] = MEMORY[0x277D84F90];
      sub_24A6FCC5C(0, v11, 0);
      v13 = 0;
      v9 = v41[0];
      v34 = v11;
      v35 = v10 + 32;
      v14 = v11;
      do
      {
        v15 = (v35 + 40 * v13);
        v16 = *v15;
        v17 = v15[2];
        v39 = v17;
        v40 = v15[1];
        v18 = v15[4];
        v19 = *(v18 + 16);
        v38 = v15[3];
        if (v19)
        {
          v36 = *v15;
          v37 = v9;

          sub_24A6FC900(0, v19, 0);
          v20 = v12;
          v21 = (v18 + 40);
          do
          {
            v23 = *(v21 - 1);
            v22 = *v21;
            v25 = *(v20 + 16);
            v24 = *(v20 + 24);

            if (v25 >= v24 >> 1)
            {
              sub_24A6FC900((v24 > 1), v25 + 1, 1);
            }

            *(v20 + 16) = v25 + 1;
            v26 = v20 + 16 * v25;
            *(v26 + 32) = v23;
            *(v26 + 40) = v22;
            v21 += 2;
            --v19;
          }

          while (v19);

          v16 = v36;
          v9 = v37;
          v12 = MEMORY[0x277D84F90];
          v14 = v34;
        }

        else
        {

          v20 = v12;
        }

        v41[0] = v9;
        v28 = *(v9 + 16);
        v27 = *(v9 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_24A6FCC5C((v27 > 1), v28 + 1, 1);
          v9 = v41[0];
        }

        ++v13;
        *(v9 + 16) = v28 + 1;
        v29 = (v9 + 40 * v28);
        v29[4] = v39;
        v29[5] = v38;
        v29[6] = v16;
        v29[7] = v40;
        v29[8] = v20;
      }

      while (v13 != v14);
      v4 = a4;
      v8 = a3;
      v6 = a2;
      v5 = v30;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }
  }

  v41[0] = v6;
  v41[1] = v8;
  v41[2] = v9;
  v42 = v5 & 1;
  v4(v41);

  sub_24A7F22C0(v6, v8, v9, v5 & 1);
}

uint64_t sub_24A7F1638()
{
  v1 = v0[9];
  sub_24A67DF6C(v0 + 5, v0[8]);
  return sub_24A82CB84();
}

uint64_t sub_24A7F1694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMIPSyncDeviceRequest();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_24A7AD434(0x69766544636E7973, 0xEA00000000006563, a1, a2);
  v14 = *(v5 + 32);
  v21[3] = v10;
  v21[4] = MEMORY[0x277D07D08];
  v21[0] = v13;
  v20[3] = v10;
  v20[4] = sub_24A7F2080();
  v15 = objc_opt_self();
  swift_retain_n();
  v16 = [v15 processInfo];
  v17 = [v16 processName];

  sub_24A82CFC4();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v5;

  sub_24A82CC14();

  sub_24A6876E8(v20);
  return sub_24A6876E8(v21);
}

__n128 sub_24A7F1844@<Q0>(id a1@<X2>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v6 = a1;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = a1;
    v9 = sub_24A82CD94();
    v10 = sub_24A82D4E4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v50 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_24A82DC74();
      v15 = sub_24A68761C(v13, v14, &v50);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPSiriController: didn't complete because of error: %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    LOBYTE(v50) = 1;
    *a4 = a1;
LABEL_22:
    *(a4 + 72) = 1;
    return result;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_15:
      sub_24A67E8E8(a2, a3);
      goto LABEL_17;
    }

    if (*(a2 + 16) != *(a2 + 24))
    {
      goto LABEL_23;
    }

LABEL_17:
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_281518F88);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D4E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPSiriController: received empty data", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    sub_24A7F213C();
    v22 = swift_allocError();
    *v23 = 1;
    *a4 = v22;
    goto LABEL_22;
  }

  if (v17)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_17;
    }

LABEL_23:
    v24 = a2;
    v25 = a3;
    sub_24A7C6480(a2, a3);
    a2 = v24;
    a3 = v25;
    goto LABEL_24;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  v26 = a2;
  v27 = a3;
  v28 = sub_24A82C574();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_24A82C564();
  sub_24A7F2190();
  v31 = v26;
  v32 = v27;
  sub_24A82C554();

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v33 = sub_24A82CDC4();
  sub_24A6797D0(v33, qword_281518F88);
  v46 = v51;
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v45 = v50;
  sub_24A7F21E4(&v45, v43);
  sub_24A7F21E4(&v45, v43);
  v34 = sub_24A82CD94();
  v35 = sub_24A82D504();
  sub_24A7F2240(&v45);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v36 = 136315138;
    v43[2] = v47;
    v43[3] = v48;
    v44 = v49;
    v43[0] = v45;
    v43[1] = v46;
    v38 = sub_24A82D024();
    v40 = sub_24A68761C(v38, v39, &v42);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24A675000, v34, v35, "FMIPSiriController: received response?: %s", v36, 0xCu);
    sub_24A6876E8(v37);
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v36, -1, -1);
  }

  else
  {
    sub_24A7F2240(&v45);
  }

  sub_24A67E8E8(v31, v32);

  v41 = v53;
  *(a4 + 32) = v52;
  *(a4 + 48) = v41;
  *(a4 + 64) = v54;
  result = v51;
  *a4 = v50;
  *(a4 + 16) = result;
  *(a4 + 72) = 0;
  return result;
}

void *FMIPSiriController.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_24A6876E8(v0 + 5);
  return v0;
}

uint64_t FMIPSiriController.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_24A6876E8(v0 + 5);

  return swift_deallocClassInstance();
}

unint64_t sub_24A7F1F0C()
{
  result = qword_27EF5F510;
  if (!qword_27EF5F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F510);
  }

  return result;
}

uint64_t sub_24A7F1F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24A7F1FC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24A7F2080()
{
  result = qword_281514E08[0];
  if (!qword_281514E08[0])
  {
    type metadata accessor for FMIPSyncDeviceRequest();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514E08);
  }

  return result;
}

uint64_t sub_24A7F20D8(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  v7 = sub_24A7F1844(a3, a1, a2, v9);
  v5(v9, v7);
  return sub_24A67F378(v9, &qword_27EF5F518, qword_24A83F768);
}

unint64_t sub_24A7F213C()
{
  result = qword_27EF5F520;
  if (!qword_27EF5F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F520);
  }

  return result;
}

unint64_t sub_24A7F2190()
{
  result = qword_281514DB0;
  if (!qword_281514DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514DB0);
  }

  return result;
}

id sub_24A7F22A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_24A7F22B0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_24A7F22C0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_24A7F2310(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FMIPRemoveRequest()
{
  result = qword_27EF5F528;
  if (!qword_27EF5F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7F241C()
{
  v1 = v0;
  v2 = (*(v0 + qword_27EF78F98) + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v4 = *v2;
  v3 = v2[1];
  v13 = MEMORY[0x277D837D0];
  *&v12 = v4;
  *(&v12 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_24A6A50DC(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v11, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v5);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_24A7F2554()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78F98);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_24A7F26B4(char a1)
{
  v3 = sub_24A82CF94();
  [v1 willChangeValueForKey_];

  *(v1 + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished) = a1;
  v4 = sub_24A82CF94();
  [v1 didChangeValueForKey_];
}

id FMIPItemImageCacheOperation.__allocating_init(request:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = a1[3];
  v12 = *(a1 + 2);
  v13 = a1[6];
  v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished] = 0;
  v14 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  *(v14 + 3) = v11;
  *(v14 + 2) = v12;
  *(v14 + 6) = v13;
  v15 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion];
  *v15 = a2;
  v15[1] = a3;
  v17.receiver = v7;
  v17.super_class = v3;
  return objc_msgSendSuper2(&v17, sel_init);
}

id FMIPItemImageCacheOperation.init(request:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = *(a1 + 2);
  v9 = a1[6];
  v3[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished] = 0;
  v10 = &v3[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  *v10 = v4;
  *(v10 + 1) = v5;
  v10[16] = v6;
  *(v10 + 3) = v7;
  *(v10 + 2) = v8;
  *(v10 + 6) = v9;
  v11 = &v3[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for FMIPItemImageCacheOperation();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_24A7F2898()
{
  if ([v0 isCancelled])
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_281518F88);
    oslog = sub_24A82CD94();
    v2 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A675000, oslog, v2, "FMItemImageCreationOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C21E1D0](v3, -1, -1);
    }
  }
}

uint64_t sub_24A7F29EC()
{
  v1 = sub_24A82CDF4();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82CE54();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemImageCacheOperation();
  v52.receiver = v0;
  v52.super_class = v9;
  objc_msgSendSuper2(&v52, sel_start);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = v0;
  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v16 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
    v17 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 8];
    v18 = v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 16];
    v19 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 24];
    v20 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 32];
    v21 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 48];
    v45 = v15;
    aBlock = v16;
    v47 = v17;
    LOBYTE(v48) = v18;
    v49 = v19;
    v50 = v20;
    v51 = v21;
    v22 = FMIPItemImageCacheRequest.fileName.getter();
    v24 = sub_24A68761C(v22, v23, &v45);

    *(v14 + 4) = v24;
    _os_log_impl(&dword_24A675000, v12, v13, "FMItemImageCreationOperation: started for filename: %s", v14, 0xCu);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  v25 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 8];
  v26 = v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 16];
  v27 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 24];
  v29 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 32];
  v28 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 40];
  v30 = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 48];
  aBlock = *&v11[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  v47 = v25;
  LOBYTE(v48) = v26;
  v49 = v27;
  *&v50 = v29;
  *(&v50 + 1) = v28;
  v51 = v30;

  v31 = v29;

  v32 = sub_24A7F3030(&aBlock);
  v34 = v33;

  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v35 = sub_24A82D564();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v32;
  v37[4] = v34;
  *&v50 = sub_24A7F3A00;
  *(&v50 + 1) = v37;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_24A699BA0;
  v49 = &unk_285DCC650;
  v38 = _Block_copy(&aBlock);
  sub_24A7C6480(v32, v34);

  sub_24A82CE24();
  aBlock = MEMORY[0x277D84F90];
  sub_24A67A0FC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  v39 = v44;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v4, v38);
  _Block_release(v38);

  sub_24A67E8E8(v32, v34);
  (*(v43 + 8))(v4, v39);
  return (*(v41 + 8))(v8, v42);
}

void sub_24A7F2EC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion);
    v7 = *(Strong + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion + 8);
    if (a3 >> 60 == 15)
    {
      sub_24A6D3FAC();
      v9 = swift_allocError();
      *v10 = 0;

      v8(v9, 0, 1);
    }

    else
    {
      sub_24A7C6480(a2, a3);

      v8(a2, a3, 0);

      sub_24A67E8E8(a2, a3);
    }

    [v6 setFinished_];
  }
}

size_t sub_24A7F3030(uint64_t *a1)
{
  v3 = sub_24A82CB34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = 37.0;
  if (*(a1 + 16))
  {
    v10 = 66.0;
  }

  v11 = v10 * *(a1 + 3);
  if (COERCE_UNSIGNED_INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30[1] = v1;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[4];
  v15 = v11;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = sub_24A7F3A38(v15, v15, 0, DeviceRGB, 1u);

  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  CGContextSetFillColorWithColor(v18, v14);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v15;
  v31.size.height = v15;
  CGContextAddEllipseInRect(v18, v31);
  (*(v4 + 104))(v8, *MEMORY[0x277CBF258], v3);
  sub_24A82D4A4();
  (*(v4 + 8))(v8, v3);
  v19 = 0.7;
  if (v9)
  {
    v19 = 0.6;
  }

  v20 = sub_24A7F3A58(v19 * v15);
  if (!v20)
  {
LABEL_20:

    return 0;
  }

  v21 = v20;
  result = CGImageGetWidth(v20);
  if (__OFSUB__(v15, result))
  {
    goto LABEL_26;
  }

  result = CGImageGetHeight(v21);
  if (!__OFSUB__(v15, result))
  {
    CGImageGetWidth(v21);
    CGImageGetHeight(v21);
    sub_24A82D494();
    Image = CGBitmapContextCreateImage(v18);
    if (Image)
    {
      v23 = Image;
      Mutable = CFDataCreateMutable(0, 0);
      if (Mutable)
      {
        v25 = Mutable;
        v26 = sub_24A82CF94();
        v27 = CGImageDestinationCreateWithData(v25, v26, 1uLL, 0);

        if (v27)
        {
          CGImageDestinationAddImage(v27, v23, 0);
          if (CGImageDestinationFinalize(v27))
          {
            v28 = v25;
            v29 = sub_24A82C904();

            return v29;
          }

          return 0;
        }
      }

      goto LABEL_20;
    }

    return 0;
  }

LABEL_27:
  __break(1u);
  return result;
}

CGImageRef sub_24A7F33D0()
{
  v1 = v0;
  v57 = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v1);
  v4 = CGImageGetWidth(v1);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v6 = sub_24A7F3A38(Width, Height, v4, DeviceGray, 7u);

  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  CGImageGetWidth(v1);
  CGImageGetHeight(v1);
  sub_24A82D494();

  Image = CGBitmapContextCreateImage(v7);
  if (!Image)
  {
    goto LABEL_49;
  }

  v9 = Image;
  v10 = CGImageGetDataProvider(Image);
  if (!v10)
  {
    goto LABEL_47;
  }

  v11 = v10;
  v12 = CGDataProviderCopyData(v10);
  if (!v12)
  {

    goto LABEL_49;
  }

  v13 = v12;
  v14 = sub_24A82C904();
  v16 = v15;

  v17 = CGImageGetWidth(v1);
  v18 = CGImageGetHeight(v1);
  v19 = CGImageGetHeight(v1);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  v47 = v18;
  v49 = v17;
  v41 = v11;
  v42 = v9;
  v43 = v7;
  if (!v19)
  {
    v46 = 0;
    v48 = 0;
LABEL_53:
    if (!__OFSUB__(v48, v49))
    {
      if (!__OFSUB__(v46, v47))
      {
        v58.origin.x = v49;
        v58.origin.y = v47;
        v58.size.width = &v48[-v49] + 1.0;
        v58.size.height = (v46 - v47) + 1.0;
        v40 = CGImageCreateWithImageInRect(v1, v58);

        sub_24A67E0F0(v14, v16);
        result = v40;
        goto LABEL_51;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v44 = v19;
  v46 = 0;
  v48 = 0;
  v20 = 0;
  v21 = v16 >> 62;
  v50 = v1;
  while (1)
  {
    v22 = CGImageGetWidth(v1);
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v23 = v22;
    v24 = 0;
    v45 = v20 + 1;
    if (v22)
    {
      break;
    }

LABEL_8:
    ++v20;
    if (v45 == v44)
    {
      goto LABEL_53;
    }
  }

  while (1)
  {
    while (1)
    {
      if (v24 >= v23)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
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
        goto LABEL_65;
      }

      v9 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_57;
      }

      v26 = CGImageGetWidth(v1);
      v27 = v26 * v20;
      if ((v26 * v20) >> 64 != (v26 * v20) >> 63)
      {
        goto LABEL_58;
      }

      v7 = v24 + v27;
      if (__OFADD__(v27, v24))
      {
        goto LABEL_59;
      }

      if (v21 <= 1)
      {
        break;
      }

      if (v21 != 2)
      {
        goto LABEL_69;
      }

      if (v7 < *(v14 + 16))
      {
        goto LABEL_61;
      }

      if (v7 >= *(v14 + 24))
      {
        goto LABEL_63;
      }

      v32 = sub_24A82C6D4();
      if (!v32)
      {
        goto LABEL_71;
      }

      v33 = v32;
      v34 = sub_24A82C6E4();
      v35 = v7 - v34;
      if (__OFSUB__(v7, v34))
      {
        goto LABEL_64;
      }

LABEL_12:
      v25 = *(v33 + v35);
      v1 = v50;
      v24 = (v24 + 1);
      if (!v25)
      {
        goto LABEL_13;
      }

LABEL_22:
      if (v24 - 1 >= v49)
      {
        v28 = v49;
      }

      else
      {
        v28 = v24 - 1;
      }

      v29 = v48;
      if (v48 <= (v24 - 1))
      {
        v29 = v24 - 1;
      }

      v48 = v29;
      v49 = v28;
      if (v20 >= v47)
      {
        v30 = v47;
      }

      else
      {
        v30 = v20;
      }

      v31 = v46;
      if (v46 <= v20)
      {
        v31 = v20;
      }

      v46 = v31;
      v47 = v30;
      v24 = v9;
      if (v23 == v9)
      {
        goto LABEL_8;
      }
    }

    if (v21)
    {
      break;
    }

    if (v7 >= BYTE6(v16))
    {
      goto LABEL_60;
    }

    v51 = v14;
    v52 = v16;
    v53 = BYTE2(v16);
    v54 = BYTE3(v16);
    v55 = BYTE4(v16);
    v56 = BYTE5(v16);
    v24 = (v24 + 1);
    if (*(&v51 + v7))
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v23 == v24)
    {
      goto LABEL_8;
    }
  }

  if (v7 < v14 || v7 >= v14 >> 32)
  {
    goto LABEL_62;
  }

  v36 = sub_24A82C6D4();
  if (!v36)
  {
    goto LABEL_70;
  }

  v33 = v36;
  v37 = sub_24A82C6E4();
  v35 = v7 - v37;
  if (!__OFSUB__(v7, v37))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_47:

LABEL_49:
LABEL_50:
  result = 0;
LABEL_51:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

id FMIPItemImageCacheOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMIPItemImageCacheOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPItemImageCacheOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24A7F3958(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPItemImageCacheOperation();
  v7 = objc_allocWithZone(v6);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = a1[3];
  v12 = *(a1 + 2);
  v13 = a1[6];
  v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished] = 0;
  v14 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  *(v14 + 3) = v11;
  *(v14 + 2) = v12;
  *(v14 + 6) = v13;
  v15 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion];
  *v15 = a2;
  v15[1] = a3;
  v17.receiver = v7;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

CGImageRef sub_24A7F3A58(double a1)
{
  v2 = v1;
  sub_24A6BBA94(&qword_27EF5F558, &qword_24A83F810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A8356C0;
  v5 = *MEMORY[0x277CC48B8];
  type metadata accessor for CFString(0);
  *(v4 + 32) = v5;
  v6 = MEMORY[0x277D837D0];
  *(v4 + 56) = v7;
  *(v4 + 64) = 0x6C6F43656C707041;
  *(v4 + 72) = 0xEF696A6F6D45726FLL;
  v8 = *MEMORY[0x277CC4938];
  *(v4 + 120) = v7;
  *(v4 + 88) = v6;
  *(v4 + 96) = v8;
  *(v4 + 152) = MEMORY[0x277D85048];
  *(v4 + 128) = a1;
  sub_24A679170(0, &qword_27EF5F560, 0x277CBEAC0);
  v9 = v5;
  v10 = v8;
  v11 = sub_24A82D4B4();
  v12 = CTFontDescriptorCreateWithAttributes(v11);
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);
  sub_24A6BBA94(&qword_27EF5F568, &qword_24A83F818);
  inited = swift_initStackObject();
  v15 = MEMORY[0x277CC4838];
  *(inited + 16) = xmmword_24A8327A0;
  v16 = *v15;
  *(inited + 32) = v16;
  *(inited + 40) = v13;
  v17 = v16;
  v18 = v13;
  sub_24A78AFB8(inited);
  swift_setDeallocating();
  sub_24A67F378(inited + 32, &qword_27EF5F570, qword_24A83F820);
  type metadata accessor for CTFont(0);
  sub_24A67A0FC(&qword_27EF5D110, type metadata accessor for CFString);
  v19 = sub_24A82CED4();

  v20 = *MEMORY[0x277CBECE8];
  v21 = sub_24A82CF94();
  v22 = CFAttributedStringCreate(v20, v21, v19);

  if (v22)
  {
    v23 = CTFramesetterCreateWithAttributedString(v22);
    v52.width = INFINITY;
    v50.location = 0;
    v50.length = 0;
    v52.height = INFINITY;
    v24 = CTFramesetterSuggestFrameSizeWithConstraints(v23, v50, 0, v52, 0);
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v24.width;
    v53.size.height = v24.height;
    v25 = CGPathCreateWithRect(v53, 0);
    v51.location = 0;
    v51.length = 0;
    Frame = CTFramesetterCreateFrame(v23, v51, v25, 0);

    v27 = v24.width + v24.width;
    if (v24.width + v24.width <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v27 < 9.22337204e18)
    {
      v28 = v24.height + v24.height;
      v29 = COERCE__INT64(fabs(v24.height + v24.height)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE__INT64(fabs(v24.width + v24.width)) <= 0x7FEFFFFFFFFFFFFFLL && !v29)
      {
        if (v28 > -9.22337204e18)
        {
          if (v28 < 9.22337204e18)
          {
            v49 = v11;
            v11 = Frame;
            Frame = v2;
            v30 = v27;
            v31 = v28;
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v33 = sub_24A7F3A38(v30, v31, 0, DeviceRGB, 1u);

            if (v33)
            {
              v34 = v18;
              sub_24A82D474();
              sub_24A82D484();
              sub_24A82D474();
              sub_24A82D484();
              CTFrameDraw(v11, v33);
              Image = CGBitmapContextCreateImage(v33);
              if (Image)
              {
                v36 = Image;
                v37 = sub_24A7F33D0();
              }

              else
              {
                v37 = 0;
              }

              v45 = v12;
              v46 = v22;
              v40 = v23;
              v12 = v11;
              v23 = v19;
              v19 = v49;
LABEL_19:

              v11 = v33;
              v12 = v23;
              v18 = v34;
              goto LABEL_20;
            }

            if (qword_281515DC8 == -1)
            {
LABEL_13:
              v38 = sub_24A82CDC4();
              sub_24A6797D0(v38, qword_281518F88);
              v39 = Frame;
              v40 = sub_24A82CD94();
              v41 = sub_24A82D504();

              if (os_log_type_enabled(v40, v41))
              {
                v48 = v18;
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                *v42 = 138412290;
                *(v42 + 4) = v39;
                *v43 = v39;
                v44 = v39;
                _os_log_impl(&dword_24A675000, v40, v41, "FMItemImageCreationOperation: Created an nil context for request %@", v42, 0xCu);
                sub_24A67F378(v43, &qword_27EF5D010, &qword_24A830E30);
                MEMORY[0x24C21E1D0](v43, -1, -1);
                MEMORY[0x24C21E1D0](v42, -1, -1);
                v37 = 0;
                v45 = v48;
              }

              else
              {
                v37 = 0;
                v45 = v18;
              }

              v46 = v49;
              v33 = v22;
              v34 = v11;
              goto LABEL_19;
            }

LABEL_26:
            swift_once();
            goto LABEL_13;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  v37 = 0;
LABEL_20:

  return v37;
}

char sub_24A7F3FD0@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + 56);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = type metadata accessor for FMIPDevice();
    sub_24A7F4360(v8 + *(v10 + 120) + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v7);
    v11 = type metadata accessor for FMIPLockMetadata();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
    {
      result = sub_24A7F43D0(v7);
LABEL_5:
      LOBYTE(v9) = 0;
      goto LABEL_8;
    }

    v12 = *v7;
    sub_24A7F4438(v7);
    result = FMIPActionStatus.init(rawValue:)(qword_24A83F858[v12]).value;
    LOBYTE(v9) = v14;
    if (v14 == 18)
    {
      LOBYTE(v9) = 0;
    }
  }

LABEL_8:
  *a1 = v9;
  return result;
}

uint64_t sub_24A7F4178(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPLockResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A7F4360(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7F43D0(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7F4438(uint64_t a1)
{
  v2 = type metadata accessor for FMIPLockMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A7F4494(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x65746E6F43706174;
    v6 = 0x64657463656C6573;
    v7 = 0x44656C6269736976;
    if (a1 != 3)
    {
      v7 = 0x6F4C646C756F6873;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
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
    v1 = 0x3256616E6D66;
    if (a1 != 8)
    {
      v1 = 0x6E6D66656C707061;
    }

    v2 = 0x3156676174726961;
    v3 = 0x3256676174726961;
    if (a1 != 6)
    {
      v3 = 0x3156616E6D66;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24A7F4618()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + qword_281518E70);
  if (v11)
  {
    v32 = v6;
    v12 = sub_24A6BBA94(&qword_27EF5F578, &unk_24A83F970);
    v37 = v12;
    *&v36 = v11;
    v13 = qword_27EF5D920;
    v14 = *(v1 + qword_27EF5D920);

    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);

    os_unfair_lock_unlock((v14 + 24));

    v35 = v15;
    if (v12)
    {
      sub_24A6A50DC(&v36, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v15;
      v17 = sub_24A6A4F8C(v34, 0x65746E6F43706174, 0xEA00000000007478, isUniquelyReferenced_nonNull_native);
      v18 = v33;
    }

    else
    {
      sub_24A67F378(&v36, &qword_27EF5D898, qword_24A8354A0);
      sub_24A7C3F0C(0x65746E6F43706174, 0xEA00000000007478, v34);
      v17 = sub_24A67F378(v34, &qword_27EF5D898, qword_24A8354A0);
      v18 = v35;
    }

    v19 = *(v1 + v13);
    MEMORY[0x28223BE20](v17);
    *(&v32 - 2) = v18;

    os_unfair_lock_lock((v19 + 24));
    sub_24A6A3D28((v19 + 16));
    os_unfair_lock_unlock((v19 + 24));

    v6 = v32;
  }

  sub_24A7718EC(v1 + qword_281518E68, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A67F378(v5, &qword_27EF5DF08, &qword_24A837770);
    if (!v11 || !*(v11 + 16))
    {
      v37 = MEMORY[0x277D837D0];
      *&v36 = 7105633;
      *(&v36 + 1) = 0xE300000000000000;
      swift_beginAccess();
      sub_24A6A61DC(&v36, 0x64657463656C6573, 0xEE00656369766544);
      swift_endAccess();
      sub_24A6A5DF4();
    }
  }

  else
  {
    sub_24A6CAF68(v5, v10);
    v20 = *v10;
    v21 = v10[1];
    v37 = MEMORY[0x277D837D0];
    *&v36 = v20;
    *(&v36 + 1) = v21;
    swift_beginAccess();

    sub_24A6A61DC(&v36, 0x64657463656C6573, 0xEE00656369766544);
    swift_endAccess();
    sub_24A6A5DF4();
    v37 = MEMORY[0x277D839B0];
    LOBYTE(v36) = 1;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x6F4C646C756F6873, 0xEC00000065746163);
    swift_endAccess();
    sub_24A6A5DF4();
    sub_24A6FE094(v10);
  }

  v22 = *(v1 + qword_281518E60);
  v23 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83B88];
  *&v36 = v22;
  swift_beginAccess();
  sub_24A6A61DC(&v36, 0xD000000000000016, 0x800000024A84A640);
  swift_endAccess();
  result = sub_24A6A5DF4();
  v25 = (v1 + qword_27EF78FB0);
  if ((*(v1 + qword_27EF78FB0 + 48) & 1) == 0)
  {
    v26 = v25[4];
    v27 = v25[5];
    v29 = v25[2];
    v28 = v25[3];
    v30 = *v25;
    v31 = *(v1 + qword_27EF78FB0 + 8);
    v37 = v23;
    *&v36 = v30;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x3156676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v37 = v23;
    *&v36 = v31;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x3256676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v37 = v23;
    *&v36 = v29;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x3156616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v37 = v23;
    *&v36 = v28;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x3256616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v37 = v23;
    *&v36 = v26;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x6E6D66656C707061, 0xEB00000000315661);
    swift_endAccess();
    sub_24A6A5DF4();
    v37 = v23;
    *&v36 = v27;
    swift_beginAccess();
    sub_24A6A61DC(&v36, 0x6E6D66656C707061, 0xEB00000000325661);
    swift_endAccess();
    return sub_24A6A5DF4();
  }

  return result;
}

uint64_t sub_24A7F4CA8()
{
  sub_24A67F378(v0 + qword_281518E68, &qword_27EF5DF08, &qword_24A837770);
  v1 = *(v0 + qword_281518E70);
}

uint64_t sub_24A7F4CF8()
{
  v0 = sub_24A6F8F90();
  v1 = qword_281518E68;

  sub_24A67F378(v2 + v1, &qword_27EF5DF08, &qword_24A837770);
  v3 = *(v0 + qword_281518E70);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

FMIPCore::FMIPUTAlertCompletionType_optional __swiftcall FMIPUTAlertCompletionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPUTAlertCompletionType.rawValue.getter()
{
  v1 = 0x6F4665726F6E6769;
  if (*v0 != 1)
  {
    v1 = 0x68536465736F6C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E5565726F6E6769;
  }
}

uint64_t sub_24A7F4E7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F4665726F6E6769;
  v4 = 0xED00007265766572;
  if (v2 != 1)
  {
    v3 = 0x68536465736F6C63;
    v4 = 0xEB00000000746565;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E5565726F6E6769;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00444F456C6974;
  }

  v7 = 0x6F4665726F6E6769;
  v8 = 0xED00007265766572;
  if (*a2 != 1)
  {
    v7 = 0x68536465736F6C63;
    v8 = 0xEB00000000746565;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E5565726F6E6769;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00444F456C6974;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7F4FB0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F5074()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7F5124()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F51F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00444F456C6974;
  v4 = 0xED00007265766572;
  v5 = 0x6F4665726F6E6769;
  if (v2 != 1)
  {
    v5 = 0x68536465736F6C63;
    v4 = 0xEB00000000746565;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E5565726F6E6769;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FMIPUTAlertSheetType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x796C696D6166;
  }

  else
  {
    result = 1919251317;
  }

  *v0;
  return result;
}

uint64_t sub_24A7F52AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x796C696D6166;
  }

  else
  {
    v4 = 1919251317;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x796C696D6166;
  }

  else
  {
    v6 = 1919251317;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7F5348()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F53C0()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7F5424()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F54A4(uint64_t *a1@<X8>)
{
  v2 = 1919251317;
  if (*v1)
  {
    v2 = 0x796C696D6166;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMIPUTAlertProductType_optional __swiftcall FMIPUTAlertProductType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPUTAlertProductType.rawValue.getter()
{
  v1 = 0x73646F50726961;
  if (*v0 != 1)
  {
    v1 = 0x726F737365636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676154726961;
  }
}

uint64_t sub_24A7F5590(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73646F50726961;
  if (v2 != 1)
  {
    v4 = 0x726F737365636361;
    v3 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676154726961;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73646F50726961;
  if (*a2 != 1)
  {
    v8 = 0x726F737365636361;
    v7 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676154726961;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7F5698()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F573C()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7F57CC()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F5878(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73646F50726961;
  if (v2 != 1)
  {
    v5 = 0x726F737365636361;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676154726961;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FMIPUTAlertObservationType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6F4D6E4F70656562;
  }

  else
  {
    result = 0x647261646E617473;
  }

  *v0;
  return result;
}

uint64_t sub_24A7F5924(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F4D6E4F70656562;
  }

  else
  {
    v4 = 0x647261646E617473;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006576;
  }

  if (*a2)
  {
    v6 = 0x6F4D6E4F70656562;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006576;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7F59D0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F5A58()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7F5ACC()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F5B5C(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x6F4D6E4F70656562;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006576;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24A7F5E44(char a1)
{
  result = 0x7079547465656873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x54656C6261736964;
      break;
    case 3:
      result = 0x5379616C50646964;
      break;
    case 4:
      result = 0x6E756F5379616C70;
      break;
    case 5:
      result = 0x6F43736B63617274;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x54746375646F7270;
      break;
    case 12:
      result = 0x746176726573626FLL;
      break;
    case 13:
      result = 0x68736F507369;
      break;
    default:
      return result;
  }

  return result;
}

void FMIPManager.enqueue(UTEvent:item:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v76 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v77 = &v67 - v21;
  v22 = *a1;
  *v90 = *(a1 + 1);
  v23 = *(a1 + 1);
  v75 = *(a1 + 2);
  *&v90[7] = v23;
  v24 = *(a1 + 3);
  v89[0] = *(a1 + 2);
  *(v89 + 15) = *(a1 + 47);
  v25 = type metadata accessor for FMIPUnknownItem();
  v26 = *(a2 + *(v25 + 32));
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_23;
  }

  v69 = v9;
  v70 = v12;
  v80 = v4;
  v28 = *(v26 + 40);
  v29 = v26;
  v78 = v27;
  v30 = v28;
  v81 = v29;
  v73 = a2;
  v72 = v22;
  v71 = v25;
  if (v78 != 1)
  {
    v32 = (v5 + 8);
    v33 = v29 + 40;
    v34 = 1;
    v74 = v5;
    v68 = v78 - 1;
    v67 = v29 + 40;
LABEL_5:
    v79 = v30;
    v35 = (v33 + 24 * v34);
    while (v34 < *(v81 + 16))
    {
      v36 = v34 + 1;
      v31 = *v35;
      v37 = [v31 timestamp];
      sub_24A82C9F4();

      v38 = [v79 timestamp];
      sub_24A82C9F4();

      LOBYTE(v38) = sub_24A82C9B4();
      v39 = *v32;
      v40 = v80;
      (*v32)(v15, v80);
      v39(v18, v40);
      if (v38)
      {

        v30 = v31;
        v41 = v68 == v34++;
        v5 = v74;
        v33 = v67;
        if (v41)
        {
          goto LABEL_12;
        }

        goto LABEL_5;
      }

      v35 += 3;
      ++v34;
      if (v78 == v36)
      {
        v31 = v79;
        v5 = v74;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v31 = v30;
LABEL_12:
  v42 = [v31 timestamp];

  v43 = v76;
  sub_24A82C9F4();

  v44 = *(v5 + 32);
  v45 = v77;
  v46 = v80;
  v44(v77, v43, v80);
  v47 = *(v81 + 16);
  if (!v47)
  {
    (*(v5 + 8))(v45, v46);
    a2 = v73;
    LOBYTE(v22) = v72;
    v25 = v71;
LABEL_23:
    v88[0] = *v90;
    *(v88 + 7) = *&v90[7];
    v87[0] = v89[0];
    *(v87 + 15) = *(v89 + 15);
    v59 = v75;
    goto LABEL_25;
  }

  v75 = v44;
  v76 = (v5 + 32);
  v48 = v81;
  v49 = *(v81 + 40);
  if (v47 != 1)
  {
    v78 = v47;
    v50 = (v5 + 8);
    v51 = v48 + 40;
    v52 = 1;
    v74 = v5;
    v68 = v47 - 1;
    v67 = v48 + 40;
LABEL_15:
    v79 = v49;
    v53 = (v51 + 24 * v52);
    v54 = v52;
    while (v54 < *(v81 + 16))
    {
      v52 = v54 + 1;
      v49 = *v53;
      v55 = [v79 timestamp];
      sub_24A82C9F4();

      v56 = [v49 timestamp];
      sub_24A82C9F4();

      LOBYTE(v56) = sub_24A82C9B4();
      v57 = *v50;
      v58 = v80;
      (*v50)(v15, v80);
      v57(v18, v58);
      if (v56)
      {

        v46 = v80;
        v5 = v74;
        v51 = v67;
        if (v68 != v54)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }

      v53 += 3;
      ++v54;
      if (v78 == v52)
      {
        v49 = v79;
        v46 = v80;
        v5 = v74;
        goto LABEL_24;
      }
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_24:
  v60 = [v49 timestamp];

  v61 = v69;
  sub_24A82C9F4();

  v62 = v70;
  v75(v70, v61, v46);
  v88[0] = *v90;
  *(v88 + 7) = *&v90[7];
  v87[0] = v89[0];
  *(v87 + 15) = *(v89 + 15);
  v59 = *(v81 + 16) - 1;
  v63 = v77;
  sub_24A82C974();
  v24 = v64;
  v65 = *(v5 + 8);
  v65(v62, v46);
  v65(v63, v46);
  a2 = v73;
  LOBYTE(v22) = v72;
  v25 = v71;
LABEL_25:
  if (*(a2 + *(v25 + 24) + 8))
  {
    v66 = 1;
  }

  else
  {
    v66 = v22;
  }

  v82 = v66;
  *v83 = v88[0];
  *&v83[7] = *(v88 + 7);
  v84 = v59;
  v85 = v24;
  *v86 = v87[0];
  *&v86[15] = *(v87 + 15);
  _s8FMIPCore13FMIPAnalyticsV16sendUTAlertEvent5eventyAA011FMIPUTAlertE0V_tFZ_0(&v82);
}

void sub_24A7F6740(uint64_t a1)
{
  v2 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  *a1;
  *a1;
  v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v4 = sub_24A82CF94();

  v5 = [v3 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v5, 0x7079547465656873, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  *(a1 + 1);
  v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v8 = sub_24A82CF94();

  v9 = [v7 initWithString_];

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v9, 0xD000000000000010, 0x800000024A84A660, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v11, 0x54656C6261736964, 0xED00006465707061, v12);
  v13 = *(a1 + 8);
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v14, 0x5379616C50646964, 0xEC000000646E756FLL, v15);
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v16, 0x6E756F5379616C70, 0xEE00746E756F4364, v17);
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v18, 0x6F43736B63617274, 0xEB00000000746E75, v19);
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v20, 0xD000000000000011, 0x800000024A84A680, v21);
  v22 = *(a1 + 32);
  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v23, 0xD00000000000001ALL, 0x800000024A84A6A0, v24);
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v25, 0xD00000000000001CLL, 0x800000024A84A6C0, v26);
  v27 = *(a1 + 40);
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v28, 0xD00000000000001ALL, 0x800000024A84A6E0, v29);
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v30, 0xD00000000000001CLL, 0x800000024A84A700, v31);
  *(a1 + 48);
  v32 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v33 = sub_24A82CF94();

  v34 = [v32 initWithString_];

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v34, 0x54746375646F7270, 0xEB00000000657079, v35);
  *(a1 + 49);
  *(a1 + 49);
  v36 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v37 = sub_24A82CF94();

  v38 = [v36 initWithString_];

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v38, 0x746176726573626FLL, 0xEF657079546E6F69, v39);
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v40, 0x68736F507369, 0xE600000000000000, v41);
  v42 = sub_24A82CF94();
  v43 = swift_allocObject();
  *(v43 + 16) = v2;
  v45[4] = sub_24A6AEBB4;
  v45[5] = v43;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 1107296256;
  v45[2] = sub_24A6AEADC;
  v45[3] = &unk_285DCC9D8;
  v44 = _Block_copy(v45);

  AnalyticsSendEventLazy();
  _Block_release(v44);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV16sendUTAlertEvent5eventyAA011FMIPUTAlertE0V_tFZ_0(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 63) = *(a1 + 47);
  aBlock[4] = sub_24A7F7390;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCC988;
  v14 = _Block_copy(aBlock);
  sub_24A82CE24();
  v16[1] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v6, v14);
  _Block_release(v14);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

unint64_t sub_24A7F7194()
{
  result = qword_27EF5F580;
  if (!qword_27EF5F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F580);
  }

  return result;
}

unint64_t sub_24A7F71EC()
{
  result = qword_27EF5F588;
  if (!qword_27EF5F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F588);
  }

  return result;
}

unint64_t sub_24A7F7244()
{
  result = qword_27EF5F590;
  if (!qword_27EF5F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F590);
  }

  return result;
}

unint64_t sub_24A7F729C()
{
  result = qword_27EF5F598;
  if (!qword_27EF5F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F598);
  }

  return result;
}

__n128 sub_24A7F7330(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A7F734C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[51])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t FMIPRemoveDeviceAction.__allocating_init(device:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v6 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D6F8(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v5;
}

uint64_t FMIPRemoveDeviceAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D6F8(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v1;
}

uint64_t FMIPRemoveDeviceAction.__deallocating_deinit()
{
  v0 = *FMIPDeviceAction.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7F7610()
{
  v1 = OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A7F7654(char a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FMIPRemoveItemAction.init(item:forced:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced) = a2;
  sub_24A68D6F8(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v2;
}

uint64_t sub_24A7F7858()
{
  v1 = OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A7F789C(char a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24A7F7974(uint64_t a1, char a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + *a3) = a2;
  sub_24A68D6F8(a1, v13 + *a4, a5);
  return v13;
}

uint64_t FMIPRemoveItemGroupAction.init(itemGroup:forced:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced) = a2;
  sub_24A68D6F8(a1, v2 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, type metadata accessor for FMIPItemGroup);
  return v2;
}

uint64_t sub_24A7F7A5C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t *a5)
{
  if (a4(a1 + *a3, a2 + *a3))
  {
    v8 = *a5;
    swift_beginAccess();
    v9 = *(a1 + v8);
    v10 = *a5;
    swift_beginAccess();
    v11 = v9 ^ *(a2 + v10) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_24A7F7B88(void *a1, uint64_t (*a2)(void))
{
  sub_24A69F384(v2 + *a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7F7C10(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t *a7)
{
  v8 = *a1;
  v9 = *a2;
  if (a6(*a1 + *a5, *a2 + *a5))
  {
    v10 = *a7;
    swift_beginAccess();
    v11 = *(v8 + v10);
    v12 = *a7;
    swift_beginAccess();
    v13 = v11 ^ *(v9 + v12) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24A7F7CAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_24A7F7D00(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

Swift::Bool __swiftcall CLLocation.fmifIsNearBy(_:inBTRangeDistanceInMeters:)(CLLocation _, Swift::Double inBTRangeDistanceInMeters)
{
  isa = _.super.isa;
  [v2 distanceFromLocation_];
  v6 = v5;
  [v2 horizontalAccuracy];
  v8 = v7;
  [(objc_class *)isa horizontalAccuracy];
  return v6 / sqrt(inBTRangeDistanceInMeters * inBTRangeDistanceInMeters + v8 * v8 + v9 * v9) < 1.5;
}

void sub_24A7F7FFC(void *a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v8 = v7;
  [a1 coordinate];
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGEOCoordinate_];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [a1 timestamp];
  sub_24A82C9F4();

  sub_24A82C9D4();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  [v11 setTimestamp_];
  [a1 horizontalAccuracy];
  [v11 setHorizontalAccuracy_];
  [a1 verticalAccuracy];
  [v11 setVerticalAccuracy_];
  [a1 course];
  [v11 setCourse_];
  [a1 courseAccuracy];
  [v11 setCourseAccuracy_];
  [a1 speed];
  [v11 setSpeed_];
  [a1 speedAccuracy];
  [v11 setSpeedAccuracy_];
  [a1 altitude];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 >= 2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v11 setAltitude_];
  v16 = [a1 floor];
  if (!v16)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 level];

  if (v18 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v18 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  [v11 setLevelOrdinal_];
  v19 = [a1 referenceFrame];
  if (v19 > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = dword_24A83FE50[v19];
  }

  [v11 setReferenceFrame_];
}

uint64_t type metadata accessor for FMIPSyncDeviceRequest()
{
  result = qword_281514DF8;
  if (!qword_281514DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7F83D0()
{
  v0 = sub_24A82CB74();
  v1 = *(v0 + qword_281515048 + 8);

  v2 = *(v0 + qword_281515058);

  v3 = *(v0 + qword_281515050);

  v4 = *(v0 + qword_281515040 + 8);

  return swift_deallocClassInstance();
}

id String.isEmail.getter()
{
  if (qword_27EF5CC30 != -1)
  {
    swift_once();
  }

  v0 = qword_27EF5F5D0;
  v1 = sub_24A82CF94();
  v2 = [v0 evaluateWithObject_];

  return v2;
}

uint64_t sub_24A7F8500()
{
  sub_24A7F8B54();
  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A8327A0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_24A6B243C();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x800000024A84A880;
  result = sub_24A82D464();
  qword_27EF5F5D0 = result;
  return result;
}

id static String.emailPredicate.getter()
{
  if (qword_27EF5CC30 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF5F5D0;

  return v1;
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  sub_24A82C584();
  sub_24A82C594();
  sub_24A82C5F4();
  sub_24A82C5B4();
  sub_24A82C5F4();
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_24A82C5C4();
  sub_24A82C5F4();
  v15(v9, v4);
  v21[0] = a1;
  v21[1] = a2;
  sub_24A6B2490();
  v21[0] = sub_24A82D664();
  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v16 = sub_24A82CF74();
  v18 = v17;

  v15(v12, v4);
  v15(v14, v4);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  return v19 != 0;
}

uint64_t String.sanitized.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A82D154();

  if (v4)
  {
    v5 = sub_24A82D0A4();
    v6 = sub_24A7F8AA4(v5, a1, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    a1 = MEMORY[0x24C21C960](v6, v8, v10, v12);
    a2 = v13;
  }

  if (sub_24A82D154())
  {
    v14 = sub_24A82D0A4();
    v15 = sub_24A7F8AA4(v14, a1, a2);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    a1 = MEMORY[0x24C21C960](v15, v17, v19, v21);
  }

  return a1;
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_24A82D154();

  if (v5)
  {
    v6 = sub_24A82D0A4();
    v7 = sub_24A7F8AA4(v6, v4, v3);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = MEMORY[0x24C21C960](v7, v9, v11, v13);
    v3 = v14;
  }

  v15 = v4;
  v16 = v3;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_24A7F8AA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24A82D0C4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24A82D1A4();
}

unint64_t sub_24A7F8B54()
{
  result = qword_27EF5F5E0;
  if (!qword_27EF5F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5F5E0);
  }

  return result;
}

void __swiftcall FMIPPerson.init(identifier:person:)(FMIPCore::FMIPPerson *__return_ptr retstr, Swift::String identifier, FMIPCore::FMIPPerson *person)
{
  lastName = person->lastName;
  firstName = person->firstName;
  v12 = lastName;
  v5 = *&person->username._object;
  v13 = *&person->hasFamilyMembers;
  v14 = v5;
  v15 = *&person->identifier._object;
  object = person->phoneNumber.value._object;
  v6 = firstName._object;
  retstr->firstName._countAndFlagsBits = firstName._countAndFlagsBits;
  retstr->firstName._object = v6;
  v7 = v12._object;
  retstr->lastName._countAndFlagsBits = v12._countAndFlagsBits;
  retstr->lastName._object = v7;
  v8 = v14;
  retstr->username._countAndFlagsBits = *(&v13 + 1);
  retstr->username._object = v8;
  *&retstr->deviceFetchStatus = *(&v13 + 1);
  retstr->hasFamilyMembers = v13;
  retstr->isAccountHSA = BYTE3(v13);
  retstr->identifier = identifier;
  v10 = *(&v15 + 1);
  v9 = object;

  sub_24A6EF9B4(&firstName);
  retstr->phoneNumber.value._countAndFlagsBits = v10;
  retstr->phoneNumber.value._object = v9;
}

FMIPCore::FMIPPersonDeviceFetchStatus_optional __swiftcall FMIPPersonDeviceFetchStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

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

uint64_t FMIPPersonDeviceFetchStatus.rawValue.getter()
{
  if (*v0)
  {
    result = 1162760004;
  }

  else
  {
    result = 0x474E4944414F4CLL;
  }

  *v0;
  return result;
}

uint64_t sub_24A7F8CFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1162760004;
  }

  else
  {
    v4 = 0x474E4944414F4CLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1162760004;
  }

  else
  {
    v6 = 0x474E4944414F4CLL;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7F8D9C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F8E18()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7F8E80()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F8EF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A7F8F58(uint64_t *a1@<X8>)
{
  v2 = 1162760004;
  if (!*v1)
  {
    v2 = 0x474E4944414F4CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMIPAccountFormatter_optional __swiftcall FMIPAccountFormatter.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMIPPerson.firstName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPPerson.lastName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPPerson.username.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FMIPPerson.identifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t FMIPPerson.phoneNumber.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_24A7F9114()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821BC4();
  return sub_24A82DD24();
}

uint64_t sub_24A7F9164()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821BC4();
  return sub_24A82DD24();
}

uint64_t sub_24A7F91A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7F9A8C();
  *a2 = result;
  return result;
}

unint64_t sub_24A7F91D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A693BDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A7F9204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7F9A8C();
  *a1 = result;
  return result;
}

uint64_t sub_24A7F922C(uint64_t a1)
{
  v2 = sub_24A693B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7F9268(uint64_t a1)
{
  v2 = sub_24A693B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPPerson.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F5F0, &unk_24A83FEB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v30 = v1[3];
  v31 = v10;
  v35 = *(v1 + 32);
  v29 = *(v1 + 33);
  v28 = *(v1 + 34);
  v24 = *(v1 + 35);
  v11 = v1[5];
  v26 = v1[6];
  v27 = v11;
  v12 = v1[8];
  v23[1] = v1[7];
  v23[2] = v12;
  v13 = v1[10];
  v25 = v1[9];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_24A67DF6C(v16, v14);
  sub_24A693B6C();
  sub_24A82DD84();
  LOBYTE(v33) = 4;
  v19 = v32;
  sub_24A82DB04();
  if (!v19)
  {
    v32 = v13;
    v20 = v25;
    LOBYTE(v33) = 5;
    sub_24A82DB04();
    LOBYTE(v33) = 6;
    sub_24A82DB04();
    LOBYTE(v33) = 0;
    sub_24A82DB34();
    LOBYTE(v33) = 1;
    sub_24A82DB04();
    v31 = 0;

    LOBYTE(v33) = 2;
    v21 = v31;
    sub_24A82DB14();
    if (!v21)
    {
      LOBYTE(v33) = 3;
      sub_24A82DB14();
      LOBYTE(v33) = 7;
      sub_24A82DB04();
      v33 = v20;
      v34 = v32;
      v36 = 8;
      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      sub_24A6CCEB0();
      sub_24A82DB44();
    }
  }

  return (*(v4 + 8))(v7, v18);
}

uint64_t _s8FMIPCore10FMIPPersonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v31 = *(a1 + 33);
  v27 = *(a1 + 35);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v24 = *(a1 + 56);
  v23 = *(a1 + 64);
  *(&v25 + 1) = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v29 = *(a1 + 34);
  v30 = *(a2 + 33);
  v28 = *(a2 + 34);
  v26 = *(a2 + 35);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v22 = *(a2 + 56);
  v20 = *(a1 + 72);
  v21 = *(a2 + 64);
  v19 = *(a2 + 72);
  *&v25 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0 || (v2 != v8 || v3 != v7) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_24A82DC04();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v31)
  {
    v14 = 1162760004;
  }

  else
  {
    v14 = 0x474E4944414F4CLL;
  }

  if (v31)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v30)
  {
    v16 = 1162760004;
  }

  else
  {
    v16 = 0x474E4944414F4CLL;
  }

  if (v30)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {

    result = 0;
    if (v29 != v28)
    {
      return result;
    }
  }

  else
  {
    v18 = sub_24A82DC04();

    result = 0;
    if (v18 & 1) == 0 || ((v29 ^ v28))
    {
      return result;
    }
  }

  if (((v27 ^ v26) & 1) == 0)
  {
    if ((v24 != v22 || v23 != v21) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }

    result = v25 == 0;
    if (*(&v25 + 1) && v25)
    {
      if (v20 == v19 && *(&v25 + 1) == v25)
      {
        return 1;
      }

      else
      {

        return sub_24A82DC04();
      }
    }
  }

  return result;
}

unint64_t sub_24A7F98F0()
{
  result = qword_27EF5F5F8;
  if (!qword_27EF5F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F5F8);
  }

  return result;
}

unint64_t sub_24A7F9948()
{
  result = qword_27EF5F600;
  if (!qword_27EF5F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F600);
  }

  return result;
}

__n128 sub_24A7F99BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24A7F99E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A7F9A38()
{
  result = qword_27EF5F608;
  if (!qword_27EF5F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F608);
  }

  return result;
}

uint64_t sub_24A7F9A8C()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t *FMIPReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  *(swift_allocObject() + qword_27EF78FC8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A67E964(a1, v6, &qword_27EF5E930, &unk_24A8343F0);
  v9 = sub_24A67F608(v6);
  sub_24A67F378(a1, &qword_27EF5E930, &unk_24A8343F0);
  return v9;
}

void *sub_24A7F9BC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for FMReverseGeocodingRequest();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  sub_24A75E6A0(a2, v55);
  memcpy(v56, v55, 0x120uLL);
  if (sub_24A6921A8(v56) != 1)
  {
    memcpy(a3, v55, 0x120uLL);
    return nullsub_1(a3);
  }

  v57 = a3;
  memcpy(v54, v55, sizeof(v54));
  sub_24A67F378(v54, &unk_27EF5E0D0, &qword_24A8319E0);
  v14 = a2[2];
  v15 = sub_24A6F47C0();
  v17 = v16;
  v18 = qword_27EF5EFB8;
  swift_beginAccess();
  if (!*(*(a1 + v18) + 16))
  {

    goto LABEL_10;
  }

  sub_24A6A2D48(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_10:
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v35 = sub_24A82CDC4();
    sub_24A6797D0(v35, qword_27EF78C00);
    sub_24A7FCAF4(a2, v13, type metadata accessor for FMReverseGeocodingRequest);

    v36 = sub_24A82CD94();
    v37 = sub_24A82D504();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = v3;
      v39 = v38;
      v51 = swift_slowAlloc();
      *&v53[0] = v51;
      *v39 = 136315394;
      v40 = *a1;
      v41 = sub_24A82DDB4();
      v43 = sub_24A68761C(v41, v42, v53);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = FMReverseGeocodingRequest.debugDescription.getter();
      v46 = v45;
      sub_24A7FC860(v13, type metadata accessor for FMReverseGeocodingRequest);
      v47 = sub_24A68761C(v44, v46, v53);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_24A675000, v36, v37, "%s: Loading new address for %s", v39, 0x16u);
      v48 = v51;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v48, -1, -1);
      MEMORY[0x24C21E1D0](v39, -1, -1);
    }

    else
    {

      sub_24A7FC860(v13, type metadata accessor for FMReverseGeocodingRequest);
    }

    sub_24A75F7DC(a2, 0, 0, 0);
    sub_24A68808C(v53);
    v49 = v57;
    return memcpy(v49, v53, 0x120uLL);
  }

  v52 = v3;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_27EF78C00);
  sub_24A7FCAF4(a2, v11, type metadata accessor for FMReverseGeocodingRequest);

  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v53[0] = v25;
    *v24 = 136315394;
    v26 = *a1;
    v27 = sub_24A82DDB4();
    v29 = sub_24A68761C(v27, v28, v53);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = FMReverseGeocodingRequest.debugDescription.getter();
    v32 = v31;
    sub_24A7FC860(v11, type metadata accessor for FMReverseGeocodingRequest);
    v33 = sub_24A68761C(v30, v32, v53);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_24A675000, v22, v23, "%s: Already loading address for same geohash as %s, ignoring.", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v25, -1, -1);
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  else
  {

    sub_24A7FC860(v11, type metadata accessor for FMReverseGeocodingRequest);
  }

  v50 = v57;
  sub_24A68808C(v53);
  v49 = v50;
  return memcpy(v49, v53, 0x120uLL);
}

uint64_t sub_24A7FA1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_24A82CDF4();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24A82CE54();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMReverseGeocodingRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + qword_27EF5EFD0);
  sub_24A7FCAF4(a1, v18, type metadata accessor for FMReverseGeocodingRequest);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_24A7FCB5C(v18, v21 + v19);
  v22 = (v21 + v20);
  *v22 = v26;
  v22[1] = a3;
  aBlock[4] = sub_24A7FCBC0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCCCE0;
  v23 = _Block_copy(aBlock);

  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v10, v23);
  _Block_release(v23);
  (*(v29 + 8))(v10, v7);
  (*(v11 + 8))(v14, v28);
}

void sub_24A7FA540(uint64_t a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  sub_24A75E6A0(a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24A6921A8(__dst) == 1)
  {
    memcpy(v17, __src, sizeof(v17));
    sub_24A67F378(v17, &unk_27EF5E0D0, &qword_24A8319E0);
    v8 = a2[2];
    v9 = sub_24A6F47C0();
    v11 = v10;
    v12 = qword_27EF5EFB8;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {

      sub_24A6A2D48(v9, v11);
      v14 = v13;

      if (v14)
      {
        sub_24A7FA70C(a2, a3, a4);
        return;
      }
    }

    else
    {
    }

    sub_24A75FBAC(a2, 0, a3, a4);
  }

  else
  {
    memcpy(v16, __src, sizeof(v16));
    memcpy(v15, __src, sizeof(v15));
    sub_24A67E964(v16, v17, &unk_27EF5E0D0, &qword_24A8319E0);
    a3(v15);
    sub_24A67F378(v16, &unk_27EF5E0D0, &qword_24A8319E0);
    memcpy(v17, v15, sizeof(v17));
    sub_24A67F378(v17, &unk_27EF5E0D0, &qword_24A8319E0);
  }
}

uint64_t sub_24A7FA70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A82CDF4();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMReverseGeocodingRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *(v4 + qword_27EF5EFD0);
  sub_24A7FCAF4(a1, v19, type metadata accessor for FMReverseGeocodingRequest);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  sub_24A7FCB5C(v19, v22 + v20);
  v23 = (v22 + v21);
  *v23 = a2;
  v23[1] = a3;
  aBlock[4] = sub_24A7FCBD8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCCD30;
  v24 = _Block_copy(aBlock);

  sub_24A6A7314(a2);
  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v11, v24);
  _Block_release(v24);
  (*(v29 + 8))(v11, v8);
  (*(v27 + 8))(v15, v28);
}

void sub_24A7FAAA8(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v56 = a3;
  v7 = type metadata accessor for FMReverseGeocodingRequest();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v50[-v11];
  v13 = a2[2];
  v14 = sub_24A6F47C0();
  v16 = v15;
  v17 = qword_27EF5EFB8;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {

    v40 = v56;
    if (!v56)
    {
      return;
    }

LABEL_10:
    sub_24A75E6A0(a2, v57);
    v40(v57);
    memcpy(v58, v57, sizeof(v58));
    sub_24A67F378(v58, &unk_27EF5E0D0, &qword_24A8319E0);
    return;
  }

  v54 = a4;

  v19 = sub_24A6A2D48(v14, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {

    v40 = v56;
    if (!v56)
    {
      return;
    }

    goto LABEL_10;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v23 = sub_24A82CDC4();
  sub_24A6797D0(v23, qword_27EF78C00);
  sub_24A7FCAF4(a2, v12, type metadata accessor for FMReverseGeocodingRequest);
  v24 = v22;

  v25 = sub_24A82CD94();
  v26 = sub_24A82D504();
  v53 = v24;

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58[0] = v52;
    *v27 = 136315650;
    v28 = *a1;
    v29 = sub_24A82DDB4();
    v51 = v26;
    v31 = sub_24A68761C(v29, v30, v58);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = FMReverseGeocodingRequest.debugDescription.getter();
    v34 = sub_24A68761C(v32, v33, v58);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2080;
    v35 = FMReverseGeocodingRequest.debugDescription.getter();
    v37 = v36;
    sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
    v38 = sub_24A68761C(v35, v37, v58);

    *(v27 + 24) = v38;
    _os_log_impl(&dword_24A675000, v25, v51, "%s: Attaching to an existing operation: %s, source: %s", v27, 0x20u);
    v39 = v52;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v39, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  else
  {

    sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A7FCAF4(a2, v10, type metadata accessor for FMReverseGeocodingRequest);
  v41 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = a1;
  sub_24A7FCB5C(v10, v42 + v41);
  v43 = (v42 + ((v8 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  v44 = v56;
  v45 = v54;
  *v43 = v56;
  v43[1] = v45;
  v58[4] = sub_24A7FCBF0;
  v58[5] = v42;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 1107296256;
  v58[2] = sub_24A699BA0;
  v58[3] = &unk_285DCCD80;
  v46 = _Block_copy(v58);
  v47 = objc_opt_self();

  sub_24A6A7314(v44);
  v48 = [v47 blockOperationWithBlock_];
  _Block_release(v46);

  v49 = v53;
  [v48 addDependency_];
  [*(a1 + qword_27EF5EFC8) addOperation_];
}

uint64_t sub_24A7FB034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A82CDF4();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMReverseGeocodingRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *(a1 + qword_27EF5EFD0);
  sub_24A7FCAF4(a2, v19, type metadata accessor for FMReverseGeocodingRequest);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  sub_24A7FCB5C(v19, v22 + v20);
  v23 = (v22 + v21);
  *v23 = a3;
  v23[1] = a4;
  aBlock[4] = sub_24A7FCD60;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCCDD0;
  v24 = _Block_copy(aBlock);

  sub_24A6A7314(a3);
  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v11, v24);
  _Block_release(v24);
  (*(v29 + 8))(v11, v8);
  (*(v27 + 8))(v15, v28);
}

uint64_t sub_24A7FB3D0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v6 = sub_24A82CDF4();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v85 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24A82CE54();
  v84 = *(v86 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE04();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CA34();
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMReverseGeocodingRequest();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v73 - v27;
  v89 = a2;
  v73 = a2[2];
  v29 = sub_24A6F47C0();
  v31 = v30;
  v32 = qword_27EF5EFA8;
  swift_beginAccess();
  v33 = a1;
  v34 = *(a1 + v32);
  if (*(v34 + 16) && (, v35 = sub_24A6A2D48(v29, v31), v37 = v36, , (v37 & 1) != 0))
  {
    sub_24A67E964(*(v34 + 56) + *(v21 + 72) * v35, v28, &unk_27EF5E150, &unk_24A83CCC0);

    v38 = 0;
  }

  else
  {

    v38 = 1;
  }

  (*(v21 + 56))(v28, v38, 1, v20);
  if ((*(v21 + 48))(v28, 1, v20))
  {
    sub_24A67F378(v28, &qword_27EF5E148, qword_24A837790);
    sub_24A68808C(v94);
  }

  else
  {
    sub_24A67E964(v28, v24, &unk_27EF5E150, &unk_24A83CCC0);
    sub_24A67F378(v28, &qword_27EF5E148, qword_24A837790);
    memcpy(v93, &v24[*(v20 + 48)], sizeof(v93));
    sub_24A76ECE4(v93, v95);
    sub_24A67F378(v24, &unk_27EF5E150, &unk_24A83CCC0);
    memcpy(v95, v93, 0x120uLL);
    nullsub_1(v95);
    memcpy(v94, v95, 0x120uLL);
  }

  v39 = v33;
  v40 = v77;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v41 = sub_24A82CDC4();
  sub_24A6797D0(v41, qword_27EF78C00);
  sub_24A7FCAF4(v89, v40, type metadata accessor for FMReverseGeocodingRequest);
  sub_24A67E964(v94, v95, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v94, v95, &unk_27EF5E0D0, &qword_24A8319E0);

  v42 = sub_24A82CD94();
  v43 = sub_24A82D504();

  sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v90 = v45;
    *v44 = 136315650;
    v46 = *v39;
    v47 = sub_24A82DDB4();
    v49 = sub_24A68761C(v47, v48, &v90);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v50 = FMReverseGeocodingRequest.debugDescription.getter();
    v52 = v51;
    sub_24A7FC860(v40, type metadata accessor for FMReverseGeocodingRequest);
    v53 = sub_24A68761C(v50, v52, &v90);

    *(v44 + 14) = v53;
    *(v44 + 22) = 2080;
    memcpy(v93, v94, sizeof(v93));
    memcpy(v95, v94, 0x120uLL);
    if (sub_24A6921A8(v95) == 1)
    {
      memcpy(v92, v93, sizeof(v92));
      sub_24A67E964(v94, v91, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v92, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
      v54 = 0xE400000000000000;
      v55 = 1701736302;
    }

    else
    {
      sub_24A67E964(v94, v92, &unk_27EF5E0D0, &qword_24A8319E0);
      v56 = FMIPAddress.debugDescription.getter();
      v54 = v57;
      memcpy(v92, v93, sizeof(v92));
      sub_24A6CD854(v92);
      sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
      v55 = v56;
    }

    v58 = sub_24A68761C(v55, v54, &v90);

    *(v44 + 24) = v58;
    _os_log_impl(&dword_24A675000, v42, v43, "%s: Existing operation completed, notifying the duplicate: %s - %s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v45, -1, -1);
    MEMORY[0x24C21E1D0](v44, -1, -1);
  }

  else
  {
    sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);

    sub_24A7FC860(v40, type metadata accessor for FMReverseGeocodingRequest);
  }

  memcpy(v93, v94, sizeof(v93));
  if (sub_24A6921A8(v93) != 1)
  {
    memcpy(v95, v94, 0x120uLL);
    memcpy(v92, v94, sizeof(v92));
    sub_24A76ECE4(v92, v91);
    v59 = [v73 timestamp];
    v60 = v74;
    sub_24A82C9F4();

    sub_24A75E250(v89, v95, v60);
    sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
    (*(v75 + 8))(v60, v76);
  }

  sub_24A67B054();
  v62 = v78;
  v61 = v79;
  v63 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D851C8], v80);
  v64 = sub_24A82D5A4();
  (*(v61 + 8))(v62, v63);
  v65 = swift_allocObject();
  v67 = v81;
  v66 = v82;
  v65[2] = v81;
  v65[3] = v66;
  memcpy(v65 + 4, v94, 0x120uLL);
  v91[4] = sub_24A7FCE20;
  v91[5] = v65;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 1107296256;
  v91[2] = sub_24A699BA0;
  v91[3] = &unk_285DCCE20;
  v68 = _Block_copy(v91);
  sub_24A67E964(v94, v92, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6A7314(v67);
  v69 = v83;
  sub_24A82CE24();
  v92[0] = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v70 = v85;
  v71 = v88;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v69, v70, v68);
  _Block_release(v68);

  sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
  (*(v87 + 8))(v70, v71);
  (*(v84 + 8))(v69, v86);
}

uint64_t sub_24A7FBF30(const void *a1)
{
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v20, a1, 0x120uLL);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(result + 72);
    sub_24A82CDE4();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    memcpy((v15 + 24), v20, 0x120uLL);
    v19[4] = sub_24A7FCAE8;
    v19[5] = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_24A699BA0;
    v19[3] = &unk_285DCCC90;
    v16 = _Block_copy(v19);
    swift_unknownObjectRetain();
    sub_24A76ECE4(v20, &v18);
    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v6, v11, v16);
    _Block_release(v16);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_24A7FC1B4(uint64_t *a1)
{
  v3 = type metadata accessor for FMReverseGeocodingRequest();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[3];
  sub_24A67E964(v1 + qword_27EF78F28, v7 + v4[8], &qword_27EF5E930, &unk_24A8343F0);
  *v7 = v9;
  v7[1] = v8;
  *(v7 + v4[10]) = 0;
  *(v7 + v4[9]) = 0;
  v7[2] = v10;
  v11 = *(v1 + qword_27EF5EFD0);
  v15 = v1;
  v16 = v7;

  v12 = v10;
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A82D574();
  return sub_24A7FC860(v7, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A7FC304(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMReverseGeocodingRequest();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[3];
  sub_24A67E964(v3 + qword_27EF78F28, v11 + v8[8], &qword_27EF5E930, &unk_24A8343F0);
  *v11 = v13;
  v11[1] = v12;
  *(v11 + v8[10]) = 0;
  *(v11 + v8[9]) = 0;
  v11[2] = v14;

  v15 = v14;
  sub_24A7FA1A0(v11, a2, a3);
  return sub_24A7FC860(v11, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A7FC414(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPSeparationLocation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for FMReverseGeocodingRequest();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24A7FCAF4(a1, v7, type metadata accessor for FMIPSeparationLocation);
  sub_24A67E964(v2 + qword_27EF78F28, v12 + v9[8], &qword_27EF5E930, &unk_24A8343F0);
  v13 = v7[1];
  v14 = sub_24A6F47C0();
  v16 = v15;
  sub_24A7FC860(v7, type metadata accessor for FMIPSeparationLocation);
  *v12 = v14;
  v12[1] = v16;
  *(v12 + v9[10]) = 0;
  *(v12 + v9[9]) = 0;
  v12[2] = v13;
  v17 = *(v2 + qword_27EF5EFD0);
  v20 = v2;
  v21 = v12;
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A82D574();
  return sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A7FC5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPSeparationLocation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FMReverseGeocodingRequest();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A7FCAF4(a1, v11, type metadata accessor for FMIPSeparationLocation);
  sub_24A67E964(v4 + qword_27EF78F28, v16 + v13[8], &qword_27EF5E930, &unk_24A8343F0);
  v17 = v11[1];
  v18 = sub_24A6F47C0();
  v20 = v19;
  sub_24A7FC860(v11, type metadata accessor for FMIPSeparationLocation);
  *v16 = v18;
  v16[1] = v20;
  *(v16 + v13[10]) = 0;
  *(v16 + v13[9]) = 0;
  v16[2] = v17;
  sub_24A7FA1A0(v16, a2, a3);
  return sub_24A7FC860(v16, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t *FMIPReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  *(v1 + qword_27EF78FC8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A67E964(a1, v6, &qword_27EF5E930, &unk_24A8343F0);
  v7 = sub_24A67F608(v6);
  sub_24A67F378(a1, &qword_27EF5E930, &unk_24A8343F0);
  return v7;
}

uint64_t sub_24A7FC860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FMIPReverseGeocodingCache.deinit()
{
  v1 = qword_27EF5EFA0;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27EF5EFA8);

  v4 = *(v0 + qword_27EF5EFB0);

  v5 = *(v0 + qword_27EF5EFB8);

  sub_24A67F378(v0 + qword_27EF78F28, &qword_27EF5E930, &unk_24A8343F0);
  sub_24A6BAF88(v0 + qword_27EF78FC8);
  return v0;
}

uint64_t FMIPReverseGeocodingCache.__deallocating_deinit()
{
  FMIPReverseGeocodingCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of FMIPReverseGeocodingCache.address(for:)()
{
  return (*(*v0 + 408))();
}

{
  return (*(*v0 + 424))();
}

uint64_t dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)()
{
  return (*(*v0 + 416))();
}

{
  return (*(*v0 + 432))();
}

uint64_t sub_24A7FCAF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7FCB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMReverseGeocodingRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7FCC08()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[8];
  v9 = sub_24A82CAE4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v0 + v4))
  {
    v11 = *(v0 + v4 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24A7FCD78(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

void *sub_24A7FCE20()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  result = memcpy(v5, (v1 + 32), sizeof(v5));
  if (v2)
  {
    return v2(v5);
  }

  return result;
}

char *sub_24A7FCE9C()
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - v3;
  v5 = sub_24A82C8B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  if (qword_281514488 != -1)
  {
    swift_once();
  }

  v13 = sub_24A6797D0(v1, qword_281514490);
  sub_24A696E10(v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A6D3E54(v4);
    sub_24A754394();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v14 = type metadata accessor for FMIPDemoContent();
    (*(v6 + 32))(v10, v4, v5);
    sub_24A82C864();
    v15 = *(v6 + 8);
    v15(v10, v5);
    v4 = v14;
    v16 = static FMIPDemoContent.load(from:)();
    if (!v0)
    {
      v4 = v16;
    }

    v15(v12, v5);
  }

  return v4;
}

char *sub_24A7FD120(uint64_t a1)
{
  result = sub_24A7FCE9C();
  v4 = result;
  if (!v1)
  {
    type metadata accessor for FMIPDemoDataSource();
    v5 = swift_allocObject();
    *(v5 + 128) = v4;
    type metadata accessor for FMIPDemoDataGenerator();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24A840380;
    *(v6 + 32) = 0x4024000000000000;
    *(v5 + 136) = v6;

    sub_24A7CFAE8(v7, v12);
    v8 = v12[5];
    *(v5 + 80) = v12[4];
    *(v5 + 96) = v8;
    *(v5 + 112) = v12[6];
    v9 = v12[1];
    *(v5 + 16) = v12[0];
    *(v5 + 32) = v9;
    v10 = v12[3];
    *(v5 + 48) = v12[2];
    *(v5 + 64) = v10;
    sub_24A698230(a1, v11);
    type metadata accessor for FMIPDemoInteractionController();
    swift_allocObject();
    return sub_24A81C648(v5, v11);
  }

  return result;
}

uint64_t sub_24A7FD210()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7FD248(uint64_t a1)
{
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_24A82D744();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_24A6FCAAC(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_24A82D6F4();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_24A82D6C4();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_24A810BC8(v48, v49, v50, a1, &qword_27EF5D720, 0x277D496B0);
        v21 = v20;
        v22 = [v20 identifier];
        sub_24A82CA84();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_24A6FCAAC(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_24A82D714())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_24A6BBA94(&qword_27EF5D718, &qword_24A841600);
          v14 = sub_24A82D3E4();
          sub_24A82D7A4();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_24A6CA498(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_24A6CA498(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_24A6CA498(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_24A7FD664(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24A7FD6DC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v20 = a1;
  v6 = type metadata accessor for FMIPItemPairingState();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v21 = a3;

  v16 = 0;
  while (v13)
  {
LABEL_9:
    sub_24A8126CC(*(v21 + 56) + *(v19 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v9, type metadata accessor for FMIPItemPairingState);
    v18 = v20(v9);
    result = sub_24A812734(v9, type metadata accessor for FMIPItemPairingState);
    if (v3)
    {
      goto LABEL_13;
    }

    v13 &= v13 - 1;
    if (v18)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7FD8A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24A7FD954(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24A7FD9FC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v20 = a1;
  v6 = type metadata accessor for FMIPItem();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v21 = a3;

  v16 = 0;
  while (v13)
  {
LABEL_9:
    sub_24A8126CC(*(v21 + 48) + *(v19 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v9, type metadata accessor for FMIPItem);
    v18 = v20(v9);
    result = sub_24A812734(v9, type metadata accessor for FMIPItem);
    if (v3)
    {
      goto LABEL_13;
    }

    v13 &= v13 - 1;
    if (v18)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7FDBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000024A84AB20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24A82DC04();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24A7FDC8C(uint64_t a1)
{
  v2 = sub_24A7FDE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FDCC8(uint64_t a1)
{
  v2 = sub_24A7FDE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPBeaconRefreshingControllerClientConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F628, &unk_24A8403E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7FDE5C();
  sub_24A82DD64();
  if (!v2)
  {
    v11 = sub_24A82DA54();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A7FDE5C()
{
  result = qword_27EF5F630;
  if (!qword_27EF5F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F630);
  }

  return result;
}

FMIPCore::FMIPUTAlertState_optional __swiftcall FMIPUTAlertState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

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

uint64_t sub_24A7FDF2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64656C6261736964;
  }

  else
  {
    v4 = 0x64656C62616E65;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x64656C6261736964;
  }

  else
  {
    v6 = 0x64656C62616E65;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7FDFD4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7FE058()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7FE0C8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7FE148@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A7FE1A8(uint64_t *a1@<X8>)
{
  v2 = 0x64656C62616E65;
  if (*v1)
  {
    v2 = 0x64656C6261736964;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMIPDeviceConnectedState.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDeviceConnectedState(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

unint64_t sub_24A7FE250()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_24A7FE28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024A84AB40 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24A7FE370(uint64_t a1)
{
  v2 = sub_24A8111A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FE3AC(uint64_t a1)
{
  v2 = sub_24A8111A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPDeviceConnectedState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5F638, &qword_24A8403F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A8111A4();
  sub_24A82DD84();
  v12[15] = 0;
  sub_24A82CAA4();
  sub_24A697DF4(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
  sub_24A82DAF4();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for FMIPDeviceConnectedState(0) + 20));
    v12[13] = 1;
    sub_24A7E0C6C();
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPDeviceConnectedState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5F648, &qword_24A8403F8);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for FMIPDeviceConnectedState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A8111A4();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v17 = v15;
  v18 = v23;
  sub_24A82CAA4();
  v27 = 0;
  sub_24A697DF4(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
  v19 = v24;
  sub_24A82DA34();
  sub_24A67E8FC(v7, v17, &qword_27EF5D020, &qword_24A830E40);
  v25 = 1;
  sub_24A68ADE8();
  sub_24A82DA84();
  (*(v18 + 8))(v11, v19);
  *(v17 + *(v12 + 20)) = v26;
  sub_24A8126CC(v17, v22, type metadata accessor for FMIPDeviceConnectedState);
  sub_24A6876E8(a1);
  return sub_24A812734(v17, type metadata accessor for FMIPDeviceConnectedState);
}

uint64_t FMIPDeviceConnectedStateType.description.getter()
{
  v1 = *v0;
  v2 = 0x656E6E6F63736964;
  v3 = 0x6465686361747461;
  v4 = 0x6465686361746564;
  if (v1 != 3)
  {
    v4 = 0x6465746365746564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657463656E6E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A7FE9C8(uint64_t a1)
{
  v2 = sub_24A8112A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEA04(uint64_t a1)
{
  v2 = sub_24A8112A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEA40(uint64_t a1)
{
  v2 = sub_24A68BAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEA7C(uint64_t a1)
{
  v2 = sub_24A68BAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEAB8(uint64_t a1)
{
  v2 = sub_24A8112F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEAF4(uint64_t a1)
{
  v2 = sub_24A8112F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEB30(uint64_t a1)
{
  v2 = sub_24A81124C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEB6C(uint64_t a1)
{
  v2 = sub_24A81124C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEBA8(uint64_t a1)
{
  v2 = sub_24A8111F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEBE4(uint64_t a1)
{
  v2 = sub_24A8111F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEC20(uint64_t a1)
{
  v2 = sub_24A68BDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEC5C(uint64_t a1)
{
  v2 = sub_24A68BDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPDeviceConnectedStateType.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F650, &qword_24A840400);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5F658, &qword_24A840408);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5F660, &qword_24A840410);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5F668, &qword_24A840418);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = sub_24A6BBA94(&qword_27EF5F670, &qword_24A840420);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = sub_24A6BBA94(&qword_27EF5F678, &qword_24A840428);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  sub_24A67DF6C(v25, v24);
  sub_24A68BAD0();
  sub_24A82DD84();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_24A8112F4();
      v38 = v52;
      sub_24A82DAC4();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_24A68BDE8();
      v38 = v52;
      sub_24A82DAC4();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_24A8112A0();
      v29 = v40;
      v30 = v52;
      sub_24A82DAC4();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_24A81124C();
      v29 = v43;
      v30 = v52;
      sub_24A82DAC4();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_24A8111F8();
      v29 = v46;
      v30 = v52;
      sub_24A82DAC4();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

uint64_t FMIPBeaconSeparationMonitoringState.description.getter()
{
  v1 = 0x64656C62616E65;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x646573756170;
  }

  if (!*v0)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A7FF298()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x646573756170;
  }

  if (*v0)
  {
    v1 = 0x64656C62616E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A7FF310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8124A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7FF338(uint64_t a1)
{
  v2 = sub_24A811348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF374(uint64_t a1)
{
  v2 = sub_24A811348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF3B0(uint64_t a1)
{
  v2 = sub_24A8113F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF3EC(uint64_t a1)
{
  v2 = sub_24A8113F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF428(uint64_t a1)
{
  v2 = sub_24A811444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF464(uint64_t a1)
{
  v2 = sub_24A811444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF4A0(uint64_t a1)
{
  v2 = sub_24A81139C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF4DC(uint64_t a1)
{
  v2 = sub_24A81139C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF518(uint64_t a1)
{
  v2 = sub_24A811498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF554(uint64_t a1)
{
  v2 = sub_24A811498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPBeaconSeparationMonitoringState.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F6E0, &qword_24A840468);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5F6E8, &qword_24A840470);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5F6F0, &qword_24A840478);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5F6F8, &qword_24A840480);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = sub_24A6BBA94(&qword_27EF5F700, &qword_24A840488);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A811348();
  sub_24A82DD84();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_24A8113F0();
      v24 = v33;
      sub_24A82DAC4();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_24A81139C();
      v24 = v36;
      sub_24A82DAC4();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_24A811444();
    v24 = v30;
    sub_24A82DAC4();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_24A811498();
  sub_24A82DAC4();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t FMIPBeaconSeparationMonitoringState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = sub_24A6BBA94(&qword_27EF5F730, &qword_24A840490);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = sub_24A6BBA94(&qword_27EF5F738, &qword_24A840498);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = sub_24A6BBA94(&qword_27EF5F740, &qword_24A8404A0);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = sub_24A6BBA94(&qword_27EF5F748, &qword_24A8404A8);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = sub_24A6BBA94(&qword_27EF5F750, &qword_24A8404B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  sub_24A67DF6C(a1, v20);
  sub_24A811348();
  v21 = v53;
  sub_24A82DD64();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_24A82DAA4();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_24A7DB564();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_24A82D8A4();
      swift_allocError();
      v34 = v33;
      v35 = *(sub_24A6BBA94(&qword_27EF5F258, &qword_24A83DF00) + 48);
      *v34 = &type metadata for FMIPBeaconSeparationMonitoringState;
      sub_24A82D9E4();
      sub_24A82D894();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_24A6876E8(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_24A811444();
        v39 = v42;
        sub_24A82D9D4();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_24A811498();
        v31 = v42;
        sub_24A82D9D4();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return sub_24A6876E8(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_24A8113F0();
      v38 = v42;
      sub_24A82D9D4();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_24A81139C();
      v40 = v42;
      sub_24A82D9D4();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return sub_24A6876E8(v54);
}

uint64_t sub_24A800024()
{
  v1 = 0x64656C62616E65;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x646573756170;
  }

  if (!*v0)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL static FMIPSeparationMonitoringState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 6)
  {
    return v3 == 6;
  }

  if (v2 == 7)
  {
    return v3 == 7;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t FMIPSeparationMonitoringState.allowsSeparationMonitoringConfiguration.getter()
{
  v1 = *v0;
  v2 = v1 & 0xFE;
  v4 = v1 != 4 && v1 != 2;
  return v2 == 6 || v4;
}

BOOL sub_24A800158(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 6;
  v5 = v3 == 7;
  v7 = v2 == v3 && (v3 & 0xFE) != 6;
  if (v2 == 7)
  {
    v7 = v5;
  }

  if (v2 == 6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_24A800194()
{
  v0 = sub_24A82CA34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA24();
  sub_24A82C934();
  v6 = v5;
  sub_24A82C934();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = v6 - v8;
  if (v6 - v8 >= 0.0 && v9 <= 900.0)
  {
    return 0;
  }

  if (v9 >= 900.0 && v9 <= 3600.0)
  {
    return 1;
  }

  if (v9 > 43200.0 || v9 < 3600.0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}