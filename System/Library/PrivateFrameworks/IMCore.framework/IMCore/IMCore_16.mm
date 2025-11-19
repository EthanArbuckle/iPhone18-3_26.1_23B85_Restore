uint64_t sub_1A84C8340(void *a1)
{
  v2 = v1;
  v178 = type metadata accessor for ImportExport.Message();
  v4 = *(*(v178 - 1) + 64);
  v5 = MEMORY[0x1EEE9AC00](v178);
  v7 = (&v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v169 = &v147 - v8;
  v9 = sub_1A84E5C9C();
  v175 = *(v9 - 8);
  v176 = v9;
  v10 = *(v175 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v147 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v147 - v17;
  v18 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v174 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v147 - v25;
  v27 = *(v2 + 32);
  v28 = *(v2 + 40);
  v177 = a1;
  v30 = a1[1];
  v29 = a1[2];
  if ((v27 != v30 || v28 != v29) && (sub_1A84E67AC() & 1) == 0)
  {
    goto LABEL_93;
  }

  v171 = v29;
  v172 = v30;
  v32 = *v2;
  v31 = *(v2 + 8);
  v33 = sub_1A84E5D8C();
  v13 = IMDMessageRecordCopyMessageForGUID();

  if (v13)
  {

    sub_1A84E5C8C();
    sub_1A84CA1FC(v2, v7, type metadata accessor for ImportExport.Message);
    v34 = sub_1A84E5C7C();
    v35 = sub_1A84E617C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v186 = v37;
      *v36 = 136315138;
      v38 = *v7;
      v39 = v7[1];

      sub_1A84CA264(v7, type metadata accessor for ImportExport.Message);
      v40 = sub_1A82446BC(v38, v39, &v186);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1A823F000, v34, v35, "not importing duplicated message: %s", v36, 0xCu);
      sub_1A8244788(v37);
      MEMORY[0x1AC56D3F0](v37, -1, -1);
      MEMORY[0x1AC56D3F0](v36, -1, -1);

      (*(v175 + 8))(v16, v176);
      v41 = 0;
      return v41 & 1;
    }

    sub_1A84CA264(v7, type metadata accessor for ImportExport.Message);
    (*(v175 + 8))(v16, v176);
LABEL_13:
    v41 = 0;
    return v41 & 1;
  }

  v166 = v32;
  v165 = v31;
  v173 = sub_1A84C97E0();
  v42 = JWEncodeCodableObject();
  if (v42)
  {
    v43 = v42;
    v44 = sub_1A84E55FC();
    v46 = v45;

    v47 = sub_1A84E55EC();
    sub_1A83F5994(v44, v46);
    sub_1A84C9B30(&v180);
    v48 = v178[20];
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A84E595C();
    if (v186)
    {
      if (v186[2])
      {
        sub_1A84A5630(v186);
        v13 = sub_1A84E5D2C();

        v49 = JWEncodeDictionary();

        if (v49)
        {

          v50 = sub_1A84E55FC();
          v52 = v51;

          v168 = sub_1A84E55EC();
          sub_1A83F5994(v50, v52);
          goto LABEL_16;
        }

        goto LABEL_92;
      }
    }

    v168 = 0;
LABEL_16:
    v164 = v47;
    v53 = [v173 string];
    if (!v53)
    {
      sub_1A84E5DBC();
      v54 = sub_1A84E5D8C();

      v53 = v54;
    }

    v167 = v53;
    ImportExport.Message.receivedDate.getter(v26);
    v55 = sub_1A84E56DC();
    v56 = *(v55 - 8);
    v57 = *(v56 + 48);
    if (v57(v26, 1, v55) == 1)
    {
      sub_1A824B2D4(v26, &qword_1EB2E6F48, &unk_1A8501F00);
      v163 = 0;
    }

    else
    {
      v58 = sub_1A84E565C();
      v163 = [v58 __im_nanosecondTimeInterval];

      (*(v56 + 8))(v26, v55);
    }

    v59 = v174;
    ImportExport.Message.readDate.getter(v24);
    v60 = v57(v24, 1, v55);
    v61 = v168;
    if (v60 == 1)
    {
      sub_1A824B2D4(v24, &qword_1EB2E6F48, &unk_1A8501F00);
      v162 = 0;
    }

    else
    {
      v62 = sub_1A84E565C();
      v162 = [v62 __im_nanosecondTimeInterval];

      (*(v56 + 8))(v24, v55);
    }

    ImportExport.Message.deliveredDate.getter(v59);
    if (v57(v59, 1, v55) == 1)
    {
      sub_1A824B2D4(v59, &qword_1EB2E6F48, &unk_1A8501F00);
      v63 = 0;
    }

    else
    {
      v64 = sub_1A84E565C();
      v63 = [v64 __im_nanosecondTimeInterval];

      (*(v56 + 8))(v59, v55);
    }

    v65 = v179;
    v66 = v177[9];
    if (v66)
    {
      if ((v66 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v67 = v177[8] & 0xFFFFFFFFFFFFLL;
      }

      v161 = v67 != 0;
    }

    else
    {
      v161 = 0;
    }

    v186 = *(v2 + 24);
    sub_1A8492750(&v186);
    v68 = sub_1A84E688C();
    v69 = sub_1A84E5D8C();
    *(v2 + 208);
    *(v2 + 208);
    *(v2 + 208);
    v70 = v69;
    v71 = v164;
    v174 = sub_1A84E5D8C();

    v72 = v2 + v178[24];
    v73 = *(v72 + 40);
    v74 = *(v72 + 48);
    v75 = sub_1A84E5D8C();
    if (*(v2 + 104))
    {
      v76 = *(v2 + 96);
      v164 = sub_1A84E5D8C();
    }

    else
    {
      v164 = 0;
    }

    sub_1A84CA0E4(v177);
    if (v65)
    {

      v185 = v180;
      sub_1A824B2D4(&v185, &qword_1EB2E74C0, &unk_1A8502938);
      v184 = v181;
      sub_1A824B2D4(&v184, &qword_1EB2E74C0, &unk_1A8502938);

      return v41 & 1;
    }

    v152 = v75;
    v153 = v63;
    v179 = 0;

    v151 = sub_1A84E5D8C();

    v78 = *(v2 + 176);
    v79 = *(v2 + 184);
    v150 = sub_1A84E5D8C();
    v80 = 0;
    v81 = *(v2 + 216);
    v82 = *(v81 + 16);
    while (v82 != v80)
    {
      v83 = *(type metadata accessor for ImportExport.MessagePart() - 8);
      v84 = v81 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v80++;
      if (*(v84 + 120))
      {
        v85 = *(v84 + 112);
        v86 = *(v84 + 120);

        v160 = sub_1A84E5D8C();

        v82 = *(v81 + 16);
        goto LABEL_44;
      }
    }

    v160 = 0;
LABEL_44:
    v87 = 0;
    do
    {
      if (v82 == v87)
      {
        v155 = 0;
        goto LABEL_52;
      }

      v88 = *(type metadata accessor for ImportExport.MessagePart() - 8);
      v89 = v81 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v87++;
    }

    while (!*(v89 + 120));
    LOBYTE(v186) = *(v89 + 104);
    v90 = ImportExport.Message.Reaction.ReactionType.associatedMessageType.getter();
    if (v91)
    {
      v92 = 0;
    }

    else
    {
      v92 = v90;
    }

    v155 = v92;
LABEL_52:
    v93 = 0;
    while (v82 != v93)
    {
      v94 = *(type metadata accessor for ImportExport.MessagePart() - 8);
      v95 = v81 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93++;
      if (*(v95 + 120))
      {
        v154 = *(v95 + 128);
        goto LABEL_57;
      }
    }

    v154 = 0;
LABEL_57:
    v183 = v180;
    if (*(&v180 + 1))
    {
      v157 = sub_1A84E5D8C();
    }

    else
    {
      v157 = 0;
    }

    v182 = v181;
    if (*(&v181 + 1))
    {
      v159 = sub_1A84E5D8C();
      if (*(v2 + 88))
      {
LABEL_62:
        v96 = *(v2 + 80);
        v156 = sub_1A84E5D8C();
        goto LABEL_65;
      }
    }

    else
    {
      v159 = 0;
      if (*(v2 + 88))
      {
        goto LABEL_62;
      }
    }

    v156 = 0;
LABEL_65:
    v97 = 0;
    v98 = *(v81 + 16);
    v177 = v71;
    v158 = v70;
    while (v98 != v97)
    {
      v99 = *(type metadata accessor for ImportExport.MessagePart() - 8);
      v100 = v81 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v97++;
      if (*(v100 + 72))
      {
        v101 = *(v100 + 64);
        v102 = *(v100 + 72);

        v103 = sub_1A84E5D8C();

        v98 = *(v81 + 16);
        goto LABEL_70;
      }
    }

    v103 = 0;
LABEL_70:
    v104 = 0;
    while (v98 != v104)
    {
      v105 = *(type metadata accessor for ImportExport.MessagePart() - 8);
      v106 = (v81 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v104++);
      if (v106[9])
      {
        v108 = v106[11];
        v107 = v106[12];
        v109 = v106[10];
        v110 = v106[9];

        ThreadIdentifierOriginatorPart = IMMessageCreateThreadIdentifierOriginatorPart();

        goto LABEL_75;
      }
    }

    ThreadIdentifierOriginatorPart = 0;
LABEL_75:
    v112 = *(v81 + 16);
    v113 = (v2 + v178[21]);
    v114 = v68;
    if (v113[1])
    {
      v115 = *v113;
      v116 = sub_1A84E5D8C();
    }

    else
    {
      v116 = 0;
    }

    v117 = *(v81 + 16);
    v118 = 0;
    while (v117 != v118)
    {
      v119 = *(type metadata accessor for ImportExport.MessagePart() - 8);
      v120 = (v81 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v118++);
      if (v120[15])
      {
        if (v120[18])
        {
          v121 = v120[17];
          v122 = v120[18];

          v123 = sub_1A84E5D8C();

          goto LABEL_84;
        }

        break;
      }
    }

    v123 = 0;
LABEL_84:
    v149 = v123;
    v178 = ThreadIdentifierOriginatorPart;
    v124 = v150;
    v155 = v116;
    v125 = v151;
    v126 = v164;
    v154 = v103;
    v127 = v152;
    v128 = v174;
    v148 = v114;
    v129 = IMDMessageRecordCreate();
    sub_1A824B2D4(&v183, &qword_1EB2E74C0, &unk_1A8502938);
    sub_1A824B2D4(&v182, &qword_1EB2E74C0, &unk_1A8502938);

    v130 = v177;
    if (v129)
    {
      v131 = sub_1A84E5D8C();
      v132 = sub_1A84E5D8C();
      IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded();

      v133 = v179;
      sub_1A84C9D24();

      if (!v133)
      {
        v41 = 1;
      }

      return v41 & 1;
    }

    v134 = v170;
    sub_1A84E5C8C();
    v135 = v169;
    sub_1A84CA1FC(v2, v169, type metadata accessor for ImportExport.Message);
    v136 = sub_1A84E5C7C();
    v137 = sub_1A84E619C();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v186 = v139;
      *v138 = 136315138;
      v140 = ImportExport.Message.description.getter();
      v142 = v141;
      sub_1A84CA264(v135, type metadata accessor for ImportExport.Message);
      v143 = sub_1A82446BC(v140, v142, &v186);

      *(v138 + 4) = v143;
      _os_log_impl(&dword_1A823F000, v136, v137, "Failed to create IMDMessageRecord for message %s", v138, 0xCu);
      sub_1A8244788(v139);
      MEMORY[0x1AC56D3F0](v139, -1, -1);
      MEMORY[0x1AC56D3F0](v138, -1, -1);
    }

    else
    {

      sub_1A84CA264(v135, type metadata accessor for ImportExport.Message);
    }

    (*(v175 + 8))(v134, v176);
    goto LABEL_13;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_1A84E5C8C();
  v144 = sub_1A84E5C7C();
  v145 = sub_1A84E619C();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&dword_1A823F000, v144, v145, "trying to import into the wrong conversation", v146, 2u);
    MEMORY[0x1AC56D3F0](v146, -1, -1);
  }

  (*(v175 + 8))(v13, v176);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

id sub_1A84C97E0()
{
  v1 = type metadata accessor for ImportExport.MessagePart();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E8D50, &qword_1A850B138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v28 = (&v28 - v8);
  v9 = sub_1A83EA2FC(&qword_1EB2E8D58, &unk_1A850B140);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - v14);
  result = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  i = 0;
  v18 = *(v0 + 216);
  v19 = *(v18 + 16);
  v20 = (v6 + 56);
  v21 = (v6 + 48);
  v30 = v18;
  v31 = result;
  if (v19)
  {
    goto LABEL_3;
  }

LABEL_2:
  v22 = 1;
  for (i = v19; ; ++i)
  {
    (*v20)(v13, v22, 1, v5);
    sub_1A8412580(v13, v15, &qword_1EB2E8D58, &unk_1A850B140);
    if ((*v21)(v15, 1, v5) == 1)
    {
      return v31;
    }

    v26 = *v15;
    result = sub_1A842AD50(v15 + *(v5 + 48), v4, type metadata accessor for ImportExport.MessagePart);
    if (v26 < 0)
    {
      break;
    }

    v27 = sub_1A83F55D8(v26);
    [v31 appendAttributedString_];

    result = sub_1A84CA264(v4, type metadata accessor for ImportExport.MessagePart);
    v18 = v30;
    if (i == v19)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    if (i >= *(v18 + 16))
    {
      goto LABEL_13;
    }

    v23 = v28;
    v24 = v18 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * i;
    v25 = *(v5 + 48);
    *v28 = i;
    sub_1A84CA1FC(v24, v23 + v25, type metadata accessor for ImportExport.MessagePart);
    sub_1A8412580(v23, v13, &qword_1EB2E8D50, &qword_1A850B138);
    v22 = 0;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A84C9B30@<X0>(void *a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for ImportExport.MessagePart();
  v3 = *(*(v2 - 1) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 216);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v25 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_1A84CA1FC(v14, v7, type metadata accessor for ImportExport.MessagePart);
      v16 = &v7[v2[12]];
      v17 = *(v16 + 1);
      if (v17)
      {
        v12 = *v16;
        v18 = *(v16 + 1);

        v13 = v17;
      }

      v19 = &v7[v2[14]];
      v20 = *(v19 + 1);
      if (v20)
      {
        v25 = *v19;

        v11 = v20;
      }

      v21 = v7[v2[17]];
      result = sub_1A84CA264(v7, type metadata accessor for ImportExport.MessagePart);
      if (v21 <= 1)
      {
        if (v21)
        {
          v10 = 1;
        }

        else
        {
          v10 = v21;
        }
      }

      else if (v21 == 2)
      {
        v10 = 2;
      }

      else if (v21 == 3)
      {
        v10 = 3;
      }

      v14 += v15;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v25 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v22 = v24;
  v23 = v25;
  *v24 = v12;
  v22[1] = v13;
  v22[2] = v23;
  v22[3] = v11;
  v22[4] = v10;
  return result;
}

uint64_t sub_1A84C9D24()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for ImportExport.Attachment();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImportExport.MessagePart();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v16 = v0[27];
  v41 = *(v16 + 16);
  if (v41)
  {
    v38 = 0;
    v39 = v5;
    v36 = v9;
    v17 = 0;
    v18 = *(result + 44);
    v40 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = (v6 + 48);
    v33 = v11;
    v34 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v18;
    v35 = v19;
    while (v17 < *(v16 + 16))
    {
      sub_1A84CA1FC(v40 + *(v11 + 72) * v17, v15, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v15[v18], v4, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84CA264(v15, type metadata accessor for ImportExport.MessagePart);
      if ((*v19)(v4, 1, v39) == 1)
      {
        result = sub_1A824B2D4(v4, &qword_1EB2E6F50, &unk_1A8502920);
      }

      else
      {
        v20 = v16;
        v21 = v36;
        sub_1A842AD50(v4, v36, type metadata accessor for ImportExport.Attachment);
        v22 = *v37;
        v23 = v37[1];
        v24 = v42;
        v25 = sub_1A8463774(0, 0);
        if (v24)
        {
          return sub_1A84CA264(v21, type metadata accessor for ImportExport.Attachment);
        }

        v26 = v25;
        v27 = sub_1A84E5D8C();
        v28 = *v21;
        v29 = v21[1];
        v30 = sub_1A84E5D8C();
        IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();

        result = sub_1A84CA264(v21, type metadata accessor for ImportExport.Attachment);
        v42 = 0;
        if (v26)
        {
          v31 = __OFADD__(v38++, 1);
          v19 = v35;
          if (v31)
          {
            goto LABEL_17;
          }

          v16 = v20;
          v11 = v33;
          v15 = v34;
          v18 = v32;
        }

        else
        {
          v11 = v33;
          v15 = v34;
          v16 = v20;
          v18 = v32;
          v19 = v35;
        }
      }

      if (v41 == ++v17)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A84CA0E4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
  }

  else
  {
    v3 = sub_1A84E67AC();

    if ((v3 & 1) == 0)
    {
      v9 = v1 + *(type metadata accessor for ImportExport.Message() + 92);
      v5 = v9 + 40;
      v6 = (v9 + 48);
      goto LABEL_8;
    }
  }

  v4 = *(a1 + 240);
  if (*(v4 + 16) != 1)
  {
    sub_1A841D4A8();
    swift_allocError();
    *v7 = 0xD000000000000019;
    *(v7 + 8) = 0x80000001A85347C0;
    *(v7 + 16) = 6;
    return swift_willThrow();
  }

  v5 = v4 + 72;
  v6 = (v4 + 80);
LABEL_8:
  v10 = *v6;
  return *v5;
}

uint64_t sub_1A84CA1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84CA264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ImportExport.ParticipantAddress.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:phoneNumber:emailAddress:fullName:contactID:sequenceID:)(char *a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = *a1;
  v16 = sub_1A84E5D8C();
  v17 = [v16 _stripFZIDPrefix];

  if (v17)
  {
    v18 = sub_1A84E5DBC();
    v25 = v19;
    v26 = v18;

    v20 = sub_1A84E5D8C();
    v21 = [v20 _stripFZIDPrefix];

    if (v21)
    {

      v22 = sub_1A84E5DBC();
      v24 = v23;

      *a5 = a13;
      *(a5 + 8) = v26;
      *(a5 + 16) = v25;
      *(a5 + 24) = v22;
      *(a5 + 32) = v24;
      *(a5 + 40) = v27;
      *(a5 + 48) = a2;
      *(a5 + 56) = a3;
      *(a5 + 64) = a4;
      *(a5 + 72) = a6;
      *(a5 + 80) = a7;
      *(a5 + 88) = a8;
      *(a5 + 96) = a9;
      *(a5 + 104) = a10;
      *(a5 + 112) = a11;
      *(a5 + 120) = a12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Bool __swiftcall ImportExport.ParticipantAddress.contains(_:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    return 0;
  }

  v2 = HIBYTE(a1.value._object) & 0xF;
  if ((a1.value._object & 0x2000000000000000) == 0)
  {
    v2 = a1.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    if (v4 == a1.value._countAndFlagsBits && v3 == a1.value._object)
    {
      return 1;
    }

    countAndFlagsBits = a1.value._countAndFlagsBits;
    object = a1.value._object;
    v10 = sub_1A84E67AC();
    a1.value._object = object;
    v11 = v10;
    a1.value._countAndFlagsBits = countAndFlagsBits;
    if (v11)
    {
      return 1;
    }
  }

  v12 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v12 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    return 0;
  }

  if (v5 == a1.value._countAndFlagsBits && v6 == a1.value._object)
  {
    return 1;
  }

  return sub_1A84E67AC();
}

uint64_t ImportExport.ParticipantAddress.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v25 = v0[4];
  v26 = v0[3];
  v29 = *(v0 + 40);
  v27 = v0[7];
  v28 = v0[6];
  v3 = v0[9];
  v24 = v0[10];
  v22 = v0[8];
  v23 = v0[11];
  v4 = v0[13];
  v20 = *v0;
  v21 = v0[12];
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A850B130);
  MEMORY[0x1AC56A990](0x203A6469203ALL, 0xE600000000000000);

  MEMORY[0x1AC56A990](v1, v2);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A85347E0);
  v5 = sub_1A84E5D8C();
  v6 = [v5 _appearsToBePhoneNumber];

  if (v6)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v7, v8);

  MEMORY[0x1AC56A990](0x69616D457369202CLL, 0xEB00000000203A6CLL);
  v9 = sub_1A84E5D8C();
  v10 = [v9 _appearsToBeEmail];

  if (v10)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v11, v12);

  MEMORY[0x1AC56A990](0x6E6575716573203ALL, 0xEE00203A44496563);
  v13 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](0x614E6C6C7566203ALL, 0xEC000000203A656DLL);

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v14 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v14);

  MEMORY[0x1AC56A990](0x4E656E6F6870203ALL, 0xEF203A7265626D75);

  v15 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v15);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8534800);

  v16 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v16);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8534820);
  MEMORY[0x1AC56A990](v1, v2);
  MEMORY[0x1AC56A990](0xD000000000000018, 0x80000001A8534840);
  MEMORY[0x1AC56A990](v26, v25);
  MEMORY[0x1AC56A990](0x72746E756F63202CLL, 0xEF203A65646F4379);
  MEMORY[0x1AC56A990](v28, v27);
  MEMORY[0x1AC56A990](0x636976726573202CLL, 0xEF203A6570795465);
  if (v29 > 3)
  {
    if (v29 > 5)
    {
      if (v29 == 6)
      {
        v17 = 0xE300000000000000;
        v18 = 5456722;
      }

      else
      {
        v17 = 0xEC000000534D5365;
        v18 = 0x74696C6C65746153;
      }
    }

    else if (v29 == 4)
    {
      v18 = 5459283;
      v17 = 0xE300000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
      v18 = 0x656D695465636146;
    }
  }

  else if (v29 > 1)
  {
    if (v29 == 2)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xEC0000006574694CLL;
    }

    v18 = 0x6567617373654D69;
  }

  else if (v29)
  {
    v17 = 0xE300000000000000;
    v18 = 7958113;
  }

  else
  {
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC56A990](v18, v17);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

uint64_t ImportExport.ParticipantAddress.canonicalizedURI.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.canonicalizedURI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ImportExport.ParticipantAddress.uncanonicalizedURI.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.countryCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.phoneNumber.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.emailAddress.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.fullName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.contactID.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.contactID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

BOOL ImportExport.ParticipantAddress.contains(_:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v11 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    if (v6 == v2 && v8 == v3)
    {
      return 1;
    }

    v14 = v1[1];
    v15 = v1[2];
    if (sub_1A84E67AC())
    {
      return 1;
    }
  }

  v16 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v16 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (v9 == v2 && v10 == v3 || (sub_1A84E67AC() & 1) != 0))
  {
    return 1;
  }

  else
  {
LABEL_19:
    v22 = *(v1 + 9);
    v23 = *(v1 + 11);
    v24 = *(v1 + 13);
    v25 = v1[15];
    v20 = *(v1 + 5);
    v21 = *(v1 + 7);
    v18.value._countAndFlagsBits = v4;
    v18.value._object = v5;
    return ImportExport.ParticipantAddress.contains(_:)(v18);
  }
}

unint64_t sub_1A84CAD94(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65636E6575716573;
    v6 = 0xD000000000000012;
    if (a1 != 2)
    {
      v6 = 0x5465636976726573;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0x6464416C69616D65;
    v2 = 0x656D614E6C6C7566;
    if (a1 != 7)
    {
      v2 = 0x49746361746E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0x6D754E656E6F6870;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A84CAEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84CC2EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84CAF24(uint64_t a1)
{
  v2 = sub_1A84CBE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84CAF60(uint64_t a1)
{
  v2 = sub_1A84CBE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ParticipantAddress.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8D60, &qword_1A850B170);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v28 = v1[2];
  v29 = v8;
  v26 = v1[4];
  v27 = v10;
  v25 = *(v1 + 40);
  v11 = v1[7];
  v24[7] = v1[6];
  v24[8] = v11;
  v12 = v1[9];
  v24[5] = v1[8];
  v24[6] = v12;
  v13 = v1[11];
  v24[3] = v1[10];
  v24[4] = v13;
  v14 = v1[13];
  v24[1] = v1[12];
  v24[2] = v14;
  v16 = v1[14];
  v15 = v1[15];
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1;
  v21 = v20;
  sub_1A82471E0(v19, v18);
  sub_1A84CBE5C();
  sub_1A84E68AC();
  v40 = 0;
  v22 = v30;
  sub_1A84E673C();
  if (v22)
  {
    return (*(v4 + 8))(v7, v21);
  }

  v39 = 1;
  sub_1A84E66CC();
  v38 = 2;
  sub_1A84E66CC();
  v37 = v25;
  v36 = 3;
  sub_1A841E278();
  sub_1A84E672C();
  v35 = 4;
  sub_1A84E66CC();
  v34 = 5;
  sub_1A84E66AC();
  v33 = 6;
  sub_1A84E66AC();
  v32 = 7;
  sub_1A84E66AC();
  v31 = 8;
  sub_1A84E66AC();
  return (*(v4 + 8))(0, v21);
}

uint64_t ImportExport.ParticipantAddress.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E8D70, &qword_1A850B178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v49 = a1;
  sub_1A82471E0(a1, v10);
  sub_1A84CBE5C();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(v49);
  }

  v12 = v6;
  LOBYTE(v58[0]) = 0;
  v13 = v5;
  v14 = sub_1A84E667C();
  LOBYTE(v58[0]) = 1;
  v15 = sub_1A84E660C();
  v48 = v16;
  LOBYTE(v58[0]) = 2;
  v17 = sub_1A84E660C();
  v47 = v18;
  v44 = v17;
  LOBYTE(v50) = 3;
  sub_1A841E440();
  sub_1A84E666C();
  v70 = LOBYTE(v58[0]);
  LOBYTE(v58[0]) = 4;
  v43 = sub_1A84E660C();
  v46 = v19;
  LOBYTE(v58[0]) = 5;
  v42 = sub_1A84E65DC();
  v45 = v20;
  LOBYTE(v58[0]) = 6;
  v40 = sub_1A84E65DC();
  v41 = v15;
  v22 = v21;
  LOBYTE(v58[0]) = 7;
  v38[0] = sub_1A84E65DC();
  v39 = v23;
  v71 = 8;
  v24 = sub_1A84E65DC();
  v38[1] = 0;
  v25 = v24;
  v27 = v26;
  (*(v12 + 8))(v9, v13);
  *&v50 = v14;
  *(&v50 + 1) = v41;
  v29 = v47;
  v28 = v48;
  *&v51 = v48;
  *(&v51 + 1) = v44;
  *&v52 = v47;
  BYTE8(v52) = v70;
  v30 = v46;
  *&v53 = v43;
  *(&v53 + 1) = v46;
  *&v54 = v42;
  *(&v54 + 1) = v45;
  *&v55 = v40;
  *(&v55 + 1) = v22;
  *&v56 = v38[0];
  *(&v56 + 1) = v39;
  *&v57 = v25;
  *(&v57 + 1) = v27;
  v31 = v50;
  v32 = v51;
  v33 = v53;
  a2[2] = v52;
  a2[3] = v33;
  *a2 = v31;
  a2[1] = v32;
  v34 = v54;
  v35 = v55;
  v36 = v57;
  a2[6] = v56;
  a2[7] = v36;
  a2[4] = v34;
  a2[5] = v35;
  sub_1A840243C(&v50, v58);
  sub_1A8244788(v49);
  v58[0] = v14;
  v58[1] = v41;
  v58[2] = v28;
  v58[3] = v44;
  v58[4] = v29;
  v59 = v70;
  v60 = v43;
  v61 = v30;
  v62 = v42;
  v63 = v45;
  v64 = v40;
  v65 = v22;
  v66 = v38[0];
  v67 = v39;
  v68 = v25;
  v69 = v27;
  return sub_1A841E128(v58);
}

uint64_t sub_1A84CB7C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A84CB804()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1A84CB834()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1A84CB864()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_1A84CB894()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

id sub_1A84CB90C(SEL *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = sub_1A84E5D8C();
  v6 = [v5 *a1];

  return v6;
}

uint64_t ImportExport.ParticipantAddress.hash(into:)()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  sub_1A84E5E5C();
}

uint64_t ImportExport.ParticipantAddress.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A84CB9F4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A84CBA40()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  sub_1A84E5E5C();
}

uint64_t sub_1A84CBA98()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t static ImportExport.ParticipantAddress.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A84CBB14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A84CBB44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A84CBB8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A84CBBE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t _s6IMCore12ImportExportO18ParticipantAddressV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v24 = *(a1 + 56);
  v25 = *(a1 + 48);
  v19 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 80);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  v23 = *(a2 + 48);
  v21 = *(a1 + 72);
  v22 = *(a2 + 56);
  v8 = *(a2 + 64);
  v16 = v8;
  v17 = *(a1 + 64);
  v20 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a1 + 104);
  v18 = *(a2 + 88);
  v10 = *(a2 + 96);
  v13 = *(a2 + 104);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && ((sub_1A84E67AC() & 1) == 0 || (sub_1A84E67AC() & 1) == 0) || (v2 != v6 || v3 != v5) && (sub_1A84E67AC() & 1) == 0 || (sub_1A8436808(v4, v7) & 1) == 0 || (v25 != v23 || v24 != v22) && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

  if (v21)
  {
    if (!v20 || (v17 != v16 || v21 != v20) && (sub_1A84E67AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (!v19)
  {
    if (!v18)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v18 || (v12 != v14 || v19 != v18) && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  result = (v15 | v13) == 0;
  if (v15 && v13)
  {
    if (v11 == v10 && v15 == v13)
    {
      return 1;
    }

    else
    {

      return sub_1A84E67AC();
    }
  }

  return result;
}

unint64_t sub_1A84CBE5C()
{
  result = qword_1EB2E8D68;
  if (!qword_1EB2E8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D68);
  }

  return result;
}

unint64_t sub_1A84CBEB0(void *a1)
{
  a1[1] = sub_1A843B484();
  a1[2] = sub_1A843B364();
  result = sub_1A84CBEE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1A84CBEE8()
{
  result = qword_1EB2E8D78;
  if (!qword_1EB2E8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D78);
  }

  return result;
}

unint64_t sub_1A84CBF3C(uint64_t a1)
{
  result = sub_1A84CBEE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A84CBF64()
{
  result = qword_1EB2E8D80;
  if (!qword_1EB2E8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D80);
  }

  return result;
}

__n128 sub_1A84CBFB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1A84CBFDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A84CC024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18ParticipantAddressV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18ParticipantAddressV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A84CC1E8()
{
  result = qword_1EB2E8D88;
  if (!qword_1EB2E8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D88);
  }

  return result;
}

unint64_t sub_1A84CC240()
{
  result = qword_1EB2E8D90;
  if (!qword_1EB2E8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D90);
  }

  return result;
}

unint64_t sub_1A84CC298()
{
  result = qword_1EB2E8D98;
  if (!qword_1EB2E8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D98);
  }

  return result;
}

uint64_t sub_1A84CC2EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85310F0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531110 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id NicknameProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NicknameProvider.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679E0);
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E61BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v3, v4, "Closing Daemon connection", v5, 2u);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection] invalidate];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NicknameProvider();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A84CC818()
{
  v1 = *(v0[19] + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v0[14] = nullsub_4;
  v0[15] = 0;
  v2 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A824B720;
  v0[13] = &unk_1F1B764C8;
  v3 = _Block_copy(v0 + 10);
  [v1 connectWithCompletion_];
  _Block_release(v3);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  v0[20] = sub_1A824431C(v4, qword_1ED7679E0);
  v5 = sub_1A84E5C7C();
  v6 = sub_1A84E61BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v5, v6, "Asked to get the nickname for the current user", v7, 2u);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  v8 = v0[19];

  v9 = *(v8 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v10 = [v9 personalNickname];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A823F000, v12, v13, "Personal nickname found", v14, 2u);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    v15 = v0[1];

    return v15(v11);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A84CCB40;
    v17 = swift_continuation_init();
    v0[17] = sub_1A83EA2FC(&qword_1EB2E8DB8, &unk_1A850B4D8);
    v0[10] = v2;
    v0[11] = 1107296256;
    v0[12] = sub_1A84CCCF8;
    v0[13] = &unk_1F1B764F0;
    v0[14] = v17;
    [v9 fetchPersonalNicknameWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A84CCB40()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A84CCC20, 0, 0);
}

uint64_t sub_1A84CCC20()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E61BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v3, v4, "Personal nickname found after fetch", v5, 2u);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_1A84CCCF8(uint64_t a1, void *a2)
{
  v3 = sub_1A82471E0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1A84CCED0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A84CCF78;

  return sub_1A84CC7F8();
}

uint64_t sub_1A84CCF78(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v6 = *(v8 + 8);

  return v6();
}

id sub_1A84CD0C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B76518;
  v6 = _Block_copy(aBlock);
  [v5 connectWithCompletion_];
  _Block_release(v6);
  v7 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1A848FD30(inited);
  swift_setDeallocating();
  sub_1A848FE98(inited + 32);
  v9 = sub_1A84E610C();

  v10 = [v7 nicknameForHandleIDs_];

  return v10;
}

id sub_1A84CD39C()
{
  v1 = *(v0 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v7[4] = nullsub_4;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A824B720;
  v7[3] = &unk_1F1B765B8;
  v2 = _Block_copy(v7);
  [v1 connectWithCompletion_];
  _Block_release(v2);
  v3 = *(v0 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v4 = sub_1A84E5D8C();
  v5 = [v3 hasObservedTransitionForHandleID_];

  return v5;
}

void sub_1A84CD59C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v17[4] = nullsub_4;
  v17[5] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A824B720;
  v17[3] = &unk_1F1B765E0;
  v9 = _Block_copy(v17);
  [v8 connectWithCompletion_];
  _Block_release(v9);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v10 = sub_1A84E5C9C();
  sub_1A824431C(v10, qword_1ED7679E0);

  v11 = sub_1A84E5C7C();
  v12 = sub_1A84E61BC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1A82446BC(a1, a2, v17);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a3 & 1;
    _os_log_impl(&dword_1A823F000, v11, v12, "Marking handle ID %s as transitioned with auto-update: %{BOOL}d", v13, 0x12u);
    sub_1A8244788(v14);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
  }

  v15 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v16 = sub_1A84E5D8C();
  [v15 markTransitionAsObservedForHandleID:v16 isAutoUpdate:a3 & 1];
}

void sub_1A84CD834(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v20[4] = nullsub_4;
  v20[5] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1A824B720;
  v20[3] = &unk_1F1B76630;
  v5 = _Block_copy(v20);
  [v4 connectWithCompletion_];
  _Block_release(v5);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679E0);
  v7 = a1;
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E61BC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1A823F000, v8, v9, "Update pending nickname with contact %@", v10, 0xCu);
    sub_1A824B2D4(v11, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  sub_1A8248300(v7);
  v14 = v13;
  v15 = [objc_opt_self() emailsForCNContact_];
  v16 = sub_1A84E5FFC();

  v17 = sub_1A8249338(v16);

  sub_1A84CDAC0(v17, v14);
  v18 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v19 = sub_1A84E610C();

  [v18 updatePendingNicknameForHandleIDs_];
}

uint64_t sub_1A84CDAC0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1A82493D0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1A84CDC2C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v14[4] = nullsub_4;
  v14[5] = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A824B720;
  v14[3] = &unk_1F1B76658;
  v5 = _Block_copy(v14);
  [v4 connectWithCompletion_];
  _Block_release(v5);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679E0);
  v7 = a1;
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E61BC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1A823F000, v8, v9, "Setting personal nickname with contact %@", v10, 0xCu);
    sub_1A824B2D4(v11, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69A8190]) initWithMeContact_];
  [*(v2 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController) setPersonalNickname_];
}

uint64_t sub_1A84CDEAC()
{
  v1 = *(v0 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v4[4] = nullsub_4;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A824B720;
  v4[3] = &unk_1F1B76680;
  v2 = _Block_copy(v4);
  [v1 connectWithCompletion_];
  _Block_release(v2);
  return swift_unknownObjectWeakAssign();
}

void sub_1A84CDF7C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v15[4] = nullsub_4;
  v15[5] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A824B720;
  v15[3] = &unk_1F1B766A8;
  v7 = _Block_copy(v15);
  [v6 connectWithCompletion_];
  _Block_release(v7);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1ED7679E0);

  v9 = sub_1A84E5C7C();
  v10 = sub_1A84E61BC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A82446BC(a1, a2, v15);
    _os_log_impl(&dword_1A823F000, v9, v10, "Sending personal nickname to handle %s", v11, 0xCu);
    sub_1A8244788(v12);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
  }

  v13 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v14 = sub_1A84E5D8C();
  [v13 sendPersonalNicknameToHandle_];
}

void sub_1A84CE1F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v20[4] = nullsub_4;
  v20[5] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1A824B720;
  v20[3] = &unk_1F1B766D0;
  v11 = _Block_copy(v20);
  [v10 connectWithCompletion_];
  _Block_release(v11);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v12 = sub_1A84E5C9C();
  sub_1A824431C(v12, qword_1ED7679E0);

  v13 = sub_1A84E5C7C();
  v14 = sub_1A84E61BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A82446BC(a3, a4, v20);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A82446BC(a1, a2, v20);
    _os_log_impl(&dword_1A823F000, v13, v14, "Sending personal nickname update from handle %s to handle %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v16, -1, -1);
    MEMORY[0x1AC56D3F0](v15, -1, -1);
  }

  v17 = *(v5 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v18 = sub_1A84E5D8C();
  v19 = sub_1A84E5D8C();
  [v17 sendPersonalNicknameToHandle:v18 fromHandle:v19];
}

void sub_1A84CE500(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v17[4] = nullsub_4;
  v17[5] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A824B720;
  v17[3] = &unk_1F1B766F8;
  v8 = _Block_copy(v17);
  [v7 connectWithCompletion_];
  _Block_release(v8);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679E0);

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E61BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1A82446BC(a2, a3, v17);
    _os_log_impl(&dword_1A823F000, v10, v11, "Sending name only update from handle %s", v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  v14 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v15 = sub_1A84E5FEC();
  v16 = sub_1A84E5D8C();
  [v14 sendNameOnlyToHandleIDs:v15 fromHandleID:v16];
}

uint64_t sub_1A84CE7BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v18[4] = nullsub_4;
  v18[5] = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1A824B720;
  v18[3] = &unk_1F1B76720;
  v7 = _Block_copy(v18);
  [v6 connectWithCompletion_];
  _Block_release(v7);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1ED7679E0);

  v9 = sub_1A84E5C7C();
  v10 = sub_1A84E61BC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A82446BC(a1, a2, v18);
    _os_log_impl(&dword_1A823F000, v9, v10, "Requesting unknown sender records for %s.", v11, 0xCu);
    sub_1A8244788(v12);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
  }

  v13 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v14 = sub_1A84E5D8C();
  v15 = [v13 unknownSenderRecordInfoFor_];

  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v16 = sub_1A84E5FFC();

  return v16;
}

void sub_1A84CEAB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B76748;
  v9 = _Block_copy(aBlock);
  [v8 connectWithCompletion_];
  _Block_release(v9);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    if (a3 <= 2)
    {
LABEL_5:
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          return;
        }

        if (qword_1ED767520 != -1)
        {
          swift_once();
        }

        v11 = sub_1A84E5C9C();
        sub_1A824431C(v11, qword_1ED7679E0);

        v12 = sub_1A84E5C7C();
        v13 = sub_1A84E61BC();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          aBlock[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_1A82446BC(a1, a2, aBlock);
          _os_log_impl(&dword_1A823F000, v12, v13, "Revert nickname action received for handle ID: %s", v14, 0xCu);
          sub_1A8244788(v15);
          MEMORY[0x1AC56D3F0](v15, -1, -1);
          MEMORY[0x1AC56D3F0](v14, -1, -1);
        }

        v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
        sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
        inited = swift_initStackObject();
        v57 = xmmword_1A85013E0;
        *(inited + 16) = xmmword_1A85013E0;
        *(inited + 32) = a1;
        *(inited + 40) = a2;

        sub_1A8249338(inited);
        swift_setDeallocating();
        sub_1A848FE98(inited + 32);
        v18 = sub_1A84E610C();

        v19 = [v16 archivedNicknameForHandleIDs_];

        if (v19)
        {
          [v16 markNickname:v19 asActive:1];
        }

        else
        {

          v19 = sub_1A84E5C7C();
          v53 = sub_1A84E61BC();

          if (os_log_type_enabled(v19, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            aBlock[0] = v55;
            *v54 = 136315138;
            *(v54 + 4) = sub_1A82446BC(a1, a2, aBlock);
            _os_log_impl(&dword_1A823F000, v19, v53, "No archived nickname found for handle ID: %s", v54, 0xCu);
            sub_1A8244788(v55);
            MEMORY[0x1AC56D3F0](v55, -1, -1);
            MEMORY[0x1AC56D3F0](v54, -1, -1);
          }
        }

        v56 = swift_initStackObject();
        *(v56 + 16) = xmmword_1A85013E0;
        *(v56 + 32) = a1;
        *(v56 + 40) = a2;

        sub_1A8249338(v56);
        swift_setDeallocating();
        sub_1A848FE98(v56 + 32);
        v46 = sub_1A84E610C();

        v47 = [v16 pendingNicknameForHandleIDs_];
LABEL_42:
        v31 = v47;

        if (v31)
        {
          goto LABEL_43;
        }

        v48 = sub_1A84E5C7C();
        v49 = sub_1A84E61BC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock[0] = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_1A82446BC(a1, a2, aBlock);
          v52 = "No pending nickname found for handle ID: %s";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (qword_1ED767520 != -1)
      {
        swift_once();
      }

      v32 = sub_1A84E5C9C();
      sub_1A824431C(v32, qword_1ED7679E0);

      v33 = sub_1A84E5C7C();
      v34 = sub_1A84E61BC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1A82446BC(a1, a2, aBlock);
        _os_log_impl(&dword_1A823F000, v33, v34, "Accept nickname action received for handle ID: %s", v35, 0xCu);
        sub_1A8244788(v36);
        MEMORY[0x1AC56D3F0](v36, -1, -1);
        MEMORY[0x1AC56D3F0](v35, -1, -1);
      }

      v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
      v37 = sub_1A84E5D8C();
      [v16 acceptPendingNicknameForHandleID:v37 updateType:12];

      sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1A85013E0;
      *(v38 + 32) = a1;
      *(v38 + 40) = a2;

      sub_1A8249338(v38);
      swift_setDeallocating();
      sub_1A848FE98(v38 + 32);
      v39 = sub_1A84E610C();

      v31 = [v16 archivedNicknameForHandleIDs_];

      if (v31)
      {
        [v16 markNickname:v31 asActive:0];
LABEL_43:
        [v16 markNicknameAsIgnored_];

        return;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (qword_1ED767520 != -1)
    {
      swift_once();
    }

    v20 = sub_1A84E5C9C();
    sub_1A824431C(v20, qword_1ED7679E0);
    v21 = sub_1A84E5C7C();
    v22 = sub_1A84E61BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A823F000, v21, v22, "No handle is found when update banner is tapped", v23, 2u);
      MEMORY[0x1AC56D3F0](v23, -1, -1);
    }

    if (a3 <= 2)
    {
      goto LABEL_5;
    }
  }

  if (a3 == 3)
  {
    if (qword_1ED767520 != -1)
    {
      swift_once();
    }

    v40 = sub_1A84E5C9C();
    sub_1A824431C(v40, qword_1ED7679E0);

    v41 = sub_1A84E5C7C();
    v42 = sub_1A84E61BC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1A82446BC(a1, a2, aBlock);
      _os_log_impl(&dword_1A823F000, v41, v42, "Ignore dismiss update received for handle ID: %s", v43, 0xCu);
      sub_1A8244788(v44);
      MEMORY[0x1AC56D3F0](v44, -1, -1);
      MEMORY[0x1AC56D3F0](v43, -1, -1);
    }

    v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
    sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1A85013E0;
    *(v45 + 32) = a1;
    *(v45 + 40) = a2;

    sub_1A8249338(v45);
    swift_setDeallocating();
    sub_1A848FE98(v45 + 32);
    v46 = sub_1A84E610C();

    v47 = [v16 pendingNicknameForHandleIDs_];
    goto LABEL_42;
  }

  if (a3 != 4)
  {
    return;
  }

  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v24 = sub_1A84E5C9C();
  sub_1A824431C(v24, qword_1ED7679E0);

  v25 = sub_1A84E5C7C();
  v26 = sub_1A84E61BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1A82446BC(a1, a2, aBlock);
    _os_log_impl(&dword_1A823F000, v25, v26, "Ignore dismiss revert received for handle ID: %s", v27, 0xCu);
    sub_1A8244788(v28);
    MEMORY[0x1AC56D3F0](v28, -1, -1);
    MEMORY[0x1AC56D3F0](v27, -1, -1);
  }

  v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1A85013E0;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;

  sub_1A8249338(v29);
  swift_setDeallocating();
  sub_1A848FE98(v29 + 32);
  v30 = sub_1A84E610C();

  v31 = [v16 archivedNicknameForHandleIDs_];

  if (v31)
  {
    goto LABEL_43;
  }

LABEL_37:

  v48 = sub_1A84E5C7C();
  v49 = sub_1A84E61BC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1A82446BC(a1, a2, aBlock);
    v52 = "No archived nickname found for handle ID: %s";
LABEL_46:
    _os_log_impl(&dword_1A823F000, v48, v49, v52, v50, 0xCu);
    sub_1A8244788(v51);
    MEMORY[0x1AC56D3F0](v51, -1, -1);
    MEMORY[0x1AC56D3F0](v50, -1, -1);
  }

LABEL_47:
}

id sub_1A84CF754(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  v5 = [v3 handle];
  if (!v5)
  {
    sub_1A84E5DBC();
    v5 = sub_1A84E5D8C();
  }

  v6 = [v4 hasObservedTransitionForHandleID_];

  return v6;
}

id IMNickname.hasObservedTransition.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v0 handle];
  if (!v2)
  {
    sub_1A84E5DBC();
    v2 = sub_1A84E5D8C();
  }

  v3 = [v1 hasObservedTransitionForHandleID_];

  return v3;
}

id sub_1A84CF8D8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [v7 *a3];

  return v8;
}

id sub_1A84CF960(SEL *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1A84CF9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1A84D0904(a3, v25 - v11);
  v13 = sub_1A84E60BC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A824B2D4(v12, &qword_1EB2E6600, &qword_1A8507BA0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A84E60AC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1A84E605C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1A84E5E1C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);

    return v23;
  }

LABEL_8:
  sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A84CFCC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
  result = sub_1A84E643C();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_1A84CFF28()
{
  v1 = v0;
  sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
  v2 = *v0;
  v3 = sub_1A84E642C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_1A84D0084(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
  result = sub_1A84E643C();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1A84E684C();

      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t dispatch thunk of NicknameProvider.nicknameForCurrentUser()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A84D0428;

  return v6();
}

uint64_t sub_1A84D0428(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of NicknameProvider.nickname(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
}

uint64_t sub_1A84D0858()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A82505F4;

  return sub_1A84CCED0(v2, v3);
}

uint64_t sub_1A84D0904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84D0974(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return sub_1A8248560(a1, v5);
}

uint64_t static ImportExport.ExportOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImportExport.ExportOptions();
  v3 = sub_1A824431C(v2, qword_1EB2E8EC0);

  return sub_1A84C3300(v3, a1);
}

uint64_t sub_1A84D0B24()
{
  v0 = sub_1A84E54AC();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v49 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A84E56DC();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E558C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ImportExport.ExportOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  sub_1A82442B8(v14, qword_1EB2E8EC0);
  v52 = v14;
  v25 = sub_1A824431C(v14, qword_1EB2E8EC0);
  (*(v8 + 56))(v24, 1, 1, v7);
  *v17 = 1;
  *(v17 + 1) = 50;
  *(v17 + 2) = 0x404E000000000000;
  sub_1A84580FC(v24, v22);
  v26 = *(v8 + 48);
  v54 = v7;
  if (v26(v22, 1, v7) == 1)
  {
    sub_1A8496E7C(v22);
    v27 = [objc_opt_self() defaultManager];
    v28 = [v27 temporaryDirectory];

    sub_1A84E554C();
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1A84E646C();

    v61 = 0xD00000000000002BLL;
    v62 = 0x80000001A85349C0;
    v29 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    sub_1A84E56CC();
    v30 = sub_1A84E565C();
    (*(v3 + 8))(v6, v48);
    v31 = [v29 stringFromDate_];

    v32 = sub_1A84E5DBC();
    v48 = v25;
    v34 = v33;

    v59 = v32;
    v60 = v34;
    v57 = 58;
    v58 = 0xE100000000000000;
    v55 = 45;
    v56 = 0xE100000000000000;
    sub_1A840D3B0();
    v35 = sub_1A84E637C();
    v37 = v36;

    MEMORY[0x1AC56A990](v35, v37);

    v38 = v49;
    v39 = v50;
    v40 = v51;
    (*(v50 + 104))(v49, *MEMORY[0x1E6968F70], v51);
    v41 = v53;
    v42 = &v17[*(v52 + 28)];
    sub_1A84E557C();
    (*(v39 + 8))(v38, v40);
    v25 = v48;

    (*(v8 + 8))(v41, v54);
    sub_1A8496E7C(v24);
  }

  else
  {
    sub_1A8496E7C(v24);
    v43 = *(v8 + 32);
    v44 = v22;
    v45 = v54;
    v43(v13, v44, v54);
    v43(&v17[*(v52 + 28)], v13, v45);
  }

  return sub_1A84B70B0(v17, v25);
}

uint64_t type metadata accessor for ImportExport.ExportOptions()
{
  result = qword_1EB2E46A0;
  if (!qword_1EB2E46A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ExportOptions.init(downloadMissingAttachments:batchSize:attachmentDownloadTimeout:attachmentDownloadDirectoryURL:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1A84E54AC();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A84E56DC();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v48 - v19;
  v21 = sub_1A84E558C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v48 - v27;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  v55 = a3;
  sub_1A84580FC(a3, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1A8496E7C(v20);
    v29 = [objc_opt_self() defaultManager];
    v30 = [v29 temporaryDirectory];

    v49 = v26;
    sub_1A84E554C();

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1A84E646C();

    v62 = 0xD00000000000002BLL;
    v63 = 0x80000001A85349C0;
    v31 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    sub_1A84E56CC();
    v32 = sub_1A84E565C();
    (*(v50 + 8))(v16, v51);
    v33 = [v31 stringFromDate_];

    v34 = sub_1A84E5DBC();
    v36 = v35;

    v60 = v34;
    v61 = v36;
    v58 = 58;
    v59 = 0xE100000000000000;
    v56 = 45;
    v57 = 0xE100000000000000;
    sub_1A840D3B0();
    v37 = sub_1A84E637C();
    v39 = v38;

    MEMORY[0x1AC56A990](v37, v39);

    v40 = v52;
    v41 = v53;
    v42 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x1E6968F70], v54);
    v43 = a4 + *(type metadata accessor for ImportExport.ExportOptions() + 28);
    v44 = v49;
    sub_1A84E557C();
    sub_1A8496E7C(v55);
    (*(v41 + 8))(v40, v42);

    return (*(v22 + 8))(v44, v21);
  }

  else
  {
    sub_1A8496E7C(v55);
    v46 = *(v22 + 32);
    v46(v28, v20, v21);
    v47 = type metadata accessor for ImportExport.ExportOptions();
    return (v46)(a4 + *(v47 + 28), v28, v21);
  }
}

uint64_t ImportExport.ExportOptions.attachmentDownloadDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ExportOptions() + 28);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ExportOptions.attachmentDownloadDirectoryURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ExportOptions() + 28);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_1A84D1810()
{
  v1 = 0x7A69536863746162;
  v2 = 0xD00000000000001ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1A84D1890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84D2334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84D18B8(uint64_t a1)
{
  v2 = sub_1A84D1B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84D18F4(uint64_t a1)
{
  v2 = sub_1A84D1B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8ED8, &qword_1A850B5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D1B58();
  sub_1A84E68AC();
  v11 = *v3;
  v16[15] = 0;
  sub_1A84E66DC();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v16[14] = 1;
    sub_1A84E670C();
    v13 = *(v3 + 2);
    v16[13] = 2;
    sub_1A84E66EC();
    v14 = *(type metadata accessor for ImportExport.ExportOptions() + 28);
    v16[12] = 3;
    sub_1A84E558C();
    sub_1A84D2118(&qword_1EB2E7200);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A84D1B58()
{
  result = qword_1EB2E8EE0;
  if (!qword_1EB2E8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8EE0);
  }

  return result;
}

uint64_t ImportExport.ExportOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1A84E558C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E8EE8, &qword_1A850B5C0);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ImportExport.ExportOptions();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D1B58();
  v16 = v31;
  sub_1A84E689C();
  if (!v16)
  {
    v17 = v14;
    v31 = v11;
    v18 = v6;
    v35 = 0;
    v19 = v29;
    *v17 = sub_1A84E661C() & 1;
    v34 = 1;
    v20 = v19;
    *(v17 + 1) = sub_1A84E664C();
    v33 = 2;
    sub_1A84E662C();
    v22 = v17;
    *(v17 + 2) = v23;
    v32 = 3;
    sub_1A84D2118(&qword_1EB2E7218);
    v24 = v18;
    v25 = v30;
    sub_1A84E666C();
    (*(v20 + 8))(v10, v25);
    (*(v27 + 32))(v22 + *(v31 + 28), v24, v3);
    sub_1A84B70B0(v22, v28);
  }

  return sub_1A8244788(a1);
}

uint64_t ImportExport.ExportOptions.description.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0x704F74726F707845, 0xED0000736E6F6974);
  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A85349F0);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v1, v2);

  MEMORY[0x1AC56A990](0x536863746162202CLL, 0xED0000203A657A69);
  v8 = *(v0 + 8);
  v3 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8534A10);
  v4 = *(v0 + 16);
  sub_1A84E60EC();
  MEMORY[0x1AC56A990](0xD000000000000022, 0x80000001A8534A30);
  v5 = *(type metadata accessor for ImportExport.ExportOptions() + 28);
  sub_1A84E558C();
  sub_1A84D2118(&qword_1EB2E8D08);
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  return 0;
}

uint64_t sub_1A84D2118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A84E558C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84D2188()
{
  result = sub_1A84E558C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A84D2230()
{
  result = qword_1EB2E8EF0;
  if (!qword_1EB2E8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8EF0);
  }

  return result;
}

unint64_t sub_1A84D2288()
{
  result = qword_1EB2E8EF8;
  if (!qword_1EB2E8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8EF8);
  }

  return result;
}

unint64_t sub_1A84D22E0()
{
  result = qword_1EB2E8F00;
  if (!qword_1EB2E8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F00);
  }

  return result;
}

uint64_t sub_1A84D2334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001A8534A60 == a2;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8534A80 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A8534AA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 ImportExport.ImportedMessageBatch.init(withMessageBatch:importCounts:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_1A84D24FC(a1, a3);
  v6 = a3 + *(type metadata accessor for ImportExport.ImportedMessageBatch() + 20);
  result = *a2;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_1A84D24FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessageBatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ImportExport.ImportedMessageBatch()
{
  result = qword_1EB2E8F20;
  if (!qword_1EB2E8F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImportExport.ImportedMessageBatch.importCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.ImportedMessageBatch() + 20);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1A84D2620()
{
  if (*v0)
  {
    result = 0x6F4374726F706D69;
  }

  else
  {
    result = 0x426567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A84D266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x426567617373656DLL && a2 == 0xEC00000068637461;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4374726F706D69 && a2 == 0xEC00000073746E75)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

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

uint64_t sub_1A84D2750(uint64_t a1)
{
  v2 = sub_1A84D2990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84D278C(uint64_t a1)
{
  v2 = sub_1A84D2990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ImportedMessageBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8F08, &qword_1A850B780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D2990();
  sub_1A84E68AC();
  LOBYTE(v16) = 0;
  type metadata accessor for ImportExport.MessageBatch();
  sub_1A84D2CE8(&qword_1EB2E8650);
  sub_1A84E672C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ImportExport.ImportedMessageBatch() + 20));
    v12 = *(v11 + 4);
    v13 = v11[1];
    v16 = *v11;
    v17 = v13;
    v18 = v12;
    v15[15] = 1;
    sub_1A847E61C();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A84D2990()
{
  result = qword_1EB2E8F10;
  if (!qword_1EB2E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F10);
  }

  return result;
}

uint64_t ImportExport.ImportedMessageBatch.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for ImportExport.MessageBatch();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E8F18, &qword_1A850B788);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ImportExport.ImportedMessageBatch();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D2990();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v16 = v24;
  v17 = v14;
  LOBYTE(v27) = 0;
  sub_1A84D2CE8(&qword_1EB2E7E88);
  v18 = v25;
  sub_1A84E666C();
  sub_1A84D24FC(v26, v17);
  v30 = 1;
  sub_1A847EC5C();
  sub_1A84E666C();
  (*(v16 + 8))(v10, v18);
  v19 = v29;
  v20 = v17 + *(v11 + 20);
  v21 = v28;
  *v20 = v27;
  *(v20 + 16) = v21;
  *(v20 + 32) = v19;
  sub_1A8483510(v17, v23, type metadata accessor for ImportExport.ImportedMessageBatch);
  sub_1A8244788(a1);
  return sub_1A8483578(v17, type metadata accessor for ImportExport.ImportedMessageBatch);
}

uint64_t sub_1A84D2CE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportExport.MessageBatch();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ImportExport.ImportedMessageBatch.description.getter()
{
  sub_1A84E646C();

  v8[2] = 0xD000000000000016;
  v8[3] = 0x80000001A8534AC0;
  v1 = ImportExport.MessageBatch.description.getter();
  MEMORY[0x1AC56A990](v1);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8534AE0);
  v2 = (v0 + *(type metadata accessor for ImportExport.ImportedMessageBatch() + 20));
  v3 = *(v2 + 4);
  v6 = v2[1];
  v7 = *v2;
  sub_1A84E646C();

  strcpy(v8, "RecordCounts: ");
  HIBYTE(v8[1]) = -18;
  v4 = ImportExport.RecordCounts.displayDescription.getter();
  MEMORY[0x1AC56A990](v4);

  MEMORY[0x1AC56A990](v8[0], v8[1]);

  return 0xD000000000000016;
}

uint64_t sub_1A84D2ECC()
{
  result = type metadata accessor for ImportExport.MessageBatch();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A84D2F54()
{
  result = qword_1EB2E8F30;
  if (!qword_1EB2E8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F30);
  }

  return result;
}

unint64_t sub_1A84D2FAC()
{
  result = qword_1EB2E8F38;
  if (!qword_1EB2E8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F38);
  }

  return result;
}

unint64_t sub_1A84D3004()
{
  result = qword_1EB2E8F40;
  if (!qword_1EB2E8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F40);
  }

  return result;
}

uint64_t sub_1A84D30C0()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 areDualSIMDevicesExceptionsDisabled];

  return v1 ^ 1;
}

uint64_t sub_1A84D311C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 registeredSIMIDs];

  v2 = sub_1A84E5FFC();
  return v2;
}

uint64_t sub_1A84D319C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 phoneNumbersOfActiveSubscriptions];

  v3 = sub_1A84E5FFC();
  return v3;
}

uint64_t sub_1A84D3244()
{
  sub_1A84E5B7C();
  _s25MadridServiceInfoProviderCMa();
  swift_initStaticObject();
  sub_1A84D3A08();
  result = sub_1A84E5B6C();
  qword_1EB2E8F48 = result;
  return result;
}

uint64_t sub_1A84D33EC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1A84E5D8C();
  v3 = [v1 __im_subscriptionContextForForSimID_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 phoneNumber];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1A84E5DBC();

  return v5;
}

void sub_1A84D34E4()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v1 = v0;
  v2 = [objc_opt_self() iMessageService];
  v3 = [v1 accountsForService_];

  if (!v3)
  {
LABEL_51:
    __break(1u);
    return;
  }

  sub_1A84D39BC();
  v4 = sub_1A84E5FFC();

  if (v4 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v4;
  while (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v34 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v32 = v4 & 0xC000000000000001;
    v33 = v5;
    v31 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC56AF80](v6, v30);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_43;
        }

        v10 = *(v34 + 8 * v6);
      }

      v11 = v10;
      v12 = __OFADD__(v6++, 1);
      if (v12)
      {
        break;
      }

      if ([v10 _isUsableForSending] && (v13 = objc_msgSend(v11, sel_aliases)) != 0)
      {
        v14 = v13;
        v15 = sub_1A84E5FFC();

        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = v15 + 32;
          v18 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1A8244F40(v17, v38);
            sub_1A8243DDC(v38, &v35);
            if (swift_dynamicCast())
            {
              v20 = v37;
              if (v37)
              {
                v21 = v36;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v18 = sub_1A824A1FC(0, *(v18 + 2) + 1, 1, v18);
                }

                v23 = *(v18 + 2);
                v22 = *(v18 + 3);
                if (v23 >= v22 >> 1)
                {
                  v18 = sub_1A824A1FC((v22 > 1), v23 + 1, 1, v18);
                }

                *(v18 + 2) = v23 + 1;
                v19 = &v18[16 * v23];
                *(v19 + 4) = v21;
                *(v19 + 5) = v20;
              }
            }

            v17 += 32;
            --v16;
          }

          while (v16);

          v7 = v32;
          v5 = v33;
          v8 = v31;
        }

        else
        {

          v18 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      v24 = *(v18 + 2);
      v4 = *(v9 + 2);
      v25 = v4 + v24;
      if (__OFADD__(v4, v24))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v25 <= *(v9 + 3) >> 1)
      {
        if (*(v18 + 2))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v4 <= v25)
        {
          v27 = v4 + v24;
        }

        else
        {
          v27 = v4;
        }

        v9 = sub_1A824A1FC(isUniquelyReferenced_nonNull_native, v27, 1, v9);
        if (*(v18 + 2))
        {
LABEL_37:
          if ((*(v9 + 3) >> 1) - *(v9 + 2) < v24)
          {
            goto LABEL_46;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v28 = *(v9 + 2);
            v12 = __OFADD__(v28, v24);
            v29 = v28 + v24;
            if (v12)
            {
              goto LABEL_47;
            }

            *(v9 + 2) = v29;
          }

          goto LABEL_7;
        }
      }

      if (v24)
      {
        goto LABEL_45;
      }

LABEL_7:
      if (v6 == v5)
      {
        goto LABEL_49;
      }
    }

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
    v5 = sub_1A84E654C();
    v30 = v4;
  }

LABEL_49:
}

uint64_t sub_1A84D38A8()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 ctSubscriptionInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A84E5D8C();
  v4 = [v2 __im_subscriptionContextForPhoneNumber_];

  if (!v4)
  {
    return 0;
  }

  v5 = [v0 sharedInstance];
  v6 = [v5 copyIsoCountryCodeForSubscriptionContext_];

  v7 = sub_1A84E5DBC();
  return v7;
}

unint64_t sub_1A84D39BC()
{
  result = qword_1EB2E4708;
  if (!qword_1EB2E4708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E4708);
  }

  return result;
}

unint64_t sub_1A84D3A08()
{
  result = qword_1EB2E8F50;
  if (!qword_1EB2E8F50)
  {
    _s25MadridServiceInfoProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F50);
  }

  return result;
}

uint64_t sub_1A84D3A60()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF3F8);
  sub_1A824431C(v0, qword_1EB2FF3F8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

Swift::Void __swiftcall IMChorosMonitor.launchStewieForMessaging(withAppForegrounded:)(Swift::Bool withAppForegrounded)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (withAppForegrounded)
  {
    v5 = ObjectType;
    [v2 setNeedsShowConnectionUI_];
    [v2 startMonitorIfNeededForReason_];
    if ([v2 isStewieActive])
    {
      if (qword_1EB2E5A20 != -1)
      {
        swift_once();
      }

      v6 = sub_1A84E5C9C();
      sub_1A824431C(v6, qword_1EB2FF3F8);
      oslog = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (!os_log_type_enabled(oslog, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Stewie is active, no need to connect, return.";
LABEL_24:
      _os_log_impl(&dword_1A823F000, oslog, v7, v9, v8, 2u);
      MEMORY[0x1AC56D3F0](v8, -1, -1);
LABEL_25:

      return;
    }

    v14 = objc_opt_self();
    v15 = [v2 getState];
    LODWORD(v14) = [v14 isAnyMessagingServicesAvailableFor_];

    if (!v14)
    {
      if (qword_1EB2E5A20 != -1)
      {
        swift_once();
      }

      v25 = sub_1A84E5C9C();
      sub_1A824431C(v25, qword_1EB2FF3F8);
      oslog = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (!os_log_type_enabled(oslog, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "No stewie service is available for connecting, return.";
      goto LABEL_24;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E6965078]) init];
    [v16 setReason_];
    if (qword_1EB2E5A20 != -1)
    {
      swift_once();
    }

    v17 = sub_1A84E5C9C();
    sub_1A824431C(v17, qword_1EB2FF3F8);
    v18 = sub_1A84E5C7C();
    v19 = sub_1A84E61BC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A823F000, v18, v19, "Requsting Stewie for messaging...", v20, 2u);
      MEMORY[0x1AC56D3F0](v20, -1, -1);
    }

    v21 = [v2 telephonyClient];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v5;
    aBlock[4] = sub_1A84D4AD8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A84D4A18;
    aBlock[3] = &unk_1F1B76A28;
    v24 = _Block_copy(aBlock);

    [v21 requestStewieWithContext:v16 completion:v24];
    _Block_release(v24);
  }

  else
  {
    if (qword_1EB2E5A20 != -1)
    {
      swift_once();
    }

    v10 = sub_1A84E5C9C();
    sub_1A824431C(v10, qword_1EB2FF3F8);
    v11 = sub_1A84E5C7C();
    v12 = sub_1A84E61BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      _os_log_impl(&dword_1A823F000, v11, v12, "Cannot launch connection UI due to appForegrounded: %{BOOL}d. return.", v13, 8u);
      MEMORY[0x1AC56D3F0](v13, -1, -1);
    }

    [v2 setNeedsShowConnectionUI_];
  }
}

void sub_1A84D3FD0(void *a1)
{
  v2 = sub_1A84E5CAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E5CCC();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A84E5CEC();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  if (a1)
  {
    v55 = v3;
    v56 = v2;
    swift_getErrorValue();
    v20 = aBlock[7];
    v21 = a1;
    if (sub_1A84D47C4(v20))
    {
      v22 = [v19 showConnectionUIRetryCount];
      if (!__OFADD__(v22, 1))
      {
        [v19 setShowConnectionUIRetryCount_];
        if ([v19 showConnectionUIRetryCount] <= 2)
        {
          if (qword_1EB2E5A20 != -1)
          {
            swift_once();
          }

          v23 = sub_1A84E5C9C();
          sub_1A824431C(v23, qword_1EB2FF3F8);
          v24 = a1;
          v25 = sub_1A84E5C7C();
          v26 = sub_1A84E619C();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v54 = v25;
            v28 = v27;
            v29 = swift_slowAlloc();
            *v28 = 138412290;
            v30 = a1;
            v31 = _swift_stdlib_bridgeErrorToNSError();
            *(v28 + 4) = v31;
            *v29 = v31;
            _os_log_impl(&dword_1A823F000, v54, v26, "Encountered xpc error, retry in a bit: %@.", v28, 0xCu);
            sub_1A845CDA8(v29);
            MEMORY[0x1AC56D3F0](v29, -1, -1);
            v32 = v28;
            v25 = v54;
            MEMORY[0x1AC56D3F0](v32, -1, -1);
          }

          sub_1A8460A58();
          v53 = sub_1A84E624C();
          sub_1A84E5CDC();
          sub_1A84E5D0C();
          v33 = *(v59 + 8);
          v59 += 8;
          v54 = v33;
          (v33)(v15, v11);
          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1A84D4AE0;
          aBlock[5] = v34;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A824B720;
          aBlock[3] = &unk_1F1B76A50;
          v35 = _Block_copy(aBlock);

          sub_1A84E5A8C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1A824B214();
          sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
          sub_1A824B26C();
          v36 = v56;
          sub_1A84E63CC();
          v37 = v53;
          MEMORY[0x1AC56AD20](v17, v10, v6, v35);
          _Block_release(v35);

          (*(v55 + 8))(v6, v36);
          (*(v57 + 8))(v10, v58);
          (v54)(v17, v11);
          return;
        }

        [v19 setShowConnectionUIRetryCount_];
        if (qword_1EB2E5A20 != -1)
        {
          swift_once();
        }

        v50 = sub_1A84E5C9C();
        sub_1A824431C(v50, qword_1EB2FF3F8);
        v44 = sub_1A84E5C7C();
        v51 = sub_1A84E619C();
        if (os_log_type_enabled(v44, v51))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1A823F000, v44, v51, "Have tried 3 times to request Stewie for messaging, but still failed for xpc connection. Stop.", v46, 2u);
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      [v19 setShowConnectionUIRetryCount_];
      if (qword_1EB2E5A20 == -1)
      {
        goto LABEL_17;
      }
    }

    swift_once();
LABEL_17:
    v42 = sub_1A84E5C9C();
    sub_1A824431C(v42, qword_1EB2FF3F8);
    v43 = a1;
    v44 = sub_1A84E5C7C();
    v45 = sub_1A84E619C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_1A823F000, v44, v45, "Error occurred when requesting Stewie for messaging: %@", v46, 0xCu);
      sub_1A845CDA8(v47);
      MEMORY[0x1AC56D3F0](v47, -1, -1);
LABEL_23:
      MEMORY[0x1AC56D3F0](v46, -1, -1);
    }

LABEL_24:

    return;
  }

  [Strong setShowConnectionUIRetryCount_];
  if (qword_1EB2E5A20 != -1)
  {
    swift_once();
  }

  v38 = sub_1A84E5C9C();
  sub_1A824431C(v38, qword_1EB2FF3F8);
  v39 = sub_1A84E5C7C();
  v40 = sub_1A84E61BC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1A823F000, v39, v40, "Stewie requested for messaging successfully.", v41, 2u);
    MEMORY[0x1AC56D3F0](v41, -1, -1);
  }
}

uint64_t sub_1A84D47C4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1A84E678C();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1A84E547C();

  if ([v10 code] == 4097)
  {
    v11 = [v10 domain];
    v12 = sub_1A84E5DBC();
    v14 = v13;

    v15 = *MEMORY[0x1E696A250];
    if (v12 == sub_1A84E5DBC() && v14 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1A84E67AC();
    }
  }

  else
  {

    v18 = 0;
  }

  return v18 & 1;
}

void sub_1A84D49B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong launchStewieForMessagingWithAppForegrounded_];
  }
}

void sub_1A84D4A18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1A84D4AD8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1A84D3FD0(a1);
}

void sub_1A84D4AF0(char *a1@<X8>)
{
  sub_1A84D4C30(v10);
  if (v10[2])
  {
    sub_1A824B2D4(v10, &qword_1EB2E6F58, &qword_1A8501388);
    v3 = 2;
  }

  else
  {
    if ([v1 isReply])
    {
      v4 = [v1 threadOriginatorGUID];
      if (v4)
      {
        v5 = v4;
        sub_1A84E5DBC();

        v6 = [v1 threadOriginatorPart];
        if (v6)
        {
          v7 = v6;
          IMMessageThreadIdentifierGetOriginatorRange();
          IMMessageThreadIdentifierGetOriginatorMessagePart();

          v3 = 1;
          goto LABEL_13;
        }
      }
    }

    v8 = [v1 expressiveSendStyleID];
    if (v8)
    {

      v3 = 4;
    }

    else
    {
      v9 = [v1 balloonBundleID];
      if (v9)
      {

        v3 = 3;
      }

      else
      {
        v3 = 0;
      }
    }
  }

LABEL_13:
  *a1 = v3;
}

void sub_1A84D4C30(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A84681BC([v1 associatedMessageType], v39);
  v4 = v39[0];
  if (v39[0] == 18 || (v5 = [v2 associatedMessageGUID]) == 0)
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v6 = v5;
  v7 = sub_1A84E5DBC();
  v34 = v8;
  v35 = v7;

  if (qword_1EB2E5958 != -1)
  {
    swift_once();
  }

  v9 = word_1EB2E7440;
  v10 = HIBYTE(word_1EB2E7440);
  LODWORD(v11) = unk_1EB2E7444;
  v13 = *(&xmmword_1EB2E7448 + 1);
  v12 = xmmword_1EB2E7448;
  v14 = dword_1EB2E7458;
  v15 = dword_1EB2E745C;
  v16 = [v2 messageSummaryInfo];
  if (v16)
  {
    v32 = v10;
    v17 = v16;
    sub_1A84E5D3C();

    if (sub_1A843D0E4(v4, &unk_1F1B703F0) && sub_1A843D0E4(v4, &unk_1F1B70418))
    {
      v18 = objc_opt_self();
      v19 = sub_1A84E5D2C();

      [v18 geometryDescriptorFromUserInfoDictionary_];

      ImportExport.Message.LayoutDescriptor.init(withAssoociatedMessageGeometryDescriptor:)(v39, v36);
      if (LOBYTE(v36[0]) != 13)
      {
        v14 = v37;
        v15 = v38;
        v10 = v36[0] >> 8;
        v11 = HIDWORD(v36[0]);
        v9 = v36[0];
        v12 = v36[1];
        v13 = v36[2];
        goto LABEL_13;
      }
    }

    else
    {
    }

    LOBYTE(v10) = v32;
  }

LABEL_13:
  if (sub_1A843D0E4(v4, &unk_1F1B70418) || sub_1A843D0E4(v4, &unk_1F1B70440))
  {
    if (qword_1EB2E5950 != -1)
    {
      swift_once();
    }

    v9 = word_1EB2E7420;
    LOBYTE(v10) = HIBYTE(word_1EB2E7420);
    LODWORD(v11) = unk_1EB2E7424;
    v13 = *(&xmmword_1EB2E7428 + 1);
    v12 = xmmword_1EB2E7428;
    v14 = dword_1EB2E7438;
    v15 = dword_1EB2E743C;
  }

  [v2 associatedMessageRange];
  v21 = v20;
  v22 = [v2 associatedMessageEmoji];
  if (v22)
  {
    v33 = v21;
    v23 = v4;
    v24 = v15;
    v25 = v11;
    v26 = v9;
    v27 = v14;
    v28 = v10;
    v10 = v22;
    v29 = sub_1A84E5DBC();
    v31 = v30;

    LOBYTE(v10) = v28;
    v14 = v27;
    v9 = v26;
    LODWORD(v11) = v25;
    v15 = v24;
    v4 = v23;
    v21 = v33;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v35;
  *(a1 + 16) = v34;
  *(a1 + 24) = v21;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v9;
  *(a1 + 49) = v10;
  *(a1 + 52) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 76) = v15;
}

uint64_t IMDMessageRecordItemType.name.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6567617373656DLL;
      }

      if (a1 == 1)
      {
        return 0xD000000000000011;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 2)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x74634170756F7267;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x7265766E6F437574;
        case 7:
          return 0xD000000000000017;
        case 8:
          return 0xD000000000000018;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 4)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x416567617373656DLL;
    }
  }
}

void *sub_1A84D50F4(uint64_t a1, uint64_t a2)
{
  v6 = [v3 attachmentRecords];
  sub_1A8244B68(0, &qword_1EB2E85B0, 0x1E69A5D98);
  v7 = sub_1A84E5FFC();

  if (v7 >> 62)
  {
LABEL_24:
    v8 = sub_1A84E654C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v27 = v7 & 0xFFFFFFFFFFFFFF8;
      v28 = v7 & 0xC000000000000001;
      v26 = v7;
      do
      {
        if (v28)
        {
          v10 = MEMORY[0x1AC56AF80](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

LABEL_21:

            return v2;
          }
        }

        else
        {
          if (v9 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          v10 = *(v7 + 8 * v9 + 32);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_19;
          }
        }

        v29 = v11;
        v12 = v10;
        v13 = [v10 guid];
        v14 = a2;
        v15 = sub_1A84E5DBC();
        v17 = v16;

        v2 = v12;
        v18 = [v12 originalGUID];
        v19 = sub_1A84E5DBC();
        v21 = v20;

        if (v15 == a1 && v17 == v14)
        {
          goto LABEL_20;
        }

        a2 = v14;
        v23 = sub_1A84E67AC();

        if ((v23 & 1) != 0 || v19 == a1 && v21 == v14)
        {
          goto LABEL_21;
        }

        v24 = sub_1A84E67AC();

        if (v24)
        {

          return v2;
        }

        ++v9;
        v7 = v26;
      }

      while (v29 != v8);
    }
  }

  return 0;
}

void sub_1A84D5350(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v8 = [a1 attributedBodyText];
  if (v8)
  {
    v9 = v8;
    if ([v8 __im_countMessageParts] <= 0)
    {

      *a3 = v7;
    }

    else
    {
      v19 = a2;
      v17 = a3;
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = swift_allocObject();
      v11[2] = a1;
      v11[3] = v6;
      v11[4] = v10;
      aBlock[4] = sub_1A84D6B18;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A84D6300;
      aBlock[3] = &unk_1F1B76B88;
      v12 = _Block_copy(aBlock);
      v13 = a1;

      [v9 __im_visitMessageParts_];
      _Block_release(v12);
      swift_beginAccess();
      v14 = *(v10 + 16);
      if (v14)
      {
        v15 = *(v10 + 16);
        swift_willThrow();
        v16 = v14;

        *v19 = v14;
      }

      else
      {

        swift_beginAccess();
        *v17 = *(v6 + 16);
      }
    }
  }

  else
  {

    *a3 = v7;
  }
}

void sub_1A84D5594(void *a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v140 = a6;
  v141 = a3;
  v133 = a5;
  v8 = sub_1A84E5C9C();
  v134 = *(v8 - 8);
  v135 = v8;
  v9 = *(v134 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v128 - v13;
  v14 = type metadata accessor for ImportExport.Attachment();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v131 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v139 = (&v128 - v19);
  v20 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v128 - v25;
  v27 = sub_1A83EA2FC(&qword_1EB2E8F58, &unk_1A850BB38);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v136 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v128 - v31;
  v33 = type metadata accessor for ImportExport.MessagePart();
  v34 = *(v33 - 8);
  v137 = v33;
  v138 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v129 = &v128 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v130 = &v128 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v128 - v43;
  v45 = [a1 transferGUID];
  if (v45)
  {
    v46 = v15;
    v47 = v45;
    v48 = sub_1A84E5DBC();
    v50 = v49;

    v51 = sub_1A84D50F4(v48, v50);

    if (!v51)
    {
      return;
    }

    v128 = a4;
    v52 = v51;
    v53 = v139;
    sub_1A8492848(v52, v139);
    sub_1A8467450(v53, v24, type metadata accessor for ImportExport.Attachment);
    (*(v46 + 56))(v24, 0, 1, v14);
    v54 = v128;
    v55 = a1;
    v56 = v136;
    sub_1A83F4684(v54, v55, 0, 0xE000000000000000, 0, v24, v136);
    v81 = v138;
    if ((*(v138 + 48))(v56, 1, v137) == 1)
    {
      sub_1A824B2D4(v56, &qword_1EB2E8F58, &unk_1A850BB38);
      strcpy(v142, "ImportExport.");
      HIWORD(v142[1]) = -4864;
      sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
      v82 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v82);

      v83 = v132;
      sub_1A84E5C8C();
      v84 = v131;
      sub_1A8467450(v139, v131, type metadata accessor for ImportExport.Attachment);
      v85 = v54;
      v86 = v55;
      v87 = sub_1A84E5C7C();
      v88 = sub_1A84E619C();

      v89 = &selRef_isGroupTypingMessage;
      v90 = &selRef_generateUnusedChatIdentifierForGroupChatWithServiceName_chatWithChatIdentifierExists_;
      if (os_log_type_enabled(v87, v88))
      {
        v91 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v142[0] = v138;
        *v91 = 134218498;
        *(v91 + 4) = [v86 messagePartIndex];

        *(v91 + 12) = 2080;
        v92 = [v85 guid];
        v93 = sub_1A84E5DBC();
        v94 = v86;
        v95 = v84;
        v97 = v96;

        v98 = sub_1A82446BC(v93, v97, v142);

        *(v91 + 14) = v98;
        *(v91 + 22) = 2080;
        v99 = ImportExport.Attachment.description.getter();
        v101 = v100;
        v102 = v95;
        v86 = v94;
        v89 = &selRef_isGroupTypingMessage;
        sub_1A8467380(v102, type metadata accessor for ImportExport.Attachment);
        v103 = sub_1A82446BC(v99, v101, v142);

        *(v91 + 24) = v103;
        v90 = &selRef_generateUnusedChatIdentifierForGroupChatWithServiceName_chatWithChatIdentifierExists_;
        _os_log_impl(&dword_1A823F000, v87, v88, "Failed to create message part for message part %ld in message %s with attachment: %s", v91, 0x20u);
        v104 = v138;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v104, -1, -1);
        MEMORY[0x1AC56D3F0](v91, -1, -1);

        (*(v134 + 8))(v132, v135);
      }

      else
      {

        sub_1A8467380(v84, type metadata accessor for ImportExport.Attachment);
        (*(v134 + 8))(v83, v135);
      }

      v120 = [v85 v90[43]];
      v121 = sub_1A84E5DBC();
      v123 = v122;

      v124 = [v86 v89[391]];
      sub_1A84D6AC4();
      v111 = swift_allocError();
      *v125 = v121;
      *(v125 + 8) = v123;
      *(v125 + 16) = v124;
      *(v125 + 24) = 0;
      *(v125 + 32) = 1;
      swift_willThrow();

      sub_1A8467380(v139, type metadata accessor for ImportExport.Attachment);
LABEL_28:
      v126 = v140;
      swift_beginAccess();
      v127 = *(v126 + 16);
      *(v126 + 16) = v111;

      *v141 = 1;
      return;
    }

    v113 = v130;
    sub_1A84926EC(v56, v130);
    if (sub_1A83F54E0())
    {
      v114 = v129;
      sub_1A8467450(v113, v129, type metadata accessor for ImportExport.MessagePart);
      v115 = v133;
      swift_beginAccess();
      v116 = *(v115 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v115 + 16) = v116;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v116 = sub_1A83EF140(0, v116[2] + 1, 1, v116);
        *(v115 + 16) = v116;
      }

      v119 = v116[2];
      v118 = v116[3];
      if (v119 >= v118 >> 1)
      {
        v116 = sub_1A83EF140(v118 > 1, v119 + 1, 1, v116);
      }

      v116[2] = v119 + 1;
      sub_1A84926EC(v114, v116 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v119);
      *(v115 + 16) = v116;
      swift_endAccess();
    }

    sub_1A8467380(v113, type metadata accessor for ImportExport.MessagePart);
    sub_1A8467380(v139, type metadata accessor for ImportExport.Attachment);
  }

  else
  {
    v131 = v38;
    v132 = v44;
    v136 = v12;
    v57 = [a1 messagePartBody];
    v139 = a4;
    v58 = a1;
    v59 = [v57 string];
    v60 = sub_1A84E5DBC();
    v62 = v61;

    v63 = [v58 links];
    sub_1A84E558C();
    v64 = sub_1A84E5FFC();

    v65 = v139;
    (*(v15 + 56))(v26, 1, 1, v14);
    sub_1A83F4684(v65, v58, v60, v62, v64, v26, v32);
    v66 = v57;
    v67 = v138;
    if ((*(v138 + 48))(v32, 1, v137) == 1)
    {
      sub_1A824B2D4(v32, &qword_1EB2E8F58, &unk_1A850BB38);
      strcpy(v142, "ImportExport.");
      HIWORD(v142[1]) = -4864;
      sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
      v68 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v68);

      v69 = v136;
      sub_1A84E5C8C();
      v70 = v58;
      v71 = sub_1A84E5C7C();
      v72 = sub_1A84E619C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = [v70 messagePartIndex];

        _os_log_impl(&dword_1A823F000, v71, v72, "Failed to create message part for message part %ld", v73, 0xCu);
        MEMORY[0x1AC56D3F0](v73, -1, -1);
      }

      else
      {

        v71 = v70;
      }

      v105 = v66;

      (*(v134 + 8))(v69, v135);
      v106 = [v65 guid];
      v107 = sub_1A84E5DBC();
      v109 = v108;

      v110 = [v70 messagePartIndex];
      sub_1A84D6AC4();
      v111 = swift_allocError();
      *v112 = v107;
      *(v112 + 8) = v109;
      *(v112 + 16) = v110;
      *(v112 + 24) = 0;
      *(v112 + 32) = 1;
      swift_willThrow();

      goto LABEL_28;
    }

    v74 = v132;
    sub_1A84926EC(v32, v132);
    if (sub_1A83F54E0())
    {
      v75 = v131;
      sub_1A8467450(v74, v131, type metadata accessor for ImportExport.MessagePart);
      v76 = v133;
      swift_beginAccess();
      v77 = *(v76 + 16);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *(v76 + 16) = v77;
      if ((v78 & 1) == 0)
      {
        v77 = sub_1A83EF140(0, v77[2] + 1, 1, v77);
        *(v76 + 16) = v77;
      }

      v80 = v77[2];
      v79 = v77[3];
      if (v80 >= v79 >> 1)
      {
        v77 = sub_1A83EF140(v79 > 1, v80 + 1, 1, v77);
      }

      v77[2] = v80 + 1;
      sub_1A84926EC(v75, v77 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v80);
      *(v76 + 16) = v77;
      swift_endAccess();

      sub_1A8467380(v74, type metadata accessor for ImportExport.MessagePart);
    }

    else
    {
      sub_1A8467380(v74, type metadata accessor for ImportExport.MessagePart);
    }
  }
}

void sub_1A84D6300(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1A84D6384(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A84E5C9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v62 - v14;
  v16 = sub_1A83EA2FC(&qword_1EB2E8F58, &unk_1A850BB38);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v62 - v18;
  v20 = type metadata accessor for ImportExport.MessagePart();
  v21 = *(v20 - 8);
  v70 = v20;
  v71 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 text];
  if (v24)
  {
    v64 = a3;
    v65 = v8;
    v66 = v7;
    v67 = v11;
    v69 = a2;
    v25 = v24;
    v26 = sub_1A84E5DBC();
    v73 = v27;
    v28 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

    v29 = v28;
    v30 = [objc_allocWithZone(MEMORY[0x1E69A8140]) initWithMessagePartBody:v29 messagePartIndex:0 messagePartRange:{0, sub_1A84E5E7C()}];

    v31 = a1;
    v32 = v30;
    v33 = [v32 links];
    sub_1A84E558C();
    v34 = sub_1A84E5FFC();

    v35 = v32;
    v36 = v31;
    v37 = type metadata accessor for ImportExport.Attachment();
    (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
    sub_1A83F4684(v31, v35, v26, v73, v34, v15, v19);
    v38 = v3;
    if (v3)
    {
LABEL_11:

      *v69 = v38;
      return;
    }

    v63 = v35;
    v73 = v29;
    v39 = v71;
    if ((*(v71 + 48))(v19, 1, v70) == 1)
    {
      sub_1A824B2D4(v19, &qword_1EB2E8F58, &unk_1A850BB38);
      strcpy(v72, "ImportExport.");
      HIWORD(v72[1]) = -4864;
      sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
      v40 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v40);

      v41 = v67;
      sub_1A84E5C8C();
      v42 = v36;
      v43 = sub_1A84E5C7C();
      v44 = sub_1A84E619C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v72[0] = v46;
        *v45 = 136315138;
        v47 = [v42 guid];
        v48 = sub_1A84E5DBC();
        v50 = v49;

        v51 = sub_1A82446BC(v48, v50, v72);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_1A823F000, v43, v44, "Failed to create message part for message text for message guid: %s", v45, 0xCu);
        sub_1A8244788(v46);
        MEMORY[0x1AC56D3F0](v46, -1, -1);
        MEMORY[0x1AC56D3F0](v45, -1, -1);

        (*(v65 + 8))(v67, v66);
      }

      else
      {

        (*(v65 + 8))(v41, v66);
      }

      v56 = v73;
      v57 = [v42 guid];
      v58 = sub_1A84E5DBC();
      v60 = v59;

      sub_1A84D6AC4();
      v38 = swift_allocError();
      *v61 = v58;
      *(v61 + 8) = v60;
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      *(v61 + 32) = 1;
      swift_willThrow();
      v35 = v56;
      v29 = v63;
      goto LABEL_11;
    }

    v53 = v68;
    sub_1A84926EC(v19, v68);
    if (sub_1A83F54E0())
    {
      sub_1A83EA2FC(&qword_1EB2E6EB8, &qword_1A8500CA0);
      v54 = *(v39 + 72);
      v55 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1A85013E0;
      sub_1A84926EC(v53, v52 + v55);
    }

    else
    {

      sub_1A8467380(v53, type metadata accessor for ImportExport.MessagePart);
      v52 = MEMORY[0x1E69E7CC0];
    }

    a3 = v64;
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v52;
}

uint64_t sub_1A84D6A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A84D6A64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A84D6AC4()
{
  result = qword_1EB2E8F60;
  if (!qword_1EB2E8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F60);
  }

  return result;
}

void *sub_1A84D6B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1A84D832C(*(a1 + 16), 0);
  v4 = sub_1A84D86E8(&v6, v3 + 4, v2, a1);
  sub_1A8267334();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id sub_1A84D6C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  *&v3[v7] = sub_1A83EC7A4(MEMORY[0x1E69E7CC0]);
  if (a1 && a3)
  {
    swift_beginAccess();
    v8 = *&v3[v7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *&v3[v7];
    *&v3[v7] = 0x8000000000000000;
    sub_1A848E25C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *&v3[v7] = v11;
    swift_endAccess();
  }

  else
  {
  }

  v12.receiver = v3;
  v12.super_class = IMMergedDomainIdentifiers;
  return objc_msgSendSuper2(&v12, sel_init, v11);
}

uint64_t sub_1A84D6F54(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1A824B390(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

uint64_t sub_1A84D70BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return 0;
  }

  v9 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16) || (v11 = sub_1A824B390(a1, a2), (v12 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  if (*(v13 + 16))
  {

    v14 = sub_1A824B390(a3, a4);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  return v16;
}

uint64_t sub_1A84D7290(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v19 = MEMORY[0x1E69E7CC0];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_10:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(*(v4 + 56) + ((v11 << 9) | (8 * v12)));

      result = sub_1A83EE818(v14);
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v15 = sub_1A8249338(v19);

  v16 = *(v15 + 16);
  if (!v16)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1A84D832C(*(v15 + 16), 0);
  v18 = sub_1A84D8438(&v19, v17 + 4, v16, v15);
  result = sub_1A8267334();
  if (v18 == v16)
  {
    return v17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t IMMergedDomainIdentifiers.description.getter()
{
  v1 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  sub_1A83EA2FC(&qword_1EB2E88E8, &qword_1A8509AD8);
  v3 = sub_1A84E5D4C();

  return v3;
}

uint64_t sub_1A84D7710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A83EC698(MEMORY[0x1E69E7CC0]);
  if (a2)
  {
    v7 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16) && (v9 = sub_1A824B390(a1, a2), (v10 & 1) != 0))
    {
      v11 = v6;
      v12 = *(*(v8 + 56) + 8 * v9);
      swift_endAccess();
    }

    else
    {
      v11 = v6;
      swift_endAccess();
      v13 = sub_1A83EC698(MEMORY[0x1E69E7CC0]);
    }

    v14 = 0;
    v15 = v13 + 64;
    v16 = 1 << *(v13 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v13 + 64);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      while (1)
      {
LABEL_9:
        while (1)
        {
          v20 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v21 = v20 | (v14 << 6);
          v22 = *(*(v13 + 56) + 8 * v21);
          if (*(v22 + 16))
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_11;
          }
        }

        v101 = a2;
        v103 = a1;
        v111 = v13;
        v24 = (*(v13 + 48) + 16 * v21);
        v26 = *v24;
        v25 = v24[1];

        v27 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v27;
        v113 = v26;
        v115 = v25;
        v29 = sub_1A824B390(v26, v25);
        v31 = v27[2];
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          goto LABEL_93;
        }

        v35 = v30;
        if (v27[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = v29;
            sub_1A848F89C();
            v29 = v43;
          }

          a1 = v103;
          if (v35)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1A848CA14(v34, isUniquelyReferenced_nonNull_native);
          v29 = sub_1A824B390(v26, v115);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_95;
          }

          a1 = v103;
          if (v35)
          {
LABEL_24:
            v40 = v29;

            v11 = v117;
            v41 = v117[7];
            v42 = *(v41 + 8 * v40);
            *(v41 + 8 * v40) = v22;

            goto LABEL_25;
          }
        }

        v27[(v29 >> 6) + 8] |= 1 << v29;
        v37 = (v27[6] + 16 * v29);
        *v37 = v113;
        v37[1] = v115;
        *(v27[7] + 8 * v29) = v22;
        v38 = v27[2];
        v33 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v33)
        {
          goto LABEL_94;
        }

        v11 = v27;
        v27[2] = v39;
LABEL_25:
        v13 = v111;
        a2 = v101;
        if (!v18)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v23 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_85;
      }

      if (v23 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v14;
      if (v18)
      {
        v14 = v23;
        goto LABEL_9;
      }
    }

    v6 = v11;
  }

  v44 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v45 = *(v3 + v44);
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(v45 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
LABEL_32:
  while (v49)
  {
LABEL_37:
    v53 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v54 = v53 | (v51 << 6);
    v55 = *(*(v45 + 56) + 8 * v54);
    if (a2)
    {
      v56 = (*(v45 + 48) + 16 * v54);
      v57 = *v56 == a1 && v56[1] == a2;
      if (v57 || (sub_1A84E67AC() & 1) != 0)
      {
        continue;
      }
    }

    v102 = a2;
    v104 = a1;
    v108 = v55 + 64;
    v58 = 1 << *(v55 + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(v55 + 64);
    v107 = (v58 + 63) >> 6;

    v61 = 0;
    v105 = v45;
    v106 = v55;
    while (1)
    {
      if (!v60)
      {
        while (1)
        {
          v66 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_86;
          }

          if (v66 >= v107)
          {

            a2 = v102;
            a1 = v104;
            goto LABEL_32;
          }

          v60 = *(v108 + 8 * v66);
          ++v61;
          if (v60)
          {
            v65 = v6;
            goto LABEL_55;
          }
        }
      }

      v65 = v6;
      v66 = v61;
LABEL_55:
      v67 = __clz(__rbit64(v60)) | (v66 << 6);
      v68 = (*(v55 + 48) + 16 * v67);
      v69 = *v68;
      v70 = v68[1];
      v116 = *(*(v55 + 56) + 8 * v67);
      v71 = v65;
      v72 = *(v65 + 16);

      v112 = v70;
      v114 = v69;
      if (v72)
      {
        v73 = v116;

        v74 = sub_1A824B390(v69, v70);
        v75 = MEMORY[0x1E69E7CC0];
        if ((v76 & 1) == 0)
        {
          goto LABEL_60;
        }

        v77 = *(v71[7] + 8 * v74);
      }

      else
      {
        v73 = v116;
        v77 = MEMORY[0x1E69E7CC0];
      }

      v75 = v77;
LABEL_60:
      v109 = v71;
      v78 = *(v73 + 16);
      v79 = *(v75 + 16);
      v80 = v79 + v78;
      if (__OFADD__(v79, v78))
      {
        goto LABEL_87;
      }

      v81 = v75;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v81;
      if (!v82 || v80 > *(v81 + 24) >> 1)
      {
        if (v79 <= v80)
        {
          v84 = v79 + v78;
        }

        else
        {
          v84 = v79;
        }

        v83 = sub_1A824A1FC(v82, v84, 1, v81);
      }

      v85 = v114;
      v55 = v106;
      v110 = v83;
      if (*(v116 + 16))
      {
        if ((*(v83 + 3) >> 1) - *(v83 + 2) < v78)
        {
          goto LABEL_90;
        }

        swift_arrayInitWithCopy();
        v85 = v114;

        if (v78)
        {
          v86 = *(v110 + 2);
          v33 = __OFADD__(v86, v78);
          v87 = v86 + v78;
          if (v33)
          {
            goto LABEL_92;
          }

          *(v110 + 2) = v87;
        }
      }

      else
      {

        if (v78)
        {
          goto LABEL_88;
        }
      }

      v88 = swift_isUniquelyReferenced_nonNull_native();
      v89 = sub_1A824B390(v85, v112);
      v91 = v109[2];
      v92 = (v90 & 1) == 0;
      v33 = __OFADD__(v91, v92);
      v93 = v91 + v92;
      if (v33)
      {
        goto LABEL_89;
      }

      v94 = v90;
      if (v109[3] >= v93)
      {
        if ((v88 & 1) == 0)
        {
          v99 = v89;
          sub_1A848F89C();
          v89 = v99;
        }
      }

      else
      {
        sub_1A848CA14(v93, v88);
        v89 = sub_1A824B390(v114, v112);
        if ((v94 & 1) != (v95 & 1))
        {
          goto LABEL_95;
        }
      }

      v60 &= v60 - 1;
      if (v94)
      {
        v62 = v89;

        v6 = v109;
        v63 = v109[7];
        v64 = *(v63 + 8 * v62);
        *(v63 + 8 * v62) = v110;
      }

      else
      {
        v6 = v109;
        v109[(v89 >> 6) + 8] |= 1 << v89;
        v96 = (v109[6] + 16 * v89);
        *v96 = v114;
        v96[1] = v112;
        *(v109[7] + 8 * v89) = v110;
        v97 = v109[2];
        v33 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v33)
        {
          goto LABEL_91;
        }

        v109[2] = v98;
      }

      v61 = v66;
      v45 = v105;
    }
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v52 >= v50)
    {

      return v6;
    }

    v49 = *(v46 + 8 * v52);
    ++v51;
    if (v49)
    {
      v51 = v52;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
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
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t sub_1A84D7F98()
{
  v1 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v35 = MEMORY[0x1E69E7CC0];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v32 = v2;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  v30 = v7;
  v31 = v3;
LABEL_6:
  if (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = *(*(v32 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v33 = (v6 - 1) & v6;
    v34 = v11;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v15)
    {
LABEL_21:
      v20 = (v17 << 9) | (8 * __clz(__rbit64(v15)));
      v21 = *(*(v34 + 56) + v20);
      v22 = *(v21 + 16);
      v23 = *(v18 + 16);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_36;
      }

      v25 = *(*(v34 + 56) + v20);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || v24 > *(v18 + 24) >> 1)
      {
        if (v23 <= v24)
        {
          v26 = v23 + v22;
        }

        else
        {
          v26 = v23;
        }

        result = sub_1A824A1FC(result, v26, 1, v18);
        v18 = result;
      }

      v15 &= v15 - 1;
      if (*(v21 + 16))
      {
        if ((*(v18 + 24) >> 1) - *(v18 + 16) < v22)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v27 = *(v18 + 16);
          v28 = __OFADD__(v27, v22);
          v29 = v27 + v22;
          if (v28)
          {
            goto LABEL_39;
          }

          *(v18 + 16) = v29;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_37;
        }
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        result = sub_1A83EE724(v18);
        v9 = v10;
        v7 = v30;
        v3 = v31;
        v6 = v33;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v17 = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v35;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void __swiftcall IMMergedDomainIdentifiers.init()(IMMergedDomainIdentifiers *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for IMMergedDomainIdentifiers()
{
  result = qword_1EB2E8F70;
  if (!qword_1EB2E8F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8F70);
  }

  return result;
}

void *sub_1A84D832C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A84D83B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1A84D8438(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A84D8590(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A84D86E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t ImportExport.AttachmentDownloadError.description.getter()
{
  v1 = v0;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000024, 0x80000001A8534CA0);
  v4 = *v0;
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A8534CD0);
  MEMORY[0x1AC56A990](v1[1], v1[2]);
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8534CF0);
  MEMORY[0x1AC56A990](v1[4], v1[5]);
  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  v5 = v0[3];
  v2 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A8534D10);
  v6 = *(v0 + *(type metadata accessor for ImportExport.AttachmentDownloadError() + 36));
  ImportExport.Attachment.MissingFileReasons.description.getter();
  MEMORY[0x1AC56A990]();

  return 0;
}

uint64_t type metadata accessor for ImportExport.AttachmentDownloadError()
{
  result = qword_1EB2E8FF8;
  if (!qword_1EB2E8FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.AttachmentDownloadError.init(withErrorKind:errorDescription:downloadURL:fileTransferErrorReason:fileTransferErrorReasonDescription:missingFileReasons:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a8;
  *a9 = *a1;
  v15 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v15 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    a2 = a6;
    a3 = a7;
  }

  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  v16 = type metadata accessor for ImportExport.AttachmentDownloadError();
  result = sub_1A83FB148(a4, a9 + *(v16 + 32));
  *(a9 + *(v16 + 36)) = v14;
  return result;
}

uint64_t sub_1A84D8B0C()
{
  v0 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1A82442B8(v0, qword_1EB2E8F90);
  v8 = sub_1A824431C(v0, qword_1EB2E8F90);
  v9 = sub_1A84E558C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  *v3 = 2;
  v10 = 0xD000000000000012;
  if (("rReasonDescription" & 0xF00000000000000) != 0)
  {
    v11 = 0xD000000000000012;
  }

  else
  {
    v11 = 0;
  }

  if (("rReasonDescription" & 0xF00000000000000) != 0)
  {
    v12 = 0x80000001A8534DA0;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  if (("rReasonDescription" & 0x2000000000000000) != 0)
  {
    v10 = v11;
    v13 = v12;
  }

  else
  {
    v13 = 0x80000001A8534DA0;
  }

  *(v3 + 1) = v10;
  *(v3 + 2) = v13;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  sub_1A83FB148(v7, &v3[*(v0 + 32)]);
  *&v3[*(v0 + 36)] = 0;
  return sub_1A84DA9B0(v3, v8);
}

uint64_t sub_1A84D8CF4(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20 - v15;
  sub_1A82442B8(v9, a2);
  v17 = sub_1A824431C(v9, a2);
  v18 = sub_1A84E558C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v12 + 2) = a5;
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0xE000000000000000;
  sub_1A83FB148(v16, &v12[*(v9 + 32)]);
  *&v12[*(v9 + 36)] = 0;
  return sub_1A84DA9B0(v12, v17);
}

uint64_t sub_1A84D8E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v6 = sub_1A824431C(v5, a2);

  return sub_1A83EFFDC(v6, a3);
}

uint64_t ImportExport.AttachmentDownloadError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ImportExport.AttachmentDownloadError.fileTransferErrorReasonDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ImportExport.AttachmentDownloadError.downloadURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.AttachmentDownloadError() + 32);

  return sub_1A84580FC(v3, a1);
}

uint64_t ImportExport.AttachmentDownloadError.missingFileReasons.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ImportExport.AttachmentDownloadError();
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_1A84D8FD8()
{
  v1 = *v0;
  v2 = 0x6E694B726F727265;
  v3 = 0xD000000000000012;
  if (v1 == 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000022;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1A84D90AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84DA750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84D90D4(uint64_t a1)
{
  v2 = sub_1A84D9408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84D9110(uint64_t a1)
{
  v2 = sub_1A84D9408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AttachmentDownloadError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8FC0, &qword_1A850BB48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D9408();
  sub_1A84E68AC();
  v26 = *v3;
  v25 = 0;
  sub_1A84D945C();
  sub_1A84E672C();
  if (!v2)
  {
    v11 = *(v3 + 1);
    v12 = *(v3 + 2);
    v24 = 1;
    sub_1A84E66CC();
    v13 = *(v3 + 3);
    v23 = 2;
    sub_1A84E670C();
    v14 = *(v3 + 4);
    v15 = *(v3 + 5);
    v22 = 3;
    sub_1A84E66CC();
    v16 = type metadata accessor for ImportExport.AttachmentDownloadError();
    v17 = *(v16 + 32);
    v21 = 4;
    sub_1A84E558C();
    sub_1A84DA478(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
    sub_1A84E66BC();
    v20 = *&v3[*(v16 + 36)];
    v19[15] = 5;
    sub_1A841252C();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A84D9408()
{
  result = qword_1EB2E8FC8;
  if (!qword_1EB2E8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FC8);
  }

  return result;
}

unint64_t sub_1A84D945C()
{
  result = qword_1EB2E8FD0;
  if (!qword_1EB2E8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FD0);
  }

  return result;
}

uint64_t ImportExport.AttachmentDownloadError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v29 = sub_1A83EA2FC(&qword_1EB2E8FD8, &qword_1A850BB50);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v30 = a1;
  sub_1A82471E0(a1, v17);
  sub_1A84D9408();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(v30);
  }

  v26 = v12;
  v27 = v7;
  v37 = 0;
  sub_1A84D9910();
  v18 = v29;
  sub_1A84E666C();
  v19 = v15;
  *v15 = v38;
  v36 = 1;
  v20 = v8;
  *(v15 + 1) = sub_1A84E660C();
  *(v15 + 2) = v21;
  v35 = 2;
  *(v15 + 3) = sub_1A84E664C();
  v34 = 3;
  *(v15 + 4) = sub_1A84E660C();
  *(v15 + 5) = v22;
  sub_1A84E558C();
  v33 = 4;
  sub_1A84DA478(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
  v23 = v27;
  sub_1A84E65FC();
  v24 = v26;
  sub_1A83FB148(v23, v19 + *(v26 + 32));
  v32 = 5;
  sub_1A84125E8();
  sub_1A84E666C();
  (*(v20 + 8))(v11, v18);
  *(v19 + *(v24 + 36)) = v31;
  sub_1A83EFFDC(v19, v28);
  sub_1A8244788(v30);
  return sub_1A83F0040(v19);
}

unint64_t sub_1A84D9910()
{
  result = qword_1EB2E8FE0;
  if (!qword_1EB2E8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FE0);
  }

  return result;
}

uint64_t ImportExport.AttachmentDownloadError.ErrorKind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ImportExport.AttachmentDownloadError.ErrorKind.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x74754F64656D6974;
  if (*v0 != 2)
  {
    v2 = 0x46676E697373696DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1A84D9A84()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84D9B54()
{
  *v0;
  *v0;
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A84D9C10()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84D9D8C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ImportExport.AttachmentDownloadError.ErrorKind.init(rawValue:)(a1);
}

void sub_1A84D9D98(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x74754F64656D6974;
  if (*v1 != 2)
  {
    v5 = 0x46676E697373696DLL;
    v4 = 0xEB00000000656C69;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001A852EE70;
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

uint64_t ImportExport.AttachmentDownloadError.hash(into:)()
{
  *v0;
  *v0;
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A84E5E5C();
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return sub_1A84E5E5C();
}

uint64_t ImportExport.AttachmentDownloadError.hashValue.getter()
{
  sub_1A84E684C();
  *v0;
  *v0;
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A84E5E5C();
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A84DA010()
{
  *v0;
  *v0;
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A84E5E5C();
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return sub_1A84E5E5C();
}

uint64_t sub_1A84DA0FC()
{
  sub_1A84E684C();
  *v0;
  *v0;
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A84E5E5C();
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t static ImportExport.AttachmentDownloadError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = *a1;
  v5 = 0xE700000000000000;
  v6 = 0x74754F64656D6974;
  if (v4 == 2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x46676E697373696DLL;
    v7 = 0xEB00000000656C69;
  }

  v8 = 0xD000000000000012;
  v9 = 0x80000001A852EE70;
  if (*a1)
  {
    v5 = 0x80000001A852EE70;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0xE800000000000000;
  v13 = 0x74754F64656D6974;
  if (*a2 != 2)
  {
    v13 = 0x46676E697373696DLL;
    v12 = 0xEB00000000656C69;
  }

  if (*a2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v12;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_1A84E67AC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 3) != *(a2 + 3) || (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5)) && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  return sub_1A84E67AC();
}

unint64_t sub_1A84DA3DC()
{
  result = qword_1EB2E8FE8;
  if (!qword_1EB2E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FE8);
  }

  return result;
}

uint64_t sub_1A84DA478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A84DA4C0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A84366B0(*a1, *a2) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v4 && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  return sub_1A84E67AC();
}

void sub_1A84DA590()
{
  sub_1A845B27C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A84DA64C()
{
  result = qword_1EB2E9008;
  if (!qword_1EB2E9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9008);
  }

  return result;
}

unint64_t sub_1A84DA6A4()
{
  result = qword_1EB2E9010;
  if (!qword_1EB2E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9010);
  }

  return result;
}

unint64_t sub_1A84DA6FC()
{
  result = qword_1EB2E9018;
  if (!qword_1EB2E9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9018);
  }

  return result;
}

uint64_t sub_1A84DA750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E694B726F727265 && a2 == 0xE900000000000064;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8534D30 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8534D50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A8534D70 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB000000004C5255 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85303A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

unint64_t sub_1A84DA95C()
{
  result = qword_1EB2E9020;
  if (!qword_1EB2E9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9020);
  }

  return result;
}

uint64_t sub_1A84DA9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A84DAA14()
{
  type metadata accessor for ImportExport.ContactManager();
  v0 = swift_allocObject();
  _s14ContactManagerC18AuthorizationStateCMa();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  *(v0 + 16) = v1;
  result = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  *(v0 + 24) = result;
  qword_1EB2E9030 = v0;
  return result;
}

uint64_t ImportExport.ContactManager.__allocating_init()()
{
  v0 = swift_allocObject();
  _s14ContactManagerC18AuthorizationStateCMa();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  *(v0 + 16) = v1;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  return v0;
}

uint64_t static ImportExport.ContactManager.shared.getter()
{
  if (qword_1EB2E5A40 != -1)
  {
    swift_once();
  }
}

uint64_t ImportExport.ContactManager.init()()
{
  _s14ContactManagerC18AuthorizationStateCMa();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  *(v0 + 16) = v1;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  return v0;
}

uint64_t ImportExport.ContactManager.requestAuthorization()()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *(*(sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_1A84E5C9C();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84DAD58, 0, 0);
}

uint64_t sub_1A84DAD58()
{
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v1 = v0[8];
    v2 = v0[5];

    v3 = v0[1];

    return v3(1);
  }

  else
  {
    v5 = *(v0[3] + 16);
    v0[9] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1A84DAE30, v5, 0);
  }
}

uint64_t sub_1A84DAE30()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 120);
  *(v0 + 80) = v2;
  v3 = *(v1 + 128);
  *(v0 + 113) = v3;
  sub_1A84DD0BC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A84DAEA8, 0, 0);
}

uint64_t sub_1A84DAEA8()
{
  v1 = *(v0 + 113);
  if (v1 == 255)
  {
    v7 = *(v0 + 64);
    sub_1A84E5C8C();
    v8 = sub_1A84E5C7C();
    v9 = sub_1A84E617C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v8, v9, "Requesting CNContactStore authorization...", v10, 2u);
      MEMORY[0x1AC56D3F0](v10, -1, -1);
    }

    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);

    (*(v14 + 8))(v12, v13);

    return MEMORY[0x1EEE6DFA0](sub_1A84DB0A0, v11, 0);
  }

  else
  {
    v2 = *(v0 + 80);
    if (v1)
    {
      *(v0 + 16) = v2;
      sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
      swift_willThrowTypedImpl();
      v3 = *(v0 + 64);
      v4 = *(v0 + 40);

      v5 = *(v0 + 8);
      v6 = 0;
    }

    else
    {
      v15 = *(v0 + 64);
      v16 = *(v0 + 40);

      v5 = *(v0 + 8);
      v6 = v2 & 1;
    }

    return v5(v6);
  }
}

uint64_t sub_1A84DB0A0()
{
  v1 = v0[9];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v3 = v0[5];
    v2 = sub_1A84DB474(v0[3], v0[4]);
    v4 = *(v1 + 112);
    *(v1 + 112) = v2;

    v5 = sub_1A84E60BC();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = sub_1A84DD0E0();
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v1;
    v7[5] = v2;
    swift_retain_n();

    sub_1A84DCA5C(0, 0, v3, &unk_1A850BF08, v7);
  }

  v0[11] = v2;
  v8 = *(MEMORY[0x1E69E86A8] + 4);

  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  *v9 = v0;
  v9[1] = sub_1A84DB264;
  v11 = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 14, v2, v11, v10, v12);
}

uint64_t sub_1A84DB264()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1A84DB3F8;
  }

  else
  {
    v3 = sub_1A84DB378;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A84DB378()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_1A84DB3F8()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1A84DB474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1A84E60BC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  return sub_1A84DBD68(0, 0, v7, &unk_1A850BFE8, v9);
}

uint64_t sub_1A84DB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A84DB5A4, 0, 0);
}

uint64_t sub_1A84DB5A4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1A84DB694;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000016, 0x80000001A8534EB0, sub_1A84DD3E4, v1, v5);
}

uint64_t sub_1A84DB694()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A84DB7D0, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A84DB7D0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1A84DB834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 24);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1A84DD3EC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A84DBCF0;
  aBlock[3] = &unk_1F1B76DA0;
  v14 = _Block_copy(aBlock);

  [v11 requestAccessForEntityType:0 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1A84DBA00(char a1, void *a2)
{
  v4 = sub_1A84E5C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  if (a2)
  {
    v12 = a2;
    sub_1A84A1368();
    v13 = a2;
    v14 = sub_1A84E5C7C();
    v15 = sub_1A84E619C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1A823F000, v14, v15, "CNContactStore authorization failed with error: %@", v16, 0xCu);
      sub_1A824B2D4(v17, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v17, -1, -1);
      MEMORY[0x1AC56D3F0](v16, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v24 = a2;
    sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
    return sub_1A84E606C();
  }

  else
  {
    sub_1A84A1368();
    v21 = sub_1A84E5C7C();
    v22 = sub_1A84E617C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A823F000, v21, v22, "CNContactStore authorization granted", v23, 2u);
      MEMORY[0x1AC56D3F0](v23, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v25 = a1 & 1;
    sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
    return sub_1A84E607C();
  }
}

void sub_1A84DBCF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1A84DBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1A84D0904(a3, v24 - v10);
  v12 = sub_1A84E60BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A824B2D4(v11, &qword_1EB2E6600, &qword_1A8507BA0);
  }

  else
  {
    sub_1A84E60AC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1A84E605C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1A84E5E1C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t static ImportExport.ContactManager.defaultKeys.getter()
{
  if (qword_1EB2E5A48 != -1)
  {
    swift_once();
  }
}

uint64_t ImportExport.ContactManager.fetchContact(for:keysToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1A84DC118;
  v6 = *MEMORY[0x1E69E9840];

  return ImportExport.ContactManager.requestAuthorization()();
}

uint64_t sub_1A84DC118(char a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);
    v8 = *MEMORY[0x1E69E9840];

    return v7();
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v10 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1A84DC2A4, 0, 0);
  }
}

uint64_t sub_1A84DC2A4()
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(v0 + 64) != 1)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 48) + 24);
  v5 = sub_1A84E5D8C();
  sub_1A83EA2FC(&qword_1EB2E6E30, &qword_1A8500C28);
  v6 = sub_1A84E5FEC();
  *(v0 + 16) = 0;
  v7 = [v4 unifiedContactWithIdentifier:v5 keysToFetch:v6 error:v0 + 16];

  v8 = *(v0 + 16);
  if (v7)
  {
    v9 = v7;
LABEL_5:
    v10 = *(v0 + 8);
    v11 = *MEMORY[0x1E69E9840];

    return v10(v9);
  }

  v13 = v8;
  sub_1A84E548C();

  swift_willThrow();
  v14 = *(v0 + 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14();
}

uint64_t ImportExport.ContactManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ImportExport.ContactManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84DC4A0()
{
  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A850BEE0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = [v1 descriptorForRequiredKeysForStyle_];
  *(v0 + 48) = [v1 descriptorForRequiredKeysForDelimiter];
  *(v0 + 56) = [v1 descriptorForRequiredKeysForNameOrder];
  v2 = *MEMORY[0x1E695C258];
  v37 = sub_1A84E5DBC();
  v38[0] = v3;
  v4 = *MEMORY[0x1E695C300];
  v38[1] = sub_1A84E5DBC();
  v38[2] = v5;
  v6 = *MEMORY[0x1E695C240];
  v38[3] = sub_1A84E5DBC();
  v38[4] = v7;
  v8 = *MEMORY[0x1E695C230];
  v38[5] = sub_1A84E5DBC();
  v38[6] = v9;
  v10 = *MEMORY[0x1E695C2F0];
  v38[7] = sub_1A84E5DBC();
  v38[8] = v11;
  v12 = *MEMORY[0x1E695C310];
  v38[9] = sub_1A84E5DBC();
  v38[10] = v13;
  v14 = *MEMORY[0x1E695C330];
  v38[11] = sub_1A84E5DBC();
  v38[12] = v15;
  v16 = *MEMORY[0x1E695C208];
  v38[13] = sub_1A84E5DBC();
  v38[14] = v17;
  v18 = *MEMORY[0x1E695C2B0];
  v38[15] = sub_1A84E5DBC();
  v38[16] = v19;
  v20 = *MEMORY[0x1E695C390];
  v38[17] = sub_1A84E5DBC();
  v38[18] = v21;
  v22 = *MEMORY[0x1E695C308];
  v38[19] = sub_1A84E5DBC();
  v38[20] = v23;
  v24 = *MEMORY[0x1E695C348];
  v38[21] = sub_1A84E5DBC();
  v38[22] = v25;
  v26 = *MEMORY[0x1E695C350];
  v38[23] = sub_1A84E5DBC();
  v38[24] = v27;
  v28 = *MEMORY[0x1E695C340];
  v38[25] = sub_1A84E5DBC();
  v38[26] = v29;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1A84E64FC();
  for (i = 0; i != 28; i += 2)
  {
    v31 = *&v36[i * 8 + 32];
    v32 = v38[i];

    sub_1A84E5D8C();

    sub_1A84E64DC();
    v33 = *(v35 + 16);
    sub_1A84E650C();
    sub_1A84E651C();
    sub_1A84E64EC();
  }

  swift_arrayDestroy();
  result = sub_1A83EEAD4(v35);
  qword_1EB2E9038 = v0;
  return result;
}

uint64_t sub_1A84DC75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = *(MEMORY[0x1E69E86A8] + 4);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  v9 = sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  *v8 = v5;
  v8[1] = sub_1A84DC828;
  v10 = MEMORY[0x1E69E6370];
  v11 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5 + 40, a5, v10, v9, v11);
}

uint64_t sub_1A84DC828()
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = sub_1A84DC9D4;
  }

  else
  {
    v4 = sub_1A84DC950;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A84DC950()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 40);
  v3 = *(v1 + 128);
  *(v1 + 128) = 0;
  sub_1A84DD248(v2, v3);
  v4 = *(v0 + 16);
  v5 = *(v4 + 112);
  *(v4 + 112) = 0;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A84DC9D4()
{
  v1 = v0[2];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[4];
  v3 = *(v1 + 128);
  *(v1 + 128) = 1;
  sub_1A84DD248(v2, v3);
  v4 = v0[2];
  v5 = *(v4 + 112);
  *(v4 + 112) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A84DCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1A84D0904(a3, v27 - v11);
  v13 = sub_1A84E60BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A824B2D4(v12, &qword_1EB2E6600, &qword_1A8507BA0);
  }

  else
  {
    sub_1A84E60AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1A84E605C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1A84E5E1C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1A84DCD4C()
{
  v1 = *(v0 + 112);

  sub_1A84DD248(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t ImportExportParticipantAddress.fetchContactIfAvailable(keysToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A84DCDC0, 0, 0);
}

uint64_t sub_1A84DCDC0()
{
  v1 = v0[5];
  v2 = (*(v0[4] + 72))(v0[3]);
  v0[6] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (qword_1EB2E5A40 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1A84DCF00;
    v7 = v0[2];

    return ImportExport.ContactManager.fetchContact(for:keysToFetch:)(v4, v5, v7);
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_1A84DCF00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A84DD058, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1A84DD058()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

id sub_1A84DD0BC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1A84DD0D4(result, a2 & 1);
  }

  return result;
}

id sub_1A84DD0D4(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_1A84DD0E0()
{
  result = qword_1EB2E9048;
  if (!qword_1EB2E9048)
  {
    _s14ContactManagerC18AuthorizationStateCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9048);
  }

  return result;
}

uint64_t sub_1A84DD138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A82505F4;

  return sub_1A84DC75C(a1, v4, v5, v7, v6);
}

void sub_1A84DD248(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1A84DD260(a1, a2 & 1);
  }
}

void sub_1A84DD260(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1A84DD26C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A824FBE0;

  return sub_1A8248560(a1, v5);
}

uint64_t sub_1A84DD324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A82505F4;

  return sub_1A84DB580(a1, v4, v5, v7, v6);
}

uint64_t sub_1A84DD3EC(char a1, void *a2)
{
  v5 = *(sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A84DBA00(a1, a2);
}

id sub_1A84DD4C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_1A84E5DBC();
  v15 = v14;
  v16 = sub_1A84E5D3C();
  if (a8)
  {
    v17 = sub_1A84E5DBC();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a3;
  v20 = a1;
  v21 = sub_1A84DD5D8(v13, v15, a5, a6, v16, v17, a8);

  return v21;
}

uint64_t sub_1A84DD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1A84E5D2C();
  v10 = [v7 adjustMessageSummaryInfoForSending_];

  sub_1A84E5D3C();
  v11 = sub_1A84E5D2C();
  v28 = sub_1A8442C90;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A8442D50;
  v27 = &unk_1F1B76DC8;
  v12 = _Block_copy(&aBlock);

  v28 = sub_1A8442D4C;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A8442D50;
  v27 = &unk_1F1B76DF0;
  v13 = _Block_copy(&aBlock);

  v14 = [v7 backwardCompatibilityStringWithMessageSummaryInfo:v11 isAdaptiveImageGlyphProvider:v12 isCommSafetySensitiveProvider:v13];
  _Block_release(v12);

  _Block_release(v13);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = IMCreateSuperFormatStringFromPlainTextString();

  v17 = sub_1A84E5D8C();
  v18 = [v7 associatedMessageType];
  v19 = [v7 associatedMessageEmoji];
  if (!v19)
  {
    sub_1A84E5DBC();
    v19 = sub_1A84E5D8C();
  }

  v20 = sub_1A84E5D2C();

  if (a7)
  {
    a7 = sub_1A84E5D8C();
  }

  v21 = [objc_opt_self() instantMessageWithAssociatedMessageContent:v16 associatedMessageGUID:v17 associatedMessageType:v18 associatedMessageRange:a3 associatedMessageEmoji:a4 messageSummaryInfo:v19 threadIdentifier:{v20, a7}];

  return v21;
}

id IMCoreHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMCoreHelloWorldClass.init()()
{
  v1 = OBJC_IVAR___IMCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld;
  *&v0[v1] = [objc_allocWithZone(sub_1A84E58FC()) init];
  v2 = OBJC_IVAR___IMCoreHelloWorldClass_Impl_persistenceHelloWorld;
  *&v0[v2] = [objc_allocWithZone(sub_1A84E57CC()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IMCoreHelloWorldClass();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1A84DDB08()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___IMCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld);
  sub_1A84E58EC();
  v3 = *(v1 + OBJC_IVAR___IMCoreHelloWorldClass_Impl_persistenceHelloWorld);
  return sub_1A84E57BC();
}

id IMCoreHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMCoreHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IMCoreHelloWorld.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1A84E579C();
  v2 = a1 + *(type metadata accessor for IMCoreHelloWorld() + 20);
  return sub_1A84E579C();
}

uint64_t type metadata accessor for IMCoreHelloWorld()
{
  result = qword_1EB2E9090;
  if (!qword_1EB2E9090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall IMCoreHelloWorld.printGreeting()()
{
  sub_1A84E578C();
  v1 = v0 + *(type metadata accessor for IMCoreHelloWorld() + 20);
  sub_1A84E578C();
}

uint64_t sub_1A84DDD58()
{
  result = sub_1A84E58DC();
  if (v1 <= 0x3F)
  {
    result = sub_1A84E57AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL ImportExportStatistics.hasStarted.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = (*(a2 + 32))(a1, a2);
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v8 + v9, v7);

  v10 = sub_1A84E56DC();
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10) != 1;
  sub_1A8471100(v7);
  return v11;
}

BOOL ImportExportStatistics.isRunning.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v2 = ImportExport.Timer.isTiming.getter();

  return v2;
}

BOOL ImportExportStatistics.hasFinished.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  v11 = (*(a2 + 32))(a1, a2);
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v11 + v12, v10);
  v13 = sub_1A84E56DC();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) == 1)
  {

    v15 = 0;
  }

  else
  {
    sub_1A8471100(v10);
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v11 + v16, v8);

    v15 = v14(v8, 1, v13) != 1;
    v10 = v8;
  }

  sub_1A8471100(v10);
  return v15;
}

id sub_1A84DE2B0()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [v0 totalMessageCount];
  v13 = [v0 syncedMessageCount];
  v1 = [v0 unresolvedMessageCount];
  v2 = [v0 totalChatCount];
  v3 = [v0 syncedChatCount];
  v4 = [v0 unresolvedChatCount];
  v5 = [v0 totalAttachmentCount];
  v6 = [v0 syncedAttachmentCount];
  v7 = [v0 unresolvedAttachmentCount];
  v8 = MEMORY[0x1E69E7CC0];
  sub_1A83EC354(MEMORY[0x1E69E7CC0]);
  v9 = sub_1A84E5D2C();

  sub_1A83EC8B4(v8);
  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
  v10 = sub_1A84E5D2C();

  v11 = [ObjCClassFromMetadata _createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_];

  return v11;
}

uint64_t sub_1A84DE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A83EA2FC(&qword_1EB2E90A0, &qword_1A850C080);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A850C070;
  v16 = *MEMORY[0x1E69A6E88];
  v17 = sub_1A84E5DBC();
  v18 = MEMORY[0x1E69E6158];
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = MEMORY[0x1E69E7360];
  *(v15 + 88) = MEMORY[0x1E69E7360];
  *(v15 + 56) = v18;
  *(v15 + 64) = a1;
  v21 = *MEMORY[0x1E69A6E60];
  *(v15 + 96) = sub_1A84E5DBC();
  *(v15 + 104) = v22;
  *(v15 + 152) = v20;
  *(v15 + 120) = v18;
  *(v15 + 128) = a2;
  v23 = *MEMORY[0x1E69A6E78];
  *(v15 + 160) = sub_1A84E5DBC();
  *(v15 + 168) = v24;
  *(v15 + 216) = v20;
  *(v15 + 184) = v18;
  *(v15 + 192) = a3;
  v25 = *MEMORY[0x1E69A6E58];
  *(v15 + 224) = sub_1A84E5DBC();
  *(v15 + 232) = v26;
  *(v15 + 280) = v20;
  *(v15 + 248) = v18;
  *(v15 + 256) = a4;
  v27 = *MEMORY[0x1E69A6E70];
  *(v15 + 288) = sub_1A84E5DBC();
  *(v15 + 296) = v28;
  *(v15 + 344) = v20;
  *(v15 + 312) = v18;
  *(v15 + 320) = a5;
  v29 = *MEMORY[0x1E69A6E50];
  *(v15 + 352) = sub_1A84E5DBC();
  *(v15 + 360) = v30;
  *(v15 + 408) = v20;
  *(v15 + 376) = v18;
  *(v15 + 384) = a6;
  v31 = *MEMORY[0x1E69A6E18];
  result = sub_1A84E5DBC();
  *(v15 + 440) = v18;
  *(v15 + 416) = result;
  *(v15 + 424) = v33;
  v34 = a4 + a2;
  if (__OFADD__(a4, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v35 = __OFADD__(v34, a6);
  v36 = v34 + a6;
  if (v35)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v15 + 472) = v20;
  *(v15 + 448) = v36;
  v37 = *MEMORY[0x1E69A6E80];
  result = sub_1A84E5DBC();
  *(v15 + 504) = v18;
  *(v15 + 480) = result;
  *(v15 + 488) = v38;
  v39 = a3 + a1;
  if (__OFADD__(a3, a1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v35 = __OFADD__(v39, a5);
  v40 = v39 + a5;
  if (!v35)
  {
    *(v15 + 536) = v20;
    *(v15 + 512) = v40;
    *(v15 + 568) = v18;
    strcpy((v15 + 544), "serverCounts");
    *(v15 + 557) = 0;
    *(v15 + 558) = -5120;
    *(v15 + 600) = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    *(v15 + 576) = a7;
    *(v15 + 632) = v18;
    *(v15 + 608) = 0x726F7453636E7973;
    *(v15 + 616) = 0xEF73746E756F4365;
    *(v15 + 664) = sub_1A83EA2FC(&qword_1EB2E90A8, &qword_1A850C088);
    *(v15 + 640) = a8;
    sub_1A8244B68(0, &unk_1EB2E90B0, 0x1E695DF90);

    return sub_1A84E615C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1A84DE754(uint64_t a1, double a2, double a3, double a4)
{
  result = swift_getObjCClassFromMetadata();
  v9 = result;
  if (a1 == 2)
  {
    if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (a4 > -9.22337204e18)
              {
                if (a4 < 9.22337204e18)
                {
                  v17 = MEMORY[0x1E69E7CC0];
                  sub_1A83EC354(MEMORY[0x1E69E7CC0]);
                  v11 = sub_1A84E5D2C();

                  sub_1A83EC8B4(v17);
                  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
                  v12 = sub_1A84E5D2C();

                  v18 = [v9 _createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_];
LABEL_34:
                  v20 = v18;

                  return v20;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_42;
      }

      goto LABEL_39;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a1 == 3)
  {
    if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (a4 > -9.22337204e18)
              {
                if (a4 < 9.22337204e18)
                {
                  v10 = MEMORY[0x1E69E7CC0];
                  sub_1A83EC354(MEMORY[0x1E69E7CC0]);
                  v11 = sub_1A84E5D2C();

                  sub_1A83EC8B4(v10);
                  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
                  v12 = sub_1A84E5D2C();

                  v24 = v11;
                  v25 = v12;
                  v22 = a2;
                  v23 = a4;
                  v21 = a3;
                  v13 = v9;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
LABEL_33:
                  v18 = [v13 _createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_];
                  goto LABEL_34;
                }

                goto LABEL_53;
              }

              goto LABEL_50;
            }

            goto LABEL_47;
          }

          goto LABEL_44;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a2 >= 9.22337204e18)
  {
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
    goto LABEL_52;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a4 < 9.22337204e18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1A83EC354(MEMORY[0x1E69E7CC0]);
    v11 = sub_1A84E5D2C();

    sub_1A83EC8B4(v19);
    sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
    v12 = sub_1A84E5D2C();

    v21 = 0;
    v22 = 0;
    v24 = v11;
    v25 = v12;
    v23 = 0;
    v13 = v9;
    v14 = a3;
    v15 = a2;
    v16 = a4;
    goto LABEL_33;
  }

LABEL_55:
  __break(1u);
  return result;
}

void sub_1A84DECDC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "migratedPinConfig is nil, but localPinConfig was not. localPinConfig: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DED98()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A826F6B0();
  sub_1A826F6C8(&dword_1A823F000, v0, v1, "Pin config migration failed. We migrated the given pin config, but the migrated pin config was not valid. given config: %@, migrated config: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DEE00()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A826F6B0();
  sub_1A826F6C8(&dword_1A823F000, v0, v1, "Pin config migration failed. We migrated the given pin config, but the migrated pin config had a different version. given config: %@, migrated config: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DEE7C(uint64_t a1, char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_service(v4, v5, v6);
  v10 = objc_msgSend_internalName(v7, v8, v9);
  v12 = 138412290;
  v13 = v10;
  _os_log_fault_impl(&dword_1A823F000, a2, OS_LOG_TYPE_FAULT, "Assuming hybrid groups are eligible for unexpected service %@", &v12, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A84DEF40(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "IMService ******* This is unexpected. atSign > [email length]. Email %@ doman %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1A84DEFC8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to find conversation with requested UUID %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF0AC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *WebPrivacyLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMWebPrivacyUtilities.m", 32, @"%s", *a1);

  __break(1u);
}

void sub_1A84DF1E0(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "unrecognized KT status received: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF284(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF360()
{
  sub_1A829A4F8();
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, v3, v2, @"IMAccount.m", 2166, @"%@ Unmatched endCoalescedChanges", v2);

  *v0 = *v1;
}

void sub_1A84DF3DC()
{
  sub_1A829A4F8();
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, v3, v2, @"IMAccount.m", 2194, @"imbalanced update: called a resume without calling a holdBuddyUpdate!");

  *v0 = *v1;
}

void sub_1A84DF460(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_vettedAliases(a2, a2, a3);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, " Attempted to change display name to %@, but it wasn't in vetted set (%@)", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF55C(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_error(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Got error fetching sync statistics: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF5F4(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_description(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "fetched sync state statistics: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF6D0(os_log_t log, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEBUG, "Deferring send progress to event listeners for %f sec", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF82C(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[IMNicknameController createSharedProfileStateOracleForHandles:]";
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "No recipients provided for %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF8B0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Cache miss lookup failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84DF9A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPXPhotoKitMomentShareStatusClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMMomentSharePresentationCache.m", 26, @"Unable to find class %s", "PXPhotoKitMomentShareStatus");

  __break(1u);
}

void sub_1A84DFA24(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *PhotosUICoreLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMMomentSharePresentationCache.m", 25, @"%s", *a1);

  __break(1u);
}

void sub_1A84DFAA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPXMomentShareStatusPresentationClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMMomentSharePresentationCache.m", 27, @"Unable to find class %s", "PXMomentShareStatusPresentation");

  __break(1u);
}

void sub_1A84DFB20(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IMChatContext.m", 45, @"Invalid parameter not satisfying: %@", @"[cls isSubclassOfClass:[IMChatContext class]]");
}

void sub_1A84DFBE0(void *a1)
{

  objc_end_catch();
}

void sub_1A84DFC14()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFC50()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFC8C()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFCC8()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFD04()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFD7C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A82E406C();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84DFE0C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A82E406C();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84DFE9C(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_guid(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_1A823F000, a2, OS_LOG_TYPE_FAULT, "transferGUID is nil. ChatItem's GUID is %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84DFF34(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = v4;
  v8 = objc_msgSend_guid(a1, v6, v7);
  v10 = 138412546;
  v11 = v4;
  v12 = 2112;
  v13 = v8;
  _os_log_fault_impl(&dword_1A823F000, a2, OS_LOG_TYPE_FAULT, "%@ transferGUIDs is nil. ChatItem's GUID is %@", &v10, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A84DFFFC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0070(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_localizedDescription(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Request Satellite error: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0174(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Error sharing off grid mode with handle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E01EC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Error sharing availbaility with handle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E02A8(uint64_t a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a1, a2, @"IMHandle.m", 3401, @"%@ unmatched notification queue release", a2);

  *a4 = *a3;
}

void sub_1A84E0420(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Error prewarming the opening of sharedPhotoLibrary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E04D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPHAssetClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMPhotoLibraryPersistenceManager.m", 24, @"Unable to find class %s", "PHAsset");

  __break(1u);
}

void sub_1A84E054C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *PhotosLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMPhotoLibraryPersistenceManager.m", 23, @"%s", *a1);

  __break(1u);
}

void sub_1A84E05CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPHPhotoLibraryClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMPhotoLibraryPersistenceManager.m", 25, @"Unable to find class %s", "PHPhotoLibrary");

  __break(1u);
}

void sub_1A84E065C(uint64_t a1, const char *a2, void *a3, void *a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a1, a2, @"IMPeople.m", 129, @"Unbalanced calls to beginCoalescedChanges and endCoalescedChanges");

  *a4 = *a3;
}

void sub_1A84E0774(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_1A8307ED0();
  _os_log_error_impl(&dword_1A823F000, v3, OS_LOG_TYPE_ERROR, "Failed to find a sending handle. Dropping notice %@ to %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E07EC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_1A8307ED0();
  _os_log_error_impl(&dword_1A823F000, v3, OS_LOG_TYPE_ERROR, "Failed to find a sending handle. Dropping clear notice %@ to %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0864(uint64_t a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"startMonitor is called, which should not happen, but take it.");
  v5 = IMFileLocationTrimFileName();
  v6 = *(a1 + 32);
  v9 = objc_msgSend_callStackSymbols(MEMORY[0x1E696AF00], v7, v8);
  v11 = objc_msgSend_componentsJoinedByString_(v9, v10, @"\n");
  v13 = 138413314;
  v14 = v4;
  v15 = 2080;
  v16 = "[IMChorosMonitor startMonitor]";
  v17 = 2080;
  v18 = v5;
  v19 = 1024;
  v20 = v6;
  v21 = 2112;
  v22 = v11;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "%@\n%s %s:%d\n%@", &v13, 0x30u);

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0994()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "Invalid chat identifier: %@, can't open application", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E09FC(void *a1, char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1A83098A4();
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Request Stewie error: %@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0A94()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "Requesting to place emergency call: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0AFC()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "DialRequest isn't valid %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0B64()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "Failed to trigger dialRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0BCC()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "fetchRoadsideProvidersWithContext failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0CDC(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Skipping invocation, selector not implemented: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0D74()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A830E2C0();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0DFC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A830E2C0();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E0E84()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A830E2C0();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E116C()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E11D0()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1220()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1290()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E12CC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E133C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E13D4()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1410(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(a1, a2, a3);
  sub_1A83098A4();
  sub_1A8342F10(&dword_1A823F000, v4, v5, "**Bailing**, Tried to Edit the schedule time of a non-scheduled message with guid %@ ", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1494()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1504()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1554()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E15EC()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1628()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1664()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E16A0()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1704(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1A8342EFC();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_error_impl(&dword_1A823F000, v6, OS_LOG_TYPE_ERROR, "Query failed for fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@, error: %@", v8, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A84E178C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  sub_1A8342EFC();
  v6 = v2;
  _os_log_error_impl(&dword_1A823F000, v3, OS_LOG_TYPE_ERROR, "Query failed for fetchOldestMessageDate chatGUID: %@, error: %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A84E180C(void *a1, const char *a2, uint64_t *a3)
{
  v4 = a2;
  if (objc_msgSend_receivedResponseForChat(a1, a2, a3))
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_msgSend_lastAddressedHandleID(a1, v6, v7);
    v12 = v9;
    if (!v9 || !objc_msgSend_length(v9, v10, v11))
    {
      v13 = objc_msgSend_account(a1, v10, v11);
      v16 = objc_msgSend_strippedLogin(v13, v14, v15);

      v12 = v16;
    }

    v17 = objc_msgSend_recipient(a1, v10, v11);
    v20 = objc_msgSend_ID(v17, v18, v19);

    LODWORD(v17) = objc_msgSend_shouldShowSMSWarningForSender_forRecipient_withConversationHistory_(MEMORY[0x1E69A82A0], v21, v12, v20, 0);
    v8 = 1;
    if (v17)
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  if (v4)
  {
    return 1;
  }

  result = 0;
  a1[55] = v8;
  return result;
}

void sub_1A84E190C(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(a1, a2, a3);
  sub_1A83098A4();
  sub_1A8342F10(&dword_1A823F000, v4, v5, "Chat %@ is ending holds on updates for all keys", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A84E19B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "chatItemAssociatedWithMessageGUID included exactly 1 IMAggregateAttachmentMessagePartChatItem, but we found an item in toDeleteChatItems that was not associated with the stack", buf, 2u);
}

void sub_1A84E1A0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IMMessage.m", 258, @"Invalid parameter not satisfying: %@", @"imHandle != nil");
}

void sub_1A84E1AB0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "ASSERTION FAILED: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1B18()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A8309888(&dword_1A823F000, v0, v1, "Could not get chat from notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1BEC()
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1A8353DCC();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1C68()
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1A8353DCC();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1CE4()
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1A8353DCC();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1D60(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(0, a2, a3);
  sub_1A8353DCC();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v4, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1E70(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1A8342EFC();
  sub_1A835979C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A84E1EF0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  sub_1A8342EFC();
  sub_1A835979C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A84E202C(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_parents(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "Finding addresses for parents: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E20C4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEBUG, "Found handles: %@ for family member: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2150(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "Found addresses: %@ for family members: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2294(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = objc_msgSend_localizedDescription(a2, a2, a3);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1A823F000, a4, OS_LOG_TYPE_ERROR, "momentShareForURLString error: %@", a1, 0xCu);
}

void sub_1A84E230C(uint64_t a1, uint64_t a2)
{
  sub_1A839249C(a1, a2, *MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v2, v3, "Edited status items to replace: %@ did not match indexes: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2374(uint64_t a1, uint64_t a2)
{
  sub_1A839249C(a1, a2, *MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v2, v3, "Edited status items to insert: %@ did not match indexes: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E23DC(uint64_t a1, uint64_t a2)
{
  sub_1A839249C(a1, a2, *MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v2, v3, "Add choice status items to replace: %@ did not match indexes: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2444(uint64_t a1, uint64_t a2)
{
  sub_1A839249C(a1, a2, *MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v2, v3, "Add choice status items to insert: %@ did not match indexes: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E24C0(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A823F000, a1, OS_LOG_TYPE_INFO, "INTERNAL CHAT ITEM POISON PILL TEST DETECTED - Crashing", v2, 2u);
  }
}

void sub_1A84E25D0(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "failed to add the device salt to the keychain with error: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2680(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*(*a1 + 8) + 40);
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "Something wrong when creating stringDigest: %@ for: %@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2764(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_groupID(a2, a2, a3);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, "Group ID mismatch - Looking up for: %@ but found chat with groupID: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2868()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E28A4()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E28E0()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E295C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "strict-decoding 017 exception/error after _enableStrictSecureDecodingMode: [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E29D4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2A48()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2D3C(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  sub_1A82E4054();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2E50()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2EC0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E2F8C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  sub_1A83B36E0();
  sub_1A835979C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3008(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  sub_1A83B36E0();
  sub_1A835979C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3120()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3190()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3200()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A83B36E0();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E32A8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  sub_1A83098A4();
  sub_1A835979C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3334(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a2 + 40);
  v8 = *(a2 + 32);
  sub_1A835979C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

id sub_1A84E342C(void *a1, void *a2, void *a3, int a4, _BYTE *a5, void *a6)
{
  v133 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v12 = a3;
  if (!a1)
  {
    v22 = 0;
    goto LABEL_21;
  }

  v13 = objc_msgSend__participantsForChatDictionary_(a1, v11, v10);
  if (objc_msgSend_count(v13, v14, v15) < 2)
  {
    v17 = 0;
    objc_msgSend__cachedChatForChatDictionary_participants_participantHash_(a1, v16, v10, v13, 0);
  }

  else
  {
    v17 = objc_msgSend__sortedParticipantIDHashForParticipants_(a1, v16, v13);
    objc_msgSend__cachedChatForChatDictionary_participants_participantHash_(a1, v18, v10, v13, v17);
  }
  v19 = ;
  if (v19)
  {
    v22 = v19;
    v125 = v17;
    v23 = objc_msgSend_objectForKeyedSubscript_(v10, v20, @"isFiltered");
    v25 = objc_msgSend_objectForKeyedSubscript_(v10, v24, *MEMORY[0x1E69A6C48]);
    v29 = objc_msgSend_objectForKeyedSubscript_(v10, v26, @"hasHadSuccessfulQuery");
    if (v23)
    {
      v30 = objc_msgSend_integerValue(v23, v27, v28);
      objc_msgSend_setIsFiltered_(v22, v31, v30);
    }

    if (objc_msgSend_count(v25, v27, v28))
    {
      v34 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v32, v25);
      objc_msgSend_setMergedPinningIdentifiers_(v22, v35, v34);
    }

    if (v29)
    {
      v36 = objc_msgSend_BOOLValue(v29, v32, v33);
      objc_msgSend_setHasHadSuccessfulQuery_(v22, v37, v36);
    }

    v38 = objc_msgSend__winningJoinStateForExistingChat_incomingDictionary_(a1, v32, v22, v10);
    objc_msgSend__setJoinState_(v22, v39, v38);
    objc_msgSend__mergeItems_(v22, v40, v12);
    v43 = objc_msgSend_displayName(v22, v41, v42);
    if (!objc_msgSend_length(v43, v44, v45))
    {
      v124 = a6;
      v100 = *MEMORY[0x1E69A6B48];
      v101 = objc_msgSend_objectForKey_(v10, v46, *MEMORY[0x1E69A6B48]);
      if (!v101)
      {

        goto LABEL_14;
      }

      v104 = v101;
      objc_msgSend_account(v22, v102, v103);
      v105 = v121 = v12;
      objc_msgSend_serviceName(v105, v106, v107);
      v108 = v123 = v13;
      isEqualToString = objc_msgSend_isEqualToString_(v108, v109, *MEMORY[0x1E69A7AF0]);

      v13 = v123;
      v12 = v121;

      a6 = v124;
      if (isEqualToString)
      {
LABEL_14:
        if (a5)
        {
          *a5 = 0;
        }

        goto LABEL_17;
      }

      v43 = objc_msgSend_objectForKey_(v10, v110, v100);
      v111 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v114 = objc_msgSend_chatIdentifier(v22, v112, v113);
        *buf = 138412546;
        v128 = v114;
        v129 = 2112;
        v130 = v43;
        _os_log_impl(&dword_1A823F000, v111, OS_LOG_TYPE_DEFAULT, "Updating chat %@ empty display name to %@", buf, 0x16u);

        v13 = v123;
      }

      objc_msgSend__updateDisplayName_(v22, v115, v43);
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    v22 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_18;
  }

  v125 = v17;
  v50 = objc_msgSend_sharedInstance(IMAccountController, v20, v21);
  v52 = objc_msgSend_objectForKeyedSubscript_(v10, v51, @"accountID");
  v23 = objc_msgSend_accountForUniqueID_(v50, v53, v52);

  v55 = objc_msgSend_objectForKeyedSubscript_(v10, v54, @"style");
  LOBYTE(v52) = objc_msgSend_intValue(v55, v56, v57);

  v25 = objc_msgSend_objectForKeyedSubscript_(v10, v58, @"groupID");
  v59 = [IMChat alloc];
  v22 = objc_msgSend__initWithDictionaryRepresentation_items_participantsHint_accountHint_(v59, v60, v10, v12, v13, v23);
  if (v52 == 43)
  {
    if (v25 || (v25 = v125, objc_msgSend_setGroupID_(v22, v63, v25), v25))
    {
      v64 = objc_msgSend_groupIDToChatMap(a1, v61, v62);
      objc_msgSend_setObject_forKeyedSubscript_(v64, v65, v22, v25);
    }

    objc_msgSend__addChat_participantSet_(a1, v61, v22, v125);
    v68 = objc_msgSend_personCentricID(v22, v66, v67);

    if (v68)
    {
      v122 = v13;
      v71 = objc_msgSend_chatPersonIDToChatMap(a1, v69, v70);
      v74 = objc_msgSend_personCentricID(v22, v72, v73);
      v76 = objc_msgSend_objectForKeyedSubscript_(v71, v75, v74);

      if (v76)
      {
        v79 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v116 = objc_msgSend_personCentricID(v22, v80, v81);
          v84 = objc_msgSend_guid(v22, v82, v83);
          v118 = objc_msgSend_chatPersonIDToChatMap(a1, v85, v86);
          v117 = objc_msgSend_personCentricID(v22, v87, v88);
          v90 = objc_msgSend_objectForKeyedSubscript_(v118, v89, v117);
          objc_msgSend_guid(v90, v91, v92);
          v93 = v120 = v12;
          *buf = 138412802;
          v128 = v116;
          v129 = 2112;
          v130 = v84;
          v131 = 2112;
          v132 = v93;
          _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_DEFAULT, "Person centric (%@) collision for chats %@ and %@", buf, 0x20u);

          v12 = v120;
        }
      }

      v94 = objc_msgSend_chatPersonIDToChatMap(a1, v77, v78);
      v97 = objc_msgSend_personCentricID(v22, v95, v96);
      objc_msgSend_setObject_forKeyedSubscript_(v94, v98, v22, v97);

      v13 = v122;
    }

    if (IMAdditionalChatRegistryLoggingEnabled())
    {
      v99 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v128 = v125;
        _os_log_impl(&dword_1A823F000, v99, OS_LOG_TYPE_DEFAULT, "Did not find an existing chat so creating a new one with participatIDHash %@", buf, 0xCu);
      }
    }
  }

  if (a5)
  {
    *a5 = 1;
  }

LABEL_17:

  v17 = v125;
LABEL_18:
  v47 = objc_msgSend_objectForKeyedSubscript_(v10, v20, @"guid");
  if (a6)
  {
    v47 = v47;
    *a6 = v47;
  }

LABEL_21:
  v48 = *MEMORY[0x1E69E9840];

  return v22;
}

void sub_1A84E3B04(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "Failed to find cached chat for guid: %@. Properties were not updated: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3B8C(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_guid(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Attempting to update domain identifiers for chat guid: %@ with nil groupID", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E3C24(void *a1, void *a2, void *a3)
{
  if (objc_msgSend_count(a1, a2, a3))
  {
    v7 = objc_msgSend_objectForKey_(a1, v6, @"accountID");
    v9 = objc_msgSend_objectForKey_(a1, v8, @"account");
    v12 = objc_msgSend_objectForKey_(a1, v10, @"serviceName");
    if (v7)
    {
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = objc_msgSend_objectForKey_(a2, v11, @"accountID");
      if (v9)
      {
LABEL_4:
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    v9 = objc_msgSend_objectForKey_(a2, v11, @"account");
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    v12 = objc_msgSend_objectForKey_(a2, v11, @"serviceName");
    if (!v12)
    {
      v15 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v15 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v11, v12);

LABEL_11:
    v16 = objc_msgSend_sharedInstance(IMAccountController, v11, v14);
    v18 = objc_msgSend_bestAccountForService_login_guid_(v16, v17, v15, v9, v7);

    IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(a1, v18, 1);
    goto LABEL_12;
  }

  IMMessageFromIMMessageItemDictionary = 0;
LABEL_12:
  *a3 = IMMessageFromIMMessageItemDictionary;
}

void sub_1A84E3DF0(void *a1, char *a2, void **a3)
{
  v6 = objc_msgSend_objectForKey_(a1, a2, @"accountID");
  v8 = objc_msgSend_objectForKey_(a1, v7, @"account");
  v11 = objc_msgSend_objectForKey_(a1, v9, @"serviceName");
  if (v6)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = objc_msgSend_objectForKey_(a2, v10, @"accountID");
    if (v8)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v8 = objc_msgSend_objectForKey_(a2, v10, @"account");
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_7:
  v11 = objc_msgSend_objectForKey_(a2, v10, @"serviceName");
  if (!v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v13 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v10, v11);
LABEL_9:
  v14 = objc_msgSend_sharedInstance(IMAccountController, v10, v12);
  v16 = objc_msgSend_bestAccountForService_login_guid_(v14, v15, v13, v8, v6);

  *a3 = _CreateIMMessageFromIMMessageItemDictionary(a1, v16, 1);
}

uint64_t sub_1A84E3F50(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedRegistry(IMChatRegistry, a2, a3);
  if (objc_msgSend_currentMessageFilterMode(v4, v5, v6) <= 0)
  {

    LOBYTE(v16) = 1;
  }

  else
  {
    v9 = MEMORY[0x1E69A8210];
    v10 = objc_msgSend_sharedRegistry(IMChatRegistry, v7, v8);
    v13 = objc_msgSend_currentMessageFilterMode(v10, v11, v12);
    isFilterMode_subsetOf = objc_msgSend_isFilterMode_subsetOf_(v9, v14, a1, v13);

    v16 = isFilterMode_subsetOf << 31 >> 31;
  }

  return v16 & 1;
}

void sub_1A84E3FE4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to find chat for chatIdentifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4084(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lastObject(a2, a2, a3);
  v7 = 136315650;
  v8 = "void _IMReplaceChatItemsInRange(NSMutableArray<IMChatItem *> *__strong, __strong id<IMChatItemRules>, NSRange, IMItem *__strong)";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, "%s Failed to generate chatItems for newItem: %@ with prevItem: %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E415C(uint64_t a1, const char *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_handleString(*(a1 + 32), a2, a3);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, "Error fetching subscription service for handle: %@ Error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4214(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Availability could not be decoded for handle %@, returning unknown availability", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E428C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1A8342EFC();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_error_impl(&dword_1A823F000, v6, OS_LOG_TYPE_ERROR, "Error retaining transient subscription assertion for subscription: %@ and handle: %@. Error: %@", v8, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4314(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  sub_1A8342EFC();
  v6 = v2;
  _os_log_error_impl(&dword_1A823F000, v3, OS_LOG_TYPE_ERROR, "Error releasing transient subscription assertion for handle %@. Error: %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4394(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "No normalizedID available for handle, falling back to regular ID. Handle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4484(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to decode translated message parts with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4770(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "Unable to access group photo file for groupID: '%@', sandboxedFileURL: '%@'", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1A84E47F8(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_description(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to load groupPhotoData with error: '%@'", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A84E49C4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A83E35B0(&dword_1A823F000, v0, v1, "Waiting for already executing fetch of moment share for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4A2C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A83E35B0(&dword_1A823F000, v0, v1, "Will fetch moment share for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4A94()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A83E35B0(&dword_1A823F000, v0, v1, "Returning a generic error while fetching moment share for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4AFC(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEBUG, "Returning cached moment share: %{public}@, for URL: %@", buf, 0x16u);
}

void sub_1A84E4B64()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A83098A4();
  sub_1A83E35B0(&dword_1A823F000, v0, v1, "Will fetch local moment share for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4BCC(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_uuid(a1, a2, a3);
  sub_1A83E359C();
  sub_1A83E35CC(&dword_1A823F000, v4, v5, "Returning fetched moment share: %{public}@, for URL: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4C64()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A83E359C();
  v4 = v0;
  _os_log_error_impl(&dword_1A823F000, v1, OS_LOG_TYPE_ERROR, "Failed to fetch moment share for URL: %@, error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4CE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "BOOL SOFT_LINKED_PXIsMomentShareErrorPermanent(NSError *__strong)");
  v6 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v7, v5, @"IMMomentShareCache.m", 31, @"%s", v6);

  __break(1u);
}

void sub_1A84E4D9C(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_uuid(a1, a2, a3);
  sub_1A83E359C();
  sub_1A83E35CC(&dword_1A823F000, v4, v5, "Moment share was changed: %{public}@, URL: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A84E4E30(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPHPhotoLibraryClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMMomentShareCache.m", 24, @"Unable to find class %s", "PHPhotoLibrary");

  __break(1u);
}

void sub_1A84E4EAC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *PhotosLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMMomentShareCache.m", 23, @"%s", *a1);

  __break(1u);
}

void sub_1A84E4F2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPHMomentShareClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMMomentShareCache.m", 25, @"Unable to find class %s", "PHMomentShare");

  __break(1u);
}

void sub_1A84E4FA8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *PhotosUICoreLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMMomentShareCache.m", 29, @"%s", *a1);

  __break(1u);
}

void sub_1A84E5028(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getPXTwoTupleClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMMomentShareCache.m", 30, @"Unable to find class %s", "PXTwoTuple");

  __break(1u);
}

void sub_1A84E5108(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "updateCloudKitState was updated by the daemon with %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A84E5180(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "updateCloudKitProgress was updated by the daemon with %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t sub_1A84E89FC(double a1)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    sub_1A84E8AC0(a1);
  }

  return MEMORY[0x1EEDBE9F0]();
}

uint64_t sub_1A84E8A28(double a1)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    sub_1A84E8AC0(a1);
  }

  return MEMORY[0x1EEDBE9F8]();
}

double sub_1A84E8A54(double result)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    return sub_1A84E8AC0(result);
  }

  return result;
}

double sub_1A84E8A78(double result)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    return sub_1A84E8AC0(result);
  }

  return result;
}

double sub_1A84E8A9C(double result)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    return sub_1A84E8AC0(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1A84E8AC0(double a1)
{
  dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 0);
  atomic_store(1u, dword_1EB2E46D0);
  return a1;
}