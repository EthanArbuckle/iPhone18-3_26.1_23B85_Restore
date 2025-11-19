uint64_t sub_2288B3B70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2288B3B98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_2288B3BF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MEMORY[0x22AAC3860]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22892F228();
  }

  return sub_22892F258();
}

void sub_2288B3C68(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2288B3CE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2288B3D08(void (**a1)(void, void), void *a2)
{
  v5 = *(sub_22892DEF8() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22892EFA8() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = *(v2 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2288B3E48(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), v2 + v10, (v2 + v12));
}

void sub_2288B3E48(void (**a1)(void, void), void *a2, uint64_t a3, void (**a4)(void, void), void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void))
{
  v120 = a8;
  v121 = a6;
  v111 = a7;
  v119 = a5;
  v115 = a1;
  v116 = a4;
  v113 = a3;
  sub_2288B4A64(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B4B3C(0);
  v17 = v16;
  v114 = *(v16 - 8);
  v18 = *(v114 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22892DDC8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v105 - v27;
  v29 = sub_22892DF58();
  v118 = *(v29 - 8);
  v30 = *(v118 + 64);
  MEMORY[0x28223BE20](v29);
  v117 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22892EDE8();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v115 = v35;
    v120 = v34;
    v38 = a2;
    sub_22892EDC8();
    v39 = a2;
    v40 = v116;

    v41 = sub_22892EDD8();
    v42 = sub_22892F398();

    v43 = a2;
    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v112 = v29;
      v46 = v45;
      v47 = swift_slowAlloc();
      v122[0] = v47;
      *v44 = 136446722;
      v48 = sub_22892F948();
      v50 = sub_2288B748C(v48, v49, v122);
      v51 = v119;

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2288B748C(v113, v40, v122);
      *(v44 + 22) = 2112;
      v52 = v43;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v53;
      *v46 = v53;
      _os_log_impl(&dword_2288B2000, v41, v42, "[%{public}s:%s] Workout Training Load Query Helper fetch errored with %@", v44, 0x20u);
      sub_2288B5BCC(v46, sub_2288D6D64);
      v54 = v46;
      v29 = v112;
      MEMORY[0x22AAC47E0](v54, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v47, -1, -1);
      MEMORY[0x22AAC47E0](v44, -1, -1);

      (v115)[1](v37, v120);
      v55 = v121;
    }

    else
    {

      (v115)[1](v37, v120);
      v55 = v121;
      v51 = v119;
    }

    v70 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
    v71 = sub_22892DE28();

    v72 = [v55 queryUUID];
    v73 = v117;
    sub_22892DF38();

    v74 = sub_22892DF18();
    (*(v118 + 8))(v73, v29);
    [v51 client:v71 deliverError:v74 forQuery:?];

    return;
  }

  v113 = v28;
  v108 = v15;
  v109 = v20;
  v110 = v17;
  if (!v115)
  {
    v75 = sub_22892F208();
    v76 = [v121 queryUUID];
    v77 = v117;
    sub_22892DF38();

    v78 = sub_22892DF18();
    (*(v118 + 8))(v77, v29);
    [v119 client:v75 deliverTrainingLoadSampleDaySummaries:v78 queryUUID:?];

    return;
  }

  v56 = v21;
  v112 = v29;
  v122[0] = MEMORY[0x277D84F90];
  v116 = v115;
  v57 = [v116 totalTrainingLoadCollection];
  v58 = [v57 trainingLoads];

  v60 = v109;
  v59 = v110;
  v61 = v114;
  if (v58)
  {
    v107 = sub_2288BC0FC(0, &qword_2813DEBF8, 0x277CCDCA0);
    v62 = sub_22892F218();

    if (v62 >> 62)
    {
      if (sub_22892F588())
      {
LABEL_8:
        if ((v62 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x22AAC3CC0](0, v62);
          v59 = v22;
          v65 = v113;
          v63 = v111;
        }

        else
        {
          v63 = v111;
          if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_40;
          }

          v59 = v22;
          v64 = *(v62 + 32);
          v65 = v113;
        }

        v115 = a11;
        v111 = a10;

        v66 = [v64 dateInterval];

        sub_22892DD68();
        (*(v59 + 32))(v65, v26, v56);
        if ((v63 & 1) == 0)
        {
          v67 = [v116 totalTrainingLoadCollection];
          v68 = [v67 trainingLoads];

          if (v68)
          {
            v69 = sub_22892F218();
          }

          else
          {
            v69 = MEMORY[0x277D84F90];
          }

          v91 = sub_22890FF10(v69, a9, v111, v115, v65, 0, 1);

          (*(v59 + 8))(v65, v56);
          v122[0] = v91;
          v59 = v110;
          v61 = v114;
          goto LABEL_42;
        }

        v106 = v56;
        v79 = [v116 activityTypes];
        sub_2288BC0FC(0, &qword_2813DEB50, 0x277CCABB0);
        v58 = sub_22892F218();

        if (!(v58 >> 62))
        {
          v80 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v81 = v120;
          if (v80)
          {
LABEL_19:
            if (v80 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v80; ++i)
            {
              if ((v58 & 0xC000000000000001) != 0)
              {
                v83 = MEMORY[0x22AAC3CC0](i, v58);
              }

              else
              {
                v83 = *(v58 + 8 * i + 32);
              }

              v84 = v83;
              v85 = sub_22892F4C8();
              v86 = [v116 trainingLoadCollectionForActivityType_];
              if (v86)
              {
                v87 = v86;
                v88 = [v86 trainingLoads];

                if (v88)
                {
                  v89 = sub_22892F218();
                }

                else
                {
                  v89 = MEMORY[0x277D84F90];
                }

                v81 = v120;
              }

              else
              {
                v89 = MEMORY[0x277D84F90];
              }

              if (sub_22890F810(v89, v81))
              {
                v90 = sub_22890FF10(v89, a9, v111, v115, v113, v85, 0);

                sub_2289049A4(v90);
              }

              else
              {
              }

              v81 = v120;
            }
          }

LABEL_41:

          (*(v59 + 8))(v113, v106);
          v60 = v109;
          v59 = v110;
          v61 = v114;
          goto LABEL_42;
        }

LABEL_40:
        v80 = sub_22892F588();
        v81 = v120;
        if (v80)
        {
          goto LABEL_19;
        }

        goto LABEL_41;
      }
    }

    else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }
  }

LABEL_42:
  v92 = v108;
  sub_22892EBD8();
  if ((*(v61 + 48))(v92, 1, v59) == 1)
  {
    sub_2288B5BCC(v92, sub_2288B4A64);
    v93 = v122[0];
  }

  else
  {
    v94 = sub_2288C34B4(v92, v60, sub_2288B4B3C);
    MEMORY[0x28223BE20](v94);
    *(&v105 - 2) = v60;
    v93 = sub_2288D5E2C(sub_228911B60, (&v105 - 4), v95);
    sub_2288B5BCC(v60, sub_2288B4B3C);
  }

  v96 = v112;
  if (v93 >> 62)
  {

    sub_22892F748();
    swift_bridgeObjectRelease_n();
    v98 = v121;
  }

  else
  {

    sub_22892F828();
    v97 = swift_dynamicCastMetatype();
    v98 = v121;
    if (!v97)
    {
      v103 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v103)
      {
        v104 = ((v93 & 0xFFFFFFFFFFFFFF8) + 32);
        do
        {
          if (!*v104)
          {
            break;
          }

          ++v104;
          --v103;
        }

        while (v103);
      }
    }
  }

  v99 = sub_22892F208();

  v100 = [v98 queryUUID];
  v101 = v117;
  sub_22892DF38();

  v102 = sub_22892DF18();
  (*(v118 + 8))(v101, v96);
  [v119 client:v99 deliverTrainingLoadSampleDaySummaries:v102 queryUUID:?];
}

void sub_2288B4A84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288B4AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288B4B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22892EFA8();
    v7 = sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288B4C68(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v125 = a6;
  v112 = a4;
  v126 = a3;
  v128 = a2;
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x277D83D88];
  sub_2288B6D08(0, &qword_2813DFEA8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v106 - v14;
  v118 = sub_22892DE18();
  v117 = *(v118 - 8);
  v15 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v131 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], v11);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v106 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v120 = &v106 - v23;
  v130 = sub_22892DEF8();
  v116 = *(v130 - 8);
  v24 = *(v116 + 64);
  v25 = MEMORY[0x28223BE20](v130);
  v111 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v129 = &v106 - v28;
  v109 = v29;
  MEMORY[0x28223BE20](v27);
  v132 = &v106 - v30;
  v123 = sub_22892EFA8();
  v114 = *(v123 - 8);
  v31 = *(v114 + 64);
  v32 = MEMORY[0x28223BE20](v123);
  v110 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v122 = &v106 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v133 = &v106 - v37;
  v108 = v38;
  MEMORY[0x28223BE20](v36);
  v40 = &v106 - v39;
  v124 = sub_22892EDE8();
  v41 = *(v124 - 1);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v124);
  v44 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();

  v45 = sub_22892EDD8();
  v46 = sub_22892F398();

  v47 = os_log_type_enabled(v45, v46);
  v121 = a5;
  v115 = ObjectType;
  v113 = a1;
  v127 = v40;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136446466;
    v50 = sub_22892F948();
    v52 = sub_2288B748C(v50, v51, aBlock);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_2288B748C(a1, v128, aBlock);
    _os_log_impl(&dword_2288B2000, v45, v46, "[%{public}s:%s] Query Type is Workout", v48, 0x16u);
    swift_arrayDestroy();
    v53 = v49;
    v40 = v127;
    MEMORY[0x22AAC47E0](v53, -1, -1);
    MEMORY[0x22AAC47E0](v48, -1, -1);
  }

  (*(v41 + 8))(v44, v124);
  v124 = v7;
  sub_22890F20C(v40, v133);
  v54 = v120;
  sub_22892EBC8();
  v55 = sub_22892E048();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  result = v57(v54, 1, v55);
  if (result == 1)
  {
    goto LABEL_11;
  }

  sub_22892EF98();
  v59 = *(v56 + 8);
  v59(v54, v55);
  v60 = v119;
  sub_22892EBC8();
  result = v57(v60, 1, v55);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_22892EF98();
  v59(v60, v55);
  sub_22892EBC8();
  v61 = sub_22892E058();
  (*(*(v61 - 8) + 56))(v107, 1, 1, v61);
  sub_22892DE08();
  sub_2288BC0FC(0, &qword_2813DEC80, 0x277CCAC30);
  sub_2288B6D08(0, &unk_2813DE968, sub_228911AB8, MEMORY[0x277D84560]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2289315C0;
  v63 = sub_22892DE58();
  v64 = sub_2288BC0FC(0, &qword_2813DEB68, 0x277CBEAA8);
  *(v62 + 56) = v64;
  v65 = sub_228911B1C(&qword_2813DEB60, &qword_2813DEB68, 0x277CBEAA8);
  *(v62 + 64) = v65;
  *(v62 + 32) = v63;
  v66 = sub_22892DE58();
  *(v62 + 96) = v64;
  *(v62 + 104) = v65;
  *(v62 + 72) = v66;
  v67 = sub_22892F358();
  aBlock[6] = MEMORY[0x277D84FA0];
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v69)
  {
    sub_2288F3FAC(aBlock, v69);
  }

  v70 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v70)
  {
    sub_2288F3FAC(aBlock, v70);
  }

  sub_2288BC0FC(0, &unk_2813DEC70, 0x277CCD720);
  sub_228911B1C(&unk_2813DEC60, &unk_2813DEC70, 0x277CCD720);
  v71 = sub_22892F298();

  v72 = [v67 hk:v71 filterRepresentationForDataTypes:0 isSubpredicate:?];

  v73 = objc_allocWithZone(MEMORY[0x277D10988]);
  v74 = v72;
  v75 = sub_22892DE58();
  v76 = sub_22892DDD8();
  v120 = v74;
  v119 = [v73 initWithFilter:v74 options:v125 anchorDate:v75 intervalComponents:v76 profile:v112];

  v77 = v116;
  v78 = v111;
  (*(v116 + 16))(v111, v129, v130);
  v79 = v114;
  v80 = *(v114 + 16);
  v81 = v123;
  v80(v122, v127, v123);
  v112 = v67;
  v82 = v110;
  v80(v110, v133, v81);
  v83 = (*(v77 + 80) + 56) & ~*(v77 + 80);
  v84 = (v109 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = *(v79 + 80);
  v86 = (v85 + v84 + 8) & ~v85;
  v87 = (v108 + v85 + v86) & ~v85;
  v88 = (v108 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v128;
  *(v89 + 2) = v113;
  *(v89 + 3) = v90;
  v92 = v124;
  v91 = v125;
  *(v89 + 4) = v126;
  *(v89 + 5) = v92;
  *(v89 + 6) = v91;
  (*(v77 + 32))(&v89[v83], v78, v130);
  v94 = v121;
  v93 = v122;
  *&v89[v84] = v121;
  v95 = *(v79 + 32);
  v96 = &v89[v86];
  v97 = v123;
  v95(v96, v93, v123);
  v95(&v89[v87], v82, v97);
  *&v89[v88] = v115;
  v98 = swift_allocObject();
  v98[2] = sub_2288B3D08;
  v98[3] = v89;
  aBlock[4] = sub_2288B3CE0;
  aBlock[5] = v98;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3C68;
  aBlock[3] = &block_descriptor_9_0;
  v99 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v100 = v124;
  v101 = v94;

  v102 = v119;
  [v119 fetchTrainingLoadCollectionWithCompletion_];
  _Block_release(v99);

  (*(v117 + 8))(v131, v118);
  v103 = *(v77 + 8);
  v104 = v130;
  v103(v129, v130);
  v103(v132, v104);
  v105 = *(v79 + 8);
  v105(v133, v97);
  v105(v127, v97);
  LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

  if (v99)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2288B5A08()
{
  v1 = sub_22892DEF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v17 = v3 | v8;
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 24);

  v14 = *(v0 + 32);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v15 = *(v7 + 8);
  v15(v0 + v9, v6);
  v15(v0 + v11, v6);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v17 | 7);
}

uint64_t sub_2288B5BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288B5C2C()
{
  v1 = [v0 configuration];
  sub_22892EC68();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_2288B5CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288B5D1C()
{
  if (!qword_2813DED90)
  {
    sub_22892EFA8();
    sub_2288D3E28(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v0 = sub_22892F068();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DED90);
    }
  }
}

uint64_t sub_2288B5DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = sub_22892DEF8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892E478();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22892E778();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10);
  sub_22892E738();
  sub_22892E6F8();
  sub_22892DED8();
  v19 = sub_2288B7B40(a1, v18, v9);
  result = (*(v11 + 8))(a2, v10);
  *a3 = v19;
  return result;
}

void sub_2288B5F94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_22892EDE8();
  v106 = *(v2 - 8);
  v107 = v2;
  v3 = *(v106 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v102 - v7;
  v9 = sub_22892DF58();
  v109 = *(v9 - 8);
  v110 = v9;
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5F60(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v102 - v18;
  v20 = sub_22892EE28();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = [v1 queryQueue];
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v25 = sub_22892EE38();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v26 = [v1 clientProxy];
  if (!v26)
  {
    goto LABEL_40;
  }

  v20 = v26;
  v27 = [v26 remoteObjectProxy];
  swift_unknownObjectRelease();
  sub_22892F4F8();
  swift_unknownObjectRelease();
  sub_228911A54();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v28 = v111;
  v29 = [v1 profile];
  if (!v29)
  {
    sub_22892EDC8();
    v40 = v1;
    v41 = sub_22892EDD8();
    v42 = sub_22892F398();

    if (os_log_type_enabled(v41, v42))
    {
      v108 = v28;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v112[0] = v44;
      *v43 = 136446466;
      v45 = sub_22892F948();
      v47 = sub_2288B748C(v45, v46, v112);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = [v40 configuration];
      v49 = [v48 debugIdentifier];

      if (v49)
      {
        v50 = sub_22892F0C8();
        v52 = v51;
      }

      else
      {
        v84 = [v40 queryUUID];
        sub_22892DF38();

        v50 = sub_22892DF08();
        v52 = v85;
        (*(v109 + 8))(v12, v110);
      }

      v86 = sub_2288B748C(v50, v52, v112);

      *(v43 + 14) = v86;
      _os_log_impl(&dword_2288B2000, v41, v42, "[%{public}s:%s] Training Load Query, no profile", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v44, -1, -1);
      MEMORY[0x22AAC47E0](v43, -1, -1);

      (*(v106 + 8))(v6, v107);
      v28 = v108;
    }

    else
    {

      (*(v106 + 8))(v6, v107);
    }

    v87 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:127 userInfo:0];
    v88 = sub_22892DE28();

    v89 = [v40 queryUUID];
    sub_22892DF38();

    v90 = sub_22892DF18();
    (*(v109 + 8))(v12, v110);
    [v28 client:v88 deliverError:v90 forQuery:?];
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v30 = v29;
  v108 = v28;
  v31 = [v1 configuration];
  sub_22892EBF8();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

    sub_22892EDC8();
    v53 = v1;
    v54 = sub_22892EDD8();
    v55 = sub_22892F398();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v112[0] = v103;
      *v56 = 136446466;
      v57 = sub_22892F948();
      v59 = sub_2288B748C(v57, v58, v112);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v60 = [v53 configuration];
      v61 = [v60 debugIdentifier];

      v104 = v53;
      if (v61)
      {
        v62 = sub_22892F0C8();
        v64 = v63;
      }

      else
      {
        v91 = [v53 queryUUID];
        sub_22892DF38();

        v62 = sub_22892DF08();
        v64 = v92;
        (*(v109 + 8))(v12, v110);
      }

      v70 = v108;
      v93 = sub_2288B748C(v62, v64, v112);

      *(v56 + 14) = v93;
      _os_log_impl(&dword_2288B2000, v54, v55, "[%{public}s:%s] Training Load Query, no configuration", v56, 0x16u);
      v94 = v103;
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v94, -1, -1);
      MEMORY[0x22AAC47E0](v56, -1, -1);

      (*(v106 + 8))(v8, v107);
      v53 = v104;
    }

    else
    {

      (*(v106 + 8))(v8, v107);
      v70 = v108;
    }

    v95 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
    v88 = sub_22892DE28();

    v96 = [v53 queryUUID];
    sub_22892DF38();

    v90 = sub_22892DF18();
    (*(v109 + 8))(v12, v110);
    [v70 client:v88 deliverError:v90 forQuery:?];
    swift_unknownObjectRelease();

LABEL_32:
    return;
  }

  v33 = v32;
  sub_22892EBE8();
  v20 = sub_22892E488();
  v8 = *(v20 - 8);
  if ((*(v8 + 6))(v19, 1, v20) == 1)
  {
    goto LABEL_40;
  }

  sub_2289127F4(v19, v17, sub_2288B5F60);
  v34 = (*(v8 + 11))(v17, v20);
  if (v34 == *MEMORY[0x277D0FF18])
  {
    v35 = [v1 configuration];
    v36 = [v35 debugIdentifier];

    if (v36)
    {
      v37 = sub_22892F0C8();
      v39 = v38;
    }

    else
    {
      v76 = [v1 queryUUID];
      sub_22892DF38();

      v37 = sub_22892DF08();
      v39 = v77;
      (*(v109 + 8))(v12, v110);
    }

    v78 = v37;
    v79 = v39;
    v80 = v108;
    v81 = v30;
    v82 = v33;
    v83 = 0;
  }

  else
  {
    if (v34 != *MEMORY[0x277D0FF08])
    {
      if (v34 != *MEMORY[0x277D0FF10])
      {
        while (1)
        {
          v101 = *(v8 + 1);
          v8 += 8;
          v101(v17, v20);
LABEL_40:
          sub_22892F738();
          __break(1u);
        }
      }

      v71 = [v1 configuration];
      v72 = [v71 debugIdentifier];

      if (v72)
      {
        v73 = sub_22892F0C8();
        v75 = v74;
      }

      else
      {
        v99 = [v1 queryUUID];
        sub_22892DF38();

        v73 = sub_22892DF08();
        v75 = v100;
        (*(v109 + 8))(v12, v110);
      }

      sub_2288C434C(v73, v75, v108, v30, v33);

      swift_unknownObjectRelease();

      goto LABEL_38;
    }

    v65 = [v1 configuration];
    v66 = [v65 debugIdentifier];

    if (v66)
    {
      v67 = sub_22892F0C8();
      v69 = v68;
    }

    else
    {
      v97 = [v1 queryUUID];
      sub_22892DF38();

      v67 = sub_22892DF08();
      v69 = v98;
      (*(v109 + 8))(v12, v110);
    }

    v78 = v67;
    v79 = v69;
    v80 = v108;
    v81 = v30;
    v82 = v33;
    v83 = 1;
  }

  sub_2288B4C68(v78, v79, v80, v81, v82, v83);
  swift_unknownObjectRelease();

LABEL_38:
  sub_2288B5BCC(v19, sub_2288B5F60);
}

void sub_2288B6CB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288B6D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2288B6D6C(void *a1)
{
  v1 = a1;
  v2 = sub_2288B6DA0();

  return v2 & 1;
}

uint64_t sub_2288B6DA0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v4, sel__shouldExecuteWhenProtectedDataIsUnavailable))
  {
    return 1;
  }

  v2 = [v0 configuration];
  v3 = [v2 shouldDeactivateAfterInitialResults];

  return v3 ^ 1;
}

void sub_2288B6E20(void *a1)
{
  v1 = a1;
  sub_2288B6E68();
}

void sub_2288B6E68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892DF58();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v10 = v0;
  v11 = sub_22892EDD8();
  v12 = sub_22892F398();

  v13 = os_log_type_enabled(v11, v12);
  v47 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46 = v5;
    v16 = v15;
    v50 = v15;
    *v14 = 136446466;
    v17 = sub_22892F948();
    v19 = v2;
    v20 = sub_2288B748C(v17, v18, &v50);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    v21 = sub_2288B770C();
    v23 = sub_2288B748C(v21, v22, &v50);

    *(v14 + 14) = v23;
    v2 = v19;
    ObjectType = v47;
    _os_log_impl(&dword_2288B2000, v11, v12, "[%{public}s:%{public}s] Query started", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v16, -1, -1);
    MEMORY[0x22AAC47E0](v14, -1, -1);

    (*(v6 + 8))(v9, v46);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v51.receiver = v10;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, sel__queue_start);
  v24 = sub_2288B7894();
  if (v24)
  {
    v25 = v24;
    v26 = [v10 profile];
    if (v26)
    {
      v27 = v26;
      if (!sub_2288B79A4())
      {
        v39 = sub_22891DD38(127, 0xD000000000000021, 0x8000000228933840);
        v36 = sub_22892DE28();

        v40 = [v10 queryUUID];
        v41 = v48;
        sub_22892DF38();

        v31 = sub_22892DF18();
        (*(v49 + 8))(v41, v2);
        [v25 client:v36 deliverError:v31 forQuery:?];
        swift_unknownObjectRelease();

LABEL_15:
LABEL_16:

        return;
      }

      v29 = v28;
      v30 = sub_2288B5C2C();
      if (v30)
      {
        v31 = v30;
        if (([v30 shouldDeactivateAfterInitialResults] & 1) == 0)
        {
          v32 = swift_getObjectType();
          v33 = (*(v29 + 8))(v32, v29);
          v34 = [v10 queryQueue];
          sub_2288BBECC(v10, v34, v33);
        }

        sub_2288B8230(v27, v25);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v42 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
      v36 = sub_22892DE28();

      v43 = [v10 queryUUID];
      v44 = v48;
      sub_22892DF38();

      v31 = sub_22892DF18();
      (*(v49 + 8))(v44, v2);
      [v25 client:v36 deliverError:v31 forQuery:?];
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = sub_22891DD38(127, 0x20656C69666F7250, 0xEF676E697373696DLL);
      v36 = sub_22892DE28();

      v37 = [v10 queryUUID];
      v38 = v48;
      sub_22892DF38();

      v31 = sub_22892DF18();
      (*(v49 + 8))(v38, v2);
      [v25 client:v36 deliverError:v31 forQuery:?];
    }

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  sub_22892F738();
  __break(1u);
}

uint64_t sub_2288B748C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2288B7558(v11, 0, 0, 1, a1, a2);
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
    sub_2288B7664(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2288B7558(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2288C00E0(a5, a6);
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
    result = sub_22892F698();
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

uint64_t sub_2288B7664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2288B770C()
{
  v1 = sub_22892DF58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 configuration];
  v7 = [v6 debugIdentifier];

  if (v7)
  {
    v8 = sub_22892F0C8();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;

    sub_2288D43C4(v16, v0, &v15);
    swift_bridgeObjectRelease_n();
    return v15;
  }

  else
  {
    v12 = [v0 queryUUID];
    sub_22892DF38();

    v13 = sub_22892DF08();
    (*(v2 + 8))(v5, v1);
    return v13;
  }
}

id sub_2288B7894()
{
  result = [v0 clientProxy];
  if (result)
  {
    v2 = [result remoteObjectProxy];
    swift_unknownObjectRelease();
    sub_22892F4F8();
    swift_unknownObjectRelease();
    sub_2288B7940();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2288B7940()
{
  result = qword_2813DFDF0;
  if (!qword_2813DFDF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DFDF0);
  }

  return result;
}

uint64_t sub_2288B79A4()
{
  sub_22892E3C8();
  v1 = sub_22892F098();

  v2 = [v0 profileExtensionWithIdentifier_];

  if (v2)
  {
    sub_22892F4F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_2288B7A8C();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2288DB2A4(v7);
    return 0;
  }
}

unint64_t sub_2288B7A8C()
{
  result = qword_2813DFDC8;
  if (!qword_2813DFDC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DFDC8);
  }

  return result;
}

unint64_t sub_2288B7AEC()
{
  result = qword_2813DF430;
  if (!qword_2813DF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DF430);
  }

  return result;
}

char *sub_2288B7B40(void *a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v5 = sub_22892E778();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C();
  v69 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892E048();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892DEF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892EFA8();
  v75 = *(v19 - 8);
  v20 = *(v75 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v70 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v69 - v23;
  v24 = sub_22892E478();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  v32 = a1;
  sub_22892E708();
  v33 = type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v73 = v32;
  *(v36 + 16) = v32;
  v37 = v25[4];
  v72 = v36;
  v37(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange, v31, v24);
  v76 = v15;
  v77 = v14;
  (*(v15 + 16))(v18, v83, v14);
  sub_22892E708();
  sub_22892E468();
  v38 = v25[1];
  v38(v31, v24);
  v39 = v80;
  v40 = v71;
  sub_22892EF48();
  v81 = a2;
  sub_22892E708();
  sub_22892E438();
  v41 = v24;
  v42 = v39;
  v38(v29, v41);
  sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  v82 = v19;
  if (sub_22892F038())
  {
    v43 = *(v69 + 36);
    v44 = sub_22892F048();
  }

  else
  {
    v44 = 0;
  }

  sub_2288BA88C(v40, sub_2288B5D1C);
  v46 = v78;
  v45 = v79;
  v47 = v74;
  (*(v78 + 16))(v74, v81, v79);
  type metadata accessor for SleepingWristTemperatureMostRecentSampleWarmupProgressProvider();
  v48 = swift_allocObject();
  v49 = 0;
  *(v48 + 24) = xmmword_2289321C0;
  v50 = v73;
  *(v48 + 16) = v73;
  v51 = v75;
  if (v44)
  {
    v52 = v70;
    v53 = v82;
    (*(v75 + 16))(v70, v42, v82);
    v54 = type metadata accessor for OutlierContextProvider();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    v49 = swift_allocObject();
    *(v49 + 16) = v50;
    (*(v51 + 32))(v49 + OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay, v52, v53);
    v57 = v50;
  }

  sub_2288BABAC(0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  *(v61 + 2) = v72;
  (*(v46 + 32))(&v61[*(*v61 + 104)], v47, v45);
  v62 = &v61[*(*v61 + 112)];
  *v62 = v48;
  v62[1] = &off_283BD5190;
  *&v61[*(*v61 + 120)] = v49;
  v63 = *(*v61 + 104);
  swift_beginAccess();
  v64 = *(v46 + 24);
  v65 = v50;

  v66 = v81;
  v64(&v61[v63], v81, v45);
  swift_endAccess();
  v67 = v83;
  sub_2288BAC68(v66, v83);

  (*(v76 + 8))(v67, v77);
  (*(v46 + 8))(v66, v45);
  (*(v51 + 8))(v80, v82);

  return v61;
}

uint64_t sub_2288B8230(int *a1, void *a2)
{
  v301 = a2;
  v320 = a1;
  ObjectType = swift_getObjectType();
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v297 = sub_22892DEF8();
  v294 = *(v297 - 8);
  v5 = *(v294 + 64);
  v6 = MEMORY[0x28223BE20](v297);
  v278 = &v270 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v302 = &v270 - v8;
  sub_2288B5C84(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v277 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v286 = &v270 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v291 = &v270 - v16;
  MEMORY[0x28223BE20](v15);
  v303 = &v270 - v17;
  v18 = *((v4 & v3) + 0x50);
  v317 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v315 = *(AssociatedTypeWitness - 1);
  v20 = *(v315 + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v310 = &v270 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v319 = &v270 - v23;
  v300 = sub_22892DF58();
  v316 = *(v300 - 8);
  v24 = *(v316 + 64);
  MEMORY[0x28223BE20](v300);
  v299 = &v270 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_22892EDE8();
  v313 = *(v305 - 8);
  v26 = *(v313 + 8);
  v27 = MEMORY[0x28223BE20](v305);
  v283 = &v270 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v275 = &v270 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v273 = &v270 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v296 = &v270 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v270 = &v270 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v271 = &v270 - v38;
  MEMORY[0x28223BE20](v37);
  v272 = &v270 - v39;
  v274 = sub_2288B7AEC();
  v40 = sub_22892F8D8();
  *&v292 = *(v40 - 8);
  v41 = *(v292 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v312 = &v270 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v324 = &v270 - v44;
  v295 = v45;
  v46 = sub_22892F498();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v318 = &v270 - v48;
  sub_2288BC0C8(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v287 = &v270 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x277D83D88];
  sub_2288B5CB8(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v270 - v55;
  sub_2288B5CB8(0, &qword_2813DED78, sub_2288B5D1C, v52);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = &v270 - v59;
  v61 = sub_22892E478();
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v282 = *(v18 - 8);
  v64 = *(v282 + 64);
  MEMORY[0x28223BE20](v63);
  v288 = &v270 - v65;
  v66 = sub_22892EE28();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v70 = (&v270 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v323 = v2;
  *v70 = [v2 queryQueue];
  (*(v67 + 104))(v70, *MEMORY[0x277D85200], v66);
  v71 = sub_22892EE38();
  result = (*(v67 + 8))(v70, v66);
  if ((v71 & 1) == 0)
  {
    __break(1u);
    goto LABEL_69;
  }

  v73 = v317;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v75 = *(AssociatedConformanceWitness + 24);
  v290 = AssociatedConformanceWitness;
  v76 = *(AssociatedConformanceWitness + 8);
  v322 = AssociatedTypeWitness;
  v327 = AssociatedTypeWitness;
  v328 = v76;
  v329 = v75;
  v77 = sub_22892EE78();
  v331 = sub_22892F238();
  sub_22892EC58();
  sub_2288B5D1C();
  result = (*(*(v78 - 8) + 48))(v60, 1, v78);
  if (result == 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v321 = v77;
  sub_22892EC48();
  v79 = sub_22892E048();
  result = (*(*(v79 - 8) + 48))(v56, 1, v79);
  if (result == 1)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  sub_22892E428();
  v80 = v73[4];
  v81 = v320;
  v80();
  v82 = v287;
  (v73[6])(v18, v73);
  v83 = type metadata accessor for SleepingSampleCacheRange();
  v84 = v294 + 56;
  v85 = v82 + v83[5];
  v285 = *(v294 + 56);
  v285(v85, 1, 1, v297);
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v86 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v87 = HKRollingBaselineConfigurationForQuantityType();

  [v87 maximumWindowDuration];
  v89 = v88;

  *(v82 + v83[6]) = v89;
  v90 = *(v83 - 1);
  v91 = *(v90 + 56);
  v92 = v90 + 56;
  v320 = v83;
  v279 = v91;
  v91(v82, 0, 1, v83);
  v93 = &v323[qword_2813DF4E0];
  swift_beginAccess();
  sub_2288BBBE8(v82, v93, sub_2288BC0C8);
  swift_endAccess();
  v94 = v73[5];
  v95 = v81;
  v96 = v93;
  v281 = v18;
  (v94)(&v325, v95, v18, v73);
  v97 = v326;
  v98 = __swift_project_boxed_opaque_existential_1(&v325, v326);
  v99 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  (*(v101 + 16))(&v270 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  v329 = swift_getAssociatedTypeWitness();
  v330 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v327);
  sub_22892F1A8();
  __swift_destroy_boxed_opaque_existential_0(&v325);
  v317 = (v292 + 48);
  v314 = (v292 + 32);
  v304 = (v313 + 8);
  v298 = (v316 + 8);
  v311 = (v292 + 16);
  v309 = (v315 + 32);
  v280 = v92;
  v308 = (v92 - 8);
  v289 = (v84 - 8);
  v284 = (v84 - 24);
  v294 = v84;
  v276 = (v84 - 48);
  LODWORD(v316) = 1;
  v307 = (v315 + 16);
  v306 = (v315 + 8);
  v315 = v292 + 8;
  *&v102 = 136446466;
  v292 = v102;
  v103 = v295;
  v313 = v93;
  v104 = v302;
  v105 = v286;
  v106 = v296;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v327, v329);
    v108 = v318;
    sub_22892F4B8();
    if ((*v317)(v108, 1, v103) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v327);
      v145 = v283;
      v146 = v275;
      v109 = v323;
      v147 = v316;
      goto LABEL_30;
    }

    (*v314)(v324, v108, v103);
    v109 = v323;
    if ([v323 _shouldStopProcessingQuery])
    {
      v167 = v272;
      sub_22892EDC8();
      v168 = v109;
      v169 = sub_22892EDD8();
      v170 = sub_22892F398();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v325 = v172;
        *v171 = v292;
        v173 = sub_22892F948();
        v175 = sub_2288B748C(v173, v174, &v325);

        *(v171 + 4) = v175;
        v96 = v313;
        *(v171 + 12) = 2082;
        v176 = sub_2288B770C();
        v178 = sub_2288B748C(v176, v177, &v325);

        *(v171 + 14) = v178;
        _os_log_impl(&dword_2288B2000, v169, v170, "[%{public}s:%{public}s] Query aborted", v171, 0x16u);
        swift_arrayDestroy();
        v179 = v172;
        v103 = v295;
        MEMORY[0x22AAC47E0](v179, -1, -1);
        MEMORY[0x22AAC47E0](v171, -1, -1);
      }

      v160 = *v304;
      (*v304)(v167, v305);
      v145 = v283;
      v180 = v279;
      v165 = sub_22891DD38(128, 0x6261207972657551, 0xED0000646574726FLL);
      (*v315)(v324, v103);
      v166 = 0;
      v109 = v323;
      goto LABEL_48;
    }

    if ([v109 _shouldSuspendQuery])
    {
      v181 = [v109 configuration];
      v182 = [v181 shouldDeactivateAfterInitialResults];

      v183 = v271;
      if (v182)
      {
        sub_22892EDC8();
        v184 = v109;
        v185 = sub_22892EDD8();
        v186 = sub_22892F398();

        v187 = os_log_type_enabled(v185, v186);
        v145 = v283;
        if (v187)
        {
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v325 = v189;
          *v188 = v292;
          v190 = sub_22892F948();
          v192 = sub_2288B748C(v190, v191, &v325);

          *(v188 + 4) = v192;
          v96 = v313;
          *(v188 + 12) = 2082;
          v193 = sub_2288B770C();
          v195 = sub_2288B748C(v193, v194, &v325);

          *(v188 + 14) = v195;
          _os_log_impl(&dword_2288B2000, v185, v186, "[%{public}s:%{public}s] Query suspended and is deactivating", v188, 0x16u);
          swift_arrayDestroy();
          v196 = v189;
          v103 = v295;
          MEMORY[0x22AAC47E0](v196, -1, -1);
          MEMORY[0x22AAC47E0](v188, -1, -1);
        }

        v160 = *v304;
        (*v304)(v183, v305);
        v180 = v279;
        v165 = sub_22891DD38(128, 0xD000000000000023, 0x8000000228933790);
        v166 = 0;
      }

      else
      {
        v201 = v109;
        v202 = v270;
        sub_22892EDC8();
        v203 = v201;
        v204 = sub_22892EDD8();
        v205 = sub_22892F398();

        v206 = os_log_type_enabled(v204, v205);
        v145 = v283;
        if (v206)
        {
          v207 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          v325 = v208;
          *v207 = v292;
          v209 = sub_22892F948();
          v211 = sub_2288B748C(v209, v210, &v325);

          *(v207 + 4) = v211;
          v96 = v313;
          *(v207 + 12) = 2082;
          v212 = sub_2288B770C();
          v214 = sub_2288B748C(v212, v213, &v325);

          *(v207 + 14) = v214;
          _os_log_impl(&dword_2288B2000, v204, v205, "[%{public}s:%{public}s] Query suspended and can be resumed", v207, 0x16u);
          swift_arrayDestroy();
          v215 = v208;
          v103 = v295;
          MEMORY[0x22AAC47E0](v215, -1, -1);
          MEMORY[0x22AAC47E0](v207, -1, -1);
        }

        v160 = *v304;
        (*v304)(v202, v305);
        v180 = v279;
        v166 = sub_22891DD38(128, 0xD000000000000022, 0x8000000228933760);
        v165 = 0;
      }

      v109 = v323;
      (*v315)(v324, v103);
LABEL_48:
      __swift_destroy_boxed_opaque_existential_0(&v327);

      v216 = v287;
      v180(v287, 1, 1, v320);
      swift_beginAccess();
      sub_2288BBBE8(v216, v96, sub_2288BC0C8);
      swift_endAccess();
      goto LABEL_64;
    }

    if (sub_22892F268() >= 200)
    {
      sub_22892EDC8();
      v110 = v109;
      v111 = sub_22892EDD8();
      v112 = sub_22892F398();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v325 = v114;
        *v113 = v292;
        v115 = sub_22892F948();
        v117 = sub_2288B748C(v115, v116, &v325);

        *(v113 + 4) = v117;
        *(v113 + 12) = 2082;
        v118 = sub_2288B770C();
        v120 = sub_2288B748C(v118, v119, &v325);

        *(v113 + 14) = v120;
        _os_log_impl(&dword_2288B2000, v111, v112, "[%{public}s:%{public}s] Delivering sample batch", v113, 0x16u);
        swift_arrayDestroy();
        v121 = v114;
        v103 = v295;
        MEMORY[0x22AAC47E0](v121, -1, -1);
        v122 = v304;
        v123 = v305;
        MEMORY[0x22AAC47E0](v113, -1, -1);

        (*v122)(v106, v123);
      }

      else
      {

        (*v304)(v106, v305);
      }

      v104 = v302;
      sub_22892F708();

      v124 = sub_22892F208();

      v125 = [v110 queryUUID];
      v126 = v299;
      sub_22892DF38();

      v127 = sub_22892DF18();
      (*v298)(v126, v300);
      [v301 client:v124 deliverSleepingSampleDaySummaries:v316 & 1 clearPending:0 isFinalBatch:v127 queryUUID:?];

      v128 = sub_22892F238();
      LODWORD(v316) = 0;
      v331 = v128;
      v109 = v323;
    }

    v129 = v312;
    (*v311)(v312, v324, v103);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v96 = v313;
    v131 = v322;
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v132 = v319;
    (*v309)(v319, v129, v322);
    swift_beginAccess();
    if ((*v308)(v96, 1, v320))
    {
      swift_endAccess();
      v107 = v132;
    }

    else
    {
      v133 = v303;
      sub_22892EA18();
      v134 = v291;
      sub_2288BFF8C(v133, v291, sub_2288B5C84);
      v135 = *v289;
      v136 = v297;
      if ((*v289)(v134, 1, v297) == 1)
      {
        v107 = v132;
        sub_2288BA76C(v134, sub_2288B5C84);
      }

      else
      {
        v137 = *v284;
        (*v284)(v104, v134, v136);
        v138 = v320[5];
        sub_2288BFF8C(v96 + v138, v105, sub_2288B5C84);
        if (v135(v105, 1, v136) == 1)
        {
          sub_2288BA76C(v105, sub_2288B5C84);
          sub_2288BA76C(v96 + v138, sub_2288B5C84);
          v137((v96 + v138), v104, v136);
          v285(v96 + v138, 0, 1, v136);
        }

        else
        {
          v139 = v278;
          v137(v278, v105, v136);
          sub_2288C1090(&qword_2813DFEE8, MEMORY[0x277CC9578]);
          v140 = v136;
          v141 = sub_22892F038();
          v142 = (v141 & 1) == 0;
          if (v141)
          {
            v143 = v139;
          }

          else
          {
            v143 = v104;
          }

          if (!v142)
          {
            v139 = v104;
          }

          (*v276)(v143, v136);
          v144 = v277;
          v137(v277, v139, v140);
          v285(v144, 0, 1, v140);
          v105 = v286;
          sub_2288BBBE8(v144, v96 + v138, sub_2288B5C84);
        }

        v107 = v319;
      }

      swift_endAccess();
      sub_2288BA76C(v303, sub_2288B5C84);
      v131 = v322;
      v106 = v296;
    }

    (*v307)(v310, v107, v131);
    v325 = sub_22892EE48();
    sub_22892F288();
    sub_22892F278();
    (*v306)(v107, v131);
    (*v315)(v324, v103);
  }

  v197 = *v129;
  v198 = v129[8];
  v199 = v198 >> 6;
  if (v198 >> 6 > 1)
  {
    v200 = v273;
    if (v199 != 2)
    {
      v217 = [v197 hk_isDatabaseAccessibilityError];
      if (v217)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

LABEL_51:
    if (v198)
    {
      goto LABEL_54;
    }

LABEL_55:
    v165 = swift_allocError();
    v322 = 0;
    goto LABEL_57;
  }

  v200 = v273;
  if (v199)
  {
    goto LABEL_51;
  }

  if (v198 != 1)
  {
    goto LABEL_55;
  }

LABEL_54:
  v218 = [v109 configuration];
  v219 = [v218 shouldDeactivateAfterInitialResults];

  if (v219)
  {
    goto LABEL_55;
  }

  v322 = swift_allocError();
  v165 = 0;
LABEL_57:
  *v220 = v197;
  *(v220 + 8) = v198;
  v221 = v197;
  sub_22892EDC8();
  v222 = v109;
  v223 = v197;
  v224 = sub_22892EDD8();
  v225 = v200;
  v226 = sub_22892F378();

  v227 = os_log_type_enabled(v224, v226);
  v319 = v222;
  if (v227)
  {
    v228 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    v325 = v318;
    *v228 = 136446722;
    v230 = sub_22892F948();
    v232 = sub_2288B748C(v230, v231, &v325);

    *(v228 + 4) = v232;
    *(v228 + 12) = 2082;
    v233 = sub_2288B770C();
    v235 = sub_2288B748C(v233, v234, &v325);

    *(v228 + 14) = v235;
    *(v228 + 22) = 2112;
    swift_allocError();
    *v236 = v197;
    *(v236 + 8) = v198;
    v237 = v197;
    v238 = _swift_stdlib_bridgeErrorToNSError();
    *(v228 + 24) = v238;
    *v229 = v238;
    _os_log_impl(&dword_2288B2000, v224, v226, "[%{public}s:%{public}s] Enumeration error: %@", v228, 0x20u);
    sub_2288BA76C(v229, sub_2288D6D64);
    MEMORY[0x22AAC47E0](v229, -1, -1);
    v239 = v318;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v239, -1, -1);
    v147 = v316;
    v109 = v323;
    MEMORY[0x22AAC47E0](v228, -1, -1);

    v160 = *v304;
    (*v304)(v273, v305);
    (*v315)(v324, v295);
  }

  else
  {

    v160 = *v304;
    (*v304)(v225, v305);
    (*v315)(v324, v295);
    v147 = v316;
  }

  __swift_destroy_boxed_opaque_existential_0(&v327);
  v145 = v283;
  v240 = v313;
  v146 = v275;
  if (v165)
  {
    v241 = v165;

    v242 = v287;
    v279(v287, 1, 1, v320);
    swift_beginAccess();
    sub_2288BBBE8(v242, v240, sub_2288BC0C8);
    swift_endAccess();
    v243 = sub_22892DE28();
    v244 = [v319 queryUUID];
    v245 = v109;
    v246 = v299;
    sub_22892DF38();

    v247 = sub_22892DF18();
    v248 = v246;
    v109 = v245;
    (*v298)(v248, v300);
    [v301 client:v243 deliverError:v247 forQuery:?];

    v166 = v322;
    goto LABEL_64;
  }

  v249 = v322;
  v250 = v319;
  if (v322)
  {
    v251 = v322;

    v252 = v287;
    v279(v287, 1, 1, v320);
    swift_beginAccess();
    sub_2288BBBE8(v252, v240, sub_2288BC0C8);
    swift_endAccess();
    v253 = sub_22892DE28();
    v254 = [v250 queryUUID];
    v255 = v299;
    sub_22892DF38();

    v256 = sub_22892DF18();
    (*v298)(v255, v300);
    [v301 client:v253 logErrorAndKeepQueryActivatedWithError:v256 queryUUID:?];

    v165 = 0;
    v166 = v249;
    goto LABEL_64;
  }

LABEL_30:
  v148 = v147;
  sub_22892EDC8();
  v149 = v109;
  v150 = sub_22892EDD8();
  v151 = sub_22892F398();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v327 = v153;
    *v152 = v292;
    v154 = sub_22892F948();
    v156 = sub_2288B748C(v154, v155, &v327);

    *(v152 + 4) = v156;
    *(v152 + 12) = 2082;
    v157 = sub_2288B770C();
    v159 = sub_2288B748C(v157, v158, &v327);

    *(v152 + 14) = v159;
    _os_log_impl(&dword_2288B2000, v150, v151, "[%{public}s:%{public}s] Delivering samples", v152, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v153, -1, -1);
    MEMORY[0x22AAC47E0](v152, -1, -1);
  }

  v160 = *v304;
  (*v304)(v146, v305);
  sub_22892F708();

  v161 = sub_22892F208();

  v162 = [v149 queryUUID];
  v163 = v299;
  sub_22892DF38();

  v164 = sub_22892DF18();
  (*v298)(v163, v300);
  [v301 client:v161 deliverSleepingSampleDaySummaries:v148 & 1 clearPending:1 isFinalBatch:v164 queryUUID:?];

  v165 = 0;
  v166 = 0;
  v109 = v323;
LABEL_64:
  sub_22892EDC8();
  v257 = v109;
  v258 = sub_22892EDD8();
  v259 = sub_22892F398();

  if (os_log_type_enabled(v258, v259))
  {
    v260 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v324 = v160;
    v262 = v261;
    v327 = v261;
    *v260 = v292;
    v263 = sub_22892F948();
    v265 = v145;
    v266 = sub_2288B748C(v263, v264, &v327);

    *(v260 + 4) = v266;
    *(v260 + 12) = 2082;
    v267 = sub_2288B770C();
    v269 = sub_2288B748C(v267, v268, &v327);

    *(v260 + 14) = v269;
    _os_log_impl(&dword_2288B2000, v258, v259, "[%{public}s:%{public}s] Query finished", v260, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v262, -1, -1);
    MEMORY[0x22AAC47E0](v260, -1, -1);

    (v324)(v265, v305);
  }

  else
  {

    (v160)(v145, v305);
  }

  return (*(v282 + 8))(v288, v281);
}

uint64_t sub_2288BA734(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288BA76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA82C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA8EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2289171F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288BA948(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22892EFA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2288BA98C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288BA9D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288BAA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288BAA64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288BAAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288BAAF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for OutlierContextProvider()
{
  result = qword_2813DFAC8;
  if (!qword_2813DFAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2288BABCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(255);
    v7 = sub_2288C1090(&qword_2813DF0F0, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288BAC68(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  sub_2288BB4E0();
  v87 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v80 - v7;
  sub_2288B5D1C();
  v97 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v80 - v13;
  MEMORY[0x28223BE20](v12);
  v95 = (&v80 - v14);
  v15 = sub_22892E048();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22892E478();
  v19 = *(v98 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v98);
  v82 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v92 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - v25;
  v27 = sub_22892DEF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22892EFA8();
  v101 = *(v32 - 8);
  v33 = *(v101 + 8);
  v34 = MEMORY[0x28223BE20](v32);
  v94 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v96 = &v80 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v100 = &v80 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v80 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v91 = &v80 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v80 - v45;
  (*(v28 + 16))(v31, v93, v27);
  v99 = a1;
  sub_22892E708();
  sub_22892E468();
  v93 = v19;
  v47 = *(v19 + 8);
  v83 = v26;
  v48 = v26;
  v49 = v98;
  v47(v48, v98);
  v84 = v18;
  sub_22892EF48();
  v50 = v92;
  sub_22892E708();
  v51 = v95;
  sub_22892E438();
  v92 = (v19 + 8);
  v81 = v47;
  v47(v50, v49);
  v52 = v101;
  v53 = v51 + *(v97 + 36);
  v80 = *(v101 + 2);
  v80(v42, v53, v32);
  sub_2288BA82C(v51, sub_2288B5D1C);
  sub_2288BB548(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  v54 = sub_22892F038();
  v55 = v52;
  v56 = *(v52 + 1);
  v57 = (v54 & 1) == 0;
  if (v54)
  {
    v58 = v46;
  }

  else
  {
    v58 = v42;
  }

  if (v57)
  {
    v59 = v46;
  }

  else
  {
    v59 = v42;
  }

  v56(v58, v32);
  v60 = *(v55 + 4);
  v61 = v91;
  v60(v91, v59, v32);
  v101 = v55 + 32;
  v60(v46, v61, v32);
  sub_22892E758();
  v62 = v94;
  sub_22892E748();
  v63 = v62;
  v64 = sub_22892F028();
  v95 = v56;
  if (v64)
  {
    v65 = v96;
    v60(v96, v63, v32);
  }

  else
  {
    v56(v62, v32);
    v65 = v96;
    v80(v96, v46, v32);
  }

  v66 = v100;
  result = sub_22892F048();
  if (result)
  {
    v68 = v85;
    v60(v85, v66, v32);
    v69 = v87;
    v60((v68 + *(v87 + 48)), v65, v32);
    v70 = v86;
    sub_2288BB5F8(v68, v86, sub_2288BB4E0);
    v71 = *(v69 + 48);
    v72 = v89;
    v60(v89, v70, v32);
    v101 = v46;
    v73 = v95;
    v95(v70 + v71, v32);
    sub_2288BB660(v68, v70, sub_2288BB4E0);
    v60((v72 + *(v97 + 36)), (v70 + *(v69 + 48)), v32);
    v73(v70, v32);
    sub_2288BB5F8(v72, v88, sub_2288B5D1C);
    v74 = v82;
    sub_22892E708();
    sub_22892E468();
    v75 = v74;
    v76 = v98;
    v81(v75, v98);
    v77 = v83;
    sub_22892E428();
    sub_2288BA82C(v72, sub_2288B5D1C);
    v73(v101, v32);
    v78 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
    v79 = v90;
    swift_beginAccess();
    (*(v93 + 40))(v79 + v78, v77, v76);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288BB4E0()
{
  if (!qword_2813DEE28)
  {
    sub_22892EFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEE28);
    }
  }
}

uint64_t sub_2288BB548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288BB590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BB5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BB660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BB6C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_22892E048();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22892E478();
  v26 = *(v28 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22892EFA8();
  v25 = *(v27 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22892DDC8();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892E778();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*v1 + 104);
  swift_beginAccess();
  (*(v17 + 16))(v20, v1 + v21, v16);
  sub_22892E758();
  sub_22892E708();
  sub_22892E468();
  (*(v26 + 8))(v8, v28);
  sub_22892EEC8();
  (*(v29 + 8))(v5, v30);
  (*(v25 + 8))(v11, v27);
  sub_22892DD98();
  (*(v12 + 8))(v15, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t type metadata accessor for SleepingSampleCacheRange()
{
  result = qword_2813DF920;
  if (!qword_2813DF920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288BBAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892DEF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2288B5C84(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2288BBBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BBC50@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_22892DEF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (sub_2288B79A4())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 8))(ObjectType, v12);
    swift_unknownObjectRelease();
    sub_22892DED8();
    sub_2288BC144(v10, v9, a2);

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    a2[3] = a1;
    a2[4] = sub_2288C1090(&unk_2813DF1A0, sub_2288BABAC);
    *a2 = v10;
  }
}

void sub_2288BBEF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288BBF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288BBFAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288BC000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288BC064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2288BC0FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2288BC144@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v345 = a2;
  v344 = a3;
  v398 = v4;
  ObjectType = swift_getObjectType();
  sub_2288BF140();
  v329 = v6;
  v328 = *(v6 - 8);
  v7 = *(v328 + 64);
  MEMORY[0x28223BE20](v6);
  v330 = &v322 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_22892DFA8();
  v325 = *(v326 - 8);
  v9 = *(v325 + 64);
  MEMORY[0x28223BE20](v326);
  v324 = &v322 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF1E0(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v327 = &v322 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v386 = v14;
  v354 = *(v14 - 8);
  v15 = *(v354 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v331 = &v322 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v355 = &v322 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v364 = &v322 - v21;
  MEMORY[0x28223BE20](v20);
  v360 = &v322 - v22;
  v353 = sub_22892EA78();
  v350 = *(v353 - 8);
  v23 = *(v350 + 64);
  MEMORY[0x28223BE20](v353);
  v352 = &v322 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF284(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v363 = &v322 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF2B8();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v368 = &v322 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  v367 = v31;
  v351 = *(v31 - 8);
  v32 = *(v351 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v362 = &v322 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v361 = &v322 - v35;
  v387 = sub_22892EFA8();
  v348 = *(v387 - 8);
  v36 = *(v348 + 64);
  v37 = MEMORY[0x28223BE20](v387);
  v378 = &v322 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v377 = &v322 - v39;
  sub_2288BF32C(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v381 = &v322 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_22892E6D8();
  v395 = *(v397 - 8);
  v43 = *(v395 + 64);
  MEMORY[0x28223BE20](v397);
  v376 = &v322 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF360();
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v357 = &v322 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v380 = &v322 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v379 = &v322 - v52;
  MEMORY[0x28223BE20](v51);
  v388 = &v322 - v53;
  sub_2288BF3F4();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v356 = &v322 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = sub_22892E478();
  v371 = *(v383 - 8);
  v57 = *(v371 + 64);
  MEMORY[0x28223BE20](v383);
  v382 = &v322 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C();
  v384 = v59;
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v385 = &v322 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF488(0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v65 = &v322 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v390 = *(v66 - 8);
  v67 = *(v390 + 64);
  v68 = MEMORY[0x28223BE20](v66);
  v373 = &v322 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v392 = (&v322 - v70);
  v71 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v74 = &v322 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_22892EDE8();
  v396 = *(v394 - 1);
  v75 = *(v396 + 64);
  v76 = MEMORY[0x28223BE20](v394);
  v339 = &v322 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  v366 = &v322 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v336 = &v322 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v389 = &v322 - v83;
  MEMORY[0x28223BE20](v82);
  v341 = &v322 - v84;
  v365 = sub_22892E7B8();
  v359 = *(v365 - 1);
  v85 = *(v359 + 64);
  MEMORY[0x28223BE20](v365);
  v358 = &v322 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF4DC();
  v375 = v87;
  v370 = *(v87 - 8);
  v88 = *(v370 + 64);
  v89 = MEMORY[0x28223BE20](v87);
  v332 = &v322 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v399 = &v322 - v91;
  sub_2288BF53C(0);
  v93 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92 - 8);
  v374 = &v322 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22892EB38();
  v96 = *(v95 - 8);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v369 = &v322 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22892E778();
  v100 = *(v99 - 8);
  v101 = *(v100 + 64);
  v102 = MEMORY[0x28223BE20](v99);
  v337 = &v322 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x28223BE20](v102);
  v338 = &v322 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v335 = &v322 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v333 = &v322 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v342 = &v322 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v372 = &v322 - v113;
  MEMORY[0x28223BE20](v112);
  v115 = &v322 - v114;
  v116 = *(*a1 + 104);
  swift_beginAccess();
  v347 = v100;
  v117 = *(v100 + 16);
  v393 = a1;
  v334 = v116;
  v346 = v99;
  v391 = v117;
  v117(v115, &a1[v116], v99);
  sub_22892E268();
  sub_22892E258();
  v118 = sub_22892EBB8();
  v119 = *(v118 + 48);
  v120 = *(v118 + 52);
  swift_allocObject();
  v343 = sub_22892EBA8();
  v121 = sub_22892EB88();
  v349 = v115;
  if ((v121 & 1) == 0)
  {
LABEL_7:
    v130 = *(v398 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
    MEMORY[0x28223BE20](v121);
    *(&v322 - 2) = v115;
    v131 = *(*v130 + *MEMORY[0x277D841D0] + 16);
    v132 = (*(*v130 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock(&v130[v132]);
    v329 = v131;
    sub_2288BF7A8(&v130[v131], v74);
    v331 = v130;
    v330 = v132;
    os_unfair_lock_unlock(&v130[v132]);
    v341 = v74;
    sub_2288BFF8C(v74, v65, sub_2288BF488);
    if ((*(v390 + 48))(v65, 1, v66) == 1)
    {
      v332 = 0;
      sub_2288BA76C(v65, sub_2288BF488);
      v133 = v342;
      sub_2288DEE24(v345, v342);
      v134 = sub_2288BF8FC();
      v135 = v346;
      if (v134)
      {
        v136 = v336;
        sub_22892EDC8();
        v137 = sub_22892EDD8();
        v138 = sub_22892F398();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v400 = v140;
          *v139 = 136446210;
          nullsub_1(ObjectType);
          v141 = sub_22892F948();
          v143 = sub_2288B748C(v141, v142, &v400);

          *(v139 + 4) = v143;
          v133 = v342;
          _os_log_impl(&dword_2288B2000, v137, v138, "[%{public}s] Cache miss", v139, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v140);
          MEMORY[0x22AAC47E0](v140, -1, -1);
          MEMORY[0x22AAC47E0](v139, -1, -1);
        }

        (*(v396 + 8))(v136, v394);
        v144 = v386;
        v145 = v393;
        v146 = v334;
        swift_beginAccess();
        v147 = v347;
        (*(v347 + 24))(&v145[v146], v133, v135);
        swift_endAccess();
        v148 = *(v145 + 2);
        sub_2288BAC68(v133, v345);
        v366 = sub_2288E88F8();
        v149 = v338;
        v150 = v391;
        v391(v338, &v145[v146], v135);
        v151 = *v145;
        v152 = &v145[*(*v145 + 112)];
        v153 = *v152;
        v398 = *(v152 + 1);
        v154 = *&v145[*(v151 + 120)];
        v155 = v337;
        v150(v337, v149, v135);
        v156 = type metadata accessor for SleepingSampleBaselineAccumulator();
        v157 = *(v156 + 48);
        v158 = *(v156 + 52);
        v159 = swift_allocObject();
        v160 = MEMORY[0x277D84F90];
        *(v159 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates) = MEMORY[0x277D84F90];
        *(v159 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries) = v160;
        v358 = v160;
        *(v159 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete) = v160;

        swift_unknownObjectRetain();
        sub_22892EDC8();
        sub_22892ED48();
        (*(v147 + 32))(v159 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v155, v135);
        v161 = (v159 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
        v162 = v398;
        *v161 = v153;
        v161[1] = v162;
        v399 = v159;
        *(v159 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider) = v154;
        v338 = *(v147 + 8);
        v339 = (v147 + 8);
        (v338)(v149, v135);
        LODWORD(v398) = 0;
        v390 = *(v354 + 56);
        v391 = (v354 + 56);
        v393 = (v354 + 48);
        v163 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
        v375 = v395 + 16;
        v374 = v395 + 8;
        v373 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
        v389 = (v395 + 56);
        v372 = (v395 + 32);
        v371 += 8;
        v370 = v348 + 16;
        v369 = (v348 + 8);
        v365 = (v351 + 48);
        v351 = v350 + 32;
        v350 += 8;
        v359 = v348 + 56;
        LODWORD(v348) = 1;
        v164 = v381;
        v165 = v380;
        v166 = v379;
        v167 = v388;
        v396 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
        (v390)(v388, 2, 2, v144);
        while (1)
        {
          swift_beginAccess();
          sub_2288BFF8C(v167, v166, sub_2288BF360);
          v392 = *v393;
          for (i = v392(v166, 2, v144); i == 2; i = v392(v166, 2, v144))
          {
            sub_2288BA76C(v166, sub_2288BF360);
            v179 = *&v399[v163];
            v180 = *(v179 + 2);
            if (v180)
            {
              swift_beginAccess();
              v181 = (*(v395 + 80) + 32) & ~*(v395 + 80);
              (*(v395 + 16))(v164, &v179[v181], v397);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || (v180 - 1) > *(v179 + 3) >> 1)
              {
                v179 = sub_2288D6310(isUniquelyReferenced_nonNull_native, v180, 1, v179, sub_2288D6C18, MEMORY[0x277D0FFC8]);
              }

              v183 = &v179[v181];
              v184 = v395;
              v185 = v397;
              (*(v395 + 8))(v183, v397);
              v186 = *(v184 + 72);
              if (v186 > 0 || v183 >= v183 + v186 + (*(v179 + 2) - 1) * v186)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v186)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              --*(v179 + 2);
              *&v399[v396] = v179;
              swift_endAccess();
              (*v389)(v164, 0, 1, v185);
              v394 = *v372;
              v169 = v376;
              v394(v376, v164, v185);
              v170 = v377;
              sub_22892E5E8();
              v171 = v382;
              sub_22892E708();
              v172 = v385;
              sub_22892E438();
              (*v371)(v171, v383);
              v173 = v378;
              v174 = v387;
              (*v370)(v378, v172 + *(v384 + 36), v387);
              sub_2288BA76C(v172, sub_2288B5D1C);
              sub_2288C1090(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
              LODWORD(v172) = sub_22892F088();
              v175 = *v369;
              v176 = v173;
              v164 = v381;
              (*v369)(v176, v174);
              v175(v170, v174);
              v167 = v388;
              sub_2288BA76C(v388, sub_2288BF360);
              LODWORD(v398) = v172 | v398;
              v165 = v380;
              v177 = v185;
              v163 = v396;
              v394(v380, v169, v177);
              v144 = v386;
              swift_storeEnumTagMultiPayload();
              v178 = 0;
              v166 = v379;
            }

            else
            {
              (*v389)(v164, 1, 1, v397);
              sub_2288BA76C(v164, sub_2288BF32C);
              if (v398)
              {
                sub_2288BA76C(v167, sub_2288BF360);
                v178 = 1;
                LODWORD(v398) = 1;
              }

              else
              {
                v187 = v368;
                sub_22892F7A8();
                if ((*v365)(v187, 1, v367) == 1)
                {
                  sub_2288BA76C(v187, sub_2288BF2B8);
                  v188 = *v359;
                  LODWORD(v398) = 1;
                  v189 = v363;
                  v188(v363, 1, 1, v387);
                  sub_2288F81BC(v189);
                  sub_2288BA76C(v189, sub_2288BF284);
                  sub_2288BA76C(v167, sub_2288BF360);
                  v178 = 2;
                }

                else
                {
                  v190 = MEMORY[0x277D100B8];
                  v191 = v187;
                  v192 = v361;
                  sub_2288C0D18(v191, v361, &qword_2813DE910, MEMORY[0x277D100B8]);
                  v193 = v190;
                  v194 = v362;
                  sub_2288C06F8(v192, v362, &qword_2813DE910, v193);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    sub_2288C0CBC(v192, &qword_2813DE910, MEMORY[0x277D100B8]);
                    sub_2288BA76C(v167, sub_2288BF360);
                    v195 = *(v194 + 8);
                    *v165 = *v194;
                    *(v165 + 8) = v195;
                    LODWORD(v398) = 1;
                    swift_storeEnumTagMultiPayload();
                    v178 = 0;
                  }

                  else
                  {
                    v196 = v192;
                    v197 = v352;
                    v198 = v194;
                    v199 = v353;
                    (*v351)(v352, v198, v353);
                    sub_2288F78DC(v197);
                    (*v350)(v197, v199);
                    v200 = v196;
                    v167 = v388;
                    sub_2288C0CBC(v200, &qword_2813DE910, MEMORY[0x277D100B8]);
                    sub_2288BA76C(v167, sub_2288BF360);
                    LODWORD(v398) = 0;
                    v178 = 2;
                  }
                }
              }
            }

            (v390)(v165, v178, 2, v144);
            sub_2288C0074(v165, v167, sub_2288BF360);
            sub_2288BFF8C(v167, v166, sub_2288BF360);
          }

          sub_2288BA76C(v166, sub_2288BF360);
          v201 = v357;
          sub_2288C0074(v167, v357, sub_2288BF360);
          if (v392(v201, 2, v144))
          {
            v202 = 1;
            v203 = v356;
          }

          else
          {
            v203 = v356;
            sub_2288C0D18(v201, v356, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            v202 = 0;
          }

          (v390)(v203, v202, 1, v144);
          if (v392(v203, 1, v144) == 1)
          {
            break;
          }

          v204 = MEMORY[0x277D0FFC8];
          v205 = v360;
          sub_2288C0D18(v203, v360, &qword_2813DE920, MEMORY[0x277D0FFC8]);
          sub_2288C06F8(v205, v364, &qword_2813DE920, v204);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_2288C0CBC(v205, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            LODWORD(v348) = 0;
            v167 = v388;
          }

          else
          {
            sub_2288C06F8(v205, v355, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            v206 = v358;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v206 = sub_2288D64EC(0, v206[2] + 1, 1, v206);
            }

            v167 = v388;
            v208 = v206[2];
            v207 = v206[3];
            if (v208 >= v207 >> 1)
            {
              v358 = sub_2288D64EC(v207 > 1, v208 + 1, 1, v206);
            }

            else
            {
              v358 = v206;
            }

            v209 = MEMORY[0x277D0FFC8];
            sub_2288C0CBC(v360, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            v210 = v358;
            *(v358 + 16) = v208 + 1;
            sub_2288C0D18(v355, v210 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v208, &qword_2813DE920, v209);
            v163 = v396;
          }

          sub_2288C0CBC(v364, &qword_2813DE920, MEMORY[0x277D0FFC8]);
          (v390)(v167, 2, 2, v144);
        }

        v258 = v399;
        swift_setDeallocating();
        v135 = v346;
        v231 = v338;
        (v338)(&v258[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange], v346);
        v259 = *&v258[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates];

        v260 = *&v258[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries];

        v261 = *&v258[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete];

        v262 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
        v263 = sub_22892ED68();
        (*(*(v263 - 8) + 8))(&v258[v262], v263);
        v264 = *&v258[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider];
        swift_unknownObjectRelease();
        v265 = *&v258[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider];

        v266 = *(*v258 + 48);
        v267 = *(*v258 + 52);
        swift_deallocClassInstance();

        if (v348)
        {
          MEMORY[0x28223BE20](v268);
          v269 = v341;
          v270 = v342;
          *(&v322 - 6) = v341;
          *(&v322 - 5) = v270;
          v271 = v358;
          v272 = v345;
          *(&v322 - 4) = v358;
          *(&v322 - 3) = v272;
          *(&v322 - 2) = ObjectType;
          v273 = v331;
          v274 = v330;
          os_unfair_lock_lock(&v330[v331]);
          sub_2288D66F0(v273 + v329);
          os_unfair_lock_unlock(&v274[v273]);
        }

        else
        {
          v269 = v341;
          v270 = v342;
          v271 = v358;
        }

        MEMORY[0x28223BE20](v268);
        *(&v322 - 2) = v349;

        v304 = sub_2288C0428(sub_2288C07AC, (&v322 - 4), v271);

        sub_2288C10D8();
        v305 = v344;
        v344[3] = v306;
        v305[4] = sub_2288C1090(&qword_2813DECE8, sub_2288C10D8);

        *v305 = v304;
        v231(v270, v135);
        v303 = v269;
        goto LABEL_61;
      }

      v236 = v366;
      sub_22892EDC8();
      v237 = v333;
      v238 = v391;
      v391(v333, v349, v135);
      v239 = v335;
      v238(v335, v133, v135);
      v240 = sub_22892EDD8();
      v241 = sub_22892F398();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v399 = swift_slowAlloc();
        v400 = v399;
        *v242 = 136446722;
        nullsub_1(ObjectType);
        v243 = sub_22892F948();
        LODWORD(v398) = v241;
        v245 = v239;
        v246 = sub_2288B748C(v243, v244, &v400);

        *(v242 + 4) = v246;
        *(v242 + 12) = 2080;
        sub_2288C1090(&qword_27D85B3E8, MEMORY[0x277D0FFD8]);
        v247 = sub_22892F7E8();
        v249 = v248;
        v250 = *(v347 + 8);
        v250(v237, v346);
        v251 = sub_2288B748C(v247, v249, &v400);

        *(v242 + 14) = v251;
        *(v242 + 22) = 2080;
        v135 = v346;
        v252 = sub_22892F7E8();
        v254 = v253;
        v250(v245, v135);
        v231 = v250;
        v255 = sub_2288B748C(v252, v254, &v400);

        *(v242 + 24) = v255;
        _os_log_impl(&dword_2288B2000, v240, v398, "[%{public}s] Ignoring cache key: %s ⊈ %s", v242, 0x20u);
        v256 = v399;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v256, -1, -1);
        v257 = v242;
        v133 = v342;
        MEMORY[0x22AAC47E0](v257, -1, -1);

        (*(v396 + 8))(v366, v394);
      }

      else
      {

        v231 = *(v347 + 8);
        v231(v239, v135);
        v231(v237, v135);
        (*(v396 + 8))(v236, v394);
      }

      sub_2288BABAC(0);
      v300 = v344;
      v344[3] = v301;
      v300[4] = sub_2288C1090(&unk_2813DF1A0, sub_2288BABAC);
      v302 = v393;

      *v300 = v302;
      v231(v133, v135);
    }

    else
    {
      v211 = v392;
      sub_2288C0074(v65, v392, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      v212 = v389;
      sub_22892EDC8();
      v213 = v373;
      sub_2288BFF8C(v211, v373, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      v214 = v372;
      v135 = v346;
      v391(v372, v349, v346);
      v215 = sub_22892EDD8();
      v216 = sub_22892F398();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v332 = 0;
        v218 = v217;
        v398 = swift_slowAlloc();
        v402 = v398;
        *v218 = 136446722;
        nullsub_1(ObjectType);
        v219 = sub_22892F948();
        LODWORD(v397) = v216;
        v221 = sub_2288B748C(v219, v220, &v402);
        v399 = v66;
        v222 = v221;

        *(v218 + 4) = v222;
        *(v218 + 12) = 2048;
        v223 = *(v213 + *(v399 + 6));
        sub_2288BA76C(v213, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        *(v218 + 14) = v223;
        *(v218 + 22) = 2080;
        v224 = v382;
        sub_22892E708();
        v225 = v385;
        sub_22892E438();
        (*(v371 + 8))(v224, v383);
        v400 = 0;
        v401 = 0xE000000000000000;
        v226 = v135;
        v227 = v214;
        sub_22892F718();
        MEMORY[0x22AAC3770](3026478, 0xE300000000000000);
        v228 = *(v384 + 36);
        sub_22892F718();
        v229 = v400;
        v230 = v401;
        sub_2288BA76C(v225, sub_2288B5D1C);
        v231 = *(v347 + 8);
        v232 = v227;
        v135 = v226;
        v231(v232, v226);
        v233 = sub_2288B748C(v229, v230, &v402);
        v66 = v399;

        *(v218 + 24) = v233;
        _os_log_impl(&dword_2288B2000, v215, v397, "[%{public}s] Cache hit: %ld - %s", v218, 0x20u);
        v234 = v398;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v234, -1, -1);
        MEMORY[0x22AAC47E0](v218, -1, -1);

        v235 = (*(v396 + 8))(v389, v394);
      }

      else
      {
        sub_2288BA76C(v213, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);

        v275 = v214;
        v231 = *(v347 + 8);
        v231(v275, v135);
        v235 = (*(v396 + 8))(v212, v394);
      }

      v276 = v392;
      v277 = *(v392 + *(v66 + 20));
      MEMORY[0x28223BE20](v235);
      *(&v322 - 2) = v349;

      v278 = sub_2288C0428(sub_2288C07AC, (&v322 - 4), v277);
      sub_2288C10D8();
      v279 = v344;
      v344[3] = v280;
      v279[4] = sub_2288C1090(&qword_2813DECE8, sub_2288C10D8);

      *v279 = v278;
      sub_2288BA76C(v276, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    }

    v303 = v341;
LABEL_61:
    sub_2288BA76C(v303, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
    return (v231)(v349, v135);
  }

  v122 = v374;
  sub_22891B8A4(*(*(v393 + 2) + 16), v374);
  if ((*(v96 + 48))(v122, 1, v95) == 1)
  {
    v121 = sub_2288BA76C(v122, sub_2288BF53C);
LABEL_6:
    v115 = v349;
    goto LABEL_7;
  }

  v123 = v96;
  v124 = *(v96 + 32);
  v125 = v369;
  v124(v369, v122, v95);
  v126 = v358;
  sub_22891C1E4(v358);
  v127 = v399;
  sub_22892EB98();
  (*(v359 + 8))(v126, v365);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v129 = v375;
  v374 = OpaqueTypeConformance2;
  if (sub_22892F308())
  {
    (*(v370 + 8))(v127, v129);
    v121 = (*(v123 + 8))(v125, v95);
    goto LABEL_6;
  }

  v281 = v341;
  sub_22892EDC8();
  v282 = v370;
  v283 = v332;
  (*(v370 + 16))(v332, v127, v129);
  v284 = sub_22892EDD8();
  v285 = sub_22892F378();
  v286 = os_log_type_enabled(v284, v285);
  v323 = v95;
  v322 = v123;
  if (v286)
  {
    v287 = swift_slowAlloc();
    v288 = swift_slowAlloc();
    v400 = v288;
    *v287 = 136446722;
    nullsub_1(ObjectType);
    v289 = sub_22892F948();
    v290 = v129;
    v292 = sub_2288B748C(v289, v291, &v400);

    *(v287 + 4) = v292;
    *(v287 + 12) = 2050;
    v293 = sub_22892F2F8();
    v393 = *(v282 + 8);
    (v393)(v283, v290);
    *(v287 + 14) = v293;
    *(v287 + 22) = 2080;
    v294 = v324;
    sub_22892DF98();
    v295 = v327;
    sub_22892DF88();
    (*(v325 + 8))(v294, v326);
    v296 = sub_22892DF78();
    v297 = *(v296 - 8);
    if ((*(v297 + 48))(v295, 1, v296) == 1)
    {
      sub_2288BA76C(v295, sub_2288BF1E0);
      v298 = 0xE300000000000000;
      v299 = 7104878;
    }

    else
    {
      v308 = sub_22892DF68();
      v298 = v309;
      (*(v297 + 8))(v295, v296);
      v299 = v308;
    }

    v310 = sub_2288B748C(v299, v298, &v400);

    *(v287 + 24) = v310;
    _os_log_impl(&dword_2288B2000, v284, v285, "[%{public}s] Intercepting query with demo dataset, returning %{public}ld summaries. Locale: %s", v287, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v288, -1, -1);
    MEMORY[0x22AAC47E0](v287, -1, -1);

    (*(v396 + 8))(v341, v394);
    v127 = v399;
  }

  else
  {
    v393 = *(v282 + 8);
    (v393)(v283, v129);

    (*(v396 + 8))(v281, v394);
  }

  v311 = sub_22892F2F8();
  v312 = MEMORY[0x277D84F90];
  if (!v311)
  {
    goto LABEL_72;
  }

  v313 = v311;
  v402 = MEMORY[0x277D84F90];
  sub_2288C0FFC(0, v311 & ~(v311 >> 63), 0);
  v312 = v402;
  v314 = v330;
  result = sub_22892F2E8();
  if ((v313 & 0x8000000000000000) == 0)
  {
    v398 = v395 + 16;
    v315 = v331;
    do
    {
      v316 = sub_22892F338();
      (*v398)(v315);
      v316(&v400, 0);
      swift_storeEnumTagMultiPayload();
      v402 = v312;
      v318 = *(v312 + 16);
      v317 = *(v312 + 24);
      if (v318 >= v317 >> 1)
      {
        sub_2288C0FFC(v317 > 1, v318 + 1, 1);
        v315 = v331;
        v312 = v402;
      }

      *(v312 + 16) = v318 + 1;
      sub_2288C0D18(v315, v312 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v318, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      v319 = v399;
      sub_22892F328();
      --v313;
      v127 = v319;
    }

    while (v313);
    (*(v328 + 8))(v314, v329);
LABEL_72:
    sub_2288C10D8();
    v320 = v344;
    v344[3] = v321;
    v320[4] = sub_2288C1090(&qword_2813DECE8, sub_2288C10D8);

    *v320 = v312;
    (v393)(v127, v375);
    (*(v322 + 8))(v369, v323);
    return (*(v347 + 8))(v349, v346);
  }

  __break(1u);
  return result;
}

void sub_2288BF140()
{
  if (!qword_2813DFE00)
  {
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v1)
    {
      atomic_store(AssociatedTypeWitness, &qword_2813DFE00);
    }
  }
}

void sub_2288BF214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2288B7AEC();
    v4 = sub_22892F8D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288BF2B8()
{
  if (!qword_2813DE900)
  {
    sub_2288BF214(255, &qword_2813DE910, MEMORY[0x277D100B8]);
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE900);
    }
  }
}

void sub_2288BF360()
{
  if (!qword_2813DF240[0])
  {
    type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(255);
    sub_2288D3E28(&qword_2813DF0F0, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator);
    v0 = type metadata accessor for SleepingSampleBaselineComparisonEnumerator.Iterator.InnerIteratorResult();
    if (!v1)
    {
      atomic_store(v0, qword_2813DF240);
    }
  }
}

void sub_2288BF3F4()
{
  if (!qword_2813DE918)
  {
    sub_2288BF214(255, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE918);
    }
  }
}

void sub_2288BF4DC()
{
  if (!qword_2813DFDF8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2813DFDF8);
    }
  }
}

uint64_t sub_2288BF570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_22892E778();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a1, 1, v8) || ((*(v4 + 16))(v7, a1, v3), v11 = sub_2288BF8FC(), (*(v4 + 8))(v7, v3), (v11 & 1) == 0))
  {
    v17 = v21;
    (*(v9 + 56))(v21, 1, 1, v8);
    v18 = *(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0) + 20);
    v19 = sub_22892DF58();
    return (*(*(v19 - 8) + 16))(v17 + v18, a1 + v18, v19);
  }

  else
  {
    result = v10(a1, 1, v8);
    if (result)
    {
      return sub_2288BFD84(a1, v21, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
    }

    v13 = *(v8 + 24);
    v14 = *(a1 + v13);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      *(a1 + v13) = v16;
      return sub_2288BFD84(a1, v21, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288BF7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892E778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22892DEF8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288BF8FC()
{
  sub_2288B5D1C();
  v38 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v42 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = v37 - v5;
  v6 = sub_22892E048();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - v11;
  v45 = sub_22892E478();
  v13 = *(v45 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v45);
  v40 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v39 = v37 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v37 - v22;
  v24 = sub_22892E728();
  if (v24 != sub_22892E728())
  {
    goto LABEL_5;
  }

  v37[1] = v0;
  sub_22892E708();
  sub_22892E468();
  v25 = *(v13 + 8);
  v26 = v45;
  v25(v23, v45);
  sub_22892E708();
  sub_22892E468();
  v25(v21, v26);
  v27 = MEMORY[0x22AAC2670](v12, v10);
  v28 = v44;
  v29 = *(v43 + 8);
  v29(v10, v44);
  v29(v12, v28);
  if (v27)
  {
    v30 = v39;
    sub_22892E708();
    v31 = v41;
    sub_22892E438();
    v25(v30, v26);
    v32 = v40;
    sub_22892E708();
    v33 = v42;
    sub_22892E438();
    v25(v32, v26);
    sub_22892EFA8();
    sub_2288BFD2C();
    if (sub_22892F048())
    {
      v34 = *(v38 + 36);
      v35 = sub_22892F038();
    }

    else
    {
      v35 = 0;
    }

    sub_2288BFCD0(v33);
    sub_2288BFCD0(v31);
  }

  else
  {
LABEL_5:
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_2288BFCD0(uint64_t a1)
{
  sub_2288B5D1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2288BFD2C()
{
  result = qword_2813DEE20;
  if (!qword_2813DEE20)
  {
    sub_22892EFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEE20);
  }

  return result;
}

uint64_t sub_2288BFD84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BFDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BFE68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22892E778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22892DEF8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2288BFF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BFFF4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2288E22C4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288C0074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C00E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2288C012C(a1, a2);
  sub_2288C0338(&unk_283BD3668);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2288C012C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2288C025C(v5, 0);
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

  result = sub_22892F698();
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
        v10 = sub_22892F118();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2288C025C(v10, 0);
        result = sub_22892F638();
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

void *sub_2288C025C(uint64_t a1, uint64_t a2)
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

  sub_22892BF48(0, &qword_2813DE980, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_2288C02E8()
{
  if (!qword_2813DE980)
  {
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE980);
    }
  }
}

uint64_t sub_2288C0338(uint64_t result)
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

  result = sub_2288EC240(result, v12, 1, v3);
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

uint64_t sub_2288C0428(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_2288C06F8(a3 + v16 + v17 * v14, v13, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      v18 = a1(v13);
      if (v3)
      {
        sub_2288C0CBC(v13, &qword_2813DE920, MEMORY[0x277D0FFC8]);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_2288C0D18(v13, v25, &qword_2813DE920, MEMORY[0x277D0FFC8]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2288C0FFC(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2288C0FFC(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_2288C0D18(v25, v15 + v16 + v21 * v17, &qword_2813DE920, MEMORY[0x277D0FFC8]);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_2288C0CBC(v13, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_2288C06F8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2288BF214(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288C0764(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2288C07CC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v34 = a1;
  v2 = sub_22892EFA8();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C();
  v29 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892E478();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892E6D8();
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C0BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BFD84(v34, v23, sub_2288C0BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2288C0C14(v23, sub_2288C0BA8);
    v24 = 0;
  }

  else
  {
    v25 = v30;
    (*(v30 + 32))(v19, v23, v16);
    sub_22892E708();
    sub_22892E438();
    (*(v12 + 8))(v15, v11);
    sub_22892E5E8();
    sub_2288C0C74(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v26 = v32;
    if (sub_22892F038())
    {
      v27 = *(v29 + 36);
      v24 = sub_22892F048();
    }

    else
    {
      v24 = 0;
    }

    (*(v33 + 8))(v6, v26);
    sub_2288C0C14(v10, sub_2288B5D1C);
    (*(v25 + 8))(v19, v16);
  }

  return v24 & 1;
}

void sub_2288C0BA8()
{
  if (!qword_2813DE920)
  {
    sub_22892E6D8();
    sub_2288B7AEC();
    v0 = sub_22892F8D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE920);
    }
  }
}

uint64_t sub_2288C0C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288C0C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288C0CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2288BF214(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288C0D18(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2288BF214(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288C0D84(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  sub_2288DA96C(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

size_t sub_2288C0DF8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2288C101C();
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

size_t sub_2288C0FFC(size_t a1, int64_t a2, char a3)
{
  result = sub_2288C0DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2288C101C()
{
  if (!qword_2813DE978)
  {
    sub_2288BF214(255, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE978);
    }
  }
}

uint64_t sub_2288C1090(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2288C10D8()
{
  if (!qword_2813DECF0)
  {
    sub_2288BF214(255, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v0 = sub_22892F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DECF0);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2288C1258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892DEF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2288B5C84(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288C1348(uint64_t a1, uint64_t a2)
{
  v216 = a2;
  v215 = a1;
  v213 = sub_22892EDE8();
  v212 = *(v213 - 8);
  v3 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v214 = &v210 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_22892E828();
  v234 = *(v250 - 8);
  v5 = *(v234 + 64);
  v6 = MEMORY[0x28223BE20](v250);
  v249 = &v210 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v251 = &v210 - v8;
  v248 = sub_22892E858();
  v224 = *(v248 - 8);
  v9 = *(v224 + 64);
  v10 = MEMORY[0x28223BE20](v248);
  v247 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v246 = &v210 - v12;
  v245 = sub_22892E7F8();
  v223 = *(v245 - 8);
  v13 = *(v223 + 64);
  v14 = MEMORY[0x28223BE20](v245);
  v244 = &v210 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v282 = &v210 - v16;
  v281 = sub_22892E7D8();
  v222 = *(v281 - 8);
  v17 = *(v222 + 64);
  v18 = MEMORY[0x28223BE20](v281);
  v243 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v286 = &v210 - v20;
  sub_2288C3774();
  v265 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v266 = &v210 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C36E0();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v258 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v259 = &v210 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v220 = &v210 - v31;
  MEMORY[0x28223BE20](v30);
  v274 = &v210 - v32;
  sub_2288BB4E0();
  v264 = v33;
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v263 = &v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v267 = &v210 - v37;
  sub_2288B5D1C();
  v231 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v277 = &v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C3FDC();
  v275 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v262 = &v210 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B4A64(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v257 = &v210 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v288 = &v210 - v48;
  sub_2288C3E44(0);
  v269 = v49;
  v270 = *(v49 - 8);
  v50 = *(v270 + 64);
  v51 = MEMORY[0x28223BE20](v49);
  v256 = &v210 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v210 - v53;
  sub_2288C4040(0);
  v56 = v55;
  v271 = *(v55 - 8);
  v57 = *(v271 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v260 = &v210 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v61 = &v210 - v60;
  sub_2288B4B3C(0);
  v268 = v62;
  v272 = *(v62 - 8);
  v63 = *(v272 + 64);
  v64 = MEMORY[0x28223BE20](v62);
  v242 = &v210 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v254 = &v210 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v280 = &v210 - v69;
  MEMORY[0x28223BE20](v68);
  v217 = &v210 - v70;
  sub_2288BF284(0);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v253 = &v210 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v76 = &v210 - v75;
  v77 = sub_22892EFA8();
  v78 = *(v77 - 8);
  v79 = v78[8];
  v80 = MEMORY[0x28223BE20](v77);
  v211 = &v210 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v210 = &v210 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v252 = &v210 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v285 = &v210 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v289 = &v210 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v255 = &v210 - v91;
  MEMORY[0x28223BE20](v90);
  v93 = &v210 - v92;
  v94 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex;
  swift_beginAccess();
  v95 = v2;
  sub_2288C337C(v2 + v94, v76, sub_2288BF284);
  v96 = v78[6];
  v261 = v78 + 6;
  v273 = v96;
  if (v96(v76, 1, v77) == 1)
  {
    sub_2288C3680(v76, sub_2288BF284);
    return MEMORY[0x277D84F90];
  }

  v283 = v78[4];
  v284 = v78 + 4;
  v283(v93, v76, v77);
  v97 = v78;
  v98 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_validDataDayRanges;
  swift_beginAccess();
  v99 = v271;
  v100 = *(v271 + 16);
  v239 = v98;
  v238 = v271 + 16;
  v237 = v100;
  v100(v61, v2 + v98, v56);
  sub_22892F908();
  v102 = *(v99 + 8);
  v101 = v99 + 8;
  v240 = v102;
  v102(v61, v56);
  v103 = v288;
  sub_2288ED804(v288);
  v104 = v270 + 8;
  v236 = *(v270 + 8);
  v236(v54, v269);
  v105 = v272 + 48;
  v235 = *(v272 + 48);
  if (v235(v103, 1, v268) == 1)
  {
    (v97[1])(v93, v77);
    sub_2288C3680(v288, sub_2288B4A64);
    return MEMORY[0x277D84F90];
  }

  v106 = v101;
  v107 = v104;
  v279 = v97;
  v272 = v105;
  v108 = v217;
  v241 = v95;
  sub_2288C344C(v288, v217, sub_2288B4B3C);
  v109 = *(v241 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit);
  if (!v109)
  {
LABEL_31:
    sub_2288C3680(v108, sub_2288B4B3C);
    (v279[1])(v93, v77);
    return MEMORY[0x277D84F90];
  }

  v110 = sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  v111 = v109;
  v112 = v216;
  if ((sub_22892F038() & 1) == 0)
  {

    goto LABEL_31;
  }

  v218 = v111;
  v270 = v107;
  v219 = v93;
  v271 = v106;
  v233 = v56;
  v291 = MEMORY[0x277D84F90];
  v113 = v215;
  v232 = v110;
  result = sub_22892F048();
  if ((result & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v115 = v279;
  v117 = v279 + 2;
  v116 = v279[2];
  v278 = v116;
  v118 = v267;
  v116(v267, v113, v77);
  v119 = v264;
  v116(v118 + *(v264 + 48), v112, v77);
  v120 = v263;
  sub_2288C337C(v118, v263, sub_2288BB4E0);
  v230 = *(v119 + 48);
  v121 = v277;
  v122 = v283;
  v283(v277, v120, v77);
  v123 = (v115 + 1);
  v124 = v115[1];
  v124(v120 + v230, v77);
  sub_2288C344C(v118, v120, sub_2288BB4E0);
  v122(v121 + *(v231 + 36), v120 + *(v119 + 48), v77);
  v287 = v124;
  v288 = v123;
  v124(v120, v77);
  v125 = v262;
  sub_2288C337C(v121, v262, sub_2288B5D1C);
  v126 = *(v275 + 36);
  v276 = v117;
  v278(v125 + v126, v121, v77);
  sub_2288C3680(v121, sub_2288B5D1C);
  v127 = v279[7];
  v279 += 7;
  v277 = v127;
  (v127)(v125 + v126, 0, 1, v77);
  v275 = 0;
  v230 = v241 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_activityType;
  v229 = (v222 + 16);
  v228 = (v223 + 16);
  v227 = (v224 + 16);
  v226 = (v234 + 16);
  v225 = (v234 + 8);
  v224 += 8;
  v223 += 8;
  v222 += 8;
  v234 = MEMORY[0x277D84F90];
  v128 = v285;
  v231 = v126;
  v221 = v77;
  while (1)
  {
    v129 = v274;
    (v277)(v274, 1, 1, v77);
    v130 = *(v265 + 48);
    v131 = v266;
    sub_2288C337C(v125 + v126, v266, sub_2288C36E0);
    sub_2288C337C(v129, v131 + v130, sub_2288C36E0);
    v132 = v273;
    if (v273(v131, 1, v77) == 1)
    {
      sub_2288C3680(v129, sub_2288C36E0);
      if (v132(v131 + v130, 1, v77) == 1)
      {
        sub_2288C3680(v125, sub_2288C3FDC);
        sub_2288C3680(v131, sub_2288C36E0);
        goto LABEL_34;
      }

      goto LABEL_14;
    }

    v133 = v220;
    sub_2288C337C(v131, v220, sub_2288C36E0);
    if (v132(v131 + v130, 1, v77) == 1)
    {
      sub_2288C3680(v129, sub_2288C36E0);
      v287(v133, v77);
LABEL_14:
      sub_2288C3680(v131, sub_2288C3774);
      v134 = v241;
      goto LABEL_16;
    }

    v135 = v289;
    v283(v289, (v131 + v130), v77);
    sub_2288BA98C(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
    v136 = v133;
    v137 = sub_22892F088();
    v138 = v287;
    v287(v135, v77);
    sub_2288C3680(v274, sub_2288C36E0);
    v138(v136, v77);
    v132 = v273;
    v128 = v285;
    sub_2288C3680(v131, sub_2288C36E0);
    v134 = v241;
    if (v137)
    {
      break;
    }

LABEL_16:
    v139 = v259;
    sub_2288C337C(v125 + v126, v259, sub_2288C36E0);
    result = (v132)(v139, 1, v77);
    if (result == 1)
    {
      goto LABEL_42;
    }

    v140 = v126;
    v141 = v255;
    v142 = v283;
    v283(v255, v139, v77);
    v143 = v258;
    sub_2288C344C(v125 + v140, v258, sub_2288C36E0);
    sub_2288C37D8(v143, v125 + v140);
    sub_2288C3680(v143, sub_2288C36E0);
    v142(v128, v141, v77);
    v144 = v260;
    v145 = v233;
    v237(v260, v134 + v239, v233);
    v146 = v256;
    sub_22892F908();
    v147 = v240(v144, v145);
    v148 = v134;
    MEMORY[0x28223BE20](v147);
    *(&v210 - 2) = v128;
    v149 = v257;
    v150 = v275;
    sub_2288C3A54(sub_2288C3EF8, (&v210 - 4), v257);
    v236(v146, v269);
    v151 = v268;
    v152 = v235(v149, 1, v268);
    v275 = v150;
    if (v152 == 1)
    {
      sub_2288C3680(v149, sub_2288B4A64);
      sub_22892E7C8();
      v153 = v278;
      v278(v289, v128, v77);
      (v277)(v253, 1, 1, v77);
      sub_22892E7E8();
      v154 = v252;
      sub_22892EED8();
      sub_22892EEF8();
      v287(v154, v77);
      result = sub_22892F048();
      if ((result & 1) == 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v155 = v267;
      v153(v267, v128, v77);
    }

    else
    {
      sub_2288C344C(v149, v254, sub_2288B4B3C);
      result = sub_22892EF88();
      v156 = *(v148 + 64);
      v157 = 0.0;
      v158 = v278;
      if (result < *(v156 + 16))
      {
        if (result < 0)
        {
          goto LABEL_40;
        }

        v157 = *(v156 + 8 * result + 32);
      }

      v159 = *(v148 + 72);
      if (result < *(v159 + 16))
      {
        v160 = *(v159 + 8 * result + 32);
      }

      v155 = v267;
      v161 = [objc_opt_self() quantityWithUnit:v218 doubleValue:v157];
      sub_22892E7C8();
      v158(v289, v128, v77);
      v162 = v253;
      v163 = v254;
      v158(v253, v254, v77);
      (v277)(v162, 0, 1, v77);
      sub_22892E7E8();
      v164 = v252;
      sub_22892EED8();
      sub_22892EEF8();
      v287(v164, v77);
      result = sub_22892F048();
      if ((result & 1) == 0)
      {
        goto LABEL_39;
      }

      v158(v155, v163, v77);
      sub_2288C3680(v163, sub_2288B4B3C);
    }

    v165 = v264;
    v166 = v283;
    v283(&v155[*(v264 + 48)], v289, v77);
    v167 = v155;
    v168 = v155;
    v169 = v263;
    sub_2288C337C(v167, v263, sub_2288BB4E0);
    v170 = *(v165 + 48);
    v171 = v280;
    v166(v280, v169, v77);
    v172 = v287;
    v287(v169 + v170, v77);
    sub_2288C344C(v168, v169, sub_2288BB4E0);
    v166(v171 + *(v151 + 36), v169 + *(v165 + 48), v77);
    v172(v169, v77);
    (*v229)(v243, v286, v281);
    v173 = v282;
    v174 = v245;
    (*v228)(v244, v282, v245);
    v175 = v246;
    sub_22892E848();
    v278(v289, v285, v77);
    sub_2288C337C(v171, v242, sub_2288B4B3C);
    v176 = v248;
    (*v227)(v247, v175, v248);
    v177 = *v230;
    v178 = *(v230 + 8);
    v179 = v251;
    sub_22892E818();
    v180 = v175;
    v181 = v173;
    v182 = v281;
    v183 = v250;
    (*v226)(v249, v179, v250);
    sub_2288C351C();
    v185 = objc_allocWithZone(v184);
    sub_22892EE58();
    MEMORY[0x22AAC3860]();
    if (*((v291 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v291 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v234 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22892F228();
      v179 = v251;
    }

    sub_22892F258();
    (*v225)(v179, v183);
    (*v224)(v180, v176);
    sub_2288C3680(v280, sub_2288B4B3C);
    (*v223)(v181, v174);
    (*v222)(v286, v182);
    v234 = v291;
    v128 = v285;
    v77 = v221;
    v287(v285, v221);
    v125 = v262;
    v126 = v231;
  }

  sub_2288C3680(v125, sub_2288C3FDC);
LABEL_34:
  v186 = v214;
  sub_22892EDC8();
  v187 = v210;
  v188 = v278;
  v278(v210, v215, v77);
  v189 = v211;
  v188(v211, v216, v77);

  v190 = sub_22892EDD8();
  v191 = sub_22892F398();

  if (os_log_type_enabled(v190, v191))
  {
    v192 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    v290 = v289;
    *v192 = 136315650;
    sub_2288BA98C(&qword_2813DEDF0, MEMORY[0x277CCB6A8]);
    v193 = sub_22892F7E8();
    v195 = v194;
    v196 = v287;
    v287(v187, v77);
    v197 = sub_2288B748C(v193, v195, &v290);

    *(v192 + 4) = v197;
    *(v192 + 12) = 2080;
    v198 = sub_22892F7E8();
    v200 = v199;
    v196(v189, v77);
    v201 = sub_2288B748C(v198, v200, &v290);

    *(v192 + 14) = v201;
    *(v192 + 22) = 2080;
    v202 = v260;
    v203 = v233;
    v237(v260, v241 + v239, v233);
    sub_2288BA98C(&qword_2813DE8D0, sub_2288C4040);
    v204 = sub_22892F7E8();
    v206 = v205;
    v240(v202, v203);
    v207 = sub_2288B748C(v204, v206, &v290);

    *(v192 + 24) = v207;
    _os_log_impl(&dword_2288B2000, v190, v191, "Getting results [%s: %s], valid dates %s", v192, 0x20u);
    v208 = v289;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v208, -1, -1);
    MEMORY[0x22AAC47E0](v192, -1, -1);

    (*(v212 + 8))(v214, v213);
    sub_2288C3680(v217, sub_2288B4B3C);
    v196(v219, v77);
  }

  else
  {

    v209 = v287;
    v287(v189, v77);
    v209(v187, v77);
    (*(v212 + 8))(v186, v213);
    sub_2288C3680(v217, sub_2288B4B3C);
    v209(v219, v77);
  }

  return v234;
}

uint64_t sub_2288C337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C33E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C344C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C34B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2288C351C()
{
  if (!qword_2813DEE30)
  {
    sub_22892E828();
    v0 = MEMORY[0x277D10028];
    sub_2288BA98C(&qword_2813DFE30, MEMORY[0x277D10028]);
    sub_2288BA98C(&unk_2813DFE40, v0);
    sub_2288BA98C(&qword_2813DFE38, v0);
    v1 = sub_22892EE78();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEE30);
    }
  }
}

uint64_t sub_2288C3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2288C3680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2288C36E0()
{
  if (!qword_2813DEDA0)
  {
    sub_22892EFA8();
    sub_2288BA948(&unk_2813DEE00);
    sub_2288D9DE8();
    v0 = sub_22892F078();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEDA0);
    }
  }
}

void sub_2288C3774()
{
  if (!qword_2813DED98)
  {
    sub_2288C36E0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED98);
    }
  }
}

uint64_t sub_2288C37D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22892EFA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C36E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BB5F8(a1, v12, sub_2288C36E0);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2288B5D1C();
    v15 = *(v14 + 36);
    sub_2288BB548(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
    if (sub_22892F088())
    {
      (*(v5 + 8))(v8, v4);
      v16 = 1;
    }

    else
    {
      v17[1] = 1;
      sub_2288BB548(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
      sub_22892F4D8();
      (*(v5 + 8))(v8, v4);
      v16 = 0;
    }

    return (*(v5 + 56))(a2, v16, 1, v4);
  }

  return result;
}

uint64_t sub_2288C3A54@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35[5] = a2;
  v33 = a3;
  v34 = a1;
  sub_2288B4B3C(0);
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  sub_2288C3E44(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C3E64();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v3, v13);
  sub_2288BA98C(&qword_2813DE8E8, sub_2288C3E44);
  sub_22892F1A8();
  v23 = *(v19 + 44);
  sub_2288BA98C(&qword_2813DE8E0, sub_2288C3E44);
  while (1)
  {
    sub_22892F318();
    if (*&v22[v23] == v35[0])
    {
      sub_2288C3680(v22, sub_2288C3E64);
      v27 = 1;
      v28 = v33;
      return (*(v31 + 56))(v28, v27, 1, v32);
    }

    v24 = sub_22892F338();
    sub_2288C337C(v25, v11, sub_2288B4B3C);
    v24(v35, 0);
    sub_22892F328();
    sub_2288C344C(v11, v9, sub_2288B4B3C);
    v26 = v34(v9);
    if (v4)
    {
      sub_2288C3680(v9, sub_2288B4B3C);
      return sub_2288C3680(v22, sub_2288C3E64);
    }

    if (v26)
    {
      break;
    }

    sub_2288C3680(v9, sub_2288B4B3C);
  }

  sub_2288C3680(v22, sub_2288C3E64);
  v30 = v33;
  sub_2288C344C(v9, v33, sub_2288B4B3C);
  v28 = v30;
  v27 = 0;
  return (*(v31 + 56))(v28, v27, 1, v32);
}

void sub_2288C3E64()
{
  if (!qword_2813DEA60)
  {
    sub_2288C3E44(255);
    sub_2288BA98C(&qword_2813DE8E0, sub_2288C3E44);
    v0 = sub_22892F728();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA60);
    }
  }
}

uint64_t sub_2288C3F18()
{
  sub_22892EFA8();
  sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  if ((sub_22892F048() & 1) == 0)
  {
    return 0;
  }

  sub_2288B4B3C(0);
  v1 = *(v0 + 36);
  return sub_22892F028() & 1;
}

void sub_2288C3FDC()
{
  if (!qword_2813DEA78)
  {
    sub_2288B5D1C();
    sub_2288D9D4C();
    v0 = sub_22892F728();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA78);
    }
  }
}

uint64_t sub_2288C4060()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_22892E778();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  v4 = *(v0 + *(*v0 + 120));

  return v0;
}

uint64_t sub_2288C415C()
{
  sub_2288C4060();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2288C41B4()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  v2 = sub_22892E478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_2288C4258()
{
  v1 = *(v0 + 32);
  sub_2288C4298(*(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2288C4298(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2288C42A8()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_2288C434C(NSObject *a1, unint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v349 = a5;
  v355 = a4;
  v306 = a3;
  v358 = a1;
  v365[5] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v304 = sub_22892DF58();
  v303 = *(v304 - 8);
  v6 = *(v303 + 64);
  MEMORY[0x28223BE20](v304);
  v302 = &v285 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_22892E828();
  v288 = *(v330 - 8);
  v8 = *(v288 + 64);
  MEMORY[0x28223BE20](v330);
  v329 = &v285 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B4A64(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v289 = &v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5C84(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v361 = &v285 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_22892DEF8();
  v286 = *(v316 - 8);
  isa = v286[8].isa;
  v17 = MEMORY[0x28223BE20](v316);
  v357 = (&v285 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v317 = &v285 - v20;
  MEMORY[0x28223BE20](v19);
  v360 = &v285 - v21;
  sub_2288BB4E0();
  v342 = v22;
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v340 = &v285 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v339 = &v285 - v26;
  sub_2288B4B3C(0);
  v351 = v27;
  v287 = *(v27 - 8);
  v28 = v287[8].isa;
  MEMORY[0x28223BE20](v27);
  v348 = (&v285 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289126E0();
  v293 = v30;
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v285 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v331 = (&v285 - v35);
  v301 = sub_22892DE18();
  v300 = *(v301 - 8);
  v36 = *(v300 + 64);
  v37 = MEMORY[0x28223BE20](v301);
  v314 = &v285 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v313 = &v285 - v39;
  v40 = sub_22892EFA8();
  v307 = *(v40 - 8);
  v41 = v307[8].isa;
  v42 = MEMORY[0x28223BE20](v40);
  v328 = &v285 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v336 = (&v285 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v333 = &v285 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v305 = &v285 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v292 = &v285 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v327 = (&v285 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v345 = &v285 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  p_isa = (&v285 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v322 = (&v285 - v59);
  MEMORY[0x28223BE20](v58);
  v321 = &v285 - v60;
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v65 = &v285 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v63);
  v318 = &v285 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v326 = &v285 - v69;
  MEMORY[0x28223BE20](v68);
  v359 = &v285 - v70;
  v346 = sub_22892E048();
  v71 = *(v346 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v346);
  v74 = &v285 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_22892EDE8();
  v311 = *(v312 - 8);
  v75 = *(v311 + 64);
  v76 = MEMORY[0x28223BE20](v312);
  v354 = (&v285 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = MEMORY[0x28223BE20](v76);
  v291 = &v285 - v79;
  MEMORY[0x28223BE20](v78);
  v81 = &v285 - v80;
  sub_22892EDC8();

  v82 = a2;
  v83 = sub_22892EDD8();
  v84 = sub_22892F398();

  v85 = v83;
  v86 = os_log_type_enabled(v83, v84);
  v309 = v74;
  v334 = v34;
  v308 = v65;
  v295 = v82;
  if (v86)
  {
    v87 = v71;
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136446466;
    v90 = sub_22892F948();
    v92 = sub_2288B748C(v90, v91, aBlock);

    *(v88 + 4) = v92;
    *(v88 + 12) = 2080;
    *(v88 + 14) = sub_2288B748C(v358, v82, aBlock);
    _os_log_impl(&dword_2288B2000, v85, v84, "[%{public}s:%s] Query Type is All Day", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v89, -1, -1);
    v93 = v88;
    v71 = v87;
    v94 = v309;
    MEMORY[0x22AAC47E0](v93, -1, -1);

    v294 = *(v311 + 8);
    v294(v81, v312);
  }

  else
  {

    v294 = *(v311 + 8);
    v294(v81, v312);
    v94 = v74;
  }

  v95 = v359;
  sub_22892EBC8();
  v96 = *(v71 + 48);
  v97 = v346;
  v344 = v71 + 48;
  v343 = v96;
  if (v96(v95, 1, v346) == 1)
  {
    goto LABEL_160;
  }

  v310 = v71;
  (*(v71 + 32))(v94, v95, v97);
  sub_22890F20C(v321, v322);
  sub_22892EF38();
  sub_22892EF38();
  v98 = sub_22892DDD8();
  v99 = sub_22892DDD8();
  v100 = HDActivityCacheEntityPredicateForCachesInDateComponentsRange();

  v101 = objc_allocWithZone(MEMORY[0x277D10588]);
  v102 = [v101 initWithProfile_];
  v103 = sub_2288E2A3C();
  v105 = v104;
  v106 = *(v104 + 8);
  v365[3] = v103;
  v365[4] = v104;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v365);
  v320 = v103;
  v323 = v105;
  v106(0, 1, v103, v105);
  v362 = MEMORY[0x277D84F90];
  v107 = swift_allocObject();
  *(v107 + 16) = &v362;
  v108 = swift_allocObject();
  v108[2] = sub_2288B3B68;
  v108[3] = v107;
  aBlock[4] = sub_2288B3B70;
  aBlock[5] = v108;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3B98;
  aBlock[3] = &block_descriptor_18_0;
  v109 = _Block_copy(aBlock);
  v110 = v100;

  aBlock[0] = 0;
  v299 = v102;
  v111 = [v102 enumerateActivitySummariesWithPredicate:v110 error:aBlock handler:v109];
  _Block_release(v109);
  v298 = v110;

  v112 = aBlock[0];
  LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

  if (v102)
  {
    goto LABEL_142;
  }

  v297 = v107;
  if (!v111)
  {
    v127 = sub_22892DE38();

    swift_willThrow();
    v128 = v354;
    sub_22892EDC8();
    v129 = v295;

    v130 = v127;
    v131 = sub_22892EDD8();
    v132 = sub_22892F398();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      aBlock[0] = v135;
      *v133 = 136446722;
      v136 = sub_22892F948();
      v138 = sub_2288B748C(v136, v137, aBlock);

      *(v133 + 4) = v138;
      *(v133 + 12) = 2080;
      *(v133 + 14) = sub_2288B748C(v358, v129, aBlock);
      *(v133 + 22) = 2112;
      v139 = v127;
      v140 = _swift_stdlib_bridgeErrorToNSError();
      *(v133 + 24) = v140;
      *v134 = v140;
      _os_log_impl(&dword_2288B2000, v131, v132, "[%{public}s:%s] Initial Activity Summary Query errored with %@", v133, 0x20u);
      sub_2288B5BCC(v134, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v134, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v135, -1, -1);
      MEMORY[0x22AAC47E0](v133, -1, -1);

      v141 = v354;
    }

    else
    {

      v141 = v128;
    }

    v294(v141, v312);
    v116 = v310;
    v142 = v298;
    v143 = v309;
    v144 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
    v145 = sub_22892DE28();

    v146 = [v315 queryUUID];
    v147 = v302;
    sub_22892DF38();

    v148 = sub_22892DF18();
    (*(v303 + 8))(v147, v304);
    [v306 client:v145 deliverError:v148 forQuery:?];

    v149 = v142;
    v85 = v322;
    v112 = v321;
    v115 = v346;
    goto LABEL_121;
  }

  v111 = v362;
  if (v362 >> 62)
  {
    goto LABEL_145;
  }

  v113 = *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v114 = v315;
  v115 = v346;
  v116 = v310;
  v117 = v358;
  if (!v113)
  {
    v150 = sub_22892F208();
    v151 = [v114 queryUUID];
    v152 = v302;
    sub_22892DF38();

    v153 = sub_22892DF18();
    (*(v303 + 8))(v152, v304);
    [v306 client:v150 deliverTrainingLoadSampleDaySummaries:v153 queryUUID:?];

    v85 = v322;
    v112 = v321;
    v149 = v299;
    v143 = v309;
    goto LABEL_121;
  }

  if ((v111 & 0xC000000000000001) != 0)
  {

    v284 = MEMORY[0x22AAC3CC0](0, v111);

    v118 = v284;
  }

  else
  {
    if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v118 = *(v111 + 32);
  }

  v325 = v118;
  v111 = [v118 activeEnergyBurned];
  v332 = [v111 _unit];

  v119 = v362;
  if (v362 >> 62)
  {
    v120 = sub_22892F588();
  }

  else
  {
    v120 = *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v120)
  {
    v121 = 0;
    v122 = 0.0;
    v85 = &off_278609000;
    do
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        v123 = MEMORY[0x22AAC3CC0](v121, v119);
      }

      else
      {
        if (v121 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_131;
        }

        v123 = *(v119 + 8 * v121 + 32);
      }

      v112 = v123;
      v111 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_130;
      }

      v124 = [v123 activeEnergyBurned];
      [v124 doubleValueForUnit_];
      v126 = v125;

      v117 = v358;
      v122 = v122 + v126;
      ++v121;
    }

    while (v111 != v120);
  }

  else
  {
    v122 = 0.0;
  }

  v154 = sub_22891285C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  v155 = v321;
  v111 = v322;
  v354 = v154;
  if ((sub_22892F048() & 1) == 0)
  {
    goto LABEL_149;
  }

  v156 = v307;
  v157 = v307 + 2;
  v158 = v307[2].isa;
  v338 = v158;
  v159 = v339;
  v158(v339, v155, v40);
  v160 = v342;
  v158(v159 + *(v342 + 48), v111, v40);
  v161 = v340;
  sub_2289127F4(v159, v340, sub_2288BB4E0);
  v359 = *(v160 + 48);
  v162 = v156[4].isa;
  v163 = v348;
  v162(v348, v161, v40);
  v164 = v156[1].isa;
  v164(v161 + v359, v40);
  sub_2288C34B4(v159, v161, sub_2288BB4E0);
  v165 = v351;
  v166 = v163 + *(v351 + 36);
  v167 = v161 + *(v342 + 48);
  v347 = v156 + 4;
  v350 = v162;
  v162(v166, v167, v40);
  v353 = v156 + 1;
  v164(v161, v40);
  v168 = v331;
  sub_2289127F4(v163, v331, sub_2288B4B3C);
  v359 = *(v293 + 36);
  v337 = v157;
  v338(v168 + v359, v163, v40);
  sub_2288B5BCC(v163, sub_2288B4B3C);
  v112 = *(v165 + 36);
  v335 = sub_22891285C(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  v169 = 0;
  v341 = (v310 + 8);
  v170 = v345;
  v355 = v164;
  v85 = v168;
  v324 = v112;
  while ((sub_22892F088() & 1) == 0)
  {
    v171 = v359;
    v111 = v337;
    v172 = v338;
    v338(p_isa, v85 + v359, v40);
    v173 = v170;
    v174 = v350;
    v350(v173, v85 + v171, v40);
    if ((sub_22892F048() & 1) == 0)
    {
      goto LABEL_134;
    }

    v352 = v169;
    v175 = v174;
    v176 = v339;
    v172(v339, v85, v40);
    v177 = v342;
    v172((v176 + *(v342 + 48)), (v85 + v112), v40);
    v178 = v340;
    sub_2289127F4(v176, v340, sub_2288BB4E0);
    v179 = *(v177 + 48);
    v175(v348, v178, v40);
    v355(v178 + v179, v40);
    v180 = v176;
    v163 = v348;
    sub_2288C34B4(v180, v178, sub_2288BB4E0);
    v111 = *(v351 + 36);
    v175((v163 + v111), v178 + *(v177 + 48), v40);
    v181 = v178;
    v170 = v345;
    v355(v181, v40);
    v164 = v355;
    v85 = v354;
    if ((sub_22892F048() & 1) == 0)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v111 = sub_22892F028();
    sub_2288B5BCC(v163, sub_2288B4B3C);
    if ((v111 & 1) == 0)
    {
      goto LABEL_136;
    }

    aBlock[0] = 1;
    sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
    v85 = v331;
    sub_22892F4D8();
    v164(v170, v40);
    v182 = v327;
    v350(v327, p_isa, v40);
    v183 = v326;
    sub_22892EBC8();
    v184 = v346;
    if (v343(v183, 1, v346) == 1)
    {
      goto LABEL_157;
    }

    v185 = sub_228911B80(v325, v182, v183);
    v164(v182, v40);
    (*v341)(v183, v184);
    v117 = v358;
    v169 = v352;
    v112 = v324;
    if (v185)
    {
      break;
    }

    v169 = (v352 + 1);
    if (__OFADD__(v352, 1))
    {
      __break(1u);
      break;
    }
  }

  sub_2288B5BCC(v85, sub_2289126E0);
  v111 = sub_22892EF68();
  v186 = sub_22892EF68();
  v187 = v111 - v186;
  if (__OFSUB__(v111, v186))
  {
    goto LABEL_150;
  }

  v188 = __OFSUB__(v187, v169);
  v189 = v187 - v169;
  if (v188)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v229 = sub_22892F588();
    goto LABEL_55;
  }

  if (v189 < 1)
  {
    v190 = 0.0;
  }

  else
  {
    v190 = v122 / v189;
  }

  v191 = v295;
  v192 = v305;
  v193 = objc_opt_self();
  v194 = v332;
  v290 = [v193 quantityWithUnit:v332 doubleValue:v190];
  v285 = v193;
  v305 = [v193 quantityWithUnit:v194 doubleValue:0.0];
  v195 = v291;
  sub_22892EDC8();
  v196 = v292;
  v197 = v338;
  v338(v292, v321, v40);
  v197(v192, v322, v40);
  v198 = v195;

  v199 = sub_22892EDD8();
  v112 = sub_22892F398();

  if (os_log_type_enabled(v199, v112))
  {
    LODWORD(v358) = v112;
    v200 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    aBlock[0] = p_isa;
    *v200 = 136447234;
    v201 = sub_22892F948();
    v203 = sub_2288B748C(v201, v202, aBlock);

    *(v200 + 4) = v203;
    *(v200 + 12) = 2080;
    *(v200 + 14) = sub_2288B748C(v117, v191, aBlock);
    *(v200 + 22) = 2048;
    swift_beginAccess();
    v359 = v199;
    if (v362 >> 62)
    {
      v204 = sub_22892F588();
    }

    else
    {
      v204 = *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v205 = v353;
    v206 = v292;
    *(v200 + 24) = v204;
    *(v200 + 32) = 2080;
    sub_22891285C(&qword_2813DEDF0, MEMORY[0x277CCB6A8]);
    v207 = sub_22892F7E8();
    v209 = v208;
    v164(v206, v40);
    v210 = sub_2288B748C(v207, v209, aBlock);

    *(v200 + 34) = v210;
    *(v200 + 42) = 2080;
    v211 = sub_22892F7E8();
    v112 = v212;
    v164(v192, v40);
    v213 = sub_2288B748C(v211, v112, aBlock);

    *(v200 + 44) = v213;
    v214 = v359;
    _os_log_impl(&dword_2288B2000, v359, v358, "[%{public}s:%s] Processing %ld Activity Summaries between %s and %s", v200, 0x34u);
    v215 = p_isa;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v215, -1, -1);
    MEMORY[0x22AAC47E0](v200, -1, -1);

    v294(v291, v312);
    v111 = v322;
    v216 = v321;
    v163 = v348;
    v85 = v205;
  }

  else
  {

    v217 = v192;
    v85 = v353;
    v164(v217, v40);
    v164(v196, v40);
    v294(v198, v312);
    v111 = v322;
    v216 = v321;
  }

  if ((sub_22892F048() & 1) == 0)
  {
    goto LABEL_152;
  }

  v218 = v339;
  v219 = v216;
  v220 = v338;
  v338(v339, v219, v40);
  v221 = v342;
  v220(v218 + *(v342 + 48), v111, v40);
  v222 = v340;
  sub_2289127F4(v218, v340, sub_2288BB4E0);
  v223 = *(v221 + 48);
  v224 = v350;
  v350(v163, v222, v40);
  v164(v222 + v223, v40);
  sub_2288C34B4(v218, v222, sub_2288BB4E0);
  v225 = v351;
  v224(v163 + *(v351 + 36), v222 + *(v221 + 48), v40);
  v164(v222, v40);
  v112 = v334;
  sub_2289127F4(v163, v334, sub_2288B4B3C);
  v226 = *(v293 + 36);
  v338(v112 + v226, v163, v40);
  sub_2288B5BCC(v163, sub_2288B4B3C);
  v227 = *(v225 + 36);
  if ((sub_22892F088() & 1) == 0)
  {
    v111 = 0;
    p_isa = &v286[4].isa;
    v358 = v286 + 7;
    v352 = &v286[6];
    v359 = &v286[1];
    v324 = (v323 + 16);
    v331 = v226;
    v326 = v227;
    do
    {
      v85 = v338;
      v338(v333, v112 + v226, v40);
      v244 = v350;
      v350(v345, v112 + v226, v40);
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_137;
      }

      v245 = v339;
      (v85)(v339, v112, v40);
      v246 = v342;
      (v85)(v245 + *(v342 + 48), &v227[v112], v40);
      v247 = v340;
      sub_2289127F4(v245, v340, sub_2288BB4E0);
      v248 = *(v246 + 48);
      v85 = v348;
      v244(v348, v247, v40);
      v355(v247 + v248, v40);
      v249 = v245;
      v250 = v355;
      sub_2288C34B4(v249, v247, sub_2288BB4E0);
      v251 = *(v246 + 48);
      v252 = v345;
      v244((v85 + *(v351 + 36)), v247 + v251, v40);
      v250(v247, v40);
      v112 = v354;
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_138;
      }

      v253 = sub_22892F028();
      sub_2288B5BCC(v85, sub_2288B4B3C);
      if ((v253 & 1) == 0)
      {
        goto LABEL_139;
      }

      v363 = 1;
      sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
      sub_22892F4D8();
      v250(v252, v40);
      v350(v336, v333, v40);
      v254 = v318;
      sub_22892EBC8();
      v112 = v346;
      if (v343(v254, 1, v346) == 1)
      {
        goto LABEL_158;
      }

      sub_22892EF98();
      v327 = *v341;
      v327(v254, v112);
      swift_beginAccess();
      v255 = v317;
      v85 = v316;
      while (1)
      {
        if (v362 >> 62)
        {
          if (v111 >= sub_22892F588())
          {
            break;
          }
        }

        else if (v111 >= *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        swift_beginAccess();
        if ((v362 & 0xC000000000000001) != 0)
        {
          v256 = MEMORY[0x22AAC3CC0](v111);
        }

        else
        {
          if (v111 < 0)
          {
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
            goto LABEL_135;
          }

          if (v111 >= *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v256 = *(v362 + 8 * v111 + 32);
        }

        v257 = v256;
        swift_endAccess();
        v112 = [v257 _endDate];

        if (v112)
        {
          v258 = v357;
          sub_22892DEC8();

          v259 = *p_isa;
          v112 = v361;
          (*p_isa)(v361, v258, v85);
          (v358->isa)(v112, 0, 1, v85);
          v259(v255, v112, v85);
        }

        else
        {
          v260 = v361;
          (v358->isa)(v361, 1, 1, v85);
          sub_22892DEE8();
          if ((*v352)(v260, 1, v85) != 1)
          {
            sub_2288B5BCC(v361, sub_2288B5C84);
          }
        }

        v261 = sub_22892DE78();
        (*v359)(v255, v85);
        if ((v261 & 1) == 0)
        {
          break;
        }

        ++v111;
      }

      if (v362 >> 62)
      {
        if (v111 >= sub_22892F588())
        {
          goto LABEL_70;
        }

LABEL_96:
        swift_beginAccess();
        if ((v362 & 0xC000000000000001) == 0)
        {
          if ((v111 & 0x8000000000000000) == 0)
          {
            if (v111 < *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v262 = *(v362 + 8 * v111 + 32);
              goto LABEL_100;
            }

LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v262 = MEMORY[0x22AAC3CC0](v111);
LABEL_100:
        v112 = v262;
        swift_endAccess();
        v263 = v308;
        sub_22892EBC8();
        v264 = v346;
        if (v343(v263, 1, v346) != 1)
        {
          v265 = sub_228911B80(v112, v336, v263);

          v327(v263, v264);
          if ((v265 & 1) == 0)
          {
            goto LABEL_70;
          }

          swift_beginAccess();
          if ((v362 & 0xC000000000000001) != 0)
          {
            v266 = MEMORY[0x22AAC3CC0](v111);
            goto LABEL_106;
          }

          if (v111 < 0)
          {
            goto LABEL_143;
          }

          if (v111 < *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v266 = *(v362 + 8 * v111 + 32);
LABEL_106:
            v267 = v266;
            swift_endAccess();
            v268 = [v267 activityMoveMode];
            v269 = [v267 activeEnergyBurned];
            v270 = v269;
            if (v268 != 1)
            {
              v271 = [v269 _unit];

              v270 = [v285 quantityWithUnit:v271 doubleValue:0.0];
            }

            ++v111;
            v241 = v336;
            (*(v323 + 16))(v270, v336, 0, v320);

            goto LABEL_73;
          }

LABEL_144:
          __break(1u);
LABEL_145:
          v113 = sub_22892F588();
          goto LABEL_9;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
      }

      if (v111 < *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

LABEL_70:
      if (v111)
      {
        v240 = v305;
        v241 = v336;
        v242 = v336;
        v243 = 0;
      }

      else
      {
        v240 = v290;
        v241 = v336;
        v242 = v336;
        v243 = 1;
      }

      (*v324)(v240, v242, v243, v320, v323);
LABEL_73:
      (*v359)(v360, v85);
      v355(v241, v40);
      v112 = v334;
      v226 = v331;
      v227 = v326;
    }

    while ((sub_22892F088() & 1) == 0);
  }

  sub_2288B5BCC(v112, sub_2289126E0);
  v112 = v321;
  v85 = v322;
  v228 = (*(v323 + 24))(v321, v322, v320);
  v111 = v228;
  v363 = MEMORY[0x277D84F90];
  if (v228 >> 62)
  {
    goto LABEL_153;
  }

  v229 = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_55:
  v230 = v306;
  v116 = v310;
  v143 = v309;
  v231 = v289;
  if (!v229)
  {
    v272 = MEMORY[0x277D84F90];
    goto LABEL_116;
  }

  v232 = 0;
  v360 = (v111 & 0xC000000000000001);
  v359 = v111 & 0xFFFFFFFFFFFFFF8;
  v358 = v287 + 6;
  v357 = (v288 + 8);
  do
  {
    if (v360)
    {
      v233 = MEMORY[0x22AAC3CC0](v232, v111);
    }

    else
    {
      if (v232 >= *(v359 + 16))
      {
        goto LABEL_133;
      }

      v233 = *(v111 + 8 * v232 + 32);
    }

    v112 = v233;
    v234 = (v232 + 1);
    if (__OFADD__(v232, 1))
    {
      goto LABEL_132;
    }

    v85 = v229;
    v235 = v111;
    sub_22892EBD8();
    if ((v358->isa)(v231, 1, v351) == 1)
    {
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v236 = v231;
    v237 = v329;
    v361 = v112;
    sub_22892EE68();
    v112 = v328;
    sub_22892E808();
    (*v357)(v237, v330);
    v231 = v236;
    if ((sub_22892F048() & 1) == 0)
    {
      v355(v112, v40);
      sub_2288B5BCC(v236, sub_2288B4B3C);
      v111 = v235;
LABEL_58:

      goto LABEL_59;
    }

    v238 = *(v351 + 36);
    v239 = sub_22892F028();
    v355(v112, v40);
    sub_2288B5BCC(v236, sub_2288B4B3C);
    v111 = v235;
    if ((v239 & 1) == 0)
    {
      goto LABEL_58;
    }

    sub_22892F6A8();
    v112 = *(v363 + 16);
    sub_22892F6D8();
    sub_22892F6E8();
    sub_22892F6B8();
LABEL_59:
    ++v232;
    v229 = v85;
  }

  while (v234 != v85);
  v272 = v363;
  v230 = v306;
  v85 = v322;
  v112 = v321;
  v116 = v310;
  v143 = v309;
LABEL_116:

  if (v272 < 0 || (v272 & 0x4000000000000000) != 0)
  {
    sub_22892F748();
  }

  else
  {
    sub_22892F828();
    if (!swift_dynamicCastMetatype())
    {
      v282 = *(v272 + 16);
      if (v282)
      {
        v283 = 32;
        do
        {
          if (!*(v272 + v283))
          {
            break;
          }

          v283 += 8;
          --v282;
        }

        while (v282);
      }
    }
  }

  v273 = sub_22892F208();

  v274 = [v315 queryUUID];
  v275 = v302;
  sub_22892DF38();

  v276 = sub_22892DF18();
  (*(v303 + 8))(v275, v304);
  [v230 client:v273 deliverTrainingLoadSampleDaySummaries:v276 queryUUID:?];

  v115 = v346;
  v149 = v299;
LABEL_121:

  v277 = *(v300 + 8);
  v278 = v301;
  v277(v314, v301);
  v277(v313, v278);
  v279 = v307[1].isa;
  v279(v85, v40);
  v279(v112, v40);
  (*(v116 + 8))(v143, v115);

  __swift_destroy_boxed_opaque_existential_0(v365);

  v281 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2288C72C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2288C7354@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22892F0C8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2288C73C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288C7408()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7444()
{
  v1 = sub_22892EA08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2288C751C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2288C752C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7570()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2288C75A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C75E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22892DF58();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2288C7700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22892DF58();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2288C782C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7864()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C789C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C78D4()
{
  MEMORY[0x22AAC4870](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C790C()
{
  v1 = sub_22892E048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2288C79CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2288C7A1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2288C7A78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288C7AC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7AFC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2288C7B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892E5A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22892EB18();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 60);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288C7C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22892E5A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22892EB18();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 60);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2288C7D8C()
{
  MEMORY[0x22AAC4870](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7DC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7DFC(uint64_t a1, uint64_t a2)
{
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288C7E84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2288C7F24()
{
  MEMORY[0x22AAC4870](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7F5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7F94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7FCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C800C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C8044()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_2288C8088(void *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2288C8098()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C80D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_228915874();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288C81C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_228915874();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2288C82CC(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2288C8368(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2288C840C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288C8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2288C850C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2288C85C4(uint64_t a1, uint64_t a2)
{
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288C8660(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2288C8710()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C8760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22892DEF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2288C8850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22892DEF8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2288C894C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22892EFA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2288C89B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22892EFA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2288C8A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22892DEF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2288C8B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22892DEF8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

id sub_2288C8C14(uint64_t a1, id a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = [a2 dataCount];
  if (!v10)
  {
    v11 = 0;
    goto LABEL_5;
  }

  if (v10 >= a5)
  {
    if (a4)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v13 = [a2 averageQuantity];
          v11 = v13;
          if (v13)
          {
            v14 = [v13 _unit];
            [v11 _baselineRelativeDoubleValueForUnit_];
            v16 = v15;

            if (v16 == -1.79769313e308)
            {

              v11 = 0;
              v12 = MEMORY[0x277D0FF68];
              goto LABEL_17;
            }

            if (v16 == 1.79769313e308)
            {

              v11 = 0;
              v12 = MEMORY[0x277D0FF60];
              goto LABEL_17;
            }

LABEL_16:
            v12 = MEMORY[0x277D0FF78];
            goto LABEL_17;
          }

LABEL_5:
          v12 = MEMORY[0x277D0FF70];
          goto LABEL_17;
        }

        v17 = [a2 maximumQuantity];
      }

      else
      {
        v17 = [a2 averageQuantity];
      }
    }

    else
    {
      v17 = [a2 percentileQuantity];
    }

    v11 = v17;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = MEMORY[0x277D0FF58];
LABEL_17:
  v18 = *v12;
  v19 = sub_22892E538();
  (*(*(v19 - 8) + 104))(a1, v18, v19);
  return v11;
}

uint64_t sub_2288C8DE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v97 = a4;
  v94 = a2;
  v95 = a3;
  v99 = a7;
  sub_2288BBEF4(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v80 - v12;
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v86 = &v80 - v19;
  v20 = sub_22892E048();
  v92 = *(v20 - 8);
  v93 = v20;
  v21 = *(v92 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v80 - v25;
  MEMORY[0x28223BE20](v24);
  v84 = &v80 - v26;
  v90 = sub_22892EFA8();
  v27 = *(v90 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v90);
  v81 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = &v80 - v32;
  MEMORY[0x28223BE20](v31);
  v82 = &v80 - v33;
  sub_2288CA7EC();
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22892E538();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = MEMORY[0x28223BE20](v39);
  v80 = &v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v96 = &v80 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v80 - v46;
  v48 = a5 & 1;
  v49 = a1;
  v50 = sub_2288C8C14(&v80 - v46, a1, v97, v48, a6);
  v51 = *(v35 + 56);
  v52 = v40[4];
  v52(&v38[v51], v47, v39);
  v91 = v40;
  v53 = v40[11];
  v97 = v39;
  v54 = v53(&v38[v51], v39);
  if (v54 == *MEMORY[0x277D0FF60])
  {
    v55 = v54;

    (*(v27 + 16))(v87, v94, v90);
    (*(v92 + 16))(v88, v95, v93);
    v56 = [v49 mostRecentQuantityDateInterval];
    if (v56)
    {
      v57 = v89;
      v58 = v56;
      sub_22892DD68();

      v59 = 0;
    }

    else
    {
      v59 = 1;
      v57 = v89;
    }

    v76 = sub_22892DDC8();
    (*(*(v76 - 8) + 56))(v57, v59, 1, v76);
    v77 = sub_22892DEF8();
    (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
    (v91[13])(v96, v55, v97);
  }

  else
  {
    v89 = v50;
    v60 = v90;
    v61 = v92;
    v62 = v94;
    if (v54 != *MEMORY[0x277D0FF78])
    {

      v69 = &v38[v51];
      v70 = v96;
      v71 = v97;
      v52(v96, v69, v97);
      (*(v27 + 16))(v81, v62, v60);
      (*(v61 + 16))(v83, v95, v93);
      v72 = sub_22892DDC8();
      (*(*(v72 - 8) + 56))(v85, 1, 1, v72);
      v73 = sub_22892DEF8();
      (*(*(v73 - 8) + 56))(v98, 1, 1, v73);
      v74 = v91;
      (v91[2])(v80, v70, v71);
      sub_22892E568();
      return (v74[1])(v70, v71);
    }

    v63 = v49;
    v64 = v54;
    (*(v27 + 16))(v82, v94, v90);
    (*(v61 + 16))(v84, v95, v93);
    v65 = [v63 mostRecentQuantityDateInterval];
    if (v65)
    {
      v66 = v86;
      v67 = v65;
      sub_22892DD68();

      v68 = 0;
    }

    else
    {
      v68 = 1;
      v66 = v86;
    }

    v78 = sub_22892DDC8();
    (*(*(v78 - 8) + 56))(v66, v68, 1, v78);
    v79 = sub_22892DEF8();
    (*(*(v79 - 8) + 56))(v98, 1, 1, v79);
    (v91[13])(v96, v64, v97);
  }

  return sub_22892E568();
}

uint64_t sub_2288C9660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
  return sub_22892F468() & 1;
}

id sub_2288C96D0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_22892DDC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    return sub_2288DADC0(a1, a2, a3);
  }

  else
  {
    sub_2288CACFC(0, &qword_2813DE960, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228930AF0;
    *(inited + 32) = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    sub_2289174BC(v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      sub_2288CA8C4(v11);
      return 0;
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_228930B00;
      *(v19 + 32) = HDSampleEntityPredicateForDataType();
      v20 = sub_22892DD58();
      v21 = HDSampleEntityPredicateForDateInterval();

      *(v19 + 40) = v21;
      v25 = v19;
      sub_228904978(inited);
      sub_228901F80(v25);

      v22 = sub_22892F208();

      v23 = [objc_opt_self() predicateMatchingAllPredicates_];

      v24 = [objc_allocWithZone(MEMORY[0x277D108A0]) initForProfile:a3 quantityType:a2 predicate:v23 restrictedSourceEntities:0];
      (*(v13 + 8))(v16, v12);
      return v24;
    }
  }
}

void sub_2288C9A18(uint64_t a1@<X8>)
{
  v47 = a1;
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892E538();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BBEF4(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = sub_22892E048();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892EFA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator);
  v44 = v24;
  if (v25)
  {
    v42 = v19;
    v43 = v6;
    v49[0] = 0;
    v26 = v25;
    if ([v26 queryForInitialStatisticsWithError_])
    {
      v27 = v49[0];
      v28 = [v26 currentStatistics];
      if (v28)
      {
        v29 = v28;
        sub_2288C8DE0(v28, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder), *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder + 8), *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder + 16), v47);
      }

      else
      {
        (*(v21 + 16))(v44, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v20);
        (*(v16 + 16))(v42, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v15);
        v38 = sub_22892DDC8();
        (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
        v39 = sub_22892DEF8();
        (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
        (*(v46 + 104))(v43, *MEMORY[0x277D0FF70], v45);
        sub_22892E568();
      }
    }

    else
    {
      v32 = v49[0];
      v33 = sub_22892DE38();

      swift_willThrow();
      v49[0] = v33;
      v34 = v33;
      sub_2288CA734();
      sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
      if (swift_dynamicCast())
      {

        v35 = v48;
        v36 = [v48 hk_isDatabaseAccessibilityError];
        sub_2288CA798();
        swift_allocError();
        *v37 = v35;
        *(v37 + 8) = v36;
        swift_willThrow();
      }
    }
  }

  else
  {
    (*(v21 + 16))(v24, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v20);
    (*(v16 + 16))(v19, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v15);
    v30 = sub_22892DDC8();
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
    v31 = sub_22892DEF8();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    (*(v46 + 104))(v6, *MEMORY[0x277D0FF70], v45);
    sub_22892E568();
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2288CA04C()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar;
  v4 = sub_22892E048();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider);
  swift_unknownObjectRelease();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingSampleAggregator()
{
  result = qword_2813DFA08;
  if (!qword_2813DFA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288CA1AC()
{
  result = sub_22892EFA8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22892E048();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleAggregateBuilder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepingSampleAggregateBuilder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2288CA32C(uint64_t a1, id *a2)
{
  result = sub_22892F0A8();
  *a2 = 0;
  return result;
}

uint64_t sub_2288CA3A4(uint64_t a1, id *a2)
{
  v3 = sub_22892F0B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2288CA424@<X0>(uint64_t *a1@<X8>)
{
  sub_22892F0C8();
  v2 = sub_22892F098();

  *a1 = v2;
  return result;
}

void *sub_2288CA490@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2288CA4BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2288CA558()
{
  v1 = *v0;
  v2 = sub_22892F0C8();
  v3 = MEMORY[0x22AAC37E0](v2);

  return v3;
}

uint64_t sub_2288CA594()
{
  v1 = *v0;
  sub_22892F0C8();
  sub_22892F0F8();
}

uint64_t sub_2288CA5E8()
{
  v1 = *v0;
  sub_22892F0C8();
  sub_22892F8A8();
  sub_22892F0F8();
  v2 = sub_22892F8C8();

  return v2;
}

uint64_t sub_2288CA65C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2288CB2A0(a1);

  *a2 = v3;
  return result;
}

void *sub_2288CA69C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2288CA6AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22892F0C8();
  v6 = v5;
  if (v4 == sub_22892F0C8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22892F818();
  }

  return v9 & 1;
}

unint64_t sub_2288CA734()
{
  result = qword_2813DE940;
  if (!qword_2813DE940)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DE940);
  }

  return result;
}

unint64_t sub_2288CA798()
{
  result = qword_27D85B0A0;
  if (!qword_27D85B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B0A0);
  }

  return result;
}

void sub_2288CA7EC()
{
  if (!qword_2813DEC88)
  {
    sub_2288CA85C();
    sub_22892E538();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEC88);
    }
  }
}

void sub_2288CA85C()
{
  if (!qword_2813DEC90)
  {
    sub_2288BC0FC(255, &unk_2813DEC98, 0x277CCD7E8);
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEC90);
    }
  }
}

uint64_t sub_2288CA8C4(uint64_t a1)
{
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288CA93C(uint64_t a1)
{
  v2 = sub_2288CAF40(&qword_27D85B150, type metadata accessor for HKFeatureIdentifier);
  v3 = sub_2288CAF40(&qword_27D85B158, type metadata accessor for HKFeatureIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288CA9F8(uint64_t a1)
{
  v2 = sub_2288CAF40(&qword_2813DEBE0, type metadata accessor for HKFeatureAvailabilityContext);
  v3 = sub_2288CAF40(&qword_27D85B138, type metadata accessor for HKFeatureAvailabilityContext);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288CAAB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22892F098();

  *a2 = v5;
  return result;
}

uint64_t sub_2288CAAFC(uint64_t a1)
{
  v2 = sub_2288CAF40(&qword_27D85B140, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_2288CAF40(&qword_27D85B148, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288CABEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288CAC0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2288CACFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2288CAD6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2288CADB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleAggregateBuilder.CalculationMethod(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepingSampleAggregateBuilder.CalculationMethod(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2288CAE64(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288CAE80(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2288CAF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288CB2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_2288CB328(char *a1)
{
  v78[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = sub_22892EA08();
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v67 - v6;
  v7 = sub_22892EDE8();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v67 - v11;
  v12 = sub_22892DEF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22892E358();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E348();
  sub_22892E328();
  v23 = v22;
  (*(v18 + 8))(v21, v17);
  if (v23)
  {
    v72 = a1;
    v24 = v77;
    v68 = v2;
    sub_22892DEA8();
    v25 = objc_allocWithZone(MEMORY[0x277CCD6C0]);
    v26 = sub_22892F098();

    v27 = sub_22892DE58();
    v28 = [v25 initWithAction:3 categoryIdentifier:v26 expirationDate:v27];

    (*(v13 + 8))(v16, v12);
    v78[0] = 0;
    if ([v74 sendNotificationInstruction:v28 criteria:0 error:v78])
    {
      v29 = v78[0];
    }

    else
    {
      v45 = v78[0];
      v46 = sub_22892DE38();

      swift_willThrow();
      v47 = v73;
      sub_22892EDC8();
      v48 = v68;
      v49 = v69;
      (*(v24 + 16))(v69, v72, v68);
      v50 = v46;
      v51 = sub_22892EDD8();
      v52 = sub_22892F378();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v24;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v78[0] = v56;
        *v54 = 136446722;
        v57 = sub_22892F948();
        v59 = sub_2288B748C(v57, v58, v78);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2080;
        v60 = sub_22892E998();
        v62 = v61;
        (*(v53 + 8))(v49, v68);
        v63 = sub_2288B748C(v60, v62, v78);

        *(v54 + 14) = v63;
        *(v54 + 22) = 2114;
        v64 = v46;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v65;
        *v55 = v65;
        _os_log_impl(&dword_2288B2000, v51, v52, "[%{public}s] Error issuing send instruction for vitals outliers notification (%s): %{public}@", v54, 0x20u);
        sub_2288CD0A4(v55, &qword_2813DEB20, sub_2288CD058);
        MEMORY[0x22AAC47E0](v55, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v56, -1, -1);
        MEMORY[0x22AAC47E0](v54, -1, -1);

        (*(v75 + 8))(v73, v76);
      }

      else
      {

        (*(v24 + 8))(v49, v48);
        (*(v75 + 8))(v47, v76);
      }
    }
  }

  else
  {
    v30 = v72;
    sub_22892EDC8();
    v31 = v77;
    v32 = v71;
    (*(v77 + 16))(v71, a1, v2);
    v33 = sub_22892EDD8();
    v34 = sub_22892F378();
    v35 = v31;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v78[0] = v37;
      *v36 = 136446466;
      v38 = sub_22892F948();
      v40 = sub_2288B748C(v38, v39, v78);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      v41 = sub_22892E998();
      v43 = v42;
      (*(v35 + 8))(v32, v2);
      v44 = sub_2288B748C(v41, v43, v78);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_2288B2000, v33, v34, "[%{public}s] Failed to encode notification: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v37, -1, -1);
      MEMORY[0x22AAC47E0](v36, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v32, v2);
    }

    (*(v75 + 8))(v30, v76);
  }

  v66 = *MEMORY[0x277D85DE8];
}

void sub_2288CBAB4(uint64_t a1)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v51[1] = swift_getObjectType();
  v2 = sub_22892EDE8();
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892DEF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892EA08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v51 - v15;
  sub_2288CD190(0, &qword_27D85B340, type metadata accessor for VitalsOutlierNotificationHoldIdentifier);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v51 - v19;
  v54 = v11;
  v55 = v10;
  v21 = *(v11 + 16);
  v52 = a1;
  v21(v16, a1, v10);
  sub_228926A5C(v16, v20);
  v22 = type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    sub_2288CD0A4(v20, &qword_27D85B340, type metadata accessor for VitalsOutlierNotificationHoldIdentifier);
  }

  else
  {
    v51[0] = v2;
    sub_228926E04();
    sub_2288CD100(v20);
    sub_22892DEA8();
    v23 = objc_allocWithZone(MEMORY[0x277CCD6C0]);
    v24 = sub_22892F098();

    v25 = sub_22892DE58();
    v26 = [v23 initWithAction:2 categoryIdentifier:v24 expirationDate:v25];

    (*(v6 + 8))(v9, v5);
    v59[0] = 0;
    if ([v58 sendNotificationInstruction:v26 criteria:0 error:v59])
    {
      v27 = v59[0];
    }

    else
    {
      v28 = v59[0];
      v29 = sub_22892DE38();

      swift_willThrow();
      v30 = v56;
      sub_22892EDC8();
      v31 = v53;
      v32 = v55;
      v21(v53, v52, v55);
      v33 = v29;
      v34 = sub_22892EDD8();
      v35 = sub_22892F378();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v31;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59[0] = v58;
        *v37 = 136446722;
        v39 = sub_22892F948();
        v40 = v32;
        v42 = sub_2288B748C(v39, v41, v59);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2080;
        v43 = sub_22892E998();
        v45 = v44;
        (*(v54 + 8))(v36, v40);
        v46 = sub_2288B748C(v43, v45, v59);

        *(v37 + 14) = v46;
        *(v37 + 22) = 2114;
        v47 = v29;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 24) = v48;
        *v38 = v48;
        _os_log_impl(&dword_2288B2000, v34, v35, "[%{public}s] Error issuing hold instruction for vitals outliers notification (%s): %{public}@", v37, 0x20u);
        sub_2288CD0A4(v38, &qword_2813DEB20, sub_2288CD058);
        MEMORY[0x22AAC47E0](v38, -1, -1);
        v49 = v58;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v49, -1, -1);
        MEMORY[0x22AAC47E0](v37, -1, -1);
      }

      else
      {

        (*(v54 + 8))(v31, v32);
      }

      (*(v57 + 8))(v30, v51[0]);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_2288CC0E0(uint64_t a1)
{
  v2 = v1;
  v45[2] = *MEMORY[0x277D85DE8];
  v38[1] = swift_getObjectType();
  v4 = sub_22892EFA8();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EDE8();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892DEF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = 0x6F63737065656C73;
  v45[1] = 0xEB000000002E6572;
  v44 = sub_22892EF68();
  v16 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v16);

  sub_22892DEA8();
  v17 = objc_allocWithZone(MEMORY[0x277CCD6C0]);
  v18 = sub_22892F098();

  v19 = sub_22892DE58();
  v20 = [v17 initWithAction:2 categoryIdentifier:v18 expirationDate:v19];

  (*(v12 + 8))(v15, v11);
  v45[0] = 0;
  if ([v2 sendNotificationInstruction:v20 criteria:0 error:v45])
  {
    v21 = v45[0];
  }

  else
  {
    v22 = v45[0];
    v23 = sub_22892DE38();

    swift_willThrow();
    v24 = v39;
    sub_22892EDC8();
    (*(v42 + 16))(v7, a1, v43);
    v25 = v23;
    v26 = sub_22892EDD8();
    v27 = sub_22892F378();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45[0] = v30;
      *v28 = 136446722;
      v31 = sub_22892F948();
      v33 = sub_2288B748C(v31, v32, v45);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2048;
      v34 = sub_22892EF68();
      (*(v42 + 8))(v7, v43);
      *(v28 + 14) = v34;
      *(v28 + 22) = 2114;
      v35 = v23;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v36;
      *v29 = v36;
      _os_log_impl(&dword_2288B2000, v26, v27, "[%{public}s] Error sending hold instruction for sleep score notification on %ld: %{public}@", v28, 0x20u);
      sub_2288CD0A4(v29, &qword_2813DEB20, sub_2288CD058);
      MEMORY[0x22AAC47E0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAC47E0](v30, -1, -1);
      MEMORY[0x22AAC47E0](v28, -1, -1);
    }

    else
    {
      (*(v42 + 8))(v7, v43);
    }

    (*(v40 + 8))(v24, v41);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2288CC5E4()
{
  v1 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 0;
  v7 = [v1 notificationHoldInstructionsWithError_];
  v8 = v24[0];
  if (v7)
  {
    v9 = v7;
    v10 = sub_22892F2A8();
    v11 = v8;
  }

  else
  {
    v12 = v24[0];
    v13 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v14 = sub_22892EDD8();
    v15 = sub_22892F378();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136446210;
      v18 = sub_22892F948();
      v20 = sub_2288B748C(v18, v19, v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2288B2000, v14, v15, "[%{public}s] Error reading hold instructions; assuming we have no holds", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAC47E0](v17, -1, -1);
      MEMORY[0x22AAC47E0](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v10 = MEMORY[0x277D84FA0];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void *sub_2288CC848(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  sub_2288CD190(0, &unk_27D85B530, MEMORY[0x277D10090]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v42 = sub_22892EA08();
  v10 = *(*(v42 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v42 - 8);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v33 - v14;
  v34 = v13;
  v15 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = (v13 + 32);
  v38 = (v13 + 48);

  v21 = 0;
  v44 = MEMORY[0x277D84F90];
  v35 = a3;
  if (v18)
  {
LABEL_10:
    while (1)
    {
      v23 = (*(a3 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v18)))));
      v24 = v23[1];
      v43[0] = *v23;
      v43[1] = v24;

      v40(v43);
      if (v4)
      {
        break;
      }

      v18 &= v18 - 1;

      v25 = v42;
      if ((*v38)(v9, 1, v42) == 1)
      {
        result = sub_2288CD0A4(v9, &unk_27D85B530, MEMORY[0x277D10090]);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v36 = 0;
        v26 = v9;
        v27 = *v37;
        v28 = v33;
        v29 = v26;
        (*v37)(v33);
        (v27)(v39, v28, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2288D62B8(0, v44[2] + 1, 1, v44);
        }

        v31 = v44[2];
        v30 = v44[3];
        v4 = v36;
        if (v31 >= v30 >> 1)
        {
          v44 = sub_2288D62B8(v30 > 1, v31 + 1, 1, v44);
        }

        v32 = v44;
        v44[2] = v31 + 1;
        result = (v27)(v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v39, v42);
        a3 = v35;
        v9 = v29;
        if (!v18)
        {
          goto LABEL_6;
        }
      }
    }

    return v44;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return v44;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288CCBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = sub_22892EFA8();
  v45 = *(v54 - 8);
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v54);
  v53 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v43 - v7;
  v8 = sub_22892EA08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = sub_22892E358();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E348();
  v21 = [v2 categoryIdentifiers];
  v22 = sub_22892F2A8();

  v56 = v20;
  v23 = sub_2288CC848(sub_2288CD15C, v55, v22);

  v24 = v20;
  v25 = v23;
  (*(v17 + 8))(v24, v16);
  v26 = v23[2];
  if (v26)
  {
    v27 = *(v9 + 16);
    v49 = v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v50 = v27;
    v51 = v9 + 16;
    result = (v27)(v15);
    if (v26 == 1)
    {
LABEL_3:

      (*(v9 + 32))(a1, v15, v8);
      return (*(v9 + 56))(a1, 0, 1, v8);
    }

    else
    {
      v29 = (v45 + 8);
      v44 = (v9 + 32);
      v45 = v9 + 8;
      v30 = 1;
      v47 = v25;
      v48 = a1;
      v46 = v26;
      while (v30 < v25[2])
      {
        v50(v13, &v49[*(v9 + 72) * v30], v8);
        v31 = v13;
        v32 = v52;
        v33 = v15;
        sub_22892E9A8();
        v34 = v53;
        sub_22892E9A8();
        v35 = sub_22892EEE8();
        v36 = *v29;
        v37 = v34;
        v38 = v8;
        v39 = v9;
        v40 = v54;
        (*v29)(v37, v54);
        v41 = v40;
        v9 = v39;
        v36(v32, v41);
        v42 = *(v39 + 8);
        if (v35)
        {
          v42(v33, v38);
          result = (*v44)(v33, v31, v38);
        }

        else
        {
          result = (v42)(v31, v38);
        }

        v25 = v47;
        a1 = v48;
        v8 = v38;
        v15 = v33;
        v13 = v31;
        if (v46 == ++v30)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {

    return (*(v9 + 56))(a1, 1, 1, v8);
  }

  return result;
}

unint64_t sub_2288CD058()
{
  result = qword_2813DEB30;
  if (!qword_2813DEB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEB30);
  }

  return result;
}

uint64_t sub_2288CD0A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2288CD190(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288CD100(uint64_t a1)
{
  v2 = type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288CD15C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  return sub_22892E338();
}

void sub_2288CD190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288CD218()
{
  sub_22892DEF8();
  if (v0 <= 0x3F)
  {
    sub_2288B5C84(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_2288CD2A4(uint64_t a1)
{
  sub_2288CD8F0(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892DDC8();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - v9;
  sub_2288B5C84(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = sub_22892DEF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v56 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v55 = &v54 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v58 = &v54 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v54 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v54 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v54 - v34;
  v65 = a1;
  sub_2288CD924(a1, MEMORY[0x277D0FF30], v18);
  v36 = *(v20 + 48);
  if (v36(v18, 1, v19) == 1)
  {
    v37 = v64;
    sub_2288CE4B4(v18, sub_2288B5C84);
  }

  else
  {
    (*(v20 + 32))(v35, v18, v19);
    sub_2288CE514();
    v37 = v64;
    v38 = sub_22892F038();
    (*(v20 + 8))(v35, v19);
    if (v38)
    {
      return 1;
    }
  }

  sub_2288CD924(v65, MEMORY[0x277D0FF48], v16);
  if (v36(v16, 1, v19) == 1)
  {
    sub_2288CE4B4(v16, sub_2288B5C84);
  }

  else
  {
    (*(v20 + 32))(v33, v16, v19);
    v39 = *(v37 + *(type metadata accessor for SleepingSampleCacheRange() + 24));
    sub_22892DE98();
    v40 = sub_22892DE68();
    v41 = *(v20 + 8);
    v41(v30, v19);
    v41(v33, v19);
    if (v40)
    {
      return 1;
    }
  }

  v42 = type metadata accessor for SleepingSampleCacheRange();
  v43 = v63;
  sub_2288CE56C(v37 + *(v42 + 20), v63, sub_2288B5C84);
  if (v36(v43, 1, v19) == 1)
  {
    v44 = sub_2288B5C84;
LABEL_11:
    sub_2288CE4B4(v43, v44);
    return 0;
  }

  v45 = v58;
  (*(v20 + 32))(v58, v43, v19);
  v43 = v60;
  sub_2288CDB5C(v65, v60);
  v47 = v61;
  v46 = v62;
  if ((*(v61 + 48))(v43, 1, v62) == 1)
  {
    (*(v20 + 8))(v45, v19);
    v44 = sub_2288CD8F0;
    goto LABEL_11;
  }

  (*(v47 + 32))(v59, v43, v46);
  v49 = *(v20 + 16);
  v49(v55, v37, v19);
  v49(v56, v45, v19);
  v50 = v57;
  sub_22892DD88();
  v51 = v59;
  v52 = sub_22892DD28();
  v53 = *(v47 + 8);
  v53(v50, v46);
  v53(v51, v46);
  (*(v20 + 8))(v45, v19);
  return (v52 & 1) != 0;
}

uint64_t sub_2288CD924@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22892E508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892DDC8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a2, v6);
  v16 = sub_22892E4E8();
  (*(v7 + 8))(v10, v6);
  if (*(a1 + 16) && (v17 = sub_22891C6FC(v16), (v18 & 1) != 0))
  {
    (*(v12 + 16))(v15, *(a1 + 56) + *(v12 + 72) * v17, v11);

    sub_22892DD78();
    (*(v12 + 8))(v15, v11);
    v19 = 0;
  }

  else
  {

    v19 = 1;
  }

  v20 = sub_22892DEF8();
  return (*(*(v20 - 8) + 56))(a3, v19, 1, v20);
}

uint64_t sub_2288CDB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_22892DDC8();
  v95 = *(v3 - 8);
  v4 = *(v95 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v93 = &v79 - v8;
  MEMORY[0x28223BE20](v7);
  v92 = &v79 - v9;
  sub_2288CD8F0(0);
  v83 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v96 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v85 = &v79 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - v22;
  v24 = sub_22892E508();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v81 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v79 = &v79 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v79 - v31;
  sub_2288BBF48(0, &qword_2813DEA10, sub_2288CD8F0, MEMORY[0x277D84560]);
  v33 = *(v11 + 72);
  v34 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v94 = v33;
  v82 = swift_allocObject();
  v86 = v82 + v34;
  v35 = v25[13];
  v35(v32, *MEMORY[0x277D0FF50], v24);
  v36 = sub_22892E4E8();
  v97 = v25[1];
  v88 = (v25 + 1);
  (v97)(v32, v24);
  if (*(a1 + 16))
  {
    v37 = sub_22891C6FC(v36);
    if (v38)
    {
      (*(v95 + 16))(v86, *(a1 + 56) + *(v95 + 72) * v37, v3);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 1;
  }

  v40 = 1;
  v90 = *(v95 + 56);
  v91 = v95 + 56;
  v90(v86, v39, 1, v3);

  v41 = v79;
  v35(v79, *MEMORY[0x277D0FF38], v24);
  v42 = sub_22892E4E8();
  (v97)(v41, v24);
  v43 = *(a1 + 16);
  v80 = a1;
  if (v43)
  {
    v44 = a1;
    v45 = v42;
    v46 = sub_22891C6FC(v42);
    if (v47)
    {
      (*(v95 + 16))(&v94[v86], *(v44 + 56) + *(v95 + 72) * v46, v3);
      v40 = 0;
    }
  }

  else
  {
    v45 = v42;
  }

  v48 = v94;
  v49 = v86;
  v90(&v94[v86], v40, 1, v3);

  v50 = v49 + 2 * v48;
  v51 = v81;
  v35(v81, *MEMORY[0x277D0FF40], v24);
  v52 = sub_22892E4E8();
  (v97)(v51, v24);
  v53 = v80;
  if (!*(v80 + 16))
  {
    v55 = v96;
    goto LABEL_14;
  }

  v54 = sub_22891C6FC(v52);
  v55 = v96;
  if ((v56 & 1) == 0)
  {
LABEL_14:
    v57 = 1;
    goto LABEL_15;
  }

  (*(v95 + 16))(v50, *(v53 + 56) + *(v95 + 72) * v54, v3);
  v57 = 0;
LABEL_15:
  v90(v50, v57, 1, v3);

  v97 = (v95 + 48);
  v58 = (v95 + 32);
  v59 = MEMORY[0x277D84F90];
  v60 = 3;
  v61 = v86;
  v88 = v19;
  do
  {
    sub_2288CE56C(v61, v23, sub_2288CD8F0);
    sub_2288CE5D4(v23, v19);
    v62 = *v97;
    if ((*v97)(v19, 1, v3) == 1)
    {
      sub_2288CE4B4(v19, sub_2288CD8F0);
    }

    else
    {
      v63 = v23;
      v64 = *v58;
      (*v58)(v93, v19, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_2288D62E4(0, *(v59 + 2) + 1, 1, v59);
      }

      v66 = *(v59 + 2);
      v65 = *(v59 + 3);
      if (v66 >= v65 >> 1)
      {
        v59 = sub_2288D62E4(v65 > 1, v66 + 1, 1, v59);
      }

      *(v59 + 2) = v66 + 1;
      v64(&v59[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v66], v93, v3);
      v55 = v96;
      v19 = v88;
      v23 = v63;
    }

    v61 += v94;
    --v60;
  }

  while (v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v67 = v85;
  v90(v85, 1, 1, v3);
  v68 = v84;
  sub_2288CE56C(v67, v84, sub_2288CD8F0);
  v69 = *(v59 + 2);
  if (v69)
  {
    v70 = *(v95 + 16);
    v71 = &v59[(*(v95 + 80) + 32) & ~*(v95 + 80)];
    v93 = *(v95 + 72);
    v94 = v70;
    v95 += 16;
    v88 = (v95 - 8);
    (v70)(v92, v71, v3);
    while (1)
    {
      sub_2288CE56C(v68, v55, sub_2288CD8F0);
      if (v62(v55, 1, v3) == 1)
      {
        sub_2288CE4B4(v68, sub_2288CD8F0);
        v72 = v92;
        sub_2288CE4B4(v55, sub_2288CD8F0);
        v73 = v72;
      }

      else
      {
        v76 = v87;
        sub_22892DDB8();
        sub_2288CE4B4(v68, sub_2288CD8F0);
        v77 = *v88;
        (*v88)(v96, v3);
        v77(v92, v3);
        v72 = v92;
        v73 = v76;
        v55 = v96;
      }

      v74 = v3;
      v75 = v89;
      (*v58)(v89, v73, v74);
      v90(v75, 0, 1, v74);
      sub_2288CE5D4(v75, v68);
      v71 = &v93[v71];
      --v69;
      v3 = v74;
      if (!v69)
      {
        break;
      }

      (v94)(v72, v71, v74);
    }
  }

  return sub_2288CE4B4(v85, sub_2288CD8F0);
}

uint64_t sub_2288CE4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2288CE514()
{
  result = qword_2813DFEE8;
  if (!qword_2813DFEE8)
  {
    sub_22892DEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DFEE8);
  }

  return result;
}

uint64_t sub_2288CE56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288CE5D4(uint64_t a1, uint64_t a2)
{
  sub_2288CD8F0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288CE64C()
{
  v1 = *v0;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v1);
  return sub_22892F8C8();
}

uint64_t sub_2288CE6C0()
{
  v1 = *v0;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v1);
  return sub_22892F8C8();
}

void *sub_2288CE74C(void *a1)
{
  v198[55] = *MEMORY[0x277D85DE8];
  v3 = sub_22892E778();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BB4E0();
  v178 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v170 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v167 = &v141 - v11;
  sub_2288B5D1C();
  v166 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v177 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22892E478();
  v171 = *(v15 - 8);
  v172 = v15;
  v16 = *(v171 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v168 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v169 = &v141 - v19;
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v173 = &v141 - v22;
  v23 = sub_22892DEF8();
  v24 = *(v23 - 8);
  v179 = v23;
  v180 = v24;
  v25 = *(v24 + 8);
  MEMORY[0x28223BE20](v23);
  v185 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22892EFA8();
  v183 = *(v27 - 8);
  v28 = *(v183 + 8);
  v29 = MEMORY[0x28223BE20](v27);
  v174 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v176 = &v141 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v175 = &v141 - v34;
  MEMORY[0x28223BE20](v33);
  v184 = &v141 - v35;
  v36 = sub_22892E048();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v182 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v141 - v41;
  v43 = [a1 healthDataSource];
  if (!v43)
  {
    v69 = sub_22892E368();
    sub_2288D3E28(&qword_27D85B3D0, MEMORY[0x277D0FE20]);
    swift_allocError();
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D0FE18], v69);
    swift_willThrow();
    goto LABEL_16;
  }

  v186 = v43;
  v163 = v37;
  v164 = v42;
  v165 = v36;
  v44 = [a1 healthDataSource];
  if (!v44 || (v45 = [v44 featureStatusProviderForIdentifier_], swift_unknownObjectRelease(), !v45))
  {
    sub_2288D1A9C();
    swift_allocError();
    *v68 = 4;
LABEL_12:
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v160 = v6;
  v161 = v27;
  v189[0] = 0;
  v6 = [v45 featureStatusWithError_];
  swift_unknownObjectRelease();
  v162 = v6;
  if (!v6)
  {
    v74 = v189[0];
    sub_22892DE38();

    goto LABEL_12;
  }

  v46 = v189[0];
  v47 = [a1 healthDataSource];
  if (!v47 || (v48 = [v47 featureStatusProviderForIdentifier_], swift_unknownObjectRelease(), !v48))
  {
    sub_2288D1A9C();
    swift_allocError();
    *v71 = 3;
LABEL_15:
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v189[0] = 0;
  v6 = [v48 featureStatusWithError_];
  swift_unknownObjectRelease();
  v49 = v189[0];
  if (!v6)
  {
    v75 = v189[0];
    sub_22892DE38();

    goto LABEL_15;
  }

  v50 = v1[3];
  if (v50)
  {
    v158 = v6;
    v51 = v189[0];
    v159 = v50;
    v52 = [a1 environmentDataSource];
    v53 = [v52 calendarCache];

    v54 = [v53 currentCalendar];
    v55 = v164;
    sub_22892E018();

    v56 = [a1 environmentDataSource];
    v57 = [v56 currentDate];

    v6 = v185;
    sub_22892DEC8();

    v58 = v163;
    v59 = v163 + 16;
    v60 = *(v163 + 16);
    v60(v182, v55, v165);
    v61 = v184;
    sub_22892EF48();
    v157 = v1;
    v62 = v1[7];
    v63 = v181;
    v64 = sub_2288CF9F4();
    if (v63)
    {
      swift_unknownObjectRelease();

      (*(v183 + 1))(v61, v161);
      (*(v58 + 8))(v164, v165);
    }

    else
    {
      v149 = v60;
      v150 = v59;
      v146 = v64;
      v154 = v65;
      v155 = v67;
      v181 = v66;
      v78 = [a1 environmentDataSource];
      v79 = [v78 activePairedDeviceProductType];

      v80 = v161;
      if (v79)
      {
        v153 = sub_22892F0C8();
        v156 = v81;
      }

      else
      {
        v153 = 0;
        v156 = 0;
      }

      v82 = v185;
      v83 = v179;
      v84 = [a1 environmentDataSource];
      v85 = [v84 currentDate];

      sub_22892DEC8();
      v86 = sub_22892DE58();
      v147 = *(v180 + 1);
      v148 = v180 + 8;
      v147(v82, v83);
      v189[0] = 0;
      v87 = [v186 ageWithCurrentDate:v86 error:v189];

      v152 = v87;
      if (v87)
      {
        v88 = v189[0];
        v151 = [v87 integerValue];
      }

      else
      {
        v89 = v189[0];
        v90 = sub_22892DE38();

        swift_willThrow();
        v151 = 0;
      }

      v6 = v157;
      v189[0] = 0;
      v91 = [v186 biologicalSexWithError_];
      if (v91)
      {
        v92 = v91;
        v93 = v189[0];
        v94 = HKAnalyticsPropertyValueForBiologicalSex();

        v145 = sub_22892F0C8();
        v179 = v95;

        v96 = [a1 environmentDataSource];
        v144 = [v96 isImproveHealthAndActivityEnabled];

        if (v181)
        {
          v143 = [v181 sleepTracking];
        }

        else
        {
          v143 = 2;
        }

        v98 = v6[2];
        v99 = sub_2288CFB2C(v98);
        v100 = [a1 environmentDataSource];
        v101 = v173;
        v142 = v157[6];
        sub_22892E248();
        if ((*(v180 + 6))(v101, 1, v83) == 1)
        {
          v102 = 0;
        }

        else
        {
          v102 = sub_22892DE58();
          v147(v101, v83);
        }

        v103 = v175;
        v104 = [v100 bucketedNumberOfWeeksSinceDate_];

        v105 = v157;
        if (v104)
        {
          v106 = [v104 integerValue];
        }

        else
        {
          v106 = 0;
        }

        *&v190 = v153;
        *(&v190 + 1) = v156;
        *&v191 = v151;
        BYTE8(v191) = v152 == 0;
        *&v192 = v145;
        *(&v192 + 1) = v179;
        LOBYTE(v193[0]) = v144;
        BYTE1(v193[0]) = v143;
        *(&v193[0] + 1) = v99;
        *&v193[1] = v106;
        BYTE8(v193[1]) = v104 == 0;
        v107 = v191;
        v108 = v192;
        v196[2] = v192;
        v197[0] = v193[0];
        v109 = v190;
        v196[0] = v190;
        v196[1] = v191;
        *(v197 + 9) = *(v193 + 9);
        *(v195 + 9) = *(v105 + 121);
        v110 = v105[7];
        v194[2] = v105[6];
        v195[0] = v110;
        v111 = v105[5];
        v194[0] = v105[4];
        v194[1] = v111;
        *(v105 + 121) = *(v193 + 9);
        v112 = v193[0];
        v105[6] = v108;
        v105[7] = v112;
        v105[4] = v109;
        v105[5] = v107;
        sub_2288D1AF0(&v190, v189);
        sub_2288D3FEC(v194, sub_2288D1B4C);
        v175 = v98;
        v113 = v176;
        sub_22892EED8();
        sub_22892EF18();
        v114 = v183 + 8;
        v115 = *(v183 + 1);
        v116 = v161;
        v115(v113, v161);
        v117 = v174;
        sub_22892EED8();
        sub_22892EF18();
        v179 = v115;
        v180 = v114;
        v115(v117, v116);
        sub_2288D3E28(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
        if ((sub_22892F048() & 1) == 0)
        {
          __break(1u);
        }

        v118 = *(v183 + 4);
        v119 = v167;
        v118(v167, v103, v116);
        v120 = v178;
        v118((v119 + *(v178 + 48)), v113, v116);
        v183 = sub_2288BB4E0;
        v121 = v170;
        sub_2288D3F1C(v119, v170, sub_2288BB4E0);
        v122 = *(v120 + 48);
        v118(v177, v121, v116);
        v123 = v179;
        v179(v121 + v122, v116);
        sub_2288D3F84(v119, v121, v183);
        v118(&v177[*(v166 + 36)], (v121 + *(v178 + 48)), v116);
        v123(v121, v116);
        v149(v182, v164, v165);
        v124 = v169;
        sub_22892E428();
        v126 = v171;
        v125 = v172;
        (*(v171 + 16))(v168, v124, v172);
        sub_22892E738();
        v127 = v160;
        sub_22892E6F8();
        v128 = v185;
        sub_22892DED8();
        v129 = sub_2288B7B40(v175, v127, v128);
        (*(v126 + 8))(v124, v125);
        sub_228909BAC(v198);
        v130 = v157;

        sub_2288CFE74(v198, v129, v130, v189);
        memcpy(__src, v189, sizeof(__src));
        memcpy(v188, v189, sizeof(v188));
        nullsub_1(v188);
        memcpy(v130 + 18, v188, 0x1B8uLL);
        v131 = v130[5];
        LODWORD(v122) = HKIsFitnessTrackingEnabled();
        LOBYTE(v128) = [objc_opt_self() isWristDetectEnabled];
        v132 = v130[4];
        v133 = [v159 areHealthNotificationsAuthorized];
        v134 = v158;
        v140 = v128;
        v135 = v131;
        v137 = v154;
        v136 = v155;
        v138 = v181;
        v139 = sub_2288D1D64(v196, v142, v135, v146 & 1, v154, v181, v155, v122, v140, v158, v162, v132, v133, __src);
        sub_2288D3E70(&v190);
        v6 = sub_2288DB7D0(v139);
        swift_unknownObjectRelease();

        v179(v184, v161);
        (*(v163 + 8))(v164, v165);
      }

      else
      {
        v97 = v189[0];

        sub_22892DE38();

        swift_willThrow();
        swift_unknownObjectRelease();

        (*(v183 + 1))(v184, v80);
        (*(v163 + 8))(v164, v165);
      }
    }
  }

  else
  {
    sub_2288D1A9C();
    swift_allocError();
    *v76 = 1;
    swift_willThrow();
    v77 = v49;
    swift_unknownObjectRelease();
  }

LABEL_16:
  v72 = *MEMORY[0x277D85DE8];
  return v6;
}