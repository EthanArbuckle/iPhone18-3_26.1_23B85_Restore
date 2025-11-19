uint64_t sub_1C4637D38(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C44A7DA0;

  return sub_1C4635350(a1, a2, v6, v7, v8);
}

uint64_t sub_1C4637E44()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4637EC8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1C4638D80(0xD00000000000001CLL, 0x80000001C4F8E900);
  if (!result)
  {
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

id sub_1C4637F74()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_1C44F920C();
    v3 = sub_1C4637EC8();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C4637FD4()
{
  v1 = v0;
  if (v0[6])
  {
    v2 = v0[5];
  }

  else
  {
    sub_1C4F02248();
    v4 = v0[2];
    v3 = v0[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8E9A0);
    v2 = v4;
    v5 = v1[6];
    v1[5] = v2;
    v1[6] = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4638094()
{
  v1 = v0;
  if (v0[8])
  {
    v2 = v0[7];
  }

  else
  {
    sub_1C4F02248();
    v4 = v0[2];
    v3 = v0[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4F8E8E0);
    v2 = v4;
    v5 = v1[8];
    v1[7] = v2;
    v1[8] = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4638154@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4637F74();
  sub_1C4637FD4();
  v3 = sub_1C4F01108();

  [v2 doubleForKey_];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v6 = 1;
  }

  else
  {
    sub_1C4EF9C48();
    v6 = 0;
  }

  v7 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a1, v6, 1, v7);
}

uint64_t sub_1C463820C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4467FE0(a1, v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C44686E4(v5);
    v14 = sub_1C4637F74();
    sub_1C4637FD4();
    v15 = sub_1C4F01108();

    [v14 removeObjectForKey_];

    return sub_1C44686E4(a1);
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
    v17 = sub_1C4637F74();
    sub_1C4EF9C58();
    v19 = v18;
    sub_1C4637FD4();
    v20 = sub_1C4F01108();

    [v17 setDouble:v20 forKey:v19];

    sub_1C44686E4(a1);
    return (*(v9 + 8))(v13, v6);
  }
}

id sub_1C4638418()
{
  v0 = sub_1C4637F74();
  sub_1C4638094();
  v1 = sub_1C4F01108();

  v2 = [v0 integerForKey_];

  return v2;
}

void sub_1C4638480(uint64_t a1)
{
  v2 = sub_1C4637F74();
  sub_1C4638094();
  v3 = sub_1C4F01108();

  [v2 setInteger:a1 forKey:v3];
}

void sub_1C4638500()
{
  v1 = sub_1C4637F74();
  sub_1C4638094();
  v2 = sub_1C4F01108();

  [v1 removeObjectForKey_];

  v3 = *(v0 + 32);
  sub_1C4637FD4();
  v4 = sub_1C4F01108();

  [v3 removeObjectForKey_];
}

uint64_t sub_1C46385AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t sub_1C46385E4()
{
  sub_1C46385AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4638684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBFDC();
  v47 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v47 - v8;
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v48 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v50 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = sub_1C4EFDAB8();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 32);
  v53 = *(a1 + 16);
  v54[0] = v26;
  *(v54 + 9) = *(a1 + 41);
  sub_1C45D5A24(v25);
  sub_1C4638DE4();
  sub_1C4F01578();
  sub_1C4F01578();
  (*(v21 + 8))(v25, v18);
  if (v51 != v52)
  {
    return 0;
  }

  v27 = v48;
  (*(v48 + 16))(v17, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v9);
  v28 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_state);
  sub_1C4406810();
  swift_beginAccess();
  v29 = *sub_1C4409678(v28, v28[3]);
  v30 = v49;
  sub_1C4638154(v49);
  swift_endAccess();
  if (sub_1C44157D4(v30, 1, v9) == 1)
  {
    v31 = v50;
    sub_1C4EF9B28();
    if (sub_1C44157D4(v30, 1, v9) != 1)
    {
      sub_1C44686E4(v30);
    }
  }

  else
  {
    v31 = v50;
    (*(v27 + 32))(v50, v30, v9);
  }

  sub_1C4EF9B78();
  v33 = v32;
  v34 = *(v27 + 8);
  v34(v31, v9);
  v34(v17, v9);
  v35 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_interval);
  sub_1C4406810();
  if (v33 >= v36)
  {
    swift_beginAccess();
    v41 = v28[3];
    v42 = v28[4];
    sub_1C4418280(v28, v41);
    (*(v42 + 40))(1, v41, v42);
    swift_endAccess();
    v43 = v47;
    sub_1C4EF9CC8();
    sub_1C440BAA8(v43, 0, 1, v9);
    sub_1C4406810();
    swift_beginAccess();
    v44 = v28[3];
    v45 = v28[4];
    sub_1C4418280(v28, v44);
    (*(v45 + 16))(v43, v44, v45);
    goto LABEL_10;
  }

  swift_beginAccess();
  v37 = *sub_1C4409678(v28, v28[3]);
  v38 = sub_1C4638418();
  swift_endAccess();
  if (v38 < *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_maximumBehaviorsPerInterval))
  {
    sub_1C4406810();
    swift_beginAccess();
    v39 = v28[3];
    v40 = v28[4];
    sub_1C4418280(v28, v39);
    (*(v40 + 40))(v38 + 1, v39, v40);
LABEL_10:
    swift_endAccess();
    return 0;
  }

  return 1;
}

void sub_1C4638B2C()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_state);
  swift_beginAccess();
  v2 = *sub_1C4409678(v1, v1[3]);
  sub_1C4638500();
}

uint64_t sub_1C4638B8C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_type;
  v2 = sub_1C4EFDAB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_state));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorWindowLimiter()
{
  result = qword_1EC0BA1C0;
  if (!qword_1EC0BA1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4638C8C()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C4638D80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C4F01108();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_1C4638DE4()
{
  result = qword_1EDDEFFB8;
  if (!qword_1EDDEFFB8)
  {
    sub_1C4EFDAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFB8);
  }

  return result;
}

uint64_t IntelligencePlatformBenchmark.__allocating_init(config:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  IntelligencePlatformBenchmark.init(config:)(a1);
  return v5;
}

void *IntelligencePlatformBenchmark.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_1C4EFDBB8();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Configuration();
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_config;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_config);
  sub_1C44098F0(a1, v22);
  v24 = type metadata accessor for GraphStore();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = GraphStore.init(config:)(v22);
  if (v2)
  {
    sub_1C4467948(a1);
    sub_1C4467948(v3 + v23);
    v29 = *(*v3 + 48);
    v30 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_graphStore) = v27;
    sub_1C4EFDC58();
    sub_1C4EFDBA8();
    sub_1C44098F0(a1, v19);
    v28 = KnosisServer.init(config:platformConfig:)(v12, v19);
    sub_1C4467948(a1);
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_knosisServer) = v28;
  }

  return v3;
}

uint64_t sub_1C46390AC(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C44098F0(a1, v8 - v7);
  v10 = *(v1 + 48);
  v11 = *(v1 + 52);
  v12 = swift_allocObject();
  IntelligencePlatformBenchmark.init(config:)(v9);
  return v12;
}

uint64_t sub_1C4639154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v275 = a5;
  v10 = sub_1C456902C(&qword_1EC0BA1E0, &qword_1C4F13B58);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FCE30(v256 - v15);
  v16 = sub_1C4EFEEF8();
  v17 = sub_1C43FCDF8(v16);
  v276 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  sub_1C43FBF28();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v256 - v23;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  i = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCE30(v256 - v29);
  v30 = sub_1C456902C(&qword_1EC0BA1E8, &unk_1C4F13B60);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FCE30(v256 - v34);
  v35 = sub_1C4EFF0C8();
  v36 = sub_1C43FCDF8(v35);
  v265 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD08();
  v277 = v40 - v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v279 = v44;
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FCE30(v256 - v47);
  v266 = 0x80000001C4F8EA10;
  v48 = a1 == 0xD000000000000010 && 0x80000001C4F8EA10 == a2;
  v49 = v48;
  LODWORD(v261) = v49;
  v270 = a1;
  if (v48 || (sub_1C442FBF4() & 1) != 0)
  {
    sub_1C4433178();
    GraphStore.loadGraphTriples()();
    sub_1C48116F8();
LABEL_10:
    v259 = v50;

    goto LABEL_11;
  }

  sub_1C442B980();
  sub_1C441C824();
  v156 = a1 == v155 && a2 == v154;
  if (v156 || (sub_1C4434E98(), (sub_1C4F02938() & 1) != 0))
  {
    sub_1C4433178();
    GraphStore.loadEventTriples()();
    sub_1C4811820();
    goto LABEL_10;
  }

  v5 = &unk_1EC151000;
  v259 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v51 = a3 == 7628135 && a4 == 0xE300000000000000;
  v294 = v16;
  v281 = v35;
  v269 = a2;
  if (!v51 && (sub_1C43FC070() & 1) == 0)
  {
    v157 = a3 == 7370352 && a4 == 0xE300000000000000;
    if (v157 || (sub_1C43FC070() & 1) != 0)
    {
      v158 = 0;
      v159 = sub_1C440F3C0();
      v281 = *(v159 + 16);
      v160 = (v276 + 8);
      v161 = (v159 + 32);
      v107 = MEMORY[0x1E69E7CC0];
      for (i = (v159 + 32); ; v161 = i)
      {
        v162 = v161 + 40 * v158;
        while (1)
        {
          if (v281 == v158)
          {
            goto LABEL_65;
          }

          if (v158 >= *(v159 + 16))
          {
            goto LABEL_154;
          }

          sub_1C442E860(v162, &v289);
          if (*(v107 + 2) == v275)
          {
            goto LABEL_95;
          }

          v163 = v107;
          sub_1C442C574(&v289, v291);
          v164 = sub_1C4EFF7D8();
          v166 = v165;

          v167 = HIBYTE(v166) & 0xF;
          if ((v166 & 0x2000000000000000) == 0)
          {
            v167 = v164 & 0xFFFFFFFFFFFFLL;
          }

          if (v167)
          {
            sub_1C442C574(&v289, v291);
            v168 = v273;
            sub_1C4EFF7F8();
            v169 = sub_1C4EFEB68();
            v171 = v170;
            v172 = *v160;
            (*v160)(v168, v294);
            v284 = v169;
            v285 = v171;
            sub_1C43FFECC();
            sub_1C4415EA8();
            sub_1C44058F8();
            LOBYTE(v169) = sub_1C4F02048();

            if ((v169 & 1) == 0)
            {
              sub_1C4412D90(&v289, v291);
              v284 = sub_1C4EFF7D8();
              v285 = v173;
              sub_1C43FFECC();
              sub_1C44058F8();
              v174 = sub_1C4F02048();

              if ((v174 & 1) == 0)
              {
                break;
              }
            }
          }

          sub_1C440962C(&v289);
          v162 += 40;
          ++v158;
          v159 = sub_1C440F3C0();
          v107 = v163;
        }

        v284 = 0;
        v285 = 0xE000000000000000;
        sub_1C4F02248();

        v284 = 678458992;
        v285 = 0xE400000000000000;
        sub_1C4412D90(&v289, v291);
        v175 = v273;
        sub_1C4404C88();
        sub_1C4EFF7F8();
        sub_1C44191F8();
        sub_1C463B224(&qword_1EC0BA1F0, v176);
        v177 = v294;
        v178 = sub_1C4F02858();
        MEMORY[0x1C6940010](v178);

        v172(v175, v177);
        MEMORY[0x1C6940010](10028, 0xE200000000000000);
        sub_1C442C574(&v289, v291);
        sub_1C4404C88();
        v179 = sub_1C4EFF7D8();
        MEMORY[0x1C6940010](v179);

        MEMORY[0x1C6940010](0x547865646E692C27, 0xEC0000003D657079);
        v180 = sub_1C44118F8();
        MEMORY[0x1C6940010](v180);
        MEMORY[0x1C6940010](41, 0xE100000000000000);
        v181 = v284;
        v182 = v285;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = *(v163 + 2);
          sub_1C43FCEC0();
          sub_1C443D664();
          v163 = v188;
        }

        v184 = *(v163 + 2);
        v183 = *(v163 + 3);
        v185 = v163;
        if (v184 >= v183 >> 1)
        {
          sub_1C43FFD98(v183);
          sub_1C443D664();
          v185 = v189;
        }

        ++v158;
        *(v185 + 2) = v184 + 1;
        v186 = (v185 + 16 * v184);
        v107 = v185;
        v186[4] = v181;
        v186[5] = v182;
        sub_1C440962C(&v289);
        v159 = sub_1C440F3C0();
      }
    }

    v190 = a3 == 1651339107 && a4 == 0xE400000000000000;
    if (v190 || (sub_1C43FC070() & 1) != 0)
    {
      v191 = sub_1C440F3C0();
      v272 = *(v191 + 16);
      if (v272)
      {
        v192 = 0;
        v263 = v5[357];
        v268 = v191 + 32;
        v193 = (v276 + 8);
        sub_1C441C824();
        v198 = v270 == v196 && a2 == v195;
        LODWORD(v257) = v198;
        v264 = v265 + 8;
        v107 = MEMORY[0x1E69E7CC0];
        v199 = v262;
        v258 = v24;
        v279 = v193;
        while (1)
        {
          if (v192 >= *(v194 + 16))
          {
            goto LABEL_156;
          }

          v274 = v192;
          sub_1C442E860(v268 + 40 * v192, &v289);
          sub_1C442C574(&v289, v291);
          v200 = sub_1C4EFF7D8();
          v202 = v201;

          v203 = HIBYTE(v202) & 0xF;
          if ((v202 & 0x2000000000000000) == 0)
          {
            v203 = v200 & 0xFFFFFFFFFFFFLL;
          }

          if (v203)
          {
            break;
          }

LABEL_141:
          v217 = v274;
LABEL_142:
          v192 = v217 + 1;
          sub_1C440962C(&v289);
          v194 = v259;
          if (v192 == v272)
          {
LABEL_65:

            return v107;
          }
        }

        v278 = v107;
        v204 = v292;
        sub_1C442C574(&v289, v291);
        sub_1C440D138(&v296);
        sub_1C4EFF7F8();
        v205 = sub_1C4EFEB68();
        v207 = v206;
        i = *v193;
        i(v204, v16);
        v284 = v205;
        v285 = v207;
        sub_1C43FFECC();
        v208 = sub_1C4415EA8();
        sub_1C44058F8();
        LOBYTE(v205) = sub_1C4404C94();

        if (v205)
        {
          goto LABEL_140;
        }

        sub_1C442C574(&v289, v291);
        v284 = sub_1C4EFF7D8();
        v285 = v209;
        sub_1C43FFECC();
        sub_1C44058F8();
        v210 = sub_1C4404C94();

        if (v210)
        {
          goto LABEL_140;
        }

        v267 = v208;
        if (v261 & 1) != 0 || (sub_1C44118F8(), (sub_1C442FBF4()))
        {
          v211 = *(v271 + v263);
          v212 = v292;
          sub_1C442C574(&v289, v291);
          sub_1C440D138(&v288);
          sub_1C4EFF7E8();
          GraphStore.loadGraphTriples(subject:)();
          sub_1C4402C08(&v293);
          v213(v212, v281);
          sub_1C48116F8();
          v215 = v214;
          v216 = i;
        }

        else
        {
          v217 = v274;
          v216 = i;
          if ((v257 & 1) == 0)
          {
            sub_1C44118F8();
            sub_1C4434E98();
            sub_1C442B980();
            v251 = sub_1C4F02938();
            v215 = MEMORY[0x1E69E7CC0];
            if ((v251 & 1) == 0)
            {
              goto LABEL_120;
            }
          }

          v252 = *(v271 + v263);
          v253 = v292;
          sub_1C442C574(&v289, v291);
          sub_1C440D138(&v288);
          sub_1C4EFF7E8();
          sub_1C486EA34(v253);
          sub_1C4402C08(&v293);
          v254(v253, v281);
          sub_1C4811820();
          v215 = v255;
        }

        v217 = v274;
LABEL_120:
        v276 = *(v215 + 16);
        if (v276)
        {
          v218 = 0;
          v277 = v215;
          v219 = v215 + 32;
          do
          {
            if (v218 >= *(v277 + 16))
            {
              goto LABEL_155;
            }

            sub_1C442E860(v219, &v284);
            sub_1C442C574(&v289, v291);
            sub_1C4404C88();
            sub_1C4EFF7F8();
            sub_1C442C574(&v284, v286);
            sub_1C4404C88();
            sub_1C4EFF7F8();
            sub_1C44191F8();
            sub_1C463B224(&off_1EDDFCCA8, v220);
            sub_1C4F01578();
            sub_1C4F01578();
            if (v287 == v282 && v288 == v283)
            {
              v224 = v279;
              v216(v199, v16);
              v193 = v224;
              v216(v24, v16);
            }

            else
            {
              v222 = v24;
              v24 = sub_1C4F02938();
              v223 = v279;
              i(v199, v16);
              v193 = v223;
              v216 = i;
              i(v222, v16);

              if (v24)
              {
                sub_1C4404138();
              }

              else
              {
                if (*(v278 + 2) == v275)
                {

                  sub_1C440962C(&v284);
                  v16 = v294;
                  v107 = v278;
                  sub_1C4404138();
                  goto LABEL_141;
                }

                sub_1C442C574(&v284, v286);
                v225 = v273;
                sub_1C4404C88();
                sub_1C4EFF7F8();
                v226 = sub_1C4EFEB68();
                v228 = v227;
                v24 = v294;
                v229 = i;
                i(v225, v294);
                v287 = v226;
                v288 = v228;
                v282 = 39;
                v283 = 0xE100000000000000;
                LOBYTE(v226) = sub_1C4F02048();

                if (v226)
                {
                  v199 = v262;
                  sub_1C4404138();
                  v216 = v229;
                }

                else
                {
                  v287 = 678458992;
                  v288 = 0xE400000000000000;
                  sub_1C442C574(&v289, v291);
                  sub_1C4404C88();
                  sub_1C4EFF7F8();
                  sub_1C44191F8();
                  v265 = sub_1C463B224(&qword_1EC0BA1F0, v230);
                  v231 = sub_1C4F02858();
                  MEMORY[0x1C6940010](v231);

                  v229(v225, v24);
                  MEMORY[0x1C6940010](2564140, 0xE300000000000000);
                  sub_1C442C574(&v289, v291);
                  v232 = v260;
                  sub_1C4404C88();
                  sub_1C4EFF7E8();
                  sub_1C440681C();
                  sub_1C463B224(&qword_1EDDFE810, v233);
                  v234 = v281;
                  v235 = sub_1C4F02858();
                  MEMORY[0x1C6940010](v235);

                  sub_1C4402C08(&v293);
                  v236(v232, v234);
                  MEMORY[0x1C6940010](0x7865646E69202C27, 0xED00003D65707954);
                  v237 = v270;
                  v238 = v269;
                  MEMORY[0x1C6940010](v270, v269);
                  MEMORY[0x1C6940010](0x287465672E29, 0xE600000000000000);
                  sub_1C442C574(&v284, v286);
                  sub_1C4404C88();
                  sub_1C4EFF7F8();
                  v239 = sub_1C4F02858();
                  MEMORY[0x1C6940010](v239);

                  v240 = v225;
                  v241 = i;
                  i(v240, v24);
                  MEMORY[0x1C6940010](0x547865646E69202CLL, 0xEC0000003D657079);
                  MEMORY[0x1C6940010](v237, v238);
                  MEMORY[0x1C6940010](41, 0xE100000000000000);
                  v242 = v287;
                  v243 = v288;
                  v216 = v241;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v248 = *(v278 + 2);
                    sub_1C43FCEC0();
                    sub_1C443D664();
                    v278 = v249;
                  }

                  v245 = *(v278 + 2);
                  v244 = *(v278 + 3);
                  v199 = v262;
                  if (v245 >= v244 >> 1)
                  {
                    sub_1C43FFD98(v244);
                    sub_1C443D664();
                    v278 = v250;
                  }

                  v246 = v278;
                  *(v278 + 2) = v245 + 1;
                  v247 = (v246 + 16 * v245);
                  v247[4] = v242;
                  v247[5] = v243;
                  sub_1C4404138();
                  v193 = v279;
                }
              }
            }

            ++v218;
            sub_1C440962C(&v284);
            v219 += 40;
            v16 = v294;
          }

          while (v276 != v218);

LABEL_140:
          v107 = v278;
          goto LABEL_141;
        }

        v107 = v278;
        goto LABEL_142;
      }
    }

    else
    {
LABEL_150:
      sub_1C440F3C0();
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
  sub_1C440681C();
  sub_1C463B224(v52, v53);
  v54 = sub_1C4F00F28();
  v287 = v54;
  v55 = sub_1C440F3C0();
  v56 = *(v55 + 16);
  if (!v56)
  {

LABEL_37:
    v100 = v54 + 64;
    v99 = *(v54 + 64);
    v101 = *(v54 + 32);
    sub_1C43FEC90();
    v104 = v103 & v102;
    v257 = (v105 + 63) >> 6;
    v258 = (v265 + 16);
    v266 = v265 + 32;
    v273 = v276 + 16;
    v272 = v276 + 32;
    v271 = (v276 + 8);
    *&v261 = v265 + 8;
    v259 = v54;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v106 = 0;
    v107 = MEMORY[0x1E69E7CC0];
    v108 = v264;
    v262 = v54 + 64;
    if (!v104)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v268 = v106;
      v109 = v106;
LABEL_43:
      v267 = (v104 - 1) & v104;
      v110 = __clz(__rbit64(v104)) | (v109 << 6);
      v111 = v259;
      v112 = v265;
      v113 = v260;
      (*(v265 + 16))(v260, *(v259 + 48) + *(v265 + 72) * v110, v35);
      v104 = *(*(v111 + 56) + 8 * v110);
      v114 = sub_1C456902C(&unk_1EC0BA208, &unk_1C4F13B80);
      v115 = *(v114 + 48);
      (*(v112 + 32))(v108, v113, v35);
      *(v108 + v115) = v104;
      sub_1C440BAA8(v108, 0, 1, v114);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_44:
      v116 = v263;
      sub_1C463B26C(v108, v263);
      sub_1C456902C(&unk_1EC0BA208, &unk_1C4F13B80);
      v117 = sub_1C4406834();
      if (sub_1C44157D4(v117, 1, v104) == 1)
      {

        goto LABEL_65;
      }

      v118 = *(v116 + *(v104 + 48));
      sub_1C4402C08(&v294);
      v119(v277, v116, v35);
      v120 = 0;
      v122 = v118 + 56;
      v121 = *(v118 + 56);
      v278 = v118;
      v123 = *(v118 + 32);
      sub_1C43FEC90();
      v126 = v125 & v124;
      v128 = (v127 + 63) >> 6;
      if ((v125 & v124) == 0)
      {
        break;
      }

      while (1)
      {
        v129 = v107;
        v130 = v294;
LABEL_52:
        v132 = v276;
        v133 = v274;
        (*(v276 + 16))(v274, *(v278 + 6) + *(v276 + 72) * (__clz(__rbit64(v126)) | (v120 << 6)), v130);
        v134 = i;
        (*(v132 + 32))(i, v133, v130);
        if (*(v129 + 2) == v275)
        {
          break;
        }

        v289 = 0x2728746567;
        v290 = 0xE500000000000000;
        sub_1C440681C();
        sub_1C463B224(&qword_1EDDFE810, v135);
        v136 = sub_1C4F02858();
        MEMORY[0x1C6940010](v136);

        MEMORY[0x1C6940010](11303, 0xE200000000000000);
        sub_1C44191F8();
        sub_1C463B224(&qword_1EC0BA1F0, v137);
        v138 = sub_1C4F02858();
        MEMORY[0x1C6940010](v138);

        MEMORY[0x1C6940010](0x79547865646E692CLL, 0xEB000000003D6570);
        v139 = sub_1C44118F8();
        MEMORY[0x1C6940010](v139);
        MEMORY[0x1C6940010](41, 0xE100000000000000);
        v140 = v290;
        v279 = v289;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = *(v129 + 2);
          sub_1C43FCEC0();
          sub_1C443D664();
          v129 = v147;
        }

        v142 = *(v129 + 2);
        v141 = *(v129 + 3);
        v143 = v129;
        if (v142 >= v141 >> 1)
        {
          sub_1C43FFD98(v141);
          sub_1C443D664();
          v143 = v148;
        }

        v126 &= v126 - 1;
        sub_1C4402C08(&v295);
        v144();
        *(v143 + 2) = v142 + 1;
        v145 = (v143 + 16 * v142);
        v107 = v143;
        v145[4] = v279;
        v145[5] = v140;
        v35 = v281;
        if (!v126)
        {
          goto LABEL_47;
        }
      }

      sub_1C4402C08(&v295);
      v151(v134, v130);
      sub_1C4402C08(&v289);
      v35 = v281;
      v152(v277, v281);
      v108 = v264;
      v107 = v129;
LABEL_60:
      v100 = v262;
      v106 = v268;
      v104 = v267;
      if (!v267)
      {
LABEL_39:
        while (1)
        {
          v109 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            break;
          }

          if (v109 >= v257)
          {
            v268 = v106;
            v150 = sub_1C456902C(&unk_1EC0BA208, &unk_1C4F13B80);
            sub_1C440BAA8(v108, 1, 1, v150);
            v267 = 0;
            goto LABEL_44;
          }

          v104 = *(v100 + 8 * v109);
          ++v106;
          if (v104)
          {
            v268 = v109;
            goto LABEL_43;
          }
        }

        __break(1u);
        goto LABEL_150;
      }
    }

LABEL_47:
    v130 = v294;
    while (1)
    {
      v131 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        break;
      }

      if (v131 >= v128)
      {
        sub_1C4402C08(&v289);
        v149(v277, v35);

        v108 = v264;
        goto LABEL_60;
      }

      v126 = *(v122 + 8 * v131);
      ++v120;
      if (v126)
      {
        v129 = v107;
        v120 = v131;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_95:
    sub_1C440F3C0();

    sub_1C440962C(&v289);
    return v107;
  }

  v57 = v55 + 32;
  v58 = (v265 + 8);
  v266 = v276 + 16;
  v262 = v276 + 8;
  v256[1] = v265 + 16;
  v261 = xmmword_1C4F0D130;
  v59 = v268;
  v60 = v272;
  v271 = (v265 + 8);
  while (1)
  {
    sub_1C442E860(v57, &v289);
    sub_1C4412D90(&v289, v291);
    sub_1C4406834();
    sub_1C4EFF7E8();
    v61 = v287;
    if (*(v287 + 16))
    {
      sub_1C44E3664();
      if (v63)
      {
        v64 = *(*(v61 + 56) + 8 * v62);
        v65 = *v58;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v278 = v65;
        v65(v60, v35);

        sub_1C4412D90(&v289, v291);
        sub_1C4406834();
        sub_1C4EFF7E8();
        v66 = sub_1C4B5A788();
        if (*v67)
        {
          v258 = v66;
          v68 = sub_1C456902C(&unk_1EC0BA210, &unk_1C4F13B88);
          v69 = *(v68 + 48);
          sub_1C4412D90(&v289, v291);
          sub_1C4EFF7F8();
          v70 = v257;
          v60 = v272;
          sub_1C44CB508();
          v72 = v71;
          v258(&v284, 0);
          v73 = v70;
          v58 = v271;
          v278(v59, v281);
          *v73 = v72 & 1;
          v74 = v73;
          v75 = 0;
          v76 = v68;
          v35 = v281;
        }

        else
        {
          (v66)(&v284, 0);
          v278(v59, v35);
          v76 = sub_1C456902C(&unk_1EC0BA210, &unk_1C4F13B88);
          v73 = v257;
          v74 = v257;
          v75 = 1;
        }

        sub_1C440BAA8(v74, v75, 1, v76);
        sub_1C463B2DC(v73);
        v16 = v294;
        goto LABEL_34;
      }
    }

    v278 = v56;
    v77 = *v58;
    (*v58)(v60, v35);
    sub_1C4412D90(&v289, v291);
    sub_1C4406834();
    sub_1C4EFF7E8();
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    v78 = v276;
    v79 = *(v276 + 72);
    v80 = (*(v276 + 80) + 32) & ~*(v276 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v261;
    sub_1C4412D90(&v289, v291);
    sub_1C4EFF7F8();
    sub_1C44191F8();
    v83 = sub_1C463B224(&qword_1EDDFCCB8, v82);
    v284 = MEMORY[0x1C69407C0](1, v16, v83);
    (*(v78 + 16))(v267, v81 + v80, v16);
    v84 = v273;
    sub_1C44CB508();
    (*(v78 + 8))(v84, v16);
    swift_setDeallocating();
    sub_1C49E1540();
    v85 = v284;
    v86 = v287;
    swift_isUniquelyReferenced_nonNull_native();
    v284 = v86;
    sub_1C44E3664();
    if (__OFADD__(*(v86 + 16), (v88 & 1) == 0))
    {
      break;
    }

    v89 = v87;
    v90 = v88;
    sub_1C456902C(&qword_1EC0BA200, &qword_1C4F13B78);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      v35 = v281;
      v59 = v268;
      v58 = v271;
      if ((v90 & 1) != (v92 & 1))
      {
        goto LABEL_157;
      }

      v89 = v91;
    }

    else
    {
      v35 = v281;
      v59 = v268;
      v58 = v271;
    }

    v93 = v284;
    if (v90)
    {
      v94 = *(v284 + 56);
      v95 = *(v94 + 8 * v89);
      *(v94 + 8 * v89) = v85;
    }

    else
    {
      *(v284 + 8 * (v89 >> 6) + 64) |= 1 << v89;
      (*(v265 + 16))(v93[6] + *(v265 + 72) * v89, v279, v35);
      *(v93[7] + 8 * v89) = v85;
      v96 = v93[2];
      v97 = __OFADD__(v96, 1);
      v98 = v96 + 1;
      if (v97)
      {
        goto LABEL_153;
      }

      v93[2] = v98;
    }

    v77(v279, v35);
    v287 = v93;
    v16 = v294;
    v60 = v272;
    v56 = v278;
LABEL_34:
    sub_1C440962C(&v289);
    v57 += 40;
    v56 = (v56 - 1);
    if (!v56)
    {
      sub_1C440F3C0();

      v54 = v287;
      goto LABEL_37;
    }
  }

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
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C463ACD4()
{
  v1 = v0;
  v38 = sub_1C4EFF158();
  v2 = sub_1C43FCDF8(v38);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4EFDC08();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = 7628135;
  v39 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 7370352;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 64) = 1651339107;
  *(inited + 72) = 0xE400000000000000;
  v20 = swift_initStackObject();
  v21 = 0;
  *(v20 + 16) = xmmword_1C4F0D130;
  *(v20 + 32) = 0xD000000000000010;
  *(v20 + 40) = 0x80000001C4F8EA10;
  v40 = v20;
  v37 = OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_knosisServer;
  v22 = (v4 + 8);
  v23 = (v13 + 8);
  while (1)
  {
    v42 = v21;
    v24 = (v39 + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = *(v40 + 32);
    v28 = *(v40 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4639154(v27, v28, v25, v26, 2000);
    if (v1)
    {
      break;
    }

    v30 = v29;

    v43 = v30;
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = *(v41 + v37);
      v33 = (v43 + 40);
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF148();
        sub_1C4EFDC18();
        (*v22)(v9, v38);
        (*v23)(v18, v10);
        v33 += 2;
        --v31;
      }

      while (v31);
    }

    v21 = v42 + 1;

    v1 = 0;
    if (v42 == 2)
    {
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_1C44DEE40();

LABEL_9:
  swift_setDeallocating();
  return sub_1C44DEE40();
}

uint64_t IntelligencePlatformBenchmark.deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_config);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_graphStore);

  return v0;
}

uint64_t IntelligencePlatformBenchmark.__deallocating_deinit()
{
  IntelligencePlatformBenchmark.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntelligencePlatformBenchmark()
{
  result = qword_1EC0BA1D0;
  if (!qword_1EC0BA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C463B138()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C463B224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C463B26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA1E0, &qword_1C4F13B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C463B2DC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BA1E8, &unk_1C4F13B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C463B380(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_weakInit();
  v8 = *v1;
  v9 = *v5;
  sub_1C4406840();
  v11 = *((v6 & v4) + 0x58);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v1[*(v10 + 104)], a1, v11);
  swift_weakAssign();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a1, v11);
  return v13;
}

uint64_t sub_1C463B4B4(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = type metadata accessor for BiomeCombinePublisher.BPSCombineSubscription();
  v7 = sub_1C463B5E0(a1);
  sub_1C4419210();
  v9 = *(v8 + 112);
  swift_weakAssign();
  sub_1C4419210();
  v11 = *(v10 + 104);
  v16[3] = v6;
  v16[4] = swift_getWitnessTable();
  v16[0] = v7;
  v12 = *((v4 & v3) + 0x58);
  v13 = *((v4 & v3) + 0x60);
  v14 = a1;

  sub_1C4F00B18();

  return sub_1C440962C(v16);
}

uint64_t sub_1C463B5E0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1C463B614(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C463B4B4(v4);
}

uint64_t sub_1C463B67C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v1;
  sub_1C442B870(a1, v21);
  v7 = *((v5 & v4) + 0x50);
  if (swift_dynamicCast())
  {
    v2 = v20;
    v8 = *v1;
    v9 = *v3;
    sub_1C4406840();
    v11 = *(v10 + 104);
    v21[0] = v20;
    v12 = *(v6 + 88);
    v13 = *(v6 + 96);
    v14 = sub_1C4F00B28();
    sub_1C4F00B88();
    if (sub_1C4F00B68())
    {
      v15 = MEMORY[0x1E698F0A8];
LABEL_6:
      v16 = *v15;
LABEL_10:

      return v16;
    }

    sub_1C4F00B78();
    if (sub_1C4F00B68())
    {
      v15 = MEMORY[0x1E698F0A0];
      goto LABEL_6;
    }

    sub_1C4F00B88();
    if (sub_1C4F00B68())
    {
      __break(1u);
    }

    else if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = BPSDemandMax();
      goto LABEL_10;
    }

    __break(1u);
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4F8EAD0);
  sub_1C4409678(v2, v2[3]);
  swift_getDynamicType();
  sub_1C456902C(&unk_1EC0BA400, &qword_1C4F13D58);
  v18 = sub_1C4F01198();
  MEMORY[0x1C6940010](v18);

  MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8EAF0);
  swift_getMetatypeMetadata();
  v19 = sub_1C4F01198();
  MEMORY[0x1C6940010](v19);

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C463B8EC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1C4F02078();
  swift_unknownObjectRelease();
  v3 = sub_1C463B67C(v5);

  sub_1C440962C(v5);
  return v3;
}

void sub_1C463B958(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if ([a1 state] != 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = [a1 error];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
LABEL_5:
    v8 = *v1;
    v9 = *v3;
    sub_1C4406840();
    v11 = *(v10 + 104);
    v12 = *(v4 + 88);
    v13 = *(v4 + 96);
    sub_1C4F00B08();

    return;
  }

  __break(1u);
}

void sub_1C463BA40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C463B958(v4);
}

uint64_t sub_1C463BAA8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1C4406840();
  v4 = *(v3 + 112);
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 16) cancel];
  }

  return result;
}

void sub_1C463BB34(void *a1)
{
  v1 = a1;
  sub_1C463BAA8();
}

uint64_t sub_1C463BBBC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  v3 = &a1[*((*v2 & *a1) + 0x70)];

  return swift_weakDestroy();
}

uint64_t sub_1C463BC70(uint64_t a1)
{
  sub_1C4F00B88();
  if (sub_1C4F00B68())
  {
    v3 = MEMORY[0x1E698F0A8];
  }

  else
  {
    sub_1C4F00B78();
    if ((sub_1C4F00B68() & 1) == 0)
    {
      sub_1C4F00B88();
      result = sub_1C4F00B68();
      if (result)
      {
        __break(1u);
      }

      else if ((a1 & 0x8000000000000000) == 0)
      {
        v4 = BPSDemandMax();
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }

    v3 = MEMORY[0x1E698F0A0];
  }

  v4 = *v3;
LABEL_9:
  v6 = *(v1 + 16);

  return [v6 requestDemand_];
}

uint64_t sub_1C463BD34()
{
  sub_1C463BD14();

  return swift_deallocClassInstance();
}

void BiomeCombinePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v12 = *(v11 + 16);
  type metadata accessor for BiomeCombinePublisher.BPSCombineSubscriber();
  (*(v6 + 16))(v9, a1, a3);
  v13 = sub_1C463B34C(v9);
  [v10 subscribe_];
}

uint64_t sub_1C463BEF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C463BF4C(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C463C080(unsigned int a1)
{
  if (a1 > 3)
  {
    return sub_1C463C108();
  }

  v2 = a1;
  if (a1 > 3uLL)
  {
    v2 = 0;
  }

  return ((&loc_1C463C0B8 + funcs_1C463C0C0[v2]))();
}

uint64_t sub_1C463C1B4(int a1)
{
  v1 = a1 - 1;
  result = 0x6D6F74737543;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x746C7561666544;
      break;
    case 2:
      result = 0x7065656C53;
      break;
    case 3:
      v3 = 1986622020;
      goto LABEL_8;
    case 4:
      result = 0x6573696372657845;
      break;
    case 5:
      result = sub_1C43FFEE0();
      break;
    case 6:
      result = sub_1C4412DAC();
      break;
    case 7:
      v3 = 1684104530;
LABEL_8:
      result = v3 | 0x676E6900000000;
      break;
    case 8:
      result = 0x676E696D6147;
      break;
    case 9:
      result = sub_1C4431FE8();
      break;
    default:
      result = sub_1C440DF58();
      break;
  }

  return result;
}

unint64_t sub_1C463C2B8()
{
  sub_1C4419224();
  v3 = v3 && v2 == 0xE700000000000000;
  if (!v3 && (sub_1C440684C() & 1) == 0)
  {
    v7 = v1 == sub_1C440A758() && v0 == v6;
    if (v7 || (sub_1C43FEC00() & 1) != 0)
    {

      sub_1C4402D04();
      return sub_1C441F570(v4);
    }

    v9 = v1 == sub_1C441190C() && v0 == v8;
    if (v9 || (sub_1C43FEC00() & 1) != 0)
    {

      sub_1C43FD288();
      return sub_1C441F570(v4);
    }

    if (v1 != 0x73736572646441 || v0 != 0xE700000000000000)
    {
      sub_1C440684C();
      sub_1C440F210();
      sub_1C4416DEC();
      return sub_1C441F570(v4);
    }
  }

  v4 = 0;
  return sub_1C441F570(v4);
}

unint64_t sub_1C463C3A4()
{
  sub_1C4419224();
  v3 = v3 && v2 == 0xE700000000000000;
  if (!v3 && (sub_1C440684C() & 1) == 0)
  {
    v6 = v1 == 1701670728 && v0 == 0xE400000000000000;
    if (v6 || (sub_1C43FEC00() & 1) != 0)
    {

      sub_1C4402D04();
      return sub_1C441F570(v4);
    }

    v7 = v1 == 1802661719 && v0 == 0xE400000000000000;
    if (v7 || (sub_1C43FEC00() & 1) != 0)
    {

      sub_1C43FD288();
      return sub_1C441F570(v4);
    }

    v8 = v1 == 0x6C6F6F686353 && v0 == 0xE600000000000000;
    if (!v8 && (sub_1C43FEC00() & 1) == 0 && (v1 != 7174471 || v0 != 0xE300000000000000))
    {
      sub_1C43FEC00();
      sub_1C440F210();
      sub_1C4416DEC();
      return sub_1C441F570(v4);
    }
  }

  v4 = 0;
  return sub_1C441F570(v4);
}

unint64_t sub_1C463C500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737543 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C43FEC00() & 1) != 0)
  {

    sub_1C4402D04();
  }

  else
  {
    v7 = a1 == 0x746C7561666544 && a2 == 0xE700000000000000;
    if (v7 || (sub_1C440684C() & 1) != 0)
    {

      sub_1C43FD288();
    }

    else
    {
      v8 = a1 == 0x7065656C53 && a2 == 0xE500000000000000;
      if (v8 || (sub_1C43FEC00() & 1) != 0 || (a1 == 0x676E6976697244 ? (v9 = a2 == 0xE700000000000000) : (v9 = 0), v9 || (sub_1C440684C() & 1) != 0 || (a1 == 0x6573696372657845 ? (v10 = a2 == 0xE800000000000000) : (v10 = 0), v10 || (sub_1C43FEC00() & 1) != 0 || (a1 == 1802661719 ? (v11 = a2 == 0xE400000000000000) : (v11 = 0), v11 || (sub_1C43FEC00() & 1) != 0 || (a1 == sub_1C4412DAC() ? (v13 = a2 == v12) : (v13 = 0), v13 || (sub_1C43FEC00() & 1) != 0 || (a1 == 0x676E6964616552 ? (v14 = a2 == 0xE700000000000000) : (v14 = 0), v14 || (sub_1C440684C() & 1) != 0 || (a1 == 0x676E696D6147 ? (v15 = a2 == 0xE600000000000000) : (v15 = 0), v15 || (sub_1C43FEC00() & 1) != 0 || (a1 == sub_1C4431FE8() ? (v17 = a2 == v16) : (v17 = 0), v17))))))))
      {

        v5 = 0;
      }

      else
      {
        sub_1C43FEC00();
        sub_1C440F210();
        sub_1C4416DEC();
      }
    }
  }

  return sub_1C441F570(v5);
}

unint64_t sub_1C463C774()
{
  sub_1C4419224();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (sub_1C440684C() & 1) != 0)
  {

    v4 = 0;
  }

  else
  {
    v6 = v1 == 4346709 && v0 == 0xE300000000000000;
    if (v6 || (sub_1C43FEC00() & 1) != 0)
    {

      sub_1C4402D04();
    }

    else if (v1 == 1766222167 && v0 == 0xE400000000000000)
    {

      sub_1C43FD288();
    }

    else
    {
      sub_1C43FEC00();
      sub_1C440F210();
      sub_1C4416DEC();
    }
  }

  return sub_1C441F570(v4);
}

uint64_t sub_1C463C84C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C463C8A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C463C9DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

id sub_1C463CBF8(uint64_t a1, id a2)
{
  v2 = [a2 publisherWithOptions_];

  return v2;
}

void sub_1C463CC40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a5 + 16);
  v11 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(AssociatedConformanceWitness + 8))(a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    v15 = objc_autoreleasePoolPush();
    sub_1C463CDA0(a1, a2, v17, a3, a4, v12, v11, &v18, a6);
    objc_autoreleasePoolPop(v15);
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v16 = a3;
    *(v16 + 8) = a4;
    *(v16 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C463CDA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v70 = a8;
  v84 = a7;
  v81 = a5;
  v76 = a3;
  v77 = a4;
  v73 = a1;
  v74 = a2;
  v69 = a9;
  v68 = sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  v67 = *(v68 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v65 - v15;
  v79 = type metadata accessor for BiomeInteractionEventSourceAdapter();
  v85 = *(v79 - 8);
  v80 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v65 - v16;
  v17 = sub_1C4EF9CD8();
  v75 = *(v17 - 8);
  v18 = v75;
  v19 = *(v75 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v87 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v65 - v21;
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v65 - v27;
  v29 = *(v18 + 16);
  v29(&v65 - v27, a1, v17);
  sub_1C440BAA8(v28, 0, 1, v17);
  v29(v26, a2, v17);
  sub_1C440BAA8(v26, 0, 1, v17);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v26, 0, 0, 0);
  v32 = *(v84 + 24);
  v33 = v76;
  v34 = a6;
  v71 = a6;
  v35 = v84;
  v36 = v32(v31, a6);

  v37 = swift_allocObject();
  v37[2] = v34;
  v37[3] = v35;
  v38 = v81;
  v37[4] = v77;
  v37[5] = v38;
  v92 = sub_1C463DFFC;
  v93 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v72 = &v90;
  v90 = sub_1C463D688;
  v91 = &unk_1F43E5798;
  v39 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v81 = v36;
  v77 = [v36 mapWithTransform_];
  _Block_release(v39);
  v29(v86, v73, v17);
  v40 = v85;
  v42 = v78;
  v41 = v79;
  (*(v85 + 16))(v78, v33, v79);
  v43 = v17;
  v29(v87, v74, v17);
  v44 = v75;
  v45 = *(v75 + 80);
  v46 = (v45 + 32) & ~v45;
  v47 = (v19 + *(v40 + 80) + v46) & ~*(v40 + 80);
  v48 = (v80 + v45 + v47) & ~v45;
  v49 = swift_allocObject();
  v50 = v84;
  *(v49 + 16) = v71;
  *(v49 + 24) = v50;
  v51 = *(v44 + 32);
  v51(v49 + v46, v86, v43);
  (*(v85 + 32))(v49 + v47, v42, v41);
  v52 = v82;
  v51(v49 + v48, v87, v43);
  v92 = sub_1C463E008;
  v93 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1C462BCF4;
  v91 = &unk_1F43E57E8;
  v53 = _Block_copy(&aBlock);

  v54 = v77;
  v55 = [v77 filterWithIsIncluded_];
  _Block_release(v53);

  type metadata accessor for InteractionEvent(0);
  v56 = v55;
  v57 = v83;
  sub_1C4EFFC38();
  if (v57)
  {

    *v70 = v57;
  }

  else
  {

    v59 = v67 + 32;
    v58 = *(v67 + 32);
    v60 = v66;
    v61 = v68;
    v58(v66, v52, v68);
    v62 = (*(v59 + 48) + 16) & ~*(v59 + 48);
    v63 = swift_allocObject();
    v58((v63 + v62), v60, v61);
    v64 = v69;
    *v69 = sub_1C463E11C;
    v64[1] = v63;
  }
}

uint64_t sub_1C463D4AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v19[1] = v12;
    [a1 timestamp];
    sub_1C4EF9AC8();
    v13 = sub_1C4EF9CD8();
    sub_1C440BAA8(v11, 0, 1, v13);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = *(AssociatedConformanceWitness + 16);
    v16 = swift_checkMetadataState();
    v17 = v15(a2, a3, v11, v16, AssociatedConformanceWitness);
    sub_1C44686E4(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  a4[3] = sub_1C456902C(&unk_1EC0BA420, &qword_1C4F13E78);

  *a4 = v17;
  return result;
}

id sub_1C463D688(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(v8);

  sub_1C4409678(v8, v8[3]);
  v6 = sub_1C4F02918();
  sub_1C440962C(v8);

  return v6;
}

uint64_t sub_1C463D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a4;
  v91 = a3;
  v88 = *(a5 - 8);
  isa = v88[8].isa;
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_1C4EF9CD8();
  v10 = *(v92 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v14 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v89 = &v82[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v82[-v17];
  v93 = type metadata accessor for BiomeInteractionEventSourceAdapter();
  v19 = *(v93 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v93);
  v23 = &v82[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v82[-v24];
  type metadata accessor for InteractionEvent(0);
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v86 = v14;
    v28 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
    if (sub_1C4EF9C18())
    {
      v85 = v28;
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v29 = sub_1C4F00978();
      sub_1C442B738(v29, qword_1EDE2DDE0);
      (*(v19 + 16))(v25, v91, v93);
      v30 = *(v10 + 16);
      v90 = v10;
      v31 = v92;
      v86 = v30;
      v30(v18, a2, v92);
      swift_unknownObjectRetain();
      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CD8();
      v91 = a1;
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v32, v33))
      {
        swift_unknownObjectRelease();

        (*(v90 + 8))(v18, v31);
        (*(v19 + 8))(v25, v93);
        return 0;
      }

      v34 = swift_slowAlloc();
      v83 = v33;
      v35 = v34;
      v84 = swift_slowAlloc();
      v94 = v84;
      *v35 = 136315650;
      v36 = v88[2].isa;
      v88 = v32;
      (v36)(v87, v25, a5);
      v37 = sub_1C4F01198();
      v39 = v38;
      (*(v19 + 8))(v25, v93);
      v40 = sub_1C441D828(v37, v39, &v94);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      v41 = v27 + v85;
      v42 = v89;
      v86(v89, v41, v31);
      sub_1C45C2A2C();
      v43 = sub_1C4F02858();
      v45 = v44;
      v46 = *(v90 + 8);
      v46(v42, v31);
      v47 = sub_1C441D828(v43, v45, &v94);

      *(v35 + 14) = v47;
      *(v35 + 22) = 2080;
      v48 = sub_1C4F02858();
      v50 = v49;
      v46(v18, v31);
      v51 = sub_1C441D828(v48, v50, &v94);

      *(v35 + 24) = v51;
      v52 = v88;
      _os_log_impl(&dword_1C43F8000, v88, v83, "BiomeInteractionEventSourceAdapter [events]: Biome unexpectedly emitted %s event on %s, which is earlier than publisher start date %s.", v35, 0x20u);
      v53 = v84;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v53, -1, -1);
      v54 = v35;
    }

    else
    {
      if ((sub_1C4EF9C08() & 1) == 0)
      {
        swift_unknownObjectRelease();
        return 1;
      }

      v85 = v28;
      v55 = v10;
      v56 = a1;
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v57 = sub_1C4F00978();
      sub_1C442B738(v57, qword_1EDE2DDE0);
      (*(v19 + 16))(v23, v91, v93);
      v58 = v92;
      v84 = *(v55 + 16);
      v84(v86, v90, v92);
      swift_unknownObjectRetain();
      v59 = sub_1C4F00968();
      v60 = sub_1C4F01CD8();
      swift_unknownObjectRelease();
      LODWORD(v90) = v60;
      if (!os_log_type_enabled(v59, v60))
      {
        swift_unknownObjectRelease();

        (*(v55 + 8))(v86, v58);
        (*(v19 + 8))(v23, v93);
        return 0;
      }

      v61 = swift_slowAlloc();
      v91 = v56;
      v62 = v61;
      v63 = swift_slowAlloc();
      v94 = v63;
      *v62 = 136315650;
      v64 = v88[2].isa;
      v88 = v59;
      (v64)(v87, v23, a5);
      v65 = sub_1C4F01198();
      v67 = v66;
      (*(v19 + 8))(v23, v93);
      v68 = sub_1C441D828(v65, v67, &v94);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      v69 = v27 + v85;
      v70 = v89;
      v84(v89, v69, v58);
      sub_1C45C2A2C();
      v71 = sub_1C4F02858();
      v73 = v72;
      v74 = *(v55 + 8);
      v74(v70, v58);
      v75 = sub_1C441D828(v71, v73, &v94);

      *(v62 + 14) = v75;
      *(v62 + 22) = 2080;
      v76 = v86;
      v77 = sub_1C4F02858();
      v79 = v78;
      v74(v76, v58);
      v80 = sub_1C441D828(v77, v79, &v94);

      *(v62 + 24) = v80;
      v52 = v88;
      _os_log_impl(&dword_1C43F8000, v88, v90, "BiomeInteractionEventSourceAdapter [events]: Biome unexpectedly emitted %s event on %s, which is later than publisher end date %s.", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v63, -1, -1);
      v54 = v62;
    }

    MEMORY[0x1C6942830](v54, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

unint64_t sub_1C463DFA8()
{
  result = qword_1EC0BA410;
  if (!qword_1EC0BA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BA410);
  }

  return result;
}

uint64_t sub_1C463DFFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1C463D4AC(a1, v2[4], v2[5], a2);
}

uint64_t sub_1C463E008(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v5);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v10 = v8 + *(v9 + 64);
  v11 = type metadata accessor for BiomeInteractionEventSourceAdapter();
  sub_1C43FCF7C(v11);
  v13 = v12;
  v15 = v14;
  v16 = (v10 + *(v13 + 80)) & ~*(v13 + 80);
  v17 = v1 + ((*(v15 + 64) + v7 + v16) & ~v7);

  return sub_1C463D71C(a1, v1 + v8, v1 + v16, v17, v3);
}

uint64_t sub_1C463E11C@<X0>(void *a1@<X8>)
{
  v2 = *(*(sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330) - 8) + 80);

  return sub_1C46F91E0(a1);
}

uint64_t sub_1C463E1A0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames) = 0;
  *(v5 + 16) = v9;
  *(v5 + 32) = v10;
  *(v5 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config);
  v11 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition);
  *v11 = a3;
  v11[1] = a4;
  v11[2] = a5;
  return v5;
}

uint64_t sub_1C463E224()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v5 + 16);
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v1;
  v8[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C463F21C, v8);
}

uint64_t sub_1C463E2B8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition + 16);
    v4 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v2 = sub_1C45A322C(v4);
    v5 = *(v0 + v1);
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C463E330()
{
  v2 = v0;
  v113 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config + 8);
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition + 16);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v93 = v3;
  v104 = v2;
  sub_1C4C02A20(v3, v4, v5, v2);
  v7 = v6;
  v8 = v1;
  v103 = v5;

  v92 = v4;

  v9 = qword_1EDDFECD0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v98 = sub_1C4F00978();
    v95 = sub_1C442B738(v98, qword_1EDE2DF70);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CB8();

    v12 = os_log_type_enabled(v10, v11);
    v99 = v7;
    v89 = v8;
    if (v12)
    {
      v8 = swift_slowAlloc();
      v13 = sub_1C43FFD34();
      v111 = v13;
      *v8 = 136315138;
      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      v14 = sub_1C4F00EE8();
      v16 = sub_1C441D828(v14, v15, &v111);
      v7 = v99;

      *(v8 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, v10, v11, "%s", v8, 0xCu);
      sub_1C440962C(v13);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v17 = v103 + 64;
    v18 = 1 << *(v103 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v103 + 64);
    v21 = (v18 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = 0;
    *&v23 = 136315650;
    v91 = v23;
    *&v23 = 136315394;
    v90 = v23;
    v97 = v17;
    v96 = v21;
    if (v20)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        goto LABEL_31;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  while (1)
  {
    v24 = v22;
LABEL_11:
    v25 = (*(v103 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v20)))));
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v7 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v28 || (v29 = sub_1C445FAA8(v27, v26), (v30 & 1) == 0))
    {

      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1C4F02248();

      v111 = 0x69566C616E676953;
      v112 = 0xEB00000000207765;
      v72 = sub_1C442C590();
      MEMORY[0x1C6940010](v72);
      MEMORY[0x1C6940010](0x727574616546203ALL, 0xEA00000000002065);
      MEMORY[0x1C6940010](v27, v26);

      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F8EB90);
      v73 = v111;
      v74 = v112;
      sub_1C446D0DC();
      swift_allocError();
      *v75 = v73;
      *(v75 + 8) = v74;
      *(v75 + 16) = 3;
      swift_willThrow();

      goto LABEL_31;
    }

    v107 = v27;
    v108 = v26;
    v31 = *(*(v7 + 56) + 8 * v29);
    v32 = v104[2];
    v33 = v104[3];
    v34 = v104[5];
    v106 = v104[4];
    v35 = v104[6];
    v36 = v31;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v100 = objc_autoreleasePoolPush();
    v37 = objc_opt_self();
    v111 = 0;
    v102 = v36;
    v38 = [v37 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:&v111];
    v39 = v111;
    v101 = v33;
    if (!v38)
    {
      break;
    }

    v40 = v32;
    v41 = sub_1C4EF9A68();
    v43 = v42;

    v44 = *(v35 + 16);
    MEMORY[0x1EEE9AC00](v45);
    v87[2] = v106;
    v87[3] = v34;
    v109 = v43;
    v110 = v34;
    v105 = v35;
    v87[4] = v35;
    v87[5] = v40;
    v87[6] = v33;
    v87[7] = v107;
    v46 = v108;
    v87[8] = v108;
    v87[9] = 0;
    v87[10] = 0;
    v87[11] = v41;
    v87[12] = v43;
    v87[13] = 0;
    v88 = 1;
    sub_1C446C37C(sub_1C463F240, v87);
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    sub_1C442B738(v98, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v47 = v41;
    sub_1C44344B8(v41, v109);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CB8();

    v50 = sub_1C43FC034();
    sub_1C4434000(v50, v51);

    if (os_log_type_enabled(v48, v49))
    {
      v52 = sub_1C43FFD34();
      v94 = v49;
      v53 = v46;
      v54 = v52;
      v111 = swift_slowAlloc();
      *v54 = v91;
      *(v54 + 4) = sub_1C441D828(v107, v53, &v111);
      *(v54 + 12) = 2080;
      sub_1C44344B8(v47, v109);
      sub_1C43FC034();
      v55 = sub_1C4EF9988();
      v57 = v56;
      v58 = sub_1C43FC034();
      sub_1C4434000(v58, v59);
      v60 = sub_1C441D828(v55, v57, &v111);

      *(v54 + 14) = v60;
      *(v54 + 22) = 2080;
      *(v54 + 24) = sub_1C441D828(v106, v110, &v111);
      _os_log_impl(&dword_1C43F8000, v48, v94, "FeatureDatabaseTable: Wrote %s with data: %s to db with table name %s", v54, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
      v61 = sub_1C43FC034();
      sub_1C4434000(v61, v62);
    }

    else
    {

      sub_1C4434000(v47, v109);
    }

    v63 = v102;
    v20 &= v20 - 1;
    objc_autoreleasePoolPop(v100);

    v8 = v63;
    v64 = sub_1C4F00968();
    v65 = sub_1C4F01CB8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = sub_1C43FFD34();
      v111 = v68;
      *v66 = v90;
      v69 = sub_1C442C590();
      *(v66 + 4) = sub_1C441D828(v69, v70, v71);
      *(v66 + 12) = 2112;
      *(v66 + 14) = v8;
      *v67 = v8;
      v8 = v8;
      _os_log_impl(&dword_1C43F8000, v64, v65, "SignalView %s: Wrote %@", v66, 0x16u);
      sub_1C45B4B90(v67);
      sub_1C43FBE2C();
      sub_1C440962C(v68);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v22 = v24;
    v7 = v99;
    v17 = v97;
    v21 = v96;
    if (!v20)
    {
      goto LABEL_8;
    }
  }

  v76 = v39;
  v77 = sub_1C4EF97A8();

  swift_willThrow();
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  sub_1C442B738(v98, qword_1EDE2E088);
  v78 = v77;
  v79 = sub_1C4F00968();
  v80 = sub_1C4F01CB8();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = sub_1C43FFD34();
    v111 = v82;
    *v81 = 136315138;
    swift_getErrorValue();
    v83 = sub_1C4F02A38();
    v85 = sub_1C441D828(v83, v84, &v111);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_1C43F8000, v79, v80, "FeatureDatabaseTable: could not archive MLFeatureValue with error: %s", v81, 0xCu);
    sub_1C440962C(v82);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  swift_willThrow();

  objc_autoreleasePoolPop(v100);

LABEL_31:
  v86 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C463ED24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition);
  v3 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_self();
  v7 = sub_1C4F01108();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C463F28C;
  *(v8 + 24) = a1;
  aBlock[4] = sub_1C463F294;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C463F5CC;
  aBlock[3] = &unk_1F43E58B8;
  v9 = _Block_copy(aBlock);

  LOBYTE(v12) = 0;
  v10 = [v6 iterateStream:v7 device:0 account:0 bookmark:0 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v12 body:v9];
  _Block_release(v9);

  objc_autoreleasePoolPop(v5);

  swift_unknownObjectRelease();
  LOBYTE(aBlock[0]) = 1;
  sub_1C4F00BE8();
}

uint64_t sub_1C463EED0(void *a1)
{
  v4[3] = sub_1C4461BB8(0, &qword_1EC0BA448, 0x1E698F280);
  v4[0] = a1;
  v2 = a1;
  sub_1C4F00BF8();
  return sub_1C440962C(v4);
}

void *sub_1C463EF30()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition + 8);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition + 16);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C463EFB0()
{
  sub_1C463EF30();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiomeSignalView()
{
  result = qword_1EC0BA438;
  if (!qword_1EC0BA438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C463F05C()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C463F10C()
{
  sub_1C463E330();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C463F184()
{
  sub_1C463E224();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C463F21C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1C47D4198();
}

uint64_t sub_1C463F29C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ViewConfigVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C463F300(uint64_t a1, uint64_t a2)
{
  v4 = _s10ViewConfigVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BiomeStreamStore.init(stream:bookmark:device:account:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id BiomeStreamStore.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_opt_self();
  v12 = sub_1C4F01108();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v22 = sub_1C463F66C;
  v23 = v13;
  sub_1C4406880();
  sub_1C4419244();
  v20 = v14;
  v21 = &unk_1F43E5908;
  v15 = _Block_copy(aBlock);

  LOBYTE(v18) = 0;
  v16 = [v11 iterateStream:v12 device:v7 account:v9 bookmark:v8 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v18 body:v15];
  _Block_release(v15);

  objc_autoreleasePoolPop(v10);
  return v16;
}

{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_opt_self();
  v12 = sub_1C4F01108();
  v21 = a1;
  v22 = a2;
  sub_1C4406880();
  sub_1C4419244();
  v19 = v13;
  v20 = &unk_1F43E5930;
  v14 = _Block_copy(aBlock);

  LOBYTE(v17) = 0;
  v15 = [v11 iterateStream:v12 device:v7 account:v9 bookmark:v8 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v17 body:v14];
  _Block_release(v14);

  objc_autoreleasePoolPop(v10);
  return v15;
}

void sub_1C463F5CC(uint64_t a1, void *a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a3);
}

uint64_t sub_1C463F66C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void BiomeStreamStore.prune(withReason:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_self();
  v7 = sub_1C4F01108();
  [v6 pruneStream:v7 withReason:a1];

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C463F738()
{
  MEMORY[0x1C69417F0](0);
  sub_1C4F01138();
  sub_1C4F01298();
}

uint64_t sub_1C463F798()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  sub_1C4F01138();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C463F818()
{
  v0 = sub_1C4F023F8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C4F02A08();
  v2 = sub_1C456902C(&qword_1EC0BA460, &qword_1C4F13FB0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1C4EFF0F8();
}

id sub_1C463F908(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1C463F818();
  v7 = &v2[OBJC_IVAR___GDBiomeStreamStoreCache_inner];
  *v7 = v6;
  v7[1] = v8;
  v7[2] = v9;
  v12.receiver = v2;
  v12.super_class = GDBiomeStreamStoreCache;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

void __swiftcall GDBiomeStreamStoreCache.init()(GDBiomeStreamStoreCache *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for GDBiomeStreamStoreCache()
{
  result = qword_1EC0BA458;
  if (!qword_1EC0BA458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BA458);
  }

  return result;
}

id sub_1C463FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4F01108();

  if (a4)
  {
    v8 = sub_1C4F00EC8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_1C463FBF4()
{
  result = qword_1EDDFB0D8;
  if (!qword_1EDDFB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0D8);
  }

  return result;
}

uint64_t Blocker.stateStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for Blocker() + 48));
}

uint64_t Blocker.init(stores:entityClass:source:pipelineType:isPassThroughEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  sub_1C442570C();
  sub_1C4430900(v11, v12);
  v13 = type metadata accessor for Blocker();
  v14 = v13[5];
  v15 = sub_1C4EFD548();
  sub_1C43FCF8C(v15);
  v17 = v16;
  (*(v16 + 16))(a6 + v14, a2, v15);
  v18 = v13[6];
  sub_1C441925C();
  sub_1C4430900(a3, a6 + v19);
  *(a6 + v13[7]) = 0;
  v20 = v13[8];
  sub_1C441D69C();
  sub_1C4430900(a1, a6 + v21);
  v22 = type metadata accessor for PhaseStores();
  v23 = *(a1 + *(v22 + 32));
  sub_1C448177C();
  *(a6 + v13[9]) = v24;
  v25 = sub_1C44829A4(v24, a1);
  sub_1C4411930();
  sub_1C447E868(a3, v26);
  (*(v17 + 8))(a2, v15);
  *(a6 + v13[10]) = v25;
  *(a6 + v13[11]) = v10;
  v27 = *(a1 + *(v22 + 28));

  result = sub_1C44AB11C();
  *(a6 + v13[12]) = v27;
  *(a6 + v13[13]) = a5;
  return result;
}

uint64_t sub_1C463FE54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1C4EFEEF8();
  v7 = sub_1C43FCDF8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440F400();
  v10 = sub_1C4EFD548();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FECFC();
  v16 = *(type metadata accessor for Blocker() + 20);
  sub_1C4EFCEF8();
  sub_1C44189E4();
  sub_1C447CB3C(v17, v18);
  v19 = sub_1C4F010B8();
  (*(v13 + 8))(v4, v10);
  v20 = *(a3(0) + 20);
  if (v19)
  {
    sub_1C4EFE308();
  }

  else
  {
    sub_1C4EFE2E8();
  }

  v21 = sub_1C44DBB50(a1 + v20, v3);
  v22 = sub_1C449F410();
  v23(v22);
  return v21 & 1;
}

void sub_1C464001C()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4433190();
  v7 = type metadata accessor for Source();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4414930();
  sub_1C4440948();
  v11 = type metadata accessor for Deduper();
  sub_1C4429020(v11);
  sub_1C456902C(&qword_1EC0BA558, &qword_1C4F14288);
  v12 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v12);

  sub_1C441DC78();
  v13 = sub_1C44A3BBC(v1[6]);
  MEMORY[0x1C6940010](v13);

  sub_1C44364AC();
  v14 = v1[5];
  sub_1C441925C();
  sub_1C447F6A4(v15);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v16);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v17 = sub_1C441B798();
  v18(v17);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C448D934(*(v0 + v1[8]));
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C464020C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C44A1E40();
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v12 = (a1)(0);
  sub_1C4471CA0(v12);
  sub_1C456902C(a2, a3);
  v13 = sub_1C4485A60();
  MEMORY[0x1C6940010](v13);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  v14 = sub_1C4402CD0();
  sub_1C4430900(v14, v15);
  MEMORY[0x1C6940010](*v4, v4[1]);
  sub_1C4411930();
  sub_1C447E868(v4, v16);
  sub_1C44690B8();
  v17 = v3 + *(a1 + 28);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

uint64_t sub_1C46403A4()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA5D8, &qword_1C4F14330);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  v9 = sub_1C4402CD0();
  sub_1C4430900(v9, v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + *(v1 + 32);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  return sub_1C43FE658();
}

uint64_t sub_1C46404C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C44A1E40();
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v12 = (a1)(0);
  sub_1C4471CA0(v12);
  sub_1C456902C(a2, a3);
  v13 = sub_1C4485A60();
  MEMORY[0x1C6940010](v13);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  v14 = *(a1 + 20);
  sub_1C441925C();
  sub_1C44F090C(v15);
  MEMORY[0x1C6940010](*v4, v4[1]);
  sub_1C4411930();
  sub_1C447E868(v4, v16);
  sub_1C44690B8();
  v17 = v3 + *(a1 + 28);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

void sub_1C46406AC()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4433190();
  v7 = type metadata accessor for Source();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4414930();
  sub_1C4440948();
  v11 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
  sub_1C4429020(v11);
  sub_1C456902C(&qword_1EC0BA5D0, &qword_1C4F40B70);
  v12 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v12);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C4430900(v0, v2);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v13);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v14 = sub_1C441B798();
  v15(v14);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C4640838()
{
  sub_1C44A1E40();
  v2 = type metadata accessor for Source();
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v6 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  sub_1C4471CA0(v6);
  sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
  v7 = sub_1C4485A60();
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v0 + 36));
  sub_1C4475BB0();

  sub_1C44364AC();
  v8 = *(v0 + 24);
  sub_1C441925C();
  sub_1C44F090C(v9);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v10);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

void sub_1C46409AC()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for LifeEventSourceIngestor(0);
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA5C8, &unk_1C4F14320);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  v12 = *(v0 + 24);
  sub_1C441925C();
  sub_1C447F6A4(v13);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v14);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v15 = sub_1C441B798();
  v16(v15);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C4640B2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C44A1E40();
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v12 = (a1)(0);
  sub_1C4471CA0(v12);
  sub_1C456902C(a2, a3);
  v13 = sub_1C4485A60();
  MEMORY[0x1C6940010](v13);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  v14 = *(a1 + 20);
  sub_1C441925C();
  sub_1C44F090C(v15);
  MEMORY[0x1C6940010](*v4, v4[1]);
  sub_1C4411930();
  sub_1C447E868(v4, v16);
  sub_1C44690B8();
  v17 = v3 + *(a1 + 32);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

uint64_t sub_1C4640CF4()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for StandardEntityMapper();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA4B0, &qword_1C4F141D8);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v1 + 24));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  v9 = sub_1C4402CD0();
  sub_1C4430900(v9, v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + *(v1 + 20);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

void sub_1C4640DF4()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for StandardTransformer();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA4D0, &qword_1C4F14200);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  MEMORY[0x1C6940010](0x726F66736E617274, 0xEC000000676E696DLL);
  sub_1C44364AC();
  v12 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v13);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v14);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v15 = sub_1C441B798();
  v16(v15);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C4640FB8()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for DocumentMatcher();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA550, &qword_1C4F14280);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  v12 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v13);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v14);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v15 = sub_1C441B798();
  v16(v15);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C4641118()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for TopicMatcher();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA4C8, &qword_1C4F56BF0);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(v1[8]);
  sub_1C4475BB0();

  sub_1C44364AC();
  v9 = v1[5];
  sub_1C441925C();
  sub_1C44F090C(v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + v1[9];
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

void sub_1C4641240()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4433190();
  v7 = type metadata accessor for Source();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4414930();
  sub_1C4440948();
  v11 = type metadata accessor for EventMatcher();
  sub_1C4429020(v11);
  sub_1C456902C(&qword_1EC0BA548, &qword_1C4F29E20);
  v12 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v12);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C4430900(v0, v2);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v13);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v14 = sub_1C441B798();
  v15(v14);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C46413D4()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v74 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v16 = sub_1C4409ACC(v15, v72);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for HomeMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v73);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v5);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for HomeMatcher);
          v34 = sub_1C44C11FC();
          sub_1C4640B2C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v73);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464CA28(v42);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v75, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C43FECAC();
  v44(v43);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v46)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v47 = sub_1C44CD024();
        sub_1C43FCE50(v47);
        v49 = *(v48 + 16);
        v50 = sub_1C4488550();
        v51(v50);
        v52 = *(v7 + 24);
        v53 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v54);
        v55 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v58 = sub_1C44CD024();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C447F8DC();
        v62(v61);
        sub_1C4428E54();
        v63 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v64);
        sub_1C44A1D14();
        v66 = sub_1C442DD98(v65);
        sub_1C4417F8C(v66);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v67 = sub_1C4405904();
        sub_1C44068A0(v67, xmmword_1C4F0D130);
        sub_1C4430900(v6, v68);
        v69 = sub_1C444FC8C();
        sub_1C449498C(v69);
        swift_setDeallocating();
        sub_1C4495394();
        v57 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v57);
      v70 = sub_1C4404BB0();
      sub_1C441DFEC(v70, v71);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46418CC()
{
  sub_1C43FBD3C();
  v8 = v1;
  v68 = v9;
  v10 = sub_1C43FECE0();
  v11 = type metadata accessor for ConstructionProgressTokens(v10);
  v67 = sub_1C43FCDF8(v11);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBCC4();
  v14 = sub_1C43FECFC();
  v15 = type metadata accessor for ProgressTokens(v14);
  v16 = sub_1C43FCDF8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4416DF8();
  v69 = type metadata accessor for EventMatcher();
  v19 = sub_1C43FBCE0(v69);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v23 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v24 = sub_1C4404C28();
    v8 = sub_1C456902C(v24, v25);
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v66);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v3);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v15 = 136315138;
          v34 = sub_1C4404BB0();
          sub_1C4430900(v34, v35);
          sub_1C447E868(v3, type metadata accessor for EventMatcher);
          sub_1C4641240();
          v36 = sub_1C440CAFC();
          sub_1C447E868(v36, type metadata accessor for EventMatcher);
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v5, v38);
          sub_1C44D44F0();
          *(v15 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v66);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464CE68(v43);
  v3 = v68;
  if (!v70[3])
  {
    sub_1C4420C3C(v70, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v68)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C4402D10();
  v45(v44);
  sub_1C4456268();
  if ((v68 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v8 + *(v69 + 20)))
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        v47 = *(v15 + 24);
        sub_1C441925C();
        sub_1C44806A4(v48);
        sub_1C4426A30(*(v15 + 20));
        *(v6 + v49) = v68 & 1;
        v50 = *(v69 + 24);
        v51 = sub_1C4499584();
        sub_1C4460A18(v51);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v52 = sub_1C4424F7C();
        sub_1C4412DCC(v52, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v53 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v8, v7 + v55);
        sub_1C44A1D14();
        *(v7 + v56) = v57;
        v58 = (v7 + MEMORY[0xE70000000000001C]);
        *v58 = v4;
        v58[1] = v5;
        *(v7 + MEMORY[0xE700000000000020]) = v1;
        *(v7 + MEMORY[0xE700000000000024]) = v68 & 1;
        v59 = *(v69 + 24);
        v60 = sub_1C4499584();
        sub_1C4460A18(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v7, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v53 = v7;
      }

      sub_1C447E868(v53, v54);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4641DC0()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v74 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v16 = sub_1C4409ACC(v15, v72);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for GroupMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v73);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v5);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for GroupMatcher);
          v34 = sub_1C44C11FC();
          sub_1C4640B2C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v73);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464D2B8(v42);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v75, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C43FECAC();
  v44(v43);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v46)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v47 = sub_1C44CD024();
        sub_1C43FCE50(v47);
        v49 = *(v48 + 16);
        v50 = sub_1C4488550();
        v51(v50);
        v52 = *(v7 + 24);
        v53 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v54);
        v55 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v58 = sub_1C44CD024();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C447F8DC();
        v62(v61);
        sub_1C4428E54();
        v63 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v64);
        sub_1C44A1D14();
        v66 = sub_1C442DD98(v65);
        sub_1C4417F8C(v66);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v67 = sub_1C4405904();
        sub_1C44068A0(v67, xmmword_1C4F0D130);
        sub_1C4430900(v6, v68);
        v69 = sub_1C444FC8C();
        sub_1C449498C(v69);
        swift_setDeallocating();
        sub_1C4495394();
        v57 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v57);
      v70 = sub_1C4404BB0();
      sub_1C441DFEC(v70, v71);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46422B8()
{
  sub_1C43FBD3C();
  v12 = sub_1C4435804(v9, v10, v11);
  v77 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v16 = sub_1C4409ACC(v15, v75);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for TopicMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C4656BF8();
  }

  else
  {
    v25 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v6 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v76);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v4);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v6 = 136315138;
          v34 = sub_1C43FE99C();
          sub_1C4430900(v34, v35);
          sub_1C447E868(v4, type metadata accessor for TopicMatcher);
          sub_1C4641118();
          sub_1C4450608();
          v36 = sub_1C447CB90();
          sub_1C441D828(v36, v4, v37);
          sub_1C4404CE0();

          *(v6 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v38, v39, "%s failed to update progress token");
          sub_1C440962C(v7);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C44A3A84();
    objc_autoreleasePoolPop(v76);
  }

  sub_1C4656BA4();
  sub_1C464D6F8(v42);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v78, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C440F3CC();
  v44(v43);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v0 + v5[6]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        v45 = v5[9];
        v46 = sub_1C4EFD548();
        sub_1C43FCE50(v46);
        v48 = *(v47 + 16);
        v49 = sub_1C440EDB0();
        v50(v49);
        sub_1C445AABC(v5[8]);
        v51 = v5[5];
        sub_1C441925C();
        sub_1C44EC814(v52);
        sub_1C44016BC();
        *v53 = v6;
        v53[1] = v8;
        sub_1C4422270();
        sub_1C446277C(v54);
        v55 = type metadata accessor for PhaseStores();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C4461F3C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = sub_1C43FFEF0();
      }

      else
      {
        v59 = v5[9];
        v60 = sub_1C4EFD548();
        sub_1C43FCE50(v60);
        v62 = *(v61 + 16);
        v63 = sub_1C4422A44();
        v64(v63);
        v65 = *(v0 + v5[8]);
        v66 = *(v77 + 24);
        v67 = v5[5];
        sub_1C441925C();
        sub_1C4656CBC(v68);
        v69 = sub_1C442A378();
        sub_1C4460A18(v69);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v70 = sub_1C4405904();
        sub_1C44068A0(v70, xmmword_1C4F0D130);
        sub_1C4430900(v3, v71);
        v72 = sub_1C4461F3C();
        sub_1C449498C(v72);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v57 = v3;
      }

      sub_1C447E868(v57, v58);
      v73 = sub_1C44191B8();
      sub_1C441DFEC(v73, v74);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4642798()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C43FCDF8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for DocumentMatcher();
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    v7 = sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v16 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for DocumentMatcher);
          sub_1C4640FB8();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for DocumentMatcher);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v5, v40);
          sub_1C44D44F0();
          *(v16 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464DB38(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v7 + v20[7]))
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v48 = *(v16 + 24);
        v49 = v20[5];
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C4426A30(*(v16 + 20));
        *(v6 + v51) = v3 & 1;
        v52 = v20[6];
        v53 = sub_1C4499584();
        sub_1C4460A18(v53);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v54 = sub_1C4404CB4();
        sub_1C4412DCC(v54, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v55 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C445C11C();
        v57 = v20[5];
        sub_1C441925C();
        sub_1C445BA70(v58);
        sub_1C43FD294(*(v2 + 5));
        v59 = v20[6];
        v60 = sub_1C4499584();
        sub_1C4460A18(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v55 = v3;
      }

      sub_1C447E868(v55, v56);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4642C50()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v74 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v16 = sub_1C4409ACC(v15, v72);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for SoftwareMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v73);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v5);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for SoftwareMatcher);
          v34 = sub_1C44C11FC();
          sub_1C4640B2C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v73);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464DF88(v42);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v75, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C43FECAC();
  v44(v43);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v46)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v47 = sub_1C44CD024();
        sub_1C43FCE50(v47);
        v49 = *(v48 + 16);
        v50 = sub_1C4488550();
        v51(v50);
        v52 = *(v7 + 24);
        v53 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v54);
        v55 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v58 = sub_1C44CD024();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C447F8DC();
        v62(v61);
        sub_1C4428E54();
        v63 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v64);
        sub_1C44A1D14();
        v66 = sub_1C442DD98(v65);
        sub_1C4417F8C(v66);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v67 = sub_1C4405904();
        sub_1C44068A0(v67, xmmword_1C4F0D130);
        sub_1C4430900(v6, v68);
        v69 = sub_1C444FC8C();
        sub_1C449498C(v69);
        swift_setDeallocating();
        sub_1C4495394();
        v57 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v57);
      v70 = sub_1C4404BB0();
      sub_1C441DFEC(v70, v71);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643148()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v74 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v16 = sub_1C4409ACC(v15, v72);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for WalletOrderMatcher();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v73);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v5);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for WalletOrderMatcher);
          v34 = sub_1C44C11FC();
          sub_1C4640B2C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v73);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464E3C8(v42);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v75, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C43FECAC();
  v44(v43);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v46)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v47 = sub_1C44CD024();
        sub_1C43FCE50(v47);
        v49 = *(v48 + 16);
        v50 = sub_1C4488550();
        v51(v50);
        v52 = *(v7 + 24);
        v53 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v54);
        v55 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v58 = sub_1C44CD024();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C447F8DC();
        v62(v61);
        sub_1C4428E54();
        v63 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v64);
        sub_1C44A1D14();
        v66 = sub_1C442DD98(v65);
        sub_1C4417F8C(v66);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v67 = sub_1C4405904();
        sub_1C44068A0(v67, xmmword_1C4F0D130);
        sub_1C4430900(v6, v68);
        v69 = sub_1C444FC8C();
        sub_1C449498C(v69);
        swift_setDeallocating();
        sub_1C4495394();
        v57 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v57);
      v70 = sub_1C4404BB0();
      sub_1C441DFEC(v70, v71);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643640()
{
  sub_1C43FBD3C();
  sub_1C4495194(v10, v11, v12);
  v13 = sub_1C43FECE0();
  v14 = type metadata accessor for ConstructionProgressTokens(v13);
  v68 = sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v18 = sub_1C4409ACC(v17, v66);
  v19 = sub_1C4412DFC(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4416DF8();
  v22 = type metadata accessor for StandardTransformer();
  v23 = sub_1C44101F8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v27 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v27);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v28 = sub_1C4404C28();
    v9 = sub_1C456902C(v28, v29);
    sub_1C442C5A4();
    sub_1C4401CBC(v30, v31, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v32 = sub_1C4F00978();
        sub_1C43FCEE8(v32, qword_1EDE2DE10);
        v33 = sub_1C44623A0();
        sub_1C4430900(v33, v3);
        v34 = sub_1C4F00968();
        sub_1C4F01CD8();
        v35 = sub_1C44016D0();
        if (os_log_type_enabled(v35, v36))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v37 = swift_slowAlloc();
          sub_1C44305A4(v37);
          *v6 = 136315138;
          v38 = sub_1C4404BB0();
          sub_1C4430900(v38, v39);
          sub_1C447E868(v3, type metadata accessor for StandardTransformer);
          sub_1C4640DF4();
          v40 = sub_1C440CAFC();
          sub_1C447E868(v40, type metadata accessor for StandardTransformer);
          v41 = sub_1C447CB90();
          sub_1C441D828(v41, v5, v42);
          sub_1C44D44F0();
          *(v6 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v43, v44, "%s failed to update progress token");
          sub_1C440962C(v7);
          v45 = sub_1C4416E14();
          MEMORY[0x1C6942830](v45);
          v46 = sub_1C44068C0();
          MEMORY[0x1C6942830](v46);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464E808(v47);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v48 = sub_1C4402D10();
  v49(v48);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v9 + *(v6 + 28)))
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v8 + 24);
        v51 = *(v6 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        *(v7 + *(v8 + 20)) = 7;
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v6 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C43FD294(*(v2 + 5));
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643AE8()
{
  sub_1C43FBD3C();
  v11 = sub_1C4435804(v8, v9, v10);
  v76 = sub_1C43FCDF8(v11);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v15 = sub_1C4409ACC(v14, v74);
  v16 = sub_1C43FCDF8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4416DF8();
  v19 = type metadata accessor for StandardEntityMapper();
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C444BFD8();
  }

  else
  {
    v24 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v24);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v5 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v25, v26, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v75);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v4);
        v29 = sub_1C4F00968();
        sub_1C4F01CD8();
        v30 = sub_1C44016D0();
        if (os_log_type_enabled(v30, v31))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v32 = swift_slowAlloc();
          sub_1C44305A4(v32);
          *v5 = 136315138;
          v33 = sub_1C43FE99C();
          sub_1C4430900(v33, v34);
          sub_1C447E868(v4, type metadata accessor for StandardEntityMapper);
          sub_1C4640CF4();
          sub_1C4450608();
          v35 = sub_1C447CB90();
          sub_1C441D828(v35, v4, v36);
          sub_1C4404CE0();

          *(v5 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v37, v38, "%s failed to update progress token");
          sub_1C440962C(v6);
          v39 = sub_1C4416E14();
          MEMORY[0x1C6942830](v39);
          v40 = sub_1C44068C0();
          MEMORY[0x1C6942830](v40);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v75);
  }

  sub_1C4656BA4();
  sub_1C464EC48(v41);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v77, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v42 = sub_1C440F3CC();
  v43(v42);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v0 + v19[7]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        v45 = v19[5];
        v46 = sub_1C4EFD548();
        sub_1C43FCE50(v46);
        v48 = *(v47 + 16);
        v49 = sub_1C440EDB0();
        v50(v49);
        LOBYTE(v45) = *(v0 + v19[6]);
        v51 = *(v15 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v52);
        *(v6 + *(v15 + 20)) = v45;
        sub_1C441C838();
        v53 = v19[9];
        v54 = sub_1C4457890();
        sub_1C4460A18(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        v58 = v19[5];
        v59 = sub_1C4EFD548();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C4422A44();
        v63(v62);
        LOBYTE(v58) = *(v0 + v19[6]);
        v64 = v76[6];
        sub_1C441925C();
        sub_1C4475344(v65);
        *(v3 + v76[5]) = v58;
        v66 = (v3 + v76[7]);
        *v66 = v5;
        v66[1] = v7;
        *(v3 + v76[8]) = v1;
        *(v3 + v76[9]) = v4 & 1;
        v67 = v19[9];
        v68 = sub_1C4457890();
        sub_1C4460A18(v68);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v69 = sub_1C4405904();
        sub_1C44068A0(v69, xmmword_1C4F0D130);
        sub_1C4430900(v3, v70);
        v71 = sub_1C447EF78();
        sub_1C449498C(v71);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v72 = sub_1C43FC0A8();
      sub_1C441DFEC(v72, v73);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643FF4()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for EKEventSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for EKEventSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for EKEventSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464F098(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46444AC()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for INGroupSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for INGroupSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for INGroupSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464F4D8(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4644964()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for SGEventSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for SGEventSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for SGEventSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464F918(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4644E1C()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for FAFamilySourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for FAFamilySourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for FAFamilySourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464FD58(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46452D4()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for INPersonSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for INPersonSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for INPersonSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4650198(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464578C()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for PHPersonSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for PHPersonSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for PHPersonSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C46505D8(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4645C44()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v69 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v16 = sub_1C4409ACC(v15, v67);
  v17 = sub_1C43FCDF8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1C4416DF8();
  v21 = type metadata accessor for LifeEventSourceIngestor(v20);
  v22 = sub_1C43FBCE0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v27 = sub_1C4404C28();
    v7 = sub_1C456902C(v27, v28);
    sub_1C442C5A4();
    sub_1C4401CBC(v29, v30, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v68);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v31 = sub_1C4F00978();
        sub_1C43FCEE8(v31, qword_1EDE2DE10);
        v32 = sub_1C44623A0();
        sub_1C4430900(v32, v3);
        v33 = sub_1C4F00968();
        sub_1C4F01CD8();
        v34 = sub_1C44016D0();
        if (os_log_type_enabled(v34, v35))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v36 = swift_slowAlloc();
          sub_1C44305A4(v36);
          *v16 = 136315138;
          v37 = sub_1C4404BB0();
          sub_1C4430900(v37, v38);
          sub_1C447E868(v3, type metadata accessor for LifeEventSourceIngestor);
          sub_1C46409AC();
          v39 = sub_1C440CAFC();
          sub_1C447E868(v39, type metadata accessor for LifeEventSourceIngestor);
          v40 = sub_1C447CB90();
          sub_1C441D828(v40, v5, v41);
          sub_1C44D44F0();
          *(v16 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v42, v43, "%s failed to update progress token");
          sub_1C440962C(v6);
          v44 = sub_1C4416E14();
          MEMORY[0x1C6942830](v44);
          v45 = sub_1C44068C0();
          MEMORY[0x1C6942830](v45);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v68);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4650A18(v46);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v70, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v47 = sub_1C4402D10();
  v48(v47);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v7 + v21[7]))
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v49 = *(v16 + 24);
        v50 = v21[6];
        sub_1C441925C();
        sub_1C447F7C8(v51);
        sub_1C4426A30(*(v16 + 20));
        *(v6 + v52) = v3 & 1;
        v53 = v21[5];
        v54 = sub_1C4499584();
        sub_1C4460A18(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = v21[6];
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = v21[5];
        v61 = sub_1C4499584();
        sub_1C4460A18(v61);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v62 = sub_1C4405904();
        sub_1C44068A0(v62, xmmword_1C4F0D130);
        sub_1C4430900(v3, v63);
        v64 = sub_1C4415F88();
        sub_1C449498C(v64);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v65 = sub_1C43FD2BC();
      sub_1C441DFEC(v65, v66);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46460F4()
{
  sub_1C43FBD3C();
  v7 = v1;
  v63 = v8;
  v9 = sub_1C43FECE0();
  v10 = type metadata accessor for ConstructionProgressTokens(v9);
  v62 = sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v13 = sub_1C4433190();
  v14 = type metadata accessor for ProgressTokens(v13);
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4416DF8();
  v64 = type metadata accessor for SGContactSourceIngestor();
  v18 = sub_1C43FBCE0(v64);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C441D15C();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v22 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v22);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v23 = sub_1C4404C28();
    v7 = sub_1C456902C(v23, v24);
    sub_1C442C5A4();
    sub_1C4401CBC(v25, v26, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v6);
        v29 = sub_1C4F00968();
        v30 = sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v14 = 136315138;
          v34 = sub_1C440CAF0();
          sub_1C4430900(v34, v35);
          sub_1C447E868(v6, type metadata accessor for SGContactSourceIngestor);
          sub_1C447CD74();
          sub_1C4495B14();
          v36 = sub_1C440CAFC();
          sub_1C447E868(v36, type metadata accessor for SGContactSourceIngestor);
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v4, v38);
          sub_1C44D44F0();
          *(v14 + 4) = v1;
          sub_1C4451274(&dword_1C43F8000, v39, v30, "%s failed to update progress token");
          sub_1C440962C(v5);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C447E868(v6, type metadata accessor for SGContactSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v61);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4650E68(v42);
  v6 = v63;
  if (!v65[3])
  {
    sub_1C4420C3C(v65, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v63)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C4402D10();
  v44(v43);
  sub_1C4456268();
  if ((v63 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4482CCC();
  switch(v46)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v47 = *(v14 + 24);
        sub_1C441925C();
        sub_1C44806A4(v48);
        sub_1C4426A30(*(v14 + 20));
        *(v5 + v49) = v63 & 1;
        v50 = sub_1C44246D8();
        sub_1C4460A18(v50);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v51 = sub_1C4424F7C();
        sub_1C4412DCC(v51, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v52 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v7, v3 + v54);
        v55 = sub_1C442AB20();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v56 = sub_1C4405904();
        sub_1C44068A0(v56, xmmword_1C4F0D130);
        sub_1C4430900(v3, v57);
        v58 = sub_1C4415F88();
        sub_1C449498C(v58);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v52 = v3;
      }

      sub_1C447E868(v52, v53);
      v59 = sub_1C43FD2BC();
      sub_1C441DFEC(v59, v60);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46465D0()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for ScreenTimeSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for ScreenTimeSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for ScreenTimeSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C46512B8(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4646A88()
{
  sub_1C43FBD3C();
  v4 = v1;
  v100 = v5;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for ConstructionProgressTokens(0);
  v96 = sub_1C43FCDF8(v10);
  v97 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v14 = sub_1C4433190();
  v15 = type metadata accessor for ProgressTokens(v14);
  v98 = sub_1C43FCDF8(v15);
  v99 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v19 = sub_1C4416DF8();
  v20 = type metadata accessor for CNContactDeltaSourceIngestor(v19);
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  v27 = v92 - v26;
  if (v7 >> 60 == 15)
  {
    sub_1C444BFD8();
  }

  else
  {
    v92[1] = v25;
    v93 = v2;
    v95 = v1;
    v28 = sub_1C43FC0A8();
    sub_1C44344B8(v28, v29);
    v94 = objc_autoreleasePoolPush();
    v101[0] = v9;
    v101[1] = v7;
    v30 = sub_1C4EF93D8();
    sub_1C44099C4(v30);
    sub_1C4EF93C8();
    v31 = qword_1EC0BAC30;
    sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
    sub_1C442C5A4();
    sub_1C4401CBC(v32, v33, &qword_1C4F142F8);
    v34 = sub_1C44418D0();
    if (qword_1EC0BAC30)
    {

      objc_autoreleasePoolPop(v94);
      v36 = sub_1C43FC0A8();
      sub_1C441DFEC(v36, v37);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v38 = sub_1C4F00978();
        sub_1C43FCEE8(v38, qword_1EDE2DE10);
        v39 = sub_1C44623A0();
        sub_1C4430900(v39, v27);
        v40 = sub_1C4F00968();
        v41 = sub_1C4F01CD8();
        v42 = sub_1C44016D0();
        if (os_log_type_enabled(v42, v43))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v44 = swift_slowAlloc();
          sub_1C44305A4(v44);
          *v9 = 136315138;
          sub_1C44B91CC();
          sub_1C447E868(v27, type metadata accessor for CNContactDeltaSourceIngestor);
          v45 = sub_1C4640838();
          v47 = v46;
          v48 = sub_1C440CAF0();
          sub_1C447E868(v48, v49);
          v50 = sub_1C447CB90();
          sub_1C441D828(v50, v47, v51);
          sub_1C44D44F0();
          *(v9 + 4) = v45;
          sub_1C4451274(&dword_1C43F8000, v52, v41, "%s failed to update progress token");
          sub_1C440962C(v3);
          v53 = sub_1C4416E14();
          MEMORY[0x1C6942830](v53);
          v54 = sub_1C44068C0();
          MEMORY[0x1C6942830](v54);
        }

        else
        {
          sub_1C447E868(v27, type metadata accessor for CNContactDeltaSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v0 = v34;
    v55 = v35;

    objc_autoreleasePoolPop(v94);
    v56 = sub_1C43FC0A8();
    sub_1C441DFEC(v56, v57);
    v4 = v95;
    v9 = v0;
    v7 = v55;
    v2 = v93;
  }

  v58 = v4;
  sub_1C46516F8(v101);
  v31 = v102;
  v27 = v100;
  if (!v102)
  {
    sub_1C4420C3C(v101, &qword_1EC0BA490, &unk_1C4F53630);
    v58 = 0;
    if (v27)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v59 = sub_1C43FECAC();
  v60(v59);
  sub_1C4456268();
  if ((v27 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v58++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v4 + v20[7]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v62 = sub_1C4EFD548();
        sub_1C43FCE50(v62);
        (*(v63 + 16))(v3, v4);
        v64 = *(v4 + v20[9]);
        v65 = *(v98 + 24);
        v66 = v20[6];
        sub_1C441925C();
        sub_1C4430900(v4 + v67, v3 + v68);
        sub_1C4485FC4();
        *v69 = v9;
        v69[1] = v7;
        sub_1C44A1488();
        v70 = v4 + v20[5];
        v71 = type metadata accessor for PhaseStores();
        sub_1C4460A18(v71);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v72 = sub_1C4404CB4();
        sub_1C4412DCC(v72, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v73 = sub_1C43FFEF0();
      }

      else
      {
        v75 = sub_1C4EFD548();
        sub_1C43FCE50(v75);
        v77 = *(v76 + 16);
        v78 = sub_1C4404BB0();
        v79(v78);
        v80 = *(v4 + v20[9]);
        sub_1C445C11C();
        v81 = v20[6];
        sub_1C441925C();
        sub_1C4430900(v4 + v82, v2 + v83);
        *(v2 + MEMORY[0xE700000000000014]) = v80;
        v84 = (v2 + MEMORY[0xE70000000000001C]);
        *v84 = v9;
        v84[1] = v7;
        *(v2 + MEMORY[0xE700000000000020]) = v58;
        *(v2 + MEMORY[0xE700000000000024]) = v27 & 1;
        v85 = v4 + v20[5];
        v86 = type metadata accessor for PhaseStores();
        sub_1C4460A18(v86);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v87 = sub_1C4405904();
        sub_1C44068A0(v87, xmmword_1C4F0D130);
        sub_1C4430900(v2, v88);
        v89 = sub_1C447EF78();
        sub_1C449498C(v89);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v73 = v2;
      }

      sub_1C447E868(v73, v74);
      v90 = sub_1C43FC0A8();
      sub_1C441DFEC(v90, v91);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647050()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for LSBundleRecordSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for LSBundleRecordSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for LSBundleRecordSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4651B48(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647508()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v75 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v16 = sub_1C4409ACC(v15, v73);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1C4416DF8();
  v21 = type metadata accessor for WalletEmailOrderSourceIngestor(v20);
  v22 = sub_1C44158C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v27, v28, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v74);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v29 = sub_1C4F00978();
        sub_1C43FCEE8(v29, qword_1EDE2DE10);
        v30 = sub_1C44623A0();
        sub_1C4430900(v30, v5);
        v31 = sub_1C4F00968();
        sub_1C4F01CD8();
        v32 = sub_1C44016D0();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for WalletEmailOrderSourceIngestor);
          v35 = sub_1C44C11FC();
          sub_1C46404C4(v35, v36, v37);
          sub_1C4450608();
          v38 = sub_1C447CB90();
          sub_1C441D828(v38, v3, v39);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v40, v41, "%s failed to update progress token");
          sub_1C440962C(v6);
          v42 = sub_1C4416E14();
          MEMORY[0x1C6942830](v42);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v74);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4651F88(v43);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v76, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C43FECAC();
  v45(v44);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v48 = sub_1C447581C();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C4488550();
        v52(v51);
        v53 = *(v7 + 24);
        v54 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v55);
        v56 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v56);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v57 = sub_1C4404CB4();
        sub_1C4412DCC(v57, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v58 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v59 = sub_1C447581C();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C447F8DC();
        v63(v62);
        sub_1C4428E54();
        v64 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v65);
        sub_1C4456980();
        v67 = sub_1C442DD98(v66);
        sub_1C4417F8C(v67);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v68 = sub_1C4405904();
        sub_1C44068A0(v68, xmmword_1C4F0D130);
        sub_1C4430900(v6, v69);
        v70 = sub_1C444FC8C();
        sub_1C449498C(v70);
        swift_setDeallocating();
        sub_1C4495394();
        v58 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v58);
      v71 = sub_1C4404BB0();
      sub_1C441DFEC(v71, v72);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647A00()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v75 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v16 = sub_1C4409ACC(v15, v73);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1C4416DF8();
  v21 = type metadata accessor for BMAppleMusicEventSourceIngestor(v20);
  v22 = sub_1C44158C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v27, v28, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v74);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v29 = sub_1C4F00978();
        sub_1C43FCEE8(v29, qword_1EDE2DE10);
        v30 = sub_1C44623A0();
        sub_1C4430900(v30, v5);
        v31 = sub_1C4F00968();
        sub_1C4F01CD8();
        v32 = sub_1C44016D0();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for BMAppleMusicEventSourceIngestor);
          v35 = sub_1C44C11FC();
          sub_1C46404C4(v35, v36, v37);
          sub_1C4450608();
          v38 = sub_1C447CB90();
          sub_1C441D828(v38, v3, v39);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v40, v41, "%s failed to update progress token");
          sub_1C440962C(v6);
          v42 = sub_1C4416E14();
          MEMORY[0x1C6942830](v42);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v74);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C46523C8(v43);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v76, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C43FECAC();
  v45(v44);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v48 = sub_1C447581C();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C4488550();
        v52(v51);
        v53 = *(v7 + 24);
        v54 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v55);
        v56 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v56);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v57 = sub_1C4404CB4();
        sub_1C4412DCC(v57, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v58 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v59 = sub_1C447581C();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C447F8DC();
        v63(v62);
        sub_1C4428E54();
        v64 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v65);
        sub_1C4456980();
        v67 = sub_1C442DD98(v66);
        sub_1C4417F8C(v67);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v68 = sub_1C4405904();
        sub_1C44068A0(v68, xmmword_1C4F0D130);
        sub_1C4430900(v6, v69);
        v70 = sub_1C444FC8C();
        sub_1C449498C(v70);
        swift_setDeallocating();
        sub_1C4495394();
        v58 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v58);
      v71 = sub_1C4404BB0();
      sub_1C441DFEC(v71, v72);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647EF8()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  v12 = type metadata accessor for ConstructionProgressTokens(v11);
  v68 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = sub_1C4409ACC(v15, v66);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for HKEmergencyContactSourceIngestor();
  v21 = sub_1C44101F8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v25 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v26 = sub_1C4404C28();
    sub_1C456902C(v26, v27);
    sub_1C442C5A4();
    sub_1C4401CBC(v28, v29, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v30 = sub_1C4F00978();
        sub_1C43FCEE8(v30, qword_1EDE2DE10);
        v31 = sub_1C44623A0();
        sub_1C4430900(v31, v3);
        v32 = sub_1C4F00968();
        sub_1C4F01CD8();
        v33 = sub_1C44016D0();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v35 = swift_slowAlloc();
          sub_1C44305A4(v35);
          *v5 = 136315138;
          v36 = sub_1C4404BB0();
          sub_1C4430900(v36, v37);
          sub_1C447E868(v3, type metadata accessor for HKEmergencyContactSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v38 = sub_1C440CAFC();
          sub_1C447E868(v38, type metadata accessor for HKEmergencyContactSourceIngestor);
          v39 = sub_1C447CB90();
          sub_1C441D828(v39, v4, v40);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v41, v42, "%s failed to update progress token");
          sub_1C440962C(v6);
          v43 = sub_1C4416E14();
          MEMORY[0x1C6942830](v43);
          v44 = sub_1C44068C0();
          MEMORY[0x1C6942830](v44);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4652808(v45);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = sub_1C4402D10();
  v47(v46);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v7 + 24);
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        v58 = *(v5 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C4432008();
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46483B0()
{
  sub_1C43FBD3C();
  v7 = v1;
  v63 = v8;
  v9 = sub_1C43FECE0();
  v10 = type metadata accessor for ConstructionProgressTokens(v9);
  v62 = sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v13 = sub_1C4433190();
  v14 = type metadata accessor for ProgressTokens(v13);
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4416DF8();
  v64 = type metadata accessor for PGRelationshipFullSourceIngestor();
  v18 = sub_1C43FBCE0(v64);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C441D15C();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v22 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v22);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v23 = sub_1C4404C28();
    v7 = sub_1C456902C(v23, v24);
    sub_1C442C5A4();
    sub_1C4401CBC(v25, v26, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v6);
        v29 = sub_1C4F00968();
        v30 = sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v14 = 136315138;
          v34 = sub_1C440CAF0();
          sub_1C4430900(v34, v35);
          sub_1C447E868(v6, type metadata accessor for PGRelationshipFullSourceIngestor);
          sub_1C447CD74();
          sub_1C4495B14();
          v36 = sub_1C440CAFC();
          sub_1C447E868(v36, type metadata accessor for PGRelationshipFullSourceIngestor);
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v4, v38);
          sub_1C44D44F0();
          *(v14 + 4) = v1;
          sub_1C4451274(&dword_1C43F8000, v39, v30, "%s failed to update progress token");
          sub_1C440962C(v5);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C447E868(v6, type metadata accessor for PGRelationshipFullSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v61);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4652C48(v42);
  v6 = v63;
  if (!v65[3])
  {
    sub_1C4420C3C(v65, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v63)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C4402D10();
  v44(v43);
  sub_1C4456268();
  if ((v63 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4482CCC();
  switch(v46)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v47 = *(v14 + 24);
        sub_1C441925C();
        sub_1C44806A4(v48);
        sub_1C4426A30(*(v14 + 20));
        *(v5 + v49) = v63 & 1;
        v50 = sub_1C44246D8();
        sub_1C4460A18(v50);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v51 = sub_1C4424F7C();
        sub_1C4412DCC(v51, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v52 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v7, v3 + v54);
        v55 = sub_1C442AB20();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v56 = sub_1C4405904();
        sub_1C44068A0(v56, xmmword_1C4F0D130);
        sub_1C4430900(v3, v57);
        v58 = sub_1C4415F88();
        sub_1C449498C(v58);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v52 = v3;
      }

      sub_1C447E868(v52, v53);
      v59 = sub_1C43FD2BC();
      sub_1C441DFEC(v59, v60);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464888C()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v75 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v16 = sub_1C4409ACC(v15, v73);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1C4416DF8();
  v21 = type metadata accessor for WalletClassicOrderSourceIngestor(v20);
  v22 = sub_1C44158C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v27, v28, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v74);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v29 = sub_1C4F00978();
        sub_1C43FCEE8(v29, qword_1EDE2DE10);
        v30 = sub_1C44623A0();
        sub_1C4430900(v30, v5);
        v31 = sub_1C4F00968();
        sub_1C4F01CD8();
        v32 = sub_1C44016D0();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for WalletClassicOrderSourceIngestor);
          v35 = sub_1C44C11FC();
          sub_1C46404C4(v35, v36, v37);
          sub_1C4450608();
          v38 = sub_1C447CB90();
          sub_1C441D828(v38, v3, v39);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v40, v41, "%s failed to update progress token");
          sub_1C440962C(v6);
          v42 = sub_1C4416E14();
          MEMORY[0x1C6942830](v42);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v74);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4653098(v43);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v76, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C43FECAC();
  v45(v44);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v48 = sub_1C447581C();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C4488550();
        v52(v51);
        v53 = *(v7 + 24);
        v54 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v55);
        v56 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v56);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v57 = sub_1C4404CB4();
        sub_1C4412DCC(v57, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v58 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v59 = sub_1C447581C();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C447F8DC();
        v63(v62);
        sub_1C4428E54();
        v64 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v65);
        sub_1C4456980();
        v67 = sub_1C442DD98(v66);
        sub_1C4417F8C(v67);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v68 = sub_1C4405904();
        sub_1C44068A0(v68, xmmword_1C4F0D130);
        sub_1C4430900(v6, v69);
        v70 = sub_1C444FC8C();
        sub_1C449498C(v70);
        swift_setDeallocating();
        sub_1C4495394();
        v58 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v58);
      v71 = sub_1C4404BB0();
      sub_1C441DFEC(v71, v72);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4648D84()
{
  sub_1C43FBD3C();
  v12 = sub_1C4418330(v9, v10, v11);
  v75 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v16 = sub_1C4409ACC(v15, v73);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1C4416DF8();
  v21 = type metadata accessor for WalletTrackedOrderSourceIngestor(v20);
  v22 = sub_1C44158C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v27, v28, &dword_1C4F141D0);
    sub_1C44418D0();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v74);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v29 = sub_1C4F00978();
        sub_1C43FCEE8(v29, qword_1EDE2DE10);
        v30 = sub_1C44623A0();
        sub_1C4430900(v30, v5);
        v31 = sub_1C4F00968();
        sub_1C4F01CD8();
        v32 = sub_1C44016D0();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v8 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v5, type metadata accessor for WalletTrackedOrderSourceIngestor);
          v35 = sub_1C44C11FC();
          sub_1C46404C4(v35, v36, v37);
          sub_1C4450608();
          v38 = sub_1C447CB90();
          sub_1C441D828(v38, v3, v39);
          sub_1C4404CE0();

          *(v8 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v40, v41, "%s failed to update progress token");
          sub_1C440962C(v6);
          v42 = sub_1C4416E14();
          MEMORY[0x1C6942830](v42);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v74);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C46534D8(v43);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v76, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C43FECAC();
  v45(v44);
  sub_1C4456268();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v48 = sub_1C447581C();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C4488550();
        v52(v51);
        v53 = *(v7 + 24);
        v54 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v55);
        v56 = sub_1C4404144(*(v7 + 20));
        sub_1C4417F8C(v56);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v57 = sub_1C4404CB4();
        sub_1C4412DCC(v57, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v58 = type metadata accessor for ProgressTokens;
      }

      else
      {
        v59 = sub_1C447581C();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C447F8DC();
        v63(v62);
        sub_1C4428E54();
        v64 = *(v4 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v65);
        sub_1C4456980();
        v67 = sub_1C442DD98(v66);
        sub_1C4417F8C(v67);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v68 = sub_1C4405904();
        sub_1C44068A0(v68, xmmword_1C4F0D130);
        sub_1C4430900(v6, v69);
        v70 = sub_1C444FC8C();
        sub_1C449498C(v70);
        swift_setDeallocating();
        sub_1C4495394();
        v58 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v6, v58);
      v71 = sub_1C4404BB0();
      sub_1C441DFEC(v71, v72);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464927C()
{
  sub_1C43FBD3C();
  v10 = sub_1C4435804(v7, v8, v9);
  v72 = sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v14 = sub_1C4409ACC(v13, v70);
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4416DF8();
  v18 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v5 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v71);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v4);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v5 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v4, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
          sub_1C46403A4();
          sub_1C4450608();
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C4404CE0();

          *(v5 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v71);
  }

  sub_1C4656BA4();
  sub_1C4653918(v40);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v73, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C440F3CC();
  v42(v41);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v0 + v18[5]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        v43 = v18[8];
        v44 = sub_1C4EFD548();
        sub_1C43FCE50(v44);
        v46 = *(v45 + 16);
        v47 = sub_1C440EDB0();
        v48(v47);
        v49 = *(v14 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v50);
        sub_1C440EF68(*(v14 + 20));
        sub_1C441C838();
        v51 = v18[6];
        v52 = sub_1C4457890();
        sub_1C4460A18(v52);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v53 = sub_1C4404CB4();
        sub_1C4412DCC(v53, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v54 = sub_1C43FFEF0();
      }

      else
      {
        v56 = v18[8];
        v57 = sub_1C4EFD548();
        sub_1C43FCE50(v57);
        v59 = *(v58 + 16);
        v60 = sub_1C4422A44();
        v61(v60);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v62);
        sub_1C442B994(*(v56 + 20));
        v63 = v18[6];
        v64 = sub_1C4457890();
        sub_1C4460A18(v64);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v65 = sub_1C4405904();
        sub_1C44068A0(v65, xmmword_1C4F0D130);
        sub_1C4430900(v3, v66);
        v67 = sub_1C447EF78();
        sub_1C449498C(v67);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v54 = v3;
      }

      sub_1C447E868(v54, v55);
      v68 = sub_1C43FC0A8();
      sub_1C441DFEC(v68, v69);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4649758()
{
  sub_1C43FBD3C();
  v9 = sub_1C4435804(v6, v7, v8);
  v73 = sub_1C43FCDF8(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = sub_1C4409ACC(v12, v71);
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = sub_1C4416DF8();
  v18 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(v17);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v72);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v3);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v4 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v3, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
          v34 = sub_1C44C11FC();
          sub_1C464020C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v5);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v72);
  }

  sub_1C4656BA4();
  sub_1C4653D68(v43);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v74, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C440F3CC();
  v45(v44);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        v48 = sub_1C44C0438();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C440EDB0();
        v52(v51);
        v53 = *(v13 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v54);
        sub_1C440EF68(*(v13 + 20));
        sub_1C441C838();
        v55 = sub_1C44B8F10();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = sub_1C43FFEF0();
      }

      else
      {
        v59 = sub_1C44C0438();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C4422A44();
        v63(v62);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v64);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        v65 = sub_1C44B8F10();
        sub_1C4460A18(v65);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v66 = sub_1C4405904();
        sub_1C44068A0(v66, xmmword_1C4F0D130);
        sub_1C4430900(v2, v67);
        v68 = sub_1C447EF78();
        sub_1C449498C(v68);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v57 = v2;
      }

      sub_1C447E868(v57, v58);
      v69 = sub_1C43FC0A8();
      sub_1C441DFEC(v69, v70);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4649C38()
{
  sub_1C43FBD3C();
  v9 = sub_1C4435804(v6, v7, v8);
  v73 = sub_1C43FCDF8(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = sub_1C4409ACC(v12, v71);
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = sub_1C4416DF8();
  v18 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(v17);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v72);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v3);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v4 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v3, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
          v34 = sub_1C44C11FC();
          sub_1C464020C(v34, v35, v36);
          sub_1C4450608();
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v3, v38);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v5);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v72);
  }

  sub_1C4656BA4();
  sub_1C46541B8(v43);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v74, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = sub_1C440F3CC();
  v45(v44);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  switch(v47)
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        v48 = sub_1C44C0438();
        sub_1C43FCE50(v48);
        v50 = *(v49 + 16);
        v51 = sub_1C440EDB0();
        v52(v51);
        v53 = *(v13 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v54);
        sub_1C440EF68(*(v13 + 20));
        sub_1C441C838();
        v55 = sub_1C44B8F10();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v56 = sub_1C4404CB4();
        sub_1C4412DCC(v56, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v57 = sub_1C43FFEF0();
      }

      else
      {
        v59 = sub_1C44C0438();
        sub_1C43FCE50(v59);
        v61 = *(v60 + 16);
        v62 = sub_1C4422A44();
        v63(v62);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v64);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        v65 = sub_1C44B8F10();
        sub_1C4460A18(v65);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v66 = sub_1C4405904();
        sub_1C44068A0(v66, xmmword_1C4F0D130);
        sub_1C4430900(v2, v67);
        v68 = sub_1C447EF78();
        sub_1C449498C(v68);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v57 = v2;
      }

      sub_1C447E868(v57, v58);
      v69 = sub_1C43FC0A8();
      sub_1C441DFEC(v69, v70);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}