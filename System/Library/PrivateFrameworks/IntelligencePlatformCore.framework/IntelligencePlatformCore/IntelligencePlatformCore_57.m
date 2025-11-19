uint64_t sub_1C4922D6C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C49231A4(a2, a3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C4922EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF720, type metadata accessor for HUTenPointContext.AmbientLightDistribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4922F88()
{
  sub_1C49231A4(&qword_1EC0BF258, type metadata accessor for HUTenPointContext.AmbientLightDistribution);

  return sub_1C4F00428();
}

uint64_t sub_1C4923050()
{
  sub_1C49231A4(&qword_1EC0BF258, type metadata accessor for HUTenPointContext.AmbientLightDistribution);

  return sub_1C4F00438();
}

uint64_t sub_1C49231A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4924B3C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C4924B90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

void sub_1C4924BF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v25 = MEMORY[0x1E69E7CC0];
    v24 = *(a1 + 16);
    sub_1C459D738();
    v4 = sub_1C486C288(a1);
    v5 = v24;
    v6 = 0;
    v7 = a1 + 56;
    v8 = 1;
    v9 = 24;
    v10 = 0x4060503020100;
    v11 = -2;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < v8 << *(a1 + 32))
      {
        v12 = v4 >> 6;
        v13 = v8 << v4;
        if ((*(v7 + 8 * (v4 >> 6)) & (v8 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v14 = *(*(a1 + 48) + v4 * v9 + 16);
        v15 = *(v25 + 16);
        if (v15 >= *(v25 + 24) >> 1)
        {
          sub_1C459D738();
          sub_1C4417378();
        }

        *(v25 + 16) = v15 + 1;
        *(v25 + v15 + 32) = v10 >> (8 * v14);
        if (v3)
        {
          goto LABEL_29;
        }

        v16 = v8 << *(a1 + 32);
        if (v4 >= v16)
        {
          goto LABEL_26;
        }

        v17 = *(v7 + 8 * v12);
        if ((v17 & v13) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v18 = v17 & (v11 << (v4 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v12 << 6;
          v20 = v12 + 1;
          v21 = (a1 + 64 + 8 * v12);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1C440951C(v4, v2, 0);
              sub_1C4417378();
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v4, v2, 0);
          sub_1C4417378();
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v16;
        if (v16 < 0)
        {
          break;
        }
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
    __break(1u);
  }
}

void sub_1C4924E64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C4404B14();
    v3 = v2;
    v5 = v4;
    v6 = *(v4 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F02B68();
    v7 = *(v5 + 32);
    sub_1C4400588();
    if ((*(v5 + 56 + v8) >> v1))
    {
      sub_1C43FBDF0();
      while (2)
      {
        switch(*(*(v5 + 48) + v1))
        {
          case 1:
          case 5:
            goto LABEL_9;
          case 2:
            sub_1C441CA8C();
            goto LABEL_9;
          case 3:
            sub_1C440F794();
            goto LABEL_9;
          case 4:
            sub_1C44070C0();
            goto LABEL_9;
          case 6:
            sub_1C4425C1C();
LABEL_9:
            v9 = sub_1C4F02938();

            if (v9)
            {
              goto LABEL_14;
            }

            sub_1C440D528();
            if ((v10 & 1) == 0)
            {
              break;
            }

            continue;
          default:

LABEL_14:
            sub_1C4924BF4(v3);
            v12 = sub_1C4597BBC(v11);
            if (qword_1EDDF0590 != -1)
            {
              swift_once();
            }

            v13 = *(sub_1C4A7C718(qword_1EDDF0598, v12) + 16);

            goto LABEL_17;
        }

        break;
      }
    }

LABEL_17:
    sub_1C440576C();
  }
}

uint64_t sub_1C492503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a2;
  v142 = *MEMORY[0x1E69E9840];
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v130 - v9;
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4408644();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v130 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v130 - v21;
  v23 = sub_1C4632064(v3);
  if (!v24)
  {
    goto LABEL_62;
  }

  v138 = v5;
  v139 = v23;
  v140 = v24;
  v25 = [v3 absoluteTimestamp];
  if (v25)
  {
    v26 = v25;
    sub_1C4EF9C78();

    (*(v14 + 32))(v10, v20, v11);
    sub_1C440BAA8(v10, 0, 1, v11);
  }

  else
  {
    sub_1C4467FE0(a3, v10);
  }

  if (sub_1C44157D4(v10, 1, v11) == 1)
  {

    sub_1C44686E4(v10);
LABEL_62:
    result = 0;
LABEL_63:
    v75 = *MEMORY[0x1E69E9840];
    return result;
  }

  (*(v14 + 32))(v22, v10, v11);
  sub_1C4631F24(v3);
  if (v27)
  {

    (*(v14 + 8))(v22, v11);
    goto LABEL_62;
  }

  if (sub_1C4F013E8())
  {
    (*(v14 + 8))(v22, v11);

    goto LABEL_62;
  }

  v131 = v22;
  v135 = v4;
  v28 = v141;
  v29 = *(v141 + 32);
  v30 = v29 & 0x3F;
  v31 = ((1 << v29) + 63) >> 6;
  sub_1C441ECD8();
  v32 = swift_bridgeObjectRetain_n();
  v33 = "communicationDirection";
  v137 = v14;
  if (v30 > 0xD)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v132 = v130;
    MEMORY[0x1EEE9AC00](v32);
    sub_1C43FF170();
    v133 = v31;
    v134 = v34 - v35;
    sub_1C4501018(0, v31, v34 - v35);
    v136 = 0;
    v36 = 0;
    sub_1C4419940();
    v39 = v38 & v37;
    v31 = (v40 + 63) >> 6;
    sub_1C442FE40(v33 - 32);
    sub_1C43FBDF0();
    sub_1C442BC14(v41);
    sub_1C43FBDF0();
    v130[1] = v42;
    while (v39)
    {
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = v43 | (v36 << 6);
      v33 = v141;
LABEL_20:
      switch(*(*(v33 + 48) + 24 * v44 + 16))
      {
        case 1:
          sub_1C43FD8FC();
          break;
        case 2:
          sub_1C441846C();
          goto LABEL_28;
        case 3:
          v50 = &v143;
          goto LABEL_25;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        case 6:
          v50 = &v144;
LABEL_25:
          v51 = *(v50 - 32);
          sub_1C4405CE0();
          break;
        default:
          break;
      }

      v52 = sub_1C4411DF4();

      if (v52)
      {
LABEL_28:
        sub_1C4404D48();
        sub_1C43FF180(v53);
        if (v54)
        {
          __break(1u);
LABEL_111:
          __break(1u);
        }
      }
    }

    v45 = v36;
    v46 = v137;
    v33 = v141;
    while (1)
    {
      v36 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v36 >= v31)
      {
        sub_1C4A8DF38(v134, v133, v136, v141);
        v56 = v55;
        goto LABEL_33;
      }

      ++v45;
      if (*(v28 + 8 * v36))
      {
        sub_1C43FCF1C();
        v39 = v48 & v47;
        v44 = v49 | (v36 << 6);
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!sub_1C4409D60())
    {
      break;
    }

    v28 = v141;
  }

  sub_1C4408BA4();
  v117 = swift_slowAlloc();
  v118 = v141;

  v119 = v118;
  v120 = v135;
  v121 = sub_1C4D2C7B8(v117, v31, v119, sub_1C4927120);
  v135 = v120;
  if (v120)
  {
    v128 = v135;
    goto LABEL_114;
  }

  v56 = v121;
  v33 = v141;
  swift_bridgeObjectRelease_n();
  v122 = sub_1C4408BA4();
  MEMORY[0x1C6942830](v122);
  v46 = v137;
LABEL_33:
  v57 = v135;
  if (v56[2])
  {
    v58 = [v3 starting];
    if (v56[2])
    {
      v59 = v58;
      v60 = v56[5];
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](2);
      v61 = v59 == 0;
      if (v59)
      {
        v62 = 0x7472617473;
      }

      else
      {
        v62 = 6581861;
      }

      if (v61)
      {
        v63 = 0xE300000000000000;
      }

      else
      {
        v63 = 0xE500000000000000;
      }

      sub_1C4F01298();

      v64 = sub_1C4F02B68();
      v65 = -1 << *(v56 + 32);
      v66 = v64 & ~v65;
      if ((*(v56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66))
      {
        v67 = ~v65;
        while (1)
        {
          v68 = v56[6] + 24 * v66;
          if (*(v68 + 16) == 2)
          {
            if (*v68)
            {
              v69 = 6581861;
            }

            else
            {
              v69 = 0x7472617473;
            }

            if (*v68)
            {
              v70 = 0xE300000000000000;
            }

            else
            {
              v70 = 0xE500000000000000;
            }

            if (v69 == v62 && v70 == v63)
            {

              goto LABEL_66;
            }

            v72 = sub_1C4F02938();

            if (v72)
            {
              break;
            }
          }

          v66 = (v66 + 1) & v67;
          if (((*(v56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

LABEL_66:
        v57 = v135;
        v33 = v141;
        goto LABEL_67;
      }

LABEL_59:

      v46 = v137;
    }

    else
    {
    }

    goto LABEL_61;
  }

LABEL_67:
  v76 = v57;
  v77 = *(v33 + 32);
  v78 = v77 & 0x3F;
  v79 = (1 << v77) + 63;
  if (v78 <= 0xD)
  {
    goto LABEL_68;
  }

  v123 = v79 >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (sub_1C4409D60())
  {
    v33 = v141;

LABEL_68:
    v133 = v130;
    MEMORY[0x1EEE9AC00](v73);
    sub_1C43FF170();
    v134 = v80;
    v135 = (v81 - v82);
    sub_1C4501018(0, v80, v81 - v82);
    v136 = 0;
    v3 = 0;
    v83 = v33;
    sub_1C4419940();
    v86 = v85 & v84;
    v88 = (v87 + 63) >> 6;
    sub_1C43FBDF0();
    v132 = v89;
    sub_1C442FE40("entityIdentifier");
    sub_1C43FBDF0();
    sub_1C442BC14(v90);
    while (2)
    {
      if (v86)
      {
        v91 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v92 = v91 | (v3 << 6);
        v93 = v141;
LABEL_76:
        switch(*(*(v93 + 48) + 24 * v92 + 16))
        {
          case 1:
            sub_1C43FD8FC();
            goto LABEL_81;
          case 2:
            goto LABEL_81;
          case 3:
          case 6:
            sub_1C4405CE0();
            goto LABEL_81;
          case 4:
            sub_1C440AC5C();
            goto LABEL_81;
          case 5:
            sub_1C44070E4();
LABEL_81:
            v33 = sub_1C4F02938();

            if (v33)
            {
              goto LABEL_82;
            }

            continue;
          default:

LABEL_82:
            sub_1C4404D48();
            sub_1C43FF180(v98);
            if (!v54)
            {
              continue;
            }

            goto LABEL_111;
        }
      }

      break;
    }

    v94 = v3;
    v31 = v76;
    v46 = v137;
    while (1)
    {
      v3 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_102;
      }

      if (v3 >= v88)
      {
        break;
      }

      ++v94;
      if (*(v83 + 8 * v3))
      {
        sub_1C43FCF1C();
        v86 = v96 & v95;
        v92 = v97 | (v3 << 6);
        goto LABEL_76;
      }
    }

    sub_1C4A8DF38(v135, v134, v136, v141);
    v100 = v99;
    goto LABEL_87;
  }

  sub_1C4408BA4();
  v124 = swift_slowAlloc();
  v125 = v141;

  v126 = sub_1C4D2C7B8(v124, v123, v125, sub_1C4925BF0);
  if (!v57)
  {
    v100 = v126;
    swift_bridgeObjectRelease_n();
    v127 = sub_1C4408BA4();
    MEMORY[0x1C6942830](v127);
    v46 = v137;
LABEL_87:
    v101 = v140;
    if (!v100[2])
    {
LABEL_100:

      v112 = v138;
      v113 = v131;
      (*(v46 + 16))(v138, v131, v11);
      (*(v46 + 8))(v113, v11);
      v114 = type metadata accessor for InteractionEvent(0);
      v115 = *(v114 + 48);
      v116 = *(v114 + 52);
      swift_allocObject();
      result = sub_1C4950CDC(v112, 0, v139, v101, MEMORY[0x1E69E7CC0]);
      goto LABEL_63;
    }

    v102 = v100[5];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v103 = sub_1C4F02B68();
    v104 = -1 << *(v100 + 32);
    v105 = v103 & ~v104;
    if ((*(v100 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v105))
    {
      v106 = ~v104;
      v107 = v100[6];
      v108 = v139;
      while (1)
      {
        v109 = v107 + 24 * v105;
        if (!*(v109 + 16))
        {
          if (*v109 == v108 && *(v109 + 8) == v101)
          {
            break;
          }

          v111 = sub_1C4F02938();
          v108 = v139;
          if (v111)
          {
            break;
          }
        }

        v105 = (v105 + 1) & v106;
        if (((*(v100 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v105) & 1) == 0)
        {
          sub_1C441ECD8();
          swift_bridgeObjectRelease_n();

          v46 = v137;
          goto LABEL_61;
        }
      }

      v46 = v137;
      goto LABEL_100;
    }

    sub_1C441ECD8();
    swift_bridgeObjectRelease_n();
LABEL_61:
    (*(v46 + 8))(v131, v11);
    goto LABEL_62;
  }

  v128 = v57;
LABEL_114:

  swift_bridgeObjectRelease_n();
  v129 = sub_1C4408BA4();
  result = MEMORY[0x1C6942830](v129);
  __break(1u);
  return result;
}

uint64_t sub_1C4925BF0(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v1 = sub_1C4F02938();
      break;
    default:
      break;
  }

  return v1 & 1;
}

void sub_1C4925D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C4404B14();
    v3 = v2;
    v5 = v4;
    v6 = *(v4 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F02B68();
    v7 = *(v5 + 32);
    sub_1C4400588();
    if ((*(v5 + 56 + v8) >> v1))
    {
      while (1)
      {
        switch(*(*(v5 + 48) + v1))
        {
          case 2:

            goto LABEL_12;
          case 3:
            sub_1C440F794();
            break;
          case 4:
            sub_1C44070C0();
            break;
          case 6:
            sub_1C4425C1C();
            break;
          default:
            break;
        }

        v9 = sub_1C4F02938();

        if (v9)
        {
          break;
        }

        sub_1C440D528();
        if ((v10 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_12:
      sub_1C4924BF4(v3);
      v12 = sub_1C4597BBC(v11);
      if (qword_1EDDF0408 != -1)
      {
        swift_once();
      }

      v13 = *(sub_1C4A7C718(qword_1EDDF0410, v12) + 16);
    }

LABEL_15:
    sub_1C440576C();
  }
}

void sub_1C4925F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v96 = a2;
  v100 = *MEMORY[0x1E69E9840];
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v87 - v11;
  sub_1C44043E0();
  v13 = sub_1C4EF9CD8();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v19);
  v98 = v87 - v20;
  v21 = sub_1C4EF9D38();
  v22 = sub_1C43FCDF8(v21);
  v99 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v7;
  v28 = [v7 loiIdentifier];
  if (!v28)
  {
    goto LABEL_51;
  }

  v29 = v28;
  sub_1C4EF9D18();

  sub_1C4467FE0(a3, v12);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    (*(v99 + 8))(v27, v21);
    sub_1C44686E4(v12);
LABEL_51:
    v84 = *MEMORY[0x1E69E9840];
    return;
  }

  v97 = v27;
  (*(v16 + 32))(v98, v12, v13);
  v30 = v96;
  v31 = *(v96 + 32);
  sub_1C4410DB8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = v16;
  v90 = v13;
  v94 = v21;
  v91 = v5;
  if (v4 > 0xD)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v93 = v6;
    sub_1C442BC14(v87);
    MEMORY[0x1EEE9AC00](v32);
    sub_1C43FF170();
    v35 = v33 - v34;
    v36 = sub_1C44043E0();
    v88 = v29;
    sub_1C4501018(v36, v29, v35);
    v92 = 0;
    v37 = 0;
    v5 = v30;
    sub_1C4419940();
    v6 = v39 & v38;
    v29 = ((v40 + 63) >> 6);
    v87[3] = 0x80000001C4F86760;
    sub_1C43FBDF0();
    v87[2] = v41;
    sub_1C43FBDF0();
    v87[1] = v42;
    while (v6)
    {
      v43 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v47 = v43 | (v37 << 6);
      switch(*(*(v30 + 48) + 24 * v47 + 16))
      {
        case 1:
          sub_1C43FD8FC();
          break;
        case 2:
          sub_1C441846C();
          goto LABEL_21;
        case 3:
          v48 = &v101;
          goto LABEL_18;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        case 6:
          v48 = &v102;
LABEL_18:
          v49 = *(v48 - 32);
          sub_1C4405CE0();
          break;
        default:
          break;
      }

      v50 = sub_1C4411DF4();

      if (v50)
      {
LABEL_21:
        sub_1C4404D48();
        *(v35 + v52) |= v51 << v47;
        if (__OFADD__(v92++, 1))
        {
          __break(1u);
        }
      }
    }

    v44 = v37;
    v21 = v94;
    while (1)
    {
      v37 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v37 >= v29)
      {
        sub_1C4A8DF38(v35, v88, v92, v30);
        v55 = v54;
        v6 = v93;
        v5 = v91;
        goto LABEL_26;
      }

      ++v44;
      if (*(v30 + 8 * v37))
      {
        sub_1C43FCF1C();
        v6 = v46 & v45;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_55:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!sub_1C4409D60())
    {
      break;
    }
  }

  sub_1C4408BA4();
  v85 = swift_slowAlloc();

  v86 = sub_1C4D2C7B8(v85, v29, v30, sub_1C4927120);
  if (!v6)
  {
    v55 = v86;
    swift_bridgeObjectRelease_n();
    sub_1C43FBE2C();
LABEL_26:
    v56 = v97;
    if (v55[2])
    {
      v57 = [v95 starting];
      v58 = v55[2];
      v93 = v6;
      if (v58)
      {
        v59 = v57;
        v60 = 6581861;
        v61 = v55[5];
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](2);
        if (v59)
        {
          v60 = 0x7472617473;
          v62 = 0xE500000000000000;
        }

        else
        {
          v62 = 0xE300000000000000;
        }

        sub_1C4F01298();

        sub_1C4F02B68();
        v63 = *(v55 + 32);
        sub_1C4400588();
        if ((*(v55 + v64 + 56) >> v30))
        {
          v56 = v97;
          while (1)
          {
            v65 = v55[6] + 24 * v30;
            if (*(v65 + 16) == 2)
            {
              if (*v65)
              {
                v66 = 6581861;
              }

              else
              {
                v66 = 0x7472617473;
              }

              if (*v65)
              {
                v67 = 0xE300000000000000;
              }

              else
              {
                v67 = 0xE500000000000000;
              }

              if (v66 == v60 && v67 == v62)
              {

                v21 = v94;
                v5 = v91;
                v56 = v97;
                goto LABEL_48;
              }

              v69 = sub_1C4F02938();

              v56 = v97;
              if (v69)
              {
                break;
              }
            }

            sub_1C442DFE4();
            if (((*(v55 + v70 + 56) >> v30) & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          v21 = v94;
          v5 = v91;
          goto LABEL_48;
        }

        v56 = v97;
      }

LABEL_50:

      (*(v89 + 8))(v98, v90);
      (*(v99 + 8))(v56, v94);
      goto LABEL_51;
    }

LABEL_48:
    v72 = v89;
    v71 = v90;
    v73 = v98;
    (*(v89 + 16))(v5, v98, v90);
    v74 = v56;
    v75 = sub_1C4EF9CF8();
    v77 = v76;
    (*(v72 + 8))(v73, v71);
    (*(v99 + 8))(v74, v21);
    v78 = type metadata accessor for InteractionEvent(0);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    v81 = sub_1C441ECD8();
    sub_1C4950CDC(v81, v82, v75, v77, v83);
    goto LABEL_51;
  }

  swift_bridgeObjectRelease_n();
  sub_1C43FBE2C();
  __break(1u);
}

void sub_1C4926764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C4404B14();
    v2 = v1;
    v4 = v3;
    v5 = *(v3 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    v6 = sub_1C4F02B68();
    v7 = -1 << *(v4 + 32);
    v8 = v6 & ~v7;
    if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      sub_1C43FBDF0();
      while (1)
      {
        switch(*(*(v4 + 48) + v8))
        {
          case 1:

            goto LABEL_14;
          case 2:
            sub_1C441CA8C();
            break;
          case 3:
            sub_1C440F794();
            break;
          case 4:
            sub_1C44070C0();
            break;
          case 6:
            sub_1C4425C1C();
            break;
          default:
            break;
        }

        v10 = sub_1C4F02938();

        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
        if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_14:
      sub_1C4924BF4(v2);
      v12 = sub_1C4597BBC(v11);
      if (qword_1EDDDB920 != -1)
      {
        swift_once();
      }

      v13 = *(sub_1C4A7C718(qword_1EDDDB928, v12) + 16);
    }

LABEL_17:
    sub_1C440576C();
  }
}

void sub_1C4926960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v85 = *MEMORY[0x1E69E9840];
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v72 - v12;
  sub_1C44043E0();
  v14 = sub_1C4EF9CD8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  v84 = v7;
  v23 = sub_1C4631F30(v7);
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = v24;
  v80 = v23;
  sub_1C4467FE0(a3, v13);
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {

    sub_1C44686E4(v13);
LABEL_4:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  (*(v17 + 32))(v22, v13, v14);
  v27 = *(a2 + 32);
  sub_1C4410DB8();
  v28 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v81 = v25;
  v83 = v22;
  v76 = v17;
  v77 = v14;
  v78 = v5;
  if (v4 > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v82 = v6;
    v74 = &v72;
    MEMORY[0x1EEE9AC00](v28);
    sub_1C43FF170();
    v31 = v29 - v30;
    v32 = sub_1C44043E0();
    v75 = a3;
    sub_1C4501018(v32, a3, v31);
    v79 = 0;
    a3 = 0;
    v5 = a2;
    sub_1C4419940();
    v35 = v34 & v33;
    v17 = (v36 + 63) >> 6;
    sub_1C442FE40("lookaheadDuration");
    sub_1C43FBDF0();
    sub_1C442BC14(v37);
    sub_1C43FBDF0();
    v73 = v38;
    while (v35)
    {
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_14:
      v6 = v39 | (a3 << 6);
      v25 = 0xE800000000000000;
      switch(*(*(a2 + 48) + 24 * v6 + 16))
      {
        case 1:
          sub_1C43FD8FC();
          v25 = v73;
          break;
        case 2:
          sub_1C441846C();
          goto LABEL_22;
        case 3:
          v43 = &v86;
          goto LABEL_19;
        case 4:
          v25 = 0xEF657079546E6F69;
          sub_1C440AC5C();
          break;
        case 5:
          v25 = 0xEB00000000656741;
          sub_1C44070E4();
          break;
        case 6:
          v43 = &v87;
LABEL_19:
          v25 = *(v43 - 32);
          sub_1C4405CE0();
          break;
        default:
          break;
      }

      v44 = sub_1C4411DF4();

      if (v44)
      {
LABEL_22:
        sub_1C4404D48();
        *(v31 + v46) |= v45 << v6;
        if (__OFADD__(v79++, 1))
        {
          __break(1u);
        }
      }
    }

    v40 = a3;
    v22 = v83;
    while (1)
    {
      a3 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (a3 >= v17)
      {
        sub_1C4A8DF38(v31, v75, v79, a2);
        v49 = v48;
        v25 = v81;
        v6 = v82;
        v5 = v78;
        goto LABEL_27;
      }

      ++v40;
      if (*(a2 + 8 * a3))
      {
        sub_1C43FCF1C();
        v35 = v42 & v41;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_56:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!sub_1C4409D60())
    {
      break;
    }
  }

  sub_1C4408BA4();
  v69 = a3;
  v70 = swift_slowAlloc();

  v71 = sub_1C4D2C7B8(v70, v69, a2, sub_1C4927120);
  if (!v6)
  {
    v49 = v71;
    swift_bridgeObjectRelease_n();
    sub_1C43FBE2C();
LABEL_27:
    if (v49[2])
    {
      v50 = [v84 starting];
      v51 = v49[2];
      v82 = v6;
      if (!v51)
      {
        goto LABEL_49;
      }

      v52 = v50;
      v53 = v49[5];
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](2);
      v54 = v52 ? 0x7472617473 : 6581861;
      v55 = v52 ? 0xE500000000000000 : 0xE300000000000000;
      sub_1C4F01298();

      sub_1C4F02B68();
      v56 = *(v49 + 32);
      sub_1C4400588();
      if (((*(v49 + v57 + 56) >> v17) & 1) == 0)
      {
LABEL_49:

        (*(v76 + 8))(v83, v77);
        goto LABEL_4;
      }

      while (1)
      {
        v58 = v49[6] + 24 * v17;
        if (*(v58 + 16) == 2)
        {
          if (*v58)
          {
            v59 = 6581861;
          }

          else
          {
            v59 = 0x7472617473;
          }

          if (*v58)
          {
            v60 = 0xE300000000000000;
          }

          else
          {
            v60 = 0xE500000000000000;
          }

          if (v59 == v54 && v60 == v55)
          {

            goto LABEL_53;
          }

          v62 = sub_1C4F02938();

          if (v62)
          {
            break;
          }
        }

        sub_1C442DFE4();
        if (((*(v49 + v63 + 56) >> v17) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

LABEL_53:
      v25 = v81;
      v5 = v78;
      v22 = v83;
    }

    else
    {
    }

    v65 = v76;
    v64 = v77;
    (*(v76 + 16))(v5, v22, v77);
    (*(v65 + 8))(v22, v64);
    v66 = type metadata accessor for InteractionEvent(0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    sub_1C4950CDC(v5, 1, v80, v25, MEMORY[0x1E69E7CC0]);
    goto LABEL_4;
  }

  swift_bridgeObjectRelease_n();
  sub_1C43FBE2C();
  __break(1u);
}

uint64_t sub_1C4926FD4(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
      sub_1C43FD8FC();
      goto LABEL_6;
    case 2:
      goto LABEL_7;
    case 3:
    case 6:
      sub_1C4405CE0();
      goto LABEL_6;
    case 4:
      sub_1C440AC5C();
      goto LABEL_6;
    case 5:
      sub_1C44070E4();
      goto LABEL_6;
    default:
LABEL_6:
      v1 = sub_1C4F02938();
LABEL_7:

      return v1 & 1;
  }
}

uint64_t IdentifierBasedMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdentifierBasedMatcher() + 20);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v4, a1);
}

uint64_t type metadata accessor for IdentifierBasedMatcher()
{
  result = qword_1EDDF3BA8;
  if (!qword_1EDDF3BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IdentifierBasedMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IdentifierBasedMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IdentifierBasedMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdentifierBasedMatcher() + 32);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t IdentifierBasedMatcher.entityClass.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdentifierBasedMatcher() + 32);
  v4 = sub_1C4EFD548();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t IdentifierBasedMatcher.init(stores:entityClass:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for IdentifierBasedMatcher();
  *(a5 + v10[7]) = 1056964608;
  sub_1C440053C();
  sub_1C448566C(a1, a5);
  v11 = v10[5];
  sub_1C43FD90C();
  sub_1C448566C(a3, a5 + v12);
  v13 = v10[8];
  v14 = sub_1C4EFD548();
  sub_1C43FBCE0(v14);
  result = (*(v15 + 32))(a5 + v13, a2);
  *(a5 + v10[6]) = v9;
  return result;
}

float sub_1C4927414(uint64_t a1, uint64_t a2)
{
  v169 = a2;
  v3 = sub_1C4EFF8A8();
  v170 = *(v3 - 8);
  v4 = *(v170 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v154 = &v153 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v153 = &v153 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v153 - v12;
  v13 = sub_1C4EFEEF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v153 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v175 = &v153 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v153 - v23;
  v179 = type metadata accessor for EntityTriple(0);
  v176 = *(v179 - 1);
  v24 = *(v176 + 64);
  v25 = MEMORY[0x1EEE9AC00](v179);
  v159 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v173 = &v153 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v160 = &v153 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v177 = &v153 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v153 - v33;
  v35 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v156 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v155 = &v153 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v157 = &v153 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v161 = &v153 - v43;
  v44 = *(type metadata accessor for IdentifierBasedMatcher() + 32);
  v171 = sub_1C4929810();
  v172 = v45;
  v46 = 0;
  v166 = a1;
  v168 = *(a1 + 16);
  v47 = v18;
  v178 = (v14 + 8);
  v162 = MEMORY[0x1E69E7CC0];
  v167 = v3;
  while (v168 != v46)
  {
    v48 = *(v176 + 72);
    v164 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v163 = v48;
    sub_1C44718CC(v166 + v164 + v48 * v46, v34);
    v49 = v179[5];
    sub_1C4EFE308();
    sub_1C492BE08(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v182 == v180 && v183 == v181)
    {
      v51 = 1;
    }

    else
    {
      v51 = sub_1C4F02938();
    }

    v52 = *v178;
    (*v178)(v174, v13);

    if ((v51 & 1) == 0)
    {
      goto LABEL_22;
    }

    v53 = v179[7];
    sub_1C4EFE658();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v182 == v180 && v183 == v181)
    {
      v52(v47, v13);
    }

    else
    {
      v55 = sub_1C4F02938();
      v52(v47, v13);

      if ((v55 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v56 = &v34[v179[8]];
    v57 = *v56 == v171 && *(v56 + 1) == v172;
    if (v57 || (sub_1C4F02938() & 1) != 0)
    {
      sub_1C448566C(v34, v159);
      v58 = v162;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = *(v58 + 16);
        sub_1C459DCC0();
        v58 = v184;
      }

      v61 = *(v58 + 16);
      if (v61 >= *(v58 + 24) >> 1)
      {
        sub_1C459DCC0();
        v58 = v184;
      }

      ++v46;
      *(v58 + 16) = v61 + 1;
      v162 = v58;
      sub_1C448566C(v159, v58 + v164 + v61 * v163);
      v3 = v167;
    }

    else
    {
LABEL_22:
      sub_1C44DBD5C(v34, type metadata accessor for EntityTriple);
      ++v46;
      v3 = v167;
    }
  }

  v62 = v162;
  v63 = *(v162 + 16);
  if (v63)
  {
    v182 = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v64 = v182;
    v65 = v62 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v174 = *(v176 + 72);
    v66 = (v170 + 16);
    do
    {
      v67 = v173;
      sub_1C44718CC(v65, v173);
      (*v66)(v7, v67 + v179[6], v3);
      sub_1C44DBD5C(v67, type metadata accessor for EntityTriple);
      v182 = v64;
      v68 = v3;
      v69 = v7;
      v70 = *(v64 + 16);
      if (v70 >= *(v64 + 24) >> 1)
      {
        sub_1C459D120();
        v64 = v182;
      }

      *(v64 + 16) = v70 + 1;
      (*(v170 + 32))(v64 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v70, v69, v68);
      v65 += v174;
      --v63;
      v7 = v69;
      v3 = v68;
    }

    while (v63);
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
  }

  sub_1C48685D4(v64, v161);

  v71 = 0;
  v174 = *(v169 + 16);
  v168 = MEMORY[0x1E69E7CC0];
  while (v174 != v71)
  {
    v72 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v73 = *(v176 + 72);
    sub_1C44718CC(v169 + v72 + v73 * v71, v177);
    v74 = v179[5];
    sub_1C4EFE308();
    sub_1C492BE08(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v182 == v180 && v183 == v181)
    {
      v76 = 1;
    }

    else
    {
      v76 = sub_1C4F02938();
    }

    v77 = *v178;
    (*v178)(v175, v13);
    v78 = v165;
    if ((v76 & 1) == 0)
    {
      goto LABEL_56;
    }

    v79 = v179[7];
    sub_1C4EFE658();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v182 == v180 && v183 == v181)
    {

      v77(v78, v13);
    }

    else
    {
      v81 = sub_1C4F02938();

      v77(v78, v13);
      if ((v81 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v82 = (v177 + v179[8]);
    v83 = *v82 == v171 && v82[1] == v172;
    if (!v83 && (sub_1C4F02938() & 1) == 0)
    {
LABEL_56:
      sub_1C44DBD5C(v177, type metadata accessor for EntityTriple);
      ++v71;
      continue;
    }

    sub_1C448566C(v177, v160);
    v84 = v168;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v84;
    if ((v85 & 1) == 0)
    {
      v86 = *(v84 + 16);
      sub_1C459DCC0();
      v84 = v184;
    }

    v87 = *(v84 + 16);
    if (v87 >= *(v84 + 24) >> 1)
    {
      sub_1C459DCC0();
      v84 = v184;
    }

    ++v71;
    *(v84 + 16) = v87 + 1;
    v168 = v84;
    sub_1C448566C(v160, v84 + v72 + v87 * v73);
  }

  v88 = *(v168 + 16);
  if (v88)
  {
    v182 = MEMORY[0x1E69E7CC0];
    v89 = v168;
    sub_1C459D120();
    v90 = v182;
    v91 = v89 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v92 = *(v176 + 72);
    v93 = (v170 + 16);
    v94 = v153;
    do
    {
      v95 = v173;
      sub_1C44718CC(v91, v173);
      (*v93)(v94, v95 + v179[6], v3);
      sub_1C44DBD5C(v95, type metadata accessor for EntityTriple);
      v182 = v90;
      v96 = *(v90 + 16);
      if (v96 >= *(v90 + 24) >> 1)
      {
        sub_1C459D120();
        v90 = v182;
      }

      *(v90 + 16) = v96 + 1;
      (*(v170 + 32))(v90 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v96, v94, v3);
      v91 += v92;
      --v88;
    }

    while (v88);
  }

  else
  {

    v90 = MEMORY[0x1E69E7CC0];
  }

  v97 = v157;
  sub_1C48685D4(v90, v157);

  v98 = v161;
  v99 = v155;
  sub_1C445FFF0(v161, v155, &qword_1EC0B9A10, &qword_1C4F107C0);
  v100 = sub_1C44157D4(v99, 1, v3);
  v101 = v170;
  v102 = v158;
  v103 = v156;
  if (v100 == 1)
  {
    sub_1C4420C3C(v97, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v98, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v99, &qword_1EC0B9A10, &qword_1C4F107C0);
    return 0.0;
  }

  v104 = *(v170 + 32);
  v104(v158, v99, v3);
  sub_1C445FFF0(v97, v103, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (sub_1C44157D4(v103, 1, v3) == 1)
  {
    sub_1C4420C3C(v97, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v98, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v103, &qword_1EC0B9A10, &qword_1C4F107C0);
    (*(v101 + 8))(v102, v3);
    return 0.0;
  }

  v105 = (v104)(v154, v103, v3);
  MEMORY[0x1EEE9AC00](v105);
  *(&v153 - 2) = v102;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B34AA0();
  v107 = v106;
  v108 = *(v106 + 16);
  if (v108)
  {
    v182 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v109 = v182;
    v110 = v107 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v111 = *(v176 + 72);
    do
    {
      v112 = v173;
      sub_1C44718CC(v110, v173);
      v113 = (v112 + v179[8]);
      v115 = *v113;
      v114 = v113[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v112, type metadata accessor for EntityTriple);
      v182 = v109;
      v116 = *(v109 + 16);
      if (v116 >= *(v109 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v109 = v182;
      }

      *(v109 + 16) = v116 + 1;
      v117 = v109 + 16 * v116;
      *(v117 + 32) = v115;
      *(v117 + 40) = v114;
      v110 += v111;
      --v108;
    }

    while (v108);

    v3 = v167;
    v102 = v158;
  }

  else
  {

    v109 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v109, v118, v119, v120, v121, v122, v123, v124, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
  v126 = v125;
  MEMORY[0x1EEE9AC00](v125);
  *(&v153 - 2) = v154;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B34AA0();
  v128 = v127;
  v129 = *(v127 + 16);
  if (v129)
  {
    v182 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v130 = v182;
    v131 = v128 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v132 = *(v176 + 72);
    do
    {
      v133 = v173;
      sub_1C44718CC(v131, v173);
      v134 = (v133 + v179[8]);
      v136 = *v134;
      v135 = v134[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v133, type metadata accessor for EntityTriple);
      v182 = v130;
      v137 = *(v130 + 16);
      if (v137 >= *(v130 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v130 = v182;
      }

      *(v130 + 16) = v137 + 1;
      v138 = v130 + 16 * v137;
      *(v138 + 32) = v136;
      *(v138 + 40) = v135;
      v131 += v132;
      --v129;
    }

    while (v129);

    v3 = v167;
    v102 = v158;
  }

  else
  {

    v130 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v130, v139, v140, v141, v142, v143, v144, v145, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
  v147 = v161;
  v148 = v157;
  if (!*(v126 + 16))
  {

    sub_1C4420C3C(v148, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v147, &qword_1EC0B9A10, &qword_1C4F107C0);
    goto LABEL_92;
  }

  v149 = sub_1C4A32590(v146, v126);

  sub_1C4420C3C(v148, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v147, &qword_1EC0B9A10, &qword_1C4F107C0);
  if ((v149 & 1) == 0)
  {
LABEL_92:
    v152 = *(v170 + 8);
    v152(v154, v3);
    v152(v102, v3);
    return 1.0;
  }

  v150 = *(v170 + 8);
  v150(v154, v3);
  v150(v102, v3);
  return 0.0;
}

float sub_1C4928728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t *, uint64_t))
{
  v194 = a8;
  v192 = a7;
  v220 = a6;
  v195 = a5;
  v221 = a4;
  v216 = a2;
  v193 = a9;
  v11 = sub_1C4EFF8A8();
  v12 = sub_1C43FCDF8(v11);
  v206 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v215 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v200 = v23;
  v24 = sub_1C43FBE44();
  v224 = a3(v24);
  v25 = sub_1C43FCDF8(v224);
  v213 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  v225 = v31;
  sub_1C43FBE44();
  v32 = sub_1C4EFEEF8();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBD08();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  v222 = v44;
  v45 = sub_1C43FBE44();
  v223 = type metadata accessor for EntityTriple(v45);
  v46 = sub_1C43FCDF8(v223);
  v212 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v191 - v52;
  v54 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD230();
  v203 = v59;
  sub_1C43FBE44();
  v60 = *(type metadata accessor for IdentifierBasedMatcher() + 32);
  v218 = sub_1C4929810();
  v219 = v61;
  v62 = 0;
  v211 = a1;
  v214 = *(a1 + 16);
  v226 = (v35 + 8);
  v204 = MEMORY[0x1E69E7CC0];
  v217 = v11;
  v210 = v18;
  while (v214 != v62)
  {
    v63 = (*(v212 + 80) + 32) & ~*(v212 + 80);
    v209 = *(v212 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v64, v53);
    v65 = v222;
    v66 = v223[5];
    sub_1C4EFE308();
    sub_1C443249C();
    sub_1C492BE08(&off_1EDDFCCA8, v67);
    sub_1C4414B9C();
    sub_1C4F01578();
    v68 = v228;
    sub_1C441CAA0();
    v69 = v69 && v68 == v65;
    if (v69)
    {
      v70 = 1;
    }

    else
    {
      v70 = sub_1C43FBEC0();
    }

    v71 = *v226;
    (*v226)(v222, v32);

    v11 = v217;
    if ((v70 & 1) == 0)
    {
      goto LABEL_22;
    }

    v72 = v223[7];
    sub_1C4EFE658();
    sub_1C4414B9C();
    sub_1C4F01578();
    v73 = v228;
    sub_1C441CAA0();
    if (v69 && v73 == v40)
    {
      sub_1C43FC484();
      v71();
    }

    else
    {
      v75 = sub_1C43FBEC0();
      sub_1C43FC484();
      v71();

      if ((v75 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v76 = &v53[v223[8]];
    v77 = *v76 == v218 && *(v76 + 1) == v219;
    if (v77 || (sub_1C4F02938() & 1) != 0)
    {
      sub_1C448566C(v53, v201);
      v78 = v204;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v229 = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44032F0();
        sub_1C459DCC0();
        v78 = v229;
      }

      v18 = v210;
      v80 = *(v78 + 16);
      if (v80 >= *(v78 + 24) >> 1)
      {
        sub_1C459DCC0();
        v78 = v229;
      }

      ++v62;
      *(v78 + 16) = v80 + 1;
      v204 = v78;
      sub_1C44032D8();
      sub_1C448566C(v201, v81);
    }

    else
    {
LABEL_22:
      sub_1C44DBD5C(v53, type metadata accessor for EntityTriple);
      ++v62;
      v18 = v210;
    }
  }

  v82 = v204;
  v83 = *(v204 + 16);
  if (v83)
  {
    sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    sub_1C459D120();
    v84 = v227;
    sub_1C43FBF6C();
    v86 = v82 + v85;
    v222 = *(v87 + 72);
    v88 = (v206 + 16);
    do
    {
      v89 = v207;
      sub_1C44718CC(v86, v207);
      (*v88)(v18, v89 + v223[6], v11);
      sub_1C44070F8();
      sub_1C44DBD5C(v89, v90);
      v227 = v84;
      v91 = v11;
      v92 = v18;
      v93 = *(v84 + 16);
      if (v93 >= *(v84 + 24) >> 1)
      {
        sub_1C459D120();
        v84 = v227;
      }

      *(v84 + 16) = v93 + 1;
      sub_1C43FBF6C();
      (*(v95 + 32))(v84 + v94 + *(v95 + 72) * v93, v92, v91);
      v86 += v222;
      --v83;
      v18 = v92;
      v11 = v91;
    }

    while (v83);
  }

  else
  {

    v84 = MEMORY[0x1E69E7CC0];
  }

  sub_1C48685D4(v84, v203);

  v96 = 0;
  v97 = v215;
  v98 = *(v216 + 16);
  v222 = MEMORY[0x1E69E7CC0];
  v99 = v205;
  while (v98 != v96)
  {
    v100 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    v101 = *(v213 + 72);
    v102 = v225;
    sub_1C44718CC(v216 + v100 + v101 * v96, v225);
    v103 = v224[5];
    sub_1C4EFE308();
    sub_1C443249C();
    sub_1C492BE08(&off_1EDDFCCA8, v104);
    v105 = v102 + v103;
    sub_1C4F01578();
    sub_1C4404FCC();
    v106 = v228;
    sub_1C441CAA0();
    if (v69 && v106 == v105)
    {
      v108 = 1;
    }

    else
    {
      v108 = sub_1C43FBEC0();
    }

    v109 = *v226;
    (*v226)(v99, v32);
    if ((v108 & 1) == 0)
    {
      goto LABEL_56;
    }

    v110 = v224[7];
    sub_1C4EFE658();
    v111 = v225 + v110;
    sub_1C4F01578();
    sub_1C4404FCC();
    v112 = v228;
    sub_1C441CAA0();
    if (v69 && v112 == v111)
    {

      sub_1C43FC484();
      v109();
      v99 = v205;
    }

    else
    {
      v114 = sub_1C43FBEC0();

      sub_1C43FC484();
      v109();
      v99 = v205;
      if ((v114 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v115 = (v225 + v224[8]);
    v116 = *v115 == v218 && v115[1] == v219;
    if (!v116 && (sub_1C4F02938() & 1) == 0)
    {
LABEL_56:
      sub_1C44DBD5C(v225, v220);
      ++v96;
      v97 = v215;
      continue;
    }

    sub_1C448566C(v225, v202);
    v117 = v222;
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v117;
    if ((v118 & 1) == 0)
    {
      v119 = sub_1C44032F0();
      v195(v119);
      v117 = v229;
    }

    v121 = *(v117 + 16);
    v120 = *(v117 + 24);
    if (v121 >= v120 >> 1)
    {
      (v195)(v120 > 1, v121 + 1, 1);
      v117 = v229;
    }

    ++v96;
    *(v117 + 16) = v121 + 1;
    v222 = v117;
    sub_1C448566C(v202, v117 + v100 + v121 * v101);
    v97 = v215;
  }

  v122 = *(v222 + 16);
  if (v122)
  {
    sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    v124 = v123;
    sub_1C459D120();
    v125 = v227;
    sub_1C43FBF6C();
    v127 = v124 + v126;
    v226 = *(v128 + 72);
    v129 = (v206 + 16);
    v130 = v206;
    v96 = v217;
    do
    {
      v131 = v208;
      sub_1C44718CC(v127, v208);
      (*v129)(v97, v131 + v224[6], v96);
      sub_1C44DBD5C(v131, v220);
      v227 = v125;
      v132 = v97;
      v133 = *(v125 + 16);
      if (v133 >= *(v125 + 24) >> 1)
      {
        sub_1C459D120();
        v125 = v227;
      }

      *(v125 + 16) = v133 + 1;
      (*(v130 + 32))(v125 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v133, v132, v96);
      v127 += v226;
      --v122;
      v97 = v132;
    }

    while (v122);

    v97 = v130;
  }

  else
  {

    v125 = MEMORY[0x1E69E7CC0];
    sub_1C440D544();
  }

  v134 = v199;
  sub_1C48685D4(v125, v199);

  v135 = v203;
  v136 = v197;
  sub_1C445FFF0(v203, v197, &qword_1EC0B9A10, &qword_1C4F107C0);
  v137 = sub_1C44157D4(v136, 1, v96);
  v138 = v200;
  v139 = v198;
  if (v137 == 1)
  {
    sub_1C43FF19C();
    sub_1C4410DD4(v135);
    sub_1C4410DD4(v136);
    return 0.0;
  }

  v140 = *(v97 + 32);
  v140(v200, v136, v96);
  sub_1C445FFF0(v134, v139, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (sub_1C44157D4(v139, 1, v96) == 1)
  {
    sub_1C43FF19C();
    sub_1C4410DD4(v135);
    sub_1C4410DD4(v139);
    (*(v97 + 8))(v138, v96);
    return 0.0;
  }

  v141 = (v140)(v196, v139, v96);
  MEMORY[0x1EEE9AC00](v141);
  *(&v191 - 2) = v138;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B34AA0();
  v143 = v142;
  v144 = *(v142 + 16);
  if (v144)
  {
    sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0();
    v145 = v227;
    sub_1C43FBF6C();
    v147 = v143 + v146;
    v149 = *(v148 + 72);
    do
    {
      v150 = v207;
      sub_1C44718CC(v147, v207);
      v151 = (v150 + v223[8]);
      v153 = *v151;
      v152 = v151[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44070F8();
      sub_1C44DBD5C(v150, v154);
      v227 = v145;
      v96 = *(v145 + 16);
      if (v96 >= *(v145 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v145 = v227;
      }

      *(v145 + 16) = v96 + 1;
      v155 = v145 + 16 * v96;
      *(v155 + 32) = v153;
      *(v155 + 40) = v152;
      v147 += v149;
      --v144;
    }

    while (v144);

    sub_1C440D544();
  }

  else
  {

    v145 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v145, v156, v157, v158, v159, v160, v161, v162, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
  v164 = v163;
  MEMORY[0x1EEE9AC00](v163);
  *(&v191 - 2) = v196;
  v165 = v216;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v166 = v193(v194, &v191 - 4, v165);
  v167 = *(v166 + 16);
  if (v167)
  {
    sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0();
    v168 = v227;
    sub_1C43FBF6C();
    v170 = v166 + v169;
    v172 = *(v171 + 72);
    do
    {
      v173 = v208;
      sub_1C44718CC(v170, v208);
      v174 = (v173 + v224[8]);
      v176 = *v174;
      v175 = v174[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v173, v220);
      v227 = v168;
      v96 = *(v168 + 16);
      if (v96 >= *(v168 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v168 = v227;
      }

      *(v168 + 16) = v96 + 1;
      v177 = v168 + 16 * v96;
      *(v177 + 32) = v176;
      *(v177 + 40) = v175;
      v170 += v172;
      --v167;
    }

    while (v167);

    sub_1C440D544();
  }

  else
  {

    v168 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v168, v178, v179, v180, v181, v182, v183, v184, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
  v186 = v200;
  if (!*(v164 + 16))
  {

    sub_1C4410DD4(v199);
    sub_1C43FF19C();
    goto LABEL_92;
  }

  v187 = sub_1C4A32590(v185, v164);

  sub_1C4410DD4(v199);
  sub_1C43FF19C();
  if ((v187 & 1) == 0)
  {
LABEL_92:
    v190 = sub_1C442BC20();
    (qword_1EC0B9A10)(v190);
    (qword_1EC0B9A10)(v186, v96);
    return 1.0;
  }

  v188 = sub_1C442BC20();
  (qword_1EC0B9A10)(v188);
  (qword_1EC0B9A10)(v186, v96);
  return 0.0;
}

uint64_t sub_1C4929810()
{
  sub_1C43FBE94();
  v1 = sub_1C4EFD548();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v9 = (v7 - v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = *(v4 + 16);
  v41 = v0;
  v16(&v40 - v14, v0, v1);
  sub_1C4EFCF58();
  sub_1C4419964();
  sub_1C492BE08(v17, v18);
  v19 = sub_1C44005A0();
  v20 = *(v4 + 8);
  v20(v13, v1);
  if (v19)
  {
    v20(v15, v1);
    return 0x416C61636973754DLL;
  }

  else
  {
    sub_1C4EFD418();
    sub_1C44005A0();
    v21 = sub_1C440E3B8();
    (v20)(v21);
    sub_1C4EFD3E8();
    sub_1C44005A0();
    v22 = sub_1C440E3B8();
    (v20)(v22);
    sub_1C4EFCED8();
    sub_1C44005A0();
    v23 = sub_1C440E3B8();
    (v20)(v23);
    sub_1C4EFD1C8();
    sub_1C44005A0();
    v24 = sub_1C440E3B8();
    (v20)(v24);
    v40 = v20;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDDFECB8);
    v16(v9, v41, v1);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      sub_1C4419964();
      sub_1C492BE08(v31, v32);
      v33 = sub_1C4F02858();
      v35 = v34;
      v40(v9, v1);
      v36 = sub_1C441D828(v33, v35, &v42);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Identifier based Matcher is not set up for %s", v29, 0xCu);
      sub_1C440962C(v30);
      MEMORY[0x1C6942830](v30, -1, -1);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    else
    {

      v40(v9, v1);
    }

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1C4F02248();

    v42 = 0xD000000000000023;
    v43 = 0x80000001C4FA9C20;
    sub_1C4419964();
    sub_1C492BE08(v37, v38);
    v39 = sub_1C4F02858();
    MEMORY[0x1C6940010](v39);

    result = sub_1C4409D78();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4929CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3(0);
  v14 = *(v13 + 24);
  if (sub_1C4EFF878())
  {
    v15 = *(v13 + 28);
    sub_1C4EFE558();
    v16 = sub_1C44DBB50(a1 + v15, v12);
    (*(v8 + 8))(v12, v5);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1C4929DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v69 = a1;
  v4 = sub_1C4EF9CD8();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v61 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v61 - v30;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1C44F1938(a2, v21);
  v32 = type metadata accessor for GraphTriple(0);
  if (sub_1C44157D4(v21, 1, v32) == 1)
  {
    sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
LABEL_4:
    v33 = 1;
    goto LABEL_6;
  }

  (*(v68 + 16))(v31, v21, v7);
  sub_1C44DBD5C(v21, type metadata accessor for GraphTriple);
  v33 = 0;
LABEL_6:
  sub_1C440BAA8(v31, v33, 1, v7);
  v34 = v69;
  sub_1C44D0BD8(v69, v13);
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v35 = sub_1C4F00978();
    sub_1C442B738(v35, qword_1EDE2DE10);
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C43F8000, v36, v37, "Identifier based Matcher: skipping entityTriples are empty", v38, 2u);
      MEMORY[0x1C6942830](v38, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    sub_1C448566C(v13, v17);
    if (a2)
    {
      v41 = v34;
      v42 = v72;
      v43 = sub_1C4928728(v41, a2, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple, sub_1C492BEB8, sub_1C492BE84, sub_1C4B3460C);
    }

    else
    {
      v43 = 0.0;
      v42 = v72;
    }

    v69 = type metadata accessor for IdentifierBasedMatcher();
    v44 = *(v42 + *(v69 + 28));
    if (v43 <= v44)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v29, 0, 1, v7);
      sub_1C44DDDBC(v29, v31);
      v43 = v44;
    }

    v45 = v31;
    v46 = v17;
    v62 = v45;
    sub_1C445FFF0(v45, v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v26, 1, v7) == 1)
    {
      sub_1C4420C3C(v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FA9BD0);
      v59 = v42 + *(v69 + 32);
      v60 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v60);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FA9BF0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      v47 = v68;
      v48 = v63;
      (*(v68 + 32))(v63, v26, v7);
      v49 = v69;
      v50 = *(v69 + 32);
      v51 = sub_1C4EFD548();
      v52 = v67;
      (*(*(v51 - 8) + 16))(v67, v42 + v50, v51);
      v53 = type metadata accessor for EntityMatch(0);
      v54 = *(v47 + 16);
      v54(v52 + v53[5], v46, v7);
      v54(v52 + v53[6], v48, v7);
      v55 = v64;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v57 = v56;
      (*(v65 + 8))(v55, v66);
      (*(v47 + 8))(v48, v7);
      sub_1C44DBD5C(v46, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v62, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v58 = *(v72 + *(v49 + 24));
      *(v52 + v53[7]) = v43;
      *(v52 + v53[8]) = v57;
      *(v52 + v53[9]) = v58;
      *(v52 + v53[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C492A644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v66 = a1;
  v4 = sub_1C4EF9CD8();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v58 - v29;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1C44D0BD8(a2, v20);
  if (sub_1C44157D4(v20, 1, v10) == 1)
  {
    sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
LABEL_4:
    v31 = 1;
    goto LABEL_6;
  }

  (*(v65 + 16))(v30, v20, v7);
  sub_1C44DBD5C(v20, type metadata accessor for EntityTriple);
  v31 = 0;
LABEL_6:
  sub_1C440BAA8(v30, v31, 1, v7);
  v32 = v66;
  sub_1C44D0BD8(v66, v18);
  if (sub_1C44157D4(v18, 1, v10) == 1)
  {
    sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v33 = sub_1C4F00978();
    sub_1C442B738(v33, qword_1EDE2DE10);
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CD8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C43F8000, v34, v35, "Identifier based Matcher: skipping entityTriples are empty", v36, 2u);
      MEMORY[0x1C6942830](v36, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
    return sub_1C4420C3C(v30, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    sub_1C448566C(v18, v13);
    if (a2)
    {
      v39 = v32;
      v40 = v69;
      v41 = sub_1C4927414(v39, a2);
    }

    else
    {
      v41 = 0.0;
      v40 = v69;
    }

    v66 = type metadata accessor for IdentifierBasedMatcher();
    v42 = *(v40 + *(v66 + 28));
    if (v41 <= v42)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v30, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v28, 0, 1, v7);
      sub_1C44DDDBC(v28, v30);
      v41 = v42;
    }

    sub_1C445FFF0(v30, v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v43 = sub_1C44157D4(v25, 1, v7);
    v59 = v30;
    if (v43 == 1)
    {
      sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FA9BD0);
      v56 = v40 + *(v66 + 32);
      v57 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v57);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FA9BF0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      v44 = v65;
      v45 = v60;
      (*(v65 + 32))(v60, v25, v7);
      v46 = v66;
      v47 = *(v66 + 32);
      v48 = sub_1C4EFD548();
      v49 = v64;
      (*(*(v48 - 8) + 16))(v64, v40 + v47, v48);
      v50 = type metadata accessor for EntityMatch(0);
      v51 = *(v44 + 16);
      v51(v49 + v50[5], v13, v7);
      v51(v49 + v50[6], v45, v7);
      v52 = v61;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v54 = v53;
      (*(v62 + 8))(v52, v63);
      (*(v44 + 8))(v45, v7);
      sub_1C44DBD5C(v13, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v55 = *(v69 + *(v46 + 24));
      *(v49 + v50[7]) = v41;
      *(v49 + v50[8]) = v54;
      *(v49 + v50[9]) = v55;
      *(v49 + v50[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C492ADD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v69 = a1;
  v4 = sub_1C4EF9CD8();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v61 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v61 - v30;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1C486854C(a2, v21);
  v32 = type metadata accessor for ConstructionGraphTriple(0);
  if (sub_1C44157D4(v21, 1, v32) == 1)
  {
    sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
LABEL_4:
    v33 = 1;
    goto LABEL_6;
  }

  (*(v68 + 16))(v31, v21, v7);
  sub_1C44DBD5C(v21, type metadata accessor for ConstructionGraphTriple);
  v33 = 0;
LABEL_6:
  sub_1C440BAA8(v31, v33, 1, v7);
  v34 = v69;
  sub_1C44D0BD8(v69, v13);
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v35 = sub_1C4F00978();
    sub_1C442B738(v35, qword_1EDE2DE10);
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C43F8000, v36, v37, "Identifier based Matcher: skipping entityTriples are empty", v38, 2u);
      MEMORY[0x1C6942830](v38, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    sub_1C448566C(v13, v17);
    if (a2)
    {
      v41 = v34;
      v42 = v72;
      v43 = sub_1C4928728(v41, a2, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple, sub_1C492BEB8, sub_1C492BE50, sub_1C4B34A4C);
    }

    else
    {
      v43 = 0.0;
      v42 = v72;
    }

    v69 = type metadata accessor for IdentifierBasedMatcher();
    v44 = *(v42 + *(v69 + 28));
    if (v43 <= v44)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v29, 0, 1, v7);
      sub_1C44DDDBC(v29, v31);
      v43 = v44;
    }

    v45 = v31;
    v46 = v17;
    v62 = v45;
    sub_1C445FFF0(v45, v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v26, 1, v7) == 1)
    {
      sub_1C4420C3C(v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FA9BD0);
      v59 = v42 + *(v69 + 32);
      v60 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v60);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FA9BF0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      v47 = v68;
      v48 = v63;
      (*(v68 + 32))(v63, v26, v7);
      v49 = v69;
      v50 = *(v69 + 32);
      v51 = sub_1C4EFD548();
      v52 = v67;
      (*(*(v51 - 8) + 16))(v67, v42 + v50, v51);
      v53 = type metadata accessor for EntityMatch(0);
      v54 = *(v47 + 16);
      v54(v52 + v53[5], v46, v7);
      v54(v52 + v53[6], v48, v7);
      v55 = v64;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v57 = v56;
      (*(v65 + 8))(v55, v66);
      (*(v47 + 8))(v48, v7);
      sub_1C44DBD5C(v46, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v62, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v58 = *(v72 + *(v49 + 24));
      *(v52 + v53[7]) = v43;
      *(v52 + v53[8]) = v57;
      *(v52 + v53[9]) = v58;
      *(v52 + v53[10]) = 0;
    }
  }

  return result;
}

uint64_t IdentifierBasedMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C492B6C4, 0, 0);
}

uint64_t sub_1C492B6C4()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for IdentifierBasedMatcher();
  v5 = *(v4 + 24);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 32);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 16);
  v9(v1, v2 + v6, v7);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v7);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(v2 + v5);
  switch(*(v2 + v5))
  {
    case 1:
    case 3:
      v42 = v9;
      v14 = v0[3];
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      sub_1C43FD8E4();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);

      if (v14)
      {
        goto LABEL_10;
      }

      if (*(v13 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v22 = *(v2 + v5);
      v23 = swift_task_alloc();
      *(v23 + 16) = v15;
      v24 = sub_1C492BC18;
      goto LABEL_9;
    case 2:
      v42 = v9;
      v27 = v0[3];
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      sub_1C43FD8E4();
      sub_1C46CE408(v29, v30, v31, v32, v33, v34);

      if (v1)
      {
LABEL_10:
        v35 = v0[4];

        v36 = v0[1];
      }

      else
      {
        if (*(v27 + *(sub_1C43FF150() + 28)) == 1)
        {
          v22 = *(v2 + v5);
          v23 = swift_task_alloc();
          *(v23 + 16) = v28;
          v24 = sub_1C492BED4;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C464B968();
        LOBYTE(v43[0]) = *(v2 + v5);
        v42(v38, v2 + v6, v7);
        sub_1C43FBD94();
        sub_1C440BAA8(v39, v40, v41, v7);
        sub_1C44A8814(v43, v38);
        sub_1C4420C3C(v38, &qword_1EC0B8568, &unk_1C4F319B0);

        v36 = v0[1];
      }

      result = v36();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA528, &qword_1C4F3A570);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4409D78();
      break;
  }

  return result;
}

uint64_t sub_1C492BAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C492BB28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return IdentifierBasedMatcher.execute()();
}

uint64_t sub_1C492BC48(uint64_t a1)
{
  result = sub_1C492BE08(&qword_1EDDF3BB8, type metadata accessor for IdentifierBasedMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C492BCA0(uint64_t a1)
{
  result = sub_1C492BE08(qword_1EDDF3BC8, type metadata accessor for IdentifierBasedMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C492BD20()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C492BE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C492BEEC()
{
  v1 = v0;
  sub_1C4F02248();

  strcpy(v5, "[externalId:");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  MEMORY[0x1C6940010](*v1, v1[1]);
  MEMORY[0x1C6940010](0x636964657270202CLL, 0xEC0000003A657461);
  MEMORY[0x1C6940010](v1[2], v1[3]);
  MEMORY[0x1C6940010](0x6D69546C7474202CLL, 0xEF3A706D61747365);
  v4 = v0[4];
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v5[0];
}

void sub_1C492BFFC()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v125 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v125);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v10);
  v11 = sub_1C4EFF0C8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v138 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FC4B0();
  v147 = sub_1C4EFF428();
  v19 = sub_1C43FCDF8(v147);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  v135 = v25;
  v26 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v27 = sub_1C43FBD18(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v142 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v145 = v32;
  sub_1C492EBB0(v33, v2, v34, v35, v36, v37, v38, v39, v115, v116, v117, v119, v120, v121, v123, v125, v127, v129, v131, v133);
  v146 = v40;
  v143 = v41;
  v42 = sub_1C4EFF388();
  v43 = 0;
  v137 = sub_1C443F668(v42);
  v44 = *(v137 + 32);
  sub_1C43FEC90();
  v48 = v47 & v46;
  v50 = (v49 + 63) >> 6;
  v136 = v21;
  v124 = v7;
  v51 = v11;
  v139 = v11;
  v144 = v0;
  v140 = v50;
  v141 = v45;
LABEL_2:
  v52 = v142;
  v53 = v145;
  if (!v48)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    sub_1C444B180();
    (*(v136 + 16))(v135, *(v137 + 48) + *(v136 + 72) * v4, v147);
    v55 = *(*(v137 + 56) + 8 * v4);
    v56 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    v57 = *(v56 + 48);
    v52 = v142;
    (*(v136 + 32))();
    *(v142 + v57) = v55;
    sub_1C43FBD94();
    sub_1C440BAA8(v58, v59, v60, v56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v0 = v144;
    v53 = v145;
    v51 = v139;
LABEL_9:
    sub_1C49328EC(v52, v53, &qword_1EC0BF728, &qword_1C4F412D0);
    v61 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    sub_1C440175C(v53, 1, v61);
    if (v62)
    {

      sub_1C4402358();
      sub_1C43FE9F0();
      return;
    }

    v63 = *(v53 + *(v61 + 48));
    v64 = sub_1C441ECE4();
    v65(v64);
    if (!*(v143 + 16) || (sub_1C457B070(), (v67 & 1) == 0))
    {

LABEL_23:
      v4 = sub_1C4EFF3D8();
      v83 = v82;
      sub_1C4402358();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4435928();
        v112 = *(v111 + 16);
        sub_1C43FCEC0();
        sub_1C458BB88();
        sub_1C44410E0(v113);
      }

      sub_1C440E3C8();
      v85 = *(v84 + 16);
      if (v85 >= *(v84 + 24) >> 1)
      {
        sub_1C4435928();
        sub_1C458BB88();
        sub_1C44410E0(v114);
      }

      v86 = sub_1C44043EC();
      v87(v86);
      sub_1C440E3C8();
      *(v88 + 16) = v85 + 1;
      v89 = (v88 + 40 * v85);
      v89[4] = v4;
      v89[5] = v83;
      v89[6] = 0;
      v89[7] = 0xE000000000000000;
      v89[8] = 0;
      v0 = v144;
      goto LABEL_28;
    }

    (*(v14 + 16))(v138, *(v143 + 56) + *(v14 + 72) * v66, v51);
    (*(v14 + 32))(v0, v138, v51);
    if (!*(v146 + 16) || (v4 = v146, sub_1C44E3664(), (v69 & 1) == 0))
    {

      v80 = sub_1C4418488();
      v81(v80);
      goto LABEL_23;
    }

    if (*(*(*(v146 + 56) + 8 * v68) + 16) <= *(v63 + 16) >> 3)
    {
      v148 = v63;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = &v148;
      sub_1C4A807C0();

      v71 = v148;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A81DF0();
      v71 = v70;
    }

    v0 = v144;
    if (*(v71 + 16))
    {
      v90 = 0;
      v91 = *(v71 + 56);
      v92 = *(v71 + 32);
      sub_1C43FEC90();
      v95 = v94 & v93;
      v97 = (v96 + 63) >> 6;
      v118 = v97;
      if ((v94 & v93) != 0)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v98 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_43;
        }

        if (v98 >= v97)
        {
          break;
        }

        v95 = *(v71 + 56 + 8 * v98);
        ++v90;
        if (v95)
        {
          v90 = v98;
          do
          {
LABEL_34:
            (*(v124 + 16))(v122, *(v71 + 48) + *(v124 + 72) * (__clz(__rbit64(v95)) | (v90 << 6)), v126);
            v128 = sub_1C4EFF3D8();
            v134 = v99;
            v132 = sub_1C4EFEB68();
            v130 = v100;
            (*(v124 + 8))(v122, v126);
            sub_1C4402358();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C4435928();
              v106 = *(v105 + 16);
              sub_1C43FCEC0();
              sub_1C458BB88();
              sub_1C44410E0(v107);
            }

            sub_1C440E3C8();
            v4 = *(v101 + 16);
            v51 = v139;
            if (v4 >= *(v101 + 24) >> 1)
            {
              sub_1C4435928();
              sub_1C458BB88();
              sub_1C44410E0(v108);
            }

            v95 &= v95 - 1;
            sub_1C440E3C8();
            *(v102 + 16) = v103;
            v104 = (v102 + 40 * v4);
            v104[4] = v128;
            v104[5] = v134;
            v104[6] = v132;
            v104[7] = v130;
            v104[8] = 0;
            v97 = v118;
          }

          while (v95);
        }
      }

      v0 = v144;
      (*(v14 + 8))(v144, v51);
      v109 = sub_1C44043EC();
      v110(v109);
LABEL_28:
      v50 = v140;
      v45 = v141;
      goto LABEL_2;
    }

    v72 = sub_1C4418488();
    v73(v72);
    v74 = sub_1C44043EC();
    v75(v74);
    v53 = v145;
    v50 = v140;
    v45 = v141;
  }

  while (v48);
LABEL_4:
  while (1)
  {
    v54 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v54 >= v50)
    {
      sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C43FCF64();
      sub_1C440BAA8(v76, v77, v78, v79);
      v48 = 0;
      goto LABEL_9;
    }

    v48 = *(v45 + 8 * v54);
    ++v43;
    if (v48)
    {
      v43 = v54;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1C492C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v194 = v23;
  v196 = v24;
  v188 = sub_1C4F00978();
  v25 = sub_1C43FCDF8(v188);
  v187 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v29);
  v186 = sub_1C4EFDE88();
  v30 = sub_1C43FCDF8(v186);
  v185 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v192 = v38;
  v39 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v201 = &v165 - v43;
  sub_1C43FBE44();
  v44 = sub_1C4EFF0C8();
  v45 = sub_1C43FCDF8(v44);
  v174 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  v199 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v198 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD230();
  v197 = v53;
  sub_1C43FBE44();
  v191 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v54 = sub_1C43FCDF8(v191);
  v173 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD2D8();
  v200 = v58;
  sub_1C43FBE44();
  v195 = sub_1C4EFD648();
  v59 = sub_1C43FCDF8(v195);
  v178 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v63);
  v177 = sub_1C4EFD678();
  v64 = sub_1C43FCDF8(v177);
  v175 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBCC4();
  v70 = v69 - v68;
  v71 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v72 = sub_1C43FCDF8(v71);
  v193 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBD08();
  v78 = v76 - v77;
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FC4B0();
  v180 = sub_1C4EFF658();
  v80 = sub_1C43FCDF8(v180);
  v179 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBCC4();
  v86 = v85 - v84;
  v87 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v87);
  v89 = *(v88 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v165 - v91;
  v93 = sub_1C4EFDE98();
  v94 = sub_1C43FCDF8(v93);
  v96 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v94);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v165 - v100;
  v207 = MEMORY[0x1E69E7CC0];
  sub_1C492FB2C(v196, v102, v103, v104, v105, v106, v107, v108, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176);
  sub_1C440175C(v92, 1, v93);
  if (v109)
  {
    sub_1C4420C3C(v92, &qword_1EC0BE4F0, &qword_1C4F37248);
  }

  else
  {
    v169 = v96;
    v110 = *(v96 + 32);
    v111 = sub_1C440A9B8();
    v170 = v93;
    v112(v111);
    sub_1C4EFF648();
    v167 = sub_1C4EFB298();
    v205 = v167;
    v206 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v203);
    v171 = v86;
    v168 = v101;
    sub_1C4EFDCA8();
    v113 = sub_1C49328A4(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple);
    v114 = v191;
    v166 = v113;
    sub_1C4EFAE28();
    sub_1C440962C(&v203);
    sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1C4F0CE60;
    *(v115 + 56) = &type metadata for LiveGlobalKnowledgeTripleColumn;
    v116 = sub_1C4932818();
    *(v115 + 64) = v116;
    *(v115 + 32) = 0;
    *(v115 + 96) = &type metadata for LiveGlobalKnowledgeTripleColumn;
    *(v115 + 104) = v116;
    *(v115 + 72) = 2;
    (*(v178 + 104))(v176, *MEMORY[0x1E69A9338], v195);
    sub_1C4EFD668();
    sub_1C4EFD658();
    sub_1C43FFB20(&v204);
    v117(v70, v177);
    sub_1C4401CBC(&unk_1EC0C0830, &qword_1EC0BF758, &qword_1C4F3A6C0);
    sub_1C4EFB308();

    v118 = *(v193 + 40);
    v177 = v78;
    v176 = v193 + 40;
    v175 = v118;
    v119 = v118(v20, v78, v71);
    MEMORY[0x1EEE9AC00](v119);
    sub_1C441CAAC();
    *(v120 - 16) = v121;
    *(v120 - 8) = v20;
    v178 = v20;
    sub_1C4465390(sub_1C493286C, v122);
    v202 = MEMORY[0x1E69E7CD0];
    v123 = *(v207 + 16);
    v172 = v71;
    if (v123)
    {
      v124 = v200;
      v125 = (v200 + *(v114 + 32));
      v126 = v207 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
      v127 = *(v173 + 72);
      v195 = v174 + 16;
      v196 = (v174 + 32);
      v128 = (v174 + 8);
      v174 = v207;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v129 = v197;
      do
      {
        sub_1C4932758(v126, v124);
        v130 = *v125;
        v131 = v125[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49327BC(v124);
        v132 = v201;
        sub_1C4EFF0D8();
        sub_1C440175C(v132, 1, v44);
        if (v109)
        {
          sub_1C4420C3C(v132, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        else
        {
          (*v196)(v129, v132, v44);
          sub_1C441B9F4();
          v133(v199, v129, v44);
          v134 = v44;
          v135 = v198;
          sub_1C44D56D0();
          v136 = *v128;
          v137 = v135;
          v44 = v134;
          v124 = v200;
          (*v128)(v137, v44);
          v136(v129, v44);
        }

        v126 += v127;
        --v123;
      }

      while (v123);
    }

    v138 = v185;
    v139 = v185 + 104;
    v140 = *(v185 + 104);
    v141 = v186;
    (v140)(v192, *MEMORY[0x1E69A95C0], v186);
    v142 = v181;
    sub_1C4426BC8();
    v140();
    v143 = v182;
    sub_1C4426BC8();
    v140();
    v144 = v183;
    sub_1C4426BC8();
    v140();
    v145 = v184;
    sub_1C4426BC8();
    v140();
    sub_1C441B388(&a18);
    v146 = v192;
    sub_1C4EFDCD8();

    v147 = *(v138 + 8);
    v147(v145, v141);
    v147(v144, v141);
    v147(v143, v141);
    v147(v142, v141);
    v147(v146, v141);
    v205 = v167;
    v206 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v203);
    v148 = v171;
    sub_1C4EFDCA8();
    sub_1C441615C(&v205);
    sub_1C4EFAE28();
    sub_1C440962C(&v203);
    v149 = v178;
    v150 = v172;
    v151 = v175(v178, v147, v172);
    MEMORY[0x1EEE9AC00](v151);
    sub_1C441CAAC();
    *(v152 - 16) = v153;
    *(v152 - 8) = v149;
    sub_1C4465390(sub_1C4932888, v154);
    sub_1C441B388(&a17);
    sub_1C4F00168();
    v155 = sub_1C4F00968();
    v156 = sub_1C4F01CC8();
    v157 = os_log_type_enabled(v155, v156);
    v158 = v193;
    if (v157)
    {
      v159 = swift_slowAlloc();
      *v159 = 134217984;
      swift_beginAccess();
      *(v159 + 4) = *(v207 + 16);
      _os_log_impl(&dword_1C43F8000, v155, v156, "Retrieved %ld triples from LiveGlobalKnowledge Cache", v159, 0xCu);
      v160 = v159;
      v139 = v189;
      MEMORY[0x1C6942830](v160, -1, -1);
    }

    sub_1C43FFB20(&a15);
    v161(v139, v188);
    v162 = *(v169 + 8);
    v163 = v170;
    v162(v190, v170);
    sub_1C43FFB20(&v207);
    v164(v148, v180);
    v162(v168, v163);
    swift_beginAccess();
    (*(v158 + 8))(v149, v150);
  }

  sub_1C43FE9F0();
}

void sub_1C492D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v153 = v27;
  v28 = sub_1C4EFF458();
  v29 = sub_1C43FBD18(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v32);
  v33 = sub_1C4EFF988();
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v37);
  v38 = sub_1C4EFF0C8();
  v39 = sub_1C43FCDF8(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v46 = v45 - v44;
  v47 = sub_1C4EFF428();
  v48 = sub_1C43FCDF8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C440CC74();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  v160 = v56;
  v57 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v58 = sub_1C43FBD18(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBD08();
  v63 = v61 - v62;
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD230();
  v178 = v65;
  sub_1C492EBB0(v66, v24, v67, v68, v69, v70, v71, v72, v150, v151, v152, v153, v154, v156, v158, v160, v162, v164, v166, v167);
  v179 = v74;
  v180 = v73;
  sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
  sub_1C44324B4();
  sub_1C49328A4(v75, v76);
  v159 = sub_1C4F00F28();
  v77 = v26;
  v78 = sub_1C4EFF388();
  v79 = 0;
  v163 = sub_1C443F668(v78);
  v165 = v50;
  v80 = *(v163 + 32);
  sub_1C43FD030();
  v84 = v83 & v82;
  v86 = (v85 + 63) >> 6;
  v176 = (v50 + 16);
  v177 = (v50 + 32);
  v168 = v41;
  v174 = (v50 + 8);
  v175 = v47;
  v87 = v178;
  v170 = v46;
  v171 = v20;
  v169 = v63;
  v172 = v86;
  v173 = v81;
  if ((v83 & v82) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v88 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v88 >= v86)
    {
      sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C43FCF64();
      sub_1C440BAA8(v109, v110, v111, v112);
      v84 = 0;
      goto LABEL_8;
    }

    v84 = *(v81 + 8 * v88);
    ++v79;
    if (v84)
    {
      v79 = v88;
LABEL_7:
      sub_1C444B180();
      (*(v165 + 16))(v161, *(v163 + 48) + *(v165 + 72) * v77, v47);
      v89 = *(*(v163 + 56) + 8 * v77);
      v90 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      v91 = *(v90 + 48);
      v63 = v169;
      (*(v165 + 32))();
      *(v169 + v91) = v89;
      sub_1C43FBD94();
      sub_1C440BAA8(v92, v93, v94, v90);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v46 = v170;
      v20 = v171;
      v87 = v178;
LABEL_8:
      sub_1C49328EC(v63, v87, &qword_1EC0BF728, &qword_1C4F412D0);
      v95 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C440175C(v87, 1, v95);
      if (v96)
      {

        sub_1C441B388(&a13);
        sub_1C4EFF398();
        sub_1C441615C(&a14);
        sub_1C4EFF3A8();
        sub_1C4EFF378();
        sub_1C43FE9F0();
        return;
      }

      v97 = v87;
      v98 = *(v87 + *(v95 + 48));
      (*v177)(v20, v97, v47);
      if (*(v179 + 16))
      {
        sub_1C457B070();
        if (v100)
        {
          (*(v168 + 16))(v46, *(v179 + 56) + *(v168 + 72) * v99, v38);
          if (*(v180 + 2))
          {
            v77 = v180;
            sub_1C44E3664();
            if (v102)
            {
              if (*(*(*(v180 + 7) + 8 * v101) + 16) <= v98[2] >> 3)
              {
                v181 = v98;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v77 = &v181;
                sub_1C4A807C0();

                v104 = v181;
              }

              else
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4A81DF0();
                v104 = v103;
              }

              v47 = v175;
              if (!v104[2])
              {

                sub_1C441B9F4();
                v105(v46, v38);
                v106 = *v174;
                v107 = sub_1C4409D98();
                v108(v107);
                v87 = v178;
                goto LABEL_18;
              }

              v132 = *v176;
              v133 = sub_1C440A9B8();
              v132(v133);
              swift_isUniquelyReferenced_nonNull_native();
              v181 = v159;
              sub_1C457B070();
              sub_1C444FDAC();
              if (__OFADD__(v136, v137))
              {
                goto LABEL_47;
              }

              v138 = v134;
              v139 = v135;
              sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
              if (sub_1C4F02458())
              {
                sub_1C4402358();
                sub_1C457B070();
                v47 = v175;
                v20 = v171;
                if ((v139 & 1) != (v141 & 1))
                {
                  goto LABEL_49;
                }

                v138 = v140;
              }

              else
              {
                v47 = v175;
                v20 = v171;
              }

              v142 = v181;
              v159 = v181;
              if (v139)
              {
                v143 = v181[7];
                v144 = *(v143 + 8 * v138);
                *(v143 + 8 * v138) = v104;
              }

              else
              {
                sub_1C4401D38(&v181[v138 >> 6]);
                (v132)(v142[6] + *(v165 + 72) * v138, v155, v47);
                *(v142[7] + 8 * v138) = v104;
                v145 = v142[2];
                v130 = __OFADD__(v145, 1);
                v146 = v145 + 1;
                if (v130)
                {
                  goto LABEL_48;
                }

                v142[2] = v146;
              }

              v77 = *v174;
              v147 = sub_1C4402358();
              v77(v147, v47);
              sub_1C441B9F4();
              v46 = v170;
              v148(v170, v38);
LABEL_41:
              v149 = sub_1C4409D98();
              (v77)(v149);
              goto LABEL_42;
            }
          }

          sub_1C441B9F4();
          v113(v46, v38);
        }
      }

      v114 = *v176;
      v115 = sub_1C440A9B8();
      v114(v115);
      swift_isUniquelyReferenced_nonNull_native();
      v181 = v159;
      sub_1C457B070();
      sub_1C444FDAC();
      if (__OFADD__(v118, v119))
      {
        goto LABEL_45;
      }

      v120 = v116;
      v121 = v117;
      sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
      if (sub_1C4F02458())
      {
        sub_1C457B070();
        v46 = v170;
        if ((v121 & 1) != (v123 & 1))
        {
          goto LABEL_49;
        }

        v120 = v122;
      }

      else
      {
        v46 = v170;
      }

      v159 = v181;
      if (v121)
      {
        v124 = v181[7];
        v125 = *(v124 + 8 * v120);
        *(v124 + 8 * v120) = v98;

        v47 = v175;
        v77 = *v174;
        (*v174)(v157, v175);
        v20 = v171;
        goto LABEL_41;
      }

      sub_1C4401D38(&v181[v120 >> 6]);
      v47 = v175;
      (v114)(*(v126 + 48) + *(v165 + 72) * v120, v157, v175);
      *(*(v159 + 56) + 8 * v120) = v98;
      v77 = *(v165 + 8);
      v127 = sub_1C4409D98();
      (v77)(v127);
      v20 = v171;
      v128 = sub_1C4409D98();
      (v77)(v128);
      v129 = *(v159 + 16);
      v130 = __OFADD__(v129, 1);
      v131 = v129 + 1;
      if (v130)
      {
        goto LABEL_46;
      }

      *(v159 + 16) = v131;
LABEL_42:
      v63 = v169;
      v87 = v178;
LABEL_18:
      v86 = v172;
      v81 = v173;
      if (!v84)
      {
        continue;
      }

      goto LABEL_7;
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
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C492DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v200 = v23;
  v25 = v24;
  v196 = v26;
  v27 = sub_1C4EFF458();
  v28 = sub_1C43FBD18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  v32 = sub_1C4EFF988();
  v33 = sub_1C43FBD18(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v36);
  v204 = sub_1C4EFEEF8();
  v37 = sub_1C43FCDF8(v204);
  v201 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  v202 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4F00978();
  v43 = sub_1C44410E0(v42);
  v44 = sub_1C43FCDF8(v43);
  v198 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v48);
  v217 = sub_1C4EFF428();
  v49 = sub_1C43FCDF8(v217);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v205 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  v215 = v56;
  v57 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v58 = sub_1C43FBD18(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBFDC();
  v206 = v61;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  v211 = v63;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C440CC74();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v195 - v66;
  v220 = MEMORY[0x1E69E7CD0];
  v203 = v25;
  v68 = sub_1C4EFF388();
  v69 = 0;
  v209 = sub_1C443F668(v68);
  v70 = *(v209 + 32);
  sub_1C43FD030();
  v74 = v73 & v72;
  v76 = (v75 + 63) >> 6;
  v212 = v51 + 16;
  v213 = v51;
  v216 = (v51 + 32);
  v214 = (v51 + 8);
  v207 = v67;
  v208 = v20;
  v210 = v71;
  if ((v73 & v72) == 0)
  {
LABEL_3:
    while (1)
    {
      v77 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v77 >= v76)
      {
        sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
        sub_1C43FCF64();
        sub_1C440BAA8(v95, v96, v97, v98);
        v74 = 0;
        goto LABEL_8;
      }

      v74 = *(v71 + 8 * v77);
      ++v69;
      if (v74)
      {
        v69 = v77;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v77 = v69;
LABEL_7:
    v78 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v79 = v78 | (v77 << 6);
    v80 = v209;
    v81 = v213;
    (*(v213 + 16))(v215, *(v209 + 48) + *(v213 + 72) * v79, v217);
    v82 = *(*(v80 + 56) + 8 * v79);
    v83 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    v84 = *(v83 + 48);
    v20 = v208;
    (*(v81 + 32))();
    *(v20 + v84) = v82;
    sub_1C43FBD94();
    sub_1C440BAA8(v85, v86, v87, v83);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v67 = v207;
LABEL_8:
    sub_1C49328EC(v20, v67, &qword_1EC0BF728, &qword_1C4F412D0);
    v88 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    sub_1C440175C(v67, 1, v88);
    if (v89)
    {
      break;
    }

    v90 = *&v67[*(v88 + 48)];

    v91 = v215;
    v92 = v217;
    (*v216)(v215, v67, v217);
    v93 = sub_1C4EFF3D8();
    sub_1C44869B4(v218, v93, v94);

    (*v214)(v91, v92);
    v71 = v210;
    if (!v74)
    {
      goto LABEL_3;
    }
  }

  if (*(v220 + 16))
  {
    v99 = v197;
    sub_1C4F00168();
    v100 = sub_1C4F00968();
    v101 = sub_1C4F01CC8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v218[0] = v103;
      *v102 = 136315138;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v104 = sub_1C4F01AC8();
      v106 = v105;

      v107 = sub_1C441D828(v104, v106, v218);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_1C43F8000, v100, v101, "searching IDs in no result cache %s", v102, 0xCu);
      sub_1C440962C(v103);
      MEMORY[0x1C6942830](v103, -1, -1);
      MEMORY[0x1C6942830](v102, -1, -1);
    }

    sub_1C43FFB20(&a16);
    v108(v99, v199);
    v109 = v205;
    v110 = v206;
    v111 = sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
    sub_1C44324B4();
    v207 = sub_1C49328A4(v112, v113);
    v208 = v111;
    v218[0] = sub_1C4F00F28();
    MEMORY[0x1EEE9AC00](v218[0]);
    sub_1C441CAAC();
    *(v114 - 16) = v115;
    *(v114 - 8) = v218;
    sub_1C4465390(sub_1C493273C, v116);
    v117 = sub_1C4EFF388();
    v118 = *(v218[0] + 64);
    v210 = v218[0] + 64;
    v119 = *(v218[0] + 32);
    sub_1C43FD030();
    v122 = v121 & v120;
    v124 = (v123 + 63) >> 6;
    v198 = v201 + 16;
    v197 = v201 + 8;
    v209 = v125;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v126 = 0;
LABEL_16:
    v127 = v211;
    while (v122)
    {
      v128 = v126;
LABEL_23:
      v129 = __clz(__rbit64(v122));
      v122 &= v122 - 1;
      v130 = v129 | (v128 << 6);
      v131 = v209;
      v132 = v213;
      (*(v213 + 16))(v215, *(v209 + 48) + *(v213 + 72) * v130, v217);
      v133 = *(*(v131 + 56) + 8 * v130);
      v134 = *(v88 + 48);
      v110 = v206;
      (*(v132 + 32))();
      *(v110 + v134) = v133;
      sub_1C43FBD94();
      sub_1C440BAA8(v135, v136, v137, v88);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v109 = v205;
      v127 = v211;
LABEL_24:
      sub_1C49328EC(v110, v127, &qword_1EC0BF728, &qword_1C4F412D0);
      sub_1C440175C(v127, 1, v88);
      if (v89)
      {

        sub_1C4EFF398();
        sub_1C441615C(&a13);
        sub_1C4EFF3A8();
        sub_1C4EFF378();

        goto LABEL_65;
      }

      v138 = *(v127 + *(v88 + 48));
      v139 = sub_1C441ECE4();
      v140(v139, v127);
      if (!*(v138 + 16))
      {

        sub_1C445FD88();
        if (v176)
        {
          sub_1C440D060();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C441C2F4();
          sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
          sub_1C43FC490();
          v177 = sub_1C4404FEC();
          v127(v177);
          v178 = *(*(v117 + 56) + 8 * v138);

          sub_1C441AEF8();
LABEL_56:
          v179 = v110;
          v110 = v206;
          (v127)(v109, v179);
          goto LABEL_16;
        }

        goto LABEL_62;
      }

      v141 = 0;
      v142 = 1 << *(v138 + 32);
      v143 = (v142 + 63) >> 6;
      v144 = 56;
      if (v143)
      {
        while (1)
        {
          v145 = *(v138 + v144);
          if (v145)
          {
            break;
          }

          v144 += 8;
          v141 -= 64;
          if (!--v143)
          {
            goto LABEL_36;
          }
        }

        v146 = __clz(__rbit64(v145));
        if (v146 - v142 != v141)
        {
          if (-v141 < 0)
          {
            goto LABEL_68;
          }

          v147 = v146 - v141;
          if (v147 >= v142)
          {
            goto LABEL_68;
          }

          if (((*(v138 + v144) >> v146) & 1) == 0)
          {
            goto LABEL_69;
          }

          v127 = v202;
          (*(v201 + 16))(v202, *(v138 + 48) + *(v201 + 72) * v147, v204);
          if (sub_1C4EFED18())
          {

            sub_1C445FD88();
            if (v180)
            {
              sub_1C440D060();
              swift_isUniquelyReferenced_nonNull_native();
              sub_1C441C2F4();
              sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
              sub_1C43FC490();
              v181 = sub_1C4404FEC();
              v127(v181);
              v182 = *(*(v117 + 56) + 8 * v138);

              sub_1C441AEF8();
              sub_1C441739C();
              v183(v202, v204);
              goto LABEL_56;
            }

            sub_1C441739C();
            v190(v202, v204);
            goto LABEL_62;
          }

          sub_1C441739C();
          v148 = sub_1C440A9B8();
          v149(v148);
        }
      }

LABEL_36:
      v150 = sub_1C4EFF388();
      if (!*(v150 + 16) || (sub_1C457B070(), (v152 & 1) == 0))
      {

LABEL_62:
        v191 = sub_1C441ECE4();
        v192(v191, v217);
        goto LABEL_16;
      }

      v153 = *(*(v150 + 56) + 8 * v151);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v138 + 16) <= *(v153 + 16) >> 3)
      {
        v219 = v153;
        sub_1C4A807C0();

        v155 = v219;
      }

      else
      {
        sub_1C4A81DF0();
        v155 = v154;
      }

      if (!*(v155 + 16))
      {

        sub_1C445FD88();
        if (v184)
        {
          sub_1C440D060();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C441C2F4();
          sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
          sub_1C43FC490();
          v117 = v219;
          v185 = sub_1C4460278();
          v187 = *(v186 + 8);
          v187(v185, v217);
          v188 = *(*(v117 + 56) + 8 * v138);

          v189 = v217;
          sub_1C4F02478();
          v187(v109, v189);
          goto LABEL_16;
        }

        goto LABEL_62;
      }

      v200 = v155;
      swift_isUniquelyReferenced_nonNull_native();
      v219 = v117;
      sub_1C445FD88();
      sub_1C444FDAC();
      if (__OFADD__(v161, v162))
      {
        goto LABEL_70;
      }

      v163 = v159;
      LODWORD(v199) = v160;
      sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
      if (sub_1C43FC490())
      {
        sub_1C457B070();
        v166 = v199;
        if ((v199 & 1) != (v165 & 1))
        {
          goto LABEL_72;
        }

        v163 = v164;
        v127 = v211;
      }

      else
      {
        v127 = v211;
        v166 = v199;
      }

      v117 = v219;
      if (v166)
      {
        v167 = *(v219 + 56);
        v168 = *(v167 + 8 * v163);
        *(v167 + 8 * v163) = v200;
      }

      else
      {
        sub_1C4401D38(v219 + 8 * (v163 >> 6));
        v169 = sub_1C4460278();
        (*(v170 + 16))(v169, v109, v217);
        *(*(v117 + 56) + 8 * v163) = v200;
        v171 = *(v117 + 16);
        v172 = __OFADD__(v171, 1);
        v173 = v171 + 1;
        if (v172)
        {
          goto LABEL_71;
        }

        *(v117 + 16) = v173;
      }

      v174 = sub_1C441ECE4();
      v175(v174, v217);
    }

    while (1)
    {
      v128 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v128 >= v124)
      {
        sub_1C43FCF64();
        sub_1C440BAA8(v156, v157, v158, v88);
        v122 = 0;
        goto LABEL_24;
      }

      v122 = *(v210 + 8 * v128);
      ++v126;
      if (v122)
      {
        v126 = v128;
        goto LABEL_23;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v193 = sub_1C4EFF3B8();
  sub_1C43FBCE0(v193);
  (*(v194 + 16))(v196, v203);
LABEL_65:

  sub_1C43FE9F0();
}

void sub_1C492EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1C4EFF0C8();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  sub_1C43FCE30(v32);
  v33 = sub_1C456902C(&qword_1EC0BF740, &qword_1C4F3A6A0);
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FC4B0();
  v38 = sub_1C4EFF428();
  v39 = sub_1C43FCDF8(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  sub_1C43FD2C8(v45);
  v46 = sub_1C4EFEEF8();
  v47 = sub_1C43FCDF8(v46);
  v187 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v181 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  v177 = v57;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD230();
  v186 = v62;
  sub_1C43FBE44();
  v189 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v63 = sub_1C43FCDF8(v189);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBFDC();
  v178 = v68;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FD230();
  v188 = v71;
  sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
  sub_1C49328A4(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
  v183 = sub_1C4F00F28();
  sub_1C44324B4();
  sub_1C49328A4(v72, v73);
  v175 = v25;
  v176 = v38;
  v74 = sub_1C4F00F28();
  v75 = *(v24 + 16);
  if (v75)
  {
    v173 = v74;
    v168 = v20;
    v182 = 0;
    v179 = v75 - 1;
    v185 = v24 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v190 = (v187 + 8);
    v166 = v41 + 16;
    v165 = v28 + 32;
    v164 = v28 + 40;
    v76 = -1;
    v77 = v188;
    v180 = v65;
    v184 = v75;
    while (1)
    {
      v78 = v76 + 1;
      if (v76 + 1 >= v75)
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
        while (1)
        {
LABEL_100:
          sub_1C4F029F8();
          __break(1u);
        }
      }

      v79 = v77;
      v80 = *(v65 + 72);
      sub_1C4932758(v185 + v80 * v78, v79);
      v81 = *(v189 + 20);
      sub_1C4EFE308();
      sub_1C49328A4(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C4425C2C();
      v82 = v82 && v38 == v186;
      v83 = v82 ? 1 : sub_1C4414BBC();
      v84 = *v190;
      (*v190)(v186, v46);

      if ((v83 & 1) == 0)
      {
        break;
      }

      sub_1C442EBAC();
      sub_1C441B388(&a17);
      sub_1C4EFE658();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C4425C2C();
      if (v82 && v38 == v83)
      {
        v93 = sub_1C43FD924();
        (v84)(v93);
      }

      else
      {
        v86 = sub_1C4414BBC();
        v87 = sub_1C43FD924();
        (v84)(v87);

        if ((v86 & 1) == 0)
        {
          break;
        }
      }

      v78 = v76 + 2;
      if (__OFADD__(v76, 2))
      {
        goto LABEL_94;
      }

      if (v78 >= v184)
      {
        goto LABEL_95;
      }

      sub_1C4932758(v185 + v80 * v78, v174);
      v94 = *(v189 + 20);
      sub_1C441B388(&a10);
      sub_1C4EFE308();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C4425C2C();
      if (v82 && v38 == v83)
      {
        v102 = sub_1C43FD924();
        (v84)(v102);

        v77 = v188;
      }

      else
      {
        v96 = sub_1C4414BBC();
        v97 = sub_1C43FD924();
        (v84)(v97);

        v77 = v188;
        if ((v96 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      sub_1C442EBAC();
      sub_1C4EFE558();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      if (v193 == v191 && v194 == v192)
      {
        v120 = sub_1C43FD924();
        (v84)(v120);
      }

      else
      {
        v104 = sub_1C4F02938();
        v105 = sub_1C43FD924();
        (v84)(v105);

        if ((v104 & 1) == 0)
        {
LABEL_53:
          v106 = v174;
LABEL_61:
          sub_1C49327BC(v106);
LABEL_62:
          sub_1C4402C08(&a18);
          v77 = v188;
          v109(v181, v188 + v81, v46);
          sub_1C44239FC(v182);
          swift_isUniquelyReferenced_nonNull_native();
          v193 = v183;
          sub_1C44E3664();
          if (__OFADD__(*(v183 + 16), (v111 & 1) == 0))
          {
            goto LABEL_93;
          }

          v112 = v110;
          v38 = v111;
          sub_1C456902C(&qword_1EC0BA200, &qword_1C4F13B78);
          v113 = sub_1C4434144();
          v114 = v193;
          if (v113)
          {
            sub_1C44E3664();
            if ((v38 & 1) != (v116 & 1))
            {
              goto LABEL_100;
            }

            v112 = v115;
          }

          if ((v38 & 1) == 0)
          {
            sub_1C441739C();
            v117 = sub_1C4436574();
            v118(v117);
            sub_1C457EB2C(v112);
          }

          v183 = v114;
          v119 = *(v114 + 56) + 8 * v112;
          sub_1C44CB508();
          sub_1C44334AC();
          v84();
          sub_1C49327BC(v188);
          v182 = sub_1C4932D00;
          goto LABEL_89;
        }
      }

      v121 = *(v189 + 32);
      v122 = *(v174 + v121);
      v123 = *(v174 + v121 + 8);
      v124 = (v77 + v121);
      v125 = *v124;
      v126 = v124[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF3F8();
      sub_1C440175C(v168, 1, v176);
      if (!v82)
      {
        sub_1C4402C08(&v190);
        v134(v171, v168, v176);
        sub_1C441739C();
        v135(v170, v77, v175);
        swift_isUniquelyReferenced_nonNull_native();
        v193 = v173;
        sub_1C457B070();
        if (__OFADD__(*(v173 + 16), (v137 & 1) == 0))
        {
          goto LABEL_98;
        }

        v138 = v136;
        v38 = v137;
        sub_1C456902C(&qword_1EC0BA920, &unk_1C4F3A6B0);
        if (sub_1C4434144())
        {
          sub_1C457B070();
          v141 = v174;
          if ((v38 & 1) != (v140 & 1))
          {
            goto LABEL_100;
          }

          v138 = v139;
        }

        else
        {
          v141 = v174;
        }

        v153 = v193;
        v173 = v193;
        if (v38)
        {
          v154 = sub_1C443F228();
          (*(v155 + 40))(v154, v170, v175);
        }

        else
        {
          sub_1C4401D38(v193 + 8 * (v138 >> 6));
          (*(v156 + 16))(*(v153 + 48) + *(v156 + 72) * v138);
          v157 = sub_1C443F228();
          (*(v158 + 32))(v157, v170, v175);
          v159 = *(v153 + 16);
          v160 = __OFADD__(v159, 1);
          v161 = v159 + 1;
          if (v160)
          {
            goto LABEL_99;
          }

          *(v153 + 16) = v161;
        }

        sub_1C4402C08(&v189);
        v162(v171, v176);
        v152 = v141;
        goto LABEL_88;
      }

      sub_1C49327BC(v174);
      sub_1C49327BC(v77);
      v127 = v168;
LABEL_77:
      sub_1C4420C3C(v127, &qword_1EC0BF740, &qword_1C4F3A6A0);
LABEL_89:
      v76 = v78;
      v65 = v180;
      v75 = v184;
      if (v78 >= v179)
      {
        sub_1C44239FC(v182);
        goto LABEL_91;
      }
    }

    sub_1C4EFE308();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C4425C2C();
    if (v82 && v38 == v177)
    {
      sub_1C44334AC();
      v84();
    }

    else
    {
      v89 = sub_1C4414BBC();
      sub_1C44334AC();
      v84();

      if ((v89 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    sub_1C442EBAC();
    sub_1C441B388(&a14);
    sub_1C4EFE558();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C4425C2C();
    if (v82 && v38 == v83)
    {
      v98 = sub_1C43FD924();
      (v84)(v98);
    }

    else
    {
      v91 = sub_1C4414BBC();
      v92 = sub_1C43FD924();
      (v84)(v92);

      if ((v91 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v78 = v76 + 2;
    if (__OFADD__(v76, 2))
    {
      goto LABEL_96;
    }

    if (v78 >= v184)
    {
      goto LABEL_97;
    }

    sub_1C4932758(v185 + v80 * v78, v178);
    v99 = *(v189 + 20);
    v38 = v172;
    sub_1C4EFE308();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    if (v193 == v191 && v194 == v192)
    {

      sub_1C44334AC();
      v84();
      v77 = v188;
    }

    else
    {
      v101 = sub_1C4F02938();

      sub_1C44334AC();
      v84();
      v77 = v188;
      if ((v101 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    sub_1C442EBAC();
    sub_1C4EFE658();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    if (v193 == v191 && v194 == v192)
    {

      sub_1C44334AC();
      v84();
    }

    else
    {
      v108 = sub_1C4F02938();

      sub_1C44334AC();
      v84();
      if ((v108 & 1) == 0)
      {
LABEL_60:
        v106 = v178;
        goto LABEL_61;
      }
    }

    v128 = *(v189 + 32);
    v129 = *(v77 + v128);
    v130 = *(v77 + v128 + 8);
    v131 = (v178 + v128);
    v132 = *v131;
    v133 = v131[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF3F8();
    sub_1C440175C(v169, 1, v176);
    if (!v82)
    {
      sub_1C4402C08(&v190);
      v142(v167, v169, v176);
      sub_1C441739C();
      v143 = sub_1C4436574();
      v144(v143);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = v173;
      sub_1C4661148(v169, v167, isUniquelyReferenced_nonNull_native, v146, v147, v148, v149, v150, v163, v164, v165, v166);
      v173 = v193;
      sub_1C4402C08(&v189);
      v151(v167, v176);
      v152 = v178;
LABEL_88:
      sub_1C49327BC(v152);
      sub_1C49327BC(v77);
      goto LABEL_89;
    }

    sub_1C49327BC(v178);
    sub_1C49327BC(v77);
    v127 = v169;
    goto LABEL_77;
  }

LABEL_91:
  sub_1C43FE9F0();
}

void sub_1C492FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v261 = v22;
  v290 = sub_1C456902C(&qword_1EC0BF768, &qword_1C4F3A6C8);
  sub_1C43FBCE0(v290);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FCE30(v259 - v26);
  v27 = sub_1C456902C(&qword_1EC0BF770, &qword_1C4F3A6D0);
  v28 = sub_1C43FBD18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  sub_1C43FCE30(v32);
  v33 = sub_1C456902C(&qword_1EC0BF778, &qword_1C4F3A6D8);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2C8(v259 - v37);
  v277 = sub_1C4EFDDE8();
  v38 = sub_1C43FCDF8(v277);
  v270 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v42);
  v268 = sub_1C4EFDE88();
  v43 = sub_1C43FCDF8(v268);
  v269 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  sub_1C43FD2C8(v51);
  v291 = sub_1C4EFDE68();
  v52 = sub_1C43FCDF8(v291);
  v278 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD230();
  sub_1C43FD2C8(v65);
  v302 = sub_1C4EFF448();
  v66 = sub_1C43FCDF8(v302);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD2D8();
  v301 = v71;
  sub_1C43FBE44();
  v72 = sub_1C4EFF428();
  v73 = sub_1C43FCDF8(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBFDC();
  v308 = v78;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FD230();
  sub_1C43FCE30(v80);
  v81 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v82 = sub_1C43FBD18(v81);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBD08();
  v87 = v85 - v86;
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FD230();
  v303 = v89;
  v90 = sub_1C4F00F28();
  v91 = sub_1C4EFF388();
  v92 = 0;
  v295 = sub_1C443F668(v91);
  v93 = *(v295 + 32);
  sub_1C43FD030();
  v97 = v96 & v95;
  v287 = (v98 + 63) >> 6;
  v292 = (v75 + 16);
  v304 = v75 + 32;
  v298 = (v68 + 8);
  v294 = v75;
  v297 = v75 + 8;
  v299 = v94;
  v300 = v72;
  *&v305 = v87;
  if ((v96 & v95) == 0)
  {
LABEL_3:
    v101 = v303;
    while (1)
    {
      v100 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      if (v100 >= v287)
      {
        sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
        sub_1C43FCF64();
        sub_1C440BAA8(v134, v135, v136, v137);
        v97 = 0;
        goto LABEL_9;
      }

      v97 = *(v94 + v100);
      ++v92;
      if (v97)
      {
        v99 = v72;
        v307 = v90;
        v92 = v100;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  while (1)
  {
    v99 = v72;
    v307 = v90;
    v100 = v92;
LABEL_8:
    v102 = __clz(__rbit64(v97));
    v97 &= v97 - 1;
    v103 = v102 | (v100 << 6);
    v104 = v295;
    v105 = v294;
    v106 = v293;
    (*(v294 + 16))(v293, *(v295 + 48) + *(v294 + 72) * v103, v99);
    v68 = *(*(v104 + 56) + 8 * v103);
    v107 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    v108 = *(v107 + 48);
    v109 = *(v105 + 32);
    v72 = v99;
    v87 = v305;
    v109(v305, v106, v72);
    *(v87 + v108) = v68;
    sub_1C43FBD94();
    sub_1C440BAA8(v110, v111, v112, v107);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v101 = v303;
    v90 = v307;
LABEL_9:
    sub_1C49328EC(v87, v101, &qword_1EC0BF728, &qword_1C4F412D0);
    v113 = sub_1C43FE99C();
    sub_1C456902C(v113, v114);
    v115 = sub_1C440D060();
    sub_1C440175C(v115, 1, v68);
    if (v116)
    {
      break;
    }

    v307 = *(v101 + *(v68 + 48));
    (*v304)(v308, v101, v72);
    v117 = v301;
    sub_1C4EFF418();
    v118 = sub_1C4EFF438();
    v120 = v119;
    sub_1C4402C08(&a18);
    v121(v117, v302);
    if (*(v90 + 16) && (v122 = sub_1C445FAA8(v118, v120), (v123 & 1) != 0))
    {
      v124 = v90;
      v125 = (*(v90 + 56) + 32 * v122);
      v126 = v125[1];
      v306 = *v125;
      v128 = v125[2];
      v127 = v125[3];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v124 = v90;
      sub_1C4931554();
      v128 = MEMORY[0x1E69E7CD0];
      v306 = v118;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v309[2] = v128;
    v129 = v308;
    v130 = sub_1C4EFF408();
    sub_1C44869B4(v309, v130, v131);

    sub_1C465EB08();
    v68 = v132;
    swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v124;
    sub_1C4660FFC();

    sub_1C4402C08(&a17);
    v72 = v300;
    v133(v129, v300);
    v90 = v309[0];
    v87 = v305;
    v94 = v299;
    if (!v97)
    {
      goto LABEL_3;
    }
  }

  if (*(v90 + 16))
  {
    v139 = v90 + 64;
    v138 = *(v90 + 64);
    v140 = *(v90 + 32);
    sub_1C43FD030();
    v143 = v142 & v141;
    v145 = (v144 + 63) >> 6;
    LODWORD(v302) = *MEMORY[0x1E69A95C0];
    v300 = (v269 + 8);
    v301 = (v269 + 104);
    v265 = *MEMORY[0x1E69A9568];
    v264 = v270 + 104;
    v146 = v278;
    v306 = (v278 + 16);
    v263 = v270 + 8;
    v307 = v90;
    v308 = (v278 + 8);
    v303 = (v278 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v147 = 0;
    v148 = MEMORY[0x1E69E7CC0];
    v305 = xmmword_1C4F0D130;
    v262 = xmmword_1C4F0CE60;
    v149 = v286;
    v267 = v139;
    for (i = v145; ; v145 = i)
    {
      v304 = v148;
      if (!v143)
      {
        break;
      }

LABEL_24:
      v293 = v143;
      v151 = (*(v307 + 56) + ((v147 << 11) | (32 * __clz(__rbit64(v143)))));
      v153 = *v151;
      v152 = v151[1];
      v154 = v151[3];
      v295 = v151[2];
      v297 = v154;
      v155 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v156 = *(sub_1C4EFEEF8() - 8);
      v157 = *(v156 + 80);
      v158 = (v157 + 32) & ~v157;
      v292 = *(v156 + 72);
      v287 = v157;
      v294 = v155;
      v159 = swift_allocObject();
      sub_1C440BD90(v159);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFE308();
      sub_1C4D504A4();
      v299 = v160;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = v305;
      *(inited + 32) = v153;
      *(inited + 40) = v152;
      sub_1C448DE08(inited);
      v269 = v162;
      v270 = v158;
      *(swift_allocObject() + 16) = v305;
      sub_1C4EFE658();
      sub_1C4D504A4();
      v163 = *v301;
      v164 = v285;
      v165 = v268;
      (*v301)(v285, v302, v268);
      v166 = v274;
      sub_1C4422368();
      v163();
      v167 = v275;
      sub_1C4422368();
      v163();
      v168 = v163;
      v169 = v282;
      sub_1C4422368();
      v168();
      v298 = v168;
      v170 = v283;
      sub_1C4422368();
      v171();
      sub_1C4EFDE58();

      v172 = *v300;
      v299 = v172;
      v172(v170, v165);
      v172(v169, v165);
      v172(v167, v165);
      v173 = v166;
      v172(v166, v165);
      v172(v164, v165);
      v174 = swift_allocObject();
      sub_1C440BD90(v174);
      sub_1C4EFE558();
      sub_1C4D504A4();
      sub_1C4413074();
      v175 = v298;
      v298();
      sub_1C4413074();
      v175();
      sub_1C4413074();
      v175();
      v176 = v282;
      sub_1C4413074();
      v175();
      v177 = v283;
      sub_1C4413074();
      v175();
      v178 = v285;
      v179 = v167;
      v180 = v176;
      sub_1C4EFDE58();

      v181 = v299;
      v299(v177, v165);
      v181(v180, v165);
      v181(v179, v165);
      v181(v173, v165);
      v181(v178, v165);
      sub_1C4402C08(&v296);
      v182(v276, v265, v277);
      v294 = sub_1C456902C(&qword_1EC0BF780, qword_1C4F3A6E0);
      v183 = v278;
      v184 = *(v278 + 72);
      v185 = (*(v278 + 80) + 32) & ~*(v278 + 80);
      v186 = swift_allocObject();
      *(v186 + 16) = v262;
      v187 = v186 + v185;
      v188 = *(v183 + 16);
      v189 = v291;
      v188(v186 + v185, v280, v291);
      v188(v187 + v184, v281, v189);
      v292 = v188;
      v190 = v271;
      v191 = v276;
      sub_1C4EFDE48();

      sub_1C4402C08(&v295);
      v192(v191, v277);
      v295 = v184;
      v193 = swift_allocObject();
      v194 = sub_1C440BD90(v193);
      v294 = v185;
      (v188)(v195 + v185, v190, v291, v194);
      sub_1C445E85C();
      v196 = v298;
      v298();
      v197 = v274;
      sub_1C445E85C();
      v196();
      v198 = v275;
      sub_1C445E85C();
      v196();
      v199 = v282;
      sub_1C445E85C();
      v196();
      v200 = v283;
      sub_1C445E85C();
      v201();
      v202 = v272;
      sub_1C4EFDE58();

      v203 = v299;
      v299(v200, v165);
      v203(v199, v165);
      v203(v198, v165);
      v203(v197, v165);
      v203(v285, v165);
      v292(v273, v202, v291);
      v148 = v304;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = *(v148 + 16);
        v211 = sub_1C43FCEC0();
        sub_1C458BB08(v211, v212, v213, v148);
        v148 = v214;
      }

      v205 = *(v148 + 16);
      v204 = *(v148 + 24);
      v149 = v286;
      v146 = v278;
      v206 = v293;
      if (v205 >= v204 >> 1)
      {
        sub_1C458BB08(v204 > 1, v205 + 1, 1, v148);
        v148 = v215;
      }

      v143 = (v206 - 1) & v206;
      v207 = *v308;
      v208 = v291;
      (*v308)(v272, v291);
      v207(v271, v208);
      v207(v281, v208);
      v207(v280, v208);
      *(v148 + 16) = v205 + 1;
      sub_1C441B9F4();
      v209();
      v139 = v267;
    }

    while (1)
    {
      v150 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        goto LABEL_49;
      }

      if (v150 >= v145)
      {

        v216 = *(v148 + 16);
        v217 = v291;
        v218 = v306;
        if (v216 == 1)
        {
          sub_1C441615C(&v290);
          sub_1C4868258(v148, v219);
          sub_1C440175C(1, 1, v217);
          if (!v116)
          {
            sub_1C441B9F4();
            v253 = v259[0];
            v254(v259[0], 1, v217);
            (*v218)(v149, v253, v217);
            sub_1C441615C(&v292);
            sub_1C4EFDEA8();
            (*v308)(v253, v217);
            sub_1C4EFDE98();
            sub_1C43FBD94();
            sub_1C440BAA8(v255, v256, v257, v258);

            goto LABEL_47;
          }

          sub_1C4420C3C(1, &qword_1EC0BF778, &qword_1C4F3A6D8);
          v216 = *(v148 + 16);
        }

        if (!v216)
        {
          goto LABEL_52;
        }

        v220 = v148 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
        v221 = *(v146 + 16);
        v221(v149, v220, v217);
        if (v216 == 1)
        {
          goto LABEL_53;
        }

        v301 = *(v146 + 72);
        v302 = v220;
        v222 = v260;
        *&v305 = v221;
        v221(v260, v301 + v220, v217);
        sub_1C4EFDE08();
        v223 = v148;
        v224 = *(v146 + 8);
        (v224)(v222, v217);
        v225 = sub_1C4409D98();
        v224(v225);
        v226 = 0;
        v227 = *(v223 + 16);
        v228 = v303;
        while (1)
        {
          v229 = v296;
          if (v226 == v227)
          {
            v230 = 1;
            v226 = v227;
            v231 = v290;
          }

          else
          {
            v231 = v290;
            if ((v226 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            if (v226 >= *(v304 + 16))
            {
              goto LABEL_51;
            }

            v232 = v302 + v226 * v301;
            v233 = *(v290 + 48);
            v234 = v279;
            *v279 = v226;
            (v305)(v234 + v233, v232, v217);
            sub_1C49328EC(v234, v296, &qword_1EC0BF768, &qword_1C4F3A6C8);
            v229 = v296;
            v230 = 0;
            ++v226;
          }

          v235 = v229;
          sub_1C440BAA8(v229, v230, 1, v231);
          v236 = v289;
          sub_1C49328EC(v235, v289, &qword_1EC0BF770, &qword_1C4F3A6D0);
          sub_1C440175C(v236, 1, v231);
          if (v116)
          {
            break;
          }

          v237 = *v236;
          v238 = *v228;
          v239 = v236 + *(v231 + 48);
          v240 = v288;
          v217 = v291;
          (*v228)(v288, v239, v291);
          if (v237 >= 2)
          {
            sub_1C441B388(&v310);
            v241 = v284;
            sub_1C4EFDE08();
            (v224)(v240, v217);
            (v224)(v241, v217);
            v242 = v241;
            v228 = v303;
            v238(v242, v240, v217);
          }

          else
          {
            (v224)(v240, v217);
          }
        }

        v243 = v284;
        v244 = v291;
        (v305)(v286, v284, v291);
        sub_1C441615C(&v292);
        sub_1C4EFDEA8();
        (v224)(v243, v244);
        sub_1C4EFDE98();
        sub_1C43FBD94();
        sub_1C440BAA8(v245, v246, v247, v248);

        goto LABEL_47;
      }

      v143 = *(v139 + 8 * v150);
      ++v147;
      if (v143)
      {
        v147 = v150;
        goto LABEL_24;
      }
    }
  }

  sub_1C4EFDE98();
  sub_1C43FCF64();
  sub_1C440BAA8(v249, v250, v251, v252);
LABEL_47:

  sub_1C43FE9F0();
}

uint64_t sub_1C4931204(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  (*(v7 + 16))(v14 - v9, a3, v6);
  sub_1C4401CBC(&qword_1EC0BF760, &qword_1EC0BF758, &qword_1C4F3A6C0);
  sub_1C49328A4(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    v13 = *a2;
    *a2 = v11;
  }

  return result;
}

uint64_t sub_1C49313AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  (*(v6 + 16))(v12 - v8, a3, v5);
  sub_1C4401CBC(&qword_1EC0BF760, &qword_1EC0BF758, &qword_1C4F3A6C0);
  sub_1C49328A4(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple);
  v10 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v3)
  {
    return sub_1C49D3B70(v10);
  }

  return result;
}

void sub_1C4931554()
{
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v0 = *(sub_1C4EFEEF8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFE308();
  sub_1C4EFEBF8();
  sub_1C4EFEBB8();

  sub_1C4D504A4();
}

uint64_t sub_1C4931638(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v68 = a3;
  v77 = a1;
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = v59 - v6;
  v76 = sub_1C4EFEEF8();
  v69 = *(v76 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v74 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v66 = v59 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v73 = v59 - v12;
  v13 = sub_1C456902C(&qword_1EC0BF740, &qword_1C4F3A6A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v59 - v15;
  v67 = sub_1C4EFF428();
  v61 = *(v67 - 8);
  v17 = *(v61 + 64);
  v18 = MEMORY[0x1EEE9AC00](v67);
  v65 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = v59 - v20;
  v21 = sub_1C456902C(&qword_1EC0BF748, &qword_1C4F3A6A8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v59 - v24;
  swift_beginAccess();
  v81[7] = *a2;
  v80[3] = sub_1C4EFBD38();
  v80[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v81[3] = sub_1C4EFB298();
  v81[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v81);
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4F01458();

  sub_1C440962C(v80);
  sub_1C4835EB4();
  sub_1C4EFAE28();
  sub_1C440962C(v81);
  sub_1C4401CBC(&qword_1EC0BF750, &qword_1EC0BF748, &qword_1C4F3A6A8);
  sub_1C4835F08();
  v26 = v78;
  v27 = sub_1C4EFAFE8();
  result = (*(v22 + 8))(v25, v21);
  if (!v26)
  {
    v59[1] = 0;
    v78 = *(v27 + 16);
    if (v78)
    {
      v72 = 0;
      v29 = 0;
      v71 = (v61 + 32);
      v64 = (v69 + 32);
      v63 = (v69 + 16);
      v60 = (v61 + 16);
      v62 = (v69 + 8);
      v69 = v61 + 8;
      v30 = (v27 + 56);
      v31 = v68;
      v32 = v67;
      v70 = v16;
      v77 = v27;
      while (v29 < *(v27 + 16))
      {
        v33 = *(v30 - 1);
        v34 = *v30;
        v36 = *(v30 - 3);
        v35 = *(v30 - 2);
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF3C8();
        if (sub_1C44157D4(v16, 1, v32) == 1)
        {

          sub_1C4420C3C(v16, &qword_1EC0BF740, &qword_1C4F3A6A0);
        }

        else
        {
          v37 = v16;
          v38 = v79;
          (*v71)(v79, v37, v32);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v39 = v75;
          MEMORY[0x1C693D840](v33, v34);

          v40 = v76;
          if (sub_1C44157D4(v39, 1, v76) == 1)
          {
            (*v69)(v38, v32);
            sub_1C4420C3C(v39, &qword_1EC0B9A08, &unk_1C4F107B0);
            v16 = v70;
          }

          else
          {
            v41 = v73;
            (*v64)(v73, v39, v40);
            (*v63)(v74, v41, v40);
            sub_1C44239FC(v72);
            v42 = *v31;
            swift_isUniquelyReferenced_nonNull_native();
            v81[0] = *v31;
            v43 = v81[0];
            *v31 = 0x8000000000000000;
            sub_1C457B070();
            if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
            {
              goto LABEL_23;
            }

            v46 = v44;
            v47 = v45;
            sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
            v48 = sub_1C4F02458();
            v49 = v81[0];
            if (v48)
            {
              sub_1C457B070();
              v31 = v68;
              v52 = v65;
              v32 = v67;
              v16 = v70;
              if ((v47 & 1) != (v51 & 1))
              {
                goto LABEL_24;
              }

              v46 = v50;
            }

            else
            {
              v31 = v68;
              v52 = v65;
              v32 = v67;
              v16 = v70;
            }

            v53 = *v31;
            *v31 = v49;

            v54 = *v31;
            if ((v47 & 1) == 0)
            {
              (*v60)(v52, v79, v32);
              sub_1C457DFE0(v46, v52, MEMORY[0x1E69E7CD0], v54);
            }

            v55 = *(v54 + 56) + 8 * v46;
            v56 = v66;
            sub_1C44CB508();
            v57 = *v62;
            v58 = v76;
            (*v62)(v56, v76);
            v57(v73, v58);
            (*v69)(v79, v32);
            v72 = sub_1C4932D00;
          }
        }

        ++v29;
        v30 += 5;
        v27 = v77;
        if (v78 == v29)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_1C4F029F8();
      __break(1u);
    }

    else
    {
      v72 = 0;
LABEL_20:

      return sub_1C44239FC(v72);
    }
  }

  return result;
}

uint64_t sub_1C4931ED0()
{
  v0 = sub_1C4EFBD38();
  sub_1C44F9918(v0, qword_1EDE2CBD0);
  sub_1C442B738(v0, qword_1EDE2CBD0);
  sub_1C4932A74();
  return sub_1C4EFBD58();
}

uint64_t sub_1C4931F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73656D69546C7474 && a2 == 0xEC000000706D6174)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C493206C(char a1)
{
  if (!a1)
  {
    return 0x6C616E7265747865;
  }

  if (a1 == 1)
  {
    return 0x7461636964657270;
  }

  return 0x73656D69546C7474;
}

uint64_t sub_1C49320D4(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BF7A8, &qword_1C4F3A948);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4932A74();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v20[15] = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v20[14] = 1;
    sub_1C4F02798();
    v18 = v3[4];
    v20[13] = 2;
    sub_1C4F027F8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4932250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF7A0, &qword_1C4F3A940);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4932A74();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v19 = v11;
  v17 = sub_1C4F02678();
  v18 = v12;
  v13 = sub_1C4F026D8();
  v14 = sub_1C43FD6E4();
  v15(v14);
  result = sub_1C440962C(a1);
  *a2 = v10;
  a2[1] = v19;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v13;
  return result;
}

uint64_t sub_1C4932470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4931F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4932498(uint64_t a1)
{
  v2 = sub_1C4932A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49324D4(uint64_t a1)
{
  v2 = sub_1C4932A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4932510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4932A20();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

double sub_1C4932590@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4932250(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C49325F4()
{
  sub_1C4835F78();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C49326E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4932AC8();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4932758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveGlobalKnowledgeTriple();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49327BC(uint64_t a1)
{
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4932818()
{
  result = qword_1EDDDE9A0;
  if (!qword_1EDDDE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE9A0);
  }

  return result;
}

uint64_t sub_1C49328A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C49328EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C4932970()
{
  result = qword_1EC0BF788;
  if (!qword_1EC0BF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF788);
  }

  return result;
}

unint64_t sub_1C49329CC()
{
  result = qword_1EC0BF790;
  if (!qword_1EC0BF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF790);
  }

  return result;
}

unint64_t sub_1C4932A20()
{
  result = qword_1EC0BF798;
  if (!qword_1EC0BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF798);
  }

  return result;
}

unint64_t sub_1C4932A74()
{
  result = qword_1EDDE2AD0;
  if (!qword_1EDDE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AD0);
  }

  return result;
}

unint64_t sub_1C4932AC8()
{
  result = qword_1EC0BF7B0;
  if (!qword_1EC0BF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF7B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IDSearchNoResultRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C4932BFC()
{
  result = qword_1EC0BF7B8;
  if (!qword_1EC0BF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF7B8);
  }

  return result;
}

unint64_t sub_1C4932C54()
{
  result = qword_1EDDE2AC0;
  if (!qword_1EDDE2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AC0);
  }

  return result;
}

unint64_t sub_1C4932CAC()
{
  result = qword_1EDDE2AC8;
  if (!qword_1EDDE2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AC8);
  }

  return result;
}

uint64_t static InferenceClient.withExpandedDefinitionList()()
{
  sub_1C4EFEF98();
  result = static InferenceServer.withExpandedDefinitionList()();
  if (!v0)
  {
    sub_1C4407110();
    sub_1C43FD6F4();
    return sub_1C4EFEF28();
  }

  return result;
}

uint64_t static InferenceClient.withExpandedDefinitionList(serverParameters:)()
{
  sub_1C4EFEF98();
  v1 = sub_1C43FD6F4();
  result = static InferenceServer.withExpandedDefinitionList(parameters:)(v1);
  if (!v0)
  {
    sub_1C4407110();
    sub_1C43FD6F4();
    return sub_1C4EFEF28();
  }

  return result;
}

uint64_t static InferenceServer.withExpandedDefinitionList()()
{
  v0 = sub_1C4EFFB08();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C4EFEF98();
  sub_1C4EFEF88();
  sub_1C4932E5C();
  return sub_1C4EFEF78();
}

unint64_t sub_1C4932E5C()
{
  result = qword_1EC0BF7C0;
  if (!qword_1EC0BF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF7C0);
  }

  return result;
}

uint64_t static InferenceServer.withExpandedDefinitionList(parameters:)(uint64_t a1)
{
  v2 = sub_1C4EFFB08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFEF98();
  (*(v3 + 16))(v6, a1, v2);
  sub_1C4932E5C();
  return sub_1C4EFEF78();
}

uint64_t sub_1C4933004(uint64_t (*a1)(void), void (*a2)(uint64_t))
{
  v3 = a1();
  v5 = MEMORY[0x1E69E7CC0];
  a2(v3);
  return v5;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceDefinitionExpandedList(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C4933104@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A9C48];
  v3 = sub_1C4EFFF98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C4933190()
{
  v1 = sub_1C493359C(&qword_1EDDFD418);

  return MEMORY[0x1EEE13BE8](v0, v1);
}

uint64_t static InferenceSupportBackendHelper.CreateBackend.withRemoteBackendInProcess(config:)(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for InferenceSupportRemoteBackendInProcess();
  sub_1C493359C(&qword_1EDDFD418);
  return sub_1C4EFFCF8();
}

uint64_t sub_1C4933370()
{
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  result = sub_1C44E7FAC();
  if (!v0)
  {
    v2 = *(result + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    return v2;
  }

  return result;
}

uint64_t sub_1C4933414()
{
  v1 = *(type metadata accessor for Configuration() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C4EF98F8();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C49334D4()
{
  v0 = type metadata accessor for Configuration();
  sub_1C43FBD18(v0);
  v2 = *(v1 + 80);
  return sub_1C4933370();
}

uint64_t sub_1C493359C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InferenceSupportRemoteBackendInProcess();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C49335E0()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CCA8);
  v1 = sub_1C442B738(v0, qword_1EDE2CCA8);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C493365C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "InferenceSupportXPC: starting...", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDE50A0 != -1)
  {
    sub_1C4407130();
  }

  v10 = sub_1C442B738(v2, qword_1EDE2CCA8);
  sub_1C44098F0(a1, v5);
  v11 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v10);
  swift_endAccess();
  sub_1C45A6F50();
  v12 = *MEMORY[0x1E69A9F70];
  sub_1C4F01138();
  v13 = sub_1C49AA56C();
  v14 = qword_1EDE2CC98;
  qword_1EDE2CC98 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2CCA0 = [objc_allocWithZone(type metadata accessor for InferenceSupportXPC.Delegate()) init];
    v16 = qword_1EDE2CCA0;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create InferenceSupportXPC service", v18, 2u);
      sub_1C43FE9D4();
    }
  }
}

id sub_1C4933908(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_jsonEncoder;
  v7 = sub_1C4EF93D8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_1C4EF93C8();
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_assetRegistryXPCBaseServer] = a1;
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_jsonDecoder] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1C49339A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v10[2] = a8;
  v9 = *(a7 + OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_assetRegistryXPCBaseServer);
  AssetRegistryXPC.BaseServer.assetEntryResultData(for:in:remoteOptionsData:completion:)(a1, a2, a3, a4, a5, a6, sub_1C45A6ED8, v10);
  _Block_release(a8);
}

id InferenceSupportXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C4933C00(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &aBlock - v8;
  if (qword_1EDDE50A0 != -1)
  {
    sub_1C4407130();
  }

  v10 = sub_1C442B738(v3, qword_1EDE2CCA8);
  swift_beginAccess();
  sub_1C4466EEC(v10, v9);
  v11 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v9, 1, v11);
  if (result != 1)
  {
    v13 = &v9[*(v11 + 20)];
    v14 = *v13;
    v15 = *(v13 + 1);
    sub_1C4467948(v9);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v23 = sub_1C4F00978();
      sub_1C442B738(v23, qword_1EDE2DCD8);
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CF8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = sub_1C43FCED0();
        *v26 = 0;
        _os_log_impl(&dword_1C43F8000, v24, v25, "InferenceSupportXPC: service is in no-op mode.", v26, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v17 = *MEMORY[0x1E69A9F70];
      sub_1C4F01138();
      v18 = sub_1C446874C();

      if (v18)
      {
        v19 = sub_1C4EF9348();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        v22 = sub_1C4EF9338();
        sub_1C4466EEC(v10, v7);
        result = sub_1C44157D4(v7, 1, v11);
        if (result != 1)
        {
          type metadata accessor for AssetRegistryFullServer();

          sub_1C4473C20(v7);
          v27 = objc_allocWithZone(type metadata accessor for AssetRegistryXPC.BaseServer());

          v29 = sub_1C45A5110(v28, v22);
          v30 = [objc_opt_self() interfaceWithProtocol_];
          [a2 setExportedInterface_];

          objc_allocWithZone(type metadata accessor for InferenceSupportXPC.Server());

          v31 = v29;
          v32 = sub_1C4933908(v31, v22);
          [a2 setExportedObject_];

          v39 = sub_1C49340B8;
          v40 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v36 = 1107296256;
          v37 = sub_1C4833DD0;
          v38 = &unk_1F43EFF98;
          v33 = _Block_copy(&aBlock);
          [a2 setInterruptionHandler_];
          _Block_release(v33);
          v39 = sub_1C49340D8;
          v40 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v36 = 1107296256;
          v37 = sub_1C4833DD0;
          v38 = &unk_1F43EFFC0;
          v34 = _Block_copy(&aBlock);
          [a2 setInvalidationHandler_];
          _Block_release(v34);
          [a2 resume];

          return 1;
        }

        goto LABEL_20;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for InferredActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C493431C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4934334(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4934354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 177))
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

uint64_t sub_1C49343A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C493443C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1C493444C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C493443C(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1C4934528(uint64_t a1, uint64_t a2)
{
  if (sub_1C4EF9C68() & 1) != 0 && (v4 = type metadata accessor for InferredActivitySegment(), v5 = v4[5], (sub_1C4EF9C68()) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return vabdd_f64(*(a1 + v4[7]), *(a2 + v4[7])) < 0.0001;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49345B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974697669746361 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001C4F8ABD0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4934770(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x6E656469666E6F63;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4934818(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BF908, &qword_1C4F3B110);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4938608();
  sub_1C4F02BF8();
  v27 = 0;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v2)
  {
    v14 = type metadata accessor for InferredActivitySegment();
    v15 = v14[5];
    v26 = 1;
    sub_1C4402150();
    sub_1C4F027E8();
    v25 = *(v3 + v14[6]);
    v24 = 2;
    sub_1C4938770();
    sub_1C4402150();
    sub_1C4F027E8();
    v16 = *(v3 + v14[7]);
    v23 = 3;
    sub_1C4402150();
    sub_1C4F027B8();
    v17 = (v3 + v14[8]);
    v18 = *v17;
    v19 = v17[1];
    v22 = 4;
    sub_1C4402150();
    sub_1C4F02798();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4934A50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v40 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = (&v38 - v11);
  v12 = sub_1C456902C(&qword_1EC0BF8F0, &qword_1C4F3B108);
  v13 = sub_1C43FCDF8(v12);
  v41 = v14;
  v42 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v38 - v17;
  v19 = type metadata accessor for InferredActivitySegment();
  sub_1C440A6B8(v19);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4938608();
  v44 = v18;
  v26 = v45;
  sub_1C4F02BC8();
  if (v26)
  {
    return sub_1C440962C(a1);
  }

  v45 = a1;
  v38 = v24;
  v51 = 0;
  sub_1C4498DE4(&unk_1EDDFCD60);
  sub_1C444B198();
  v27 = v38;
  v43 = *(v40 + 32);
  v43();
  v50 = 1;
  sub_1C444B198();
  v28 = v19;
  (v43)(v27 + *(v19 + 20), v10, v3);
  v48 = 2;
  sub_1C493865C();
  v43 = 0;
  sub_1C4F026C8();
  *(v27 + *(v19 + 24)) = v49;
  v47 = 3;
  sub_1C4F02698();
  v29 = v45;
  *(v27 + *(v28 + 28)) = v30;
  v46 = 4;
  v31 = sub_1C4F02678();
  v33 = v32;
  v34 = sub_1C446BF50();
  v35(v34, v42);
  v36 = (v27 + *(v28 + 32));
  *v36 = v31;
  v36[1] = v33;
  sub_1C49386B0(v27, v39);
  sub_1C440962C(v29);
  return sub_1C4938714(v27);
}

uint64_t sub_1C4934E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49345B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4934EBC(uint64_t a1)
{
  v2 = sub_1C4938608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4934EF8(uint64_t a1)
{
  v2 = sub_1C4938608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4934F68@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5[0] = 0;
  v5[1] = a1;
  *&v6[40] = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 1;
  sub_1C441D670(a2, v6);
  sub_1C4938428(v5, a3);
  return sub_1C4938460(v5);
}

uint64_t sub_1C4934FE0()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000) - 8) + 64);
  v1[4] = sub_1C43FBE7C();
  v4 = type metadata accessor for InferredActivitySegment();
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64);
  v1[6] = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4935090()
{
  sub_1C43FBCD4();
  if (*(v0[3] + 8))
  {
    swift_task_alloc();
    sub_1C43FBE70();
    v0[7] = v1;
    *v1 = v2;
    v1[1] = sub_1C49351B4;
    v4 = v0[3];
    v3 = v0[4];

    return sub_1C493541C();
  }

  else
  {
    v6 = v0[4];
    v7 = v0[5];
    sub_1C43FCF64();
    sub_1C440BAA8(v8, v9, v10, v11);
    sub_1C4607CD4(v0[4], &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v12 = v0[6];
    v13 = v0[4];
    v14 = v0[2];
    sub_1C43FCF64();
    sub_1C440BAA8(v15, v16, v17, v18);

    sub_1C43FBDA0();

    return v19();
  }
}

uint64_t sub_1C49351B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4935298()
{
  v1 = v0[4];
  v2 = v0[5];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4607CD4(v1, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v4 = 1;
  }

  else
  {
    v5 = v0[6];
    v6 = v0[2];
    sub_1C49382E4(v1, v5);
    v7 = sub_1C4EF9CD8();
    sub_1C440A6B8(v7);
    v9 = *(v8 + 16);
    v9(v6, v5, v7);
    v10 = *(v2 + 20);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v9(v6 + *(v3 + 28), v5 + v10, v7);
    sub_1C49382E4(v5, v6 + *(v3 + 32));
    v4 = 0;
  }

  v11 = v0[6];
  v12 = v0[4];
  sub_1C440BAA8(v0[2], v4, 1, v3);

  sub_1C43FBDA0();

  return v13();
}

uint64_t sub_1C493541C()
{
  sub_1C43FBCD4();
  v1[68] = v0;
  v1[67] = v2;
  v3 = *(*(sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000) - 8) + 64);
  v1[69] = sub_1C43FBE7C();
  v4 = sub_1C4EF9CD8();
  v1[70] = v4;
  sub_1C43FCF7C(v4);
  v1[71] = v5;
  v7 = *(v6 + 64);
  v1[72] = sub_1C43FBE7C();
  v8 = sub_1C4F00978();
  v1[73] = v8;
  sub_1C43FCF7C(v8);
  v1[74] = v9;
  v11 = *(v10 + 64);
  v1[75] = sub_1C43FBE7C();
  v12 = swift_task_alloc();
  v1[76] = v12;
  *v12 = v1;
  v12[1] = sub_1C4935578;

  return sub_1C4937158();
}

uint64_t sub_1C4935578()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 608);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C493565C()
{
  while (1)
  {
    sub_1C440CC88();
    if (!v0[10])
    {
      v63 = (v0 + 7);
      goto LABEL_17;
    }

    sub_1C4423738();
    if (!v0[20])
    {
      sub_1C440962C(v0 + 2);
      v63 = (v0 + 17);
      goto LABEL_17;
    }

    sub_1C4450724();
    if (!v0[30])
    {
      sub_1C440962C(v0 + 12);
      sub_1C440962C(v0 + 2);
      v63 = (v0 + 27);
LABEL_17:
      sub_1C4607CD4(v63, &qword_1EC0BF8E8, &qword_1C4F3AF38);
      v64 = v0[67];
      type metadata accessor for InferredActivitySegment();
      v65 = sub_1C440EF74();
      sub_1C440BAA8(v65, v66, 1, v67);
      sub_1C4422374();

      sub_1C43FBDA0();
      sub_1C441AF18();

      __asm { BRAA            X1, X16 }
    }

    sub_1C441D23C();
    sub_1C446028C();
    if (!v1)
    {
      __break(1u);
      return;
    }

    sub_1C4425C3C();
    if (!v3)
    {
      v4 = v0[75];
      sub_1C4F00198();
      sub_1C448BD48((v0 + 2), (v0 + 37));
      sub_1C448BD48((v0 + 2), (v0 + 42));
      sub_1C448BD48((v0 + 12), (v0 + 47));
      sub_1C448BD48((v0 + 12), (v0 + 52));
      sub_1C448BD48((v0 + 22), (v0 + 57));
      sub_1C448BD48((v0 + 22), (v0 + 62));
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CF8();
      v7 = os_log_type_enabled(v5, v6);
      v8 = v0[75];
      v9 = v0[74];
      v10 = v0[73];
      if (v7)
      {
        v85 = v0[74];
        v86 = v0[75];
        v11 = v0[72];
        v12 = v0[71];
        v13 = v0[70];
        v14 = swift_slowAlloc();
        v84 = v10;
        swift_slowAlloc();
        *v14 = 136316418;
        v83 = v6;
        v15 = v0[40];
        v16 = v0[41];
        sub_1C444FDBC(v0 + 37, v15);
        log = v5;
        v17(v15, v16);
        sub_1C44005C4();
        sub_1C4498DE4(&qword_1EDDFCD50);
        v18 = sub_1C4F02858();
        v20 = v19;
        v21 = *(v12 + 8);
        v21(v11, v13);
        v22 = sub_1C440AC70(v0 + 37);
        sub_1C441D828(v22, v20, v23);
        sub_1C4408758();

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v24 = v0[46];
        sub_1C4409678(v0 + 42, v0[45]);
        v25 = *(v24 + 16);
        v26 = sub_1C4408758();
        v27(v26, v24);
        sub_1C4F02858();
        v28 = sub_1C4410DEC();
        v21(v28, v13);
        v29 = sub_1C440AC70(v0 + 42);
        sub_1C441D828(v29, v24, v30);
        sub_1C4404CE0();

        *(v14 + 14) = v11;
        *(v14 + 22) = 2080;
        v31 = v0[50];
        sub_1C444FDBC(v0 + 47, v31);
        v32 = sub_1C4408BB0();
        v33(v32);
        sub_1C4F02858();
        v34 = sub_1C4410DEC();
        v21(v34, v13);
        v35 = sub_1C440AC70(v0 + 47);
        sub_1C441D828(v35, v31, v36);
        sub_1C4404CE0();

        *(v14 + 24) = v11;
        *(v14 + 32) = 2080;
        v37 = v0[55];
        sub_1C4409678(v0 + 52, v37);
        sub_1C443F674();
        v38 = sub_1C4408BB0();
        v39(v38);
        sub_1C4F02858();
        v40 = sub_1C4410DEC();
        v21(v40, v13);
        v41 = sub_1C440AC70(v0 + 52);
        sub_1C441D828(v41, v37, v42);
        sub_1C4404CE0();

        *(v14 + 34) = v11;
        *(v14 + 42) = 2080;
        v43 = v0[60];
        sub_1C444FDBC(v0 + 57, v43);
        v44 = sub_1C4408BB0();
        v45(v44);
        sub_1C4F02858();
        v46 = sub_1C4410DEC();
        v21(v46, v13);
        v47 = sub_1C440AC70(v0 + 57);
        sub_1C441D828(v47, v43, v48);
        sub_1C4404CE0();

        *(v14 + 44) = v11;
        *(v14 + 52) = 2080;
        v49 = v0[65];
        v50 = v0[66];
        sub_1C4409678(v0 + 62, v49);
        sub_1C443F674();
        v51 = sub_1C4408BB0();
        v52(v51);
        sub_1C4F02858();
        v53 = sub_1C4410DEC();
        v21(v53, v13);
        v54 = sub_1C440AC70(v0 + 62);
        sub_1C441D828(v54, v49, v55);
        sub_1C4404CE0();

        *(v14 + 54) = v11;
        _os_log_impl(&dword_1C43F8000, log, v83, "Predicting activities for prev segment: %s to %s, curr segment: %s to %s, next segment: %s to %s", v14, 0x3Eu);
        sub_1C441AF34();
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v85 + 8))(v86, v84);
      }

      else
      {

        (*(v9 + 8))(v8, v10);
        sub_1C4403308();
      }

      v2 = v0[68];
    }

    sub_1C4402364(v2);
    if (v56)
    {
      break;
    }

    sub_1C4409DA4();
    if ((v58 & 0x8000000000000000) == 0 && v58 < v57)
    {
      sub_1C4404400();
      v73 = v0[36];
      sub_1C4409678(v0 + 32, v0[35]);
      v74 = *(sub_1C43FCFC0() + 8);
      sub_1C4404280();
      v87 = v75 + *v75;
      v77 = *(v76 + 4);
      swift_task_alloc();
      sub_1C43FBE70();
      v0[81] = v78;
      *v78 = v79;
      sub_1C441997C(v78);
      sub_1C441AF18();

      __asm { BRAA            X6, X16 }
    }

    v59 = v0[69];
    sub_1C4414BD8();
    type metadata accessor for InferredActivitySegment();
    v60 = sub_1C440EF74();
    sub_1C440BAA8(v60, v61, 1, v62);
    sub_1C4607CD4(v0[69], &qword_1EC0BF8E0, &qword_1C4F3E000);
  }

  v70 = v0[68];
  v71 = swift_task_alloc();
  v0[80] = v71;
  *v71 = v0;
  sub_1C442CBE8(v71);
  sub_1C441AF18();

  sub_1C4937CBC();
}

uint64_t sub_1C4935D60()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 640);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4935E44()
{
  v1 = *(*(v0 + 616) + 16);
  do
  {
    sub_1C4409DA4();
    if ((v3 & 0x8000000000000000) == 0 && v3 < v2)
    {
      sub_1C4404400();
      v69 = *(v0 + 288);
      sub_1C4409678((v0 + 256), *(v0 + 280));
      v70 = *(sub_1C43FCFC0() + 8);
      sub_1C4404280();
      v92 = v71 + *v71;
      v73 = *(v72 + 4);
      swift_task_alloc();
      sub_1C43FBE70();
      *(v0 + 648) = v74;
      *v74 = v75;
      sub_1C441997C();
      sub_1C44149E0();

      __asm { BRAA            X6, X16 }
    }

    v4 = *(v0 + 552);
    sub_1C4414BD8();
    v5 = type metadata accessor for InferredActivitySegment();
    sub_1C43FCF64();
    sub_1C440BAA8(v6, v7, v8, v5);
    sub_1C4607CD4(*(v0 + 552), &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C440CC88();
    if (!*(v0 + 80))
    {
      v78 = v0 + 56;
      goto LABEL_23;
    }

    v9 = *(v0 + 544);
    sub_1C441D670((v0 + 56), v0 + 16);
    sub_1C4938228(v9 + 96, v0 + 136);
    if (!*(v0 + 160))
    {
      sub_1C440962C((v0 + 16));
      v78 = v0 + 136;
      goto LABEL_23;
    }

    v10 = *(v0 + 544);
    sub_1C441D670((v0 + 136), v0 + 96);
    sub_1C4938228(v10 + 136, v0 + 216);
    if (!*(v0 + 240))
    {
      sub_1C440962C((v0 + 96));
      sub_1C440962C((v0 + 16));
      v78 = v0 + 216;
LABEL_23:
      sub_1C4607CD4(v78, &qword_1EC0BF8E8, &qword_1C4F3AF38);
      v79 = *(v0 + 536);
      sub_1C43FCF64();
      sub_1C440BAA8(v80, v81, v82, v5);
      sub_1C4422374();

      sub_1C43FBDA0();
      sub_1C44149E0();

      __asm { BRAA            X1, X16 }
    }

    result = sub_1C441D23C();
    v12 = *(v5 + 8);
    *(v0 + 616) = v12;
    v13 = *(v12 + 16);
    *(v0 + 624) = v13;
    if (!v13)
    {
      __break(1u);
      return result;
    }

    sub_1C4425C3C();
    v91 = v15;
    if (!v15)
    {
      v16 = *(v0 + 600);
      sub_1C4F00198();
      sub_1C448BD48(v0 + 16, v0 + 296);
      sub_1C448BD48(v0 + 16, v0 + 336);
      sub_1C448BD48(v0 + 96, v0 + 376);
      sub_1C448BD48(v0 + 96, v0 + 416);
      sub_1C448BD48(v0 + 176, v0 + 456);
      sub_1C448BD48(v0 + 176, v0 + 496);
      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CF8();
      v19 = os_log_type_enabled(v17, v18);
      v90 = *(v0 + 600);
      v20 = *(v0 + 592);
      v21 = *(v0 + 584);
      if (v19)
      {
        v88 = *(v0 + 592);
        v22 = *(v0 + 576);
        v23 = *(v0 + 568);
        v24 = *(v0 + 560);
        v25 = swift_slowAlloc();
        v87 = v21;
        swift_slowAlloc();
        *v25 = 136316418;
        v86 = v18;
        v26 = *(v0 + 320);
        v27 = *(v0 + 328);
        sub_1C444FDBC((v0 + 296), v26);
        log = v17;
        v28(v26, v27);
        sub_1C44005C4();
        sub_1C4498DE4(&qword_1EDDFCD50);
        sub_1C443F240();
        v29 = sub_1C4F02858();
        v31 = v30;
        v89 = *(v23 + 8);
        v89(v22, v24);
        v32 = sub_1C440AC70((v0 + 296));
        sub_1C441D828(v32, v31, v33);
        sub_1C4408758();

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v34 = *(v0 + 368);
        sub_1C4409678((v0 + 336), *(v0 + 360));
        v35 = *(v34 + 16);
        v36 = sub_1C4408758();
        v37(v36, v34);
        sub_1C443F240();
        sub_1C4F02858();
        v38 = sub_1C44132E0();
        (v89)(v38);
        v39 = sub_1C440AC70((v0 + 336));
        sub_1C441D828(v39, v34, v40);
        sub_1C43FEF2C();

        *(v25 + 14) = v29;
        *(v25 + 22) = 2080;
        v41 = *(v0 + 400);
        sub_1C444FDBC((v0 + 376), v41);
        v42 = sub_1C440F7B8();
        v43(v42);
        sub_1C443F240();
        sub_1C4F02858();
        v44 = sub_1C44132E0();
        (v89)(v44);
        v45 = sub_1C440AC70((v0 + 376));
        sub_1C441D828(v45, v41, v46);
        sub_1C43FEF2C();

        *(v25 + 24) = v29;
        *(v25 + 32) = 2080;
        v47 = *(v0 + 440);
        sub_1C4409678((v0 + 416), v47);
        sub_1C443F674();
        v48 = sub_1C440F7B8();
        v49(v48);
        sub_1C443F240();
        sub_1C4F02858();
        v50 = sub_1C44132E0();
        (v89)(v50);
        v51 = sub_1C440AC70((v0 + 416));
        sub_1C441D828(v51, v47, v52);
        sub_1C43FEF2C();

        *(v25 + 34) = v29;
        *(v25 + 42) = 2080;
        v53 = *(v0 + 480);
        sub_1C444FDBC((v0 + 456), v53);
        v54 = sub_1C440F7B8();
        v55(v54);
        sub_1C443F240();
        sub_1C4F02858();
        v56 = sub_1C44132E0();
        (v89)(v56);
        v57 = sub_1C440AC70((v0 + 456));
        sub_1C441D828(v57, v53, v58);
        sub_1C43FEF2C();

        *(v25 + 44) = v29;
        *(v25 + 52) = 2080;
        v59 = *(v0 + 520);
        v60 = *(v0 + 528);
        sub_1C4409678((v0 + 496), v59);
        sub_1C443F674();
        v61 = sub_1C440F7B8();
        v62(v61);
        sub_1C443F240();
        sub_1C4F02858();
        v63 = sub_1C44132E0();
        (v89)(v63);
        v64 = sub_1C440AC70((v0 + 496));
        sub_1C441D828(v64, v59, v65);
        sub_1C43FEF2C();

        *(v25 + 54) = v29;
        _os_log_impl(&dword_1C43F8000, log, v86, "Predicting activities for prev segment: %s to %s, curr segment: %s to %s, next segment: %s to %s", v25, 0x3Eu);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v88 + 8))(v90, v87);
      }

      else
      {

        (*(v20 + 8))(v90, v21);
        sub_1C4403308();
      }

      v14 = *(v0 + 544);
    }

    *v14 = v91 + 1;
  }

  while (v91 + 1 != *(v12 + 16));
  v66 = *(v0 + 544);
  v67 = swift_task_alloc();
  *(v0 + 640) = v67;
  *v67 = v0;
  sub_1C442CBE8();
  sub_1C44149E0();

  return sub_1C4937CBC();
}

uint64_t sub_1C4936560()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 648);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C4936644()
{
  v1 = v0[69];
  sub_1C4414BD8();
  sub_1C440962C(v0 + 32);
  v2 = type metadata accessor for InferredActivitySegment();
  v3 = sub_1C440EF74();
  if (sub_1C44157D4(v3, v4, v2) != 1)
  {
    v78 = v0[67];
    sub_1C49382E4(v0[69], v78);
    v79 = v78;
    v80 = 0;
    goto LABEL_21;
  }

  v96 = v2;
  while (1)
  {
    sub_1C4607CD4(v0[69], &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C440CC88();
    if (!v0[10])
    {
      v81 = (v0 + 7);
LABEL_20:
      sub_1C4607CD4(v81, &qword_1EC0BF8E8, &qword_1C4F3AF38);
      v79 = v0[67];
      v80 = 1;
LABEL_21:
      sub_1C440BAA8(v79, v80, 1, v2);
      sub_1C4422374();

      sub_1C43FBDA0();
      sub_1C441AF18();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4423738();
    if (!v0[20])
    {
      sub_1C440962C(v0 + 2);
      v81 = (v0 + 17);
      goto LABEL_20;
    }

    sub_1C4450724();
    if (!v0[30])
    {
      sub_1C440962C(v0 + 12);
      sub_1C440962C(v0 + 2);
      v81 = (v0 + 27);
      goto LABEL_20;
    }

    sub_1C441D23C();
    sub_1C446028C();
    if (!v5)
    {
      __break(1u);
      return;
    }

    sub_1C4425C3C();
    if (!v7)
    {
      v8 = v0[75];
      sub_1C4F00198();
      sub_1C448BD48((v0 + 2), (v0 + 37));
      sub_1C448BD48((v0 + 2), (v0 + 42));
      sub_1C448BD48((v0 + 12), (v0 + 47));
      sub_1C448BD48((v0 + 12), (v0 + 52));
      sub_1C448BD48((v0 + 22), (v0 + 57));
      sub_1C448BD48((v0 + 22), (v0 + 62));
      v9 = sub_1C4F00968();
      v101 = sub_1C4F01CF8();
      v10 = os_log_type_enabled(v9, v101);
      v11 = v0[75];
      v12 = v0[74];
      v13 = v0[73];
      if (v10)
      {
        v14 = v0[72];
        v15 = v0[71];
        v100 = v0[73];
        v16 = v0[70];
        v99 = v0[75];
        v17 = swift_slowAlloc();
        swift_slowAlloc();
        *v17 = 136316418;
        v19 = v0[40];
        v18 = v0[41];
        sub_1C4409678(v0 + 37, v19);
        log = v9;
        (*(v18 + 8))(v19, v18);
        sub_1C44005C4();
        sub_1C4498DE4(&qword_1EDDFCD50);
        sub_1C441C304();
        v20 = sub_1C4F02858();
        v22 = v21;
        v102 = *(v15 + 8);
        v102(v14, v16);
        v23 = sub_1C440AC70(v0 + 37);
        sub_1C441D828(v23, v22, v24);
        sub_1C43FCFC0();

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        v97 = v12;
        v25 = v0[45];
        v26 = v0[46];
        sub_1C4433D28(v0 + 42);
        v28 = *(v27 + 16);
        v29 = sub_1C4411E24();
        v30(v29);
        sub_1C441C304();
        sub_1C4F02858();
        v31 = sub_1C440E3D4();
        (v102)(v31);
        v32 = sub_1C440AC70(v0 + 42);
        sub_1C441D828(v32, v25, v33);
        sub_1C43FCFC0();

        *(v17 + 14) = v20;
        *(v17 + 22) = 2080;
        v34 = v0[50];
        v35 = v0[51];
        sub_1C4433D28(v0 + 47);
        v37 = *(v36 + 8);
        v38 = sub_1C4411E24();
        v39(v38);
        sub_1C441C304();
        sub_1C4F02858();
        v40 = sub_1C440E3D4();
        (v102)(v40);
        v41 = sub_1C440AC70(v0 + 47);
        sub_1C441D828(v41, v34, v42);
        sub_1C43FCFC0();

        *(v17 + 24) = v20;
        *(v17 + 32) = 2080;
        v43 = v0[55];
        v44 = v0[56];
        sub_1C4433D28(v0 + 52);
        v46 = *(v45 + 16);
        v47 = sub_1C4411E24();
        v48(v47);
        sub_1C441C304();
        sub_1C4F02858();
        v49 = sub_1C440E3D4();
        (v102)(v49);
        v50 = sub_1C440AC70(v0 + 52);
        sub_1C441D828(v50, v43, v51);
        sub_1C43FCFC0();

        *(v17 + 34) = v20;
        *(v17 + 42) = 2080;
        v52 = v0[60];
        v53 = v0[61];
        sub_1C4433D28(v0 + 57);
        v55 = *(v54 + 8);
        v56 = sub_1C4411E24();
        v57(v56);
        sub_1C441C304();
        sub_1C4F02858();
        v58 = sub_1C440E3D4();
        (v102)(v58);
        v59 = sub_1C440AC70(v0 + 57);
        sub_1C441D828(v59, v52, v60);
        sub_1C43FCFC0();

        *(v17 + 44) = v20;
        *(v17 + 52) = 2080;
        v61 = v0[65];
        v62 = v0[66];
        sub_1C4433D28(v0 + 62);
        v64 = *(v63 + 16);
        v65 = sub_1C4411E24();
        v66(v65);
        sub_1C441C304();
        v67 = sub_1C4F02858();
        v69 = v68;
        v102(v14, v16);
        v70 = sub_1C440AC70(v0 + 62);
        sub_1C441D828(v70, v69, v71);
        sub_1C43FCFC0();
        v2 = v96;

        *(v17 + 54) = v67;
        _os_log_impl(&dword_1C43F8000, log, v101, "Predicting activities for prev segment: %s to %s, curr segment: %s to %s, next segment: %s to %s", v17, 0x3Eu);
        sub_1C441AF34();
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v97 + 8))(v99, v100);
      }

      else
      {

        (*(v12 + 8))(v11, v13);
        sub_1C4403308();
      }

      v6 = v0[68];
    }

    sub_1C4402364(v6);
    if (v72)
    {
      break;
    }

    sub_1C4409DA4();
    if ((v74 & 0x8000000000000000) == 0 && v74 < v73)
    {
      sub_1C4404400();
      v87 = v0[36];
      sub_1C4409678(v0 + 32, v0[35]);
      v88 = *(sub_1C43FCFC0() + 8);
      sub_1C4404280();
      v103 = v89 + *v89;
      v91 = *(v90 + 4);
      swift_task_alloc();
      sub_1C43FBE70();
      v0[81] = v92;
      *v92 = v93;
      sub_1C441997C();
      sub_1C441AF18();

      __asm { BRAA            X6, X16 }
    }

    v75 = v0[69];
    sub_1C4414BD8();
    v76 = sub_1C440EF74();
    sub_1C440BAA8(v76, v77, 1, v2);
  }

  v84 = v0[68];
  v85 = swift_task_alloc();
  v0[80] = v85;
  *v85 = v0;
  sub_1C442CBE8(v85);
  sub_1C441AF18();

  sub_1C4937CBC();
}

uint64_t sub_1C4936D60@<X0>(uint64_t a1@<X8>)
{
  sub_1C4936D54(a1);

  return sub_1C49370F0(v1);
}

uint64_t sub_1C4936D8C()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C4938A70;

  return sub_1C4934FE0();
}

uint64_t sub_1C4936E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_task_alloc();
  sub_1C43FBE70();
  *(v3 + 24) = v7;
  *v7 = v8;
  v7[1] = sub_1C4938A6C;

  return (sub_1C49820AC)(a1, a2, a3, v3 + 16);
}

unint64_t sub_1C4936EE8()
{
  result = qword_1EDDF1FA8;
  if (!qword_1EDDF1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1FA8);
  }

  return result;
}

unint64_t sub_1C4936F3C()
{
  result = qword_1EC0BF8C0;
  if (!qword_1EC0BF8C0)
  {
    sub_1C4572308(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8C0);
  }

  return result;
}

unint64_t sub_1C4936FA0(uint64_t a1)
{
  result = sub_1C4936EE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4936FC8(uint64_t a1)
{
  result = sub_1C4936FF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4936FF0()
{
  result = qword_1EDDF1FA0;
  if (!qword_1EDDF1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1FA0);
  }

  return result;
}

unint64_t sub_1C4937048()
{
  result = qword_1EC0BF8D0;
  if (!qword_1EC0BF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8D0);
  }

  return result;
}

unint64_t sub_1C493709C()
{
  result = qword_1EC0BF8D8;
  if (!qword_1EC0BF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8D8);
  }

  return result;
}

uint64_t sub_1C493716C()
{
  sub_1C43FCF70();
  v1 = v0[29];
  if (*(v1 + 160) == 1)
  {
    v2 = *(v1 + 32);
    sub_1C4418280(v1, *(v1 + 24));
    v0[30] = sub_1C440BDA0();
    v3 = sub_1C4F01F48();
    v0[31] = v3;
    sub_1C43FCF7C(v3);
    v0[32] = v4;
    v6 = *(v5 + 64);
    v0[33] = sub_1C43FBE7C();
    v7 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[34] = v8;
    *v8 = v9;
    v10 = sub_1C44324CC(v8);

    return MEMORY[0x1EEE6D8C8](v10);
  }

  else
  {
    *(v1 + 160) = 0;
    sub_1C43FBDA0();

    return v11();
  }
}

uint64_t sub_1C49372BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49373B8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  sub_1C4405CEC();
  if (v3)
  {
    v4 = *(v0 + 248);
    v5 = sub_1C441C948(*(v0 + 256));
    v6(v5);

LABEL_5:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_6;
  }

  *(v0 + 160) = v2;
  sub_1C4422F90((v0 + 136));
  sub_1C4402A78();
  v8 = *(v7 + 32);
  sub_1C440F228();
  v9();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v10 = sub_1C445FDA0();
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 16, *(v0 + 232) + 40);
  sub_1C442F214();
  *(v0 + 288) = sub_1C440BDA0();
  v11 = sub_1C4F01F48();
  *(v0 + 296) = v11;
  sub_1C43FCF7C(v11);
  *(v0 + 304) = v12;
  v14 = *(v13 + 64);
  *(v0 + 312) = sub_1C43FBE7C();
  v15 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 320) = v16;
  *v16 = v17;
  v18 = sub_1C44324CC(v16);

  return MEMORY[0x1EEE6D8C8](v18);
}

uint64_t sub_1C4937570()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 328) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C493766C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  sub_1C4405CEC();
  if (v3)
  {
    v4 = *(v0 + 296);
    v5 = sub_1C441C948(*(v0 + 304));
    v6(v5);

LABEL_5:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_6;
  }

  *(v0 + 192) = v2;
  sub_1C4422F90((v0 + 168));
  sub_1C4402A78();
  v8 = *(v7 + 32);
  sub_1C440F228();
  v9();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v10 = sub_1C445FDA0();
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 56, *(v0 + 232) + 80);
  sub_1C442F214();
  *(v0 + 336) = sub_1C440BDA0();
  v11 = sub_1C4F01F48();
  *(v0 + 344) = v11;
  sub_1C43FCF7C(v11);
  *(v0 + 352) = v12;
  v14 = *(v13 + 64);
  *(v0 + 360) = sub_1C43FBE7C();
  v15 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 368) = v16;
  *v16 = v17;
  v18 = sub_1C44324CC(v16);

  return MEMORY[0x1EEE6D8C8](v18);
}

uint64_t sub_1C4937828()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 376) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4937924()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  sub_1C4405CEC();
  if (v3)
  {
    v4 = *(v0 + 344);
    v5 = sub_1C441C948(*(v0 + 352));
    v6(v5);

LABEL_5:
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_6;
  }

  *(v0 + 224) = v2;
  sub_1C4422F90((v0 + 200));
  sub_1C4402A78();
  v8 = *(v7 + 32);
  sub_1C440F228();
  v9();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v10 = sub_1C445FDA0();
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 96, *(v0 + 232) + 120);
  sub_1C44173AC();

  return v11();
}

uint64_t sub_1C4937A28()
{
  sub_1C43FCF70();
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C43FD0E8(v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C4405D10(v6);
    sub_1C4410910(&dword_1C43F8000, v7, v8, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C44173AC();

  return v9();
}

uint64_t sub_1C4937B04()
{
  sub_1C43FCF70();
  v1 = *(v0 + 312);

  v2 = *(v0 + 328);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C43FD0E8(v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C4405D10(v6);
    sub_1C4410910(&dword_1C43F8000, v7, v8, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C44173AC();

  return v9();
}

uint64_t sub_1C4937BE0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 360);

  v2 = *(v0 + 376);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C43FD0E8(v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C4405D10(v6);
    sub_1C4410910(&dword_1C43F8000, v7, v8, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C44173AC();

  return v9();
}

uint64_t sub_1C4937CD0()
{
  sub_1C43FCF70();
  v1 = v0[11];
  sub_1C4938348(v1 + 80, v1 + 40);
  sub_1C4938348(v1 + 120, v1 + 80);
  sub_1C442F214();
  v0[12] = sub_1C440BDA0();
  v2 = sub_1C4F01F48();
  v0[13] = v2;
  sub_1C43FCF7C(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v0[15] = sub_1C43FBE7C();
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[16] = v7;
  *v7 = v8;
  v9 = sub_1C44324CC(v7);

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t sub_1C4937DF0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4937EEC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  sub_1C4405CEC();
  if (v3)
  {
    v4 = *(v0 + 104);
    v5 = sub_1C441C948(*(v0 + 112));
    v6(v5);

LABEL_5:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_6;
  }

  *(v0 + 80) = v2;
  sub_1C4422F90((v0 + 56));
  sub_1C4402A78();
  v8 = *(v7 + 32);
  sub_1C440F228();
  v9();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v10 = sub_1C445FDA0();
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 16, *(v0 + 88) + 120);
  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4937FF0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 120);

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = sub_1C43FD0E8(v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = sub_1C43FCED0();
    sub_1C4405D10(v7);
    sub_1C4410910(&dword_1C43F8000, v8, v9, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C49380CC()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C445229C;

  return sub_1C493541C();
}

uint64_t sub_1C493815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4982C7C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4938228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF8E8, &qword_1C4F3AF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InferredActivitySegment()
{
  result = qword_1EDDF36F0;
  if (!qword_1EDDF36F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49382E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredActivitySegment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4938348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF8E8, &qword_1C4F3AF38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49383B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF8E8, &qword_1C4F3AF38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49384B8()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4938548(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C4938588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4938608()
{
  result = qword_1EC0BF8F8;
  if (!qword_1EC0BF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8F8);
  }

  return result;
}

unint64_t sub_1C493865C()
{
  result = qword_1EC0BF900;
  if (!qword_1EC0BF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF900);
  }

  return result;
}

uint64_t sub_1C49386B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredActivitySegment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4938714(uint64_t a1)
{
  v2 = type metadata accessor for InferredActivitySegment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4938770()
{
  result = qword_1EC0BF910;
  if (!qword_1EC0BF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferredActivitySegment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C49388A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C49388E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4938968()
{
  result = qword_1EC0BF918;
  if (!qword_1EC0BF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF918);
  }

  return result;
}

unint64_t sub_1C49389C0()
{
  result = qword_1EC0BF920;
  if (!qword_1EC0BF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF920);
  }

  return result;
}

unint64_t sub_1C4938A18()
{
  result = qword_1EC0BF928;
  if (!qword_1EC0BF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF928);
  }

  return result;
}

uint64_t sub_1C4938AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v47 = a2;
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - v13;
  v51 = &v46 - v13;
  v48 = type metadata accessor for LOIBasedSegmentProvider(0);
  v15 = sub_1C43FBCE0(v48);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v7 + 16);
  v20(v14, a1, v4);
  v21 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  v20(v12, a1 + v21, v4);
  v49 = v19;
  v22 = v19;
  v23 = v51;
  sub_1C49FCD10(v51, v12, v22);
  v46 = type metadata accessor for ActivityModelDataSource();
  v20(v23, a1, v4);
  v20(v12, a1 + v21, v4);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v24 = sub_1C4F01108();
  LODWORD(v23) = sub_1C44C1028(v24);

  v25 = v46;
  sub_1C4574C14(v51, v12, 0, v53, &v55, v23);
  v26 = *(v47 + 16);
  if (v26)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v28 = (v47 + 32);
    do
    {
      v29 = *v28++;
      switch(v29)
      {
        case 1:
          v30 = type metadata accessor for ShoppingActivityModel();
          type metadata accessor for MotionStateSignal();
          swift_allocObject();
          sub_1C44005DC();

          sub_1C4A450C4(1, 600.0);
          v31 = sub_1C43FC0A8();
          v34 = sub_1C4B135A4(v31, v32, v33);
          *(&v56 + 1) = v30;
          v57 = &off_1F43FC780;
          goto LABEL_9;
        case 2:
          type metadata accessor for AttendingEventActivityModel();
          sub_1C44005DC();

          sub_1C43FC0A8();
          v34 = sub_1C45AB46C();
          v37 = &off_1F43E1658;
          goto LABEL_8;
        case 3:
          type metadata accessor for DiningOutActivityModel();
          sub_1C44005DC();

          v35 = sub_1C43FC0A8();
          v34 = sub_1C46C9E08(v35, v36);
          v37 = &off_1F43E83B0;
          goto LABEL_8;
        case 4:
          type metadata accessor for FlightActivityModel();
          sub_1C44005DC();

          sub_1C43FC0A8();
          v34 = sub_1C4808A04();
          v37 = &off_1F43ED498;
LABEL_8:
          *(&v56 + 1) = v25;
          v57 = v37;
LABEL_9:
          *&v55 = v34;
          sub_1C441D670(&v55, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v27 + 16);
            sub_1C458C35C();
            v27 = v40;
          }

          v38 = *(v27 + 16);
          v25 = v38 + 1;
          if (v38 >= *(v27 + 24) >> 1)
          {
            sub_1C458C35C();
            v27 = v41;
          }

          *(v27 + 16) = v25;
          sub_1C441D670(v53, v27 + 40 * v38 + 32);
          break;
        default:
          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          sub_1C49394E8(&v55);
          break;
      }

      --v26;
    }

    while (v26);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  *(&v56 + 1) = v48;
  v57 = sub_1C49395C0(qword_1EDDF3658, type metadata accessor for LOIBasedSegmentProvider);
  v42 = sub_1C4422F90(&v55);
  v43 = v49;
  sub_1C4939608(v49, v42, type metadata accessor for LOIBasedSegmentProvider);
  v44 = v50;
  bzero(v50, 0xB1uLL);
  sub_1C442E860(&v55, v52);
  sub_1C4934F68(v27, v52, v53);

  sub_1C4939668(v43, type metadata accessor for LOIBasedSegmentProvider);
  sub_1C440962C(&v55);
  return sub_1C4939550(v53, v44);
}

uint64_t sub_1C4938F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v41 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = type metadata accessor for LOIBasedSemanticLocationSegmentProvider(0);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v23;
  v24 = *(v6 + 16);
  v24(v17, a1, v3);
  v25 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v24(v15, a1 + *(v25 + 36), v3);
  v24(&v23[*(v18 + 20)], v17, v3);
  v26 = v42;
  v24(v42, v17, v3);
  v27 = v43;
  v24(v43, v15, v3);
  v28 = v18;
  v29 = *(v18 + 28);
  v30 = v40;
  sub_1C49FCD10(v26, v27, &v40[v29]);
  v31 = *(v41 + 8);
  v31(v15, v3);
  v31(v17, v3);
  v32 = type metadata accessor for LOIBasedSegment(0);
  v33 = v30;
  sub_1C440BAA8(v30, 1, 1, v32);
  *(v30 + *(v28 + 24)) = 0;
  sub_1C456902C(&qword_1EC0B8B60, &qword_1C4F0DF90);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C4F0D130;
  *(v34 + 56) = &type metadata for CommuteActivityModel;
  *(v34 + 64) = &off_1F43E6778;
  v35 = swift_allocObject();
  *(v34 + 32) = v35;
  *(v35 + 16) = 5;
  *(v35 + 24) = xmmword_1C4F3B2E0;
  *(v35 + 40) = 0x302E302E31;
  *(v35 + 48) = 0xE500000000000000;
  v47[3] = v28;
  v47[4] = sub_1C49395C0(&qword_1EDDF0FE8, type metadata accessor for LOIBasedSemanticLocationSegmentProvider);
  v36 = sub_1C4422F90(v47);
  sub_1C4939608(v33, v36, type metadata accessor for LOIBasedSemanticLocationSegmentProvider);
  v37 = v44;
  bzero(v44, 0xB1uLL);
  sub_1C442E860(v47, v45);
  sub_1C4934F68(v34, v45, v46);
  sub_1C4939668(v33, type metadata accessor for LOIBasedSemanticLocationSegmentProvider);
  sub_1C440962C(v47);
  return sub_1C4939550(v46, v37);
}

void sub_1C493936C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF940, &qword_1C4F3E050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  v9 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v10 = [v9 InFocus];
  swift_unknownObjectRelease();
  sub_1C4819D90(a1, v10, v8);

  if (!v2)
  {
    sub_1C49396C0(v8, a2);
  }
}

unint64_t sub_1C4939494()
{
  result = qword_1EDDF1F98;
  if (!qword_1EDDF1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1F98);
  }

  return result;
}

uint64_t sub_1C49394E8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BF930, &qword_1C4F3B460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4939550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF938, &qword_1C4F3B468);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49395C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4939608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4939668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C49396C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF940, &qword_1C4F3E050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4939730()
{
  result = qword_1EDDDC458;
  if (!qword_1EDDDC458)
  {
    sub_1C4572308(&qword_1EC0BF948, &qword_1C4F3B470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC458);
  }

  return result;
}

void sub_1C49397B4()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  v4 = sub_1C456902C(&qword_1EC0BAA38, &qword_1C4F16958);
  sub_1C44005F4(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440E3E8();
  v8 = sub_1C456902C(&qword_1EC0BAA30, &qword_1C4F3B4F0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD64();
  v12 = sub_1C456902C(&qword_1EC0BF980, &qword_1C4F3B4F8);
  sub_1C4411E38(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C442CC10();
  v16 = sub_1C456902C(&qword_1EC0BAA70, &qword_1C4F16A20);
  sub_1C4403354(v16);
  v17 = type metadata accessor for CarPlayEvent();
  v18 = sub_1C441FCCC(v17);
  sub_1C4460050(v18, v19, &qword_1EC0BAA30, &qword_1C4F3B4F0);
  v20 = sub_1C44324E4();
  v21(v20);
  sub_1C4407150();
  sub_1C4401CBC(v22, &qword_1EC0BAA38, &qword_1C4F16958);
  sub_1C4410DFC();
  v23 = sub_1C440C50C();
  sub_1C4420C3C(v23, v24, &qword_1C4F3B4F0);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v26 = sub_1C4401CBC(v25, &qword_1EC0BF980, &qword_1C4F3B4F8);
  v27 = sub_1C4434EE8(v26);
  sub_1C440F7CC(v27);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

uint64_t sub_1C493999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v25 = a2;
  v6 = sub_1C456902C(&qword_1EC0BF950, &qword_1C4F3B4A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = sub_1C456902C(&qword_1EC0BF958, &qword_1C4F3B4A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C456902C(&qword_1EC0BF968, &unk_1C4F3B4D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v19 = sub_1C456902C(&qword_1EC0BF970, &unk_1C4F3B6C0);
  v20 = v19[11];
  v21 = sub_1C456902C(&qword_1EC0BF960, &qword_1C4F3B4C8);
  sub_1C440BAA8(a4 + v20, 1, 1, v21);
  sub_1C4460050(a1, v14, &qword_1EC0BF958, &qword_1C4F3B4A8);
  (*(v7 + 16))(v10, v14, v6);
  sub_1C4401CBC(&qword_1EDDDB808, &qword_1EC0BF950, &qword_1C4F3B4A0);
  sub_1C4F019A8();
  sub_1C4420C3C(a1, &qword_1EC0BF958, &qword_1C4F3B4A8);
  sub_1C4420C3C(v14, &qword_1EC0BF958, &qword_1C4F3B4A8);
  v27[3] = v15;
  v27[4] = sub_1C4401CBC(qword_1EDDDF790, &qword_1EC0BF968, &unk_1C4F3B4D0);
  v22 = sub_1C4422F90(v27);
  sub_1C44CD9E0(v18, v22, &qword_1EC0BF968, &unk_1C4F3B4D0);
  sub_1C493B1DC(v27, a4);
  result = sub_1C44CD9E0(v25, a4 + v19[9], &qword_1EC0B84B8, &unk_1C4F0D4F0);
  *(a4 + v19[10]) = v26;
  return result;
}