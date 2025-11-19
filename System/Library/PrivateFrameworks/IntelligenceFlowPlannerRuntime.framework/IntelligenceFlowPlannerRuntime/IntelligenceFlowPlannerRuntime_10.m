uint64_t sub_22C442770(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v3 = v12;
    v5 = *(sub_22C901FAC() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    while (1)
    {
      sub_22C3716C0();
      v8 = sub_22C4429E4();
      if (v1)
      {
        break;
      }

      v9 = v8;
      v10 = *(v12 + 16);
      if (v10 >= *(v12 + 24) >> 1)
      {
        sub_22C3B63D4();
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v9;
      v6 += v7;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

void *sub_22C4428C0()
{
  result = sub_22C3AD928(&unk_283FAECD0);
  off_27D9BC350 = result;
  return result;
}

void *sub_22C4428E8()
{
  result = sub_22C3AD928(&unk_283FAED20);
  off_27D9BC358 = result;
  return result;
}

void *sub_22C442910()
{
  if (qword_27D9BA628 != -1)
  {
    swift_once();
  }

  v1 = sub_22C4A02A8(v0, &unk_283FAEC30);

  if (qword_27D9BA630 != -1)
  {
    swift_once();
  }

  sub_22C3CCB98(v2);
  result = sub_22C3AD928(v1);
  off_27D9BC360 = result;
  return result;
}

void sub_22C4429E4()
{
  sub_22C370030();
  v83 = v1;
  v76 = v2;
  v77 = v3;
  v75 = v4;
  v73 = v5;
  v7 = v6;
  v8 = sub_22C90654C();
  v9 = sub_22C369824(v8);
  v78 = v10;
  v79 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v74 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v17 = sub_22C901FAC();
  v18 = sub_22C369824(v17);
  v80 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v72 - v27;
  v29 = sub_22C9070DC();
  v30 = sub_22C369824(v29);
  v81 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v36 = v35 - v34;
  v37 = type metadata accessor for StatefulExpressionParser(0);
  v38 = v37[12];
  v82 = v0;
  v72 = v38;
  v39 = *(v0 + v38);
  if (*(v39 + 16) && (sub_22C628274(), (v41 & 1) != 0))
  {
    v42 = *(*(v39 + 56) + 8 * v40);
  }

  else
  {
    v43 = v82;
    sub_22C60539C(v7, *(v82 + v37[13]));
    if (sub_22C370B74(v28, 1, v29) == 1)
    {
      sub_22C36DD28(v28, &qword_27D9BAA18, &qword_22C911C40);
      type metadata accessor for PromptTreeIdentifier.Label(0);
      swift_allocBox();
      v45 = v44;
      v46 = swift_allocBox();
      (*(v80 + 16))(v47, v7, v17);
      *v45 = v46;
      v48 = *MEMORY[0x277D1D798];
      v49 = sub_22C902D0C();
      sub_22C36985C(v49);
      (*(v50 + 104))(v45, v48);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v81 + 32))(v36, v28, v29);
      v51 = (v43 + v37[10]);
      v52 = v51[3];
      v53 = v51[4];
      sub_22C374168(v51, v52);
      v54 = v83;
      v55 = (*(v53 + 8))(v36, v52, v53);
      if (v54)
      {
        v57 = sub_22C385574();
        v58(v57);
      }

      else
      {
        if (v55 == 2)
        {
          sub_22C90702C();
          sub_22C442ED0(v16, v24);
          (*(v78 + 8))(v16, v79);
          sub_22C3716C0();
          sub_22C4429E4(v59, v60, v61, v62, v63);
          v64 = sub_22C457440();
          v66(v64, v65);
        }

        else
        {
          v56 = v74;
          sub_22C90702C();
          sub_22C443628(v56, v73, v75, v76, v77);
          (*(v78 + 8))(v56, v79);
        }

        v67 = v82;
        v68 = v72;
        v69 = *(v82 + v72);
        swift_isUniquelyReferenced_nonNull_native();
        v84 = *(v67 + v68);
        sub_22C62D218();
        *(v67 + v68) = v84;
        v70 = sub_22C385574();
        v71(v70);
      }
    }
  }

  sub_22C36FB20();
}

uint64_t sub_22C442ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_22C90734C();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90832C();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v13;
  v14 = sub_22C90654C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v28 = *(v15 + 16);
  v28(&v53 - v26, a1, v14);
  v29 = (*(v15 + 88))(v27, v14);
  if (v29 == *MEMORY[0x277D1DAA8])
  {
    v28(v25, v27, v14);
    (*(v15 + 96))(v25, v14);
    v30 = sub_22C906F2C();
    v31 = *(v30 - 8);
    if ((*(v31 + 88))(v25, v30) == *MEMORY[0x277D1DEE8])
    {
      (*(v31 + 96))(v25, v30);
      v32 = *v25;
      if (*(*v25 + 16) == 1)
      {
        v33 = v58;
        sub_22C58B0E0(v32, v58);

        v34 = sub_22C901FAC();
        if (sub_22C370B74(v33, 1, v34) != 1)
        {
          (*(*(v34 - 8) + 32))(v62, v33, v34);
          return (*(v15 + 8))(v27, v14);
        }

        sub_22C36DD28(v33, &qword_27D9BC030, &unk_22C911CC0);
      }

      else
      {
        v46 = *v25;
      }
    }

    else
    {
      (*(v31 + 8))(v25, v30);
    }

    goto LABEL_17;
  }

  if (v29 == *MEMORY[0x277D1D9F8])
  {
    v28(v19, v27, v14);
    (*(v15 + 96))(v19, v14);
    v35 = sub_22C901FAC();
    (*(*(v35 - 8) + 32))(v62, v19, v35);
    return (*(v15 + 8))(v27, v14);
  }

  if (v29 == *MEMORY[0x277D1DA48])
  {
    v28(v22, v27, v14);
    (*(v15 + 96))(v22, v14);
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v39 = (*(v60 + 32))(v59, v22, v61);
    v40 = *(MEMORY[0x2318B57A0](v39) + 16);

    if (v40 != 1)
    {
LABEL_13:
      sub_22C442014();
      swift_allocError();
      *v45 = xmmword_22C912A70;
      *(v45 + 16) = 5;
      swift_willThrow();
      (*(v37 + 8))(v36, v38);
      return (*(v15 + 8))(v27, v14);
    }

    v42 = MEMORY[0x2318B57A0](v41);
    v43 = v55;
    sub_22C6053E0(v42, v55);

    v44 = sub_22C901FAC();
    if (sub_22C370B74(v43, 1, v44) == 1)
    {
      sub_22C36DD28(v43, &qword_27D9BC030, &unk_22C911CC0);
      goto LABEL_13;
    }

    (*(v37 + 8))(v36, v38);
    (*(*(v44 - 8) + 32))(v62, v43, v44);
  }

  else
  {
    if (v29 != *MEMORY[0x277D1DAE8])
    {
LABEL_17:
      sub_22C442014();
      swift_allocError();
      *v51 = xmmword_22C912A70;
      *(v51 + 16) = 5;
      swift_willThrow();
      return (*(v15 + 8))(v27, v14);
    }

    v28(v19, v27, v14);
    (*(v15 + 96))(v19, v14);
    v48 = v56;
    v47 = v57;
    v49 = v54;
    v50 = (*(v56 + 32))(v54, v19, v57);
    MEMORY[0x2318B4800](v50);
    (*(v48 + 8))(v49, v47);
  }

  return (*(v15 + 8))(v27, v14);
}

unint64_t sub_22C443628(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v1184 = a5;
  v1178 = a4;
  v1200 = a3;
  v1189 = a2;
  v1224 = a1;
  v5 = sub_22C90815C();
  v1100 = *(v5 - 8);
  v1101 = v5;
  v6 = *(v1100 + 64);
  MEMORY[0x28223BE20](v5);
  v1099 = &v1088 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90840C();
  v1106 = *(v8 - 8);
  v1107 = v8;
  v9 = *(v1106 + 64);
  MEMORY[0x28223BE20](v8);
  v1105 = &v1088 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C907D0C();
  v1103 = *(v11 - 8);
  v1104 = v11;
  v12 = *(v1103 + 64);
  MEMORY[0x28223BE20](v11);
  v1102 = &v1088 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1162 = sub_22C90808C();
  v1161 = *(v1162 - 8);
  v14 = *(v1161 + 64);
  MEMORY[0x28223BE20](v1162);
  v1160 = &v1088 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1157 = sub_22C9080AC();
  v1156 = *(v1157 - 8);
  v16 = *(v1156 + 64);
  MEMORY[0x28223BE20](v1157);
  v1155 = &v1088 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C9080EC();
  v1096 = *(v18 - 8);
  v1097 = v18;
  v19 = *(v1096 + 64);
  MEMORY[0x28223BE20](v18);
  v1095 = &v1088 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C906FBC();
  v1108 = *(v21 - 8);
  v1109 = v21;
  v22 = *(v1108 + 64);
  MEMORY[0x28223BE20](v21);
  v1110 = &v1088 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C90731C();
  v1111 = *(v24 - 8);
  v1112 = v24;
  v25 = *(v1111 + 64);
  MEMORY[0x28223BE20](v24);
  v1113 = &v1088 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C906AFC();
  v1117 = *(v27 - 8);
  v1118 = v27;
  v28 = *(v1117 + 64);
  MEMORY[0x28223BE20](v27);
  v1116 = &v1088 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C906F5C();
  v1119 = *(v30 - 8);
  v1120 = v30;
  v31 = *(v1119 + 64);
  MEMORY[0x28223BE20](v30);
  v1121 = &v1088 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C9071EC();
  v1124 = *(v33 - 8);
  v1125 = v33;
  v34 = *(v1124 + 64);
  MEMORY[0x28223BE20](v33);
  v1123 = &v1088 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v1098 = &v1088 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v1094 = &v1088 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v1159 = &v1088 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v1151 = &v1088 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v1093 = &v1088 - v47;
  MEMORY[0x28223BE20](v46);
  v1126 = &v1088 - v48;
  v49 = sub_22C906CDC();
  v1127 = *(v49 - 8);
  v1128 = v49;
  v50 = *(v1127 + 64);
  MEMORY[0x28223BE20](v49);
  v1129 = &v1088 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C907BDC();
  v1131 = *(v52 - 8);
  v1132 = v52;
  v53 = *(v1131 + 64);
  MEMORY[0x28223BE20](v52);
  v1130 = &v1088 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22C90734C();
  v1135 = *(v55 - 8);
  v1136 = v55;
  v56 = *(v1135 + 64);
  MEMORY[0x28223BE20](v55);
  v1134 = &v1088 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22C90832C();
  v1139 = *(v58 - 8);
  v1140 = v58;
  v59 = *(v1139 + 64);
  MEMORY[0x28223BE20](v58);
  v1138 = &v1088 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22C90726C();
  v1141 = *(v61 - 8);
  v1142 = v61;
  v62 = *(v1141 + 64);
  MEMORY[0x28223BE20](v61);
  v1143 = &v1088 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22C9072EC();
  v1146 = *(v64 - 8);
  v1147 = v64;
  v65 = *(v1146 + 64);
  MEMORY[0x28223BE20](v64);
  v1144 = &v1088 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22C906B3C();
  v1148 = *(v67 - 8);
  v1149 = v67;
  v68 = *(v1148 + 64);
  MEMORY[0x28223BE20](v67);
  v1150 = &v1088 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1154 = sub_22C9069FC();
  v1153 = *(v1154 - 8);
  v70 = *(v1153 + 64);
  MEMORY[0x28223BE20](v1154);
  v1152 = &v1088 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1165 = type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0);
  v1166 = *(v1165 - 8);
  v72 = *(v1166 + 64);
  MEMORY[0x28223BE20](v1165);
  v1168 = (&v1088 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1187 = sub_22C9083DC();
  v1194 = *(v1187 - 8);
  v74 = *(v1194 + 64);
  MEMORY[0x28223BE20](v1187);
  v1186 = &v1088 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1204 = sub_22C906D7C();
  v1203 = *(v1204 - 8);
  v76 = *(v1203 + 64);
  MEMORY[0x28223BE20](v1204);
  v1210 = &v1088 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v79 = *(*(v78 - 8) + 64);
  v80 = MEMORY[0x28223BE20](v78 - 8);
  v1191 = &v1088 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v1183 = &v1088 - v83;
  MEMORY[0x28223BE20](v82);
  v1193 = &v1088 - v84;
  v1209 = sub_22C906D9C();
  v1220 = *(v1209 - 8);
  v85 = *(v1220 + 64);
  v86 = MEMORY[0x28223BE20](v1209);
  v1202 = &v1088 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v1208 = &v1088 - v88;
  v1219 = sub_22C906DDC();
  v1218 = *(v1219 - 8);
  v89 = *(v1218 + 64);
  MEMORY[0x28223BE20](v1219);
  v1207 = &v1088 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1214 = sub_22C906FCC();
  v1213 = *(v1214 - 8);
  v91 = *(v1213 + 64);
  MEMORY[0x28223BE20](v1214);
  v1212 = &v1088 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1217 = sub_22C906FFC();
  v1216 = *(v1217 - 1);
  v93 = *(v1216 + 64);
  MEMORY[0x28223BE20](v1217);
  v1215 = &v1088 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1174 = sub_22C90769C();
  v1173 = *(v1174 - 8);
  v95 = *(v1173 + 64);
  v96 = MEMORY[0x28223BE20](v1174);
  v1163 = &v1088 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v1171 = &v1088 - v98;
  v1177 = sub_22C906ACC();
  v1176 = *(v1177 - 8);
  v99 = *(v1176 + 64);
  MEMORY[0x28223BE20](v1177);
  v1172 = &v1088 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1221 = sub_22C901FAC();
  v1223 = *(v1221 - 8);
  v101 = *(v1223 + 64);
  v102 = MEMORY[0x28223BE20](v1221);
  v1092 = &v1088 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x28223BE20](v102);
  v1091 = &v1088 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v1090 = &v1088 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v1115 = &v1088 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v1114 = &v1088 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v1122 = &v1088 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v1133 = &v1088 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v1137 = &v1088 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v1145 = &v1088 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v1182 = &v1088 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v1175 = &v1088 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v1188 = &v1088 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v1164 = &v1088 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v1190 = &v1088 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v1181 = &v1088 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v1185 = &v1088 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v1201 = &v1088 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v1170 = &v1088 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1192 = &v1088 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v1211 = &v1088 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v144 = &v1088 - v143;
  MEMORY[0x28223BE20](v142);
  v1205 = &v1088 - v145;
  v1167 = sub_22C902D0C();
  v1206 = *(v1167 - 8);
  v146 = *(v1206 + 64);
  MEMORY[0x28223BE20](v1167);
  v1158 = (&v1088 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1196 = sub_22C90759C();
  v1197 = *(v1196 - 8);
  v148 = *(v1197 + 64);
  MEMORY[0x28223BE20](v1196);
  v1195 = &v1088 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22C906F2C();
  v151 = *(v150 - 8);
  v152 = *(v151 + 64);
  v153 = MEMORY[0x28223BE20](v150);
  v155 = (&v1088 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v153);
  v157 = &v1088 - v156;
  v158 = sub_22C90654C();
  v159 = *(v158 - 8);
  v160 = *(v159 + 64);
  v161 = MEMORY[0x28223BE20](v158);
  v1179 = (&v1088 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = MEMORY[0x28223BE20](v161);
  v1169 = (&v1088 - v164);
  v165 = MEMORY[0x28223BE20](v163);
  v1180 = &v1088 - v166;
  MEMORY[0x28223BE20](v165);
  v168 = &v1088 - v167;
  (*(v159 + 16))(&v1088 - v167, v1224, v158);
  v169 = *(v159 + 88);
  v1199 = v159 + 88;
  v1198 = v169;
  v170 = v169(v168, v158);
  v171 = *MEMORY[0x277D1DAA8];
  if (v170 != *MEMORY[0x277D1DAA8])
  {
    v1224 = v158;
    if (v170 == *MEMORY[0x277D1D9F8])
    {
      (*(v159 + 96))(v168, v1224);
      v182 = v1223;
      v183 = v1221;
      (*(v1223 + 32))(v144, v168, v1221);
      v184 = v1225;
      v185 = sub_22C4429E4(v144, 0, 0, 0, 0);
      if (!v184)
      {
        v157 = v185;
      }

      (*(v182 + 8))(v144, v183);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DAC0])
    {
      (*(v159 + 96))(v168, v1224);
      v200 = v1216;
      v201 = v1215;
      v202 = v168;
      v203 = v1217;
      (*(v1216 + 32))(v1215, v202, v1217);
      v204 = swift_allocObject();
      v157 = v1212;
      sub_22C906DCC();
      v205 = sub_22C47D004();
      v207 = v206;
      (*(v1213 + 8))(v157, v1214);
      *(v204 + 16) = v205;
      *(v204 + 24) = v207;
      v208 = v1211;
      sub_22C906FDC();
      v209 = v1225;
      v210 = sub_22C4429E4(v208, 0, 0, 0, 0);
      if (v209)
      {

        (*(v1223 + 8))(v208, v1221);
      }

      else
      {
        v265 = v210;
        (*(v1223 + 8))(v208, v1221);
        v157 = sub_22C47D60C(v204, v265);
      }

      (*(v200 + 8))(v201, v203);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DAA0])
    {
      v229 = v159;
      (*(v159 + 96))(v168, v1224);
      v230 = v1207;
      (*(v1218 + 32))(v1207, v168, v1219);
      v231 = v1208;
      sub_22C906DCC();
      v232 = v1220;
      v233 = v1202;
      v234 = v1209;
      (*(v1220 + 104))(v1202, *MEMORY[0x277D1DE38], v1209);
      v235 = sub_22C906D8C();
      v236 = *(v232 + 8);
      v236(v233, v234);
      v1220 = v232 + 8;
      v236(v231, v234);
      v157 = v1201;
      if (v235)
      {
        v237 = *(v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
        v238 = v1192;
        sub_22C906DAC();
        v239 = v1193;
        sub_22C60539C(v238, v237);
        v1217 = *(v1223 + 8);
        (v1217)(v238, v1221);
        v240 = sub_22C9070DC();
        if (sub_22C370B74(v239, 1, v240) == 1)
        {
          sub_22C36DD28(v239, &qword_27D9BAA18, &qword_22C911C40);
        }

        else
        {
          v285 = v1180;
          sub_22C90702C();
          (*(*(v240 - 8) + 8))(v239, v240);
          v286 = v229;
          v287 = v1224;
          v288 = v1198(v285, v1224);
          v289 = *MEMORY[0x277D1DA98];
          (*(v286 + 8))(v285, v287);
          v230 = v1207;
          if (v288 == v289)
          {
            v290 = v1170;
            sub_22C906DBC();
            v291 = v1225;
            v292 = sub_22C4429E4(v290, 0, 0, 0, 0);
            if (!v291)
            {
              v157 = v292;
            }

            (v1217)(v290, v1221);
            (*(v1218 + 8))(v230, v1219);
            return v157;
          }
        }
      }

      sub_22C906DAC();
      v293 = v1225;
      v294 = sub_22C4429E4(v157, 0, 0, 0, 0);
      if (v293)
      {
        (*(v1223 + 8))(v157, v1221);
        (*(v1218 + 8))(v230, v1219);
      }

      else
      {
        v295 = v294;
        v296 = *(v1223 + 8);
        v1223 += 8;
        v1224 = v296;
        v296(v157, v1221);
        v157 = swift_allocObject();
        v297 = v1208;
        sub_22C906DCC();
        v298 = sub_22C47D10C();
        v1225 = 0;
        v300 = v299;
        v236(v297, v1209);
        v301 = v230;
        *(v157 + 16) = v298;
        *(v157 + 24) = v300;
        v302 = sub_22C47D60C(v295, v157);

        v303 = v1185;
        sub_22C906DBC();
        v304 = v1225;
        v305 = sub_22C4429E4(v303, 0, 0, 0, 0);
        if (v304)
        {

          (v1224)(v303, v1221);
        }

        else
        {
          v364 = v305;
          (v1224)(v303, v1221);
          v157 = sub_22C47D60C(v302, v364);
        }

        (*(v1218 + 8))(v301, v1219);
      }

      return v157;
    }

    if (v170 == *MEMORY[0x277D1DA98])
    {
      LODWORD(v1220) = v171;
      v1219 = *(v159 + 96);
      (v1219)(v168, v1224);
      (*(v1203 + 32))(v1210, v168, v1204);
      v260 = v1222;
      if (*(v1222 + 1) == 1)
      {
        v261 = *(v260 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
        v262 = v1181;
        sub_22C906D6C();
        v263 = v1183;
        sub_22C60539C(v262, v261);
        (*(v1223 + 8))(v262, v1221);
        v264 = sub_22C9070DC();
        if (sub_22C370B74(v263, 1, v264) == 1)
        {
          sub_22C36DD28(v263, &qword_27D9BAA18, &qword_22C911C40);
        }

        else
        {
          v327 = v1169;
          sub_22C90702C();
          (*(*(v264 - 8) + 8))(v263, v264);
          v328 = v1224;
          v329 = v1198(v327, v1224);
          if (v329 == v1220)
          {
            (v1219)(v327, v328);
            v328 = v150;
            if ((*(v151 + 88))(v327, v150) == *MEMORY[0x277D1DED0])
            {
              (*(v151 + 96))(v327, v150);
              v1223 = *v327;
              type metadata accessor for PromptTreeIdentifier.Label(0);
              v1224 = swift_allocBox();
              v331 = v330;
              v332 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
              v333 = swift_allocBox();
              v335 = v334;
              v336 = *(v332 + 48);
              v337 = swift_allocBox();
              v338 = v1210;
              MEMORY[0x2318B4220]();
              (*(v1203 + 8))(v338, v1204);
              *v335 = v337;
              v339 = *(v1206 + 104);
              v340 = v1167;
              v339(v335, *MEMORY[0x277D1D798], v1167);
              v341 = swift_allocObject();
              *(v341 + 16) = v1223;
              *(v341 + 24) = 0;
              *(v341 + 32) = 1;
              *(v335 + v336) = v341;
              v339((v335 + v336), *MEMORY[0x277D1D7E8], v340);
              *v331 = v333;
              v339(v331, *MEMORY[0x277D1D7D0], v340);
              swift_storeEnumTagMultiPayload();
              return v1224 | 0x2000000000000000;
            }

            v393 = v151;
          }

          else
          {
            v393 = v159;
          }

          (*(v393 + 8))(v327, v328);
        }

        v260 = v1222;
      }

      v1218 = v159 + 96;
      v433 = *(v260 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
      v434 = v1190;
      sub_22C906D6C();
      v435 = v1191;
      sub_22C60539C(v434, v433);
      v436 = *(v1223 + 8);
      v1223 += 8;
      v436(v434, v1221);
      v437 = sub_22C9070DC();
      if (sub_22C370B74(v435, 1, v437) == 1)
      {
        v438 = sub_22C36DD28(v435, &qword_27D9BAA18, &qword_22C911C40);
        v439 = v1225;
      }

      else
      {
        v440 = v1179;
        sub_22C90702C();
        (*(*(v437 - 8) + 8))(v435, v437);
        v441 = v1224;
        v442 = v1198(v440, v1224);
        v439 = v1225;
        if (v442 == v1220)
        {
          (v1219)(v440, v441);
          v443 = v150;
          v444 = (*(v151 + 88))(v440, v150);
          v445 = v1221;
          if (v444 == *MEMORY[0x277D1DEF8])
          {
            v446 = (*(v151 + 96))(v440, v443);
            v447 = v440[1];
            v1224 = *v440;
            v157 = v1164;
            v448 = v1210;
            MEMORY[0x2318B4220](v446);
            v449 = sub_22C4429E4(v157, 0, 0, 0, 0);
            if (v439)
            {

              v436(v157, v445);
LABEL_129:
              (*(v1203 + 8))(v448, v1204);
              return v157;
            }

            v466 = v449;
            v436(v157, v445);
            v1227 = 46;
            v1228 = 0xE100000000000000;
            v467 = sub_22C90A2CC();
            v469 = v468;

            MEMORY[0x2318B7850](v467, v469);

            v470 = v1227;
            v471 = v1228;
            v472 = swift_allocObject();
            *(v472 + 16) = v470;
            *(v472 + 24) = v471;
            v157 = sub_22C47D60C(v466, v472);

            v462 = *(v1203 + 8);
            v463 = v448;
LABEL_137:
            v462(v463, v1204);
            return v157;
          }

          v438 = (*(v151 + 8))(v440, v443);
LABEL_127:
          v450 = v1188;
          v448 = v1210;
          MEMORY[0x2318B4220](v438);
          v451 = sub_22C4429E4(v450, 0, 0, 0, 0);
          v157 = v1223;
          if (v439)
          {
            v436(v450, v445);
            goto LABEL_129;
          }

          v452 = v451;
          v436(v450, v445);
          v453 = swift_allocObject();
          *(v453 + 16) = 91;
          *(v453 + 24) = 0xE100000000000000;
          v454 = sub_22C47D60C(v452, v453);
          v455 = v1210;

          v456 = v1175;
          sub_22C906D6C();
          v458 = sub_22C4429E4(v456, 0, 0, 0, 0);
          v436(v456, v445);
          v459 = v455;
          v460 = sub_22C47D60C(v454, v458);

          v461 = swift_allocObject();
          *(v461 + 16) = 93;
          *(v461 + 24) = 0xE100000000000000;
          v157 = sub_22C47D60C(v460, v461);

          v462 = *(v1203 + 8);
          v463 = v459;
          goto LABEL_137;
        }

        v438 = (*(v159 + 8))(v440, v441);
      }

      v445 = v1221;
      goto LABEL_127;
    }

    if (v170 == *MEMORY[0x277D1DA50])
    {
      (*(v159 + 96))(v168, v1224);
      v268 = v1186;
      v269 = v168;
      v270 = v1187;
      (*(v1194 + 32))(v1186, v269, v1187);
      v271 = *(v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 56));
      v272 = v1182;
      MEMORY[0x2318B5880]();
      v273 = sub_22C6056F4(v272, v271);
      v275 = v274;
      v157 = v1223 + 8;
      v276 = *(v1223 + 8);
      v277 = v272;
      v278 = v1221;
      v279 = v276(v277, v1221);
      v280 = v1225;
      if (!v275)
      {
        v385 = v1205;
        MEMORY[0x2318B5880](v279);
        v386 = sub_22C901F9C();
        v276(v385, v278);
        sub_22C442014();
        swift_allocError();
        *v387 = v386;
        *(v387 + 8) = 0;
        *(v387 + 16) = 3;
        swift_willThrow();
        (*(v1194 + 8))(v268, v270);
        return v157;
      }

      v281 = sub_22C44BD38(v273, v275);
      if (v280)
      {
        (*(v1194 + 8))(v1186, v1187);
        goto LABEL_195;
      }

      v416 = v282;
      v417 = v283;
      v418 = v284;
      v1225 = v281;

      v420 = *(v1165 + 20);
      v421 = v1168;
      v422 = v1186;
      MEMORY[0x2318B5880](v419);
      type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
      swift_storeEnumTagMultiPayload();
      *v421 = 0;
      v421[1] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v742 = *(v417 + 16);
        sub_22C592B20();
        v417 = v743;
      }

      v423 = *(v417 + 16);
      v424 = v1225;
      if (v423 >= *(v417 + 24) >> 1)
      {
        sub_22C592B20();
        v417 = v744;
      }

      *(v417 + 16) = v423 + 1;
      sub_22C456AA8(v1168, v417 + ((*(v1166 + 80) + 32) & ~*(v1166 + 80)) + *(v1166 + 72) * v423, type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender);
      v425 = sub_22C9083CC();
      v465 = sub_22C44EB34(v424, v416, v417, v418, v425);
      (*(v1194 + 8))(v422, v1187);

      return v465;
    }

    v308 = v1225;
    if (v170 == *MEMORY[0x277D1DA78])
    {
      (*(v159 + 96))(v168, v1224);
      v309 = v1176;
      v310 = v1172;
      v311 = v1177;
      (*(v1176 + 32))(v1172, v168, v1177);
      v312 = v1171;
      sub_22C906ABC();
      v313 = sub_22C90768C();
      v315 = v314;
      v316 = v312;
      v317 = v1174;
      v1220 = *(v1173 + 8);
      (v1220)(v316, v1174);
      v1224 = sub_22C44BD38(v313, v315);
      v1223 = v319;
      v1221 = v320;
      if (v308)
      {
        v321 = *(v309 + 8);
        v157 = v309 + 8;
        v321(v310, v311);
        goto LABEL_195;
      }

      v426 = v318;

      v157 = sub_22C906A8C();
      v427 = v1163;
      sub_22C906ABC();
      v428 = sub_22C90768C();
      v1225 = 0;
      v430 = v429;
      (v1220)(v427, v317);
      v1220 = v157;
      v431 = v1225;
      v432 = sub_22C44E188(v1224, v1223, v1221, v426, v157, v428, v430);
      if (!v431)
      {
        v157 = v432;
      }

      (*(v1176 + 8))(v310, v1177);

      return v157;
    }

    if (v170 == *MEMORY[0x277D1DA30])
    {
      v343 = swift_allocObject();
      *(v343 + 16) = 0;
      *(v343 + 24) = 0xE000000000000000;
      sub_22C591324();
      v345 = v344;
      v346 = *(v344 + 16);
      v347 = v1222;
      if (v346 >= *(v344 + 24) >> 1)
      {
        sub_22C591324();
        v345 = v719;
      }

      *(v345 + 16) = v346 + 1;
      *(v345 + 8 * v346 + 32) = v343;
      v348 = (v347 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v349 = v348[4];
      v1223 = v348[3];
      *&v1222 = v349;
      sub_22C374168(v348, v1223);
      v350 = v1197;
      v351 = v1195;
      v352 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0A8], v1196);
      v1223 = (*(v1222 + 8))(v351, v1223);
      v354 = v353;
      (*(v350 + 8))(v351, v352);
      v355 = swift_allocObject();
      *(v355 + 16) = v1223;
      *(v355 + 24) = v354;
      v357 = *(v345 + 16);
      v356 = *(v345 + 24);

      v1088 = v159;
      if (v357 >= v356 >> 1)
      {
        sub_22C591324();
        v345 = v720;
      }

      *(v345 + 16) = v357 + 1;
      *(v345 + 8 * v357 + 32) = v355;

      v358 = swift_allocObject();
      *(v358 + 16) = 10536;
      *(v358 + 24) = 0xE200000000000000;
      v359 = *(v345 + 16);
      if (v359 >= *(v345 + 24) >> 1)
      {
        sub_22C591324();
        v345 = v721;
      }

      v360 = v1224;
      *(v345 + 16) = v359 + 1;
      *(v345 + 8 * v359 + 32) = v358;
      v361 = sub_22C3DB9B0(v345);

      v362 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v363 = swift_allocObject();
      *(v363 + 16) = v361;
      *(v362 + 16) = v363;
      v157 = v362 | 0x6000000000000000;
      (*(v1088 + 8))(v168, v360);
      return v157;
    }

    v394 = v1222;
    if (v170 == *MEMORY[0x277D1DA08])
    {
      (*(v159 + 96))(v168, v1224);
      v395 = v1161;
      v396 = v1160;
      v397 = v1162;
      (*(v1161 + 32))(v1160, v168, v1162);
      v157 = v1159;
      sub_22C906CBC();
      sub_22C4420BC();
      if (!v308)
      {
        v399 = v398;
        v1225 = 0;
        sub_22C36DD28(v157, &qword_27D9BC030, &unk_22C911CC0);
        if ((~v399 & 0xF000000000000007) == 0)
        {
          v399 = swift_allocObject();
          *(v399 + 16) = 0;
          *(v399 + 24) = 0xE000000000000000;
        }

        v1224 = v399;
        sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22C90D070;
        v401 = swift_allocObject();
        v402 = (v394 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
        v403 = v402[3];
        v404 = v402[4];
        sub_22C374168(v402, v403);
        v405 = v1197;
        v406 = v1195;
        v407 = v1196;
        (*(v1197 + 104))(v1195, *MEMORY[0x277D1E080], v1196);
        v408 = (*(v404 + 8))(v406, v403, v404);
        v410 = v409;
        (*(v405 + 8))(v406, v407);
        *(v401 + 16) = v408;
        *(v401 + 24) = v410;
        *(inited + 32) = v401;
        v411 = swift_allocObject();
        v1227 = 40;
        v1228 = 0xE100000000000000;
        *(v411 + 16) = sub_22C90A49C();
        *(v411 + 24) = v412;
        v413 = v1224;
        *(inited + 40) = v411;
        *(inited + 48) = v413;
        v414 = swift_allocObject();
        v1227 = 41;
        v1228 = 0xE100000000000000;

        *(v414 + 16) = sub_22C90A49C();
        *(v414 + 24) = v415;
        *(inited + 56) = v414;
        v157 = sub_22C47D6D8(inited);

        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1161 + 8))(v1160, v1162);
        return v157;
      }

      goto LABEL_135;
    }

    if (v170 == *MEMORY[0x277D1DA10])
    {
      (*(v159 + 96))(v168, v1224);
      v395 = v1156;
      v396 = v1155;
      v397 = v1157;
      (*(v1156 + 32))(v1155, v168, v1157);
      v157 = v1151;
      sub_22C906CBC();
      sub_22C4420BC();
      if (!v308)
      {
        v516 = v464;
        v1225 = 0;
        sub_22C36DD28(v157, &qword_27D9BC030, &unk_22C911CC0);
        if ((~v516 & 0xF000000000000007) == 0)
        {
          v516 = swift_allocObject();
          *(v516 + 16) = 0;
          *(v516 + 24) = 0xE000000000000000;
        }

        v1224 = v516;
        sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
        v517 = swift_allocObject();
        *(v517 + 16) = xmmword_22C90D070;
        v518 = swift_allocObject();
        v519 = (v394 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
        v520 = v519[3];
        v521 = v519[4];
        sub_22C374168(v519, v520);
        v522 = v1197;
        v523 = v1195;
        v524 = v1196;
        (*(v1197 + 104))(v1195, *MEMORY[0x277D1E088], v1196);
        v525 = (*(v521 + 8))(v523, v520, v521);
        v527 = v526;
        (*(v522 + 8))(v523, v524);
        *(v518 + 16) = v525;
        *(v518 + 24) = v527;
        *(v517 + 32) = v518;
        v528 = swift_allocObject();
        v1227 = 40;
        v1228 = 0xE100000000000000;
        *(v528 + 16) = sub_22C90A49C();
        *(v528 + 24) = v529;
        v530 = v1224;
        *(v517 + 40) = v528;
        *(v517 + 48) = v530;
        v531 = swift_allocObject();
        v1227 = 41;
        v1228 = 0xE100000000000000;

        *(v531 + 16) = sub_22C90A49C();
        *(v531 + 24) = v532;
        *(v517 + 56) = v531;
        v157 = sub_22C47D6D8(v517);

        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1156 + 8))(v1155, v1157);
        return v157;
      }

LABEL_135:
      sub_22C36DD28(v157, &qword_27D9BC030, &unk_22C911CC0);
      (*(v395 + 8))(v396, v397);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DA70])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1153 + 32))(v1152, v168, v1154);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v1224 = swift_allocObject();
      *(v1224 + 16) = xmmword_22C90D070;
      v157 = swift_allocObject();
      v477 = (v394 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v478 = v477[3];
      v479 = v477[4];
      sub_22C374168(v477, v478);
      v480 = v1197;
      v481 = v1195;
      v482 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0C0], v1196);
      v483 = (*(v479 + 8))(v481, v478, v479);
      v485 = v484;
      v486 = v481;
      v487 = v1224;
      v488 = v482;
      v489 = v1152;
      (*(v480 + 8))(v486, v488);
      *(v157 + 16) = v483;
      *(v157 + 24) = v485;
      v487[4] = v157;
      v490 = swift_allocObject();
      v1227 = 40;
      v1228 = 0xE100000000000000;
      *(v490 + 16) = sub_22C90A49C();
      *(v490 + 24) = v491;
      v487[5] = v490;
      v492 = MEMORY[0x2318B3EC0]();
      v493 = sub_22C442770(v492);
      if (!v308)
      {
        v555 = v493;

        v556 = sub_22C3DB9B0(v555);

        v557 = sub_22C47D588(8236, 0xE200000000000000, v556);

        v558 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v559 = swift_allocObject();
        *(v559 + 16) = v557;
        *(v558 + 16) = v559;
        v487[6] = v558 | 0x6000000000000000;
        v560 = swift_allocObject();
        v1227 = 41;
        v1228 = 0xE100000000000000;
        *(v560 + 16) = sub_22C90A49C();
        *(v560 + 24) = v561;
        v487[7] = v560;
        v562 = sub_22C3DB9B0(v487);
        v563 = swift_allocObject();
        v564 = swift_allocObject();
        *(v564 + 16) = v562;
        *(v563 + 16) = v564;
        v157 = v563 | 0x6000000000000000;
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1153 + 8))(v489, v1154);
        return v157;
      }

      (*(v1153 + 8))(v489, v1154);

      v494 = v487[4];

      v487[2] = 0;
      swift_setDeallocating();
      goto LABEL_146;
    }

    if (v170 == *MEMORY[0x277D1DA88])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1148 + 32))(v1150, v168, v1149);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v1224 = swift_allocObject();
      *(v1224 + 16) = xmmword_22C90D070;
      v495 = swift_allocObject();
      v496 = (v394 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v497 = v496[3];
      v498 = v496[4];
      sub_22C374168(v496, v497);
      v499 = v1197;
      v500 = v1195;
      v501 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0D0], v1196);
      v502 = *(v498 + 8);
      v503 = v498;
      v504 = v1224;
      v505 = v502(v500, v497, v503);
      v507 = v506;
      v508 = v501;
      v509 = v1150;
      (*(v499 + 8))(v500, v508);
      *(v495 + 16) = v505;
      *(v495 + 24) = v507;
      v504[4] = v495;
      v510 = swift_allocObject();
      v157 = 0xE100000000000000;
      v1227 = 40;
      v1228 = 0xE100000000000000;
      *(v510 + 16) = sub_22C90A49C();
      *(v510 + 24) = v511;
      v504[5] = v510;
      v512 = v1145;
      MEMORY[0x2318B3FE0]();
      v513 = sub_22C4429E4(v512, 0, 0, 0, 0);
      v514 = (v1223 + 8);
      if (!v308)
      {
        v593 = v513;
        (*v514)(v512, v1221);
        v504[6] = v593;
        v594 = swift_allocObject();
        *(v594 + 16) = 91;
        *(v594 + 24) = 0xE100000000000000;
        sub_22C591324();
        v596 = v595;
        v597 = *(v595 + 16);
        if (v597 >= *(v595 + 24) >> 1)
        {
          sub_22C591324();
          v596 = v851;
        }

        *(v596 + 16) = v597 + 1;
        *(v596 + 8 * v597 + 32) = v594;
        v598 = sub_22C906B2C();
        v599 = swift_allocObject();
        v1227 = v598;
        *(v599 + 16) = sub_22C90B47C();
        *(v599 + 24) = v600;
        v601 = *(v596 + 16);
        if (v601 >= *(v596 + 24) >> 1)
        {
          sub_22C591324();
          v596 = v852;
        }

        *(v596 + 16) = v601 + 1;
        *(v596 + 8 * v601 + 32) = v599;
        v602 = swift_allocObject();
        *(v602 + 16) = 10589;
        *(v602 + 24) = 0xE200000000000000;
        v603 = *(v596 + 16);
        if (v603 >= *(v596 + 24) >> 1)
        {
          sub_22C591324();
          v596 = v853;
        }

        *(v596 + 16) = v603 + 1;
        *(v596 + 8 * v603 + 32) = v602;
        v604 = sub_22C3DB9B0(v596);

        v605 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v606 = swift_allocObject();
        *(v606 + 16) = v604;
        *(v605 + 16) = v606;
        v504[7] = v605 | 0x6000000000000000;
        v607 = sub_22C3DB9B0(v504);
        v608 = swift_allocObject();
        v609 = swift_allocObject();
        *(v609 + 16) = v607;
        *(v608 + 16) = v609;
        v157 = v608 | 0x6000000000000000;
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1148 + 8))(v1150, v1149);
        return v157;
      }

      (*v514)(v512, v1221);
      (*(v1148 + 8))(v509, v1149);

      v515 = v504[4];

      v504[2] = 0;
      swift_setDeallocating();
LABEL_146:
      sub_22C58FFB0();
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DAD8])
    {
      (*(v159 + 96))(v168, v1224);
      v533 = v1144;
      (*(v1146 + 32))(v1144, v168, v1147);
      v534 = type metadata accessor for StatefulExpressionParser(0);
      v535 = v534;
      if (*(v394 + *(v534 + 60)) != 1)
      {
        v613 = (v394 + *(v534 + 36));
        v614 = v613[3];
        v615 = v613[4];
        sub_22C374168(v613, v614);
        v616 = v1197;
        v617 = v1195;
        v618 = v1196;
        (*(v1197 + 104))(v1195, *MEMORY[0x277D1E108], v1196);
        v619 = (*(v615 + 8))(v617, v614, v615);
        v621 = v620;
        v622 = *(v616 + 8);
        v157 = v616 + 8;
        v622(v617, v618);
        v1227 = v619;
        v1228 = v621;
        v623 = MEMORY[0x2318B7850](40, 0xE100000000000000);
        v625 = v1227;
        v624 = v1228;
        v626 = v1137;
        MEMORY[0x2318B47A0](v623);
        v627 = sub_22C4429E4(v626, 0, 0, 0, 0);
        if (v308)
        {

          (*(v1223 + 8))(v626, v1221);
        }

        else
        {
          v650 = v627;
          (*(v1223 + 8))(v626, v1221);
          v651 = swift_allocObject();
          *(v651 + 16) = v625;
          *(v651 + 24) = v624;
          v652 = sub_22C47D60C(v651, v650);

          v653 = swift_allocObject();
          *(v653 + 16) = 41;
          *(v653 + 24) = 0xE100000000000000;
          v157 = sub_22C47D60C(v652, v653);
        }

        (*(v1146 + 8))(v533, v1147);
        return v157;
      }

      v536 = swift_allocObject();
      *(v536 + 16) = 0;
      *(v536 + 24) = 0xE000000000000000;
      sub_22C591324();
      v538 = v537;
      v539 = *(v537 + 16);
      if (v539 >= *(v537 + 24) >> 1)
      {
        sub_22C591324();
        v538 = v861;
      }

      *(v538 + 16) = v539 + 1;
      *(v538 + 8 * v539 + 32) = v536;
      v540 = (v1222 + *(v535 + 36));
      v541 = v540[3];
      v542 = v540[4];
      sub_22C374168(v540, v541);
      v543 = v1197;
      v544 = v1195;
      v545 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0A0], v1196);
      v546 = (*(v542 + 8))(v544, v541, v542);
      v548 = v547;
      (*(v543 + 8))(v544, v545);
      v549 = swift_allocObject();
      *(v549 + 16) = v546;
      *(v549 + 24) = v548;
      v551 = *(v538 + 16);
      v550 = *(v538 + 24);

      if (v551 >= v550 >> 1)
      {
        sub_22C591324();
        v538 = v862;
      }

      *(v538 + 16) = v551 + 1;
      *(v538 + 8 * v551 + 32) = v549;

      v552 = swift_allocObject();
      *(v552 + 16) = 10536;
      *(v552 + 24) = 0xE200000000000000;
      v553 = *(v538 + 16);
      if (v553 >= *(v538 + 24) >> 1)
      {
        sub_22C591324();
        v538 = v863;
      }

      *(v538 + 16) = v553 + 1;
      *(v538 + 8 * v553 + 32) = v552;
      v554 = sub_22C3DB9B0(v538);

      (*(v1146 + 8))(v1144, v1147);
      goto LABEL_172;
    }

    if (v170 == *MEMORY[0x277D1DAD0])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1141 + 32))(v1143, v168, v1142);
      v565 = swift_allocObject();
      *(v565 + 16) = 0;
      *(v565 + 24) = 0xE000000000000000;
      sub_22C591324();
      v567 = v566;
      v568 = *(v566 + 16);
      if (v568 >= *(v566 + 24) >> 1)
      {
        sub_22C591324();
        v567 = v864;
      }

      *(v567 + 16) = v568 + 1;
      *(v567 + 8 * v568 + 32) = v565;
      v569 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v570 = v569[3];
      v571 = v569[4];
      sub_22C374168(v569, v570);
      v572 = v1197;
      v573 = v1195;
      v574 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E100], v1196);
      v575 = (*(v571 + 8))(v573, v570, v571);
      v577 = v576;
      (*(v572 + 8))(v573, v574);
      v578 = swift_allocObject();
      *(v578 + 16) = v575;
      *(v578 + 24) = v577;
      v580 = *(v567 + 16);
      v579 = *(v567 + 24);

      if (v580 >= v579 >> 1)
      {
        sub_22C591324();
        v567 = v865;
      }

      *(v567 + 16) = v580 + 1;
      *(v567 + 8 * v580 + 32) = v578;

      v581 = swift_allocObject();
      *(v581 + 16) = 40;
      *(v581 + 24) = 0xE100000000000000;
      v582 = *(v567 + 16);
      if (v582 >= *(v567 + 24) >> 1)
      {
        sub_22C591324();
        v567 = v866;
      }

      *(v567 + 16) = v582 + 1;
      *(v567 + 8 * v582 + 32) = v581;
      sub_22C90724C();
      v583 = sub_22C90A2AC();
      v585 = v584;

      v586 = swift_allocObject();
      *(v586 + 16) = v583;
      *(v586 + 24) = v585;
      v588 = *(v567 + 16);
      v587 = *(v567 + 24);

      if (v588 >= v587 >> 1)
      {
        sub_22C591324();
        v567 = v867;
      }

      *(v567 + 16) = v588 + 1;
      *(v567 + 8 * v588 + 32) = v586;

      v589 = swift_allocObject();
      *(v589 + 16) = 41;
      *(v589 + 24) = 0xE100000000000000;
      v590 = *(v567 + 16);
      if (v590 >= *(v567 + 24) >> 1)
      {
        sub_22C591324();
        v567 = v868;
      }

      *(v567 + 16) = v590 + 1;
      *(v567 + 8 * v590 + 32) = v589;
      v554 = sub_22C3DB9B0(v567);

      (*(v1141 + 8))(v1143, v1142);
      goto LABEL_172;
    }

    if (v170 == *MEMORY[0x277D1DA48])
    {
      (*(v159 + 96))(v168, v1224);
      v628 = v1138;
      (*(v1139 + 32))(v1138, v168, v1140);
      v629 = v1225;
      v630 = sub_22C44EC84(v628);
      if (!v629)
      {
        v157 = v630;
      }

      (*(v1139 + 8))(v1138, v1140);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DAE8])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1135 + 32))(v1134, v168, v1136);
      v634 = type metadata accessor for StatefulExpressionParser(0);
      v157 = v1222;
      v635 = (v1222 + *(v634 + 36));
      v636 = v635[3];
      v637 = v635[4];
      sub_22C374168(v635, v636);
      v638 = v1197;
      v639 = v1195;
      v640 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E118], v1196);
      v641 = (*(v637 + 8))(v639, v636, v637);
      v643 = v642;
      (*(v638 + 8))(v639, v640);
      v1227 = v641;
      v1228 = v643;
      v644 = MEMORY[0x2318B7850](40, 0xE100000000000000);
      v646 = v1227;
      v645 = v1228;
      v647 = v1133;
      MEMORY[0x2318B4800](v644);
      v648 = v1225;
      v649 = sub_22C4429E4(v647, 0, 0, 0, 0);
      if (v648)
      {

        (*(v1223 + 8))(v1133, v1221);
      }

      else
      {
        v674 = v649;
        (*(v1223 + 8))(v1133, v1221);
        v675 = swift_allocObject();
        *(v675 + 16) = v646;
        *(v675 + 24) = v645;
        v676 = sub_22C47D60C(v675, v674);

        v677 = swift_allocObject();
        *(v677 + 16) = 41;
        *(v677 + 24) = 0xE100000000000000;
        v157 = sub_22C47D60C(v676, v677);
      }

      (*(v1135 + 8))(v1134, v1136);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1D9F0])
    {
      (*(v159 + 96))(v168, v1224);
      v654 = (*(v1131 + 32))(v1130, v168, v1132);
      v655 = MEMORY[0x2318B50A0](v654);
      v656 = v1225;
      sub_22C4423A8(v655, v1222);
      v1221 = v657;
      v1225 = v656;
      if (v656)
      {
        (*(v1131 + 8))(v1130, v1132);
        goto LABEL_195;
      }

      v1220 = sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v694 = swift_allocObject();
      *(v694 + 16) = xmmword_22C90D070;
      v695 = swift_allocObject();
      v696 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v697 = v696[3];
      v698 = v696[4];
      sub_22C374168(v696, v697);
      v699 = v1197;
      v700 = v1195;
      v701 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E068], v1196);
      v702 = (*(v698 + 8))(v700, v697, v698);
      v704 = v703;
      (*(v699 + 8))(v700, v701);
      *(v695 + 16) = v702;
      *(v695 + 24) = v704;
      *(v694 + 32) = v695;
      v705 = swift_allocObject();
      v1227 = 40;
      v1228 = 0xE100000000000000;
      *(v705 + 16) = sub_22C90A49C();
      *(v705 + 24) = v706;
      v1219 = v694;
      *(v694 + 40) = v705;
      v1223 = *(v1221 + 16);
      if (v1223)
      {
        v1226[0] = MEMORY[0x277D84F90];
        sub_22C3B63D4();
        v707 = 32;
        v1224 = v1226[0];
        v1222 = xmmword_22C90FB40;
        do
        {
          v708 = *(v1221 + v707);
          v709 = swift_allocObject();
          *(v709 + 16) = v1222;
          v710 = swift_allocObject();
          v1227 = 34;
          v1228 = 0xE100000000000000;

          *(v710 + 16) = sub_22C90A49C();
          *(v710 + 24) = v711;
          *(v709 + 32) = v710;
          *(v709 + 40) = v708;
          v712 = swift_allocObject();
          v1227 = 34;
          v1228 = 0xE100000000000000;

          *(v712 + 16) = sub_22C90A49C();
          *(v712 + 24) = v713;
          *(v709 + 48) = v712;
          v714 = sub_22C3DB9B0(v709);

          swift_setDeallocating();
          sub_22C58FFB0();
          v715 = swift_allocObject();
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          v716 = swift_allocObject();
          *(v716 + 16) = v714;
          *(v715 + 16) = v716;
          v1226[0] = v1224;
          v717 = *(v1224 + 16);
          if (v717 >= *(v1224 + 24) >> 1)
          {
            sub_22C3B63D4();
            v1224 = v1226[0];
          }

          v718 = v1224;
          *(v1224 + 16) = v717 + 1;
          *(v718 + 8 * v717 + 32) = v715 | 0x6000000000000000;
          v707 += 8;
          --v1223;
        }

        while (v1223);
      }

      else
      {

        v1224 = MEMORY[0x277D84F90];
      }

      v749 = sub_22C3DB9B0(v1224);

      v750 = sub_22C47D588(8236, 0xE200000000000000, v749);

      v751 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v752 = swift_allocObject();
      *(v752 + 16) = v750;
      *(v751 + 16) = v752;
      v753 = v1219;
      *(v1219 + 48) = v751 | 0x6000000000000000;
      v754 = swift_allocObject();
      v1227 = 41;
      v1228 = 0xE100000000000000;
      *(v754 + 16) = sub_22C90A49C();
      *(v754 + 24) = v755;
      *(v753 + 56) = v754;
      v157 = sub_22C47D6D8(v753);
      swift_setDeallocating();
      sub_22C58FFB0();
      (*(v1131 + 8))(v1130, v1132);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DA90])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1127 + 32))(v1129, v168, v1128);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v658 = swift_allocObject();
      *(v658 + 16) = xmmword_22C90D070;
      v659 = swift_allocObject();
      v660 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v661 = v660[3];
      v662 = v660[4];
      sub_22C374168(v660, v661);
      v663 = v1197;
      v664 = v1195;
      v665 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0D8], v1196);
      v666 = (*(v662 + 8))(v664, v661, v662);
      v668 = v667;
      (*(v663 + 8))(v664, v665);
      *(v659 + 16) = v666;
      *(v659 + 24) = v668;
      *(v658 + 32) = v659;
      v669 = swift_allocObject();
      v1227 = 40;
      v1228 = 0xE100000000000000;
      *(v669 + 16) = sub_22C90A49C();
      *(v669 + 24) = v670;
      *(v658 + 40) = v669;
      v157 = v1126;
      sub_22C906CBC();
      v671 = v1225;
      v672 = sub_22C442238(v157, v1222);
      if (!v671)
      {
        v745 = v672;
        sub_22C36DD28(v1126, &qword_27D9BC030, &unk_22C911CC0);
        if ((~v745 & 0xF000000000000007) == 0)
        {
          v745 = swift_allocObject();
          v1227 = 0;
          v1228 = 0xE000000000000000;
          *(v745 + 16) = sub_22C90A49C();
          *(v745 + 24) = v746;
        }

        *(v658 + 48) = v745;
        v747 = swift_allocObject();
        v1227 = 41;
        v1228 = 0xE100000000000000;
        *(v747 + 16) = sub_22C90A49C();
        *(v747 + 24) = v748;
        *(v658 + 56) = v747;
        v157 = sub_22C47D6D8(v658);
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1127 + 8))(v1129, v1128);
        return v157;
      }

      sub_22C36DD28(v1126, &qword_27D9BC030, &unk_22C911CC0);
      (*(v1127 + 8))(v1129, v1128);

      goto LABEL_199;
    }

    if (v170 == *MEMORY[0x277D1DAC8])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1124 + 32))(v1123, v168, v1125);
      v678 = type metadata accessor for StatefulExpressionParser(0);
      v157 = v1222;
      v679 = (v1222 + *(v678 + 36));
      v680 = v679[3];
      v681 = v679[4];
      sub_22C374168(v679, v680);
      v682 = v1197;
      v683 = v1195;
      v684 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0F8], v1196);
      v685 = (*(v681 + 8))(v683, v680, v681);
      v687 = v686;
      (*(v682 + 8))(v683, v684);
      v1227 = v685;
      v1228 = v687;
      v688 = MEMORY[0x2318B7850](40, 0xE100000000000000);
      v690 = v1227;
      v689 = v1228;
      v691 = v1122;
      MEMORY[0x2318B46A0](v688);
      v692 = v1225;
      v693 = sub_22C4429E4(v691, 0, 0, 0, 0);
      if (v692)
      {

        (*(v1223 + 8))(v1122, v1221);
      }

      else
      {
        v772 = v693;
        (*(v1223 + 8))(v1122, v1221);
        v773 = swift_allocObject();
        *(v773 + 16) = v690;
        *(v773 + 24) = v689;
        v774 = sub_22C47D60C(v773, v772);

        v775 = swift_allocObject();
        *(v775 + 16) = 41;
        *(v775 + 24) = 0xE100000000000000;
        v157 = sub_22C47D60C(v774, v775);
      }

      (*(v1124 + 8))(v1123, v1125);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DAB0])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1119 + 32))(v1121, v168, v1120);
      v722 = type metadata accessor for StatefulExpressionParser(0);
      v723 = v722;
      if (*(v1222 + *(v722 + 64)) != 1)
      {
        v157 = v1222;
        v776 = (v1222 + *(v722 + 36));
        v777 = v776[3];
        v778 = v776[4];
        sub_22C374168(v776, v777);
        v779 = v1197;
        v780 = v1195;
        v781 = v1196;
        (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0E8], v1196);
        v782 = (*(v778 + 8))(v780, v777, v778);
        v784 = v783;
        (*(v779 + 8))(v780, v781);
        v1227 = v782;
        v1228 = v784;
        v785 = MEMORY[0x2318B7850](40, 0xE100000000000000);
        v787 = v1227;
        v786 = v1228;
        v788 = v1114;
        MEMORY[0x2318B4410](v785);
        v789 = v1225;
        v790 = sub_22C4429E4(v788, 0, 0, 0, 0);
        if (v789)
        {

          (*(v1223 + 8))(v1114, v1221);
        }

        else
        {
          v823 = v790;
          (*(v1223 + 8))(v1114, v1221);
          v824 = swift_allocObject();
          *(v824 + 16) = v787;
          *(v824 + 24) = v786;
          v825 = sub_22C47D60C(v824, v823);

          v826 = swift_allocObject();
          *(v826 + 16) = 41;
          *(v826 + 24) = 0xE100000000000000;
          v157 = sub_22C47D60C(v825, v826);
        }

        (*(v1119 + 8))(v1121, v1120);
        return v157;
      }

      v724 = swift_allocObject();
      *(v724 + 16) = 0;
      *(v724 + 24) = 0xE000000000000000;
      sub_22C591324();
      v726 = v725;
      v727 = *(v725 + 16);
      if (v727 >= *(v725 + 24) >> 1)
      {
        sub_22C591324();
        v726 = v1058;
      }

      *(v726 + 16) = v727 + 1;
      *(v726 + 8 * v727 + 32) = v724;
      v728 = (v1222 + *(v723 + 36));
      v729 = v728[3];
      v730 = v728[4];
      sub_22C374168(v728, v729);
      v731 = v1197;
      v732 = v1195;
      v733 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E090], v1196);
      v734 = (*(v730 + 8))(v732, v729, v730);
      v736 = v735;
      (*(v731 + 8))(v732, v733);
      v737 = swift_allocObject();
      *(v737 + 16) = v734;
      *(v737 + 24) = v736;
      v739 = *(v726 + 16);
      v738 = *(v726 + 24);

      if (v739 >= v738 >> 1)
      {
        sub_22C591324();
        v726 = v1059;
      }

      *(v726 + 16) = v739 + 1;
      *(v726 + 8 * v739 + 32) = v737;

      v740 = swift_allocObject();
      *(v740 + 16) = 10536;
      *(v740 + 24) = 0xE200000000000000;
      v741 = *(v726 + 16);
      if (v741 >= *(v726 + 24) >> 1)
      {
        sub_22C591324();
        v726 = v1060;
      }

      *(v726 + 16) = v741 + 1;
      *(v726 + 8 * v741 + 32) = v740;
      v554 = sub_22C3DB9B0(v726);

      (*(v1119 + 8))(v1121, v1120);
      goto LABEL_172;
    }

    if (v170 == *MEMORY[0x277D1DA80])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1117 + 32))(v1116, v168, v1118);
      v756 = type metadata accessor for StatefulExpressionParser(0);
      v157 = v1222;
      v757 = (v1222 + *(v756 + 36));
      v758 = v757[3];
      v759 = v757[4];
      sub_22C374168(v757, v758);
      v760 = v1197;
      v761 = v1195;
      v762 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0C8], v1196);
      v763 = (*(v759 + 8))(v761, v758, v759);
      v765 = v764;
      (*(v760 + 8))(v761, v762);
      v1227 = v763;
      v1228 = v765;
      v766 = MEMORY[0x2318B7850](40, 0xE100000000000000);
      v768 = v1227;
      v767 = v1228;
      v769 = v1115;
      MEMORY[0x2318B3FB0](v766);
      v770 = v1225;
      v771 = sub_22C4429E4(v769, 0, 0, 0, 0);
      if (v770)
      {

        (*(v1223 + 8))(v1115, v1221);
      }

      else
      {
        v819 = v771;
        (*(v1223 + 8))(v1115, v1221);
        v820 = swift_allocObject();
        *(v820 + 16) = v768;
        *(v820 + 24) = v767;
        v821 = sub_22C47D60C(v820, v819);

        v822 = swift_allocObject();
        *(v822 + 16) = 41;
        *(v822 + 24) = 0xE100000000000000;
        v157 = sub_22C47D60C(v821, v822);
      }

      (*(v1117 + 8))(v1116, v1118);
      return v157;
    }

    if (v170 == *MEMORY[0x277D1DAE0])
    {
      (*(v159 + 96))(v168, v1224);
      (*(v1111 + 32))(v1113, v168, v1112);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v658 = swift_allocObject();
      *(v658 + 16) = xmmword_22C90D070;
      v157 = swift_allocObject();
      v791 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v792 = v791[3];
      v793 = v791[4];
      sub_22C374168(v791, v792);
      v794 = v1197;
      v795 = v1195;
      v796 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E110], v1196);
      v797 = (*(v793 + 8))(v795, v792, v793);
      v799 = v798;
      (*(v794 + 8))(v795, v796);
      *(v157 + 16) = v797;
      *(v157 + 24) = v799;
      *(v658 + 32) = v157;
      v800 = swift_allocObject();
      v1227 = 40;
      v1228 = 0xE100000000000000;
      *(v800 + 16) = sub_22C90A49C();
      *(v800 + 24) = v801;
      *(v658 + 40) = v800;
      v802 = MEMORY[0x2318B47E0]();
      v803 = v1225;
      v804 = sub_22C442770(v802);
      if (!v803)
      {
        v829 = v804;

        v830 = sub_22C3DB9B0(v829);

        v831 = sub_22C47D588(8236, 0xE200000000000000, v830);

        v832 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v833 = swift_allocObject();
        *(v833 + 16) = v831;
        *(v832 + 16) = v833;
        *(v658 + 48) = v832 | 0x6000000000000000;
        v834 = swift_allocObject();
        v1227 = 41;
        v1228 = 0xE100000000000000;
        *(v834 + 16) = sub_22C90A49C();
        *(v834 + 24) = v835;
        *(v658 + 56) = v834;
        v157 = sub_22C47D6D8(v658);
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1111 + 8))(v1113, v1112);
        return v157;
      }

      (*(v1111 + 8))(v1113, v1112);
    }

    else
    {
      if (v170 != *MEMORY[0x277D1DAB8])
      {
        if (v170 == *MEMORY[0x277D1DA18])
        {
          (*(v159 + 96))(v168, v1224);
          (*(v1096 + 32))(v1095, v168, v1097);
          sub_22C906CBC();
          v827 = v1225;
          sub_22C4420BC();
          v1224 = v828;
          v1225 = v827;
          if (v827)
          {
            sub_22C36DD28(v1093, &qword_27D9BC030, &unk_22C911CC0);
            (*(v1096 + 8))(v1095, v1097);
          }

          else
          {
            sub_22C36DD28(v1093, &qword_27D9BC030, &unk_22C911CC0);
            if ((~v1224 & 0xF000000000000007) == 0)
            {
              v883 = swift_allocObject();
              *(v883 + 16) = 0;
              *(v883 + 24) = 0xE000000000000000;
              v1224 = v883;
            }

            sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
            v884 = swift_allocObject();
            *(v884 + 16) = xmmword_22C90D070;
            v885 = swift_allocObject();
            v886 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
            v887 = v886[3];
            v888 = v886[4];
            sub_22C374168(v886, v887);
            v889 = v1197;
            v890 = v1195;
            v891 = v1196;
            (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0E0], v1196);
            v892 = (*(v888 + 8))(v890, v887, v888);
            v894 = v893;
            (*(v889 + 8))(v890, v891);
            *(v885 + 16) = v892;
            *(v885 + 24) = v894;
            *(v884 + 32) = v885;
            v895 = swift_allocObject();
            v1227 = 40;
            v1228 = 0xE100000000000000;
            *(v895 + 16) = sub_22C90A49C();
            *(v895 + 24) = v896;
            v897 = v1224;
            *(v884 + 40) = v895;
            *(v884 + 48) = v897;
            v898 = swift_allocObject();
            v1227 = 41;
            v1228 = 0xE100000000000000;

            *(v898 + 16) = sub_22C90A49C();
            *(v898 + 24) = v899;
            *(v884 + 56) = v898;
            v157 = sub_22C47D6D8(v884);

            swift_setDeallocating();
            sub_22C58FFB0();
            (*(v1096 + 8))(v1095, v1097);
          }

          return v157;
        }

        if (v170 == *MEMORY[0x277D1DA00])
        {
          (*(v159 + 96))(v168, v1224);
          (*(v1103 + 32))(v1102, v168, v1104);
          v836 = swift_allocObject();
          *(v836 + 16) = 0;
          *(v836 + 24) = 0xE000000000000000;
          sub_22C591324();
          v838 = v837;
          v839 = *(v837 + 16);
          v840 = v839 + 1;
          if (v839 >= *(v837 + 24) >> 1)
          {
            goto LABEL_343;
          }

          while (1)
          {
            *(v838 + 16) = v840;
            *(v838 + 8 * v839 + 32) = v836;
            v841 = MEMORY[0x2318B49F0]();
            v843 = v842;
            v844 = swift_allocObject();
            *(v844 + 16) = v841;
            *(v844 + 24) = v843;
            v846 = *(v838 + 16);
            v845 = *(v838 + 24);

            if (v846 >= v845 >> 1)
            {
              sub_22C591324();
              v838 = v1062;
            }

            *(v838 + 16) = v846 + 1;
            *(v838 + 8 * v846 + 32) = v844;

            v847 = swift_allocObject();
            *(v847 + 16) = 61;
            *(v847 + 24) = 0xE100000000000000;
            v157 = *(v838 + 16);
            if (v157 >= *(v838 + 24) >> 1)
            {
              sub_22C591324();
              v838 = v1063;
            }

            *(v838 + 16) = v157 + 1;
            *(v838 + 8 * v157 + 32) = v847;
            v848 = v1090;
            MEMORY[0x2318B51B0]();
            v849 = v1225;
            v850 = sub_22C4429E4(v848, 0, 0, 0, 0);
            if (v849)
            {
              break;
            }

            v914 = v850;
            (*(v1223 + 8))(v1090, v1221);
            v915 = *(v838 + 16);
            if (v915 >= *(v838 + 24) >> 1)
            {
              sub_22C591324();
              v838 = v1067;
            }

            *(v838 + 16) = v915 + 1;
            *(v838 + 8 * v915 + 32) = v914;
            v916 = swift_allocObject();
            *(v916 + 16) = 0;
            *(v916 + 24) = 0xE000000000000000;
            v839 = *(v838 + 16);
            if (v839 >= *(v838 + 24) >> 1)
            {
              sub_22C591324();
              v838 = v1068;
            }

            *(v838 + 16) = v839 + 1;
            *(v838 + 8 * v839 + 32) = v916;
            v917 = sub_22C3DB9B0(v838);

            v918 = swift_allocObject();
            sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
            v919 = swift_allocObject();
            *(v919 + 16) = v917;
            *(v918 + 16) = v919;
            v920 = v1094;
            sub_22C907CEC();
            v1224 = sub_22C442238(v920, v1222);
            sub_22C36DD28(v1094, &qword_27D9BC030, &unk_22C911CC0);
            if ((~v1224 & 0xF000000000000007) != 0)
            {
              v948 = v1224;
              v1227 = v1224;
              sub_22C451774(&v1227, MEMORY[0x277D1E058], v1226);
              sub_22C4546F8(v948);
              v1224 = v1226[0];
            }

            v949 = v1098;
            sub_22C907CFC();
            v1223 = sub_22C442238(v949, v1222);
            v1225 = 0;
            sub_22C36DD28(v1098, &qword_27D9BC030, &unk_22C911CC0);
            if ((~v1223 & 0xF000000000000007) != 0)
            {
              v1014 = v1223;
              v1227 = v1223;
              v1015 = v1225;
              sub_22C451774(&v1227, MEMORY[0x277D1E060], v1226);
              v1225 = v1015;
              sub_22C4546F8(v1014);
              v1223 = v1226[0];
            }

            sub_22C3A5908(&qword_27D9BC368, &unk_22C912AA0);
            v1016 = swift_initStackObject();
            v836 = sub_22C48036C(v1016, 3);
            v1017 = v1224;
            *v1018 = v918 | 0x6000000000000000;
            v1018[1] = v1017;
            v840 = v1223;
            v1018[2] = v1223;

            sub_22C454710(v1017);
            sub_22C454710(v840);
            v1019 = 0;
            v1020 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v1019 == 3)
              {

                v1220 = sub_22C47D738(8236, 0xE200000000000000, v1020);

                sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
                v1025 = swift_initStackObject();
                v1221 = sub_22C48036C(v1025, 4);
                v1219 = v1026;
                v1027 = swift_allocObject();
                v1028 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
                v1030 = v1028[3];
                v1029 = v1028[4];
                sub_22C374168(v1028, v1030);
                v1031 = v1197;
                v1032 = v1195;
                v1033 = v1196;
                (*(v1197 + 104))(v1195, *MEMORY[0x277D1E070], v1196);
                v1034 = (*(v1029 + 8))(v1032, v1030, v1029);
                v1036 = v1035;
                (*(v1031 + 8))(v1032, v1033);
                *(v1027 + 16) = v1034;
                *(v1027 + 24) = v1036;
                v1037 = v1219;
                *v1219 = v1027;
                v1038 = swift_allocObject();
                v1227 = 40;
                v1228 = 0xE100000000000000;
                *(v1038 + 16) = sub_22C90A49C();
                *(v1038 + 24) = v1039;
                v1037[1] = v1038;
                v1037[2] = v1220;
                v1040 = swift_allocObject();
                v1227 = 41;
                v1228 = 0xE100000000000000;

                *(v1040 + 16) = sub_22C90A49C();
                *(v1040 + 24) = v1041;
                v1037[3] = v1040;
                v157 = sub_22C47D6D8(v1221);

                sub_22C4546F8(v1224);
                sub_22C4546F8(v1223);

                (*(v1103 + 8))(v1102, v1104);
                return v157;
              }

              if (v1019 >= *(v836 + 16))
              {
                break;
              }

              v839 = *(v836 + 8 * v1019++ + 32);
              if ((~v839 & 0xF000000000000007) != 0)
              {

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v1022 = *(v1020 + 16);
                  sub_22C591324();
                  v1020 = v1023;
                }

                v1021 = *(v1020 + 16);
                v840 = v1021 + 1;
                if (v1021 >= *(v1020 + 24) >> 1)
                {
                  sub_22C591324();
                  v1020 = v1024;
                }

                *(v1020 + 16) = v840;
                *(v1020 + 8 * v1021 + 32) = v839;
              }
            }

            __break(1u);
LABEL_343:
            sub_22C591324();
            v838 = v1061;
          }

          (*(v1223 + 8))(v1090, v1221);
          (*(v1103 + 8))(v1102, v1104);
          goto LABEL_195;
        }

        if (v170 == *MEMORY[0x277D1DA58])
        {
          (*(v159 + 96))(v168, v1224);
          (*(v1106 + 32))(v1105, v168, v1107);
          v869 = swift_allocObject();
          *(v869 + 16) = 0;
          *(v869 + 24) = 0xE000000000000000;
          sub_22C591324();
          v871 = v870;
          v872 = *(v870 + 16);
          if (v872 >= *(v870 + 24) >> 1)
          {
            sub_22C591324();
            v871 = v1064;
          }

          *(v871 + 16) = v872 + 1;
          *(v871 + 8 * v872 + 32) = v869;
          v873 = MEMORY[0x2318B4A10]();
          v875 = v874;
          v876 = swift_allocObject();
          *(v876 + 16) = v873;
          *(v876 + 24) = v875;
          v878 = *(v871 + 16);
          v877 = *(v871 + 24);

          if (v878 >= v877 >> 1)
          {
            sub_22C591324();
            v871 = v1065;
          }

          *(v871 + 16) = v878 + 1;
          *(v871 + 8 * v878 + 32) = v876;

          v879 = swift_allocObject();
          *(v879 + 16) = 61;
          *(v879 + 24) = 0xE100000000000000;
          v157 = *(v871 + 16);
          if (v157 >= *(v871 + 24) >> 1)
          {
            sub_22C591324();
            v871 = v1066;
          }

          *(v871 + 16) = v157 + 1;
          *(v871 + 8 * v157 + 32) = v879;
          v880 = v1091;
          MEMORY[0x2318B58C0]();
          v881 = v1225;
          v882 = sub_22C4429E4(v880, 0, 0, 0, 0);
          v150 = v881;
          if (v881)
          {
            (*(v1223 + 8))(v1091, v1221);
            (*(v1106 + 8))(v1105, v1107);

            return v157;
          }

          v155 = v882;
          (*(v1223 + 8))(v1091, v1221);
          v157 = *(v871 + 16);
          v159 = v157 + 1;
          if (v157 < *(v871 + 24) >> 1)
          {
            goto LABEL_286;
          }

          goto LABEL_345;
        }

        if (v170 == *MEMORY[0x277D1DA28])
        {
          (*(v159 + 96))(v168, v1224);
          (*(v1100 + 32))(v1099, v168, v1101);
          v900 = swift_allocObject();
          *(v900 + 16) = 0;
          *(v900 + 24) = 0xE000000000000000;
          sub_22C591324();
          v902 = v901;
          v903 = *(v901 + 16);
          if (v903 >= *(v901 + 24) >> 1)
          {
            sub_22C591324();
            v902 = v1069;
          }

          *(v902 + 16) = v903 + 1;
          *(v902 + 8 * v903 + 32) = v900;
          v904 = sub_22C9074FC();
          v906 = v905;
          v907 = swift_allocObject();
          *(v907 + 16) = v904;
          *(v907 + 24) = v906;
          v909 = *(v902 + 16);
          v908 = *(v902 + 24);

          if (v909 >= v908 >> 1)
          {
            sub_22C591324();
            v902 = v1070;
          }

          *(v902 + 16) = v909 + 1;
          *(v902 + 8 * v909 + 32) = v907;

          v910 = swift_allocObject();
          *(v910 + 16) = 61;
          *(v910 + 24) = 0xE100000000000000;
          v157 = *(v902 + 16);
          if (v157 >= *(v902 + 24) >> 1)
          {
            sub_22C591324();
            v902 = v1071;
          }

          *(v902 + 16) = v157 + 1;
          *(v902 + 8 * v157 + 32) = v910;
          v911 = v1092;
          MEMORY[0x2318B5620]();
          v912 = v1225;
          v913 = sub_22C4429E4(v911, 0, 0, 0, 0);
          v1225 = v912;
          if (v912)
          {
            (*(v1223 + 8))(v1092, v1221);
            (*(v1100 + 8))(v1099, v1101);
            goto LABEL_195;
          }

          v965 = v913;
          (*(v1223 + 8))(v1092, v1221);
          v966 = *(v902 + 16);
          if (v966 >= *(v902 + 24) >> 1)
          {
            sub_22C591324();
            v902 = v1080;
          }

          *(v902 + 16) = v966 + 1;
          *(v902 + 8 * v966 + 32) = v965;
          v967 = swift_allocObject();
          *(v967 + 16) = 0;
          *(v967 + 24) = 0xE000000000000000;
          v968 = *(v902 + 16);
          if (v968 >= *(v902 + 24) >> 1)
          {
            sub_22C591324();
            v902 = v1081;
          }

          *(v902 + 16) = v968 + 1;
          *(v902 + 8 * v968 + 32) = v967;
          v969 = sub_22C3DB9B0(v902);

          v970 = swift_allocObject();
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          v971 = swift_allocObject();
          *(v971 + 16) = v969;
          v1224 = v970;
          *(v970 + 16) = v971;
          v1223 = v970 | 0x6000000000000000;
          sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
          v972 = swift_initStackObject();
          *(v972 + 16) = xmmword_22C90D070;
          v973 = swift_allocObject();
          v974 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
          v975 = v974[3];
          v976 = v974[4];
          sub_22C374168(v974, v975);
          v977 = v1197;
          v978 = v1195;
          v979 = v1196;
          (*(v1197 + 104))(v1195, *MEMORY[0x277D1E078], v1196);
          v980 = (*(v976 + 8))(v978, v975, v976);
          v982 = v981;
          (*(v977 + 8))(v978, v979);
          *(v973 + 16) = v980;
          *(v973 + 24) = v982;
          *(v972 + 32) = v973;
          v983 = swift_allocObject();
          v1227 = 40;
          v1228 = 0xE100000000000000;
          *(v983 + 16) = sub_22C90A49C();
          *(v983 + 24) = v984;
          v985 = v1223;
          *(v972 + 40) = v983;
          *(v972 + 48) = v985;
          v986 = swift_allocObject();
          v1227 = 41;
          v1228 = 0xE100000000000000;

          *(v986 + 16) = sub_22C90A49C();
          *(v986 + 24) = v987;
          *(v972 + 56) = v986;
          v157 = sub_22C47D6D8(v972);

          swift_setDeallocating();
          sub_22C58FFB0();
          (*(v1100 + 8))(v1099, v1101);
          return v157;
        }

        if (v170 == *MEMORY[0x277D1DA40])
        {
          v921 = swift_allocObject();
          *(v921 + 16) = 0;
          *(v921 + 24) = 0xE000000000000000;
          sub_22C591324();
          v923 = v922;
          v924 = *(v922 + 16);
          if (v924 >= *(v922 + 24) >> 1)
          {
            sub_22C591324();
            v923 = v1079;
          }

          *(v923 + 16) = v924 + 1;
          *(v923 + 8 * v924 + 32) = v921;
          v925 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
          v926 = v925[3];
          v927 = v925[4];
          sub_22C374168(v925, v926);
          v928 = MEMORY[0x277D1E0B0];
        }

        else
        {
          if (v170 != *MEMORY[0x277D1DA20])
          {
            if (v170 == *MEMORY[0x277D1DA38])
            {
              v157 = swift_allocObject();
              v1227 = 59;
              v1228 = 0xE100000000000000;
              *(v157 + 16) = sub_22C90A49C();
              *(v157 + 24) = v1013;
              return v157;
            }

            if (v170 == *MEMORY[0x277D1DAF0])
            {
              sub_22C442014();
              swift_allocError();
              *v1042 = 0;
              *(v1042 + 8) = 0;
              *(v1042 + 16) = 5;
              swift_willThrow();
              return v157;
            }

            if (v170 == *MEMORY[0x277D1DA68])
            {
              v1043 = swift_allocObject();
              *(v1043 + 16) = 0;
              *(v1043 + 24) = 0xE000000000000000;
              sub_22C591324();
              v1045 = v1044;
              v1046 = *(v1044 + 16);
              if (v1046 >= *(v1044 + 24) >> 1)
              {
                sub_22C591324();
                v1045 = v1085;
              }

              *(v1045 + 16) = v1046 + 1;
              *(v1045 + 8 * v1046 + 32) = v1043;
              v1047 = sub_22C90750C();
              v1049 = v1048;
              v1050 = swift_allocObject();
              *(v1050 + 16) = v1047;
              *(v1050 + 24) = v1049;
              v1052 = *(v1045 + 16);
              v1051 = *(v1045 + 24);

              if (v1052 >= v1051 >> 1)
              {
                sub_22C591324();
                v1045 = v1086;
              }

              *(v1045 + 16) = v1052 + 1;
              *(v1045 + 8 * v1052 + 32) = v1050;

              v1053 = swift_allocObject();
              *(v1053 + 16) = 0;
              *(v1053 + 24) = 0xE000000000000000;
              v1054 = *(v1045 + 16);
              if (v1054 >= *(v1045 + 24) >> 1)
              {
                sub_22C591324();
                v1045 = v1087;
              }

              *(v1045 + 16) = v1054 + 1;
              *(v1045 + 8 * v1054 + 32) = v1053;
              v1055 = sub_22C3DB9B0(v1045);

              v1056 = swift_allocObject();
              sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
              v1057 = swift_allocObject();
              *(v1057 + 16) = v1055;
              *(v1056 + 16) = v1057;
              return v1056 | 0x6000000000000000;
            }

            goto LABEL_344;
          }

          v950 = swift_allocObject();
          *(v950 + 16) = 0;
          *(v950 + 24) = 0xE000000000000000;
          sub_22C591324();
          v923 = v951;
          v952 = *(v951 + 16);
          if (v952 >= *(v951 + 24) >> 1)
          {
            sub_22C591324();
            v923 = v1084;
          }

          *(v923 + 16) = v952 + 1;
          *(v923 + 8 * v952 + 32) = v950;
          v953 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
          v926 = v953[3];
          v927 = v953[4];
          sub_22C374168(v953, v926);
          v928 = MEMORY[0x277D1E098];
        }

        v954 = v1197;
        v955 = v1195;
        v956 = v1196;
        (*(v1197 + 104))(v1195, *v928, v1196);
        v957 = (*(v927 + 8))(v955, v926, v927);
        v959 = v958;
        (*(v954 + 8))(v955, v956);
        v960 = swift_allocObject();
        *(v960 + 16) = v957;
        *(v960 + 24) = v959;
        v962 = *(v923 + 16);
        v961 = *(v923 + 24);

        if (v962 >= v961 >> 1)
        {
          sub_22C591324();
          v923 = v1077;
        }

        *(v923 + 16) = v962 + 1;
        *(v923 + 8 * v962 + 32) = v960;

        v963 = swift_allocObject();
        *(v963 + 16) = 10536;
        *(v963 + 24) = 0xE200000000000000;
        v964 = *(v923 + 16);
        if (v964 >= *(v923 + 24) >> 1)
        {
          sub_22C591324();
          v923 = v1078;
        }

        *(v923 + 16) = v964 + 1;
        *(v923 + 8 * v964 + 32) = v963;
        v554 = sub_22C3DB9B0(v923);

LABEL_172:
        v591 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v592 = swift_allocObject();
        *(v592 + 16) = v554;
        *(v591 + 16) = v592;
        return v591 | 0x6000000000000000;
      }

      (*(v159 + 96))(v168, v1224);
      (*(v1108 + 32))(v1110, v168, v1109);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v658 = swift_allocObject();
      *(v658 + 16) = xmmword_22C90D070;
      v157 = swift_allocObject();
      v805 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v806 = v805[3];
      v807 = v805[4];
      sub_22C374168(v805, v806);
      v808 = v1197;
      v809 = v1195;
      v810 = v1196;
      (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0F0], v1196);
      v811 = (*(v807 + 8))(v809, v806, v807);
      v813 = v812;
      (*(v808 + 8))(v809, v810);
      *(v157 + 16) = v811;
      *(v157 + 24) = v813;
      *(v658 + 32) = v157;
      v814 = swift_allocObject();
      v1227 = 40;
      v1228 = 0xE100000000000000;
      *(v814 + 16) = sub_22C90A49C();
      *(v814 + 24) = v815;
      *(v658 + 40) = v814;
      v816 = MEMORY[0x2318B4480]();
      v817 = v1225;
      v818 = sub_22C442770(v816);
      if (!v817)
      {
        v854 = v818;

        v855 = sub_22C3DB9B0(v854);

        v856 = sub_22C47D588(8236, 0xE200000000000000, v855);

        v857 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v858 = swift_allocObject();
        *(v858 + 16) = v856;
        *(v857 + 16) = v858;
        *(v658 + 48) = v857 | 0x6000000000000000;
        v859 = swift_allocObject();
        v1227 = 41;
        v1228 = 0xE100000000000000;
        *(v859 + 16) = sub_22C90A49C();
        *(v859 + 24) = v860;
        *(v658 + 56) = v859;
        v157 = sub_22C47D6D8(v658);
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1108 + 8))(v1110, v1109);
        return v157;
      }

      (*(v1108 + 8))(v1110, v1109);
    }

LABEL_199:
    v673 = *(v658 + 32);

    *(v658 + 16) = 0;
    swift_setDeallocating();
    goto LABEL_146;
  }

  v172 = MEMORY[0x277D1DED0];
  v173 = *(v159 + 96);
  v159 += 96;
  v173(v168, v158);
  (*(v151 + 32))(v157, v168, v150);
  (*(v151 + 16))(v155, v157, v150);
  v174 = (*(v151 + 88))(v155, v150);
  v175 = v150;
  v176 = v151;
  v177 = v157;
  if (v174 == *MEMORY[0x277D1DED8])
  {
    (*(v151 + 96))(v155, v175);
    v178 = *v155;
    v157 = swift_allocObject();
    v179 = (v151 + 8);
    if (v178 == 1)
    {
      v180 = 1702195796;
      v181 = 0xE400000000000000;
    }

    else
    {
      v180 = 0x65736C6146;
      v181 = 0xE500000000000000;
    }

    v1227 = v180;
    v1228 = v181;
    v211 = sub_22C90A49C();
    v213 = v212;
    (*v179)(v177, v175);
    *(v157 + 16) = v211;
    *(v157 + 24) = v213;
    return v157;
  }

  if (v174 == *v172)
  {
    v1224 = v157;
    (*(v151 + 96))(v155, v175);
    v186 = *v155;
    v187 = swift_allocObject();
    *(v187 + 16) = 0;
    *(v187 + 24) = 0xE000000000000000;
    sub_22C591324();
    v189 = v188;
    v190 = *(v188 + 16);
    if (v190 >= *(v188 + 24) >> 1)
    {
      sub_22C591324();
      v189 = v610;
    }

    *(v189 + 16) = v190 + 1;
    *(v189 + 8 * v190 + 32) = v187;
    v191 = swift_allocObject();
    v1227 = v186;
    *(v191 + 16) = sub_22C90B47C();
    *(v191 + 24) = v192;
    v193 = *(v189 + 16);
    if (v193 >= *(v189 + 24) >> 1)
    {
      sub_22C591324();
      v189 = v611;
    }

    v194 = v1224;
    *(v189 + 16) = v193 + 1;
    *(v189 + 8 * v193 + 32) = v191;
    v195 = swift_allocObject();
    *(v195 + 16) = 0;
    *(v195 + 24) = 0xE000000000000000;
    v196 = *(v189 + 16);
    if (v196 >= *(v189 + 24) >> 1)
    {
      sub_22C591324();
      v189 = v612;
    }

    *(v189 + 16) = v196 + 1;
    *(v189 + 8 * v196 + 32) = v195;
    v197 = sub_22C3DB9B0(v189);

    (*(v176 + 8))(v194, v175);
    v198 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v199 = swift_allocObject();
    *(v199 + 16) = v197;
    *(v198 + 16) = v199;
    return v198 | 0x6000000000000000;
  }

  v214 = v175;
  v215 = v1225;
  if (v174 == *MEMORY[0x277D1DEF0])
  {
    (*(v151 + 96))(v155, v214);
    v216 = *v155;
    v217 = swift_allocObject();
    *(v217 + 16) = 0;
    *(v217 + 24) = 0xE000000000000000;
    sub_22C591324();
    v219 = v218;
    v220 = *(v218 + 16);
    if (v220 >= *(v218 + 24) >> 1)
    {
      sub_22C591324();
      v219 = v631;
    }

    *(v219 + 16) = v220 + 1;
    *(v219 + 8 * v220 + 32) = v217;
    v221 = swift_allocObject();
    *(v221 + 16) = sub_22C90A84C();
    *(v221 + 24) = v222;
    v223 = *(v219 + 16);
    if (v223 >= *(v219 + 24) >> 1)
    {
      sub_22C591324();
      v219 = v632;
    }

    *(v219 + 16) = v223 + 1;
    *(v219 + 8 * v223 + 32) = v221;
    v224 = swift_allocObject();
    *(v224 + 16) = 0;
    *(v224 + 24) = 0xE000000000000000;
    v225 = *(v219 + 16);
    if (v225 >= *(v219 + 24) >> 1)
    {
      sub_22C591324();
      v219 = v633;
    }

    *(v219 + 16) = v225 + 1;
    *(v219 + 8 * v225 + 32) = v224;
    v226 = sub_22C3DB9B0(v219);

    (*(v176 + 8))(v177, v214);
    v227 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v228 = swift_allocObject();
    *(v228 + 16) = v226;
    *(v227 + 16) = v228;
    return v227 | 0x6000000000000000;
  }

  v241 = *MEMORY[0x277D1DEF8];
  v1089 = v151;
  if (v174 == v241)
  {
    v1224 = v157;
    v242 = v214;
    (*(v151 + 96))(v155, v214);
    v243 = v155[1];
    v1223 = *v155;
    v1221 = v243;
    v244 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
    v245 = v244[3];
    v246 = v244[4];
    sub_22C374168(v244, v245);
    v247 = v1197;
    v248 = v1195;
    v249 = v1196;
    (*(v1197 + 104))(v1195, *MEMORY[0x277D1E100], v1196);
    v250 = (*(v246 + 8))(v248, v245, v246);
    v252 = v251;
    (*(v247 + 8))(v248, v249);
    if (!v1200)
    {

      v255 = v242;
      v256 = v1089;
      v257 = v1224;
      v322 = v1223;
      v258 = v1221;
LABEL_99:
      (*(v256 + 8))(v257, v255);
      v388 = swift_allocObject();
      *(v388 + 16) = v322;
      *(v388 + 24) = v258;
      v389 = swift_allocObject();
      *(v389 + 16) = 2;
      *(v389 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v390 = swift_allocObject();
      *(v390 + 16) = v388;
      *(v389 + 32) = v390;
      v391 = swift_allocObject();
      *(v391 + 16) = 3;
      *(v391 + 24) = 1;
      v392 = swift_allocObject();
      *(v392 + 16) = v389 | 0xA000000000000000;
      *(v391 + 32) = v392;
      return v391 | 0xA000000000000000;
    }

    if (v250 == v1189 && v252 == v1200)
    {

      v255 = v242;
      v256 = v1089;
      v259 = v1184;
      v257 = v1224;
      v258 = v1221;
      if (!v1184)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v254 = sub_22C90B4FC();

      v255 = v242;
      v256 = v1089;
      v257 = v1224;
      v258 = v1221;
      if ((v254 & 1) == 0)
      {
        goto LABEL_98;
      }

      v259 = v1184;
      if (!v1184)
      {
        goto LABEL_98;
      }
    }

    v323 = sub_22C90756C();
    v1227 = v1178;
    v1228 = v259;
    MEMORY[0x28223BE20](v323);
    *(&v1088 - 2) = &v1227;
    v324 = sub_22C5EC08C(sub_22C3AC11C, (&v1088 - 4), v323);

    if (v324)
    {
      v322 = sub_22C90A2CC();
      v326 = v325;

      v258 = v326;
      v257 = v1224;
      goto LABEL_99;
    }

    v257 = v1224;
LABEL_98:
    v322 = v1223;
    goto LABEL_99;
  }

  v150 = v1222;
  if (v174 != *MEMORY[0x277D1DEE8])
  {
    if (v174 == *MEMORY[0x277D1DF00])
    {
      v306 = v1089;
      (*(v1089 + 96))(v155, v214);
      v307 = sub_22C44B8C8(*v155, v155[1], v1189, v1200);
      if (!v215)
      {
        v157 = v307;
        (*(v306 + 8))(v177, v214);

        return v157;
      }

      (*(v306 + 8))(v157, v214);
LABEL_195:

      return v157;
    }

    if (v174 == *MEMORY[0x277D1DEE0])
    {
      sub_22C442014();
      swift_allocError();
      *v342 = 0;
      *(v342 + 8) = 0;
      *(v342 + 16) = 5;
      swift_willThrow();
      (*(v1089 + 8))(v157, v214);
      return v157;
    }

LABEL_344:
    sub_22C90B4EC();
    __break(1u);
LABEL_345:
    sub_22C591324();
    v871 = v1072;
LABEL_286:
    *(v871 + 16) = v159;
    *(v871 + 8 * v157 + 32) = v155;
    v929 = swift_allocObject();
    *(v929 + 16) = 0;
    *(v929 + 24) = 0xE000000000000000;
    v930 = *(v871 + 16);
    if (v930 >= *(v871 + 24) >> 1)
    {
      sub_22C591324();
      v871 = v1073;
    }

    *(v871 + 16) = v930 + 1;
    *(v871 + 8 * v930 + 32) = v929;
    v931 = sub_22C3DB9B0(v871);

    v932 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v933 = swift_allocObject();
    *(v933 + 16) = v931;
    v934 = v932;
    *(v932 + 16) = v933;
    v935 = swift_allocObject();
    *(v935 + 16) = 0;
    *(v935 + 24) = 0xE000000000000000;
    sub_22C591324();
    v157 = v936;
    v937 = *(v936 + 16);
    if (v937 >= *(v936 + 24) >> 1)
    {
      sub_22C591324();
      v157 = v1074;
    }

    *(v157 + 16) = v937 + 1;
    *(v157 + 8 * v937 + 32) = v935;
    v938 = MEMORY[0x2318B4A20]();
    v940 = v939;
    v941 = swift_allocObject();
    *(v941 + 16) = v938;
    *(v941 + 24) = v940;
    v943 = *(v157 + 16);
    v942 = *(v157 + 24);

    if (v943 >= v942 >> 1)
    {
      sub_22C591324();
      v157 = v1075;
    }

    *(v157 + 16) = v943 + 1;
    *(v157 + 8 * v943 + 32) = v941;

    v944 = swift_allocObject();
    *(v944 + 16) = 23357;
    *(v944 + 24) = 0xE200000000000000;
    v945 = *(v157 + 16);
    if (v945 >= *(v157 + 24) >> 1)
    {
      sub_22C591324();
      v157 = v1076;
    }

    *(v157 + 16) = v945 + 1;
    *(v157 + 8 * v945 + 32) = v944;
    v946 = sub_22C9083FC();
    v947 = sub_22C442770(v946);
    v1225 = v150;
    if (v150)
    {
      (*(v1106 + 8))(v1105, v1107);

      goto LABEL_195;
    }

    v988 = v947;

    v989 = sub_22C47D738(8236, 0xE200000000000000, v988);

    v990 = *(v157 + 16);
    if (v990 >= *(v157 + 24) >> 1)
    {
      sub_22C591324();
      v157 = v1082;
    }

    *(v157 + 16) = v990 + 1;
    *(v157 + 8 * v990 + 32) = v989;
    v991 = swift_allocObject();
    *(v991 + 16) = 93;
    *(v991 + 24) = 0xE100000000000000;
    v992 = *(v157 + 16);
    if (v992 >= *(v157 + 24) >> 1)
    {
      sub_22C591324();
      v157 = v1083;
    }

    *(v157 + 16) = v992 + 1;
    *(v157 + 8 * v992 + 32) = v991;
    v993 = sub_22C3DB9B0(v157);

    v994 = swift_allocObject();
    v995 = swift_allocObject();
    *(v995 + 16) = v993;
    *(v994 + 16) = v995;
    v1223 = v994;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v996 = swift_initStackObject();
    *(v996 + 16) = xmmword_22C90F870;
    *(v996 + 32) = v934 | 0x6000000000000000;
    *(v996 + 40) = v994 | 0x6000000000000000;
    v1224 = v934;

    v1221 = sub_22C47D738(8236, 0xE200000000000000, v996);
    swift_setDeallocating();
    sub_22C58FFB0();
    v997 = swift_initStackObject();
    *(v997 + 16) = xmmword_22C90D070;
    v998 = swift_allocObject();
    v999 = (v1222 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
    v1001 = v999[3];
    v1000 = v999[4];
    sub_22C374168(v999, v1001);
    v1002 = v1197;
    v1003 = v1195;
    v1004 = v1196;
    (*(v1197 + 104))(v1195, *MEMORY[0x277D1E0B8], v1196);
    v1005 = (*(v1000 + 8))(v1003, v1001, v1000);
    v1007 = v1006;
    (*(v1002 + 8))(v1003, v1004);
    *(v998 + 16) = v1005;
    *(v998 + 24) = v1007;
    *(v997 + 32) = v998;
    v1008 = swift_allocObject();
    v1227 = 40;
    v1228 = 0xE100000000000000;
    *(v1008 + 16) = sub_22C90A49C();
    *(v1008 + 24) = v1009;
    v1010 = v1221;
    *(v997 + 40) = v1008;
    *(v997 + 48) = v1010;
    v1011 = swift_allocObject();
    v1227 = 41;
    v1228 = 0xE100000000000000;

    *(v1011 + 16) = sub_22C90A49C();
    *(v1011 + 24) = v1012;
    *(v997 + 56) = v1011;
    v157 = sub_22C47D6D8(v997);

    swift_setDeallocating();
    sub_22C58FFB0();
    (*(v1106 + 8))(v1105, v1107);
    return v157;
  }

  v266 = v1089;
  (*(v1089 + 96))(v155, v214);
  v157 = *v155;
  v267 = sub_22C442770(*v155);
  if (v215)
  {
    (*(v266 + 8))(v177, v214);
    goto LABEL_195;
  }

  v1224 = v177;
  v365 = sub_22C3DB9B0(v267);

  v366 = sub_22C47D588(8236, 0xE200000000000000, v365);

  v367 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v368 = swift_allocObject();
  *(v368 + 16) = v366;
  *(v367 + 16) = v368;
  v369 = swift_allocObject();
  *(v369 + 16) = 91;
  *(v369 + 24) = 0xE100000000000000;
  v370 = sub_22C47D60C(v369, v367 | 0x6000000000000000);

  v371 = swift_allocObject();
  *(v371 + 16) = 93;
  *(v371 + 24) = 0xE100000000000000;
  v1214 = sub_22C47D60C(v370, v371);

  v1225 = &v1088;
  v1215 = v157;
  v1227 = v157;
  MEMORY[0x28223BE20](v372);
  *(&v1088 - 2) = v150;
  sub_22C3A5908(&qword_27D9BB090, &unk_22C90D930);
  sub_22C3D32C8(&qword_27D9BC370, &qword_27D9BB090, &unk_22C90D930);
  if (sub_22C90A4FC())
  {
    v1225 = 0;
    v373 = v1215;
    v374 = *(v1215 + 2);
    if (v374)
    {
      v1213 = v214;
      v1227 = MEMORY[0x277D84F90];
      sub_22C3B69C4(0, v374, 0);
      *&v1222 = *(v1223 + 16);
      v375 = v1227;
      v376 = &v373[(*(v1223 + 80) + 32) & ~*(v1223 + 80)];
      v1220 = *(v1223 + 72);
      v1223 += 16;
      v1219 = v1223 + 16;
      LODWORD(v1218) = *MEMORY[0x277D1D798];
      v1217 = (v1206 + 104);
      v1216 = v1206 + 32;
      v377 = v1167;
      v378 = v1158;
      do
      {
        v379 = v1205;
        v380 = v1221;
        (v1222)(v1205, v376, v1221);
        v381 = swift_allocBox();
        (*v1219)(v382, v379, v380);
        *v378 = v381;
        (*v1217)(v378, v1218, v377);
        v1227 = v375;
        v384 = *(v375 + 16);
        v383 = *(v375 + 24);
        if (v384 >= v383 >> 1)
        {
          sub_22C3B69C4(v383 > 1, v384 + 1, 1);
          v378 = v1158;
          v375 = v1227;
        }

        *(v375 + 16) = v384 + 1;
        (*(v1206 + 32))(v375 + ((*(v1206 + 80) + 32) & ~*(v1206 + 80)) + *(v1206 + 72) * v384, v378, v377);
        v376 += v1220;
        --v374;
      }

      while (v374);
      (*(v1089 + 8))(v1224, v1213);
    }

    else
    {

      (*(v1089 + 8))(v1224, v214);
      v375 = MEMORY[0x277D84F90];
      v377 = v1167;
    }

    type metadata accessor for PromptTreeIdentifier.Label(0);
    v473 = swift_allocBox();
    v475 = v474;
    v476 = swift_allocObject();
    *(v476 + 16) = v375;
    *(v476 + 24) = 0;
    *(v476 + 32) = 4;
    *v475 = v476;
    (*(v1206 + 104))(v475, *MEMORY[0x277D1D7E8], v377);
    swift_storeEnumTagMultiPayload();
    return v473 | 0x2000000000000000;
  }

  else
  {
    (*(v1089 + 8))(v1224, v214);

    return v1214;
  }
}

uint64_t sub_22C44B8C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  sub_22C44BD38(a3, a4);
  if (v4)
  {

LABEL_4:
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    sub_22C591324();
    v10 = v9;
    v11 = *(v9 + 16);
    v12 = v11 + 1;
    if (v11 >= *(v9 + 24) >> 1)
    {
      sub_22C591324();
      v10 = v34;
    }

    *(v10 + 16) = v12;
    *(v10 + 8 * v11 + 32) = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = *(v10 + 24);
    v15 = v11 + 2;

    if ((v11 + 2) > (v14 >> 1))
    {
      sub_22C591324();
      v10 = v35;
    }

    *(v10 + 16) = v15;
    *(v10 + 8 * v12 + 32) = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0xE000000000000000;
    if ((v11 + 3) > *(v10 + 24) >> 1)
    {
      sub_22C591324();
      v10 = v36;
    }

    *(v10 + 16) = v11 + 3;
    *(v10 + 8 * v15 + 32) = v16;
    v17 = sub_22C3DB9B0(v10);

    goto LABEL_11;
  }

  sub_22C6054B8(a1, a2, v7);
  if (!v21)
  {

    goto LABEL_4;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  sub_22C591324();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v37;
  }

  *(v24 + 16) = v25 + 1;
  *(v24 + 8 * v25 + 32) = v22;
  v26 = sub_22C90A2AC();
  v28 = v27;

  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  v30 = *(v24 + 16);
  v31 = *(v24 + 24);

  if (v30 >= v31 >> 1)
  {
    sub_22C591324();
    v24 = v38;
  }

  *(v24 + 16) = v30 + 1;
  *(v24 + 8 * v30 + 32) = v29;

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0xE000000000000000;
  v33 = *(v24 + 16);
  if (v33 >= *(v24 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v39;
  }

  *(v24 + 16) = v33 + 1;
  *(v24 + 8 * v33 + 32) = v32;
  v17 = sub_22C3DB9B0(v24);

LABEL_11:
  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C44BCBC(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + *(type metadata accessor for StatefulExpressionParser(0) + 52)) + 16))
  {

    sub_22C628274();
    v3 = v2;

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_22C44BD38(uint64_t a1, void *a2)
{
  v345 = a2;
  v4 = sub_22C9099FC();
  v314 = *(v4 - 8);
  v315 = v4;
  v5 = *(v314 + 8);
  MEMORY[0x28223BE20](v4);
  *(&v313 + 1) = &v301 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_22C908DAC();
  v342 = *(v344 - 1);
  v7 = *(v342 + 64);
  MEMORY[0x28223BE20](v344);
  v319 = (&v301 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v338 = sub_22C9063DC();
  v303 = *(v338 - 8);
  v9 = *(v303 + 64);
  MEMORY[0x28223BE20](v338);
  v339 = &v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v349 = &v301 - v13;
  v14 = sub_22C909A3C();
  v15 = *(v14 - 8);
  v346 = v14;
  v347 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v337 = &v301 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v348 = &v301 - v19;
  v20 = sub_22C90941C();
  v21 = *(v20 - 8);
  v325 = v20;
  v326 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v302 = &v301 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_22C90998C();
  v320 = *(v328 - 8);
  v24 = *(v320 + 64);
  MEMORY[0x28223BE20](v328);
  v327 = &v301 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_22C90981C();
  v304 = *(v336 - 1);
  v26 = *(v304 + 64);
  v27 = MEMORY[0x28223BE20](v336);
  v324 = &v301 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v310 = &v301 - v29;
  v317 = sub_22C3A5908(&qword_27D9BC398, &qword_22C912AC8);
  v30 = *(*(v317 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v317);
  v316 = (&v301 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v309 = &v301 - v34;
  MEMORY[0x28223BE20](v33);
  v318 = (&v301 - v35);
  v36 = sub_22C90977C();
  v306 = *(v36 - 8);
  v307 = v36;
  v37 = *(v306 + 64);
  MEMORY[0x28223BE20](v36);
  v305 = &v301 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = type metadata accessor for RenderableTool();
  v39 = *(*(v329 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v329);
  v308 = &v301 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v340 = &v301 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v323 = (&v301 - v45);
  MEMORY[0x28223BE20](v44);
  v311 = (&v301 - v46);
  v47 = sub_22C908D6C();
  v350 = *(v47 - 8);
  *&v351 = v47;
  v48 = *(v350 + 64);
  MEMORY[0x28223BE20](v47);
  v364 = (&v301 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v334 = sub_22C908EAC();
  v343 = *(v334 - 8);
  v50 = *(v343 + 64);
  MEMORY[0x28223BE20](v334);
  v335 = &v301 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v301 - v54;
  v56 = sub_22C908ABC();
  v57 = *(v56 - 1);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v56);
  v322 = &v301 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v301 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v301 - v64;
  *&v332 = type metadata accessor for StatefulExpressionParser(0);
  v66 = *(v332 + 24);
  v341 = v2;
  v312 = v66;
  v67 = a1;
  v68 = v345;
  sub_22C908ACC();
  if (sub_22C370B74(v55, 1, v56) == 1)
  {
    sub_22C36DD28(v55, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C442014();
    swift_allocError();
    *v69 = v67;
    *(v69 + 8) = v68;
    *(v69 + 16) = 2;
    swift_willThrow();

    return v56;
  }

  v301 = v67;
  (*(v57 + 32))(v65, v55, v56);
  v71 = (v57 + 16);
  v70 = *(v57 + 16);
  v321 = v65;
  v70(v63, v65, v56);
  v72 = v63;
  v73 = v57 + 88;
  v74 = *(v57 + 88);
  *&v313 = v72;
  v75 = v74();
  v76 = *MEMORY[0x277D1E8E0];
  v77 = v75 == *MEMORY[0x277D1E8E0] || v75 == *MEMORY[0x277D1E8C8];
  v78 = MEMORY[0x277D84F90];
  v331 = v56;
  v333 = v57;
  if (v77)
  {
    v312 = v74;
    *(&v313 + 1) = v57 + 88;
    v314 = v70;
    v315 = (v57 + 16);
    LODWORD(v319) = v76;
    v79 = v56;
    v80 = v343;
    v81 = v349;
  }

  else
  {
    if (v75 == *MEMORY[0x277D1E8D0])
    {
      v82 = v313;
      (*(v333 + 96))(v313, v331);
      v83 = v342;
      v56 = v319;
      v84 = v344;
      (*(v342 + 32))(v319, v82, v344);
      v85 = *(&v313 + 1);
      sub_22C908D7C();
      v86 = v341;
      v87 = sub_22C908A1C();
      (*(v314 + 1))(v85, v315);
      if (v87 && (v88 = *(v87 + 16), , v88))
      {
        v89 = v332;
        v90 = &v86[*(v332 + 28)];
        v91 = v90[3];
        v350 = v90[4];
        *&v351 = v91;
        v364 = sub_22C374168(v90, v91);
        v349 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
        v92 = v308;
        sub_22C908D7C();
        v93 = *MEMORY[0x277D1ECE8];
        v94 = sub_22C9036EC();
        (*(*(v94 - 8) + 104))(v92, v93, v94);
        sub_22C9037DC();
        *&v356 = v78;
        sub_22C457274(&qword_27D9BB820, MEMORY[0x277D1ED48]);
        v56 = &qword_27D9BB828;
        sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
        sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
        sub_22C90AE4C();
        swift_storeEnumTagMultiPayload();
        v95 = v330;
        (*(v350 + 32))(&v360, v92, *&v86[*(v89 + 44)], v351);
        if (v95)
        {
          sub_22C456BD8(v92, type metadata accessor for RenderableTool);
        }

        else
        {
          v330 = 0;
          sub_22C456BD8(v92, type metadata accessor for RenderableTool);
          v356 = v360;
          v357 = v361;
          v358 = v362;
          v359 = v363;
          v230 = *(&v360 + 1);
          v229 = v360;
          v231 = v361;
          v232 = v362;
          v233 = BYTE8(v362);
          sub_22C456C30(v360, *(&v360 + 1), v361, *(&v361 + 1), v362, SBYTE8(v362));
          sub_22C3E022C(&v356);
          if (v233 != 1)
          {

            v56 = v229;
            sub_22C909F0C();
            sub_22C909F0C();
            sub_22C456CE4(v229, v230, v231, *(&v231 + 1), v232, 0);
            (*(v342 + 8))(v319, v344);
            (*(v333 + 8))(v321, v331);
            return v56;
          }

          LOBYTE(v354[0]) = v229;
          sub_22C3E01D8();
          swift_willThrowTypedImpl();
          sub_22C442014();
          swift_allocError();
          *v234 = v229;
          *(v234 + 8) = 0;
          *(v234 + 16) = 4;
          swift_willThrow();
        }

        (*(v342 + 8))(v319, v344);
      }

      else
      {
        sub_22C442014();
        swift_allocError();
        v115 = v345;
        *v116 = v301;
        *(v116 + 8) = v115;
        *(v116 + 16) = 2;
        swift_willThrow();
        v117 = *(v83 + 8);

        v117(v56, v84);
      }

      goto LABEL_69;
    }

    v314 = v70;
    if (v75 != *MEMORY[0x277D1E8D8])
    {
      goto LABEL_110;
    }

    v96 = v313;
    (*(v333 + 96))(v313, v331);
    v79 = sub_22C908A7C();
    v57 = *(v79 - 8);
    v97 = (*(v57 + 88))(v96, v79);
    v80 = v343;
    v81 = v349;
    if (v97 != *MEMORY[0x277D1E8B8])
    {
      goto LABEL_110;
    }

    v312 = v74;
    *(&v313 + 1) = v73;
    v315 = v71;
    LODWORD(v319) = v76;
  }

  v98 = v313;
  (*(v57 + 96))(v313, v79);
  v99 = v335;
  v100 = v98;
  v101 = v334;
  (*(v80 + 32))(v335, v100, v334);
  v102 = v80;
  if (*v341 != 1)
  {
LABEL_29:
    v120 = v322;
    v121 = v331;
    v314(v322, v321, v331);
    v122 = (v312)(v120, v121);
    v123 = *(v333 + 8);
    v333 += 8;
    v322 = v123;
    (v123)(v120, v121);
    v124 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    v125 = v340;
    (*(v102 + 16))(v340, v99, v101);
    v126 = sub_22C9036EC();
    if (v122 == v319)
    {
      v127 = MEMORY[0x277D1ECE0];
    }

    else
    {
      v127 = MEMORY[0x277D1ECD0];
    }

    (*(*(v126 - 8) + 104))(v125, *v127, v126);
    sub_22C9037DC();
    *&v360 = MEMORY[0x277D84F90];
    sub_22C457274(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    v128 = v340;
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    v129 = v341;
    v130 = v332;
    swift_storeEnumTagMultiPayload();
    v56 = v323;
    sub_22C456AA8(v128, v323, type metadata accessor for RenderableTool);
    v131 = &v129[*(v130 + 28)];
    v132 = v131[3];
    v133 = v131[4];
    sub_22C374168(v131, v132);
    v134 = *&v129[*(v130 + 44)];
    v135 = v330;
    (*(v133 + 32))(&v360, v56, v134, v132, v133);
    v136 = v343;
    v137 = v335;
    v138 = v135;
    if (v135)
    {
      goto LABEL_35;
    }

    v356 = v360;
    v357 = v361;
    v358 = v362;
    v359 = v363;
    v139 = BYTE8(v362);
    v312 = *(&v360 + 1);
    v319 = v360;
    v313 = v361;
    v314 = v362;
    sub_22C456C30(v360, *(&v360 + 1), v361, *(&v361 + 1), v362, SBYTE8(v362));
    sub_22C3E022C(&v356);
    if (v139)
    {
      v140 = v319;
      LOBYTE(v354[0]) = v319;
      sub_22C3E01D8();
      swift_willThrowTypedImpl();
      sub_22C442014();
      swift_allocError();
      *v141 = v140;
      *(v141 + 8) = 0;
      *(v141 + 16) = 4;
      swift_willThrow();
LABEL_35:
      sub_22C456BD8(v56, type metadata accessor for RenderableTool);
      (*(v136 + 8))(v137, v334);
      (v322)(v321, v331);
      return v56;
    }

    v161 = v131[3];
    v160 = v131[4];
    sub_22C374168(v131, v161);

    v162 = sub_22C4B9B90(MEMORY[0x277D84F90]);
    (*(v160 + 16))(v354, v56, v162, v134, v161, v160);

    v353[0] = v354[0];
    v353[1] = v354[1];
    v353[2] = v354[2];
    v353[3] = v355;
    v174 = v355;

    sub_22C3E022C(v353);
    v175 = (v174 + 64);
    v176 = 1 << *(v174 + 32);
    v177 = -1;
    if (v176 < 64)
    {
      v177 = ~(-1 << v176);
    }

    v178 = v177 & *(v174 + 64);
    v179 = (v176 + 63) >> 6;
    *&v351 = v304 + 16;
    v364 = (v304 + 8);
    v342 = v174;

    v180 = MEMORY[0x277D84F98];
    v330 = 0;
    v340 = (v174 + 64);
    *&v332 = v179;
    v181 = MEMORY[0x277D84F90];
    while (1)
    {
      v315 = v180;
      if (!v178)
      {
        while (1)
        {
          v182 = v138 + 1;
          if (__OFADD__(v138, 1))
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (v182 >= v179)
          {
            break;
          }

          v178 = *&v175[8 * v182];
          ++v138;
          if (v178)
          {
            v138 = v182;
            goto LABEL_51;
          }
        }

        v218 = sub_22C908DCC();
        v219 = *(v218 + 16);
        if (v219)
        {
          v352 = v181;
          sub_22C3B6FE8(0, v219, 0);
          v220 = v352;
          v221 = v218 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
          v350 = *(v304 + 72);
          v222 = *(v304 + 16);
          v344 = v218;
          v345 = v222;
          v223 = v302;
          do
          {
            v224 = v324;
            v225 = v336;
            v226 = (v345)(v324, v221, v336);
            MEMORY[0x2318B6CE0](v226);
            (*v364)(v224, v225);
            v352 = v220;
            v228 = *(v220 + 16);
            v227 = *(v220 + 24);
            if (v228 >= v227 >> 1)
            {
              sub_22C3B6FE8(v227 > 1, v228 + 1, 1);
              v220 = v352;
            }

            *(v220 + 16) = v228 + 1;
            (*(v326 + 32))(v220 + ((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v228, v223, v325);
            v221 += v350;
            --v219;
          }

          while (v219);

          v81 = v349;
        }

        else
        {

          v220 = MEMORY[0x277D84F90];
        }

        MEMORY[0x28223BE20](v243);
        v244 = v341;
        *(&v301 - 2) = v341;
        v245 = v330;
        v246 = sub_22C8F46F4(sub_22C456D98, (&v301 - 4), v220);

        MEMORY[0x28223BE20](v247);
        *(&v301 - 2) = v244;
        v248 = sub_22C604C2C(MEMORY[0x277D84F90], sub_22C456DB4, (&v301 - 4), v246);

        v250 = v334;
        v251 = v343;
        v325 = *(v248 + 16);
        if (!v325)
        {

LABEL_99:
          (*(v251 + 8))(v335, v250);
          v56 = v319;
          sub_22C456CE4(v319, v312, v313, *(&v313 + 1), v314, 0);
          sub_22C456BD8(v323, type metadata accessor for RenderableTool);
          (v322)(v321, v331);
          return v56;
        }

        v330 = v245;
        v252 = 0;
        v324 = (v248 + ((*(v320 + 80) + 32) & ~*(v320 + 80)));
        v318 = (v320 + 16);
        v253 = v346;
        *&v351 = v347 + 8;
        v336 = (v303 + 8);
        v316 = (v320 + 8);
        v254 = MEMORY[0x277D84F98];
        *&v249 = 136315138;
        v332 = v249;
        v255 = v339;
        v341 = (v347 + 16);
        v317 = v248;
        while (2)
        {
          v329 = v254;
          if (v252 < *(v248 + 16))
          {
            v256 = v252;
            v257 = (*(v320 + 16))(v327, &v324[*(v320 + 72) * v252], v328);
            v326 = v256 + 1;
            v258 = MEMORY[0x2318B6E50](v257);
            v259 = 0;
            v345 = *(v258 + 16);
            v344 = MEMORY[0x277D84F98];
            v260 = v348;
            v342 = v258;
            while (v345 != v259)
            {
              if (v259 >= *(v258 + 16))
              {
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              v261 = v258 + ((*(v347 + 80) + 32) & ~*(v347 + 80));
              v262 = *(v347 + 72);
              v364 = v259;
              v263 = *(v347 + 16);
              v263(v260, v261 + v262 * v259, v253);
              sub_22C909A1C();
              v264 = v253;
              v265 = sub_22C90993C();
              v266 = sub_22C370B74(v81, 1, v265);
              v350 = v351 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              if (v266 == 1)
              {
                sub_22C36DD28(v81, &qword_27D9BC390, &qword_22C912AC0);
                sub_22C903F7C();
                v267 = v337;
                v263(v337, v260, v264);
                v268 = v255;
                v269 = sub_22C9063CC();
                v270 = sub_22C90AACC();
                if (os_log_type_enabled(v269, v270))
                {
                  v271 = swift_slowAlloc();
                  v272 = swift_slowAlloc();
                  v352 = v272;
                  *v271 = v332;
                  v273 = sub_22C909A2C();
                  v275 = v274;
                  v276 = *v351;
                  (*v351)(v267, v346);
                  v277 = sub_22C36F9F4(v273, v275, &v352);
                  v251 = v343;

                  *(v271 + 4) = v277;
                  sub_22C36FF94(v272);
                  MEMORY[0x2318B9880](v272, -1, -1);
                  v278 = v271;
                  v253 = v346;
                  MEMORY[0x2318B9880](v278, -1, -1);

                  v255 = v339;
                  (*v336)(v339, v338);
                }

                else
                {
                  v253 = v264;

                  v276 = *v351;
                  (*v351)(v267, v253);
                  (*v336)(v268, v338);
                  v255 = v268;
                }

                v81 = v349;
              }

              else
              {
                v279 = sub_22C9098BC();
                v340 = v280;
                (*(*(v265 - 8) + 8))(v81, v265);
                v281 = sub_22C909A2C();
                v283 = v282;
                v284 = v344;
                swift_isUniquelyReferenced_nonNull_native();
                v352 = v284;
                v285 = sub_22C36E2BC(v281, v283);
                if (__OFADD__(*(v284 + 16), (v286 & 1) == 0))
                {
                  goto LABEL_101;
                }

                v287 = v285;
                v288 = v286;
                sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
                if (sub_22C90B15C())
                {
                  v289 = sub_22C36E2BC(v281, v283);
                  v251 = v343;
                  v255 = v339;
                  if ((v288 & 1) != (v290 & 1))
                  {
                    goto LABEL_109;
                  }

                  v287 = v289;
                }

                else
                {
                  v251 = v343;
                  v255 = v339;
                }

                v291 = v352;
                v344 = v352;
                if (v288)
                {
                  v292 = (v352[7] + 16 * v287);
                  v293 = v292[1];
                  v294 = v340;
                  *v292 = v279;
                  v292[1] = v294;
                }

                else
                {
                  v352[(v287 >> 6) + 8] |= 1 << v287;
                  v295 = (v291[6] + 16 * v287);
                  *v295 = v281;
                  v295[1] = v283;
                  v296 = (v291[7] + 16 * v287);
                  v297 = v340;
                  *v296 = v279;
                  v296[1] = v297;
                  v298 = v291[2];
                  v213 = __OFADD__(v298, 1);
                  v299 = v298 + 1;
                  if (v213)
                  {
                    goto LABEL_102;
                  }

                  v291[2] = v299;
                }

                v276 = *v351;
                v81 = v349;
                v253 = v346;
              }

              v260 = v348;
              v276(v348, v253);
              v259 = v364 + 1;
              v258 = v342;
            }

            v300 = v330;
            v254 = sub_22C451FD8(v344, v329);
            v330 = v300;
            (*v316)(v327, v328);
            v252 = v326;
            v248 = v317;
            if (v326 != v325)
            {
              continue;
            }

            v250 = v334;
            goto LABEL_99;
          }

          break;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

LABEL_51:
      v183 = __clz(__rbit64(v178)) | (v138 << 6);
      v184 = *(v342 + 56);
      v185 = (*(v342 + 48) + 16 * v183);
      v187 = *v185;
      v186 = v185[1];
      v188 = v184 + *(*(type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0) - 8) + 72) * v183;
      v189 = v317;
      v190 = v318;
      sub_22C456B78(v188, v318 + *(v317 + 48), type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      *v190 = v187;
      v190[1] = v186;
      v191 = v309;
      sub_22C3E8FB4(v190, v309, &qword_27D9BC398, &qword_22C912AC8);
      v192 = *(v191 + 8);

      v193 = *(v189 + 48);
      v194 = v310;
      v195 = v336;
      (*v351)(v310, v191 + v193, v336);
      sub_22C456BD8(v191 + v193, type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      v196 = sub_22C9097DC();
      v198 = v197;
      (*v364)(v194, v195);
      v199 = v316;
      sub_22C3E8FB4(v190, v316, &qword_27D9BC398, &qword_22C912AC8);
      v200 = v199[1];
      v344 = *v199;
      v350 = v200;
      v201 = v315;
      swift_isUniquelyReferenced_nonNull_native();
      v352 = v201;
      v345 = v196;
      v202 = sub_22C36E2BC(v196, v198);
      if (__OFADD__(*(v201 + 16), (v203 & 1) == 0))
      {
        goto LABEL_106;
      }

      v204 = v202;
      v205 = v203;
      sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
      if (sub_22C90B15C())
      {
        v206 = sub_22C36E2BC(v345, v198);
        v81 = v349;
        if ((v205 & 1) != (v207 & 1))
        {
          goto LABEL_109;
        }

        v204 = v206;
        if (v205)
        {
LABEL_58:

          v180 = v352;
          v215 = (v352[7] + 16 * v204);
          v216 = v215[1];
          v217 = v350;
          *v215 = v344;
          v215[1] = v217;

          sub_22C36DD28(v318, &qword_27D9BC398, &qword_22C912AC8);
          goto LABEL_59;
        }
      }

      else
      {
        v81 = v349;
        if (v205)
        {
          goto LABEL_58;
        }
      }

      v180 = v352;
      v352[(v204 >> 6) + 8] |= 1 << v204;
      v208 = (v180[6] + 16 * v204);
      v209 = v344;
      *v208 = v345;
      v208[1] = v198;
      v210 = (v180[7] + 16 * v204);
      v211 = v350;
      *v210 = v209;
      v210[1] = v211;
      sub_22C36DD28(v318, &qword_27D9BC398, &qword_22C912AC8);
      v212 = v180[2];
      v213 = __OFADD__(v212, 1);
      v214 = v212 + 1;
      if (v213)
      {
        goto LABEL_107;
      }

      v180[2] = v214;
LABEL_59:
      v181 = MEMORY[0x277D84F90];
      v175 = v340;
      v178 &= v178 - 1;
      sub_22C456BD8(v316 + *(v317 + 48), type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      v179 = v332;
    }
  }

  v103 = sub_22C908DEC();
  v104 = 0;
  v105 = *(v103 + 16);
  v344 = (v350 + 16);
  v345 = v105;
  v342 = v350 + 88;
  v106 = *MEMORY[0x277D72188];
  v107 = *MEMORY[0x277D72178];
  v108 = (v350 + 8);
  v109 = v364;
  while (1)
  {
    if (v345 == v104)
    {
      v104 = v345;
      goto LABEL_27;
    }

    v110 = v350;
    v111 = v103;
    v112 = v103 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v104;
    v113 = v351;
    (*(v350 + 16))(v109, v112, v351);
    v114 = (*(v110 + 88))(v109, v113);
    if (v114 == v106)
    {
      break;
    }

    if (v114 == v107)
    {
      goto LABEL_26;
    }

    (*v108)(v364, v351);
    ++v104;
    v103 = v111;
  }

  (*v108)(v364, v351);
LABEL_26:
  v103 = v111;
LABEL_27:
  v118 = *(v103 + 16);
  v119 = v343;
  v81 = v349;
  if (v104 == v118)
  {

    v101 = v334;
    v99 = v335;
    v102 = v119;
    goto LABEL_29;
  }

  v142 = v341;
  if (v104 >= v118)
  {
    goto LABEL_105;
  }

  v143 = v103 + ((*(v350 + 80) + 32) & ~*(v350 + 80)) + *(v350 + 72) * v104;
  if (!sub_22C4AF1C0())
  {

    v144 = v332;
    v145 = &v142[*(v332 + 28)];
    v146 = v145[3];
    v147 = v145[4];
    sub_22C374168(v145, v146);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v148 = *(v119 + 72);
    v149 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v150 = swift_allocObject();
    v351 = xmmword_22C90F800;
    *(v150 + 16) = xmmword_22C90F800;
    v151 = v150 + v149;
    v152 = v334;
    (*(v119 + 16))(v151, v335, v334);
    v153 = v311;
    *v311 = v150;
    v154 = v153;
    swift_storeEnumTagMultiPayload();
    v155 = *(v144 + 44);
    v156 = v142;
    v157 = *&v142[v155];
    v158 = v330;
    (*(v147 + 32))(&v360, v154, v157, v146, v147);
    if (v158)
    {
      sub_22C456BD8(v154, type metadata accessor for RenderableTool);
      v159 = *(v119 + 8);
      v56 = (v119 + 8);
      v159(v335, v152);
      (*(v333 + 8))(v321, v331);
      return v56;
    }

    v330 = 0;
    sub_22C456BD8(v154, type metadata accessor for RenderableTool);
    v356 = v360;
    v357 = v361;
    v358 = v362;
    v359 = v363;
    LODWORD(v364) = BYTE8(v362);
    v319 = v360;
    v349 = v361;
    v350 = *(&v360 + 1);
    v347 = v362;
    v348 = *(&v361 + 1);
    sub_22C456C30(v360, *(&v360 + 1), v361, *(&v361 + 1), v362, SBYTE8(v362));
    sub_22C3E022C(&v356);
    sub_22C374168(&v156[*(v332 + 32)], *&v156[*(v332 + 32) + 24]);
    v163 = v305;
    v164 = v335;
    sub_22C47FCDC();
    v165 = sub_22C9096FC();
    v166 = MEMORY[0x28223BE20](v165);
    *(&v301 - 2) = v163;
    sub_22C4FB170(v166, v167, sub_22C436434, (&v301 - 4), v157);

    v168 = *(v119 + 8);
    v56 = (v119 + 8);
    v168(v164, v334);
    (*(v306 + 8))(v163, v307);
    sub_22C90A28C();

    v169 = sub_22C90A2AC();
    v171 = v170;

    if (v364 != 1)
    {
      v236 = v319;

      sub_22C909F0C();
      sub_22C3A5908(&qword_27D9BC3A8, &qword_22C91DBE0);
      v237 = (type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0) - 8);
      v238 = *(*v237 + 72);
      v239 = (*(*v237 + 80) + 32) & ~*(*v237 + 80);
      v240 = swift_allocObject();
      *(v240 + 16) = v351;
      v241 = (v240 + v239);
      v242 = (v241 + v237[7]);
      *v242 = v169;
      v242[1] = v171;
      type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
      swift_storeEnumTagMultiPayload();
      *v241 = xmmword_22C912A80;
      sub_22C909F0C();
      sub_22C456CE4(v236, v350, v349, v348, v347, 0);
      (*(v333 + 8))(v321, v331);
      return v236;
    }

    v172 = v319;
    LOBYTE(v354[0]) = v319;
    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    sub_22C442014();
    swift_allocError();
    *v173 = v172;
    *(v173 + 8) = 0;
    *(v173 + 16) = 4;
    swift_willThrow();
LABEL_69:
    (*(v333 + 8))(v321, v331);
    return v56;
  }

LABEL_108:
  __break(1u);
LABEL_109:
  sub_22C90B54C();
  __break(1u);
LABEL_110:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C44E188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v97 = a7;
  v96 = a6;
  v105 = a2;
  v92 = a1;
  v104 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v9 = *(*(v104 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v104);
  v114 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v103 = &v90 - v12;
  v13 = type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v19 = *(v18 - 8);
  v115 = v18;
  v116 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v95 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v102 = (&v90 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = (&v90 - v25);
  v27 = *(a3 + 16);
  v28 = MEMORY[0x277D84F90];
  v106 = a5;
  if (v27)
  {
    v117 = MEMORY[0x277D84F90];
    sub_22C3B70F8();
    v28 = v117;
    v29 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v30 = *(v14 + 72);
    do
    {
      sub_22C456B78(v29, v17, type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender);
      v31 = *(v115 + 48);
      *v26 = *v17;
      sub_22C456AA8(v17 + *(v13 + 20), v26 + v31, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
      v117 = v28;
      v32 = *(v28 + 16);
      if (v32 >= *(v28 + 24) >> 1)
      {
        sub_22C3B70F8();
        v28 = v117;
      }

      *(v28 + 16) = v32 + 1;
      sub_22C456B08(v26, v28 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v32);
      v29 += v30;
      --v27;
    }

    while (v27);
    a5 = v106;
  }

  v33 = *(a5 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v91 = v28;
    v117 = MEMORY[0x277D84F90];
    sub_22C3B70F8();
    v35 = v117;
    v38 = sub_22C6339F8(a5);
    v39 = 0;
    v40 = a5 + 64;
    v99 = v36;
    v94 = a5 + 72;
    v100 = v33;
    v101 = a5 + 64;
    while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(a5 + 32))
    {
      if ((*(v40 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
      {
        goto LABEL_45;
      }

      if (*(a5 + 36) != v36)
      {
        goto LABEL_46;
      }

      v110 = 1 << v38;
      v111 = v38 >> 6;
      v108 = v39;
      v109 = v36;
      v107 = v37;
      v113 = v35;
      v41 = v104;
      v42 = *(v104 + 48);
      v43 = *(a5 + 56);
      v44 = (*(a5 + 48) + 16 * v38);
      v46 = *v44;
      v45 = v44[1];
      v47 = sub_22C901FAC();
      v48 = *(v47 - 8);
      v49 = v43 + *(v48 + 72) * v38;
      v33 = (v48 + 16);
      v50 = v103;
      v112 = *(v48 + 16);
      v112(&v103[v42], v49, v47);
      v51 = v114;
      *v114 = v46;
      v51[1] = v45;
      v52 = *(v41 + 48);
      (*(v48 + 32))(v51 + v52, &v50[v42], v47);
      v53 = v105;
      v54 = *(v105 + 16);

      if (v54)
      {
        v55 = sub_22C36E2BC(v46, v45);
        if (v56)
        {
          v57 = (*(v53 + 56) + 16 * v55);
          v46 = *v57;
          v45 = v57[1];
        }
      }

      v58 = v114;
      v59 = v47;
      v60 = v102;
      v112(v102 + *(v115 + 48), v114 + v52, v59);
      type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
      swift_storeEnumTagMultiPayload();
      *v60 = v46;
      v60[1] = v45;
      sub_22C36DD28(v58, &qword_27D9BAA30, &unk_22C911F70);
      v35 = v113;
      v117 = v113;
      v61 = *(v113 + 16);
      if (v61 >= *(v113 + 24) >> 1)
      {
        sub_22C3B70F8();
        v35 = v117;
      }

      *(v35 + 16) = v61 + 1;
      sub_22C456B08(v60, v35 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v61);
      a5 = v106;
      v62 = 1 << *(v106 + 32);
      if (v38 >= v62)
      {
        goto LABEL_47;
      }

      v40 = v101;
      v63 = *(v101 + 8 * v111);
      if ((v63 & v110) == 0)
      {
        goto LABEL_48;
      }

      if (*(v106 + 36) != v109)
      {
        goto LABEL_49;
      }

      v64 = v63 & (-2 << (v38 & 0x3F));
      if (v64)
      {
        v62 = __clz(__rbit64(v64)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v65 = v111 << 6;
        v66 = v111 + 1;
        v67 = (v94 + 8 * v111);
        while (v66 < (v62 + 63) >> 6)
        {
          v69 = *v67++;
          v68 = v69;
          v65 += 64;
          ++v66;
          if (v69)
          {
            sub_22C3A5038(v38, v109, v107 & 1);
            v62 = __clz(__rbit64(v68)) + v65;
            goto LABEL_28;
          }
        }

        sub_22C3A5038(v38, v109, v107 & 1);
      }

LABEL_28:
      v37 = 0;
      v39 = v108 + 1;
      v38 = v62;
      v36 = v99;
      v33 = v100;
      if ((v108 + 1) == v100)
      {
        v28 = v91;
        v34 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

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
    goto LABEL_50;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_31:
  v117 = v28;
  sub_22C3CE2A8(v35);

  v70 = v93;
  sub_22C454768(&v117);
  v33 = v70;
  if (v70)
  {
    goto LABEL_51;
  }

  v71 = v117;
  v72 = *(v117 + 16);
  if (v72)
  {
    v117 = v34;
    sub_22C3B63D4();
    v73 = 0;
    v74 = v117;
    v113 = v71 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    while (v73 < *(v71 + 16))
    {
      v75 = v95;
      sub_22C3E8FB4(v113 + *(v116 + 72) * v73, v95, &qword_27D9BB0D0, &qword_22C90D970);
      v76 = sub_22C452208(*v75, *(v75 + 8), v75 + *(v115 + 48), v98, v96, v97);
      if (v33)
      {

        sub_22C36DD28(v75, &qword_27D9BB0D0, &qword_22C90D970);

        return v71;
      }

      v77 = v76;
      v114 = 0;
      sub_22C36DD28(v75, &qword_27D9BB0D0, &qword_22C90D970);
      v117 = v74;
      v78 = *(v74 + 16);
      if (v78 >= *(v74 + 24) >> 1)
      {
        sub_22C3B63D4();
        v74 = v117;
      }

      ++v73;
      *(v74 + 16) = v78 + 1;
      *(v74 + 8 * v78 + 32) = v77;
      v33 = v114;
      if (v72 == v73)
      {

        goto LABEL_42;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:

    __break(1u);
    return result;
  }

  v74 = MEMORY[0x277D84F90];
LABEL_42:
  v79 = sub_22C3DB9B0(v74);

  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_22C912A90;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  *(v80 + 32) = v81;
  v82 = v80 | 0x8000000000000000;
  v83 = swift_allocObject();
  v84 = swift_allocObject();
  *(v84 + 16) = v82;
  *(v83 + 16) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = 40;
  *(v85 + 24) = 0xE100000000000000;
  v86 = sub_22C47D60C(v92, v85);

  v87 = sub_22C47D60C(v86, v83 | 0x6000000000000000);

  v88 = swift_allocObject();
  *(v88 + 16) = 41;
  *(v88 + 24) = 0xE100000000000000;
  v71 = sub_22C47D60C(v87, v88);

  return v71;
}

uint64_t sub_22C44EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v15 = MEMORY[0x277D84F98];
  v12 = *(a5 + 16);
  while (v12 != v11)
  {
    v13 = *(sub_22C90839C() - 8);
    sub_22C453354(&v15, a5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11++, a1, a2);
    if (v5)
    {

      return a4;
    }
  }

  a4 = sub_22C44E188(a1, a2, a3, a4, v15, 0, 0);

  return a4;
}

uint64_t sub_22C44EC84(char *a1)
{
  v329 = sub_22C90827C();
  v327 = *(v329 - 8);
  v2 = *(v327 + 64);
  MEMORY[0x28223BE20](v329);
  v328 = &v275 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C9070DC();
  v318 = *(v4 - 8);
  v5 = *(v318 + 64);
  MEMORY[0x28223BE20](v4);
  v306 = &v275 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90759C();
  v311 = *(v7 - 8);
  v312 = v7;
  v8 = *(v311 + 64);
  MEMORY[0x28223BE20](v7);
  v310 = &v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v314 = &v275 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v301 = (&v275 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v275 - v16;
  v324 = sub_22C90654C();
  v321 = *(v324 - 1);
  v18 = v321[8];
  v19 = MEMORY[0x28223BE20](v324);
  v304 = (&v275 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v307 = &v275 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v305 = &v275 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v313 = &v275 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v323 = &v275 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v308 = &v275 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v309 = &v275 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v300 = &v275 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v275 - v35;
  v37 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v322 = &v275 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v303 = &v275 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v275 - v43;
  v45 = sub_22C901FAC();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v315 = &v275 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v316 = &v275 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v319 = &v275 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v302 = &v275 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v275 - v57;
  v325 = a1;
  v59 = MEMORY[0x2318B57A0](v56);
  sub_22C9074DC();
  sub_22C6053E0(v59, v44);
  v60 = v45;

  v61 = sub_22C370B74(v44, 1, v45);
  v317 = v4;
  if (v61 == 1)
  {
    v62 = sub_22C36DD28(v44, &qword_27D9BC030, &unk_22C911CC0);
    v63 = v46;
  }

  else
  {
    v64 = v45;
    v298 = *(v46 + 32);
    v298(v58, v44, v45);
    v295 = type metadata accessor for StatefulExpressionParser(0);
    v65 = *&v326[v295[13]];
    sub_22C60539C(v58, v65);
    v63 = v46;
    if (sub_22C370B74(v17, 1, v4) != 1)
    {
      v296 = v58;
      v299 = v46;
      v297 = v64;
      sub_22C90702C();
      v68 = *(v318 + 8);
      v68(v17, v4);
      v69 = v321;
      v70 = v321[11];
      v66 = v324;
      v71 = (v70)(v36, v324);
      if (v71 == *MEMORY[0x277D1DAA8])
      {
        LODWORD(v292) = v71;
        v293 = v70;
        v294 = v68;
        v73 = v69[12];
        v72 = (v69 + 12);
        v291 = v73;
        v73(v36, v66);
        v74 = sub_22C906F2C();
        v75 = *(v74 - 8);
        v76 = *(v75 + 88);
        v290 = (v75 + 88);
        v289 = v76;
        v77 = v76(v36, v74);
        if (v77 == *MEMORY[0x277D1DED8])
        {
          LODWORD(v288) = v77;
          v78 = *(v75 + 96);
          v287 = v75 + 96;
          v286 = v78;
          v79 = v78(v36, v74);
          if (*v36 != 1)
          {
            v285 = v72;
            v284 = v75;
            v220 = MEMORY[0x2318B57A0](v79);
            sub_22C9074EC();
            v221 = v303;
            sub_22C6053E0(v220, v303);

            v222 = v297;
            if (sub_22C370B74(v221, 1, v297) == 1)
            {
              v63 = v299;
              (*(v299 + 8))(v296, v222);
              v223 = &qword_27D9BC030;
              v224 = &unk_22C911CC0;
              v225 = v221;
            }

            else
            {
              v283 = v74;
              v226 = v302;
              v298(v302, v221, v222);
              v227 = v301;
              sub_22C60539C(v226, v65);
              v228 = v317;
              if (sub_22C370B74(v227, 1, v317) != 1)
              {
                v231 = v300;
                sub_22C90702C();
                v294(v227, v228);
                v232 = v293(v231, v66);
                if (v232 == v292)
                {
                  v291(v231, v66);
                  v233 = v283;
                  v234 = v289(v231, v283);
                  v60 = v297;
                  v63 = v299;
                  v235 = v231;
                  v81 = v322;
                  v80 = v323;
                  v96 = v296;
                  if (v234 != v288)
                  {
                    v271 = *(v299 + 8);
                    v271(v302, v297);
                    v271(v296, v60);
                    v62 = (*(v284 + 8))(v300, v233);
                    goto LABEL_85;
                  }

                  v236 = v286(v235, v233);
                  if ((*v235 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  v237 = MEMORY[0x2318B57A0](v236);
                  v238 = v320;
                  v329 = sub_22C456764(v237);
                  v322 = v238;

                  v239 = swift_allocObject();
                  v240 = &v326[v295[9]];
                  v241 = *(v240 + 3);
                  v242 = *(v240 + 4);
                  sub_22C374168(v240, v241);
                  LODWORD(v328) = *MEMORY[0x277D1E120];
                  v243 = v311;
                  v244 = v312;
                  v324 = *(v311 + 104);
                  v327 = v311 + 104;
                  v245 = v310;
                  v324(v310);
                  v246 = (*(v242 + 8))(v245, v241, v242);
                  v248 = v247;
                  v323 = *(v243 + 8);
                  v249 = (v323)(v245, v244);
                  v321 = v239;
                  *(v239 + 16) = v246;
                  *(v239 + 24) = v248;
                  v250 = MEMORY[0x2318B57A0](v249);
                  v251 = v322;
                  v252 = sub_22C442520(v250);
                  v325 = v251;

                  v253 = sub_22C453604(v252);
                  v254 = sub_22C909F0C();
                  v255 = *(v240 + 3);
                  v256 = *(v240 + 4);
                  sub_22C374168(v240, v255);
                  v257 = v312;
                  (v324)(v245, v328, v312);
                  v258 = (*(v256 + 8))(v245, v255, v256);
                  v260 = v259;
                  v261 = v245;
                  v262 = v321;
                  (v323)(v261, v257);
                  v263 = v325;
                  v264 = sub_22C44E188(v262, v253, MEMORY[0x277D84F90], v254, v329, v258, v260);
                  if (v263)
                  {

                    v265 = *(v299 + 8);
                    v85 = v297;
                    v265(v302, v297);
                    v265(v296, v85);
                  }

                  else
                  {
                    v85 = v264;

                    v273 = *(v299 + 8);
                    v274 = v297;
                    v273(v302, v297);
                    v273(v296, v274);
                  }

                  return v85;
                }

                v63 = v299;
                v270 = *(v299 + 8);
                v60 = v297;
                v270(v226, v297);
                v270(v296, v60);
                v62 = (v321[1])(v231, v66);
                goto LABEL_6;
              }

              v63 = v299;
              v229 = *(v299 + 8);
              v229(v226, v222);
              v229(v296, v222);
              v223 = &qword_27D9BAA18;
              v224 = &qword_22C911C40;
              v225 = v227;
            }

            v62 = sub_22C36DD28(v225, v223, v224);
            v67 = v326;
            v60 = v222;
            goto LABEL_14;
          }

          v63 = v299;
          v60 = v297;
          v62 = (*(v299 + 8))(v296, v297);
        }

        else
        {
          v63 = v299;
          v60 = v297;
          (*(v299 + 8))(v296, v297);
          v62 = (*(v75 + 8))(v36, v74);
        }
      }

      else
      {
        v63 = v299;
        v60 = v297;
        (*(v299 + 8))(v296, v297);
        v62 = (v69[1])(v36, v66);
      }

      v67 = v326;
      goto LABEL_14;
    }

    (*(v46 + 8))(v58, v64);
    v62 = sub_22C36DD28(v17, &qword_27D9BAA18, &qword_22C911C40);
    v60 = v64;
  }

  v66 = v324;
LABEL_6:
  v67 = v326;
LABEL_14:
  v81 = v322;
  v80 = v323;
  while (1)
  {
    v82 = MEMORY[0x2318B57A0](v62);
    sub_22C90755C();
    sub_22C6053E0(v82, v81);

    if (sub_22C370B74(v81, 1, v60) == 1)
    {
      sub_22C36DD28(v81, &qword_27D9BC030, &unk_22C911CC0);
      goto LABEL_17;
    }

    v85 = v319;
    (*(v63 + 32))(v319, v81, v60);
    v108 = type metadata accessor for StatefulExpressionParser(0);
    v323 = *(v108 + 52);
    v109 = v314;
    sub_22C60539C(v85, *&v67[v323]);
    v110 = v317;
    if (sub_22C370B74(v109, 1, v317) == 1)
    {
      sub_22C36DD28(v109, &qword_27D9BAA18, &qword_22C911C40);
LABEL_57:
      sub_22C442014();
      swift_allocError();
      *v175 = xmmword_22C912340;
      *(v175 + 16) = 5;
      swift_willThrow();
      (*(v63 + 8))(v85, v60);
      return v85;
    }

    v295 = v108;
    v111 = v308;
    sub_22C90702C();
    v112 = *(v318 + 8);
    v302 = (v318 + 8);
    v301 = v112;
    v112(v109, v110);
    v113 = v321;
    v114 = v321[4];
    v115 = v309;
    v300 = (v321 + 4);
    v298 = v114;
    v114(v309, v111, v66);
    v81 = (v113 + 2);
    v297 = v113[2];
    v297(v80, v115, v66);
    v296 = v113[11];
    v116 = (v296)(v80, v66);
    v117 = *MEMORY[0x277D1DAA8];
    LODWORD(v322) = v116;
    if (v116 != v117)
    {
      v173 = v113[1];
      v173(v115, v66);
      v173(v80, v66);
LABEL_56:
      v85 = v319;
      goto LABEL_57;
    }

    v118 = v113[12];
    v291 = (v113 + 12);
    v290 = v118;
    v118(v80, v66);
    v119 = sub_22C906F2C();
    v303 = *(v119 - 1);
    v120 = *(v303 + 88);
    v289 = (v303 + 88);
    v288 = v120;
    if (v120(v80, v119) != *MEMORY[0x277D1DEE8])
    {
      (v113[1])(v115, v324);
      (*(v303 + 8))(v80, v119);
      goto LABEL_56;
    }

    v121 = *(v303 + 96);
    v286 = v119;
    v282 = v303 + 96;
    v281 = v121;
    v121(v80, v119);
    v122 = *v80;
    v280 = *(*v80 + 16);
    v299 = v63;
    if (v280)
    {
      v279 = v113 + 2;
      v278 = v113 + 11;
      v123 = 0;
      v285 = v122 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v314 = (v63 + 16);
      v277 = v318 + 16;
      LODWORD(v294) = *MEMORY[0x277D1DEF8];
      v124 = v303;
      v276 = (v303 + 104);
      v275 = (v113 + 13);
      v321 = v113 + 1;
      v284 = v63 + 8;
      v125 = v307;
      v81 = v324;
      v283 = v122;
      while (v123 < *(v122 + 16))
      {
        v287 = *(v299 + 72);
        v308 = *(v299 + 16);
        (v308)(v316, v285 + v287 * v123, v60);
        v126 = v326;
        v127 = *&v326[v323];
        if (!*(v127 + 16) || (sub_22C628274(), (v129 & 1) == 0))
        {

          v230 = v321;
LABEL_80:
          sub_22C442014();
          v85 = swift_allocError();
          *v267 = xmmword_22C912340;
          *(v267 + 16) = 5;
          swift_willThrow();
          v268 = *v284;
          (*v284)(v316, v60);
          (*v230)(v309, v81);
          v268(v319, v60);
          return v85;
        }

        v293 = v123;
        v130 = v317;
        v131 = *(v127 + 56) + *(v318 + 72) * v128;
        v132 = v306;
        (*(v318 + 16))(v306, v131, v317);
        v133 = v305;
        sub_22C90702C();
        v301(v132, v130);
        v134 = v313;
        v298(v313, v133, v81);
        v297(v125, v134, v81);
        v135 = (v296)(v125, v81);
        if (v135 != v322)
        {
          v230 = v321;
          v266 = *v321;
          (*v321)(v313, v81);

          v266(v125, v81);
          goto LABEL_80;
        }

        v290(v125, v81);
        v136 = v286;
        v137 = v288(v125, v286);
        if (v137 != v294)
        {
          v230 = v321;
          (*v321)(v313, v81);

          (*(v124 + 8))(v125, v136);
          goto LABEL_80;
        }

        v281(v125, v136);
        v138 = v81;
        v139 = v136;
        v140 = *v125;
        v141 = v125[1];
        v142 = v315;
        (v308)(v315, v316, v60);
        v143 = sub_22C90A2CC();
        v145 = v144;

        v146 = v304;
        *v304 = v143;
        v146[1] = v145;
        (*v276)(v146, v294, v139);
        (*v275)(v146, v322, v138);
        v147 = v320;
        v148 = sub_22C443628(v146, 0, 0, 0, 0);
        v320 = v147;
        if (v147)
        {

          v269 = *v321;
          (*v321)(v146, v138);
          v85 = *v284;
          (*v284)(v142, v60);
          v269(v313, v138);
          v85(v316, v60);
          v269(v309, v138);
          v85(v319, v60);
          return v85;
        }

        v149 = v148;
        v150 = v126;
        v151 = *v321;
        (*v321)(v146, v138);
        v152 = v295[12];
        v153 = *&v150[v152];
        swift_isUniquelyReferenced_nonNull_native();
        v154 = *&v150[v152];
        v330 = v154;
        sub_22C628274();
        if (__OFADD__(*(v154 + 16), (v156 & 1) == 0))
        {
          goto LABEL_88;
        }

        v157 = v155;
        v158 = v156;
        sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
        v159 = sub_22C90B15C();
        v292 = v151;
        if (v159)
        {
          sub_22C628274();
          v162 = v324;
          if ((v158 & 1) != (v161 & 1))
          {
            goto LABEL_90;
          }

          v157 = v160;
        }

        else
        {
          v162 = v324;
        }

        v163 = v293;
        v164 = v330;
        v125 = v307;
        if (v158)
        {
          v165 = *(v330 + 56);
          v166 = *(v165 + 8 * v157);
          *(v165 + 8 * v157) = v149;
        }

        else
        {
          *(v330 + 8 * (v157 >> 6) + 64) |= 1 << v157;
          (v308)(v164[6] + v157 * v287, v315, v60);
          *(v164[7] + 8 * v157) = v149;
          v167 = v164[2];
          v168 = __OFADD__(v167, 1);
          v169 = v167 + 1;
          if (v168)
          {
            goto LABEL_89;
          }

          v164[2] = v169;
        }

        v123 = v163 + 1;
        v170 = *v284;
        (*v284)(v315, v60);
        v81 = v162;
        v171 = v162;
        v66 = v292;
        v292(v313, v171);
        v170(v316, v60);
        *&v326[v152] = v164;
        v124 = v303;
        v122 = v283;
        if (v280 == v123)
        {

          v115 = v309;
          v172 = v81;
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      result = sub_22C90B54C();
      __break(1u);
      return result;
    }

    v66 = v113[1];
    v172 = v324;
LABEL_67:
    (v66)(v115, v172);
    (*(v299 + 8))(v319, v60);
    v67 = v326;
LABEL_17:
    v83 = *(sub_22C9082EC() + 16);

    v80 = MEMORY[0x277D84F90];
    if (!v83)
    {
      v329 = MEMORY[0x277D84F90];
      goto LABEL_60;
    }

    v85 = sub_22C9082EC();
    v86 = v320;
    sub_22C4536B8(v85, v87, v88, v89, v90, v91, v92, v93, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286);
    v95 = v94;

    if (v86)
    {
      return v85;
    }

    v320 = 0;
    v60 = v95[2];
    if (!v60)
    {
      break;
    }

    v332 = v80;
    sub_22C3B5E2C();
    v63 = 0;
    v324 = (v95 + ((*(v327 + 80) + 32) & ~*(v327 + 80)));
    v96 = v332;
    v322 = (v327 + 8);
    v323 = v327 + 16;
    v321 = v95;
    while (v63 < v95[2])
    {
      v97 = v60;
      (*(v327 + 16))(v328, v324 + *(v327 + 72) * v63, v329);
      sub_22C90825C();
      v98 = sub_22C90A2CC();
      v100 = v99;

      sub_22C90826C();
      if (v101)
      {

        v102 = sub_22C90A2CC();
        v80 = 0xE100000000000000;
        v330 = 58;
        v331 = 0xE100000000000000;
        MEMORY[0x2318B7850](v102);
        swift_bridgeObjectRelease_n();

        v104 = v330;
        v103 = v331;
      }

      else
      {
        v104 = 0;
        v103 = 0xE000000000000000;
        v80 = 0xE100000000000000;
      }

      v330 = 34;
      v331 = 0xE100000000000000;
      MEMORY[0x2318B7850](v98, v100);

      MEMORY[0x2318B7850](v104, v103);

      MEMORY[0x2318B7850](34, 0xE100000000000000);

      v105 = v330;
      v81 = v331;
      (*v322)(v328, v329);
      v332 = v96;
      v66 = v96[2];
      if (v66 >= v96[3] >> 1)
      {
        sub_22C3B5E2C();
        v96 = v332;
      }

      ++v63;
      v96[2] = v66 + 1;
      v106 = &v96[2 * v66];
      *(v106 + 4) = v105;
      *(v106 + 5) = v81;
      v60 = v97;
      v107 = v97 == v63;
      v95 = v321;
      if (v107)
      {

        v174 = v326;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_84:
    v272 = *(v63 + 8);
    v272(v302, v60);
    v62 = (v272)(v96, v60);
LABEL_85:
    v67 = v326;
  }

  v174 = v67;

  v96 = MEMORY[0x277D84F90];
LABEL_59:
  v330 = v96;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
  v176 = sub_22C90A04C();
  v178 = v177;

  v330 = 91;
  v331 = 0xE100000000000000;
  MEMORY[0x2318B7850](v176, v178);

  MEMORY[0x2318B7850](93, 0xE100000000000000);
  v179 = v330;
  v180 = v331;
  sub_22C3A5908(&qword_27D9BC3A8, &qword_22C91DBE0);
  v181 = (type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0) - 8);
  v182 = *(*v181 + 72);
  v183 = (*(*v181 + 80) + 32) & ~*(*v181 + 80);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_22C90F800;
  v329 = v184;
  v185 = (v184 + v183);
  v186 = sub_22C90755C();
  v188 = v187;
  v189 = (v185 + v181[7]);
  *v189 = v179;
  v189[1] = v180;
  type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
  v84 = swift_storeEnumTagMultiPayload();
  *v185 = v186;
  v185[1] = v188;
  v67 = v174;
LABEL_60:
  v190 = MEMORY[0x2318B57A0](v84);
  v191 = v320;
  v192 = sub_22C442520(v190);
  v328 = v191;

  v193 = sub_22C453604(v192);
  swift_isUniquelyReferenced_nonNull_native();
  v330 = v193;
  sub_22C62D0D4();
  v327 = v330;
  v194 = swift_allocObject();
  v195 = &v67[*(type metadata accessor for StatefulExpressionParser(0) + 36)];
  v196 = *(v195 + 3);
  v197 = *(v195 + 4);
  sub_22C374168(v195, v196);
  LODWORD(v324) = *MEMORY[0x277D1E100];
  v199 = v311;
  v198 = v312;
  v323 = *(v311 + 104);
  v200 = v310;
  (v323)(v310);
  v201 = (*(v197 + 8))(v200, v196, v197);
  v203 = v202;
  v322 = *(v199 + 8);
  v204 = v198;
  (v322)(v200, v198);
  v321 = v194;
  *(v194 + 16) = v201;
  *(v194 + 24) = v203;
  v320 = sub_22C909F0C();
  v205 = MEMORY[0x2318B57A0]();
  v206 = *(v195 + 3);
  v207 = *(v195 + 4);
  sub_22C374168(v195, v206);
  (v323)(v200, v324, v204);
  v208 = *(v207 + 8);
  v209 = v207;
  v210 = v327;
  v211 = v208(v200, v206, v209);
  v213 = v212;
  v214 = v200;
  v215 = v321;
  (v322)(v214, v204);
  v216 = v328;
  v217 = v211;
  v85 = v326;
  v218 = sub_22C44E188(v215, v210, v329, v320, v205, v217, v213);
  if (!v216)
  {
    v85 = v218;
  }

  return v85;
}

void sub_22C450D6C(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = a1;
  v58 = a3;
  v51 = type metadata accessor for RenderableTool();
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22C908EAC();
  v53 = *(v57 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C908AEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = sub_22C908ABC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v54 = type metadata accessor for StatefulExpressionParser(0);
  v25 = v54[6];
  v26 = *(v9 + 16);
  v55 = a2;
  v26(v12, a2 + v25, v8);
  sub_22C908ADC();
  (*(v9 + 8))(v12, v8);
  if (sub_22C370B74(v16, 1, v17) == 1)
  {
    sub_22C36DD28(v16, &qword_27D9BC0B0, &unk_22C912AD0);
LABEL_7:
    *v58 = 0xF000000000000007;
    return;
  }

  (*(v18 + 32))(v24, v16, v17);
  (*(v18 + 16))(v22, v24, v17);
  v27 = v18;
  if ((*(v18 + 88))(v22, v17) != *MEMORY[0x277D1E8E0])
  {
    v41 = *(v18 + 8);
    v41(v24, v17);
    v41(v22, v17);
    goto LABEL_7;
  }

  v59 = v24;
  (*(v18 + 96))(v22, v17);
  v28 = v53;
  v29 = v56;
  v30 = v22;
  v31 = v57;
  (*(v53 + 32))(v56, v30, v57);
  sub_22C378A4C(v55 + v54[7], &v66);
  v50 = v67;
  v48 = v68;
  v49 = sub_22C374168(&v66, v67);
  v47 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v32 = v52;
  (*(v28 + 16))(v52, v29, v31);
  v33 = *MEMORY[0x277D1ECE0];
  v34 = sub_22C9036EC();
  (*(*(v34 - 8) + 104))(v32, v33, v34);
  sub_22C9037DC();
  *&v61[0] = MEMORY[0x277D84F90];
  sub_22C457274(&qword_27D9BB820, MEMORY[0x277D1ED48]);
  v35 = v27;
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  v36 = v32;
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
  sub_22C90AE4C();
  swift_storeEnumTagMultiPayload();
  v37 = *(v55 + v54[11]);
  v38 = v48;
  v39 = *(v48 + 32);

  v40 = v69;
  v39(&v62, v36, v37, v50, v38);
  if (v40)
  {

    sub_22C456BD8(v36, type metadata accessor for RenderableTool);
    (*(v28 + 8))(v56, v57);
  }

  else
  {
    sub_22C456BD8(v36, type metadata accessor for RenderableTool);

    v61[0] = v62;
    v61[1] = v63;
    v61[2] = v64;
    v61[3] = v65;
    v42 = v62;
    v43 = v63;
    v44 = v64;
    v45 = BYTE8(v64);
    sub_22C456C30(v62, *(&v62 + 1), v63, *(&v63 + 1), v64, SBYTE8(v64));
    sub_22C3E022C(v61);
    if ((v45 & 1) == 0)
    {
      (*(v53 + 8))(v56, v57);
      (*(v35 + 8))(v59, v17);
      sub_22C36FF94(&v66);

      sub_22C456CE4(v42, *(&v42 + 1), v43, *(&v43 + 1), v44, 0);
      *v58 = v42;
      return;
    }

    v60 = v42;
    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    sub_22C442014();
    swift_allocError();
    *v46 = v42;
    *(v46 + 8) = 0;
    *(v46 + 16) = 4;
    swift_willThrow();
    (*(v53 + 8))(v56, v57);
  }

  (*(v35 + 8))(v59, v17);
  sub_22C36FF94(&v66);
}

void sub_22C4515C4()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  sub_22C36A83C();
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3D7972657571;
  *(v5 + 24) = 0xE600000000000000;
  sub_22C591324();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_22C36FC14();
    v7 = v16;
  }

  *(v7 + 16) = v8 + 1;
  *(v7 + 8 * v8 + 32) = v5;
  sub_22C3716C0();
  v9 = sub_22C4429E4();
  if (v0)
  {

    *v2 = v0;
  }

  else
  {
    v10 = v9;
    v11 = *(v7 + 16);
    if (v11 >= *(v7 + 24) >> 1)
    {
      sub_22C36FC14();
      v7 = v17;
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + 8 * v11 + 32) = v10;
    sub_22C36A83C();
    v12 = swift_allocObject();
    sub_22C457420(v12);
    if ((v11 + 2) > *(v7 + 24) >> 1)
    {
      sub_22C3726E0();
      sub_22C591324();
    }

    v13 = sub_22C372170();

    sub_22C369AEC();
    v14 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v14 + 16) = v15;
    *v4 = v14 | 0x6000000000000000;
  }

  sub_22C36FB20();
}

uint64_t sub_22C451774@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_22C36A83C();
  v7 = swift_allocObject();
  sub_22C457420(v7);
  sub_22C591324();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_22C3726E0();
    sub_22C591324();
    v9 = v26;
  }

  *(v9 + 16) = v10 + 1;
  *(v9 + 8 * v10 + 32) = v3;
  v11 = a2();
  v13 = v12;
  sub_22C36A83C();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v16 = *(v9 + 16);
  v15 = *(v9 + 24);

  if (v16 >= v15 >> 1)
  {
    sub_22C3726E0();
    sub_22C591324();
    v9 = v27;
  }

  *(v9 + 16) = v16 + 1;
  *(v9 + 8 * v16 + 32) = v14;

  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = 61;
  *(v17 + 24) = 0xE100000000000000;
  v18 = *(v9 + 16);
  v19 = *(v9 + 24) >> 1;
  v20 = v18 + 1;
  if (v19 <= v18)
  {
    sub_22C36FC14();
    v9 = v28;
    v19 = *(v28 + 24) >> 1;
  }

  *(v9 + 16) = v20;
  *(v9 + 8 * v18 + 32) = v17;
  if (v19 < (v18 + 2))
  {
    sub_22C36FC14();
    v9 = v29;
  }

  *(v9 + 16) = v18 + 2;
  *(v9 + 8 * v20 + 32) = v6;
  sub_22C36A83C();
  v21 = swift_allocObject();
  sub_22C457420(v21);
  v22 = *(v9 + 24);

  if ((v18 + 3) > (v22 >> 1))
  {
    sub_22C3726E0();
    sub_22C591324();
  }

  v23 = sub_22C372170();

  sub_22C369AEC();
  v24 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  result = swift_allocObject();
  *(result + 16) = v23;
  *(v24 + 16) = result;
  *a3 = v24 | 0x6000000000000000;
  return result;
}

void *sub_22C4519BC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_22C9093DC();
  v6[2] = a1;
  result = sub_22C806C54(sub_22C456E14, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_22C451A28()
{
  v0 = *(type metadata accessor for StatefulExpressionParser(0) + 24);
  sub_22C4F6400();
  return v1 & 1;
}

uint64_t sub_22C451A78(uint64_t *a1, uint64_t a2)
{
  v48 = a2;
  v41 = a1;
  v40 = sub_22C90998C();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x28223BE20](v40);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v39 - v5;
  v47 = sub_22C90077C();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C908A8C();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - v16;
  v18 = sub_22C90947C();
  v43 = *(v18 - 8);
  v19 = *(v43 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v39 - v23;
  v24 = *(type metadata accessor for StatefulExpressionParser(0) + 24);
  v25 = sub_22C908B2C();
  MEMORY[0x2318B6010](v25);
  v26 = v49;
  sub_22C908B1C();
  if (v26)
  {

    (*(v6 + 8))(v9, v47);
    (*(v10 + 8))(v13, v46);
    sub_22C36C640(v17, 1, 1, v18);
    return sub_22C36DD28(v17, &qword_27D9BC3B0, &unk_22C912AF0);
  }

  else
  {
    v28 = v42;
    (*(v6 + 8))(v9, v47);
    (*(v10 + 8))(v13, v46);
    sub_22C36C640(v17, 0, 1, v18);
    v29 = v43;
    v30 = v45;
    (*(v43 + 32))(v45, v17, v18);
    (*(v29 + 16))(v22, v30, v18);
    if ((*(v29 + 88))(v22, v18) == *MEMORY[0x277D72B48])
    {
      (*(v29 + 96))(v22, v18);
      v31 = v28;
      v49 = *(v28 + 32);
      v32 = v39;
      v33 = v22;
      v34 = v40;
      v49(v39, v33, v40);
      (*(v28 + 16))(v44, v32, v34);
      v35 = v41;
      sub_22C3D0F80();
      v36 = *(*v35 + 16);
      sub_22C3D1144(v36);
      (*(v31 + 8))(v32, v34);
      (*(v29 + 8))(v45, v18);
      v37 = *v35;
      *(v37 + 16) = v36 + 1;
      result = (v49)(v37 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v36, v44, v34);
      *v35 = v37;
    }

    else
    {
      v38 = *(v29 + 8);
      v38(v45, v18);
      return (v38)(v22, v18);
    }
  }

  return result;
}

uint64_t sub_22C451FD8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C4561B4(a1, sub_22C456DD0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C45205C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v18 - v9);
  sub_22C3E8FB4(a1, &v18 - v9, &qword_27D9BB0D0, &qword_22C90D970);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  sub_22C456BD8(v10 + *(v4 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  sub_22C3E8FB4(a2, v8, &qword_27D9BB0D0, &qword_22C90D970);
  v13 = v8[1];
  if (v13)
  {
    v14 = *v8;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  sub_22C456BD8(v8 + *(v4 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (v12 == v14 && v11 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_22C90B4FC();
  }

  return v16 & 1;
}

uint64_t sub_22C452208(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a2;
  v66 = a5;
  v67 = a6;
  v72 = a4;
  v8 = type metadata accessor for StatefulExpressionParser(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C901FAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v65 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - v18;
  v20 = type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = (&v63 - v28);
  v75 = a3;
  sub_22C456B78(a3, &v63 - v28, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v19, v29, v11);
    v30 = v72;
    v31 = v70;
    v32 = sub_22C4429E4(v19, v66, v67, a1, v71);
    if (v31)
    {
      (*(v12 + 8))(v19, v11);
      return v30;
    }

    v39 = v32;
    v64 = a1;
    v66 = v11;
    v67 = v12;
    (*(v12 + 8))(v19);
    v38 = v39;
  }

  else
  {
    v64 = a1;
    v66 = v11;
    v67 = v12;
    v33 = *v29;
    v34 = v29[1];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = 3;
    *(v36 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v36 + 32) = v37;
    v38 = v36 | 0xA000000000000000;
  }

  sub_22C456B78(v75, v27, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v67;
    v41 = v68;
    v42 = v66;
    (*(v67 + 32))(v68, v27, v66);
    v43 = v69;
    sub_22C456B78(v72, v69, type metadata accessor for StatefulExpressionParser);
    v44 = sub_22C4528A0(v41);
    sub_22C456BD8(v43, type metadata accessor for StatefulExpressionParser);
    if (v44)
    {
      v45 = v40;
      v46 = v42;
      if (v71)
      {
        v73 = v64;
        v74 = v71;

        MEMORY[0x2318B7850](0x3D646E657478655FLL, 0xE800000000000000);
        v47 = v73;
        v48 = v74;
      }

      else
      {
        v47 = 0;
        v48 = 0xE000000000000000;
      }

      v60 = v68;
      v61 = swift_allocObject();
      *(v61 + 16) = v47;
      *(v61 + 24) = v48;
      v30 = sub_22C47D60C(v61, v38);

      (*(v45 + 8))(v60, v46);
      return v30;
    }

    (*(v40 + 8))(v41, v42);
  }

  else
  {
    sub_22C456BD8(v27, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    v40 = v67;
  }

  sub_22C456B78(v75, v24, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = v65;
    v49 = v66;
    (*(v40 + 32))(v65, v24, v66);
    v51 = v69;
    sub_22C456B78(v72, v69, type metadata accessor for StatefulExpressionParser);
    v52 = sub_22C452C70();
    sub_22C456BD8(v51, type metadata accessor for StatefulExpressionParser);
    if (v52)
    {
      v30 = swift_allocObject();
      v73 = 0;
      v74 = 0xE000000000000000;
      v53 = sub_22C90A49C();
      v54 = v40;
      v56 = v55;

      (*(v54 + 8))(v50, v49);
      *(v30 + 16) = v53;
      *(v30 + 24) = v56;
      return v30;
    }

    (*(v40 + 8))(v50, v49);
  }

  else
  {
    sub_22C456BD8(v24, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  }

  if (v71)
  {
    v73 = v64;
    v74 = v71;

    MEMORY[0x2318B7850](61, 0xE100000000000000);
    v57 = v73;
    v58 = v74;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v58;
  v30 = sub_22C47D60C(v59, v38);

  return v30;
}

uint64_t sub_22C4528A0(uint64_t a1)
{
  v3 = sub_22C906D9C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_22C90654C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906DDC();
  v32 = *(v19 - 8);
  v20 = *(v32 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StatefulExpressionParser(0);
  sub_22C60539C(a1, *(v1 + *(v23 + 52)));
  v24 = sub_22C9070DC();
  if (sub_22C370B74(v13, 1, v24) == 1)
  {
    sub_22C36DD28(v13, &qword_27D9BAA18, &qword_22C911C40);
  }

  else
  {
    sub_22C90702C();
    (*(*(v24 - 8) + 8))(v13, v24);
    if ((*(v15 + 88))(v18, v14) == *MEMORY[0x277D1DAA0])
    {
      (*(v15 + 96))(v18, v14);
      v25 = v32;
      (*(v32 + 32))(v22, v18, v19);
      sub_22C906DCC();
      v27 = v33;
      v26 = v34;
      (*(v33 + 104))(v7, *MEMORY[0x277D1DE38], v34);
      v28 = sub_22C906D8C();
      v29 = *(v27 + 8);
      v29(v7, v26);
      v29(v9, v26);
      (*(v25 + 8))(v22, v19);
      if (v28)
      {
        return 1;
      }
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }
  }

  return 0;
}

uint64_t sub_22C452C70()
{
  v1 = sub_22C90654C();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22C90700C();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C3A5908(&qword_27D9BC378, &unk_22C912AB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43[-v9];
  v11 = sub_22C3A5908(&qword_27D9BC380, &qword_22C922FC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v49 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v43[-v18];
  v20 = sub_22C9070DC();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v26 = &v43[-v25];
  v27 = *(v0 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
  if (!*(v27 + 16))
  {
    return 0;
  }

  sub_22C628274();
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = *(v27 + 56);
  v31 = v51;
  (*(v51 + 16))(v24, v30 + *(v51 + 72) * v28, v20);
  (*(v31 + 32))(v26, v24, v20);
  sub_22C90701C();
  v32 = v50;
  (*(v50 + 104))(v17, *MEMORY[0x277D1DF20], v4);
  sub_22C36C640(v17, 0, 1, v4);
  v33 = *(v7 + 48);
  sub_22C3E8FB4(v19, v10, &qword_27D9BC380, &qword_22C922FC0);
  sub_22C3E8FB4(v17, &v10[v33], &qword_27D9BC380, &qword_22C922FC0);
  if (sub_22C370B74(v10, 1, v4) != 1)
  {
    v34 = v49;
    sub_22C3E8FB4(v10, v49, &qword_27D9BC380, &qword_22C922FC0);
    if (sub_22C370B74(&v10[v33], 1, v4) != 1)
    {
      v35 = &v10[v33];
      v36 = v45;
      (*(v32 + 32))(v45, v35, v4);
      sub_22C457274(&qword_27D9BC388, MEMORY[0x277D1DF28]);
      v44 = sub_22C90A0BC();
      v37 = *(v32 + 8);
      v37(v36, v4);
      sub_22C36DD28(v17, &qword_27D9BC380, &qword_22C922FC0);
      sub_22C36DD28(v19, &qword_27D9BC380, &qword_22C922FC0);
      v37(v49, v4);
      sub_22C36DD28(v10, &qword_27D9BC380, &qword_22C922FC0);
      if (v44)
      {
        goto LABEL_11;
      }

LABEL_9:
      (*(v51 + 8))(v26, v20);
      return 0;
    }

    sub_22C36DD28(v17, &qword_27D9BC380, &qword_22C922FC0);
    sub_22C36DD28(v19, &qword_27D9BC380, &qword_22C922FC0);
    (*(v32 + 8))(v34, v4);
LABEL_8:
    sub_22C36DD28(v10, &qword_27D9BC378, &unk_22C912AB0);
    goto LABEL_9;
  }

  sub_22C36DD28(v17, &qword_27D9BC380, &qword_22C922FC0);
  sub_22C36DD28(v19, &qword_27D9BC380, &qword_22C922FC0);
  if (sub_22C370B74(&v10[v33], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_22C36DD28(v10, &qword_27D9BC380, &qword_22C922FC0);
LABEL_11:
  v38 = v48;
  sub_22C90702C();
  (*(v51 + 8))(v26, v20);
  v40 = v46;
  v39 = v47;
  if ((*(v46 + 88))(v38, v47) == *MEMORY[0x277D1DAA8] && ((*(v40 + 96))(v38, v39), v39 = sub_22C906F2C(), v40 = *(v39 - 8), (*(v40 + 88))(v38, v39) == *MEMORY[0x277D1DEE8]))
  {
    (*(v40 + 96))(v38, v39);
    v41 = *(*v38 + 16);

    if (!v41)
    {
      return 1;
    }
  }

  else
  {
    (*(v40 + 8))(v38, v39);
  }

  return 0;
}

uint64_t sub_22C453354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[1] = a1;
  v5 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v32 - v7;
  v9 = sub_22C90833C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90825C();
  v16 = sub_22C6054B8(v14, v15, a4);
  v18 = v17;

  if (v18)
  {
    v35 = v16;
    v36 = v18;
    sub_22C90837C();
    v19 = (*(v10 + 88))(v13, v9);
    v20 = *MEMORY[0x277D1E400];
    (*(v10 + 8))(v13, v9);
    if (v19 == v20)
    {
      MEMORY[0x2318B7850](0x646E657478655FLL, 0xE700000000000000);
    }

    v21 = sub_22C90836C();
    if ((v22 & 1) == 0)
    {
      v33 = 91;
      v34 = 0xE100000000000000;
      v37 = v21;
      v23 = sub_22C90B47C();
      MEMORY[0x2318B7850](v23);

      MEMORY[0x2318B7850](93, 0xE100000000000000);
      MEMORY[0x2318B7850](v33, v34);
    }

    v24 = v35;
    v25 = v36;
    sub_22C90838C();
    v26 = sub_22C901FAC();
    sub_22C36C640(v8, 0, 1, v26);
    return sub_22C602B1C(v8, v24, v25);
  }

  else
  {
    v28 = sub_22C90825C();
    v30 = v29;
    sub_22C442014();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_22C453604(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9BC3C0, qword_22C912B08);
    v1 = sub_22C90B1EC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_22C456470(v2, 1, &v4);

  return v4;
}

void sub_22C4536B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v217 = sub_22C9063DC();
  v25 = sub_22C369824(v217);
  v216 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v218 = v30 - v29;
  v240 = sub_22C90827C();
  v31 = sub_22C369824(v240);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  v237 = v42;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v215 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v227 = &v215 - v48;
  v49 = *(v24 + 16);
  v50 = MEMORY[0x277D84F90];
  v230 = v33;
  v231 = v24;
  v232 = v49;
  v235 = v46;
  if (v49)
  {
    sub_22C37F748();
    *&v242 = v50;
    sub_22C3B5E2C();
    v50 = v242;
    v238 = *(v33 + 16);
    v239 = v33 + 16;
    v51 = v24 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v236 = *(v33 + 72);
    v52 = (v33 + 8);
    do
    {
      v53 = sub_22C3773A4();
      v54 = v240;
      v238(v53);
      v55 = sub_22C90825C();
      v57 = v56;
      (*v52)(&v242, v54);
      *&v242 = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      sub_22C3705DC();
      if (v61)
      {
        sub_22C369AB0(v60);
        sub_22C3726E0();
        sub_22C3B5E2C();
        v50 = v242;
      }

      *(v50 + 16) = v20;
      v62 = v50 + 16 * v59;
      *(v62 + 32) = v55;
      *(v62 + 40) = v57;
      v51 += v236;
      --v49;
    }

    while (v49);
    v46 = v235;
  }

  v63 = 0;
  v220 = MEMORY[0x277D84F90];
  v64 = v229;
LABEL_8:
  v65 = (&unk_283FAEC30 + 16 * v63 + 40);
  while (v63 != 8)
  {
    if (v63 > 7)
    {
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v66 = *(v65 - 1);
    v64 = *v65;
    *&v242 = v66;
    *(&v242 + 1) = v64;
    MEMORY[0x28223BE20](v47);
    *(&v215 - 2) = &v242;

    if (sub_22C5EC08C(sub_22C457404, (&v215 - 4), v50))
    {
      v67 = v220;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = *(v67 + 16);
        sub_22C377BA0();
        sub_22C3B5E2C();
        v67 = a10;
      }

      v71 = *(v67 + 16);
      v70 = *(v67 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_22C369AB0(v70);
        sub_22C3B5E2C();
        v67 = a10;
      }

      ++v63;
      *(v67 + 16) = v71 + 1;
      v220 = v67;
      v72 = v67 + 16 * v71;
      *(v72 + 32) = v66;
      *(v72 + 40) = v64;
      sub_22C381240();
      v46 = v235;
      goto LABEL_8;
    }

    v65 += 2;
    ++v63;
    sub_22C381240();
    v46 = v235;
  }

  v73 = v220;
  v221 = *(v220 + 16);
  if (!v221)
  {
    sub_22C37F748();

    v239 = MEMORY[0x277D84F90];
    v75 = v230;
    v76 = v231;
    goto LABEL_40;
  }

  v74 = 0;
  v219 = v220 + 32;
  v75 = v230;
  v76 = v231;
  v238 = (v230 + 16);
  v77 = (v230 + 8);
  v233 = (v230 + 32);
  v239 = MEMORY[0x277D84F90];
  do
  {
    if (v74 >= *(v73 + 16))
    {
      goto LABEL_117;
    }

    v78 = v232;
    if (!v232)
    {
      goto LABEL_37;
    }

    sub_22C37F748();
    v223 = v79;
    v80 = (v219 + 16 * v79);
    v81 = *v80;
    v64 = v80[1];
    sub_22C457430();
    v234 = v82;
    v83 = v82 + v76;
    v84 = *(v75 + 72);
    v85 = *(v75 + 16);

    v86 = v78;
    v236 = v81;
    do
    {
      v85(v46, v83, v240);
      v88 = sub_22C90825C() == v81 && v87 == v64;
      if (v88)
      {
      }

      else
      {
        v89 = sub_22C90B4FC();

        if ((v89 & 1) == 0)
        {
          (*v77)(v46, v240);
          goto LABEL_35;
        }
      }

      v85(v237, v46, v240);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = *(v239 + 16);
        sub_22C5927FC();
        v239 = v97;
      }

      v91 = *(v239 + 16);
      v90 = *(v239 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_22C369AB0(v90);
        sub_22C5927FC();
        v239 = v98;
      }

      v92 = v46;
      v93 = v240;
      (*v77)(v92, v240);
      v94 = v239;
      *(v239 + 16) = v91 + 1;
      v95 = v93;
      v46 = v235;
      (*v233)(v234 + v94 + v91 * v84, v237, v95);
LABEL_35:
      v83 += v84;
      --v86;
      v81 = v236;
    }

    while (v86);

    v75 = v230;
    v76 = v231;
    sub_22C381240();
    v73 = v220;
    v74 = v223;
LABEL_37:
    ++v74;
  }

  while (v74 != v221);
  sub_22C37F748();

LABEL_40:
  v99 = 0;
  v238 = (v75 + 16);
  v236 = (v75 + 32);
  v234 = MEMORY[0x277D84F90];
  v237 = (v75 + 8);
  while (v99 != v232)
  {
    sub_22C36BC18();
    (*(v75 + 16))(v64, v100 + v76 * v99, v240);
    if (qword_27D9BA628 != -1)
    {
      swift_once();
    }

    ++v99;
    v101 = off_27D9BC350;
    v102 = sub_22C90825C();
    v104 = v103;
    if (v101[2])
    {
      v105 = v102;
      v106 = v101[5];
      sub_22C90B62C();
      sub_22C909FFC();
      v107 = sub_22C90B66C();
      v108 = ~(-1 << *(v101 + 32));
      do
      {
        v109 = v107 & v108;
        if (((*(v101 + (((v107 & v108) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v107 & v108)) & 1) == 0)
        {
          v75 = v230;
          goto LABEL_58;
        }

        v110 = (v101[6] + 16 * v109);
        if (*v110 == v105 && v110[1] == v104)
        {
          break;
        }

        v112 = sub_22C90B4FC();
        v107 = v109 + 1;
      }

      while ((v112 & 1) == 0);

      v113 = *v236;
      (*v236)(v224, v229, v240);
      v114 = v234;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v114;
      if ((v115 & 1) == 0)
      {
        v116 = *(v114 + 16);
        v117 = sub_22C377BA0();
        sub_22C3B7040(v117, v118, v119);
        v114 = a10;
      }

      v121 = *(v114 + 16);
      v120 = *(v114 + 24);
      v64 = (v121 + 1);
      if (v121 >= v120 >> 1)
      {
        v123 = sub_22C369AB0(v120);
        sub_22C3B7040(v123, v121 + 1, 1);
        v114 = a10;
      }

      *(v114 + 16) = v64;
      v234 = v114;
      sub_22C374A68(&a12);
      v113();
      v75 = v230;
      v76 = v231;
      sub_22C381240();
    }

    else
    {
LABEL_58:

      sub_22C3704B8();
      v64 = v229;
      v122(v229, v240);
      v76 = v231;
    }
  }

  v124 = 0;
  v235 = MEMORY[0x277D84F90];
LABEL_60:
  v125 = v232;
  while (v124 != v125)
  {
    sub_22C36BC18();
    v127 = v228;
    (*(v75 + 16))(v228, v126 + v76 * v124, v240);
    if (qword_27D9BA638 != -1)
    {
      swift_once();
    }

    ++v124;
    v128 = off_27D9BC360;
    sub_22C90825C();
    v130 = v129;
    if (v128[2])
    {
      v131 = v128[5];
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37F0BC();
      do
      {
        sub_22C37FD0C(v132);
        if ((v133 & 1) == 0)
        {
          v127 = v228;
          goto LABEL_74;
        }

        sub_22C37B9BC();
        if (v88 && v134 == v130)
        {
          break;
        }

        v136 = sub_22C90B4FC();
        v132 = v64 + 1;
      }

      while ((v136 & 1) == 0);

      sub_22C3704B8();
      v150(v228, v240);
      v75 = v230;
      v76 = v231;
      goto LABEL_60;
    }

LABEL_74:

    v137 = *v236;
    (*v236)(v222, v127, v240);
    v138 = v235;
    v139 = swift_isUniquelyReferenced_nonNull_native();
    a10 = v138;
    v125 = v232;
    if ((v139 & 1) == 0)
    {
      v140 = *(v138 + 2);
      v141 = sub_22C377BA0();
      sub_22C3B7040(v141, v142, v143);
      v138 = a10;
    }

    v145 = *(v138 + 2);
    v144 = *(v138 + 3);
    sub_22C3705DC();
    if (v61)
    {
      v147 = sub_22C3732A0(v146);
      sub_22C3B7040(v147, v148, v149);
      v138 = a10;
    }

    *(v138 + 2) = v128;
    v235 = v138;
    sub_22C374A68(&a10);
    v137();
    v75 = v230;
    v76 = v231;
  }

  *&v242 = v235;

  sub_22C3CE2D0(v151);
  v152 = 0;
  v153 = MEMORY[0x277D84F90];
  v233 = v242;
  v154 = v226;
  while (v152 != v125)
  {
    sub_22C36BC18();
    (*(v75 + 16))(v154, v155 + v76 * v152, v240);
    if (qword_27D9BA630 != -1)
    {
      swift_once();
    }

    ++v152;
    v156 = off_27D9BC358;
    sub_22C90825C();
    v158 = v157;
    if (v156[2])
    {
      v235 = v153;
      v159 = v156[5];
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37F0BC();
      do
      {
        sub_22C37FD0C(v160);
        if ((v161 & 1) == 0)
        {
          v75 = v230;
          v153 = v235;
          goto LABEL_98;
        }

        sub_22C37B9BC();
        if (v88 && v162 == v158)
        {
          break;
        }

        v164 = sub_22C90B4FC();
        v160 = v153 + 1;
      }

      while ((v164 & 1) == 0);

      v165 = *v236;
      v154 = v226;
      (*v236)(v225, v226, v240);
      v153 = v235;
      v166 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v153;
      if ((v166 & 1) == 0)
      {
        v167 = *(v153 + 16);
        v168 = sub_22C377BA0();
        sub_22C3B7040(v168, v169, v170);
        v154 = v226;
        v153 = a10;
      }

      v125 = v232;
      v172 = *(v153 + 16);
      v171 = *(v153 + 24);
      sub_22C3705DC();
      if (v61)
      {
        v175 = sub_22C3732A0(v173);
        sub_22C3B7040(v175, v176, v177);
        v154 = v226;
        v153 = a10;
      }

      *(v153 + 16) = v156;
      sub_22C374A68(&a13);
      v165();
      v75 = v230;
      v76 = v231;
    }

    else
    {
LABEL_98:

      sub_22C3704B8();
      v154 = v226;
      v174(v226, v240);
      v76 = v231;
      v125 = v232;
    }
  }

  v241 = v234;
  sub_22C3CE2D0(v233);
  sub_22C3CE2D0(v153);
  v178 = MEMORY[0x277D84F90];
  v179 = v241;
  v236 = v241;
  if (v125)
  {
    a10 = MEMORY[0x277D84F90];
    sub_22C3B7118();
    v180 = a10;
    sub_22C457430();
    v182 = v76 + v181;
    v183 = *(v75 + 72);
    v184 = *(v75 + 16);
    do
    {
      v185 = sub_22C3773A4();
      v186 = v240;
      v184(v185);
      v187 = sub_22C90825C();
      v243 = MEMORY[0x277D837D0];
      *&v242 = v187;
      *(&v242 + 1) = v188;
      sub_22C3704B8();
      v189(&a10, v186);
      a10 = v180;
      v191 = *(v180 + 16);
      v190 = *(v180 + 24);
      sub_22C3705DC();
      if (v61)
      {
        sub_22C3732A0(v192);
        sub_22C3B7118();
        v180 = a10;
      }

      *(v180 + 16) = v179;
      sub_22C456E34(&v242, (v180 + 32 * v191 + 32));
      v182 += v183;
      --v125;
    }

    while (v125);
    v75 = v230;
    v179 = v236;
  }

  sub_22C456E44();
  v193 = sub_22C454660();
  v194 = v179[2];
  if (v194)
  {
    a10 = v178;
    sub_22C3B7118();
    v195 = 0;
    v196 = a10;
    sub_22C457430();
    v198 = v179 + v197;
    while (v195 < v179[2])
    {
      v199 = &v198[*(v75 + 72) * v195];
      v200 = *(v75 + 16);
      v201 = v227;
      v202 = v75;
      v203 = v240;
      v200(v227, v199, v240);
      v204 = sub_22C90825C();
      v243 = MEMORY[0x277D837D0];
      *&v242 = v204;
      *(&v242 + 1) = v205;
      (*(v202 + 8))(v201, v203);
      a10 = v196;
      v207 = *(v196 + 16);
      v206 = *(v196 + 24);
      sub_22C3705DC();
      if (v61)
      {
        sub_22C3732A0(v208);
        sub_22C3B7118();
        v196 = a10;
      }

      ++v195;
      *(v196 + 16) = v202;
      sub_22C456E34(&v242, (v196 + 32 * v207 + 32));
      v75 = v230;
      v179 = v236;
      if (v194 == v195)
      {
        goto LABEL_111;
      }
    }

LABEL_118:
    __break(1u);
  }

  else
  {
LABEL_111:

    v209 = sub_22C454660();
    v210 = sub_22C90ABFC();

    if ((v210 & 1) == 0)
    {

      sub_22C903F7C();
      v211 = sub_22C9063CC();
      v212 = sub_22C90AADC();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        *v213 = 0;
        _os_log_impl(&dword_22C366000, v211, v212, "Names of sorted search properties do not equal names of sorted reordered search properties", v213, 2u);
        MEMORY[0x2318B9880](v213, -1, -1);
      }

      (*(v216 + 8))(v218, v217);
      sub_22C442014();
      swift_allocError();
      *v214 = xmmword_22C912340;
      *(v214 + 16) = 5;
      swift_willThrow();
    }

    sub_22C36FB20();
  }
}

id sub_22C454660()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_22C90A5DC();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_22C4546F8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_22C454710(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_22C454768(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C348(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C45481C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C45481C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C454D2C(v8, v9, a1, v4);
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
    return sub_22C454964(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C454964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v8 = *(*(v52 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = (&v40 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v40 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v40 - v21;
  v42 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v47 = -v24;
    v48 = v23;
    v26 = a1 - a3;
    v41 = v24;
    v27 = v23 + v24 * a3;
    v50 = &v40 - v21;
    while (2)
    {
      v45 = v25;
      v46 = a3;
      v43 = v27;
      v44 = v26;
      v28 = v26;
      while (1)
      {
        sub_22C3E8FB4(v27, v22, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C3E8FB4(v25, v18, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C3E8FB4(v22, v15, &qword_27D9BB0D0, &qword_22C90D970);
        v29 = v15[1];
        if (v29)
        {
          v30 = *v15;
        }

        else
        {
          v30 = 0;
          v29 = 0xE000000000000000;
        }

        sub_22C456BD8(v15 + *(v52 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        v31 = v18;
        v32 = v51;
        sub_22C3E8FB4(v18, v51, &qword_27D9BB0D0, &qword_22C90D970);
        v33 = v32;
        v34 = v32[1];
        if (v34)
        {
          v35 = *v32;
        }

        else
        {
          v35 = 0;
          v34 = 0xE000000000000000;
        }

        sub_22C456BD8(v33 + *(v52 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        if (v30 == v35 && v29 == v34)
        {
          break;
        }

        v37 = sub_22C90B4FC();

        v18 = v31;
        sub_22C36DD28(v31, &qword_27D9BB0D0, &qword_22C90D970);
        v22 = v50;
        result = sub_22C36DD28(v50, &qword_27D9BB0D0, &qword_22C90D970);
        if (v37)
        {
          if (!v48)
          {
            __break(1u);
            return result;
          }

          v38 = v49;
          sub_22C456B08(v27, v49);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C456B08(v38, v25);
          v25 += v47;
          v27 += v47;
          if (!__CFADD__(v28++, 1))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v18 = v31;
      sub_22C36DD28(v31, &qword_27D9BB0D0, &qword_22C90D970);
      v22 = v50;
      result = sub_22C36DD28(v50, &qword_27D9BB0D0, &qword_22C90D970);
LABEL_20:
      a3 = v46 + 1;
      v25 = v45 + v41;
      v26 = v44 - 1;
      v27 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C454D2C(int64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v146 = a1;
  v168 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v156 = *(v168 - 8);
  v6 = *(v156 + 64);
  v7 = MEMORY[0x28223BE20](v168);
  v149 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v163 = &v141 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v164 = (&v141 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v141 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v141 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v167 = &v141 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v152 = (&v141 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v151 = (&v141 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v161 = &v141 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v158 = &v141 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v29);
  v157 = a3;
  v32 = a3[1];
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_128:
    v35 = *v146;
    if (!*v146)
    {
      goto LABEL_172;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_130;
    }

    goto LABEL_166;
  }

  v143 = &v141 - v30;
  v144 = v31;
  v142 = a4;
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  v165 = v15;
  v166 = v18;
  while (1)
  {
    v35 = v33++;
    if (v33 < v32)
    {
      v154 = v32;
      v155 = v33;
      v159 = v34;
      v36 = *v157;
      v37 = *(v156 + 72);
      v38 = *v157 + v37 * v33;
      v39 = v143;
      sub_22C3E8FB4(v38, v143, &qword_27D9BB0D0, &qword_22C90D970);
      v162 = v36;
      v40 = v36 + v37 * v35;
      v41 = v39;
      v42 = v144;
      sub_22C3E8FB4(v40, v144, &qword_27D9BB0D0, &qword_22C90D970);
      v43 = v160;
      LODWORD(v153) = sub_22C45205C(v41, v42);
      v160 = v43;
      if (v43)
      {
        sub_22C36DD28(v42, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v41, &qword_27D9BB0D0, &qword_22C90D970);
LABEL_141:

        return;
      }

      sub_22C36DD28(v42, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C36DD28(v41, &qword_27D9BB0D0, &qword_22C90D970);
      v145 = v35;
      v44 = (v35 + 2);
      v45 = v162 + v37 * (v35 + 2);
      v46 = v154;
      v33 = v155;
      v47 = v37;
      v162 = v37;
      while (1)
      {
        v34 = v44;
        if (v33 + 1 >= v46)
        {
          break;
        }

        v48 = v33;
        v49 = v158;
        sub_22C3E8FB4(v45, v158, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C3E8FB4(v38, v161, &qword_27D9BB0D0, &qword_22C90D970);
        v50 = v151;
        sub_22C3E8FB4(v49, v151, &qword_27D9BB0D0, &qword_22C90D970);
        v51 = v50[1];
        if (v51)
        {
          v52 = *v50;
        }

        else
        {
          v52 = 0;
          v51 = 0xE000000000000000;
        }

        sub_22C456BD8(v50 + *(v168 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        v53 = v152;
        sub_22C3E8FB4(v161, v152, &qword_27D9BB0D0, &qword_22C90D970);
        v54 = v53;
        v55 = v53[1];
        if (v55)
        {
          v56 = *v53;
        }

        else
        {
          v56 = 0;
          v55 = 0xE000000000000000;
        }

        sub_22C456BD8(v54 + *(v168 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        if (v52 == v56 && v51 == v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = sub_22C90B4FC();
        }

        v15 = v165;

        sub_22C36DD28(v161, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v158, &qword_27D9BB0D0, &qword_22C90D970);
        v59 = v153 ^ v58;
        v47 = v162;
        v45 += v162;
        v38 += v162;
        v33 = v48 + 1;
        v44 = v34 + 1;
        v18 = v166;
        v46 = v154;
        if (v59)
        {
          goto LABEL_22;
        }
      }

      v33 = v46;
LABEL_22:
      if (v153)
      {
        v35 = v145;
        if (v33 < v145)
        {
          goto LABEL_165;
        }

        if (v145 >= v33)
        {
          v34 = v159;
        }

        else
        {
          if (v46 >= v34)
          {
            v60 = v34;
          }

          else
          {
            v60 = v46;
          }

          v61 = v47 * (v60 - 1);
          v62 = v33;
          v63 = v47 * v60;
          v64 = v145 * v47;
          v155 = v62;
          v65 = v145;
          do
          {
            if (v65 != --v62)
            {
              v66 = *v157;
              if (!*v157)
              {
                goto LABEL_170;
              }

              sub_22C456B08(v66 + v64, v149);
              v67 = v64 < v61 || v66 + v64 >= v66 + v63;
              if (v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v64 != v61)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C456B08(v149, v66 + v61);
              v47 = v162;
            }

            ++v65;
            v61 -= v47;
            v63 -= v47;
            v64 += v47;
          }

          while (v65 < v62);
          v34 = v159;
          v15 = v165;
          v18 = v166;
          v33 = v155;
        }
      }

      else
      {
        v34 = v159;
        v35 = v145;
      }
    }

    v68 = v157[1];
    if (v33 < v68)
    {
      if (__OFSUB__(v33, v35))
      {
        goto LABEL_162;
      }

      if (v33 - v35 < v142)
      {
        break;
      }
    }

LABEL_73:
    if (v33 < v35)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = *(v34 + 2);
      sub_22C590218();
      v34 = v131;
    }

    v87 = v34;
    v88 = *(v34 + 2);
    v159 = v87;
    v89 = v88 + 1;
    if (v88 >= *(v87 + 3) >> 1)
    {
      sub_22C590218();
      v159 = v132;
    }

    v90 = v159;
    *(v159 + 2) = v89;
    v91 = v90 + 32;
    v92 = &v90[16 * v88 + 32];
    *v92 = v35;
    v92[1] = v33;
    v162 = *v146;
    if (!v162)
    {
      goto LABEL_171;
    }

    if (v88)
    {
      v34 = v159;
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v91[16 * v89 - 16];
        v95 = &v34[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v34 + 4);
          v97 = *(v34 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_94:
          if (v99)
          {
            goto LABEL_148;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_151;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_156;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v89 < 2)
        {
          goto LABEL_150;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_109:
        if (v114)
        {
          goto LABEL_153;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_155;
        }

        if (v121 < v113)
        {
          goto LABEL_125;
        }

LABEL_116:
        if (v93 - 1 >= v89)
        {
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v157)
        {
          goto LABEL_168;
        }

        v35 = v33;
        v125 = &v91[16 * v93 - 16];
        v34 = *v125;
        v126 = &v91[16 * v93];
        v127 = *(v126 + 1);
        v128 = v160;
        sub_22C4559A0(*v157 + *(v156 + 72) * *v125, *v157 + *(v156 + 72) * *v126, *v157 + *(v156 + 72) * v127, v162);
        v160 = v128;
        if (v128)
        {
          goto LABEL_141;
        }

        if (v127 < v34)
        {
          goto LABEL_143;
        }

        v129 = *(v159 + 2);
        if (v93 > v129)
        {
          goto LABEL_144;
        }

        *v125 = v34;
        *(v125 + 1) = v127;
        if (v93 >= v129)
        {
          goto LABEL_145;
        }

        v89 = v129 - 1;
        sub_22C56BFF0(v126 + 16, v129 - 1 - v93, &v91[16 * v93]);
        v34 = v159;
        *(v159 + 2) = v129 - 1;
        v18 = v166;
        v33 = v35;
        if (v129 <= 2)
        {
          goto LABEL_125;
        }
      }

      v100 = &v91[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_146;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_147;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_149;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_152;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_160;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

    v34 = v159;
LABEL_125:
    v32 = v157[1];
    v15 = v165;
    if (v33 >= v32)
    {
      goto LABEL_128;
    }
  }

  v69 = v35 + v142;
  if (__OFADD__(v35, v142))
  {
    goto LABEL_163;
  }

  if (v69 >= v68)
  {
    v69 = v157[1];
  }

  if (v69 < v35)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v34 = sub_22C56BFD8(v34);
LABEL_130:
    v133 = v34 + 16;
    v134 = *(v34 + 2);
    while (v134 >= 2)
    {
      if (!*v157)
      {
        goto LABEL_169;
      }

      v135 = v34;
      v136 = &v34[16 * v134];
      v137 = *v136;
      v34 = &v133[2 * v134];
      v138 = *(v34 + 1);
      v139 = v160;
      sub_22C4559A0(*v157 + *(v156 + 72) * *v136, *v157 + *(v156 + 72) * *v34, *v157 + *(v156 + 72) * v138, v35);
      v160 = v139;
      if (v139)
      {
        break;
      }

      if (v138 < v137)
      {
        goto LABEL_157;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_158;
      }

      *v136 = v137;
      *(v136 + 1) = v138;
      v140 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_159;
      }

      v134 = *v133 - 1;
      sub_22C56BFF0(v34 + 16, v140, v34);
      *v133 = v134;
      v34 = v135;
    }

    goto LABEL_141;
  }

  if (v33 == v69)
  {
    goto LABEL_73;
  }

  v159 = v34;
  v70 = *v157;
  v71 = *(v156 + 72);
  v72 = *v157 + v71 * (v33 - 1);
  v73 = -v71;
  v145 = v35;
  v74 = v35 - v33;
  v162 = v70;
  v147 = v71;
  v148 = v69;
  v75 = v70 + v33 * v71;
LABEL_53:
  v154 = v72;
  v155 = v33;
  v150 = v75;
  v153 = v74;
  v76 = v72;
  while (1)
  {
    v77 = v167;
    sub_22C3E8FB4(v75, v167, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v76, v18, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v77, v15, &qword_27D9BB0D0, &qword_22C90D970);
    v78 = v15[1];
    if (v78)
    {
      v79 = *v15;
    }

    else
    {
      v79 = 0;
      v78 = 0xE000000000000000;
    }

    sub_22C456BD8(v15 + *(v168 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    v80 = v164;
    sub_22C3E8FB4(v18, v164, &qword_27D9BB0D0, &qword_22C90D970);
    v81 = v80;
    v82 = v80[1];
    if (v82)
    {
      v83 = *v80;
    }

    else
    {
      v83 = 0;
      v82 = 0xE000000000000000;
    }

    sub_22C456BD8(v81 + *(v168 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    if (v79 == v83 && v78 == v82)
    {

      v18 = v166;
      sub_22C36DD28(v166, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C36DD28(v167, &qword_27D9BB0D0, &qword_22C90D970);
LABEL_70:
      v15 = v165;
LABEL_71:
      v33 = v155 + 1;
      v72 = v154 + v147;
      v74 = v153 - 1;
      v75 = v150 + v147;
      if (v155 + 1 == v148)
      {
        v33 = v148;
        v34 = v159;
        v35 = v145;
        goto LABEL_73;
      }

      goto LABEL_53;
    }

    v85 = sub_22C90B4FC();

    v18 = v166;
    sub_22C36DD28(v166, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C36DD28(v167, &qword_27D9BB0D0, &qword_22C90D970);
    if ((v85 & 1) == 0)
    {
      goto LABEL_70;
    }

    v15 = v165;
    if (!v162)
    {
      break;
    }

    v86 = v163;
    sub_22C456B08(v75, v163);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C456B08(v86, v76);
    v76 += v73;
    v75 += v73;
    v67 = __CFADD__(v74++, 1);
    if (v67)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}

uint64_t sub_22C4559A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v87 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v10 = *(*(v87 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v87);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (v75 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v84 = v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v75 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (v75 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v86 = v75 - v27;
  result = MEMORY[0x28223BE20](v26);
  v85 = v75 - v30;
  v32 = *(v31 + 72);
  if (!v32)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v33 = a2 - a1 == 0x8000000000000000 && v32 == -1;
  if (v33)
  {
    goto LABEL_85;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_86;
  }

  v75[1] = v5;
  v90 = a1;
  v89 = a4;
  v36 = v34 / v32;
  if ((a2 - a1) / v32 < v34 / v32)
  {
    v82 = v22;
    sub_22C3D7440(a1, (a2 - a1) / v32, a4);
    v83 = a3;
    v84 = a4 + (a2 - a1) / v32 * v32;
    v88 = v84;
    v81 = v32;
    while (1)
    {
      if (a4 >= v84 || a2 >= a3)
      {
        goto LABEL_83;
      }

      v38 = v85;
      sub_22C3E8FB4(a2, v85, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C3E8FB4(a4, v86, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C3E8FB4(v38, v25, &qword_27D9BB0D0, &qword_22C90D970);
      v39 = v25[1];
      v40 = a2;
      v41 = a1;
      if (v39)
      {
        v42 = *v25;
      }

      else
      {
        v42 = 0;
        v39 = 0xE000000000000000;
      }

      v43 = a4;
      sub_22C456BD8(v25 + *(v87 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
      v44 = v82;
      sub_22C3E8FB4(v86, v82, &qword_27D9BB0D0, &qword_22C90D970);
      v45 = v44;
      v46 = *(v44 + 8);
      if (v46)
      {
        v47 = *v45;
      }

      else
      {
        v47 = 0;
        v46 = 0xE000000000000000;
      }

      sub_22C456BD8(v45 + *(v87 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
      if (v42 == v47 && v39 == v46)
      {

        sub_22C36DD28(v86, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v85, &qword_27D9BB0D0, &qword_22C90D970);
      }

      else
      {
        v49 = sub_22C90B4FC();

        sub_22C36DD28(v86, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v85, &qword_27D9BB0D0, &qword_22C90D970);
        if (v49)
        {
          v50 = v81;
          v51 = v41;
          v52 = v41 < v40 || v41 >= v40 + v81;
          a4 = v43;
          if (v52)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v40 + v50;
            v53 = v51;
          }

          else
          {
            v53 = v41;
            if (v41 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v40 + v50;
          }

          a3 = v83;
          goto LABEL_47;
        }
      }

      v54 = v43;
      v50 = v81;
      a4 = v43 + v81;
      v53 = v41;
      v55 = v41 < v54 || v41 >= a4;
      a2 = v40;
      if (v55)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v83;
      }

      else
      {
        a3 = v83;
        if (v53 != v54)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v89 = a4;
LABEL_47:
      a1 = v53 + v50;
      v90 = a1;
    }
  }

  v80 = v29;
  sub_22C3D7440(a2, v34 / v32, a4);
  v56 = a4 + v36 * v32;
  v57 = -v32;
  v58 = v56;
  v77 = a4;
  v78 = v14;
  v79 = v19;
  v86 = v57;
LABEL_49:
  v59 = a2 + v57;
  v60 = a3;
  v61 = v58;
  v81 = a2 + v57;
  v82 = a2;
  v83 = v58;
  while (1)
  {
    if (v56 <= a4)
    {
      v90 = v82;
      v88 = v61;
      goto LABEL_83;
    }

    if (v82 <= a1)
    {
      break;
    }

    v85 = v60;
    v76 = v61;
    v62 = v56 + v57;
    sub_22C3E8FB4(v56 + v57, v19, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v59, v84, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v19, v14, &qword_27D9BB0D0, &qword_22C90D970);
    v63 = v14[1];
    if (v63)
    {
      v64 = *v14;
    }

    else
    {
      v64 = 0;
      v63 = 0xE000000000000000;
    }

    sub_22C456BD8(v14 + *(v87 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    v65 = v80;
    sub_22C3E8FB4(v84, v80, &qword_27D9BB0D0, &qword_22C90D970);
    v66 = v65;
    v67 = *(v65 + 8);
    if (v67)
    {
      v68 = *v66;
    }

    else
    {
      v68 = 0;
      v67 = 0xE000000000000000;
    }

    sub_22C456BD8(v66 + *(v87 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    if (v64 == v68 && v63 == v67)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_22C90B4FC();
    }

    v71 = v85;
    a3 = v85 + v86;
    sub_22C36DD28(v84, &qword_27D9BB0D0, &qword_22C90D970);
    v19 = v79;
    sub_22C36DD28(v79, &qword_27D9BB0D0, &qword_22C90D970);
    if (v70)
    {
      v73 = v81;
      v74 = v71 < v82 || a3 >= v82;
      a4 = v77;
      if (v74)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v73;
        v58 = v76;
        v57 = v86;
        v14 = v78;
      }

      else
      {
        v58 = v76;
        v33 = v71 == v82;
        a2 = v81;
        v57 = v86;
        v14 = v78;
        if (!v33)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v73;
          v58 = v76;
        }
      }

      goto LABEL_49;
    }

    v72 = v71 < v56 || a3 >= v56;
    a4 = v77;
    v59 = v81;
    if (v72)
    {
      swift_arrayInitWithTakeFrontToBack();
      v60 = a3;
      v56 = v62;
      v61 = v62;
      v57 = v86;
      v58 = v83;
      v14 = v78;
    }

    else
    {
      v61 = v62;
      v33 = v56 == v71;
      v60 = a3;
      v56 = v62;
      v57 = v86;
      v58 = v83;
      v14 = v78;
      if (!v33)
      {
        swift_arrayInitWithTakeBackToFront();
        v58 = v83;
        v60 = a3;
        v56 = v62;
        v61 = v62;
      }
    }
  }

  v90 = v82;
  v88 = v58;
LABEL_83:
  sub_22C8381D0(&v90, &v89, &v88);
  return 1;
}

void *sub_22C45613C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C4568C8(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_22C4561B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_22C8920A0(v53, a1, a2, a3);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_22C36E2BC(v48, v49);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
          sub_22C90B16C();
        }
      }

      else
      {
        v30 = v54;
        sub_22C88E938(v28);
        v31 = *v30;
        v32 = sub_22C36E2BC(v19, v20);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_22C36A674();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C456470(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_22C36E2BC(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
      sub_22C90B16C();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_22C88E938(v15);
  v17 = *a3;
  v18 = sub_22C36E2BC(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C456764(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_22C45613C(v9, v4, v2);
      MEMORY[0x2318B9880](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C4568C8(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22C4568C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];

    if (v16 == sub_22C9074DC() && v15 == v17)
    {
      goto LABEL_26;
    }

    v19 = sub_22C90B4FC();

    if (v19)
    {
      v3 = a3;
      goto LABEL_27;
    }

    if (v16 == sub_22C9074EC() && v15 == v20)
    {
      v3 = a3;
LABEL_26:

LABEL_27:
    }

    else
    {
      v22 = sub_22C90B4FC();

      v3 = a3;
      if ((v22 & 1) == 0)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v25++, 1))
        {
          goto LABEL_30;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_22C839294();
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22C456AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C456B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C456B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C456BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C456C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    sub_22C456C94(a2, a3);
  }
}

uint64_t sub_22C456C94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_22C456CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    sub_22C456D48(a2, a3);
  }
}

uint64_t sub_22C456D48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C456DD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C88FD90(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

_OWORD *sub_22C456E34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22C456E44()
{
  result = qword_27D9BC3C8;
  if (!qword_27D9BC3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BC3C8);
  }

  return result;
}

uint64_t sub_22C456EA4()
{
  result = sub_22C901FAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C456F38()
{
  sub_22C436620();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StatefulExpressionParser.ToolData.Argument(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C456FE4()
{
  sub_22C908AEC();
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, qword_28142FF48);
    if (v1 <= 0x3F)
    {
      sub_22C457168(319, &qword_281434518);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, &qword_27D9BC400);
        if (v3 <= 0x3F)
        {
          sub_22C457168(319, qword_281433728);
          if (v4 <= 0x3F)
          {
            type metadata accessor for RenderingState();
            if (v5 <= 0x3F)
            {
              sub_22C4571BC();
              if (v6 <= 0x3F)
              {
                sub_22C4572BC();
                if (v7 <= 0x3F)
                {
                  sub_22C457368();
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

uint64_t sub_22C457168(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22C4571BC()
{
  if (!qword_27D9BC408)
  {
    sub_22C901FAC();
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C457274(&qword_2814357B0, MEMORY[0x277D1C338]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC408);
    }
  }
}

uint64_t sub_22C457274(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C4572BC()
{
  if (!qword_27D9BC410)
  {
    sub_22C901FAC();
    sub_22C9070DC();
    sub_22C457274(&qword_2814357B0, MEMORY[0x277D1C338]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC410);
    }
  }
}

void sub_22C457368()
{
  if (!qword_27D9BC418)
  {
    sub_22C901FAC();
    sub_22C457274(&qword_2814357B0, MEMORY[0x277D1C338]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC418);
    }
  }
}

uint64_t sub_22C457420(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_22C457454(char a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v34 = a2;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4[1](a3, a4);
  v13 = v12;
  v14 = a4[2](a3, a4);
  v16 = v15;
  v17 = a4[3](a3, a4);
  *v10 = a1;
  *(v10 + 1) = v11;
  *(v10 + 2) = v13;
  *(v10 + 3) = v14;
  *(v10 + 4) = v16;
  *(v10 + 5) = v17;
  *(v10 + 6) = v18;
  v19 = &v10[*(type metadata accessor for PromptTreeIdentifier.TurnChange(0) + 32)];
  sub_22C90068C();
  swift_storeEnumTagMultiPayload();
  v20 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v21 = swift_allocBox();
  v23 = v22;
  v24 = *(v20 + 48);
  sub_22C45769C(v10, v22);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v25 = swift_allocBox();
  sub_22C486784();
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  v27 = v34;
  *(inited + 32) = v25 | 0x2000000000000000;
  *(inited + 40) = v27;

  v28 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C457700(v10);
  sub_22C369AEC();
  v29 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v29 + 16) = v30;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v31 = swift_allocObject();
  *(v31 + 16) = v29 | 0x6000000000000000;
  *(v23 + v24) = v31;
  return v21 | 0x4000000000000000;
}

uint64_t sub_22C45769C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C457700(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C457764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 400))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_22C4577A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ExternalAgentOutcomeParser_v1_0()
{
  result = qword_281430918;
  if (!qword_281430918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4578D0()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C457964()
{
  v0 = sub_22C3A5908(&qword_27D9BC428, &unk_22C912FD0);
  v1 = sub_22C369914(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - v4;
  v6 = sub_22C3A5908(&qword_27D9BC430, &qword_22C92BFD0);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  sub_22C90258C();
  v12 = sub_22C90241C();
  if (sub_22C370B74(v5, 1, v12) == 1)
  {
    v13 = &qword_27D9BC428;
    v14 = &unk_22C912FD0;
    v15 = v5;
LABEL_5:
    sub_22C376B84(v15, v13, v14);
    return MEMORY[0x277D84F90];
  }

  sub_22C90236C();
  sub_22C36BBA8(v12);
  (*(v16 + 8))(v5, v12);
  v17 = sub_22C90240C();
  if (sub_22C370B74(v11, 1, v17) == 1)
  {
    v13 = &qword_27D9BC430;
    v14 = &qword_22C92BFD0;
    v15 = v11;
    goto LABEL_5;
  }

  v20 = sub_22C9023FC();
  v22 = v21;
  sub_22C36BBA8(v17);
  (*(v23 + 8))(v11, v17);
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22C90F800;
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = 3;
    *(v26 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v26 + 32) = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = 4;
    *(v28 + 24) = 1;
    sub_22C369AEC();
    v29 = swift_allocObject();
    *(v29 + 16) = v26 | 0xA000000000000000;
    *(v28 + 32) = v29;
    *(v18 + 32) = 0;
    *(v18 + 40) = v28 | 0xA000000000000002;
    return v18;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22C457C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22C9089DC();
  v4[6] = v5;
  sub_22C3699B8(v5);
  v4[7] = v6;
  v8 = *(v7 + 64);
  v4[8] = sub_22C3699D4();
  v9 = sub_22C908A0C();
  v4[9] = v9;
  sub_22C3699B8(v9);
  v4[10] = v10;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v13 = type metadata accessor for PromptTreeIdentifier(0);
  v4[15] = v13;
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v4[16] = sub_22C3699D4();
  v16 = sub_22C902D0C();
  v4[17] = v16;
  sub_22C3699B8(v16);
  v4[18] = v17;
  v19 = *(v18 + 64);
  v4[19] = sub_22C3699D4();
  v20 = type metadata accessor for DirectionalTypedValue();
  v4[20] = v20;
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  v4[21] = sub_22C3699D4();
  v23 = sub_22C9063DC();
  v4[22] = v23;
  sub_22C3699B8(v23);
  v4[23] = v24;
  v26 = *(v25 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v27 = sub_22C9093BC();
  v4[28] = v27;
  sub_22C3699B8(v27);
  v4[29] = v28;
  v30 = *(v29 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v31 = sub_22C9020CC();
  v4[32] = v31;
  sub_22C3699B8(v31);
  v4[33] = v32;
  v34 = *(v33 + 64);
  v4[34] = sub_22C3699D4();
  v35 = sub_22C9026BC();
  v4[35] = v35;
  sub_22C3699B8(v35);
  v4[36] = v36;
  v38 = *(v37 + 64);
  v4[37] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C457F78, 0, 0);
}

uint64_t sub_22C457F78()
{
  v243 = v0;
  v2 = v0[2];
  v3 = sub_22C90761C();
  v4 = sub_22C3A5968(v3);
  v6 = v5;

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v6;
    sub_22C3716D4();
    v8 = swift_allocObject();
    *(v8 + 16) = 3;
    *(v8 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v8 + 32) = v9;
    sub_22C3716D4();
    v10 = swift_allocObject();
    *(v10 + 16) = 4;
    *(v10 + 24) = 1;
    sub_22C369AEC();
    v11 = swift_allocObject();
    *(v11 + 16) = v8 | 0xA000000000000000;
    *(v10 + 32) = v11;
    sub_22C591F6C();
    v13 = v12;
    v14 = *(v12 + 16);
    if (v14 >= *(v12 + 24) >> 1)
    {
      sub_22C591F6C();
      v13 = v194;
    }

    *(v13 + 16) = v14 + 1;
    v15 = v13 + 16 * v14;
    *(v15 + 32) = 0;
    *(v15 + 40) = v10 | 0xA000000000000002;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  v19 = v0[2];
  sub_22C9075FC();
  v20 = (*(v16 + 88))(v17, v18);
  v240 = v13;
  if (v20 != *MEMORY[0x277D1CBF0])
  {
    if (v20 == *MEMORY[0x277D1CB98] || v20 == *MEMORY[0x277D1CBA8] || v20 == *MEMORY[0x277D1CBB0] || v20 == *MEMORY[0x277D1CBB8] || v20 == *MEMORY[0x277D1CBD0] || v20 == *MEMORY[0x277D1CBD8] || v20 == *MEMORY[0x277D1CBC0] || v20 == *MEMORY[0x277D1CBE0] || v20 == *MEMORY[0x277D1CBA0] || v20 == *MEMORY[0x277D1CBC8] || v20 == *MEMORY[0x277D1CBE8])
    {
      v55 = v0[25];
      v57 = v0[13];
      v56 = v0[14];
      v59 = v0[9];
      v58 = v0[10];
      v60 = v0[3];
      (*(v0[36] + 8))(v0[37], v0[35]);
      sub_22C903F7C();
      v61 = *(v58 + 16);
      (v61)(v56, v60, v59);
      (v61)(v57, v60, v59);
      v62 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C36D6F8();
      v64 = os_log_type_enabled(v62, v63);
      v233 = v0[25];
      v66 = v0[22];
      v65 = v0[23];
      v68 = v0[13];
      v67 = v0[14];
      v70 = v0[9];
      v69 = v0[10];
      if (v64)
      {
        sub_22C36BC30();
        v71 = sub_22C38A8A0();
        v241[0] = v71;
        *v61 = 136315650;
        *(v61 + 4) = sub_22C374A78("handle(outcome:event:parsingState:)", v198, v203, v208, v213, v217, v221, v71, v228, v233, v240);
        *(v61 + 12) = 2080;
        sub_22C9088FC();
        v72 = sub_22C458FE4();
        v66(v72);
        sub_22C36F9F4(v62, v1, v241);

        sub_22C459004();
        v73 = sub_22C90898C();
        v81 = sub_22C3726EC(v73, v74, v75, v76, v77, v78, v79, v80, v199, v204, v209);
        v82(v81);
        v83 = sub_22C459028();
        v66(v83);
        v84 = sub_22C36F9F4(v65, v62, v241);

        *(v61 + 24) = v84;
        sub_22C38B840(&dword_22C366000, v85, v86, "[%s] Unsupported ExternalAgentOutcome outcome type. Please file a radar on Full Planner Runtime: %s %s", v87, v88, v89, v90, v200, v205, v210, v214, v218);
        sub_22C37F0D4();
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v229 + 8))(v234, v222);
      }

      else
      {

        v150 = *(v69 + 8);
        v151 = sub_22C459028();
        v150(v151);
        (v150)(v67, v70);
        (*(v65 + 8))(v233, v66);
      }
    }

    else
    {
      v113 = v0[24];
      v115 = v0[11];
      v114 = v0[12];
      v116 = v0[9];
      v117 = v0[10];
      v118 = v0[3];
      sub_22C903F7C();
      v119 = *(v117 + 16);
      (v119)(v114, v118, v116);
      v120 = sub_22C36D29C();
      (v119)(v120);
      v121 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C36D6F8();
      v123 = os_log_type_enabled(v121, v122);
      v124 = v0[23];
      v237 = v0[24];
      v125 = v0[22];
      v127 = v0[11];
      v126 = v0[12];
      v129 = v0[9];
      v128 = v0[10];
      if (v123)
      {
        sub_22C36BC30();
        v130 = sub_22C38A8A0();
        v241[0] = v130;
        *v119 = 136315650;
        *(v119 + 4) = sub_22C374A78("handle(outcome:event:parsingState:)", v198, v203, v208, v213, v217, v221, v130, v228, v237, v240);
        *(v119 + 12) = 2080;
        sub_22C9088FC();
        v131 = sub_22C458FE4();
        v125(v131);
        sub_22C36F9F4(v121, v1, v241);

        sub_22C459004();
        v132 = sub_22C90898C();
        v140 = sub_22C3726EC(v132, v133, v134, v135, v136, v137, v138, v139, v201, v206, v211);
        v141(v140);
        v142 = sub_22C459028();
        v125(v142);
        v143 = sub_22C36F9F4(v124, v121, v241);

        *(v119 + 24) = v143;
        sub_22C38B840(&dword_22C366000, v144, v145, "[%s] Unknown ExternalAgentOutcome outcome type. Please file a radar on Full Planner Runtime: %s %s", v146, v147, v148, v149, v202, v207, v212, v215, v219);
        sub_22C37F0D4();
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v231 + 8))(v238, v224);
      }

      else
      {

        v163 = *(v128 + 8);
        v164 = sub_22C459028();
        v163(v164);
        (v163)(v126, v129);
        (*(v124 + 8))(v237, v125);
      }

      (*(v0[36] + 8))(v0[37], v0[35]);
    }

    goto LABEL_55;
  }

  v21 = v0[37];
  v22 = v0[34];
  v23 = v0[32];
  v24 = v0[33];
  v26 = v0[30];
  v25 = v0[31];
  v28 = v0[28];
  v27 = v0[29];
  (*(v0[36] + 96))(v21, v0[35]);
  (*(v24 + 32))(v22, v21, v23);
  sub_22C90207C();
  v29 = sub_22C90931C();
  v30 = swift_allocBox();
  v31 = *MEMORY[0x277D729A0];
  sub_22C36BBA8(v29);
  (*(v32 + 104))();
  *v26 = v30;
  (*(v27 + 104))(v26, *MEMORY[0x277D72A58], v28);
  sub_22C36D29C();
  LOBYTE(v29) = sub_22C9093AC();
  v33 = *(v27 + 8);
  v33(v26, v28);
  v33(v25, v28);
  if (v29)
  {
    v34 = v0[27];
    sub_22C903F7C();
    v35 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C36D6F8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[33];
    v39 = v0[34];
    v40 = v0[32];
    v41 = v0[27];
    v42 = v0[22];
    v43 = v0[23];
    if (v37)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22C366000, v35, v23, "[ExternalAgentOutcome] Primitive none provided as success value. Skipping rendering.", v44, 2u);
      sub_22C3699EC();
    }

    (*(v43 + 8))(v41, v42);
    goto LABEL_11;
  }

  v91 = v0[34];
  v93 = v0[20];
  v92 = v0[21];
  v94 = v0[18];
  v95 = v0[19];
  v96 = v0[17];
  v98 = v0[4];
  v97 = v0[5];
  v99 = v97 + *(type metadata accessor for ExternalAgentOutcomeParser_v1_0() + 20);
  v100 = *(v99 + 160);
  v101 = *(v99 + 168);
  ObjectType = swift_getObjectType();
  sub_22C90207C();
  swift_storeEnumTagMultiPayload();
  v102 = *(v98 + 32);
  v103 = *(v94 + 104);
  v103(v95, *MEMORY[0x277D1D7F8], v96);
  (*(v101 + 8))(v241, v92, 0, v102, v95, ObjectType, v101);
  (*(v94 + 8))(v95, v96);
  sub_22C458EC8(v92, type metadata accessor for DirectionalTypedValue);
  v104 = v241[0];
  v226 = v241[3];
  v230 = v241[2];
  v223 = v241[4];
  v236 = v241[1];
  if (v242)
  {
    v105 = v0[26];
    sub_22C903F7C();
    v106 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C36D6F8();
    v108 = os_log_type_enabled(v106, v107);
    v38 = v0[33];
    v39 = v0[34];
    v40 = v0[32];
    v109 = v0[26];
    v111 = v0[22];
    v110 = v0[23];
    if (!v108)
    {

      (*(v110 + 8))(v109, v111);
LABEL_11:
      (*(v38 + 8))(v39, v40);
      goto LABEL_55;
    }

    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_22C366000, v106, v100, "[ExternalAgentOutcome] Unable to find a prompt reference for success.returnValue", v112, 2u);
    sub_22C3699EC();

    sub_22C456CE4(v104, v236, v230, v226, v223, 1);
    (*(v110 + 8))(v109, v111);
    (*(v38 + 8))(v39, v40);
  }

  else
  {
    v153 = v0[16];
    v152 = v0[17];
    v154 = v0[15];
    v155 = v0[2];
    sub_22C36C640(v153, 2, 3, v152);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    sub_22C901FAC();
    v156 = swift_allocBox();

    sub_22C9068FC();
    v157 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v153 + v157) = v156;
    v103(v153 + v157, *MEMORY[0x277D1D798], v152);
    sub_22C36D29C();
    swift_storeEnumTagMultiPayload();
    v158 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v159 = swift_allocBox();
    v161 = v160;
    sub_22C45769C(v153, v160);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v162 = swift_allocBox();
    sub_22C486784();
    v177 = sub_22C458C64(v162 | 0x2000000000000000, v104);
    v178 = v0[16];
    v179 = *(v158 + 48);
    sub_22C369C14();
    sub_22C458EC8(v180, v181);

    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v182 = swift_allocObject();
    *(v182 + 16) = v177;
    *(v161 + v179) = v182;
    v183 = v240;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v195 = *(v240 + 16);
      sub_22C591F6C();
      v183 = v196;
    }

    v185 = v159 | 0x4000000000000002;
    v186 = *(v183 + 16);
    if (v186 >= *(v183 + 24) >> 1)
    {
      sub_22C591F6C();
      v183 = v197;
    }

    v188 = v0[33];
    v187 = v0[34];
    v189 = v0[32];

    sub_22C456CE4(v104, v236, v230, v226, v223, 0);
    v190 = *(v188 + 8);
    v191 = sub_22C36D29C();
    v192(v191);
    *(v183 + 16) = v186 + 1;
    v240 = v183;
    v193 = v183 + 16 * v186;
    *(v193 + 32) = 5;
    *(v193 + 40) = v185;
  }

LABEL_55:
  v165 = v0[37];
  v166 = v0[34];
  v168 = v0[30];
  v167 = v0[31];
  v170 = v0[26];
  v169 = v0[27];
  v172 = v0[24];
  v171 = v0[25];
  v173 = v0[21];
  v174 = v0[19];
  v216 = v0[16];
  v220 = v0[14];
  v225 = v0[13];
  v227 = v0[12];
  v232 = v0[11];
  v239 = v0[8];

  v175 = v0[1];

  return v175(v240);
}