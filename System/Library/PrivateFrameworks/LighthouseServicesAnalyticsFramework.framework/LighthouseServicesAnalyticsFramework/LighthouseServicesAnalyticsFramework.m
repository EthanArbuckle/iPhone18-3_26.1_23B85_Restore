uint64_t sub_255F5AF78()
{
  v0 = sub_255F60B08();
  __swift_allocate_value_buffer(v0, qword_27F81AEE0);
  __swift_project_value_buffer(v0, qword_27F81AEE0);
  return sub_255F60AF8();
}

LighthouseServicesAnalyticsFramework::SQLQueryResultFieldType_optional __swiftcall SQLQueryResultFieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F60BD8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SQLQueryResultFieldType.rawValue.getter()
{
  v1 = 7630441;
  v2 = 0x676E69727473;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 0x656C62756F64;
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

uint64_t sub_255F5B0E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7630441;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E69727473;
    }

    else
    {
      v4 = 1819242338;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C62756F64;
    }

    else
    {
      v4 = 7630441;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (a2 != 2)
  {
    v8 = 1819242338;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656C62756F64;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255F60BE8();
  }

  return v11 & 1;
}

uint64_t sub_255F5B1FC()
{
  v1 = *v0;
  sub_255F60C58();
  sub_255F60B28();

  return sub_255F60C78();
}

uint64_t sub_255F5B2A8()
{
  *v0;
  *v0;
  *v0;
  sub_255F60B28();
}

uint64_t sub_255F5B340()
{
  v1 = *v0;
  sub_255F60C58();
  sub_255F60B28();

  return sub_255F60C78();
}

void sub_255F5B3F4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7630441;
  v4 = 0xE600000000000000;
  v5 = 0x676E69727473;
  if (*v1 != 2)
  {
    v5 = 1819242338;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C62756F64;
    v2 = 0xE600000000000000;
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

uint64_t AnalyticsWorker.runQuery(token:userId:query:keysToFieldTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_255F5B49C, 0, 0);
}

uint64_t sub_255F5B49C()
{
  if (sub_255F60B58())
  {
    if (qword_27F81AD80 != -1)
    {
      swift_once();
    }

    v1 = sub_255F60B08();
    __swift_project_value_buffer(v1, qword_27F81AEE0);
    v2 = sub_255F60AE8();
    v3 = sub_255F60B68();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_255F5A000, v2, v3, "Lighthouse Analytics Worker asked to stop!", v4, 2u);
      MEMORY[0x259C53850](v4, -1, -1);
    }

    sub_255F60B48();
    sub_255F5E5D4(&qword_27F81AD88, MEMORY[0x277D85678]);
    swift_allocError();
    sub_255F60B18();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[7];
    v8 = v0[8];

    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_255F5B6C4;
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return sub_255F5CC70(v15, v12, v16, v14, v13, v10, v11);
  }
}

uint64_t sub_255F5B6C4(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_255F5B7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a1;
  v5[41] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81ADC0, &qword_255F610F8);
  v5[42] = v8;
  v9 = *(v8 - 8);
  v5[43] = v9;
  v10 = *(v9 + 64) + 15;
  v5[44] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81ADC8, &qword_255F61100);
  v5[45] = v11;
  v12 = *(v11 - 8);
  v5[46] = v12;
  v13 = *(v12 + 64) + 15;
  v5[47] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81ADD0, &qword_255F61108);
  v5[48] = v14;
  v15 = *(v14 - 8);
  v5[49] = v15;
  v16 = *(v15 + 64) + 15;
  v5[50] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81ADD8, &qword_255F61110);
  v5[51] = v17;
  v18 = *(v17 - 8);
  v5[52] = v18;
  v19 = *(v18 + 64) + 15;
  v5[53] = swift_task_alloc();
  v20 = sub_255F60AD8();
  v5[54] = v20;
  v21 = *(v20 - 8);
  v5[55] = v21;
  v22 = *(v21 + 64) + 15;
  v5[56] = swift_task_alloc();
  v23 = sub_255F60A58();
  v5[57] = v23;
  v24 = *(v23 - 8);
  v5[58] = v24;
  v25 = *(v24 + 64) + 15;
  v5[59] = swift_task_alloc();
  v26 = swift_task_alloc();
  v5[60] = v26;
  v27 = *(MEMORY[0x277D37728] + 4);
  v28 = swift_task_alloc();
  v5[61] = v28;
  *v28 = v5;
  v28[1] = sub_255F5BAE4;

  return MEMORY[0x282197BB8](a3, a4, v26);
}

uint64_t sub_255F5BAE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v7 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v5 = sub_255F5C8DC;
  }

  else
  {
    v5 = sub_255F5BBF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_255F5BBF8(unint64_t a1)
{
  v2 = *(v1 + 496);
  v127 = *(v2 + 16);
  if (!v127)
  {

    v7 = MEMORY[0x277D84F90];
LABEL_74:
    v84 = *(v1 + 472);
    v83 = *(v1 + 480);
    v85 = *(v1 + 448);
    v86 = *(v1 + 424);
    v87 = *(v1 + 400);
    v88 = *(v1 + 376);
    v89 = *(v1 + 352);
    **(v1 + 320) = v7;

    v90 = *(v1 + 8);
LABEL_83:

    return v90();
  }

  v3 = 0;
  v124 = (v1 + 248);
  v4 = *(v1 + 440);
  v133 = *(v1 + 328);
  v5 = v133 + 64;
  v128 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v117 = (*(v1 + 344) + 8);
  v116 = (*(v1 + 368) + 8);
  v115 = (*(v1 + 392) + 8);
  v121 = (*(v1 + 416) + 8);
  v129 = v4;
  v126 = (v4 + 8);
  v6 = *(v1 + 504);
  v113 = (v1 + 336);
  v114 = (v1 + 352);
  v111 = (v1 + 360);
  v112 = (v1 + 376);
  v109 = (v1 + 384);
  v110 = (v1 + 400);
  v118 = (v1 + 408);
  v119 = (v1 + 424);
  v7 = MEMORY[0x277D84F90];
  v108 = *(v1 + 496);
  v122 = (v1 + 120);
  v123 = (v1 + 56);
  v120 = (v1 + 184);
LABEL_3:
  if (v3 < *(v2 + 16))
  {
    v8 = *(v1 + 328);
    v130 = v3 + 1;
    v131 = v7;
    (*(v129 + 16))(*(v1 + 448), v128 + *(v129 + 72) * v3, *(v1 + 432));
    v9 = sub_255F5F0C8(MEMORY[0x277D84F90]);
    v10 = -1 << *(v133 + 32);
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v133 + 64);
    v13 = (63 - v10) >> 6;

    v14 = 0;
    v132 = v13;
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_87;
          }

          if (v18 >= v13)
          {
            break;
          }

          v12 = *(v5 + 8 * v18);
          ++v14;
          if (v12)
          {
            v134 = v6;
            v14 = v18;
            goto LABEL_17;
          }
        }

        v80 = *(v1 + 328);

        v7 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_255F5E3F0(0, v131[2] + 1, 1, v131);
        }

        v2 = v108;
        v82 = v7[2];
        v81 = v7[3];
        if (v82 >= v81 >> 1)
        {
          v7 = sub_255F5E3F0((v81 > 1), v82 + 1, 1, v7);
        }

        a1 = (*v126)(*(v1 + 448), *(v1 + 432));
        v7[2] = v82 + 1;
        v7[v82 + 4] = v9;
        v3 = v130;
        if (v130 == v127)
        {
          v107 = *(v1 + 496);

          goto LABEL_74;
        }

        goto LABEL_3;
      }

      v134 = v6;
LABEL_17:
      v19 = __clz(__rbit64(v12)) | (v14 << 6);
      v20 = (*(v133 + 48) + 16 * v19);
      v135 = *v20;
      v136 = v20[1];
      v21 = *(*(v133 + 56) + v19);
      v22 = *(v1 + 448);
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          v54 = *(v1 + 352);
          v55 = *(v1 + 336);
          sub_255F5F238(&qword_27F81ADE8, &qword_27F81ADC0, &qword_255F610F8);
          swift_bridgeObjectRetain_n();
          sub_255F60AB8();
          *(v1 + 80) = MEMORY[0x277D839B0];
          v35 = v123;
          sub_255F60AC8();
          if (v134)
          {
            v92 = v113;
            v91 = v114;
            v93 = v117;
LABEL_82:
            v94 = *(v1 + 496);
            (*v93)(*v91, *v92);

            __swift_deallocate_boxed_opaque_existential_0(v35);
            v95 = *(v1 + 448);
            v96 = *(v1 + 432);
            v97 = *(v1 + 328);
            sub_255F5E39C();
            swift_allocError();
            *v98 = 1;
            *(v98 + 8) = 1;
            swift_willThrow();
            MEMORY[0x259C537A0](v134);

            (*v126)(v95, v96);
            v100 = *(v1 + 472);
            v99 = *(v1 + 480);
            v101 = *(v1 + 448);
            v102 = *(v1 + 424);
            v103 = *(v1 + 400);
            v104 = *(v1 + 376);
            v105 = *(v1 + 352);

            v90 = *(v1 + 8);
            goto LABEL_83;
          }

          (*v117)(*v114, *v113);
          sub_255F5F228(v123, (v1 + 88));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139 = v9;
          a1 = sub_255F60164(v135, v136);
          v58 = v9;
          v59 = v9[2];
          v60 = (v57 & 1) == 0;
          v29 = __OFADD__(v59, v60);
          v61 = v59 + v60;
          if (v29)
          {
            goto LABEL_89;
          }

          v62 = v57;
          if (v58[3] < v61)
          {
            sub_255F5EC6C(v61, isUniquelyReferenced_nonNull_native);
            a1 = sub_255F60164(v135, v136);
            v13 = v132;
            if ((v62 & 1) != (v63 & 1))
            {
LABEL_75:
              a1 = MEMORY[0x277D837D0];

              return MEMORY[0x2821FE290](a1);
            }

            goto LABEL_52;
          }

          v13 = v132;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_52:
            v5 = v133 + 64;
            if (v62)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v77 = a1;
            sub_255F5EF24();
            a1 = v77;
            v13 = v132;
            v5 = v133 + 64;
            if (v62)
            {
LABEL_53:
              v69 = a1;

              v9 = v139;
              v16 = (v139[7] + 32 * v69);
              __swift_destroy_boxed_opaque_existential_1Tm(v16);
              v17 = (v1 + 88);
              goto LABEL_9;
            }
          }

          v9 = v139;
          v139[(a1 >> 6) + 8] |= 1 << a1;
          v78 = (v139[6] + 16 * a1);
          *v78 = v135;
          v78[1] = v136;
          a1 = sub_255F5F228((v1 + 88), (v139[7] + 32 * a1));
          v79 = v139[2];
          v29 = __OFADD__(v79, 1);
          v66 = v79 + 1;
          if (v29)
          {
            goto LABEL_95;
          }

          goto LABEL_66;
        }

        v33 = *(v1 + 376);
        v34 = *(v1 + 360);
        sub_255F5F238(&qword_27F81ADF0, &qword_27F81ADC8, &qword_255F61100);
        swift_bridgeObjectRetain_n();
        sub_255F60AB8();
        *(v1 + 144) = MEMORY[0x277D837D0];
        v35 = v122;
        sub_255F60AC8();
        if (v134)
        {
          v92 = v111;
          v91 = v112;
          v93 = v116;
          goto LABEL_82;
        }

        (*v116)(*v112, *v111);
        sub_255F5F228(v122, (v1 + 152));
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v9;
        a1 = sub_255F60164(v135, v136);
        v38 = v9;
        v39 = v9[2];
        v40 = (v37 & 1) == 0;
        v29 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v29)
        {
          goto LABEL_88;
        }

        v42 = v37;
        if (v38[3] < v41)
        {
          sub_255F5EC6C(v41, v36);
          a1 = sub_255F60164(v135, v136);
          v13 = v132;
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_75;
          }

          goto LABEL_46;
        }

        v13 = v132;
        if (v36)
        {
LABEL_46:
          v5 = v133 + 64;
          if (v42)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v71 = a1;
          sub_255F5EF24();
          a1 = v71;
          v13 = v132;
          v5 = v133 + 64;
          if (v42)
          {
LABEL_47:
            v67 = a1;

            v9 = v137;
            v16 = (v137[7] + 32 * v67);
            __swift_destroy_boxed_opaque_existential_1Tm(v16);
            v17 = (v1 + 152);
            goto LABEL_9;
          }
        }

        v9 = v137;
        v137[(a1 >> 6) + 8] |= 1 << a1;
        v72 = (v137[6] + 16 * a1);
        *v72 = v135;
        v72[1] = v136;
        a1 = sub_255F5F228((v1 + 152), (v137[7] + 32 * a1));
        v73 = v137[2];
        v29 = __OFADD__(v73, 1);
        v66 = v73 + 1;
        if (v29)
        {
          goto LABEL_92;
        }

        goto LABEL_66;
      }

      if (v21)
      {
        v44 = *(v1 + 400);
        v45 = *(v1 + 384);
        sub_255F5F238(&qword_27F81ADF8, &qword_27F81ADD0, &qword_255F61108);
        swift_bridgeObjectRetain_n();
        sub_255F60AB8();
        *(v1 + 208) = MEMORY[0x277D839F8];
        v35 = v120;
        sub_255F60AC8();
        if (v134)
        {
          v92 = v109;
          v91 = v110;
          v93 = v115;
          goto LABEL_82;
        }

        (*v115)(*v110, *v109);
        sub_255F5F228(v120, (v1 + 216));
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v138 = v9;
        a1 = sub_255F60164(v135, v136);
        v48 = v9;
        v49 = v9[2];
        v50 = (v47 & 1) == 0;
        v29 = __OFADD__(v49, v50);
        v51 = v49 + v50;
        if (v29)
        {
          goto LABEL_91;
        }

        v52 = v47;
        if (v48[3] < v51)
        {
          sub_255F5EC6C(v51, v46);
          a1 = sub_255F60164(v135, v136);
          v13 = v132;
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_75;
          }

          goto LABEL_49;
        }

        v13 = v132;
        if (v46)
        {
LABEL_49:
          v5 = v133 + 64;
          if (v52)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v74 = a1;
          sub_255F5EF24();
          a1 = v74;
          v13 = v132;
          v5 = v133 + 64;
          if (v52)
          {
LABEL_50:
            v68 = a1;

            v9 = v138;
            v16 = (v138[7] + 32 * v68);
            __swift_destroy_boxed_opaque_existential_1Tm(v16);
            v17 = (v1 + 216);
            goto LABEL_9;
          }
        }

        v9 = v138;
        v138[(a1 >> 6) + 8] |= 1 << a1;
        v75 = (v138[6] + 16 * a1);
        *v75 = v135;
        v75[1] = v136;
        a1 = sub_255F5F228((v1 + 216), (v138[7] + 32 * a1));
        v76 = v138[2];
        v29 = __OFADD__(v76, 1);
        v66 = v76 + 1;
        if (v29)
        {
          goto LABEL_93;
        }

        goto LABEL_66;
      }

      v23 = *(v1 + 424);
      v24 = *(v1 + 408);
      sub_255F5F238(&qword_27F81AE00, &qword_27F81ADD8, &qword_255F61110);
      swift_bridgeObjectRetain_n();
      v1 = v125;
      sub_255F60AB8();
      *(v125 + 272) = MEMORY[0x277D83B88];
      sub_255F60AC8();
      if (v134)
      {
        v35 = v124;
        v93 = v121;
        v92 = v118;
        v91 = v119;
        goto LABEL_82;
      }

      (*v121)(*v119, *v118);
      sub_255F5F228(v124, (v125 + 280));
      v25 = swift_isUniquelyReferenced_nonNull_native();
      a1 = sub_255F60164(v135, v136);
      v27 = v9[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_90;
      }

      v31 = v26;
      if (v9[3] >= v30)
      {
        v13 = v132;
        if ((v25 & 1) == 0)
        {
          v70 = a1;
          sub_255F5EF24();
          a1 = v70;
          v13 = v132;
          v1 = v125;
          v5 = v133 + 64;
          if (v31)
          {
LABEL_8:
            v15 = a1;

            v16 = (v9[7] + 32 * v15);
            __swift_destroy_boxed_opaque_existential_1Tm(v16);
            v17 = (v1 + 280);
LABEL_9:
            a1 = sub_255F5F228(v17, v16);
            goto LABEL_10;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_255F5EC6C(v30, v25);
        a1 = sub_255F60164(v135, v136);
        v13 = v132;
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_75;
        }
      }

      v5 = v133 + 64;
      if (v31)
      {
        goto LABEL_8;
      }

LABEL_42:
      v9[(a1 >> 6) + 8] |= 1 << a1;
      v64 = (v9[6] + 16 * a1);
      *v64 = v135;
      v64[1] = v136;
      a1 = sub_255F5F228((v1 + 280), (v9[7] + 32 * a1));
      v65 = v9[2];
      v29 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v29)
      {
        goto LABEL_94;
      }

LABEL_66:
      v9[2] = v66;
LABEL_10:
      v6 = 0;
      v12 &= v12 - 1;
    }
  }

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
  __break(1u);
  return MEMORY[0x2821FE290](a1);
}

uint64_t sub_255F5C8DC()
{
  v35 = v0;
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  sub_255F5E5D4(&qword_27F81ADB8, MEMORY[0x277D37708]);
  v5 = swift_allocError();
  (*(v4 + 32))(v6, v1, v3);
  v0[39] = v5;
  MEMORY[0x259C537B0](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81ADE0, &qword_255F61118);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v7 = (*(v0[58] + 88))(v0[59], v0[57]);
  v8 = v0[58];
  v9 = v0[59];
  v10 = v0[57];
  if (v7 != *MEMORY[0x277D37700])
  {
    (*(v8 + 8))(v0[59], v10);
LABEL_8:
    v23 = v0[39];
    goto LABEL_11;
  }

  (*(v8 + 96))(v0[59], v10);
  v11 = *v9;
  sub_255F5E61C((v9 + 1), (v0 + 2));
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v13 = *(v12 + 8);
  v14 = sub_255F60C08();
  v16 = v15;
  if (qword_27F81AD80 != -1)
  {
    swift_once();
  }

  v17 = sub_255F60B08();
  __swift_project_value_buffer(v17, qword_27F81AEE0);

  v18 = sub_255F60AE8();
  v19 = sub_255F60B78();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v11;
    *(v20 + 12) = 2080;
    v22 = sub_255F5E678(v14, v16, &v34);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_255F5A000, v18, v19, "Encountered error when querying over connection(%ld: %s)", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x259C53850](v21, -1, -1);
    MEMORY[0x259C53850](v20, -1, -1);
  }

  else
  {
  }

  sub_255F5E39C();
  swift_allocError();
  *v24 = v11;
  *(v24 + 8) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  MEMORY[0x259C537A0](v0[39]);
  v23 = v5;
LABEL_11:
  MEMORY[0x259C537A0](v23);
  v26 = v0[59];
  v25 = v0[60];
  v27 = v0[56];
  v28 = v0[53];
  v29 = v0[50];
  v30 = v0[47];
  v31 = v0[44];

  v32 = v0[1];

  return v32();
}

uint64_t sub_255F5CC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_255F60A58();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F5CD54, 0, 0);
}

uint64_t sub_255F5CD54()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_255F60AA8();

  v0[15] = sub_255F60A88();
  v0[16] = 0;
  v5 = *(MEMORY[0x277D37718] + 4);

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_255F5D020;
  v7 = v0[14];

  return MEMORY[0x282197BA0](v7);
}

uint64_t sub_255F5D020()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[15];

    return MEMORY[0x2822009F8](sub_255F5D2BC, 0, 0);
  }

  else
  {
    v6 = v2[15];

    v7 = swift_task_alloc();
    v2[18] = v7;
    *v7 = v4;
    v7[1] = sub_255F5D1A8;
    v8 = v2[15];
    v9 = v2[8];
    v10 = v2[9];
    v11 = v2[7];

    return sub_255F5B7C4((v2 + 2), v8, v11, v9, v10);
  }
}

uint64_t sub_255F5D1A8()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_255F5D67C;
  }

  else
  {
    v3 = sub_255F5D524;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255F5D2BC()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  sub_255F5E5D4(&qword_27F81ADB8, MEMORY[0x277D37708]);
  v4 = swift_allocError();
  (*(v3 + 32))(v5, v1, v2);
  if (qword_27F81AD80 != -1)
  {
    swift_once();
  }

  v6 = sub_255F60B08();
  __swift_project_value_buffer(v6, qword_27F81AEE0);
  MEMORY[0x259C537B0](v4);
  v7 = sub_255F60AE8();
  v8 = sub_255F60B78();
  MEMORY[0x259C537A0](v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x259C537B0](v4);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_255F5A000, v7, v8, "Encountered error when creating and opening connection: %@", v9, 0xCu);
    sub_255F5E524(v10);
    MEMORY[0x259C53850](v10, -1, -1);
    MEMORY[0x259C53850](v9, -1, -1);
  }

  v12 = v0[16];
  v14 = v0[8];
  v13 = v0[9];

  sub_255F5E39C();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 1;
  swift_willThrow();
  MEMORY[0x259C537A0](v4);

  if (!v12)
  {
    v16 = v0[15];
  }

  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[12];

  v20 = v0[1];

  return v20();
}

uint64_t sub_255F5D524()
{
  if (qword_27F81AD80 != -1)
  {
    swift_once();
  }

  v1 = sub_255F60B08();
  __swift_project_value_buffer(v1, qword_27F81AEE0);
  v2 = sub_255F60AE8();
  v3 = sub_255F60B68();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255F5A000, v2, v3, "Successfully executed run, closing connection", v4, 2u);
    MEMORY[0x259C53850](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277D37720] + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_255F5D83C;
  v7 = v0[15];
  v8 = v0[13];

  return MEMORY[0x282197BA8](v8);
}

uint64_t sub_255F5D67C()
{
  v1 = v0[19];
  v0[21] = v1;
  if (qword_27F81AD80 != -1)
  {
    swift_once();
  }

  v2 = sub_255F60B08();
  __swift_project_value_buffer(v2, qword_27F81AEE0);
  MEMORY[0x259C537B0](v1);
  v3 = sub_255F60AE8();
  v4 = sub_255F60B78();
  MEMORY[0x259C537A0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    MEMORY[0x259C537B0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_255F5A000, v3, v4, "Encountered error while using connection: %@, closing connection", v5, 0xCu);
    sub_255F5E524(v6);
    MEMORY[0x259C53850](v6, -1, -1);
    MEMORY[0x259C53850](v5, -1, -1);
  }

  v8 = *(MEMORY[0x277D37720] + 4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_255F5DC2C;
  v10 = v0[15];
  v11 = v0[12];

  return MEMORY[0x282197BA8](v11);
}

uint64_t sub_255F5D83C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_255F5D9F8;
  }

  else
  {
    v3 = sub_255F5D94C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255F5D94C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[2];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_255F5D9F8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_255F5E5D4(&qword_27F81ADB8, MEMORY[0x277D37708]);
  v4 = swift_allocError();
  (*(v3 + 32))(v5, v1, v2);
  v6 = v0[2];

  v0[21] = v4;
  if (qword_27F81AD80 != -1)
  {
    swift_once();
  }

  v7 = sub_255F60B08();
  __swift_project_value_buffer(v7, qword_27F81AEE0);
  MEMORY[0x259C537B0](v4);
  v8 = sub_255F60AE8();
  v9 = sub_255F60B78();
  MEMORY[0x259C537A0](v4);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    MEMORY[0x259C537B0](v4);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_255F5A000, v8, v9, "Encountered error while using connection: %@, closing connection", v10, 0xCu);
    sub_255F5E524(v11);
    MEMORY[0x259C53850](v11, -1, -1);
    MEMORY[0x259C53850](v10, -1, -1);
  }

  v13 = *(MEMORY[0x277D37720] + 4);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_255F5DC2C;
  v15 = v0[15];
  v16 = v0[12];

  return MEMORY[0x282197BA8](v16);
}

uint64_t sub_255F5DC2C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_255F5DDEC;
  }

  else
  {
    v3 = sub_255F5DD3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255F5DD3C()
{
  v1 = v0[21];
  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  swift_willThrow();

  v5 = v0[21];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_255F5DDEC()
{
  v1 = v0[21];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  sub_255F5E5D4(&qword_27F81ADB8, MEMORY[0x277D37708]);
  swift_allocError();
  (*(v4 + 32))(v8, v3, v5);
  MEMORY[0x259C537A0](v1);

  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_255F5DF54()
{
  result = qword_27F81AD90;
  if (!qword_27F81AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81AD90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsWorkerError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnalyticsWorkerError(uint64_t result, int a2, int a3)
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

uint64_t sub_255F5E09C(uint64_t a1)
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

uint64_t sub_255F5E0BC(uint64_t result, int a2)
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

uint64_t getEnumTagSinglePayload for SQLQueryResultFieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLQueryResultFieldType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsWorker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AnalyticsWorker(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_255F5E39C()
{
  result = qword_27F81ADA8;
  if (!qword_27F81ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81ADA8);
  }

  return result;
}

void *sub_255F5E3F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE08, &qword_255F61120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE10, &qword_255F61128);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_255F5E524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81ADB0, &qword_255F610E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_255F5E5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255F5E61C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255F5E678(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255F5E790(v11, 0, 0, 1, a1, a2);
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
    sub_255F5F284(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_255F5E790(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255F5E89C(a5, a6);
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
    result = sub_255F60B98();
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

uint64_t sub_255F5E89C(uint64_t a1, unint64_t a2)
{
  v4 = sub_255F5E8E8(a1, a2);
  sub_255F5EA18(&unk_286807078);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255F5E8E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_255F5EB04(v5, 0);
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

  result = sub_255F60B98();
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
        v10 = sub_255F60B38();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255F5EB04(v10, 0);
        result = sub_255F60B88();
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

uint64_t sub_255F5EA18(uint64_t result)
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

  result = sub_255F5EB78(result, v12, 1, v3);
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

void *sub_255F5EB04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE28, &qword_255F61140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255F5EB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE28, &qword_255F61140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_255F5EC6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE18, &qword_255F61130);
  v36 = a2;
  result = sub_255F60BB8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_255F5F228(v25, v37);
      }

      else
      {
        sub_255F5F284(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_255F60C58();
      sub_255F60B28();
      result = sub_255F60C78();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_255F5F228(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_255F5EF24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE18, &qword_255F61130);
  v2 = *v0;
  v3 = sub_255F60BA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_255F5F284(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_255F5F228(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_255F5F0C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE18, &qword_255F61130);
    v3 = sub_255F60BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_255F5F2E0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_255F60164(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255F5F228(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259C53850);
  }

  return result;
}

_OWORD *sub_255F5F228(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255F5F238(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255F5F284(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255F5F2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE20, &qword_255F61138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11TabularData0B5FrameV36LighthouseServicesAnalyticsFrameworkE4rows11typeMappingACSaySDySSypGG_SDySSAD23SQLQueryResultFieldTypeOGtAcDE0N5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56[0] = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE30, &qword_255F61150);
  v5 = *(v68 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v67 = v56 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE38, &qword_255F61158);
  v8 = *(v66 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v65 = v56 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE40, &qword_255F61160);
  v11 = *(v64 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v63 = v56 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE48, &qword_255F61168);
  v14 = *(v62 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v61 = v56 - v16;
  v17 = sub_255F60A38();
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17);
  v75 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255F60A28();
  v21 = 0;
  v76 = a1;
  v77 = a2;
  v24 = *(a2 + 64);
  v23 = a2 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v71 = (a1 + 32);
  v29 = v23;
  v60 = (v5 + 8);
  v59 = (v8 + 8);
  v58 = (v11 + 8);
  v57 = (v14 + 8);
  v72 = v23;
  v73 = v28;
  while (v27)
  {
    v32 = v21;
LABEL_12:
    v33 = __clz(__rbit64(v27)) | (v32 << 6);
    v34 = *(v77 + 56);
    v35 = (*(v77 + 48) + 16 * v33);
    v36 = v35[1];
    v78 = *v35;
    v37 = *(v34 + v33);
    v38 = *(v76 + 16);
    if (v38)
    {
      v74 = *(v34 + v33);
      v81 = MEMORY[0x277D84F90];

      sub_255F60314(0, v38, 0);
      v39 = v81;
      v40 = v71;
      while (1)
      {
        v41 = *v40;
        if (!*(*v40 + 16))
        {
          goto LABEL_18;
        }

        v42 = *v40;

        v43 = sub_255F60164(v78, v36);
        if ((v44 & 1) == 0)
        {
          break;
        }

        sub_255F5F284(*(v41 + 56) + 32 * v43, &v79);

LABEL_19:
        v81 = v39;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_255F60314(v45 > 1, v46 + 1, 1);
          v39 = v81;
        }

        *(v39 + 16) = v46 + 1;
        v47 = v39 + 32 * v46;
        v48 = v80;
        *(v47 + 32) = v79;
        *(v47 + 48) = v48;
        ++v40;
        if (!--v38)
        {
          v29 = v72;
          v37 = v74;
          goto LABEL_24;
        }
      }

LABEL_18:
      v79 = 0u;
      v80 = 0u;
      goto LABEL_19;
    }

    v39 = MEMORY[0x277D84F90];
LABEL_24:
    v27 &= v27 - 1;
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v51 = sub_255F5FDE8(v39);

        if (!v51)
        {
          goto LABEL_34;
        }

        *&v79 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE68, &qword_255F61178);
        sub_255F60388(&qword_27F81AE70, &qword_27F81AE68, &qword_255F61178);
        v52 = v65;
        sub_255F60A48();
        sub_255F609F8();
        result = (*v59)(v52, v66);
      }

      else
      {
        v53 = sub_255F5FF10(v39);

        if (!v53)
        {
LABEL_34:

          sub_255F60334();
          swift_willThrowTypedImpl();

          return (*(v69 + 8))(v75, v70);
        }

        *&v79 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE58, &qword_255F61170);
        sub_255F60388(&qword_27F81AE60, &qword_27F81AE58, &qword_255F61170);
        v54 = v67;
        sub_255F60A48();
        sub_255F609F8();
        result = (*v60)(v54, v68);
      }
    }

    else if (v37)
    {
      v30 = sub_255F5FCC0(v39);

      if (!v30)
      {
        goto LABEL_34;
      }

      *&v79 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE78, &qword_255F61180);
      sub_255F60388(&qword_27F81AE80, &qword_27F81AE78, &qword_255F61180);
      v31 = v63;
      sub_255F60A48();
      sub_255F609F8();
      result = (*v58)(v31, v64);
    }

    else
    {
      v49 = sub_255F5FB98(v39);

      if (!v49)
      {
        goto LABEL_34;
      }

      *&v79 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE88, &qword_255F61188);
      sub_255F60388(&qword_27F81AE90, &qword_27F81AE88, &qword_255F61188);
      v50 = v61;
      sub_255F60A48();
      sub_255F609F8();
      result = (*v57)(v50, v62);
    }

    v21 = v32;
    v28 = v73;
  }

  while (1)
  {
    v32 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      v55 = v75;
      *&v79 = sub_255F60A18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AE98, &qword_255F61190);
      sub_255F60388(&qword_27F81AEA0, &qword_27F81AE98, &qword_255F61190);
      sub_255F60A08();
      return (*(v69 + 8))(v55, v70);
    }

    v27 = *(v29 + 8 * v32);
    ++v21;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255F5FB98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_255F602F4(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255F6044C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB0, &qword_255F61288);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255F602F4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255F5FCC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_255F602D4(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255F6044C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB0, &qword_255F61288);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255F602D4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255F5FDE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_255F602B4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255F6044C(i, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB0, &qword_255F61288);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255F602B4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255F5FF10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_255F60294(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255F6044C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB0, &qword_255F61288);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255F60294((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + v6 + 32) = v8 & 1;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t DataFrame.TypeError.hashValue.getter()
{
  sub_255F60C58();
  MEMORY[0x259C53690](0);
  return sub_255F60C78();
}

uint64_t sub_255F600B8()
{
  sub_255F60C58();
  MEMORY[0x259C53690](0);
  return sub_255F60C78();
}

uint64_t sub_255F60124()
{
  sub_255F60C58();
  MEMORY[0x259C53690](0);
  return sub_255F60C78();
}

unint64_t sub_255F60164(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_255F60C58();
  sub_255F60B28();
  v6 = sub_255F60C78();

  return sub_255F601DC(a1, a2, v6);
}

unint64_t sub_255F601DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255F60BE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_255F60294(char *a1, int64_t a2, char a3)
{
  result = sub_255F604BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F602B4(char *a1, int64_t a2, char a3)
{
  result = sub_255F605B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F602D4(char *a1, int64_t a2, char a3)
{
  result = sub_255F606BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F602F4(char *a1, int64_t a2, char a3)
{
  result = sub_255F607C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_255F60314(char a1, int64_t a2, char a3)
{
  result = sub_255F608C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_255F60334()
{
  result = qword_27F81AE50;
  if (!qword_27F81AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81AE50);
  }

  return result;
}

uint64_t sub_255F60388(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F603E0()
{
  result = qword_27F81AEA8;
  if (!qword_27F81AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81AEA8);
  }

  return result;
}

uint64_t sub_255F6044C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB0, &qword_255F61288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_255F604BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AED0, &qword_255F612A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_255F605B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEC8, &qword_255F612A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_255F606BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEC0, &qword_255F61298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_255F607C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB8, &qword_255F61290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_255F608C4(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return sub_255F609F8();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AED8, &unk_255F612B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81AEB0, &qword_255F61288);
    swift_arrayInitWithCopy();
  }

  return v10;
}