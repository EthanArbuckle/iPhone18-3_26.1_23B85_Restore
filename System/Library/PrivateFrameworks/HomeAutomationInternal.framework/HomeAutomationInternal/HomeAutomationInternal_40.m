uint64_t sub_252C1FC4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FED0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 152);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C1FDA4()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C1FE08()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C1FE6C()
{
  v1 = v0[18];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C1FED0()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C1FF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[163] = v3;
  v4[162] = a3;
  v4[161] = a2;
  v4[160] = a1;
  v5 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[164] = swift_task_alloc();
  v6 = sub_252E34014();
  v4[165] = v6;
  v7 = *(v6 - 8);
  v4[166] = v7;
  v8 = *(v7 + 64) + 15;
  v4[167] = swift_task_alloc();
  v4[168] = swift_task_alloc();
  v4[169] = swift_task_alloc();
  v4[170] = swift_task_alloc();
  v9 = sub_252E32A64();
  v4[171] = v9;
  v10 = *(v9 - 8);
  v4[172] = v10;
  v11 = *(v10 + 64) + 15;
  v4[173] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C200AC, 0, 0);
}

uint64_t sub_252C200AC()
{
  v135 = v0;
  v1 = *(v0 + 1296);
  if (v1)
  {
    v2 = [v1 entityResponses];
    v131 = v0;
    if (!v2)
    {
      v124 = 0;
      v125 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      goto LABEL_35;
    }

    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
LABEL_33:
      v4 = sub_252E378C4();
      if (v4)
      {
LABEL_5:
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x2530ADF00](v5, v3);
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v2 = v6;
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v8 = [v6 entity];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 type];

            if (v10 == 5)
            {
              break;
            }
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_34;
          }
        }

        v23 = [v2 entity];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 entityIdentifier];

          v0 = v131;
          if (v25)
          {
            v21 = sub_252E36F34();
            v22 = v26;
          }

          else
          {
            v21 = 0;
            v22 = 0;
          }
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v0 = v131;
        }

        v27 = [v2 entity];
        if (v27)
        {
          v28 = v27;
          v124 = [v27 sceneType];
        }

        else
        {
          v124 = 0;
        }

        v29 = [v2 entity];
        if (v29 && (v30 = v29, v31 = [v29 homeEntityName], v30, v31))
        {
          v125 = sub_252E36F34();
          v20 = v32;
        }

        else
        {
          v125 = 0;
          v20 = 0;
        }

LABEL_35:
        *(v0 + 1400) = v2;
        v129 = v20;
        *(v0 + 1392) = v20;
        type metadata accessor for HomeStore();
        v33 = static HomeStore.shared.getter();
        v34 = sub_2529DA828();

        if (v34 >> 62)
        {
          goto LABEL_122;
        }

        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          while (1)
          {
            v36 = 0;
            v0 = v34 & 0xFFFFFFFFFFFFFF8;
            while ((v34 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x2530ADF00](v36, v34);
              v38 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
LABEL_60:
                __break(1u);
LABEL_61:
                v0 = v131;
                goto LABEL_62;
              }

LABEL_43:
              v39 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
              if (v39)
              {
                if (!v22)
                {
                  sub_252E32E24();

                  goto LABEL_39;
                }

                v40 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v21 && v39 == v22;
                if (v40 || (sub_252E37DB4() & 1) != 0)
                {
                  goto LABEL_64;
                }
              }

              else if (!v22)
              {
                goto LABEL_65;
              }

              if (sub_252E32E24() == v21 && v22 == v41)
              {

LABEL_64:

LABEL_65:

                v0 = v131;
                goto LABEL_66;
              }

              v43 = v21;
              v21 = sub_252E37DB4();

              if (v21)
              {
                goto LABEL_64;
              }

              v21 = v43;
LABEL_39:
              ++v36;
              if (v38 == v35)
              {
                goto LABEL_61;
              }
            }

            if (v36 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

LABEL_121:
            __break(1u);
LABEL_122:
            v35 = sub_252E378C4();
            if (!v35)
            {
              goto LABEL_62;
            }
          }

          v37 = *(v34 + 8 * v36 + 32);

          v38 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_60;
          }

          goto LABEL_43;
        }

LABEL_62:

        v37 = 0;
LABEL_66:
        *(v0 + 1408) = v37;
        if (qword_27F53F240 != -1)
        {
          swift_once();
        }

        v44 = qword_27F575728 + 64;
        v45 = -1 << *(qword_27F575728 + 32);
        if (-v45 < 64)
        {
          v46 = ~(-1 << -v45);
        }

        else
        {
          v46 = -1;
        }

        v34 = v46 & *(qword_27F575728 + 64);
        v22 = (63 - v45) >> 6;
        v47 = (*(v0 + 1376) + 8);

        v0 = 0;
        v126 = v37;
        v119 = v44;
        v120 = v48;
        v118 = v22;
LABEL_73:
        while (v34)
        {
LABEL_78:
          v50 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          v51 = (v0 << 9) | (8 * v50);
          if (*(*(v48 + 48) + v51) == v124)
          {
            v52 = *(*(v48 + 56) + v51);
            v123 = v52 + 56;
            v53 = -1 << *(v52 + 32);
            if (-v53 < 64)
            {
              v54 = ~(-1 << -v53);
            }

            else
            {
              v54 = -1;
            }

            v55 = v54 & *(v52 + 56);
            v121 = v34;
            v122 = (63 - v53) >> 6;
            v130 = v52;
            swift_bridgeObjectRetain_n();
            v56 = 0;
            while (v55)
            {
LABEL_89:
              v58 = v131[173];
              v59 = v131[171];
              v60 = __clz(__rbit64(v55));
              v55 &= v55 - 1;
              v61 = (*(v130 + 48) + ((v56 << 10) | (16 * v60)));
              v62 = v61[1];
              v131[148] = *v61;
              v131[149] = v62;
              v132 = v59;

              sub_252E32A44();
              sub_252947DBC();
              v63 = sub_252E37784();
              v34 = v47;
              v64 = *v47;
              (*v47)(v58, v59);
              v131[156] = v63;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
              sub_2529508A0();
              v65 = sub_252E36EA4();
              v67 = v66;

              v131[150] = v65;
              v131[151] = v67;
              sub_252E32A34();
              v68 = sub_252E37784();
              v69 = v132;
              v133 = v64;
              v64(v58, v69);

              v131[157] = v68;
              sub_252E36EA4();

              v21 = sub_252E36FA4();
              v22 = v70;

              if (v129)
              {
                v71 = v131[173];
                v72 = v131[171];
                v127 = v72;
                v131[152] = v125;
                v131[153] = v129;
                sub_252E32A44();
                v128 = v21;
                v73 = sub_252E37784();
                v21 = v47;
                v133(v71, v72);
                v131[158] = v73;
                v74 = sub_252E36EA4();
                v76 = v75;

                v131[154] = v74;
                v131[155] = v76;
                sub_252E32A34();
                v77 = sub_252E37784();
                v133(v71, v127);

                v131[159] = v77;
                sub_252E36EA4();
                v34 = v22;

                v78 = sub_252E36FA4();
                v80 = v79;

                if (v128 == v78 && v34 == v80)
                {

                  v37 = v126;
LABEL_96:

                  v81 = 1;
                  goto LABEL_97;
                }

                v22 = sub_252E37DB4();

                v37 = v126;
                if (v22)
                {
                  goto LABEL_96;
                }
              }

              else
              {

                v37 = v126;
              }
            }

            while (1)
            {
              v57 = v56 + 1;
              if (__OFADD__(v56, 1))
              {
                break;
              }

              if (v57 >= v122)
              {

                v44 = v119;
                v48 = v120;
                v22 = v118;
                v34 = v121;
                goto LABEL_73;
              }

              v55 = *(v123 + 8 * v57);
              ++v56;
              if (v55)
              {
                v56 = v57;
                goto LABEL_89;
              }
            }

            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        while (1)
        {
          v49 = v0 + 1;
          if (__OFADD__(v0, 1))
          {
            goto LABEL_120;
          }

          if (v49 >= v22)
          {
            break;
          }

          v34 = *(v44 + 8 * v49);
          ++v0;
          if (v34)
          {
            v0 = v49;
            goto LABEL_78;
          }
        }

        v81 = 0;
LABEL_97:
        v82 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v82 + 16), (v131 + 128));

        v83 = v131[132];
        __swift_project_boxed_opaque_existential_1(v131 + 128, v131[131]);
        v84 = sub_252E338F4();
        __swift_destroy_boxed_opaque_existential_1(v131 + 128);
        if ((v84 & 1) == 0)
        {
          v85 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          sub_252929E74((v85 + 288), (v131 + 133));

          v86 = v131[136];
          v87 = v131[137];
          __swift_project_boxed_opaque_existential_1(v131 + 133, v86);
          v88 = (*(v87 + 120))(v86, v87);
          __swift_destroy_boxed_opaque_existential_1(v131 + 133);
          if (v88)
          {
            if (v37)
            {
              v89 = v131[170];
              v90 = v131[164];
              v91 = v131[163];
              v92 = v131[161];
              memcpy(v131 + 2, v91 + 14, 0x1F8uLL);
              memcpy(__dst, v91 + 14, 0x1F8uLL);

              sub_2529D291C((v131 + 2), (v131 + 65));
              v93 = v92;
              v94 = v37;
              v95 = sub_252953488(v92, __dst, 0);
              v131[177] = v95;

              sub_252E33924();
              sub_252E33F54();
              v96 = v91[12];
              v97 = v91[13];
              __swift_project_boxed_opaque_existential_1(v91 + 9, v96);
              v98 = swift_task_alloc();
              v131[178] = v98;
              *(v98 + 16) = v91;
              *(v98 + 24) = v94;
              *(v98 + 32) = v124;
              *(v98 + 40) = v81;
              *(v98 + 48) = v125;
              *(v98 + 56) = v129;
              v99 = swift_task_alloc();
              v131[179] = v99;
              v99[2] = v93;
              v99[3] = v95;
              v99[4] = v94;
              v100 = swift_task_alloc();
              v131[180] = v100;
              *v100 = v131;
              v100[1] = sub_252C20FA4;
              v101 = v131[170];
              v102 = v131[160];
              v139 = v96;
              v140 = v97;
              v138 = 512;
              v137 = 0;

              return sub_252A199A8(v102, &unk_252E53628, v98, &unk_252E53638, v99, v101, 0, 0);
            }

            v114 = v131[169];
            v115 = v131[163];
            v107 = v115[12];
            v116 = v115[13];
            __swift_project_boxed_opaque_existential_1(v115 + 9, v107);
            v109 = swift_task_alloc();
            v131[182] = v109;
            *(v109 + 16) = v115;
            *(v109 + 24) = 0;
            *(v109 + 32) = v124;
            *(v109 + 40) = v81;
            *(v109 + 48) = v125;
            *(v109 + 56) = v129;
            sub_252AD7CC4();
            v117 = swift_task_alloc();
            v131[183] = v117;
            *v117 = v131;
            v117[1] = sub_252C21118;
            v111 = v131[169];
            v112 = v131[160];
            v139 = v116;
            v113 = &unk_252E53610;
            goto LABEL_114;
          }
        }

        if (v37)
        {

          if (sub_252B2FB08())
          {
            goto LABEL_105;
          }

          if (v124 != 1)
          {
            if (!v129)
            {
              goto LABEL_106;
            }

            if (v81)
            {
LABEL_105:

LABEL_106:
              v103 = swift_task_alloc();
              v131[185] = v103;
              *v103 = v131;
              v103[1] = sub_252C21618;
              v104 = v131[163];

              return sub_252C81418((v131 + 143), v37);
            }
          }
        }

        v105 = v131[167];
        v106 = v131[163];
        v107 = v106[12];
        v108 = v106[13];
        __swift_project_boxed_opaque_existential_1(v106 + 9, v107);
        v109 = swift_task_alloc();
        v131[189] = v109;
        *(v109 + 16) = v106;
        *(v109 + 24) = v125;
        *(v109 + 32) = v129;
        sub_252AD7CC4();
        v110 = swift_task_alloc();
        v131[190] = v110;
        *v110 = v131;
        v110[1] = sub_252C21C54;
        v111 = v131[167];
        v112 = v131[160];
        v139 = v108;
        v113 = &unk_252E535E8;
LABEL_114:

        return sub_252BDB88C(v112, v113, v109, v111, 0, 0, 0, v107);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

LABEL_34:

    v124 = 0;
    v125 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v2 = 0;
    v0 = v131;
    goto LABEL_35;
  }

  sub_2529318DC();
  swift_allocError();
  *v11 = 6;
  swift_willThrow();
  v12 = *(v0 + 1384);
  v13 = *(v0 + 1360);
  v14 = *(v0 + 1352);
  v15 = *(v0 + 1344);
  v16 = *(v0 + 1336);
  v17 = *(v0 + 1312);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_252C20FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 1440);
  v4 = *v1;
  *(*v1 + 1448) = v0;

  v5 = v2[179];
  v6 = v2[178];
  v7 = v2[174];

  if (v0)
  {
    v8 = sub_252C21390;
  }

  else
  {
    v8 = sub_252C21290;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C21118()
{
  v2 = *v1;
  v3 = *(*v1 + 1464);
  v9 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v4 = v2[174];
    (*(v2[166] + 8))(v2[169], v2[165]);

    v5 = sub_252C21550;
  }

  else
  {
    v6 = v2[182];
    v7 = v2[174];
    (*(v2[166] + 8))(v2[169], v2[165]);

    v5 = sub_252C21490;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C21290()
{
  v1 = v0[177];
  v2 = v0[176];
  v3 = v0[170];
  v4 = v0[166];
  v5 = v0[165];

  (*(v4 + 8))(v3, v5);
  v6 = v0[176];
  v7 = v0[175];
  v8 = v0[162];

  v9 = v0[173];
  v10 = v0[170];
  v11 = v0[169];
  v12 = v0[168];
  v13 = v0[167];
  v14 = v0[164];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252C21390()
{
  v1 = v0[177];
  v2 = v0[176];
  v3 = v0[170];
  v4 = v0[166];
  v5 = v0[165];

  (*(v4 + 8))(v3, v5);
  v6 = v0[181];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[162];

  v10 = v0[173];
  v11 = v0[170];
  v12 = v0[169];
  v13 = v0[168];
  v14 = v0[167];
  v15 = v0[164];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252C21490()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 1384);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  v5 = *(v0 + 1344);
  v6 = *(v0 + 1336);
  v7 = *(v0 + 1312);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252C21550()
{
  v1 = *(v0 + 1456);

  v2 = *(v0 + 1472);
  v3 = *(v0 + 1296);

  v4 = *(v0 + 1384);
  v5 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1312);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252C21618()
{
  v2 = *(*v1 + 1480);
  v5 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v3 = sub_252C21E98;
  }

  else
  {
    v3 = sub_252C2172C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C2172C()
{
  if (*(v0 + 1168))
  {
    v1 = *(v0 + 1408);
    v2 = *(v0 + 1296);
    v3 = *(v0 + 1280);

    sub_252A52D18((v0 + 1144), v0 + 1104);
    sub_252A52D18((v0 + 1104), v3);
    v4 = *(v0 + 1384);
    v5 = *(v0 + 1360);
    v6 = *(v0 + 1352);
    v7 = *(v0 + 1344);
    v8 = *(v0 + 1336);
    v9 = *(v0 + 1312);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    sub_25293847C(v0 + 1144, &qword_27F542188, &qword_252E43C80);
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1344);
    v13 = *(v0 + 1304);
    v14 = *(v0 + 1296);
    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D18);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8ACD0);
    v16 = [v14 description];
    v17 = sub_252E36F34();
    v19 = v18;

    MEMORY[0x2530AD570](v17, v19);

    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E8AC30);

    v20 = *(v13 + 96);
    __swift_project_boxed_opaque_existential_1((v13 + 72), v20);
    sub_252AD7CC4();
    v21 = swift_task_alloc();
    *(v0 + 1496) = v21;
    *v21 = v0;
    v21[1] = sub_252C21A1C;
    v22 = *(v0 + 1344);
    v23 = *(v0 + 1304);
    v24 = *(v0 + 1280);

    return sub_252BDB88C(v24, &unk_252E53600, v23, v22, 0, 0, 0, v20);
  }
}

uint64_t sub_252C21A1C()
{
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v4 = *v1;
  *(*v1 + 1504) = v0;

  (*(v2[166] + 8))(v2[168], v2[165]);
  if (v0)
  {
    v5 = sub_252C21F68;
  }

  else
  {
    v5 = sub_252C21B84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C21B84()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1296);

  v3 = *(v0 + 1384);
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1344);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1312);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252C21C54()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v9 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v4 = v2[174];
    (*(v2[166] + 8))(v2[167], v2[165]);

    v5 = sub_252C22038;
  }

  else
  {
    v6 = v2[189];
    v7 = v2[174];
    (*(v2[166] + 8))(v2[167], v2[165]);

    v5 = sub_252C21DCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C21DCC()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1296);

  v3 = *(v0 + 1384);
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1344);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1312);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252C21E98()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1296);

  v3 = *(v0 + 1488);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1312);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252C21F68()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1296);

  v3 = *(v0 + 1504);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1312);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252C22038()
{
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 1296);

  v4 = *(v0 + 1528);
  v5 = *(v0 + 1384);
  v6 = *(v0 + 1360);
  v7 = *(v0 + 1352);
  v8 = *(v0 + 1344);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 1312);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252C22110(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[3] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationSuccessfulActionParameters(0);
  v1[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_252C22208, 0, 0);
}

uint64_t sub_252C22208()
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v4 = *(v1 + 20);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(&v2[v4], 1, 1, v5);
  *v2 = 0;
  v7 = sub_25294833C(1u, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 dictionary];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      *(v0 + 16) = 0;
      v12 = [v11 dataWithPropertyList:v10 format:200 options:0 error:v0 + 16];
      v13 = *(v0 + 16);
      if (v12)
      {
        v28 = *(v0 + 32);
        v14 = sub_252E32D34();
        v29 = v4;
        v16 = v15;

        sub_252E32D24();
        sub_252E362F4();

        v17 = v16;
        v4 = v29;
        sub_25296464C(v14, v17);
        v6(v28, 0, 1, v5);
        goto LABEL_8;
      }

      v18 = v13;
      v19 = sub_252E32C54();

      swift_willThrow();
    }

    else
    {
    }
  }

  v6(*(v0 + 32), 1, 1, v5);
LABEL_8:
  v20 = *(v0 + 48);
  sub_252956C98(*(v0 + 32), &v2[v4]);
  v21 = sub_252C0AA58();
  *(v0 + 56) = v21;
  v22 = MEMORY[0x277D55BE8];
  v23 = *(MEMORY[0x277D55BE8] + 4);
  v24 = *MEMORY[0x277D55BE8];
  v25 = swift_task_alloc();
  *(v0 + 64) = v25;
  *v25 = v0;
  v25[1] = sub_252C224D8;
  v26 = *MEMORY[0x277D85DE8];

  return ((v24 + v22))(0xD00000000000001FLL, 0x8000000252E8AD70, v21);
}

uint64_t sub_252C224D8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[7];

  if (v1)
  {
    v8 = sub_252C226FC;
  }

  else
  {
    v4[10] = a1;
    v8 = sub_252C22648;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C22648()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];
  sub_252C242F8(v0[6]);

  v2 = v0[1];
  v3 = v0[10];
  v4 = *MEMORY[0x277D85DE8];

  return v2(v3);
}

uint64_t sub_252C226FC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[4];
  sub_252C242F8(v0[6]);

  v2 = v0[1];
  v3 = v0[9];
  v4 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_252C227AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252C227D0, 0, 0);
}

uint64_t sub_252C227D0()
{
  v1 = v0[4];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252C228A8;
  v4 = v0[3];
  v5 = v0[4];

  return sub_252C16B84(0, v2, v4, v5);
}

uint64_t sub_252C228A8(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_252C229CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  if (a3)
  {
    sub_252E37024();
    v16 = sub_252E36324();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v16 = sub_252E36324();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v17 = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  v18 = v39;
  sub_252956C98(v15, v39 + *(v17 + 24));
  sub_252E37024();

  sub_252E36324();
  v19 = *(*(v16 - 8) + 56);
  v20 = 1;
  v19(v13, 0, 1, v16);
  v37 = v17;
  sub_252956C98(v13, v18 + *(v17 + 28));
  sub_252E37024();
  v19(v10, 0, 1, v16);
  sub_252956C98(v10, v18);
  v21 = sub_25294833C(1u, 0, 0);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 dictionary];
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_self();
      v40[0] = 0;
      v26 = [v25 dataWithPropertyList:v24 format:200 options:0 error:v40];
      v27 = v40[0];
      if (v26)
      {
        v28 = sub_252E32D34();
        v30 = v29;

        sub_252E32D24();
        v31 = v38;
        sub_252E362F4();

        sub_25296464C(v28, v30);
        v20 = 0;
      }

      else
      {
        v32 = v27;
        v33 = sub_252E32C54();

        swift_willThrow();
        v20 = 1;
        v31 = v38;
      }
    }

    else
    {

      v31 = v38;
    }
  }

  else
  {
    v31 = v38;
  }

  v19(v31, v20, 1, v16);
  v34 = v39;
  sub_252956C98(v31, v39 + *(v37 + 32));
  sub_252E37024();
  v19(v10, 0, 1, v16);
  result = sub_252956C98(v10, v34);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252C22E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_252C22E40, 0, 0);
}

uint64_t sub_252C22E40()
{
  v1 = v0[7];
  if (!v1)
  {
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_252C23348;
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    v13 = 0;
LABEL_20:

    return sub_252C1FF34(v11, v12, v13);
  }

  v2 = v1;
  v3 = [v2 entityResponses];
  if (!v3)
  {
    goto LABEL_15;
  }

  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 entity];

  if (!v8)
  {
    goto LABEL_14;
  }

  v3 = [v8 sceneType];

  if (v3 == 2)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((sub_252C28D24(v0[6]) & 1) == 0)
  {
LABEL_19:
    v18 = v2;
    v19 = swift_task_alloc();
    v0[9] = v19;
    *v19 = v0;
    v19[1] = sub_252C231C8;
    v13 = v0[7];
    v20 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    goto LABEL_20;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v14 = v0[8];
  v15 = v0[5];
  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E8ABF0);
  v0[4] = v3;
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E8AC10);
  sub_252CC3D90(v0[2], v0[3], 0xD000000000000093, 0x8000000252E8AC30);

  sub_252C1C7DC(v2, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_252C231C8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_252C2343C;
  }

  else
  {

    v4 = sub_252C232E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C232E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C23348()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_252C2343C()
{
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_252C234D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2529C8CCC;

  return sub_252C1E660(a2, a3, 0, a4, a5, a6);
}

uint64_t sub_252C235BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_252C236AC;

  return sub_252A26640(v9, a2, a3, 1, 1, a4);
}

uint64_t sub_252C236AC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_25295A398;
  }

  else
  {
    v3 = sub_252C237C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C237C0()
{
  v1 = v0[2];
  sub_2529645E8(v0[3], v1);
  v2 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C23890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2529C9EDC;

  return sub_252C1CC4C(a2, a3, 0, a4, a5, a6);
}

uint64_t sub_252C239A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252C1FF34(a1, a2, a3);
}

uint64_t sub_252C23A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C22E1C(a1, a2, a3);
}

uint64_t sub_252C23B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252C22E1C(a1, a2, a3);
}

void *sub_252C23BC0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SceneEnabledResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C23C24(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_252C2F554();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v30 = v2 & 0xC000000000000001;
    v27 = v2;
    v28 = (v2 + 32);
    while (1)
    {
      if (v30)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v29 + 16))
        {
          goto LABEL_37;
        }

        v5 = *&v28[8 * v4];
      }

      v6 = v5;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = [v5 taskResponses];
      if (!v8)
      {

        goto LABEL_40;
      }

      type metadata accessor for HomeUserTaskResponse();
      v9 = sub_252E37264();

      v10 = [v6 entity];
      if (!v10)
      {
        goto LABEL_31;
      }

      if (v9 >> 62)
      {
        v11 = sub_252E378C4();
        if (!v11)
        {
LABEL_31:

          v8 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_31;
        }
      }

      v31 = v6;
      v12 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2530ADF00](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v13 = *(v9 + 32 + 8 * v12);
        }

        v14 = v13;
        v7 = __OFADD__(v12++, 1);
        if (v7)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (qword_27F53F728 != -1)
        {
          swift_once();
        }

        v15 = qword_27F575C38;
        v16 = [v14 taskOutcome];
        if (*(v15 + 16))
        {
          v17 = v16;
          v18 = *(v15 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v17);
          v2 = &v32;
          v19 = sub_252E37F14();
          v20 = -1 << *(v15 + 32);
          v21 = v19 & ~v20;
          if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
          {
            break;
          }
        }

LABEL_15:

        if (v12 == v11)
        {

          v8 = 0;
          goto LABEL_40;
        }
      }

      v22 = ~v20;
      while (*(*(v15 + 48) + 8 * v21) != v17)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v2 = v27;
      if (v4 == i)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:
  v8 = 1;
LABEL_40:

  v23 = sub_252C2F554();
  if (v23 >> 62)
  {
    v26 = sub_252E378C4();

    if (v26)
    {
      return v8;
    }

    return 0;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v24)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_252C23F84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C227AC(v2, v3, v4);
}

uint64_t sub_252C2402C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C22110(v0);
}

uint64_t sub_252C240BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25294B958;

  return sub_252C23890(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_252C24180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25294B7BC;

  return sub_252C234D4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_252C24244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252C235BC(a1, v4, v5, v6);
}

uint64_t sub_252C242F8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSuccessfulActionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C2436C(unsigned __int8 *a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v5 == 2 || (v5 & 1) != 0)
  {
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v9 = [a1 userTask];
      v10 = HomeStore.accessories(matching:supporting:)(v8, v9);
      v12 = v11;

      if (v12)
      {
        v13 = v10;
        v14 = 1;
      }

      else
      {
        if (v10 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_11;
          }
        }

        else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_11:
          v4 = a1;
          goto LABEL_12;
        }

        v13 = v10;
        v14 = 0;
      }

      sub_252929F10(v13, v14);
      v10 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_12:

  v15 = *(v2 + 16);
  *(v2 + 16) = v10;

  return v2;
}

uint64_t sub_252C244D4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
LABEL_22:
    if (!sub_252E378C4())
    {
      return 0;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v13 = *(v1 + 16);
    }

    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x2530ADF00](0, v3);

    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_8:
    v7 = (*(*v5 + 256))(v6);

    v1 = *(v1 + 16);
    if (v1 >> 62)
    {
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    while (1)
    {
      v10 = v8 == v9;
      if (v8 == v9)
      {
        goto LABEL_20;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v9, v1);
        if (__OFADD__(v9, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:

          return v10;
        }
      }

      else
      {
        if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = *(v1 + 8 * v9 + 32);

        if (__OFADD__(v9, 1))
        {
          goto LABEL_19;
        }
      }

      v12 = (*(*v11 + 256))();

      ++v9;
      if (v12 != v7)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252C246DC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000035, 0x8000000252E8B090, 0xD000000000000086, 0x8000000252E8B000);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 192), v13);

  v6 = *(v1 + 16);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  if (v6 < 0)
  {
    v12 = *(v2 + 16);
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x2530ADF00](0, v6);

    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);

LABEL_8:
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v11 = (*(*v8 + 256))();
    (*(v10 + 40))(v11, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_252C248B0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (qword_27F53F558 != -1)
  {
LABEL_18:
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000031, 0x8000000252E8AFC0, 0xD000000000000086, 0x8000000252E8B000);
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v17 = *(v2 + 16);
    }

    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v6 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v5);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = *(v5 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      type metadata accessor for MatterAccessory();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v11 = v9;

        v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v12 + 192), v18);

        v13 = v19;
        v14 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        (*(v14 + 32))(v21, v11, v13, v14);

        v15 = v21[1];
        *a1 = v21[0];
        a1[1] = v15;
        v16 = v21[3];
        a1[2] = v21[2];
        a1[3] = v16;
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      ++v6;
    }

    while (v8 != v2);
  }

  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AccessoriesCollectionDecorator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AccessoriesCollectionDecorator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_252C24B5C()
{
  v1 = [v0 userTask];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 value];

  if (!v3)
  {
    goto LABEL_7;
  }

  if ([v3 type] == 2 || objc_msgSend(v3, sel_type) == 4)
  {
LABEL_11:
    v5 = 1;

    return v5;
  }

  v4 = [v3 type];

  if (v4 != 6)
  {
LABEL_7:
    v6 = [v0 userTask];
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v3 = [v6 value];

    if (!v3)
    {
      return 0;
    }

    v8 = [v3 stringValue];
    if (!v8)
    {
      v5 = 0;

      return v5;
    }

    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_252C24C90()
{
  v1 = [v0 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 value];
      if (v5)
      {
        if ([v5 type] == 2 || objc_msgSend(v5, sel_type) == 4)
        {
          v6 = 1;
LABEL_15:

          return v6;
        }

        v12 = [v5 type];

        if (v12 == 6)
        {
          return 1;
        }
      }
    }

    else
    {
    }
  }

  v7 = [v0 automatableTask];
  if (v7)
  {
    v5 = v7;
    type metadata accessor for ControlAutomateHomeIntent();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

    v5 = [v9 value];
    if (v5)
    {
      v10 = [v5 stringValue];
      if (v10)
      {

        v6 = 1;
        goto LABEL_15;
      }

LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_252C24E5C()
{
  if (sub_252C513E8())
  {
    return 0;
  }

  else
  {
    return sub_252C24B5C() & 1;
  }
}

uint64_t sub_252C24EB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultUnitHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252C24EE4(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  v8 = 0.0;
  if (v7)
  {
    v9 = v7;
    v10 = [v7 value];

    if (v10)
    {
      [v10 doubleValue];
      v8 = v11;
    }
  }

  v12 = [a1 userTask];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v14 = sub_252D6CA80(v13);

    v15 = sub_252C6E240(a1);
    v16 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v17 = sub_252E36F04();
    v18 = [v16 initWithIdentifier:0 displayString:v17];

    v19 = v18;
    [v19 setDoubleValue_];
    [v19 setUnit_];
    [v19 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v20 = sub_252D6CC80(v19);
    swift_beginAccess();
    v21 = v14[4];
    v14[4] = v20;
  }

  else
  {
    v14 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v22, v2);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_252E379F4();
  v38 = v35;
  v39 = v36;
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E8B1C0);
  if (v14)
  {
    swift_beginAccess();
    v23 = v14[4];
  }

  else
  {
    v24 = 0;
  }

  v37 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v25 = sub_252E36F94();
  MEMORY[0x2530AD570](v25);

  sub_252CC3D90(v38, v39, 0xD00000000000008ELL, 0x8000000252E8B130);

  (*(v3 + 8))(v6, v2);
  if (v14)
  {

    v26 = sub_252D6CB58();
  }

  else
  {
    v26 = 0;
  }

  v27 = [a1 filters];
  if (v27)
  {
    v28 = v27;
    type metadata accessor for HomeFilter();
    v29 = sub_252E37264();
  }

  else
  {
    v29 = 0;
  }

  v30 = [a1 time];
  v31 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v31 setUserTask_];
  if (v29)
  {
    type metadata accessor for HomeFilter();
    v32 = sub_252E37254();
  }

  else
  {
    v32 = 0;
  }

  [v31 setFilters_];

  [v31 setTime_];

  return v31;
}

id sub_252C253A0(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v2 = sub_252D6CA80(v2);
  }

  v3 = [a1 userTask];
  if (v3 && (v4 = v3, v5 = [v3 value], v4, v5))
  {
    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v6 = sub_252D6CC80(v5);
    *(v6 + 80) = 1;
    if (!v2)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  v8 = v2[4];
  v2[4] = v6;
  swift_retain_n();

  v7 = sub_252D6CB58();

LABEL_9:
  v9 = [a1 filters];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for HomeFilter();
    v11 = sub_252E37264();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 time];
  v13 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v13 setUserTask_];
  if (v11)
  {
    type metadata accessor for HomeFilter();
    v14 = sub_252E37254();
  }

  else
  {
    v14 = 0;
  }

  [v13 setFilters_];

  [v13 setTime_];

  return v13;
}

id sub_252C25600(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 6 && sub_252C4B5D4())
    {
      v5 = [a1 userTask];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 value];

        if (v7)
        {
          [v7 doubleValue];

          return sub_252C24EE4(a1);
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  if (sub_252C4B5D4())
  {
    v9 = [a1 userTask];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 attribute];

      if (v11 == 11)
      {
        return sub_252C253A0(a1);
      }
    }

    else
    {
      sub_252C515AC();
    }

    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      if (v14 == 2)
      {
        return sub_252C253A0(a1);
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E8B110, 0xD00000000000008ELL, 0x8000000252E8B130);
  return a1;
}

unint64_t sub_252C257F4()
{
  result = sub_252CC52B0(&unk_2864A5518);
  qword_27F575A28 = result;
  return result;
}

uint64_t sub_252C2581C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[459] = v3;
  v4[458] = a3;
  v4[457] = a2;
  v4[456] = a1;
  v5 = sub_252E34014();
  v4[460] = v5;
  v6 = *(v5 - 8);
  v4[461] = v6;
  v7 = *(v6 + 64) + 15;
  v4[462] = swift_task_alloc();
  v4[463] = swift_task_alloc();
  v8 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  v4[464] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[465] = swift_task_alloc();
  v10 = sub_252E36324();
  v4[466] = v10;
  v11 = *(v10 - 8);
  v4[467] = v11;
  v12 = *(v11 + 64) + 15;
  v4[468] = swift_task_alloc();
  v4[469] = swift_task_alloc();
  v4[470] = swift_task_alloc();
  v4[471] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C259A4, 0, 0);
}

uint64_t sub_252C259A4()
{
  v131 = v0;
  v1 = *(v0 + 3672);
  memcpy((v0 + 520), v1 + 14, 0x1F8uLL);
  memcpy((v0 + 16), v1 + 14, 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    goto LABEL_10;
  }

  memcpy((v0 + 2536), (v0 + 520), 0x1F8uLL);
  sub_2529353AC(v0 + 2536, v0 + 3040);
  sub_252B680FC();
  sub_252B65874(&v129);

  v2 = v129;
  if (v129 == 77)
  {
LABEL_9:
    sub_25299F5D4(v0 + 520);
LABEL_10:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D18);
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E8B250);
    memcpy((v0 + 1024), v1 + 14, 0x1F8uLL);
    memcpy((v0 + 1528), v1 + 14, 0x1F8uLL);
    sub_2529D291C(v0 + 1024, v0 + 2032);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E8B280);
    sub_252B680FC();
    sub_252B65874(&v128);

    *(v0 + 3880) = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544318, &qword_252E53750);
    v11 = sub_252E36F94();
    MEMORY[0x2530AD570](v11);

    MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E8B2A0);
    sub_252CC4050(v129, v130, 0xD000000000000098, 0x8000000252E8B2D0, 0xD00000000000001FLL, 0x8000000252E84990, 46);

    sub_2529515FC(6, 0, 0xD000000000000017, 0x8000000252E8B370);
    sub_2529318DC();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  if (qword_27F53F3F0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v3 = qword_27F575A28;
    if (!*(qword_27F575A28 + 16))
    {
      goto LABEL_9;
    }

    v4 = sub_252A4509C(v2);
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v102 = *(*(v3 + 56) + v4);
    v6 = [*(v0 + 3656) userTask];
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = [v6 attribute];

    sub_252B680FC();
    v97 = sub_252B65FC8();

    v98 = *(v0 + 225);
    sub_252B680FC();
    v95 = sub_252B664A8();

    if (v95 == 2)
    {
      v99 = 0;
    }

    else
    {
      sub_252B680FC();
      v99 = sub_252B664A8();
    }

    v101 = v2;
    v100 = *(v0 + 3664);
    if (!v100)
    {
      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      v107 = 1;
      v27 = MEMORY[0x277D84F90];
LABEL_68:
      v126 = v41;
      v105 = v42;
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v116 = v95;
      v94 = *(v0 + 3728);
      v96 = *(v0 + 3672);
      v62 = sub_252E36AD4();
      __swift_project_value_buffer(v62, qword_27F544D18);
      sub_252CC3D90(0xD000000000000036, 0x8000000252E8B390, 0xD000000000000098, 0x8000000252E8B2D0);
      v129 = 0;
      v130 = 0xE000000000000000;
      sub_252E379F4();
      v63 = v130;
      *(v0 + 3624) = v129;
      *(v0 + 3632) = v63;
      MEMORY[0x2530AD570](0x6465746365707865, 0xEF203A6574617453);
      *(v0 + 3881) = v101;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E8B3D0);
      *(v0 + 3882) = v102;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8B3F0);
      v123 = v97 & 1;
      if (v97)
      {
        v64 = 1702195828;
      }

      else
      {
        v64 = 0x65736C6166;
      }

      if (v97)
      {
        v65 = 0xE400000000000000;
      }

      else
      {
        v65 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v64, v65);

      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E8B410);
      v120 = v98 != 2;
      if (v98 == 2)
      {
        v66 = 0x65736C6166;
      }

      else
      {
        v66 = 1702195828;
      }

      if (v98 == 2)
      {
        v67 = 0xE500000000000000;
      }

      else
      {
        v67 = 0xE400000000000000;
      }

      MEMORY[0x2530AD570](v66, v67);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E8B430);
      v68 = v116 == 2;
      v117 = v116 != 2;
      if (v68)
      {
        v69 = 0x65736C6166;
      }

      else
      {
        v69 = 1702195828;
      }

      if (v68)
      {
        v70 = 0xE500000000000000;
      }

      else
      {
        v70 = 0xE400000000000000;
      }

      MEMORY[0x2530AD570](v69, v70);

      MEMORY[0x2530AD570](0x53646C756F68730ALL, 0xEF203A7365597961);
      v113 = v99 & 1;
      if (v99)
      {
        v71 = 1702195828;
      }

      else
      {
        v71 = 0x65736C6166;
      }

      if (v99)
      {
        v72 = 0xE400000000000000;
      }

      else
      {
        v72 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v71, v72);

      MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E8B450);
      v73 = MEMORY[0x2530AD730](v27, v94);
      MEMORY[0x2530AD570](v73);

      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E8B470);
      v74 = MEMORY[0x2530AD730](v42, v94);
      MEMORY[0x2530AD570](v74);

      sub_252CC3D90(*(v0 + 3624), *(v0 + 3632), 0xD000000000000098, 0x8000000252E8B2D0);

      v75 = swift_allocObject();
      *(v0 + 3776) = v75;
      *(v75 + 16) = v96;
      *(v75 + 24) = v120;
      *(v75 + 32) = v27;
      *(v75 + 40) = v123;
      *(v75 + 41) = v117;
      *(v75 + 42) = v113;
      *(v75 + 48) = v42;
      *(v75 + 56) = v101;
      *(v75 + 57) = v102;
      *(v75 + 64) = v126;
      *(v75 + 72) = v107 & 1;

      if (v100)
      {
        v76 = *(v0 + 3736);
        v77 = *(v0 + 3728);
        v78 = *(v0 + 3720);
        v79 = *(v0 + 3712);
        v80 = *(v0 + 3672);
        v81 = *(v80 + 48);
        v82 = *(v0 + 3664);
        v83 = *__swift_project_boxed_opaque_existential_1((v80 + 24), v81);
        v84 = *(v76 + 56);
        v84(&v78[v79[5]], 1, 1, v77);
        v84(&v78[v79[8]], 1, 1, v77);
        v84(&v78[v79[12]], 1, 1, v77);
        *v78 = 0;
        v78[v79[6]] = v120;
        *&v78[v79[7]] = v27;
        v78[v79[9]] = v123;
        v78[v79[10]] = v117;
        v78[v79[11]] = v113;
        *&v78[v79[13]] = v105;
        sub_252C27D40(v78, v101, v102, v126, v107 & 1);
        v85 = sub_252C06334();
        *(v0 + 3784) = v85;
        v86 = *(MEMORY[0x277D55BE8] + 4);
        v127 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
        v87 = swift_task_alloc();
        *(v0 + 3792) = v87;
        *v87 = v0;
        v87[1] = sub_252C26A5C;

        return v127(0xD000000000000020, 0x8000000252E8B490, v85);
      }

      else
      {
        v88 = *(v0 + 3704);
        v89 = *(v0 + 3672);

        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v90 = v89[12];
        v91 = v89[13];
        __swift_project_boxed_opaque_existential_1(v89 + 9, v90);
        sub_252AD7CC4();
        v92 = swift_task_alloc();
        *(v0 + 3840) = v92;
        *v92 = v0;
        v92[1] = sub_252C26E3C;
        v93 = *(v0 + 3704);
        v133 = v91;

        return sub_252BDB88C(v0 + 3544, &unk_252E53760, v75, v93, 0, 0, 0, v90);
      }
    }

    LOBYTE(v129) = v2;
    v24 = sub_252C2CDC4(&v129, v8);
    v25 = v24;
    v103 = v8;
    if (v24 >> 62)
    {
      v26 = sub_252E378C4();
      v1 = &off_279711000;
      if (!v26)
      {
LABEL_43:
        v27 = MEMORY[0x277D84F90];
LABEL_44:

        LOBYTE(v129) = v102;
        v43 = sub_252C2CDC4(&v129, v103);
        v44 = v43;
        if (v43 >> 62)
        {
          goto LABEL_65;
        }

        for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
        {
          v46 = 0;
          v125 = v44 & 0xC000000000000001;
          v104 = *(v0 + 3736);
          v119 = (v104 + 32);
          v122 = v44 & 0xFFFFFFFFFFFFFF8;
          v42 = MEMORY[0x277D84F90];
          v108 = v44;
          v110 = v27;
          v112 = i;
          while (1)
          {
            if (v125)
            {
              v47 = MEMORY[0x2530ADF00](v46, v44);
            }

            else
            {
              if (v46 >= *(v122 + 16))
              {
                goto LABEL_64;
              }

              v47 = *(v44 + 8 * v46 + 32);
            }

            v48 = v47;
            v49 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            v50 = [v47 v1[221]];
            if (v50)
            {
              v51 = v50;
              v52 = [v50 homeEntityName];

              if (v52)
              {
                v115 = *(v0 + 3752);
                v53 = *(v0 + 3744);
                v54 = *(v0 + 3728);
                sub_252E36F34();

                sub_252E37024();

                v55 = *v119;
                (*v119)(v115, v53, v54);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v42 = sub_2529F7F74(0, v42[2] + 1, 1, v42);
                }

                v57 = v42[2];
                v56 = v42[3];
                v44 = v108;
                v27 = v110;
                if (v57 >= v56 >> 1)
                {
                  v42 = sub_2529F7F74(v56 > 1, v57 + 1, 1, v42);
                }

                v58 = *(v0 + 3752);
                v59 = *(v0 + 3728);
                v42[2] = v57 + 1;
                v55(v42 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v57, v58, v59);
                v1 = &off_279711000;
              }

              else
              {
              }

              i = v112;
            }

            else
            {
            }

            ++v46;
            if (v49 == i)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          ;
        }

        v42 = MEMORY[0x277D84F90];
LABEL_67:
        v60 = *(v0 + 3656);

        v41 = sub_252C2ECE0();
        v107 = v61;
        goto LABEL_68;
      }
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v1 = &off_279711000;
      if (!v26)
      {
        goto LABEL_43;
      }
    }

    v2 = 0;
    v124 = v25 & 0xC000000000000001;
    v106 = *(v0 + 3736);
    v118 = (v106 + 32);
    v121 = v25 & 0xFFFFFFFFFFFFFF8;
    v27 = MEMORY[0x277D84F90];
    v109 = v26;
    v111 = v25;
    while (1)
    {
      if (v124)
      {
        v28 = MEMORY[0x2530ADF00](v2, v25);
      }

      else
      {
        if (v2 >= *(v121 + 16))
        {
          goto LABEL_40;
        }

        v28 = *(v25 + 8 * v2 + 32);
      }

      v29 = v28;
      v30 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v31 = [v28 v1[221]];
      if (v31 && (v32 = v31, v33 = [v31 homeEntityName], v32, v33))
      {
        v34 = *(v0 + 3768);
        v35 = *(v0 + 3760);
        v114 = *(v0 + 3728);
        sub_252E36F34();

        sub_252E37024();

        v36 = *v118;
        (*v118)(v34, v35, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2529F7F74(0, v27[2] + 1, 1, v27);
        }

        v38 = v27[2];
        v37 = v27[3];
        v26 = v109;
        if (v38 >= v37 >> 1)
        {
          v27 = sub_2529F7F74(v37 > 1, v38 + 1, 1, v27);
        }

        v39 = *(v0 + 3768);
        v40 = *(v0 + 3728);
        v27[2] = v38 + 1;
        v36(v27 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v38, v39, v40);
        v1 = &off_279711000;
        v25 = v111;
      }

      else
      {
      }

      ++v2;
      if (v30 == v26)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);
  sub_252CC4050(0xD000000000000027, 0x8000000252E8B4C0, 0xD000000000000098, 0x8000000252E8B2D0, 0xD00000000000001FLL, 0x8000000252E84990, 58);
  sub_2529515FC(6, 0, 0xD000000000000017, 0x8000000252E8B370);
  sub_2529318DC();
  swift_allocError();
  *v23 = 8;
  swift_willThrow();
  sub_25299F5D4(v0 + 520);
LABEL_13:
  v13 = *(v0 + 3768);
  v14 = *(v0 + 3760);
  v15 = *(v0 + 3752);
  v16 = *(v0 + 3744);
  v17 = *(v0 + 3720);
  v18 = *(v0 + 3704);
  v19 = *(v0 + 3696);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_252C26A5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3792);
  v6 = *v2;
  *(v4 + 3800) = a1;
  *(v4 + 3808) = v1;

  v7 = *(v3 + 3784);

  if (v1)
  {
    v8 = sub_252C26D54;
  }

  else
  {
    v8 = sub_252C26B9C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C26B9C()
{
  v1 = v0[458];
  sub_252C28570(v0[465]);
  v2 = swift_task_alloc();
  v0[477] = v2;
  *v2 = v0;
  v2[1] = sub_252C26C3C;
  v3 = v0[459];

  return sub_252E174F4(v1);
}

uint64_t sub_252C26C3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3816);
  v7 = *v2;
  *(v3 + 3824) = a1;
  *(v3 + 3832) = v1;

  if (v1)
  {
    v5 = sub_252C27100;
  }

  else
  {
    v5 = sub_252C26FA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C26D54()
{
  v1 = v0[472];
  v2 = v0[458];
  sub_252C28570(v0[465]);

  v3 = v0[476];
  sub_25299F5D4((v0 + 65));
  v4 = v0[471];
  v5 = v0[470];
  v6 = v0[469];
  v7 = v0[468];
  v8 = v0[465];
  v9 = v0[463];
  v10 = v0[462];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252C26E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 3840);
  v4 = *v1;
  *(*v1 + 3848) = v0;

  (*(v2[461] + 8))(v2[463], v2[460]);
  if (v0)
  {
    v5 = sub_252C27754;
  }

  else
  {
    v5 = sub_252C275DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C26FA4()
{
  v1 = v0 + 455;
  v2 = v0[478];
  v3 = v0[475];
  v0[455] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[462];
  v9 = v0[459];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[482] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[483] = v12;
  *v12 = v0;
  v12[1] = sub_252C271E8;
  v13 = v0[462];

  return sub_252BDB88C((v0 + 448), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252C27100()
{
  v1 = *(v0 + 3776);
  v2 = *(v0 + 3664);

  v3 = *(v0 + 3832);
  sub_25299F5D4(v0 + 520);
  v4 = *(v0 + 3768);
  v5 = *(v0 + 3760);
  v6 = *(v0 + 3752);
  v7 = *(v0 + 3744);
  v8 = *(v0 + 3720);
  v9 = *(v0 + 3704);
  v10 = *(v0 + 3696);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252C271E8()
{
  v2 = *v1;
  v3 = *(*v1 + 3864);
  v7 = *v1;
  *(*v1 + 3872) = v0;

  if (v0)
  {
    (*(v2[461] + 8))(v2[462], v2[460]);
    v4 = sub_252C274D8;
  }

  else
  {
    v5 = v2[482];
    (*(v2[461] + 8))(v2[462], v2[460]);

    v4 = sub_252C27340;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C27340()
{
  v1 = *(v0 + 3672);
  v2 = *(v0 + 3656);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 3824);
  v9 = *(v0 + 3800);
  v10 = *(v0 + 3776);
  v11 = *(v0 + 3664);
  v12 = *(v0 + 3648);
  (*(v4 + 112))(v7, v0 + 3584, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 3584));

  v13 = *(v0 + 3768);
  v14 = *(v0 + 3760);
  v15 = *(v0 + 3752);
  v16 = *(v0 + 3744);
  v17 = *(v0 + 3720);
  v18 = *(v0 + 3704);
  v19 = *(v0 + 3696);
  sub_25299F5D4(v0 + 520);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_252C274D8()
{
  v1 = *(v0 + 3856);
  v2 = *(v0 + 3824);
  v3 = *(v0 + 3776);
  v4 = *(v0 + 3664);

  v5 = *(v0 + 3872);
  sub_25299F5D4(v0 + 520);
  v6 = *(v0 + 3768);
  v7 = *(v0 + 3760);
  v8 = *(v0 + 3752);
  v9 = *(v0 + 3744);
  v10 = *(v0 + 3720);
  v11 = *(v0 + 3704);
  v12 = *(v0 + 3696);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252C275DC()
{
  v1 = v0[459];
  v2 = v0[457];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[472];
  v9 = v0[456];
  (*(v4 + 112))(v7, v0 + 443, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 443);

  v10 = v0[471];
  v11 = v0[470];
  v12 = v0[469];
  v13 = v0[468];
  v14 = v0[465];
  v15 = v0[463];
  v16 = v0[462];
  sub_25299F5D4((v0 + 65));

  v17 = v0[1];

  return v17();
}

uint64_t sub_252C27754()
{
  v1 = v0[472];

  v2 = v0[481];
  sub_25299F5D4((v0 + 65));
  v3 = v0[471];
  v4 = v0[470];
  v5 = v0[469];
  v6 = v0[468];
  v7 = v0[465];
  v8 = v0[463];
  v9 = v0[462];

  v10 = v0[1];

  return v10();
}

uint64_t sub_252C27828(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 102) = v15;
  *(v8 + 101) = v13;
  *(v8 + 100) = a8;
  *(v8 + 32) = a7;
  *(v8 + 40) = v14;
  *(v8 + 99) = a6;
  *(v8 + 98) = a5;
  *(v8 + 97) = a4;
  *(v8 + 96) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  *(v8 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C278EC, 0, 0);
}

uint64_t sub_252C278EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v19 = *(v0 + 40);
  v14 = *(v0 + 98);
  v15 = *(v0 + 99);
  v13 = *(v0 + 97);
  v4 = *(v0 + 96);
  v5 = *(v0 + 24);
  v17 = *(v0 + 100);
  v18 = *(v0 + 102);
  v16 = *(v0 + 101);
  v21 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v6 = v1[5];
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);
  v8(&v2[v6], 1, 1, v7);
  v8(&v2[v1[8]], 1, 1, v7);
  v8(&v2[v1[12]], 1, 1, v7);
  *v2 = 0;
  v2[v1[6]] = v4;
  *&v2[v1[7]] = v5;
  v2[v1[9]] = v13;
  v2[v1[10]] = v14;
  v2[v1[11]] = v15;
  *&v2[v1[13]] = v3;

  sub_252C27D40(v2, v17, v16, v19, v18 & 1);
  v9 = sub_252C06334();
  *(v0 + 64) = v9;
  v10 = *(MEMORY[0x277D55BE8] + 4);
  v20 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_252C27B10;

  return v20(0xD000000000000020, 0x8000000252E8B490, v9);
}

uint64_t sub_252C27B10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252C27CD0;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252C27C5C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C27C5C()
{
  sub_252C28570(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252C27CD0()
{
  sub_252C28570(v0[7]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_252C27D40(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18[-v12];
  v18[15] = a2;
  StateSemantic.rawValue.getter();
  sub_252E362F4();
  v14 = sub_252E36324();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 0, 1, v14);
  v16 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  sub_252956C98(v13, a1 + v16[5]);
  v18[14] = a3;
  StateSemantic.rawValue.getter();
  sub_252E362F4();
  v15(v13, 0, 1, v14);
  sub_252956C98(v13, a1 + v16[8]);
  static SemanticMapper.getSemanticKey(for:)(a4, a5 & 1, v13);
  return sub_252956C98(v13, a1 + v16[12]);
}

uint64_t sub_252C27EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C2581C(a1, a2, a3);
}

void *sub_252C27FA4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ConvenienceAnswerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C28008(void *a1)
{
  v2 = sub_252B680FC();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {

LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  memcpy(__dst, (v3 + 504 * v4 - 472), sizeof(__dst));
  sub_2529353AC(__dst, &v20);

  if (!*(__dst[24] + 16))
  {
    goto LABEL_12;
  }

  v5 = *(__dst[24] + 32);
  v6 = [a1 userTask];
  if (!v6)
  {
    sub_252C515AC();
    goto LABEL_12;
  }

  v7 = v6;
  if ([v6 taskType] != 4)
  {
    v8 = [v7 taskType];

    if (v8 == 5)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_252935408(__dst);
    goto LABEL_13;
  }

LABEL_9:
  v9 = [a1 userTask];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 attribute];

  v12 = vdupq_n_s64(v11);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A54F0, v12), vceqq_s64(unk_2864A5500, v12)))) & 1) == 0 && qword_2864A5510 != v11)
  {
    goto LABEL_12;
  }

  if (BYTE1(__dst[26]) == 2)
  {
    v15 = (__dst[11] + 32);
    v16 = *(__dst[11] + 16);
    while (2)
    {
      if (v16)
      {
        switch(*v15)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v17 = sub_252E37DB4();

            ++v15;
            --v16;
            if ((v17 & 1) == 0)
            {
              continue;
            }

            goto LABEL_21;
          default:

            goto LABEL_21;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_21:
  if (qword_27F53F3F0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_27F575A28 + 16);

  if (v18)
  {
    sub_252A4509C(v5);
    v13 = v19;
  }

  else
  {
    v13 = 0;
  }

  sub_252935408(__dst);

  return v13 & 1;
}

uint64_t sub_252C28460()
{
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = *(v0 + 42);
  v6 = *(v0 + 48);
  v7 = *(v0 + 57);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_25294B958;

  return sub_252C27828(v15, v14, v2, v3, v4, v5, v6, v10);
}

uint64_t sub_252C28570(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_252C285F0()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v37 = v2;
    if (v4 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = v4;
      v7 = 0;
      v4 &= 0xC000000000000001;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      v9 = v6 + 32;
      v10 = &off_279711000;
      v34 = v4;
      v35 = i;
      v33 = v6 & 0xFFFFFFFFFFFFFF8;
      v31 = v6;
      v32 = v6 + 32;
      while (1)
      {
        if (v4)
        {
          v11 = MEMORY[0x2530ADF00](v7, v31);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_43;
          }

          v11 = *(v9 + 8 * v7);
        }

        v12 = v11;
        v13 = __OFADD__(v7++, 1);
        if (v13)
        {
          break;
        }

        v14 = [v11 v10[220]];
        if (!v14)
        {
          goto LABEL_6;
        }

        v2 = v14;
        type metadata accessor for HomeUserTaskResponse();
        v15 = sub_252E37264();

        v16 = [v12 entity];
        if (!v16)
        {

LABEL_6:

          goto LABEL_7;
        }

        if (v15 >> 62)
        {
          v17 = sub_252E378C4();
          if (v17)
          {
LABEL_16:
            v18 = 0;
            v4 = v15 + 32;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x2530ADF00](v18, v15);
              }

              else
              {
                if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_41;
                }

                v19 = *(v4 + 8 * v18);
              }

              v20 = v19;
              v13 = __OFADD__(v18++, 1);
              if (v13)
              {
                break;
              }

              if (qword_27F53F728 != -1)
              {
                swift_once();
              }

              v21 = qword_27F575C38;
              v22 = [v20 taskOutcome];
              if (*(v21 + 16))
              {
                v23 = v22;
                v24 = *(v21 + 40);
                sub_252E37EC4();
                MEMORY[0x2530AE390](v23);
                v2 = &v36;
                v25 = sub_252E37F14();
                v26 = -1 << *(v21 + 32);
                v27 = v25 & ~v26;
                if ((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
                {
                  v28 = ~v26;
                  while (*(*(v21 + 48) + 8 * v27) != v23)
                  {
                    v27 = (v27 + 1) & v28;
                    if (((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                    {
                      goto LABEL_17;
                    }
                  }

                  v2 = &v37;
                  sub_252E37A94();
                  v29 = *(v37 + 2);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_32;
                }
              }

LABEL_17:

              if (v18 == v17)
              {

LABEL_32:
                v4 = v34;
                i = v35;
                v9 = v32;
                v8 = v33;
                v10 = &off_279711000;
                goto LABEL_7;
              }
            }

            __break(1u);
LABEL_41:
            __break(1u);
            break;
          }
        }

        else
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_16;
          }
        }

        v10 = &off_279711000;
LABEL_7:
        if (v7 == i)
        {
          v2 = v37;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_38:
  }

  return v2;
}

uint64_t sub_252C28980(void *a1, uint64_t *a2)
{
  v3 = [v2 entityResponses];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v7 = v6;
    v45 = v4;
    if (v6 >> 62)
    {
      goto LABEL_43;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v38 = v7;
        v9 = 0;
        v10 = v7 & 0xC000000000000001;
        v11 = v7 & 0xFFFFFFFFFFFFFF8;
        v12 = v7 + 32;
        v13 = &off_279711000;
        v14 = &off_279711000;
        v41 = v7 & 0xC000000000000001;
        v42 = v8;
        v39 = v7 + 32;
        v40 = v7 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v10)
          {
            v7 = MEMORY[0x2530ADF00](v9, v38);
          }

          else
          {
            if (v9 >= *(v11 + 16))
            {
              goto LABEL_40;
            }

            v7 = *(v12 + 8 * v9);
          }

          v15 = v7;
          v16 = __OFADD__(v9++, 1);
          if (v16)
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v17 = [v7 v13[221]];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 v14[222]];

            if (v19 == 7)
            {
              v20 = [v15 taskResponses];
              if (v20)
              {
                break;
              }
            }
          }

LABEL_6:
          if (v9 == v8)
          {
            v4 = v45;
            goto LABEL_45;
          }
        }

        v21 = v20;
        type metadata accessor for HomeUserTaskResponse();
        v22 = sub_252E37264();

        v23 = [v15 v13[221]];
        if (!v23)
        {
          break;
        }

        if (!(v22 >> 62))
        {
          v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_17;
          }

          goto LABEL_36;
        }

        v7 = sub_252E378C4();
        v24 = v7;
        if (!v7)
        {
LABEL_36:

LABEL_37:
          v10 = v41;
          v8 = v42;
          v12 = v39;
          v11 = v40;
          v13 = &off_279711000;
          v14 = &off_279711000;
          goto LABEL_6;
        }

LABEL_17:
        v25 = 0;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x2530ADF00](v25, v22);
          }

          else
          {
            if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v7 = *(v22 + 32 + 8 * v25);
          }

          v26 = v7;
          v16 = __OFADD__(v25++, 1);
          if (v16)
          {
            break;
          }

          if (*a1 != -1)
          {
            swift_once();
          }

          v27 = *a2;
          v28 = [v26 taskOutcome];
          if (*(v27 + 16))
          {
            v29 = v28;
            v30 = *(v27 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v29);
            v31 = sub_252E37F14();
            v32 = -1 << *(v27 + 32);
            v33 = v31 & ~v32;
            if ((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
            {
              v34 = ~v32;
              while (*(*(v27 + 48) + 8 * v33) != v29)
              {
                v33 = (v33 + 1) & v34;
                if (((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              sub_252E37A94();
              v35 = *(v45 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v7 = sub_252E37AA4();
              goto LABEL_37;
            }
          }

LABEL_18:

          if (v25 == v24)
          {
            goto LABEL_36;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v36 = v7;
        v8 = sub_252E378C4();
        v7 = v36;
        if (!v8)
        {
          goto LABEL_44;
        }
      }

      v14 = &off_279711000;
      goto LABEL_6;
    }

LABEL_44:
    v4 = MEMORY[0x277D84F90];
LABEL_45:
  }

  return v4;
}

uint64_t sub_252C28D24(unint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v166 = v7;
  v167 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v160 - v13);
  if (qword_27F53F600 != -1)
  {
    goto LABEL_144;
  }

  while (1)
  {
    v15 = qword_27F544F88;
    sub_252E36A94();
    sub_252E375D4();
    v168 = v14;
    sub_252E36A84();
    sub_252B680FC();
    sub_252B68288();
    v17 = v16;

    if (v17)
    {

      type metadata accessor for HomeStore();
      v18 = static HomeStore.shared.getter();
      if (a1)
      {
        v19 = [a1 filters];
        if (v19)
        {
          v20 = v19;
          type metadata accessor for HomeFilter();
          v21 = sub_252E37264();
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      v37 = sub_2529F744C(v21);

      if (!v37)
      {
        goto LABEL_102;
      }

      v38 = [*&v37[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
      if (!v38)
      {
        goto LABEL_101;
      }

      v39 = v38;
      v40 = type metadata accessor for Room();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v43 = sub_2529A1E08(v39);
      v44 = sub_2529A2E84();

      v165 = v44;
      if (!v44)
      {
LABEL_101:

LABEL_102:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v98 = sub_252E36AD4();
        __swift_project_value_buffer(v98, qword_27F544CE8);
        sub_252CC3D90(0xD000000000000024, 0x8000000252E8B7F0, 0xD000000000000098, 0x8000000252E69730);
        sub_252E375C4();
        v99 = v168;
        sub_252E36A74();
        (*(v167 + 8))(v99, v166);
        return 0;
      }

      v164 = v43;
      v14 = v168;
    }

    else
    {
      v22 = v3;
      a1 = v15;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      type metadata accessor for HomeStore();
      v23 = static HomeStore.shared.getter();
      v24 = sub_2529F219C();
      v26 = v25;

      if (v26)
      {
        goto LABEL_7;
      }

      if (!v24)
      {
        goto LABEL_13;
      }

      v27 = [*&v24[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
      if (!v27)
      {
        goto LABEL_7;
      }

      v28 = v27;
      v29 = type metadata accessor for Room();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_2529A1E08(v28);
      v165 = sub_2529A2E84();
      if (!v165)
      {

LABEL_7:
        sub_252956C8C(v24, v26 & 1);
LABEL_13:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544CE8);
        sub_252CC3D90(0xD000000000000026, 0x8000000252E8B610, 0xD000000000000098, 0x8000000252E69730);
        sub_252E375C4();
        sub_252E36A74();
        sub_252E375C4();
        v34 = v168;
        sub_252E36A74();
        v35 = v166;
        v36 = *(v167 + 8);
        v36(v12, v166);
        v36(v34, v35);
        return 0;
      }

      v164 = v32;
      sub_252E375C4();
      sub_252E36A74();
      sub_252956C8C(v24, 0);
      (*(v167 + 8))(v12, v166);
      v14 = v168;
      v3 = v22;
    }

    sub_252E375C4();
    v12 = MEMORY[0x277D84F90];
    sub_252E36A74();

    v45 = sub_252C2F554();
    v46 = v45;
    if (v45 >> 62)
    {
      goto LABEL_186;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_30:

LABEL_31:

    v55 = sub_252C2C640();
    v175 = v12;
    if (v55 >> 62)
    {
      v14 = v55;
      v56 = sub_252E378C4();
      v55 = v14;
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x277D84F90];
    if (!v56)
    {
LABEL_75:
      v2 = v6;

      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v76 = sub_252E36AD4();
      __swift_project_value_buffer(v76, qword_27F544CE8);
      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();

      v173 = 0xD00000000000001DLL;
      v174 = 0x8000000252E8B640;
      v77 = type metadata accessor for HomeEntity();
      v78 = MEMORY[0x2530AD730](v6, v77);
      MEMORY[0x2530AD570](v78);

      a1 = "esponses from intent response: ";
      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E8B660);
      v79 = (v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v80 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v81 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v80, v81);

      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E8B690);
      v82 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v83 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v172 = (v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      MEMORY[0x2530AD570](v82, v83);

      v14 = v174;
      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
      {
        v84 = *(v6 + 16);
        if (v84)
        {
          goto LABEL_80;
        }

LABEL_191:

        goto LABEL_192;
      }

      v84 = sub_252E378C4();
      if (!v84)
      {
        goto LABEL_191;
      }

LABEL_80:
      v85 = 0;
      v3 = (v6 & 0xC000000000000001);
      while (2)
      {
        if (v3)
        {
          v86 = MEMORY[0x2530ADF00](v85, v6);
        }

        else
        {
          if (v85 >= *(v6 + 16))
          {
            goto LABEL_143;
          }

          v86 = *(v6 + 8 * v85 + 32);
        }

        a1 = v86;
        v12 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_142;
        }

        v87 = [v86 room];
        if (v87)
        {
          v88 = v87;
          v89 = sub_252E36F34();
          v14 = v90;

          if (v89 == *v79 && v14 == v79[1])
          {

            v6 = v2;
            goto LABEL_95;
          }

          v92 = sub_252E37DB4();

          v6 = v2;
          if (v92)
          {
LABEL_95:
            v93 = [a1 home];
            if (v93)
            {
              v94 = v93;
              v95 = sub_252E36F34();
              v14 = v96;

              if (v95 == *v172 && v14 == v172[1])
              {

LABEL_111:
                (*(v167 + 8))(v168, v166);

                return 1;
              }

              v97 = sub_252E37DB4();

              v6 = v2;
              if (v97)
              {
                goto LABEL_111;
              }

              goto LABEL_82;
            }
          }
        }

LABEL_82:
        ++v85;
        if (v12 == v84)
        {
          goto LABEL_191;
        }

        continue;
      }
    }

    v57 = 0;
    v171 = (v55 & 0xFFFFFFFFFFFFFF8);
    v172 = (v55 & 0xC000000000000001);
    v163 = v55;
    v169 = (v55 + 32);
    v170 = v56;
    while (1)
    {
      if (v172)
      {
        v58 = MEMORY[0x2530ADF00](v57, v163);
      }

      else
      {
        if (v57 >= v171[2])
        {
          goto LABEL_141;
        }

        v58 = v169[v57];
      }

      v3 = v58;
      v59 = __OFADD__(v57++, 1);
      if (v59)
      {
        break;
      }

      v60 = [v58 deviceTypes];
      if (v60)
      {
        v61 = v60;
        v14 = sub_252E37264();

        v12 = v14[2];
        if (v12)
        {
          v62 = (v14 + 4);
          v63 = v6;
          do
          {
            v64 = *v62++;
            v65 = sub_252E25FC4(v64);
            if ((v66 & 1) == 0)
            {
              v67 = v65;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v63 = sub_2529F7B8C(0, *(v63 + 2) + 1, 1, v63);
              }

              v2 = *(v63 + 2);
              v68 = *(v63 + 3);
              if (v2 >= v68 >> 1)
              {
                v63 = sub_2529F7B8C((v68 > 1), v2 + 1, 1, v63);
              }

              *(v63 + 2) = v2 + 1;
              *&v63[8 * v2 + 32] = v67;
            }

            --v12;
          }

          while (v12);
        }

        else
        {
          v63 = v6;
        }
      }

      else
      {
        v63 = 0;
      }

      if (qword_27F53F408 != -1)
      {
        swift_once();
      }

      v69 = qword_27F575A40;
      if (v63)
      {
        a1 = v63;
      }

      else
      {
        a1 = v6;
      }

      if (*(qword_27F575A40 + 16) && (v70 = *(a1 + 16)) != 0)
      {
        v12 = 0;
        v2 = qword_27F575A40 + 56;
        while (1)
        {
          if (*(v69 + 16))
          {
            v14 = *(a1 + 32 + 8 * v12);
            v71 = *(v69 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v14);
            v72 = sub_252E37F14();
            v73 = -1 << *(v69 + 32);
            v74 = v72 & ~v73;
            if ((*(v2 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
            {
              break;
            }
          }

LABEL_62:
          if (++v12 == v70)
          {

            goto LABEL_70;
          }
        }

        v75 = ~v73;
        while (*(*(v69 + 48) + 8 * v74) != v14)
        {
          v74 = (v74 + 1) & v75;
          if (((*(v2 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        sub_252E37A94();
        v14 = *(v175 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_70:
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
      }

      if (v57 == v170)
      {
        v6 = v175;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
  }

LABEL_23:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x2530ADF00](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_196:

LABEL_197:

      sub_252956C8C(v172, 0);
      v159 = 1;
      goto LABEL_198;
    }

    v47 = *(v46 + 32);
  }

  v14 = v47;

  v48 = [v14 entity];

  if (!v48)
  {
    goto LABEL_31;
  }

  v49 = [v48 entityIdentifier];

  if (!v49)
  {
    goto LABEL_31;
  }

  v14 = sub_252E36F34();
  v51 = v50;

  type metadata accessor for HomeStore();
  v52 = static HomeStore.shared.getter();
  a1 = sub_2529F53FC(v14, v51);
  v54 = v53;

  if (v54)
  {
    sub_252956C8C(a1, 1);
    goto LABEL_30;
  }

  if (!a1)
  {
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    v104 = sub_252E36AD4();
    __swift_project_value_buffer(v104, qword_27F544CE8);
    v173 = 0;
    v174 = 0xE000000000000000;
    sub_252E379F4();

    v173 = 0xD000000000000019;
    v174 = 0x8000000252E8B6B0;
    MEMORY[0x2530AD570](v14, v51);

    MEMORY[0x2530AD570](0x756F662073617720, 0xEB000000002E646ELL);
    sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

    v105 = 0;
    goto LABEL_139;
  }

  if ([*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) requiresDeviceUnlock])
  {
    if (qword_27F53F4C0 != -1)
    {
      goto LABEL_201;
    }

    goto LABEL_109;
  }

  v106 = sub_252B2F280();
  v107 = v106;
  if (v106 >> 62)
  {
    v108 = sub_252E378C4();
    if (!v108)
    {
      goto LABEL_135;
    }
  }

  else
  {
    v108 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v108)
    {
      goto LABEL_135;
    }
  }

  v163 = v3;
  v172 = a1;
  a1 = 0;
  v109 = v107 & 0xC000000000000001;
  v110 = v107 & 0xFFFFFFFFFFFFFF8;
  v111 = (v107 + 32);
  v170 = v108;
  v171 = (v107 & 0xFFFFFFFFFFFFFF8);
  v169 = (v107 + 32);
  while (1)
  {
    if (v109)
    {
      v112 = MEMORY[0x2530ADF00](a1, v107);
      v59 = __OFADD__(a1++, 1);
      if (v59)
      {
        break;
      }

      goto LABEL_121;
    }

    if (a1 >= *(v110 + 16))
    {
      goto LABEL_200;
    }

    v112 = v111[a1];

    v59 = __OFADD__(a1++, 1);
    if (v59)
    {
      break;
    }

LABEL_121:
    if (qword_27F53F408 != -1)
    {
      swift_once();
    }

    v113 = qword_27F575A40;
    v114 = (*(*v112 + 256))();
    if (!*(v113 + 16) || (v115 = v114, v116 = *(v113 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v115), v117 = sub_252E37F14(), v118 = -1 << *(v113 + 32), v119 = v117 & ~v118, ((*(v113 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0))
    {
LABEL_134:

      a1 = v172;
LABEL_135:

      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v122 = sub_252E36AD4();
      __swift_project_value_buffer(v122, qword_27F544CE8);
      v101 = "No scene with identifier ";
      v102 = 0xD00000000000005DLL;
      goto LABEL_138;
    }

    v120 = ~v118;
    while (*(*(v113 + 48) + 8 * v119) != v115)
    {
      v119 = (v119 + 1) & v120;
      if (((*(v113 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    v121 = v170;
    v110 = v171;
    v111 = v169;
    if (a1 == v170)
    {

      v123 = 0;
      v173 = v12;
      v169 = (v163 + 32);
      while (2)
      {
        v124 = v123;
        while (1)
        {
          if (v109)
          {
            v125 = MEMORY[0x2530ADF00](v124, v107);
            v123 = (v124 + 1);
            if (__OFADD__(v124, 1))
            {
              goto LABEL_204;
            }
          }

          else
          {
            if (v124 >= *(v110 + 16))
            {
              goto LABEL_205;
            }

            v125 = *(v107 + 8 * v124 + 32);

            v123 = (v124 + 1);
            if (__OFADD__(v124, 1))
            {
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
              goto LABEL_207;
            }
          }

          v126 = [*(v125 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
          if (v126)
          {
            break;
          }

          ++v124;
          if (v123 == v121)
          {
            goto LABEL_161;
          }
        }

        v127 = v126;
        v128 = type metadata accessor for Room();
        v129 = *(v128 + 48);
        v130 = *(v128 + 52);
        v163 = swift_allocObject();
        *(v163 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v127;
        v131 = v127;
        v132 = [v131 uniqueIdentifier];
        sub_252E32E64();

        v133 = [v131 name];
        v162 = sub_252E36F34();
        v161 = v134;

        v135 = [v131 assistantIdentifier];
        if (v135)
        {
          v136 = v135;
          v160 = sub_252E36F34();
          v138 = v137;
        }

        else
        {

          v160 = 0;
          v138 = 0;
        }

        v139 = v163;
        v140 = (*v169)(v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v2);
        v141 = (v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v142 = v161;
        *v141 = v162;
        v141[1] = v142;
        *(v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v143 = (v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v143 = v160;
        v143[1] = v138;
        MEMORY[0x2530AD700](v140);
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v144 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v12 = v173;
        v110 = v171;
        if (v123 != v121)
        {
          continue;
        }

        break;
      }

LABEL_161:

      if (qword_27F53F4C0 == -1)
      {
        goto LABEL_162;
      }

LABEL_207:
      swift_once();
LABEL_162:
      v145 = sub_252E36AD4();
      __swift_project_value_buffer(v145, qword_27F544CE8);
      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E8B730);
      v146 = type metadata accessor for Room();
      v147 = MEMORY[0x2530AD730](v12, v146);
      MEMORY[0x2530AD570](v147);

      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E8B780);
      v6 = v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      v148 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v149 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v148, v149);

      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E8B690);
      v150 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v151 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v171 = (v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      MEMORY[0x2530AD570](v150, v151);

      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      if (v12 >> 62)
      {
        v46 = sub_252E378C4();
      }

      else
      {
        v46 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      if (!v46)
      {
LABEL_188:

        sub_252956C8C(v172, 0);

        v159 = 0;
LABEL_198:
        (*(v167 + 8))(v168, v166);
        return v159;
      }

      a1 = 0;
      v2 = v12 & 0xC000000000000001;
      v170 = v6;
      while (v2)
      {
        v152 = MEMORY[0x2530ADF00](a1, v12);
        v3 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_185;
        }

LABEL_171:
        v153 = *(v152 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v6 && *(v152 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v6 + 8);
        if (v153 || (sub_252E37DB4()) && (v154 = sub_2529A2E84()) != 0)
        {
          v156 = *(v154 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v155 = *(v154 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          if (v156 == *v171 && v155 == v171[1])
          {
            goto LABEL_196;
          }

          v158 = sub_252E37DB4();

          v14 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
          v6 = v170;
          if (v158)
          {
            goto LABEL_197;
          }
        }

        else
        {
        }

        ++a1;
        if (v3 == v46)
        {
          goto LABEL_188;
        }
      }

      if (a1 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_206;
      }

      v152 = *(v12 + 8 * a1 + 32);

      v3 = (a1 + 1);
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_171;
      }

LABEL_185:
      __break(1u);
LABEL_186:
      if (!sub_252E378C4())
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  swift_once();
LABEL_109:
  v100 = sub_252E36AD4();
  __swift_project_value_buffer(v100, qword_27F544CE8);
  v101 = "if a room with name ";
  v102 = 0xD000000000000035;
LABEL_138:
  sub_252CC3D90(v102, v101 | 0x8000000000000000, 0xD000000000000098, 0x8000000252E69730);

  v105 = a1;
LABEL_139:
  sub_252956C8C(v105, 0);

LABEL_192:

  (*(v167 + 8))(v168, v166);
  return 0;
}

uint64_t sub_252C2A5D8()
{
  v0 = sub_252C28980(&qword_27F53F730, &qword_27F575C40);
  v1 = v0;
  v25 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &off_279711000;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * v3 + 32);
      }

      v9 = v8;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v11 = [v8 v6[221]];
      if (!v11)
      {
        goto LABEL_4;
      }

      v12 = v11;
      v13 = [v11 entityIdentifier];

      if (!v13)
      {
        goto LABEL_4;
      }

      v14 = sub_252E36F34();
      v15 = i;
      v16 = v1;
      v17 = v4;
      v18 = v6;
      v20 = v19;

      v21 = sub_252ADD4E4(v14, v20);
      v6 = v18;
      v4 = v17;
      v1 = v16;
      i = v15;
      v5 = v24;

      if ((1.0 - v21) > 0.6)
      {
      }

      else
      {
LABEL_4:
        sub_252E37A94();
        v7 = *(v25 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      ++v3;
      if (v10 == i)
      {
        v22 = v25;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_20:

  return v22;
}

id sub_252C2A7E8()
{
  v1 = [v0 entityResponses];
  if (!v1)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v2 = v1;
  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v4 = sub_252E378C4();
    if (!v4)
    {
      goto LABEL_35;
    }

LABEL_4:
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v32 = v3 + 32;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x277D84F90];
    v35 = v4;
    v36 = v3;
    v34 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x2530ADF00](v5, v3);
        v10 = __OFADD__(v5++, 1);
        if (v10)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_41;
        }

        v9 = *(v32 + 8 * v5);
        v10 = __OFADD__(v5++, 1);
        if (v10)
        {
          goto LABEL_40;
        }
      }

      v37 = v9;
      v11 = [v9 taskResponses];
      if (v11)
      {
        break;
      }

LABEL_5:
      type metadata accessor for HomeUserTaskResponse();
      v8 = sub_252E37254();

      [v37 setTaskResponses_];

      if (v5 == v4)
      {
        goto LABEL_35;
      }
    }

    v12 = v11;
    type metadata accessor for HomeUserTaskResponse();
    v13 = sub_252E37264();

    v38 = v7;
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    v14 = sub_252E378C4();
    if (!v14)
    {
LABEL_30:
      v7 = MEMORY[0x277D84F90];
LABEL_31:

      goto LABEL_5;
    }

LABEL_15:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 userTask];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 taskType];
      }

      else
      {
        v21 = 0;
      }

      v22 = vdupq_n_s64(v21);
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A7318, v22), vceqq_s64(unk_2864A7328, v22)))))
      {
        sub_252E37A94();
        v23 = *(v38 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v15;
      if (v18 == v14)
      {
        v4 = v35;
        v3 = v36;
        v6 = v34;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_33:
    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544D60);
    sub_252E379F4();

    v25 = v31;
    v26 = [v25 description];
    v27 = sub_252E36F34();
    v29 = v28;

    MEMORY[0x2530AD570](v27, v29);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v3 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      continue;
    }

    break;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_35:

  return v31;
}

uint64_t sub_252C2AC20()
{
  v1 = [v0 entityResponses];
  if (!v1)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D60);
    sub_252E379F4();

    v29 = v0;
    v30 = [v29 description];
    v31 = sub_252E36F34();
    v33 = v32;

    MEMORY[0x2530AD570](v31, v33);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
    goto LABEL_45;
  }

  v2 = v1;
  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
LABEL_44:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_45:

    return 0;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_45;
  }

LABEL_4:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  v9 = &off_279711000;
  v38 = v3 + 32;
  v39 = v3;
  v36 = v3 & 0xC000000000000001;
  v37 = v4;
  v35 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6)
    {
      v10 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_43;
      }

      v10 = *(v8 + 8 * v5);
    }

    v11 = v10;
    v12 = __OFADD__(v5++, 1);
    if (v12)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = [v10 v9[220]];
    if (v13)
    {
      break;
    }

LABEL_6:
    if (v5 == v4)
    {
      goto LABEL_45;
    }
  }

  v14 = v13;
  type metadata accessor for HomeUserTaskResponse();
  v15 = sub_252E37264();

  v16 = [v11 entity];
  if (!v16)
  {

    v9 = &off_279711000;
    goto LABEL_6;
  }

  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v17 = sub_252E378C4();
  if (!v17)
  {
LABEL_34:

LABEL_35:
    v8 = v38;
    v9 = &off_279711000;
    goto LABEL_6;
  }

LABEL_15:
  v18 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2530ADF00](v18, v15);
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v19 = *(v15 + 32 + 8 * v18);
    }

    v20 = v19;
    v12 = __OFADD__(v18++, 1);
    if (v12)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (qword_27F53F730 != -1)
    {
      swift_once();
    }

    v3 = qword_27F575C40;
    v21 = [v20 taskOutcome];
    if (*(v3 + 16))
    {
      v22 = v21;
      v23 = *(v3 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v22);
      v24 = sub_252E37F14();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      if ((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        break;
      }
    }

LABEL_16:

    if (v18 == v17)
    {

      v3 = v39;
      v6 = v36;
      v4 = v37;
      v7 = v35;
      goto LABEL_35;
    }
  }

  v27 = ~v25;
  while (*(*(v3 + 48) + 8 * v26) != v22)
  {
    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return 1;
}

uint64_t sub_252C2B064(void *a1)
{
  v3 = [v1 entityResponses];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v67 = v4;
    v61 = v6;
    if (v6 >> 62)
    {
      goto LABEL_91;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
      v63 = i;
      v9 = &off_279711000;
      v62 = a1;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](v8, v61);
        }

        else
        {
          if (v8 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v10 = *(v61 + 32 + 8 * v8);
        }

        v11 = v10;
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_87;
        }

        v4 = [a1 attribute];
        v13 = [v11 v9[220]];
        v64 = v11;
        if (!v13)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v23 = sub_252E36AD4();
          __swift_project_value_buffer(v23, qword_27F544D60);
          v65 = 0;
          v66 = 0xE000000000000000;
          sub_252E379F4();

          v65 = 0xD00000000000002DLL;
          v66 = 0x8000000252E6E870;
          v24 = [v11 description];
          v25 = sub_252E36F34();
          v27 = v26;

          MEMORY[0x2530AD570](v25, v27);

          sub_252CC3D90(v65, v66, 0xD00000000000008CLL, 0x8000000252E6E8A0);
          goto LABEL_29;
        }

        v14 = v13;
        type metadata accessor for HomeUserTaskResponse();
        v15 = sub_252E37264();

        if (!(v15 >> 62))
        {
          break;
        }

        v16 = sub_252E378C4();
        if (v16)
        {
          goto LABEL_15;
        }

LABEL_29:

LABEL_30:
        v4 = [a1 attribute];
        v28 = [v64 v9[220]];
        if (v28)
        {
          v29 = v28;
          type metadata accessor for HomeUserTaskResponse();
          v30 = sub_252E37264();

          if (v30 >> 62)
          {
            v31 = sub_252E378C4();
            if (v31)
            {
LABEL_33:
              v32 = 0;
              while (1)
              {
                if ((v30 & 0xC000000000000001) != 0)
                {
                  v33 = MEMORY[0x2530ADF00](v32, v30);
                }

                else
                {
                  if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_86;
                  }

                  v33 = *(v30 + 8 * v32 + 32);
                }

                v34 = v33;
                a1 = (v32 + 1);
                if (__OFADD__(v32, 1))
                {
                  break;
                }

                v35 = [v33 userTask];
                if (v35)
                {
                  v36 = v35;
                  v37 = [v35 attribute];

                  if (v37 == v4)
                  {

                    v4 = sub_2529C6784();

                    a1 = v62;
                    v9 = &off_279711000;
                    if ((v4 & 1) == 0)
                    {
                      goto LABEL_6;
                    }

                    goto LABEL_49;
                  }
                }

                ++v32;
                if (a1 == v31)
                {
                  goto LABEL_76;
                }
              }

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
              goto LABEL_90;
            }
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31)
            {
              goto LABEL_33;
            }
          }

LABEL_76:

          a1 = v62;
LABEL_77:
          v9 = &off_279711000;
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v38 = sub_252E36AD4();
          v39 = __swift_project_value_buffer(v38, qword_27F544D60);
          v65 = 0;
          v66 = 0xE000000000000000;
          sub_252E379F4();

          v65 = 0xD00000000000002DLL;
          v66 = 0x8000000252E6E870;
          v40 = [v64 description];
          v41 = sub_252E36F34();
          v43 = v42;

          MEMORY[0x2530AD570](v41, v43);

          v4 = v39;
          sub_252CC3D90(v65, v66, 0xD00000000000008CLL, 0x8000000252E6E8A0);
        }

LABEL_7:
        if (v8 == v63)
        {
          v4 = v67;
          goto LABEL_81;
        }
      }

      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_29;
      }

LABEL_15:
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2530ADF00](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        a1 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v20 = [v18 userTask];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 attribute];

          if (v22 == v4)
          {
            break;
          }
        }

        ++v17;
        if (a1 == v16)
        {
          a1 = v62;
          v9 = &off_279711000;
          goto LABEL_29;
        }
      }

      v4 = sub_2529C61E4();

      a1 = v62;
      v9 = &off_279711000;
      if ((v4 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_49:
      v44 = [v64 v9[220]];
      if (!v44)
      {
        goto LABEL_6;
      }

      v4 = v44;
      type metadata accessor for HomeUserTaskResponse();
      v45 = sub_252E37264();

      v46 = [v64 entity];
      if (!v46)
      {

        goto LABEL_7;
      }

      if (v45 >> 62)
      {
        v47 = sub_252E378C4();
        if (v47)
        {
          goto LABEL_53;
        }

LABEL_5:

LABEL_6:

        goto LABEL_7;
      }

      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_5;
      }

LABEL_53:
      v48 = 0;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x2530ADF00](v48, v45);
        }

        else
        {
          if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v49 = *(v45 + 32 + 8 * v48);
        }

        v50 = v49;
        v12 = __OFADD__(v48++, 1);
        if (v12)
        {
          break;
        }

        if (qword_27F53F728 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575C38;
        v52 = [v50 taskOutcome];
        if (*(v51 + 16))
        {
          v53 = v52;
          v54 = *(v51 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v53);
          v4 = &v65;
          v55 = sub_252E37F14();
          v56 = -1 << *(v51 + 32);
          v57 = v55 & ~v56;
          if ((*(v51 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v58 = ~v56;
            while (*(*(v51 + 48) + 8 * v57) != v53)
            {
              v57 = (v57 + 1) & v58;
              if (((*(v51 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            v4 = &v67;
            sub_252E37A94();
            v59 = *(v67 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_77;
          }
        }

LABEL_54:

        if (v48 == v47)
        {

          goto LABEL_77;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      ;
    }

LABEL_81:
  }

  return v4;
}

BOOL sub_252C2B888()
{
  v1 = v0;
  v2 = [v0 entityResponses];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    if (!(v4 >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252E379F4();

    v14 = v0;
    v15 = [v14 description];
    v16 = sub_252E36F34();
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v5 = sub_252E378C4();
LABEL_4:

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 entityResponses];
  if (!v6)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D60);
    sub_252E379F4();

    v20 = v1;
    v21 = [v20 description];
    v22 = sub_252E36F34();
    v24 = v23;

    MEMORY[0x2530AD570](v22, v24);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v8 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }

LABEL_19:
    v9 = sub_252E378C4();
    goto LABEL_8;
  }

  v7 = v6;
  type metadata accessor for HomeEntityResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

LABEL_7:
  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v10 = sub_252C28980(&qword_27F53F730, &qword_27F575C40);
  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v9 == v11;
}

id sub_252C2BC20(id a1)
{
  v2 = [v1 entityResponses];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  if (!(v4 >> 62))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_39;
    }

LABEL_4:
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v35 = v4 + 32;
    v36 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = &off_279711000;
    v9 = MEMORY[0x277D84F90];
    v38 = v5;
    v39 = v4;
    v37 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v11 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *(v36 + 16))
        {
          goto LABEL_45;
        }

        v11 = *(v35 + 8 * v6);
      }

      v12 = v11;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v14 = [v11 v8[220]];
      if (v14)
      {
        v15 = v14;
        v40 = v12;
        type metadata accessor for HomeUserTaskResponse();
        v16 = sub_252E37264();

        v42 = v9;
        if (v16 >> 62)
        {
          v17 = sub_252E378C4();
          if (v17)
          {
LABEL_15:
            v18 = 0;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x2530ADF00](v18, v16);
              }

              else
              {
                if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_43;
                }

                v19 = *(v16 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              v22 = [v19 userTask];
              if (v22 && (v23 = v22, v24 = [v22 attribute], v23, v24 == a1))
              {
                sub_252E37A94();
                v25 = *(v42 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
              }

              else
              {
              }

              ++v18;
              if (v21 == v17)
              {
                v26 = v42;
                v5 = v38;
                v4 = v39;
                v7 = v37;
                v8 = &off_279711000;
                v9 = MEMORY[0x277D84F90];
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_43:
            __break(1u);
            break;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_15;
          }
        }

        v9 = MEMORY[0x277D84F90];
        v26 = MEMORY[0x277D84F90];
LABEL_30:

        v12 = v40;
      }

      else
      {
        v26 = v9;
      }

      if (v26 >> 62)
      {
        if (!sub_252E378C4())
        {
LABEL_33:

          goto LABEL_6;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      type metadata accessor for HomeUserTaskResponse();
      v10 = sub_252E37254();

      [v12 setTaskResponses_];

LABEL_6:
      if (v6 == v5)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_37:
    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252E379F4();

    v28 = v34;
    v29 = [v28 description];
    v30 = sub_252E36F34();
    v32 = v31;

    MEMORY[0x2530AD570](v30, v32);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v4 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      continue;
    }

    break;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_39:

  return v34;
}

uint64_t sub_252C2C068()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v25 = v2;
    if (v4 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v23 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = v4 & 0xC000000000000001;
      v20 = v4;
      v21 = i;
      v22 = v4 + 32;
      v4 = &off_279711000;
      while (1)
      {
        if (v24)
        {
          v7 = MEMORY[0x2530ADF00](v6, v20);
        }

        else
        {
          if (v6 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(v22 + 8 * v6);
        }

        v8 = v7;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [v7 taskResponses];
        if (v10)
        {
          v11 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v12 = sub_252E37264();

          if (v12 >> 62)
          {
            v13 = sub_252E378C4();
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v13 == v14)
            {

              i = v21;
              goto LABEL_6;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v17 = [v15 taskOutcome];

            ++v14;
            if (v17 == 17)
            {

              sub_252E37A94();
              v18 = *(v25 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v21;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

LABEL_6:
        if (v6 == i)
        {
          v2 = v25;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_33:
  }

  return v2;
}

uint64_t sub_252C2C2E4(id a1)
{
  v2 = v1;
  v4 = [v2 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    if (v6 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v36 = v6 + 32;
      v33 = i;
      v34 = v6;
      v31 = v6 & 0xFFFFFFFFFFFFFF8;
      v32 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v11 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_35;
          }

          v11 = *(v36 + 8 * v8);
        }

        v12 = v11;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v14 = [v11 taskResponses];
        v15 = v12;
        if (v14)
        {
          v16 = v14;
          v35 = v15;
          type metadata accessor for HomeUserTaskResponse();
          v17 = sub_252E37264();

          v6 = v17 & 0xFFFFFFFFFFFFFF8;
          if (v17 >> 62)
          {
            v18 = sub_252E378C4();
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v19 = 0;
          while (1)
          {
            if (v18 == v19)
            {

              i = v33;
              v6 = v34;
              v10 = v31;
              v9 = v32;
              goto LABEL_23;
            }

            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v17);
            }

            else
            {
              if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            v22 = [v20 taskOutcome];

            ++v19;
            if (v22 == a1)
            {

              v29 = 1;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

LABEL_23:
        if (v8 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);
    sub_252E379F4();

    v24 = v2;
    v25 = [v24 description];
    v26 = sub_252E36F34();
    v28 = v27;

    MEMORY[0x2530AD570](v26, v28);

    sub_252CC4050(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730, 0xD000000000000011, 0x8000000252E8B4F0, 72);
  }

LABEL_30:
  v29 = 0;
LABEL_31:

  return v29;
}

uint64_t sub_252C2C640()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v19 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
LABEL_22:
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = [v7 entity];

      ++v5;
      if (v10)
      {
        MEMORY[0x2530AD700]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v6 = v19;
        v5 = v9;
      }
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    sub_252E379F4();

    v13 = v0;
    v14 = [v13 description];
    v15 = sub_252E36F34();
    v17 = v16;

    MEMORY[0x2530AD570](v15, v17);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_252C2C8E0(uint64_t a1)
{
  v3 = [v1 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 32 + 8 * v7);
        }

        v9 = v8;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        v11 = sub_252DA6828();
        v12 = *(v11 + 2);
        v13 = 32;
        while (v12)
        {
          v14 = *&v11[v13];
          v13 += 8;
          --v12;
          if (v14 == a1)
          {

            return 1;
          }
        }

        if (v7 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    sub_252E379F4();

    v17 = v1;
    v18 = [v17 description];
    v19 = sub_252E36F34();
    v21 = v20;

    MEMORY[0x2530AD570](v19, v21);

    sub_252CC4050(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730, 0x7274746128736168, 0xEF293A6574756269, 80);
  }

LABEL_19:

  return 0;
}

uint64_t sub_252C2CB58()
{
  result = [v0 entityResponses];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v6 = *(v3 + 32 + 8 * v5);
        }

        v7 = v6;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v9 = [v6 entity];
        if (v9 && (v10 = v9, v11 = [v9 deviceTypes], v10, v11))
        {
          v12 = sub_252E37264();

          if (*(v12 + 16))
          {
            v13 = *(v12 + 32);

            if (qword_27F53F410 != -1)
            {
              swift_once();
            }

            v14 = 0;
            v15 = 1 << *(qword_27F575A48 + 32);
            if (v15 < 64)
            {
              v16 = ~(-1 << v15);
            }

            else
            {
              v16 = -1;
            }

            v17 = v16 & *(qword_27F575A48 + 56);
            v18 = (v15 + 63) >> 6;
            while (v17)
            {
              v19 = v14;
LABEL_25:
              v20 = __clz(__rbit64(v17));
              v17 &= v17 - 1;
              if (*(*(qword_27F575A48 + 48) + ((v19 << 9) | (8 * v20))) == v13)
              {

                return 1;
              }
            }

            while (1)
            {
              v19 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              if (v19 >= v18)
              {
                goto LABEL_5;
              }

              v17 = *(qword_27F575A48 + 56 + 8 * v19);
              ++v14;
              if (v17)
              {
                v14 = v19;
                goto LABEL_25;
              }
            }

            __break(1u);
            break;
          }

          if (v5 == i)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_5:

          if (v5 == i)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    return 0;
  }

  return result;
}

void *sub_252C2CDC4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (qword_27F53F400 != -1)
  {
    goto LABEL_161;
  }

LABEL_2:
  v5 = qword_27F575A38;
  if (!*(qword_27F575A38 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v105 = v2;
  v6 = sub_252A4509C(v4);
  v7 = MEMORY[0x277D84F90];
  if ((v8 & 1) == 0)
  {
    return v7;
  }

  v9 = *(*(v5 + 56) + 8 * v6);
  type metadata accessor for MutableAttributeValue();
  swift_initStackObject();
  v10 = sub_252D6CC80(v9);
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 8)
  {
    if (a2 != 13)
    {
      LODWORD(v17) = 0;
      goto LABEL_44;
    }

    v13 = v10;
    LOBYTE(v112) = v4;
    if (StateSemantic.rawValue.getter() == 0x64656D7261 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v19 = sub_252E37DB4();

      if ((v19 & 1) == 0)
      {
        LODWORD(v17) = 1;
        goto LABEL_44;
      }
    }

    v20 = *(v13 + 56);
    *(v13 + 48) = xmmword_252E41BD0;

    LODWORD(v17) = 1;
    goto LABEL_44;
  }

  v11 = v10;
  LOBYTE(v112) = v4;
  if (StateSemantic.rawValue.getter() != 1852141679 || v12 != 0xE400000000000000)
  {
    v15 = sub_252E37DB4();

    if (v15)
    {
      goto LABEL_14;
    }

    LOBYTE(v112) = v4;
    if (StateSemantic.rawValue.getter() != 0x6465736F6C63 || v21 != 0xE600000000000000)
    {
      v22 = sub_252E37DB4();

      if ((v22 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if (a2 == 9)
  {
    LOBYTE(v112) = v4;
    if (StateSemantic.rawValue.getter() == 1852141679 && v16 == 0xE400000000000000)
    {

LABEL_29:
      LODWORD(v17) = 0;
      v24 = 100;
LABEL_30:
      *(v11 + 40) = v24;
      goto LABEL_44;
    }

    v23 = sub_252E37DB4();

    if (v23)
    {
      goto LABEL_29;
    }

    LOBYTE(v112) = v4;
    if (StateSemantic.rawValue.getter() != 0x6465736F6C63 || v26 != 0xE600000000000000)
    {
      v27 = sub_252E37DB4();

      if (v27)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    goto LABEL_21;
  }

  LOBYTE(v112) = v4;
  if (StateSemantic.rawValue.getter() == 1852141679 && v18 == 0xE400000000000000)
  {
LABEL_21:

LABEL_32:
    LODWORD(v17) = 0;
    *(v11 + 40) = 0;
    goto LABEL_44;
  }

  v25 = sub_252E37DB4();

  if (v25)
  {
    goto LABEL_32;
  }

  LOBYTE(v112) = v4;
  if (StateSemantic.rawValue.getter() == 0x6465736F6C63 && v28 == 0xE600000000000000)
  {

LABEL_42:
    LODWORD(v17) = 0;
    v24 = 1;
    goto LABEL_30;
  }

  v29 = sub_252E37DB4();

  if (v29)
  {
    goto LABEL_42;
  }

LABEL_43:
  LODWORD(v17) = 0;
LABEL_44:
  v30 = sub_252D6CDCC();
  v31 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Shared/Utilities/ControlHomeIntent/ControlHomeIntentResponse+Utils.swift";
  if (!v30)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D60);
    sub_252CC4050(0xD00000000000004ALL, 0x8000000252E8B540, 0xD000000000000098, 0x8000000252E69730, 0xD000000000000014, 0x8000000252E8B590, 401);

    return v7;
  }

  v32 = v30;
  v108 = a2;
  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544D60);
    a2 = 0xE000000000000000;
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x2064657269736544, 0xEF203A6574617473);
    LOBYTE(v111) = v4;
    sub_252E37AE4();
    v31 -= 32;
    sub_252CC3D90(v112, v113, 0xD000000000000098, v31 | 0x8000000000000000);

    v112 = 0;
    v113 = 0xE000000000000000;
    sub_252E379F4();

    v112 = 0xD000000000000018;
    v113 = 0x8000000252E8B5B0;
    v34 = v32;
    v35 = [v34 description];
    v36 = sub_252E36F34();
    v38 = v37;
    v110 = v34;

    MEMORY[0x2530AD570](v36, v38);

    v92 = v31;
    sub_252CC3D90(v112, v113, 0xD000000000000098, v31 | 0x8000000000000000);

    v32 = v108;
    if (!v17)
    {
      goto LABEL_80;
    }

    LOBYTE(v112) = v4;
    if (StateSemantic.rawValue.getter() == 0x64656D7261 && v39 == 0xE500000000000000)
    {
      break;
    }

    v41 = sub_252E37DB4();

    if (v41)
    {
      goto LABEL_54;
    }

LABEL_80:
    if (v108 != 9)
    {
      goto LABEL_123;
    }

    LOBYTE(v112) = v4;
    if (StateSemantic.rawValue.getter() == 1852141679 && v55 == 0xE400000000000000)
    {
    }

    else
    {
      v56 = sub_252E37DB4();

      if ((v56 & 1) == 0)
      {
LABEL_123:
        v73 = sub_252C285F0();
        v112 = v7;
        if (v73 >> 62)
        {
          v88 = v73;
          v2 = sub_252E378C4();
          v73 = v88;
          if (!v2)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v2 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_149;
          }
        }

        v74 = 0;
        v101 = v73 & 0xFFFFFFFFFFFFFF8;
        v104 = v73 & 0xC000000000000001;
        v91 = v73;
        v95 = v2;
        v98 = v73 + 32;
        while (1)
        {
          while (1)
          {
            if (v104)
            {
              v75 = MEMORY[0x2530ADF00](v74, v91);
            }

            else
            {
              if (v74 >= *(v101 + 16))
              {
                goto LABEL_158;
              }

              v75 = *&v98[8 * v74];
            }

            v76 = v75;
            v47 = __OFADD__(v74++, 1);
            if (v47)
            {
              goto LABEL_157;
            }

            v77 = [v75 taskResponses];
            if (v77)
            {
              break;
            }

            if (v74 == v2)
            {
              goto LABEL_148;
            }
          }

          v78 = v77;
          v107 = v76;
          type metadata accessor for HomeUserTaskResponse();
          v2 = sub_252E37264();

          if (v2 >> 62)
          {
            v79 = sub_252E378C4();
            if (v79)
            {
LABEL_134:
              v80 = 0;
              a2 = v2 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v81 = MEMORY[0x2530ADF00](v80, v2);
                }

                else
                {
                  if (v80 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_152;
                  }

                  v81 = *(v2 + 8 * v80 + 32);
                }

                v82 = v81;
                v83 = v80 + 1;
                if (__OFADD__(v80, 1))
                {
                  break;
                }

                v111 = v81;
                v4 = sub_252DA5D40(&v111, v108, v110, 0, 1);

                if (v4)
                {

                  sub_252E37A94();
                  v84 = *(v112 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_147;
                }

                ++v80;
                if (v83 == v79)
                {
                  goto LABEL_146;
                }
              }

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
              swift_once();
              goto LABEL_2;
            }
          }

          else
          {
            v79 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v79)
            {
              goto LABEL_134;
            }
          }

LABEL_146:

LABEL_147:
          v2 = v95;
          if (v74 == v95)
          {
LABEL_148:
            v7 = v112;
            goto LABEL_149;
          }
        }
      }
    }

    v57 = sub_252C285F0();
    v112 = v7;
    if (v57 >> 62)
    {
      v90 = v57;
      v58 = sub_252E378C4();
      v57 = v90;
      if (!v58)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_149;
      }
    }

    v59 = 0;
    v103 = v57 & 0xFFFFFFFFFFFFFF8;
    v105 = v57 & 0xC000000000000001;
    v94 = v57;
    v97 = v58;
    v100 = v57 + 32;
    while (1)
    {
      if (v105)
      {
        v60 = MEMORY[0x2530ADF00](v59, v94);
      }

      else
      {
        if (v59 >= *(v103 + 16))
        {
          goto LABEL_163;
        }

        v60 = *&v100[8 * v59];
      }

      v7 = v60;
      v47 = __OFADD__(v59++, 1);
      if (v47)
      {
        break;
      }

      v61 = [v60 taskResponses];
      if (v61)
      {
        v62 = v61;
        type metadata accessor for HomeUserTaskResponse();
        v2 = sub_252E37264();

        v108 = v7;
        if (!(v2 >> 62))
        {
          v63 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v63)
          {
            goto LABEL_96;
          }

          goto LABEL_120;
        }

        v63 = sub_252E378C4();
        if (v63)
        {
LABEL_96:
          v17 = 0;
          v4 = v2 & 0xC000000000000001;
          v31 = v2 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v4)
            {
              v64 = MEMORY[0x2530ADF00](v17, v2);
            }

            else
            {
              if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_156;
              }

              v64 = *(v2 + 8 * v17 + 32);
            }

            v32 = v64;
            v7 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_155;
            }

            v65 = [v64 userTask];
            if (!v65)
            {
              break;
            }

            v66 = v65;
            a2 = [v65 attribute];

            if (a2 != 9)
            {
              break;
            }

            v67 = [v32 userTask];
            if (!v67)
            {
              break;
            }

            a2 = v67;
            v68 = [v67 value];

            if (!v68)
            {
              break;
            }

            v69 = [v68 type];
            if (v69 == 2)
            {
              [v68 doubleValue];
              v71 = v70;

              if (v71 > 0.0)
              {
LABEL_117:

                sub_252E37A94();
                v72 = *(v112 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_121;
              }
            }

            else
            {
              if (v69 != 4)
              {

                goto LABEL_110;
              }

              a2 = [v68 integerValue];

              if (a2 > 0)
              {
                goto LABEL_117;
              }
            }

LABEL_111:
            ++v17;
            if (v7 == v63)
            {
              goto LABEL_120;
            }
          }

          v68 = v32;
LABEL_110:

          goto LABEL_111;
        }

LABEL_120:

LABEL_121:
        v58 = v97;
        if (v59 == v97)
        {
LABEL_122:
          v7 = v112;
          goto LABEL_149;
        }
      }

      else
      {

        if (v59 == v58)
        {
          goto LABEL_122;
        }
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

LABEL_54:
  v2 = v105;
  v42 = sub_252C285F0();
  v112 = v7;
  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_149;
    }

    goto LABEL_56;
  }

  v89 = v42;
  v43 = sub_252E378C4();
  v42 = v89;
  if (v43)
  {
LABEL_56:
    v4 = 0;
    v102 = v42 & 0xFFFFFFFFFFFFFF8;
    v106 = v42 & 0xC000000000000001;
    v93 = v42;
    v96 = v43;
    v99 = v42 + 32;
    while (1)
    {
LABEL_59:
      if (v106)
      {
        v45 = MEMORY[0x2530ADF00](v4, v93);
      }

      else
      {
        if (v4 >= *(v102 + 16))
        {
          goto LABEL_160;
        }

        v45 = *&v99[8 * v4];
      }

      v46 = v45;
      v47 = __OFADD__(v4++, 1);
      if (v47)
      {
        goto LABEL_159;
      }

      v48 = [v45 taskResponses];
      if (v48)
      {
        v49 = v48;
        type metadata accessor for HomeUserTaskResponse();
        v2 = sub_252E37264();

        if (v2 >> 62)
        {
          v50 = sub_252E378C4();
          v109 = v46;
          if (v50)
          {
LABEL_66:
            v51 = 0;
            do
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v52 = MEMORY[0x2530ADF00](v51, v2);
              }

              else
              {
                if (v51 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_154;
                }

                v52 = *(v2 + 8 * v51 + 32);
              }

              v53 = v52;
              v54 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                goto LABEL_153;
              }

              v111 = v52;
              a2 = sub_252DA5D40(&v111, 13, v110, 0, 1);

              if (a2)
              {

                v43 = v96;
                if (v4 != v96)
                {
                  goto LABEL_59;
                }

                goto LABEL_122;
              }

              ++v51;
            }

            while (v54 != v50);
          }
        }

        else
        {
          v50 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v109 = v46;
          if (v50)
          {
            goto LABEL_66;
          }
        }

        v43 = v96;
      }

      sub_252E37A94();
      v44 = *(v112 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      v2 = &v112;
      sub_252E37AA4();
      if (v4 == v43)
      {
        goto LABEL_122;
      }
    }
  }

LABEL_149:

  v112 = 0x65736E6F70736552;
  v113 = 0xEB00000000203A73;
  v85 = type metadata accessor for HomeEntityResponse();
  v86 = MEMORY[0x2530AD730](v7, v85);
  MEMORY[0x2530AD570](v86);

  sub_252CC3D90(v112, v113, 0xD000000000000098, v92 | 0x8000000000000000);

  return v7;
}

BOOL sub_252C2DC30()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D60);
    sub_252E379F4();

    v5 = v0;
    v6 = [v5 description];
    v7 = sub_252E36F34();
    v9 = v8;

    MEMORY[0x2530AD570](v7, v9);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v3 = MEMORY[0x277D84F90];
  }

  v10 = sub_252C28980(&qword_27F53F730, &qword_27F575C40);
  if (v3 >> 62)
  {
    v18 = v10;
    v19 = sub_252E378C4();
    v10 = v18;
    if (!v19)
    {
      goto LABEL_23;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  v11 = v10 >> 62;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:

    return 0;
  }

  v20 = v10;
  v21 = sub_252E378C4();
  v10 = v20;
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_10:
  v12 = v10;
  if (v3 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 == v14)
  {
    return 0;
  }

  v15 = sub_252C2A5D8();
  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v16 != 0;
}

uint64_t sub_252C2DF04(uint64_t a1)
{
  result = [v1 entityResponses];
  if (result)
  {
    v4 = result;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v36 = v5 + 32;
      v37 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *(v37 + 16))
          {
            goto LABEL_38;
          }

          v9 = *(v36 + 8 * v7);
        }

        v10 = v9;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        v12 = [v9 entity];
        v38 = v10;
        if (!v12)
        {
          v25 = v8;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v26 = sub_252E36AD4();
          __swift_project_value_buffer(v26, qword_27F544D60);
          sub_252E379F4();

          v27 = [v10 description];
          v28 = sub_252E36F34();
          v30 = v29;

          MEMORY[0x2530AD570](v28, v30);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v18 = MEMORY[0x277D84F90];
          v8 = v25;
          v31 = *(MEMORY[0x277D84F90] + 16);
          if (!v31)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        }

        v13 = v12;
        v14 = [v12 deviceTypes];
        if (!v14)
        {

          goto LABEL_29;
        }

        v15 = v14;
        v16 = sub_252E37264();

        v17 = *(v16 + 16);
        if (v17)
        {
          v34 = i;
          v35 = v5;
          v39 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v17, 0);
          v18 = v39;
          v19 = 32;
          do
          {
            v20 = sub_252E25FC4(*(v16 + v19));
            if (v21)
            {
              v22 = 0;
            }

            else
            {
              v22 = v20;
            }

            v24 = *(v39 + 16);
            v23 = *(v39 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_2529AA420((v23 > 1), v24 + 1, 1);
            }

            *(v39 + 16) = v24 + 1;
            *(v39 + 8 * v24 + 32) = v22;
            v19 += 8;
            --v17;
          }

          while (v17);

          i = v34;
          v5 = v35;
          v31 = *(v39 + 16);
          if (!v31)
          {
            goto LABEL_25;
          }

LABEL_30:
          v32 = 32;
          while (v31)
          {
            v33 = *(v18 + v32);
            v32 += 8;
            --v31;
            if (v33 == a1)
            {

              return 1;
            }
          }

          if (v7 == i)
          {
            goto LABEL_40;
          }
        }

        else
        {

LABEL_29:
          v18 = MEMORY[0x277D84F90];
          v31 = *(MEMORY[0x277D84F90] + 16);
          if (v31)
          {
            goto LABEL_30;
          }

LABEL_25:

          if (v7 == i)
          {
            goto LABEL_40;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_40:

    return 0;
  }

  return result;
}

uint64_t sub_252C2E320(void *a1, uint64_t *a2)
{
  v2 = sub_252C2A5D8();
  v34 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_42;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v26 = v2;
      v4 = 0;
      v28 = v2 & 0xFFFFFFFFFFFFFF8;
      v29 = v2 & 0xC000000000000001;
      v27 = v2 + 32;
      while (1)
      {
        if (v29)
        {
          v2 = MEMORY[0x2530ADF00](v4, v26);
        }

        else
        {
          if (v4 >= *(v28 + 16))
          {
            goto LABEL_38;
          }

          v2 = *(v27 + 8 * v4);
        }

        v6 = v2;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (*a1 != -1)
        {
          swift_once();
        }

        v8 = *a2;
        v9 = *(*a2 + 16);
        if (v9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B8, &qword_252E3C0E8);
          v10 = swift_allocObject();
          v11 = _swift_stdlib_malloc_size(v10);
          v12 = v11 - 32;
          if (v11 < 32)
          {
            v12 = v11 - 25;
          }

          v10[2] = v9;
          v10[3] = 2 * (v12 >> 3);
          v32 = sub_252E1135C(&v33, v10 + 4, v9, v8);

          v2 = sub_25291AE30();
          if (v32 != v9)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

        v13 = [v6 taskResponses];
        if (v13)
        {
          break;
        }

LABEL_4:
        if (v4 == v3)
        {
          v23 = v34;
          goto LABEL_44;
        }
      }

      v14 = v13;
      type metadata accessor for HomeUserTaskResponse();
      v15 = sub_252E37264();

      if (!(v15 >> 62))
      {
        break;
      }

      v2 = sub_252E378C4();
      v16 = v2;
      if (!v2)
      {
        goto LABEL_35;
      }

LABEL_20:
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x2530ADF00](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v2 = *(v15 + 32 + 8 * v17);
        }

        v18 = v2;
        v7 = __OFADD__(v17++, 1);
        if (v7)
        {
          break;
        }

        v19 = [v2 taskOutcome];
        v20 = v10[2];
        v21 = 4;
        while (v20)
        {
          v22 = v10[v21++];
          --v20;
          if (v22 == v19)
          {

            sub_252E37A94();
            v5 = *(v34 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            v2 = sub_252E37AA4();
            goto LABEL_4;
          }
        }

        if (v17 == v16)
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v24 = v2;
      v3 = sub_252E378C4();
      v2 = v24;
      if (!v3)
      {
        goto LABEL_43;
      }
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_35:

    goto LABEL_4;
  }

LABEL_43:
  v23 = MEMORY[0x277D84F90];
LABEL_44:

  return v23;
}

uint64_t sub_252C2E688()
{
  v0 = sub_252C2A5D8();
  v21 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v0 = v14)
  {
    v2 = 0;
    v19 = v0 & 0xFFFFFFFFFFFFFF8;
    v20 = v0 & 0xC000000000000001;
    v16 = v0;
    v17 = i;
    v18 = v0 + 32;
    while (1)
    {
      if (v20)
      {
        v0 = MEMORY[0x2530ADF00](v2, v16);
      }

      else
      {
        if (v2 >= *(v19 + 16))
        {
          goto LABEL_29;
        }

        v0 = *(v18 + 8 * v2);
      }

      v3 = v0;
      if (__OFADD__(v2++, 1))
      {
        break;
      }

      v5 = [v0 taskResponses];
      if (v5)
      {
        v6 = v5;
        type metadata accessor for HomeUserTaskResponse();
        v7 = sub_252E37264();

        if (v7 >> 62)
        {
          v0 = sub_252E378C4();
          v8 = v0;
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v9 = 0;
        while (1)
        {
          if (v8 == v9)
          {

            i = v17;
            goto LABEL_5;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            v0 = MEMORY[0x2530ADF00](v9, v7);
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v0 = *(v7 + 8 * v9 + 32);
          }

          v10 = v0;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v11 = [v0 taskOutcome];

          ++v9;
          if (v11 == 17)
          {

            sub_252E37A94();
            v12 = *(v21 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            v0 = sub_252E37AA4();
            i = v17;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        break;
      }

LABEL_5:
      if (v2 == i)
      {
        v13 = v21;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v14 = v0;
    i = sub_252E378C4();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_32:

  return v13;
}

id sub_252C2E8D0(id a1)
{
  v2 = [v1 entityResponses];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  if (v4 >> 62)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      break;
    }

    while (1)
    {
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v34 = v4 + 32;
      v35 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = &off_279711000;
      v9 = MEMORY[0x277D84F90];
      v37 = v5;
      v38 = v4;
      v36 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v7)
        {
          v11 = MEMORY[0x2530ADF00](v6, v4);
        }

        else
        {
          if (v6 >= *(v35 + 16))
          {
            goto LABEL_38;
          }

          v11 = *(v34 + 8 * v6);
        }

        v12 = v11;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v14 = [v11 v8[220]];
        if (v14)
        {
          v15 = v14;
          v39 = v12;
          type metadata accessor for HomeUserTaskResponse();
          v16 = sub_252E37264();

          v41 = v9;
          if (v16 >> 62)
          {
            v17 = sub_252E378C4();
            if (v17)
            {
LABEL_14:
              v18 = 0;
              while (1)
              {
                if ((v16 & 0xC000000000000001) != 0)
                {
                  v20 = MEMORY[0x2530ADF00](v18, v16);
                }

                else
                {
                  if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_36;
                  }

                  v20 = *(v16 + 8 * v18 + 32);
                }

                v21 = v20;
                v22 = v18 + 1;
                if (__OFADD__(v18, 1))
                {
                  break;
                }

                v23 = [v20 userTask];
                if (v23 && (v24 = v23, v25 = [v23 attribute], v24, v25 == a1))
                {
                }

                else
                {
                  sub_252E37A94();
                  v19 = *(v41 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                ++v18;
                if (v22 == v17)
                {
                  v5 = v37;
                  v4 = v38;
                  v7 = v36;
                  v8 = &off_279711000;
                  v9 = MEMORY[0x277D84F90];
                  goto LABEL_28;
                }
              }

              __break(1u);
LABEL_36:
              __break(1u);
              break;
            }
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v17)
            {
              goto LABEL_14;
            }
          }

          v9 = MEMORY[0x277D84F90];
LABEL_28:

          v12 = v39;
        }

        type metadata accessor for HomeUserTaskResponse();
        v10 = sub_252E37254();

        [v12 setTaskResponses_];

        if (v6 == v5)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_30:
      v26 = sub_252E36AD4();
      __swift_project_value_buffer(v26, qword_27F544D60);
      sub_252E379F4();

      v27 = v33;
      v28 = [v27 description];
      v29 = sub_252E36F34();
      v31 = v30;

      MEMORY[0x2530AD570](v29, v31);

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v4 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        break;
      }

LABEL_31:
      v5 = sub_252E378C4();
      if (!v5)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_32:

  return v33;
}

unint64_t sub_252C2ECE0()
{
  v1 = v0;
  v2 = [v0 entityResponses];
  if (!v2)
  {
    goto LABEL_66;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  v7 = v4 >> 62;
  if (v7)
  {
    goto LABEL_64;
  }

  v59 = *(v6 + 16);
  if (!v59)
  {
LABEL_65:

LABEL_66:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v49 = sub_252E36AD4();
    __swift_project_value_buffer(v49, qword_27F544D60);
    sub_252E379F4();

    v50 = v1;
    v51 = [v50 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    return 0;
  }

  while (1)
  {
    v56 = v7;
    v8 = ControlHomeIntent.getTargetDeviceTypes()();
    if (*(v8 + 16) != 1)
    {

      v1 = 0;
      v11 = v5 & 0xC000000000000001;
      v13 = v5 & 0xFFFFFFFFFFFFFF8;
      v14 = v5 + 32;
      v7 = v59;
      v60 = v5 & 0xFFFFFFFFFFFFFF8;
      v61 = v5 & 0xC000000000000001;
      v57 = v5 + 32;
      v58 = v5;
      while (1)
      {
        if (v11)
        {
          v20 = MEMORY[0x2530ADF00](v1, v5);
        }

        else
        {
          if (v1 >= *(v13 + 16))
          {
            goto LABEL_63;
          }

          v20 = *(v14 + 8 * v1);
        }

        v21 = v20;
        v22 = __OFADD__(v1++, 1);
        if (v22)
        {
          goto LABEL_62;
        }

        v23 = [v20 entity];
        if (!v23)
        {
          v11 = v61;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v15 = sub_252E36AD4();
          __swift_project_value_buffer(v15, qword_27F544D60);
          sub_252E379F4();

          v16 = [v21 description];
          v17 = sub_252E36F34();
          v19 = v18;

          MEMORY[0x2530AD570](v17, v19);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          goto LABEL_11;
        }

        v24 = v23;
        v25 = [v23 deviceTypes];
        if (v25)
        {
          v26 = v25;
          v27 = sub_252E37264();

          v28 = *(v27 + 16);
          if (v28)
          {
            v62 = MEMORY[0x277D84F90];
            sub_2529AA420(0, v28, 0);
            v29 = v62;
            v30 = 32;
            do
            {
              v31 = sub_252E25FC4(*(v27 + v30));
              if (v32)
              {
                v33 = 0;
              }

              else
              {
                v33 = v31;
              }

              v35 = *(v62 + 16);
              v34 = *(v62 + 24);
              if (v35 >= v34 >> 1)
              {
                sub_2529AA420((v34 > 1), v35 + 1, 1);
              }

              *(v62 + 16) = v35 + 1;
              *(v62 + 8 * v35 + 32) = v33;
              v30 += 8;
              --v28;
            }

            while (v28);

            v14 = v57;
            v5 = v58;
            goto LABEL_30;
          }
        }

        else
        {
        }

        v29 = MEMORY[0x277D84F90];
LABEL_30:
        v36 = *(v29 + 16);

        v11 = v61;
        if (v36 == 1)
        {
          v37 = sub_252DA10F8();

          v7 = v59;
          if (*(v37 + 16))
          {
            v1 = *(v37 + 32);

            v12 = v60;
            goto LABEL_35;
          }

          goto LABEL_56;
        }

        v7 = v59;
LABEL_11:
        v13 = v60;
        if (v1 == v7)
        {
          goto LABEL_56;
        }
      }
    }

    v1 = sub_252DB4F48(v8);
    v10 = v9;

    v7 = v59;
    if (v10)
    {
LABEL_56:

LABEL_57:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v48 = sub_252E36AD4();
      __swift_project_value_buffer(v48, qword_27F544D60);
      sub_252CC3D90(0xD000000000000028, 0x8000000252E8B510, 0xD000000000000098, 0x8000000252E69730);
      return 0;
    }

    v11 = v5 & 0xC000000000000001;
    v12 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_35:
    v38 = 0;
    v63 = MEMORY[0x277D84F90];
LABEL_37:
    if (v11)
    {
      break;
    }

    if (v38 < *(v12 + 16))
    {
      v39 = *(v5 + 32 + 8 * v38);
      goto LABEL_40;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v59 = sub_252E378C4();
    if (!v59)
    {
      goto LABEL_65;
    }
  }

  v39 = MEMORY[0x2530ADF00](v38, v5);
LABEL_40:
  v40 = v39;
  v22 = __OFADD__(v38++, 1);
  if (v22)
  {
    __break(1u);
    goto LABEL_61;
  }

  v41 = sub_252DA10F8();
  v42 = *(v41 + 16);
  v43 = 32;
  do
  {
    if (!v42)
    {

      if (v38 != v7)
      {
        goto LABEL_37;
      }

      goto LABEL_47;
    }

    v44 = *(v41 + v43);
    v43 += 8;
    --v42;
  }

  while (v44 != v1);

  sub_252E37A94();
  v45 = *(v63 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
  if (v38 != v7)
  {
    goto LABEL_37;
  }

LABEL_47:
  if (v56)
  {
    v46 = sub_252E378C4();
  }

  else
  {
    v46 = *(v12 + 16);
  }

  if (v63 < 0 || (v63 & 0x4000000000000000) != 0)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *(v63 + 16);
  }

  if (v46 != v47)
  {
    goto LABEL_57;
  }

  return v1;
}

char *sub_252C2F3B0(uint64_t a1)
{
  v3 = [v1 entityResponses];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v18 = v4;
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
LABEL_6:
      while (2)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 32 + 8 * v8);
        }

        v10 = v9;
        if (!__OFADD__(v8++, 1))
        {
          v12 = sub_252DA6828();
          v13 = *(v12 + 2);
          v14 = 32;
          do
          {
            if (!v13)
            {
              v4 = v12;

              if (v8 != i)
              {
                goto LABEL_6;
              }

              goto LABEL_16;
            }

            v15 = *&v12[v14];
            v14 += 8;
            --v13;
          }

          while (v15 != a1);

          sub_252E37A94();
          v16 = *(v18 + 2);
          sub_252E37AC4();
          sub_252E37AD4();
          v4 = &v18;
          sub_252E37AA4();
          if (v8 != i)
          {
            continue;
          }

LABEL_16:
          v4 = v18;
          goto LABEL_17;
        }

        break;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return v4;
}

void *sub_252C2F554()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v14 = v2;
    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 entity];
        if (v10 && (v2 = v10, v11 = [v10 type], v2, v11 == 5))
        {
          sub_252E37A94();
          v12 = v14[2];
          sub_252E37AC4();
          sub_252E37AD4();
          v2 = &v14;
          sub_252E37AA4();
        }

        else
        {
        }

        ++v6;
        if (v9 == i)
        {
          v2 = v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_16:
  }

  return v2;
}

uint64_t sub_252C2F6F4()
{
  result = sub_2529FE088(&unk_2864A19B0);
  qword_27F575A30 = result;
  return result;
}

uint64_t sub_252C2F71C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AD8, &unk_252E58BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E53770;
  *(inited + 32) = 0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = 1;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 56) = v9;
  *(inited + 64) = 46;
  *(inited + 72) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 80) = 49;
  *(inited + 88) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 96) = 47;
  *(inited + 104) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
  *(inited + 112) = 48;
  *(inited + 120) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
  *(inited + 128) = 50;
  *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
  *(inited + 144) = 5;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setIntegerValue_];
  [v13 setUnit_];
  [v13 setType_];

  *(inited + 152) = v13;
  *(inited + 160) = 6;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setIntegerValue_];
  [v17 setUnit_];
  [v17 setType_];

  *(inited + 168) = v17;
  *(inited + 176) = 9;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setIntegerValue_];
  [v21 setUnit_];
  [v21 setType_];

  *(inited + 184) = v21;
  *(inited + 192) = 10;
  v22 = objc_allocWithZone(v1);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  v25 = v24;
  [v25 setIntegerValue_];
  [v25 setUnit_];
  [v25 setType_];

  *(inited + 200) = v25;
  v26 = sub_252CC5AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE0, &qword_252E419E8);
  result = swift_arrayDestroy();
  qword_27F575A38 = v26;
  return result;
}

uint64_t sub_252C2FB64()
{
  result = sub_2529FC004(&unk_2864A7170);
  qword_27F575A40 = result;
  return result;
}

uint64_t sub_252C2FB8C()
{
  result = sub_2529FC004(&unk_2864A0EC8);
  qword_27F575A48 = result;
  return result;
}

void *sub_252C2FBE4(uint64_t (*a1)(void))
{
  v2 = [v1 entityResponses];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    v16 = v3;
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 entity];
        if (v11 && (v3 = v11, v12 = [v11 type], v3, v12 == 5) && (v3 = v9, (a1() & 1) != 0))
        {
          sub_252E37A94();
          v13 = v16[2];
          sub_252E37AC4();
          sub_252E37AD4();
          v3 = &v16;
          sub_252E37AA4();
        }

        else
        {
        }

        ++v7;
        if (v10 == i)
        {
          v3 = v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return v3;
}

uint64_t sub_252C2FD9C()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v5 = v4;
    v79 = v2;
    if (v4 >> 62)
    {
      goto LABEL_84;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        v8 = v5 & 0xC000000000000001;
        v9 = v5 & 0xFFFFFFFFFFFFFF8;
        v69 = v5;
        v10 = v5 + 32;
        v11 = &off_279711000;
        v74 = v5 & 0xC000000000000001;
        v75 = v6;
        v72 = v5 + 32;
        v73 = v5 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v8)
          {
            v5 = MEMORY[0x2530ADF00](v7, v69);
          }

          else
          {
            if (v7 >= *(v9 + 16))
            {
              goto LABEL_81;
            }

            v5 = *(v10 + 8 * v7);
          }

          v12 = v5;
          v13 = __OFADD__(v7++, 1);
          if (v13)
          {
            goto LABEL_80;
          }

          v14 = [v5 v11[221]];
          if (!v14)
          {
            goto LABEL_6;
          }

          v15 = v14;
          v16 = [v14 type];

          if (v16 != 7)
          {
            goto LABEL_6;
          }

          v17 = [v12 taskResponses];
          v78 = v12;
          if (v17)
          {
            break;
          }

LABEL_49:
          v47 = [v12 taskResponses];
          if (!v47)
          {
            goto LABEL_6;
          }

          v48 = v47;
          type metadata accessor for HomeUserTaskResponse();
          v49 = sub_252E37264();

          v50 = [v12 v11[221]];
          if (!v50)
          {

LABEL_6:

            goto LABEL_7;
          }

          if (v49 >> 62)
          {
            v5 = sub_252E378C4();
            v51 = v5;
            if (v5)
            {
LABEL_53:
              v52 = 0;
              v77 = v49 & 0xC000000000000001;
              v53 = v49 & 0xFFFFFFFFFFFFFF8;
              v71 = v49;
              v54 = v49 + 32;
              while (1)
              {
                if (v77)
                {
                  v5 = MEMORY[0x2530ADF00](v52, v71);
                }

                else
                {
                  if (v52 >= *(v53 + 16))
                  {
                    goto LABEL_79;
                  }

                  v5 = *(v54 + 8 * v52);
                }

                v55 = v5;
                v13 = __OFADD__(v52++, 1);
                if (v13)
                {
                  break;
                }

                if (qword_27F53F740 != -1)
                {
                  swift_once();
                }

                v56 = qword_27F575C50;
                v57 = [v55 taskOutcome];
                if (!*(v56 + 16))
                {
                  goto LABEL_54;
                }

                v58 = v57;
                v59 = *(v56 + 40);
                sub_252E37EC4();
                MEMORY[0x2530AE390](v58);
                v60 = sub_252E37F14();
                v61 = -1 << *(v56 + 32);
                v62 = v60 & ~v61;
                if (((*(v56 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                {
                  goto LABEL_54;
                }

                v63 = ~v61;
                while (*(*(v56 + 48) + 8 * v62) != v58)
                {
                  v62 = (v62 + 1) & v63;
                  if (((*(v56 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }

                v64 = [v55 userTask];
                if (v64)
                {
                  v65 = v64;
                  v66 = [v64 attribute];

                  if (v66 == 67)
                  {

                    v11 = &off_279711000;
                    goto LABEL_45;
                  }
                }

                else
                {
LABEL_54:
                }

                if (v52 == v51)
                {

                  v8 = v74;
                  v6 = v75;
                  v10 = v72;
                  v9 = v73;
                  v11 = &off_279711000;
                  goto LABEL_7;
                }
              }

LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }
          }

          else
          {
            v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              goto LABEL_53;
            }
          }

LABEL_75:
          v8 = v74;
          v6 = v75;
          v10 = v72;
          v9 = v73;
LABEL_7:
          if (v7 == v6)
          {
            v2 = v79;
            goto LABEL_86;
          }
        }

        v18 = v17;
        type metadata accessor for HomeUserTaskResponse();
        v76 = sub_252E37264();

        v19 = [v12 v11[221]];
        if (!v19)
        {
          goto LABEL_48;
        }

        if (!(v76 >> 62))
        {
          break;
        }

        v5 = sub_252E378C4();
        v20 = v5;
        if (!v5)
        {
          goto LABEL_48;
        }

LABEL_18:
        v21 = 0;
        v70 = v20;
        while (1)
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x2530ADF00](v21, v76);
          }

          else
          {
            if (v21 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_83;
            }

            v5 = *(v76 + 32 + 8 * v21);
          }

          v22 = v5;
          v13 = __OFADD__(v21++, 1);
          if (v13)
          {
            break;
          }

          v23 = [v5 userTask];
          if (v23 && (v24 = v23, v25 = [v23 value], v24, v25) && (v26 = objc_msgSend(v25, sel_cleaningJob), v25, v26))
          {
            v27 = [v26 runState];
          }

          else
          {
            v27 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541690, &qword_252E40958);
          v28 = sub_252E379A4();
          v29 = 0;
          v30 = v28 + 56;
          do
          {
            v33 = qword_2864A7238[v29 + 4];
            v34 = *(v28 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v33);
            v5 = sub_252E37F14();
            v35 = ~(-1 << *(v28 + 32));
            v36 = v5 & v35;
            v37 = (v5 & v35) >> 6;
            v38 = *(v30 + 8 * v37);
            v39 = 1 << (v5 & v35);
            v40 = *(v28 + 48);
            if ((v39 & v38) != 0)
            {
              while (*(v40 + 8 * v36) != v33)
              {
                v36 = (v36 + 1) & v35;
                v37 = v36 >> 6;
                v38 = *(v30 + 8 * (v36 >> 6));
                v39 = 1 << v36;
                if (((1 << v36) & v38) == 0)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
LABEL_30:
              *(v30 + 8 * v37) = v39 | v38;
              *(v40 + 8 * v36) = v33;
              v31 = *(v28 + 16);
              v13 = __OFADD__(v31, 1);
              v32 = v31 + 1;
              if (v13)
              {
                __break(1u);
                goto LABEL_78;
              }

              *(v28 + 16) = v32;
            }

            ++v29;
          }

          while (v29 != 10);
          v11 = &off_279711000;
          if (*(v28 + 16))
          {
            v41 = *(v28 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v27);
            v42 = sub_252E37F14();
            v43 = -1 << *(v28 + 32);
            v44 = v42 & ~v43;
            if ((*(v30 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
            {
              v45 = ~v43;
              while (*(*(v28 + 48) + 8 * v44) != v27)
              {
                v44 = (v44 + 1) & v45;
                if (((*(v30 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                {
                  goto LABEL_19;
                }
              }

LABEL_45:
              sub_252E37A94();
              v46 = *(v79 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v5 = sub_252E37AA4();
              goto LABEL_75;
            }
          }

LABEL_19:

          v8 = v74;
          v6 = v75;
          v10 = v72;
          v9 = v73;
          if (v21 == v70)
          {
            goto LABEL_48;
          }
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        v67 = v5;
        v6 = sub_252E378C4();
        v5 = v67;
        if (!v6)
        {
          goto LABEL_85;
        }
      }

      v20 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_18;
      }

LABEL_48:

      v12 = v78;
      goto LABEL_49;
    }

LABEL_85:
    v2 = MEMORY[0x277D84F90];
LABEL_86:
  }

  return v2;
}