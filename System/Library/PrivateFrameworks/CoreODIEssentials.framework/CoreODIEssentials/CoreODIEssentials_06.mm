uint64_t sub_1DAFA249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = v3;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  v4[112] = *v3;
  v5 = sub_1DB09D284();
  v4[113] = v5;
  v6 = *(v5 - 8);
  v4[114] = v6;
  v7 = *(v6 + 64) + 15;
  v4[115] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E998, &qword_1DB0A8B40) - 8) + 64) + 15;
  v4[116] = swift_task_alloc();
  v9 = sub_1DB09D2A4();
  v4[117] = v9;
  v10 = *(v9 - 8);
  v4[118] = v10;
  v11 = *(v10 + 64) + 15;
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0) - 8) + 64) + 15;
  v4[121] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2668, 0, 0);
}

uint64_t sub_1DAFA2668()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 976) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2700, v1, 0);
}

uint64_t sub_1DAFA2700()
{
  if (*(v0[122] + 168))
  {
    v1 = v0[111];

    return MEMORY[0x1EEE6DFA0](sub_1DAFA28E4, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[123] = v2;
    *v2 = v0;
    v2[1] = sub_1DAFA27D4;
    v3 = v0[122];

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFA27D4()
{
  v1 = *v0;
  v2 = *(*v0 + 984);
  v5 = *v0;

  v3 = *(v1 + 888);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA28E4, v3, 0);
}

uint64_t sub_1DAFA28E4()
{
  v1 = v0[112];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 infoDictionary];

  if (v4)
  {
    v5 = sub_1DB09D624();

    if (v5)
    {
      if (*(v5 + 16) && (v6 = sub_1DAF35210(0x656C646E75424643, 0xEF6E6F6973726556), (v7 & 1) != 0))
      {
        sub_1DAF409DC(*(v5 + 56) + 32 * v6, (v0 + 94));

        if (swift_dynamicCast())
        {
          v8 = v0[104];
          v9 = v0[105];
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v9 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
LABEL_9:
  v0[125] = v9;
  v0[124] = v8;
  v10 = v0[122];

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2A68, v10, 0);
}

uint64_t sub_1DAFA2A68()
{
  v1 = v0[122];
  v2 = sub_1DAFA7368(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[126] = v3;
  v3[2] = v1;
  v3[3] = 0x4E746375646F7250;
  v3[4] = 0xEB00000000656D61;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[127] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v5 = v0;
  v5[1] = sub_1DAFA2BD4;

  return MEMORY[0x1EEE6DDE0](v0 + 102, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v6);
}

uint64_t sub_1DAFA2BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 1016);
  v3 = *(*v0 + 1008);
  v4 = *(*v0 + 888);
  v6 = *v0;

  *(v1 + 1024) = *(v1 + 816);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2D10, v4, 0);
}

uint64_t sub_1DAFA2D10()
{
  v1 = [objc_opt_self() processInfo];
  [v1 operatingSystemVersion];
  v2 = v34;

  v0[106] = v32;
  v33 = sub_1DB09E1D4();
  v35 = v3;
  MEMORY[0x1E127FE90](46, 0xE100000000000000);
  v0[107] = v2;
  v4 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v4);

  v0[130] = v33;
  v0[131] = v35;
  if (qword_1EE3032E8 != -1)
  {
    swift_once();
  }

  v5 = 0x6E776F6E6B6E75;
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[118];
  v9 = v0[117];
  v0[101] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A8, &unk_1DB0A8B48);
  v0[98] = &type metadata for AssessmentConfig;
  sub_1DAFBA9D0(v0 + 98, 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 98);
  sub_1DB09D264();
  sub_1DB09D254();
  v10 = *(v8 + 8);
  v10(v7, v9);
  v11 = sub_1DB09D244();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = v0[121];
  if (v13 == 1)
  {
    sub_1DAF40AEC(v0[121], &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
  }

  else
  {
    v16 = sub_1DB09D1F4();
    v15 = v17;
    (*(v12 + 8))(v14, v11);
  }

  v0[133] = v15;
  v0[132] = v16;
  v18 = v0[119];
  v19 = v0[117];
  v20 = v0[116];
  v21 = v0[115];
  v22 = v0[114];
  v23 = v0[113];
  sub_1DB09D264();
  sub_1DB09D294();
  v10(v18, v19);
  sub_1DB09D274();
  (*(v22 + 8))(v21, v23);
  v24 = sub_1DB09D204();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v20, 1, v24);
  v27 = v0[116];
  if (v26 == 1)
  {
    sub_1DAF40AEC(v0[116], &qword_1ECC0E998, &qword_1DB0A8B40);
    v28 = 0xE700000000000000;
  }

  else
  {
    v5 = sub_1DB09D1F4();
    v28 = v29;
    (*(v25 + 8))(v27, v24);
  }

  v0[135] = v28;
  v0[134] = v5;
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v30 = swift_task_alloc();
  v0[136] = v30;
  *v30 = v0;
  v30[1] = sub_1DAFA311C;

  return sub_1DAFEFC24((v0 + 66));
}

uint64_t sub_1DAFA311C()
{
  v1 = *(*v0 + 1088);
  v2 = *(*v0 + 888);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA322C, v2, 0);
}

uint64_t sub_1DAFA322C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 704);
  *(v0 + 464) = *(v0 + 688);
  *(v0 + 480) = v3;
  v4 = *(v0 + 736);
  *(v0 + 496) = *(v0 + 720);
  *(v0 + 512) = v4;
  v5 = *(v0 + 640);
  *(v0 + 400) = *(v0 + 624);
  *(v0 + 416) = v5;
  v6 = *(v0 + 672);
  *(v0 + 432) = *(v0 + 656);
  *(v0 + 448) = v6;
  v7 = *(v0 + 576);
  *(v0 + 336) = *(v0 + 560);
  *(v0 + 352) = v7;
  v8 = *(v0 + 608);
  *(v0 + 368) = *(v0 + 592);
  *(v0 + 384) = v8;
  v9 = *(v0 + 544);
  *(v0 + 304) = *(v0 + 528);
  *(v0 + 320) = v9;
  v10 = [objc_opt_self() standardUserDefaults];
  *(v0 + 280) = sub_1DAF4062C(0, &qword_1EE3018F8, 0x1E695E000);
  *(v0 + 288) = &off_1F56CD488;
  *(v0 + 256) = v10;
  v11 = sub_1DAFA343C();
  *(v0 + 16) = 45;
  *(v0 + 24) = 0xE100000000000000;
  v12 = *(v0 + 480);
  *(v0 + 192) = *(v0 + 464);
  *(v0 + 208) = v12;
  v13 = *(v0 + 512);
  *(v0 + 224) = *(v0 + 496);
  *(v0 + 240) = v13;
  v14 = *(v0 + 416);
  *(v0 + 128) = *(v0 + 400);
  *(v0 + 144) = v14;
  v15 = *(v0 + 448);
  *(v0 + 160) = *(v0 + 432);
  *(v0 + 176) = v15;
  v16 = *(v0 + 352);
  *(v0 + 64) = *(v0 + 336);
  *(v0 + 80) = v16;
  v17 = *(v0 + 384);
  *(v0 + 96) = *(v0 + 368);
  *(v0 + 112) = v17;
  v18 = *(v0 + 320);
  *(v0 + 32) = *(v0 + 304);
  *(v0 + 48) = v18;
  *(v0 + 296) = v11;
  LOBYTE(v1) = sub_1DB022858(v2, v1);
  sub_1DAFA7220(v0 + 16);
  v19 = *(v0 + 1080);
  v20 = v1 + 48;
  v21 = *(v0 + 1072);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 1024);
  v27 = *(v0 + 992);
  v28 = *(v0 + 968);
  v29 = *(v0 + 960);
  v30 = *(v0 + 952);
  v31 = *(v0 + 928);
  v32 = *(v0 + 920);
  v33 = *(v0 + 880);
  v34 = *(v0 + 864);
  if (!v25)
  {
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
  }

  *v34 = *(v0 + 872);
  *(v34 + 8) = v33;
  *(v34 + 16) = v24;
  *(v34 + 24) = v23;
  *(v34 + 32) = v26;
  *(v34 + 40) = v25;
  *(v34 + 48) = v27;
  *(v34 + 64) = v22;
  *(v34 + 80) = v21;
  *(v34 + 88) = v19;
  *(v34 + 96) = v20;
  *(v34 + 104) = 0xE100000000000000;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DAFA343C()
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  v0 = byte_1EE30A140;
  if (qword_1EE301DD0 != -1)
  {
    swift_once();
    if (v0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!byte_1EE30A140)
  {
    return 0;
  }

LABEL_5:
  if (qword_1EE309EE8 && (qword_1EE309EE0 == 0x7972726163 ? (v1 = qword_1EE309EE8 == 0xE500000000000000) : (v1 = 0), v1 || (sub_1DB09E254() & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DAFA3518()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DAFA35A8;

  return sub_1DAFA17D8();
}

uint64_t sub_1DAFA35A8(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 24);
  v11 = *v4;

  v12 = *(v8 + 16);
  if (v3)
  {

    v13 = sub_1DAFA37EC;
  }

  else
  {
    *(v9 + 48) = a3;
    *(v9 + 32) = a2;
    *(v9 + 40) = a1;
    v13 = sub_1DAFA3700;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, 0);
}

uint64_t sub_1DAFA3700()
{
  v10 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v7 = v2[27];
  v8 = v2[28];

  sub_1DB09DE44();

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001DB0C4D30;
  MEMORY[0x1E127FE90](v2[19], v2[20]);
  LOBYTE(v9[0]) = 1;
  CoreODILogger.debug(_:category:)(0xD000000000000026, 0x80000001DB0C4D30, v9);

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 8);

  return v5(v3, v4, v1 & 1);
}

uint64_t sub_1DAFA37EC()
{
  v7 = v0;
  v1 = *(v0 + 16);
  v4 = v1[27];
  v5 = v1[28];

  sub_1DB09DE44();

  v6[0] = 0xD000000000000019;
  v6[1] = 0x80000001DB0C4D10;
  MEMORY[0x1E127FE90](v1[19], v1[20]);
  LOBYTE(v6[0]) = 1;
  CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C4D10, v6);

  v2 = *(v0 + 8);

  return v2(0, 0, 255);
}

uint64_t sub_1DAFA38D8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1DB09CFA4();
  if (v5 >> 60 == 15)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, &v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = v66;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD00000000000001CLL;
    *(v12 + 5) = 0x80000001DB0C4C90;
    *(v12 + 6) = 0xD000000000000026;
    *(v12 + 7) = 0x80000001DB0C4C20;
    *(v12 + 8) = 0xD000000000000017;
    *(v12 + 9) = 0x80000001DB0C4CB0;
    *(v12 + 10) = 129;
    *(&v70 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v69 = v6;
    sub_1DAF40D20(&v69, &v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v7;
    sub_1DAF3B11C(&v66, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-2107 userInfo:v16];

    return swift_willThrow();
  }

  v18 = v4;
  v19 = v5;
  v20 = sub_1DB09CC24();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DAFA71C0();
  sub_1DB09CC04();
  if (!v2)
  {

    v66 = v69;
    v67 = v70;
    v33 = v72;
    v68 = v71;
    v34 = v73;
    v62 = v74;
    v63[0] = 0;
    v35 = *(v1 + 224);
    v64 = *(v1 + 216);
    v65 = v35;

    sub_1DB09DE44();

    v63[0] = 0xD000000000000001;
    v63[1] = 0x80000001DB0C4CF0;

    MEMORY[0x1E127FE90](v72, v73);

    CoreODILogger.debug(_:category:)(0xD000000000000010, 0x80000001DB0C4CF0, v63);

    sub_1DAF4AC40(v18, v19);

    v36 = v67;
    *a1 = v66;
    *(a1 + 16) = v36;
    *(a1 + 32) = v68;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v62;
    return result;
  }

  v61 = v18;

  v23 = *(v1 + 224);
  *&v69 = *(v1 + 216);
  *(&v69 + 1) = v23;
  *&v66 = 0x20726F727201;
  *(&v66 + 1) = 0xE600000000000000;
  swift_getErrorValue();

  v24 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v24);

  CoreODILogger.error(_:category:)(0x20726F727245, 0xE600000000000000, &v66);

  v25 = v2;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v26 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v27 = v2;
  v28 = sub_1DB09CE64();
  v29 = [v28 domain];
  v30 = sub_1DB09D6C4();
  v32 = v31;

  if (v30 == 0x726F72724549444FLL && v32 == 0xE800000000000000)
  {
  }

  else
  {
    v37 = sub_1DB09E254();

    if ((v37 & 1) == 0)
    {
      v43 = *MEMORY[0x1E696AA08];
      v44 = sub_1DB09D6C4();
      v46 = v45;
      *(&v70 + 1) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *&v69 = v28;
      sub_1DAF40D20(&v69, &v66);
      v47 = v28;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v26;
      sub_1DAF3B11C(&v66, v44, v46, v48);

      v41 = v26;
      v60 = 233;
      goto LABEL_26;
    }
  }

  ODIErrorCode.init(rawValue:)([v28 code]);
  v38 = v69;
  v39 = v69 ^ 0x80;
  v40 = [v28 userInfo];
  v41 = sub_1DB09D624();

  if (v38 == 211)
  {
    v42 = 233;
  }

  else
  {
    v42 = v39;
  }

  v60 = v42;
LABEL_26:
  if (*(v41 + 16) && (v49 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v50 & 1) != 0) && (sub_1DAF409DC(*(v41 + 56) + 32 * v49, &v69), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v51 = v66;
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_1DAF72EC0(0, *(v51 + 2) + 1, 1, v51);
  }

  v53 = *(v51 + 2);
  v52 = *(v51 + 3);
  if (v53 >= v52 >> 1)
  {
    v51 = sub_1DAF72EC0((v52 > 1), v53 + 1, 1, v51);
  }

  *(v51 + 2) = v53 + 1;
  v54 = &v51[56 * v53];
  *(v54 + 4) = 0xD00000000000001BLL;
  *(v54 + 5) = 0x80000001DB0C4CD0;
  *(v54 + 6) = 0xD000000000000026;
  *(v54 + 7) = 0x80000001DB0C4C20;
  *(v54 + 8) = 0xD000000000000017;
  *(v54 + 9) = 0x80000001DB0C4CB0;
  *(v54 + 10) = 138;
  *(&v70 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v69 = v51;
  sub_1DAF40D20(&v69, &v66);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v41;
  sub_1DAF3B11C(&v66, 0x636F766E4949444FLL, 0xEE00736E6F697461, v55);
  v56 = qword_1DB0A8B68[v60];
  v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v58 = sub_1DB09D6B4();
  v59 = sub_1DB09D604();
  [v57 initWithDomain:v58 code:v56 userInfo:v59];

  swift_willThrow();
  return sub_1DAF4AC40(v61, v19);
}

uint64_t sub_1DAFA41D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFA4274, v1, 0);
}

uint64_t sub_1DAFA4274()
{
  v23 = v0;
  v1 = v0[3];
  v2 = v1[29];
  v0[5] = v2;
  if (v2)
  {
    v20 = v1[27];
    v21 = v1[28];

    sub_1DB09DE44();

    v22[0] = 0xD00000000000001CLL;
    v22[1] = 0x80000001DB0C4E50;
    MEMORY[0x1E127FE90](v1[19], v1[20]);
    LOBYTE(v22[0]) = 1;
    CoreODILogger.debug(_:category:)(0xD00000000000001CLL, 0x80000001DB0C4E50, v22);

    v3 = *(MEMORY[0x1E69E86A8] + 4);
    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C0, &qword_1DB0A2950);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    *v4 = v0;
    v4[1] = sub_1DAFA4570;
    v7 = v0[2];
    v8 = MEMORY[0x1E69E7288];
    v9 = v2;
  }

  else
  {
    v10 = v0[4];
    v11 = sub_1DB09DA24();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = sub_1DAFA7368(qword_1EE301500, v12, type metadata accessor for ProfileManager);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    swift_retain_n();
    v15 = sub_1DAF5B56C(0, 0, v10, &unk_1DB0A8B60, v14);
    v0[8] = v15;
    v16 = v1[29];
    v1[29] = v15;

    v17 = *(MEMORY[0x1E69E86A8] + 4);
    v18 = swift_task_alloc();
    v0[9] = v18;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C0, &qword_1DB0A2950);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    *v18 = v0;
    v18[1] = sub_1DAFA4708;
    v7 = v0[2];
    v8 = MEMORY[0x1E69E7288];
    v9 = v15;
  }

  return MEMORY[0x1EEE6DA10](v7, v9, v5, v6, v8);
}

uint64_t sub_1DAFA4570()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1DAFA48A0;
  }

  else
  {
    v6 = sub_1DAFA469C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFA469C()
{
  v1 = v0[5];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAFA4708()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1DAFA490C;
  }

  else
  {
    v6 = sub_1DAFA4834;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFA4834()
{
  v1 = v0[8];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAFA48A0()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFA490C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFA4978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return sub_1DAFA4A14(a1);
}

uint64_t sub_1DAFA4A14(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA4A34, v1, 0);
}

uint64_t sub_1DAFA4A34()
{
  v1 = v0[21];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = v1[19];
  v0[22] = v4;
  v5 = v1[20];
  v0[23] = v5;
  v6 = *(v3 + 24);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1DAFA4B7C;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_1DAFA4B7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v6 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {

    v7 = swift_task_alloc();
    v4[28] = v7;
    *v7 = v6;
    v7[1] = sub_1DAFA4F50;
    v8 = v4[21];

    return sub_1DAFA3518();
  }

  else
  {
    v10 = v4[21];

    return MEMORY[0x1EEE6DFA0](sub_1DAFA4D04, v10, 0);
  }
}

uint64_t sub_1DAFA4D04()
{
  v25 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v21 = *(v3 + 216);
  v22 = *(v3 + 224);

  sub_1DB09DE44();

  v23[0] = 0xD000000000000001;
  v23[1] = 0x80000001DB0C4C70;
  MEMORY[0x1E127FE90](v2, v1);
  CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C4C70, v23);

  if (qword_1ECC0E0F0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = byte_1EE30A058;
  v8 = *&byte_1EE30A048;
  *(v0 + 16) = xmmword_1EE30A038;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  sub_1DAFA5998(v6, v4, v0 + 16, v24);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  if (v5)
  {
    sub_1DAF40780(*(v0 + 200), *(v0 + 208));
  }

  else
  {
    v12 = *(v0 + 160);
    v12[3] = &type metadata for ProfileSetObject;
    v12[4] = sub_1DAFA70BC();
    v13 = swift_allocObject();
    *v12 = v13;
    sub_1DAF40780(v9, v10);
    v14 = v24[9];
    v13[9] = v24[8];
    v13[10] = v14;
    v15 = v24[11];
    v13[11] = v24[10];
    v13[12] = v15;
    v16 = v24[5];
    v13[5] = v24[4];
    v13[6] = v16;
    v17 = v24[7];
    v13[7] = v24[6];
    v13[8] = v17;
    v18 = v24[1];
    v13[1] = v24[0];
    v13[2] = v18;
    v19 = v24[3];
    v13[3] = v24[2];
    v13[4] = v19;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DAFA4EE8()
{
  sub_1DAFA70A4(*(v0 + 232), *(v0 + 240), *(v0 + 49));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA4F50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 224);
  v6 = *(*v3 + 168);
  v8 = *v3;
  *(v4 + 232) = a1;
  *(v4 + 240) = a2;
  *(v4 + 49) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA506C, v6, 0);
}

uint64_t sub_1DAFA506C()
{
  v1 = *(v0 + 49);
  if (v1 == 255)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v8 = *(v0 + 152);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[56 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x80000001DB0C4C00;
    *(v14 + 6) = 0xD000000000000026;
    *(v14 + 7) = 0x80000001DB0C4C20;
    *(v14 + 8) = 0xD000000000000018;
    *(v14 + 9) = 0x80000001DB0C4C50;
    *(v14 + 10) = 162;
    *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 88) = v8;
    sub_1DAF40D20((v0 + 88), (v0 + 120));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 120), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1DB09D6B4();
    v18 = sub_1DB09D604();
    [v16 initWithDomain:v17 code:-3151 userInfo:v18];

    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFA53C4;
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);

    return sub_1DB00114C(v5, v6, v3, v4, v1 & 1);
  }
}

uint64_t sub_1DAFA53C4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_1DAFA54F0;
  }

  else
  {
    v6 = sub_1DAFA4EE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFA54F0()
{
  sub_1DAFA70A4(*(v0 + 232), *(v0 + 240), *(v0 + 49));
  v1 = *(v0 + 256);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFA5558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v29[0] = a4;
  v5 = type metadata accessor for ODISignpost();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v29 - v13;
  *(v10 + 4) = "enableTelemetry=YES";
  *(v10 + 5) = 19;
  v10[48] = 2;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v15;
  v10[16] = v16;
  v17 = *(a3 + 24);
  *(v10 + 3) = v17;
  v18 = *(v12 + 28);
  sub_1DAFA7110(a3, v30);
  v19 = v17;
  sub_1DB09D474();
  LOBYTE(a3) = *(a3 + 32);
  sub_1DB09DC14();
  if (a3)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v10, v14);
  v20 = sub_1DB09D3D4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1DB09D3C4();
  sub_1DB09D3A4();
  sub_1DAFA731C();
  sub_1DB09D3B4();

  sub_1DB09DC04();
  v23 = *(v14 + 3);
  v24 = *v14;
  v25 = *(v14 + 1);
  v26 = *(v5 + 28);
  v27 = v14[16];
  sub_1DB09D464();
  return sub_1DAF60868(v14);
}

uint64_t sub_1DAFA577C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v29[0] = a4;
  v5 = type metadata accessor for ODISignpost();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v29 - v13;
  *(v10 + 4) = "enableTelemetry=YES";
  *(v10 + 5) = 19;
  v10[48] = 2;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v15;
  v10[16] = v16;
  v17 = *(a3 + 24);
  *(v10 + 3) = v17;
  v18 = *(v12 + 28);
  sub_1DAFA7110(a3, v30);
  v19 = v17;
  sub_1DB09D474();
  LOBYTE(a3) = *(a3 + 32);
  sub_1DB09DC14();
  if (a3)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v10, v14);
  v20 = sub_1DB09D3D4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1DB09D3C4();
  sub_1DAFA72C8();
  sub_1DB09D3B4();

  sub_1DB09DC04();
  v23 = *(v14 + 3);
  v24 = *v14;
  v25 = *(v14 + 1);
  v26 = *(v5 + 28);
  v27 = v14[16];
  sub_1DB09D464();
  return sub_1DAF60868(v14);
}

uint64_t sub_1DAFA5998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v29[0] = a4;
  v5 = type metadata accessor for ODISignpost();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v29 - v13;
  *(v10 + 4) = "enableTelemetry=YES";
  *(v10 + 5) = 19;
  v10[48] = 2;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v15;
  v10[16] = v16;
  v17 = *(a3 + 24);
  *(v10 + 3) = v17;
  v18 = *(v12 + 28);
  sub_1DAFA7110(a3, v30);
  v19 = v17;
  sub_1DB09D474();
  LOBYTE(a3) = *(a3 + 32);
  sub_1DB09DC14();
  if (a3)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v10, v14);
  v20 = sub_1DB09D3D4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1DB09D3C4();
  sub_1DAFA716C();
  sub_1DB09D3B4();

  sub_1DB09DC04();
  v23 = *(v14 + 3);
  v24 = *v14;
  v25 = *(v14 + 1);
  v26 = *(v5 + 28);
  v27 = v14[16];
  sub_1DB09D464();
  return sub_1DAF60868(v14);
}

uint64_t sub_1DAFA5BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA5BDC, 0, 0);
}

uint64_t sub_1DAFA5BDC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1DAF912E4;
  v7 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];

  return v12(v10, v9, v7, v8, v2, v3);
}

uint64_t sub_1DAFA5D0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
  v2 = v0[26];

  v3 = v0[28];

  v4 = v0[29];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFA5D90()
{
  v1[28] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v4 = *(v3 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFA5E68, v0, 0);
}

uint64_t sub_1DAFA5E68(uint64_t a1, uint64_t a2)
{
  v3 = v2[28];
  v4 = *(v3 + 192);
  if (v4)
  {
    v5 = *(v3 + 184);
    v7 = v2[31];
    v6 = v2[32];

    v8 = v2[1];

    return v8(v5, v4);
  }

  else if (*(v3 + 168))
  {
    v10 = sub_1DAFA7368(&qword_1ECC0E9C0, a2, type metadata accessor for ServerTimeSeedProvider);
    v11 = *(MEMORY[0x1E69E88D0] + 4);
    v12 = swift_task_alloc();
    v2[37] = v12;
    *v12 = v2;
    v12[1] = sub_1DAFA69C8;
    v13 = v2[28];
    v14 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v12, v3, v10, 0xD000000000000013, 0x80000001DB0C4DF0, sub_1DAFA73B0, v13, v14);
  }

  else
  {
    *(v3 + 168) = 1;
    v15 = *__swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
    v16 = swift_task_alloc();
    v2[33] = v16;
    *v16 = v2;
    v16[1] = sub_1DAFA606C;

    return sub_1DB000748();
  }
}

uint64_t sub_1DAFA606C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  v6[34] = a1;
  v6[35] = v2;

  v9 = v5[28];
  if (v2)
  {
    v10 = sub_1DAFA62FC;
  }

  else
  {
    v6[36] = a2;
    v10 = sub_1DAFA61B0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DAFA61B0()
{
  v1 = v0[36];
  v2 = v0[28];
  v3 = *(v2 + 192);
  *(v2 + 184) = v0[34];
  *(v2 + 192) = v1;

  *(v2 + 168) = 0;
  v4 = *(v2 + 176);
  v5 = *(v4 + 16);
  if (v5)
  {
    v19 = v1;
    v6 = v0[30];
    v9 = *(v6 + 16);
    v7 = v6 + 16;
    v8 = v9;
    v10 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);

    do
    {
      v12 = v0[32];
      v13 = v0[29];
      v8(v12, v10, v13);
      sub_1DB09D9B4();
      (*(v7 - 8))(v12, v13);
      v10 += v11;
      --v5;
    }

    while (v5);

    v1 = v19;
  }

  v14 = v0[34];
  v16 = v0[31];
  v15 = v0[32];

  v17 = v0[1];

  return v17(v14, v1);
}

uint64_t sub_1DAFA62FC()
{
  v66 = v0;
  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 280);
  if (v3)
  {
    v5 = *(v0 + 224);

    v6 = *(v5 + 208);
    v64 = *(v5 + 200);
    v65 = v6;
    LOBYTE(v63[0]) = 1;

    CoreODILogger.error(_:category:)(0xD00000000000001CLL, 0x80000001DB0C4E10, v63);

    goto LABEL_23;
  }

  v7 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 280);
  v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v10 = v8;
  v11 = sub_1DB09CE64();
  v12 = [v11 domain];
  v13 = sub_1DB09D6C4();
  v15 = v14;

  if (v13 == 0x726F72724549444FLL && v15 == 0xE800000000000000)
  {

    goto LABEL_9;
  }

  v16 = sub_1DB09E254();

  if (v16)
  {
LABEL_9:
    v17 = *(v0 + 280);
    ODIErrorCode.init(rawValue:)([v11 code]);
    v18 = [v11 userInfo];
    v19 = sub_1DB09D624();

    if (v64 == 211)
    {
      v20 = 128;
    }

    else
    {
      v20 = v64 ^ 0x80u;
    }

    goto LABEL_13;
  }

  v21 = *(v0 + 280);
  v22 = *MEMORY[0x1E696AA08];
  v23 = sub_1DB09D6C4();
  v25 = v24;
  *(v0 + 40) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 16) = v11;
  sub_1DAF40D20((v0 + 16), (v0 + 48));
  v26 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v9;
  sub_1DAF3B11C((v0 + 48), v23, v25, isUniquelyReferenced_nonNull_native);

  v19 = v9;
  v20 = 128;
LABEL_13:
  v62 = v20;
  if (*(v19 + 16) && (v28 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v29 & 1) != 0) && (sub_1DAF409DC(*(v19 + 56) + 32 * v28, v0 + 80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v30 = *(v0 + 216);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1DAF72EC0(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1DAF72EC0((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[56 * v32];
  *(v33 + 4) = 0xD000000000000012;
  *(v33 + 5) = 0x80000001DB0C4DD0;
  *(v33 + 6) = 0xD000000000000026;
  *(v33 + 7) = 0x80000001DB0C4C20;
  *(v33 + 8) = 0xD000000000000013;
  *(v33 + 9) = 0x80000001DB0C4DF0;
  *(v33 + 10) = 234;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 112) = v30;
  sub_1DAF40D20((v0 + 112), (v0 + 144));
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v19;
  sub_1DAF3B11C((v0 + 144), 0x636F766E4949444FLL, 0xEE00736E6F697461, v34);
  v35 = qword_1DB0A8B68[v62];
  v36 = *(v0 + 280);
  v37 = *(v0 + 224);
  v38 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v39 = sub_1DB09D6B4();
  v40 = sub_1DB09D604();
  v41 = [v38 initWithDomain:v39 code:v35 userInfo:v40];

  v42 = *(v37 + 208);
  v63[0] = *(v37 + 200);
  v63[1] = v42;
  v64 = 0x203A726F727245;
  v65 = 0xE700000000000000;
  swift_getErrorValue();
  v44 = *(v0 + 176);
  v43 = *(v0 + 184);
  v45 = *(v0 + 192);

  v46 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v46);

  LOBYTE(v64) = 1;
  CoreODILogger.error(_:category:)(0x203A726F727245, 0xE700000000000000, &v64);

LABEL_23:
  v47 = *(v0 + 224);
  *(v47 + 168) = 0;
  v48 = *(v47 + 176);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = *(v0 + 240);
    v53 = *(v50 + 16);
    v51 = v50 + 16;
    v52 = v53;
    v54 = v48 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v55 = *(v51 + 56);

    do
    {
      v56 = *(v0 + 248);
      v57 = *(v0 + 232);
      v52(v56, v54, v57);
      sub_1DB09D9B4();
      (*(v51 - 8))(v56, v57);
      v54 += v55;
      --v49;
    }

    while (v49);
  }

  v59 = *(v0 + 248);
  v58 = *(v0 + 256);

  v60 = *(v0 + 8);

  return v60(0, 0);
}

uint64_t sub_1DAFA69C8()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA6AD8, v2, 0);
}

uint64_t sub_1DAFA6AD8()
{
  v1 = v0[28];
  v3 = *(v1 + 184);
  v2 = *(v1 + 192);
  v5 = v0[31];
  v4 = v0[32];

  v6 = v0[1];

  return v6(v3, v2);
}

uint64_t sub_1DAFA6B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + 168) != 1)
  {
    return sub_1DB09D9B4();
  }

  (*(v5 + 16))(v9, a1, v4);
  v10 = *(a2 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 176) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DAF736D4(0, v10[2] + 1, 1, v10);
    *(a2 + 176) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DAF736D4(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
  *(a2 + 176) = v10;
  return result;
}

uint64_t sub_1DAFA6D30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[20];

  v2 = v0[22];

  v3 = v0[24];

  v4 = v0[26];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFA6DAC(uint64_t a1, uint64_t a2)
{
  result = sub_1DAFA7368(qword_1EE301500, a2, type metadata accessor for ProfileManager);
  *(a1 + 8) = result;
  return result;
}

void *sub_1DAFA6E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  v14 = type metadata accessor for DIPAssessmentStaticWebService();
  v39 = v14;
  v40 = &off_1F56C4838;
  *&v38 = a3;
  swift_defaultActor_initialize();
  a5[27] = 45;
  a5[28] = 0xE100000000000000;
  a5[29] = 0;
  sub_1DAF3523C(&v38, v36);
  v15 = v37;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v35[3] = v14;
  v35[4] = &off_1F56C4838;
  v35[0] = v21;
  type metadata accessor for ServerTimeSeedProvider();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v35, v14);
  v24 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v23);
  v26 = (&v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v33 = v14;
  v34 = &off_1F56C4838;
  *&v32 = v28;

  swift_defaultActor_initialize();
  v29 = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 176) = v29;
  *(v22 + 184) = 0;
  *(v22 + 192) = 0;
  *(v22 + 200) = 45;
  *(v22 + 208) = 0xE100000000000000;
  sub_1DAF332B8(&v32, v22 + 112);
  *(v22 + 152) = a1;
  *(v22 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  a5[26] = v22;
  sub_1DAF332B8(&v38, (a5 + 14));
  sub_1DAF332B8(&v41, (a5 + 21));
  a5[19] = a1;
  a5[20] = a2;
  return a5;
}

uint64_t sub_1DAFA70A4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DAF6286C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1DAFA70BC()
{
  result = qword_1ECC0E988;
  if (!qword_1ECC0E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E988);
  }

  return result;
}

unint64_t sub_1DAFA716C()
{
  result = qword_1ECC0E990;
  if (!qword_1ECC0E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E990);
  }

  return result;
}

unint64_t sub_1DAFA71C0()
{
  result = qword_1EE302DA8;
  if (!qword_1EE302DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DA8);
  }

  return result;
}

unint64_t sub_1DAFA72C8()
{
  result = qword_1ECC0E9B0;
  if (!qword_1ECC0E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9B0);
  }

  return result;
}

unint64_t sub_1DAFA731C()
{
  result = qword_1ECC0E9B8;
  if (!qword_1ECC0E9B8)
  {
    sub_1DB09D3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9B8);
  }

  return result;
}

uint64_t sub_1DAFA7368(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAFA73B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFA4978(a1);
}

uint64_t getEnumTagSinglePayload for DIPCertUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPCertUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAFA75BC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 851968;
  v3 = a1;
  switch(a1)
  {
    case 1u:
      v1 = 0;
      v2 = 917504;
      v3 = 256;
      break;
    case 2u:
      v1 = 0;
      v2 = 917504;
      v3 = 512;
      break;
    case 3u:
      v1 = 0;
      v2 = 917504;
      v3 = 768;
      break;
    case 4u:
      v1 = 0;
      v2 = 917504;
      v3 = 1024;
      break;
    case 5u:
      v1 = 0;
      v2 = 917504;
      v3 = 1280;
      break;
    case 6u:
      v1 = 0;
      v2 = 917504;
      v3 = 1536;
      break;
    case 7u:
      v1 = 0;
      v2 = 917504;
      v3 = 1792;
      break;
    case 8u:
      v1 = 0;
      v2 = 917504;
      v3 = 2048;
      break;
    case 9u:
      v1 = 0;
      v2 = 917504;
      v3 = 2304;
      break;
    case 0xAu:
      v2 = 0x100000;
      v3 = 4096;
      v1 = 1;
      break;
    case 0xBu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DB0A04E0;
      v6 = 3;
      goto LABEL_15;
    case 0xCu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1DB0A04E0;
      v1 = 3;
      *(v7 + 32) = SecPolicyCreateRevocation(3uLL);
      v2 = 0x100000;
      v3 = 4096;
      break;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DB0A04E0;
      v6 = 16;
LABEL_15:
      *(v5 + 32) = SecPolicyCreateRevocation(v6);
      v2 = 0x100000;
      v3 = 4096;
      v1 = 2;
      break;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1DB0A04E0;
      *(v4 + 32) = SecPolicyCreateRevocation(0x10uLL);
      v2 = 0x100000;
      v3 = 4096;
      v1 = 3;
      break;
    case 0xFu:
      v1 = 0;
      v2 = 917504;
      v3 = 2816;
      break;
    case 0x10u:
      v1 = 0;
      v2 = 917504;
      v3 = 3072;
      break;
    default:
      return v3 | v1 | v2;
  }

  return v3 | v1 | v2;
}

unint64_t sub_1DAFA77FC(char a1)
{
  result = 0x6449746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x696E6769536F6E69;
      break;
    case 6:
      result = 0x7972636E456F6E69;
      break;
    case 7:
      result = 0x6E696E6769537073;
      break;
    case 8:
      result = 0x707972636E457073;
      break;
    case 9:
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAFA7A10(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAFA77FC(*a1);
  v5 = v4;
  if (v3 == sub_1DAFA77FC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DAFA7A98()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFA77FC(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFA7AFC()
{
  sub_1DAFA77FC(*v0);
  sub_1DB09D794();
}

uint64_t sub_1DAFA7B50()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFA77FC(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFA7BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAFA8F64();
  *a2 = result;
  return result;
}

unint64_t sub_1DAFA7BE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAFA77FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAFA7C10()
{
  result = qword_1ECC0E9C8;
  if (!qword_1ECC0E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9C8);
  }

  return result;
}

unint64_t sub_1DAFA7C64(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 7:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

__CFError *sub_1DAFA7D80(unint64_t a1, int a2, __SecTrust *a3)
{
  v123 = a3;
  LODWORD(v3) = a2;
  trust[10] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ODISignpost();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v117 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9D0, &unk_1DB0A9420);
  inited = swift_initStackObject();
  v122 = xmmword_1DB0A04E0;
  *(inited + 1) = xmmword_1DB0A04E0;
  *(inited + 32) = 17;
  *(inited + 8) = &type metadata for DIPCertUsage;
  *(inited + 40) = v3;
  v15 = sub_1DAF3E3C8(inited);
  swift_setDeallocating();
  sub_1DAFA8FB8(inited + 32);
  v128 = v15;
  if (a1 >> 62)
  {
    v16 = sub_1DB09DD44();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 >= 1)
  {
    v17 = sub_1DAFA75BC(v3);

    v120 = v3;
    v121 = v5;
    if (v17 > 1u)
    {
      v131 = 0x657261685369646FLL;
      v132 = 0xEF726567676F4C64;
      LOBYTE(error) = 16;
      if (v17 == 2)
      {
        CoreODILogger.debug(_:category:)(0xD00000000000001BLL, 0x80000001DB0C5160, &error);
      }

      else
      {
        CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0C4F00, &error);
      }

      MDLTerminalAuth = SecPolicyCreateMDLTerminalAuth();
    }

    else if (v17)
    {
      v131 = 0x657261685369646FLL;
      v132 = 0xEF726567676F4C64;
      LOBYTE(error) = 16;
      CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0C5180, &error);

      MDLTerminalAuth = DIPSecPolicyCreateApplePayModelSigning();
    }

    else
    {
      v131 = 0x657261685369646FLL;
      v132 = 0xEF726567676F4C64;
      LOBYTE(error) = 16;
      CoreODILogger.debug(_:category:)(0xD00000000000001BLL, 0x80000001DB0C51A0, &error);

      v18 = sub_1DAFA75BC(v3) >> 16;

      if (v18 == 16)
      {
        v19 = 0;
      }

      else
      {
        sub_1DAFA7C64(v18);
        v19 = sub_1DB09D6B4();
      }

      v21 = v15;
      v22 = sub_1DAFA75BC(v3) >> 8;

      if (v22 == 16)
      {
        v23 = 0;
      }

      else
      {
        sub_1DAFA7C64(v22);
        v23 = sub_1DB09D6B4();
        LOBYTE(v3) = v120;
      }

      sub_1DAFA77FC(v3);
      v3 = sub_1DB09D6B4();

      ApplePinned = DIPSecPolicyCreateApplePinned();

      MDLTerminalAuth = ApplePinned;
      LOBYTE(v3) = v120;
      v15 = v21;
    }

    v119 = v15;
    v25 = MDLTerminalAuth;
    v26 = sub_1DAFA75BC(v3);
    v127 = v27;
    MEMORY[0x1E127FFD0](v26);
    if (*(v127 + 16) >= *(v127 + 24) >> 1)
    {
      sub_1DB09D954();
    }

    v124 = v25;
    sub_1DB09D974();
    v28 = v127;
    trust[0] = 0;
    type metadata accessor for SecCertificate(0);
    v29 = sub_1DB09D914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9D8, &unk_1DB0A9430);
    v30 = sub_1DB09D914();
    v31 = SecTrustCreateWithCertificates(v29, v30, trust);

    if (v31 || (v32 = trust[0]) == 0)
    {

      v133 = MEMORY[0x1E69E72F0];
      LODWORD(v131) = v31;
      sub_1DAF33FE8(&v131, 20);
      v131 = 0;
      v132 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000034, 0x80000001DB0C4F20);
      v41 = SecCopyErrorMessageString(v31, 0);
      if (v41)
      {
        v42 = v41;
        v43 = sub_1DB09D6C4();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      error = v43;
      v130 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
      sub_1DB09DF94();

      v46 = v131;
      LOWORD(v131) = 121;
      inited = v128;
      DIPError(_:fromError:code:forceCode:properties:file:function:line:)(v46, v132, 0, &v131, 0, v128, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 314);

      swift_willThrow();
      goto LABEL_59;
    }

    if (v123)
    {
      v33 = trust[0];
      v34 = sub_1DB09D914();
      v123 = v33;
      v35 = SecTrustSetAnchorCertificates(v33, v34);

      if (v35)
      {

        v133 = MEMORY[0x1E69E72F0];
        LODWORD(v131) = v35;
        sub_1DAF33FE8(&v131, 20);
        v131 = 0;
        v132 = 0xE000000000000000;
        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0xD000000000000035, 0x80000001DB0C5120);
        v36 = SecCopyErrorMessageString(v35, 0);
        if (v36)
        {
          v37 = v36;
          v38 = sub_1DB09D6C4();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        error = v38;
        v130 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
        sub_1DB09DF94();

        v90 = v131;
        LOWORD(v131) = 121;
        inited = v128;
        DIPError(_:fromError:code:forceCode:properties:file:function:line:)(v90, v132, 0, &v131, 0, v128, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 323);

        swift_willThrow();

LABEL_59:
        v91 = v124;
LABEL_64:

        goto LABEL_65;
      }
    }

    else
    {
      v47 = trust[0];
    }

    v117[1] = v28;
    v123 = v32;
    v118 = v13;
    error = 0;
    if (qword_1EE302958 != -1)
    {
      swift_once();
    }

    v48 = qword_1EE30A1B0;
    v49 = *algn_1EE30A1B8;
    v50 = byte_1EE30A1C0;
    v51 = qword_1EE30A1C8;
    v52 = byte_1EE30A1D0;
    *(v10 + 4) = "enableTelemetry=YES";
    *(v10 + 5) = 19;
    v10[48] = 2;
    *v10 = v48;
    *(v10 + 1) = v49;
    v10[16] = v50;
    *(v10 + 3) = v51;
    v53 = *(v121 + 28);
    v54 = v51;
    sub_1DB09D474();
    sub_1DB09DC14();
    if (v52 == 1)
    {
      sub_1DB09D454();
    }

    else
    {
      sub_1DB09D464();
    }

    v55 = v118;
    sub_1DAF5F604(v10, v118);
    v56 = v123;
    v57 = SecTrustEvaluateWithError(v123, &error);
    sub_1DB09DC04();
    v58 = *(v55 + 24);
    v59 = *v55;
    v60 = *(v55 + 8);
    v61 = *(v121 + 28);
    v62 = *(v55 + 16);
    sub_1DB09D464();
    v63 = v124;
    if (error)
    {
      v64 = [objc_opt_self() standardUserDefaults];
      if (qword_1EE301DD8 != -1)
      {
        swift_once();
      }

      if (byte_1EE30A140 == 1)
      {
        v65 = sub_1DB09D6B4();
        v66 = [v64 BOOLForKey_];

        if (v66)
        {

          if (qword_1EE301DE8 != -1)
          {
            swift_once();
          }

          v67 = qword_1EE30A148;
          sub_1DB09DB54();
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
          v68 = swift_allocObject();
          *(v68 + 16) = v122;
          v131 = 0;
          v132 = 0xE000000000000000;
          LOBYTE(result[0]) = v120;
          sub_1DB09DF94();
          v69 = v131;
          v70 = v132;
          *(v68 + 56) = MEMORY[0x1E69E6158];
          v71 = sub_1DAF4DC24();
          *(v68 + 64) = v71;
          *(v68 + 32) = v69;
          *(v68 + 40) = v70;
          sub_1DB09D444();

          inited = v123;
          if (!error)
          {

            sub_1DAF60868(v55);

LABEL_78:

            goto LABEL_65;
          }

          v117[0] = v71;
          *&v122 = v67;
          v131 = MEMORY[0x1E69E7CC0];
          v119 = error;
          sub_1DAF5F4FC(0, v16, 0);
          v72 = v131;
          if ((a1 & 0xC000000000000001) != 0)
          {
            v73 = 0;
            do
            {
              v74 = MEMORY[0x1E1280530](v73, a1);
              v75 = SecCertificateCopyData(v74);
              v76 = sub_1DB09D034();
              v78 = v77;

              v79 = sub_1DB09D014();
              v81 = v80;
              sub_1DAF40780(v76, v78);
              swift_unknownObjectRelease();
              v131 = v72;
              v83 = *(v72 + 16);
              v82 = *(v72 + 24);
              if (v83 >= v82 >> 1)
              {
                sub_1DAF5F4FC((v82 > 1), v83 + 1, 1);
                v72 = v131;
              }

              ++v73;
              *(v72 + 16) = v83 + 1;
              v84 = v72 + 16 * v83;
              *(v84 + 32) = v79;
              *(v84 + 40) = v81;
            }

            while (v16 != v73);
          }

          else
          {
            v97 = (a1 + 32);
            do
            {
              v98 = *v97;
              v99 = SecCertificateCopyData(v98);
              v100 = sub_1DB09D034();
              v102 = v101;

              v103 = sub_1DB09D014();
              v105 = v104;
              sub_1DAF40780(v100, v102);

              v131 = v72;
              v107 = *(v72 + 16);
              v106 = *(v72 + 24);
              if (v107 >= v106 >> 1)
              {
                sub_1DAF5F4FC((v106 > 1), v107 + 1, 1);
                v72 = v131;
              }

              *(v72 + 16) = v107 + 1;
              v108 = v72 + 16 * v107;
              *(v108 + 32) = v103;
              *(v108 + 40) = v105;
              ++v97;
              --v16;
            }

            while (v16);
          }

          sub_1DB09DB64();
          v109 = swift_allocObject();
          *(v109 + 16) = xmmword_1DB0A5000;
          v131 = 0;
          v132 = 0xE000000000000000;
          LOBYTE(result[0]) = v120;
          sub_1DB09DF94();
          v110 = v131;
          v111 = v132;
          v112 = MEMORY[0x1E69E6158];
          v113 = v117[0];
          *(v109 + 56) = MEMORY[0x1E69E6158];
          *(v109 + 64) = v113;
          *(v109 + 32) = v110;
          *(v109 + 40) = v111;
          v131 = 0;
          v132 = 0xE000000000000000;
          v114 = v119;
          *result = v119;
          type metadata accessor for CFError(0);
          sub_1DB09DF94();
          v115 = v131;
          v116 = v132;
          *(v109 + 96) = v112;
          *(v109 + 104) = v113;
          *(v109 + 72) = v115;
          *(v109 + 80) = v116;
          *(v109 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
          *(v109 + 144) = sub_1DAFA9078();
          *(v109 + 112) = v72;
          sub_1DB09D444();

          v96 = v118;
LABEL_77:
          sub_1DAF60868(v96);
          inited = v123;
          goto LABEL_78;
        }

        v87 = error;
        if (!error)
        {
          goto LABEL_61;
        }
      }

      else
      {

        v87 = error;
        if (!error)
        {
LABEL_61:
          v88 = 0;
          goto LABEL_62;
        }
      }

      type metadata accessor for CFError(0);
      sub_1DAFA9020();
      v88 = swift_allocError();
      *v89 = v87;
LABEL_62:
      LOWORD(v131) = 210;
      v92 = v87;
      inited = v119;
      DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001ALL, 0x80000001DB0C5020, v88, &v131, 0, v119, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 350);

      swift_willThrow();

      goto LABEL_63;
    }

    result[0] = kSecTrustResultInvalid;
    if (SecTrustGetTrustResult(v56, result))
    {
    }

    else
    {
      v95 = result[0];

      if (v95 == kSecTrustResultUnspecified || v95 == kSecTrustResultProceed)
      {
        if (v57)
        {

          v96 = v55;
          goto LABEL_77;
        }

        LOWORD(v131) = 210;
        inited = v119;
        DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000035, 0x80000001DB0C4FB0, 0, &v131, 0, v119, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 362);

        goto LABEL_54;
      }
    }

    v131 = 0;
    v132 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000041, 0x80000001DB0C4F60);
    v126 = result[0];
    v85 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v85);

    v86 = v131;
    LOWORD(v131) = 210;
    inited = DIPError(_:fromError:code:forceCode:properties:file:function:line:)(v86, v132, 0, &v131, 0, v119, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 358);

LABEL_54:
    swift_willThrow();

LABEL_63:
    sub_1DAF60868(v55);
    v91 = error;
    goto LABEL_64;
  }

  LOWORD(v131) = 210;
  DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000030, 0x80000001DB0C4E70, 0, &v131, 0, v15, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 266);

  swift_willThrow();
LABEL_65:
  v93 = *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t sub_1DAFA8F64()
{
  v0 = sub_1DB09E2B4();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAFA8FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E368, &unk_1DB0A02F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAFA9020()
{
  result = qword_1EE3009F0;
  if (!qword_1EE3009F0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3009F0);
  }

  return result;
}

unint64_t sub_1DAFA9078()
{
  result = qword_1ECC0E9E0;
  if (!qword_1ECC0E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9E0);
  }

  return result;
}

id sub_1DAFA90DC()
{
  v0 = sub_1DB09D2A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1DB09D1E4();
  v7 = sub_1DB09D214();
  (*(v1 + 8))(v5, v0);
  [v6 setLocale_];

  result = [v6 setMaximumFractionDigits_];
  qword_1ECC0E9F0 = v6;
  return result;
}

id sub_1DAFA9218()
{
  v1 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession;
  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v5 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v4);
    v12 = 14;
    v6 = v4;
    v7 = v0;
    Loggable.fault(_:category:)(0xD00000000000003CLL, 0x80000001DB0C5630, &v12, v6, v5);
    v8 = [objc_opt_self() sessionWithConfiguration:*(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_nsurlSessionConfiguration) delegate:v0 delegateQueue:0];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1DAFA9308()
{
  v1 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession;
  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v5 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v4);
    v12 = 14;
    v6 = v4;
    v7 = v0;
    Loggable.fault(_:category:)(0xD000000000000045, 0x80000001DB0C55E0, &v12, v6, v5);
    v8 = [objc_opt_self() sessionWithConfiguration:*(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_anonymousNSURLSessionConfiguration) delegate:v0 delegateQueue:0];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1DAFA93FC()
{
  v1 = *&v0[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24];
  v2 = *&v0[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger], v1);
  sub_1DB09DE44();
  v3 = [v0 debugDescription];
  v4 = sub_1DB09D6C4();
  v6 = v5;

  v14 = v4;
  v15 = v6;
  MEMORY[0x1E127FE90](0xD000000000000015, 0x80000001DB0C5BA0);
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF0, &qword_1DB0A9578);
  v8 = sub_1DB09DC54();
  v10 = v9;

  MEMORY[0x1E127FE90](v8, v10);

  MEMORY[0x1E127FE90](544175136, 0xE400000000000000);
  v11 = sub_1DB09DC54();
  MEMORY[0x1E127FE90](v11);

  v12 = v15;
  sub_1DAFD2A1C(&v14);
  Loggable.debug(_:category:)(v4, v12, &v14, v1, v2);

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DAFA9614()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DB09DE44();
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v14, sel_description);
  v4 = sub_1DB09D6C4();
  v6 = v5;

  MEMORY[0x1E127FE90](v4, v6);

  MEMORY[0x1E127FE90](0x756F656D6974202CLL, 0xEA00000000002074);
  v7 = *&v1[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration];
  sub_1DB09DAC4();
  MEMORY[0x1E127FE90](2108704, 0xE300000000000000);
  v8 = sub_1DAFA9218();
  v9 = [v8 sessionDescription];

  if (v9)
  {
    v10 = sub_1DB09D6C4();
    v12 = v11;
  }

  else
  {
    v12 = 0x80000001DB0C5D10;
    v10 = 0xD00000000000001ALL;
  }

  MEMORY[0x1E127FE90](v10, v12);

  return v15;
}

id sub_1DAFA9784(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession;
    v3 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession);
    if (!v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
      v5 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v4);
      v16 = 14;
      v6 = v4;
      v7 = v1;
      Loggable.fault(_:category:)(0xD000000000000045, 0x80000001DB0C55E0, &v16, v6, v5);
      v8 = [objc_opt_self() sessionWithConfiguration:*(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_anonymousNSURLSessionConfiguration) delegate:v1 delegateQueue:0];
LABEL_9:
      v13 = v8;
      v14 = *(v7 + v2);
      *(v7 + v2) = v13;
      v15 = v13;

      return v15;
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession;
    v3 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession);
    if (!v3)
    {
      v10 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
      v11 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v10);
      v17 = 14;
      v12 = v10;
      v7 = v1;
      Loggable.fault(_:category:)(0xD00000000000003CLL, 0x80000001DB0C5630, &v17, v12, v11);
      v8 = [objc_opt_self() sessionWithConfiguration:*(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_nsurlSessionConfiguration) delegate:v1 delegateQueue:0];
      goto LABEL_9;
    }
  }

  return v3;
}

uint64_t sub_1DAFA992C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 57) = a4;
  *(v5 + 56) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA9958, 0, 0);
}

void sub_1DAFA9958()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = objc_allocWithZone(MEMORY[0x1E696AD68]);
  v4 = sub_1DB09CEE4();
  v5 = [v3 initWithURL_];
  *(v0 + 40) = v5;

  if (v1)
  {
    v6 = *(v0 + 24);
    [*(v0 + 40) setCachePolicy_];
    if (v6)
    {
      v7 = *(v0 + 24);
      v10 = *(v7 + 64);
      v9 = v7 + 64;
      v8 = v10;
      v11 = -1;
      v12 = -1 << *(*(v0 + 24) + 32);
      if (-v12 < 64)
      {
        v11 = ~(-1 << -v12);
      }

      v13 = v11 & v8;
      v14 = (63 - v12) >> 6;
      v33 = *(v0 + 24);

      v15 = 0;
      while (v13)
      {
        v16 = v15;
LABEL_11:
        v17 = *(v0 + 40);
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = (v16 << 10) | (16 * v18);
        v20 = (*(v33 + 48) + v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = (*(v33 + 56) + v19);
        v24 = *v23;
        v25 = v23[1];

        v26 = sub_1DB09D6B4();

        v27 = sub_1DB09D6B4();

        [v17 setValue:v26 forHTTPHeaderField:v27];
      }

      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          goto LABEL_17;
        }

        v13 = *(v9 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v31 = *(v0 + 8);
      v32 = *(v0 + 40);

      v31(v32);
    }
  }

  else
  {
    v28 = swift_task_alloc();
    *(v0 + 48) = v28;
    *v28 = v0;
    v28[1] = sub_1DAFA9BCC;
    v29 = *(v0 + 32);
    v30 = *(v0 + 57);

    sub_1DAFA9E80(v5, v30);
  }
}

uint64_t sub_1DAFA9BCC()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA9CC8, 0, 0);
}

void sub_1DAFA9CC8()
{
  v1 = *(v0 + 24);
  [*(v0 + 40) setCachePolicy_];
  if (v1)
  {
    v22 = v0;
    v2 = *(v0 + 24);
    v3 = -1;
    v4 = -1 << *(v2 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v2 + 64);
    v6 = (63 - v4) >> 6;

    v7 = 0;
    while (v5)
    {
      v8 = v7;
LABEL_10:
      v9 = *(v22 + 40);
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (v8 << 10) | (16 * v10);
      v12 = (*(v2 + 48) + v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*(v2 + 56) + v11);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_1DB09D6B4();

      v19 = sub_1DB09D6B4();

      [v9 setValue:v18 forHTTPHeaderField:v19];
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        v0 = v22;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v20 = *(v0 + 8);
    v21 = *(v0 + 40);

    v20(v21);
  }
}

uint64_t sub_1DAFA9E80(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA9EA4, 0, 0);
}

uint64_t sub_1DAFA9EA4()
{
  if ((*(v0 + 192) & 1) != 0 || *(*(v0 + 80) + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 8) != 1)
  {
    v5 = *(v0 + 72);
    v6 = [objc_opt_self() _deviceLanguage];
    v7 = sub_1DB09D6B4();
    [v5 setValue:v6 forHTTPHeaderField:v7];

    v8 = [v5 HTTPBody];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1DB09D034();
      v12 = v11;

      v13 = v12;
      v14 = v12 >> 62;
      if ((v12 >> 62) <= 1)
      {
        if (!v14)
        {
          sub_1DAF40780(v10, v12);
          v15 = BYTE6(v12);
          goto LABEL_18;
        }

LABEL_14:
        v18 = sub_1DAF40780(v10, v13);
        LODWORD(v15) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v18, v19, v20);
        }

        v15 = v15;
LABEL_18:
        v21 = *(v0 + 72);
        *(v0 + 64) = v15;
        v22 = sub_1DB09E1D4();
        MEMORY[0x1E127FE90](v22);

        v23 = sub_1DB09D6B4();

        v24 = sub_1DB09D6B4();
        [v21 setValue:v23 forHTTPHeaderField:v24];

        if (qword_1EE301710 != -1)
        {
          swift_once();
        }

        v19 = qword_1EE30A060;
        *(v0 + 96) = qword_1EE30A060;
        v18 = sub_1DAFAA4E0;
        v20 = 0;

        return MEMORY[0x1EEE6DFA0](v18, v19, v20);
      }

      if (v14 == 2)
      {
        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        sub_1DAF40780(v10, v13);
        v15 = v16 - v17;
        if (!__OFSUB__(v16, v17))
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_14;
      }

      sub_1DAF40780(v10, v12);
    }

    v15 = 0;
    goto LABEL_18;
  }

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFAA190;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return sub_1DAFAFEF4(v2);
}

uint64_t sub_1DAFAA190()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA28C, 0, 0);
}

uint64_t sub_1DAFAA28C()
{
  v1 = v0[9];
  v2 = [objc_opt_self() _deviceLanguage];
  v3 = sub_1DB09D6B4();
  [v1 setValue:v2 forHTTPHeaderField:v3];

  v4 = [v1 HTTPBody];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_1DB09D034();
  v8 = v7;

  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      sub_1DAF40780(v6, v9);
      v11 = v12 - v13;
      if (!__OFSUB__(v12, v13))
      {
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_9;
    }

    sub_1DAF40780(v6, v8);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (!v10)
  {
    sub_1DAF40780(v6, v8);
    v11 = BYTE6(v8);
    goto LABEL_13;
  }

LABEL_9:
  v14 = sub_1DAF40780(v6, v9);
  LODWORD(v11) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  v11 = v11;
LABEL_13:
  v17 = v0[9];
  v0[8] = v11;
  v18 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v18);

  v19 = sub_1DB09D6B4();

  v20 = sub_1DB09D6B4();
  [v17 setValue:v19 forHTTPHeaderField:v20];

  if (qword_1EE301710 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE30A060;
  v0[12] = qword_1EE30A060;
  v14 = sub_1DAFAA4E0;
  v16 = 0;

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DAFAA4E0()
{
  v1 = v0[12];
  v2 = *(v1 + 120);
  if (v2)
  {
    v0[16] = *(v1 + 112);
    v0[17] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1DAFAA75C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1DAFAA5C0;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAFAA5C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA6D8, v5, 0);
}

uint64_t sub_1DAFAA6D8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = *(v2 + 120);
  *(v2 + 112) = v0[14];
  *(v2 + 120) = v1;

  v4 = v0[15];
  v0[16] = v0[14];
  v0[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA75C, 0, 0);
}

uint64_t sub_1DAFAA75C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[9];
  v4 = sub_1DB09D6B4();

  v5 = sub_1DB09D6B4();
  [v3 setValue:v4 forHTTPHeaderField:v5];

  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE3039B0;
  v0[18] = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA858, v6, 0);
}

uint64_t sub_1DAFAA858()
{
  v1 = *(v0 + 144);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFAAA38, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFAA928;
    v3 = *(v0 + 144);

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFAA928()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v5 = *v0;

  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1DAFAAA38, v3, 0);
}

uint64_t sub_1DAFAAA38()
{
  v1 = v0[18];
  v2 = sub_1DAFB3448();
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v1;
  v3[3] = 0xD000000000000010;
  v3[4] = 0x80000001DB0C5B20;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v5 = v0;
  v5[1] = sub_1DAFAAB6C;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v6);
}

uint64_t sub_1DAFAAB6C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v5 = *v0;

  *(v1 + 176) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAFAAC8C, 0, 0);
}

uint64_t sub_1DAFAAC8C()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 72);
    v3 = *(v0 + 184);
    v4 = sub_1DB09D6B4();

    v5 = sub_1DB09D6B4();
    [v2 setValue:v4 forHTTPHeaderField:v5];
  }

  [*(v0 + 72) ak_addClientInfoHeader];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1DB09D6B4();
  v8 = [v6 stringForKey_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = sub_1DB09D6C4();
  v11 = v10;

  *(v0 + 32) = v9;
  *(v0 + 40) = v11;
  *(v0 + 48) = 1685025392;
  *(v0 + 56) = 0xE400000000000000;
  sub_1DAF9C5EC();
  v12 = sub_1DB09DCB4();

  if (v12)
  {
LABEL_5:
    v13 = *(v0 + 72);
    v14 = sub_1DB09D6B4();
    v15 = sub_1DB09D6B4();
    [v13 setValue:v14 forHTTPHeaderField:v15];
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DAFAAE8C(uint64_t a1, char a2, char a3, _BYTE *a4)
{
  *(v5 + 82) = a3;
  *(v5 + 81) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = v4;
  v7 = sub_1DB09CBF4();
  *(v5 + 104) = v7;
  v8 = *(v7 - 8);
  *(v5 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v10 = sub_1DB09CF64();
  *(v5 + 128) = v10;
  v11 = *(v10 - 8);
  *(v5 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530) - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 83) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAB000, 0, 0);
}

uint64_t sub_1DAFAB000()
{
  v72 = v0;
  v1 = *(v0 + 88);
  sub_1DAF3523C(*(v0 + 96) + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v0 + 16);
  v68 = *(v0 + 48);
  v69 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v69);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C5670);
  v2 = [v1 HTTPMethod];
  v3 = sub_1DB09D6C4();
  v5 = v4;

  MEMORY[0x1E127FE90](v3, v5);

  MEMORY[0x1E127FE90](32, 0xE100000000000000);
  v6 = [v1 URL];
  if (v6)
  {
    v7 = *(v0 + 152);
    v8 = v6;
    sub_1DB09CF04();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  (*(v12 + 56))(v11, v9, 1, v13);
  sub_1DAF624E8(v11, v10, &unk_1ECC0EAB0, &qword_1DB0A9530);
  v14 = (*(v12 + 48))(v10, 1, v13);
  v15 = *(v0 + 160);
  if (v14)
  {
    sub_1DAF40AEC(*(v0 + 160), &unk_1ECC0EAB0, &qword_1DB0A9530);
    v16 = 0xED0000676E697274;
    v17 = 0x53204C5255206F4ELL;
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    (*(v18 + 16))(v19, *(v0 + 160), v20);
    sub_1DAF40AEC(v15, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v17 = sub_1DB09CEA4();
    v16 = v21;
    (*(v18 + 8))(v19, v20);
  }

  v66 = *(v0 + 83);
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v67 = *(v0 + 104);
  v24 = *(v0 + 82);
  v25 = *(v0 + 81);
  v64 = *(v0 + 81);
  v26 = *(v0 + 88);
  v65 = *(v0 + 96);
  MEMORY[0x1E127FE90](v17, v16);

  MEMORY[0x1E127FE90](0x65726F6E67692820, 0xEF203A6568636143);
  if (v25)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v25)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v27, v28);

  MEMORY[0x1E127FE90](0x6E6F6E417369202CLL, 0xEF203A73756F6D79);
  if (v24)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v24)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v29, v30);

  v31 = v70;
  LOBYTE(v70) = 17;
  (*(v68 + 32))(v31, v71, &v70, v69);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DB09CBA4();
  LOBYTE(v70) = v66;
  v32 = sub_1DAFAB868(v23, &v70);
  v34 = v33;
  *(v0 + 168) = v32;
  (*(v22 + 8))(v23, v67);
  if ((v64 & 1) != 0 || (v34 & 1) == 0)
  {
    if (v32)
    {
      v46 = qword_1EE304378;
      v47 = v32;
      if (v46 != -1)
      {
        swift_once();
      }

      sub_1DAFE63DC(v47);
      if (v48)
      {
        v49 = *(v0 + 88);
        v50 = sub_1DB09D6B4();

        v51 = sub_1DB09D6B4();
        [v49 addValue:v50 forHTTPHeaderField:v51];
      }
    }
  }

  else if (v32)
  {
    v35 = [v32 data];
    v36 = sub_1DB09D034();
    v38 = v37;

    v39 = [v32 response];
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);

    v44 = *(v0 + 8);

    return v44(v36, v38, v39, 1);
  }

  v53 = *(v0 + 88);
  v52 = *(v0 + 96);
  v54 = *&v52[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier];
  v55 = *&v52[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier + 8];
  v56 = v52[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier + 16];
  v57 = v32;
  v58 = v52;
  v59 = v53;
  v60 = swift_task_alloc();
  *(v0 + 176) = v60;
  *v60 = v0;
  v60[1] = sub_1DAFAB5FC;
  v61 = *(v0 + 82);
  v63 = *(v0 + 88);
  v62 = *(v0 + 96);

  return sub_1DAF9CF6C(v0 + 56, v54, v55, v56, v62, v63, v61, v32);
}

uint64_t sub_1DAFAB5FC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1DAFAB7D0;
  }

  else
  {
    v3 = sub_1DAFAB710;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFAB710()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);

  v9 = *(v0 + 8);

  return v9(v2, v1, v3, v4);
}

uint64_t sub_1DAFAB7D0()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 120);

  v5 = *(v0 + 8);
  v6 = *(v0 + 184);

  return v5();
}

id sub_1DAFAB868(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v122 - v7;
  v9 = sub_1DB09D154();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v133 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v122 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v23 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v31 = MEMORY[0x1EEE9AC00](&v122 - v29, v30);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v122 - v34;
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v42 = &v122 - v41;
  if (*(v2 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 10) != 1)
  {
    return 0;
  }

  v129 = v38;
  v130 = v8;
  v124 = v37;
  v125 = v40;
  v127 = v17;
  v128 = v39;
  v131 = v9;
  v126 = *a2;
  v43 = objc_opt_self();
  v44 = [v43 standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  v45 = byte_1EE30A140;
  v132 = v10;
  if (byte_1EE30A140 == 1)
  {
    v46 = sub_1DB09D6B4();
    v47 = [v44 BOOLForKey_];

    if (v47)
    {
      return 0;
    }
  }

  else
  {
  }

  v48 = v2;
  v49 = sub_1DB09CB64();
  if (!v50)
  {
    return 0;
  }

  if (v49 == 5522759 && v50 == 0xE300000000000000)
  {

    goto LABEL_13;
  }

  v52 = sub_1DB09E254();

  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (qword_1EE304378 != -1)
  {
    swift_once();
  }

  v53 = qword_1EE30A1E0;
  v54 = sub_1DB09CB84();
  v55 = [v53 cachedResponseForRequest_];

  if (!v55)
  {
    sub_1DAF3523C(v48 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v138);
    v64 = v139;
    v65 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    *&v136 = 0;
    *(&v136 + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v136 = 0xD00000000000001CLL;
    *(&v136 + 1) = 0x80000001DB0C5A00;
    sub_1DB09CBC4();
    v66 = sub_1DB09CF64();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v23, 1, v66) == 1)
    {
      sub_1DAF40AEC(v23, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v68 = 0;
      v69 = 0xE000000000000000;
    }

    else
    {
      v92 = sub_1DB09CEA4();
      v69 = v93;
      (*(v67 + 8))(v23, v66);
      v68 = v92;
    }

    MEMORY[0x1E127FE90](v68, v69);

    v94 = v136;
    sub_1DAFD2A1C(&v136);
    Loggable.debug(_:category:)(v94, *(&v94 + 1), &v136, v64, v65);

    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    return 0;
  }

  v123 = v55;
  v56 = [v43 standardUserDefaults];
  v57 = v56;
  if (v45)
  {
    v58 = sub_1DB09D6B4();
    v59 = [v57 BOOLForKey_];

    if (v59)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DB09DB44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1DB0A04E0;
      v61 = [v123 response];
      v62 = [v61 URL];

      if (v62)
      {
        sub_1DB09CF04();

        v63 = sub_1DB09CF64();
        (*(*(v63 - 8) + 56))(v35, 0, 1, v63);
      }

      else
      {
        v63 = sub_1DB09CF64();
        (*(*(v63 - 8) + 56))(v35, 1, 1, v63);
      }

      sub_1DAF624E8(v35, v42, &unk_1ECC0EAB0, &qword_1DB0A9530);
      sub_1DB09CF64();
      v109 = *(v63 - 8);
      if ((*(v109 + 48))(v42, 1, v63) == 1)
      {
        sub_1DAF40AEC(v42, &unk_1ECC0EAB0, &qword_1DB0A9530);
        v110 = 0;
        v111 = 0;
      }

      else
      {
        v110 = sub_1DB09CEA4();
        v111 = v112;
        (*(v109 + 8))(v42, v63);
      }

      *(v60 + 56) = MEMORY[0x1E69E6158];
      *(v60 + 64) = sub_1DAF4DC24();
      v113 = 0x3E6C696E3CLL;
      if (v111)
      {
        v113 = v110;
      }

      v114 = 0xE500000000000000;
      if (v111)
      {
        v114 = v111;
      }

      *(v60 + 32) = v113;
      *(v60 + 40) = v114;
      sub_1DB09D444();

      return v123;
    }
  }

  else
  {
  }

  v70 = [v123 userInfo];
  if (!v70)
  {
    v136 = 0u;
    v137 = 0u;
    v73 = v131;
    goto LABEL_38;
  }

  v71 = v70;
  v72 = sub_1DB09D624();

  v134 = 0x4173657269707865;
  v135 = 0xE900000000000074;
  sub_1DB09DDB4();
  v73 = v131;
  if (!*(v72 + 16) || (v74 = sub_1DAF353E0(v138), (v75 & 1) == 0))
  {

    sub_1DAF4057C(v138);
    v136 = 0u;
    v137 = 0u;
    goto LABEL_38;
  }

  v76 = v48;
  sub_1DAF409DC(*(v72 + 56) + 32 * v74, &v136);
  sub_1DAF4057C(v138);

  if (!*(&v137 + 1))
  {
LABEL_38:
    sub_1DAF40AEC(&v136, &qword_1ECC0E370, &qword_1DB0A09B0);
    v77 = v130;
    (*(v132 + 56))(v130, 1, 1, v73);
    goto LABEL_39;
  }

  v77 = v130;
  v78 = swift_dynamicCast();
  v79 = v132;
  (*(v132 + 56))(v77, v78 ^ 1u, 1, v73);
  if ((*(v79 + 48))(v77, 1, v73) == 1)
  {
LABEL_39:
    sub_1DAF40AEC(v77, &unk_1ECC0EAD0, &qword_1DB0AD520);
LABEL_40:
    v95 = v128;
    v96 = v129;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DB09DB44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1DB0A04E0;
    v98 = [v123 response];
    v99 = [v98 URL];

    if (v99)
    {
      sub_1DB09CF04();

      v100 = 0;
    }

    else
    {
      v100 = 1;
    }

    v101 = MEMORY[0x1E69E6158];
    v102 = sub_1DB09CF64();
    v103 = *(v102 - 8);
    (*(v103 + 56))(v95, v100, 1, v102);
    sub_1DAF624E8(v95, v96, &unk_1ECC0EAB0, &qword_1DB0A9530);
    if ((*(v103 + 48))(v96, 1, v102) == 1)
    {
      sub_1DAF40AEC(v96, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v104 = 0;
      v105 = 0;
    }

    else
    {
      v104 = sub_1DB09CEA4();
      v105 = v106;
      (*(v103 + 8))(v96, v102);
    }

    *(v97 + 56) = v101;
    *(v97 + 64) = sub_1DAF4DC24();
    v107 = 0x3E6C696E3CLL;
    if (v105)
    {
      v107 = v104;
    }

    v108 = 0xE500000000000000;
    if (v105)
    {
      v108 = v105;
    }

    *(v97 + 32) = v107;
    *(v97 + 40) = v108;
    sub_1DB09D444();

    return v123;
  }

  v80 = v127;
  (*(v79 + 32))(v127, v77, v73);
  v81 = v133;
  sub_1DB09D144();
  v82 = sub_1DB09D0C4();
  v85 = *(v79 + 8);
  v83 = v79 + 8;
  v84 = v85;
  v85(v81, v73);
  if ((v82 & 1) == 0)
  {
    v84(v80, v73);
    goto LABEL_40;
  }

  v132 = v83;
  sub_1DAF3523C(v76 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v138);
  v86 = v139;
  v87 = v140;
  __swift_project_boxed_opaque_existential_1(v138, v139);
  *&v136 = 0;
  *(&v136 + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v136 = 0xD00000000000001ALL;
  *(&v136 + 1) = 0x80000001DB0C5A90;
  v88 = [v123 response];
  v89 = [v88 URL];

  if (v89)
  {
    v90 = v124;
    sub_1DB09CF04();

    v91 = 0;
  }

  else
  {
    v91 = 1;
    v90 = v124;
  }

  v115 = sub_1DB09CF64();
  v116 = *(v115 - 8);
  (*(v116 + 56))(v90, v91, 1, v115);
  v117 = v125;
  sub_1DAF624E8(v90, v125, &unk_1ECC0EAB0, &qword_1DB0A9530);
  if ((*(v116 + 48))(v117, 1, v115) == 1)
  {
    v118 = 0x3E6C696E3CLL;
    sub_1DAF40AEC(v117, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v119 = 0xE500000000000000;
  }

  else
  {
    v118 = sub_1DB09CEA4();
    v119 = v120;
    (*(v116 + 8))(v117, v115);
  }

  MEMORY[0x1E127FE90](v118, v119);

  v121 = v136;
  LOBYTE(v136) = v126;
  (*(v87 + 32))(v121, *(&v136 + 1), &v136, v86, v87);

  v84(v127, v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v138);
  return v123;
}

uint64_t sub_1DAFAC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 1024) = a6;
  *(v6 + 1208) = a5;
  *(v6 + 1016) = a4;
  *(v6 + 1008) = a3;
  *(v6 + 1000) = a1;
  v7 = sub_1DB09CF64();
  *(v6 + 1032) = v7;
  v8 = *(v7 - 8);
  *(v6 + 1040) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 1048) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530) - 8) + 64) + 15;
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  v11 = sub_1DB09CBF4();
  *(v6 + 1072) = v11;
  v12 = *(v11 - 8);
  *(v6 + 1080) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 1088) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFAC8E4, 0, 0);
}

uint64_t sub_1DAFAC8E4()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  sub_1DB09CBA4();
  sub_1DAFB01E0();
  *(v0 + 1096) = sub_1DAFA9784(v2);
  v5 = *(MEMORY[0x1E6969EC0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 1104) = v6;
  *v6 = v0;
  v6[1] = sub_1DAFAC9B8;
  v7 = *(v0 + 1088);

  return MEMORY[0x1EEDC6260](v7, 0);
}

uint64_t sub_1DAFAC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 1104);
  v9 = *v4;
  v5[139] = a1;
  v5[140] = a2;
  v5[141] = a3;
  v5[142] = v3;

  if (v3)
  {
    v7 = sub_1DAFAE218;
  }

  else
  {
    v7 = sub_1DAFACAD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DAFACAD8()
{
  v209 = v0;
  v1 = *(v0 + 1128);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = (v0 + 1128);
    v5 = *(v0 + 1120);
    v6 = *(v0 + 1112);
    v7 = *(v0 + 1096);
    v8 = *(v0 + 1008);
    v9 = *(v0 + 1128);
    sub_1DAF40674(v6, v5);
    sub_1DAFB0610(v3, v6, v5);

    sub_1DAF40780(v6, v5);
  }

  else
  {
    v4 = (v0 + 1096);
  }

  v10 = *(v0 + 1128);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  v13 = *(v0 + 1072);

  (*(v12 + 8))(v11, v13);
  v14 = v10;
  v15 = sub_1DAFB23D4(v10, 0);

  if (!v15)
  {
    v27 = *(v0 + 1016);
    sub_1DAF3523C(*(v0 + 1008) + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v0 + 56);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v28);
    sub_1DB09DE44();

    v207 = 0xD000000000000013;
    v208 = 0x80000001DB0C58A0;
    v30 = [v27 HTTPMethod];
    v31 = sub_1DB09D6C4();
    v33 = v32;

    MEMORY[0x1E127FE90](v31, v33);

    MEMORY[0x1E127FE90](32, 0xE100000000000000);
    v34 = [v27 URL];
    if (v34)
    {
      v35 = *(v0 + 1056);
      v36 = v34;
      sub_1DB09CF04();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v91 = *(v0 + 1064);
    v92 = *(v0 + 1056);
    v93 = *(v0 + 1040);
    v94 = *(v0 + 1032);
    (*(v93 + 56))(v92, v37, 1, v94);
    sub_1DAF624E8(v92, v91, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v95 = (*(v93 + 48))(v91, 1, v94);
    v96 = *(v0 + 1064);
    if (v95)
    {
      sub_1DAF40AEC(*(v0 + 1064), &unk_1ECC0EAB0, &qword_1DB0A9530);
      v97 = 0xED0000676E697274;
      v98 = 0x53204C5255206F4ELL;
    }

    else
    {
      v99 = *(v0 + 1048);
      v100 = *(v0 + 1040);
      v101 = *(v0 + 1032);
      (*(v100 + 16))(v99, *(v0 + 1064), v101);
      sub_1DAF40AEC(v96, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v102 = sub_1DB09CEA4();
      v97 = v103;
      (*(v100 + 8))(v99, v101);
      v98 = v102;
    }

    v104 = *(v0 + 1120);
    v105 = *(v0 + 1112);
    v106 = *(v0 + 1000);
    MEMORY[0x1E127FE90](v98, v97);

    v107 = v207;
    LOBYTE(v207) = 17;
    (*(v29 + 16))(v107, v208, &v207, v28, v29);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    *v106 = v105;
    *(v106 + 8) = v104;
    *(v106 + 16) = v10;
    *(v106 + 24) = 0;
    goto LABEL_100;
  }

  v16 = *(v0 + 1128);
  v17 = *(v0 + 1120);
  v18 = *(v0 + 1112);
  swift_willThrow();

  sub_1DAF40780(v18, v17);
  *(v0 + 1144) = v15;
  v19 = v15;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v20 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v21 = v15;
  v22 = sub_1DB09CE64();
  v23 = [v22 domain];
  v24 = sub_1DB09D6C4();
  v26 = v25;

  if (v24 == 0x726F72724549444FLL && v26 == 0xE800000000000000)
  {
  }

  else
  {
    v38 = sub_1DB09E254();

    if ((v38 & 1) == 0)
    {
      v42 = *MEMORY[0x1E696AA08];
      v43 = sub_1DB09D6C4();
      v45 = v44;
      *(v0 + 888) = sub_1DAF4D7A4();
      *(v0 + 864) = v22;
      sub_1DAF40D20((v0 + 864), (v0 + 608));
      v46 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v207 = v20;
      sub_1DAF3B11C((v0 + 608), v43, v45, isUniquelyReferenced_nonNull_native);

      v40 = v20;
      v41 = 138;
      goto LABEL_17;
    }
  }

  ODIErrorCode.init(rawValue:)([v22 code]);
  v39 = [v22 userInfo];
  v40 = sub_1DB09D624();

  if (v207 == 211)
  {
    v41 = 138;
  }

  else
  {
    v41 = v207 ^ 0x80u;
  }

LABEL_17:
  if (*(v40 + 16) && (v48 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v49 & 1) != 0) && (sub_1DAF409DC(*(v40 + 56) + 32 * v48, v0 + 256), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v50 = *(v0 + 984);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v50 = sub_1DAF72EC0(0, *(v50 + 2) + 1, 1, v50);
  }

  v52 = *(v50 + 2);
  v51 = *(v50 + 3);
  if (v52 >= v51 >> 1)
  {
    v50 = sub_1DAF72EC0((v51 > 1), v52 + 1, 1, v50);
  }

  *(v50 + 2) = v52 + 1;
  v53 = &v50[56 * v52];
  *(v53 + 4) = 0xD00000000000002ALL;
  *(v53 + 5) = 0x80000001DB0C56B0;
  *(v53 + 6) = 0xD000000000000026;
  *(v53 + 7) = 0x80000001DB0C56E0;
  *(v53 + 8) = 0xD00000000000001ELL;
  *(v53 + 9) = 0x80000001DB0C5710;
  *(v53 + 10) = 369;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 1152) = v54;
  *(v0 + 664) = v54;
  *(v0 + 640) = v50;
  sub_1DAF40D20((v0 + 640), (v0 + 160));
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v207 = v40;
  sub_1DAF3B11C((v0 + 160), 0x636F766E4949444FLL, 0xEE00736E6F697461, v55);
  v56 = qword_1DB0A9590[v41];
  v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v58 = sub_1DB09D6B4();
  v59 = sub_1DB09D604();
  v60 = [v57 initWithDomain:v58 code:v56 userInfo:v59];

  swift_getErrorValue();
  v61 = *(v0 + 920);
  v62 = *(v0 + 928);
  v63 = *(v0 + 936);
  v64 = sub_1DB09E344();
  v66 = v65;
  v67 = *MEMORY[0x1E696A978];
  if (v64 == sub_1DB09D6C4() && v66 == v68)
  {
  }

  else
  {
    v69 = sub_1DB09E254();

    if ((v69 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v70 = [*(v0 + 1016) HTTPMethod];
  v71 = sub_1DB09D6C4();
  v73 = v72;

  if (v71 == 5522759 && v73 == 0xE300000000000000)
  {
  }

  else
  {
    v74 = sub_1DB09E254();

    if ((v74 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  swift_getErrorValue();
  v75 = *(v0 + 896);
  v76 = *(v0 + 904);
  v77 = *(v0 + 912);
  v78 = sub_1DB09E334();
  if (v78 == -1009)
  {
    v108 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v109 = v15;
    v110 = sub_1DB09CE64();
    v111 = [v110 domain];
    v112 = sub_1DB09D6C4();
    v114 = v113;

    v204 = 0x80000001DB0C56E0;
    if (v112 == 0x726F72724549444FLL && v114 == 0xE800000000000000)
    {
    }

    else
    {
      v120 = sub_1DB09E254();

      if ((v120 & 1) == 0)
      {
        v147 = *MEMORY[0x1E696AA08];
        v148 = sub_1DB09D6C4();
        v150 = v149;
        *(v0 + 760) = sub_1DAF4D7A4();
        *(v0 + 736) = v110;
        sub_1DAF40D20((v0 + 736), (v0 + 768));
        v151 = v110;
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v207 = v108;
        sub_1DAF3B11C((v0 + 768), v148, v150, v152);

        v122 = v108;
        v119 = 151;
LABEL_88:
        if (*(v122 + 16) && (v153 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v154 & 1) != 0) && (sub_1DAF409DC(*(v122 + 56) + 32 * v153, v0 + 800), swift_dynamicCast()))
        {
          v155 = *(v0 + 944);
        }

        else
        {
          v155 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_1DAF72EC0(0, *(v155 + 2) + 1, 1, v155);
        }

        v157 = *(v155 + 2);
        v156 = *(v155 + 3);
        if (v157 >= v156 >> 1)
        {
          v155 = sub_1DAF72EC0((v156 > 1), v157 + 1, 1, v155);
        }

        *(v155 + 2) = v157 + 1;
        v158 = &v155[56 * v157];
        *(v158 + 4) = 0xD000000000000027;
        *(v158 + 5) = 0x80000001DB0C5820;
        *(v158 + 6) = 0xD000000000000026;
        *(v158 + 7) = v204;
        *(v158 + 8) = 0xD000000000000036;
        *(v158 + 9) = 0x80000001DB0C5750;
        *(v158 + 10) = 290;
        *(v0 + 856) = v54;
        *(v0 + 832) = v155;
        sub_1DAF40D20((v0 + 832), (v0 + 128));
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v207 = v122;
        v146 = (v0 + 128);
        goto LABEL_98;
      }
    }

    ODIErrorCode.init(rawValue:)([v110 code]);
    v121 = [v110 userInfo];
    v122 = sub_1DB09D624();

    if (v207 == 211)
    {
      v119 = 151;
    }

    else
    {
      v119 = v207 ^ 0x80u;
    }

    goto LABEL_88;
  }

  if (v78 == -1005)
  {
    v79 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v80 = v15;
    v81 = sub_1DB09CE64();
    v82 = [v81 domain];
    v83 = sub_1DB09D6C4();
    v85 = v84;

    v203 = 0x80000001DB0C56E0;
    if (v83 == 0x726F72724549444FLL && v85 == 0xE800000000000000)
    {
    }

    else
    {
      v116 = sub_1DB09E254();

      if ((v116 & 1) == 0)
      {
        v133 = *MEMORY[0x1E696AA08];
        v134 = sub_1DB09D6C4();
        v136 = v135;
        *(v0 + 728) = sub_1DAF4D7A4();
        *(v0 + 704) = v81;
        sub_1DAF40D20((v0 + 704), (v0 + 672));
        v137 = v81;
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v207 = v79;
        sub_1DAF3B11C((v0 + 672), v134, v136, v138);

        v118 = v79;
        v119 = 128;
LABEL_77:
        if (*(v118 + 16) && (v139 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v140 & 1) != 0) && (sub_1DAF409DC(*(v118 + 56) + 32 * v139, v0 + 448), swift_dynamicCast()))
        {
          v141 = *(v0 + 976);
        }

        else
        {
          v141 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_1DAF72EC0(0, *(v141 + 2) + 1, 1, v141);
        }

        v143 = *(v141 + 2);
        v142 = *(v141 + 3);
        if (v143 >= v142 >> 1)
        {
          v141 = sub_1DAF72EC0((v142 > 1), v143 + 1, 1, v141);
        }

        *(v141 + 2) = v143 + 1;
        v144 = &v141[56 * v143];
        *(v144 + 4) = 0xD000000000000049;
        *(v144 + 5) = 0x80000001DB0C5850;
        *(v144 + 6) = 0xD000000000000026;
        *(v144 + 7) = v203;
        *(v144 + 8) = 0xD000000000000036;
        *(v144 + 9) = 0x80000001DB0C5750;
        *(v144 + 10) = 287;
        *(v0 + 248) = v54;
        *(v0 + 224) = v141;
        sub_1DAF40D20((v0 + 224), (v0 + 192));
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v207 = v118;
        v146 = (v0 + 192);
LABEL_98:
        sub_1DAF3B11C(v146, 0x636F766E4949444FLL, 0xEE00736E6F697461, v145);
        v159 = qword_1DB0A9590[v119];
        v160 = *(v0 + 1000);
        v161 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v162 = sub_1DB09D6B4();
        v163 = sub_1DB09D604();
        v164 = [v161 initWithDomain:v162 code:v159 userInfo:v163];

        *(v160 + 8) = 0;
        *(v160 + 16) = 0;
        *v160 = v164;
        v165 = 256;
LABEL_99:
        *(v160 + 24) = v165;
        goto LABEL_100;
      }
    }

    ODIErrorCode.init(rawValue:)([v81 code]);
    v117 = [v81 userInfo];
    v118 = sub_1DB09D624();

    if (v207 == 211)
    {
      v119 = 128;
    }

    else
    {
      v119 = v207 ^ 0x80u;
    }

    goto LABEL_77;
  }

LABEL_39:
  sub_1DAF72C08(&v206);
  if (v206 - 173 > 0xD)
  {
LABEL_73:
    if (v206 - 10 >= 2)
    {
      v132 = *(v0 + 1000);

      *(v132 + 8) = 0;
      *(v132 + 16) = 0;
      *v132 = v15;
      *(v132 + 24) = 256;
      goto LABEL_100;
    }

    goto LABEL_74;
  }

  if (((1 << (v206 + 83)) & 0x3E00) != 0)
  {
LABEL_74:
    v131 = *(v0 + 1000);

    *(v131 + 8) = 0;
    *(v131 + 16) = 0;
    *v131 = v15;
    *(v131 + 24) = 512;
    goto LABEL_100;
  }

  if (((1 << (v206 + 83)) & 0x184) == 0)
  {
    if (v206 == 173)
    {
      v123 = *(v0 + 1024);
      if (v123)
      {
        v124 = v123;

        if (qword_1EE301DE8 != -1)
        {
          swift_once();
        }

        sub_1DB09DB54();
        sub_1DB09D444();
        if (qword_1EE304378 != -1)
        {
          swift_once();
        }

        v125 = *(v0 + 1000);
        [qword_1EE30A1E0 storeCachedResponse:v124 forRequest:*(v0 + 1016)];
        v126 = [v124 data];
        v127 = sub_1DB09D034();
        v129 = v128;

        v130 = [v124 response];
        *v125 = v127;
        *(v125 + 8) = v129;
        *(v125 + 16) = v130;
        *(v125 + 24) = 1;
        goto LABEL_100;
      }

      v171 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v172 = v15;
      v173 = sub_1DB09CE64();
      v174 = [v173 domain];
      v175 = sub_1DB09D6C4();
      v177 = v176;

      v205 = 0x80000001DB0C56E0;
      if (v175 == 0x726F72724549444FLL && v177 == 0xE800000000000000)
      {
      }

      else
      {
        v178 = sub_1DB09E254();

        if ((v178 & 1) == 0)
        {
          v184 = *MEMORY[0x1E696AA08];
          v185 = sub_1DB09D6C4();
          v187 = v186;
          *(v0 + 504) = sub_1DAF4D7A4();
          *(v0 + 480) = v173;
          sub_1DAF40D20((v0 + 480), (v0 + 512));
          v188 = v173;
          v189 = swift_isUniquelyReferenced_nonNull_native();
          v207 = v171;
          sub_1DAF3B11C((v0 + 512), v185, v187, v189);

          v182 = v207;
          v183 = 128;
LABEL_111:
          if (*(v182 + 16) && (v190 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v191 & 1) != 0) && (sub_1DAF409DC(*(v182 + 56) + 32 * v190, v0 + 544), swift_dynamicCast()))
          {
            v192 = *(v0 + 992);
          }

          else
          {
            v192 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1DAF72EC0(0, *(v192 + 2) + 1, 1, v192);
          }

          v194 = *(v192 + 2);
          v193 = *(v192 + 3);
          if (v194 >= v193 >> 1)
          {
            v192 = sub_1DAF72EC0((v193 > 1), v194 + 1, 1, v192);
          }

          *(v192 + 2) = v194 + 1;
          v195 = &v192[56 * v194];
          *(v195 + 4) = 0xD000000000000031;
          *(v195 + 5) = 0x80000001DB0C5790;
          *(v195 + 6) = 0xD000000000000026;
          *(v195 + 7) = v205;
          *(v195 + 8) = 0xD000000000000036;
          *(v195 + 9) = 0x80000001DB0C5750;
          *(v195 + 10) = 307;
          *(v0 + 600) = v54;
          *(v0 + 576) = v192;
          sub_1DAF40D20((v0 + 576), (v0 + 96));
          v196 = swift_isUniquelyReferenced_nonNull_native();
          v207 = v182;
          sub_1DAF3B11C((v0 + 96), 0x636F766E4949444FLL, 0xEE00736E6F697461, v196);
          v197 = qword_1DB0A9590[v183];
          v160 = *(v0 + 1000);
          v198 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v199 = sub_1DB09D6B4();
          v200 = sub_1DB09D604();
          v201 = [v198 initWithDomain:v199 code:v197 userInfo:v200];

          *(v160 + 8) = 0;
          *(v160 + 16) = 0;
          *v160 = v201;
          v165 = 512;
          goto LABEL_99;
        }
      }

      ODIErrorCode.init(rawValue:)([v173 code]);
      v179 = v207;
      v180 = v207 ^ 0x80;
      v181 = [v173 userInfo];
      v182 = sub_1DB09D624();

      if (v179 == 211)
      {
        v183 = 128;
      }

      else
      {
        v183 = v180;
      }

      goto LABEL_111;
    }

    goto LABEL_73;
  }

  v86 = *(v0 + 1208);

  if ((v86 & 1) != 0 || (v87 = *(v0 + 1008), *(v87 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 8) != 1))
  {
    v115 = *(v0 + 1000);
    *(v115 + 8) = 0;
    *(v115 + 16) = 0;
    *v115 = v15;
    *(v115 + 24) = 256;
LABEL_100:
    v166 = *(v0 + 1088);
    v167 = *(v0 + 1064);
    v168 = *(v0 + 1056);
    v169 = *(v0 + 1048);

    v170 = *(v0 + 8);

    return v170();
  }

  if (qword_1EE302B50 != -1)
  {
    swift_once();
    v87 = *(v0 + 1008);
  }

  v88 = qword_1EE302B58;
  v89 = type metadata accessor for ODIAccountManager();
  *(v0 + 40) = v89;
  *(v0 + 48) = &off_1F56CFCD8;
  *(v0 + 16) = v88;
  *(v0 + 1160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v89);
  v90 = *(v87 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state);
  *(v0 + 1168) = v90;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAF634, v90, 0);
}

uint64_t sub_1DAFAE218()
{
  v166 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1136);
  *(v0 + 1144) = v4;
  v5 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v7 = v4;
  v8 = sub_1DB09CE64();
  v9 = [v8 domain];
  v10 = sub_1DB09D6C4();
  v12 = v11;

  if (v10 == 0x726F72724549444FLL && v12 == 0xE800000000000000)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      v17 = *MEMORY[0x1E696AA08];
      v18 = sub_1DB09D6C4();
      v20 = v19;
      *(v0 + 888) = sub_1DAF4D7A4();
      *(v0 + 864) = v8;
      sub_1DAF40D20((v0 + 864), (v0 + 608));
      v21 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165 = v6;
      sub_1DAF3B11C((v0 + 608), v18, v20, isUniquelyReferenced_nonNull_native);

      v15 = v6;
      v16 = 138;
      goto LABEL_11;
    }
  }

  ODIErrorCode.init(rawValue:)([v8 code]);
  v14 = [v8 userInfo];
  v15 = sub_1DB09D624();

  if (v165 == 211)
  {
    v16 = 138;
  }

  else
  {
    v16 = v165 ^ 0x80u;
  }

LABEL_11:
  if (*(v15 + 16) && (v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v24 & 1) != 0) && (sub_1DAF409DC(*(v15 + 56) + 32 * v23, v0 + 256), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v25 = *(v0 + 984);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1DAF72EC0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 4) = 0xD00000000000002ALL;
  *(v28 + 5) = 0x80000001DB0C56B0;
  *(v28 + 6) = 0xD000000000000026;
  *(v28 + 7) = 0x80000001DB0C56E0;
  *(v28 + 8) = 0xD00000000000001ELL;
  *(v28 + 9) = 0x80000001DB0C5710;
  *(v28 + 10) = 369;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 1152) = v29;
  *(v0 + 664) = v29;
  *(v0 + 640) = v25;
  sub_1DAF40D20((v0 + 640), (v0 + 160));
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v15;
  sub_1DAF3B11C((v0 + 160), 0x636F766E4949444FLL, 0xEE00736E6F697461, v30);
  v31 = qword_1DB0A9590[v16];
  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_1DB09D6B4();
  v34 = sub_1DB09D604();
  v35 = [v32 initWithDomain:v33 code:v31 userInfo:v34];

  swift_getErrorValue();
  v36 = *(v0 + 920);
  v37 = *(v0 + 928);
  v38 = *(v0 + 936);
  v39 = sub_1DB09E344();
  v41 = v40;
  v42 = *MEMORY[0x1E696A978];
  if (v39 == sub_1DB09D6C4() && v41 == v43)
  {
  }

  else
  {
    v44 = sub_1DB09E254();

    if ((v44 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v45 = [*(v0 + 1016) HTTPMethod];
  v46 = sub_1DB09D6C4();
  v48 = v47;

  if (v46 == 5522759 && v48 == 0xE300000000000000)
  {
  }

  else
  {
    v49 = sub_1DB09E254();

    if ((v49 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  swift_getErrorValue();
  v50 = *(v0 + 896);
  v51 = *(v0 + 904);
  v52 = *(v0 + 912);
  v53 = sub_1DB09E334();
  if (v53 == -1009)
  {
    v66 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v67 = v4;
    v68 = sub_1DB09CE64();
    v69 = [v68 domain];
    v70 = sub_1DB09D6C4();
    v72 = v71;

    v163 = v29;
    if (v70 == 0x726F72724549444FLL && v72 == 0xE800000000000000)
    {
    }

    else
    {
      v78 = sub_1DB09E254();

      if ((v78 & 1) == 0)
      {
        v105 = *MEMORY[0x1E696AA08];
        v106 = sub_1DB09D6C4();
        v108 = v107;
        *(v0 + 760) = sub_1DAF4D7A4();
        *(v0 + 736) = v68;
        sub_1DAF40D20((v0 + 736), (v0 + 768));
        v109 = v68;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v66;
        sub_1DAF3B11C((v0 + 768), v106, v108, v110);

        v80 = v66;
        v77 = 151;
LABEL_77:
        if (*(v80 + 16) && (v111 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v112 & 1) != 0) && (sub_1DAF409DC(*(v80 + 56) + 32 * v111, v0 + 800), swift_dynamicCast()))
        {
          v113 = *(v0 + 944);
        }

        else
        {
          v113 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_1DAF72EC0(0, *(v113 + 2) + 1, 1, v113);
        }

        v115 = *(v113 + 2);
        v114 = *(v113 + 3);
        if (v115 >= v114 >> 1)
        {
          v113 = sub_1DAF72EC0((v114 > 1), v115 + 1, 1, v113);
        }

        *(v113 + 2) = v115 + 1;
        v116 = &v113[56 * v115];
        *(v116 + 4) = 0xD000000000000027;
        *(v116 + 5) = 0x80000001DB0C5820;
        *(v116 + 6) = 0xD000000000000026;
        *(v116 + 7) = 0x80000001DB0C56E0;
        *(v116 + 8) = 0xD000000000000036;
        *(v116 + 9) = 0x80000001DB0C5750;
        *(v116 + 10) = 290;
        *(v0 + 856) = v163;
        *(v0 + 832) = v113;
        sub_1DAF40D20((v0 + 832), (v0 + 128));
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v80;
        v104 = (v0 + 128);
        goto LABEL_87;
      }
    }

    ODIErrorCode.init(rawValue:)([v68 code]);
    v79 = [v68 userInfo];
    v80 = sub_1DB09D624();

    if (v165 == 211)
    {
      v77 = 151;
    }

    else
    {
      v77 = v165 ^ 0x80u;
    }

    goto LABEL_77;
  }

  if (v53 == -1005)
  {
    v54 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v55 = v4;
    v56 = sub_1DB09CE64();
    v57 = [v56 domain];
    v58 = sub_1DB09D6C4();
    v60 = v59;

    v162 = v29;
    if (v58 == 0x726F72724549444FLL && v60 == 0xE800000000000000)
    {
    }

    else
    {
      v74 = sub_1DB09E254();

      if ((v74 & 1) == 0)
      {
        v91 = *MEMORY[0x1E696AA08];
        v92 = sub_1DB09D6C4();
        v94 = v93;
        *(v0 + 728) = sub_1DAF4D7A4();
        *(v0 + 704) = v56;
        sub_1DAF40D20((v0 + 704), (v0 + 672));
        v95 = v56;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v54;
        sub_1DAF3B11C((v0 + 672), v92, v94, v96);

        v76 = v54;
        v77 = 128;
LABEL_66:
        if (*(v76 + 16) && (v97 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v98 & 1) != 0) && (sub_1DAF409DC(*(v76 + 56) + 32 * v97, v0 + 448), swift_dynamicCast()))
        {
          v99 = *(v0 + 976);
        }

        else
        {
          v99 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1DAF72EC0(0, *(v99 + 2) + 1, 1, v99);
        }

        v101 = *(v99 + 2);
        v100 = *(v99 + 3);
        if (v101 >= v100 >> 1)
        {
          v99 = sub_1DAF72EC0((v100 > 1), v101 + 1, 1, v99);
        }

        *(v99 + 2) = v101 + 1;
        v102 = &v99[56 * v101];
        *(v102 + 4) = 0xD000000000000049;
        *(v102 + 5) = 0x80000001DB0C5850;
        *(v102 + 6) = 0xD000000000000026;
        *(v102 + 7) = 0x80000001DB0C56E0;
        *(v102 + 8) = 0xD000000000000036;
        *(v102 + 9) = 0x80000001DB0C5750;
        *(v102 + 10) = 287;
        *(v0 + 248) = v162;
        *(v0 + 224) = v99;
        sub_1DAF40D20((v0 + 224), (v0 + 192));
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v76;
        v104 = (v0 + 192);
LABEL_87:
        sub_1DAF3B11C(v104, 0x636F766E4949444FLL, 0xEE00736E6F697461, v103);
        v117 = qword_1DB0A9590[v77];
        v118 = *(v0 + 1000);
        v119 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v120 = sub_1DB09D6B4();
        v121 = sub_1DB09D604();
        v122 = [v119 initWithDomain:v120 code:v117 userInfo:v121];

        *(v118 + 8) = 0;
        *(v118 + 16) = 0;
        *v118 = v122;
        v123 = 256;
LABEL_88:
        *(v118 + 24) = v123;
        goto LABEL_89;
      }
    }

    ODIErrorCode.init(rawValue:)([v56 code]);
    v75 = [v56 userInfo];
    v76 = sub_1DB09D624();

    if (v165 == 211)
    {
      v77 = 128;
    }

    else
    {
      v77 = v165 ^ 0x80u;
    }

    goto LABEL_66;
  }

LABEL_33:
  sub_1DAF72C08(&v164);
  if (v164 - 173 > 0xD)
  {
LABEL_62:
    if (v164 - 10 >= 2)
    {
      v90 = *(v0 + 1000);

      *(v90 + 8) = 0;
      *(v90 + 16) = 0;
      *v90 = v4;
      *(v90 + 24) = 256;
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  if (((1 << (v164 + 83)) & 0x3E00) != 0)
  {
LABEL_63:
    v89 = *(v0 + 1000);

    *(v89 + 8) = 0;
    *(v89 + 16) = 0;
    *v89 = v4;
    *(v89 + 24) = 512;
    goto LABEL_89;
  }

  if (((1 << (v164 + 83)) & 0x184) == 0)
  {
    if (v164 == 173)
    {
      v81 = *(v0 + 1024);
      if (v81)
      {
        v82 = v81;

        if (qword_1EE301DE8 != -1)
        {
          swift_once();
        }

        sub_1DB09DB54();
        sub_1DB09D444();
        if (qword_1EE304378 != -1)
        {
          swift_once();
        }

        v83 = *(v0 + 1000);
        [qword_1EE30A1E0 storeCachedResponse:v82 forRequest:*(v0 + 1016)];
        v84 = [v82 data];
        v85 = sub_1DB09D034();
        v87 = v86;

        v88 = [v82 response];
        *v83 = v85;
        *(v83 + 8) = v87;
        *(v83 + 16) = v88;
        *(v83 + 24) = 1;
        goto LABEL_89;
      }

      v129 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v130 = v4;
      v131 = sub_1DB09CE64();
      v132 = [v131 domain];
      v133 = sub_1DB09D6C4();
      v135 = v134;

      if (v133 == 0x726F72724549444FLL && v135 == 0xE800000000000000)
      {
      }

      else
      {
        v136 = sub_1DB09E254();

        if ((v136 & 1) == 0)
        {
          v142 = *MEMORY[0x1E696AA08];
          v143 = sub_1DB09D6C4();
          v145 = v144;
          *(v0 + 504) = sub_1DAF4D7A4();
          *(v0 + 480) = v131;
          sub_1DAF40D20((v0 + 480), (v0 + 512));
          v146 = v131;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v165 = v129;
          sub_1DAF3B11C((v0 + 512), v143, v145, v147);

          v140 = v165;
          v141 = 128;
LABEL_100:
          v161 = v141;
          if (*(v140 + 16) && (v148 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v149 & 1) != 0) && (sub_1DAF409DC(*(v140 + 56) + 32 * v148, v0 + 544), swift_dynamicCast()))
          {
            v150 = *(v0 + 992);
          }

          else
          {
            v150 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_1DAF72EC0(0, *(v150 + 2) + 1, 1, v150);
          }

          v152 = *(v150 + 2);
          v151 = *(v150 + 3);
          if (v152 >= v151 >> 1)
          {
            v150 = sub_1DAF72EC0((v151 > 1), v152 + 1, 1, v150);
          }

          *(v150 + 2) = v152 + 1;
          v153 = &v150[56 * v152];
          *(v153 + 4) = 0xD000000000000031;
          *(v153 + 5) = 0x80000001DB0C5790;
          *(v153 + 6) = 0xD000000000000026;
          *(v153 + 7) = 0x80000001DB0C56E0;
          *(v153 + 8) = 0xD000000000000036;
          *(v153 + 9) = 0x80000001DB0C5750;
          *(v153 + 10) = 307;
          *(v0 + 600) = v29;
          *(v0 + 576) = v150;
          sub_1DAF40D20((v0 + 576), (v0 + 96));
          v154 = swift_isUniquelyReferenced_nonNull_native();
          v165 = v140;
          sub_1DAF3B11C((v0 + 96), 0x636F766E4949444FLL, 0xEE00736E6F697461, v154);
          v155 = qword_1DB0A9590[v161];
          v118 = *(v0 + 1000);
          v156 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v157 = sub_1DB09D6B4();
          v158 = sub_1DB09D604();
          v159 = [v156 initWithDomain:v157 code:v155 userInfo:v158];

          *(v118 + 8) = 0;
          *(v118 + 16) = 0;
          *v118 = v159;
          v123 = 512;
          goto LABEL_88;
        }
      }

      ODIErrorCode.init(rawValue:)([v131 code]);
      v137 = v165;
      v138 = v165 ^ 0x80;
      v139 = [v131 userInfo];
      v140 = sub_1DB09D624();

      if (v137 == 211)
      {
        v141 = 128;
      }

      else
      {
        v141 = v138;
      }

      goto LABEL_100;
    }

    goto LABEL_62;
  }

  v61 = *(v0 + 1208);

  if ((v61 & 1) != 0 || (v62 = *(v0 + 1008), *(v62 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 8) != 1))
  {
    v73 = *(v0 + 1000);
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    *v73 = v4;
    *(v73 + 24) = 256;
LABEL_89:
    v124 = *(v0 + 1088);
    v125 = *(v0 + 1064);
    v126 = *(v0 + 1056);
    v127 = *(v0 + 1048);

    v128 = *(v0 + 8);

    return v128();
  }

  if (qword_1EE302B50 != -1)
  {
    swift_once();
    v62 = *(v0 + 1008);
  }

  v63 = qword_1EE302B58;
  v64 = type metadata accessor for ODIAccountManager();
  *(v0 + 40) = v64;
  *(v0 + 48) = &off_1F56CFCD8;
  *(v0 + 16) = v63;
  *(v0 + 1160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v64);
  v65 = *(v62 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state);
  *(v0 + 1168) = v65;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAF634, v65, 0);
}

uint64_t sub_1DAFAF634()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v0[147] = v4;

  v5 = *v2;
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_1DAFAF6F4;

  return sub_1DB04E7C8(v3, v4);
}

uint64_t sub_1DAFAF6F4()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v4 = *v1;
  *(*v1 + 1192) = v0;

  v5 = *(v2 + 1176);

  if (v0)
  {
    v6 = sub_1DAFAFA68;
  }

  else
  {
    v6 = sub_1DAFAF828;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAFAF828()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_1DAFAF8C8;
  v2 = v0[127];
  v3 = v0[126];

  return sub_1DAFAFEF4(v2);
}

uint64_t sub_1DAFAF8C8()
{
  v1 = *(*v0 + 1200);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAF9C4, 0, 0);
}

uint64_t sub_1DAFAF9C4()
{
  v1 = v0[143];
  v2 = v0[125];
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = v1;
  *(v2 + 24) = 512;
  v3 = v0[136];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAFAFA68()
{
  v1 = *(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = v1;
  v3 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v4 = v1;
  v5 = sub_1DB09CE64();
  v6 = [v5 domain];
  v7 = sub_1DB09D6C4();
  v9 = v8;

  if (v7 == 0x726F72724549444FLL && v9 == 0xE800000000000000)
  {
  }

  else
  {
    v11 = sub_1DB09E254();

    if ((v11 & 1) == 0)
    {
      v12 = *(v0 + 1192);
      v13 = *MEMORY[0x1E696AA08];
      v14 = sub_1DB09D6C4();
      v16 = v15;
      *(v0 + 312) = sub_1DAF4D7A4();
      *(v0 + 288) = v5;
      sub_1DAF40D20((v0 + 288), (v0 + 320));
      v17 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 320), v14, v16, isUniquelyReferenced_nonNull_native);

      v19 = v3;
      v20 = 128;
      goto LABEL_11;
    }
  }

  v21 = *(v0 + 1192);
  ODIErrorCode.init(rawValue:)([v5 code]);
  v22 = [v5 userInfo];
  v19 = sub_1DB09D624();

  if (v46 == 211)
  {
    v20 = 128;
  }

  else
  {
    v20 = v46 ^ 0x80u;
  }

LABEL_11:
  if (*(v19 + 16) && (v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v24 & 1) != 0) && (v25 = *(v0 + 1152), sub_1DAF409DC(*(v19 + 56) + 32 * v23, v0 + 352), swift_dynamicCast()))
  {
    v26 = *(v0 + 960);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1DAF72EC0(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1DAF72EC0((v27 > 1), v28 + 1, 1, v26);
  }

  v29 = *(v0 + 1152);
  *(v26 + 2) = v28 + 1;
  v30 = &v26[56 * v28];
  *(v30 + 4) = 0xD000000000000014;
  *(v30 + 5) = 0x80000001DB0C5730;
  *(v30 + 6) = 0xD000000000000026;
  *(v30 + 7) = 0x80000001DB0C56E0;
  *(v30 + 8) = 0xD000000000000036;
  *(v30 + 9) = 0x80000001DB0C5750;
  *(v30 + 10) = 326;
  *(v0 + 408) = v29;
  *(v0 + 384) = v26;
  sub_1DAF40D20((v0 + 384), (v0 + 416));
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v19;
  sub_1DAF3B11C((v0 + 416), 0x636F766E4949444FLL, 0xEE00736E6F697461, v31);
  v32 = qword_1DB0A9590[v20];
  v33 = *(v0 + 1192);
  v34 = *(v0 + 1144);
  v35 = *(v0 + 1000);
  v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v37 = sub_1DB09D6B4();
  v38 = sub_1DB09D604();
  v39 = [v36 initWithDomain:v37 code:v32 userInfo:{v38, v47}];

  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *v35 = v39;
  *(v35 + 24) = 256;
  v40 = *(v0 + 1088);
  v41 = *(v0 + 1064);
  v42 = *(v0 + 1056);
  v43 = *(v0 + 1048);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1DAFAFEF4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFAFF14, 0, 0);
}

uint64_t sub_1DAFAFF14()
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = qword_1EE302B58;
  v3 = type metadata accessor for ODIAccountManager();
  v0[5] = v3;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v2;
  v0[9] = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v4 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state);
  v0[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB0004, v4, 0);
}

uint64_t sub_1DAFB0004()
{
  v1 = v0[9];
  v2 = v0[10];
  v0[11] = *(v2 + 112);
  v0[12] = *(v2 + 120);

  v3 = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB0084, v3, 0);
}

uint64_t sub_1DAFB0084()
{
  v1 = **(v0 + 72);
  v2 = sub_1DB051F9C(*(v0 + 88), *(v0 + 96));
  v4 = v3;

  *(v0 + 104) = v2;
  *(v0 + 112) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB0114, 0, 0);
}

uint64_t sub_1DAFB0114()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[7];
  v4 = sub_1DB09D6B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = sub_1DB09D6B4();
  [v3 setValue:v4 forHTTPHeaderField:v5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAFB01E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v38 - v5;
  v7 = sub_1DB09D734();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = sub_1DB09CBE4();
  if (v11 >> 60 != 15)
  {
    v12 = v10;
    v13 = v11;
    sub_1DB09D714();
    v14 = sub_1DB09D6E4();
    if (v15)
    {
      v16 = v15;
      v39 = v14;
      sub_1DAF4AC40(v12, v13);
      goto LABEL_6;
    }

    sub_1DAF4AC40(v12, v13);
  }

  v39 = 0;
  v16 = 0xE000000000000000;
LABEL_6:
  v17 = sub_1DB09CB94();
  if (!v17)
  {
    v17 = sub_1DAF3ECE0(MEMORY[0x1E69E7CC0]);
  }

  v18 = v17;
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = sub_1DB09D6B4();
  v21 = [v19 BOOLForKey_];

  if ((v21 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v18;
    sub_1DAF3B440(0x455443414445523CLL, 0xEA00000000003E44, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
  }

  sub_1DAF3523C(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v42);
  v23 = v43;
  v24 = v44;
  v38[1] = __swift_project_boxed_opaque_existential_1(v42, v43);
  v25 = 0xE000000000000000;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1DB09DE44();

  v40 = 0xD000000000000013;
  v41 = 0x80000001DB0C59C0;
  v26 = sub_1DB09CB64();
  if (v27)
  {
    v25 = v27;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x1E127FE90](v26, v25);

  MEMORY[0x1E127FE90](32, 0xE100000000000000);
  sub_1DB09CBC4();
  v28 = sub_1DB09CF64();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v6, 1, v28) == 1)
  {
    sub_1DAF40AEC(v6, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v30 = sub_1DB09CEA4();
    v31 = v32;
    (*(v29 + 8))(v6, v28);
  }

  MEMORY[0x1E127FE90](v30, v31);

  MEMORY[0x1E127FE90](10, 0xE100000000000000);
  v33 = sub_1DB09D634();
  v35 = v34;

  MEMORY[0x1E127FE90](v33, v35);

  MEMORY[0x1E127FE90](10, 0xE100000000000000);
  MEMORY[0x1E127FE90](v39, v16);

  MEMORY[0x1E127FE90](10, 0xE100000000000000);
  v36 = v40;
  LOBYTE(v40) = 17;
  (*(v24 + 16))(v36, v41, &v40, v23, v24);

  return __swift_destroy_boxed_opaque_existential_1Tm(v42);
}

id sub_1DAFB0610(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v36 - v14;
  v16 = sub_1DB09D734();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  if (a3 >> 60 != 15)
  {
    sub_1DAF40674(a2, a3);
    sub_1DB09D714();
    v19 = sub_1DB09D6E4();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      sub_1DAF4AC40(a2, a3);
      goto LABEL_6;
    }

    sub_1DAF4AC40(a2, a3);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
LABEL_6:
  result = [a1 allHeaderFields];
  if (result)
  {
    v24 = result;
    sub_1DAF3523C(v3 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v44);
    v25 = v46;
    v37 = v45;
    v36[1] = __swift_project_boxed_opaque_existential_1(v44, v45);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1DB09DE44();

    v42 = 0x65736E6F70736552;
    v43 = 0xEA00000000000A3ALL;
    v26 = [a1 URL];
    v38 = v21;
    if (v26)
    {
      v27 = v26;
      sub_1DB09CF04();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = sub_1DB09CF64();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v12, v28, 1, v29);
    sub_1DAF624E8(v12, v15, &unk_1ECC0EAB0, &qword_1DB0A9530);
    if ((*(v30 + 48))(v15, 1, v29) == 1)
    {
      sub_1DAF40AEC(v15, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    else
    {
      v31 = sub_1DB09CEA4();
      v32 = v33;
      (*(v30 + 8))(v15, v29);
    }

    MEMORY[0x1E127FE90](v31, v32);

    MEMORY[0x1E127FE90](32, 0xE100000000000000);
    v40 = [a1 statusCode];
    v34 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v34);

    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    v40 = 0;
    v41 = 0xE000000000000000;
    swift_getObjectType();
    v39 = v24;
    sub_1DB09E234();
    MEMORY[0x1E127FE90](v40, v41);

    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    MEMORY[0x1E127FE90](v38, v22);

    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    v35 = v42;
    LOBYTE(v42) = 17;
    (*(v25 + 72))(v35, v43, &v42, v37, v25);

    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1DAFB0A50(__SecTrust *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v4 = sub_1DB09D6B4();
    v5 = [v3 BOOLForKey_];

    if (v5)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DB09DB44();
      sub_1DB09D444();
      v6 = 1;
      goto LABEL_21;
    }
  }

  else
  {
  }

  error[0] = 0;
  v6 = SecTrustEvaluateWithError(a1, error);
  v7 = error[0];
  if (error[0])
  {
    v8 = error[0];
    v9 = CFErrorCopyDescription(v8);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1DB09D6C4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    sub_1DAF3523C(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v23);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1DB09DE44();

    v21 = 0xD000000000000023;
    v22 = 0x80000001DB0C5C10;
    if (v13)
    {
      v16 = v11;
    }

    else
    {
      v16 = 7104878;
    }

    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    MEMORY[0x1E127FE90](v16, v17);

    v18 = v21;
    LOBYTE(v21) = 17;
    (*(v15 + 40))(v18, v22, &v21, v14, v15);

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v7 = error[0];
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1DAFB0D08()
{
  type metadata accessor for DIPHTTPSession.ClientInfoHeaderProvider();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_1EE30A060 = v0;
  return result;
}

uint64_t sub_1DAFB0D48()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

id sub_1DAFB1144()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DIPHTTPSession.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPHTTPSession.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DAFB1360()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 176) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB13F8, v1, 0);
}

uint64_t sub_1DAFB13F8()
{
  v1 = *(v0 + 176);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFB15D8, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFB14C8;
    v3 = *(v0 + 176);

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFB14C8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v5 = *v0;

  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB15D8, v3, 0);
}

uint64_t sub_1DAFB15D8()
{
  v1 = v0[22];
  v2 = sub_1DAFB3448();
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  v3[2] = v1;
  v3[3] = 0x54746375646F7250;
  v3[4] = 0xEB00000000657079;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  v0[27] = v6;
  *v5 = v0;
  v5[1] = sub_1DAFB1718;

  return MEMORY[0x1EEE6DDE0](v0 + 10, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFB1718()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 176);
  v6 = *v0;

  *(v1 + 224) = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1854, v4, 0);
}

uint64_t sub_1DAFB1854()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = swift_task_alloc();
  v0[30] = v3;
  v3[2] = v2;
  v3[3] = 0x4E746375646F7250;
  v3[4] = 0xEB00000000656D61;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFB1974;
  v6 = v0[27];

  return MEMORY[0x1EEE6DDE0](v0 + 12, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFB1974()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 176);
  v6 = *v0;

  *(v1 + 256) = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1AB0, v4, 0);
}

uint64_t sub_1DAFB1AB0()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "ProductVersion");
  *(v3 + 39) = -18;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFB1BD4;
  v6 = v0[27];

  return MEMORY[0x1EEE6DDE0](v0 + 14, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFB1BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 176);
  v6 = *v0;

  *(v1 + 288) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1D10, v4, 0);
}

uint64_t sub_1DAFB1D10()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "BuildVersion");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFB1E30;
  v6 = v0[27];

  return MEMORY[0x1EEE6DDE0](v0 + 16, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFB1E30()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 304);
  v5 = *v0;

  *(v1 + 320) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1F50, 0, 0);
}

id sub_1DAFB1F50()
{
  type metadata accessor for DIPHTTPSession();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  result = [v2 bundleForClass_];
  v4 = *MEMORY[0x1E695E500];
  if (!*MEMORY[0x1E695E500])
  {
    __break(1u);
    return result;
  }

  v5 = result;
  if ([result objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v40 = 0u;
  }

  *(v0 + 16) = v37;
  *(v0 + 32) = v40;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v33 = *(v0 + 160);
      v34 = *(v0 + 168);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1DAF40AEC(v0 + 16, &qword_1ECC0E370, &qword_1DB0A09B0);
  }

  v33 = 7104878;
  v34 = 0xE300000000000000;
LABEL_10:
  v6 = [v5 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v31 = sub_1DB09D6C4();
    v32 = v8;
  }

  else
  {
    v31 = 7104878;
    v32 = 0xE300000000000000;
  }

  v9 = [v2 mainBundle];
  if ([v9 objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v40 = 0u;
  }

  *(v0 + 48) = v37;
  *(v0 + 64) = v40;
  if (!*(v0 + 72))
  {
    sub_1DAF40AEC(v0 + 48, &qword_1ECC0E370, &qword_1DB0A09B0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v11 = 0xE300000000000000;
    v10 = 7104878;
    goto LABEL_21;
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
LABEL_21:
  v30 = v10;
  v36 = v5;
  v12 = [v9 bundleIdentifier];
  v13 = 0xE300000000000000;
  v35 = v9;
  if (v12)
  {
    v14 = v12;
    v15 = sub_1DB09D6C4();
    v17 = v16;
  }

  else
  {
    v15 = 7104878;
    v17 = 0xE300000000000000;
  }

  v18 = *(v0 + 328);
  v19 = *(v0 + 296);
  v20 = *(v0 + 264);
  if (v18)
  {
    v21 = *(v0 + 328);
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  if (v18)
  {
    v22 = *(v0 + 320);
  }

  else
  {
    v22 = 7104878;
  }

  if (v19)
  {
    v23 = *(v0 + 296);
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  if (v19)
  {
    v24 = *(v0 + 288);
  }

  else
  {
    v24 = 7104878;
  }

  if (v20)
  {
    v25 = *(v0 + 264);
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  if (v20)
  {
    v26 = *(v0 + 256);
  }

  else
  {
    v26 = 7104878;
  }

  if (*(v0 + 232))
  {
    v13 = *(v0 + 232);
    v27 = *(v0 + 224);
  }

  else
  {
    v27 = 7104878;
  }

  v29 = v27;
  v38 = v26;
  v39 = v25;
  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v24, v23);

  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v22, v21);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v33, v34);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v15, v17);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v30, v11);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  MEMORY[0x1E127FE90](v29, v13);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v38, v39);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v31, v32);

  MEMORY[0x1E127FE90](62, 0xE100000000000000);

  v28 = *(v0 + 8);

  return v28(60, 0xE100000000000000);
}

uint64_t sub_1DAFB23D4(void *a1, void *a2)
{
  if (a2)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v3 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v4 = a2;
    v5 = sub_1DB09CE64();
    v6 = [v5 domain];
    v7 = sub_1DB09D6C4();
    v9 = v8;

    if (v7 == 0x726F72724549444FLL && v9 == 0xE800000000000000)
    {
    }

    else
    {
      v11 = sub_1DB09E254();

      if ((v11 & 1) == 0)
      {
        v12 = *MEMORY[0x1E696AA08];
        v13 = sub_1DB09D6C4();
        v15 = v14;
        v109 = sub_1DAF4D7A4();
        *&v108 = v5;
        sub_1DAF40D20(&v108, v107);
        v16 = v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v107, v13, v15, isUniquelyReferenced_nonNull_native);

        v18 = v3;
        v19 = 138;
LABEL_24:
        if (*(v18 + 16) && (v33 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v34 & 1) != 0) && (sub_1DAF409DC(*(v18 + 56) + 32 * v33, &v108), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v35 = *&v107[0];
        }

        else
        {
          v35 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1DAF72EC0(0, *(v35 + 2) + 1, 1, v35);
        }

        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1DAF72EC0((v36 > 1), v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v38 = &v35[56 * v37];
        *(v38 + 4) = 0xD00000000000002ALL;
        *(v38 + 5) = 0x80000001DB0C56B0;
        *(v38 + 6) = 0xD000000000000026;
        *(v38 + 7) = 0x80000001DB0C56E0;
        *(v38 + 8) = 0xD00000000000001ELL;
        *(v38 + 9) = 0x80000001DB0C5710;
        *(v38 + 10) = 369;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v108 = v35;
        sub_1DAF40D20(&v108, v107);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v107, 0x636F766E4949444FLL, 0xEE00736E6F697461, v39);
        v40 = qword_1DB0A9590[v19];
        v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v42 = sub_1DB09D6B4();
        v43 = sub_1DB09D604();
        v44 = [v41 initWithDomain:v42 code:v40 userInfo:v43];

        return v44;
      }
    }

    ODIErrorCode.init(rawValue:)([v5 code]);
    LODWORD(v19) = v108 ^ 0x80;
    v32 = [v5 userInfo];
    v18 = sub_1DB09D624();

    if (v108 == 211)
    {
      v19 = 138;
    }

    else
    {
      v19 = v19;
    }

    goto LABEL_24;
  }

  if (!a1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v45 = MEMORY[0x1E69E7CC0];
    v46 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v46 + 16))
    {
      v47 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v48)
      {
        sub_1DAF409DC(*(v46 + 56) + 32 * v47, &v108);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v45 = *&v107[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1DAF72EC0(0, *(v45 + 2) + 1, 1, v45);
    }

    v50 = *(v45 + 2);
    v49 = *(v45 + 3);
    if (v50 >= v49 >> 1)
    {
      v45 = sub_1DAF72EC0((v49 > 1), v50 + 1, 1, v45);
    }

    *(v45 + 2) = v50 + 1;
    v51 = &v45[56 * v50];
    *(v51 + 4) = 0xD000000000000019;
    *(v51 + 5) = 0x80000001DB0C58C0;
    *(v51 + 6) = 0xD000000000000026;
    *(v51 + 7) = 0x80000001DB0C56E0;
    *(v51 + 8) = 0xD00000000000001ELL;
    *(v51 + 9) = 0x80000001DB0C5710;
    *(v51 + 10) = 372;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v108 = v45;
    sub_1DAF40D20(&v108, v107);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v107, 0x636F766E4949444FLL, 0xEE00736E6F697461, v52);
    v53 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v54 = sub_1DB09D6B4();
    v55 = sub_1DB09D604();
    v44 = [v53 initWithDomain:v54 code:-13 userInfo:v55];

    return v44;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    v56 = a1;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000054, 0x80000001DB0C58E0);
    v57 = v56;
    v58 = [v57 description];
    v59 = sub_1DB09D6C4();
    v61 = v60;

    MEMORY[0x1E127FE90](v59, v61);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v62 = MEMORY[0x1E69E7CC0];
    v63 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v64 = *(v63 + 16);

    if (v64)
    {
      v65 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v66)
      {
        sub_1DAF409DC(*(v63 + 56) + 32 * v65, &v108);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v62 = *&v107[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1DAF72EC0(0, *(v62 + 2) + 1, 1, v62);
    }

    v68 = *(v62 + 2);
    v67 = *(v62 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v105 = sub_1DAF72EC0((v67 > 1), v68 + 1, 1, v62);
      v69 = v68 + 1;
      v62 = v105;
    }

    *(v62 + 2) = v69;
    v70 = &v62[56 * v68];
    *(v70 + 4) = 0;
    *(v70 + 5) = 0xE000000000000000;
    *(v70 + 6) = 0xD000000000000026;
    *(v70 + 7) = 0x80000001DB0C56E0;
    *(v70 + 8) = 0xD00000000000001ELL;
    *(v70 + 9) = 0x80000001DB0C5710;
    *(v70 + 10) = 375;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v108 = v62;
    sub_1DAF40D20(&v108, v107);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v107, 0x636F766E4949444FLL, 0xEE00736E6F697461, v71);
    v72 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v73 = sub_1DB09D6B4();
    v74 = sub_1DB09D604();
    v44 = [v72 initWithDomain:v73 code:-13 userInfo:v74];

    return v44;
  }

  v22 = v21;
  v23 = a1;
  v24 = [v22 statusCode];
  v25 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1 || (v26 = sub_1DB09D6B4(), v27 = [v25 stringForKey_], v26, !v27))
  {

    goto LABEL_47;
  }

  v28 = sub_1DB09D6C4();
  v30 = v29;

  if (!v28 && v30 == 0xE000000000000000 || (result = sub_1DB09E254(), (result & 1) != 0) || ((v76 = HIBYTE(v30) & 0xF, v77 = v28 & 0xFFFFFFFFFFFFLL, (v30 & 0x2000000000000000) != 0) ? (v78 = HIBYTE(v30) & 0xF) : (v78 = v28 & 0xFFFFFFFFFFFFLL), !v78))
  {

    goto LABEL_47;
  }

  if ((v30 & 0x1000000000000000) != 0)
  {
    LOBYTE(v107[0]) = 0;
    v80 = sub_1DB04059C(v28, v30, 10);
    v101 = v106;
LABEL_161:

    if ((v101 & 1) == 0)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DB09DB44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v102 = swift_allocObject();
      v103 = MEMORY[0x1E69E6530];
      *(v102 + 16) = xmmword_1DB0A04E0;
      v104 = MEMORY[0x1E69E65A8];
      *(v102 + 56) = v103;
      *(v102 + 64) = v104;
      *(v102 + 32) = v80;
      sub_1DB09D444();

      v24 = v80;
    }

LABEL_47:
    if (v24 > 427)
    {
      if (v24 > 499)
      {
        if (v24 <= 501)
        {
          if (v24 == 500)
          {
            v75 = -74;
          }

          else
          {
            v75 = -73;
          }

          goto LABEL_117;
        }

        if (v24 == 502)
        {
          v75 = -72;
          goto LABEL_117;
        }

        if (v24 == 503)
        {
          v75 = -71;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      if (v24 > 432)
      {
        if (v24 == 433)
        {
          v75 = -76;
          goto LABEL_117;
        }

        if (v24 == 434)
        {
          v75 = -75;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      if (v24 == 428)
      {
        v75 = -78;
        goto LABEL_117;
      }

      if (v24 != 429)
      {
        goto LABEL_114;
      }

      v75 = -77;
    }

    else
    {
      if (v24 <= 399)
      {
        if (v24 <= 300)
        {
          if (v24 == 200 || v24 == 204)
          {

            return 0;
          }

          goto LABEL_114;
        }

        if (v24 == 301)
        {
          v75 = -84;
          goto LABEL_117;
        }

        if (v24 == 304)
        {
          v75 = -83;
          goto LABEL_117;
        }

LABEL_114:
        if (v24 == 504)
        {
          v75 = -70;
        }

        else
        {
          v75 = -85;
        }

        goto LABEL_117;
      }

      if (v24 > 402)
      {
        if (v24 == 403)
        {
          v75 = -80;
          goto LABEL_117;
        }

        if (v24 == 404)
        {
          v75 = -79;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      if (v24 == 400)
      {
        v75 = -82;
        goto LABEL_117;
      }

      if (v24 != 401)
      {
        goto LABEL_114;
      }

      v75 = -81;
    }

LABEL_117:
    LOBYTE(v108) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 3;
    v85 = inited + 32;
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 40) = v24;
    v86 = sub_1DAF3E280(inited);
    swift_setDeallocating();
    sub_1DAF40AEC(v85, &qword_1ECC0E380, &qword_1DB0A0308);
    v44 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001FLL, 0x80000001DB0C5960, 0, &v108, 0, v86, 0xD000000000000026, 0x80000001DB0C56E0, 0xD00000000000001ELL, 0x80000001DB0C5710, 422);

    return v44;
  }

  if ((v30 & 0x2000000000000000) == 0)
  {
    if ((v28 & 0x1000000000000000) != 0)
    {
      result = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DB09DEC4();
    }

    v79 = *result;
    if (v79 == 43)
    {
      if (v77 >= 1)
      {
        v76 = v77 - 1;
        if (v77 != 1)
        {
          v80 = 0;
          if (result)
          {
            v90 = (result + 1);
            while (1)
            {
              v91 = *v90 - 48;
              if (v91 > 9)
              {
                goto LABEL_159;
              }

              v92 = 10 * v80;
              if ((v80 * 10) >> 64 != (10 * v80) >> 63)
              {
                goto LABEL_159;
              }

              v80 = v92 + v91;
              if (__OFADD__(v92, v91))
              {
                goto LABEL_159;
              }

              ++v90;
              if (!--v76)
              {
                goto LABEL_160;
              }
            }
          }

          goto LABEL_151;
        }

        goto LABEL_159;
      }

      goto LABEL_169;
    }

    if (v79 != 45)
    {
      if (v77)
      {
        v80 = 0;
        if (result)
        {
          while (1)
          {
            v96 = *result - 48;
            if (v96 > 9)
            {
              goto LABEL_159;
            }

            v97 = 10 * v80;
            if ((v80 * 10) >> 64 != (10 * v80) >> 63)
            {
              goto LABEL_159;
            }

            v80 = v97 + v96;
            if (__OFADD__(v97, v96))
            {
              goto LABEL_159;
            }

            ++result;
            if (!--v77)
            {
              goto LABEL_151;
            }
          }
        }

        goto LABEL_151;
      }

LABEL_159:
      v80 = 0;
      LOBYTE(v76) = 1;
      goto LABEL_160;
    }

    if (v77 >= 1)
    {
      v76 = v77 - 1;
      if (v77 != 1)
      {
        v80 = 0;
        if (result)
        {
          v81 = (result + 1);
          while (1)
          {
            v82 = *v81 - 48;
            if (v82 > 9)
            {
              goto LABEL_159;
            }

            v83 = 10 * v80;
            if ((v80 * 10) >> 64 != (10 * v80) >> 63)
            {
              goto LABEL_159;
            }

            v80 = v83 - v82;
            if (__OFSUB__(v83, v82))
            {
              goto LABEL_159;
            }

            ++v81;
            if (!--v76)
            {
              goto LABEL_160;
            }
          }
        }

LABEL_151:
        LOBYTE(v76) = 0;
LABEL_160:
        LOBYTE(v107[0]) = v76;
        v101 = v76;
        goto LABEL_161;
      }

      goto LABEL_159;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  *&v108 = v28;
  *(&v108 + 1) = v30 & 0xFFFFFFFFFFFFFFLL;
  if (v28 != 43)
  {
    if (v28 != 45)
    {
      if (v76)
      {
        v80 = 0;
        v98 = &v108;
        while (1)
        {
          v99 = *v98 - 48;
          if (v99 > 9)
          {
            break;
          }

          v100 = 10 * v80;
          if ((v80 * 10) >> 64 != (10 * v80) >> 63)
          {
            break;
          }

          v80 = v100 + v99;
          if (__OFADD__(v100, v99))
          {
            break;
          }

          ++v98;
          if (!--v76)
          {
            goto LABEL_160;
          }
        }
      }

      goto LABEL_159;
    }

    if (v76)
    {
      if (--v76)
      {
        v80 = 0;
        v87 = &v108 + 1;
        while (1)
        {
          v88 = *v87 - 48;
          if (v88 > 9)
          {
            break;
          }

          v89 = 10 * v80;
          if ((v80 * 10) >> 64 != (10 * v80) >> 63)
          {
            break;
          }

          v80 = v89 - v88;
          if (__OFSUB__(v89, v88))
          {
            break;
          }

          ++v87;
          if (!--v76)
          {
            goto LABEL_160;
          }
        }
      }

      goto LABEL_159;
    }

    goto LABEL_168;
  }

  if (v76)
  {
    if (--v76)
    {
      v80 = 0;
      v93 = &v108 + 1;
      while (1)
      {
        v94 = *v93 - 48;
        if (v94 > 9)
        {
          break;
        }

        v95 = 10 * v80;
        if ((v80 * 10) >> 64 != (10 * v80) >> 63)
        {
          break;
        }

        v80 = v95 + v94;
        if (__OFADD__(v95, v94))
        {
          break;
        }

        ++v93;
        if (!--v76)
        {
          goto LABEL_160;
        }
      }
    }

    goto LABEL_159;
  }

LABEL_170:
  __break(1u);
  return result;
}

unint64_t sub_1DAFB3448()
{
  result = qword_1EE303990;
  if (!qword_1EE303990)
  {
    type metadata accessor for ODIDeviceInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303990);
  }

  return result;
}

uint64_t sub_1DAFB34A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF8, &unk_1DB0A9580);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v36[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v36[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v36[-1] - v15;
  sub_1DAF3523C(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v37);
  v17 = v38;
  v18 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1DB09DE44();

  strcpy(v36, "Task for URL ");
  HIWORD(v36[1]) = -4864;
  v19 = [a1 currentRequest];
  if (v19)
  {
    v20 = v19;
    sub_1DB09CBA4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_1DB09CBF4();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v8, v21, 1, v22);
  sub_1DAF624E8(v8, v11, &qword_1ECC0EAF8, &unk_1DB0A9580);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    v24 = &qword_1ECC0EAF8;
    v25 = &unk_1DB0A9580;
    v26 = v11;
  }

  else
  {
    sub_1DB09CBC4();
    (*(v23 + 8))(v11, v22);
    v27 = sub_1DB09CF64();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v16, 1, v27) != 1)
    {
      v31 = sub_1DB09CEA4();
      v30 = v32;
      (*(v28 + 8))(v16, v27);
      v29 = v31;
      goto LABEL_10;
    }

    v24 = &unk_1ECC0EAB0;
    v25 = &qword_1DB0A9530;
    v26 = v16;
  }

  sub_1DAF40AEC(v26, v24, v25);
  v29 = 0;
  v30 = 0xE000000000000000;
LABEL_10:
  MEMORY[0x1E127FE90](v29, v30);

  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C5CF0);
  v33 = v36[0];
  LOBYTE(v36[0]) = 17;
  (*(v18 + 16))(v33, v36[1], v36, v17, v18);

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_1DAFB3854(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v4 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v3);
    v5 = a1;
    sub_1DB09DE44();

    v14[0] = 0xD000000000000011;
    v14[1] = 0x80000001DB0C5CC0;
    v6 = sub_1DB09CE64();
    v7 = [v6 description];
    v8 = sub_1DB09D6C4();
    v10 = v9;

    MEMORY[0x1E127FE90](v8, v10);

    (*(v4 + 16))(0xD000000000000026, 0x80000001DB0C5CC0, v14, v3, v4);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v13 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v12);
    LOBYTE(v14[0]) = 17;
    return (*(v13 + 16))(0xD000000000000035, 0x80000001DB0C5C80, v14, v12, v13);
  }
}

void sub_1DAFB39E4(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = [a1 protectionSpace];
  v4 = [v15 authenticationMethod];
  v5 = sub_1DB09D6C4();
  v7 = v6;

  v8 = *MEMORY[0x1E696A968];
  if (sub_1DB09D6C4() == v5 && v9 == v7)
  {
  }

  else
  {
    v11 = sub_1DB09E254();

    if ((v11 & 1) == 0)
    {
      (*(a3 + 16))(a3, 1, 0);
      goto LABEL_13;
    }
  }

  v12 = [v15 serverTrust];
  if (v12)
  {
    v13 = v12;
    if (sub_1DAFB0A50(v12))
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E696AF30]) initWithTrust_];
      (*(a3 + 16))(a3, 0, v14);

      v15 = v14;
      goto LABEL_13;
    }
  }

  (*(a3 + 16))(a3, 2, 0);
LABEL_13:
}

uint64_t sub_1DAFB3B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF8, &unk_1DB0A9580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFB3BEC(void *a1)
{
  v3 = v1;
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = sub_1DAFD1C2C(0, 0, 0);
    if (!v2)
    {
      error[0] = v19;
      error[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB68, &qword_1DB0A9E58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB70, &qword_1DB0A9E60);
      swift_dynamicCast();
      v6 = *(&v70[0] + 1);
      *(v3 + 16) = *&v70[0];
      goto LABEL_23;
    }

    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DB09DB64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DB0A04E0;
    swift_getErrorValue();
    v22 = sub_1DB09E324();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1DAF4DC24();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_1DB09D444();

    v25 = v2;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v26 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v27 = v2;
    v28 = sub_1DB09CE64();
    v29 = [v28 domain];
    v30 = sub_1DB09D6C4();
    v32 = v31;

    if (v30 == 0x726F727245504944 && v32 == 0xE800000000000000)
    {
      goto LABEL_21;
    }

    v39 = sub_1DB09E254();

    if (v39)
    {
      goto LABEL_28;
    }

    v57 = [v28 domain];
    v58 = sub_1DB09D6C4();
    v60 = v59;

    if (v58 == 0x726F72724549444FLL && v60 == 0xE800000000000000)
    {
LABEL_21:
    }

    else
    {
      v61 = sub_1DB09E254();

      if ((v61 & 1) == 0)
      {
        v62 = *MEMORY[0x1E696AA08];
        v63 = sub_1DB09D6C4();
        v65 = v64;
        v72 = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
        error[0] = v28;
        sub_1DAF40D20(error, v70);
        v66 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v70, v63, v65, isUniquelyReferenced_nonNull_native);

        v69 = 0;
        v42 = v26;
        goto LABEL_32;
      }
    }

LABEL_28:
    DIPErrorCode.init(rawValue:)([v28 code]);
    if (LOWORD(error[0]) == 462)
    {
      v40 = 0;
    }

    else
    {
      v40 = error[0];
    }

    v41 = [v28 userInfo];
    v42 = sub_1DB09D624();

    v69 = v40;
LABEL_32:
    if (*(v42 + 16) && (v43 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v44 & 1) != 0) && (sub_1DAF409DC(*(v42 + 56) + 32 * v43, error), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
    {
      v45 = *&v70[0];
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1DAF72FF4(0, *(v45 + 2) + 1, 1, v45);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v68 = sub_1DAF72FF4((v46 > 1), v47 + 1, 1, v45);
      v48 = v47 + 1;
      v45 = v68;
    }

    *(v45 + 2) = v48;
    v49 = &v45[56 * v47];
    *(v49 + 4) = 0xD000000000000024;
    *(v49 + 5) = 0x80000001DB0C61F0;
    *(v49 + 6) = 0xD000000000000027;
    *(v49 + 7) = 0x80000001DB0C5E30;
    *(v49 + 8) = 0x293A5F2874696E69;
    *(v49 + 9) = 0xE800000000000000;
    *(v49 + 10) = 98;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v45;
    sub_1DAF40D20(error, v70);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v70, 0x636F766E49504944, 0xEE00736E6F697461, v50);
    v51 = qword_1DB0A9EE0[v69];
    v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v53 = sub_1DB09D6B4();
    v54 = sub_1DB09D604();
    [v52 initWithDomain:v53 code:v51 userInfo:v54];

    swift_willThrow();
    goto LABEL_42;
  }

  *(v3 + 16) = a1;
  v5 = a1;
  v6 = SecKeyCopyPublicKey(v5);
  if (!v6)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v8 + 16))
    {
      v9 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v10)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v9, error);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v7 = *&v70[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72FF4(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1DAF72FF4((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[56 * v12];
    *(v13 + 4) = 0xD00000000000001BLL;
    *(v13 + 5) = 0x80000001DB0C6250;
    *(v13 + 6) = 0xD000000000000027;
    *(v13 + 7) = 0x80000001DB0C5E30;
    *(v13 + 8) = 0x293A5F2874696E69;
    *(v13 + 9) = 0xE800000000000000;
    *(v13 + 10) = 90;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v7;
    sub_1DAF40D20(error, v70);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v70, 0x636F766E49504944, 0xEE00736E6F697461, v14);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1DB09D6B4();
    v17 = sub_1DB09D604();
    [v15 initWithDomain:v16 code:-3102 userInfo:v17];

    swift_willThrow();
    v18 = *(v3 + 16);
    goto LABEL_26;
  }

LABEL_23:
  *(v3 + 24) = v6;
  v33 = v6;
  error[0] = 0;
  v34 = SecKeyCopyExternalRepresentation(v33, error);

  if (!v34)
  {
    LOWORD(v70[0]) = 121;
    sub_1DAFCF218(error[0], 0xD000000000000021, 0x80000001DB0C6220, v70);
    swift_willThrow();

    v18 = *(v3 + 24);
LABEL_26:

LABEL_42:
    type metadata accessor for DIPECIESSessionECV3();
    swift_deallocPartialClassInstance();
    goto LABEL_43;
  }

  v35 = v34;
  v36 = sub_1DB09D034();
  v38 = v37;

  *(v3 + 32) = v36;
  *(v3 + 40) = v38;
LABEL_43:
  v55 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DAFB45CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (v6 = v4, v7 = a4, !*(a4 + 16)) || (v11 = sub_1DAF35474(0), (v12 & 1) == 0) || !*(v7 + 2) || (v13 = *(v7 + 7) + 16 * v11, v14 = *v13, v15 = *(v13 + 8), v16 = sub_1DAF35474(1), (v17 & 1) == 0))
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v22 + 16))
    {
      v23 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v24)
      {
        sub_1DAF409DC(*(v22 + 56) + 32 * v23, &v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v21 = *&v74[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DAF72FF4(0, *(v21 + 2) + 1, 1, v21);
    }

    v26 = *(v21 + 2);
    v25 = *(v21 + 3);
    if (v26 >= v25 >> 1)
    {
      v21 = sub_1DAF72FF4((v25 > 1), v26 + 1, 1, v21);
    }

    *(v21 + 2) = v26 + 1;
    v27 = &v21[56 * v26];
    *(v27 + 4) = 0xD000000000000053;
    *(v27 + 5) = 0x80000001DB0C5E80;
    *(v27 + 6) = 0xD000000000000027;
    *(v27 + 7) = 0x80000001DB0C5E30;
    *(v27 + 8) = 0x2874707972636E65;
    *(v27 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v27 + 10) = 141;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v75 = v21;
    sub_1DAF40D20(&v75, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v22;
    sub_1DAF3B11C(v74, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-1202 userInfo:v31];

    return swift_willThrow();
  }

  v18 = (*(v7 + 7) + 16 * v16);
  v19 = *v18;
  v72 = v18[1];
  v73 = v14;
  v20 = a2 >> 62;
  v71 = v19;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      v14 = BYTE6(a2);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v20 != 2)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  v14 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_56:
      swift_once();
LABEL_43:
      v52 = v14 - 32;
      v53 = v7 - 32;
      v54 = MEMORY[0x1E69E7CC0];
      v55 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v55 + 16))
      {
        v56 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v57)
        {
          sub_1DAF409DC(*(v55 + 56) + 32 * v56, &v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v54 = *&v74[0];
          }
        }
      }

      v58 = v53 | 0x8000000000000000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1DAF72FF4(0, *(v54 + 2) + 1, 1, v54);
      }

      v60 = *(v54 + 2);
      v59 = *(v54 + 3);
      if (v60 >= v59 >> 1)
      {
        v54 = sub_1DAF72FF4((v59 > 1), v60 + 1, 1, v54);
      }

      *(v54 + 2) = v60 + 1;
      v61 = &v54[56 * v60];
      *(v61 + 4) = 0xD000000000000022;
      *(v61 + 5) = v52 | 0x8000000000000000;
      *(v61 + 6) = 0xD000000000000027;
      *(v61 + 7) = v58;
      *(v61 + 8) = 0x2874707972636E65;
      *(v61 + 9) = 0xEF293A5F3A5F3A5FLL;
      *(v61 + 10) = 147;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v75 = v54;
      sub_1DAF40D20(&v75, v74);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v55;
      sub_1DAF3B11C(v74, 0x636F766E49504944, 0xEE00736E6F697461, v62);
      v63 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v64 = sub_1DB09D6B4();
      v65 = sub_1DB09D604();
      [v63 initWithDomain:v64 code:-1 userInfo:v65];

      swift_willThrow();
LABEL_52:
      sub_1DAF40780(v71, v72);
      v40 = v73;
      return sub_1DAF40780(v40, v70);
    }

    v14 = HIDWORD(a1) - a1;
  }

LABEL_27:
  v35 = objc_allocWithZone(MEMORY[0x1E695DF88]);
  v70 = v15;
  sub_1DAF40674(v73, v15);
  sub_1DAF40674(v71, v72);
  v36 = [v35 initWithLength_];
  if (!v36)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v41 = MEMORY[0x1E69E7CC0];
    v42 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v42 + 16))
    {
      v43 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v44)
      {
        sub_1DAF409DC(*(v42 + 56) + 32 * v43, &v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v41 = *&v74[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DAF72FF4(0, *(v41 + 2) + 1, 1, v41);
    }

    v46 = *(v41 + 2);
    v45 = *(v41 + 3);
    if (v46 >= v45 >> 1)
    {
      v41 = sub_1DAF72FF4((v45 > 1), v46 + 1, 1, v41);
    }

    *(v41 + 2) = v46 + 1;
    v47 = &v41[56 * v46];
    *(v47 + 4) = 0xD000000000000029;
    *(v47 + 5) = 0x80000001DB0C6130;
    *(v47 + 6) = 0xD000000000000027;
    *(v47 + 7) = 0x80000001DB0C5E30;
    *(v47 + 8) = 0x2874707972636E65;
    *(v47 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v47 + 10) = 144;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v75 = v41;
    sub_1DAF40D20(&v75, v74);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v42;
    sub_1DAF3B11C(v74, 0x636F766E49504944, 0xEE00736E6F697461, v48);
    v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v50 = sub_1DB09D6B4();
    v51 = sub_1DB09D604();
    [v49 initWithDomain:v50 code:-1 userInfo:v51];

    swift_willThrow();
    goto LABEL_52;
  }

  v69 = v36;
  v37 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength_];
  if (!v37)
  {
    v14 = "Failed to allocate buffer for tag.";
    v7 = "CoreODIEssentials/DIPECIESSession.swift";
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_56;
  }

  v38 = v37;
  v39 = (*(*v6 + 152))(0, a3, v73, v15, v71, v72);
  if (v5)
  {

    sub_1DAF40780(v71, v72);
    v40 = v73;
    return sub_1DAF40780(v40, v70);
  }

  v66 = v39;

  v67 = v69;
  v68 = v38;
  sub_1DAFB736C(a1, a2, v66, v67, v68, &v75);
  sub_1DAF40780(v73, v15);
  sub_1DAF40780(v71, v72);

  return v75;
}

uint64_t sub_1DAFB4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(a3 + 16);
  result = CFDataGetBytePtr(v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v29 = a6;
  result = CFDataGetBytePtr(v11);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [a4 mutableBytes];
  v28 = [a5 mutableBytes];
  v15 = CCCryptorGCMOneshotEncrypt();
  if (v15)
  {
    v16 = v15;
    sub_1DB09DE44();

    v30[0] = 0xD00000000000007ALL;
    v30[1] = 0x80000001DB0C6190;
    v31 = v16;
    v17 = MEMORY[0x1E69E72F0];
    v18 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v18);

    MEMORY[0x1E127FE90](46, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9D0, &unk_1DB0A9420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 20;
    v20 = inited + 32;
    *(inited + 64) = v17;
    *(inited + 40) = v16;
    v21 = sub_1DAF3E3C8(inited);
    swift_setDeallocating();
    sub_1DAF40AEC(v20, &qword_1ECC0E368, &unk_1DB0A02F0);
    DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000027, 0x80000001DB0C6190, 0, v30, 0, v21, 0xD000000000000027, 0x80000001DB0C5E30, 0x2874707972636E65, 0xEF293A5F3A5F3A5FLL, 171);

    return swift_willThrow();
  }

  [a4 appendData_];
  result = CFDataGetBytePtr(v11);
  if (result)
  {
    v22 = sub_1DAFB7678((result + 16), 16);
    v24 = v23;
    *v29 = v22;
    v29[1] = v23;
    sub_1DAF40674(v22, v23);
    v25 = sub_1DB09D034();
    v27 = v26;
    result = sub_1DAF40780(v22, v24);
    v29[2] = v25;
    v29[3] = v27;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

__int128 *sub_1DAFB5240(char a1, SecKeyRef key, unint64_t a3, unint64_t a4, const __CFString *a5, unint64_t a6)
{
  v8 = v7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v92 = *MEMORY[0x1E69E9840];
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_14;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 == 65)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
LABEL_64:
    v63 = v8 - 32;
    v64 = v6 - 2;
    v65 = MEMORY[0x1E69E7CC0];
    v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v66 = *(v6 + 2);

    if (v66)
    {
      v67 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v68)
      {
        sub_1DAF409DC(*(v6 + 7) + 32 * v67, &v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v65 = error[0];
        }
      }
    }

    v69 = v64 | 0x8000000000000000;
    v70 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1DAF72FF4(0, *(v65 + 2) + 1, 1, v65);
    }

    v72 = *(v65 + 2);
    v71 = *(v65 + 3);
    if (v72 >= v71 >> 1)
    {
      v65 = sub_1DAF72FF4((v71 > 1), v72 + 1, 1, v65);
    }

    *(v65 + 2) = v72 + 1;
    v73 = &v65[56 * v72];
    *(v73 + 4) = v70;
    *(v73 + 5) = v13;
    *(v73 + 6) = 0xD000000000000027;
    *(v73 + 7) = v63 | 0x8000000000000000;
    *(v73 + 8) = 0xD00000000000001CLL;
    *(v73 + 9) = v69;
    *(v73 + 10) = 248;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v90 = v65;
    sub_1DAF40D20(&v90, error);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v6;
    sub_1DAF3B11C(error, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v58 = sub_1DB09D6B4();
    goto LABEL_73;
  }

  if (v13)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 == 65)
      {
        goto LABEL_8;
      }

LABEL_14:
      *&v90 = 0;
      *(&v90 + 1) = 0xE000000000000000;
      v6 = &v90;
      sub_1DB09DE44();
      a1 = MEMORY[0x1E127FE90](0xD00000000000003ALL, 0x80000001DB0C6090);
      if (v13 <= 1)
      {
        if (!v13)
        {
          v18 = BYTE6(v11);
LABEL_41:
          error[0] = v18;
          v47 = sub_1DB09E1D4();
          MEMORY[0x1E127FE90](v47);

          v48 = v90;
          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v49 = MEMORY[0x1E69E7CC0];
          v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          v50 = *(v6 + 2);

          if (v50)
          {
            v51 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v52)
            {
              sub_1DAF409DC(*(v6 + 7) + 32 * v51, &v90);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v49 = error[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1DAF72FF4(0, *(v49 + 2) + 1, 1, v49);
          }

          v54 = *(v49 + 2);
          v53 = *(v49 + 3);
          if (v54 >= v53 >> 1)
          {
            v49 = sub_1DAF72FF4((v53 > 1), v54 + 1, 1, v49);
          }

          *(v49 + 2) = v48 + 1;
          v55 = &v49[56 * v48];
          *(v55 + 2) = v48;
          *(v55 + 6) = 0xD000000000000027;
          *(v55 + 7) = 0x80000001DB0C5E30;
          *(v55 + 8) = 0xD00000000000001CLL;
          *(v55 + 9) = 0x80000001DB0C60D0;
          *(v55 + 10) = 245;
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v90 = v49;
          sub_1DAF40D20(&v90, error);
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v88 = v6;
          sub_1DAF3B11C(error, 0x636F766E49504944, 0xEE00736E6F697461, v56);
          v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v58 = sub_1DB09D6B4();
LABEL_73:
          v75 = sub_1DB09D604();
          [v57 initWithDomain:v58 code:-1202 userInfo:v75];

LABEL_74:
          swift_willThrow();
          goto LABEL_75;
        }

        LODWORD(v18) = HIDWORD(v12) - v12;
        if (!__OFSUB__(HIDWORD(v12), v12))
        {
          v18 = v18;
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_82;
      }

      v18 = 0;
      if (v13 != 2)
      {
        goto LABEL_41;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      v16 = __OFSUB__(v19, v20);
      v18 = (v19 - v20);
      if (!v16)
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_79;
  }

  if (BYTE6(a4) != 65)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (v13)
    {
      if (__OFSUB__(HIDWORD(a5), a5))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        swift_once();
        goto LABEL_37;
      }

      if (HIDWORD(a5) - a5 == 65)
      {
        goto LABEL_24;
      }
    }

    else if (BYTE6(a6) == 65)
    {
      goto LABEL_24;
    }

LABEL_54:
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000003DLL, 0x80000001DB0C60F0);
    if (v13 > 1)
    {
      v59 = 0;
      if (v13 != 2)
      {
        goto LABEL_63;
      }

      data = v10->data;
      length = v10->length;
      v16 = __OFSUB__(length, data);
      v59 = length - data;
      if (!v16)
      {
        goto LABEL_63;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v59 = BYTE6(v9);
      goto LABEL_63;
    }

    LODWORD(v59) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
    }

    v59 = v59;
LABEL_63:
    error[0] = v59;
    v62 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v62);

    v8 = "CoreODIEssentials/DIPECIESSession.swift";
    v13 = *(&v90 + 1);
    v11 = v90;
    v6 = "deriveSharedSecret(_:_:_:_:)";
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_64;
    }

    goto LABEL_80;
  }

LABEL_21:
  if (v13 != 2)
  {
    goto LABEL_54;
  }

  v22 = v10->data;
  v21 = v10->length;
  v16 = __OFSUB__(v21, v22);
  v23 = v21 - v22;
  if (v16)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v23 != 65)
  {
    goto LABEL_54;
  }

LABEL_24:
  v86 = a1;
  error[0] = 0;
  publicKey = key;
  v24 = SecKeyCopyExternalRepresentation(key, error);
  if (!v24)
  {
    LOWORD(v90) = 121;
    sub_1DAFCF218(error[0], 0xD000000000000029, 0x80000001DB0C6020, &v90);
    goto LABEL_74;
  }

  v25 = v6;
  v26 = v24;
  v27 = sub_1DB09D034();
  v29 = v28;

  v81 = v25;
  v30 = *(v25 + 4);
  v31 = *(v25 + 5);
  sub_1DAF40674(v30, v31);
  v32 = (v86 & 1) == 0;
  if (v86)
  {
    v33 = v30;
  }

  else
  {
    v33 = v27;
  }

  if (v86)
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  v84 = v33;
  v85 = v34;
  if (v32)
  {
    v35 = v30;
  }

  else
  {
    v35 = v27;
  }

  v83 = v35;
  if (!v32)
  {
    v31 = v29;
  }

  v90 = xmmword_1DB0A0510;
  v79 = v27;
  v80 = v29;
  sub_1DAF40674(v27, v29);
  v78 = v31;
  sub_1DB09D054();
  sub_1DB09D054();
  sub_1DB09D054();
  sub_1DB09D054();
  v6 = *(v81 + 2);
  v10 = *MEMORY[0x1E697B0D8];
  v12 = *(&v90 + 1);
  v9 = v90;
  v88 = 0;
  if (qword_1EE301DE8 != -1)
  {
    goto LABEL_84;
  }

LABEL_37:
  sub_1DB09DB54();
  sub_1DB09D444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A0500;
  v37 = *MEMORY[0x1E697B228];
  *(inited + 32) = *MEMORY[0x1E697B228];
  v38 = MEMORY[0x1E69E6530];
  *(inited + 40) = 32;
  v39 = *MEMORY[0x1E697B230];
  *(inited + 64) = v38;
  *(inited + 72) = v39;
  *(inited + 104) = MEMORY[0x1E6969080];
  *(inited + 80) = v9;
  *(inited + 88) = v12;
  v40 = v37;
  v41 = v39;
  sub_1DAF40674(v9, v12);
  sub_1DAF3E794(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E288, &qword_1DB0A0218);
  swift_arrayDestroy();
  sub_1DAF4062C(0, &qword_1EE3018B0, 0x1E696AEC0);
  sub_1DAFB79E8();
  v42 = sub_1DB09D604();

  v43 = SecKeyCopyKeyExchangeResult(v6, v10, publicKey, v42, &v88);

  if (v43)
  {
    type metadata accessor for DIPSecureData();
    v6 = swift_allocObject();
    *(v6 + 2) = v43;
    v44 = v43;
    BytePtr = CFDataGetBytePtr(v44);
    v46 = CFDataGetLength(v44);

    mlock(BytePtr, v46);
    sub_1DAF40780(v83, v78);
    sub_1DAF40780(v84, v85);
    sub_1DAF40780(v79, v80);
    sub_1DAF40780(v90, *(&v90 + 1));
  }

  else
  {
    v87 = 203;
    sub_1DAFCF218(v88, 0xD00000000000001DLL, 0x80000001DB0C6070, &v87);
    swift_willThrow();
    sub_1DAF40780(v83, v78);
    sub_1DAF40780(v84, v85);
    sub_1DAF40780(v79, v80);
    sub_1DAF40780(v90, *(&v90 + 1));
  }

LABEL_75:
  v76 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1DAFB5D68()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  sub_1DAF40674(v2, *(v1 + 40));
  return v2;
}

const __CFDictionary *sub_1DAFB5DB0(char a1, SecKeyRef key)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v5 = SecKeyCopyExternalRepresentation(key, error);
  if (v5)
  {
    publicKey = key;
    v6 = v5;
    v7 = sub_1DB09D034();
    v9 = v8;

    v10 = *(v2 + 4);
    v11 = *(v2 + 5);
    sub_1DAF40674(v10, v11);
    if (a1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (a1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (a1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v10;
    }

    if (a1)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }

    v41 = xmmword_1DB0A0510;
    v35 = v7;
    v36 = v9;
    v16 = v7;
    v17 = v14;
    v18 = v9;
    v19 = v15;
    sub_1DAF40674(v16, v18);
    sub_1DB09D054();
    v37 = v12;
    v38 = v13;
    sub_1DB09D054();
    v20 = *(v2 + 2);
    v21 = *MEMORY[0x1E697B0D8];
    v40 = 0;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DB09DB54();
    sub_1DB09D444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v23 = *MEMORY[0x1E697B228];
    *(inited + 32) = *MEMORY[0x1E697B228];
    v24 = MEMORY[0x1E69E6530];
    *(inited + 40) = 32;
    v25 = *MEMORY[0x1E697B230];
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    *(inited + 104) = MEMORY[0x1E6969080];
    *(inited + 80) = 0;
    *(inited + 88) = 0xC000000000000000;
    v26 = v23;
    v27 = v25;
    sub_1DAF40674(0, 0xC000000000000000);
    sub_1DAF3E794(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E288, &qword_1DB0A0218);
    swift_arrayDestroy();
    sub_1DAF4062C(0, &qword_1EE3018B0, 0x1E696AEC0);
    sub_1DAFB79E8();
    v2 = sub_1DB09D604();

    v28 = SecKeyCopyKeyExchangeResult(v20, v21, publicKey, v2, &v40);

    if (v28)
    {
      type metadata accessor for DIPSecureData();
      v2 = swift_allocObject();
      *(v2 + 2) = v28;
      v29 = v28;
      BytePtr = CFDataGetBytePtr(v29);
      Length = CFDataGetLength(v29);

      mlock(BytePtr, Length);
      sub_1DAF40780(v17, v19);
      sub_1DAF40780(v37, v38);
      sub_1DAF40780(v35, v36);
      sub_1DAF40780(v41, *(&v41 + 1));
    }

    else
    {
      v39 = 203;
      sub_1DAFCF218(v40, 0xD00000000000001DLL, 0x80000001DB0C6070, &v39);
      swift_willThrow();
      sub_1DAF40780(v17, v19);
      sub_1DAF40780(v37, v38);
      sub_1DAF40780(v35, v36);
      sub_1DAF40780(v41, *(&v41 + 1));
    }
  }

  else
  {
    LOWORD(v41) = 121;
    sub_1DAFCF218(error[0], 0xD000000000000029, 0x80000001DB0C6020, &v41);
    swift_willThrow();
  }

  v32 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1DAFB619C()
{
  sub_1DAF40780(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_1DAFB6208(uint64_t a1, unint64_t a2, __SecKey *a3, uint64_t a4)
{
  v129 = *MEMORY[0x1E69E9840];
  if (!a4 || (v5 = v4, !*(a4 + 16)) || (v10 = sub_1DAF35474(0), (v11 & 1) == 0) || !*(a4 + 16) || (v12 = (*(a4 + 56) + 16 * v10), v14 = *v12, v13 = v12[1], v15 = sub_1DAF35474(1), (v16 & 1) == 0))
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v22 + 16))
    {
      v23 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v24)
      {
        sub_1DAF409DC(*(v22 + 56) + 32 * v23, &v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v21 = *&v126[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DAF72FF4(0, *(v21 + 2) + 1, 1, v21);
    }

    v26 = *(v21 + 2);
    v25 = *(v21 + 3);
    if (v26 >= v25 >> 1)
    {
      v21 = sub_1DAF72FF4((v25 > 1), v26 + 1, 1, v21);
    }

    *(v21 + 2) = v26 + 1;
    v27 = &v21[56 * v26];
    *(v27 + 4) = 0xD000000000000053;
    *(v27 + 5) = 0x80000001DB0C5E80;
    *(v27 + 6) = 0xD000000000000027;
    *(v27 + 7) = 0x80000001DB0C5E30;
    *(v27 + 8) = 0x2874707972636E65;
    *(v27 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v27 + 10) = 320;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v127 = v21;
    sub_1DAF40D20(&v127, v126);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v126, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-1202 userInfo:v31];

    swift_willThrow();
    goto LABEL_20;
  }

  v17 = (*(a4 + 56) + 16 * v15);
  v18 = v17[1];
  v122 = v18;
  v123 = *v17;
  v19 = v13 >> 62;
  v120 = v13;
  v121 = v14;
  if ((v13 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(v13);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v19 != 2)
  {
    goto LABEL_31;
  }

  v34 = *(v14 + 16);
  v33 = *(v14 + 24);
  v35 = __OFSUB__(v33, v34);
  v20 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_25:
    LODWORD(v20) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
LABEL_114:
      swift_once();
LABEL_73:
      v74 = MEMORY[0x1E69E7CC0];
      v75 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v76 = *(v75 + 16);

      if (v76)
      {
        v77 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v78)
        {
          sub_1DAF409DC(*(v75 + 56) + 32 * v77, &v127);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v74 = *&v126[0];
          }
        }
      }

      v79 = (v13 - 32) | 0x8000000000000000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1DAF72FF4(0, *(v74 + 2) + 1, 1, v74);
      }

      v81 = *(v74 + 2);
      v80 = *(v74 + 3);
      if (v81 >= v80 >> 1)
      {
        v74 = sub_1DAF72FF4((v80 > 1), v81 + 1, 1, v74);
      }

      *(v74 + 2) = v81 + 1;
      v82 = &v74[56 * v81];
      *(v82 + 4) = v19;
      *(v82 + 5) = a1;
      *(v82 + 6) = 0xD000000000000027;
      *(v82 + 7) = v79;
      *(v82 + 8) = 0x2874707972636E65;
      *(v82 + 9) = 0xEF293A5F3A5F3A5FLL;
      *(v82 + 10) = 326;
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v127 = v74;
      sub_1DAF40D20(&v127, v126);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v126, 0x636F766E49504944, 0xEE00736E6F697461, v83);
      v53 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v54 = sub_1DB09D6B4();
LABEL_82:
      v84 = sub_1DB09D604();
      [v53 initWithDomain:v54 code:-1202 userInfo:v84];

      swift_willThrow();
      sub_1DAF40780(v123, v122);
      v86 = v120;
      v85 = v121;
LABEL_83:
      sub_1DAF40780(v85, v86);
LABEL_20:
      v32 = *MEMORY[0x1E69E9840];
      return;
    }

    v20 = v20;
  }

LABEL_27:
  if (v20 == 65)
  {
    v19 = v18 >> 62;
    if ((v18 >> 62) <= 1)
    {
      if (!v19)
      {
        v36 = BYTE6(v18);
        goto LABEL_57;
      }

      LODWORD(v36) = HIDWORD(v123) - v123;
      if (!__OFSUB__(HIDWORD(v123), v123))
      {
        v36 = v36;
        goto LABEL_57;
      }

LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    goto LABEL_38;
  }

LABEL_31:
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  sub_1DAF40674(v14, v13);
  sub_1DAF40674(v123, v18);
  v18 = &v127;
  sub_1DB09DE44();

  *&v127 = 0xD00000000000002FLL;
  *(&v127 + 1) = 0x80000001DB0C5EE0;
  if (v19 <= 1)
  {
    if (!v19)
    {
      v37 = BYTE6(v13);
      goto LABEL_44;
    }

LABEL_42:
    LODWORD(v37) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
      goto LABEL_116;
    }

    v37 = v37;
LABEL_44:
    *&v126[0] = v37;
    v42 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v42);

    v43 = *(&v127 + 1);
    v119 = v127;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v44 = MEMORY[0x1E69E7CC0];
    v45 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v46 = *(v45 + 16);

    if (v46)
    {
      v47 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v48)
      {
        sub_1DAF409DC(*(v45 + 56) + 32 * v47, &v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v44 = *&v126[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1DAF72FF4(0, *(v44 + 2) + 1, 1, v44);
    }

    v50 = *(v44 + 2);
    v49 = *(v44 + 3);
    if (v50 >= v49 >> 1)
    {
      v44 = sub_1DAF72FF4((v49 > 1), v50 + 1, 1, v44);
    }

    *(v44 + 2) = v50 + 1;
    v51 = &v44[56 * v50];
    *(v51 + 4) = v119;
    *(v51 + 5) = v43;
    *(v51 + 6) = 0xD000000000000027;
    *(v51 + 7) = 0x80000001DB0C5E30;
    *(v51 + 8) = 0x2874707972636E65;
    *(v51 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v51 + 10) = 323;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v127 = v44;
    sub_1DAF40D20(&v127, v126);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v126, 0x636F766E49504944, 0xEE00736E6F697461, v52);
    v53 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v54 = sub_1DB09D6B4();
    goto LABEL_82;
  }

  v37 = 0;
  if (v19 != 2)
  {
    goto LABEL_44;
  }

  v39 = *(v14 + 16);
  v38 = *(v14 + 24);
  v35 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (!v35)
  {
    goto LABEL_44;
  }

  __break(1u);
LABEL_38:
  if (v19 != 2)
  {
LABEL_63:
    *&v127 = 0;
    *(&v127 + 1) = 0xE000000000000000;
    sub_1DAF40674(v14, v13);
    sub_1DAF40674(v123, v18);
    v18 = &v127;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000032, 0x80000001DB0C5F10);
    if (v19 > 1)
    {
      v70 = 0;
      if (v19 != 2 || (v72 = *(v123 + 16), v71 = *(v123 + 24), v35 = __OFSUB__(v71, v72), v70 = v71 - v72, !v35))
      {
LABEL_72:
        *&v126[0] = v70;
        v73 = sub_1DB09E1D4();
        MEMORY[0x1E127FE90](v73);

        a1 = *(&v127 + 1);
        v19 = v127;
        v13 = "CoreODIEssentials/DIPECIESSession.swift";
        if (qword_1EE300B90 == -1)
        {
          goto LABEL_73;
        }

        goto LABEL_114;
      }

      __break(1u);
    }

    else if (!v19)
    {
      v70 = BYTE6(v122);
      goto LABEL_72;
    }

    LODWORD(v70) = HIDWORD(v123) - v123;
    if (!__OFSUB__(HIDWORD(v123), v123))
    {
      v70 = v70;
      goto LABEL_72;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    swift_once();
LABEL_98:
    v100 = v13 - 32;
    v101 = v18 - 32;
    v102 = MEMORY[0x1E69E7CC0];
    v103 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v103 + 16))
    {
      v104 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v105)
      {
        sub_1DAF409DC(*(v103 + 56) + 32 * v104, &v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v102 = *&v126[0];
        }
      }
    }

    v106 = v100 | 0x8000000000000000;
    v107 = v101 | 0x8000000000000000;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_1DAF72FF4(0, *(v102 + 2) + 1, 1, v102);
    }

    v109 = *(v102 + 2);
    v108 = *(v102 + 3);
    if (v109 >= v108 >> 1)
    {
      v102 = sub_1DAF72FF4((v108 > 1), v109 + 1, 1, v102);
    }

    *(v102 + 2) = v109 + 1;
    v110 = &v102[56 * v109];
    *(v110 + 4) = 0xD000000000000032;
    *(v110 + 5) = v106;
    *(v110 + 6) = 0xD000000000000027;
    *(v110 + 7) = v107;
    *(v110 + 8) = 0x2874707972636E65;
    *(v110 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v110 + 10) = 346;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v127 = v102;
    sub_1DAF40D20(&v127, v126);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v126, 0x636F766E49504944, 0xEE00736E6F697461, v111);
    v112 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v113 = sub_1DB09D6B4();
    v114 = sub_1DB09D604();
    [v112 initWithDomain:v113 code:-3102 userInfo:v114];

    swift_willThrow();
    sub_1DAF40780(v118, v117);
    v87 = a3;
    v88 = a2;
    goto LABEL_107;
  }

  v41 = *(v123 + 16);
  v40 = *(v123 + 24);
  v35 = __OFSUB__(v40, v41);
  v36 = v40 - v41;
  if (v35)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_57:
  if (v36 != 65)
  {
    goto LABEL_63;
  }

  error = 0;
  sub_1DAF40674(v14, v13);
  sub_1DAF40674(v123, v18);
  v55 = SecKeyCopyExternalRepresentation(a3, &error);
  if (!v55)
  {
    LOWORD(v127) = 198;
    sub_1DAFCF218(error, 0xD000000000000049, 0x80000001DB0C5F50, &v127);
    swift_willThrow();
    sub_1DAF40780(v14, v13);
    v85 = v123;
    v86 = v18;
    goto LABEL_83;
  }

  v56 = v55;
  v118 = sub_1DB09D034();
  v58 = v57;

  v124 = xmmword_1DB0A0510;
  sub_1DB09D054();
  v117 = v58;
  sub_1DB09D054();
  sub_1DB09D054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
  inited = swift_initStackObject();
  v60 = MEMORY[0x1E697B230];
  *(inited + 16) = xmmword_1DB0A04E0;
  v61 = *v60;
  *(inited + 32) = v61;
  *(inited + 64) = MEMORY[0x1E6969080];
  *(inited + 40) = xmmword_1DB0A0510;
  v62 = v61;
  sub_1DAF40674(0, 0xC000000000000000);
  sub_1DAF3E794(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &unk_1ECC0E288, &qword_1DB0A0218);
  v63 = *MEMORY[0x1E697B138];
  v64 = sub_1DB09D004();
  sub_1DAF4062C(0, &qword_1EE3018B0, 0x1E696AEC0);
  sub_1DAFB79E8();
  v65 = sub_1DB09D604();

  EncryptedDataWithParameters = DIPSecKeyCreateEncryptedDataWithParameters();

  if (!EncryptedDataWithParameters)
  {
    LOWORD(v127) = 121;
    sub_1DAFCF218(error, 0xD00000000000003DLL, 0x80000001DB0C5FA0, &v127);
    swift_willThrow();
    v88 = v117;
    v87 = v118;
LABEL_107:
    sub_1DAF40780(v87, v88);
    sub_1DAF40780(v123, v122);
    sub_1DAF40780(v14, v120);
    v86 = *(&v124 + 1);
    v85 = v124;
    goto LABEL_83;
  }

  a3 = sub_1DB09D034();
  a2 = v67;

  v68 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v68 != 2)
    {
      goto LABEL_97;
    }

    v90 = *(a3 + 2);
    v89 = *(a3 + 3);
    v35 = __OFSUB__(v89, v90);
    v69 = v89 - v90;
    if (!v35)
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (!v68)
  {
    v69 = BYTE6(a2);
    goto LABEL_92;
  }

  LODWORD(v69) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v69 = v69;
LABEL_92:
  if (v69 < 66)
  {
LABEL_97:
    v13 = "Failed to perform encryption - output is too short";
    v18 = "CoreODIEssentials/DIPECIESSession.swift";
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_118;
  }

  v91 = sub_1DB09D064();
  v92 = *(v5 + 16);
  v93 = *(v5 + 24);
  *(v5 + 16) = v91;
  *(v5 + 24) = v94;
  sub_1DAF4AC40(v92, v93);
  if (v68 == 2)
  {
    v116 = *(a3 + 2);
    v115 = *(a3 + 3);
    v99 = v115 - v116;
    v95 = v14;
    v96 = v117;
    v97 = v118;
    if (__OFSUB__(v115, v116))
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v98 = v120;
  }

  else
  {
    v95 = v14;
    v96 = v117;
    v97 = v118;
    if (v68 == 1)
    {
      v98 = v120;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v99 = HIDWORD(a3) - a3;
        goto LABEL_111;
      }

      goto LABEL_120;
    }

    v98 = v120;
    v99 = BYTE6(a2);
  }

LABEL_111:
  if (v99 >= 65)
  {
    sub_1DB09D064();
    sub_1DAF40780(v97, v96);
    sub_1DAF40780(a3, a2);
    sub_1DAF40780(v123, v122);
    sub_1DAF40780(v95, v98);
    sub_1DAF40780(0, 0xC000000000000000);
    goto LABEL_20;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_1DAFB7254()
{
  sub_1DAF4AC40(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFB72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = *v7;
  result = a7();
  if (v8)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1DAFB7320()
{
  v2 = *v0;
  result = sub_1DAFB7728();
  if (!v1)
  {
    v5 = result;
    sub_1DAF40674(result, v4);
    return v5;
  }

  return result;
}

void sub_1DAFB736C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v29[2] = *MEMORY[0x1E69E9840];
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v29[0] = a1;
      LOWORD(v29[1]) = a2;
      BYTE2(v29[1]) = BYTE2(a2);
      BYTE3(v29[1]) = BYTE3(a2);
      BYTE4(v29[1]) = BYTE4(a2);
      BYTE5(v29[1]) = BYTE5(a2);
      v11 = v29 + BYTE6(a2);
      v12 = v29;
      goto LABEL_24;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v13 = a6;
      v28 = v6;
      v16 = sub_1DB09CD44();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = sub_1DB09CD74();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_16:
        v25 = sub_1DB09CD64();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v10 != 2)
  {
    memset(v29, 0, 14);
    v12 = v29;
    v11 = v29;
    goto LABEL_24;
  }

  v13 = a6;
  v28 = v6;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = sub_1DB09CD44();
  if (v16)
  {
    v17 = sub_1DB09CD74();
    if (__OFSUB__(v15, v17))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 += v15 - v17;
  }

  v18 = __OFSUB__(v14, v15);
  v19 = v14 - v15;
  if (v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = sub_1DB09CD64();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_19:
  v26 = (v21 + v16);
  if (v16)
  {
    v11 = v26;
  }

  else
  {
    v11 = 0;
  }

  a6 = v13;
  v12 = v16;
  a3 = v9;
  a4 = v8;
  a5 = v7;
  v6 = v28;
LABEL_24:
  sub_1DAFB4F70(v12, v11, a3, a4, a5, a6);
  if (v6)
  {
  }

  else
  {
  }

  v27 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1DAFB75A0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAFB75C0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAFB7678(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DAFB75C0(a1, &a1[a2]);
  }

  v3 = sub_1DB09CD84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DB09CD34();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DB09CFB4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DAFB7728()
{
  if (*(v0 + 24) >> 60 != 15)
  {
    return *(v0 + 16);
  }

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 16))
  {
    v3 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v4)
    {
      sub_1DAF409DC(*(v2 + 56) + 32 * v3, &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v1 = *&v13[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DAF72FF4(0, *(v1 + 2) + 1, 1, v1);
  }

  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (v6 >= v5 >> 1)
  {
    v1 = sub_1DAF72FF4((v5 > 1), v6 + 1, 1, v1);
  }

  *(v1 + 2) = v6 + 1;
  v7 = &v1[56 * v6];
  *(v7 + 4) = 0xD000000000000020;
  *(v7 + 5) = 0x80000001DB0C5E00;
  *(v7 + 6) = 0xD000000000000027;
  *(v7 + 7) = 0x80000001DB0C5E30;
  *(v7 + 8) = 0xD000000000000013;
  *(v7 + 9) = 0x80000001DB0C5E60;
  *(v7 + 10) = 391;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *&v14 = v1;
  sub_1DAF40D20(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v2;
  sub_1DAF3B11C(v13, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v10 = sub_1DB09D6B4();
  v11 = sub_1DB09D604();
  [v9 initWithDomain:v10 code:-1201 userInfo:v11];

  return swift_willThrow();
}

unint64_t sub_1DAFB79E8()
{
  result = qword_1EE3018A8;
  if (!qword_1EE3018A8)
  {
    sub_1DAF4062C(255, &qword_1EE3018B0, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3018A8);
  }

  return result;
}

unint64_t sub_1DAFB7A64()
{
  result = qword_1EE304358;
  if (!qword_1EE304358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304358);
  }

  return result;
}

uint64_t type metadata accessor for ODNAssessmentResult()
{
  result = qword_1EE3011F0;
  if (!qword_1EE3011F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAFB7B30()
{
  sub_1DAFB7C64(319, qword_1EE301738);
  if (v0 <= 0x3F)
  {
    sub_1DAFB7C64(319, &qword_1EE300A40);
    if (v1 <= 0x3F)
    {
      sub_1DAFB7C64(319, &qword_1EE3017E8);
      if (v2 <= 0x3F)
      {
        sub_1DAFB7C64(319, &qword_1EE301350);
        if (v3 <= 0x3F)
        {
          sub_1DAFB7CB0();
          if (v4 <= 0x3F)
          {
            sub_1DB09DF64();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DAFB7C64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DB09DC64();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1DAFB7CB0()
{
  result = qword_1ECC0EB78;
  if (!qword_1ECC0EB78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECC0EB78);
  }

  return result;
}

uint64_t ODIAssessmentAdapter.adapt(withError:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v23[-v8 - 8];
  v10 = qword_1DB0AADB0[*a1 ^ 0x80];
  v12 = *v2;
  v11 = v2[1];
  sub_1DAFB7F78(v24);
  *&v26[37] = v24[11];
  *&v26[39] = v24[12];
  *&v26[33] = v24[9];
  *&v26[35] = v24[10];
  *&v26[27] = v24[6];
  *&v26[29] = v24[7];
  *&v26[31] = v24[8];
  *&v26[19] = v24[2];
  *&v26[21] = v24[3];
  *&v26[23] = v24[4];
  *&v26[25] = v24[5];
  *&v26[15] = v24[0];
  LOBYTE(v26[41]) = v25;
  *&v26[17] = v24[1];
  memset(v26, 0, 80);
  *&v26[11] = xmmword_1DB0A7A90;
  v26[10] = v10;
  v26[13] = v12;
  v26[14] = v11;
  v13 = v2[5];
  v14 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v13);
  memcpy(v23, v26, 0x149uLL);
  v15 = *(v14 + 8);

  v16 = v15(v23, v13, v14);
  v18 = v17;
  sub_1DB09DF34();
  sub_1DAFB7FA0(v26);
  v19 = sub_1DB09DF64();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  a2[1] = v16;
  a2[2] = v18;
  *a2 = v10;
  v20 = type metadata accessor for ODIErrorAssessment(0);
  sub_1DAF6FBA0(v9, a2 + *(v20 + 24));
  type metadata accessor for ODIAssessmentResult(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1DAFB7F78(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DAFB7FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a2;
  v75 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v74 = &v62 - v8;
  v9 = *(a1 + 376);
  v78 = *(a1 + 360);
  v79 = v9;
  v10 = *(a1 + 408);
  v80 = *(a1 + 392);
  v81 = v10;
  v11 = *(a1 + 496);
  v12 = *(a1 + 512);
  v13 = *(a1 + 560);
  v14 = *(a1 + 528);
  v83 = *(a1 + 544);
  v84 = v13;
  v15 = *(a1 + 512);
  v16 = *(a1 + 528);
  v17 = *(a1 + 496);
  v82[0] = v11;
  v82[1] = v15;
  v82[2] = v14;
  v91 = *(a1 + 560);
  v18 = *(a1 + 288);
  v19 = *(a1 + 296);
  v21 = *(a1 + 320);
  v20 = *(a1 + 328);
  v22 = *(a1 + 336);
  v23 = *(a1 + 344);
  v64 = *(a1 + 352);
  v65 = v18;
  v25 = *(a1 + 464);
  v24 = *(a1 + 472);
  v27 = *(a1 + 480);
  v26 = *(a1 + 488);
  v28 = *(a1 + 576);
  v66 = *(a1 + 584);
  v67 = v24;
  v29 = *(a1 + 592);
  v68 = *(a1 + 600);
  v30 = *(a1 + 624);
  v31 = *(a1 + 640);
  v32 = *(a1 + 648);
  v70 = v26;
  v71 = v32;
  v33 = *(a1 + 656);
  v34 = *(a1 + 664);
  v35 = *(a1 + 672);
  v89 = v16;
  v90 = v83;
  v87 = v17;
  v88 = v12;
  LOBYTE(v77[0]) = v30;
  *&v85 = v25;
  *(&v85 + 1) = v24;
  *&v86 = v27;
  *(&v86 + 1) = v26;
  *&v92 = v28;
  *(&v92 + 1) = v66;
  *&v93 = v29;
  *(&v93 + 1) = v68;
  v72 = *(a1 + 608);
  v94 = v72;
  LOBYTE(v95) = v30;
  *(&v95 + 1) = a2;
  *&v96 = v31;
  *(&v96 + 1) = v32;
  LOBYTE(v97) = v33;
  *(&v97 + 1) = v34;
  v98 = v35;
  nullsub_3(&v85);
  v99[1] = v78;
  v99[2] = v79;
  v99[3] = v80;
  v99[4] = v81;
  *(&v99[18] + 8) = v96;
  *(&v99[19] + 8) = v97;
  *(&v99[16] + 8) = v94;
  *(&v99[17] + 8) = v95;
  *(&v99[13] + 8) = v91;
  *(&v99[14] + 8) = v92;
  *(&v99[15] + 8) = v93;
  *(&v99[9] + 8) = v87;
  *(&v99[10] + 8) = v88;
  *(&v99[11] + 8) = v89;
  *(&v99[12] + 8) = v90;
  *(&v99[7] + 8) = v85;
  BYTE8(v99[20]) = v98;
  *(&v99[8] + 8) = v86;
  v36 = v64;
  *&v99[0] = v65;
  *(&v99[0] + 1) = v19;
  *&v99[5] = v21;
  *(&v99[5] + 1) = v20;
  *&v99[6] = v22;
  *(&v99[6] + 1) = v23;
  *&v99[7] = v64;
  v37 = v73[6];
  v65 = v73[5];
  v73 = __swift_project_boxed_opaque_existential_1(v73 + 2, v65);
  memcpy(v77, v99, 0x149uLL);
  v63 = *(v37 + 8);

  sub_1DAF40A84(&v78, v76, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  v38 = v22;
  v39 = v36;
  sub_1DAFB85E4(v21, v20, v38, v23, v36);

  sub_1DAF40A84(v82, v76, &qword_1ECC0E8A0, &qword_1DB0A6650);

  v40 = v63(v77, v65, v37);
  v41 = v40;
  v43 = v42;
  v44 = *(a1 + 280);
  if (v44)
  {
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);

    sub_1DAFB7FA0(v99);
    v47 = *(type metadata accessor for ODNAssessmentResult() + 52);
    v48 = sub_1DB09DF64();
    v49 = *(v48 - 8);
    v50 = a1 + v47;
    v51 = v74;
    (*(v49 + 16))(v74, v50, v48);
    (*(v49 + 56))(v51, 0, 1, v48);
    v52 = v75;
    *v75 = v45;
    v52[1] = v44;
    v52[2] = v41;
    v52[3] = v43;
    v53 = type metadata accessor for ODIAssessment(0);
  }

  else
  {
    v73 = v40;
    v54 = v21;
    v56 = v74;
    v55 = v75;
    if (v39 == 1)
    {
      v77[0] = 45;
      v77[1] = 0xE100000000000000;
      v76[0] = 14;
      CoreODILogger.fault(_:category:)(0xD000000000000033, 0x80000001DB0C6270, v76);
      sub_1DAFB7FA0(v99);
      v54 = -1;
    }

    else
    {
      sub_1DAFB7FA0(v99);
    }

    v57 = *(type metadata accessor for ODNAssessmentResult() + 52);
    v58 = sub_1DB09DF64();
    v59 = *(v58 - 8);
    v60 = a1 + v57;
    v51 = v56;
    (*(v59 + 16))(v56, v60, v58);
    (*(v59 + 56))(v56, 0, 1, v58);
    v52 = v55;
    v55[1] = v73;
    v55[2] = v43;
    *v55 = v54;
    v53 = type metadata accessor for ODIErrorAssessment(0);
  }

  sub_1DAF6FBA0(v51, v52 + *(v53 + 24));
  type metadata accessor for ODIAssessmentResult(0);
  return swift_storeEnumTagMultiPayload();
}