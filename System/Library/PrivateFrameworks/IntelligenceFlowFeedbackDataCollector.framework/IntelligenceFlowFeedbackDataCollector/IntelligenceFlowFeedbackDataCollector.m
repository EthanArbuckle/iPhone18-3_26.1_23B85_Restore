id DeviceContextBuilder.getCurrentDeviceContext()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254F48F7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = MobileGestalt_copy_buildVersion_obj();

  if (v9)
  {
    v10 = sub_254F4934C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_254F48F6C();
  v13 = sub_254F48F5C();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_11;
  }

  v16 = result;
  v17 = MobileGestalt_copy_marketingNameString_obj();

  if (v17)
  {
    v18 = sub_254F4934C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  result = sub_254F4933C();
  *a1 = v13;
  a1[1] = v15;
  a1[2] = result;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v18;
  a1[6] = v20;
  return result;
}

uint64_t TranscriptContextBuilder.__allocating_init()()
{
  sub_254F46764();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_254F3D818();
  return v0;
}

uint64_t TranscriptContextBuilder.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_254F3D818();
  return v0;
}

uint64_t sub_254F3D818()
{
  v0 = sub_254F48F4C();
  v1 = sub_254F46730(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_254F46744();
  v8 = v7 - v6;
  v9 = sub_254F3EE1C(&qword_27F7605F0, &qword_254F49A58);
  v10 = sub_254F46774(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v20 = [v19 Transcript];
  swift_unknownObjectRelease();
  v21 = [v20 Datastream];
  swift_unknownObjectRelease();
  sub_254F48F3C();
  sub_254F44F24(v17);
  (*(v3 + 8))(v8, v0);
  sub_254F45368(v17, 0, 1, v0);
  sub_254F45368(v15, 1, 1, v0);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v23 = sub_254F451B4(v17, v15, 0, 0, 0);
  v24 = [v21 publisherWithOptions_];

  v36 = nullsub_1;
  v37 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_254F4672C;
  v35 = &unk_286728AF8;
  v25 = _Block_copy(&aBlock);
  v36 = sub_254F4671C;
  v37 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_254F4672C;
  v35 = &unk_286728B20;
  v26 = _Block_copy(&aBlock);

  v27 = [v24 sinkWithCompletion:v25 receiveInput:v26];

  _Block_release(v26);
  _Block_release(v25);

  swift_beginAccess();
  v28 = *(v31 + 16);
  *(v31 + 16) = *(v18 + 16);
}

id TranscriptContextBuilder.getTranscriptContext(clientRequestId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a1;
  v88 = a3;
  v5 = sub_254F3EE1C(&qword_27F760500, &qword_254F49980);
  v6 = sub_254F46774(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v86 - v9;
  v102 = sub_254F490CC();
  v11 = sub_254F46730(v102);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_254F46744();
  v91 = (v17 - v16);
  v18 = sub_254F3EE1C(&qword_27F760508, &qword_254F49988);
  v19 = sub_254F46774(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v86 - v22);
  v101 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v24 = sub_254F46730(v101);
  v96 = v25;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v92 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v86 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v100 = &v86 - v34;
  MEMORY[0x28223BE20](v33);
  v90 = &v86 - v35;
  v97 = v3;
  v36 = *(v3 + 16);
  v98 = sub_254F4531C(v36);
  v94 = v36 & 0xFFFFFFFFFFFFFF8;
  v95 = v36 & 0xC000000000000001;
  v89 = v13;
  v87 = (v13 + 32);

  v38 = 0;
  v39 = MEMORY[0x277D84F90];
LABEL_2:
  v99 = v39;
  while (1)
  {
    if (v98 == v38)
    {

      v53 = 0;
      v98 = *(v39 + 16);
      v54 = (v89 + 8);
      v95 = MEMORY[0x277D84F90];
      v55 = &qword_27F760510;
      while (1)
      {
        while (1)
        {
          if (v98 == v53)
          {

            v74 = v95;
            v75 = sub_254F3EE64(v95);
            v76 = sub_254F40320(v74);
            v77 = sub_254F41EC0(v74);
            v78 = sub_254F43210(v74);
            v80 = v79;

            if (*(v75 + 2))
            {
              v82 = *(v75 + 4);
              v81 = *(v75 + 5);
            }

            else
            {
              v82 = 0;
              v81 = 0;
            }

            v83 = v88;

            if (*(v76 + 2))
            {
              v85 = *(v76 + 4);
              v84 = *(v76 + 5);
            }

            else
            {
              v85 = 0;
              v84 = 0;
            }

            *v83 = v82;
            *(v83 + 8) = v81;
            *(v83 + 16) = v77;
            *(v83 + 24) = v85;
            *(v83 + 32) = v84;
            *(v83 + 40) = v80;
            *(v83 + 44) = BYTE4(v80) & 1;
            *(v83 + 48) = v78;
            return result;
          }

          if (v53 >= *(v39 + 16))
          {
            goto LABEL_44;
          }

          v56 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v57 = v39 + v56;
          v58 = *(v96 + 72);
          v59 = v100;
          sub_254F46480(v57 + v58 * v53, v100, v55, &qword_254F49990);
          v60 = v55;
          sub_254F46480(v59, v32, v55, &qword_254F49990);
          v61 = *(v32 + 1);

          v62 = a2;
          v63 = *(v101 + 48);
          v64 = sub_254F490AC();
          v66 = v65;
          v67 = &v32[v63];
          a2 = v62;
          (*v54)(v67, v102);
          if (v64 != v93 || v66 != v62)
          {
            break;
          }

LABEL_30:
          v55 = v60;
          sub_254F46518(v100, v92, v60, &qword_254F49990);
          v70 = v95;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v70;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_254F45F38(0, *(v70 + 16) + 1, 1);
            v70 = v103;
          }

          v73 = *(v70 + 16);
          v72 = *(v70 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_254F45F38(v72 > 1, v73 + 1, 1);
            v70 = v103;
          }

          ++v53;
          *(v70 + 16) = v73 + 1;
          v95 = v70;
          result = sub_254F46518(v92, v70 + v56 + v73 * v58, v60, &qword_254F49990);
          v39 = v99;
        }

        v69 = sub_254F4949C();

        if (v69)
        {
          goto LABEL_30;
        }

        v55 = v60;
        result = sub_254F4667C(v100, v60, &qword_254F49990);
        ++v53;
        v39 = v99;
      }
    }

    if (v95)
    {
      result = MEMORY[0x259C2F1F0](v38, v36);
    }

    else
    {
      if (v38 >= *(v94 + 16))
      {
        goto LABEL_43;
      }

      result = *(v36 + 8 * v38 + 32);
    }

    v40 = result;
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    sub_254F3E2E4(result, v10);
    if (sub_254F45340(v10, 1, v102) != 1)
    {
      v86 = *v87;
      v86(v91, v10, v102);
      v42 = sub_254F46274(v40);
      v44 = v43;

      v45 = 7104878;
      if (v44)
      {
        v45 = v42;
      }

      v46 = 0xE300000000000000;
      if (v44)
      {
        v46 = v44;
      }

      *v23 = v45;
      v23[1] = v46;
      v47 = v101;
      v48 = v99;
      v86(v23 + *(v101 + 48), v91, v102);
      sub_254F45368(v23, 0, 1, v47);
      sub_254F46518(v23, v90, &qword_27F760510, &qword_254F49990);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_254F455B0(0, *(v48 + 16) + 1, 1, v48);
      }

      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      v51 = v48;
      if (v50 >= v49 >> 1)
      {
        v51 = sub_254F455B0(v49 > 1, v50 + 1, 1, v48);
      }

      *(v51 + 16) = v50 + 1;
      v52 = v51 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v50;
      v39 = v51;
      result = sub_254F46518(v90, v52, &qword_27F760510, &qword_254F49990);
      v38 = v41;
      goto LABEL_2;
    }

    sub_254F4667C(v10, &qword_27F760500, &qword_254F49980);
    sub_254F45368(v23, 1, 1, v101);
    result = sub_254F4667C(v23, &qword_27F760508, &qword_254F49988);
    ++v38;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_254F3E2E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = sub_254F48FFC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254F490CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v100 = &v98 - v13;
  MEMORY[0x28223BE20](v12);
  v110 = &v98 - v14;
  v15 = sub_254F4905C();
  v113 = *(v15 - 1);
  v16 = *(v113 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v107 = (&v98 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v98 - v24);
  v26 = sub_254F3EE1C(&qword_27F7605F0, &qword_254F49A58);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v98 - v31;
  v33 = sub_254F46274(a1);
  v112 = v34;
  v109 = a1;
  v35 = [a1 absoluteTimestamp];
  if (v35)
  {
    v36 = v35;
    sub_254F48F2C();

    v37 = sub_254F48F4C();
    v38 = 0;
  }

  else
  {
    v37 = sub_254F48F4C();
    v38 = 1;
  }

  v101 = v23;
  v103 = v7;
  sub_254F45368(v30, v38, 1, v37);
  sub_254F46518(v30, v32, &qword_27F7605F0, &qword_254F49A58);
  sub_254F48F4C();
  v39 = sub_254F45340(v32, 1, v37);
  v102 = v11;
  if (v39 == 1)
  {
    sub_254F4667C(v32, &qword_27F7605F0, &qword_254F49A58);
    v104 = 0;
    v40 = 0;
  }

  else
  {
    v104 = sub_254F48F0C();
    v40 = v41;
    (*(*(v37 - 8) + 8))(v32, v37);
  }

  v42 = v112;
  sub_254F4903C();

  v43 = sub_254F4904C();
  v44 = sub_254F493DC();

  v45 = os_log_type_enabled(v43, v44);
  v108 = v25;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v99 = v6;
    v47 = v46;
    v48 = swift_slowAlloc();
    *&v114[0] = v48;
    *v47 = 136315394;
    if (!v42)
    {
      v33 = 0x3E4C494E3CLL;
    }

    v49 = v15;
    if (v42)
    {
      v50 = v42;
    }

    else
    {
      v50 = 0xE500000000000000;
    }

    v51 = sub_254F4589C(v33, v50, v114);
    v15 = v49;

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    if (v40)
    {
      v52 = v104;
    }

    else
    {
      v52 = 0x3E4C494E3CLL;
    }

    if (v40)
    {
      v53 = v40;
    }

    else
    {
      v53 = 0xE500000000000000;
    }

    v54 = sub_254F4589C(v52, v53, v114);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_254F3C000, v43, v44, "Decoding Event: %s with eventTimeStamp: %s \n", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C2F690](v48, -1, -1);
    v55 = v47;
    v6 = v99;
    MEMORY[0x259C2F690](v55, -1, -1);
  }

  v56 = *(v113 + 8);
  v56(v108, v15);
  v57 = v109;
  v58 = v110;
  v59 = sub_254F46568(v109);
  if (v60 >> 60 == 15)
  {

    v61 = v105;
    sub_254F4903C();
    v62 = v57;
    v63 = sub_254F4904C();
    v64 = sub_254F493DC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v114[0] = v66;
      *v65 = 136315138;
      v67 = sub_254F46274(v62);
      if (v68)
      {
        v69 = v68;
      }

      else
      {
        v67 = 0x3E4C494E3CLL;
        v69 = 0xE500000000000000;
      }

      v70 = v6;
      v71 = sub_254F4589C(v67, v69, v114);

      *(v65 + 4) = v71;
      v6 = v70;
      _os_log_impl(&dword_254F3C000, v63, v64, "BMSageTranscript did not contain valid event payload, skipping event: %s", v65, 0xCu);
      sub_254F4632C(v66);
      MEMORY[0x259C2F690](v66, -1, -1);
      MEMORY[0x259C2F690](v65, -1, -1);
    }

    v56(v61, v15);
    v95 = 1;
  }

  else
  {
    v72 = v59;
    v73 = v60;
    v109 = v15;
    v115 = 0;
    memset(v114, 0, sizeof(v114));
    sub_254F465CC(v59, v60);
    sub_254F48FEC();
    sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148]);
    sub_254F4901C();
    v108 = v56;

    v74 = v101;
    sub_254F4903C();
    v75 = v103;
    v76 = *(v103 + 16);
    v77 = v100;
    v76(v100, v58, v6);
    v76(v102, v58, v6);
    v78 = sub_254F4904C();
    v79 = sub_254F493DC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v114[0] = v112;
      *v80 = 136315394;
      v107 = v78;
      v81 = sub_254F490BC();
      v83 = v82;
      LODWORD(v106) = v79;
      v84 = *(v103 + 8);
      v84(v77, v6);
      v85 = sub_254F4589C(v81, v83, v114);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v86 = v102;
      v87 = sub_254F4902C();
      v89 = v88;
      v84(v86, v6);
      v75 = v103;
      v90 = sub_254F4589C(v87, v89, v114);

      *(v80 + 14) = v90;
      v91 = v107;
      _os_log_impl(&dword_254F3C000, v107, v106, "Decoded SessionID: %s for event: %s \n", v80, 0x16u);
      v92 = v112;
      swift_arrayDestroy();
      MEMORY[0x259C2F690](v92, -1, -1);
      v93 = v80;
      v58 = v110;
      MEMORY[0x259C2F690](v93, -1, -1);

      sub_254F46668(v72, v73);
      v94 = v101;
    }

    else
    {

      sub_254F46668(v72, v73);
      v97 = *(v75 + 8);
      v97(v102, v6);
      v97(v77, v6);
      v94 = v74;
    }

    v108(v94, v109);
    (*(v75 + 32))(v111, v58, v6);
    v95 = 0;
  }

  return sub_254F45368(v111, v95, 1, v6);
}

uint64_t sub_254F3EE1C(uint64_t *a1, uint64_t *a2)
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

char *sub_254F3EE64(uint64_t a1)
{
  v2 = sub_254F4905C();
  v165 = *(v2 - 8);
  v166 = v2;
  v3 = *(v165 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v161 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v152 = &v128 - v6;
  v138 = sub_254F492FC();
  v169 = *(v138 - 8);
  v7 = *(v169 + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_254F4908C();
  v163 = *(v141 - 8);
  v9 = *(v163 + 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_254F4907C();
  *&v158 = *(v143 - 8);
  v11 = *(v158 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254F3EE1C(&qword_27F7605C0, &qword_254F49A40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v151 = &v128 - v15;
  v16 = sub_254F3EE1C(&qword_27F7605C8, &qword_254F49A48);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v144 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v156 = &v128 - v20;
  v154 = sub_254F4910C();
  v147 = *(v154 - 8);
  v21 = *(v147 + 8);
  v22 = MEMORY[0x28223BE20](v154);
  v148 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v157 = &v128 - v24;
  v25 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v160 = &v128 - v27;
  v28 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v162 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v174 = &v128 - v32;
  v173 = sub_254F490CC();
  v145 = *(v173 - 8);
  v33 = *(v145 + 8);
  v34 = MEMORY[0x28223BE20](v173);
  v164 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v159 = &v128 - v36;
  v168 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v37 = *(v168 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v168);
  v175 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v171 = &v128 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = (&v128 - v44);
  v46 = 0;
  v47 = *(a1 + 16);
  v155 = MEMORY[0x277D84F90];
  v172 = a1;
  while (v47 != v46)
  {
    v48 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v49 = *(v37 + 72);
    sub_254F46480(a1 + v48 + v49 * v46, v45, &qword_27F760510, &qword_254F49990);
    v50 = *v45 == 0x74736575716552 && v45[1] == 0xE700000000000000;
    if (v50 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v45, v175, &qword_27F760510, &qword_254F49990);
      v51 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v51 + 16) + 1, 1);
        v51 = v176;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      v55 = (v54 + 1);
      if (v54 >= v53 >> 1)
      {
        v170 = (v54 + 1);
        sub_254F45F38(v53 > 1, v54 + 1, 1);
        v55 = v170;
        v51 = v176;
      }

      ++v46;
      *(v51 + 16) = v55;
      v155 = v51;
      sub_254F46518(v175, v51 + v48 + v54 * v49, &qword_27F760510, &qword_254F49990);
      a1 = v172;
    }

    else
    {
      sub_254F4667C(v45, &qword_27F760510, &qword_254F49990);
      ++v46;
    }
  }

  v56 = *(v155 + 16);
  if (v56)
  {
    v57 = v155 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v170 = (v145 + 32);
    v150 = v147 + 32;
    v130 = (v169 + 32);
    v129 = (v169 + 8);
    v149 = v147 + 8;
    v58 = *(v168 + 48);
    v168 = (v145 + 8);
    v169 = v58;
    v133 = (v163 + 32);
    v167 = *(v37 + 72);
    v132 = (v163 + 8);
    v136 = (v158 + 32);
    v153 = *MEMORY[0x277D1E3F8];
    v135 = (v158 + 8);
    v146 = v147 + 16;
    v165 += 8;
    v147 = MEMORY[0x277D84F90];
    v139 = *MEMORY[0x277D1E4F8];
    v134 = *MEMORY[0x277D1E500];
    v163 = v145 + 16;
    v131 = *MEMORY[0x277D1E4F0];
    *&v43 = 136315138;
    v158 = v43;
    v60 = v160;
    v59 = v161;
    v61 = v162;
    v63 = v173;
    v62 = v174;
    v64 = v159;
    while (1)
    {
      v175 = v57;
      v65 = v57;
      v66 = v171;
      sub_254F46480(v65, v171, &qword_27F760510, &qword_254F49990);
      v67 = *(v66 + 8);

      (*v170)(v64, v66 + v169, v63);
      sub_254F4909C();
      v68 = sub_254F490EC();
      if (sub_254F45340(v60, 1, v68) == 1)
      {
        sub_254F4667C(v60, &qword_27F760538, &qword_254F499F0);
        v69 = sub_254F491FC();
        sub_254F45368(v62, 1, 1, v69);
      }

      else
      {
        sub_254F490DC();
        (*(*(v68 - 8) + 8))(v60, v68);
        v70 = sub_254F491FC();
        if (sub_254F45340(v62, 1, v70) != 1)
        {
          sub_254F46480(v62, v61, &qword_27F760540, &qword_254F499F8);
          v71 = *(v70 - 8);
          v72 = (*(v71 + 88))(v61, v70);
          if (v72 == v153)
          {
            (*(v71 + 96))(v61, v70);
            (*v150)(v157, v61, v154);
            v73 = v151;
            sub_254F490FC();
            v74 = sub_254F4924C();
            if (sub_254F45340(v73, 1, v74) == 1)
            {
              sub_254F4667C(v73, &qword_27F7605C0, &qword_254F49A40);
              v75 = sub_254F492BC();
              sub_254F45368(v156, 1, 1, v75);
              goto LABEL_27;
            }

            v90 = v156;
            sub_254F4923C();
            (*(*(v74 - 8) + 8))(v73, v74);
            v91 = sub_254F492BC();
            if (sub_254F45340(v90, 1, v91) == 1)
            {
LABEL_27:
              v172 = v56;
              v92 = v152;
              sub_254F4903C();
              v93 = v148;
              v94 = v154;
              (*v146)(v148, v157, v154);
              v95 = sub_254F4904C();
              v96 = sub_254F493DC();
              if (os_log_type_enabled(v95, v96))
              {
                v97 = v93;
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                v176 = v99;
                *v98 = v158;
                sub_254F464D0(&qword_27F7605D0, MEMORY[0x277D1E2C8]);
                v100 = sub_254F4902C();
                v102 = v101;
                v145 = *v149;
                v103 = v97;
                v60 = v160;
                (v145)(v103, v94);
                v104 = sub_254F4589C(v100, v102, &v176);

                *(v98 + 4) = v104;
                _os_log_impl(&dword_254F3C000, v95, v96, "Request event does not contain a requestContextEnum: %s", v98, 0xCu);
                sub_254F4632C(v99);
                v59 = v161;
                MEMORY[0x259C2F690](v99, -1, -1);
                MEMORY[0x259C2F690](v98, -1, -1);

                (*v165)(v152, v166);
                (v145)(v157, v94);
              }

              else
              {

                v105 = *v149;
                (*v149)(v93, v94);
                (*v165)(v92, v166);
                (v105)(v157, v94);
              }

              v63 = v173;
              (*v168)(v64, v173);
              v56 = v172;
            }

            else
            {
              v106 = v144;
              sub_254F46480(v156, v144, &qword_27F7605C8, &qword_254F49A48);
              v107 = *(v91 - 8);
              v108 = (*(v107 + 88))(v106, v91);
              if (v108 == v139)
              {
                (*(v107 + 96))(v106, v91);
                (*v136)(v142, v106, v143);
                v109 = sub_254F4906C();
                v111 = v110;
                v112 = v147;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v112 = sub_254F45390(0, *(v112 + 2) + 1, 1, v112);
                }

                v147 = v112;
                v114 = *(v112 + 2);
                v113 = *(v112 + 3);
                v115 = v114 + 1;
                if (v114 >= v113 >> 1)
                {
                  v147 = sub_254F45390((v113 > 1), v114 + 1, 1, v147);
                }

                (*v135)(v142, v143);
              }

              else if (v108 == v134)
              {
                v116 = v144;
                (*(v107 + 96))(v144, v91);
                (*v133)(v140, v116, v141);
                sub_254F464D0(&qword_27F7605E0, MEMORY[0x277D1D860]);
                v109 = sub_254F4902C();
                v111 = v117;
                v118 = v147;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v118 = sub_254F45390(0, *(v118 + 2) + 1, 1, v118);
                }

                v147 = v118;
                v114 = *(v118 + 2);
                v119 = *(v118 + 3);
                v115 = v114 + 1;
                if (v114 >= v119 >> 1)
                {
                  v147 = sub_254F45390((v119 > 1), v114 + 1, 1, v147);
                }

                (*v132)(v140, v141);
              }

              else
              {
                if (v108 != v131)
                {
                  (*(v107 + 8))(v144, v91);
                  goto LABEL_27;
                }

                v120 = v144;
                (*(v107 + 96))();
                (*v130)(v137, v120, v138);
                sub_254F464D0(&qword_27F7605D8, MEMORY[0x277D1E570]);
                v109 = sub_254F4902C();
                v111 = v121;
                v122 = v147;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v122 = sub_254F45390(0, *(v122 + 2) + 1, 1, v122);
                }

                v147 = v122;
                v114 = *(v122 + 2);
                v123 = *(v122 + 3);
                v115 = v114 + 1;
                if (v114 >= v123 >> 1)
                {
                  v147 = sub_254F45390((v123 > 1), v114 + 1, 1, v147);
                }

                (*v129)(v137, v138);
              }

              (*v149)(v157, v154);
              v63 = v173;
              (*v168)(v64, v173);
              v124 = v147;
              *(v147 + 2) = v115;
              v125 = &v124[16 * v114];
              *(v125 + 4) = v109;
              *(v125 + 5) = v111;
            }

            sub_254F4667C(v156, &qword_27F7605C8, &qword_254F49A48);
            v61 = v162;
            goto LABEL_52;
          }

          (*(v71 + 8))(v61, v70);
        }
      }

      sub_254F4903C();
      v76 = v164;
      v63 = v173;
      (*v163)(v164, v64, v173);
      v77 = sub_254F4904C();
      v78 = sub_254F493DC();
      if (!os_log_type_enabled(v77, v78))
      {

        v89 = *v168;
        (*v168)(v76, v63);
        (*v165)(v59, v166);
        v89(v64, v63);
LABEL_52:
        v62 = v174;
        goto LABEL_53;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v176 = v80;
      *v79 = v158;
      sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148]);
      v81 = sub_254F4902C();
      v83 = v82;
      v172 = v56;
      v84 = *v168;
      (*v168)(v76, v63);
      v85 = sub_254F4589C(v81, v83, &v176);

      *(v79 + 4) = v85;
      _os_log_impl(&dword_254F3C000, v77, v78, "Unable to convert eventPayload into Request event: %s", v79, 0xCu);
      sub_254F4632C(v80);
      v86 = v80;
      v60 = v160;
      v59 = v161;
      MEMORY[0x259C2F690](v86, -1, -1);
      v87 = v79;
      v61 = v162;
      MEMORY[0x259C2F690](v87, -1, -1);

      (*v165)(v59, v166);
      v88 = v159;
      v84(v159, v63);
      v56 = v172;
      v62 = v174;
      v64 = v88;
LABEL_53:
      v126 = v175;
      sub_254F4667C(v62, &qword_27F760540, &qword_254F499F8);
      v57 = v126 + v167;
      if (!--v56)
      {

        return v147;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_254F40320(uint64_t a1)
{
  v222 = sub_254F4905C();
  v228 = *(v222 - 8);
  v2 = *(v228 + 64);
  v3 = MEMORY[0x28223BE20](v222);
  v212 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v207 = &v169 - v5;
  v190 = sub_254F491EC();
  v219 = *(v190 - 8);
  v6 = *(v219 + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_254F492AC();
  v218 = *(v192 - 8);
  v8 = *(v218 + 64);
  MEMORY[0x28223BE20](v192);
  v191 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_254F491DC();
  v217 = *(v199 - 8);
  v10 = *(v217 + 64);
  MEMORY[0x28223BE20](v199);
  v198 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_254F4914C();
  v216 = *(v196 - 8);
  v12 = *(v216 + 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_254F4912C();
  v220 = *(v188 - 8);
  v14 = *(v220 + 8);
  MEMORY[0x28223BE20](v188);
  v187 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_254F4922C();
  *&v211 = *(v194 - 8);
  v16 = *(v211 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_254F3EE1C(&qword_27F760590, &qword_254F49A28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v206 = &v169 - v20;
  v21 = sub_254F3EE1C(&qword_27F760598, &qword_254F49A30);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v202 = &v169 - v23;
  v24 = sub_254F3EE1C(&qword_27F7605A0, &qword_254F49A38);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v200 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v209 = &v169 - v28;
  v210 = sub_254F4928C();
  v203 = *(v210 - 8);
  v29 = *(v203 + 64);
  v30 = MEMORY[0x28223BE20](v210);
  v213 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v214 = &v169 - v32;
  v33 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v227 = &v169 - v35;
  v36 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v226 = &v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v230 = &v169 - v40;
  v215 = sub_254F490CC();
  v201 = *(v215 - 8);
  v41 = *(v201 + 8);
  v42 = MEMORY[0x28223BE20](v215);
  v224 = &v169 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v225 = &v169 - v44;
  v208 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v45 = *(v208 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v208);
  v229 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v223 = &v169 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = (&v169 - v52);
  v54 = 0;
  v55 = a1;
  v56 = *(a1 + 16);
  v57 = MEMORY[0x277D84F90];
  while (v56 != v54)
  {
    v58 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v59 = *(v45 + 72);
    sub_254F46480(v55 + v58 + v59 * v54, v53, &qword_27F760510, &qword_254F49990);
    v60 = *v53 == 0xD000000000000017 && 0x8000000254F4A090 == v53[1];
    if (v60 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v53, v229, &qword_27F760510, &qword_254F49990);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v231 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v57 + 16) + 1, 1);
        v57 = v231;
      }

      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      v64 = (v63 + 1);
      if (v63 >= v62 >> 1)
      {
        v221 = (v63 + 1);
        v205 = v63;
        sub_254F45F38(v62 > 1, v63 + 1, 1);
        v64 = v221;
        v63 = v205;
        v57 = v231;
      }

      ++v54;
      *(v57 + 16) = v64;
      sub_254F46518(v229, v57 + v58 + v63 * v59, &qword_27F760510, &qword_254F49990);
    }

    else
    {
      sub_254F4667C(v53, &qword_27F760510, &qword_254F49990);
      ++v54;
    }
  }

  v65 = *(v57 + 16);
  if (v65)
  {
    v66 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v197 = v57;
    v67 = v57 + v66;
    v221 = v201 + 32;
    v205 = (v203 + 32);
    v170 = (v220 + 32);
    v169 = (v220 + 8);
    v204 = (v203 + 8);
    v220 = v201 + 8;
    v173 = (v219 + 32);
    v172 = (v219 + 8);
    v219 = *(v208 + 48);
    v176 = (v218 + 32);
    v175 = (v218 + 8);
    v218 = *(v45 + 72);
    v179 = (v211 + 32);
    v178 = (v211 + 8);
    LODWORD(v208) = *MEMORY[0x277D1E3E8];
    v182 = (v216 + 32);
    v181 = (v216 + 8);
    v186 = *MEMORY[0x277D1E430];
    v185 = (v217 + 32);
    v184 = (v217 + 8);
    v183 = *MEMORY[0x277D1E450];
    v203 += 16;
    v217 = v228 + 8;
    v180 = *MEMORY[0x277D1E440];
    v216 = v201 + 16;
    v177 = *MEMORY[0x277D1E448];
    *&v51 = 136315138;
    v211 = v51;
    v174 = *MEMORY[0x277D1E438];
    v171 = *MEMORY[0x277D1E428];
    v201 = MEMORY[0x277D84F90];
    v69 = v212;
    v68 = v213;
    v70 = v214;
    v71 = v215;
    v73 = v226;
    v72 = v227;
    v74 = v225;
    while (1)
    {
      v75 = v223;
      sub_254F46480(v67, v223, &qword_27F760510, &qword_254F49990);
      v76 = *(v75 + 8);

      (*v221)(v74, v75 + v219, v71);
      sub_254F4909C();
      v77 = sub_254F490EC();
      if (sub_254F45340(v72, 1, v77) == 1)
      {
        sub_254F4667C(v72, &qword_27F760538, &qword_254F499F0);
        v78 = sub_254F491FC();
        sub_254F45368(v230, 1, 1, v78);
        v79 = v224;
LABEL_23:
        v228 = v65;
        v229 = v67;
        sub_254F4903C();
        v88 = v225;
        (*v216)(v79, v225, v71);
        v89 = sub_254F4904C();
        v90 = sub_254F493DC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v231 = v92;
          *v91 = v211;
          sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148]);
          v93 = sub_254F4902C();
          v94 = v79;
          v96 = v95;
          v97 = *v220;
          (*v220)(v94, v71);
          v98 = sub_254F4589C(v93, v96, &v231);

          *(v91 + 4) = v98;
          _os_log_impl(&dword_254F3C000, v89, v90, "Unable to convert eventPayload into SystemResponseGenerated event: %s", v91, 0xCu);
          sub_254F4632C(v92);
          v99 = v92;
          v69 = v212;
          MEMORY[0x259C2F690](v99, -1, -1);
          v100 = v91;
          v70 = v214;
          MEMORY[0x259C2F690](v100, -1, -1);

          (*v217)(v69, v222);
          v97(v88, v71);
          v68 = v213;
        }

        else
        {

          v101 = *v220;
          (*v220)(v79, v71);
          (*v217)(v69, v222);
          v101(v88, v71);
        }

        v73 = v226;
        v72 = v227;
        v74 = v88;
        v65 = v228;
        v67 = v229;
        goto LABEL_27;
      }

      v80 = v230;
      sub_254F490DC();
      (*(*(v77 - 8) + 8))(v72, v77);
      v81 = sub_254F491FC();
      v82 = v80;
      v71 = v215;
      v83 = sub_254F45340(v82, 1, v81);
      v79 = v224;
      if (v83 == 1)
      {
        goto LABEL_23;
      }

      sub_254F46480(v230, v73, &qword_27F760540, &qword_254F499F8);
      v84 = *(v81 - 8);
      v85 = (*(v84 + 88))(v73, v81);
      if (v85 != v208)
      {
        (*(v84 + 8))(v73, v81);
        goto LABEL_23;
      }

      (*(v84 + 96))(v73, v81);
      (*v205)(v70, v73, v210);
      v86 = v206;
      sub_254F4927C();
      v87 = sub_254F4926C();
      if (sub_254F45340(v86, 1, v87) == 1)
      {
        sub_254F4667C(v86, &qword_27F760590, &qword_254F49A28);
LABEL_31:
        v105 = sub_254F4920C();
        sub_254F45368(v209, 1, 1, v105);
        v106 = v207;
        v107 = v210;
LABEL_32:
        sub_254F4903C();
        (*v203)(v68, v70, v107);
        v108 = sub_254F4904C();
        v109 = sub_254F493DC();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v231 = v111;
          *v110 = v211;
          sub_254F464D0(&qword_27F7605A8, MEMORY[0x277D1E498]);
          v112 = sub_254F4902C();
          v114 = v113;
          v115 = v107;
          v116 = *v204;
          (*v204)(v213, v115);
          v117 = sub_254F4589C(v112, v114, &v231);

          *(v110 + 4) = v117;
          _os_log_impl(&dword_254F3C000, v108, v109, "SystemResponseGenerated event does not contain a dialogFormat: %s", v110, 0xCu);
          sub_254F4632C(v111);
          v118 = v111;
          v69 = v212;
          MEMORY[0x259C2F690](v118, -1, -1);
          v119 = v110;
          v70 = v214;
          MEMORY[0x259C2F690](v119, -1, -1);

          (*v217)(v207, v222);
          v116(v70, v210);
          v68 = v213;
        }

        else
        {

          v120 = *v204;
          (*v204)(v68, v107);
          (*v217)(v106, v222);
          v120(v70, v107);
        }

        v74 = v225;
        v71 = v215;
        (*v220)(v225, v215);
        goto LABEL_36;
      }

      v102 = v202;
      sub_254F4925C();
      v103 = v102;
      (*(*(v87 - 8) + 8))(v86, v87);
      v104 = sub_254F491BC();
      if (sub_254F45340(v102, 1, v104) == 1)
      {
        sub_254F4667C(v102, &qword_27F760598, &qword_254F49A30);
        v70 = v214;
        goto LABEL_31;
      }

      v121 = v209;
      sub_254F491AC();
      (*(*(v104 - 8) + 8))(v103, v104);
      v122 = sub_254F4920C();
      v123 = sub_254F45340(v121, 1, v122);
      v106 = v207;
      v107 = v210;
      v70 = v214;
      if (v123 == 1)
      {
        goto LABEL_32;
      }

      v124 = v200;
      sub_254F46480(v209, v200, &qword_27F7605A0, &qword_254F49A38);
      v125 = *(v122 - 8);
      v126 = (*(v125 + 88))(v124, v122);
      if (v126 == v186)
      {
        (*(v125 + 96))(v124, v122);
        (*v185)(v198, v124, v199);
        v127 = sub_254F4906C();
        v129 = v128;
        v130 = v201;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v215;
        v229 = v129;
        if ((v131 & 1) == 0)
        {
          v130 = sub_254F45390(0, *(v130 + 2) + 1, 1, v130);
        }

        v132 = v67;
        v201 = v130;
        v134 = *(v130 + 2);
        v133 = *(v130 + 3);
        v135 = v134 + 1;
        v136 = v65;
        if (v134 >= v133 >> 1)
        {
          v201 = sub_254F45390((v133 > 1), v134 + 1, 1, v201);
        }

        (*v184)(v198, v199);
      }

      else
      {
        v71 = v215;
        if (v126 == v183)
        {
          v142 = v200;
          (*(v125 + 96))(v200, v122);
          (*v182)(v195, v142, v196);
          v229 = sub_254F4906C();
          v144 = v143;
          v145 = v201;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v145 = sub_254F45390(0, *(v145 + 2) + 1, 1, v145);
          }

          v132 = v67;
          v201 = v145;
          v147 = *(v145 + 2);
          v146 = *(v145 + 3);
          v148 = v147 + 1;
          v136 = v65;
          if (v147 >= v146 >> 1)
          {
            v201 = sub_254F45390((v146 > 1), v147 + 1, 1, v201);
          }

          (*v181)(v195, v196);
LABEL_69:
          v161 = v214;
          (*v204)(v214, v210);
          v138 = v225;
          (*v220)(v225, v71);
          v162 = v201;
          *(v201 + 2) = v148;
          v70 = v161;
          v163 = &v162[16 * v147];
          *(v163 + 4) = v229;
          *(v163 + 5) = v144;
          goto LABEL_70;
        }

        if (v126 == v180)
        {
          v149 = v200;
          (*(v125 + 96))(v200, v122);
          (*v179)(v193, v149, v194);
          v229 = sub_254F4906C();
          v144 = v150;
          v151 = v201;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_254F45390(0, *(v151 + 2) + 1, 1, v151);
          }

          v132 = v67;
          v201 = v151;
          v147 = *(v151 + 2);
          v152 = *(v151 + 3);
          v148 = v147 + 1;
          v136 = v65;
          if (v147 >= v152 >> 1)
          {
            v201 = sub_254F45390((v152 > 1), v147 + 1, 1, v201);
          }

          (*v178)(v193, v194);
          goto LABEL_69;
        }

        if (v126 == v177)
        {
          v153 = v200;
          (*(v125 + 96))(v200, v122);
          (*v176)(v191, v153, v192);
          sub_254F464D0(&qword_27F7605B8, MEMORY[0x277D1E4D0]);
          v229 = sub_254F4902C();
          v144 = v154;
          v155 = v201;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_254F45390(0, *(v155 + 2) + 1, 1, v155);
          }

          v132 = v67;
          v201 = v155;
          v147 = *(v155 + 2);
          v156 = *(v155 + 3);
          v148 = v147 + 1;
          v136 = v65;
          if (v147 >= v156 >> 1)
          {
            v201 = sub_254F45390((v156 > 1), v147 + 1, 1, v201);
          }

          (*v175)(v191, v192);
          goto LABEL_69;
        }

        if (v126 == v174)
        {
          v157 = v200;
          (*(v125 + 96))(v200, v122);
          (*v173)(v189, v157, v190);
          sub_254F464D0(&qword_27F7605B0, MEMORY[0x277D1E398]);
          v229 = sub_254F4902C();
          v144 = v158;
          v159 = v201;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = sub_254F45390(0, *(v159 + 2) + 1, 1, v159);
          }

          v132 = v67;
          v201 = v159;
          v147 = *(v159 + 2);
          v160 = *(v159 + 3);
          v148 = v147 + 1;
          v136 = v65;
          if (v147 >= v160 >> 1)
          {
            v201 = sub_254F45390((v160 > 1), v147 + 1, 1, v201);
          }

          (*v172)(v189, v190);
          goto LABEL_69;
        }

        if (v126 != v171)
        {
          (*(v125 + 8))(v200, v122);
          v106 = v207;
          v107 = v210;
          v70 = v214;
          goto LABEL_32;
        }

        v164 = v200;
        (*(v125 + 96))(v200, v122);
        (*v170)(v187, v164, v188);
        v127 = sub_254F4906C();
        v229 = v165;
        v166 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = sub_254F45390(0, *(v166 + 2) + 1, 1, v166);
        }

        v132 = v67;
        v201 = v166;
        v134 = *(v166 + 2);
        v167 = *(v166 + 3);
        v135 = v134 + 1;
        v136 = v65;
        if (v134 >= v167 >> 1)
        {
          v201 = sub_254F45390((v167 > 1), v134 + 1, 1, v201);
        }

        (*v169)(v187, v188);
      }

      v137 = v214;
      (*v204)(v214, v210);
      v138 = v225;
      (*v220)(v225, v71);
      v139 = v201;
      *(v201 + 2) = v135;
      v70 = v137;
      v140 = &v139[16 * v134];
      v141 = v229;
      *(v140 + 4) = v127;
      *(v140 + 5) = v141;
LABEL_70:
      v74 = v138;
      v65 = v136;
      v67 = v132;
LABEL_36:
      sub_254F4667C(v209, &qword_27F7605A0, &qword_254F49A38);
      v73 = v226;
      v72 = v227;
LABEL_27:
      sub_254F4667C(v230, &qword_27F760540, &qword_254F499F8);
      v67 += v218;
      if (!--v65)
      {

        return v201;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_254F41EC0(uint64_t a1)
{
  v2 = 0;
  v184 = *MEMORY[0x277D85DE8];
  v166 = sub_254F4905C();
  v176 = *(v166 - 8);
  v3 = *(v176 + 64);
  v4 = MEMORY[0x28223BE20](v166);
  v163 = v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v141 = v137 - v6;
  v7 = sub_254F4937C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v145 = v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_254F48FDC();
  v170 = *(v169 - 8);
  v10 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  v173 = v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F4929C();
  v140 = *(v12 - 8);
  v13 = *(v140 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v158 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v157 = v137 - v16;
  v144 = sub_254F4931C();
  v160 = *(v144 - 8);
  v17 = *(v160 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v137 - v21;
  v23 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v175 = v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v162 = v137 - v27;
  v28 = sub_254F490CC();
  v159 = *(v28 - 8);
  v29 = *(v159 + 8);
  v30 = MEMORY[0x28223BE20](v28);
  v148 = v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v174 = v137 - v32;
  v33 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v34 = *(v33 - 8);
  v171 = v33;
  v172 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v177 = v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v154 = v137 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = (v137 - v41);
  v43 = *(a1 + 16);
  v155 = MEMORY[0x277D84F90];
  v179 = 0;
  v165 = v12;
  v161 = v22;
  v178 = v28;
  while (v43 != v2)
  {
    v44 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v45 = *(v172 + 72);
    sub_254F46480(a1 + v44 + v45 * v2, v42, &qword_27F760510, &qword_254F49990);
    v46 = *v42 == 0xD000000000000020 && 0x8000000254F4A060 == v42[1];
    if (v46 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v42, v177, &qword_27F760510, &qword_254F49990);
      v47 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v182 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v47 + 16) + 1, 1);
        v47 = v182;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      v51 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        v168 = (v50 + 1);
        v167 = v50;
        sub_254F45F38(v49 > 1, v50 + 1, 1);
        v51 = v168;
        v50 = v167;
        v47 = v182;
      }

      ++v2;
      *(v47 + 16) = v51;
      v155 = v47;
      sub_254F46518(v177, v47 + v44 + v50 * v45, &qword_27F760510, &qword_254F49990);
      v28 = v178;
    }

    else
    {
      sub_254F4667C(v42, &qword_27F760510, &qword_254F49990);
      ++v2;
      v28 = v178;
    }
  }

  v52 = v155;
  v153 = *(v155 + 16);
  if (!v153)
  {

    v146 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v53 = 0;
  v152 = v155 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
  v151 = (v159 + 32);
  v150 = *(v171 + 48);
  v139 = (v160 + 32);
  v142 = *MEMORY[0x277D1E3F0];
  v168 = (v170 + 8);
  v167 = (v140 + 8);
  v164 = (v176 + 8);
  v138 = (v160 + 8);
  v149 = (v159 + 8);
  v146 = MEMORY[0x277D84F90];
  v147 = (v159 + 16);
  *&v40 = 136315138;
  v156 = v40;
  v54 = v141;
  v55 = v173;
  v56 = v174;
  v57 = v157;
  v58 = v175;
  v171 = v140 + 16;
  do
  {
    if (v53 >= *(v52 + 16))
    {
      __break(1u);
    }

    v59 = *(v172 + 72);
    v160 = v53;
    v60 = v154;
    sub_254F46480(v152 + v59 * v53, v154, &qword_27F760510, &qword_254F49990);
    v61 = *(v60 + 8);

    (*v151)(v56, v60 + v150, v28);
    v62 = v161;
    sub_254F4909C();
    v63 = sub_254F490EC();
    if (sub_254F45340(v62, 1, v63) == 1)
    {
      sub_254F4667C(v161, &qword_27F760538, &qword_254F499F0);
      v64 = sub_254F491FC();
      sub_254F45368(v162, 1, 1, v64);
LABEL_43:
      sub_254F4903C();
      v119 = v148;
      (*v147)(v148, v56, v28);
      v120 = sub_254F4904C();
      v121 = sub_254F493DC();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *&v182 = v123;
        *v122 = v156;
        sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148]);
        v124 = sub_254F4902C();
        v125 = v54;
        v127 = v126;
        v128 = *v149;
        (*v149)(v119, v178);
        v129 = sub_254F4589C(v124, v127, &v182);
        v54 = v125;

        *(v122 + 4) = v129;
        _os_log_impl(&dword_254F3C000, v120, v121, "Unable to convert eventPayload into ResponseGenerationRequestCreated event: %s", v122, 0xCu);
        sub_254F4632C(v123);
        v130 = v123;
        v57 = v157;
        MEMORY[0x259C2F690](v130, -1, -1);
        v131 = v122;
        v58 = v175;
        MEMORY[0x259C2F690](v131, -1, -1);

        (*v164)(v125, v166);
        v132 = v174;
        v128(v174, v178);
        v28 = v178;
        v55 = v173;
        v56 = v132;
      }

      else
      {

        v133 = *v149;
        (*v149)(v119, v28);
        (*v164)(v54, v166);
        v133(v56, v28);
        v55 = v173;
      }

      v52 = v155;
      goto LABEL_47;
    }

    v65 = v162;
    v66 = v161;
    sub_254F490DC();
    (*(*(v63 - 8) + 8))(v66, v63);
    v67 = sub_254F491FC();
    v68 = v65;
    v28 = v178;
    if (sub_254F45340(v68, 1, v67) == 1)
    {
      goto LABEL_43;
    }

    sub_254F46480(v162, v58, &qword_27F760540, &qword_254F499F8);
    v69 = *(v67 - 8);
    v70 = (*(v69 + 88))(v58, v67);
    if (v70 != v142)
    {
      (*(v69 + 8))(v58, v67);
      goto LABEL_43;
    }

    (*(v69 + 96))(v58, v67);
    (*v139)(v143, v58, v144);
    v71 = sub_254F4930C();
    v72 = *(v71 + 16);
    if (v72)
    {
      v73 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v137[1] = v71;
      v74 = v71 + v73;
      v170 = *(v140 + 72);
      v75 = *(v140 + 16);
      v76 = v165;
      v159 = v75;
      while (1)
      {
        v176 = v74;
        v177 = v72;
        v75(v57);
        sub_254F48FCC();
        sub_254F464D0(&qword_27F760580, MEMORY[0x277D1E4A8]);
        v77 = v76;
        v78 = v179;
        v79 = sub_254F4900C();
        v179 = v78;
        if (v78)
        {
          v81 = v57;
          (*v168)(v55, v169);
          v82 = v163;
          sub_254F4903C();
          v83 = v158;
          (v75)(v158, v57, v77);
          v84 = sub_254F4904C();
          v85 = sub_254F493EC();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *&v182 = v87;
            *v86 = v156;
            v88 = sub_254F4902C();
            v90 = v89;
            v91 = *v167;
            (*v167)(v83, v165);
            v92 = sub_254F4589C(v88, v90, &v182);

            *(v86 + 4) = v92;
            _os_log_impl(&dword_254F3C000, v84, v85, "Unable to get json string for statementResult: %s", v86, 0xCu);
            sub_254F4632C(v87);
            MEMORY[0x259C2F690](v87, -1, -1);
            v93 = v86;
            v55 = v173;
            MEMORY[0x259C2F690](v93, -1, -1);

            (*v164)(v163, v166);
            v91(v81, v165);
            v75 = v159;
            v76 = v165;
            v179 = 0;
            v57 = v81;
            v56 = v174;
            v58 = v175;
            v28 = v178;
          }

          else
          {

            v114 = *v167;
            (*v167)(v83, v77);
            (*v164)(v82, v166);
            v114(v81, v77);
            v179 = 0;
            v57 = v81;
            v56 = v174;
            v58 = v175;
            v28 = v178;
            v76 = v77;
          }

          goto LABEL_40;
        }

        v94 = v79;
        v95 = v80;
        (*v168)(v55, v169);
        v96 = objc_opt_self();
        v97 = sub_254F48EEC();
        v180 = 0;
        v98 = [v96 JSONObjectWithData:v97 options:0 error:&v180];

        v99 = v180;
        if (v98)
        {
          sub_254F493FC();
          swift_unknownObjectRelease();
          sub_254F4642C(&v181, &v182);
          sub_254F4643C(&v182, v183);
          v100 = sub_254F4948C();
          *&v181 = 0;
          v101 = [v96 dataWithJSONObject:v100 options:3 error:&v181];
          swift_unknownObjectRelease();
          v102 = v181;
          v56 = v174;
          if (v101)
          {
            v103 = sub_254F48EFC();
            v105 = v104;

            sub_254F4936C();
            v106 = sub_254F4935C();
            v108 = v107;
            sub_254F46378(v103, v105);
            sub_254F4632C(&v182);
            sub_254F46378(v94, v95);
            if (v108)
            {
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v57 = v157;
              v75 = v159;
              if ((v109 & 1) == 0)
              {
                v146 = sub_254F45390(0, *(v146 + 2) + 1, 1, v146);
              }

              v111 = *(v146 + 2);
              v110 = *(v146 + 3);
              if (v111 >= v110 >> 1)
              {
                v146 = sub_254F45390((v110 > 1), v111 + 1, 1, v146);
              }

              (*v167)(v57, v77);
              v112 = v146;
              *(v146 + 2) = v111 + 1;
              v76 = v77;
              v113 = &v112[16 * v111];
              *(v113 + 4) = v106;
              *(v113 + 5) = v108;
              v55 = v173;
              goto LABEL_39;
            }
          }

          else
          {
            v117 = v102;
            v118 = sub_254F48EDC();

            swift_willThrow();
            sub_254F4632C(&v182);
            sub_254F46378(v94, v95);
            v179 = 0;
          }

          v55 = v173;
        }

        else
        {
          v115 = v99;
          v116 = sub_254F48EDC();

          swift_willThrow();
          sub_254F46378(v94, v95);
          v179 = 0;
          v55 = v173;
          v56 = v174;
        }

        v57 = v157;
        v76 = v77;
        v75 = v159;
        (*v167)(v157, v77);
LABEL_39:
        v58 = v175;
LABEL_40:
        v74 = v176 + v170;
        v72 = v177 - 1;
        if (v177 == 1)
        {

          v52 = v155;
          goto LABEL_50;
        }
      }
    }

LABEL_50:
    (*v138)(v143, v144);
    (*v149)(v56, v28);
    v54 = v141;
LABEL_47:
    v134 = v160 + 1;
    sub_254F4667C(v162, &qword_27F760540, &qword_254F499F8);
    v53 = v134;
  }

  while (v134 != v153);

LABEL_52:
  v135 = *MEMORY[0x277D85DE8];
  return v146;
}

char *sub_254F43210(uint64_t a1)
{
  v2 = 0;
  v239 = *MEMORY[0x277D85DE8];
  v230 = sub_254F4905C();
  v233 = *(v230 - 8);
  v3 = *(v233 + 64);
  v4 = MEMORY[0x28223BE20](v230);
  v6 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v219 = &v178 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v178 - v9;
  v194 = sub_254F48FDC();
  v232 = *(v194 - 8);
  v11 = *(v232 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_254F4932C();
  v229 = *(v200 - 8);
  v13 = *(v229 + 64);
  v14 = MEMORY[0x28223BE20](v200);
  v188 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v178 - v16;
  v18 = sub_254F3EE1C(&qword_27F760528, &qword_254F499E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v178 - v20;
  v22 = sub_254F3EE1C(&qword_27F760530, &qword_254F499E8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v201 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v227 = &v178 - v26;
  v195 = sub_254F4919C();
  v183 = *(v195 - 8);
  v27 = *(v183 + 64);
  v28 = MEMORY[0x28223BE20](v195);
  v223 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v215 = &v178 - v30;
  v190 = sub_254F492EC();
  v226 = *(v190 - 8);
  v31 = *(v226 + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v212 = &v178 - v35;
  v36 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v211 = &v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v224 = &v178 - v40;
  v41 = sub_254F490CC();
  v222 = *(v41 - 8);
  v42 = *(v222 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v205 = &v178 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v198 = &v178 - v45;
  v231 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v228 = *(v231 - 8);
  v46 = *(v228 + 64);
  v47 = MEMORY[0x28223BE20](v231);
  v234 = &v178 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v214 = &v178 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = (&v178 - v52);
  v54 = a1;
  v55 = *(a1 + 16);
  v217 = MEMORY[0x277D84F90];
  v202 = 0;
  v216 = v6;
  v221 = v10;
  v203 = v17;
  v220 = v21;
  while (v55 != v2)
  {
    v56 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v57 = *(v228 + 72);
    sub_254F46480(v54 + v56 + v57 * v2, v53, &qword_27F760510, &qword_254F49990);
    v58 = *v53 == 0x746552736C6F6F54 && v53[1] == 0xEE00646576656972;
    if (v58 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v53, v234, &qword_27F760510, &qword_254F49990);
      v59 = v217;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v237 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v59 + 16) + 1, 1);
        v59 = v237;
      }

      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      v63 = v59;
      if (v62 >= v61 >> 1)
      {
        v210 = v41;
        sub_254F45F38(v61 > 1, v62 + 1, 1);
        v41 = v210;
        v63 = v237;
      }

      ++v2;
      *(v63 + 16) = v62 + 1;
      v217 = v63;
      sub_254F46518(v234, v63 + v56 + v62 * v57, &qword_27F760510, &qword_254F49990);
      v10 = v221;
      v21 = v220;
    }

    else
    {
      sub_254F4667C(v53, &qword_27F760510, &qword_254F49990);
      ++v2;
    }
  }

  v213 = *(v217 + 16);
  if (!v213)
  {

    result = MEMORY[0x277D84F90];
    v176 = 1;
    goto LABEL_78;
  }

  LODWORD(v234) = 0;
  v64 = 0;
  v209 = v217 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
  v208 = *(v231 + 48);
  v207 = (v222 + 32);
  v182 = (v226 + 32);
  v231 = v183 + 16;
  v187 = *MEMORY[0x277D1E3E0];
  v191 = (v229 + 32);
  v192 = (v232 + 8);
  v199 = *MEMORY[0x277D1E360];
  v196 = (v229 + 8);
  v225 = (v183 + 8);
  v186 = (v229 + 16);
  v229 = v233 + 8;
  v181 = (v226 + 8);
  v206 = (v222 + 8);
  v204 = (v222 + 16);
  v184 = MEMORY[0x277D84F90];
  *&v51 = 136315138;
  v218 = v51;
  LODWORD(v233) = 1;
  v65 = v219;
  v66 = v212;
  v67 = v211;
  v68 = v198;
  v210 = v41;
  do
  {
    if (v64 >= *(v217 + 16))
    {
      __break(1u);
    }

    v69 = *(v228 + 72);
    v222 = v64;
    v70 = v209 + v69 * v64;
    v71 = v214;
    sub_254F46480(v70, v214, &qword_27F760510, &qword_254F49990);
    v72 = *(v71 + 8);

    (*v207)(v68, v71 + v208, v41);
    sub_254F4909C();
    v73 = sub_254F490EC();
    if (sub_254F45340(v66, 1, v73) == 1)
    {
      sub_254F4667C(v66, &qword_27F760538, &qword_254F499F0);
      v74 = sub_254F491FC();
      sub_254F45368(v224, 1, 1, v74);
LABEL_69:
      sub_254F4903C();
      v161 = v205;
      v162 = v210;
      (*v204)(v205, v68, v210);
      v163 = sub_254F4904C();
      v164 = sub_254F493DC();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *&v237 = v166;
        *v165 = v218;
        sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148]);
        v167 = sub_254F4902C();
        v169 = v168;
        v170 = *v206;
        (*v206)(v161, v162);
        v171 = sub_254F4589C(v167, v169, &v237);
        v65 = v219;

        *(v165 + 4) = v171;
        _os_log_impl(&dword_254F3C000, v163, v164, "Unable to convert eventPayload into ToolsRetrieved event: %s", v165, 0xCu);
        sub_254F4632C(v166);
        v172 = v166;
        v10 = v221;
        MEMORY[0x259C2F690](v172, -1, -1);
        v173 = v165;
        v68 = v198;
        MEMORY[0x259C2F690](v173, -1, -1);

        (*v229)(v65, v230);
        v170(v68, v162);
        v21 = v220;
      }

      else
      {

        v174 = *v206;
        (*v206)(v161, v162);
        (*v229)(v65, v230);
        v174(v68, v162);
      }

      v66 = v212;
      v67 = v211;
      v41 = v162;
      goto LABEL_73;
    }

    v75 = v224;
    sub_254F490DC();
    (*(*(v73 - 8) + 8))(v66, v73);
    v76 = sub_254F491FC();
    if (sub_254F45340(v75, 1, v76) == 1)
    {
      goto LABEL_69;
    }

    sub_254F46480(v224, v67, &qword_27F760540, &qword_254F499F8);
    v77 = *(v76 - 8);
    v78 = (*(v77 + 88))(v67, v76);
    if (v78 != v187)
    {
      (*(v77 + 8))(v67, v76);
      goto LABEL_69;
    }

    (*(v77 + 96))(v67, v76);
    (*v182)(v189, v67, v190);
    sub_254F492CC();
    v80 = v79;
    v81 = sub_254F492DC();
    v82 = *(v81 + 16);
    if (v82)
    {
      v83 = (*(v183 + 80) + 32) & ~*(v183 + 80);
      v180 = v81;
      v84 = v81 + v83;
      v226 = *(v183 + 72);
      v232 = *(v183 + 16);
      v85 = v227;
      v86 = v195;
      v87 = v215;
      v88 = v216;
      while (1)
      {
        v234 = v84;
        (v232)(v87, v84, v86);
        sub_254F4918C();
        v89 = sub_254F4917C();
        v90 = sub_254F45340(v21, 1, v89);
        v233 = v82;
        if (v90 == 1)
        {
          break;
        }

        sub_254F4916C();
        (*(*(v89 - 8) + 8))(v21, v89);
        v92 = sub_254F4915C();
        if (sub_254F45340(v85, 1, v92) == 1)
        {
          goto LABEL_32;
        }

        v93 = v85;
        v94 = v201;
        sub_254F46480(v93, v201, &qword_27F760530, &qword_254F499E8);
        v95 = *(v92 - 8);
        v96 = (*(v95 + 88))(v94, v92);
        if (v96 != v199)
        {
          (*(v95 + 8))(v94, v92);
LABEL_32:
          sub_254F4903C();
          v114 = v223;
          (v232)(v223, v87, v86);
          v115 = sub_254F4904C();
          v116 = sub_254F493DC();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = v114;
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            *&v237 = v119;
            *v118 = v218;
            sub_254F464D0(&qword_27F760550, MEMORY[0x277D1E370]);
            v120 = sub_254F4902C();
            v122 = v121;
            v123 = *v225;
            v124 = v117;
            v87 = v215;
            (*v225)(v124, v86);
            v125 = sub_254F4589C(v120, v122, &v237);
            v65 = v219;

            *(v118 + 4) = v125;
            _os_log_impl(&dword_254F3C000, v115, v116, "ToolsRetrieved event does not contain a implementation defiintion: %s", v118, 0xCu);
            sub_254F4632C(v119);
            v126 = v119;
            v10 = v221;
            MEMORY[0x259C2F690](v126, -1, -1);
            MEMORY[0x259C2F690](v118, -1, -1);

            (*v229)(v10, v230);
            v123(v87, v86);
            v21 = v220;
            v88 = v216;
          }

          else
          {

            v127 = *v225;
            (*v225)(v114, v86);
            (*v229)(v10, v230);
            v127(v87, v86);
          }

          goto LABEL_35;
        }

        (*(v95 + 96))(v94, v92);
        (*v191)(v203, v94, v200);
        v97 = v193;
        sub_254F48FCC();
        sub_254F464D0(&qword_27F760558, MEMORY[0x277D72898]);
        v98 = v202;
        v99 = sub_254F4900C();
        if (v98)
        {
          (*v192)(v97, v194);
          v197 = v98;
        }

        else
        {
          v202 = 0;
          v130 = v99;
          v131 = v100;
          v132 = v97;
          v133 = v130;
          (*v192)(v132, v194);
          v134 = objc_opt_self();
          v185 = v131;
          v135 = sub_254F48EEC();
          *&v237 = 0;
          v136 = [v134 JSONObjectWithData:v135 options:0 error:&v237];

          if (v136)
          {
            v137 = v133;
            v138 = v237;
            sub_254F493FC();
            swift_unknownObjectRelease();
            sub_254F3EE1C(&qword_27F760560, &qword_254F49A00);
            if (swift_dynamicCast())
            {
              v139 = v235;
              if (v235[2] && (v140 = sub_254F45E0C(25705, 0xE200000000000000), (v141 & 1) != 0) && (sub_254F463D0(v139[7] + 32 * v140, &v237), (swift_dynamicCast() & 1) != 0))
              {
                v197 = v235;
                v179 = v236;
              }

              else
              {
                v197 = 0;
                v179 = 0;
              }

              if (v139[2] && (v144 = sub_254F45E0C(1701667182, 0xE400000000000000), (v145 & 1) != 0) && (sub_254F463D0(v139[7] + 32 * v144, &v237), (swift_dynamicCast() & 1) != 0))
              {
                v146 = v235;
                v147 = v236;
              }

              else
              {
                v146 = 0;
                v147 = 0;
              }

              if (v139[2] && (v148 = sub_254F45E0C(0x657079546C6F6F74, 0xE800000000000000), (v149 & 1) != 0))
              {
                sub_254F463D0(v139[7] + 32 * v148, &v237);
              }

              else
              {
                v237 = 0u;
                v238 = 0u;
              }

              if (*(&v238 + 1))
              {
                v150 = swift_dynamicCast();
                v151 = v184;
                if (v150)
                {
                  v153 = v235;
                  v152 = v236;
                }

                else
                {
                  v153 = 0;
                  v152 = 0;
                }
              }

              else
              {
                sub_254F4667C(&v237, &qword_27F760568, &qword_254F49A08);
                v153 = 0;
                v152 = 0;
                v151 = v184;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v151 = sub_254F45498(0, *(v151 + 2) + 1, 1, v151);
              }

              v184 = v151;
              v155 = *(v151 + 2);
              v154 = *(v151 + 3);
              v156 = v82;
              if (v155 >= v154 >> 1)
              {
                v184 = sub_254F45498((v154 > 1), v155 + 1, 1, v184);
              }

              sub_254F46378(v137, v185);
              (*v196)(v203, v200);
              v157 = v195;
              (*v225)(v87, v195);
              v158 = v184;
              *(v184 + 2) = v155 + 1;
              v159 = &v158[48 * v155];
              v160 = v179;
              *(v159 + 4) = v197;
              *(v159 + 5) = v160;
              *(v159 + 6) = v146;
              *(v159 + 7) = v147;
              *(v159 + 8) = v153;
              *(v159 + 9) = v152;
              v86 = v157;
              v88 = v216;
              v65 = v219;
              v10 = v221;
              v21 = v220;
              v85 = v227;
              v82 = v156;
            }

            else
            {
              sub_254F46378(v133, v185);
              (*v196)(v203, v200);
              v86 = v195;
              (*v225)(v87, v195);
              v85 = v227;
            }

            goto LABEL_36;
          }

          v142 = v237;
          v143 = sub_254F48EDC();

          v197 = v143;
          swift_willThrow();
          sub_254F46378(v133, v185);
        }

        v202 = 0;
        v101 = v188;
        sub_254F4903C();
        v102 = v203;
        v103 = v200;
        (*v186)(v101, v203, v200);
        v104 = sub_254F4904C();
        v105 = sub_254F493EC();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = v101;
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v237 = v108;
          *v107 = v218;
          v185 = sub_254F4902C();
          v110 = v109;
          v111 = *v196;
          (*v196)(v106, v103);
          v112 = sub_254F4589C(v185, v110, &v237);

          *(v107 + 4) = v112;
          _os_log_impl(&dword_254F3C000, v104, v105, "Unable to get jsonData tool implementation defintion: %s", v107, 0xCu);
          sub_254F4632C(v108);
          v113 = v108;
          v65 = v219;
          MEMORY[0x259C2F690](v113, -1, -1);
          MEMORY[0x259C2F690](v107, -1, -1);

          (*v229)(v88, v230);
          v111(v203, v103);
        }

        else
        {

          v129 = *v196;
          (*v196)(v101, v103);
          (*v229)(v88, v230);
          v129(v102, v103);
        }

        v86 = v195;
        (*v225)(v87, v195);
        v10 = v221;
        v21 = v220;
LABEL_35:
        v85 = v227;
        v82 = v233;
LABEL_36:
        v128 = v234;
        sub_254F4667C(v85, &qword_27F760530, &qword_254F499E8);
        v84 = v128 + v226;
        if (!--v82)
        {

          v66 = v212;
          v67 = v211;
          v68 = v198;
          goto LABEL_76;
        }
      }

      sub_254F4667C(v21, &qword_27F760528, &qword_254F499E0);
      v91 = sub_254F4915C();
      sub_254F45368(v85, 1, 1, v91);
      goto LABEL_32;
    }

LABEL_76:
    LODWORD(v234) = v80;
    (*v181)(v189, v190);
    v41 = v210;
    (*v206)(v68, v210);
    LODWORD(v233) = 0;
LABEL_73:
    v64 = v222 + 1;
    sub_254F4667C(v224, &qword_27F760540, &qword_254F499F8);
  }

  while (v64 != v213);

  result = v184;
  v176 = v233;
LABEL_78:
  LOBYTE(v237) = v176 & 1;
  v177 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254F44CB8(void *a1, uint64_t a2)
{
  v4 = sub_254F4905C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 eventBody])
  {
    v9 = swift_beginAccess();
    MEMORY[0x259C2F180](v9);
    sub_254F452F0(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_254F493CC();
    return swift_endAccess();
  }

  else
  {
    sub_254F4903C();
    v11 = sub_254F4904C();
    v12 = sub_254F493EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_254F3C000, v11, v12, "Receiving SageTranscriptEvent Biome events with no eventBody", v13, 2u);
      MEMORY[0x259C2F690](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_254F44E6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t TranscriptContextBuilder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TranscriptContextBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = sub_254F46764();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_254F44F24@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_254F48F4C();
  v2 = sub_254F46730(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254F46744();
  v9 = v8 - v7;
  v10 = sub_254F48FAC();
  v11 = sub_254F46730(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_254F46744();
  v18 = v17 - v16;
  v19 = sub_254F48FBC();
  v20 = sub_254F46730(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_254F46744();
  v27 = v26 - v25;
  v28 = sub_254F3EE1C(&qword_27F7605F0, &qword_254F49A58);
  v29 = sub_254F46774(v28);
  v31 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v33 = &v35 - v32;
  sub_254F48F9C();
  (*(v13 + 104))(v18, *MEMORY[0x277CC99A0], v10);
  sub_254F48F3C();
  sub_254F48F8C();
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
  (*(v22 + 8))(v27, v19);
  result = sub_254F45340(v33, 1, v1);
  if (result != 1)
  {
    return (*(v4 + 32))(v36, v33, v1);
  }

  __break(1u);
  return result;
}

id sub_254F451B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_254F48F4C();
  v13 = 0;
  if (sub_254F45340(a1, 1, v12) != 1)
  {
    v13 = sub_254F48F1C();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_254F45340(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_254F48F1C();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_254F452F0(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_254F4531C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

char *sub_254F45390(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F3EE1C(&qword_27F760588, &qword_254F49A20);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_254F45498(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F3EE1C(&qword_27F760570, &qword_254F49A10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_254F455B0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_254F456A8(v8, v7);
  v10 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254F457B0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_254F456A8(uint64_t a1, uint64_t a2)
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

  sub_254F3EE1C(&qword_27F7605E8, &qword_254F49A50);
  v4 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254F457B0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_254F3EE1C(&qword_27F760510, &qword_254F49990), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_254F4589C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254F45960(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_254F463D0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_254F4632C(v11);
  return v7;
}

unint64_t sub_254F45960(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254F45A60(a5, a6);
    *a1 = v9;
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
    result = sub_254F4942C();
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

uint64_t sub_254F45A60(uint64_t a1, unint64_t a2)
{
  v4 = sub_254F45AAC(a1, a2);
  sub_254F45BC4(&unk_286728AA8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_254F45AAC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_254F4939C())
  {
    result = sub_254F45CA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_254F4940C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_254F4942C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_254F45BC4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_254F45D18(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254F45CA8(uint64_t a1, uint64_t a2)
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

  sub_254F3EE1C(&qword_27F760578, &qword_254F49A18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_254F45D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F3EE1C(&qword_27F760578, &qword_254F49A18);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_254F45E0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_254F494EC();
  sub_254F4938C();
  v6 = sub_254F4950C();

  return sub_254F45E84(a1, a2, v6);
}

unint64_t sub_254F45E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_254F4949C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

size_t sub_254F45F38(size_t a1, int64_t a2, char a3)
{
  result = sub_254F45F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254F45F58(void *a1, int64_t a2, char a3)
{
  result = sub_254F46144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_254F45F78(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_254F3EE1C(&qword_27F7605E8, &qword_254F49A50);
  v10 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_254F457B0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_254F46144(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_254F3EE1C(&qword_27F760518, &qword_254F499D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_254F46274(void *a1)
{
  v1 = [a1 eventType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F4934C();

  return v3;
}

uint64_t sub_254F4632C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_254F46378(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_254F463D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_254F4642C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_254F4643C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_254F46480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254F46780(a1, a2, a3, a4);
  sub_254F46754(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_254F464D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254F46518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254F46780(a1, a2, a3, a4);
  sub_254F46754(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_254F46568(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F48EFC();

  return v3;
}

uint64_t sub_254F465CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_254F46624()
{
  result = qword_27F760600;
  if (!qword_27F760600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F760600);
  }

  return result;
}

uint64_t sub_254F46668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254F46378(a1, a2);
  }

  return a1;
}

uint64_t sub_254F4667C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254F3EE1C(a2, a3);
  sub_254F46754(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_254F466D4()
{
  v1 = *(v0 + 16);

  v2 = sub_254F46764();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_254F46704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254F46780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_254F3EE1C(a3, a4);
}

void __swiftcall RetrievedTool.init(id:name:toolType:)(IntelligenceFlowFeedbackDataCollector::RetrievedTool *__return_ptr retstr, Swift::String_optional id, Swift::String_optional name, Swift::String_optional toolType)
{
  retstr->id = id;
  retstr->name = name;
  retstr->toolType = toolType;
}

unint64_t sub_254F467B0(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001ELL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD00000000000002ALL;
}

uint64_t TranscriptContext.toolRetrievalConfidence.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t TranscriptContext.toolRetrievalOutputs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t DeviceContext.toDict()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_254F3EE1C(&qword_27F760610, &unk_254F49AC0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_254F49A80;
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x656C61636F6CLL;
  *(inited + 40) = 0xE600000000000000;
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v1)
  {
    v12 = v1;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 72) = v10;
  *(inited + 80) = 0x6E49737465737361;
  *(inited + 88) = 0xEA00000000006F66;
  *(inited + 120) = sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);

  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = sub_254F4933C();
  }

  v9[12] = v13;
  v9[16] = 0x6F6973726556736FLL;
  v9[17] = 0xE90000000000006ELL;
  if (v5)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v9[18] = v14;
  v9[19] = v16;
  v9[21] = v10;
  v9[22] = 0x7954656369766564;
  v9[27] = v10;
  if (v7)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  if (v7)
  {
    v15 = v7;
  }

  v9[23] = 0xEA00000000006570;
  v9[24] = v17;
  v9[25] = v15;

  return sub_254F4933C();
}

uint64_t RetrievedTool.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254F48E20();
}

uint64_t RetrievedTool.id.setter()
{
  sub_254F48DFC();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RetrievedTool.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_254F48E20();
}

uint64_t RetrievedTool.name.setter()
{
  sub_254F48DFC();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t RetrievedTool.toolType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_254F48E20();
}

uint64_t RetrievedTool.toolType.setter()
{
  sub_254F48DFC();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t RetrievedTool.toDict()()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_254F3EE1C(&qword_27F760618, &qword_254F49AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F49A90;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  sub_254F48E80();
  v12[12] = v14;
  v12[13] = 0xE800000000000000;
  if (v5)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  if (v5)
  {
    v13 = v5;
  }

  v12[14] = v15;
  v12[15] = v13;

  return sub_254F4933C();
}

uint64_t FeedbackDataView.OriginalContent.userUtterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254F48E20();
}

uint64_t FeedbackDataView.OriginalContent.userUtterance.setter()
{
  sub_254F48DFC();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FeedbackDataView.OriginalContent.toDict()()
{
  v2 = *v0;
  v1 = v0[1];
  sub_254F3EE1C(&qword_27F760618, &qword_254F49AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F49AA0;
  strcpy((inited + 32), "userUtterance");
  *(inited + 46) = -4864;
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v1)
  {
    v5 = v1;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;

  return sub_254F4933C();
}

uint64_t FeedbackDataView.GeneratedContent.rgInputPayload.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.finalResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_254F48E20();
}

uint64_t FeedbackDataView.GeneratedContent.finalResponse.setter()
{
  sub_254F48DFC();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.toolRetrievalConfidence.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.init(rgInputPayload:finalResponse:toolRetrievalOutputs:toolRetrievalConfidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.toDict()()
{
  v1 = *v0;
  v41 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 8);
  v5 = *(v0 + 36);
  v6 = MEMORY[0x277D837D0];
  if (v2)
  {
    v7 = *(v2 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v35 = *(v0 + 36);
      v36 = *(v0 + 8);
      v37 = v0[2];
      v38 = v1;
      *&v39 = MEMORY[0x277D84F90];
      sub_254F45F58(0, v7, 0);
      v8 = v39;
      v9 = (v2 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v13 = v9[1];
        v12 = v9[2];
        v15 = v9[3];
        v14 = v9[4];
        sub_254F3EE1C(&qword_27F760618, &qword_254F49AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_254F49A90;
        *(inited + 32) = 25705;
        if (v10)
        {
          v17 = v11;
        }

        else
        {
          v17 = 0;
        }

        if (v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = 0xE000000000000000;
        }

        *(inited + 40) = 0xE200000000000000;
        *(inited + 48) = v17;
        *(inited + 56) = v18;
        *(inited + 64) = 1701667182;
        if (v12)
        {
          v19 = v13;
        }

        else
        {
          v19 = 0;
        }

        *(inited + 72) = 0xE400000000000000;
        *(inited + 80) = v19;
        sub_254F48E80();
        v20[11] = v23;
        v20[12] = v22;
        if (v14)
        {
          v24 = v15;
        }

        else
        {
          v24 = 0;
        }

        if (v14)
        {
          v25 = v14;
        }

        else
        {
          v25 = v21;
        }

        v20[13] = 0xE800000000000000;
        v20[14] = v24;
        v20[15] = v25;

        v26 = sub_254F4933C();
        *&v39 = v8;
        v28 = *(v8 + 16);
        v27 = *(v8 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_254F45F58((v27 > 1), v28 + 1, 1);
          v8 = v39;
        }

        v9 += 6;
        *(v8 + 16) = v28 + 1;
        *(v8 + 8 * v28 + 32) = v26;
        --v7;
      }

      while (v7);
      v1 = v38;
      v3 = v37;
      v5 = v35;
      v4 = v36;
    }

    v6 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  sub_254F3EE1C(&qword_27F760610, &unk_254F49AC0);
  v29 = swift_initStackObject();
  v30 = v29;
  *(v29 + 16) = xmmword_254F49A80;
  strcpy((v29 + 32), "finalResponse");
  *(v29 + 46) = -4864;
  if (v3)
  {
    v31 = v41;
  }

  else
  {
    v31 = 0;
  }

  if (v3)
  {
    v32 = v3;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  *(v29 + 48) = v31;
  *(v29 + 56) = v32;
  *(v29 + 72) = v6;
  strcpy((v29 + 80), "rgInputPayload");
  *(v29 + 95) = -18;
  if (v1)
  {
    v40 = sub_254F3EE1C(&qword_27F760630, &qword_254F49AE8);
    *&v39 = v1;
    sub_254F4642C(&v39, (v30 + 96));
  }

  else
  {
    *(v29 + 120) = v6;
    *(v29 + 96) = 0;
    *(v29 + 104) = 0xE000000000000000;
  }

  *(v30 + 128) = 0xD000000000000014;
  *(v30 + 136) = 0x8000000254F4A0E0;
  v33 = sub_254F3EE1C(&qword_27F760620, &qword_254F49AD8);
  *(v30 + 144) = v8;
  *(v30 + 168) = v33;
  *(v30 + 176) = 0xD000000000000017;
  *(v30 + 184) = 0x8000000254F4A100;
  *(v30 + 216) = sub_254F3EE1C(&qword_27F760628, &qword_254F49AE0);
  *(v30 + 192) = v4;
  *(v30 + 196) = v5;

  return sub_254F4933C();
}

uint64_t FeedbackDataView.AdditionalDiagnostics.locale.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254F48E20();
}

uint64_t FeedbackDataView.AdditionalDiagnostics.locale.setter()
{
  sub_254F48DFC();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FeedbackDataView.AdditionalDiagnostics.assetsInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t FeedbackDataView.AdditionalDiagnostics.osVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_254F48E20();
}

uint64_t FeedbackDataView.AdditionalDiagnostics.osVersion.setter()
{
  sub_254F48DFC();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t FeedbackDataView.AdditionalDiagnostics.deviceType.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_254F48E20();
}

uint64_t FeedbackDataView.AdditionalDiagnostics.deviceType.setter()
{
  sub_254F48DFC();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackDataView.AdditionalDiagnostics.JSON()()
{
  v2 = sub_254F4937C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v22 = v0[2];
  v6 = *(v0 + 6);
  v7 = sub_254F48ECC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_254F48EBC();
  v11 = *v0;
  *&v22[5] = v0[1];
  *&v22[3] = v11;
  *&v22[7] = *v22;
  v22[9] = v6;
  sub_254F4832C();
  v12 = sub_254F48EAC();
  v14 = v13;

  if (!v1)
  {
    sub_254F4936C();
    v15 = sub_254F4935C();
    if (v16)
    {
      v5 = v15;
      v10 = v16;
    }

    else
    {
      v19 = sub_254F48380();
      sub_254F48E94(&unk_286728F88, v19);
      *v20 = 2;
      swift_willThrow();
    }

    sub_254F46378(v12, v14);
  }

  v17 = v5;
  v18 = v10;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_254F476BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_254F4949C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49737465737361 && a2 == 0xEA00000000006F66;
    if (v6 || (sub_254F4949C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_254F4949C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F4949C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_254F4782C(unsigned __int8 a1)
{
  sub_254F494EC();
  MEMORY[0x259C2F2D0](a1);
  return sub_254F4950C();
}

uint64_t sub_254F47880(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E49737465737361;
      break;
    case 2:
      result = 0x6F6973726556736FLL;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F47948()
{
  v1 = *v0;
  sub_254F494EC();
  MEMORY[0x259C2F2D0](v1);
  return sub_254F4950C();
}

uint64_t sub_254F47994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F476BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F479DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F47824();
  *a1 = result;
  return result;
}

uint64_t sub_254F47A04(uint64_t a1)
{
  v2 = sub_254F483D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F47A40(uint64_t a1)
{
  v2 = sub_254F483D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedbackDataView.AdditionalDiagnostics.encode(to:)(void *a1)
{
  v4 = sub_254F3EE1C(&qword_27F760648, &qword_254F49AF0);
  v5 = sub_254F48E40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v19 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v19[4] = v1[3];
  v20 = v14;
  v15 = v1[4];
  v19[2] = v1[5];
  v19[3] = v15;
  v19[1] = v1[6];
  v16 = a1[4];
  sub_254F4643C(a1, a1[3]);
  sub_254F483D4();
  sub_254F4952C();
  v26 = 0;
  v17 = v21;
  sub_254F4946C();
  if (!v17)
  {
    v22 = v20;
    v25 = 1;
    sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);
    sub_254F48470(&qword_27F760658);
    sub_254F4947C();
    v24 = 2;
    sub_254F4946C();
    v23 = 3;
    sub_254F4946C();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t FeedbackDataView.AdditionalDiagnostics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_254F3EE1C(&qword_27F760660, &qword_254F49AF8);
  v7 = sub_254F48E40(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v30 - v12;
  v14 = a1[4];
  sub_254F4643C(a1, a1[3]);
  sub_254F483D4();
  sub_254F4951C();
  if (!v2)
  {
    v38 = 0;
    v16 = sub_254F48E64(&v38);
    v18 = v17;
    sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);
    v37[1] = 1;
    sub_254F48470(&qword_27F760668);
    sub_254F4945C();
    v33 = v16;
    v34 = a2;
    v19 = v35;
    v37[0] = 2;
    v20 = sub_254F48E64(v37);
    v22 = v21;
    v32 = v20;
    v36 = 3;
    v23 = sub_254F48E64(&v36);
    v25 = v24;
    v26 = *(v9 + 8);
    v31 = v23;
    v26(v13, v3);
    v27 = v34;
    *v34 = v33;
    v27[1] = v18;
    v28 = v31;
    v29 = v32;
    v27[2] = v19;
    v27[3] = v29;
    v27[4] = v22;
    v27[5] = v28;
    v27[6] = v25;
  }

  sub_254F4632C(a1);
}

uint64_t FeedbackDataView.__allocating_init(clientRequestId:)()
{
  sub_254F48DFC();
  v2 = swift_allocObject();
  FeedbackDataView.init(clientRequestId:)(v1, v0);
  return v2;
}

void *FeedbackDataView.init(clientRequestId:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = xmmword_254F49AB0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  type metadata accessor for TranscriptContextBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x277D84F90];
  sub_254F3D818();
  TranscriptContextBuilder.getTranscriptContext(clientRequestId:)(a1, a2, &v27);

  swift_setDeallocating();
  v7 = *(inited + 16);

  v8 = v30;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = v3[7];
  v15 = v3[8];
  v16 = v28;
  *(v3 + 1) = v27;
  *(v3 + 2) = v16;
  *(v3 + 3) = v29;
  v3[8] = v8;
  sub_254F484DC(v9, v10);
  type metadata accessor for DeviceContextBuilder();
  swift_initStackObject();
  DeviceContextBuilder.getCurrentDeviceContext()(&v27);
  v17 = v3[9];
  v18 = v3[10];
  v19 = v28;
  *(v3 + 9) = v27;
  v20 = v30;
  v21 = v3[11];
  v22 = v3[12];
  v23 = v3[13];
  v24 = v3[14];
  v25 = v3[15];
  *(v3 + 11) = v19;
  *(v3 + 13) = v29;
  v3[15] = v20;
  sub_254F484DC(v17, v18);
  return v3;
}

IntelligenceFlowFeedbackDataCollector::FeedbackDataView::OriginalContent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackDataView.originalContent()()
{
  v2 = *(v1 + 24);
  if (v2 == 1)
  {
    v3 = sub_254F48380();
    sub_254F48E94(&unk_286728F88, v3);
    *v4 = 0;
    v5 = swift_willThrow();
  }

  else
  {
    *v0 = *(v1 + 16);
    v0[1] = v2;
  }

  result.userUtterance.value._object = v6;
  result.userUtterance.value._countAndFlagsBits = v5;
  return result;
}

uint64_t FeedbackDataView.generatedContent()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = sub_254F48380();
    sub_254F48E94(&unk_286728F88, v2);
    *v3 = 0;
    return swift_willThrow();
  }

  else
  {
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v7 = *(v1 + 48);
    *a1 = *(v1 + 32);
    *(a1 + 16) = v7;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    *(a1 + 36) = BYTE4(v6) & 1;
  }
}

uint64_t FeedbackDataView.additionalDiagnostics()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  if (v2 == 1)
  {
    v3 = sub_254F48380();
    sub_254F48E94(&unk_286728F88, v3);
    *v4 = 1;
    return swift_willThrow();
  }

  else
  {
    v6 = *(v1 + 120);
    *a1 = *(v1 + 72);
    *(a1 + 8) = v2;
    v7 = *(v1 + 104);
    *(a1 + 16) = *(v1 + 88);
    *(a1 + 32) = v7;
    *(a1 + 48) = v6;
  }
}

uint64_t *FeedbackDataView.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  sub_254F484DC(v0[2], v0[3]);
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[15];
  sub_254F484DC(v0[9], v0[10]);
  return v0;
}

uint64_t FeedbackDataView.__deallocating_deinit()
{
  FeedbackDataView.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

unint64_t sub_254F4832C()
{
  result = qword_27F760638;
  if (!qword_27F760638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760638);
  }

  return result;
}

unint64_t sub_254F48380()
{
  result = qword_27F760640;
  if (!qword_27F760640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760640);
  }

  return result;
}

unint64_t sub_254F483D4()
{
  result = qword_27F760650;
  if (!qword_27F760650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760650);
  }

  return result;
}

uint64_t sub_254F48428(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_254F48470(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_254F48428(&qword_27F760520, &qword_254F499D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254F484DC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 sub_254F48544(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 sub_254F48580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_254F48594(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F485E8(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_254F486A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254F486B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F48704(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_254F48760(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254F48774(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F487C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_254F48830(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F48884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackDataView.AdditionalDiagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeedbackDataView.AdditionalDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x254F48A54);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F48A9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_254F48B24(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x254F48BF0);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254F48C28()
{
  result = qword_27F760670;
  if (!qword_27F760670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760670);
  }

  return result;
}

unint64_t sub_254F48C80()
{
  result = qword_27F760678;
  if (!qword_27F760678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760678);
  }

  return result;
}

unint64_t sub_254F48CD8()
{
  result = qword_27F760680;
  if (!qword_27F760680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760680);
  }

  return result;
}

unint64_t sub_254F48D30()
{
  result = qword_27F760688;
  if (!qword_27F760688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760688);
  }

  return result;
}

uint64_t sub_254F48E64(uint64_t a1)
{

  return MEMORY[0x2821FD988](a1, v1);
}

uint64_t sub_254F48E94(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE7E0](a1, a2, 0, 0);
}