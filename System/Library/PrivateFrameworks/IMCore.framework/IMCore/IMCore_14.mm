void sub_1A84995F0()
{
  v154 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v3 = v2 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions;
  v0[63] = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation;
  v0[64] = v4;
  v5 = sub_1A847A408(v1, *(v2 + v4 + 8));
  v0[65] = v5;
  if (!v5)
  {
LABEL_105:
    (*(v0[32] + 56))(v0[28], 1, 1, v0[31]);
LABEL_106:
    v127 = v0[62];
    v129 = v0[58];
    v128 = v0[59];
    v130 = v0[57];
    v132 = v0[53];
    v131 = v0[54];
    v133 = v0[50];
    v134 = v0[46];
    v135 = v0[47];
    v136 = v0[45];
    v139 = v0[42];
    v141 = v0[41];
    v143 = v0[40];
    v145 = v0[39];
    v147 = v0[37];
    v149 = v0[34];
    v151 = v0[33];

    v16 = v0[1];
LABEL_107:

    v16();
    return;
  }

  v17 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_103:
    v125 = v5;
    v126 = sub_1A84E654C();
    v5 = v125;
    v0[66] = v126;
    if (v126)
    {
      goto LABEL_4;
    }

    goto LABEL_104;
  }

  v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[66] = v18;
  if (!v18)
  {
LABEL_104:

    goto LABEL_105;
  }

LABEL_4:
  v19 = v0[62];
  v20 = v0[30];
  v21 = *v0[29];
  v22 = v5;
  sub_1A84E5C8C();
  v23 = v22;

  v24 = sub_1A84E5C7C();
  v25 = sub_1A84E618C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v152 = v27;
    *v26 = 134218498;
    if (v17)
    {
      v28 = sub_1A84E654C();
    }

    else
    {
      v28 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v0[61];
    v32 = v0[62];
    v33 = v0[60];
    *(v26 + 4) = v28;

    *(v26 + 12) = 2048;
    *(v26 + 14) = v21;
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_1A82446BC(*(v3 + 8), *(v3 + 16), &v152);
    _os_log_impl(&dword_1A823F000, v24, v25, "fetched %ld records starting at rowID %lld in conversation: %s", v26, 0x20u);
    sub_1A8244788(v27);
    MEMORY[0x1AC56D3F0](v27, -1, -1);
    MEMORY[0x1AC56D3F0](v26, -1, -1);

    (*(v31 + 8))(v32, v33);
  }

  else
  {
    v29 = v0[61];
    v3 = v0[62];
    v30 = v0[60];

    (*(v29 + 8))(v3, v30);
  }

  v34 = v0[30];
  v0[67] = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  v5 = swift_beginAccess();
  v35 = 0;
  v17 = 1;
  v36 = &selRef_isGroupTypingMessage;
  while (1)
  {
    v37 = MEMORY[0x1E69E7CC0];
    v0[69] = MEMORY[0x1E69E7CC0];
    v0[68] = v37;
    v38 = v0[65];
    if ((v38 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC56AF80](v35);
    }

    else
    {
      if (v35 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v5 = *(v38 + 8 * v35 + 32);
    }

    v3 = v5;
    v0[70] = v5;
    v0[71] = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v39 = *(v0[30] + v0[67]);
    v5 = swift_beginAccess();
    v40 = *(v39 + 80);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_93;
    }

    *(v39 + 80) = v42;
    if (![v3 v36[160]])
    {
      break;
    }

    v43 = *(v0[30] + v0[67]);

    v44 = [v3 v36[160]];
    if (v44 <= 3)
    {
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          v45 = 0xD000000000000010;
          v46 = 0x80000001A8533430;
        }

        else
        {
          v45 = 0x74634170756F7267;
          v46 = 0xEB000000006E6F69;
        }
      }

      else if (v44)
      {
        if (v44 != 1)
        {
LABEL_39:
          v46 = 0xE700000000000000;
          v45 = 0x6E776F6E6B6E75;
          goto LABEL_40;
        }

        v45 = 0xD000000000000011;
        v46 = 0x80000001A8533450;
      }

      else
      {
        v46 = 0xE700000000000000;
        v45 = 0x6567617373656DLL;
      }
    }

    else if (v44 <= 5)
    {
      if (v44 == 4)
      {
        v45 = 0xD000000000000019;
        v46 = 0x80000001A8533410;
      }

      else
      {
        v45 = 0x416567617373656DLL;
        v46 = 0xED00006E6F697463;
      }
    }

    else
    {
      switch(v44)
      {
        case 6:
          v45 = 0x7265766E6F437574;
          v46 = 0xEE006E6F69746173;
          break;
        case 7:
          v45 = 0xD000000000000017;
          v46 = 0x80000001A85333F0;
          break;
        case 8:
          v45 = 0xD000000000000018;
          v46 = 0x80000001A85333D0;
          break;
        default:
          goto LABEL_39;
      }
    }

LABEL_40:
    swift_beginAccess();
    v47 = *(v43 + 152);
    if (!*(v47 + 16) || (v48 = sub_1A824B390(v45, v46), (v49 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      v62 = *(v43 + 152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v43 + 152);
      v0[26] = v64;
      *(v43 + 152) = 0x8000000000000000;
      v5 = sub_1A824B390(v45, v46);
      v66 = *(v64 + 16);
      v67 = (v65 & 1) == 0;
      v41 = __OFADD__(v66, v67);
      v68 = v66 + v67;
      if (v41)
      {
        goto LABEL_94;
      }

      v69 = v65;
      if (*(v64 + 24) >= v68)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_52:
          v72 = v0[26];
          if (v69)
          {
            *(v72[7] + 8 * v5) = 1;
          }

          else
          {
            v72[(v5 >> 6) + 8] |= 1 << v5;
            v73 = (v72[6] + 16 * v5);
            *v73 = v45;
            v73[1] = v46;
            v17 = 1;
            *(v72[7] + 8 * v5) = 1;
            v74 = v72[2];
            v41 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v41)
            {
              goto LABEL_99;
            }

            v72[2] = v75;
          }

          goto LABEL_12;
        }

        v76 = v5;
        sub_1A848E814();
        v5 = v76;
      }

      else
      {
        sub_1A848A8C4(v68, isUniquelyReferenced_nonNull_native);
        v70 = v0[26];
        v5 = sub_1A824B390(v45, v46);
        if ((v69 & 1) != (v71 & 1))
        {
LABEL_78:

          sub_1A84E67EC();
          return;
        }
      }

      v36 = &selRef_isGroupTypingMessage;
      goto LABEL_52;
    }

    v50 = *(*(v47 + 56) + 8 * v48);
    v5 = swift_endAccess();
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_100;
    }

    swift_beginAccess();
    v52 = *(v43 + 152);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v43 + 152);
    v0[27] = v54;
    *(v43 + 152) = 0x8000000000000000;
    v5 = sub_1A824B390(v45, v46);
    v56 = *(v54 + 16);
    v57 = (v55 & 1) == 0;
    v41 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v41)
    {
      goto LABEL_101;
    }

    v59 = v55;
    if (*(v54 + 24) < v58)
    {
      sub_1A848A8C4(v58, v53);
      v60 = v0[27];
      v5 = sub_1A824B390(v45, v46);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_78;
      }

LABEL_56:
      v72 = v0[27];
      if ((v59 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    if (v53)
    {
      goto LABEL_56;
    }

    v77 = v5;
    sub_1A848E814();
    v5 = v77;
    v72 = v0[27];
    if ((v59 & 1) == 0)
    {
LABEL_60:
      v72[(v5 >> 6) + 8] |= 1 << v5;
      v78 = (v72[6] + 16 * v5);
      *v78 = v45;
      v78[1] = v46;
      *(v72[7] + 8 * v5) = v51;
      v79 = v72[2];
      v41 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v41)
      {
        goto LABEL_102;
      }

      v72[2] = v80;

      goto LABEL_62;
    }

LABEL_57:
    *(v72[7] + 8 * v5) = v51;
LABEL_62:
    v36 = &selRef_isGroupTypingMessage;
LABEL_12:
    *(v43 + 152) = v72;
    swift_endAccess();

    v35 = v0[71];
    if (v35 == v0[66])
    {
      v95 = v0[65];

      v17 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        v96 = v0[67];
        v97 = v0[39];
        v98 = v0[30];
        sub_1A849D2AC(v98 + v0[64], v97, type metadata accessor for ImportExport.ExportOptions);
        v99 = *(v98 + v96);
        v100 = type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
        v101 = *(v100 + 48);
        v102 = *(v100 + 52);
        v103 = swift_allocObject();
        sub_1A849D2AC(v97, v103 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
        *(v103 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) = v17;
        *(v103 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics) = v99;
        type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
        swift_allocObject();

        v104 = sub_1A84B39AC(0, 0, 0);
        sub_1A849D24C(v97, type metadata accessor for ImportExport.ExportOptions);
        v150 = v103;
        *(v103 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress) = v104;
      }

      else
      {

        v150 = 0;
      }

      v5 = sub_1A849D2AC(v0[30] + v0[63], v0[34], type metadata accessor for ImportExport.Conversation);
      v105 = *(v17 + 16);
      if (!v105)
      {
LABEL_90:
        v116 = v0[33];
        v117 = v0[31];
        v118 = v0[32];
        v119 = v0[28];
        sub_1A849D3B4(v0[34], v116, type metadata accessor for ImportExport.Conversation);
        *(v116 + *(v117 + 20)) = v17;
        *(v116 + *(v117 + 24)) = v150;
        sub_1A849D3B4(v116, v119, type metadata accessor for ImportExport.MessageBatch);
        (*(v118 + 56))(v119, 0, 1, v117);
        goto LABEL_106;
      }

      v3 = 0;
      v106 = v0[57];
      v107 = v0[34];
      while (v3 < *(v17 + 16))
      {
        sub_1A849D2AC(v17 + ((*(v0[56] + 80) + 32) & ~*(v0[56] + 80)) + *(v0[56] + 72) * v3, v0[57], type metadata accessor for ImportExport.Message);
        v112 = *(v106 + 32);
        v113 = *(v106 + 40);
        v114 = *(v107 + 8);
        v115 = *(v107 + 16);
        if (v112 != v114 || v113 != v115)
        {
          v108 = *(v106 + 32);
          v109 = *(v106 + 40);
          v110 = *(v107 + 8);
          v111 = *(v107 + 16);
          if ((sub_1A84E67AC() & 1) == 0)
          {
            v120 = v0[57];
            v121 = v0[34];

            v152 = 0;
            v153 = 0xE000000000000000;
            sub_1A84E646C();
            MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
            MEMORY[0x1AC56A990](v112, v113);
            MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
            MEMORY[0x1AC56A990](v114, v115);
            v123 = v152;
            v122 = v153;
            sub_1A8407E40();
            swift_allocError();
            *v124 = v123;
            v124[1] = v122;
            swift_willThrow();

            sub_1A849D24C(v121, type metadata accessor for ImportExport.Conversation);
            sub_1A849D24C(v120, type metadata accessor for ImportExport.Message);
            v6 = v0[62];
            v8 = v0[58];
            v7 = v0[59];
            v9 = v0[57];
            v11 = v0[53];
            v10 = v0[54];
            v12 = v0[50];
            v14 = v0[46];
            v13 = v0[47];
            v15 = v0[45];
            v137 = v0[42];
            v138 = v0[41];
            v140 = v0[40];
            v142 = v0[39];
            v144 = v0[37];
            v146 = v0[34];
            v148 = v0[33];

            v16 = v0[1];
            goto LABEL_107;
          }
        }

        ++v3;
        v5 = sub_1A849D24C(v0[57], type metadata accessor for ImportExport.Message);
        if (v105 == v3)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_97;
    }
  }

  v81 = [v3 attachmentRecords];
  sub_1A8244B68(0, &qword_1EB2E85B0, 0x1E69A5D98);
  v82 = sub_1A84E5FFC();

  if (v82 >> 62)
  {
    v17 = sub_1A84E654C();
    if (!v17)
    {
      goto LABEL_73;
    }

LABEL_65:
    if (v17 < 1)
    {
      __break(1u);
      return;
    }

    v83 = 0;
    while (1)
    {
      v84 = (v82 & 0xC000000000000001) != 0 ? MEMORY[0x1AC56AF80](v83, v82) : *(v82 + 8 * v83 + 32);
      v85 = v84;
      v86 = *(v0[30] + v0[67]);
      v5 = swift_beginAccess();
      v87 = *(v86 + 88);
      v41 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v41)
      {
        goto LABEL_95;
      }

      *(v86 + 88) = v88;

      v89 = [v85 totalBytes];

      v90 = *(v86 + 104);
      v41 = __OFADD__(v90, v89);
      v91 = &v89[v90];
      if (v41)
      {
        goto LABEL_96;
      }

      ++v83;
      *(v86 + 104) = v91;

      if (v17 == v83)
      {
        goto LABEL_73;
      }
    }
  }

  v17 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    goto LABEL_65;
  }

LABEL_73:

  v92 = swift_task_alloc();
  v0[72] = v92;
  *v92 = v0;
  v92[1] = sub_1A849A524;
  v93 = v0[54];
  v94 = v0[30];

  sub_1A849BDE4(v93, v3);
}

uint64_t sub_1A849A524()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v9 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = v2[69];
    v5 = v2[68];
    v6 = v2[65];

    v7 = sub_1A849BC98;
  }

  else
  {
    v7 = sub_1A849A658;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1A849A658()
{
  v2 = *(v0 + 432);
  if ((*(*(v0 + 448) + 48))(v2, 1, *(v0 + 440)) != 1)
  {
    v5 = *(v0 + 544);
    v7 = *(v0 + 464);
    v6 = *(v0 + 472);
    sub_1A849D3B4(v2, v6, type metadata accessor for ImportExport.Message);
    sub_1A849D2AC(v6, v7, type metadata accessor for ImportExport.Message);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 544);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_144;
  }

  sub_1A824B2D4(v2, &qword_1EB2E7FA8, &qword_1A8506D10);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
LABEL_39:
  v88 = *(v0 + 568);
  v230 = v4;
  if (v88 == *(v0 + 528))
  {
    goto LABEL_40;
  }

  v98 = &selRef_isGroupTypingMessage;
  v226 = v3;
  do
  {
    *(v0 + 552) = v3;
    *(v0 + 544) = v4;
    v99 = *(v0 + 520);
    if ((v99 & 0xC000000000000001) != 0)
    {
      v100 = MEMORY[0x1AC56AF80](v88);
    }

    else
    {
      if (v88 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      v100 = *(v99 + 8 * v88 + 32);
    }

    v11 = v100;
    *(v0 + 560) = v100;
    *(v0 + 568) = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_132;
    }

    v101 = *(*(v0 + 240) + *(v0 + 536));
    swift_beginAccess();
    v102 = *(v101 + 80);
    v17 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (v17)
    {
      goto LABEL_133;
    }

    *(v101 + 80) = v103;
    if (![v11 v98[160]])
    {
      v173 = [v11 attachmentRecords];
      sub_1A8244B68(0, &qword_1EB2E85B0, 0x1E69A5D98);
      v15 = sub_1A84E5FFC();

      if (!(v15 >> 62))
      {
        v174 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v174)
        {
          goto LABEL_117;
        }

        goto LABEL_109;
      }

      while (1)
      {
        v174 = sub_1A84E654C();
        if (!v174)
        {
LABEL_117:

          v183 = swift_task_alloc();
          *(v0 + 576) = v183;
          *v183 = v0;
          v183[1] = sub_1A849A524;
          v184 = *(v0 + 432);
          v185 = *(v0 + 240);

          sub_1A849BDE4(v184, v11);
          return;
        }

LABEL_109:
        if (v174 < 1)
        {
          __break(1u);
          return;
        }

        v175 = 0;
        while (1)
        {
          v176 = (v15 & 0xC000000000000001) != 0 ? MEMORY[0x1AC56AF80](v175, v15) : *(v15 + 8 * v175 + 32);
          v177 = v176;
          v1 = *(*(v0 + 240) + *(v0 + 536));
          swift_beginAccess();
          v178 = v1[11];
          v17 = __OFADD__(v178, 1);
          v179 = v178 + 1;
          if (v17)
          {
            break;
          }

          v1[11] = v179;

          v180 = [v177 totalBytes];

          v181 = v1[13];
          v17 = __OFADD__(v181, v180);
          v182 = &v180[v181];
          if (v17)
          {
            goto LABEL_138;
          }

          ++v175;
          v1[13] = v182;

          if (v174 == v175)
          {
            goto LABEL_117;
          }
        }

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
        v1 = sub_1A83EF168(0, v1[2] + 1, 1, v1);
LABEL_4:
        v10 = v1[2];
        v9 = v1[3];
        if (v10 >= v9 >> 1)
        {
          v1 = sub_1A83EF168(v9 > 1, v10 + 1, 1, v1);
        }

        v11 = *(v0 + 536);
        v12 = *(v0 + 464);
        v13 = *(v0 + 448);
        v14 = *(v0 + 240);
        v1[2] = v10 + 1;
        sub_1A849D3B4(v12, v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10, type metadata accessor for ImportExport.Message);
        v15 = *&v11[v14];
        swift_beginAccess();
        v16 = *(v15 + 120);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (!v17)
        {
          break;
        }

        __break(1u);
      }

      v229 = v1;
      v19 = *(v0 + 472);
      *(v15 + 120) = v18;
      v1 = *(v19 + 216);
      v222 = v1[2];
      if (v222)
      {
        v20 = 0;
        v21 = *(*(v0 + 416) + 80);
        v22 = v1 + ((v21 + 32) & ~v21);
        v216 = *(*(v0 + 408) + 44);
        v219 = *(v0 + 424);
        v203 = *(v0 + 584);
        v225 = *(v0 + 552);
        v207 = v22;
        v208 = *(v19 + 216);
        while (1)
        {
          if (v20 >= v1[2])
          {
            goto LABEL_131;
          }

          v23 = *(v0 + 424);
          v24 = *(v0 + 384);
          v25 = *(v0 + 392);
          v26 = *(v0 + 376);
          sub_1A849D2AC(&v22[*(*(v0 + 416) + 72) * v20], v23, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(v219 + v216, v26, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A849D24C(v23, type metadata accessor for ImportExport.MessagePart);
          if ((*(v25 + 48))(v26, 1, v24) == 1)
          {
            sub_1A824B2D4(*(v0 + 376), &qword_1EB2E6F50, &unk_1A8502920);
          }

          else
          {
            v27 = *(v0 + 536);
            v28 = *(v0 + 240);
            sub_1A849D3B4(*(v0 + 376), *(v0 + 400), type metadata accessor for ImportExport.Attachment);
            v29 = *(v28 + v27);
            swift_beginAccess();
            v30 = *(v29 + 128);
            v17 = __OFADD__(v30, 1);
            v31 = v30 + 1;
            if (v17)
            {
              goto LABEL_135;
            }

            v32 = *(v0 + 400);
            v33 = *(v0 + 384);
            *(v29 + 128) = v31;
            v34 = *(v32 + *(v33 + 60));
            v35 = *(v29 + 144);
            v17 = __OFADD__(v35, v34);
            v36 = v35 + v34;
            if (v17)
            {
              goto LABEL_136;
            }

            v37 = *(v0 + 400);
            v38 = *(v0 + 384);
            v39 = *(v0 + 344);
            v40 = *(v0 + 352);
            v41 = *(v0 + 336);
            *(v29 + 144) = v36;
            v42 = *(v38 + 40);
            v209 = v37;
            sub_1A8243D74(v37 + v42, v41, &qword_1EB2E7068, &unk_1A8501EB0);
            v43 = *(v40 + 48);
            if (v43(v41, 1, v39) == 1)
            {
              sub_1A824B2D4(*(v0 + 336), &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_19:
              v49 = *(v0 + 472);
              v50 = *(v0 + 344);
              v52 = *(v0 + 320);
              v51 = *(v0 + 328);
              v53 = *(v0 + 304);
              sub_1A849D2AC(*(v0 + 240) + *(v0 + 512), v52, type metadata accessor for ImportExport.ExportOptions);
              v213 = *(v53 + 28);
              v205 = v49[9];
              v206 = v49[8];
              v54 = *v49;
              v55 = v49[1];
              v204 = v54;
              sub_1A8243D74(v209 + v42, v51, &qword_1EB2E7068, &unk_1A8501EB0);
              if (v43(v51, 1, v50) == 1)
              {
                sub_1A824B2D4(*(v0 + 328), &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_23:
                if (qword_1EB2E5960 != -1)
                {
                  swift_once();
                }

                if (byte_1EB2FF250)
                {
                  v64 = *(v0 + 400);
                  v66 = *v64;
                  v65 = v64[1];
                  v67 = sub_1A84E5D8C();
                  v68 = IMDAttachmentRecordCopyAttachmentForGUID();

                  if (!v68)
                  {
                    v186 = *(v0 + 520);

                    sub_1A8412484();
                    swift_allocError();
                    *v187 = v66;
                    *(v187 + 8) = v65;
                    *(v187 + 16) = 0;
                    swift_willThrow();

LABEL_125:
                    v189 = *(v0 + 472);
                    v190 = *(v0 + 400);
                    v191 = *(v0 + 344);
                    v192 = *(v0 + 352);

                    sub_1A849D24C(v190, type metadata accessor for ImportExport.Attachment);

                    (*(v192 + 8))(v52 + v213, v191);
                    sub_1A849D24C(v189, type metadata accessor for ImportExport.Message);

                    goto LABEL_126;
                  }

                  v69 = [objc_allocWithZone(MEMORY[0x1E69A5D98]) initWithRecordRef_];

                  v70 = sub_1A842FDD4();
                  if (v203)
                  {
                    v188 = *(v0 + 520);

                    goto LABEL_125;
                  }

                  v72 = v70;
                  v73 = v71;
                  v74 = *(v0 + 352);
                  sub_1A8244B68(0, &qword_1EB2E78D0, 0x1E69A8078);

                  v75 = v69;
                  v76 = sub_1A846D468(v75, v206, v205, v204, v55, v72, v73);
                  LOBYTE(v73) = [v76 isDownloadExpired];

                  v62 = *(v74 + 8);
                  v77 = *(v0 + 352);
                  if ((v73 & 1) == 0)
                  {
                    v79 = *(v0 + 472);
                    v80 = *(v0 + 400);
                    v81 = *(v0 + 296);
                    v82 = *(v0 + 280);
                    v62(v52 + v213, *(v0 + 344));
                    sub_1A849D2AC(v79, v81, type metadata accessor for ImportExport.Message);
                    sub_1A849D2AC(v80, v81 + *(v82 + 20), type metadata accessor for ImportExport.Attachment);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v225 = sub_1A83EEBC4(0, v225[2] + 1, 1, v225);
                    }

                    v22 = v207;
                    v1 = v208;
                    v84 = v225[2];
                    v83 = v225[3];
                    if (v84 >= v83 >> 1)
                    {
                      v225 = sub_1A83EEBC4(v83 > 1, v84 + 1, 1, v225);
                    }

                    v86 = *(v0 + 288);
                    v85 = *(v0 + 296);
                    sub_1A849D24C(*(v0 + 400), type metadata accessor for ImportExport.Attachment);
                    v225[2] = v84 + 1;
                    sub_1A849D3B4(v85, v225 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v84, type metadata accessor for ImportExport.MessageAttachmentPair);
                    v203 = 0;
                    goto LABEL_10;
                  }

                  v203 = 0;
                }

                else
                {
                  v62 = *(*(v0 + 352) + 8);
                }
              }

              else
              {
                v57 = *(v0 + 352);
                v56 = *(v0 + 360);
                v58 = *(v0 + 344);
                (*(v57 + 32))(v56, *(v0 + 328), v58);
                v59 = [objc_opt_self() defaultManager];
                sub_1A84E555C();
                v60 = sub_1A84E5D8C();

                v61 = [v59 fileExistsAtPath_];

                v62 = *(v57 + 8);
                v62(v56, v58);
                if (!v61)
                {
                  goto LABEL_23;
                }

                v63 = *(v0 + 352);
              }

              v78 = *(v0 + 400);
              v62(v52 + v213, *(v0 + 344));
              sub_1A849D24C(v78, type metadata accessor for ImportExport.Attachment);
              v22 = v207;
              v1 = v208;
              goto LABEL_10;
            }

            v44 = *(v0 + 368);
            v45 = *(v0 + 352);
            v212 = *(v0 + 344);
            (*(v45 + 32))(v44, *(v0 + 336));
            v46 = [objc_opt_self() defaultManager];
            sub_1A84E555C();
            v47 = sub_1A84E5D8C();

            v48 = [v46 fileExistsAtPath_];

            (*(v45 + 8))(v44, v212);
            if ((v48 & 1) == 0)
            {
              goto LABEL_19;
            }

            sub_1A849D24C(*(v0 + 400), type metadata accessor for ImportExport.Attachment);
            v22 = v207;
            v1 = v208;
          }

LABEL_10:
          if (v222 == ++v20)
          {
            goto LABEL_38;
          }
        }
      }

      v225 = *(v0 + 552);
LABEL_38:
      v87 = *(v0 + 472);

      sub_1A849D24C(v87, type metadata accessor for ImportExport.Message);
      v3 = v225;
      v4 = v229;
      goto LABEL_39;
    }

    v104 = *(*(v0 + 240) + *(v0 + 536));

    v105 = [v11 v98[160]];
    if (v105 <= 3)
    {
      if (v105 > 1)
      {
        if (v105 == 2)
        {
          v106 = 0xD000000000000010;
          v1 = 0x80000001A8533430;
        }

        else
        {
          v106 = 0x74634170756F7267;
          v1 = 0xEB000000006E6F69;
        }
      }

      else if (v105)
      {
        if (v105 != 1)
        {
LABEL_71:
          v1 = 0xE700000000000000;
          v106 = 0x6E776F6E6B6E75;
          goto LABEL_72;
        }

        v106 = 0xD000000000000011;
        v1 = 0x80000001A8533450;
      }

      else
      {
        v1 = 0xE700000000000000;
        v106 = 0x6567617373656DLL;
      }
    }

    else if (v105 <= 5)
    {
      if (v105 == 4)
      {
        v106 = 0xD000000000000019;
        v1 = 0x80000001A8533410;
      }

      else
      {
        v106 = 0x416567617373656DLL;
        v1 = 0xED00006E6F697463;
      }
    }

    else
    {
      switch(v105)
      {
        case 6:
          v106 = 0x7265766E6F437574;
          v1 = 0xEE006E6F69746173;
          break;
        case 7:
          v106 = 0xD000000000000017;
          v1 = 0x80000001A85333F0;
          break;
        case 8:
          v106 = 0xD000000000000018;
          v1 = 0x80000001A85333D0;
          break;
        default:
          goto LABEL_71;
      }
    }

LABEL_72:
    swift_beginAccess();
    v107 = *(v104 + 152);
    if (*(v107 + 16))
    {
      v108 = sub_1A824B390(v106, v1);
      if (v109)
      {
        v110 = *(*(v107 + 56) + 8 * v108);
        swift_endAccess();
        v111 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_141;
        }

        swift_beginAccess();
        v112 = *(v104 + 152);
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v114 = *(v104 + 152);
        *(v0 + 216) = v114;
        *(v104 + 152) = 0x8000000000000000;
        v115 = sub_1A824B390(v106, v1);
        v117 = *(v114 + 16);
        v118 = (v116 & 1) == 0;
        v17 = __OFADD__(v117, v118);
        v119 = v117 + v118;
        if (v17)
        {
          goto LABEL_142;
        }

        v120 = v116;
        if (*(v114 + 24) >= v119)
        {
          if ((v113 & 1) == 0)
          {
            v139 = v115;
            sub_1A848E814();
            v115 = v139;
            v134 = *(v0 + 216);
            if (v120)
            {
LABEL_89:
              *(v134[7] + 8 * v115) = v111;
              goto LABEL_44;
            }

            goto LABEL_93;
          }
        }

        else
        {
          sub_1A848A8C4(v119, v113);
          v121 = *(v0 + 216);
          v115 = sub_1A824B390(v106, v1);
          if ((v120 & 1) != (v122 & 1))
          {
            goto LABEL_120;
          }
        }

        v134 = *(v0 + 216);
        if (v120)
        {
          goto LABEL_89;
        }

LABEL_93:
        v134[(v115 >> 6) + 8] |= 1 << v115;
        v140 = (v134[6] + 16 * v115);
        *v140 = v106;
        v140[1] = v1;
        *(v134[7] + 8 * v115) = v111;
        v141 = v134[2];
        v17 = __OFADD__(v141, 1);
        v137 = v141 + 1;
        if (v17)
        {
          goto LABEL_143;
        }

        goto LABEL_94;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v123 = *(v104 + 152);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v125 = *(v104 + 152);
    *(v0 + 208) = v125;
    *(v104 + 152) = 0x8000000000000000;
    v126 = sub_1A824B390(v106, v1);
    v128 = *(v125 + 16);
    v129 = (v127 & 1) == 0;
    v17 = __OFADD__(v128, v129);
    v130 = v128 + v129;
    if (v17)
    {
      goto LABEL_134;
    }

    v131 = v127;
    if (*(v125 + 24) >= v130)
    {
      if ((v124 & 1) == 0)
      {
        v138 = v126;
        sub_1A848E814();
        v126 = v138;
        v134 = *(v0 + 208);
        if (v131)
        {
LABEL_43:
          *(v134[7] + 8 * v126) = 1;
          goto LABEL_44;
        }

        goto LABEL_85;
      }
    }

    else
    {
      sub_1A848A8C4(v130, v124);
      v132 = *(v0 + 208);
      v126 = sub_1A824B390(v106, v1);
      if ((v131 & 1) != (v133 & 1))
      {
LABEL_120:

        sub_1A84E67EC();
        return;
      }
    }

    v134 = *(v0 + 208);
    if (v131)
    {
      goto LABEL_43;
    }

LABEL_85:
    v134[(v126 >> 6) + 8] |= 1 << v126;
    v135 = (v134[6] + 16 * v126);
    *v135 = v106;
    v135[1] = v1;
    *(v134[7] + 8 * v126) = 1;
    v136 = v134[2];
    v17 = __OFADD__(v136, 1);
    v137 = v136 + 1;
    if (v17)
    {
      goto LABEL_140;
    }

LABEL_94:
    v134[2] = v137;

LABEL_44:
    *(v104 + 152) = v134;
    swift_endAccess();

    v88 = *(v0 + 568);
    v3 = v226;
    v4 = v230;
    v98 = &selRef_isGroupTypingMessage;
  }

  while (v88 != *(v0 + 528));
LABEL_40:
  v89 = *(v0 + 520);

  if (v3[2])
  {
    v90 = *(v0 + 536);
    v91 = *(v0 + 312);
    v92 = *(v0 + 240);
    sub_1A849D2AC(v92 + *(v0 + 512), v91, type metadata accessor for ImportExport.ExportOptions);
    v93 = *(v92 + v90);
    v94 = type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    v1 = swift_allocObject();
    sub_1A849D2AC(v91, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) = v3;
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics) = v93;
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    swift_allocObject();

    v97 = sub_1A84B39AC(0, 0, 0);
    sub_1A849D24C(v91, type metadata accessor for ImportExport.ExportOptions);
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress) = v97;
  }

  else
  {

    v1 = 0;
  }

  sub_1A849D2AC(*(v0 + 240) + *(v0 + 504), *(v0 + 272), type metadata accessor for ImportExport.Conversation);
  v142 = v4[2];
  if (!v142)
  {
LABEL_106:
    v158 = *(v0 + 264);
    v159 = *(v0 + 248);
    v160 = *(v0 + 256);
    v161 = *(v0 + 224);
    sub_1A849D3B4(*(v0 + 272), v158, type metadata accessor for ImportExport.Conversation);
    *(v158 + *(v159 + 20)) = v4;
    *(v158 + *(v159 + 24)) = v1;
    sub_1A849D3B4(v158, v161, type metadata accessor for ImportExport.MessageBatch);
    (*(v160 + 56))(v161, 0, 1, v159);
    v162 = *(v0 + 496);
    v164 = *(v0 + 464);
    v163 = *(v0 + 472);
    v165 = *(v0 + 456);
    v167 = *(v0 + 424);
    v166 = *(v0 + 432);
    v168 = *(v0 + 400);
    v169 = *(v0 + 368);
    v170 = *(v0 + 376);
    v171 = *(v0 + 360);
    v210 = *(v0 + 336);
    v214 = *(v0 + 328);
    v217 = *(v0 + 320);
    v220 = *(v0 + 312);
    v223 = *(v0 + 296);
    v227 = *(v0 + 272);
    v231 = *(v0 + 264);

    v172 = *(v0 + 8);
    goto LABEL_127;
  }

  v143 = 0;
  v144 = *(v0 + 456);
  v145 = *(v0 + 272);
  while (1)
  {
    if (v143 >= v4[2])
    {
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

    sub_1A849D2AC(v4 + ((*(*(v0 + 448) + 80) + 32) & ~*(*(v0 + 448) + 80)) + *(*(v0 + 448) + 72) * v143, *(v0 + 456), type metadata accessor for ImportExport.Message);
    v146 = *(v144 + 32);
    v147 = *(v144 + 40);
    v148 = *(v145 + 8);
    v149 = *(v145 + 16);
    if (v146 != v148 || v147 != v149)
    {
      v151 = *(v144 + 32);
      v152 = *(v144 + 40);
      v153 = *(v145 + 8);
      v154 = *(v145 + 16);
      if ((sub_1A84E67AC() & 1) == 0)
      {
        break;
      }
    }

    ++v143;
    sub_1A849D24C(*(v0 + 456), type metadata accessor for ImportExport.Message);
    v4 = v230;
    if (v142 == v143)
    {
      goto LABEL_106;
    }
  }

  v155 = *(v0 + 456);
  v156 = *(v0 + 272);

  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
  MEMORY[0x1AC56A990](v146, v147);
  MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
  MEMORY[0x1AC56A990](v148, v149);
  sub_1A8407E40();
  swift_allocError();
  *v157 = 0;
  v157[1] = 0xE000000000000000;
  swift_willThrow();

  sub_1A849D24C(v156, type metadata accessor for ImportExport.Conversation);
  sub_1A849D24C(v155, type metadata accessor for ImportExport.Message);
LABEL_126:
  v193 = *(v0 + 496);
  v195 = *(v0 + 464);
  v194 = *(v0 + 472);
  v196 = *(v0 + 456);
  v198 = *(v0 + 424);
  v197 = *(v0 + 432);
  v199 = *(v0 + 400);
  v200 = *(v0 + 368);
  v201 = *(v0 + 376);
  v202 = *(v0 + 360);
  v211 = *(v0 + 336);
  v215 = *(v0 + 328);
  v218 = *(v0 + 320);
  v221 = *(v0 + 312);
  v224 = *(v0 + 296);
  v228 = *(v0 + 272);
  v232 = *(v0 + 264);

  v172 = *(v0 + 8);
LABEL_127:

  v172();
}

uint64_t sub_1A849BC98()
{
  v20 = *(v0 + 584);
  v1 = *(v0 + 496);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 456);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v7 = *(v0 + 400);
  v9 = *(v0 + 368);
  v8 = *(v0 + 376);
  v10 = *(v0 + 360);
  v13 = *(v0 + 336);
  v14 = *(v0 + 328);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v17 = *(v0 + 296);
  v18 = *(v0 + 272);
  v19 = *(v0 + 264);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A849BDE4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(type metadata accessor for ImportExport.Conversation() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for ImportExport.Message();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A849BED4, 0, 0);
}

uint64_t sub_1A849BED4()
{
  v18 = v0;
  v1 = v0[5];
  v2 = objc_autoreleasePoolPush();
  sub_1A84D5350(v1, v0 + 2, v17);
  objc_autoreleasePoolPop(v2);
  v4 = v17[0];
  if (*(v17[0] + 16) || (v15 = v0[5], , v16 = objc_autoreleasePoolPush(), sub_1A84D6384(v15, v0 + 3, v17), objc_autoreleasePoolPop(v16), v4 = v17[0], *(v17[0] + 16)))
  {
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[5];
    sub_1A849D2AC(v0[6] + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, v6, type metadata accessor for ImportExport.Conversation);
    sub_1A8490568(v7, v6, v4, v5);
    v8 = v0[10];
    v9 = ImportExport.Message.allAttachments.getter();
    if (v9)
    {
      v10 = v9[2];
    }

    sub_1A849D3B4(v0[10], v0[4], type metadata accessor for ImportExport.Message);
    v11 = 0;
  }

  else
  {

    v11 = 1;
  }

  v12 = v0[10];
  v13 = v0[7];
  (*(v0[9] + 56))(v0[4], v11, 1, v0[8]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A849C0B4()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x6F6C61646E617473;
  if (v1 != 5)
  {
    v3 = 0x756F436863746162;
  }

  v4 = 0x42746E6572727563;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x704F74726F707865;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_1A849C1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A849DB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A849C1F0(uint64_t a1)
{
  v2 = sub_1A849D314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A849C22C(uint64_t a1)
{
  v2 = sub_1A849D314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ConversationExporter.deinit()
{
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch, &qword_1EB2E7CF8, &qword_1A8509020);
  return v0;
}

uint64_t ImportExport.ConversationExporter.__deallocating_deinit()
{
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch, &qword_1EB2E7CF8, &qword_1A8509020);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A849C3C4(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23[-v7];
  v9 = sub_1A83EA2FC(&qword_1EB2E8640, &qword_1A8509048);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-v12];
  v14 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A849D314();
  sub_1A84E68AC();
  v26 = 0;
  type metadata accessor for ImportExport.Conversation();
  sub_1A849D41C(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v26 = 1;
    type metadata accessor for ImportExport.ExportOptions();
    sub_1A849D41C(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions);
    sub_1A84E672C();
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v25 = *(v3 + v15);
    v24 = 2;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A849D41C(&qword_1EB2E7DE0, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E672C();
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
    swift_beginAccess();
    sub_1A8243D74(v3 + v16, v8, &qword_1EB2E7CF8, &qword_1A8509020);
    v24 = 3;
    type metadata accessor for ImportExport.MessageBatch();
    sub_1A849D41C(&qword_1EB2E8650, type metadata accessor for ImportExport.MessageBatch);
    sub_1A84E66BC();
    sub_1A824B2D4(v8, &qword_1EB2E7CF8, &qword_1A8509020);
    v17 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
    swift_beginAccess();
    v18 = *(v3 + v17);
    v23[0] = 4;
    sub_1A84E673C();
    v19 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode);
    v23[0] = 5;
    sub_1A84E66DC();
    v20 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
    swift_beginAccess();
    v21 = *(v3 + v20);
    v27 = 6;
    sub_1A84E670C();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t ImportExport.ConversationExporter.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ConversationExporter.init(from:)(a1);
  return v5;
}

uint64_t ImportExport.ConversationExporter.init(from:)(uint64_t *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v32 - v5;
  v38 = type metadata accessor for ImportExport.ExportOptions();
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ImportExport.Conversation();
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A83EA2FC(&qword_1EB2E8658, qword_1A8509050);
  v36 = *(v41 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v14 = type metadata accessor for ImportExport.MessageBatch();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 0;
  v16 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
  v45 = v1;
  v46 = a1;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount) = 0;
  v17 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A849D314();
  v42 = v12;
  v18 = v44;
  sub_1A84E689C();
  if (v18)
  {
    v19 = v45;
    sub_1A824B2D4(v45 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch, &qword_1EB2E7CF8, &qword_1A8509020);
    type metadata accessor for ImportExport.ConversationExporter();
    v25 = *(*v19 + 48);
    v26 = *(*v19 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v37;
    v44 = v14;
    v34 = v15;
    v35 = v13;
    v33 = v16;
    v21 = v39;
    v22 = v36;
    LOBYTE(v47) = 0;
    sub_1A849D41C(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
    v23 = v41;
    sub_1A84E666C();
    v24 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation;
    v19 = v45;
    sub_1A849D3B4(v43, v45 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
    LOBYTE(v47) = 1;
    sub_1A849D41C(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions);
    sub_1A84E666C();
    v43 = v24;
    sub_1A849D3B4(v20, v19 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    type metadata accessor for ImportExport.ExportStatistics();
    v48 = 2;
    sub_1A849D41C(&qword_1EB2E7DF0, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    *(v19 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = v47;
    LOBYTE(v47) = 3;
    sub_1A849D41C(&qword_1EB2E7E88, type metadata accessor for ImportExport.MessageBatch);
    sub_1A84E65FC();
    v28 = v35;
    swift_beginAccess();
    sub_1A849D1DC(v21, v19 + v28);
    swift_endAccess();
    LOBYTE(v47) = 4;
    *(v19 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID) = sub_1A84E667C();
    LOBYTE(v47) = 5;
    v29 = v42;
    *(v19 + v34) = sub_1A84E661C() & 1;
    LOBYTE(v47) = 6;
    v30 = sub_1A84E664C();
    (*(v22 + 8))(v29, v23);
    v31 = v33;
    swift_beginAccess();
    *(v19 + v31) = v30;
  }

  sub_1A8244788(v46);
  return v19;
}

uint64_t sub_1A849CF8C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A84988C0(a1);
}

uint64_t sub_1A849D028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A849D0C0, v6, v8);
}

uint64_t sub_1A849D0C0()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A84988C0(v3);
}

uint64_t sub_1A849D15C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ImportExport.ConversationExporter();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ImportExport.ConversationExporter.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A849D1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A849D24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A849D2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A849D314()
{
  result = qword_1EB2E8648;
  if (!qword_1EB2E8648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8648);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.ConversationExporter()
{
  result = qword_1EB2E8660;
  if (!qword_1EB2E8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A849D3B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A849D41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A849D464@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1A849D4B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1A849D510()
{
  v0 = type metadata accessor for ImportExport.Conversation();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ImportExport.ExportOptions();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1A849DA28();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ImportExport.ConversationExporter.next()(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A824FBE0;

  return v8(a1);
}

uint64_t dispatch thunk of ImportExport.ConversationExporter.fetchExportableMessageBatch(startingAtRowIDGreaterThan:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A82505F4;

  return v10(a1, a2);
}

void sub_1A849DA28()
{
  if (!qword_1EB2E8670)
  {
    type metadata accessor for ImportExport.MessageBatch();
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E8670);
    }
  }
}

unint64_t sub_1A849DA94()
{
  result = qword_1EB2E8678;
  if (!qword_1EB2E8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8678);
  }

  return result;
}

unint64_t sub_1A849DAEC()
{
  result = qword_1EB2E8680;
  if (!qword_1EB2E8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8680);
  }

  return result;
}

unint64_t sub_1A849DB44()
{
  result = qword_1EB2E8688;
  if (!qword_1EB2E8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8688);
  }

  return result;
}

uint64_t sub_1A849DB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x42746E6572727563 && a2 == 0xEC00000068637461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85334B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEE0065646F4D656ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F436863746162 && a2 == 0xEA0000000000746ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *ImportExport.ArchiveImportIterator.__allocating_init(withArchiveImporter:)(uint64_t a1)
{
  result = swift_allocObject();
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  result[2] = a1;
  result[3] = v3;
  return result;
}

void *ImportExport.ArchiveImportIterator.init(withArchiveImporter:)(uint64_t a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = a1;
  v1[3] = v2;
  return v1;
}

uint64_t sub_1A849DE74(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for ImportExport.ImportedMessageBatch();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = *(*(sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for ImportExport.MessageBatch();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1A84E558C();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(sub_1A83EA2FC(&qword_1EB2E8690, &unk_1A85092A0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A849E0A4, 0, 0);
}

uint64_t sub_1A849E0A4()
{
  v1 = v0[6];
  sub_1A849F2A4();
  v2 = *(v1 + 32);
  v0[21] = v2;
  if (!v2)
  {
    return sub_1A84E653C();
  }

  v3 = v0[6];
  v4 = *(v3 + 48);

  if (v4)
  {
    v5 = *(v3 + 40);
    v0[24] = v5;
    if (v5)
    {

      v6 = swift_task_alloc();
      v0[25] = v6;
      *v6 = v0;
      v6[1] = sub_1A849E828;
      v7 = v0[9];

      return sub_1A840416C(v7);
    }

    else
    {
      sub_1A849F584();
      v11 = v0[21];
      v12 = v0[5];
      v13 = type metadata accessor for ImportExport.ArchiveImporterBatch();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

      v15 = v0[19];
      v14 = v0[20];
      v17 = v0[15];
      v16 = v0[16];
      v18 = v0[12];
      v20 = v0[8];
      v19 = v0[9];

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1A849E3B0;
    v10 = v0[16];

    return sub_1A8459D78(v10);
  }
}

uint64_t sub_1A849E3B0()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1A849F02C;
  }

  else
  {
    v3 = sub_1A849E4C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A849E4C4()
{
  v1 = v0[17];
  v2 = v0[16];
  if ((*(v0[18] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[23];
    v4 = v0[6];
    sub_1A824B2D4(v2, &qword_1EB2E8690, &unk_1A85092A0);
LABEL_7:
    sub_1A849F584();
    v23 = v0[21];
    if (v3)
    {
      v24 = v0[21];

      v26 = v0[19];
      v25 = v0[20];
      v28 = v0[15];
      v27 = v0[16];
      v29 = v0[12];
      v31 = v0[8];
      v30 = v0[9];
    }

    else
    {
      v33 = v0[5];
      v34 = type metadata accessor for ImportExport.ArchiveImporterBatch();
      (*(*(v34 - 8) + 56))(v33, 1, 1, v34);

      v36 = v0[19];
      v35 = v0[20];
      v38 = v0[15];
      v37 = v0[16];
      v39 = v0[12];
      v41 = v0[8];
      v40 = v0[9];
    }

    v32 = v0[1];

    return v32();
  }

  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[6];
  sub_1A849F80C(v2, v5);
  sub_1A8243D74(v5, v6, &qword_1EB2E7E00, &qword_1A8506380);
  v11 = *(v1 + 48);
  v12 = *(v10 + 48);
  *(v10 + 48) = *v6;

  (*(v8 + 8))(&v6[v11], v9);
  v13 = *v5;
  (*(v8 + 16))(v7, &v5[*(v1 + 48)], v9);
  v14 = type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = v13;
  (*(v8 + 32))(v17 + OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL, v7, v9);
  v18 = *(v10 + 40);
  *(v10 + 40) = v17;

  sub_1A824B2D4(v5, &qword_1EB2E7E00, &qword_1A8506380);
  v3 = v0[23];
  v19 = *(v0[6] + 40);
  v0[24] = v19;
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_1A849E828;
  v21 = v0[9];

  return sub_1A840416C(v21);
}

uint64_t sub_1A849E828()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1A849F0EC;
  }

  else
  {
    v3 = sub_1A849E93C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A849E93C()
{
  v1 = v0[9];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  v3 = v0[6];
  if (v2 == 1)
  {
    v4 = v0[24];

    sub_1A824B2D4(v1, &qword_1EB2E7CF8, &qword_1A8509020);
    v5 = v3[6];
    v3[6] = 0;

    v6 = v3[5];
    v3[5] = 0;

    v7 = v0[6];
    if (*(v7 + 48))
    {
      v8 = v0[26];
      v9 = *(v7 + 40);
      v0[24] = v9;
      if (v9)
      {

        v10 = swift_task_alloc();
        v0[25] = v10;
        *v10 = v0;
        v10[1] = sub_1A849E828;
        v11 = v0[9];

        return sub_1A840416C(v11);
      }

      else
      {
        sub_1A849F584();
        v19 = v0[21];
        if (v8)
        {
          v20 = v0[21];

          v22 = v0[19];
          v21 = v0[20];
          v24 = v0[15];
          v23 = v0[16];
          v25 = v0[12];
          v27 = v0[8];
          v26 = v0[9];
        }

        else
        {
          v29 = v0[5];
          v30 = type metadata accessor for ImportExport.ArchiveImporterBatch();
          (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

          v32 = v0[19];
          v31 = v0[20];
          v34 = v0[15];
          v33 = v0[16];
          v35 = v0[12];
          v37 = v0[8];
          v36 = v0[9];
        }

        v28 = v0[1];

        return v28();
      }
    }

    else
    {
      v16 = v0[21];
      v17 = swift_task_alloc();
      v0[22] = v17;
      *v17 = v0;
      v17[1] = sub_1A849E3B0;
      v18 = v0[16];

      return sub_1A8459D78(v18);
    }
  }

  else
  {
    sub_1A84A1300(v1, v0[12], type metadata accessor for ImportExport.MessageBatch);
    v0[27] = *(v3[2] + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);

    v13 = swift_task_alloc();
    v0[28] = v13;
    *v13 = v0;
    v13[1] = sub_1A849ECF0;
    v14 = v0[12];
    v15 = v0[8];

    return ImportExport.Importer.import(messageBatch:)(v15, v14);
  }
}

uint64_t sub_1A849ECF0()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1A849F1B8;
  }

  else
  {
    v4 = sub_1A849EE20;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A849EE20()
{
  v1 = v0[24];
  v2 = v0[21];
  v27 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = objc_autoreleasePoolPush();
  v9 = sub_1A84A0514(v5);
  swift_beginAccess();

  sub_1A83EE550(v10);
  swift_endAccess();
  sub_1A84A1298(v5, v7, type metadata accessor for ImportExport.Conversation);
  v11 = *(v5 + *(v3 + 20));
  v12 = v5 + *(v4 + 20);
  v13 = *(v12 + 32);
  v14 = type metadata accessor for ImportExport.ArchiveImporterBatch();
  v15 = *v12;
  v16 = *(v12 + 16);
  *(v7 + v14[5]) = v11;
  *(v7 + v14[6]) = v9;
  v17 = v7 + v14[7];
  *v17 = v15;
  *(v17 + 16) = v16;
  *(v17 + 32) = v13;
  (*(*(v14 - 1) + 56))(v7, 0, 1, v14);

  objc_autoreleasePoolPop(v8);

  sub_1A84A1238(v5, type metadata accessor for ImportExport.ImportedMessageBatch);
  sub_1A84A1238(v27, type metadata accessor for ImportExport.MessageBatch);
  v19 = v0[19];
  v18 = v0[20];
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[12];
  v24 = v0[8];
  v23 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1A849F02C()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A849F0EC()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A849F1B8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[12];

  sub_1A84A1238(v3, type metadata accessor for ImportExport.MessageBatch);
  v4 = v0[29];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v11 = v0[8];
  v10 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A849F2A4()
{
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[4])
  {
    v29 = v1;
    v12 = v0[2];
    v13 = v12 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest;
    swift_beginAccess();
    sub_1A84A1298(v13, v11, type metadata accessor for ImportExport.ArchiveManifest);
    v14 = type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    sub_1A84A1300(v11, v17 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest, type metadata accessor for ImportExport.ArchiveManifest);
    *(v17 + 16) = 0;
    v18 = v0[5];
    v0[4] = v17;
    v0[5] = 0;

    v19 = v0[6];
    v0[6] = 0;

    v20 = *(v12 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
    v21 = *(v13 + *(v7 + 24));
    swift_beginAccess();
    v22 = *(v21 + 144);
    v23 = *(v21 + 128);
    v27[0] = *(v21 + 112);
    v27[1] = v23;
    v28 = v22;

    ImportExport.Importer.begin(withExpectedCounts:)(v27);

    sub_1A84E5C8C();
    v24 = sub_1A84E5C7C();
    v25 = sub_1A84E617C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1A823F000, v24, v25, "Started importing archive...", v26, 2u);
      MEMORY[0x1AC56D3F0](v26, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1A849F584()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v23 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer;
  v8 = *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
  swift_beginAccess();
  v9 = *(v8 + 16);
  swift_beginAccess();
  v10 = v1[3];
  type metadata accessor for ImportExport.ArchiveImporterStatistics();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = v11;

  sub_1A84E5C8C();
  v14 = sub_1A84E5C7C();
  v15 = sub_1A84E617C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A823F000, v14, v15, "Finished importing archive...", v16, 2u);
    MEMORY[0x1AC56D3F0](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v17 = v1[4];
  v1[4] = 0;

  v18 = v1[5];
  v1[5] = 0;

  v19 = v1[6];
  v1[6] = 0;

  v20 = v1[3];
  v1[3] = MEMORY[0x1E69E7CC0];

  v21 = *(v7 + v23);

  ImportExport.Importer.finish()();
}

uint64_t sub_1A849F80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A849F87C()
{
  v1 = *v0;
  v2 = 0x4965766968637261;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1A849F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84A107C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A849F95C(uint64_t a1)
{
  v2 = sub_1A84A0C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A849F998(uint64_t a1)
{
  v2 = sub_1A84A0C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ImportExport.ArchiveImportIterator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t ImportExport.ArchiveImportIterator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1A849FA6C(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8698, &unk_1A85092B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84A0C50();
  sub_1A84E68AC();
  v15 = v3[2];
  LOBYTE(v14) = 0;
  type metadata accessor for ImportExport.ArchiveImporter();
  sub_1A84A0D64(&qword_1EB2E86A8, type metadata accessor for ImportExport.ArchiveImporter);
  sub_1A84E672C();
  if (!v2)
  {
    swift_beginAccess();
    v14 = v3[3];
    v13 = 1;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84A0CC8(&qword_1EB2E86B8, &qword_1EB2E73A0);
    sub_1A84E672C();
    v14 = v3[4];
    v13 = 2;
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    sub_1A84A0D64(&qword_1EB2E86C0, type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator);
    sub_1A84E66BC();
    v14 = v3[5];
    v13 = 3;
    type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
    sub_1A84A0D64(&qword_1EB2E86C8, type metadata accessor for ImportExport.ArchivedConversation.Iterator);
    sub_1A84E66BC();
    v14 = v3[6];
    v13 = 4;
    type metadata accessor for ImportExport.ArchivedConversation(0);
    sub_1A84A0D64(&qword_1EB2E71F8, type metadata accessor for ImportExport.ArchivedConversation);
    sub_1A84E66BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.ArchiveImportIterator.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveImportIterator.init(from:)(a1);
  return v2;
}

void *ImportExport.ArchiveImportIterator.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E86D0, qword_1A85092C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v3[4] = 0;
  v3[5] = 0;
  v10 = v3 + 4;
  v3[6] = 0;
  v11 = a1[3];
  v12 = a1[4];
  v20 = a1;
  sub_1A82471E0(a1, v11);
  sub_1A84A0C50();
  sub_1A84E689C();
  if (v2)
  {
    v13 = v3[4];

    v14 = v3[5];

    v15 = v3[6];

    type metadata accessor for ImportExport.ArchiveImportIterator();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ImportExport.ArchiveImporter();
    v21 = 0;
    sub_1A84A0D64(&qword_1EB2E86D8, type metadata accessor for ImportExport.ArchiveImporter);
    sub_1A84E666C();
    v3[2] = v22;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    v21 = 1;
    sub_1A84A0CC8(&qword_1EB2E86E0, &qword_1EB2E7398);
    sub_1A84E666C();
    v3[3] = v22;
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    v21 = 2;
    sub_1A84A0D64(&qword_1EB2E86E8, type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator);
    sub_1A84E65FC();
    v17 = *v10;
    *v10 = v22;

    type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
    v21 = 3;
    sub_1A84A0D64(&qword_1EB2E86F0, type metadata accessor for ImportExport.ArchivedConversation.Iterator);
    sub_1A84E65FC();
    v18 = v3[5];
    v3[5] = v22;

    type metadata accessor for ImportExport.ArchivedConversation(0);
    v21 = 4;
    sub_1A84A0D64(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation);
    sub_1A84E65FC();
    (*(v6 + 8))(v9, v5);
    v19 = v3[6];
    v3[6] = v22;
  }

  sub_1A8244788(v20);
  return v3;
}

uint64_t sub_1A84A02C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A849DE74(a1);
}

uint64_t sub_1A84A0364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A84A03FC, v6, v8);
}

uint64_t sub_1A84A03FC()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A849DE74(v3);
}

void *sub_1A84A0498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.ArchiveImportIterator();
  v5 = swift_allocObject();
  result = ImportExport.ArchiveImportIterator.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1A84A0514(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_1A84E558C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v48 - v12;
  v14 = type metadata accessor for ImportExport.Attachment();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v48 - v19;
  v50 = type metadata accessor for ImportExport.MessagePart();
  v49 = *(v50 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ImportExport.Message();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v55 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ImportExport.MessageBatch();
  v28 = *(a1 + *(result + 5));
  v54 = *(v28 + 16);
  if (v54)
  {
    v29 = 0;
    v51 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v66 = (v63 + 48);
    v64 = (v7 + 48);
    v59 = (v7 + 32);
    v69 = MEMORY[0x1E69E7CC0];
    v58 = (v7 + 8);
    v60 = v18;
    v61 = v14;
    v65 = v22;
    v52 = v28;
    v53 = v24;
    while (v29 < *(v28 + 16))
    {
      v30 = *(v24 + 72);
      v57 = v29;
      v31 = v55;
      sub_1A84A1298(v51 + v30 * v29, v55, type metadata accessor for ImportExport.Message);
      v32 = *(v31 + 216);

      sub_1A84A1238(v31, type metadata accessor for ImportExport.Message);
      v33 = v32;
      v34 = *(v32 + 16);
      if (v34)
      {
        v68 = *(v50 + 44);
        v35 = *(v49 + 80);
        v56 = v33;
        v36 = v33 + ((v35 + 32) & ~v35);
        v67 = *(v49 + 72);
        do
        {
          sub_1A84A1298(v36, v22, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(&v22[v68], v13, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84A1238(v22, type metadata accessor for ImportExport.MessagePart);
          if ((*v66)(v13, 1, v14) == 1)
          {
            sub_1A824B2D4(v13, &qword_1EB2E6F50, &unk_1A8502920);
          }

          else
          {
            v37 = v70;
            sub_1A84A1300(v13, v70, type metadata accessor for ImportExport.Attachment);
            sub_1A8243D74(v37 + *(v14 + 40), v5, &qword_1EB2E7068, &unk_1A8501EB0);
            if ((*v64)(v5, 1, v6) == 1)
            {
              sub_1A824B2D4(v5, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_14:
              sub_1A84A1298(v70, v18, type metadata accessor for ImportExport.Attachment);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_1A83EF118(0, v69[2] + 1, 1, v69);
              }

              v46 = v69[2];
              v45 = v69[3];
              if (v46 >= v45 >> 1)
              {
                v69 = sub_1A83EF118(v45 > 1, v46 + 1, 1, v69);
              }

              sub_1A84A1238(v70, type metadata accessor for ImportExport.Attachment);
              v47 = v69;
              v69[2] = v46 + 1;
              sub_1A84A1300(v18, v47 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v46, type metadata accessor for ImportExport.Attachment);
              v22 = v65;
              goto LABEL_8;
            }

            v38 = v62;
            (*v59)(v62, v5, v6);
            v39 = [objc_opt_self() defaultManager];
            sub_1A84E555C();
            v40 = v6;
            v41 = v5;
            v42 = sub_1A84E5D8C();

            v43 = [v39 fileExistsAtPath_];

            v5 = v41;
            v6 = v40;
            v44 = v38;
            v18 = v60;
            v14 = v61;
            (*v58)(v44, v40);
            if ((v43 & 1) == 0)
            {
              goto LABEL_14;
            }

            sub_1A84A1238(v70, type metadata accessor for ImportExport.Attachment);
            v22 = v65;
          }

LABEL_8:
          v36 += v67;
          --v34;
        }

        while (v34);
      }

      v29 = v57 + 1;
      v24 = v53;
      v28 = v52;
      if (v57 + 1 == v54)
      {
        return v69;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1A84A0C50()
{
  result = qword_1EB2E86A0;
  if (!qword_1EB2E86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E86A0);
  }

  return result;
}

uint64_t sub_1A84A0CC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84A0D64(a2, type metadata accessor for ImportExport.Attachment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84A0D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ImportExport.ArchiveImportIterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return v8(a1);
}

unint64_t sub_1A84A0F78()
{
  result = qword_1EB2E86F8;
  if (!qword_1EB2E86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E86F8);
  }

  return result;
}

unint64_t sub_1A84A0FD0()
{
  result = qword_1EB2E8700;
  if (!qword_1EB2E8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8700);
  }

  return result;
}

unint64_t sub_1A84A1028()
{
  result = qword_1EB2E8708;
  if (!qword_1EB2E8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8708);
  }

  return result;
}

uint64_t sub_1A84A107C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965766968637261 && a2 == 0xEF726574726F706DLL;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533590 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A85335B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A85335D0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530050 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A84A1238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84A1298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84A1300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84A1368()
{
  sub_1A84A13C0();

  return sub_1A84E5C8C();
}

uint64_t sub_1A84A13C0()
{
  strcpy(v2, "ImportExport.");
  v0 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v0);

  return v2[0];
}

uint64_t sub_1A84A1428()
{
  sub_1A84E5E5C();
}

uint64_t sub_1A84A1570()
{
  sub_1A84E5E5C();
}

uint64_t sub_1A84A169C()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84A17A4()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void ImportExport.ServiceType.init(for:default:)(uint64_t a1@<X1>, char *a2@<X2>, unsigned __int8 *a3@<X8>)
{
  v4 = *a2;
  if (a1)
  {
    static ImportExport.ServiceType.serviceName(for:)(a1, &v7);

    v5 = v7;
    if (v7 > 3u || v7)
    {
      v6 = sub_1A84E67AC();

      if ((v6 & 1) == 0)
      {
        v4 = v5;
      }
    }

    else
    {
    }
  }

  *a3 = v4;
}

Swift::Bool __swiftcall ImportExport.ServiceType.isEqual(to:)(Swift::String to)
{
  *v1;
  *v1;
  *v1;
  sub_1A840D3B0();
  v2 = sub_1A84E638C();

  return v2 == 0;
}

uint64_t static ImportExport.ServiceType.serviceName(for:)@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v2 = 0;
    while (1)
    {
      v3 = byte_1F1B70550[v2++ + 32];
      sub_1A840D3B0();
      v4 = sub_1A84E638C();

      if (!v4)
      {
        break;
      }

      if (v2 == 8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t static ImportExport.ServiceType.isKnownService(_:)()
{

  ImportExport.ServiceType.init(rawValue:)(&v2);
  if (v2 == 8)
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_1A8436808(v2, 0) ^ 1;
  }

  return v0 & 1;
}

uint64_t ImportExport.ServiceType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A84A1ED0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ImportExport.ServiceType.init(rawValue:)(a1);
}

void sub_1A84A1EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 5456722;
  if (v2 != 6)
  {
    v6 = 0x74696C6C65746153;
    v5 = 0xEC000000534D5365;
  }

  v7 = 5459283;
  v8 = 0xE300000000000000;
  if (v2 != 4)
  {
    v7 = 0x656D695465636146;
    v8 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  if (v2 != 2)
  {
    v9 = 0xEC0000006574694CLL;
  }

  if (*v1)
  {
    v4 = 7958113;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = 0x6567617373654D69;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1A84A1FF8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 5456722;
  if (v1 != 6)
  {
    v3 = 0x74696C6C65746153;
  }

  v4 = 5459283;
  if (v1 != 4)
  {
    v4 = 0x656D695465636146;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7958113;
  }

  if (*v0 > 1u)
  {
    v2 = 0x6567617373654D69;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1A84A20F4()
{
  result = qword_1EB2E8710;
  if (!qword_1EB2E8710)
  {
    sub_1A83EC9D4(&qword_1EB2E8718, &qword_1A8509520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8710);
  }

  return result;
}

unint64_t sub_1A84A215C()
{
  result = qword_1EB2E8720;
  if (!qword_1EB2E8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8720);
  }

  return result;
}

uint64_t _s11ServiceTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ServiceTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A84A2310()
{
  result = qword_1EB2E8728;
  if (!qword_1EB2E8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8728);
  }

  return result;
}

uint64_t sub_1A84A23AC()
{
  v1 = *(v0 + OBJC_IVAR___IMKeyTransparencyController_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 40));
  sub_1A84A40EC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 40));

  v2 = v4;

  return v2;
}

uint64_t sub_1A84A2458()
{

  swift_getAtKeyPath();

  return v1;
}

void *sub_1A84A2530(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___IMKeyTransparencyController_state);

  os_unfair_lock_lock((v5 + 40));
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = sub_1A824B390(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock((v5 + 40));

  return v9;
}

uint64_t sub_1A84A25D4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EB2E4780 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1EB2E47B0);
  v9 = a2;

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 134218242;
    *(v12 + 4) = [v9 uiStatus];

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1A82446BC(a3, a4, &v18);
    _os_log_impl(&dword_1A823F000, v10, v11, "Setting KTVerifierResult with uiStatus: %lu for handle: %s", v12, 0x16u);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  else
  {
  }

  v14 = v9;

  v15 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 8);
  sub_1A848E084(v14, a3, a4, isUniquelyReferenced_nonNull_native);

  *(a1 + 8) = v18;
  return result;
}

void *sub_1A84A27CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___IMKeyTransparencyController_state);

  os_unfair_lock_lock((v5 + 40));
  v6 = *(v5 + 32);
  if (*(v6 + 16) && (v7 = sub_1A824B390(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock((v5 + 40));

  return v9;
}

id sub_1A84A2870(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

uint64_t sub_1A84A28E8(uint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = [a2 ktData];
  if (v8 && (v9 = v8, v10 = [v8 verifierResult], v9, v10))
  {
    v11 = [v10 uiStatus];

    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v12 = sub_1A84E5C9C();
    sub_1A824431C(v12, qword_1EB2E47B0);

    v13 = sub_1A84E5C7C();
    v14 = sub_1A84E617C();

    if (os_log_type_enabled(v13, v14))
    {
      v34 = v6;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 134218242;
      *(v15 + 4) = v11;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1A82446BC(a3, a4, &v36);
      _os_log_impl(&dword_1A823F000, v13, v14, "Setting IDSIDInfoResult with uiStatus: %lu for handle: %s", v15, 0x16u);
      sub_1A8244788(v16);
      MEMORY[0x1AC56D3F0](v16, -1, -1);
      v17 = v15;
      v6 = v34;
      MEMORY[0x1AC56D3F0](v17, -1, -1);
    }
  }

  else
  {
    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v18 = sub_1A84E5C9C();
    sub_1A824431C(v18, qword_1EB2E47B0);

    v19 = v6;
    v20 = sub_1A84E5C7C();
    v21 = sub_1A84E617C();

    if (os_log_type_enabled(v20, v21))
    {
      v35 = v6;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v22 = 136315650;
      *(v22 + 4) = sub_1A82446BC(a3, a4, &v36);
      *(v22 + 12) = 2112;
      v24 = [v19 ktData];
      *(v22 + 14) = v24;
      *v23 = v24;
      *(v22 + 22) = 2112;
      v25 = [v19 ktData];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 verifierResult];

        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v22 + 24) = v27;
      v23[1] = v28;
      _os_log_impl(&dword_1A823F000, v20, v21, "IDSIDInfoResult did not have a UIStatus for handle: %s. ktData %@ verifierResult %@", v22, 0x20u);
      sub_1A83EA2FC(&unk_1EB2E9070, &unk_1A8501A90);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v23, -1, -1);
      sub_1A8244788(v33);
      MEMORY[0x1AC56D3F0](v33, -1, -1);
      MEMORY[0x1AC56D3F0](v22, -1, -1);

      v6 = v35;
    }

    else
    {
    }
  }

  v29 = v6;
  v30 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + 16);
  sub_1A848E234(v29, a3, a4, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v36;
  return result;
}

uint64_t sub_1A84A2D14(char *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(os_unfair_lock_s *, id, uint64_t, uint64_t))
{
  v8 = sub_1A84E5DBC();
  v10 = v9;
  v11 = *&a1[OBJC_IVAR___IMKeyTransparencyController_state];
  v12 = a3;
  v13 = a1;

  os_unfair_lock_lock(v11 + 10);
  a5(v11 + 4, v12, v8, v10);
  os_unfair_lock_unlock(v11 + 10);
}

uint64_t sub_1A84A2DE0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = sub_1A84E5D8C();
  v8 = [v3 ktVerifierResultForHandleID_];

  if (v8)
  {
    v9 = [v3 verifier];
    sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A8507730;
    *(v10 + 32) = v8;
    sub_1A8244B68(0, &unk_1EB2E8770, 0x1E69DB4F8);
    v11 = v8;
    v12 = sub_1A84E5FEC();

    v13 = [v9 getDisplayStatusForResults:v12 isSelfOptedIn:{objc_msgSend(v3, sel_selfOptedIn)}];

    if (a3)
    {
      v14 = [a3 isLastIncomingFinishedMessageNotiMessage] ^ 1;
    }

    else
    {
      v14 = 1;
    }

    v21 = IMKeyTransparencyStatusFromKTUIStatus(v13, v14);

    return v21;
  }

  else
  {
    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v15 = sub_1A84E5C9C();
    sub_1A824431C(v15, qword_1EB2E47B0);

    v16 = sub_1A84E5C7C();
    v17 = sub_1A84E617C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1A82446BC(a1, a2, &v22);
      _os_log_impl(&dword_1A823F000, v16, v17, "Could not find a verifier result for handleID: %s returning pending status", v18, 0xCu);
      sub_1A8244788(v19);
      MEMORY[0x1AC56D3F0](v19, -1, -1);
      MEMORY[0x1AC56D3F0](v18, -1, -1);
    }

    return 2;
  }
}

uint64_t sub_1A84A30DC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v48 = result;
  while (v5)
  {
    v9 = v8;
LABEL_15:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A8244F40(*(v1 + 56) + 32 * v13, v52);
    *&v53 = v16;
    *(&v53 + 1) = v15;
    sub_1A8243DDC(v52, &v54);

    v11 = v9;
LABEL_16:
    v56 = v53;
    v57[0] = v54;
    v57[1] = v55;
    if (!*(&v53 + 1))
    {

      sub_1A84A3DAC(v47);
    }

    sub_1A8243DDC(v57, &v53);
    v17 = sub_1A84E5D8C();

    v18 = [v17 _stripFZIDPrefix];

    if (v18)
    {
      v19 = sub_1A84E5DBC();
      v21 = v20;
      sub_1A8244F40(&v53, v52);
      sub_1A8244B68(0, &qword_1EB2E4730, 0x1E69A52B8);
      if (swift_dynamicCast())
      {
        v50 = v11;
        [v49 setIDSIDInfoResult:v51 forHandleID:v18];
        v22 = [v51 ktData];
        if (v22 && (v23 = v22, v24 = [v22 verifierResult], v23, v24))
        {
          v40 = [v49 ktVerifierResultForHandleID_];
          if ([v24 isEqual_])
          {

            v18 = v40;
          }

          else
          {
            v46 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_1A824A1FC(0, *(v47 + 2) + 1, 1, v47);
            }

            v42 = *(v47 + 2);
            v41 = *(v47 + 3);
            v43 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              v45 = sub_1A824A1FC((v41 > 1), v42 + 1, 1, v47);
              v43 = v42 + 1;
              v47 = v45;
            }

            *(v47 + 2) = v43;
            v44 = &v47[16 * v42];
            *(v44 + 4) = v19;
            *(v44 + 5) = v21;
            [v49 setKTVerifierResult:v24 forHandleID:v18];
          }

          v8 = v50;

          result = sub_1A8244788(&v53);
        }

        else
        {

          if (qword_1EB2E4780 != -1)
          {
            swift_once();
          }

          v25 = sub_1A84E5C9C();
          sub_1A824431C(v25, qword_1EB2E47B0);

          v26 = sub_1A84E5C7C();
          v27 = sub_1A84E617C();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v52[0] = v29;
            *v28 = 136315138;
            v30 = sub_1A82446BC(v19, v21, v52);

            *(v28 + 4) = v30;
            _os_log_impl(&dword_1A823F000, v26, v27, "No KTVerifierResult in IDS query results for handle: %s", v28, 0xCu);
            sub_1A8244788(v29);
            v31 = v29;
            v1 = v48;
            MEMORY[0x1AC56D3F0](v31, -1, -1);
            MEMORY[0x1AC56D3F0](v28, -1, -1);
          }

          else
          {
          }

          result = sub_1A8244788(&v53);
          v8 = v50;
        }
      }

      else
      {

        if (qword_1EB2E4780 != -1)
        {
          swift_once();
        }

        v32 = sub_1A84E5C9C();
        sub_1A824431C(v32, qword_1EB2E47B0);

        v33 = sub_1A84E5C7C();
        v34 = sub_1A84E617C();

        if (!os_log_type_enabled(v33, v34))
        {

          goto LABEL_5;
        }

        v35 = v19;
        v8 = v11;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v52[0] = v37;
        *v36 = 136315138;
        v38 = sub_1A82446BC(v35, v21, v52);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_1A823F000, v33, v34, "No IDSIDInfoResult found in IDS query results for handle: %s", v36, 0xCu);
        sub_1A8244788(v37);
        v39 = v37;
        v1 = v48;
        MEMORY[0x1AC56D3F0](v39, -1, -1);
        MEMORY[0x1AC56D3F0](v36, -1, -1);

        result = sub_1A8244788(&v53);
      }
    }

    else
    {
LABEL_5:
      result = sub_1A8244788(&v53);
      v8 = v11;
    }
  }

  if (v6 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v5 = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      goto LABEL_16;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1A84A37D0(uint64_t a1, unint64_t a2)
{
  if (qword_1EB2E4780 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v4 = sub_1A84E5C9C();
    sub_1A824431C(v4, qword_1EB2E47B0);

    v5 = sub_1A84E5C7C();
    v6 = sub_1A84E617C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v48[0] = v8;
      *v7 = 136380675;
      *(v7 + 4) = sub_1A82446BC(a1, a2, v48);
      _os_log_impl(&dword_1A823F000, v5, v6, "Received flushed cache for KT Peer URI %{private}s", v7, 0xCu);
      sub_1A8244788(v8);
      MEMORY[0x1AC56D3F0](v8, -1, -1);
      MEMORY[0x1AC56D3F0](v7, -1, -1);
    }

    v9 = sub_1A84E5D8C();
    v10 = [v9 _stripFZIDPrefix];

    if (!v10)
    {
      break;
    }

    v11 = sub_1A84E5DBC();
    v13 = v12;

    sub_1A83EA2FC(&qword_1EB2E7FA0, &unk_1A8506CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A85013E0;
    v48[0] = sub_1A84E5DBC();
    v48[1] = v15;
    v16 = MEMORY[0x1E69E6158];
    sub_1A84E641C();
    *(inited + 96) = v16;
    v47 = v13;
    *(inited + 72) = v11;
    *(inited + 80) = v13;

    sub_1A83EC354(inited);
    swift_setDeallocating();
    sub_1A824B2D4(inited + 32, &qword_1EB2E8790, &qword_1A85008F0);
    v17 = [objc_opt_self() sharedRegistry];
    v18 = [v17 cachedChats];

    sub_1A8244B68(0, &unk_1EB2E8798, off_1E780D858);
    v19 = sub_1A84E5FFC();

    v42 = v19;
    if (v19 >> 62)
    {
      v20 = sub_1A84E654C();
      if (!v20)
      {
LABEL_40:

        return;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_40;
      }
    }

    if (v20 < 1)
    {
      __break(1u);
      return;
    }

    v21 = 0;
    v44 = v19 & 0xC000000000000001;
    v41 = v19 + 32;
    v40 = @"__kIMChatKeyTransparencyShouldRefreshNotification";
    v43 = v20;
    while (1)
    {
      v46 = v21;
      v22 = v44 ? MEMORY[0x1AC56AF80](v21, v42) : *(v41 + 8 * v21);
      a2 = v22;
      v23 = [v22 participants];
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      v24 = sub_1A84E5FFC();

      v45 = a2;
      a1 = v24 >> 62 ? sub_1A84E654C() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (a1)
      {
        break;
      }

LABEL_9:

      swift_bridgeObjectRelease_n();
LABEL_10:
      v21 = v46 + 1;
      if (v46 + 1 == v43)
      {
        goto LABEL_40;
      }
    }

    v25 = 0;
    while ((v24 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1AC56AF80](v25, v24);
      a2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      v27 = v26;
      v28 = [v27 ID];
      sub_1A84E5DBC();

      v29 = sub_1A84E5D8C();
      v30 = [v29 _stripFZIDPrefix];

      if (v30)
      {
        v31 = sub_1A84E5DBC();
        v33 = v32;

        if (v31 == v11 && v33 == v47)
        {

LABEL_34:

          v36 = [objc_opt_self() defaultCenter];
          v37 = v40;
          v38 = v45;
          v39 = sub_1A84E5D2C();
          [v36 __mainThreadPostNotificationName_object_userInfo_];

          goto LABEL_10;
        }

        v35 = sub_1A84E67AC();

        if (v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      ++v25;
      if (a2 == a1)
      {
        goto LABEL_9;
      }
    }

    if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v26 = *(v24 + 8 * v25 + 32);
    a2 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      goto LABEL_23;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }
}

void sub_1A84A3DAC(uint64_t a1)
{
  if (qword_1EB2E4780 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1EB2E47B0);

  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E617C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1A823F000, v3, v4, "Notifying clients of %ld handles with updated KT status'.", v5, 0xCu);
    MEMORY[0x1AC56D3F0](v5, -1, -1);

    if (!*(a1 + 16))
    {
      return;
    }
  }

  else
  {

    if (!*(a1 + 16))
    {
      return;
    }
  }

  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = MEMORY[0x1AC56AB00](a1, MEMORY[0x1E69E6158]);
    v12 = sub_1A82446BC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1A823F000, v6, v7, "Handles with updated kt status: %s.", v8, 0xCu);
    sub_1A8244788(v9);
    MEMORY[0x1AC56D3F0](v9, -1, -1);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  sub_1A83EA2FC(&qword_1EB2E8758, &qword_1A8509738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = sub_1A84E5DBC();
  *(inited + 40) = v14;
  *(inited + 48) = a1;

  v15 = sub_1A83EC698(inited);
  swift_setDeallocating();
  sub_1A824B2D4(inited + 32, &unk_1EB2E8760, &qword_1A8509740);
  v16 = [objc_opt_self() defaultCenter];
  v17 = @"__kIMChatKeyTransparencyStatusChangedNotification";
  sub_1A84A5B3C(v15);

  v18 = sub_1A84E5D2C();

  [v16 __mainThreadPostNotificationName_object_userInfo_];
}

uint64_t sub_1A84A40EC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (a1[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  result = v4(v6 | *a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

void __swiftcall IMUltraConstrainedNetworkMonitor.init()(IMUltraConstrainedNetworkMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A84A4184()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E87C0);
  sub_1A824431C(v0, qword_1EB2E87C0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

void sub_1A84A41F0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A84E535C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained);
  if (v8 != v2)
  {
    if (qword_1EB2E59C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A84E5C9C();
    sub_1A824431C(v9, qword_1EB2E87C0);
    v10 = sub_1A84E5C7C();
    v11 = sub_1A84E617C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_1A823F000, v10, v11, "updated with isUltraConstrained: %{BOOL}d", v12, 8u);
      MEMORY[0x1AC56D3F0](v12, -1, -1);
    }

    v13 = [objc_opt_self() defaultCenter];
    v14 = *MEMORY[0x1E69A7DC0];
    memset(v17, 0, sizeof(v17));
    v15 = v14;
    sub_1A84E534C();
    v16 = sub_1A84E532C();
    (*(v4 + 8))(v7, v3);
    [v13 __mainThreadPostNotification_];
  }
}

id IMUltraConstrainedNetworkMonitor.init()()
{
  *(v0 + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained) = 0;
  v2.super_class = IMUltraConstrainedNetworkMonitor;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for IMUltraConstrainedNetworkMonitor()
{
  result = qword_1EB2E8840;
  if (!qword_1EB2E8840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8840);
  }

  return result;
}

id sub_1A84A456C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___IMSPICollaborationMessageListener_connection] = 0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000032, 0x80000001A8533830);
  MEMORY[0x1AC56A990](a1, a2);

  v5 = &v2[OBJC_IVAR___IMSPICollaborationMessageListener_listenerID];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v7.receiver = v2;
  v7.super_class = IMSPICollaborationMessageListener;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1A84A4674()
{
  [v0 stopListening];
  v1 = objc_opt_self();
  v2 = [v1 sharedController];
  v3 = [v2 listener];

  [v3 addHandler_];
  v4 = [v1 sharedController];
  v5 = *&v0[OBJC_IVAR___IMSPICollaborationMessageListener_listenerID];
  v6 = *&v0[OBJC_IVAR___IMSPICollaborationMessageListener_listenerID + 8];
  v7 = sub_1A84E5D8C();
  v8 = [v4 multiplexedConnectionWithLabel:v7 capabilities:0x80000000 context:0];

  v9 = *&v0[OBJC_IVAR___IMSPICollaborationMessageListener_connection];
  *&v0[OBJC_IVAR___IMSPICollaborationMessageListener_connection] = v8;

  return swift_unknownObjectRelease();
}

id IMSPICollaborationMessageListener.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMSPICollaborationMessageListener()
{
  result = qword_1EB2E8870;
  if (!qword_1EB2E8870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8870);
  }

  return result;
}

uint64_t sub_1A84A4AE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1A824B390(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1A84E67AC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84A4C84(uint64_t result, uint64_t a2)
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
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A824B390(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.ExportStatistics.__allocating_init()()
{
  v0 = swift_allocObject();
  ImportExport.ExportStatistics.init()();
  return v0;
}

void ImportExport.ExportStatistics.format(report:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 48);
  v58[0] = *(v2 + 32);
  v58[1] = v4;
  v59 = *(v2 + 64);
  sub_1A84A8550(0xD000000000000017, 0x80000001A8533870, v58, a1);
  swift_beginAccess();
  v5 = *(v2 + 88);
  v56[0] = *(v2 + 72);
  v56[1] = v5;
  v57 = *(v2 + 104);
  sub_1A84A8550(0xD000000000000016, 0x80000001A8533890, v56, a1);
  swift_beginAccess();
  v6 = *(v2 + 128);
  v54[0] = *(v2 + 112);
  v54[1] = v6;
  v55 = *(v2 + 144);
  sub_1A84A8550(0x646574726F707845, 0xEF73746E756F4320, v54, a1);
  v7 = *(v2 + 72);
  v8 = *(v2 + 112);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v2 + 120);
  v12 = *(v2 + 80);
  v9 = __OFSUB__(v12, v11);
  v13 = v12 - v11;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = *(v2 + 88);
  v15 = *(v2 + 128);
  v9 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(v2 + 96);
  v18 = *(v2 + 136);
  v9 = __OFSUB__(v17, v18);
  v19 = v17 - v18;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(v2 + 104);
  v21 = *(v2 + 144);
  v9 = __OFSUB__(v20, v21);
  v22 = v20 - v21;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v50 = v10;
  *(&v50 + 1) = v13;
  v51 = v16;
  v52 = v19;
  v53 = v22;
  sub_1A84A8550(0xD000000000000011, 0x80000001A85338B0, &v50, a1);
  v23 = *(v2 + 32);
  v24 = *(v2 + 72);
  v9 = __OFSUB__(v23, v24);
  v25 = v23 - v24;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v2 + 80);
  v27 = *(v2 + 40);
  v9 = __OFSUB__(v27, v26);
  v28 = v27 - v26;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = *(v2 + 48);
  v30 = *(v2 + 88);
  v9 = __OFSUB__(v29, v30);
  v31 = v29 - v30;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = *(v2 + 56);
  v33 = *(v2 + 96);
  v9 = __OFSUB__(v32, v33);
  v34 = v32 - v33;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = *(v2 + 64);
  v36 = *(v2 + 104);
  v9 = __OFSUB__(v35, v36);
  v37 = v35 - v36;
  if (!v9)
  {
    *&v46 = v25;
    *(&v46 + 1) = v28;
    v47 = v31;
    v48 = v34;
    v49 = v37;
    sub_1A84A8550(0xD000000000000010, 0x80000001A8532F80, &v46, a1);
    swift_beginAccess();
    v38 = *(v2 + 152);

    v40 = sub_1A84A5120(v39);

    v41._countAndFlagsBits = 0xD00000000000001FLL;
    v41._object = 0x80000001A85338D0;
    ImportExport.Report.add(reportNamed:for:)(v41, v40);

    swift_beginAccess();
    v42 = *(v2 + 176);
    v45[0] = *(v2 + 160);
    v45[1] = v42;
    v45[2] = *(v2 + 192);
    sub_1A84A8788(v45, v44);
    sub_1A84A8660(0xD000000000000014, 0x80000001A852F1F0, v45, a1);
    sub_1A84A87E4(v45);
    swift_beginAccess();
    v43 = *(v2 + 24);

    ImportExport.Timer.format(report:)(a1);

    return;
  }

LABEL_21:
  __break(1u);
}

unint64_t sub_1A84A5120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_1A8243DDC(&v25, v27);
        sub_1A8243DDC(v27, v28);
        sub_1A8243DDC(v28, &v26);
        result = sub_1A824B390(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1A8244788(v12);
          result = sub_1A8243DDC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1A8243DDC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A84A5368(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A8244F40(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1A8243DDC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1A8243DDC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1A8243DDC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1A84E63FC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1A8243DDC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A84A5630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1A824B334(*(a1 + 48) + 40 * v13, &v36);
    sub_1A8244F40(*(a1 + 56) + 32 * v13, v38 + 8);
    v34[0] = v38[0];
    v34[1] = v38[1];
    v35 = v39;
    v33[2] = v36;
    v33[3] = v37;
    v22 = v36;
    v24 = v37;
    v26 = *&v38[0];
    sub_1A8243DDC((v34 + 8), v28);
    v29 = v22;
    v30 = v24;
    v31 = v26;
    sub_1A8243DDC(v28, v32);
    v23 = v29;
    v25 = v30;
    v27 = v31;
    sub_1A8243DDC(v32, v33);
    v14 = *(v2 + 40);
    result = sub_1A84E63FC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v25;
    *(v11 + 32) = v27;
    result = sub_1A8243DDC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1A84A58E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_1A84AA230();

        v20 = v19;
        swift_dynamicCast();
        sub_1A8243DDC(&v26, v28);
        sub_1A8243DDC(v28, v29);
        sub_1A8243DDC(v29, &v27);
        result = sub_1A824B390(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1A8244788(v12);
          result = sub_1A8243DDC(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_1A8243DDC(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A84A5B64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v4 = sub_1A84E657C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v11 = 0;
  while (v7)
  {
LABEL_15:
    v15 = __clz(__rbit64(v7)) | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    *&v37[0] = *v16;
    *(&v37[0] + 1) = v17;

    swift_dynamicCast();
    sub_1A83EA2FC(a2, a3);
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1A8243DDC(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1A8243DDC(v36, v37);
    v19 = *(v4 + 40);
    result = sub_1A84E63FC();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v9 + 8 * v22);
        if (v26 != -1)
        {
          v12 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v7 &= v7 - 1;
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v29;
    *(v13 + 16) = v30;
    *(v13 + 32) = v31;
    result = sub_1A8243DDC(v37, (*(v4 + 56) + 32 * v12));
    ++*(v4 + 16);
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ImportExport.ExportStatistics.reset()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();

  sub_1A843E9F0(v4, v5 + v8);
  swift_endAccess();
  v7(v4, 1, 1, v6);
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v4, v5 + v9);
  swift_endAccess();

  if (qword_1EB2E5980 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB2E7F20;
  v25 = xmmword_1EB2E7F00;
  v24 = *&qword_1EB2E7F10;
  swift_beginAccess();
  *(v0 + 88) = v24;
  *(v0 + 72) = v25;
  *(v0 + 104) = v10;
  v11 = xmmword_1EB2E7F00;
  v25 = *(&xmmword_1EB2E7F00 + 8);
  v24 = unk_1EB2E7F18;
  swift_beginAccess();
  *(v0 + 136) = v24;
  *(v0 + 120) = v25;
  v12 = xmmword_1EB2E7F00;
  v13 = qword_1EB2E7F10;
  v14 = unk_1EB2E7F18;
  v15 = qword_1EB2E7F20;
  *(v0 + 72) = xmmword_1EB2E7F00;
  *(v0 + 88) = v13;
  *(v0 + 96) = v14;
  *(v0 + 104) = v15;
  *(v0 + 112) = v11;
  swift_beginAccess();
  *(v0 + 32) = v12;
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  *(v0 + 64) = v15;
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = xmmword_1EB2E6D30;
  v17 = qword_1EB2E6D40;
  v18 = unk_1EB2E6D48;
  v19 = qword_1EB2E6D50;
  v20 = qword_1EB2E6D58;
  swift_beginAccess();
  v21 = *(v0 + 176);
  *(v0 + 160) = v16;
  *(v0 + 176) = v17;
  *(v0 + 184) = v18;
  *(v0 + 192) = v19;
  *(v0 + 200) = v20;

  v22 = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v23 = *(v0 + 152);
  *(v0 + 152) = v22;
}

__n128 ImportExport.ExportStatistics.predictedRecordCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 ImportExport.ExportStatistics.examinedRecordCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  result = *(v1 + 72);
  v5 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 ImportExport.ExportStatistics.exportedCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  result = *(v1 + 112);
  v5 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t ImportExport.ExportStatistics.unexportedMessageTypeCounts.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

uint64_t ImportExport.ExportStatistics.attachmentStatistics.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = *(v1 + 200);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 184);
  *(a1 + 40) = v4;
}

void *ImportExport.ExportStatistics.unexportedCounts.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  v10[0] = *(v1 + 72);
  v10[1] = v4;
  v11 = v3;
  swift_beginAccess();
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v8[1] = v6;
  v9 = v5;
  return static ImportExport.RecordCounts.- infix(_:_:)(v10, v8, a1);
}

void *ImportExport.ExportStatistics.remainingCounts.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v4;
  v11 = v3;
  swift_beginAccess();
  v5 = *(v1 + 104);
  v6 = *(v1 + 88);
  v8[0] = *(v1 + 72);
  v8[1] = v6;
  v9 = v5;
  return static ImportExport.RecordCounts.- infix(_:_:)(v10, v8, a1);
}

uint64_t ImportExport.ExportStatistics.init()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = sub_1A84E56DC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v9(v5, 1, 1, v8);
  v10 = type metadata accessor for ImportExport.Timer();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v9((v13 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v8);
  v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v9((v13 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v8);
  swift_beginAccess();
  sub_1A843E9F0(v7, v13 + v14);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v5, v13 + v15);
  swift_endAccess();
  *(v0 + 24) = v13;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = v16;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 184) = 0;
  *(v0 + 16) = 0x3FF3333333333333;
  return v0;
}

uint64_t ImportExport.ExportStatistics.__allocating_init(timer:examinedRecordCounts:exportedCounts:unexportedCounts:unexportedMessageTypeCounts:attachmentStatistics:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v41 = a5;
  v37 = a1;
  v9 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = swift_allocObject();
  v17 = *(a2 + 4);
  v36 = *a3;
  v18 = a6[1];
  v40 = *a6;
  v39 = v18;
  v38 = *(a6 + 4);
  v19 = *(a6 + 5);
  v20 = sub_1A84E56DC();
  v21 = *(*(v20 - 8) + 56);
  v22 = a2[1];
  v33 = *a2;
  v32 = v22;
  v35 = *(a3 + 1);
  v34 = *(a3 + 3);
  v21(v15, 1, 1, v20);
  v21(v13, 1, 1, v20);
  v23 = type metadata accessor for ImportExport.Timer();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v21((v26 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v20);
  v28 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v21((v26 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v20);
  swift_beginAccess();
  sub_1A843E9F0(v15, v26 + v27);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v13, v26 + v28);
  swift_endAccess();
  *(v16 + 24) = v26;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0;
  *(v16 + 112) = 0u;
  v29 = MEMORY[0x1E69E7CC0];
  *(v16 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  *(v16 + 160) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = v29;
  *(v16 + 192) = 0;
  *(v16 + 200) = 0;
  *(v16 + 184) = 0;
  *(v16 + 16) = 0x3FF3333333333333;
  swift_beginAccess();
  *(v16 + 24) = v37;

  swift_beginAccess();
  *(v16 + 88) = v32;
  *(v16 + 72) = v33;
  *(v16 + 104) = v17;
  swift_beginAccess();
  *(v16 + 112) = v36;
  *(v16 + 136) = v34;
  *(v16 + 120) = v35;
  swift_beginAccess();
  *(v16 + 152) = v41;

  swift_beginAccess();
  v30 = *(v16 + 176);
  *(v16 + 160) = v40;
  *(v16 + 176) = v39;
  *(v16 + 192) = v38;
  *(v16 + 200) = v19;

  return v16;
}

uint64_t ImportExport.ExportStatistics.init(timer:examinedRecordCounts:exportedCounts:unexportedCounts:unexportedMessageTypeCounts:attachmentStatistics:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v43 = a5;
  v39 = a1;
  v10 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *(a2 + 4);
  v38 = *a3;
  v18 = a6[1];
  v42 = *a6;
  v41 = v18;
  v40 = *(a6 + 4);
  v19 = *(a6 + 5);
  v20 = sub_1A84E56DC();
  v21 = *(*(v20 - 8) + 56);
  v22 = a2[1];
  v35 = *a2;
  v34 = v22;
  v37 = *(a3 + 1);
  v36 = *(a3 + 3);
  v21(v16, 1, 1, v20);
  v21(v14, 1, 1, v20);
  v23 = type metadata accessor for ImportExport.Timer();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v21((v26 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v20);
  v28 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v21((v26 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v20);
  swift_beginAccess();
  sub_1A843E9F0(v16, v26 + v27);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v14, v26 + v28);
  swift_endAccess();
  *(v6 + 24) = v26;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0;
  *(v6 + 112) = 0u;
  v29 = MEMORY[0x1E69E7CC0];
  *(v6 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = v29;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 184) = 0;
  *(v6 + 16) = 0x3FF3333333333333;
  swift_beginAccess();
  v30 = *(v6 + 24);
  *(v6 + 24) = v39;

  swift_beginAccess();
  *(v6 + 88) = v34;
  *(v6 + 72) = v35;
  *(v6 + 104) = v17;
  swift_beginAccess();
  *(v6 + 112) = v38;
  *(v6 + 136) = v36;
  *(v6 + 120) = v37;
  swift_beginAccess();
  v31 = *(v6 + 152);
  *(v6 + 152) = v43;

  swift_beginAccess();
  v32 = *(v6 + 176);
  *(v6 + 160) = v42;
  *(v6 + 176) = v41;
  *(v6 + 192) = v40;
  *(v6 + 200) = v19;

  return v6;
}

uint64_t sub_1A84A6D78()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x72656D6974;
    if (v1 != 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E6F6973726576;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000014;
    }

    if (v1 != 3)
    {
      v3 = 0x646574726F707865;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A84A6E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84A8CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84A6E94(uint64_t a1)
{
  v2 = sub_1A84A8838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84A6ED0(uint64_t a1)
{
  v2 = sub_1A84A8838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ImportExport.ExportStatistics.deinit()
{
  v1 = v0[3];

  v2 = v0[19];

  v3 = v0[22];

  return v0;
}

uint64_t ImportExport.ExportStatistics.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[19];

  v3 = v0[22];

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ExportStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8888, &qword_1A85097C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8 - 16];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84A8838();
  sub_1A84E68AC();
  v11 = *(v3 + 16);
  LOBYTE(v21) = 0;
  sub_1A84E66EC();
  if (!v2)
  {
    swift_beginAccess();
    *&v21 = *(v3 + 24);
    v28 = 1;
    type metadata accessor for ImportExport.Timer();
    sub_1A84AA068(&qword_1EB2E8288, 255, type metadata accessor for ImportExport.Timer);
    sub_1A84E672C();
    swift_beginAccess();
    v12 = *(v3 + 64);
    v13 = *(v3 + 48);
    v21 = *(v3 + 32);
    *v22 = v13;
    *&v22[16] = v12;
    v27 = 2;
    sub_1A847E61C();
    sub_1A84E672C();
    swift_beginAccess();
    v14 = *(v3 + 104);
    v15 = *(v3 + 88);
    v21 = *(v3 + 72);
    *v22 = v15;
    *&v22[16] = v14;
    v26 = 3;
    sub_1A84E672C();
    swift_beginAccess();
    v16 = *(v3 + 144);
    v17 = *(v3 + 128);
    v21 = *(v3 + 112);
    *v22 = v17;
    *&v22[16] = v16;
    v25 = 4;
    sub_1A84E672C();
    swift_beginAccess();
    *&v21 = *(v3 + 152);
    v24 = 5;
    sub_1A83EA2FC(&qword_1EB2E8898, &qword_1A85097D0);
    sub_1A84A88E0(&qword_1EB2E88A0);
    sub_1A84E672C();
    swift_beginAccess();
    v18 = *(v3 + 176);
    v19 = *(v3 + 200);
    v21 = *(v3 + 160);
    *v22 = v18;
    *&v22[8] = *(v3 + 184);
    v23 = v19;
    v29 = 6;
    sub_1A84A888C();

    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.ExportStatistics.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.ExportStatistics.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ExportStatistics.init(from:)(uint64_t *a1)
{
  v55 = a1;
  *&v50 = *v1;
  v51 = sub_1A83EA2FC(&qword_1EB2E88B0, &qword_1A85097D8);
  v49 = *(v51 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  *&v54 = v47 - v3;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v47 - v9;
  v11 = sub_1A84E56DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v8, 1, 1, v11);
  v13 = type metadata accessor for ImportExport.Timer();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  *&v48 = v13;
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v12((v16 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v11);
  v18 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v12((v16 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v11);
  swift_beginAccess();
  sub_1A843E9F0(v10, v16 + v17);
  swift_endAccess();
  swift_beginAccess();
  v19 = v55;
  sub_1A843E9F0(v8, v16 + v18);
  swift_endAccess();
  *(v1 + 24) = v16;
  v20 = (v1 + 24);
  *(v1 + 32) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  v22 = (v1 + 152);
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = v21;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 184) = 0;
  v52 = v1;
  v23 = v19[4];
  sub_1A82471E0(v19, v19[3]);
  sub_1A84A8838();
  v24 = v53;
  sub_1A84E689C();
  if (v24)
  {
    v30 = v52;
    v26 = *(v52 + 24);

    v27 = *(v30 + 152);

    v28 = *(v30 + 176);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v53 = v1 + 32;
    v47[1] = v1 + 160;
    v25 = v49;
    LOBYTE(v57) = 0;
    sub_1A84E662C();
    v30 = v52;
    *(v52 + 16) = v31;
    v65 = 1;
    sub_1A84AA068(&qword_1EB2E82A0, 255, type metadata accessor for ImportExport.Timer);
    sub_1A84E666C();
    v32 = v57;
    swift_beginAccess();
    v33 = *v20;
    *v20 = v32;

    v64 = 2;
    sub_1A847EC5C();
    sub_1A84E666C();
    v34 = v59;
    v50 = v57;
    v48 = v58;
    swift_beginAccess();
    v35 = v48;
    *(v30 + 32) = v50;
    *(v30 + 48) = v35;
    *(v30 + 64) = v34;
    v63 = 3;
    sub_1A84E666C();
    v36 = v59;
    v53 = v57;
    v50 = v58;
    swift_beginAccess();
    *(v30 + 88) = v50;
    *(v30 + 72) = v53;
    *(v30 + 104) = v36;
    v62 = 4;
    sub_1A84E666C();
    v37 = v59;
    v53 = v57;
    v50 = v58;
    swift_beginAccess();
    v38 = v50;
    *(v30 + 112) = v53;
    *(v30 + 128) = v38;
    *(v30 + 144) = v37;
    sub_1A83EA2FC(&qword_1EB2E8898, &qword_1A85097D0);
    v61 = 5;
    sub_1A84A88E0(&qword_1EB2E88B8);
    sub_1A84E666C();
    v39 = v57;
    swift_beginAccess();
    v40 = *v22;
    *v22 = v39;

    v56 = 6;
    sub_1A84A8950();
    v41 = v51;
    v42 = v54;
    sub_1A84E666C();
    (*(v25 + 8))(v42, v41);
    v54 = v57;
    v53 = v58;
    v43 = v59;
    v44 = v60;
    swift_beginAccess();
    v45 = *(v30 + 176);
    v46 = v53;
    *(v30 + 160) = v54;
    *(v30 + 176) = v46;
    *(v30 + 192) = v43;
    *(v30 + 200) = v44;
  }

  sub_1A8244788(v55);
  return v30;
}

uint64_t sub_1A84A7C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ExportStatistics.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.description.getter()
{
  sub_1A84E646C();
  v1 = *v0;
  v2 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0x6F6973726576203ALL, 0xEB00000000203A6ELL);
  v3 = v0[2];
  sub_1A84E60EC();
  MEMORY[0x1AC56A990](2604, 0xE200000000000000);
  v4 = sub_1A83EE280();
  MEMORY[0x1AC56A990](v4);

  return 0;
}

uint64_t sub_1A84A7DFC()
{
  type metadata accessor for ImportExport.ExportStatistics();
  v0 = swift_allocObject();
  result = ImportExport.ExportStatistics.init()();
  qword_1EB2E8880 = v0;
  return result;
}

uint64_t static ImportExport.ExportStatistics.zero.getter()
{
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A84A7EA0@<X0>(void *a1@<X8>)
{
  if (qword_1EB2E59D0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB2E8880;
}

uint64_t sub_1A84A7F10@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0C10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84A7F40(uint64_t *a1, void **a2)
{
  v3 = _s6IMCore12ImportExportO0C10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1A84A7F88@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0C10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84A7FB8(uint64_t *a1, void **a2)
{
  v3 = _s6IMCore12ImportExportO0C10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t ImportExport.ExportStatistics.totalConversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.totalMessageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.totalAttachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.totalParticipantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.conversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 72);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.messageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.attachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.participantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8258()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1A84A8290()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A82D8()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8320()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8368()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A83B0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_1A84A83F0()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 72);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8438()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8480()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A84C8()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8510()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 104);
}

__n128 sub_1A84A8550(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = a3[1];
  v19 = *a3;
  v20 = v5;
  v21 = *(a3 + 4);
  v15 = a1;
  v16.n128_u64[0] = a2;
  v16.n128_u64[1] = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 0;

  ImportExport.RecordCounts.format(report:)(&v15);
  v6 = v15;
  v14 = v16;
  v7 = v17;
  v8 = v18;
  v9 = *(a4 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A83EECF8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A83EECF8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  *(v12 + 4) = v6;
  result = v14;
  *(v12 + 40) = v14;
  *(v12 + 7) = v7;
  v12[64] = v8;
  *(a4 + 24) = v9;
  return result;
}

__n128 sub_1A84A8660(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = a3[1];
  v20 = *a3;
  v21 = v5;
  v22 = a3[2];
  v16 = a1;
  v17.n128_u64[0] = a2;
  v17.n128_u64[1] = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v19 = 0;
  sub_1A84A8788(a3, v15);

  ImportExport.ExportedAttachmentStatistics.format(report:)(&v16);

  v6 = v16;
  v14 = v17;
  v7 = v18;
  v8 = v19;
  v9 = *(a4 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A83EECF8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A83EECF8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  *(v12 + 4) = v6;
  result = v14;
  *(v12 + 40) = v14;
  *(v12 + 7) = v7;
  v12[64] = v8;
  *(a4 + 24) = v9;
  return result;
}

unint64_t sub_1A84A8838()
{
  result = qword_1EB2E8890;
  if (!qword_1EB2E8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8890);
  }

  return result;
}

unint64_t sub_1A84A888C()
{
  result = qword_1EB2E88A8;
  if (!qword_1EB2E88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88A8);
  }

  return result;
}

uint64_t sub_1A84A88E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E8898, &qword_1A85097D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A84A8950()
{
  result = qword_1EB2E88C0;
  if (!qword_1EB2E88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88C0);
  }

  return result;
}

BOOL _s6IMCore12ImportExportO0C10StatisticsC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ImportExport.Timer();
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  v5 = *(a2 + 24);

  v6 = static ImportExport.Timer.== infix(_:_:)(v4, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 104);
  v19 = *(a1 + 88);
  v20 = *(a1 + 72);
  swift_beginAccess();
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v20, *(a2 + 72)), vceqq_s64(v19, *(a2 + 88))))) & 1) != 0 && v7 == *(a2 + 104))
  {
    swift_beginAccess();
    v9 = *(a1 + 144);
    v17 = *(a1 + 128);
    v18 = *(a1 + 112);
    swift_beginAccess();
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v18, *(a2 + 112)), vceqq_s64(v17, *(a2 + 128))))) & 1) != 0 && v9 == *(a2 + 144))
    {
      if (__OFSUB__(v20.i64[0], v18.i64[0]))
      {
        __break(1u);
      }

      else if (!__OFSUB__(v20.i64[1], v18.i64[1]))
      {
        if (!__OFSUB__(v19.i64[0], v17.i64[0]))
        {
          if (!__OFSUB__(v19.i64[1], v17.i64[1]))
          {
            if (!__OFSUB__(v7, v9))
            {
              swift_beginAccess();
              v10 = *(a1 + 152);
              swift_beginAccess();
              v11 = *(a2 + 152);

              v12 = sub_1A84A4C84(v10, v11);

              if (v12)
              {
                swift_beginAccess();
                v13 = *(a1 + 176);
                v14 = *(a1 + 200);
                v25 = *(a1 + 160);
                v26 = v13;
                v27 = *(a1 + 184);
                v28 = v14;
                swift_beginAccess();
                v15 = *(a2 + 176);
                v16 = *(a2 + 200);
                v21 = *(a2 + 160);
                v22 = v15;
                v23 = *(a2 + 184);
                v24 = v16;

                LOBYTE(v13) = _s6IMCore12ImportExportO28ExportedAttachmentStatisticsV2eeoiySbAE_AEtFZ_0(&v25, &v21);

                if (v13)
                {
                  return *(a1 + 16) == *(a2 + 16);
                }
              }

              return 0;
            }

LABEL_20:
            __break(1u);
            return result;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1A84A8CA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8533920 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8533940 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574726F707865 && a2 == 0xEE0073746E756F43 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8533970 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8533990 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _s6IMCore12ImportExportO0C10StatisticsC1poiyA2E_AEtFZ_0(void *a1, void *a2)
{
  v140 = *a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v142 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v129 - v8;
  swift_beginAccess();
  v143 = a1;
  v9 = a1[19];
  swift_beginAccess();
  v144 = a2;
  v10 = a2[19];
  v11 = (v10 + 64);
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v147 = v10;

  v16 = 0;
  v145 = v15;
  v146 = (v10 + 64);
  if (v14)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = v11[v17];
    ++v16;
    if (v14)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = v18 | (v17 << 6);
        v20 = (*(v147 + 48) + 16 * v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(*(v147 + 56) + 8 * v19);
        v24 = v9[2];

        if (!v24 || (v25 = sub_1A824B390(v21, v22), (v26 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = v9;
          v43 = v21;
          v45 = sub_1A824B390(v21, v22);
          v46 = v9[2];
          v47 = (v44 & 1) == 0;
          v48 = v46 + v47;
          if (__OFADD__(v46, v47))
          {
            goto LABEL_54;
          }

          v49 = v44;
          if (v9[3] >= v48)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v44 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              sub_1A848E814();
              if ((v49 & 1) == 0)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            sub_1A848A8C4(v48, isUniquelyReferenced_nonNull_native);
            v50 = sub_1A824B390(v43, v22);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_73;
            }

            v45 = v50;
            if ((v49 & 1) == 0)
            {
LABEL_25:
              v9 = v149;
              v149[(v45 >> 6) + 8] |= 1 << v45;
              v52 = (v9[6] + 16 * v45);
              *v52 = v43;
              v52[1] = v22;
              *(v9[7] + 8 * v45) = v23;
              v53 = v9[2];
              v37 = __OFADD__(v53, 1);
              v54 = v53 + 1;
              if (v37)
              {
                goto LABEL_55;
              }

              v9[2] = v54;
              goto LABEL_6;
            }
          }

          v9 = v149;
          *(v149[7] + 8 * v45) = v23;
LABEL_6:
          v16 = v17;
          v15 = v145;
          v11 = v146;
          if (!v14)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v27 = *(v9[7] + 8 * v25);
        v28 = v27 + v23;
        if (__OFADD__(v27, v23))
        {
          goto LABEL_56;
        }

        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = v21;
        v31 = v29;
        v149 = v9;
        v32 = v30;
        v33 = sub_1A824B390(v30, v22);
        v35 = v9[2];
        v36 = (v34 & 1) == 0;
        v37 = __OFADD__(v35, v36);
        v38 = v35 + v36;
        if (v37)
        {
          goto LABEL_57;
        }

        v39 = v34;
        if (v9[3] < v38)
        {
          break;
        }

        if (v31)
        {
          v40 = v32;
          goto LABEL_29;
        }

        v56 = v33;
        sub_1A848E814();
        v33 = v56;
        v40 = v32;
        v11 = v146;
        if (v39)
        {
LABEL_30:
          v55 = v33;

          v9 = v149;
          *(v149[7] + 8 * v55) = v28;
          goto LABEL_36;
        }

LABEL_34:
        v9 = v149;
        v149[(v33 >> 6) + 8] |= 1 << v33;
        v57 = (v9[6] + 16 * v33);
        *v57 = v40;
        v57[1] = v22;
        *(v9[7] + 8 * v33) = v28;
        v58 = v9[2];
        v37 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v37)
        {
          goto LABEL_72;
        }

        v9[2] = v59;
LABEL_36:
        v16 = v17;
        v15 = v145;
        if (!v14)
        {
          goto LABEL_8;
        }

LABEL_7:
        v17 = v16;
      }

      sub_1A848A8C4(v38, v31);
      v40 = v32;
      v33 = sub_1A824B390(v32, v22);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_73;
      }

LABEL_29:
      v11 = v146;
      if (v39)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  v146 = v9;

  v60 = v143;
  swift_beginAccess();
  v61 = v60[3];
  swift_beginAccess();
  v63 = v60[9];
  v62 = v60[10];
  v65 = v60[11];
  v64 = v60[12];
  v66 = v60[13];
  v67 = v144;
  swift_beginAccess();
  v68 = v67[9];
  v69 = v63 + v68;
  if (__OFADD__(v63, v68))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v70 = v67[10];
  v71 = v62 + v70;
  if (__OFADD__(v62, v70))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v72 = v67[11];
  v73 = v65 + v72;
  if (__OFADD__(v65, v72))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v74 = v67[12];
  v75 = v64 + v74;
  if (__OFADD__(v64, v74))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v76 = v67[13];
  v37 = __OFADD__(v66, v76);
  v77 = v66 + v76;
  if (v37)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v138 = v77;
  v139 = v75;
  v145 = v73;
  v147 = v71;
  swift_beginAccess();
  v79 = v60[14];
  v78 = v60[15];
  v81 = v60[16];
  v80 = v60[17];
  v82 = v60[18];
  swift_beginAccess();
  v83 = v67[14];
  v84 = v79 + v83;
  if (__OFADD__(v79, v83))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v85 = v67[15];
  v86 = v78 + v85;
  if (__OFADD__(v78, v85))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v87 = v67[16];
  v88 = v81 + v87;
  if (__OFADD__(v81, v87))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v89 = v67[17];
  v90 = v80 + v89;
  if (__OFADD__(v80, v89))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v91 = v67[18];
  v37 = __OFADD__(v82, v91);
  v92 = v82 + v91;
  if (v37)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v133 = v92;
  v134 = v90;
  v135 = v88;
  v136 = v86;
  v137 = v84;
  swift_beginAccess();
  v94 = v60[20];
  v93 = v60[21];
  v95 = v60[22];
  v96 = v60[23];
  v97 = v60[24];
  swift_beginAccess();
  v98 = v67[20];
  v99 = (v94 + v98);
  if (__OFADD__(v94, v98))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v100 = v67[21];
  v37 = __OFADD__(v93, v100);
  v101 = v93 + v100;
  if (v37)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v132 = v101;
  v143 = v99;
  v102 = v67[22];
  v103 = v67[23];
  v104 = v67[24];
  v148 = v95;

  sub_1A83EE514(v105);
  if (__OFADD__(v96, v103))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (!__OFADD__(v97, v104))
  {
    v144 = v148;
    v131 = v96 + v103;
    v140 = v97 + v104;
    v106 = swift_allocObject();
    v107 = sub_1A84E56DC();
    v108 = *(*(v107 - 8) + 56);
    v109 = v141;
    v108(v141, 1, 1, v107);
    v130 = v69;
    v110 = v142;
    v108(v142, 1, 1, v107);
    v111 = type metadata accessor for ImportExport.Timer();
    v112 = *(v111 + 48);
    v113 = *(v111 + 52);
    v114 = swift_allocObject();
    v115 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v108((v114 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v107);
    v129 = v61;
    v116 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v108((v114 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v107);
    swift_beginAccess();
    sub_1A843E9F0(v109, v114 + v115);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v110, v114 + v116);
    swift_endAccess();
    *(v106 + 24) = v114;
    *(v106 + 32) = 0u;
    *(v106 + 48) = 0u;
    *(v106 + 64) = 0u;
    *(v106 + 80) = 0u;
    *(v106 + 96) = 0u;
    *(v106 + 128) = 0u;
    *(v106 + 144) = 0;
    *(v106 + 112) = 0u;
    v117 = MEMORY[0x1E69E7CC0];
    *(v106 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
    *(v106 + 160) = 0;
    *(v106 + 168) = 0;
    *(v106 + 176) = v117;
    *(v106 + 192) = 0;
    *(v106 + 200) = 0;
    *(v106 + 184) = 0;
    *(v106 + 16) = 0x3FF3333333333333;
    swift_beginAccess();
    *(v106 + 24) = v129;

    swift_beginAccess();
    v118 = v147;
    *(v106 + 72) = v130;
    *(v106 + 80) = v118;
    v119 = v138;
    v120 = v139;
    *(v106 + 88) = v145;
    *(v106 + 96) = v120;
    *(v106 + 104) = v119;
    swift_beginAccess();
    v121 = v136;
    *(v106 + 112) = v137;
    v123 = v134;
    v122 = v135;
    *(v106 + 120) = v121;
    *(v106 + 128) = v122;
    v124 = v133;
    *(v106 + 136) = v123;
    *(v106 + 144) = v124;
    swift_beginAccess();
    *(v106 + 152) = v146;

    swift_beginAccess();
    v125 = *(v106 + 176);
    *(v106 + 160) = v143;
    v126 = v144;
    *(v106 + 168) = v132;
    *(v106 + 176) = v126;
    v127 = v140;
    *(v106 + 184) = v131;
    *(v106 + 192) = v127;
    *(v106 + 200) = 0;

    return v106;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t _s6IMCore12ImportExportO0C10StatisticsC1soiyA2E_AEtFZ_0(void *a1, void *a2)
{
  v2 = a2;
  v117 = *a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v121 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v105 - v8;
  swift_beginAccess();
  v120 = a1;
  v9 = a1[19];
  swift_beginAccess();
  v10 = v2[19];
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v123 = v10;

  v16 = 0;
  v122 = v2;
  while (v14)
  {
    v17 = v14;
LABEL_11:
    v14 = (v17 - 1) & v17;
    if (v9[2])
    {
      v20 = __clz(__rbit64(v17)) | (v16 << 6);
      v21 = (*(v123 + 48) + 16 * v20);
      v22 = *(*(v123 + 56) + 8 * v20);
      v24 = *v21;
      v23 = v21[1];

      v25 = sub_1A824B390(v24, v23);
      if (v26)
      {
        v27 = *(v9[7] + 8 * v25);
        v28 = __OFSUB__(v27, v22);
        v29 = v27 - v22;
        if (v28)
        {
          goto LABEL_56;
        }

        LODWORD(v119) = swift_isUniquelyReferenced_nonNull_native();
        v124 = v9;
        v31 = sub_1A824B390(v24, v23);
        v32 = v9[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_57;
        }

        if (v9[3] >= v34)
        {
          if (v119)
          {
            if ((v30 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v119 = v31;
            v39 = v30;
            sub_1A848E814();
            v31 = v119;
            if ((v39 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

LABEL_22:
          v38 = v31;

          v9 = v124;
          *(v124[7] + 8 * v38) = v29;
          v2 = v122;
        }

        else
        {
          v35 = v30;
          sub_1A848A8C4(v34, v119);
          v36 = sub_1A824B390(v24, v23);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_59;
          }

          v31 = v36;
          if (v35)
          {
            goto LABEL_22;
          }

LABEL_24:
          v9 = v124;
          v124[(v31 >> 6) + 8] |= 1 << v31;
          v40 = (v9[6] + 16 * v31);
          *v40 = v24;
          v40[1] = v23;
          *(v9[7] + 8 * v31) = v29;
          v41 = v9[2];
          v28 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v28)
          {
            goto LABEL_58;
          }

          v9[2] = v42;
          v2 = v122;
        }
      }

      else
      {

        v2 = v122;
      }
    }
  }

  v18 = v120;
  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v19 >= v15)
    {
      break;
    }

    v17 = *(v11 + 8 * v19);
    ++v16;
    if (v17)
    {
      v16 = v19;
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v123 = v18[3];
  swift_beginAccess();
  v44 = v18[9];
  v43 = v18[10];
  v46 = v18[11];
  v45 = v18[12];
  v47 = v18[13];
  swift_beginAccess();
  v48 = v2[9];
  v49 = v44 - v48;
  if (__OFSUB__(v44, v48))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v50 = v2[10];
  v51 = v43 - v50;
  if (__OFSUB__(v43, v50))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v52 = v2[11];
  v53 = v46 - v52;
  if (__OFSUB__(v46, v52))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v54 = v2[12];
  v55 = v45 - v54;
  if (__OFSUB__(v45, v54))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v56 = v2[13];
  v28 = __OFSUB__(v47, v56);
  v57 = v47 - v56;
  if (v28)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v112 = v57;
  v113 = v55;
  v114 = v53;
  v115 = v51;
  v116 = v49;
  swift_beginAccess();
  v59 = v18[14];
  v58 = v18[15];
  v61 = v18[16];
  v60 = v18[17];
  v62 = v18[18];
  swift_beginAccess();
  v63 = v2[14];
  v28 = __OFSUB__(v59, v63);
  v64 = v59 - v63;
  if (v28)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v65 = v2[15];
  v66 = v58 - v65;
  if (__OFSUB__(v58, v65))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v67 = v2[16];
  v68 = v61 - v67;
  if (__OFSUB__(v61, v67))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v69 = v2[17];
  v70 = v60 - v69;
  if (__OFSUB__(v60, v69))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v71 = v2[18];
  v28 = __OFSUB__(v62, v71);
  v72 = v62 - v71;
  if (v28)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v108 = v72;
  v109 = v70;
  v110 = v68;
  v111 = v66;
  swift_beginAccess();
  v74 = v18[20];
  v73 = v18[21];
  v75 = v18[23];
  v119 = v18[22];
  v76 = v18[24];
  swift_beginAccess();
  v77 = v2[20];
  v78 = v74 - v77;
  if (__OFSUB__(v74, v77))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v79 = v2[21];
  v80 = v73 - v79;
  if (__OFSUB__(v73, v79))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v81 = v2[23];
  v82 = (v75 - v81);
  if (__OFSUB__(v75, v81))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v83 = v2[24];
  v28 = __OFSUB__(v76, v83);
  v84 = (v76 - v83);
  if (!v28)
  {
    v107 = v78;
    v117 = v80;
    v120 = v82;
    v122 = v84;
    v85 = swift_allocObject();
    v86 = sub_1A84E56DC();
    v87 = *(*(v86 - 8) + 56);
    v88 = v118;
    v87(v118, 1, 1, v86);
    v87(v121, 1, 1, v86);
    v89 = type metadata accessor for ImportExport.Timer();
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    v92 = swift_allocObject();
    v106 = v64;
    v93 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v87((v92 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v86);
    v94 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v87((v92 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v86);
    swift_beginAccess();

    sub_1A843E9F0(v88, v92 + v93);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v121, v92 + v94);
    swift_endAccess();
    *(v85 + 24) = v92;
    *(v85 + 32) = 0u;
    *(v85 + 48) = 0u;
    *(v85 + 64) = 0u;
    *(v85 + 80) = 0u;
    *(v85 + 96) = 0u;
    *(v85 + 128) = 0u;
    *(v85 + 144) = 0;
    *(v85 + 112) = 0u;
    v95 = MEMORY[0x1E69E7CC0];
    *(v85 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
    *(v85 + 160) = 0;
    *(v85 + 168) = 0;
    *(v85 + 176) = v95;
    *(v85 + 192) = 0;
    *(v85 + 200) = 0;
    *(v85 + 184) = 0;
    *(v85 + 16) = 0x3FF3333333333333;
    swift_beginAccess();
    *(v85 + 24) = v123;

    swift_beginAccess();
    v96 = v115;
    *(v85 + 72) = v116;
    *(v85 + 80) = v96;
    v97 = v113;
    *(v85 + 88) = v114;
    *(v85 + 96) = v97;
    *(v85 + 104) = v112;
    swift_beginAccess();
    *(v85 + 112) = v106;
    v98 = v110;
    *(v85 + 120) = v111;
    *(v85 + 128) = v98;
    v99 = v108;
    *(v85 + 136) = v109;
    *(v85 + 144) = v99;
    swift_beginAccess();
    *(v85 + 152) = v9;

    swift_beginAccess();
    v100 = *(v85 + 176);
    *(v85 + 160) = v107;
    v101 = v119;
    v102 = v120;
    *(v85 + 168) = v117;
    *(v85 + 176) = v101;
    v103 = v122;
    *(v85 + 184) = v102;
    *(v85 + 192) = v103;
    *(v85 + 200) = 0;

    return v85;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t sub_1A84A9F78(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1A84AA068(&qword_1EB2E7DF0, a2, type metadata accessor for ImportExport.ExportStatistics);
  result = sub_1A84AA068(&qword_1EB2E7DE0, v3, type metadata accessor for ImportExport.ExportStatistics);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A84AA068(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1A84AA12C()
{
  result = qword_1EB2E88D0;
  if (!qword_1EB2E88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88D0);
  }

  return result;
}

unint64_t sub_1A84AA184()
{
  result = qword_1EB2E88D8;
  if (!qword_1EB2E88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88D8);
  }

  return result;
}

unint64_t sub_1A84AA1DC()
{
  result = qword_1EB2E88E0;
  if (!qword_1EB2E88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88E0);
  }

  return result;
}

unint64_t sub_1A84AA230()
{
  result = qword_1EB2E4730;
  if (!qword_1EB2E4730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E4730);
  }

  return result;
}

uint64_t sub_1A84AA280()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E88F0);
  sub_1A824431C(v0, qword_1EB2E88F0);
  return sub_1A84E5C8C();
}

uint64_t sub_1A84AA32C()
{
  v1 = v0;
  if ([v0 isGroupChat])
  {
    return 0;
  }

  v2 = [v0 allChatProperties];
  if (!v2 || (v3 = v2, v4 = sub_1A84E5D3C(), v3, v5 = sub_1A8253A88(v4), , !v5))
  {
LABEL_10:
    v13 = [v1 participants];
    sub_1A8253D64();
    v14 = sub_1A84E5FFC();

    if (v14 >> 62)
    {
LABEL_27:
      v15 = sub_1A84E654C();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v15 != i; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1AC56AF80](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v17 = *(v14 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v19 = [v17 isChatBot];

      if (v19)
      {

        return 1;
      }
    }

    return 0;
  }

  v6 = *MEMORY[0x1E69A7870];
  v7 = sub_1A84E5DBC();
  if (!*(v5 + 16))
  {

LABEL_8:

    memset(v21, 0, sizeof(v21));
    sub_1A824B2D4(v21, &qword_1EB2E66B0, &qword_1A8500960);
    v12 = [v1 brandInfo];
    if (v12)
    {

      return 1;
    }

    goto LABEL_10;
  }

  v9 = sub_1A824B390(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1A8244F40(*(v5 + 56) + 32 * v9, v21);

  sub_1A824B2D4(v21, &qword_1EB2E66B0, &qword_1A8500960);
  return 1;
}

void sub_1A84AA5A0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = [v2 brandInfo];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 brandLogoGuid];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() sharedInstance];
      if (!v12)
      {

        __break(1u);
        return;
      }

      v13 = v12;
      v14 = [v12 transferForGUID_];

      if (v14)
      {
        v15 = [v14 localURL];
        if (v15)
        {
          v16 = v15;
          sub_1A84E554C();

          v17 = sub_1A84E558C();
          (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
        }

        else
        {

          v20 = sub_1A84E558C();
          (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        }

        sub_1A83FB148(v7, a1);
        return;
      }
    }
  }

  v18 = sub_1A84E558C();
  v19 = *(*(v18 - 8) + 56);

  v19(a1, 1, 1, v18);
}

uint64_t sub_1A84AA904()
{
  v1 = v0;
  v2 = sub_1A84E558C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = [v1 brandLogoURL];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  sub_1A84E554C();

  (*(v3 + 32))(v9, v7, v2);
  v12 = sub_1A84E55AC();
  (*(v3 + 8))(v9, v2);
  return v12;
}

uint64_t sub_1A84AAB00()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E8940, &qword_1A8509AE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  sub_1A82442B8(v4, qword_1EB2E8908);
  sub_1A824431C(v4, qword_1EB2E8908);
  v5 = *MEMORY[0x1E69A6750];
  v6 = sub_1A83EA2FC(&qword_1EB2E8948, &unk_1A8509AF0);
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_1A84E5AFC();
  return sub_1A84E5AEC();
}

uint64_t sub_1A84AAC70()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - v5;
  v7 = [v0 chatIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 __im_isChatBotPatterned];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [v1 chatStyle];
  result = 0;
  if (v11 == 45 && (v10 & 1) == 0)
  {
    if (sub_1A84AB0A4())
    {
      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v13 = sub_1A84E5C9C();
      sub_1A824431C(v13, qword_1EB2E88F0);
      v14 = v1;
      v15 = sub_1A84E5C7C();
      v16 = sub_1A84E617C();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_26;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v19 = [v14 chatIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1A84E5DBC();
        v23 = v22;
      }

      else
      {
        v21 = 1701736302;
        v23 = 0xE400000000000000;
      }

      v32 = sub_1A82446BC(v21, v23, &v36);

      *(v17 + 4) = v32;
      v33 = "Chatbot %s is missing persistent menu, request it from relay";
    }

    else
    {
      if (qword_1EB2E59E0 != -1)
      {
        swift_once();
      }

      v24 = sub_1A824431C(v2, qword_1EB2E8908);
      (*(v3 + 16))(v6, v24, v2);
      sub_1A84E5ADC();
      (*(v3 + 8))(v6, v2);
      if (v36 != 1)
      {
        return 0;
      }

      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v25 = sub_1A84E5C9C();
      sub_1A824431C(v25, qword_1EB2E88F0);
      v26 = v1;
      v15 = sub_1A84E5C7C();
      v16 = sub_1A84E617C();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_26;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v27 = [v26 chatIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1A84E5DBC();
        v31 = v30;
      }

      else
      {
        v29 = 1701736302;
        v31 = 0xE400000000000000;
      }

      v34 = sub_1A82446BC(v29, v31, &v36);

      *(v17 + 4) = v34;
      v33 = "Chatbot %s needs persistent menu due to defaults, request it from relay";
    }

    _os_log_impl(&dword_1A823F000, v15, v16, v33, v17, 0xCu);
    sub_1A8244788(v18);
    MEMORY[0x1AC56D3F0](v18, -1, -1);
    MEMORY[0x1AC56D3F0](v17, -1, -1);
LABEL_26:

    return 1;
  }

  return result;
}

uint64_t sub_1A84AB0A4()
{
  result = [v0 allChatProperties];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D3C();

    v4 = sub_1A8253A88(v3);

    if (!v4)
    {
      return 0;
    }

    v5 = *MEMORY[0x1E69A7870];
    v6 = sub_1A84E5DBC();
    if (*(v4 + 16))
    {
      v8 = sub_1A824B390(v6, v7);
      v10 = v9;

      if (v10)
      {
        sub_1A8244F40(*(v4 + 56) + 32 * v8, v11);

        sub_1A824B2D4(v11, &qword_1EB2E66B0, &qword_1A8500960);
        return 0;
      }
    }

    else
    {
    }

    memset(v11, 0, sizeof(v11));
    sub_1A824B2D4(v11, &qword_1EB2E66B0, &qword_1A8500960);
    return 1;
  }

  return result;
}

uint64_t sub_1A84AB210()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E8940, &qword_1A8509AE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  sub_1A82442B8(v4, qword_1EB2E8920);
  sub_1A824431C(v4, qword_1EB2E8920);
  v5 = *MEMORY[0x1E69A6750];
  v6 = sub_1A83EA2FC(&qword_1EB2E8948, &unk_1A8509AF0);
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_1A84E5AFC();
  return sub_1A84E5AEC();
}

uint64_t sub_1A84AB380()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - v5;
  v7 = [v0 chatIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 __im_isChatBotPatterned];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [v1 chatStyle];
  result = 0;
  if (v11 == 45 && (v10 & 1) == 0)
  {
    if (sub_1A84AB7B4())
    {
      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v13 = sub_1A84E5C9C();
      sub_1A824431C(v13, qword_1EB2E88F0);
      v14 = v1;
      v15 = sub_1A84E5C7C();
      v16 = sub_1A84E617C();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_26;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v19 = [v14 chatIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1A84E5DBC();
        v23 = v22;
      }

      else
      {
        v21 = 1701736302;
        v23 = 0xE400000000000000;
      }

      v32 = sub_1A82446BC(v21, v23, &v36);

      *(v17 + 4) = v32;
      v33 = "Chatbot %s is missing brand info, request it from relay";
    }

    else
    {
      if (qword_1EB2E59E8 != -1)
      {
        swift_once();
      }

      v24 = sub_1A824431C(v2, qword_1EB2E8920);
      (*(v3 + 16))(v6, v24, v2);
      sub_1A84E5ADC();
      (*(v3 + 8))(v6, v2);
      if (v36 != 1)
      {
        return 0;
      }

      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v25 = sub_1A84E5C9C();
      sub_1A824431C(v25, qword_1EB2E88F0);
      v26 = v1;
      v15 = sub_1A84E5C7C();
      v16 = sub_1A84E617C();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_26;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v27 = [v26 chatIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1A84E5DBC();
        v31 = v30;
      }

      else
      {
        v29 = 1701736302;
        v31 = 0xE400000000000000;
      }

      v34 = sub_1A82446BC(v29, v31, &v36);

      *(v17 + 4) = v34;
      v33 = "Chatbot %s needs brand info due to defaults, request it from relay";
    }

    _os_log_impl(&dword_1A823F000, v15, v16, v33, v17, 0xCu);
    sub_1A8244788(v18);
    MEMORY[0x1AC56D3F0](v18, -1, -1);
    MEMORY[0x1AC56D3F0](v17, -1, -1);
LABEL_26:

    return 1;
  }

  return result;
}

uint64_t sub_1A84AB7B4()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  result = [v0 allChatProperties];
  if (result)
  {
    v6 = result;
    v7 = sub_1A84E5D3C();

    v8 = sub_1A8253A88(v7);

    if (!v8)
    {
      return 0;
    }

    v9 = objc_allocWithZone(MEMORY[0x1E69A7F30]);
    v10 = sub_1A84E5D2C();

    v11 = [v9 initWithDictionary_];

    if (v11)
    {
      v12 = [v11 brandLogoGuid];
      if (v12)
      {

        v13 = [v0 brandLogoURL];
        if (v13)
        {
          v14 = v13;
          sub_1A84E554C();

          v15 = sub_1A84E558C();
          (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
          sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
          return 0;
        }

        v16 = sub_1A84E558C();
        (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
        sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
      }

      else
      {
      }
    }

    return 1;
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterBatch.messages.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.ArchiveImporterBatch() + 20));
}

uint64_t type metadata accessor for ImportExport.ArchiveImporterBatch()
{
  result = qword_1EB2E8968;
  if (!qword_1EB2E8968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterBatch.missingAttachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.ArchiveImporterBatch() + 24));
}

__n128 ImportExport.ArchiveImporterBatch.importCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.ArchiveImporterBatch() + 28);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

unint64_t sub_1A84ABB5C()
{
  v1 = 0x61737265766E6F63;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6F4374726F706D69;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
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

uint64_t sub_1A84ABBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84AC994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84ABC14(uint64_t a1)
{
  v2 = sub_1A84ABF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84ABC50(uint64_t a1)
{
  v2 = sub_1A84ABF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveImporterBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8950, &unk_1A8509B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84ABF8C();
  sub_1A84E68AC();
  LOBYTE(v16[0]) = 0;
  type metadata accessor for ImportExport.Conversation();
  sub_1A84AC5E4(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v11 = type metadata accessor for ImportExport.ArchiveImporterBatch();
    *&v16[0] = *(v3 + v11[5]);
    v18 = 1;
    sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A84AC4AC(&qword_1EB2E7EA0, &qword_1EB2E7800);
    sub_1A84E672C();
    *&v16[0] = *(v3 + v11[6]);
    v18 = 2;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84AC548(&qword_1EB2E86B8, &qword_1EB2E73A0);
    sub_1A84E672C();
    v12 = v3 + v11[7];
    v13 = *(v12 + 32);
    v14 = *(v12 + 16);
    v16[0] = *v12;
    v16[1] = v14;
    v17 = v13;
    v18 = 3;
    sub_1A847E61C();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A84ABF8C()
{
  result = qword_1EB2E8958;
  if (!qword_1EB2E8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8958);
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterBatch.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for ImportExport.Conversation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A83EA2FC(&qword_1EB2E8960, &qword_1A8509B18);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ImportExport.ArchiveImporterBatch();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84ABF8C();
  v28 = v9;
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v15 = v25;
  v16 = v13;
  LOBYTE(v29) = 0;
  sub_1A84AC5E4(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
  v18 = v26;
  v17 = v27;
  sub_1A84E666C();
  sub_1A845BB64(v18, v16);
  sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
  v32 = 1;
  sub_1A84AC4AC(&qword_1EB2E7190, &qword_1EB2E7198);
  sub_1A84E666C();
  *(v16 + v10[5]) = v29;
  sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
  v32 = 2;
  sub_1A84AC548(&qword_1EB2E86E0, &qword_1EB2E7398);
  sub_1A84E666C();
  *(v16 + v10[6]) = v29;
  v32 = 3;
  sub_1A847EC5C();
  sub_1A84E666C();
  (*(v15 + 8))(v28, v17);
  v19 = v31;
  v20 = v16 + v10[7];
  v21 = v30;
  *v20 = v29;
  *(v20 + 16) = v21;
  *(v20 + 32) = v19;
  sub_1A84AC62C(v16, v24, type metadata accessor for ImportExport.ArchiveImporterBatch);
  sub_1A8244788(a1);
  return sub_1A84AC694(v16, type metadata accessor for ImportExport.ArchiveImporterBatch);
}

uint64_t sub_1A84AC4AC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A84AC5E4(a2, type metadata accessor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84AC548(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84AC5E4(a2, type metadata accessor for ImportExport.Attachment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84AC5E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A84AC62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84AC694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A84AC74C()
{
  type metadata accessor for ImportExport.Conversation();
  if (v0 <= 0x3F)
  {
    sub_1A84AC828(319, &qword_1EB2E7ED8, type metadata accessor for ImportExport.Message);
    if (v1 <= 0x3F)
    {
      sub_1A84AC828(319, &qword_1EB2E8978, type metadata accessor for ImportExport.Attachment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A84AC828(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A84E604C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A84AC890()
{
  result = qword_1EB2E8980;
  if (!qword_1EB2E8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8980);
  }

  return result;
}

unint64_t sub_1A84AC8E8()
{
  result = qword_1EB2E8988;
  if (!qword_1EB2E8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8988);
  }

  return result;
}

unint64_t sub_1A84AC940()
{
  result = qword_1EB2E8990;
  if (!qword_1EB2E8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8990);
  }

  return result;
}

uint64_t sub_1A84AC994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533590 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4374726F706D69 && a2 == 0xEC00000073746E75)
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

uint64_t sub_1A84ACB08(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1A84ACED4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A84E5C9C();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A84E5B4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  sub_1A84E5B2C();
  sub_1A84E5B1C();
  v36 = a1;
  sub_1A84E5B0C();

  sub_1A84E5C6C();
  sub_1A84E5C8C();
  (*(v9 + 16))(v16, v18, v8);

  v19 = sub_1A84E5C7C();
  v20 = sub_1A84E61BC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v9;
    v24 = v23;
    v40 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_1A82446BC(v36, a2, &v40);
    *(v22 + 12) = 2080;
    v25 = sub_1A84E5B3C();
    v27 = v26;
    v36 = v7;
    v28 = *(v37 + 8);
    v28(v16, v8);
    v29 = sub_1A82446BC(v25, v27, &v40);

    *(v22 + 14) = v29;
    v30 = v28;
    _os_log_impl(&dword_1A823F000, v19, v20, "translation language status - code: %s, status: %s", v22, 0x16u);
    swift_arrayDestroy();
    v31 = v24;
    v9 = v37;
    MEMORY[0x1AC56D3F0](v31, -1, -1);
    v32 = v22;
    v13 = v35;
    MEMORY[0x1AC56D3F0](v32, -1, -1);

    (*(v38 + 8))(v36, v39);
  }

  else
  {

    v30 = *(v9 + 8);
    v30(v16, v8);
    (*(v38 + 8))(v7, v39);
  }

  (*(v9 + 32))(v13, v18, v8);
  v33 = (*(v9 + 88))(v13, v8);
  if (v33 == *MEMORY[0x1E69A6778])
  {
    return 2;
  }

  if (v33 == *MEMORY[0x1E69A6780])
  {
    return 1;
  }

  if (v33 == *MEMORY[0x1E69A6790])
  {
    return 3;
  }

  if (v33 != *MEMORY[0x1E69A6788])
  {
    v30(v13, v8);
  }

  return 0;
}

uint64_t sub_1A84AD314(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v40 = a1;
  v2 = sub_1A84E574C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = [objc_opt_self() lt_preferredLocales];
  v44 = v2;
  v10 = sub_1A84E5FFC();

  v11 = *(v10 + 16);
  if (v11)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v11, 0);
    v12 = v45;
    v36 = v10;
    v37 = v3;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v41 = *(v13 + 56);
    v42 = v14;
    v43 = v13;
    v16 = (v13 - 8);
    do
    {
      v17 = v44;
      v42(v8, v15, v44);
      v18 = sub_1A84E572C();
      v20 = v19;
      (*v16)(v8, v17);
      v45 = v12;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        sub_1A83EF534((v21 > 1), v22 + 1, 1);
        v12 = v45;
      }

      v12[2] = v22 + 1;
      v23 = &v12[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v15 += v41;
      --v11;
    }

    while (v11);

    v3 = v37;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v25 = (v3 + 8);
  v26 = v12 + 5;
  v43 = -v12[2];
  v27 = -1;
  while (1)
  {
    v28 = v43 + v27;
    if (v43 + v27 == -1)
    {
LABEL_12:

      return v28 != -1;
    }

    if (++v27 >= v12[2])
    {
      break;
    }

    v29 = v26 + 2;
    v31 = *(v26 - 1);
    v30 = *v26;
    swift_bridgeObjectRetain_n();
    sub_1A84E571C();

    v32 = v39;
    sub_1A84E571C();
    LOBYTE(v31) = sub_1A84E573C();

    v33 = *v25;
    v34 = v32;
    v35 = v44;
    (*v25)(v34, v44);
    result = v33(v8, v35);
    v26 = v29;
    if (v31)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id sub_1A84AD644(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v21 = sub_1A84AD834(v13, v15, a5, a6, v16, v17, a8);

  return v21;
}

id IMStickerTapback.transferExistsLocally.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [v0 transferGUID];
    if (!v3)
    {
      sub_1A84E5DBC();
      v3 = sub_1A84E5D8C();
    }

    v4 = [v2 transferForGUID_];

    result = 0;
    if (v4)
    {
      v5 = [v4 existsAtLocalPath];

      if (v5)
      {
        return 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84AD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v58[1] = a6;
  v65 = a2;
  v67 = a1;
  v12 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v58 - v14;
  v16 = sub_1A84E5D2C();
  v17 = [v8 adjustMessageSummaryInfoForSending_];

  v18 = sub_1A84E5D3C();
  v66 = v18;
  v19 = sub_1A84E5D2C();
  v72 = sub_1A8442C90;
  v73 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1A8442D50;
  v71 = &unk_1F1B75B80;
  v20 = _Block_copy(&aBlock);

  v72 = sub_1A8442D4C;
  v73 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1A8442D50;
  v71 = &unk_1F1B75BA8;
  v21 = _Block_copy(&aBlock);

  v22 = [v8 backwardCompatibilityStringWithMessageSummaryInfo:v19 isAdaptiveImageGlyphProvider:v20 isCommSafetySensitiveProvider:v21];
  _Block_release(v20);

  _Block_release(v21);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v63 = a4;
  v64 = a3;
  v62 = a7;
  if (v22)
  {
    v24 = [v22 __stringByStrippingControlCharacters];

    if (v24)
    {
      sub_1A84E5DBC();
    }
  }

  v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v26 = sub_1A84E5D8C();

  v27 = [v25 initWithString_];

  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v28 = swift_allocObject();
  v59 = xmmword_1A85013E0;
  *(v28 + 16) = xmmword_1A85013E0;
  v29 = [v8 transferGUID];
  v30 = sub_1A84E5DBC();
  v32 = v31;

  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v33 = sub_1A84E5FEC();

  v61 = v27;
  v34 = [v27 __im_attributedStringByAppendingFileTransfers_];

  v60 = v34;
  v35 = [v34 __im_attributedStringByAssigningMessagePartNumbers];
  sub_1A84E56CC();
  v36 = sub_1A84E56DC();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v15, 0, 1, v36);
  v38 = swift_allocObject();
  *(v38 + 16) = v59;
  v39 = [v8 transferGUID];
  v40 = sub_1A84E5DBC();
  v42 = v41;

  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  v43 = [objc_opt_self() stringGUID];
  if (v43)
  {
    v44 = v43;
    *&v59 = sub_1A84E5DBC();
    v46 = v45;
  }

  else
  {
    *&v59 = 0;
    v46 = 0;
  }

  v47 = [v8 associatedMessageType];
  v48 = (*(v37 + 48))(v15, 1, v36);
  v49 = v35;
  if (v48 == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_1A84E565C();
    (*(v37 + 8))(v15, v36);
  }

  v51 = sub_1A84E5FEC();

  if (v46)
  {
    v52 = sub_1A84E5D8C();
  }

  else
  {
    v52 = 0;
  }

  v53 = sub_1A84E5D8C();
  v54 = sub_1A84E5D2C();

  if (v62)
  {
    v55 = sub_1A84E5D8C();
  }

  else
  {
    v55 = 0;
  }

  v56 = objc_allocWithZone(IMMessage);
  v57 = [v56 initWithSender:0 time:v50 text:v49 messageSubject:0 fileTransferGUIDs:v51 flags:5 error:0 guid:v52 subject:0 associatedMessageGUID:v53 associatedMessageType:v47 associatedMessageRange:v64 messageSummaryInfo:v63 threadIdentifier:{v54, v55}];

  return v57;
}

uint64_t ImportExport.ConversationArchiver.conversationFileRelativePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath;
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A84ADFB4@<X0>(uint64_t a1@<X8>)
{
  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A85013E0;
  *(v3 + 32) = sub_1A84E555C();
  *(v3 + 40) = v4;
  v5 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = sub_1A84E558C();
  (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  v9 = type metadata accessor for ImportExport.ArchiveManifest(0);
  *(a1 + *(v9 + 20)) = v3;
  *(a1 + *(v9 + 24)) = v7;
}

uint64_t sub_1A84AE0C0()
{
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);
  v2 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t ImportExport.ConversationArchiver.__allocating_init(withConversation:archivingOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ImportExport.ConversationArchiver.init(withConversation:archivingOptions:exportStatistics:)(a1, a2, a3);
  return v9;
}

uint64_t ImportExport.ConversationArchiver.init(withConversation:archivingOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v6 = type metadata accessor for ImportExport.ExportOptions();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v64 - v11;
  v12 = sub_1A84E558C();
  v65 = *(v12 - 8);
  v13 = v65;
  v66 = v12;
  v14 = *(v65 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v64 - v20;
  v22 = type metadata accessor for ImportExport.Conversation();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v3;
  sub_1A84AFFB0(a1, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A84AFFB0(a2, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v73 = a1;
  sub_1A84AFFB0(a1, v25, type metadata accessor for ImportExport.Conversation);
  v31 = *(type metadata accessor for ImportExport.ArchivingOptions() + 20);
  v74 = *(v13 + 16);
  v72 = a2;
  v32 = a2 + v31;
  v33 = v66;
  v74(v21, v32, v66);
  strcpy(v78, "Conversation-");
  v78[7] = -4864;
  v34 = *v25;
  v76 = v25;
  v77 = v34;
  v35 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v35);

  sub_1A84E552C();

  sub_1A84AFFB0(v25, &v30[v27[11]], type metadata accessor for ImportExport.Conversation);
  v36 = v21;
  v37 = v74;
  v74(v30, v21, v33);
  v38 = v33;
  v37(&v30[v27[7]], v19, v33);
  v39 = &v30[v27[10]];
  sub_1A84E552C();
  v40 = &v30[v27[9]];
  sub_1A84E552C();
  v41 = &v30[v27[8]];
  sub_1A84E552C();
  v42 = v65;
  v43 = *(v65 + 8);
  v44 = v19;
  v45 = v38;
  v43(v44, v38);
  v43(v36, v38);
  sub_1A84B0018(v76, type metadata accessor for ImportExport.Conversation);
  v46 = v75 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories;
  sub_1A84B0118(v30, v75 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  sub_1A84AFFB0(v46, v30, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v47 = v27[10];
  v48 = v42;
  v49 = v74;
  v50 = v36;
  v74(v36, v46 + v47, v45);
  v51 = v68;
  URL.relativePath(toParent:)(v68);
  v67 = v43;
  v43(v50, v45);
  v52 = v45;
  sub_1A84B0018(v30, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  if ((*(v48 + 48))(v51, 1, v45) == 1)
  {
    sub_1A824B2D4(v51, &qword_1EB2E7068, &unk_1A8501EB0);
    result = sub_1A84E653C();
    __break(1u);
  }

  else
  {
    v53 = v69;
    (*(v48 + 32))(v69, v51, v45);
    v54 = v75;
    v49(v75 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath, v53, v52);
    v55 = v73;
    v56 = v76;
    sub_1A84AFFB0(v73, v76, type metadata accessor for ImportExport.Conversation);
    v57 = v72;
    v58 = v70;
    sub_1A84AFFB0(v72, v70, type metadata accessor for ImportExport.ExportOptions);
    v59 = type metadata accessor for ImportExport.ConversationExporter();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = ImportExport.ConversationExporter.init(withConversation:exportOptions:exportStatistics:)(v56, v58, v71);
    sub_1A84B0018(v57, type metadata accessor for ImportExport.ArchivingOptions);
    sub_1A84B0018(v55, type metadata accessor for ImportExport.Conversation);
    v67(v53, v52);
    *(v54 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter) = v62;
    return v54;
  }

  return result;
}

uint64_t sub_1A84AE84C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for ImportExport.MessageBatch();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84AE97C, 0, 0);
}

uint64_t sub_1A84AE97C()
{
  v0[10] = *(v0[4] + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1A84AEA30;
  v2 = v0[6];

  return sub_1A84988C0(v2);
}

uint64_t sub_1A84AEA30()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1A84AEED8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1A84AEB4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A84AEB4C()
{
  v1 = v0[6];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[3];
    sub_1A824B2D4(v1, &qword_1EB2E7CF8, &qword_1A8509020);
    v3 = type metadata accessor for ImportExport.ArchivedConversationBatch();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
LABEL_11:
    v28 = v0[9];
    v29 = v0[5];
    v30 = v0[6];

    v23 = v0[1];
    goto LABEL_12;
  }

  v4 = v0[9];
  v5 = v0[4];
  sub_1A84B0118(v1, v4, type metadata accessor for ImportExport.MessageBatch);
  if ((_s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(v4, v5 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation) & 1) == 0)
  {
    return sub_1A84E653C();
  }

  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions;
  sub_1A84AFFB0(v0[4] + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, v8, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v10 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  if (!*(*(v6 + *(v7 + 20)) + 16))
  {
    v25 = v0[3];
    sub_1A824B2D4(v0[5], &qword_1EB2E89A8, &unk_1A8509CD8);
    v26 = type metadata accessor for ImportExport.ArchivedConversationBatch();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
LABEL_10:
    sub_1A84B0018(v0[9], type metadata accessor for ImportExport.MessageBatch);
    goto LABEL_11;
  }

  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];
  v16 = objc_autoreleasePoolPush();
  sub_1A84C3E18(v14, v12, v13 + v9, v0 + 2, v15);
  if (!v11)
  {
    v27 = v0[5];
    objc_autoreleasePoolPop(v16);
    sub_1A824B2D4(v27, &qword_1EB2E89A8, &unk_1A8509CD8);
    goto LABEL_10;
  }

  v17 = v0[9];
  v18 = v0[5];
  v19 = v0[2];
  objc_autoreleasePoolPop(v16);
  sub_1A824B2D4(v18, &qword_1EB2E89A8, &unk_1A8509CD8);
  sub_1A84B0018(v17, type metadata accessor for ImportExport.MessageBatch);
  v20 = v0[9];
  v22 = v0[5];
  v21 = v0[6];

  v23 = v0[1];
LABEL_12:

  return v23();
}

uint64_t sub_1A84AEED8()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

unint64_t sub_1A84AEF60()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0xD000000000000017;
  if (v1 == 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1A84AF010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84B062C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84AF038(uint64_t a1)
{
  v2 = sub_1A84B0078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84AF074(uint64_t a1)
{
  v2 = sub_1A84B0078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ConversationArchiver.deinit()
{
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath;
  v2 = sub_1A84E558C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);

  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  return v0;
}

uint64_t ImportExport.ConversationArchiver.__deallocating_deinit()
{
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath;
  v2 = sub_1A84E558C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);

  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84AF2A4(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E89B0, &qword_1A8509CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B0078();
  sub_1A84E68AC();
  v16 = 0;
  type metadata accessor for ImportExport.Conversation();
  sub_1A84B0180(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v15 = 1;
    type metadata accessor for ImportExport.ArchivingOptions();
    sub_1A84B0180(&qword_1EB2E8000, type metadata accessor for ImportExport.ArchivingOptions);
    sub_1A84E672C();
    v14 = 2;
    sub_1A84E558C();
    sub_1A84B0180(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
    sub_1A84E672C();
    v13 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);
    v12[15] = 3;
    type metadata accessor for ImportExport.ConversationExporter();
    sub_1A84B0180(&qword_1EB2E7D28, type metadata accessor for ImportExport.ConversationExporter);
    sub_1A84E672C();
    v12[14] = 4;
    type metadata accessor for ImportExport.ArchivedConversationDirectories();
    sub_1A84B0180(&qword_1EB2E89C0, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.ConversationArchiver.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ConversationArchiver.init(from:)(a1);
  return v5;
}

uint64_t ImportExport.ConversationArchiver.init(from:)(uint64_t *a1)
{
  v32 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A84E558C();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportExport.ArchivingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImportExport.Conversation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A83EA2FC(&qword_1EB2E89C8, qword_1A8509CF0);
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v30 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v39 = a1;
  sub_1A82471E0(a1, v19);
  sub_1A84B0078();
  v37 = v17;
  v20 = v38;
  sub_1A84E689C();
  if (v20)
  {
    v21 = v40;
    type metadata accessor for ImportExport.ConversationArchiver();
    v27 = *(*v21 + 48);
    v28 = *(*v21 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v7;
    v22 = v10;
    v30 = v6;
    v23 = v35;
    v46 = 0;
    sub_1A84B0180(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
    v24 = v34;
    sub_1A84E666C();
    v21 = v40;
    sub_1A84B0118(v24, v40 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
    v45 = 1;
    sub_1A84B0180(&qword_1EB2E8010, type metadata accessor for ImportExport.ArchivingOptions);
    sub_1A84E666C();
    sub_1A84B0118(v22, v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
    v44 = 2;
    sub_1A84B0180(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
    v25 = v30;
    sub_1A84E666C();
    (*(v33 + 32))(v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath, v25, v23);
    type metadata accessor for ImportExport.ConversationExporter();
    v43 = 3;
    sub_1A84B0180(&qword_1EB2E7D50, type metadata accessor for ImportExport.ConversationExporter);
    sub_1A84E666C();
    *(v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter) = v41;
    v42 = 4;
    sub_1A84B0180(&qword_1EB2E89D0, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v26 = v31;
    sub_1A84E666C();
    (*(v14 + 8))(v37, v36);
    sub_1A84B0118(v26, v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  }

  sub_1A8244788(v39);
  return v21;
}