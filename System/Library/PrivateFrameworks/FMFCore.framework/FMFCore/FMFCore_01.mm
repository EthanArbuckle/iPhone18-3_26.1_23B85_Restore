uint64_t FMFDevice.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40740, &qword_24A4BB360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v15 = *(v1 + 32);
  v11 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A385340();
  sub_24A4AC3D0();
  v18 = 0;
  v12 = v14[3];
  sub_24A4AC1B0();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_24A4AC1B0();
  v16 = 2;
  sub_24A4AC1C0();
  return (*(v4 + 8))(v7, v3);
}

void sub_24A38E7B8()
{
  type metadata accessor for FMDemoManager();
  v4 = 0;
  v0 = 0;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v1 = objc_opt_self();
    v2 = sub_24A4AB820();
    v3 = sub_24A4AB820();
    v0 = [v1 BOOLForKey:v2 inDomain:v3];
  }

  byte_27EF40928 = v0;
}

unint64_t sub_24A38E880()
{
  result = qword_27EF3FE08;
  if (!qword_27EF3FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE08);
  }

  return result;
}

id static FMDemoManager.hasDemoModeAsset(for:)(unsigned __int8 *a1)
{
  v2 = sub_24A4AA9D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  static FMDemoManager.assetURL(for:)(&v12);
  if (qword_27EF3EC38 != -1)
  {
    swift_once();
  }

  v7 = qword_27EF40930;
  sub_24A4AA9B0();
  v8 = sub_24A4AB820();

  v9 = [v7 fileExistsAtPath_];

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t static FMDemoManager.assetURL(for:)(unsigned __int8 *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = sub_24A4AA9D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  if (qword_27EF3EC40 != -1)
  {
    swift_once();
  }

  v11 = sub_24A378E18(v2, qword_27EF40938);
  sub_24A39990C(v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A3D9248(v5);
    sub_24A3D92B0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_24A4AA990();

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_24A38EC94()
{
  v0 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20]();
  v4 = &v12 - v3;
  sub_24A378DB4(v2, qword_27EF40938);
  v5 = sub_24A378E18(v0, qword_27EF40938);
  if (qword_27EF3EC38 != -1)
  {
    swift_once();
  }

  v6 = qword_27EF40930;
  v7 = sub_24A4AB820();
  v8 = [v6 containerURLForSecurityApplicationGroupIdentifier_];

  if (v8)
  {
    sub_24A4AA9A0();

    v9 = sub_24A4AA9D0();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  }

  else
  {
    v10 = sub_24A4AA9D0();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  return sub_24A3996FC(v4, v5);
}

id sub_24A38EE54()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  qword_27EF40930 = result;
  return result;
}

uint64_t sub_24A38EE88(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A43D990;

  return v7(a1);
}

uint64_t sub_24A38EF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A35A8;

  return sub_24A38F034(a1, v4, v5, v6);
}

uint64_t sub_24A38F034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_24A4AAF50();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = *(*(sub_24A3C9CEC(&qword_27EF40298, &unk_24A4B9F70) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = sub_24A4AAF10();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A38F188, 0, 0);
}

uint64_t sub_24A38F188()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[20] = *(Strong + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlSession);
    v3 = Strong;

    v4 = *(MEMORY[0x277D093A0] + 4);
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_24A38F2A8;

    return MEMORY[0x28215FAC0]();
  }

  else
  {
    v6 = v0[19];
    v7 = v0[15];
    v8 = v0[16];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24A38F2A8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24A38F3C8, 0, 0);
}

uint64_t sub_24A38F3C8()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream);
    *(Strong + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream) = v0[22];
    v4 = Strong;
  }

  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[12];
  sub_24A4AAF20();
  swift_beginAccess();
  v8 = sub_24A38D32C(&unk_27EF402A0, MEMORY[0x277D091D8]);
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_24A38F514;
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[17];

  return MEMORY[0x282200308](v12, v13, v8);
}

uint64_t sub_24A38F514()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24A42AC94;
  }

  else
  {
    v3 = sub_24A38F628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A38F644()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    (*(v0[18] + 8))(v0[19], v0[17]);

LABEL_8:
    v26 = v0[19];
    v27 = v0[15];
    v28 = v0[16];

    v29 = v0[1];

    return v29();
  }

  v5 = v0[12];
  (*(v3 + 32))(v0[15], v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v19 = v0[22];
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    goto LABEL_8;
  }

  v7 = Strong;
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = sub_24A4AAF40();
  v12 = *&v7[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences];
  *&v7[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences] = v11;

  sub_24A38F8A0();
  sub_24A39FD18();

  (*(v9 + 8))(v8, v10);
  v13 = sub_24A38D32C(&unk_27EF402A0, MEMORY[0x277D091D8]);
  v14 = *(MEMORY[0x277D856D0] + 4);
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_24A38F514;
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[17];

  return MEMORY[0x282200308](v17, v18, v13);
}

uint64_t sub_24A38F8A0()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v178 = *(v1 - 8);
  v2 = *(v178 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v153 = (&v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v155 = (&v152 - v6);
  v7 = MEMORY[0x28223BE20](v5);
  v154 = (&v152 - v8);
  MEMORY[0x28223BE20](v7);
  v152 = (&v152 - v9);
  v10 = sub_24A4AAEF0();
  v157 = *(v10 - 8);
  v11 = *(v157 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v152 - v15;
  v17 = sub_24A4AB1B0();
  v179 = *(v17 - 8);
  v180 = v17;
  v18 = *(v179 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v177 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v163 = &v152 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v152 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v164 = &v152 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v152 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v165 = &v152 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v159 = &v152 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v166 = &v152 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v152 - v37;
  v39 = sub_24A4AA700();
  v181[3] = v39;
  v181[4] = sub_24A38D32C(&qword_27EF40910, MEMORY[0x277D08A28]);
  v40 = sub_24A38D3BC(v181);
  (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D089F8], v39);
  LOBYTE(v39) = sub_24A4AA6C0();
  result = sub_24A37EEE0(v181);
  if (v39)
  {
    v174 = v30;
    v169 = v25;
    v158 = v0;
    v156 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences;
    v42 = *(*(v0 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences) + 16);

    v172 = v42;
    if (v42)
    {
      v43 = 0;
      v170 = (v179 + 16);
      LODWORD(v176) = *MEMORY[0x277D091C8];
      v175 = (v157 + 104);
      v44 = (v157 + 8);
      v168 = v179 + 8;
      v162 = (v179 + 32);
      v167 = MEMORY[0x277D84F90];
      v171 = result;
      while (v43 < *(result + 16))
      {
        v173 = (*(v179 + 80) + 32) & ~*(v179 + 80);
        v45 = *(v179 + 72);
        (*(v179 + 16))(v38, result + v173 + v45 * v43, v180);
        sub_24A4AB070();
        v46 = *v175;
        (*v175)(v14, v176, v10);
        v47 = sub_24A4AAEE0();
        v48 = v38;
        v49 = *v44;
        (*v44)(v14, v10);
        v49(v16, v10);
        if (v47 & 1) != 0 && (sub_24A4AB180(), v46(v14, v176, v10), v50 = sub_24A4AAEE0(), v49(v14, v10), v49(v16, v10), (v50))
        {
          v161 = *v162;
          v161(v166, v48, v180);
          v51 = v167;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181[0] = v51;
          v38 = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v51 + 16) + 1, 1);
            v51 = v181[0];
          }

          v54 = *(v51 + 16);
          v53 = *(v51 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_24A3DBE2C(v53 > 1, v54 + 1, 1);
            v51 = v181[0];
          }

          *(v51 + 16) = v54 + 1;
          v167 = v51;
          v161((v51 + v173 + v54 * v45), v166, v180);
        }

        else
        {
          (*v168)(v48, v180);
          v38 = v48;
        }

        ++v43;
        result = v171;
        if (v172 == v43)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    v167 = MEMORY[0x277D84F90];
LABEL_15:

    v55 = *(*(v158 + v156) + 16);

    v173 = v55;
    if (v55)
    {
      v56 = 0;
      v171 = v179 + 16;
      LODWORD(v170) = *MEMORY[0x277D091C8];
      v176 = (v157 + 104);
      v57 = (v157 + 8);
      LODWORD(v162) = *MEMORY[0x277D091D0];
      v168 = v179 + 8;
      v161 = (v179 + 32);
      v166 = MEMORY[0x277D84F90];
      v58 = v159;
      v172 = result;
      while (v56 < *(result + 16))
      {
        v175 = ((*(v179 + 80) + 32) & ~*(v179 + 80));
        v60 = *(v179 + 72);
        (*(v179 + 16))(v58, &v175[result + v60 * v56], v180);
        sub_24A4AB070();
        v61 = *v176;
        (*v176)(v14, v170, v10);
        v62 = sub_24A4AAEE0();
        v63 = *v57;
        (*v57)(v14, v10);
        v63(v16, v10);
        if (v62 & 1) != 0 && (sub_24A4AB180(), v61(v14, v162, v10), v64 = sub_24A4AAEE0(), v63(v14, v10), v63(v16, v10), (v64))
        {
          v65 = *v161;
          (*v161)(v165, v58, v180);
          v66 = v166;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v181[0] = v66;
          v160 = v65;
          if ((v67 & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v66 + 16) + 1, 1);
            v66 = v181[0];
          }

          v68 = v175;
          v70 = *(v66 + 16);
          v69 = *(v66 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_24A3DBE2C(v69 > 1, v70 + 1, 1);
            v66 = v181[0];
          }

          *(v66 + 16) = v70 + 1;
          v166 = v66;
          v160(&v68[v66 + v70 * v60], v165, v180);
          v58 = v159;
        }

        else
        {
          (*v168)(v58, v180);
        }

        ++v56;
        v59 = v174;
        result = v172;
        if (v173 == v56)
        {
          goto LABEL_28;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return result;
    }

    v166 = MEMORY[0x277D84F90];
    v59 = v174;
LABEL_28:

    v71 = *(*(v158 + v156) + 16);

    v173 = v71;
    if (v71)
    {
      v72 = 0;
      v171 = v179 + 16;
      LODWORD(v170) = *MEMORY[0x277D091D0];
      v176 = (v157 + 104);
      v73 = (v157 + 8);
      LODWORD(v162) = *MEMORY[0x277D091C8];
      v168 = v179 + 8;
      v161 = (v179 + 32);
      v165 = MEMORY[0x277D84F90];
      v172 = result;
      while (v72 < *(result + 16))
      {
        v175 = ((*(v179 + 80) + 32) & ~*(v179 + 80));
        v74 = *(v179 + 72);
        (*(v179 + 16))(v59, &v175[result + v74 * v72], v180);
        sub_24A4AB070();
        v75 = v59;
        v76 = *v176;
        (*v176)(v14, v170, v10);
        v77 = sub_24A4AAEE0();
        v78 = *v73;
        (*v73)(v14, v10);
        v78(v16, v10);
        if (v77 & 1) != 0 && (sub_24A4AB180(), v76(v14, v162, v10), v79 = sub_24A4AAEE0(), v78(v14, v10), v78(v16, v10), (v79))
        {
          v80 = v75;
          v81 = *v161;
          (*v161)(v164, v80, v180);
          v82 = v165;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v181[0] = v82;
          if ((v83 & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v82 + 16) + 1, 1);
            v82 = v181[0];
          }

          v85 = *(v82 + 16);
          v84 = *(v82 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_24A3DBE2C(v84 > 1, v85 + 1, 1);
            v82 = v181[0];
          }

          *(v82 + 16) = v85 + 1;
          v165 = v82;
          v81(&v175[v82 + v85 * v74], v164, v180);
          v59 = v174;
        }

        else
        {
          (*v168)(v75, v180);
          v59 = v75;
        }

        ++v72;
        result = v172;
        if (v173 == v72)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_86;
    }

    v165 = MEMORY[0x277D84F90];
LABEL_41:

    v86 = *(*(v158 + v156) + 16);

    v173 = v86;
    if (v86)
    {
      v87 = 0;
      v171 = v179 + 16;
      LODWORD(v176) = *MEMORY[0x277D091D0];
      v175 = (v157 + 104);
      v88 = (v157 + 8);
      v170 = (v179 + 8);
      v164 = (v179 + 32);
      v168 = MEMORY[0x277D84F90];
      v172 = result;
      while (v87 < *(result + 16))
      {
        v174 = (*(v179 + 80) + 32) & ~*(v179 + 80);
        v89 = *(v179 + 72);
        v90 = v169;
        (*(v179 + 16))(v169, result + v174 + v89 * v87, v180);
        sub_24A4AB070();
        v91 = *v175;
        (*v175)(v14, v176, v10);
        v92 = sub_24A4AAEE0();
        v93 = *v88;
        (*v88)(v14, v10);
        v93(v16, v10);
        if (v92 & 1) != 0 && (sub_24A4AB180(), v91(v14, v176, v10), v94 = sub_24A4AAEE0(), v93(v14, v10), v93(v16, v10), (v94))
        {
          v95 = v90;
          v96 = *v164;
          (*v164)(v163, v95, v180);
          v97 = v168;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v181[0] = v97;
          if ((v98 & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v97 + 16) + 1, 1);
            v97 = v181[0];
          }

          v100 = *(v97 + 16);
          v99 = *(v97 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_24A3DBE2C(v99 > 1, v100 + 1, 1);
            v97 = v181[0];
          }

          *(v97 + 16) = v100 + 1;
          v168 = v97;
          v96(v97 + v174 + v100 * v89, v163, v180);
        }

        else
        {
          (*v170)(v90, v180);
        }

        ++v87;
        result = v172;
        if (v173 == v87)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_87;
    }

    v168 = MEMORY[0x277D84F90];
LABEL_54:

    v101 = v158;
    v102 = *(*(v158 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager) + 56);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    v176 = v181[0];
    v103 = *(v167 + 16);
    if (v103)
    {
      v181[0] = MEMORY[0x277D84F90];
      v104 = v167;
      sub_24A3DBDE8(0, v103, 0);
      v105 = v181[0];
      v175 = *(v179 + 16);
      v106 = v104 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
      v107 = *(v179 + 72);
      v108 = (v179 + 8);
      v109 = v152;
      do
      {
        v110 = v177;
        v111 = v180;
        (v175)(v177, v106, v180);
        sub_24A42B034(v176, v109);
        (*v108)(v110, v111);
        v181[0] = v105;
        v113 = *(v105 + 16);
        v112 = *(v105 + 24);
        if (v113 >= v112 >> 1)
        {
          sub_24A3DBDE8(v112 > 1, v113 + 1, 1);
          v105 = v181[0];
        }

        *(v105 + 16) = v113 + 1;
        sub_24A3B587C(v109, v105 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v113, type metadata accessor for FMFLocationAlert);
        v106 += v107;
        --v103;
      }

      while (v103);

      v101 = v158;
    }

    else
    {

      v105 = MEMORY[0x277D84F90];
    }

    v114 = *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe);
    *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe) = v105;

    v115 = *(v166 + 2);
    v116 = v154;
    if (v115)
    {
      v181[0] = MEMORY[0x277D84F90];
      v117 = v166;
      sub_24A3DBDE8(0, v115, 0);
      v118 = v181[0];
      v175 = *(v179 + 16);
      v119 = &v117[(*(v179 + 80) + 32) & ~*(v179 + 80)];
      v120 = *(v179 + 72);
      v121 = (v179 + 8);
      do
      {
        v122 = v177;
        v123 = v180;
        (v175)(v177, v119, v180);
        sub_24A42B034(v176, v116);
        (*v121)(v122, v123);
        v181[0] = v118;
        v125 = *(v118 + 16);
        v124 = *(v118 + 24);
        if (v125 >= v124 >> 1)
        {
          sub_24A3DBDE8(v124 > 1, v125 + 1, 1);
          v118 = v181[0];
        }

        *(v118 + 16) = v125 + 1;
        sub_24A3B587C(v116, v118 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v125, type metadata accessor for FMFLocationAlert);
        v119 += v120;
        --v115;
      }

      while (v115);

      v101 = v158;
    }

    else
    {

      v118 = MEMORY[0x277D84F90];
    }

    v126 = *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends);
    *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends) = v118;

    v127 = *(v165 + 2);
    v128 = v155;
    if (v127)
    {
      v181[0] = MEMORY[0x277D84F90];
      v129 = v165;
      sub_24A3DBDE8(0, v127, 0);
      v130 = v181[0];
      v175 = *(v179 + 16);
      v131 = &v129[(*(v179 + 80) + 32) & ~*(v179 + 80)];
      v132 = *(v179 + 72);
      v133 = (v179 + 8);
      do
      {
        v134 = v177;
        v135 = v180;
        (v175)(v177, v131, v180);
        sub_24A42B034(v176, v128);
        (*v133)(v134, v135);
        v181[0] = v130;
        v137 = *(v130 + 16);
        v136 = *(v130 + 24);
        if (v137 >= v136 >> 1)
        {
          sub_24A3DBDE8(v136 > 1, v137 + 1, 1);
          v130 = v181[0];
        }

        *(v130 + 16) = v137 + 1;
        sub_24A3B587C(v128, v130 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v137, type metadata accessor for FMFLocationAlert);
        v131 += v132;
        --v127;
      }

      while (v127);

      v101 = v158;
    }

    else
    {

      v130 = MEMORY[0x277D84F90];
    }

    v138 = *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe);
    *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe) = v130;

    v139 = *(v168 + 16);
    if (v139)
    {
      v181[0] = MEMORY[0x277D84F90];
      v140 = v168;
      sub_24A3DBDE8(0, v139, 0);
      v141 = v181[0];
      v142 = v179 + 16;
      v179 = *(v179 + 16);
      v143 = v140 + ((*(v142 + 64) + 32) & ~*(v142 + 64));
      v144 = *(v142 + 56);
      v145 = (v142 - 8);
      v146 = v153;
      do
      {
        v147 = v177;
        v148 = v180;
        (v179)(v177, v143, v180);
        sub_24A42B034(v176, v146);
        (*v145)(v147, v148);
        v181[0] = v141;
        v150 = *(v141 + 16);
        v149 = *(v141 + 24);
        if (v150 >= v149 >> 1)
        {
          sub_24A3DBDE8(v149 > 1, v150 + 1, 1);
          v141 = v181[0];
        }

        *(v141 + 16) = v150 + 1;
        sub_24A3B587C(v146, v141 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v150, type metadata accessor for FMFLocationAlert);
        v143 += v144;
        --v139;
      }

      while (v139);

      v101 = v158;
    }

    else
    {

      v141 = MEMORY[0x277D84F90];
    }

    v151 = *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends);
    *(v101 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends) = v141;
  }

  return result;
}

uint64_t sub_24A390DA0()
{
  v1 = sub_24A3C9CEC(&qword_27EF405C8, &qword_24A4BACD8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v878 = &v871 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v895 = (&v871 - v6);
  v7 = MEMORY[0x28223BE20](v5);
  v925 = (&v871 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v923 = (&v871 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v926 = (&v871 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  *&v983 = &v871 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v909 = &v871 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v942 = (&v871 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v946 = (&v871 - v20);
  MEMORY[0x28223BE20](v19);
  v943 = (&v871 - v21);
  v999 = type metadata accessor for FMFLocation();
  v886 = *(v999 - 8);
  v22 = *(v886 + 64);
  MEMORY[0x28223BE20](v999);
  v910 = (&v871 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v976 = (&v871 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v921 = &v871 - v29;
  MEMORY[0x28223BE20](v28);
  v964 = &v871 - v30;
  v31 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v876 = &v871 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v991 = &v871 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v975 = (&v871 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v974 = (&v871 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v972 = (&v871 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v963 = &v871 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v962 = &v871 - v46;
  MEMORY[0x28223BE20](v45);
  v961 = &v871 - v47;
  v48 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v885 = &v871 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v990 = &v871 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v917 = &v871 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v985 = &v871 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v908 = &v871 - v59;
  MEMORY[0x28223BE20](v58);
  v960 = &v871 - v60;
  v61 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v872 = &v871 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v874 = &v871 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v887 = (&v871 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v924 = &v871 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v897 = &v871 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v884 = &v871 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v916 = &v871 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v973 = &v871 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v997 = &v871 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v907 = &v871 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v906 = &v871 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v905 = &v871 - v86;
  MEMORY[0x28223BE20](v85);
  v965 = &v871 - v87;
  v1003 = type metadata accessor for FMFFriend();
  v1000 = *(v1003 - 1);
  v88 = *(v1000 + 64);
  v89 = MEMORY[0x28223BE20](v1003);
  v877 = &v871 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x28223BE20](v89);
  v922 = &v871 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v950 = &v871 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  j = &v871 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v998 = &v871 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v880 = (&v871 - v100);
  v101 = MEMORY[0x28223BE20](v99);
  v875 = (&v871 - v102);
  v103 = MEMORY[0x28223BE20](v101);
  v892 = &v871 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v896 = (&v871 - v106);
  v107 = MEMORY[0x28223BE20](v105);
  v891 = &v871 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v890 = (&v871 - v110);
  v111 = MEMORY[0x28223BE20](v109);
  v987 = (&v871 - v112);
  v113 = MEMORY[0x28223BE20](v111);
  v879 = (&v871 - v114);
  v115 = MEMORY[0x28223BE20](v113);
  v920 = &v871 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v995 = (&v871 - v118);
  v119 = MEMORY[0x28223BE20](v117);
  v996 = &v871 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v882 = &v871 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v919 = (&v871 - v124);
  v125 = MEMORY[0x28223BE20](v123);
  v889 = &v871 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v944 = (&v871 - v128);
  v129 = MEMORY[0x28223BE20](v127);
  v881 = &v871 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v918 = (&v871 - v132);
  v133 = MEMORY[0x28223BE20](v131);
  v888 = &v871 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v1002 = (&v871 - v136);
  v137 = MEMORY[0x28223BE20](v135);
  v977 = &v871 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v984 = &v871 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v915 = (&v871 - v142);
  v143 = MEMORY[0x28223BE20](v141);
  v894 = (&v871 - v144);
  v145 = MEMORY[0x28223BE20](v143);
  v904 = &v871 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v903 = &v871 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v893 = (&v871 - v150);
  v151 = MEMORY[0x28223BE20](v149);
  v971 = (&v871 - v152);
  v153 = MEMORY[0x28223BE20](v151);
  v959 = (&v871 - v154);
  v155 = MEMORY[0x28223BE20](v153);
  v902 = &v871 - v156;
  MEMORY[0x28223BE20](v155);
  v901 = &v871 - v157;
  v1001 = type metadata accessor for FMFIntermediateFriend();
  v941 = *(v1001 - 8);
  v158 = *(v941 + 64);
  v159 = MEMORY[0x28223BE20](v1001);
  v949 = (&v871 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = MEMORY[0x28223BE20](v159);
  v948 = (&v871 - v162);
  v163 = MEMORY[0x28223BE20](v161);
  v165 = (&v871 - v164);
  v166 = MEMORY[0x28223BE20](v163);
  v168 = &v871 - v167;
  v169 = MEMORY[0x28223BE20](v166);
  v171 = &v871 - v170;
  MEMORY[0x28223BE20](v169);
  v173 = &v871 - v172;
  v174 = type metadata accessor for FMFLocationAlert();
  v175 = *(v174 - 8);
  v176 = *(v175 + 64);
  v177 = MEMORY[0x28223BE20](v174);
  v178 = MEMORY[0x28223BE20](v177);
  v180 = &v871 - v179;
  v181 = MEMORY[0x28223BE20](v178);
  v182 = MEMORY[0x28223BE20](v181);
  v186 = &v871 - v185;
  v187 = *(v0 + 576);
  if (v187)
  {
    v188 = *(v0 + 576);

    return v187;
  }

  v989 = v184;
  v992 = v183;
  v994 = v182;
  v914 = v173;
  v883 = v171;
  v900 = v168;
  v945 = v165;
  v1022 = MEMORY[0x277D84F98];
  v947 = v0;
  v189 = sub_24A397C64();
  v993 = *(v189 + 16);
  if (v993)
  {
    v190 = 0;
    v191 = MEMORY[0x277D84F90];
    v192 = v989;
    while (v190 < *(v189 + 16))
    {
      v193 = (*(v175 + 80) + 32) & ~*(v175 + 80);
      v194 = *(v175 + 72);
      sub_24A3992EC(v189 + v193 + v194 * v190, v186, type metadata accessor for FMFLocationAlert);
      if (*(v186 + *(v994 + 96)) != 1 || (*(v186 + *(v994 + 100)) & 1) != 0)
      {
        sub_24A39A7B8(v186, type metadata accessor for FMFLocationAlert);
      }

      else
      {
        sub_24A39983C(v186, v192, type metadata accessor for FMFLocationAlert);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v1018 = v191;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBDE8(0, *(v191 + 16) + 1, 1);
          v191 = v1018;
        }

        v197 = *(v191 + 16);
        v196 = *(v191 + 24);
        v198 = v197 + 1;
        if (v197 >= v196 >> 1)
        {
          v988 = (v197 + 1);
          sub_24A3DBDE8(v196 > 1, v197 + 1, 1);
          v198 = v988;
          v191 = v1018;
        }

        *(v191 + 16) = v198;
        v199 = v191 + v193 + v197 * v194;
        v192 = v989;
        sub_24A39983C(v989, v199, type metadata accessor for FMFLocationAlert);
      }

      ++v190;
      v173 = v998;
      v165 = v987;
      if (v993 == v190)
      {
        goto LABEL_16;
      }
    }

LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    swift_once();
LABEL_80:
    v354 = sub_24A4AB630();
    v934 = sub_24A378E18(v354, qword_27EF4E260);
    v355 = sub_24A4AB600();
    v356 = sub_24A4ABCB0();
    if (os_log_type_enabled(v355, v356))
    {
      v357 = swift_slowAlloc();
      v358 = swift_slowAlloc();
      *v357 = 138412290;
      swift_beginAccess();

      v359 = sub_24A4AB760();
      v186 = v996;

      *(v357 + 4) = v359;
      *v358 = v359;
      v189 = v1003;
      _os_log_impl(&dword_24A376000, v355, v356, "Follower friends - %@", v357, 0xCu);
      sub_24A37EF2C(v358, &qword_27EF403C0, &unk_24A4B5050);
      v360 = v358;
      v190 = v977;
      MEMORY[0x24C219130](v360, -1, -1);
      v361 = v357;
      v165 = v987;
      MEMORY[0x24C219130](v361, -1, -1);
    }

    v362 = *(v947 + 552);
    v363 = *(v362 + 16);
    if (v363)
    {
      v364 = v362 + ((*(v941 + 80) + 32) & ~*(v941 + 80));
      v365 = v1000 + 56;
      v366 = *(v1000 + 56);
      v367 = (v941 + 56);
      v939 = *(v941 + 72);
      v368 = (v886 + 56);
      v937 = (v1000 + 48);
      v936 = (v941 + 48);
      v935 = (v886 + 48);
      v932 = v362;

      v933 = xmmword_24A4B4E10;
      v940 = v365;
      v972 = v366;
      v971 = v367;
      v938 = v368;
      do
      {
        v970 = v363;
        v380 = v973;
        (v366)(v973, 1, 1, v189);
        v969 = v364;
        v381 = v985;
        sub_24A3992EC(v364, v985, type metadata accessor for FMFIntermediateFriend);
        v967 = *v367;
        (v967)(v381, 0, 1, v1001);
        v382 = *v368;
        v383 = v999;
        (*v368)(v974, 1, 1, v999);
        v384 = *(v189 + 84);
        *(v984 + v384) = 7;
        v385 = sub_24A4AAAD0();
        v386 = v976;
        (*(*(v385 - 8) + 56))(v976, 1, 1, v385);
        v387 = v975;
        v968 = v382;
        v382(v975, 1, 1, v383);
        v388 = v380;
        v389 = v916;
        sub_24A37B740(v388, v916, &qword_27EF3F2D0, &qword_24A4B4F50);
        if ((*v937)(v389, 1, v189) == 1)
        {
          sub_24A37EF2C(v389, &qword_27EF3F2D0, &qword_24A4B4F50);
          LODWORD(v963) = 0;
          LODWORD(v964) = 0;
          v390 = 0;
          v391 = 0;
          v965 = 0;
          v961 = 0;
          v960 = 0;
          v958 = 0;
          v979 = 0;
          v957 = 0;
          v980 = 0;
          v956 = 0;
          v981 = 0;
          v993 = 0;
          v982 = 0;
          v992 = 0xE000000000000000;
          LODWORD(v952) = 2;
          v962 = 0x7FFFFFFFFFFFFFFFLL;
          LODWORD(v951) = 2;
          LODWORD(v954) = 2;
          LODWORD(v959) = 2;
          v988 = MEMORY[0x277D84FA0];
          v392 = 1;
        }

        else
        {
          sub_24A37EF2C(v387, &qword_27EF3F480, &unk_24A4B8C20);
          sub_24A37EF2C(v386, &qword_27EF3F460, &unk_24A4B53B0);
          sub_24A39983C(v389, v190, type metadata accessor for FMFFriend);
          v393 = *(v190 + 8);
          v982 = *v190;
          v992 = v393;
          v394 = *(v190 + 24);
          v981 = *(v190 + 16);
          v993 = v394;
          v988 = *(v190 + 32);
          sub_24A37B740(v190 + *(v189 + 32), v386, &qword_27EF3F460, &unk_24A4B53B0);
          v395 = *(v189 + 40);
          v966 = *(v190 + *(v189 + 36));
          LODWORD(v959) = *(v190 + v395);
          v396 = *(v189 + 48);
          LODWORD(v954) = *(v190 + *(v189 + 44));
          LODWORD(v951) = *(v190 + v396);
          LODWORD(v964) = *(v190 + *(v189 + 72));
          v397 = *(v189 + 56);
          LODWORD(v963) = *(v190 + *(v189 + 52));
          LODWORD(v952) = *(v190 + v397);
          v962 = *(v190 + *(v189 + 60));
          sub_24A37B740(v190 + *(v189 + 80), v387, &qword_27EF3F480, &unk_24A4B8C20);
          v398 = (v190 + *(v189 + 76));
          v399 = *v398;
          v400 = v398[1];
          v401 = v398[2];
          v979 = v398[3];
          v402 = v398[4];
          v980 = v398[5];
          v403 = v384;
          v404 = v398[6];
          v405 = *(v190 + *(v189 + 64));
          v406 = *(v190 + *(v189 + 68));
          *(v984 + v403) = *(v190 + *(v189 + 84));
          v407 = *(v190 + 40);

          v961 = v399;
          v960 = v400;
          v958 = v401;
          v391 = v406;
          v957 = v402;
          v390 = v407;
          v956 = v404;
          sub_24A39AED0(v399, v400);

          v965 = v405;

          sub_24A39A7B8(v190, type metadata accessor for FMFFriend);
          v392 = v966 | 1;
        }

        v408 = v917;
        v409 = v985;
        sub_24A37B740(v985, v917, &qword_27EF3F2E0, &qword_24A4BACE0);
        v410 = v1001;
        v411 = (*v936)(v408, 1, v1001);
        v966 = v391;
        v955 = v392;
        if (v411 == 1)
        {
          v953 = v390;
          sub_24A37EF2C(v409, &qword_27EF3F2E0, &qword_24A4BACE0);
          sub_24A37EF2C(v973, &qword_27EF3F2D0, &qword_24A4B4F50);
          sub_24A37EF2C(v408, &qword_27EF3F2E0, &qword_24A4BACE0);
          v412 = v976;
          v413 = v952;
          v414 = v951;
          v415 = v954;
        }

        else
        {

          v416 = v900;
          sub_24A39983C(v408, v900, type metadata accessor for FMFIntermediateFriend);
          if (v954 == 2 || (v954 & 1) == 0)
          {
            v417 = *(v416 + v410[14]);
          }

          else
          {
            v417 = 1;
          }

          v418 = *v416;
          v992 = v416[1];
          v419 = v416[2];
          v993 = v416[3];
          if (v951 == 2 || (v951 & 1) == 0)
          {
            v420 = *(v416 + v410[15]);
          }

          else
          {
            v420 = 1;
          }

          LODWORD(v954) = v420;
          if (v952 == 2 || (v952 & 1) == 0)
          {
            v421 = *(v416 + v410[16]);
          }

          else
          {
            v421 = 1;
          }

          LODWORD(v952) = v421;
          v422 = *(v416 + v410[17]);
          v423 = v416[9];
          v982 = v418;
          v981 = v419;
          v953 = v422;
          if (v423)
          {
            v424 = v416[8];
            sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
            v425 = swift_allocObject();
            *(v425 + 16) = v933;
            *(v425 + 32) = v424;
            *(v425 + 40) = v423;

            v988 = sub_24A48A0F4(v425, v988);
            swift_setDeallocating();
            sub_24A406964(v425 + 32);
            v410 = v1001;
            swift_deallocClassInstance();
            v426 = v985;
          }

          else
          {
            v427 = v416[4];

            if (v427)
            {

              v428 = sub_24A3999E0(v427);

              v988 = sub_24A399BC8(v428, v988);
            }

            v426 = v985;
            v416 = v900;
          }

          v415 = v417 & 1;
          v414 = v954 & 1;
          v413 = v952 & 1;
          v412 = v976;
          sub_24A37EF2C(v976, &qword_27EF3F460, &unk_24A4B53B0);
          sub_24A37EF2C(v426, &qword_27EF3F2E0, &qword_24A4BACE0);
          sub_24A37EF2C(v973, &qword_27EF3F2D0, &qword_24A4B4F50);
          sub_24A37B740(v416 + v410[12], v412, &qword_27EF3F460, &unk_24A4B53B0);
          sub_24A39A7B8(v416, type metadata accessor for FMFIntermediateFriend);
        }

        v429 = v1003;
        v430 = v1003[14];
        v431 = v984;
        v432 = v992;
        *v984 = v982;
        v431[1] = v432;
        v433 = v993;
        v431[2] = v981;
        v431[3] = v433;
        v431[4] = v988;
        sub_24A37BE24(v412, v431 + v429[8], &qword_27EF3F460, &unk_24A4B53B0);
        *(v431 + v429[9]) = v955;
        *(v431 + v429[10]) = v959;
        *(v431 + v429[11]) = v415;
        *(v431 + v429[12]) = v414;
        v434 = (v431 + v429[19]);
        v435 = v960;
        *v434 = v961;
        v434[1] = v435;
        v436 = v979;
        v434[2] = v958;
        v434[3] = v436;
        v437 = v980;
        v434[4] = v957;
        v434[5] = v437;
        v434[6] = v956;
        *(v431 + v430) = v413;
        *(v431 + v429[18]) = v964;
        *(v431 + v429[13]) = v963;
        v431[5] = v953;
        *(v431 + v429[15]) = v962;
        v438 = v974;
        v439 = v999;
        if ((*v935)(v974, 1, v999) == 1)
        {
          sub_24A37EF2C(v438, &qword_27EF3F480, &unk_24A4B8C20);
          sub_24A37BE24(v975, v431 + v429[20], &qword_27EF3F480, &unk_24A4B8C20);
          v369 = v915;
          v368 = v938;
          v370 = v968;
        }

        else
        {
          sub_24A37EF2C(v975, &qword_27EF3F480, &unk_24A4B8C20);
          v440 = v429[20];
          sub_24A39983C(v438, v431 + v440, type metadata accessor for FMFLocation);
          v441 = v431 + v440;
          v368 = v938;
          v370 = v968;
          v968(v441, 0, 1, v439);
          v369 = v915;
        }

        *(v431 + v429[16]) = v965;
        *(v431 + v429[17]) = v966;
        v993 = type metadata accessor for FMFFriend;
        sub_24A39983C(v431, v369, type metadata accessor for FMFFriend);
        v371 = v997;
        sub_24A3992EC(v369, v997, type metadata accessor for FMFFriend);
        (v972)(v371, 0, 1, v429);
        v372 = v990;
        (v967)(v990, 1, 1, v1001);
        v1016 = 0;
        v1017 = 1;
        v1014 = 0;
        v1015 = 1;
        v373 = v991;
        v370(v991, 1, 1, v439);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;

        v374 = v1002;
        v189 = v1003;
        sub_24A39B7E4(v371, v372, &v1016, &v1014, v373, 0, 1, &v1018, v1002, 0, v870, 2u, 2u, 2);
        sub_24A39A7B8(v369, type metadata accessor for FMFFriend);
        sub_24A39983C(v374, v369, v993);
        v375 = *v369;
        v376 = v369[1];
        sub_24A3992EC(v369, v374, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v377 = swift_isUniquelyReferenced_nonNull_native();
        v1016 = v1022;
        v378 = v374;
        v367 = v971;
        sub_24A39B15C(v378, v375, v376, v377);
        v1022 = v1016;
        swift_endAccess();
        v379 = v369;
        v366 = v972;
        sub_24A39A7B8(v379, type metadata accessor for FMFFriend);
        v364 = v969 + v939;
        v363 = v970 - 1;
        v190 = v977;
      }

      while (v970 != 1);

      v173 = v998;
      v165 = v987;
      v192 = v995;
      v186 = v996;
    }

    v442 = sub_24A4AB600();
    v443 = sub_24A4ABCB0();
    v444 = os_log_type_enabled(v442, v443);
    v445 = v945;
    if (v444)
    {
      v446 = swift_slowAlloc();
      v447 = swift_slowAlloc();
      *v446 = 138412290;
      swift_beginAccess();

      v448 = sub_24A4AB760();
      v186 = v996;

      *(v446 + 4) = v448;
      *v447 = v448;
      v189 = v1003;
      _os_log_impl(&dword_24A376000, v442, v443, "Follower friends with pending - %@", v446, 0xCu);
      sub_24A37EF2C(v447, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v447, -1, -1);
      v449 = v446;
      v165 = v987;
      MEMORY[0x24C219130](v449, -1, -1);
    }

    v450 = *(v947 + 680);
    v451 = *(v450 + 16);
    if (v451)
    {
      v452 = *(v947 + 536);
      v453 = v941;
      v454 = v450 + ((*(v941 + 80) + 32) & ~*(v941 + 80));
      v973 = *(v947 + 680);

      v985 = v452;
      swift_beginAccess();
      v984 = *(v453 + 72);
      v988 = (v1000 + 56);
      v975 = (v453 + 56);
      v974 = (v886 + 56);
      while (1)
      {
        sub_24A3992EC(v454, v445, type metadata accessor for FMFIntermediateFriend);
        v458 = *v445;
        v459 = v445[1];
        v460 = *(v985 + 24);
        v461 = *(v460 + 16);
        v462 = v918;
        v993 = v451;
        if (!v461)
        {
          goto LABEL_121;
        }

        v463 = sub_24A39B2C8(v458, v459);
        if ((v464 & 1) == 0)
        {
          break;
        }

        v455 = v888;
        sub_24A3992EC(*(v460 + 56) + *(v1000 + 72) * v463, v888, type metadata accessor for FMFFriend);

        v456 = v1002;
        sub_24A3992EC(v455, v1002, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v457 = swift_isUniquelyReferenced_nonNull_native();
        v1014 = v1022;
        sub_24A39B15C(v456, v458, v459, v457);
        v1022 = v1014;
        swift_endAccess();
        sub_24A39A7B8(v455, type metadata accessor for FMFFriend);
        v445 = v945;
        sub_24A39A7B8(v945, type metadata accessor for FMFIntermediateFriend);
LABEL_117:
        v454 += v984;
        v451 = (v993 - 1);
        v186 = v996;
        if (v993 == 1)
        {

          v189 = v1003;
          v165 = v987;
          goto LABEL_127;
        }
      }

LABEL_121:
      swift_beginAccess();
      v465 = v1022;
      if (*(v1022 + 16) && (v466 = sub_24A39B2C8(v458, v459), (v467 & 1) != 0))
      {
        v468 = v1000;
        v469 = v881;
        sub_24A3992EC(*(v465 + 56) + *(v1000 + 72) * v466, v881, type metadata accessor for FMFFriend);
        sub_24A39983C(v469, v462, type metadata accessor for FMFFriend);
        swift_endAccess();
        v470 = v997;
        sub_24A3992EC(v462, v997, type metadata accessor for FMFFriend);
        (*(v468 + 56))(v470, 0, 1, v1003);
        v992 = type metadata accessor for FMFIntermediateFriend;
        v471 = v945;
        v472 = v990;
        sub_24A3992EC(v945, v990, type metadata accessor for FMFIntermediateFriend);
        (*v975)(v472, 0, 1, v1001);
        v1014 = 2;
        v1015 = 0;
        v1012 = 0;
        v1013 = 1;
        v473 = v991;
        (*v974)(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v474 = v1002;
        sub_24A39B7E4(v470, v472, &v1014, &v1012, v473, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);
        sub_24A39A7B8(v462, type metadata accessor for FMFFriend);
        sub_24A39983C(v474, v462, type metadata accessor for FMFFriend);
        v475 = *v462;
        v476 = v462[1];
        swift_beginAccess();
        sub_24A3992EC(v462, v474, type metadata accessor for FMFFriend);

        v477 = swift_isUniquelyReferenced_nonNull_native();
        v1014 = v1022;
        sub_24A39B15C(v474, v475, v476, v477);

        v1022 = v1014;
        swift_endAccess();
        v478 = v462;
        v445 = v471;
        sub_24A39A7B8(v478, type metadata accessor for FMFFriend);
        v479 = v471;
        v480 = v992;
      }

      else
      {
        swift_endAccess();
        v992 = *v988;
        v481 = v997;
        (v992)(v997, 1, 1, v1003);
        v981 = type metadata accessor for FMFIntermediateFriend;
        v482 = v990;
        sub_24A3992EC(v945, v990, type metadata accessor for FMFIntermediateFriend);
        v982 = v454;
        v980 = *v975;
        (v980)(v482, 0, 1, v1001);
        v1014 = 2;
        v1015 = 0;
        v1012 = 0;
        v1013 = 1;
        v979 = *v974;
        v483 = v991;
        v484 = v999;
        v979(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v485 = v1002;
        sub_24A39B7E4(v481, v482, &v1014, &v1012, v483, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);

        v487 = v994;
        v977 = sub_24A39A8F4(v486, v485);

        v489 = sub_24A448AF0(v488, v485);
        v994 = v487;
        v976 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v485, v481, type metadata accessor for FMFFriend);
        (v992)(v481, 0, 1, v1003);
        (v980)(v482, 1, 1, v1001);
        v454 = v982;
        v1014 = 0;
        v1015 = 1;
        v1012 = 0;
        v1013 = 1;
        v979(v483, 1, 1, v484);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v490 = v944;
        sub_24A39B7E4(v481, v482, &v1014, &v1012, v483, 0, 1, &v1018, v944, v977, v489, 2u, 2u, 2);
        sub_24A39AF20(v490, v485, type metadata accessor for FMFFriend);
        v491 = *v485;
        v492 = v485[1];
        v493 = v976;
        sub_24A3992EC(v485, v481, v976);
        (v992)(v481, 0, 1, v1003);
        swift_beginAccess();

        v494 = v481;
        v445 = v945;
        sub_24A39AF88(v494, v491, v492);
        swift_endAccess();
        sub_24A39A7B8(v445, v981);
        v479 = v485;
        v480 = v493;
      }

      sub_24A39A7B8(v479, v480);
      v173 = v998;
      v192 = v995;
      goto LABEL_117;
    }

LABEL_127:
    v495 = sub_24A4AB600();
    v496 = sub_24A4ABCB0();
    if (os_log_type_enabled(v495, v496))
    {
      v497 = swift_slowAlloc();
      v498 = swift_slowAlloc();
      *v497 = 138412290;
      swift_beginAccess();

      v499 = sub_24A4AB760();
      v186 = v996;

      *(v497 + 4) = v499;
      *v498 = v499;
      v189 = v1003;
      _os_log_impl(&dword_24A376000, v495, v496, "Follower+following friends - %@", v497, 0xCu);
      sub_24A37EF2C(v498, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v498, -1, -1);
      v500 = v497;
      v165 = v987;
      MEMORY[0x24C219130](v500, -1, -1);
    }

    v501 = *(v947 + 568);
    v502 = *(v501 + 16);
    if (v502)
    {
      v503 = *(v947 + 536);
      v504 = v941;
      v505 = v501 + ((*(v941 + 80) + 32) & ~*(v941 + 80));
      v973 = *(v947 + 568);

      v988 = v503;
      swift_beginAccess();
      v985 = *(v504 + 72);
      v992 = (v1000 + 56);
      v975 = (v504 + 56);
      v974 = (v886 + 56);
      v506 = v948;
      while (1)
      {
        sub_24A3992EC(v505, v506, type metadata accessor for FMFIntermediateFriend);
        v510 = *v506;
        v511 = v506[1];
        v512 = v988[3];
        v513 = *(v512 + 2);
        v514 = v919;
        v993 = v502;
        if (!v513)
        {
          goto LABEL_136;
        }

        v515 = sub_24A39B2C8(v510, v511);
        if ((v516 & 1) == 0)
        {
          break;
        }

        v507 = v889;
        sub_24A3992EC(*(v512 + 7) + *(v1000 + 72) * v515, v889, type metadata accessor for FMFFriend);

        v508 = v1002;
        sub_24A3992EC(v507, v1002, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v509 = swift_isUniquelyReferenced_nonNull_native();
        v1012 = v1022;
        sub_24A39B15C(v508, v510, v511, v509);
        v1022 = v1012;
        swift_endAccess();
        sub_24A39A7B8(v507, type metadata accessor for FMFFriend);
        v506 = v948;
        sub_24A39A7B8(v948, type metadata accessor for FMFIntermediateFriend);
LABEL_132:
        v505 += v985;
        v502 = (v993 - 1);
        v186 = v996;
        if (v993 == 1)
        {

          v189 = v1003;
          v165 = v987;
          goto LABEL_142;
        }
      }

LABEL_136:
      swift_beginAccess();
      v517 = v1022;
      if (*(v1022 + 16) && (v518 = sub_24A39B2C8(v510, v511), (v519 & 1) != 0))
      {
        v520 = v1000;
        v521 = v882;
        sub_24A3992EC(*(v517 + 56) + *(v1000 + 72) * v518, v882, type metadata accessor for FMFFriend);
        sub_24A39983C(v521, v514, type metadata accessor for FMFFriend);
        swift_endAccess();
        v522 = v997;
        sub_24A3992EC(v514, v997, type metadata accessor for FMFFriend);
        (*(v520 + 56))(v522, 0, 1, v1003);
        v984 = type metadata accessor for FMFIntermediateFriend;
        v506 = v948;
        v523 = v990;
        sub_24A3992EC(v948, v990, type metadata accessor for FMFIntermediateFriend);
        (*v975)(v523, 0, 1, v1001);
        v1012 = 8;
        v1013 = 0;
        v1010 = 0;
        v1011 = 1;
        v524 = v991;
        (*v974)(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v525 = v1002;
        sub_24A39B7E4(v522, v523, &v1012, &v1010, v524, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);
        sub_24A39A7B8(v514, type metadata accessor for FMFFriend);
        sub_24A39983C(v525, v514, type metadata accessor for FMFFriend);
        v526 = *v514;
        v527 = v514[1];
        swift_beginAccess();
        sub_24A3992EC(v514, v525, type metadata accessor for FMFFriend);

        v528 = swift_isUniquelyReferenced_nonNull_native();
        v1012 = v1022;
        sub_24A39B15C(v525, v526, v527, v528);

        v1022 = v1012;
        swift_endAccess();
        sub_24A39A7B8(v514, type metadata accessor for FMFFriend);
        v529 = v506;
        v530 = v984;
      }

      else
      {
        swift_endAccess();
        v981 = *v992;
        v531 = v997;
        (v981)(v997, 1, 1, v1003);
        v984 = type metadata accessor for FMFIntermediateFriend;
        v532 = v990;
        sub_24A3992EC(v948, v990, type metadata accessor for FMFIntermediateFriend);
        v980 = *v975;
        (v980)(v532, 0, 1, v1001);
        v1012 = 8;
        v1013 = 0;
        v1010 = 0;
        v1011 = 1;
        v979 = *v974;
        v533 = v991;
        v979(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v534 = v1002;
        sub_24A39B7E4(v531, v532, &v1012, &v1010, v533, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);

        v536 = v994;
        v977 = sub_24A39A8F4(v535, v534);

        v538 = sub_24A39AB44(v537, v534, sub_24A454B90, sub_24A454B90);
        v994 = v536;
        v976 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v534, v531, type metadata accessor for FMFFriend);
        v982 = v505;
        v539 = v981;
        (v981)(v531, 0, 1, v1003);
        (v980)(v532, 1, 1, v1001);
        v1012 = 0;
        v1013 = 1;
        v1010 = 0;
        v1011 = 1;
        v979(v533, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v540 = v944;
        sub_24A39B7E4(v531, v532, &v1012, &v1010, v533, 0, 1, &v1018, v944, v977, v538, 2u, 2u, 2);
        sub_24A39AF20(v540, v534, type metadata accessor for FMFFriend);
        v541 = *v534;
        v542 = v534[1];
        v543 = v976;
        sub_24A3992EC(v534, v531, v976);
        (v539)(v531, 0, 1, v1003);
        v505 = v982;
        swift_beginAccess();

        sub_24A39AF88(v531, v541, v542);
        v506 = v948;
        swift_endAccess();
        sub_24A39A7B8(v506, v984);
        v529 = v534;
        v530 = v543;
      }

      sub_24A39A7B8(v529, v530);
      v173 = v998;
      v192 = v995;
      goto LABEL_132;
    }

LABEL_142:
    v544 = sub_24A4AB600();
    v545 = sub_24A4ABCB0();
    if (os_log_type_enabled(v544, v545))
    {
      v546 = swift_slowAlloc();
      v547 = swift_slowAlloc();
      *v546 = 138412290;
      swift_beginAccess();

      v548 = sub_24A4AB760();
      v186 = v996;

      *(v546 + 4) = v548;
      *v547 = v548;
      v189 = v1003;
      _os_log_impl(&dword_24A376000, v544, v545, "FMFDataManager: Follower+following+futureFollower friends - %@", v546, 0xCu);
      sub_24A37EF2C(v547, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v547, -1, -1);
      v549 = v546;
      v165 = v987;
      MEMORY[0x24C219130](v549, -1, -1);
    }

    v550 = *(v947 + 560);
    v551 = *(v550 + 16);
    if (v551)
    {
      v552 = *(v947 + 536);
      v553 = v941;
      v554 = v550 + ((*(v941 + 80) + 32) & ~*(v941 + 80));
      v973 = *(v947 + 560);

      v988 = v552;
      swift_beginAccess();
      v985 = *(v553 + 72);
      v992 = (v1000 + 56);
      v975 = (v553 + 56);
      v974 = (v886 + 56);
      v555 = v949;
      while (1)
      {
        v993 = v551;
        sub_24A3992EC(v554, v555, type metadata accessor for FMFIntermediateFriend);
        v560 = *v555;
        v561 = v555[1];
        v562 = v988[3];
        v563 = v920;
        if (!*(v562 + 2))
        {
          goto LABEL_151;
        }

        v564 = v988[3];

        v565 = sub_24A39B2C8(v560, v561);
        if ((v566 & 1) == 0)
        {
          break;
        }

        sub_24A3992EC(*(v562 + 7) + *(v1000 + 72) * v565, v186, type metadata accessor for FMFFriend);

        v556 = v186;
        v557 = v1002;
        sub_24A3992EC(v556, v1002, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v558 = swift_isUniquelyReferenced_nonNull_native();
        v1010 = v1022;
        v559 = v557;
        v186 = v996;
        sub_24A39B15C(v559, v560, v561, v558);
        v1022 = v1010;
        swift_endAccess();
        sub_24A39A7B8(v186, type metadata accessor for FMFFriend);
        v555 = v949;
        sub_24A39A7B8(v949, type metadata accessor for FMFIntermediateFriend);
LABEL_147:
        v554 += v985;
        v551 = (v993 - 1);
        if (v993 == 1)
        {

          v189 = v1003;
          v165 = v987;
          goto LABEL_158;
        }
      }

LABEL_151:
      swift_beginAccess();
      v567 = v1022;
      if (*(v1022 + 16) && (v568 = sub_24A39B2C8(v560, v561), (v569 & 1) != 0))
      {
        v570 = v1000;
        sub_24A3992EC(*(v567 + 56) + *(v1000 + 72) * v568, v563, type metadata accessor for FMFFriend);
        sub_24A39983C(v563, v192, type metadata accessor for FMFFriend);
        swift_endAccess();
        v571 = v192;
        v572 = v997;
        sub_24A3992EC(v571, v997, type metadata accessor for FMFFriend);
        (*(v570 + 56))(v572, 0, 1, v1003);
        v573 = type metadata accessor for FMFIntermediateFriend;
        v555 = v949;
        v574 = v990;
        sub_24A3992EC(v949, v990, type metadata accessor for FMFIntermediateFriend);
        (*v975)(v574, 0, 1, v1001);
        v1010 = 4;
        v1011 = 0;
        v1008 = 0;
        v1009 = 1;
        v575 = v991;
        (*v974)(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v576 = v1002;
        sub_24A39B7E4(v572, v574, &v1010, &v1008, v575, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);
        sub_24A39A7B8(v995, type metadata accessor for FMFFriend);
        sub_24A39983C(v576, v995, type metadata accessor for FMFFriend);
        v577 = *v995;
        v578 = v995[1];
        swift_beginAccess();
        sub_24A3992EC(v995, v576, type metadata accessor for FMFFriend);

        v579 = swift_isUniquelyReferenced_nonNull_native();
        v1010 = v1022;
        sub_24A39B15C(v576, v577, v578, v579);
        v192 = v995;

        v1022 = v1010;
        swift_endAccess();
        sub_24A39A7B8(v192, type metadata accessor for FMFFriend);
        v580 = v555;
      }

      else
      {
        swift_endAccess();
        v981 = *v992;
        v581 = v997;
        (v981)(v997, 1, 1, v1003);
        v984 = type metadata accessor for FMFIntermediateFriend;
        v582 = v990;
        sub_24A3992EC(v949, v990, type metadata accessor for FMFIntermediateFriend);
        v980 = *v975;
        (v980)(v582, 0, 1, v1001);
        v1010 = 4;
        v1011 = 0;
        v1008 = 0;
        v1009 = 1;
        v979 = *v974;
        v583 = v991;
        v979(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v584 = v1002;
        sub_24A39B7E4(v581, v582, &v1010, &v1008, v583, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);

        v586 = v994;
        v977 = sub_24A39A8F4(v585, v584);

        v588 = sub_24A39AB44(v587, v584, sub_24A454B90, sub_24A4543D4);
        v994 = v586;
        v976 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v584, v581, type metadata accessor for FMFFriend);
        v982 = v554;
        v589 = v981;
        (v981)(v581, 0, 1, v1003);
        (v980)(v582, 1, 1, v1001);
        v1010 = 0;
        v1011 = 1;
        v1008 = 0;
        v1009 = 1;
        v979(v583, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v590 = v944;
        sub_24A39B7E4(v581, v582, &v1010, &v1008, v583, 0, 1, &v1018, v944, v977, v588, 2u, 2u, 2);
        sub_24A39AF20(v590, v584, type metadata accessor for FMFFriend);
        v591 = *v584;
        v592 = v584[1];
        v573 = v976;
        sub_24A3992EC(v584, v581, v976);
        (v589)(v581, 0, 1, v1003);
        v554 = v982;
        swift_beginAccess();

        v593 = v592;
        v192 = v995;
        sub_24A39AF88(v581, v591, v593);
        v555 = v949;
        swift_endAccess();
        sub_24A39A7B8(v555, v984);
        v580 = v584;
      }

      sub_24A39A7B8(v580, v573);
      v173 = v998;
      v186 = v996;
      goto LABEL_147;
    }

LABEL_158:
    v594 = sub_24A4AB600();
    v595 = sub_24A4ABCB0();
    if (os_log_type_enabled(v594, v595))
    {
      v596 = swift_slowAlloc();
      v597 = swift_slowAlloc();
      *v596 = 138412290;
      swift_beginAccess();

      v598 = sub_24A4AB760();

      *(v596 + 4) = v598;
      *v597 = v598;
      v189 = v1003;
      _os_log_impl(&dword_24A376000, v594, v595, "Follower+following+futureFollower+futureFollowing friends - %@", v596, 0xCu);
      sub_24A37EF2C(v597, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v597, -1, -1);
      v599 = v596;
      v165 = v987;
      MEMORY[0x24C219130](v599, -1, -1);
    }

    v600 = sub_24A39CB88();
    v601 = v600[2];
    if (v601)
    {
      v602 = *(v886 + 80);
      v989 = v600;
      v603 = v600 + ((v602 + 32) & ~v602);
      v996 = *(v886 + 72);
      v995 = (v1000 + 56);
      v993 = (v941 + 56);
      v992 = (v886 + 56);
      v604 = v910;
      do
      {
        sub_24A3992EC(v603, v604, type metadata accessor for FMFLocation);
        v605 = v604[1];
        if (v605)
        {
          v606 = *v604;
          swift_beginAccess();
          v607 = v1022;
          if (*(v1022 + 16) && (v608 = sub_24A39B2C8(v606, v605), (v609 & 1) != 0))
          {
            v610 = v1000;
            sub_24A3992EC(*(v607 + 56) + *(v1000 + 72) * v608, v165, type metadata accessor for FMFFriend);
            v611 = v879;
            sub_24A39983C(v165, v879, type metadata accessor for FMFFriend);
            swift_endAccess();
            v612 = v997;
            sub_24A3992EC(v611, v997, type metadata accessor for FMFFriend);
            (*(v610 + 56))(v612, 0, 1, v189);
            v613 = v990;
            (*v993)(v990, 1, 1, v1001);
            v1010 = 0;
            v1011 = 1;
            v1008 = 0;
            v1009 = 1;
            v614 = v991;
            sub_24A3992EC(v910, v991, type metadata accessor for FMFLocation);
            (*v992)(v614, 0, 1, v999);
            v1021 = 0;
            v1019 = 0u;
            v1020 = 0u;
            v1018 = 0u;
            v615 = v1002;
            v616 = v612;
            v165 = v987;
            sub_24A39B7E4(v616, v613, &v1010, &v1008, v614, 0, 1, &v1018, v1002, 0, 0, 2u, 2u, 2);
            sub_24A39A7B8(v611, type metadata accessor for FMFFriend);
            sub_24A39983C(v615, v611, type metadata accessor for FMFFriend);
            v617 = *v611;
            v618 = v611[1];
            swift_beginAccess();
            sub_24A3992EC(v611, v615, type metadata accessor for FMFFriend);

            v619 = swift_isUniquelyReferenced_nonNull_native();
            v1010 = v1022;
            v620 = v615;
            v173 = v998;
            sub_24A39B15C(v620, v617, v618, v619);
            v621 = v611;
            v604 = v910;
            v189 = v1003;

            v1022 = v1010;
            swift_endAccess();
            sub_24A39A7B8(v621, type metadata accessor for FMFFriend);
          }

          else
          {
            swift_endAccess();
            v604 = v910;
          }
        }

        sub_24A39A7B8(v604, type metadata accessor for FMFLocation);
        v603 += v996;
        --v601;
      }

      while (v601);
    }

    v622 = v947;
    v623 = *(*(v947 + 608) + 16);
    v624 = v886;
    if (v623)
    {
      v995 = (v1000 + 56);
      v993 = (v941 + 56);
      v992 = (v886 + 56);

      v625 = (v989 + 6);
      v626 = v997;
      while (1)
      {
        v636 = *(v625 - 2);
        v635 = *(v625 - 1);
        v637 = *v625;
        swift_beginAccess();
        v638 = v1022;
        v639 = *(v1022 + 16);

        if (!v639)
        {
          break;
        }

        v640 = sub_24A39B2C8(v636, v635);
        if ((v641 & 1) == 0)
        {
          break;
        }

        v642 = *(v638 + 56) + *(v1000 + 72) * v640;
        v643 = v891;
        sub_24A3992EC(v642, v891, type metadata accessor for FMFFriend);
        v644 = v890;
        sub_24A39983C(v643, v890, type metadata accessor for FMFFriend);
        swift_endAccess();
        v645 = v1003;
        if ((*(v644 + v1003[9]) & 2) == 0)
        {
          sub_24A39A7B8(v644, type metadata accessor for FMFFriend);
LABEL_177:

          goto LABEL_171;
        }

        v996 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v644, v626, type metadata accessor for FMFFriend);
        (*v995)(v626, 0, 1, v645);
        v627 = v990;
        (*v993)(v990, 1, 1, v1001);
        v1010 = 0;
        v1011 = 1;
        v1008 = 0;
        v1009 = 1;
        v628 = v991;
        (*v992)(v991, 1, 1, v999);
        v1021 = 0;
        v1019 = 0u;
        v1020 = 0u;
        v1018 = 0u;
        v629 = v1002;
        sub_24A39B7E4(v626, v627, &v1010, &v1008, v628, 0, 1, &v1018, v1002, 0, 0, v637, 2u, 2);

        v630 = v996;
        sub_24A39A7B8(v644, v996);
        sub_24A39983C(v629, v644, type metadata accessor for FMFFriend);
        v631 = *v644;
        v632 = v644[1];
        swift_beginAccess();
        sub_24A3992EC(v644, v629, v630);

        v633 = swift_isUniquelyReferenced_nonNull_native();
        v1010 = v1022;
        v634 = v629;
        v173 = v998;
        sub_24A39B15C(v634, v631, v632, v633);

        v1022 = v1010;
        swift_endAccess();
        sub_24A39A7B8(v644, v630);
LABEL_171:
        v625 += 24;
        if (!--v623)
        {

          v622 = v947;
          v624 = v886;
          goto LABEL_179;
        }
      }

      swift_endAccess();
      goto LABEL_177;
    }

LABEL_179:
    v189 = *(*(v622 + 600) + 16);
    if (!v189)
    {
      goto LABEL_193;
    }

    v996 = v1000 + 56;
    v995 = (v941 + 56);
    v646 = (v624 + 56);

    v647 = v993 + 48;
    v648 = v896;
    while (1)
    {
      v650 = *(v647 - 2);
      v649 = *(v647 - 1);
      v651 = *v647;
      swift_beginAccess();
      v652 = v1022;
      v653 = *(v1022 + 16);

      if (v653 && (v654 = sub_24A39B2C8(v650, v649), (v655 & 1) != 0))
      {
        v656 = *(v652 + 56) + *(v1000 + 72) * v654;
        v657 = v892;
        sub_24A3992EC(v656, v892, type metadata accessor for FMFFriend);
        v658 = v896;
        sub_24A39983C(v657, v896, type metadata accessor for FMFFriend);
        swift_endAccess();
        v659 = v1003;
        if ((*(v658 + v1003[9]) & 2) != 0)
        {
          v660 = v658;
          v661 = v884;
          sub_24A3992EC(v660, v884, type metadata accessor for FMFFriend);
          (*v996)(v661, 0, 1, v659);
          v662 = v885;
          (*v995)(v885, 1, 1, v1001);
          v1010 = 0;
          v1011 = 1;
          v1008 = 0;
          v1009 = 1;
          v663 = v876;
          (*v646)(v876, 1, 1, v999);
          v1021 = 0;
          v1019 = 0u;
          v1020 = 0u;
          v1018 = 0u;
          if (v651)
          {
            v664 = sub_24A4AC270();

            v665 = v664 ^ 1;
            v661 = v884;
            v662 = v885;
          }

          else
          {

            v665 = 0;
          }

          v666 = v875;
          sub_24A39B7E4(v661, v662, &v1010, &v1008, v663, 0, 1, &v1018, v875, 0, 0, 2u, v665 & 1, 2);
          sub_24A39A7B8(v648, type metadata accessor for FMFFriend);
          sub_24A39983C(v666, v648, type metadata accessor for FMFFriend);
          v667 = *v648;
          v668 = v648[1];
          swift_beginAccess();
          v669 = v1002;
          sub_24A3992EC(v648, v1002, type metadata accessor for FMFFriend);

          v670 = swift_isUniquelyReferenced_nonNull_native();
          v1010 = v1022;
          sub_24A39B15C(v669, v667, v668, v670);

          v1022 = v1010;
          swift_endAccess();
          sub_24A39A7B8(v648, type metadata accessor for FMFFriend);
          goto LABEL_183;
        }

        sub_24A39A7B8(v658, type metadata accessor for FMFFriend);
      }

      else
      {
        swift_endAccess();
      }

LABEL_183:
      v647 += 24;
      if (!--v189)
      {

        v622 = v947;
        v173 = v998;
LABEL_193:
        v671 = *(v622 + 536);
        v672 = v671[5];
        v673 = v671[6];
        v674 = v671[7];
        v675 = v671[8];
        v988 = v671;
        v676 = v941;
        if (!v674)
        {
          sub_24A388B00(v672, v673, 0);
          sub_24A37F110(v672, v673, 0);
          v677 = v1000;
          goto LABEL_197;
        }

        sub_24A388B00(v672, v673, v674);

        sub_24A37F110(v672, v673, v674);
        v677 = v1000;
        if (!v675)
        {
LABEL_197:
          v678 = *(v947 + 744);
          v679 = *(v947 + 752);
          v680 = *(v947 + 760);
          v675 = *(v947 + 768);
          if (v680)
          {
            v681 = *(v947 + 768);
            sub_24A388B00(v678, v679, *(v947 + 760));

            sub_24A37F110(v678, v679, v680);

            if (v675)
            {
              goto LABEL_199;
            }

LABEL_213:
            v165 = v943;
            goto LABEL_214;
          }

          v702 = *(v947 + 768);
          sub_24A388B00(v678, v679, 0);
          sub_24A37F110(v678, v679, 0);
LABEL_212:

          goto LABEL_213;
        }

LABEL_199:
        v189 = *(v675 + 2);
        if (!v189)
        {
          goto LABEL_212;
        }

        v995 = (v677 + 56);
        v993 = (v676 + 56);
        v992 = (v886 + 56);
        v989 = v675;
        v682 = (v675 + 48);
        v165 = v943;
        while (2)
        {
          v694 = *(v682 - 2);
          v693 = *(v682 - 1);
          v695 = *v682;
          swift_beginAccess();
          v696 = v1022;
          v697 = *(v1022 + 16);

          if (v697 && (v698 = sub_24A39B2C8(v694, v693), (v699 & 1) != 0))
          {
            sub_24A3992EC(*(v696 + 56) + *(v1000 + 72) * v698, v173, type metadata accessor for FMFFriend);
            v700 = v880;
            sub_24A39983C(v173, v880, type metadata accessor for FMFFriend);
            swift_endAccess();
            v701 = v1003;
            if ((*(v700 + v1003[9]) & 2) == 0)
            {
              sub_24A39A7B8(v700, type metadata accessor for FMFFriend);
              goto LABEL_208;
            }

            v996 = type metadata accessor for FMFFriend;
            v683 = v997;
            sub_24A3992EC(v700, v997, type metadata accessor for FMFFriend);
            (*v995)(v683, 0, 1, v701);
            v684 = v990;
            (*v993)(v990, 1, 1, v1001);
            v1010 = 0;
            v1011 = 1;
            v1008 = 0;
            v1009 = 1;
            v685 = v991;
            (*v992)(v991, 1, 1, v999);
            v1021 = 0;
            v1019 = 0u;
            v1020 = 0u;
            v1018 = 0u;
            v686 = v1002;
            v687 = v683;
            v173 = v998;
            sub_24A39B7E4(v687, v684, &v1010, &v1008, v685, v695, 0, &v1018, v1002, 0, 0, 2u, 2u, 2);

            v688 = v996;
            sub_24A39A7B8(v700, v996);
            sub_24A39983C(v686, v700, type metadata accessor for FMFFriend);
            v689 = *v700;
            v690 = v700[1];
            swift_beginAccess();
            sub_24A3992EC(v700, v686, v688);

            v691 = swift_isUniquelyReferenced_nonNull_native();
            v1010 = v1022;
            v692 = v686;
            v165 = v943;
            sub_24A39B15C(v692, v689, v690, v691);

            v1022 = v1010;
            swift_endAccess();
            sub_24A39A7B8(v700, v688);
          }

          else
          {
            swift_endAccess();
LABEL_208:
          }

          v682 += 3;
          if (--v189)
          {
            continue;
          }

          break;
        }

LABEL_214:
        v703 = v988[2];
        v186 = v703 + 64;
        v704 = 1 << *(v703 + 32);
        v705 = -1;
        if (v704 < 64)
        {
          v705 = ~(-1 << v704);
        }

        v706 = v705 & *(v703 + 8);
        swift_beginAccess();
        v192 = (v704 + 63) >> 6;
        v998 = v703;

        for (i = 0; ; i = v709)
        {
          v190 = &qword_27EF405D0;
          if (!v706)
          {
            break;
          }

          v173 = i;
LABEL_226:
          v710 = __clz(__rbit64(v706));
          v706 &= v706 - 1;
          v711 = v710 | (v173 << 6);
          v712 = (*(v998 + 6) + 16 * v711);
          v714 = *v712;
          v713 = v712[1];
          v715 = v1002;
          sub_24A3992EC(*(v998 + 7) + *(v1000 + 72) * v711, v1002, type metadata accessor for FMFFriend);
          v716 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
          v717 = *(v716 + 48);
          v718 = v946;
          *v946 = v714;
          v718[1] = v713;
          sub_24A39983C(v715, v718 + v717, type metadata accessor for FMFFriend);
          (*(*(v716 - 8) + 56))(v718, 0, 1, v716);

          v709 = v173;
          v719 = v718;
          v165 = v943;
LABEL_227:
          sub_24A37BE24(v719, v165, &qword_27EF405C8, &qword_24A4BACD8);
          v190 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
          v720 = *(v190 - 8);
          v173 = v720 + 48;
          v721 = *(v720 + 48);
          if ((v721)(v165, 1, v190) == 1)
          {
            v993 = v721;
            v995 = (v720 + 48);
            swift_endAccess();

            v728 = v988;
            swift_beginAccess();
            v165 = *(v728 + 24);
            v186 = (v165 + 8);
            v729 = 1 << *(v165 + 32);
            v730 = -1;
            if (v729 < 64)
            {
              v730 = ~(-1 << v729);
            }

            v731 = v730 & v165[8];
            v192 = (v729 + 63) >> 6;
            v996 = v720 + 56;
            v989 = (v1000 + 56);

            v732 = 0;
            v998 = v190;
            v189 = v909;
            while (1)
            {
              if (v731)
              {
                v737 = v732;
                goto LABEL_245;
              }

              v738 = v192 <= v732 + 1 ? v732 + 1 : v192;
              v739 = v738 - 1;
              do
              {
                v737 = v732 + 1;
                if (__OFADD__(v732, 1))
                {
                  goto LABEL_341;
                }

                if (v737 >= v192)
                {
                  v992 = *v996;
                  (v992)(v189, 1, 1, v190);
                  v731 = 0;
                  v732 = v739;
                  goto LABEL_246;
                }

                v731 = *(v186 + 8 * v737);
                ++v732;
              }

              while (!v731);
              v732 = v737;
LABEL_245:
              v740 = __clz(__rbit64(v731));
              v731 &= v731 - 1;
              v741 = v740 | (v737 << 6);
              v742 = (v165[6] + 16 * v741);
              v744 = *v742;
              v743 = v742[1];
              v173 = v1002;
              sub_24A3992EC(v165[7] + *(v1000 + 72) * v741, v1002, type metadata accessor for FMFFriend);
              v745 = v998;
              v746 = *(v998 + 12);
              *v189 = v744;
              *(v189 + 8) = v743;
              v190 = v745;
              sub_24A39983C(v173, v189 + v746, type metadata accessor for FMFFriend);
              v992 = *v996;
              (v992)(v189, 0, 1, v190);

LABEL_246:
              v747 = v942;
              sub_24A37BE24(v189, v942, &qword_27EF405C8, &qword_24A4BACD8);
              if ((v993)(v747, 1, v190) == 1)
              {
                break;
              }

              v748 = v190;
              v173 = *v747;
              v749 = v747[1];
              v750 = v747 + *(v748 + 48);
              v751 = j;
              sub_24A39983C(v750, j, type metadata accessor for FMFFriend);
              if (*&v751[v1003[9]])
              {
                v733 = v1002;
                sub_24A3992EC(v751, v1002, type metadata accessor for FMFFriend);
                swift_beginAccess();
                v734 = swift_isUniquelyReferenced_nonNull_native();
                v1008 = v1022;
                v1022 = 0x8000000000000000;
                v735 = v733;
                v189 = v909;
                sub_24A39B15C(v735, v173, v749, v734);
                v736 = j;

                v1022 = v1008;
                swift_endAccess();
              }

              else
              {
                swift_beginAccess();
                v173 = sub_24A39B2C8(v173, v749);
                v753 = v752;

                if (v753)
                {
                  v754 = swift_isUniquelyReferenced_nonNull_native();
                  v1008 = v1022;
                  v1022 = 0x8000000000000000;
                  sub_24A4537B8(v754, *(v1008 + 24));
                  v755 = v1008;
                  v756 = *(*(v1008 + 48) + 16 * v173 + 8);

                  v757 = v897;
                  sub_24A39983C(*(v755 + 56) + *(v1000 + 72) * v173, v897, type metadata accessor for FMFFriend);
                  sub_24A4A7450(v173, v755);
                  v758 = 0;
                  v1022 = v755;
                }

                else
                {
                  v758 = 1;
                  v757 = v897;
                }

                (*v989)(v757, v758, 1, v1003);
                sub_24A37EF2C(v757, &qword_27EF3F2D0, &qword_24A4B4F50);
                swift_endAccess();
                v736 = j;
              }

              sub_24A39A7B8(v736, type metadata accessor for FMFFriend);
              v190 = v998;
            }

            v759 = v988;
            swift_beginAccess();
            v165 = *(v759 + 32);
            v186 = (v165 + 8);
            v760 = 1 << *(v165 + 32);
            v761 = -1;
            if (v760 < 64)
            {
              v761 = ~(-1 << v760);
            }

            v762 = v761 & v165[8];
            v192 = (v760 + 63) >> 6;
            v763 = *(v759 + 32);

            v764 = 0;
            while (1)
            {
              if (v762)
              {
                v770 = v764;
                goto LABEL_268;
              }

              v771 = v192 <= v764 + 1 ? v764 + 1 : v192;
              v772 = v771 - 1;
              do
              {
                v770 = v764 + 1;
                if (__OFADD__(v764, 1))
                {
                  goto LABEL_342;
                }

                if (v770 >= v192)
                {
                  v781 = v926;
                  (v992)(v926, 1, 1, v190);
                  v762 = 0;
                  v764 = v772;
                  goto LABEL_269;
                }

                v762 = *(v186 + 8 * v770);
                ++v764;
              }

              while (!v762);
              v764 = v770;
LABEL_268:
              v773 = __clz(__rbit64(v762));
              v762 &= v762 - 1;
              v774 = v773 | (v770 << 6);
              v775 = (v165[6] + 16 * v774);
              v777 = *v775;
              v776 = v775[1];
              v778 = v1002;
              sub_24A3992EC(v165[7] + *(v1000 + 72) * v774, v1002, type metadata accessor for FMFFriend);
              v779 = v998;
              v780 = *(v998 + 12);
              v781 = v926;
              *v926 = v777;
              *(v781 + 8) = v776;
              v190 = v779;
              sub_24A39983C(v778, v781 + v780, type metadata accessor for FMFFriend);
              (v992)(v781, 0, 1, v190);

LABEL_269:
              v782 = v983;
              sub_24A37BE24(v781, v983, &qword_27EF405C8, &qword_24A4BACD8);
              if ((v993)(v782, 1, v190) == 1)
              {
                break;
              }

              v783 = *v782;
              v173 = v782[1];
              swift_beginAccess();
              v784 = sub_24A39B2C8(v783, v173);
              v786 = v785;

              if (v786)
              {
                v765 = swift_isUniquelyReferenced_nonNull_native();
                v1006 = v1022;
                v1022 = 0x8000000000000000;
                sub_24A4537B8(v765, *(v1006 + 24));
                v766 = v1006;
                v767 = *(*(v1006 + 48) + 16 * v784 + 8);

                v189 = v924;
                sub_24A39983C(*(v766 + 56) + *(v1000 + 72) * v784, v924, type metadata accessor for FMFFriend);
                sub_24A4A7450(v784, v766);
                v768 = 0;
                v1022 = v766;
              }

              else
              {
                v768 = 1;
                v189 = v924;
              }

              (*v989)(v189, v768, 1, v1003);
              v190 = v998;
              v769 = *(v998 + 12);
              sub_24A37EF2C(v189, &qword_27EF3F2D0, &qword_24A4B4F50);
              swift_endAccess();
              sub_24A39A7B8(v983 + v769, type metadata accessor for FMFFriend);
            }

            v173 = v1022 + 64;
            v787 = 1 << *(v1022 + 32);
            v788 = -1;
            if (v787 < 64)
            {
              v788 = ~(-1 << v787);
            }

            v189 = v788 & *(v1022 + 64);
            v192 = (v787 + 63) >> 6;
            v985 = v1022;

            v186 = 0;
            *&v789 = 136315138;
            v983 = v789;
            v790 = v997;
            v791 = v1002;
            v165 = v925;
            for (j = v173; ; v173 = j)
            {
              while (2)
              {
                if (v189)
                {
                  v792 = v186;
                  goto LABEL_287;
                }

                if (v192 <= v186 + 1)
                {
                  v793 = v186 + 1;
                }

                else
                {
                  v793 = v192;
                }

                v794 = v793 - 1;
                do
                {
                  v792 = v186 + 1;
                  if (__OFADD__(v186, 1))
                  {
                    goto LABEL_343;
                  }

                  if (v792 >= v192)
                  {
                    (v992)(v165, 1, 1, v190);
                    v189 = 0;
                    v186 = v794;
                    goto LABEL_288;
                  }

                  v189 = *(v173 + 8 * v792);
                  ++v186;
                }

                while (!v189);
                v186 = v792;
LABEL_287:
                v795 = __clz(__rbit64(v189));
                v189 &= v189 - 1;
                v796 = v795 | (v792 << 6);
                v797 = (*(v985 + 48) + 16 * v796);
                v799 = *v797;
                v798 = v797[1];
                sub_24A3992EC(*(v985 + 56) + *(v1000 + 72) * v796, v791, type metadata accessor for FMFFriend);
                v800 = *(v190 + 48);
                v801 = v925;
                *v925 = v799;
                v801[1] = v798;
                v165 = v801;
                sub_24A39983C(v791, v801 + v800, type metadata accessor for FMFFriend);
                (v992)(v165, 0, 1, v190);

LABEL_288:
                v802 = v923;
                sub_24A37BE24(v165, v923, &qword_27EF405C8, &qword_24A4BACD8);
                if ((v993)(v802, 1, v190) == 1)
                {

                  v820 = *(v947 + 744);
                  v821 = *(v947 + 745) | ((*(v947 + 749) | (*(v947 + 751) << 16)) << 32);
                  v822 = *(v947 + 744);
                  v823 = *(v947 + 752);
                  v824 = *(v947 + 760);
                  v825 = *(v947 + 768);
                  if (v824)
                  {
                    v826 = v820 | (v821 << 8);
                    v827 = *(v947 + 768);
                    sub_24A388B00(v822, *(v947 + 752), *(v947 + 760));
                    sub_24A37F110(v826, v823, v824);
                    if ((v820 & 1) == 0)
                    {
                      v165 = (v1022 + 64);
                      v828 = 1 << *(v1022 + 32);
                      v829 = -1;
                      if (v828 < 64)
                      {
                        v829 = ~(-1 << v828);
                      }

                      v189 = v829 & *(v1022 + 64);
                      v190 = (v828 + 63) >> 6;
                      v982 = (v941 + 56);
                      v981 = (v886 + 56);
                      *&v983 = v1000 + 48;
                      v985 = v1022;

                      v830 = 0;
                      v173 = v877;
                      v186 = v878;
                      v831 = v895;
                      v984 = v165;
                      if (!v189)
                      {
LABEL_311:
                        if (v190 <= v830 + 1)
                        {
                          v834 = v830 + 1;
                        }

                        else
                        {
                          v834 = v190;
                        }

                        v835 = v834 - 1;
                        while (1)
                        {
                          v833 = v830 + 1;
                          if (__OFADD__(v830, 1))
                          {
                            goto LABEL_344;
                          }

                          if (v833 >= v190)
                          {
                            v192 = v998;
                            (v992)(v186, 1, 1, v998);
                            v189 = 0;
                            v830 = v835;
                            goto LABEL_320;
                          }

                          v189 = v165[v833];
                          ++v830;
                          if (v189)
                          {
                            v832 = v173;
                            v830 = v833;
                            goto LABEL_319;
                          }
                        }
                      }

                      while (1)
                      {
                        v832 = v173;
                        v833 = v830;
LABEL_319:
                        v836 = __clz(__rbit64(v189));
                        v189 &= v189 - 1;
                        v837 = v836 | (v833 << 6);
                        v838 = (*(v985 + 48) + 16 * v837);
                        v840 = *v838;
                        v839 = v838[1];
                        v841 = v1002;
                        sub_24A3992EC(*(v985 + 56) + *(v1000 + 72) * v837, v1002, type metadata accessor for FMFFriend);
                        v192 = v998;
                        v842 = *(v998 + 12);
                        *v186 = v840;
                        *(v186 + 8) = v839;
                        sub_24A39983C(v841, v186 + v842, type metadata accessor for FMFFriend);
                        (v992)(v186, 0, 1, v192);

                        v831 = v895;
                        v173 = v832;
                        v165 = v984;
LABEL_320:
                        sub_24A37BE24(v186, v831, &qword_27EF405C8, &qword_24A4BACD8);
                        if ((v993)(v831, 1, v192) == 1)
                        {
                          break;
                        }

                        v843 = v831[1];
                        v988 = *v831;
                        sub_24A39983C(v831 + *(v192 + 48), v173, type metadata accessor for FMFFriend);
                        v844 = *(v173 + v1003[9]);
                        if ((v844 & 8) != 0)
                        {
                          v987 = v843;
                          if ((v844 & 2) != 0)
                          {
                            v847 = v997;
                            sub_24A3992EC(v173, v997, type metadata accessor for FMFFriend);
                            j = *v989;
                            v846 = v1003;
                            (j)(v847, 0, 1, v1003);
                            v848 = v990;
                            (*v982)(v990, 1, 1, v1001);
                            v1006 = 0;
                            v1007 = 1;
                            v1004 = 8;
                            v1005 = 0;
                            v849 = v991;
                            (*v981)(v991, 1, 1, v999);
                            v1021 = 0;
                            v1019 = 0u;
                            v1020 = 0u;
                            v1018 = 0u;
                            v845 = v887;
                            sub_24A39B7E4(v847, v848, &v1006, &v1004, v849, 0, 1, &v1018, v887, 0, 0, 2u, 2u, 2);
                            (j)(v845, 0, 1, v846);
                          }

                          else
                          {
                            v845 = v887;
                            v846 = v1003;
                            j = *v989;
                            (j)(v887, 1, 1, v1003);
                          }

                          v850 = v874;
                          v192 = &qword_27EF3F2D0;
                          sub_24A37B740(v845, v874, &qword_27EF3F2D0, &qword_24A4B4F50);
                          swift_beginAccess();
                          if ((*v983)(v850, 1, v846) == 1)
                          {
                            sub_24A37EF2C(v850, &qword_27EF3F2D0, &qword_24A4B4F50);
                            v851 = sub_24A39B2C8(v988, v987);
                            v853 = v852;

                            v173 = v877;
                            if (v853)
                            {
                              v854 = swift_isUniquelyReferenced_nonNull_native();
                              v1006 = v1022;
                              v1022 = 0x8000000000000000;
                              sub_24A4537B8(v854, *(v1006 + 24));
                              v855 = v1006;
                              v856 = *(*(v1006 + 48) + 16 * v851 + 8);

                              v857 = v872;
                              sub_24A39983C(*(v855 + 56) + *(v1000 + 72) * v851, v872, type metadata accessor for FMFFriend);
                              sub_24A4A7450(v851, v855);
                              v858 = 0;
                              v1022 = v855;
                              v859 = v887;
                              v831 = v895;
                            }

                            else
                            {
                              v858 = 1;
                              v859 = v887;
                              v831 = v895;
                              v857 = v872;
                            }

                            (j)(v857, v858, 1, v1003);
                            sub_24A37EF2C(v857, &qword_27EF3F2D0, &qword_24A4B4F50);
                          }

                          else
                          {
                            v860 = v1002;
                            sub_24A39983C(v850, v1002, type metadata accessor for FMFFriend);
                            v861 = swift_isUniquelyReferenced_nonNull_native();
                            v1006 = v1022;
                            v1022 = 0x8000000000000000;
                            sub_24A39B15C(v860, v988, v987, v861);

                            v1022 = v1006;
                            v859 = v887;
                            v831 = v895;
                            v173 = v877;
                          }

                          swift_endAccess();
                          sub_24A37EF2C(v859, &qword_27EF3F2D0, &qword_24A4B4F50);
                          sub_24A39A7B8(v173, type metadata accessor for FMFFriend);
                          v186 = v878;
                          if (!v189)
                          {
                            goto LABEL_311;
                          }
                        }

                        else
                        {
                          sub_24A39A7B8(v173, type metadata accessor for FMFFriend);

                          if (!v189)
                          {
                            goto LABEL_311;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v862 = v820 | (v821 << 8);
                    v863 = *(v947 + 768);
                    sub_24A388B00(v822, *(v947 + 752), 0);
                    sub_24A37F110(v862, v823, 0);
                  }

                  v864 = v947;

                  v187 = sub_24A39DF4C(v865, v864);

                  if ((*(v864[6] + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) & 1) == 0)
                  {
                    v866 = v864[89];
                    v867 = v864[90];

                    sub_24A39F9FC(v187, v867);

                    v864 = v947;
                  }

                  v868 = v864[72];
                  v864[72] = v187;

                  return v187;
                }

                v803 = v802[1];
                v987 = *v802;
                v988 = v803;
                v804 = v802 + *(v190 + 48);
                v805 = v950;
                sub_24A39983C(v804, v950, type metadata accessor for FMFFriend);
                v806 = *(v805 + v1003[9]);
                if ((v806 & 2) != 0 && (v807 = *(v805 + v1003[10]), v807 != 2))
                {
                  v808 = v922;
                  if ((v806 & 8) != 0 || (v807 & 1) == 0)
                  {
LABEL_292:
                    sub_24A3992EC(v805, v808, type metadata accessor for FMFFriend);
                    v809 = sub_24A4AB600();
                    v810 = sub_24A4ABCE0();
                    if (os_log_type_enabled(v809, v810))
                    {
                      v811 = swift_slowAlloc();
                      v984 = swift_slowAlloc();
                      *&v1018 = v984;
                      *v811 = v983;
                      v812 = FMFFriend.name.getter();
                      v814 = v813;
                      sub_24A39A7B8(v808, type metadata accessor for FMFFriend);
                      v815 = sub_24A37BD58(v812, v814, &v1018);
                      v165 = v925;

                      *(v811 + 4) = v815;
                      _os_log_impl(&dword_24A376000, v809, v810, "FMFDataManager: checking if person is blocked %s", v811, 0xCu);
                      v816 = v984;
                      sub_24A37EEE0(v984);
                      MEMORY[0x24C219130](v816, -1, -1);
                      v817 = v811;
                      v790 = v997;
                      MEMORY[0x24C219130](v817, -1, -1);
                    }

                    else
                    {

                      sub_24A39A7B8(v808, type metadata accessor for FMFFriend);
                    }

                    v818 = v950;
                    v819 = FMFFriend.isBlocked()();
                    v791 = v1002;
                    v173 = j;
                    if (v819)
                    {
                      (*v989)(v790, 1, 1, v1003);
                      swift_beginAccess();
                      sub_24A39AF88(v790, v987, v988);
                      swift_endAccess();
                      sub_24A39A7B8(v818, type metadata accessor for FMFFriend);
                    }

                    else
                    {
                      sub_24A39A7B8(v818, type metadata accessor for FMFFriend);
                    }

                    v190 = v998;
                    continue;
                  }
                }

                else
                {
                  v808 = v922;
                  if ((v806 & 8) != 0)
                  {
                    goto LABEL_292;
                  }
                }

                break;
              }

              sub_24A39A7B8(v805, type metadata accessor for FMFFriend);
            }
          }

          v722 = v190;
          v723 = *v165;
          v724 = v165[1];
          v189 = v1002;
          sub_24A39983C(v165 + *(v722 + 48), v1002, type metadata accessor for FMFFriend);
          v725 = swift_isUniquelyReferenced_nonNull_native();
          v1010 = v1022;
          v1022 = 0x8000000000000000;
          sub_24A39B15C(v189, v723, v724, v725);

          v1022 = v1010;
        }

        if (v192 <= i + 1)
        {
          v708 = i + 1;
        }

        else
        {
          v708 = v192;
        }

        v709 = v708 - 1;
        while (1)
        {
          v173 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v173 >= v192)
          {
            v726 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
            v727 = v946;
            (*(*(v726 - 8) + 56))(v946, 1, 1, v726);
            v719 = v727;
            v706 = 0;
            goto LABEL_227;
          }

          v706 = *(v186 + 8 * v173);
          ++i;
          if (v706)
          {
            goto LABEL_226;
          }
        }

        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
        goto LABEL_345;
      }
    }
  }

  v191 = MEMORY[0x277D84F90];
  v173 = v998;
  v165 = v987;
LABEL_16:
  v978 = v191;

  v190 = sub_24A397C64();
  v993 = *(v190 + 16);
  if (v993)
  {
    v192 = 0;
    v989 = MEMORY[0x277D84F90];
    v186 = v996;
    v200 = v994;
    do
    {
      if (v192 >= *(v190 + 16))
      {
        goto LABEL_346;
      }

      v201 = (*(v175 + 80) + 32) & ~*(v175 + 80);
      v202 = *(v175 + 72);
      sub_24A3992EC(v190 + v201 + v202 * v192, v180, type metadata accessor for FMFLocationAlert);
      if (v180[*(v200 + 96)] == 1 && v180[*(v200 + 100)] == 1)
      {
        sub_24A39983C(v180, v992, type metadata accessor for FMFLocationAlert);
        v203 = v989;
        v204 = swift_isUniquelyReferenced_nonNull_native();
        *&v1018 = v203;
        if ((v204 & 1) == 0)
        {
          sub_24A3DBDE8(0, (v203[2] + 1), 1);
          v203 = v1018;
        }

        v206 = v203[2];
        v205 = v203[3];
        if (v206 >= v205 >> 1)
        {
          sub_24A3DBDE8(v205 > 1, v206 + 1, 1);
          v203 = v1018;
        }

        v203[2] = (v206 + 1);
        v989 = v203;
        sub_24A39983C(v992, v203 + v201 + v206 * v202, type metadata accessor for FMFLocationAlert);
        v173 = v998;
        v165 = v987;
        v186 = v996;
        v200 = v994;
      }

      else
      {
        sub_24A39A7B8(v180, type metadata accessor for FMFLocationAlert);
        v173 = v998;
      }

      ++v192;
      v189 = v1003;
    }

    while (v993 != v192);
  }

  else
  {
    v989 = MEMORY[0x277D84F90];
    v189 = v1003;
    v186 = v996;
  }

  v207 = *(v947 + 544);
  v913 = *(v207 + 16);
  if (!v913)
  {
    v994 = 0;
    v192 = v995;
    v190 = v977;
LABEL_79:
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_350;
  }

  v912 = v207 + ((*(v941 + 80) + 32) & ~*(v941 + 80));
  v982 = (v1000 + 56);
  v899 = (v941 + 56);
  v981 = (v886 + 56);
  v958 = (v1000 + 48);
  v898 = (v941 + 48);
  v957 = (v886 + 48);

  v209 = 0;
  v994 = 0;
  v873 = xmmword_24A4B4E10;
  v210 = v965;
  v192 = v914;
  v911 = v208;
  while (1)
  {
    if (v209 >= *(v208 + 16))
    {
      goto LABEL_347;
    }

    v222 = *(v941 + 72);
    v979 = v209;
    sub_24A3992EC(v912 + v222 * v209, v192, type metadata accessor for FMFIntermediateFriend);
    v223 = *(v947 + 536);
    v224 = *v192;
    v165 = *(v192 + 8);
    swift_beginAccess();
    v225 = *(v223 + 24);
    v226 = v981;
    if (!*(v225 + 16))
    {
      goto LABEL_44;
    }

    v227 = sub_24A39B2C8(v224, v165);
    if ((v228 & 1) == 0)
    {

LABEL_44:
      v980 = *v982;
      (v980)(v210, 1, 1, v189);
      v242 = v960;
      sub_24A3992EC(v192, v960, type metadata accessor for FMFIntermediateFriend);
      (*v899)(v242, 0, 1, v1001);
      v243 = *v226;
      v244 = v210;
      v245 = v999;
      (*v226)(v961, 1, 1, v999);
      v246 = *(v189 + 84);
      *(v971 + v246) = 7;
      v247 = sub_24A4AAAD0();
      v248 = *(v247 - 8);
      v249 = *(v248 + 56);
      v250 = v964;
      v956 = v247;
      v955 = v249;
      v954 = v248 + 56;
      v249(v964, 1, 1);
      v251 = v962;
      v970 = v243;
      (v243)(v962, 1, 1, v245);
      v252 = v905;
      sub_24A37B740(v244, v905, &qword_27EF3F2D0, &qword_24A4B4F50);
      v953 = *v958;
      if (v953(v252, 1, v189) == 1)
      {
        sub_24A37EF2C(v252, &qword_27EF3F2D0, &qword_24A4B4F50);
        LODWORD(v940) = 0;
        LODWORD(v951) = 0;
        v253 = 0;
        v969 = 0;
        v952 = 0;
        v968 = 0;
        v938 = 0;
        v937 = 0;
        v936 = 0;
        v935 = 0;
        v934 = 0;
        *&v933 = 0;
        v966 = 0;
        v992 = 0;
        v967 = 0;
        v993 = 0xE000000000000000;
        v931 = 2;
        v939 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v929) = 2;
        v927 = 2;
        LODWORD(v930) = 2;
        v988 = MEMORY[0x277D84FA0];
        v932 = 1;
      }

      else
      {
        sub_24A37EF2C(v251, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37EF2C(v250, &qword_27EF3F460, &unk_24A4B53B0);
        v255 = v252;
        v256 = v893;
        sub_24A39983C(v255, v893, type metadata accessor for FMFFriend);
        v257 = v256[1];
        v967 = *v256;
        v993 = v257;
        v258 = v256[3];
        v966 = v256[2];
        v992 = v258;
        v988 = v256[4];
        sub_24A37B740(v256 + *(v189 + 32), v250, &qword_27EF3F460, &unk_24A4B53B0);
        v259 = *(v189 + 40);
        v932 = *(v256 + *(v189 + 36));
        LODWORD(v930) = *(v256 + v259);
        v260 = *(v189 + 48);
        v261 = v189;
        v927 = *(v256 + *(v189 + 44));
        LODWORD(v929) = *(v256 + v260);
        LODWORD(v951) = *(v256 + *(v189 + 72));
        v262 = *(v189 + 56);
        LODWORD(v940) = *(v256 + *(v189 + 52));
        v931 = *(v256 + v262);
        v939 = *(v256 + *(v189 + 60));
        sub_24A37B740(v256 + *(v189 + 80), v251, &qword_27EF3F480, &unk_24A4B8C20);
        v263 = v256 + *(v189 + 76);
        v264 = *(v263 + 1);
        v968 = *v263;
        v265 = v246;
        v266 = *(v263 + 2);
        v267 = *(v263 + 3);
        v268 = *(v263 + 4);
        v269 = *(v263 + 5);
        v270 = *(v263 + 6);
        v271 = *(v256 + v261[16]);
        v969 = *(v256 + v261[17]);
        *(v971 + v265) = *(v256 + v261[21]);
        v253 = v256[5];

        v938 = v264;
        v937 = v266;
        v936 = v267;
        v935 = v268;
        v934 = v269;
        *&v933 = v270;
        sub_24A39AED0(v968, v264);

        v952 = v271;

        sub_24A39A7B8(v256, type metadata accessor for FMFFriend);
        v932 |= 1uLL;
        v242 = v960;
      }

      v254 = v908;
      sub_24A37B740(v242, v908, &qword_27EF3F2E0, &qword_24A4BACE0);
      if ((*v898)(v254, 1, v1001) == 1)
      {
        v928 = v253;
        sub_24A37EF2C(v242, &qword_27EF3F2E0, &qword_24A4BACE0);
        sub_24A37EF2C(v965, &qword_27EF3F2D0, &qword_24A4B4F50);
        sub_24A37EF2C(v254, &qword_27EF3F2E0, &qword_24A4BACE0);
        v272 = v964;
        v273 = v931;
        v274 = v929;
        v275 = v927;
      }

      else
      {

        v276 = v254;
        v277 = v883;
        sub_24A39983C(v276, v883, type metadata accessor for FMFIntermediateFriend);
        if (v927 == 2 || (v927 & 1) == 0)
        {
          v279 = v1001;
          v278 = *(v277 + *(v1001 + 56));
        }

        else
        {
          v278 = 1;
          v279 = v1001;
        }

        v280 = v277[1];
        v967 = *v277;
        v993 = v280;
        v281 = v277[3];
        v966 = v277[2];
        v992 = v281;
        if (v929 == 2 || (v929 & 1) == 0)
        {
          v282 = *(v277 + v279[15]);
        }

        else
        {
          v282 = 1;
        }

        if (v931 == 2 || (v931 & 1) == 0)
        {
          v283 = *(v277 + v279[16]);
        }

        else
        {
          v283 = 1;
        }

        v284 = v277[9];
        v928 = *(v277 + v279[17]);
        if (v284)
        {
          v285 = v277[8];
          sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
          v286 = v282;
          v287 = v283;
          v288 = swift_allocObject();
          *(v288 + 16) = v873;
          *(v288 + 32) = v285;
          *(v288 + 40) = v284;

          v988 = sub_24A48A0F4(v288, v988);
          swift_setDeallocating();
          sub_24A406964(v288 + 32);
          v283 = v287;
          v282 = v286;
          swift_deallocClassInstance();
        }

        else
        {
          v289 = v277[4];

          if (v289)
          {

            v290 = v283;
            v291 = sub_24A3999E0(v289);

            v292 = v291;
            v283 = v290;
            v988 = sub_24A399BC8(v292, v988);
          }
        }

        v293 = v964;
        v275 = v278 & 1;
        v274 = v282 & 1;
        v273 = v283 & 1;
        sub_24A37EF2C(v964, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37EF2C(v960, &qword_27EF3F2E0, &qword_24A4BACE0);
        sub_24A37EF2C(v965, &qword_27EF3F2D0, &qword_24A4B4F50);
        sub_24A37B740(v277 + *(v1001 + 48), v293, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A39A7B8(v277, type metadata accessor for FMFIntermediateFriend);
        v272 = v293;
      }

      v294 = v1003;
      v295 = v1003[14];
      v296 = v971;
      v297 = v993;
      *v971 = v967;
      v296[1] = v297;
      v298 = v992;
      v296[2] = v966;
      v296[3] = v298;
      v296[4] = v988;
      sub_24A37BE24(v272, v296 + v294[8], &qword_27EF3F460, &unk_24A4B53B0);
      *(v296 + v294[9]) = v932;
      *(v296 + v294[10]) = v930;
      *(v296 + v294[11]) = v275;
      v189 = v294;
      *(v296 + v294[12]) = v274;
      v299 = (v296 + v294[19]);
      v300 = v938;
      *v299 = v968;
      v299[1] = v300;
      v301 = v936;
      v299[2] = v937;
      v299[3] = v301;
      v302 = v934;
      v299[4] = v935;
      v299[5] = v302;
      v299[6] = v933;
      *(v296 + v295) = v273;
      *(v296 + v294[18]) = v951;
      *(v296 + v294[13]) = v940;
      v296[5] = v928;
      v303 = v296;
      *(v296 + v294[15]) = v939;
      v304 = v961;
      v305 = v999;
      v992 = *v957;
      if ((v992)(v961, 1, v999) == 1)
      {
        sub_24A37EF2C(v304, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37BE24(v962, v296 + v294[20], &qword_27EF3F480, &unk_24A4B8C20);
        v306 = v994;
        v307 = v907;
        v308 = v970;
      }

      else
      {
        sub_24A37EF2C(v962, &qword_27EF3F480, &unk_24A4B8C20);
        v309 = v294[20];
        sub_24A39983C(v304, v303 + v309, type metadata accessor for FMFLocation);
        v308 = v970;
        (v970)(v303 + v309, 0, 1, v305);
        v306 = v994;
        v307 = v907;
      }

      *(v303 + v294[16]) = v952;
      *(v303 + v294[17]) = v969;
      v310 = v303;
      v311 = v959;
      sub_24A39983C(v310, v959, type metadata accessor for FMFFriend);

      v988 = sub_24A39A8F4(v312, v311);

      v969 = sub_24A39AB44(v313, v311, sub_24A454B90, sub_24A454B90);
      v994 = v306;
      v314 = v906;
      sub_24A3992EC(v311, v906, type metadata accessor for FMFFriend);
      (v980)(v314, 0, 1, v294);
      (v308)(v963, 1, 1, v305);
      v315 = v305;
      v316 = v294[21];
      v317 = v904;
      v904[v316] = 7;
      v318 = v921;
      v955(v921, 1, 1, v956);
      (v308)(v972, 1, 1, v315);
      sub_24A37BE24(v314, v307, &qword_27EF3F2D0, &qword_24A4B4F50);
      if (v953(v307, 1, v294) == 1)
      {
        sub_24A37EF2C(v307, &qword_27EF3F2D0, &qword_24A4B4F50);
        v319 = 0;
        v951 = 0;
        v993 = 0;
        v968 = 0;
        v966 = 0;
        v956 = 0;
        v320 = 0;
        v321 = v318;
        v940 = 0;
        v322 = 0;
        v938 = 0;
        v323 = 0;
        v324 = 0;
        v325 = 0;
        v326 = 0;
        v327 = 0xE000000000000000;
        LODWORD(v939) = 2;
        v967 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v955) = 2;
        LODWORD(v953) = 2;
        LODWORD(v952) = 2;
        LODWORD(v954) = 2;
        v328 = MEMORY[0x277D84FA0];
        v329 = 0;
      }

      else
      {
        v330 = v972;
        sub_24A37EF2C(v972, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37EF2C(v318, &qword_27EF3F460, &unk_24A4B53B0);
        v331 = v894;
        sub_24A39983C(v307, v894, type metadata accessor for FMFFriend);
        v332 = v331[1];
        v934 = *v331;
        v937 = v332;
        v333 = v331[3];
        *&v933 = v331[2];
        v936 = v333;
        v935 = v331[4];
        sub_24A37B740(v331 + v294[8], v318, &qword_27EF3F460, &unk_24A4B53B0);
        v334 = v294[10];
        v932 = *(v331 + v294[9]);
        LODWORD(v954) = *(v331 + v334);
        v335 = v294[12];
        LODWORD(v952) = *(v331 + v294[11]);
        LODWORD(v953) = *(v331 + v335);
        LODWORD(v939) = *(v331 + v294[18]);
        v336 = v294[14];
        v931 = *(v331 + v294[13]);
        LODWORD(v955) = *(v331 + v336);
        v967 = *(v331 + v294[15]);
        sub_24A37B740(v331 + v294[20], v330, &qword_27EF3F480, &unk_24A4B8C20);
        v337 = (v331 + v294[19]);
        v339 = *v337;
        v338 = v337[1];
        v340 = v337[2];
        v929 = v337[3];
        v930 = v340;
        v341 = v337[4];
        v928 = v337[5];
        v342 = v337[6];
        v343 = *(v331 + *(v189 + 64));
        v993 = *(v331 + *(v189 + 68));
        *(v317 + v316) = *(v331 + *(v189 + 84));
        v344 = v331[5];

        v966 = v339;
        v345 = v339;
        v956 = v338;
        v346 = v338;
        v320 = v929;
        v329 = v930;
        v940 = v341;
        v347 = v928;
        v938 = v342;
        sub_24A39AED0(v345, v346);
        v951 = v344;
        v322 = v347;

        v968 = v343;
        v319 = v931;

        v326 = v932;

        sub_24A39A7B8(v331, type metadata accessor for FMFFriend);
        v321 = v921;
        v328 = v935;
        v327 = v937;
        v324 = v936;
        v325 = v934;
        v323 = v933;
      }

      v348 = *(v189 + 56);
      *v317 = v325;
      v317[1] = v327;
      v317[2] = v323;
      v317[3] = v324;
      v317[4] = v328;
      sub_24A37BE24(v321, v317 + *(v189 + 32), &qword_27EF3F460, &unk_24A4B53B0);
      *(v317 + *(v189 + 36)) = v326;
      *(v317 + *(v189 + 40)) = v954;
      *(v317 + *(v189 + 44)) = v952;
      *(v317 + *(v189 + 48)) = v953;
      v349 = (v317 + *(v189 + 76));
      v350 = v956;
      *v349 = v966;
      v349[1] = v350;
      v349[2] = v329;
      v349[3] = v320;
      v349[4] = v940;
      v349[5] = v322;
      v349[6] = v938;
      *(v317 + v348) = v955;
      *(v317 + *(v189 + 72)) = (v939 == 2) | v939 & 1;
      *(v317 + *(v189 + 52)) = v319;
      v317[5] = v951;
      *(v317 + *(v189 + 60)) = v967;
      v351 = v963;
      v352 = v999;
      if ((v992)(v963, 1, v999) == 1)
      {
        sub_24A37EF2C(v351, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37BE24(v972, v317 + *(v189 + 80), &qword_27EF3F480, &unk_24A4B8C20);
      }

      else
      {
        sub_24A37EF2C(v972, &qword_27EF3F480, &unk_24A4B8C20);
        v353 = *(v189 + 80);
        sub_24A39983C(v351, v317 + v353, type metadata accessor for FMFLocation);
        (v970)(v317 + v353, 0, 1, v352);
      }

      v173 = v995;
      v210 = v965;
      v211 = v903;
      v212 = v959;
      v213 = v988;
      v214 = v969;

      *(v317 + *(v189 + 64)) = v213;
      *(v317 + *(v189 + 68)) = v214;
      sub_24A39983C(v317, v211, type metadata accessor for FMFFriend);
      sub_24A39AF20(v211, v212, type metadata accessor for FMFFriend);
      v215 = *v212;
      v216 = v212[1];
      v217 = v212;
      v218 = v212;
      v219 = v997;
      sub_24A3992EC(v217, v997, type metadata accessor for FMFFriend);
      (v980)(v219, 0, 1, v189);

      sub_24A39AF88(v219, v215, v216);
      v220 = v914;
      sub_24A39A7B8(v914, type metadata accessor for FMFIntermediateFriend);
      v221 = v218;
      v192 = v220;
      sub_24A39A7B8(v221, type metadata accessor for FMFFriend);
      v165 = v987;
      goto LABEL_33;
    }

    v192 = *(v1000 + 72);
    v190 = type metadata accessor for FMFFriend;
    v229 = v901;
    sub_24A3992EC(*(v225 + 56) + v192 * v227, v901, type metadata accessor for FMFFriend);

    sub_24A3992EC(v229, v902, type metadata accessor for FMFFriend);
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v230 = v1022;
    *&v1018 = v1022;
    v1022 = 0x8000000000000000;
    v231 = sub_24A39B2C8(v224, v165);
    v186 = v232;
    v233 = *(v230 + 16);
    v234 = (v232 & 1) == 0;
    if (__OFADD__(v233, v234))
    {
      goto LABEL_348;
    }

    v190 = v231;
    if (sub_24A4537B8(v189, v233 + v234))
    {
      break;
    }

    v189 = v1003;
    v237 = v1018;
    if ((v186 & 1) == 0)
    {
LABEL_41:
      v237[(v190 >> 6) + 8] |= 1 << v190;
      v238 = (v237[6] + 16 * v190);
      *v238 = v224;
      v238[1] = v165;
      sub_24A39983C(v902, v237[7] + v190 * v192, type metadata accessor for FMFFriend);

      sub_24A39A7B8(v901, type metadata accessor for FMFFriend);
      v239 = v237[2];
      v240 = __OFADD__(v239, 1);
      v241 = v239 + 1;
      if (v240)
      {
        goto LABEL_349;
      }

      v237[2] = v241;
      goto LABEL_65;
    }

LABEL_64:
    sub_24A39AF20(v902, v237[7] + v190 * v192, type metadata accessor for FMFFriend);
    sub_24A39A7B8(v901, type metadata accessor for FMFFriend);
LABEL_65:
    v192 = v914;
    sub_24A39A7B8(v914, type metadata accessor for FMFIntermediateFriend);
    v1022 = v237;

    v165 = v987;
    v173 = v995;
LABEL_33:
    v186 = v996;
    v190 = v977;
    v208 = v911;
    v209 = v979 + 1;
    if (v913 == v979 + 1)
    {

      v192 = v173;
      v173 = v998;
      goto LABEL_79;
    }
  }

  v235 = sub_24A39B2C8(v224, v165);
  v189 = v1003;
  if ((v186 & 1) == (v236 & 1))
  {
    v190 = v235;
    v237 = v1018;
    if ((v186 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

uint64_t sub_24A397C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A390DA0();
  *a1 = result;
  return result;
}

void *sub_24A397C64()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v211 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v211 - v16;
  MEMORY[0x28223BE20](v15);
  v29 = v211 - v28;
  v30 = v0[86];
  if (v30)
  {
    v31 = v0[86];
  }

  else
  {
    v217 = v23;
    *&v218 = v21;
    v220 = v25;
    v221 = v22;
    v231 = v20;
    v232 = v13;
    v219 = v18;
    v228 = v26;
    v229 = v27;
    v32 = v0[80];
    v33 = *(v32 + 16);
    v212 = v24;
    v213 = v0;
    v227 = v19;
    if (v33)
    {
      *&v216 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v34 = v32 + v216;
      v215 = *(v24 + 72);
      v211[1] = v32;

      v35 = v34;
      v226 = v33 - 1;
      v230 = MEMORY[0x277D84F90];
      *&v36 = 136315138;
      v214 = v36;
      while (1)
      {
        *&v222 = v35;
        sub_24A3992EC(v35, v17, type metadata accessor for FMFLocationAlert);
        v37 = *v17;
        v225 = *(v17 + 1);
        v38 = v225;
        *v29 = v37;
        *(v29 + 1) = v38;
        v29[42] = v17[42];
        v29[43] = v17[43];
        sub_24A37B740(&v17[v1[12]], &v29[v1[12]], &qword_27EF3F470, &qword_24A4B6960);
        v29[40] = v17[40];
        v29[41] = v17[41];
        v39 = v1[13];
        v41 = *&v17[v39];
        v224 = *&v17[v39 + 8];
        v40 = v224;
        v42 = &v29[v39];
        *v42 = v41;
        *(v42 + 1) = v40;
        v43 = v1[14];
        v44 = *&v17[v43];
        v45 = *&v17[v43 + 8];
        v46 = &v29[v43];
        *v46 = v44;
        *(v46 + 1) = v45;
        v29[v1[15]] = v17[v1[15]];
        *&v29[v1[16]] = *&v17[v1[16]];
        *&v29[v1[17]] = *&v17[v1[17]];
        v47 = v1[18];
        v223 = *&v17[v47];
        *&v29[v47] = v223;
        v48 = v1[19];
        v49 = *&v17[v48];
        v50 = *&v17[v48 + 8];
        v51 = &v29[v48];
        *v51 = v49;
        *(v51 + 1) = v50;
        *(v29 + 1) = *(v17 + 1);
        *(v29 + 4) = *(v17 + 4);
        sub_24A37B740(&v17[v1[26]], &v29[v1[26]], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(&v17[v1[27]], &v29[v1[27]], &qword_27EF3F460, &unk_24A4B53B0);
        v52 = v1[22];
        v53 = *&v17[v52];
        v54 = *&v17[v52 + 8];
        v55 = &v29[v52];
        *v55 = v53;
        *(v55 + 1) = v54;
        v56 = v1[23];
        memcpy(v234, &v17[v56], 0x130uLL);
        memcpy(&v29[v1[23]], &v17[v56], 0x130uLL);
        v57 = v1[20];
        v58 = *&v17[v57];
        v59 = *&v17[v57 + 8];
        v60 = *&v17[v57 + 16];
        v61 = &v29[v57];
        *v61 = v58;
        *(v61 + 1) = v59;
        *(v61 + 8) = v60;
        v29[v1[21]] = v17[v1[21]];
        v29[v1[24]] = 1;
        v29[v1[25]] = 1;

        sub_24A37B740(v234, v233, &unk_27EF404E0, &unk_24A4B5230);

        v62 = FMFLocationAlert.debugDescription.getter();
        v64 = v63;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v65 = sub_24A4AB630();
        sub_24A378E18(v65, qword_27EF4E260);

        v66 = sub_24A4AB600();
        v67 = sub_24A4ABCE0();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v233[0] = v69;
          *v68 = v214;
          v70 = sub_24A37BD58(v62, v64, v233);

          *(v68 + 4) = v70;
          v71 = v217;
          _os_log_impl(&dword_24A376000, v66, v67, "FMFFence: initialized from fence %s", v68, 0xCu);
          sub_24A37EEE0(v69);
          MEMORY[0x24C219130](v69, -1, -1);
          MEMORY[0x24C219130](v68, -1, -1);

          sub_24A39A7B8(v17, type metadata accessor for FMFLocationAlert);
          v30 = v230;
          v13 = v232;
        }

        else
        {

          sub_24A39A7B8(v17, type metadata accessor for FMFLocationAlert);
          v30 = v230;
          v13 = v232;
          v71 = v217;
        }

        sub_24A3992EC(v29, v71, type metadata accessor for FMFLocationAlert);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_24A3EDEAC(0, v30[2] + 1, 1, v30);
        }

        v73 = v30[2];
        v72 = v30[3];
        if (v73 >= v72 >> 1)
        {
          v30 = sub_24A3EDEAC(v72 > 1, v73 + 1, 1, v30);
        }

        sub_24A39A7B8(v29, type metadata accessor for FMFLocationAlert);
        v30[2] = v73 + 1;
        v74 = v215;
        sub_24A39983C(v71, v30 + v216 + v73 * v215, type metadata accessor for FMFLocationAlert);
        if (!v226)
        {
          break;
        }

        v230 = v30;
        --v226;
        v35 = v222 + v74;
      }

      v24 = v212;
      v0 = v213;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v75 = v0[81];
    v76 = *(v75 + 16);
    v77 = v231;
    v78 = v221;
    if (v76)
    {
      v230 = v30;
      *&v222 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v79 = v75 + v222;
      v217 = *(v24 + 72);
      v215 = v75;

      v80 = v79;
      v226 = v76 - 1;
      *&v81 = 136315138;
      v216 = v81;
      while (1)
      {
        v223 = v80;
        sub_24A3992EC(v80, v78, type metadata accessor for FMFLocationAlert);
        v82 = *v78;
        v225 = *(v78 + 8);
        v83 = v225;
        *v13 = v82;
        *(v13 + 1) = v83;
        v13[42] = *(v78 + 42);
        v13[43] = *(v78 + 43);
        sub_24A37B740(v78 + v1[12], &v13[v1[12]], &qword_27EF3F470, &qword_24A4B6960);
        v13[40] = *(v78 + 40);
        v13[41] = *(v78 + 41);
        v84 = v1[13];
        v86 = *(v78 + v84);
        v224 = *(v78 + v84 + 8);
        v85 = v224;
        v87 = &v13[v84];
        *v87 = v86;
        *(v87 + 1) = v85;
        v88 = v1[14];
        v89 = *(v78 + v88);
        v90 = *(v78 + v88 + 8);
        v91 = &v232[v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        v232[v1[15]] = *(v78 + v1[15]);
        *&v232[v1[16]] = *(v78 + v1[16]);
        *&v232[v1[17]] = *(v78 + v1[17]);
        *&v232[v1[18]] = *(v78 + v1[18]);
        v92 = v1[19];
        v93 = *(v78 + v92);
        v94 = *(v78 + v92 + 8);
        v95 = &v232[v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        *(v232 + 1) = *(v78 + 16);
        *(v232 + 4) = *(v78 + 32);
        sub_24A37B740(v78 + v1[26], &v232[v1[26]], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(v78 + v1[27], &v232[v1[27]], &qword_27EF3F460, &unk_24A4B53B0);
        v96 = v1[22];
        v97 = *(v78 + v96);
        v98 = *(v78 + v96 + 8);
        v99 = &v232[v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        v100 = v1[23];
        memcpy(v234, (v78 + v100), 0x130uLL);
        memcpy(&v232[v1[23]], (v78 + v100), 0x130uLL);
        v101 = v1[20];
        v102 = *(v78 + v101);
        v103 = *(v78 + v101 + 8);
        v104 = *(v78 + v101 + 16);
        v105 = &v232[v101];
        *v105 = v102;
        *(v105 + 1) = v103;
        *(v105 + 8) = v104;
        v232[v1[21]] = *(v78 + v1[21]);
        v232[v1[24]] = 0;
        v232[v1[25]] = 1;

        v13 = v232;

        sub_24A37B740(v234, v233, &unk_27EF404E0, &unk_24A4B5230);

        v106 = FMFLocationAlert.debugDescription.getter();
        v108 = v107;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v109 = sub_24A4AB630();
        sub_24A378E18(v109, qword_27EF4E260);

        v110 = sub_24A4AB600();
        v111 = sub_24A4ABCE0();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v233[0] = v113;
          *v112 = v216;
          v114 = sub_24A37BD58(v106, v108, v233);

          *(v112 + 4) = v114;
          _os_log_impl(&dword_24A376000, v110, v111, "FMFFence: initialized from fence %s", v112, 0xCu);
          sub_24A37EEE0(v113);
          MEMORY[0x24C219130](v113, -1, -1);
          MEMORY[0x24C219130](v112, -1, -1);
        }

        else
        {
        }

        v78 = v221;
        sub_24A39A7B8(v221, type metadata accessor for FMFLocationAlert);
        v77 = v231;
        v115 = v218;
        sub_24A3992EC(v13, v218, type metadata accessor for FMFLocationAlert);
        v30 = v230;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_24A3EDEAC(0, v30[2] + 1, 1, v30);
        }

        v117 = v30[2];
        v116 = v30[3];
        if (v117 >= v116 >> 1)
        {
          v30 = sub_24A3EDEAC(v116 > 1, v117 + 1, 1, v30);
        }

        sub_24A39A7B8(v13, type metadata accessor for FMFLocationAlert);
        v30[2] = v117 + 1;
        v118 = v217;
        sub_24A39983C(v115, v30 + v222 + v117 * v217, type metadata accessor for FMFLocationAlert);
        if (!v226)
        {
          break;
        }

        v230 = v30;
        --v226;
        v80 = v223 + v118;
      }

      v24 = v212;
      v0 = v213;
    }

    v119 = v0[82];
    v120 = *(v119 + 16);
    if (v120)
    {
      v230 = v30;
      *&v222 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v121 = v119 + v222;
      v221 = *(v24 + 72);
      v217 = v119;

      v122 = v121;
      v232 = (v120 - 1);
      *&v123 = 136315138;
      v218 = v123;
      while (1)
      {
        v223 = v122;
        v124 = v227;
        sub_24A3992EC(v122, v227, type metadata accessor for FMFLocationAlert);
        v125 = *v124;
        v226 = *(v124 + 8);
        v126 = v226;
        *v77 = v125;
        *(v77 + 8) = v126;
        *(v77 + 42) = *(v124 + 42);
        *(v77 + 43) = *(v124 + 43);
        sub_24A37B740(v124 + v1[12], v77 + v1[12], &qword_27EF3F470, &qword_24A4B6960);
        *(v77 + 40) = *(v124 + 40);
        *(v77 + 41) = *(v124 + 41);
        v127 = v1[13];
        v129 = *(v124 + v127);
        v225 = *(v124 + v127 + 8);
        v128 = v225;
        v130 = (v77 + v127);
        *v130 = v129;
        v130[1] = v128;
        v131 = v1[14];
        v133 = *(v124 + v131);
        v224 = *(v124 + v131 + 8);
        v132 = v224;
        v134 = (v77 + v131);
        *v134 = v133;
        v134[1] = v132;
        *(v77 + v1[15]) = *(v124 + v1[15]);
        *(v77 + v1[16]) = *(v124 + v1[16]);
        *(v77 + v1[17]) = *(v124 + v1[17]);
        *(v77 + v1[18]) = *(v124 + v1[18]);
        v135 = v1[19];
        v136 = *(v124 + v135);
        v137 = *(v124 + v135 + 8);
        v138 = (v77 + v135);
        *v138 = v136;
        v138[1] = v137;
        *(v77 + 16) = *(v124 + 16);
        *(v77 + 32) = *(v124 + 32);
        sub_24A37B740(v124 + v1[26], v77 + v1[26], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(v124 + v1[27], v77 + v1[27], &qword_27EF3F460, &unk_24A4B53B0);
        v139 = v1[22];
        v140 = *(v124 + v139);
        v141 = *(v124 + v139 + 8);
        v142 = (v231 + v139);
        *v142 = v140;
        v142[1] = v141;
        v143 = v1[23];
        memcpy(v234, (v124 + v143), 0x130uLL);
        memcpy((v231 + v1[23]), (v124 + v143), 0x130uLL);
        v144 = v1[20];
        v145 = *(v124 + v144);
        v146 = *(v124 + v144 + 8);
        v147 = *(v124 + v144 + 16);
        v148 = v231 + v144;
        *v148 = v145;
        *(v148 + 8) = v146;
        *(v148 + 16) = v147;
        *(v231 + v1[21]) = *(v124 + v1[21]);
        *(v231 + v1[24]) = 1;
        *(v231 + v1[25]) = 0;
        v77 = v231;

        sub_24A37B740(v234, v233, &unk_27EF404E0, &unk_24A4B5230);

        v149 = FMFLocationAlert.debugDescription.getter();
        v151 = v150;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v152 = sub_24A4AB630();
        sub_24A378E18(v152, qword_27EF4E260);

        v153 = sub_24A4AB600();
        v154 = sub_24A4ABCE0();

        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v233[0] = v156;
          *v155 = v218;
          v157 = sub_24A37BD58(v149, v151, v233);

          *(v155 + 4) = v157;
          _os_log_impl(&dword_24A376000, v153, v154, "FMFFence: initialized from fence %s", v155, 0xCu);
          sub_24A37EEE0(v156);
          MEMORY[0x24C219130](v156, -1, -1);
          v158 = v155;
          v77 = v231;
          MEMORY[0x24C219130](v158, -1, -1);
        }

        else
        {
        }

        sub_24A39A7B8(v227, type metadata accessor for FMFLocationAlert);
        v159 = v219;
        sub_24A3992EC(v77, v219, type metadata accessor for FMFLocationAlert);
        v30 = v230;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_24A3EDEAC(0, v30[2] + 1, 1, v30);
        }

        v161 = v30[2];
        v160 = v30[3];
        if (v161 >= v160 >> 1)
        {
          v30 = sub_24A3EDEAC(v160 > 1, v161 + 1, 1, v30);
        }

        sub_24A39A7B8(v77, type metadata accessor for FMFLocationAlert);
        v30[2] = v161 + 1;
        v162 = v221;
        sub_24A39983C(v159, v30 + v222 + v161 * v221, type metadata accessor for FMFLocationAlert);
        if (!v232)
        {
          break;
        }

        v230 = v30;
        --v232;
        v122 = v223 + v162;
      }

      v24 = v212;
      v0 = v213;
    }

    v163 = v0[83];
    v164 = *(v163 + 16);
    if (v164)
    {
      v230 = v30;
      v224 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v165 = v163 + v224;
      v223 = *(v24 + 72);
      v221 = v163;

      v166 = v165;
      v232 = (v164 - 1);
      *&v167 = 136315138;
      v222 = v167;
      while (1)
      {
        v225 = v166;
        v168 = v228;
        sub_24A3992EC(v166, v228, type metadata accessor for FMFLocationAlert);
        v169 = *v168;
        v231 = *(v168 + 8);
        v170 = v231;
        v171 = v229;
        *v229 = v169;
        v171[1] = v170;
        *(v171 + 42) = *(v168 + 42);
        *(v171 + 43) = *(v168 + 43);
        sub_24A37B740(v168 + v1[12], v171 + v1[12], &qword_27EF3F470, &qword_24A4B6960);
        *(v171 + 40) = *(v168 + 40);
        *(v171 + 41) = *(v168 + 41);
        v172 = v1[13];
        v174 = *(v168 + v172);
        v227 = *(v168 + v172 + 8);
        v173 = v227;
        v175 = (v171 + v172);
        *v175 = v174;
        v175[1] = v173;
        v176 = v1[14];
        v178 = *(v168 + v176);
        v226 = *(v168 + v176 + 8);
        v177 = v226;
        v179 = (v171 + v176);
        *v179 = v178;
        v179[1] = v177;
        *(v171 + v1[15]) = *(v168 + v1[15]);
        *(v171 + v1[16]) = *(v168 + v1[16]);
        *(v171 + v1[17]) = *(v168 + v1[17]);
        *(v171 + v1[18]) = *(v168 + v1[18]);
        v180 = v1[19];
        v181 = *(v168 + v180);
        v182 = *(v168 + v180 + 8);
        v183 = (v171 + v180);
        *v183 = v181;
        v183[1] = v182;
        *(v171 + 1) = *(v168 + 16);
        v171[4] = *(v168 + 32);
        sub_24A37B740(v168 + v1[26], v171 + v1[26], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(v168 + v1[27], v171 + v1[27], &qword_27EF3F460, &unk_24A4B53B0);
        v184 = v1[22];
        v185 = *(v168 + v184);
        v186 = *(v168 + v184 + 8);
        v187 = (v171 + v184);
        *v187 = v185;
        v187[1] = v186;
        v188 = v1[23];
        memcpy(v234, (v168 + v188), 0x130uLL);
        memcpy(v171 + v1[23], (v168 + v188), 0x130uLL);
        v189 = v1[20];
        v190 = *(v168 + v189);
        v191 = *(v168 + v189 + 8);
        v192 = *(v168 + v189 + 16);
        v193 = v171 + v189;
        *v193 = v190;
        *(v193 + 1) = v191;
        *(v193 + 8) = v192;
        *(v171 + v1[21]) = *(v168 + v1[21]);
        *(v171 + v1[24]) = 0;
        *(v171 + v1[25]) = 0;

        sub_24A37B740(v234, v233, &unk_27EF404E0, &unk_24A4B5230);

        v194 = FMFLocationAlert.debugDescription.getter();
        v196 = v195;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v197 = sub_24A4AB630();
        sub_24A378E18(v197, qword_27EF4E260);

        v198 = sub_24A4AB600();
        v199 = sub_24A4ABCE0();

        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v233[0] = v201;
          *v200 = v222;
          v202 = sub_24A37BD58(v194, v196, v233);

          *(v200 + 4) = v202;
          _os_log_impl(&dword_24A376000, v198, v199, "FMFFence: initialized from fence %s", v200, 0xCu);
          sub_24A37EEE0(v201);
          MEMORY[0x24C219130](v201, -1, -1);
          MEMORY[0x24C219130](v200, -1, -1);
        }

        else
        {
        }

        sub_24A39A7B8(v228, type metadata accessor for FMFLocationAlert);
        v203 = v220;
        sub_24A3992EC(v229, v220, type metadata accessor for FMFLocationAlert);
        v30 = v230;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_24A3EDEAC(0, v30[2] + 1, 1, v30);
        }

        v205 = v30[2];
        v204 = v30[3];
        v206 = v229;
        if (v205 >= v204 >> 1)
        {
          v30 = sub_24A3EDEAC(v204 > 1, v205 + 1, 1, v30);
          v206 = v229;
        }

        sub_24A39A7B8(v206, type metadata accessor for FMFLocationAlert);
        v30[2] = v205 + 1;
        v207 = v223;
        sub_24A39983C(v203, v30 + v224 + v205 * v223, type metadata accessor for FMFLocationAlert);
        if (!v232)
        {
          break;
        }

        v230 = v30;
        --v232;
        v166 = v225 + v207;
      }

      v0 = v213;
    }

    v208 = v0[86];
    v0[86] = v30;

    v209 = v0[72];
    v0[72] = 0;
  }

  return v30;
}

uint64_t sub_24A39921C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A399284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3992EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A399368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A39942C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3994F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24A399640(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A3996FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A39976C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3997D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39983C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3998A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A39997C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A3999E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C218010](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24A399A78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24A399A78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v9 = sub_24A4AC3A0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24A399D18(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24A399BC8(uint64_t result, uint64_t a2)
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

    sub_24A399A78(&v14, v12, v13);
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

uint64_t type metadata accessor for FMFMyLocationController()
{
  result = qword_27EF40860;
  if (!qword_27EF40860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A399D18(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24A4865F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24A487BF4();
      goto LABEL_16;
    }

    sub_24A399FCC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  result = sub_24A4AC3A0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24A4AC270();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24A4AC2A0();
  __break(1u);
  return result;
}

void sub_24A399E98()
{
  sub_24A399F74();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24A399F74()
{
  if (!qword_27EF40870)
  {
    type metadata accessor for FMFLocation();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF40870);
    }
  }
}

uint64_t sub_24A399FCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  result = sub_24A4ABF00();
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
      sub_24A4AC360();

      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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

char *sub_24A39A204(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_24A4ABD50();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4ABD10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24A4AB6E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *&v1[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation] = 0;
  *&v1[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation] = 0;
  v10 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
  v11 = type metadata accessor for FMFLocation();
  v12 = *(*(v11 - 8) + 56);
  v12(&v2[v10], 1, 1, v11);
  v12(&v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myUnshiftedLocation], 1, 1, v11);
  v13 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationShifter;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v2[v13] = FMLocationShifter.init()();
  v14 = &v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
  *v15 = 0;
  v15[8] = 1;
  v24 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocationUpdatingQueue;
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  v30 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v26 + 104))(v25, *MEMORY[0x277D85260], v27);
  *&v2[v24] = sub_24A4ABD90();
  v16 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  *&v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager] = v16;
  v17 = v28;
  sub_24A39997C(v28, &v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController]);
  v18 = type metadata accessor for FMFMyLocationController();
  v29.receiver = v2;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager;
  v21 = *&v19[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager];
  v22 = v19;
  [v21 setDelegate_];
  [*&v19[v20] setDesiredAccuracy_];
  [*&v19[v20] setDistanceFilter_];

  sub_24A37EEE0(v17);
  return v22;
}

uint64_t sub_24A39A638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24A39A8F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMFLocationAlert();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v9 + 72);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v24;
  v15 = MEMORY[0x277D84F90];
  v25 = v4;
  do
  {
    sub_24A3992EC(v14, v11, type metadata accessor for FMFLocationAlert);
    v16 = &v11[*(v4 + 76)];
    v17 = *(v16 + 1);
    if (v17 && (*v16 == *a2 ? (v18 = v17 == a2[1]) : (v18 = 0), v18 || (sub_24A4AC270() & 1) != 0))
    {
      sub_24A39983C(v11, v8, type metadata accessor for FMFLocationAlert);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A3DBDE8(0, *(v15 + 16) + 1, 1);
        v15 = v26;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24A3DBDE8(v20 > 1, v21 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v21 + 1;
      sub_24A39983C(v8, v15 + v24 + v21 * v13, type metadata accessor for FMFLocationAlert);
      v4 = v25;
    }

    else
    {
      sub_24A39A7B8(v11, type metadata accessor for FMFLocationAlert);
    }

    v14 += v13;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_24A39AB44(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *))
{
  v27 = a2;
  v28 = a3;
  v7 = type metadata accessor for FMFLocationAlert();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v26 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v25 = *(a1 + 16);
  if (v25)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v23 = a4;
    v24 = a1;
    while (v15 < *(a1 + 16))
    {
      v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = *(v8 + 72);
      sub_24A3992EC(a1 + v17 + v18 * v15, v14, type metadata accessor for FMFLocationAlert);
      v19 = sub_24A44F860(v14, v27, v28, a4);
      if (v4)
      {
        sub_24A39A7B8(v14, type metadata accessor for FMFLocationAlert);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_24A39983C(v14, v26, type metadata accessor for FMFLocationAlert);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBDE8(0, *(v16 + 16) + 1, 1);
          v16 = v29;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24A3DBDE8(v21 > 1, v22 + 1, 1);
          v16 = v29;
        }

        *(v16 + 16) = v22 + 1;
        result = sub_24A39983C(v26, v16 + v17 + v22 * v18, type metadata accessor for FMFLocationAlert);
        a4 = v23;
        a1 = v24;
      }

      else
      {
        result = sub_24A39A7B8(v14, type metadata accessor for FMFLocationAlert);
      }

      if (v25 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_15:

    return v16;
  }

  return result;
}

unint64_t sub_24A39ADC8()
{
  result = qword_27EF3FE18;
  if (!qword_27EF3FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE18);
  }

  return result;
}

unint64_t sub_24A39AE1C()
{
  result = qword_27EF3F340;
  if (!qword_27EF3F340)
  {
    sub_24A3CBC9C(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A38B7D4(&qword_27EF3F348, type metadata accessor for FMFLabelledLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F340);
  }

  return result;
}

uint64_t sub_24A39AED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A39AF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FMFFriend();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A4A471C(a2, a3, v10);

    return sub_24A37EF2C(v10, &qword_27EF3F2D0, &qword_24A4B4F50);
  }

  else
  {
    sub_24A3998A4(a1, v14, type metadata accessor for FMFFriend);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24A39B15C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24A39B15C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FMFFriend();
      return sub_24A39CB20(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FMFFriend);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A91D8();
    goto LABEL_7;
  }

  sub_24A4A5AB4(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24A4AC2B0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A8218(v12, a2, a3, a1, v18);
}

unint64_t sub_24A39B2C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v6 = sub_24A4AC3A0();

  return sub_24A39B680(a1, a2, v6);
}

uint64_t sub_24A39B340(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  sub_24A3C9CEC(a4, a5);
  v51 = a2;
  result = sub_24A4AC080();
  v18 = result;
  if (*(v15 + 16))
  {
    v48 = v9;
    v49 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v50 + 72);
      v37 = v32 + v36 * v31;
      if (v51)
      {
        sub_24A3998A4(v37, v52, v53);
      }

      else
      {
        sub_24A399284(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = sub_24A3998A4(v52, *(v18 + 56) + v36 * v26, v53);
      ++*(v18 + 16);
      v15 = v49;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

unint64_t sub_24A39B680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A4AC270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A39B738(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_24A3998A4(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24A39B7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, char a14)
{
  v181 = a7;
  v182 = a6;
  v175 = a5;
  v193 = a2;
  v196 = a1;
  v18 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v176 = &v151 - v20;
  v185 = type metadata accessor for FMFIntermediateFriend();
  v156 = *(v185 - 1);
  v21 = *(v156 + 64);
  MEMORY[0x28223BE20](v185);
  v155 = (&v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v151 - v25;
  v27 = type metadata accessor for FMFFriend();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v151 - v34;
  v36 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v151 - v38;
  v166 = *a3;
  v188 = *(a3 + 8);
  v171 = *a4;
  v170 = *(a4 + 8);
  v40 = a8[1];
  v165 = *a8;
  v199 = v40;
  v41 = a8[3];
  v164 = a8[2];
  v163 = v41;
  v42 = a8[5];
  v162 = a8[4];
  v161 = v42;
  v160 = a8[6];
  v43 = v27[21];
  v44 = a9;
  *(a9 + v43) = 7;
  v45 = v43;
  v46 = sub_24A4AAAD0();
  (*(*(v46 - 8) + 56))(v39, 1, 1, v46);
  v47 = type metadata accessor for FMFLocation();
  v179 = *(v47 - 8);
  v48 = *(v179 + 56);
  v174 = v47;
  v159 = v179 + 56;
  v158 = v48;
  (v48)(v35, 1, 1);
  sub_24A37B740(v196, v26, &qword_27EF3F2D0, &qword_24A4B4F50);
  v49 = (*(v28 + 48))(v26, 1, v27);
  v180 = v35;
  v184 = v39;
  if (v49 == 1)
  {
    sub_24A37EF2C(v26, &qword_27EF3F2D0, &qword_24A4B4F50);
    v178 = 0;
    v194 = 0;
    v192 = 0;
    v173 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v172 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v186 = 0;
    v198 = 0;
    v187 = 0;
    v56 = 0;
    v197 = 0xE000000000000000;
    v57 = MEMORY[0x277D84FA0];
    v157 = 2;
    v177 = 0x7FFFFFFFFFFFFFFFLL;
    v191 = 2;
    v190 = 2;
    v189 = 2;
    v183 = 2;
    v58 = v44;
  }

  else
  {
    sub_24A37EF2C(v35, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37EF2C(v39, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A39CAB8(v26, v31, type metadata accessor for FMFFriend);
    v59 = v31[1];
    v187 = *v31;
    v197 = v59;
    v60 = v31[3];
    v186 = v31[2];
    v198 = v60;
    v152 = v31[4];
    sub_24A37B740(v31 + v27[8], v39, &qword_27EF3F460, &unk_24A4B53B0);
    v61 = v27[10];
    v153 = *(v31 + v27[9]);
    v183 = *(v31 + v61);
    v62 = v27[12];
    v189 = *(v31 + v27[11]);
    v190 = *(v31 + v62);
    v157 = *(v31 + v27[18]);
    v63 = v27[14];
    v178 = *(v31 + v27[13]);
    v191 = *(v31 + v63);
    v177 = *(v31 + v27[15]);
    sub_24A37B740(v31 + v27[20], v35, &qword_27EF3F480, &unk_24A4B8C20);
    v64 = (v31 + v27[19]);
    v65 = v44;
    v154 = v44;
    v66 = *v64;
    v168 = v64[1];
    v67 = v168;
    v52 = v64[2];
    v68 = v64[3];
    v169 = v64[4];
    v69 = v64[6];
    v167 = v64[5];
    v70 = *(v31 + v27[16]);
    v192 = *(v31 + v27[17]);
    *(v65 + v45) = *(v31 + v27[21]);
    v71 = v68;
    v72 = v31[5];

    v57 = v152;

    v73 = v67;
    v172 = v71;
    v74 = v169;
    v75 = v167;
    sub_24A39AED0(v66, v73);
    v194 = v72;

    v173 = v70;

    v76 = v31;
    v50 = v66;
    sub_24A39A698(v76, type metadata accessor for FMFFriend);
    v51 = v168;
    v56 = v153;
    v55 = v69;
    v54 = v75;
    v53 = v74;
    v58 = v154;
  }

  v77 = v185;
  v78 = v176;
  v195 = v27;
  if ((v188 & 1) == 0)
  {
    v168 = v51;
    v153 = v55;
    v167 = v54;
    v82 = v57;
    v169 = v53;
    v83 = v166;
    if ((v166 & ~v56) != 0)
    {
      v84 = v166;
    }

    else
    {
      v84 = 0;
    }

    v85 = v84 | v56;
    sub_24A37B740(v193, v176, &qword_27EF3F2E0, &qword_24A4BACE0);
    if ((*(v156 + 48))(v78, 1, v77) == 1)
    {
      sub_24A37EF2C(v78, &qword_27EF3F2E0, &qword_24A4BACE0);
      v79 = v199;
      v80 = v171;
      v81 = v170;
      v53 = v169;
      v57 = v82;
      v54 = v167;
      v55 = v153;
      v56 = v85;
      v51 = v168;
      goto LABEL_44;
    }

    v86 = v52;

    v87 = v155;
    sub_24A39CAB8(v78, v155, type metadata accessor for FMFIntermediateFriend);
    if (v189 == 2 || (v189 & 1) == 0)
    {
      v88 = *(v87 + v77[14]);
    }

    else
    {
      v88 = 1;
    }

    if (v190 == 2 || (v190 & 1) == 0)
    {
      v89 = *(v87 + v77[15]);
    }

    else
    {
      v89 = 1;
    }

    v90 = *v87;
    v197 = v87[1];
    v91 = v88 & 1;
    v92 = v87[2];
    v198 = v87[3];
    if (v191 == 2 || (v191 & 1) == 0)
    {
      v93 = *(v87 + v77[16]);
    }

    else
    {
      v93 = 1;
    }

    result = *(v87 + v77[17]);
    v191 = v93 & 1;
    v187 = v90;
    v186 = v92;
    v194 = result;
    if (v83 > 3)
    {
      if (v83 == 4)
      {
        v152 = v50;
        v189 = v91;
        v190 = v89 & 1;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        result = swift_initStackObject();
        *(result + 16) = xmmword_24A4B4E10;
        v99 = v87[7];
        if (!v99)
        {
LABEL_80:
          __break(1u);
          return result;
        }

        v100 = v87[6];
      }

      else
      {
        if (v83 != 8)
        {
          goto LABEL_32;
        }

        v152 = v50;
        v189 = v91;
        v190 = v89 & 1;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        result = swift_initStackObject();
        *(result + 16) = xmmword_24A4B4E10;
        v99 = v87[9];
        if (!v99)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v100 = v87[8];
      }

      v106 = v87;
      *(result + 32) = v100;
      v107 = result + 32;
      *(result + 40) = v99;
      v108 = result;

      v109 = sub_24A3999E0(v108);
      swift_setDeallocating();
      sub_24A406964(v107);
      v57 = sub_24A399BC8(v109, v82);
      sub_24A39A698(v106, type metadata accessor for FMFIntermediateFriend);
      v79 = v199;
      v80 = v171;
      v81 = v170;
      v53 = v169;
    }

    else
    {
      if (v83 != 1)
      {
        if (v83 == 2)
        {
          v95 = v87[5];
          if (v95)
          {
            v96 = v87;

            v97 = sub_24A3999E0(v95);

            v57 = sub_24A399BC8(v97, v82);
            v98 = v185[14];
            v183 = *(v96 + v185[13]);
            v189 = *(v96 + v98);
            v190 = *(v96 + v185[15]);
            sub_24A39A698(v96, type metadata accessor for FMFIntermediateFriend);
LABEL_33:
            v79 = v199;
            v80 = v171;
            v81 = v170;
            v53 = v169;
            v54 = v167;
            v55 = v153;
            v56 = v85;
            v51 = v168;
            v52 = v86;
            goto LABEL_44;
          }

          __break(1u);
          goto LABEL_79;
        }

LABEL_32:
        v189 = v91;
        v190 = v89 & 1;

        sub_24A39A698(v87, type metadata accessor for FMFIntermediateFriend);
        v57 = MEMORY[0x277D84FA0];
        goto LABEL_33;
      }

      v101 = v87[9];
      v152 = v50;
      v190 = v89 & 1;
      v189 = v91;
      if (v101)
      {
        v154 = v58;
        v176 = v86;
        v102 = v87[8];
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v103 = v87;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A4B4E10;
        *(inited + 32) = v102;
        v86 = v176;
        v58 = v154;
        *(inited + 40) = v101;

        v82 = sub_24A48A0F4(inited, v82);
        swift_setDeallocating();
        sub_24A406964(inited + 32);
        v105 = v184;
      }

      else
      {
        v110 = v87[4];

        if (v110)
        {

          v111 = sub_24A3999E0(v110);

          v82 = sub_24A399BC8(v111, v82);
        }

        v105 = v184;
        v103 = v155;
      }

      sub_24A37EF2C(v105, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A37B740(v103 + v185[12], v105, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A39A698(v103, type metadata accessor for FMFIntermediateFriend);
      v79 = v199;
      v80 = v171;
      v81 = v170;
      v53 = v169;
      v57 = v82;
    }

    v54 = v167;
    v55 = v153;
    v56 = v85;
    v51 = v168;
    v52 = v86;
    v50 = v152;
    goto LABEL_44;
  }

  v79 = v199;
  v80 = v171;
  v81 = v170;
LABEL_44:
  v112 = v58;
  LODWORD(v176) = a13;
  if ((v56 & v80) == 0)
  {
    v81 = 1;
  }

  v113 = v81 == 0;
  v114 = -1;
  if (v113)
  {
    v114 = ~v80;
  }

  v171 = v114 & v56;
  if (v79)
  {
    sub_24A40D4E4(v50, v51);
    v115 = v165;
    v116 = v164;
    v117 = v163;
    v118 = v162;
    v119 = v161;
    v120 = v160;
  }

  else
  {
    v199 = v51;
    v116 = v52;
    v115 = v50;
    v117 = v172;
    v118 = v53;
    v119 = v54;
    v120 = v55;
  }

  LODWORD(v185) = a12;
  v121 = v197;
  *v112 = v187;
  v112[1] = v121;
  v122 = v198;
  v112[2] = v186;
  v112[3] = v122;
  v112[4] = v57;
  v123 = v195;
  v124 = v184;
  sub_24A37B740(v184, v112 + v195[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v112 + v123[9]) = v171;
  v125 = v183;
  if (a14 != 2)
  {
    v125 = a14;
  }

  v126 = v123[14];
  v127 = v123[18];
  *(v112 + v123[10]) = v125;
  *(v112 + v123[11]) = v189;
  *(v112 + v123[12]) = v190;
  v128 = (v112 + v123[19]);
  v129 = v199;
  *v128 = v115;
  v128[1] = v129;
  v128[2] = v116;
  v128[3] = v117;
  v128[4] = v118;
  v128[5] = v119;
  v128[6] = v120;
  *(v112 + v126) = v191;
  v130 = v176;
  if (v176 == 2)
  {
    sub_24A37EF2C(v193, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v196, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A37EF2C(v124, &qword_27EF3F460, &unk_24A4B53B0);
    LOBYTE(v131) = v157;
    v132 = v195;
    v133 = v180;
    if (v157 == 2)
    {
      v134 = v182;
      v135 = v181;
      v136 = v179;
      v137 = v178;
      v138 = v177;
      v139 = v194;
      v140 = v185;
      if (v188)
      {
        LOBYTE(v131) = 1;
      }

      else
      {
        v131 = (v166 >> 1) & 1;
      }
    }

    else
    {
      v134 = v182;
      v135 = v181;
      v136 = v179;
      v137 = v178;
      v138 = v177;
      v139 = v194;
      v140 = v185;
    }

    v141 = v131 & 1;
  }

  else
  {
    sub_24A37EF2C(v193, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v196, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A37EF2C(v124, &qword_27EF3F460, &unk_24A4B53B0);
    v141 = v130 & 1;
    v134 = v182;
    v135 = v181;
    v136 = v179;
    v137 = v178;
    v138 = v177;
    v139 = v194;
    v132 = v195;
    v133 = v180;
    v140 = v185;
  }

  v142 = a10;
  *(v112 + v127) = v141;
  v143 = v140;
  v144 = v140 & 1;
  if (v143 == 2)
  {
    v145 = v137;
  }

  else
  {
    v145 = v144;
  }

  *(v112 + v132[13]) = v145;
  v112[5] = v139;
  if (v135)
  {
    v146 = v138;
  }

  else
  {
    v146 = v134;
  }

  *(v112 + v132[15]) = v146;
  v147 = v175;
  v148 = v174;
  if ((*(v136 + 48))(v175, 1, v174) == 1)
  {
    sub_24A37EF2C(v147, &qword_27EF3F480, &unk_24A4B8C20);
    result = sub_24A37BE24(v133, v112 + v132[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v133, &qword_27EF3F480, &unk_24A4B8C20);
    v149 = v132[20];
    sub_24A39CAB8(v147, v112 + v149, type metadata accessor for FMFLocation);
    result = v158(v112 + v149, 0, 1, v148);
  }

  v150 = a11;
  if (a10)
  {
  }

  else
  {
    v142 = v173;
  }

  *(v112 + v132[16]) = v142;
  if (a11)
  {
  }

  else
  {
    v150 = v192;
  }

  *(v112 + v132[17]) = v150;
  return result;
}

uint64_t sub_24A39CA50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39CAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39CB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39CB88()
{
  v231 = sub_24A3C9CEC(&qword_27EF405C0, &unk_24A4BACC8);
  v0 = *(*(v231 - 8) + 64);
  v1 = MEMORY[0x28223BE20](v231);
  v238 = &v211 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v229 = (&v211 - v4);
  MEMORY[0x28223BE20](v3);
  v230 = &v211 - v5;
  v6 = type metadata accessor for FMFIntermediateFriend();
  v234 = *(v6 - 8);
  v7 = *(v234 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v235 = (&v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FMFLocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v211 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v211 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v211 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v211 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v211 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v211 - v38);
  MEMORY[0x28223BE20](v37);
  v51 = (&v211 - v50);
  if (v222[78])
  {
  }

  v232 = v39;
  v226 = v36;
  v227 = v30;
  v218 = v33;
  v219 = v27;
  v220 = v24;
  v221 = v46;
  v216 = v49;
  v217 = v45;
  v214 = v44;
  v215 = v41;
  v211 = v43;
  v212 = v42;
  v213 = v9;
  v223 = v40;
  v224 = v48;
  v228 = v47;
  swift_beginAccess();
  v53 = v222;
  v54 = v222[77];
  v55 = *(v54 + 16);
  v236 = v10;
  v237 = v55;
  if (v55)
  {
    v233 = v54 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

    v56 = 0;
    v57 = MEMORY[0x277D84F98];
    v58 = v235;
    v59 = v232;
    v225 = v54;
    while (v56 < *(v54 + 16))
    {
      v60 = *(v10 + 72);
      sub_24A3992EC(v233 + v60 * v56, v51, type metadata accessor for FMFLocation);
      v61 = v51[1];
      if (v61)
      {
        v62 = *v51;
        sub_24A3992EC(v51, v59, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v240[0] = v57;
        v65 = sub_24A39B2C8(v62, v61);
        v66 = v57[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_112;
        }

        v69 = v64;
        if (v57[3] >= v68)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A4A919C();
          }
        }

        else
        {
          sub_24A3B740C(v68, isUniquelyReferenced_nonNull_native);
          v70 = sub_24A39B2C8(v62, v61);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_120;
          }

          v65 = v70;
        }

        v59 = v232;
        v57 = v240[0];
        if (v69)
        {
          sub_24A39AF20(v232, *(v240[0] + 56) + v65 * v60, type metadata accessor for FMFLocation);
        }

        else
        {
          *(v240[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v72 = (v57[6] + 16 * v65);
          *v72 = v62;
          v72[1] = v61;
          sub_24A39983C(v59, v57[7] + v65 * v60, type metadata accessor for FMFLocation);
          v73 = v57[2];
          v74 = __OFADD__(v73, 1);
          v75 = v73 + 1;
          if (v74)
          {
            goto LABEL_113;
          }

          v57[2] = v75;
        }

        sub_24A39A7B8(v51, type metadata accessor for FMFLocation);
        v58 = v235;
        v10 = v236;
        v54 = v225;
      }

      else
      {
        sub_24A39A7B8(v51, type metadata accessor for FMFLocation);
        v10 = v236;
      }

      if (v237 == ++v56)
      {

        v53 = v222;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v57 = MEMORY[0x277D84F98];
  v58 = v235;
LABEL_22:
  v76 = v220;
  v237 = *(v53[74] + 16);
  if (!v237)
  {
    goto LABEL_41;
  }

  v78 = 0;
  v79 = (v77 + 48);
  v233 = v77;
  do
  {
    if (v78 >= *(v77 + 16))
    {
      goto LABEL_104;
    }

    if (v57[2])
    {
      v81 = *(v79 - 2);
      v80 = *(v79 - 1);
      v82 = *v79;
      swift_bridgeObjectRetain_n();
      v83 = sub_24A39B2C8(v81, v80);
      v85 = v84;

      if ((v85 & 1) == 0)
      {

        v58 = v235;
LABEL_25:
        v77 = v233;
        goto LABEL_26;
      }

      v86 = v57[7];
      v87 = v76;
      v232 = *(v236 + 72);
      v88 = v218;
      sub_24A3992EC(v86 + v232 * v83, v218, type metadata accessor for FMFLocation);
      v89 = v88;
      v90 = v226;
      sub_24A39983C(v89, v226, type metadata accessor for FMFLocation);
      v91 = v90;
      v92 = v219;
      sub_24A3992EC(v91, v219, type metadata accessor for FMFLocation);

      v93 = v92;
      v94 = v227;
      sub_24A3EA97C(v93, v82, v227);
      sub_24A3992EC(v94, v87, type metadata accessor for FMFLocation);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v240[0] = v57;
      v96 = sub_24A39B2C8(v81, v80);
      v98 = v57[2];
      v99 = (v97 & 1) == 0;
      v74 = __OFADD__(v98, v99);
      v100 = v98 + v99;
      if (v74)
      {
        goto LABEL_114;
      }

      v101 = v97;
      if (v57[3] >= v100)
      {
        if ((v95 & 1) == 0)
        {
          v105 = v96;
          sub_24A4A919C();
          v96 = v105;
          v58 = v235;
          if (v101)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }
      }

      else
      {
        sub_24A3B740C(v100, v95);
        v96 = sub_24A39B2C8(v81, v80);
        if ((v101 & 1) != (v102 & 1))
        {
          goto LABEL_120;
        }
      }

      v58 = v235;
      if (v101)
      {
LABEL_36:
        v103 = v96;

        v104 = v240[0];
        v76 = v220;
        sub_24A39AF20(v220, *(v240[0] + 56) + v103 * v232, type metadata accessor for FMFLocation);
        sub_24A39A7B8(v227, type metadata accessor for FMFLocation);
        v57 = v104;
        sub_24A39A7B8(v226, type metadata accessor for FMFLocation);
        goto LABEL_25;
      }

LABEL_38:
      v106 = v240[0];
      *(v240[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v107 = (v106[6] + 16 * v96);
      *v107 = v81;
      v107[1] = v80;
      v76 = v220;
      sub_24A39983C(v220, v106[7] + v96 * v232, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v227, type metadata accessor for FMFLocation);
      v57 = v106;
      sub_24A39A7B8(v226, type metadata accessor for FMFLocation);
      v108 = v106[2];
      v74 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v74)
      {
        goto LABEL_116;
      }

      v106[2] = v109;
      goto LABEL_25;
    }

LABEL_26:
    v78 = (v78 + 1);
    v79 += 24;
  }

  while (v237 != v78);

  v53 = v222;
  v10 = v236;
LABEL_41:
  v110 = v53[73];
  v111 = *(v110 + 16);
  if (!v111)
  {
    goto LABEL_62;
  }

  v112 = v53[73];

  v113 = 0;
  v114 = (v110 + 48);
  v220 = v110;
  v225 = v111;
  while (2)
  {
    if (v113 >= *(v110 + 16))
    {
      goto LABEL_105;
    }

    if (!v57[2])
    {
      goto LABEL_45;
    }

    v116 = *(v114 - 2);
    v115 = *(v114 - 1);
    LODWORD(v233) = *v114;
    swift_bridgeObjectRetain_n();
    v237 = v116;
    v117 = v57;
    v118 = sub_24A39B2C8(v116, v115);
    LOBYTE(v116) = v119;

    if ((v116 & 1) == 0)
    {
LABEL_44:

      v57 = v117;
      goto LABEL_45;
    }

    v120 = *(v10 + 72);
    v121 = v117[7] + v120 * v118;
    v122 = v217;
    sub_24A3992EC(v121, v217, type metadata accessor for FMFLocation);
    v123 = v122;
    v124 = v221;
    sub_24A39983C(v123, v221, type metadata accessor for FMFLocation);
    if (*(v124 + 33))
    {
      sub_24A39A7B8(v124, type metadata accessor for FMFLocation);
      goto LABEL_44;
    }

    v226 = v120;
    v232 = type metadata accessor for FMFLocation;
    v125 = v211;
    sub_24A3992EC(v124, v211, type metadata accessor for FMFLocation);
    v126 = v213;
    v127 = v213[8];
    v227 = v127;
    v128 = sub_24A4AAB20();
    v129 = v212;
    (*(*(v128 - 8) + 56))(v212 + v127, 1, 1, v128);
    v130 = *(v125 + 8);
    *v129 = *v125;
    *(v129 + 8) = v130;
    v131 = v126[11];
    memcpy(v240, (v125 + v131), 0x161uLL);
    memcpy((v129 + v126[11]), (v125 + v131), 0x161uLL);
    v132 = v126[8];

    sub_24A37B740(v240, &v239, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A3EE6D0(v125 + v132, &v227[v129]);
    *(v129 + 33) = *(v125 + 33);
    v133 = *(v125 + 32);
    *(v129 + 24) = *(v125 + 24);
    *(v129 + 32) = v133;
    v134 = v126[9];
    v135 = *(v125 + v134);
    *(v129 + 16) = (v233 - 1) < 2;
    *(v129 + v134) = v135;
    LOBYTE(v130) = *(v125 + v126[10]);
    v136 = v125;
    v137 = v232;
    sub_24A39A7B8(v136, v232);
    *(v129 + v126[10]) = v130;
    v138 = v214;
    sub_24A39983C(v129, v214, type metadata accessor for FMFLocation);
    sub_24A3992EC(v138, v215, v137);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v239 = v117;
    v140 = sub_24A39B2C8(v237, v115);
    v142 = v117[2];
    v143 = (v141 & 1) == 0;
    v74 = __OFADD__(v142, v143);
    v144 = v142 + v143;
    if (v74)
    {
      goto LABEL_118;
    }

    v145 = v141;
    if (v117[3] >= v144)
    {
      v10 = v236;
      if (v139)
      {
        goto LABEL_55;
      }

      v149 = v140;
      sub_24A4A919C();
      v140 = v149;
      v111 = v225;
      if ((v145 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_56:
      v147 = v140;

      v148 = v239;
      sub_24A39AF20(v215, v239[7] + v147 * v226, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v214, type metadata accessor for FMFLocation);
      v57 = v148;
      sub_24A39A7B8(v221, type metadata accessor for FMFLocation);
    }

    else
    {
      sub_24A3B740C(v144, v139);
      v140 = sub_24A39B2C8(v237, v115);
      v10 = v236;
      if ((v145 & 1) != (v146 & 1))
      {
        goto LABEL_120;
      }

LABEL_55:
      v111 = v225;
      if (v145)
      {
        goto LABEL_56;
      }

LABEL_58:
      v150 = v239;
      v239[(v140 >> 6) + 8] |= 1 << v140;
      v151 = (v150[6] + 16 * v140);
      *v151 = v237;
      v151[1] = v115;
      sub_24A39983C(v215, v150[7] + v140 * v226, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v214, type metadata accessor for FMFLocation);
      v57 = v150;
      sub_24A39A7B8(v221, type metadata accessor for FMFLocation);
      v152 = v150[2];
      v74 = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (v74)
      {
        goto LABEL_119;
      }

      v150[2] = v153;
    }

    v110 = v220;
LABEL_45:
    ++v113;
    v114 += 24;
    if (v111 != v113)
    {
      continue;
    }

    break;
  }

  v53 = v222;
  v58 = v235;
LABEL_62:
  v154 = v53[85];
  v155 = *(v154 + 16);
  v237 = v57;
  if (v155)
  {
    v233 = v154 + ((*(v234 + 80) + 32) & ~*(v234 + 80));

    v156 = 0;
    v157 = MEMORY[0x277D84F98];
    v232 = v154;
    v227 = v155;
    while (1)
    {
      if (v156 >= *(v154 + 16))
      {
        goto LABEL_106;
      }

      sub_24A3992EC(v233 + *(v234 + 72) * v156, v58, type metadata accessor for FMFIntermediateFriend);
      if (v57[2])
      {
        v159 = *v58;
        v158 = v58[1];
        v160 = sub_24A39B2C8(*v58, v158);
        v57 = v237;
        if (v161)
        {
          break;
        }
      }

      sub_24A39A7B8(v58, type metadata accessor for FMFIntermediateFriend);
LABEL_65:
      if (v155 == ++v156)
      {

        v53 = v222;
        goto LABEL_82;
      }
    }

    v162 = *(v10 + 72);
    v163 = v157;
    v164 = v216;
    sub_24A3992EC(v237[7] + v162 * v160, v216, type metadata accessor for FMFLocation);
    v165 = v164;
    v166 = v223;
    sub_24A39983C(v165, v223, type metadata accessor for FMFLocation);
    sub_24A3992EC(v166, v224, type metadata accessor for FMFLocation);
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v240[0] = v163;
    v168 = sub_24A39B2C8(v159, v158);
    v170 = *(v163 + 16);
    v171 = (v169 & 1) == 0;
    v74 = __OFADD__(v170, v171);
    v172 = v170 + v171;
    if (v74)
    {
      goto LABEL_115;
    }

    v173 = v169;
    if (*(v163 + 24) >= v172)
    {
      v57 = v237;
      if ((v167 & 1) == 0)
      {
        v179 = v168;
        sub_24A4A919C();
        v57 = v237;
        v168 = v179;
      }

      v58 = v235;
      v175 = v240[0];
      if ((v173 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      sub_24A3B740C(v172, v167);
      v168 = sub_24A39B2C8(v159, v158);
      if ((v173 & 1) != (v174 & 1))
      {
        goto LABEL_120;
      }

      v58 = v235;
      v57 = v237;
      v175 = v240[0];
      if ((v173 & 1) == 0)
      {
LABEL_73:
        v175[(v168 >> 6) + 8] |= 1 << v168;
        v176 = (v175[6] + 16 * v168);
        *v176 = v159;
        v176[1] = v158;
        sub_24A39983C(v224, v175[7] + v168 * v162, type metadata accessor for FMFLocation);

        sub_24A39A7B8(v223, type metadata accessor for FMFLocation);
        v177 = v175[2];
        v74 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v74)
        {
          goto LABEL_117;
        }

        v157 = v175;
        v175[2] = v178;
        goto LABEL_79;
      }
    }

    sub_24A39AF20(v224, v175[7] + v168 * v162, type metadata accessor for FMFLocation);
    sub_24A39A7B8(v223, type metadata accessor for FMFLocation);
    v157 = v175;
LABEL_79:
    sub_24A39A7B8(v58, type metadata accessor for FMFIntermediateFriend);
    v154 = v232;
    v155 = v227;
    goto LABEL_65;
  }

  v157 = MEMORY[0x277D84F98];
LABEL_82:
  v180 = *(v157 + 16);
  v52 = MEMORY[0x277D84F90];
  if (!v180)
  {
LABEL_101:
    v209 = v53[78];
    v53[78] = v52;

    return v52;
  }

  v240[0] = MEMORY[0x277D84F90];
  sub_24A3B57CC(0, v180, 0);
  v52 = v240[0];
  v181 = v157 + 64;
  v182 = -1 << *(v157 + 32);
  v183 = sub_24A4ABEA0();
  v184 = 0;
  v224 = v157 + 72;
  v225 = v180;
  v186 = v230;
  v185 = v231;
  v226 = v157;
  v227 = (v157 + 64);
  while ((v183 & 0x8000000000000000) == 0 && v183 < 1 << *(v157 + 32))
  {
    v233 = v184;
    v188 = v183 >> 6;
    if ((*(v181 + 8 * (v183 >> 6)) & (1 << v183)) == 0)
    {
      goto LABEL_108;
    }

    v232 = *(v157 + 36);
    v189 = *(v185 + 48);
    v190 = v185;
    v191 = *(v157 + 56);
    v192 = (*(v157 + 48) + 16 * v183);
    v235 = v52;
    v194 = *v192;
    v193 = v192[1];
    v234 = *(v10 + 72);
    v195 = v186;
    sub_24A3992EC(v191 + v234 * v183, &v186[v189], type metadata accessor for FMFLocation);
    v196 = v229;
    *v229 = v194;
    *(v196 + 8) = v193;
    sub_24A39983C(&v195[v189], v196 + *(v190 + 48), type metadata accessor for FMFLocation);
    sub_24A37BE24(v196, v238, &qword_27EF405C0, &unk_24A4BACC8);
    v197 = *(v238 + 8);

    v198 = v228;
    v52 = v235;
    sub_24A39983C(v238 + *(v190 + 48), v228, type metadata accessor for FMFLocation);
    v240[0] = v52;
    v200 = v52[2];
    v199 = v52[3];
    if (v200 >= v199 >> 1)
    {
      sub_24A3B57CC(v199 > 1, v200 + 1, 1);
      v52 = v240[0];
    }

    v52[2] = v200 + 1;
    v201 = v236;
    sub_24A39983C(v198, v52 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + v200 * v234, type metadata accessor for FMFLocation);
    v157 = v226;
    v181 = v227;
    v187 = 1 << *(v226 + 32);
    if (v183 >= v187)
    {
      goto LABEL_109;
    }

    v202 = *&v227[8 * v188];
    if ((v202 & (1 << v183)) == 0)
    {
      goto LABEL_110;
    }

    if (v232 != *(v226 + 36))
    {
      goto LABEL_111;
    }

    v10 = v201;
    v203 = v202 & (-2 << (v183 & 0x3F));
    if (v203)
    {
      v187 = __clz(__rbit64(v203)) | v183 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v204 = v188 << 6;
      v205 = v188 + 1;
      v206 = (v224 + 8 * v188);
      while (v205 < (v187 + 63) >> 6)
      {
        v208 = *v206++;
        v207 = v208;
        v204 += 64;
        ++v205;
        if (v208)
        {
          sub_24A406830(v183, v232, 0);
          v187 = __clz(__rbit64(v207)) + v204;
          goto LABEL_85;
        }
      }

      sub_24A406830(v183, v232, 0);
    }

LABEL_85:
    v184 = v233 + 1;
    v183 = v187;
    v186 = v230;
    v185 = v231;
    if (v233 + 1 == v225)
    {
      v53 = v222;
      goto LABEL_101;
    }
  }

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
  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

uint64_t sub_24A39DF4C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
  v4 = *(*(v51 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v51);
  v50 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v7;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v58 = v2;
    v60 = MEMORY[0x277D84F90];
    v53 = a1;
    sub_24A39E574(0, v13, 0);
    v15 = v53;
    v57 = v60;
    v16 = v53 + 64;
    v17 = -1 << *(v53 + 32);
    v18 = sub_24A4ABEA0();
    v19 = 0;
    v59 = *(v15 + 36);
    v46 = v15 + 72;
    v47 = v13;
    v48 = v16;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v15 + 32))
    {
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      if (v59 != *(v15 + 36))
      {
        goto LABEL_25;
      }

      v55 = 1 << v18;
      v56 = v18 >> 6;
      v54 = v19;
      v22 = v12;
      v23 = v51;
      v24 = *(v51 + 48);
      v25 = *(v15 + 56);
      v26 = (*(v15 + 48) + 16 * v18);
      v27 = *v26;
      v28 = v26[1];
      v29 = v9;
      v30 = *(v9 + 72);
      v31 = v49;
      sub_24A3992EC(v25 + v30 * v18, &v49[v24], type metadata accessor for FMFFriend);
      v32 = v50;
      *v50 = v27;
      v32[1] = v28;
      v15 = v32;
      v33 = *(v23 + 48);
      v12 = v22;
      sub_24A39983C(&v31[v24], v15 + v33, type metadata accessor for FMFFriend);

      v34 = v58;
      sub_24A39E5B8(v15, v52, v22);
      v58 = v34;
      if (v34)
      {
        goto LABEL_29;
      }

      sub_24A37EF2C(v15, &qword_27EF405D0, &unk_24A4BACE8);
      v35 = v57;
      v60 = v57;
      v37 = *(v57 + 16);
      v36 = *(v57 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_24A39E574(v36 > 1, v37 + 1, 1);
        v35 = v60;
      }

      *(v35 + 16) = v37 + 1;
      v9 = v29;
      v38 = *(v29 + 80);
      v57 = v35;
      sub_24A39983C(v22, v35 + ((v38 + 32) & ~v38) + v37 * v30, type metadata accessor for FMFFriend);
      v15 = v53;
      v20 = 1 << *(v53 + 32);
      if (v18 >= v20)
      {
        goto LABEL_26;
      }

      v16 = v48;
      v39 = *(v48 + 8 * v56);
      if ((v39 & v55) == 0)
      {
        goto LABEL_27;
      }

      if (v59 != *(v53 + 36))
      {
        goto LABEL_28;
      }

      v40 = v39 & (-2 << (v18 & 0x3F));
      if (v40)
      {
        v20 = __clz(__rbit64(v40)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v21 = v47;
      }

      else
      {
        v41 = v56 << 6;
        v42 = v56 + 1;
        v21 = v47;
        v43 = (v46 + 8 * v56);
        while (v42 < (v20 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_24A406830(v18, v59, 0);
            v20 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        sub_24A406830(v18, v59, 0);
      }

LABEL_4:
      v19 = v54 + 1;
      v18 = v20;
      if (v54 + 1 == v21)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_24A37EF2C(v15, &qword_27EF405D0, &unk_24A4BACE8);

    __break(1u);
  }

  return result;
}

size_t sub_24A39E398(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A3C9CEC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_24A39E574(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F500, &qword_24A4BA270, type metadata accessor for FMFFriend);
  *v3 = result;
  return result;
}

uint64_t sub_24A39E5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v189 = a1;
  v190 = a3;
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v183 = v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v188 = v150 - v8;
  v9 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v180 = v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v179 = v150 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v187 = v150 - v16;
  MEMORY[0x28223BE20](v15);
  v186 = v150 - v17;
  v18 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v178 = v150 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v181 = v150 - v26;
  MEMORY[0x28223BE20](v25);
  v185 = v150 - v27;
  v28 = type metadata accessor for FMFFriend();
  v184 = *(v28 - 1);
  v29 = *(v184 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v175 = v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v176 = v150 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v177 = v150 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (v150 - v37);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (v150 - v40);
  MEMORY[0x28223BE20](v39);
  v182 = v150 - v42;
  v43 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
  v44 = v43 - 8;
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v47 = v150 - v46;
  sub_24A37B740(v189, v150 - v46, &qword_27EF405D0, &unk_24A4BACE8);
  v48 = *(v47 + 1);

  v49 = *(v44 + 56);
  v50 = v190;
  sub_24A39983C(&v47[v49], v190, type metadata accessor for FMFFriend);
  v51 = *(a2 + 720);
  if (*(v51 + 16))
  {
    v53 = *v50;
    v52 = v50[1];
    v54 = *(a2 + 720);

    v55 = sub_24A39B2C8(v53, v52);
    if (v56)
    {
      v57 = *(v51 + 56) + 56 * v55;
      v58 = *(v57 + 8);
      v178 = *v57;
      v179 = v58;
      v59 = *(v57 + 16);
      v60 = *(v57 + 24);
      v175 = *(v57 + 32);
      v176 = v59;
      v61 = *(v57 + 48);
      v173 = *(v57 + 40);

      v177 = v60;

      v174 = v61;

      v62 = v50;
      v63 = v185;
      sub_24A3992EC(v62, v185, type metadata accessor for FMFFriend);
      v64 = v184;
      (*(v184 + 56))(v63, 0, 1, v28);
      v65 = type metadata accessor for FMFLocation();
      v172 = *(v65 - 8);
      v67 = v172 + 56;
      v66 = *(v172 + 56);
      v66(v186, 1, 1, v65);
      v171 = v28[21];
      *(v41 + v171) = 7;
      v68 = sub_24A4AAAD0();
      (*(*(v68 - 8) + 56))(v188, 1, 1, v68);
      v69 = v187;
      v189 = v65;
      v156 = v67;
      v155 = v66;
      v66(v187, 1, 1, v65);
      v70 = v181;
      sub_24A37B740(v63, v181, &qword_27EF3F2D0, &qword_24A4B4F50);
      if ((*(v64 + 48))(v70, 1, v28) == 1)
      {
        sub_24A37EF2C(v70, &qword_27EF3F2D0, &qword_24A4B4F50);
        v71 = 0;
        v164 = 0;
        v171 = 0;
        v170 = 0;
        v160 = 0;
        v159 = 0;
        v180 = 0;
        v157 = 0;
        v158 = 0;
        v169 = 0;
        v184 = 0;
        v168 = 0;
        v166 = 0;
        v181 = 0xE000000000000000;
        v183 = MEMORY[0x277D84FA0];
        LODWORD(v167) = 2;
        v161 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v163) = 2;
        LODWORD(v165) = 2;
        v72 = 2;
        v162 = 2;
      }

      else
      {
        sub_24A37EF2C(v69, &qword_27EF3F480, &unk_24A4B8C20);
        v97 = v188;
        sub_24A37EF2C(v188, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A39983C(v70, v38, type metadata accessor for FMFFriend);
        v98 = v38[1];
        v168 = *v38;
        v181 = v98;
        v99 = v38[3];
        v169 = v38[2];
        v183 = v38[4];
        v184 = v99;
        sub_24A37B740(v38 + v28[8], v97, &qword_27EF3F460, &unk_24A4B53B0);
        v100 = v28[10];
        v166 = *(v38 + v28[9]);
        v162 = *(v38 + v100);
        v101 = v28[12];
        LODWORD(v154) = *(v38 + v28[11]);
        LODWORD(v165) = *(v38 + v101);
        LODWORD(v167) = *(v38 + v28[18]);
        v102 = v28[14];
        LODWORD(v153) = *(v38 + v28[13]);
        LODWORD(v163) = *(v38 + v102);
        v161 = *(v38 + v28[15]);
        sub_24A37B740(v38 + v28[20], v69, &qword_27EF3F480, &unk_24A4B8C20);
        v103 = (v38 + v28[19]);
        v104 = *v103;
        v105 = v103[1];
        v106 = v103[3];
        v180 = v103[2];
        v152 = v106;
        v107 = v103[4];
        v108 = v103[5];
        v151 = v103[6];
        v109 = *(v38 + v28[16]);
        v110 = *(v38 + v28[17]);
        *(v41 + v171) = *(v38 + v28[21]);
        v111 = v38[5];

        v160 = v104;
        v159 = v105;
        v157 = v107;
        v158 = v108;
        sub_24A39AED0(v104, v105);
        v164 = v111;
        v72 = v154;

        v170 = v109;
        v71 = v153;

        v171 = v110;

        sub_24A39A7B8(v38, type metadata accessor for FMFFriend);
      }

      v112 = v188;
      v113 = v28[14];
      sub_24A37EF2C(v185, &qword_27EF3F2D0, &qword_24A4B4F50);
      sub_24A40D4E4(v160, v159);
      v114 = v181;
      *v41 = v168;
      v41[1] = v114;
      v115 = v183;
      v116 = v184;
      v41[2] = v169;
      v41[3] = v116;
      v41[4] = v115;
      sub_24A37BE24(v112, v41 + v28[8], &qword_27EF3F460, &unk_24A4B53B0);
      *(v41 + v28[9]) = v166;
      *(v41 + v28[10]) = v162;
      *(v41 + v28[11]) = v72;
      *(v41 + v28[12]) = v165;
      v117 = (v41 + v28[19]);
      v118 = v179;
      *v117 = v178;
      v117[1] = v118;
      v119 = v177;
      v117[2] = v176;
      v117[3] = v119;
      v121 = v173;
      v120 = v174;
      v117[4] = v175;
      v117[5] = v121;
      v117[6] = v120;
      *(v41 + v113) = v163;
      *(v41 + v28[18]) = (v167 == 2) | v167 & 1;
      *(v41 + v28[13]) = v71;
      v41[5] = v164;
      *(v41 + v28[15]) = v161;
      v122 = v186;
      if ((*(v172 + 48))(v186, 1, v189) == 1)
      {
        sub_24A37EF2C(v122, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37BE24(v187, v41 + v28[20], &qword_27EF3F480, &unk_24A4B8C20);
      }

      else
      {
        sub_24A37EF2C(v187, &qword_27EF3F480, &unk_24A4B8C20);
        v123 = v28[20];
        sub_24A39983C(v122, v41 + v123, type metadata accessor for FMFLocation);
        v155(v41 + v123, 0, 1, v189);
      }

      v124 = v190;
      *(v41 + v28[16]) = v170;
      *(v41 + v28[17]) = v171;
      v125 = v182;
      sub_24A39983C(v41, v182, type metadata accessor for FMFFriend);
      goto LABEL_23;
    }
  }

  result = sub_24A39F92C(v50[4]);
  if (!v74)
  {
    return result;
  }

  v75 = v74;
  v76 = v22;
  v77 = result;
  swift_beginAccess();
  v78 = *(a2 + 728);
  if (!*(v78 + 16))
  {
  }

  v79 = *(a2 + 728);

  v80 = sub_24A39B2C8(v77, v75);
  v82 = v81;

  if ((v82 & 1) == 0)
  {
  }

  v83 = *(v78 + 56) + 56 * v80;
  v84 = *(v83 + 8);
  v181 = *v83;
  v85 = *(v83 + 24);
  v173 = *(v83 + 16);
  v172 = *(v83 + 32);
  v86 = *(v83 + 48);
  v170 = *(v83 + 40);
  v182 = v84;

  v174 = v85;

  v171 = v86;

  v87 = v178;
  sub_24A3992EC(v50, v178, type metadata accessor for FMFFriend);
  v88 = v184;
  (*(v184 + 56))(v87, 0, 1, v28);
  v89 = type metadata accessor for FMFLocation();
  v169 = *(v89 - 8);
  v90 = v169 + 56;
  v91 = *(v169 + 56);
  v91(v179, 1, 1, v89);
  v92 = v176;
  v168 = v28[21];
  v176[v168] = 7;
  v93 = sub_24A4AAAD0();
  (*(*(v93 - 8) + 56))(v183, 1, 1, v93);
  v94 = v180;
  v189 = v89;
  v154 = v90;
  v153 = v91;
  v91(v180, 1, 1, v89);
  sub_24A37B740(v87, v76, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((*(v88 + 48))(v76, 1, v28) == 1)
  {
    sub_24A37EF2C(v76, &qword_27EF3F2D0, &qword_24A4B4F50);
    v95 = 0;
    v160 = 0;
    v184 = 0;
    v168 = 0;
    v157 = 0;
    v156 = 0;
    v185 = 0;
    v186 = 0;
    v155 = 0;
    v167 = 0;
    v165 = 0;
    v166 = 0;
    v163 = 0;
    v187 = 0xE000000000000000;
    v188 = MEMORY[0x277D84FA0];
    LODWORD(v164) = 2;
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    LODWORD(v159) = 2;
    LODWORD(v161) = 2;
    v96 = 2;
    v162 = 2;
  }

  else
  {
    sub_24A37EF2C(v94, &qword_27EF3F480, &unk_24A4B8C20);
    v126 = v183;
    sub_24A37EF2C(v183, &qword_27EF3F460, &unk_24A4B53B0);
    v127 = v175;
    sub_24A39983C(v76, v175, type metadata accessor for FMFFriend);
    v128 = v127[1];
    v166 = *v127;
    v187 = v128;
    v129 = v127[3];
    v167 = v127[2];
    v188 = v127[4];
    sub_24A37B740(v127 + v28[8], v126, &qword_27EF3F460, &unk_24A4B53B0);
    v130 = v28[10];
    v163 = *(v127 + v28[9]);
    v162 = *(v127 + v130);
    v131 = v28[12];
    LODWORD(v152) = *(v127 + v28[11]);
    LODWORD(v161) = *(v127 + v131);
    LODWORD(v164) = *(v127 + v28[18]);
    v132 = v28[14];
    LODWORD(v151) = *(v127 + v28[13]);
    LODWORD(v159) = *(v127 + v132);
    v158 = *(v127 + v28[15]);
    sub_24A37B740(v127 + v28[20], v94, &qword_27EF3F480, &unk_24A4B8C20);
    v133 = (v127 + v28[19]);
    v134 = *v133;
    v135 = v133[1];
    v136 = v133[3];
    v185 = v133[2];
    v150[1] = v136;
    v137 = v133[5];
    v186 = v133[4];
    v150[0] = v133[6];
    v138 = *(v127 + v28[16]);
    v139 = *(v127 + v28[17]);
    *(v92 + v168) = *(v127 + v28[21]);
    v140 = v127[5];
    v165 = v129;

    v157 = v134;
    v156 = v135;
    v155 = v137;
    sub_24A39AED0(v134, v135);
    v160 = v140;
    v96 = v152;

    v168 = v138;
    v95 = v151;

    v184 = v139;

    sub_24A39A7B8(v127, type metadata accessor for FMFFriend);
  }

  v141 = v28[14];
  sub_24A37EF2C(v178, &qword_27EF3F2D0, &qword_24A4B4F50);
  sub_24A40D4E4(v157, v156);
  v142 = v187;
  *v92 = v166;
  v92[1] = v142;
  v143 = v165;
  v92[2] = v167;
  v92[3] = v143;
  v92[4] = v188;
  sub_24A37BE24(v183, v92 + v28[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v92 + v28[9]) = v163;
  *(v92 + v28[10]) = v162;
  *(v92 + v28[11]) = v96;
  *(v92 + v28[12]) = v161;
  v144 = (v92 + v28[19]);
  v145 = v182;
  *v144 = v181;
  v144[1] = v145;
  v146 = v174;
  v144[2] = v173;
  v144[3] = v146;
  v147 = v170;
  v144[4] = v172;
  v144[5] = v147;
  v144[6] = v171;
  *(v92 + v141) = v159;
  *(v92 + v28[18]) = (v164 == 2) | v164 & 1;
  *(v92 + v28[13]) = v95;
  v92[5] = v160;
  *(v92 + v28[15]) = v158;
  v148 = v179;
  if ((*(v169 + 48))(v179, 1, v189) == 1)
  {
    sub_24A37EF2C(v148, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37BE24(v180, v92 + v28[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v180, &qword_27EF3F480, &unk_24A4B8C20);
    v149 = v28[20];
    sub_24A39983C(v148, v92 + v149, type metadata accessor for FMFLocation);
    v153(v92 + v149, 0, 1, v189);
  }

  *(v92 + v28[16]) = v168;
  *(v92 + v28[17]) = v184;
  v125 = v177;
  sub_24A39983C(v92, v177, type metadata accessor for FMFFriend);
  v124 = v190;
LABEL_23:
  sub_24A39A7B8(v124, type metadata accessor for FMFFriend);
  return sub_24A39983C(v125, v124, type metadata accessor for FMFFriend);
}

uint64_t sub_24A39F92C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_24A4ABEA0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_24A39F9A8(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_24A39F9A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24A39F9FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 64);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_24A3A0AD0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D886B0;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A378620(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_24A39FCD0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A39FD18()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe);

  v4 = sub_24A3A00EC(v3);

  if (v4)
  {
    v6 = *(*(v0 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager) + 56);
    MEMORY[0x28223BE20](v5);

    sub_24A4ABD70();

    v7 = v28;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends);

  v10 = sub_24A3A00EC(v9);

  if (v10)
  {
    v12 = *(*(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager) + 56);
    MEMORY[0x28223BE20](v11);

    sub_24A4ABD70();

    v7 |= v28;
  }

  v13 = *(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe);

  v15 = sub_24A3A00EC(v14);

  if (v15)
  {
    v17 = *(*(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager) + 56);
    MEMORY[0x28223BE20](v16);

    sub_24A4ABD70();

    v7 |= v28;
  }

  v18 = *(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends);

  v20 = sub_24A3A00EC(v19);

  if (v20)
  {
    v22 = *(*(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager) + 56);
    MEMORY[0x28223BE20](result);

    sub_24A4ABD70();

    if (((v7 | v28) & 1) == 0)
    {
      return result;
    }
  }

  else if ((v7 & 1) == 0)
  {
    return result;
  }

  v23 = v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    v26 = *(*(v1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager) + 56);

    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A4ABD70();

    (*(v24 + 64))(v27, ObjectType, v24);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_24A3A00EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v26 = type metadata accessor for FMFLocationAlert();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = sub_24A4AA700();
  v27[3] = v14;
  v27[4] = sub_24A38D32C(&qword_27EF40910, MEMORY[0x277D08A28]);
  v15 = sub_24A38D3BC(v27);
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D089F8], v14);
  LOBYTE(v14) = sub_24A4AA6C0();
  sub_24A37EEE0(v27);
  v16 = 0;
  if ((v14 & 1) != 0 && a1)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = *(v8 + 72);
      v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v19 = a1 + v23;
      v16 = MEMORY[0x277D84F90];
      v24 = v2;
      do
      {
        sub_24A42C7D0(v19, v2, v7);
        if ((*(v8 + 48))(v7, 1, v26) == 1)
        {
          sub_24A37EF2C(v7, &qword_27EF3F7A0, &qword_24A4B6430);
        }

        else
        {
          sub_24A3B587C(v7, v13, type metadata accessor for FMFLocationAlert);
          sub_24A3B587C(v13, v25, type metadata accessor for FMFLocationAlert);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_24A3EDEAC(0, v16[2] + 1, 1, v16);
          }

          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            v16 = sub_24A3EDEAC(v20 > 1, v21 + 1, 1, v16);
          }

          v16[2] = v21 + 1;
          sub_24A3B587C(v25, v16 + v23 + v21 * v18, type metadata accessor for FMFLocationAlert);
          v2 = v24;
        }

        v19 += v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v16;
}

void sub_24A3A0444(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1[80];

  v8 = sub_24A3A04EC(v7, a2);

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = a1[86];
    a1[86] = 0;

    v11 = a1[72];
    a1[72] = 0;

    v12 = a1[80];
    a1[80] = a2;

    sub_24A387F3C();
    v9 = 1;
  }

  *a3 = v9;
}

void sub_24A3A0548(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[81];

  v7 = sub_24A3A04EC(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = a2[86];
    a2[86] = 0;

    v10 = a2[72];
    a2[72] = 0;

    v11 = a2[81];
    a2[81] = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A3A0610(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[82];

  v7 = sub_24A3A04EC(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = a2[86];
    a2[86] = 0;

    v10 = a2[72];
    a2[72] = 0;

    v11 = a2[82];
    a2[82] = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A3A06BC(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[83];

  v7 = sub_24A3A04EC(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = a2[86];
    a2[86] = 0;

    v10 = a2[72];
    a2[72] = 0;

    v11 = a2[83];
    a2[83] = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

uint64_t sub_24A3A0784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v37 = *(v7 + 72);
    v16 = MEMORY[0x277D84F98];
    v17 = a3;
    v38 = a2;
    while (1)
    {
      sub_24A3A0ADC(v15, v10);
      v19 = *v10;
      v20 = v10[1];
      if (*(a2 + 16) && (v21 = sub_24A39B2C8(*v10, v10[1]), (v22 & 1) != 0))
      {
        v23 = (*(a2 + 56) + 56 * v21);
        v24 = *v23;
        v25 = v23[1];

        v26 = sub_24A3AB248(v24, v25, 0);

        if (v26)
        {
          v27 = v26;
          v28 = sub_24A431978(v10, v27);

          if (v28)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_24A3A0B40(v10, 0);

      if (!v27)
      {
        sub_24A3A16E4(v10);
        a3 = v17;
        goto LABEL_4;
      }

LABEL_3:
      a3 = v17;
      sub_24A42E63C(v27, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v16;
      sub_24A430ACC(v40, v19, v20, isUniquelyReferenced_nonNull_native);

      sub_24A3A16E4(v10);
      v16 = v39;
LABEL_4:
      a2 = v38;
      v15 += v37;
      if (!--v14)
      {
        goto LABEL_14;
      }
    }
  }

  v16 = MEMORY[0x277D84F98];
LABEL_14:
  v29 = v36;
  sub_24A4AAAC0();
  v30 = sub_24A4AAAD0();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactSearchDate;
  swift_beginAccess();
  sub_24A431910(v29, a3 + v31, &qword_27EF3F460, &unk_24A4B53B0);
  swift_endAccess();
  if ((sub_24A38B528(v16, a2) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  v32 = *(a3 + 48);
  ObjectType = swift_getObjectType();
  (*(v32 + 16))(v16, ObjectType, v32);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A3A0ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFFriend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24A3A0B40(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - v7;
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v52 = &v50 - v7;
  v53 = a2;
  if (v10)
  {
    v11 = sub_24A3A11D8(v10, 0);
    v12 = sub_24A3A1268(&v60, v11 + 4, v10, v9);
    v13 = v61;
    v2 = v62;

    sub_24A3A13C0();
    if (v12 != v10)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      if (sub_24A4AC060())
      {
LABEL_25:
        v45 = sub_24A42F78C(v9);

        result = v45;
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    v8 = v52;
    a2 = v53;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v60 = v11;
  v9 = 0;
  sub_24A3A13C8(&v60);
  v15 = v60;
  v57 = *(v60 + 2);
  if (v57)
  {
    v16 = 0;
    v17 = v60 + 40;
    v56 = *(v51 + 56);
    v13 = 0x27EF3E000uLL;
    *&v14 = 136315138;
    v50 = v14;
    v55 = v60;
    while (1)
    {
      if (v16 >= *(v15 + 2))
      {
        __break(1u);
        goto LABEL_27;
      }

      v25 = *v17;
      v60 = *(v17 - 1);
      v61 = v25;
      v58 = 64;
      v59 = 0xE100000000000000;
      v26 = sub_24A4AAB80();
      (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
      sub_24A3A1434();

      sub_24A4ABE50();
      v28 = v27;
      sub_24A37EF2C(v8, &qword_27EF3F650, &qword_24A4B5A10);
      v29 = objc_opt_self();
      if (v28)
      {
        v30 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v31 = sub_24A4AB820();

        v32 = [v30 initWithStringValue_];

        v15 = v55;
        v33 = &selRef_predicateForContactsMatchingPhoneNumber_;
      }

      else
      {
        v32 = sub_24A4AB820();

        v33 = &selRef_predicateForContactsMatchingEmailAddress_;
      }

      v34 = [v29 *v33];

      if (!a2)
      {
        sub_24A3A1488();
      }

      v2 = v34;

      sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
      v35 = sub_24A4ABA50();

      v60 = 0;
      v36 = [v56 unifiedContactsMatchingPredicate:v2 keysToFetch:v35 error:&v60];

      v37 = v60;
      if (v36)
      {
        break;
      }

      v38 = v37;
      v39 = sub_24A4AA950();

      swift_willThrow();
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v40 = sub_24A4AB630();
      sub_24A378E18(v40, qword_27EF4E260);
      v41 = v39;
      v42 = sub_24A4AB600();
      v9 = sub_24A4ABCE0();

      if (os_log_type_enabled(v42, v9))
      {
        v18 = swift_slowAlloc();
        v54 = v2;
        v2 = v18;
        v19 = swift_slowAlloc();
        v60 = v19;
        *v2 = v50;
        v58 = v39;
        v20 = v39;
        sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
        v21 = sub_24A4AB870();
        v23 = sub_24A37BD58(v21, v22, &v60);
        v15 = v55;

        *(v2 + 1) = v23;
        a2 = v53;
        _os_log_impl(&dword_24A376000, v42, v9, "Error getting contact - %s", v2, 0xCu);
        sub_24A37EEE0(v19);
        v24 = v19;
        v8 = v52;
        MEMORY[0x24C219130](v24, -1, -1);
        MEMORY[0x24C219130](v2, -1, -1);
      }

      else
      {
      }

      ++v16;
      v17 += 16;
      if (v57 == v16)
      {
        goto LABEL_20;
      }
    }

    sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
    v9 = sub_24A4ABA70();

    if (v9 >> 62)
    {
      goto LABEL_28;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_29:

    if (*(v13 + 3064) != -1)
    {
      swift_once();
    }

    v46 = sub_24A4AB630();
    sub_24A378E18(v46, qword_27EF4E260);
    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_24A376000, v47, v48, "No contact found in store", v49, 2u);
      MEMORY[0x24C219130](v49, -1, -1);
    }

    goto LABEL_21;
  }

LABEL_20:

LABEL_21:
  result = 0;
LABEL_22:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24A3A11EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_24A3A1268(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_24A3A13C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A41ED24(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24A3ABAD8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_24A3A1434()
{
  result = qword_27EF3FBB0;
  if (!qword_27EF3FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBB0);
  }

  return result;
}

uint64_t sub_24A3A1488()
{
  v1 = *(v0 + 32);
  sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24A4B9F90;
    v34 = *MEMORY[0x277CBD000];
    v3 = *MEMORY[0x277CBD000];
    v35 = *MEMORY[0x277CBD068];
    *(v2 + 32) = *MEMORY[0x277CBD068];
    *(v2 + 40) = v3;
    v4 = *MEMORY[0x277CBCFF8];
    v33 = *MEMORY[0x277CBD058];
    *(v2 + 48) = *MEMORY[0x277CBD058];
    *(v2 + 56) = v4;
    v5 = *MEMORY[0x277CBD0E0];
    v6 = *MEMORY[0x277CBD070];
    *(v2 + 64) = *MEMORY[0x277CBD0E0];
    *(v2 + 72) = v6;
    v7 = *MEMORY[0x277CBD078];
    v8 = *MEMORY[0x277CBD020];
    *(v2 + 80) = *MEMORY[0x277CBD078];
    *(v2 + 88) = v8;
    v9 = *MEMORY[0x277CBD160];
    v10 = *MEMORY[0x277CBD158];
    *(v2 + 96) = *MEMORY[0x277CBD160];
    *(v2 + 104) = v10;
    v11 = *MEMORY[0x277CBCFC0];
    *(v2 + 112) = v7;
    *(v2 + 120) = v11;
    v12 = *MEMORY[0x277CBD098];
    v13 = v7;
    *(v2 + 128) = *MEMORY[0x277CBD098];
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24A4B9F80;
    v13 = *MEMORY[0x277CBD068];
    v14 = *MEMORY[0x277CBD000];
    *(v2 + 32) = *MEMORY[0x277CBD068];
    *(v2 + 40) = v14;
    v35 = v14;
    v16 = MEMORY[0x277CBD0E0];
    v33 = *MEMORY[0x277CBCFF8];
    v15 = *MEMORY[0x277CBCFF8];
    v34 = *MEMORY[0x277CBD058];
    *(v2 + 48) = *MEMORY[0x277CBD058];
    *(v2 + 56) = v15;
    v4 = *v16;
    v5 = *MEMORY[0x277CBD070];
    *(v2 + 64) = *v16;
    *(v2 + 72) = v5;
    v17 = *MEMORY[0x277CBD078];
    v6 = *MEMORY[0x277CBD020];
    *(v2 + 80) = *MEMORY[0x277CBD078];
    *(v2 + 88) = v6;
    v8 = *MEMORY[0x277CBD160];
    v9 = *MEMORY[0x277CBD028];
    v18 = MEMORY[0x277CBD158];
    *(v2 + 96) = *MEMORY[0x277CBD160];
    *(v2 + 104) = v9;
    v10 = *v18;
    *(v2 + 112) = *v18;
    *(v2 + 120) = v17;
    v11 = *MEMORY[0x277CBCFC0];
    v12 = *MEMORY[0x277CBD098];
    *(v2 + 128) = *MEMORY[0x277CBCFC0];
    *(v2 + 136) = v12;
    v7 = v17;
  }

  v19 = v7;
  v20 = v13;
  v21 = v35;
  v22 = v34;
  v23 = v33;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  return v2;
}

uint64_t sub_24A3A16E4(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24A3A1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(type metadata accessor for FMAPSConnectionHandler());

  return sub_24A3A17EC(a1, a2, a3, a4, a5, v15, a7, a8);
}

void *sub_24A3A17EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v72 = a8;
  v73 = a5;
  v68 = a4;
  v69 = a1;
  v70 = a2;
  v71 = a3;
  v9 = sub_24A4AB690();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24A4ABD50();
  v12 = *(v67 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v67);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4ABD10();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v60 = sub_24A4AB6E0();
  v59 = *(v60 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v66 = OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue;
  v21 = sub_24A3785D4();
  v64 = "v40@0:8@16@24@32";
  v65 = v21;
  sub_24A4AB6B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v12 + 104))(v15, *MEMORY[0x277D85260], v67);
  v22 = v68;
  *&a6[v66] = sub_24A4ABD90();
  v23 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic];
  v27 = v70;
  *v26 = v69;
  *(v26 + 1) = v27;
  v28 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore];
  v29 = v72;
  *v28 = v71;
  *(v28 + 1) = v29;
  v30 = v73;
  *v23 = v22;
  *(v23 + 1) = v30;
  v31 = type metadata accessor for FMAPSConnectionHandler();
  v76.receiver = a6;
  v76.super_class = v31;
  swift_unknownObjectRetain();
  v32 = objc_msgSendSuper2(&v76, sel_init);
  v33 = v32;
  if (v22)
  {
    v34 = &v32[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
    if (*&v32[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection])
    {
      v35 = *(v34 + 1);
      v36 = *v34;
      ObjectType = swift_getObjectType();
      v38 = *(v35 + 16);
      v39 = v33;
      swift_unknownObjectRetain();
      v38(v33, ObjectType, v35);
      swift_unknownObjectRelease();
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v40 = sub_24A4AB630();
    sub_24A378E18(v40, qword_27EF4E260);
    v41 = v33;
    v42 = sub_24A4AB600();
    v43 = sub_24A4ABCE0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315138;
      v46 = &v41[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic];
      v47 = *&v41[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic];
      v48 = *(v46 + 1);

      v49 = sub_24A37BD58(v47, v48, aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_24A376000, v42, v43, "FMAPSConnectionHandler: initialized with topic %s", v44, 0xCu);
      sub_24A37EEE0(v45);
      MEMORY[0x24C219130](v45, -1, -1);
      MEMORY[0x24C219130](v44, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v50 = *&v32[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue];
    v51 = swift_allocObject();
    *(v51 + 16) = v33;
    aBlock[4] = sub_24A3A494C;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89E78;
    v52 = _Block_copy(aBlock);
    v53 = v50;
    v54 = v33;
    sub_24A4AB6B0();
    v74 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v55 = v61;
    v56 = v63;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v20, v55, v52);
    _Block_release(v52);

    (*(v62 + 8))(v55, v56);
    (*(v59 + 8))(v20, v60);
  }

  return v33;
}

uint64_t type metadata accessor for FMFRefreshController()
{
  result = qword_27EF3F2B8;
  if (!qword_27EF3F2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A1F50()
{
  sub_24A37B644();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_24A4AAAD0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

char *sub_24A3A20A8(uint64_t a1, uint64_t *a2, char *a3, int a4, int a5)
{
  v6 = v5;
  v70 = a4;
  v71 = a5;
  v69 = a3;
  v72 = a1;
  v73 = a2;
  v7 = sub_24A4ABD50();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24A4ABD10();
  v10 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64[1] = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB6E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24A4AAD70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AAB20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v24 = sub_24A4AAAF0();
  v26 = v25;
  (*(v20 + 8))(v23, v19);
  *(v6 + 2) = v24;
  *(v6 + 3) = v26;
  sub_24A4AB3B0();
  (*(v15 + 104))(v18, *MEMORY[0x277D09048], v14);
  v27 = sub_24A4AB260();
  (*(v15 + 8))(v18, v14);
  *(v6 + 4) = v27;
  *(v6 + 6) = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
  v29 = type metadata accessor for FMFFriend();
  (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshReason] = 2;
  swift_weakInit();
  v30 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts] = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData] = v31;
  v32 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue;
  sub_24A3785D4();
  sub_24A4AB6B0();
  v74[1] = v30;
  sub_24A37EF8C(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v67 + 104))(v66, *MEMORY[0x277D85260], v68);
  *&v6[v32] = sub_24A4ABD90();
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_callbackInterval] = 0x40E86A0000000000;
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval] = 0x40B3880000000000;
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval] = 0x40ED4C0000000000;
  sub_24A4AAA40();
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing] = 0;
  swift_weakAssign();
  sub_24A39997C(v73, &v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController]);
  v33 = v69;
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_apsConnectionHandler] = v69;
  v34 = v71;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isSnapshotMode] = v70;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_useOptimizedFetch] = v34;
  v35 = &v33[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate];
  v36 = v33;
  swift_beginAccess();
  *(v35 + 1) = &off_285D858F8;
  swift_unknownObjectWeakAssign();
  v37 = qword_27EF3EBF8;
  v38 = v36;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_24A4AB630();
  sub_24A378E18(v39, qword_27EF4E260);

  v40 = sub_24A4AB600();
  v41 = sub_24A4ABCE0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v74[0] = v43;
    *v42 = 136315650;
    v69 = v38;
    v44 = *(v6 + 2);
    v45 = *(v6 + 3);

    v46 = sub_24A37E99C(0xCuLL, v44, v45);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v53 = MEMORY[0x24C217CD0](v46, v48, v50, v52);
    v55 = v54;

    v56 = sub_24A37BD58(v53, v55, v74);

    *(v42 + 4) = v56;
    *(v42 + 12) = 2080;
    if (v70)
    {
      v57 = 0x70616E7320736120;
    }

    else
    {
      v57 = 0;
    }

    if (v70)
    {
      v58 = 0xEC000000746F6873;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    v59 = sub_24A37BD58(v57, v58, v74);

    *(v42 + 14) = v59;
    *(v42 + 22) = 2080;
    if (v71)
    {
      v60 = 0x4620676E69737520;
    }

    else
    {
      v60 = 0;
    }

    if (v71)
    {
      v61 = 0xEB0000000044464DLL;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    v62 = sub_24A37BD58(v60, v61, v74);

    *(v42 + 24) = v62;
    _os_log_impl(&dword_24A376000, v40, v41, "FMFRefreshController<%s>.init%s%s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v43, -1, -1);
    MEMORY[0x24C219130](v42, -1, -1);
  }

  else
  {
  }

  sub_24A37EEE0(v73);
  return v6;
}

uint64_t sub_24A3A28AC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24A3C9CEC(&qword_27EF40340, qword_24A4BA0F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24A3A28DC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24A3C9CEC(&qword_27EF40568, "0E");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24A3A290C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCC0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24A37BD58(0xD000000000000019, 0x800000024A4B1DC0, &v14);
      _os_log_impl(&dword_24A376000, v9, v10, "FindMyMessagesAppViewController: %s - No Bundle Identifier", v11, 0xCu);
      sub_24A37EEE0(v12);
      MEMORY[0x24C219130](v12, -1, -1);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = sub_24A4AB850();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x800000024A4B1DE0 == v4)
  {

LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  v6 = sub_24A4AC270();

  v7 = v6 ^ 1;
  return v7 & 1;
}

uint64_t sub_24A3A2B24(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A2B5C()
{
  sub_24A37E944();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

char *sub_24A3A2C20()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F98];
  *(v0 + 14) = 0;
  *(v0 + 15) = v1;
  *(v0 + 16) = v1;
  *(v0 + 17) = 0;
  *(v0 + 18) = 0;
  *(v0 + 19) = v1;
  *(v0 + 20) = v1;
  v2 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  v3 = sub_24A4AAAD0();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_24A3A2CE4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24A3A2D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*v5 + *a5 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A3A2DC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a2;
  swift_unknownObjectWeakAssign();
  v4 = v2[9];
  v5 = v2[10];
  v7[0] = v2[8];
  v7[1] = v4;
  v7[2] = v5;

  sub_24A3A2E74(v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A3A2E74(uint64_t *a1)
{
  v3 = sub_24A4AB690();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *(v1 + 48);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  aBlock[4] = sub_24A3A3938;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D887B8;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v6, v16);
  _Block_release(v16);
  (*(v20 + 8))(v6, v3);
  (*(v7 + 8))(v10, v19);
}

uint64_t sub_24A3A3168()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3A31B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A3A357C;

  return sub_24A3A3270(a1, v5);
}

uint64_t sub_24A3A3270(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24A3A369C;

  return v6(v2 + 32);
}

uint64_t sub_24A3A3364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A357C;

  return sub_24A3A3418(a1, v4, v5, v6);
}

uint64_t sub_24A3A3418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24A3A3438, 0, 0);
}

uint64_t sub_24A3A3438()
{
  v1 = *(*(v0 + 24) + 208);
  *(v0 + 32) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A3A34F0, v1, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24A3A34F0()
{
  v1 = *(v0 + 24);
  *(*(v0 + 32) + OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate + 8) = &off_285D88AF8;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_24A3A3580, 0, 0);
}

uint64_t sub_24A3A35A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A3A369C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24A3A37BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a1 + 88) + 704) == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A376000, v9, v10, "FMFManager: loaded cached data", v11, 2u);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    v12 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
    swift_beginAccess();
    v13 = *(a1 + v12);
    *(a1 + v12) = 1;
    sub_24A3A3944(v13);
  }

  v14 = *(a1 + 128);

  v16 = MEMORY[0x24C2189A0](v15);
  sub_24A3A3C54(v14, a2, a3, a4);
  objc_autoreleasePoolPop(v16);
}

uint64_t sub_24A3A3944(char a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6E0();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24A3A76D8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88C20;
  v13 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_24A3A3C18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A3A3C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47[-v11];
  v13 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v47[-v16];
  v18 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress;
  if ((*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress) & 1) == 0)
  {
    if (*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_useOptimizedFetch) == 1)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v19 = sub_24A4AB630();
      sub_24A378E18(v19, qword_27EF4E260);
      v20 = sub_24A4AB600();
      v21 = sub_24A4ABCE0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24A376000, v20, v21, "FMFRefreshController: asking fmfd about followers and following…", v22, 2u);
        MEMORY[0x24C219130](v22, -1, -1);
      }

      v23 = sub_24A4AA700();
      v49[3] = v23;
      v49[4] = sub_24A37EF8C(&qword_27EF40910, MEMORY[0x277D08A28]);
      v24 = sub_24A38D3BC(v49);
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D089F8], v23);
      LOBYTE(v23) = sub_24A4AA6C0();
      result = sub_24A37EEE0(v49);
      if (v23)
      {
        v25 = sub_24A4ABB70();
        (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
        v26 = swift_allocObject();
        v26[2] = 0;
        v26[3] = 0;
        v26[4] = a1;

        sub_24A432370(0, 0, v17, &unk_24A4B4F60, v26);
      }

      *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce) = 1;
    }

    else
    {
      v49[6] = v4;
      v48 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce);
      v27 = type metadata accessor for FMFFriend();
      (*(*(v27 - 8) + 56))(v12, 1, 1, v27);

      v28 = MEMORY[0x277D84F90];
      v29 = sub_24A3A424C(MEMORY[0x277D84F90]);
      v30 = sub_24A3A424C(v28);
      refreshed = type metadata accessor for FMFInitRefreshClientRequest();
      v32 = *(refreshed + 48);
      v33 = *(refreshed + 52);
      v34 = swift_allocObject();
      sub_24A3A4548(v12, v34 + qword_27EF4E2F0);
      *(v34 + qword_27EF4E2F8) = 0;
      *(v34 + qword_27EF4E300) = v29;
      *(v34 + qword_27EF4E308) = v30;
      v35 = (v34 + qword_27EF4E310);
      *v35 = a2;
      v35[1] = a3;
      v35[2] = a4;
      *(v34 + qword_27EF4E318) = 1;
      if (v48)
      {
        v36 = 0x65696C4374696E69;
        v37 = 0xEA0000000000746ELL;
      }

      else
      {
        v37 = 0x800000024A4AF5B0;
        v36 = 0xD000000000000010;
      }

      v38 = sub_24A3A45B8(v36, v37);
      sub_24A37EF2C(v12, &qword_27EF3F2D0, &qword_24A4B4F50);
      *(a1 + v18) = 1;
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v39 = sub_24A4AB630();
      sub_24A378E18(v39, qword_27EF4E260);
      v40 = sub_24A4AB600();
      v41 = sub_24A4ABCE0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_24A376000, v40, v41, "FMFRefreshController: sending initClient request…", v42, 2u);
        MEMORY[0x24C219130](v42, -1, -1);
      }

      v43 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 24);
      v44 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 32);
      sub_24A37EACC((a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController), v43);
      v45 = *(v44 + 64);
      v46 = type metadata accessor for FMFInitRefreshClientResponse();

      v45(v38, sub_24A3BB614, a1, v46, v43, v44);
    }
  }

  return result;
}

unint64_t sub_24A3A424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40390, &unk_24A4BA170);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}