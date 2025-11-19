uint64_t type metadata accessor for FMFInitRefreshClientRequest()
{
  result = qword_27EF40D08;
  if (!qword_27EF40D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A4394()
{
  sub_24A37B644();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t type metadata accessor for FMFBaseRequest()
{
  result = qword_27EF3FC28;
  if (!qword_27EF3FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3A4498()
{
  result = sub_24A4AAAD0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A3A4548(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_24A3A45B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A4AABF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F98];
  *(v2 + qword_27EF3FC00) = MEMORY[0x277D84F98];
  *(v2 + qword_27EF3FC08) = v10;
  *(v2 + qword_27EF3FC10) = v10;
  *(v2 + qword_27EF3FC18) = v10;
  *(v2 + qword_27EF3FC20) = v10;
  sub_24A4AAA40();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);
  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A376000, v12, v13, "BaseEndpoint: initialized", v14, 2u);
    MEMORY[0x24C219130](v14, -1, -1);
  }

  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 deviceUDID];

  if (v16)
  {
    v17 = sub_24A4AB850();
    v19 = v18;

    v23 = 0xD000000000000018;
    v24 = 0x800000024A4B0880;
    MEMORY[0x24C217D50](v17, v19);

    MEMORY[0x24C217D50](47, 0xE100000000000000);

    MEMORY[0x24C217D50](a1, a2);
  }

  else
  {
    v23 = 0xD000000000000018;
    v24 = 0x800000024A4B0880;
    MEMORY[0x24C217D50](a1, a2);
  }

  v20 = sub_24A4AAC10();
  (*(v6 + 104))(v9, *MEMORY[0x277D07CF8], v5);

  sub_24A4AAC00();
  sub_24A3A4D78();
  v21 = sub_24A3A55D8();
  (*(*v20 + qword_27EF4E0E0 + 256))(v21);

  return v20;
}

void sub_24A3A4954(char *a1)
{
  v29 = a1;
  v30 = sub_24A4ABD50();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v30);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4ABD10();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24A4AB6E0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *MEMORY[0x277CEE9F0];
  v10 = *MEMORY[0x277CEE9D8];
  v11 = sub_24A3785D4();
  v27[0] = ".fmapsconnectionhandler.serial";
  v27[1] = v11;
  v28 = v9;
  v12 = v10;
  sub_24A4AB6B0();
  v31 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  v13 = v29;
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v30);
  v14 = sub_24A4ABD90();
  v15 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v16 = v28;
  v17 = [v15 initWithEnvironmentName:v28 namedDelegatePort:v12 queue:v14];

  v18 = &off_285D89CE0;
  v19 = &v13[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  v20 = *&v13[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  if (!v17)
  {
    v18 = 0;
  }

  *v19 = v17;
  *(v19 + 1) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRetain();
    [v17 setDelegate_];

    swift_unknownObjectRelease();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  sub_24A378E18(v21, qword_27EF4E260);
  v22 = v13;
  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_24A37BD58(*&v22[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic], *&v22[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic + 8], &v31);
    _os_log_impl(&dword_24A376000, v23, v24, "FMAPSConnectionHandler: initialized with default connection for topic %s", v25, 0xCu);
    sub_24A37EEE0(v26);
    MEMORY[0x24C219130](v26, -1, -1);
    MEMORY[0x24C219130](v25, -1, -1);
  }
}

void sub_24A3A4D78()
{
  v1 = v0;
  v2 = qword_27EF3FC08;
  swift_beginAccess();
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(3157553, 0xE300000000000000, 0xD000000000000015, 0x800000024A4B07A0, isUniquelyReferenced_nonNull_native);
  *(v0 + v2) = v21;
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(49, 0xE100000000000000, 0xD000000000000013, 0x800000024A4B07C0, v5);
  *(v0 + v2) = v22;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(3157554, 0xE300000000000000, 0xD000000000000014, 0x800000024A4B07E0, v6);
  *(v0 + v2) = v23;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(0x72657665726F46, 0xE700000000000000, 0xD000000000000012, 0x800000024A4B0800, v7);
  *(v0 + v2) = v24;
  swift_endAccess();
  v8 = [objc_opt_self() currentDevice];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 serverFriendlyDescription];

    if (v10)
    {
      v11 = sub_24A4AB850();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    swift_beginAccess();
    sub_24A3A54D0(v11, v13, 0xD000000000000011, 0x800000024A4B0820);
    swift_endAccess();
    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 isInternalBuild];

    if (v15)
    {
      v16 = [objc_opt_self() standardUserDefaults];
      v17 = sub_24A4AB820();
      v18 = [v16 BOOLForKey_];

      if (v18)
      {
        swift_beginAccess();
        v19 = *(v1 + v2);
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v1 + v2);
        *(v1 + v2) = 0x8000000000000000;
        sub_24A3A50C0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x800000024A4B0860, v20);
        *(v1 + v2) = v25;
        swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A3A50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24A39B2C8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24A4A8348();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24A3A5210(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_24A39B2C8(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_24A4A7F70(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_24A3A5210(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
  v40 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A3A54D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_24A3A50C0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_24A39B2C8(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_24A4A8348();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_24A4A6D18(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

id sub_24A3A55D8()
{
  v87 = sub_24A4AAB80();
  v85 = *(v87 - 8);
  v0 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v2 = &v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A4AAAD0();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAAC0();
  v7 = [objc_opt_self() sharedInstance];
  *(&v95 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v94) = 1;
  sub_24A3A60B4(&v94, &v92);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v8;
  sub_24A3A60C4(&v92, 0x65646F4D68737570, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v91;
  v86 = v6;
  sub_24A4AAA30();
  *(&v95 + 1) = MEMORY[0x277D839F8];
  *&v94 = v11 * 1000.0;
  sub_24A3A60B4(&v94, &v92);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v10;
  sub_24A3A60C4(&v92, 0x54746E6572727563, 0xEB00000000656D69, v12);
  v13 = MEMORY[0x277D837D0];
  v14 = v91;
  *(&v95 + 1) = MEMORY[0x277D837D0];
  *&v94 = 3157559;
  *(&v94 + 1) = 0xE300000000000000;
  sub_24A3A60B4(&v94, &v92);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v14;
  sub_24A3A60C4(&v92, 0x6973726556707061, 0xEA00000000006E6FLL, v15);
  v16 = v91;
  v96 = v91;
  v17 = [v7 productType];
  if (v17)
  {
    v18 = v17;
    v19 = sub_24A4AB850();
    v21 = v20;

    v22 = v13;
    *(&v95 + 1) = v13;
    *&v94 = v19;
    *(&v94 + 1) = v21;
    sub_24A3A60B4(&v94, &v92);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v16;
    sub_24A3A60C4(&v92, 0x54746375646F7270, 0xEB00000000657079, v23);
    v96 = v91;
  }

  else
  {
    v22 = v13;
    sub_24A4A4198(0x54746375646F7270, 0xEB00000000657079, &v94);
    sub_24A3A83C8(&v94);
  }

  v24 = [v7 deviceClass];
  if (v24)
  {
    v25 = v24;
    v26 = sub_24A4AB850();
    v28 = v27;

    v29 = v22;
    *(&v95 + 1) = v22;
    *&v94 = v26;
    *(&v94 + 1) = v28;
    sub_24A3A60B4(&v94, &v92);
    v30 = v96;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v30;
    sub_24A3A60C4(&v92, 0x6C43656369766564, 0xEB00000000737361, v31);
    v96 = v91;
  }

  else
  {
    sub_24A4A4198(0x6C43656369766564, 0xEB00000000737361, &v94);
    sub_24A3A83C8(&v94);
    v29 = v22;
  }

  v32 = [v7 osVersion];
  if (v32)
  {
    v33 = v32;
    v34 = sub_24A4AB850();
    v36 = v35;

    *(&v95 + 1) = v29;
    *&v94 = v34;
    *(&v94 + 1) = v36;
    sub_24A3A60B4(&v94, &v92);
    v37 = v96;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v37;
    sub_24A3A60C4(&v92, 0x6F6973726556736FLL, 0xE90000000000006ELL, v38);
    v96 = v91;
  }

  else
  {
    sub_24A4A4198(0x6F6973726556736FLL, 0xE90000000000006ELL, &v94);
    sub_24A3A83C8(&v94);
  }

  v39 = [v7 osBuildVersion];
  if (v39)
  {
    v40 = v39;
    v41 = sub_24A4AB850();
    v43 = v42;

    *(&v95 + 1) = v29;
    *&v94 = v41;
    *(&v94 + 1) = v43;
    sub_24A3A60B4(&v94, &v92);
    v44 = v96;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v44;
    sub_24A3A60C4(&v92, 0x646C697542736FLL, 0xE700000000000000, v45);
    v96 = v91;
  }

  else
  {
    sub_24A4A4198(0x646C697542736FLL, 0xE700000000000000, &v94);
    sub_24A3A83C8(&v94);
  }

  v46 = [v7 deviceUDID];
  if (v46)
  {
    v47 = v46;
    v48 = sub_24A4AB850();
    v50 = v49;

    *(&v95 + 1) = v29;
    *&v94 = v48;
    *(&v94 + 1) = v50;
    sub_24A3A60B4(&v94, &v92);
    v51 = v96;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v51;
    sub_24A3A60C4(&v92, 0x4455656369766564, 0xEA00000000004449, v52);
    v53 = v91;
    v96 = v91;
  }

  else
  {
    sub_24A4A4198(0x4455656369766564, 0xEA00000000004449, &v94);
    sub_24A3A83C8(&v94);
    v53 = v96;
  }

  *(&v95 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v94) = 1;
  sub_24A3A60B4(&v94, &v92);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v53;
  sub_24A3A60C4(&v92, 0xD000000000000012, 0x800000024A4B06C0, v54);
  v55 = v91;
  if (qword_27EF3EBB0 != -1)
  {
    swift_once();
  }

  *(&v95 + 1) = v29;
  v94 = xmmword_27EF3FBF0;
  sub_24A3A60B4(&v94, &v92);

  v56 = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v55;
  sub_24A3A60C4(&v92, 0x4B53656369766564, 0xE900000000000055, v56);
  v57 = v91;
  v96 = v91;
  result = [objc_opt_self() sharedConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v59 = result;
  v60 = [result countryCode];

  if (v60)
  {
    v61 = sub_24A4AB850();
    v63 = v62;

    *(&v95 + 1) = v29;
    *&v94 = v61;
    *(&v94 + 1) = v63;
    sub_24A3A60B4(&v94, &v92);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v57;
    sub_24A3A60C4(&v92, 0x437972746E756F63, 0xEB0000000065646FLL, v64);
    v96 = v91;
  }

  else
  {
    sub_24A4A4198(0x437972746E756F63, 0xEB0000000065646FLL, &v94);
    sub_24A3A83C8(&v94);
  }

  sub_24A4AAB70();
  v65 = sub_24A4AAB40();
  (*(v85 + 8))(v2, v87);
  v66 = [v65 objectForKey_];

  if (v66)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v94 = v92;
  v95 = v93;
  if (!*(&v93 + 1))
  {
    sub_24A3A83C8(&v94);
    goto LABEL_29;
  }

  v67 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    sub_24A4A4198(0x6F436E6F69676572, 0xEA00000000006564, &v94);
    sub_24A3A83C8(&v94);
    goto LABEL_30;
  }

  *(&v95 + 1) = v67;
  v94 = v91;
  sub_24A3A60B4(&v94, &v92);
  v68 = v96;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v68;
  sub_24A3A60C4(&v92, 0x6F436E6F69676572, 0xEA00000000006564, v69);
  v96 = v91;
LABEL_30:
  if (qword_27EF3EBD8 != -1)
  {
    swift_once();
  }

  v70 = unk_27EF4E1B0;
  ObjectType = swift_getObjectType();
  v72 = (*(v70 + 32))(ObjectType, v70);
  if (v73)
  {
    *(&v95 + 1) = v29;
    *&v94 = v72;
    *(&v94 + 1) = v73;
    sub_24A3A60B4(&v94, &v92);
    v74 = v96;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v74;
    sub_24A3A60C4(&v92, 0x6E656B6F54737061, 0xE800000000000000, v75);
    v76 = v91;
    v96 = v91;
  }

  else
  {
    v76 = v96;
  }

  v77 = objc_opt_self();
  v78 = sub_24A4AB820();
  v79 = sub_24A4AB820();
  LOBYTE(v77) = [v77 BOOLForKey:v78 inDomain:v79];

  *(&v95 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v94) = v77;
  sub_24A3A60B4(&v94, &v92);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v76;
  sub_24A3A60C4(&v92, 0xD000000000000010, 0x800000024A4B06A0, v80);

  (*(v88 + 8))(v86, v89);
  v82 = v90;
  v81 = v91;
  v83 = qword_27EF3FC10;
  swift_beginAccess();
  v84 = *(v82 + v83);
  *(v82 + v83) = v81;
}

_OWORD *sub_24A3A60B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_24A3A60C4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A3A8430();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A3A6214(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_24A37EEE0(v23);

    return sub_24A3A60B4(a1, v23);
  }

  else
  {
    sub_24A3A64CC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_24A3A6214(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
  v36 = a2;
  result = sub_24A4AC080();
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
        sub_24A3A60B4(v25, v37);
      }

      else
      {
        sub_24A37EE84(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      result = sub_24A3A60B4(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_24A3A64CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24A3A60B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_24A3A6538()
{
  result = sub_24A3A655C();
  qword_27EF3FBF0 = result;
  *algn_27EF3FBF8 = v1;
  return result;
}

uint64_t sub_24A3A655C()
{
  v0 = sub_24A4AB820();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24A4AB840();

      return 0;
    }
  }

  return 0;
}

uint64_t sub_24A3A6604()
{
  v0 = objc_opt_self();
  v1 = sub_24A4AB820();
  v2 = sub_24A4AB820();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

void sub_24A3A66D8()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v29 - v4);
  v6 = *(v0 + qword_27EF4E2F8);
  if (v6)
  {
    v31 = sub_24A3C9CEC(&qword_27EF40D40, &qword_24A4BCA10);
    v30[0] = v6;
    swift_beginAccess();

    sub_24A3A6CEC(v30, 0x65746E6F43706174, 0xEA00000000007478);
    swift_endAccess();
  }

  sub_24A3A4548(v1 + qword_27EF4E2F0, v5);
  v7 = type metadata accessor for FMFFriend();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_24A3A6C84(v5);
  }

  else
  {
    v9 = *v5;
    v8 = v5[1];

    sub_24A3A16E4(v5);
    v31 = MEMORY[0x277D837D0];
    v30[0] = v9;
    v30[1] = v8;
    swift_beginAccess();
    sub_24A3A6CEC(v30, 0x64657463656C6573, 0xEE00646E65697246);
    swift_endAccess();
  }

  v10 = *(v1 + qword_27EF4E300);
  if (v10)
  {
    v31 = sub_24A3C9CEC(&qword_27EF40D38, &qword_24A4BCA08);
    v30[0] = v10;
    swift_beginAccess();

    sub_24A3A6CEC(v30, 0xD000000000000015, 0x800000024A4AF400);
    swift_endAccess();
  }

  v11 = *(v1 + qword_27EF4E308);
  if (v11)
  {
    v31 = sub_24A3C9CEC(&qword_27EF40D38, &qword_24A4BCA08);
    v30[0] = v11;
    swift_beginAccess();

    sub_24A3A6CEC(v30, 0xD000000000000012, 0x800000024A4AF420);
    swift_endAccess();
  }

  v12 = v1 + qword_27EF4E310;
  v13 = *(v1 + qword_27EF4E310);
  if (v13)
  {
    v15 = *(v12 + 8);
    v14 = *(v12 + 16);
    sub_24A3C9CEC(&qword_27EF40D20, &qword_24A4BC9F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B5060;
    *(inited + 32) = 0x697369567473616CLL;
    *(inited + 40) = 0xEF656D6954646574;
    *(inited + 48) = v13;
    *(inited + 56) = 0x54746E6572727563;
    *(inited + 64) = 0xEA00000000006261;
    *(inited + 72) = v15;
    *(inited + 80) = 0x6E657053656D6974;
    *(inited + 88) = 0xE900000000000074;
    *(inited + 96) = v14;

    v17 = sub_24A3A6DBC(inited);
    swift_setDeallocating();
    sub_24A3C9CEC(&qword_27EF40D28, &qword_24A4BC9F8);
    swift_arrayDestroy();
    v31 = sub_24A3C9CEC(&qword_27EF40D30, &qword_24A4BCA00);
    v30[0] = v17;
    swift_beginAccess();
    sub_24A3A6CEC(v30, 1935827316, 0xE400000000000000);
    swift_endAccess();
  }

  if (*(v1 + qword_27EF4E318) == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A4AB630();
    sub_24A378E18(v18, qword_27EF4E260);

    v19 = sub_24A4AB600();
    v20 = sub_24A4ABCE0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      v23 = qword_27EF3FC10;
      swift_beginAccess();
      v24 = *(v1 + v23);

      v25 = sub_24A4AB790();
      v27 = v26;

      v28 = sub_24A37BD58(v25, v27, v29);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_24A376000, v19, v20, "FMFInitRefreshController: Client Context for initClient: %s", v21, 0xCu);
      sub_24A37EEE0(v22);
      MEMORY[0x24C219130](v22, -1, -1);
      MEMORY[0x24C219130](v21, -1, -1);
    }
  }
}

uint64_t sub_24A3A6C84(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3A6CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24A3A60B4(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_24A3A60C4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_24A37EF2C(a1, &qword_27EF3F808, &unk_24A4BA6D0);
    sub_24A4A4198(a2, a3, v10);

    return sub_24A37EF2C(v10, &qword_27EF3F808, &unk_24A4BA6D0);
  }

  return result;
}

unint64_t sub_24A3A6DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40348, &qword_24A4BA138);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
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
      *(v3[7] + 8 * result) = v7;
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

uint64_t type metadata accessor for FMFInitRefreshClientResponse()
{
  result = qword_27EF3F0D8;
  if (!qword_27EF3F0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FMFBaseResponse()
{
  result = qword_27EF40DB0;
  if (!qword_27EF40DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A6FDC()
{
  if (!qword_27EF40DC0)
  {
    type metadata accessor for FMFCommandResponseFragment();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF40DC0);
    }
  }
}

void sub_24A3A7034()
{
  sub_24A3A6FDC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for FMFCommandResponseFragment()
{
  result = qword_27EF3FFF8;
  if (!qword_27EF3FFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A7138()
{
  sub_24A3A7274();
  if (v0 <= 0x3F)
  {
    sub_24A3A72D8(319, &qword_27EF3F6C0, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_24A3A732C();
      if (v2 <= 0x3F)
      {
        sub_24A3A72D8(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_24A3A72D8(319, &qword_27EF3F7B8, type metadata accessor for FMFLocationAlert);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24A3A7274()
{
  if (!qword_27EF40008)
  {
    sub_24A3CBC9C(&qword_27EF40010, qword_24A4B9960);
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF40008);
    }
  }
}

void sub_24A3A72D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A3A732C()
{
  if (!qword_27EF3F398)
  {
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3F398);
    }
  }
}

uint64_t sub_24A3A73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A4AB6E0();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + qword_27EF407B0);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = v5;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_24A3A7798;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A138;
  v20 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v24 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_24A3A768C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3A76E4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  result = swift_beginAccess();
  if (*(a1 + v4) == 1 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a1, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24A3A77A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v71 = a3;
  v8 = sub_24A4AAAD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  v13 = sub_24A378E18(v12, qword_27EF4E260);

  v72 = v13;
  v14 = sub_24A4AB600();
  v15 = sub_24A4ABCE0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v67 = v9;
    v17 = v16;
    v66 = swift_slowAlloc();
    v74[0] = v66;
    *v17 = 136315138;
    HIDWORD(v65) = v15;
    v68 = v8;
    v18 = *(a1 + qword_27EF40798);
    v19 = *(a1 + qword_27EF40798 + 8);

    v20 = sub_24A37E99C(0xCuLL, v18, v19);
    v22 = v21;
    v23 = a4;
    v25 = v24;
    v27 = v26;

    v28 = v25;
    a4 = v23;
    v29 = MEMORY[0x24C217CD0](v20, v22, v28, v27);
    v31 = v30;

    v32 = sub_24A37BD58(v29, v31, v74);
    v8 = v68;

    *(v17 + 4) = v32;
    _os_log_impl(&dword_24A376000, v14, BYTE4(v65), "FMFServerInteractionController<%s>: sending request…", v17, 0xCu);
    v33 = v66;
    sub_24A37EEE0(v66);
    MEMORY[0x24C219130](v33, -1, -1);
    v34 = v17;
    v9 = v67;
    MEMORY[0x24C219130](v34, -1, -1);
  }

  v35 = objc_allocWithZone(MEMORY[0x277D07B80]);
  v36 = sub_24A4AB820();
  v37 = [v35 initWithDescription:v36 andTimeout:120.0];

  v38 = *a2;
  if (type metadata accessor for FMFInitRefreshClientRequest() != v38)
  {
    v39 = v69;
    sub_24A4AAAC0();
    v40 = qword_27EF4E290;
    swift_beginAccess();
    (*(v9 + 40))(a1 + v40, v39, v8);
    swift_endAccess();
  }

  sub_24A3A7DF4(a2);
  v75 = type metadata accessor for FMFBaseRequest();
  v76 = MEMORY[0x277D07D08];
  v74[0] = a2;
  v73[3] = v75;
  v73[4] = sub_24A37F064(&qword_27EF40800, type metadata accessor for FMFBaseRequest);
  v73[0] = a2;
  v41 = objc_opt_self();
  swift_retain_n();
  v42 = [v41 processInfo];
  v43 = [v42 processName];

  sub_24A4AB850();
  v44 = swift_allocObject();
  v45 = v71;
  v44[2] = v70;
  v44[3] = a1;
  v44[4] = a2;
  v44[5] = v45;
  v44[6] = a4;
  v44[7] = v37;

  v46 = v37;
  sub_24A4AAC70();

  sub_24A37EEE0(v73);
  sub_24A37EEE0(v74);
  [v46 wait];

  v47 = sub_24A4AB600();
  v48 = sub_24A4ABCE0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v74[0] = v50;
    *v49 = 136315138;
    v51 = a1 + qword_27EF40798;
    v52 = *(a1 + qword_27EF40798);
    v53 = *(v51 + 8);

    v54 = sub_24A37E99C(0xCuLL, v52, v53);
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v61 = MEMORY[0x24C217CD0](v54, v56, v58, v60);
    v63 = v62;

    v64 = sub_24A37BD58(v61, v63, v74);

    *(v49 + 4) = v64;
    _os_log_impl(&dword_24A376000, v47, v48, "FMFServerInteractionController<%s>: request sent and done", v49, 0xCu);
    sub_24A37EEE0(v50);
    MEMORY[0x24C219130](v50, -1, -1);
    MEMORY[0x24C219130](v49, -1, -1);
  }
}

uint64_t sub_24A3A7DA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3A7DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-v11];
  v13 = sub_24A4AAB80();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v2 + qword_27EF4E2A8);
  if (v18)
  {
    v19 = *(a1 + qword_27EF3FC18);
    *(a1 + qword_27EF3FC18) = v18;

    v20 = *(v2 + qword_27EF4E2B0);
    if (v20)
    {
      v21 = *(a1 + qword_27EF3FC20);
      *(a1 + qword_27EF3FC20) = v20;
    }
  }

  sub_24A37B740(v2 + qword_27EF407B8, v12, &qword_27EF3F650, &qword_24A4B5A10);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24A37EF2C(v12, &qword_27EF3F650, &qword_24A4B5A10);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_24A3A8128(v17, 1);
    (*(v14 + 8))(v17, v13);
  }

  v22 = qword_27EF4E290;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v22, v4);
  v23 = qword_27EF4E0D8;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v23, v8, v4);
  swift_endAccess();
  sub_24A3A85D4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24A3A8128(uint64_t a1, char a2)
{
  v4 = qword_27EF3FC10;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v27 = v5;
  v6 = *(v5 + 16);

  if (v6 && (v7 = sub_24A39B2C8(0x6F436E6F69676572, 0xEA00000000006564), (v8 & 1) != 0))
  {
    sub_24A37EE84(*(v5 + 56) + 32 * v7, &v25);
    sub_24A3A83C8(&v25);
    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    sub_24A3A83C8(&v25);
  }

  v9 = sub_24A4AAB40();
  v10 = [v9 objectForKey_];

  if (v10)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {
    sub_24A3A83C8(v24);
    goto LABEL_13;
  }

  v11 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_24A4A4198(0x6F436E6F69676572, 0xEA00000000006564, v24);
    sub_24A3A83C8(v24);
    v5 = v27;
    goto LABEL_14;
  }

  *(&v26 + 1) = v11;
  v25 = v21;
  sub_24A3A60B4(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v24, 0x6F436E6F69676572, 0xEA00000000006564, isUniquelyReferenced_nonNull_native);
  v27 = v5;
LABEL_14:
  if (*(v5 + 16) && (v13 = sub_24A39B2C8(0x656C61636F6CLL, 0xE600000000000000), (v14 & 1) != 0))
  {
    sub_24A37EE84(*(v5 + 56) + 32 * v13, &v25);
    sub_24A3A83C8(&v25);
    if ((a2 & 1) == 0)
    {
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    sub_24A3A83C8(&v25);
  }

  v16 = MEMORY[0x277D837D0];
  sub_24A4AAB30();
  v17 = sub_24A4AAB60();
  v19 = v18;

  *(&v26 + 1) = v16;
  *&v25 = v17;
  *(&v25 + 1) = v19;
  sub_24A3A60B4(&v25, v24);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v24, 0x656C61636F6CLL, 0xE600000000000000, v20);
}

uint64_t sub_24A3A83C8(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24A3A8430()
{
  v1 = v0;
  sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
  v2 = *v0;
  v3 = sub_24A4AC070();
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
        sub_24A37EE84(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24A3A60B4(v25, (*(v4 + 56) + v22));
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

uint64_t sub_24A3A85D4()
{
  v1 = v0;
  v2 = sub_24A4AAAD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  sub_24A4AAAC0();
  sub_24A4AAA90();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v9, v2);
  v13 = qword_27EF4E0D8;
  swift_beginAccess();
  (*(v3 + 16))(v7, v1 + v13, v2);
  sub_24A4AAA90();
  v15 = v14;
  result = (v12)(v7, v2);
  v17 = v11 - v15;
  if (COERCE__INT64(fabs(v11 - v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v17 * 1000) >> 64 == (1000 * v17) >> 63)
  {
    v19[3] = MEMORY[0x277D83B88];
    v19[0] = 1000 * v17;
    swift_beginAccess();
    sub_24A3A6CEC(v19, 0xD000000000000016, 0x800000024A4B0680);
    return swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24A3A87F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3A8864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A3A88AC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v17 = *(v3 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v16 - v5;
  v18 = v4;
  sub_24A4ABB30();

  swift_getWitnessTable();
  v7 = sub_24A4ABFA0();
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
    *v11 = 134217984;
    *(v11 + 4) = sub_24A4ABAF0();

    _os_log_impl(&dword_24A376000, v9, v10, "FMImageCache: Preloading data for %ld requests.", v11, 0xCu);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  else
  {
  }

  if (!sub_24A4ABAF0())
  {
  }

  for (i = 0; ; ++i)
  {
    v13 = sub_24A4ABAD0();
    sub_24A4ABA90();
    if (v13)
    {
      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v2);
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    result = sub_24A4ABF60();
    if (v17 != 8)
    {
      break;
    }

    v18 = result;
    (*(v3 + 16))(v6, &v18, v2);
    swift_unknownObjectRelease();
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_15:
      __break(1u);
    }

LABEL_10:
    sub_24A496E28(v6, 0, 0);
    (*(v3 + 8))(v6, v2);
    if (v14 == sub_24A4ABAF0())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3A8C44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A3A8D3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);
    v38 = sub_24A4AB600();
    v17 = sub_24A4ABCC0();
    if (os_log_type_enabled(v38, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A376000, v38, v17, "FMAPSConnectionHandler: Public APS Token was nil.", v18, 2u);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    v19 = v38;
  }

  else
  {
    v36 = v13;
    v37 = v12;
    v38 = v6;
    v20 = sub_24A4AAA00();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v21 = sub_24A4AB630();
    sub_24A378E18(v21, qword_27EF4E260);
    v22 = v20;
    v23 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_24A376000, v23, v24, "FMAPSConnectionHandler: Public APS Token received %@.", v25, 0xCu);
      sub_24A3A9244(v26);
      MEMORY[0x24C219130](v26, -1, -1);
      MEMORY[0x24C219130](v25, -1, -1);
    }

    v28 = [v22 fm_hexString];
    v29 = sub_24A4AB850();
    v31 = v30;

    v32 = *&v3[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue];
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v29;
    v33[4] = v31;
    aBlock[4] = sub_24A3A92B0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89E28;
    v34 = _Block_copy(aBlock);
    v35 = v3;
    sub_24A4AB6B0();
    v39 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v15, v9, v34);
    _Block_release(v34);

    (v38[1].isa)(v9, v5);
    (*(v36 + 8))(v15, v37);
  }
}

uint64_t sub_24A3A9244(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF403C0, &unk_24A4B5050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3A92EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v6 = (a1 + *a4);
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;

  return a5(v8);
}

uint64_t sub_24A3A9340()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore);
  ObjectType = swift_getObjectType();
  v4 = (v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken);
  v6 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken + 8);
  v7 = *(v1 + 40);

  v7(v5, v6, ObjectType, v1);
  v8 = v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    v11 = swift_getObjectType();
    v12 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken);
    v13 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken + 8);
    v14 = *v4;
    v15 = v4[1];
    v16 = *(v10 + 8);

    v16(v0, v12, v13, v14, v15, v11, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A3A94C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24A4AB820();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_self();
  v4 = sub_24A4AB820();
  v5 = sub_24A4AB820();
  [v3 setString:v2 forKey:v4 inDomain:v5];
}

void sub_24A3A95A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  oslog = sub_24A4AB600();
  v7 = sub_24A4ABCB0();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    if (a2)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (a2)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_24A37BD58(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_24A37BD58(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24A376000, oslog, v7, "FMFRefreshController: connectionHandler didReceive topicToken: %s publicToken:%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }
}

uint64_t sub_24A3A978C()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 40);

  v12 = v1[8];
  v13 = sub_24A4AAAD0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v7 + v12, v13);
  }

  v15 = *(v7 + v1[16]);

  v16 = *(v7 + v1[17]);

  v17 = (v7 + v1[19]);
  if (v17[1])
  {

    v18 = v17[3];

    v19 = v17[6];
  }

  v20 = v7 + v1[20];
  v21 = type metadata accessor for FMFLocation();
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = *(v20 + 8);

    v23 = *(v21 + 32);
    v24 = sub_24A4AAB20();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v20 + v23, 1, v24))
    {
      (*(v25 + 8))(v20 + v23, v24);
    }

    v26 = (v20 + *(v21 + 44));
    v27 = v26[38];
    if (v27)
    {
      if (v26[21])
      {
        v28 = *v26;

        v29 = v26[2];

        v30 = v26[4];

        v31 = v26[6];

        v32 = v26[8];

        v33 = v26[10];

        v34 = v26[12];

        v35 = v26[14];

        v36 = v26[16];

        v37 = v26[18];

        v38 = v26[20];

        v39 = v26[21];

        v40 = v26[23];

        v41 = v26[25];

        v42 = v26[27];

        v43 = v26[29];

        v44 = v26[31];

        v45 = v26[33];

        v46 = v26[35];

        v47 = v26[37];

        v27 = v26[38];
      }

      v48 = v26[41];

      v49 = v26[43];
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A3A9ABC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3A9B2C()
{
  v1 = v0;
  v22 = *MEMORY[0x277D85DE8];
  v2 = qword_27EF3FC10;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
  v21 = v4;
  v20[0] = v3;
  v5 = qword_27EF3FC00;
  swift_beginAccess();

  sub_24A3A6CEC(v20, 0x6F43746E65696C63, 0xED0000747865746ELL);
  v6 = *(v1 + qword_27EF3FC18);
  v21 = v4;
  v20[0] = v6;

  sub_24A3A6CEC(v20, 0x6F43726576726573, 0xED0000747865746ELL);
  v7 = *(v1 + qword_27EF3FC20);
  v21 = v4;
  v20[0] = v7;

  sub_24A3A6CEC(v20, 0x746E6F4361746164, 0xEB00000000747865);
  swift_endAccess();
  v8 = objc_opt_self();
  v9 = *(v1 + v5);

  v10 = sub_24A4AB760();

  LODWORD(v9) = [v8 isValidJSONObject_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = *(v1 + v5);

  v12 = sub_24A4AB760();

  v20[0] = 0;
  v13 = [v8 dataWithJSONObject:v12 options:0 error:v20];

  v14 = v20[0];
  if (!v13)
  {
    v17 = v14;
    v18 = sub_24A4AA950();

    swift_willThrow();
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v15 = sub_24A4AAA10();

  result = v15;
LABEL_6:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A3A9DC0()
{
  v1 = *v0;
  v2 = qword_27EF3FC08;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

unint64_t sub_24A3A9E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40350, &qword_24A4BA140);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, &v11, &qword_27EF40358, &qword_24A4BA148);
      v5 = v11;
      result = sub_24A3A9F64(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A3A60B4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24A3A9F64(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24A4AB850();
  sub_24A4AC360();
  sub_24A4AB8F0();
  v4 = sub_24A4AC3A0();

  return sub_24A3A9FF8(a1, v4);
}

unint64_t sub_24A3A9FF8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24A4AB850();
      v9 = v8;
      if (v7 == sub_24A4AB850() && v9 == v10)
      {
        break;
      }

      v12 = sub_24A4AC270();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24A3AA0FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FMFFeatures.encode(to:)(void *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF40650, &qword_24A4BAED8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = *v1;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A383BB0();
  sub_24A4AC3D0();
  v12[31] = 0;
  sub_24A4AC1C0();
  if (!v2)
  {
    v12[30] = 1;
    sub_24A4AC1C0();
    v12[29] = 2;
    sub_24A4AC1C0();
    v12[28] = 3;
    sub_24A4AC1C0();
    v12[27] = 4;
    sub_24A4AC1C0();
    v12[26] = 5;
    sub_24A4AC1C0();
    v12[25] = 6;
    sub_24A4AC1C0();
    v12[24] = 7;
    sub_24A4AC1C0();
    v12[15] = 8;
    sub_24A4AC1C0();
    v12[14] = 9;
    sub_24A4AC1C0();
    v12[13] = 10;
    sub_24A4AC1C0();
    v12[12] = 11;
    sub_24A4AC1C0();
    v12[11] = 12;
    sub_24A4AC1C0();
    v12[10] = 13;
    sub_24A4AC1C0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24A3AA4FC()
{
  v1 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  return *(v0 + v1);
}

__n128 sub_24A3AA540(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t FMFConfig.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FF08, &qword_24A4B8F48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v34 - v6;
  v9 = *v1;
  v8 = v1[1];
  v52 = v1[2];
  v53 = v8;
  v10 = v1[3];
  v11 = v1[4];
  v50 = v1[5];
  v51 = v11;
  v47 = *(v1 + 48);
  v12 = v1[7];
  v13 = v1[8];
  v14 = v1[9];
  v48 = v1[10];
  v49 = v13;
  v15 = v1[11];
  v42 = *(v1 + 96);
  v45 = v1[13];
  v46 = v12;
  v17 = v1[14];
  v16 = v1[15];
  v43 = v14;
  v44 = v17;
  v40 = v16;
  v41 = v15;
  v18 = v1[17];
  v39 = v1[16];
  v34[3] = v18;
  v19 = v1[19];
  v34[4] = v1[18];
  v34[5] = v19;
  v20 = v1[21];
  v34[6] = v1[20];
  v34[7] = v20;
  v21 = v1[23];
  v34[8] = v1[22];
  v34[9] = v21;
  v34[10] = v1[24];
  LODWORD(v21) = *(v1 + 201);
  v35 = *(v1 + 200);
  v36 = v21;
  v22 = v1[27];
  v37 = v1[26];
  v38 = v22;
  v24 = v1[28];
  v23 = v1[29];
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1;
  v29 = v28;
  sub_24A37EACC(v27, v25);
  sub_24A384718();
  sub_24A4AC3D0();
  v55 = 0;
  v30 = v54;
  sub_24A4AC1E0();
  if (v30)
  {
    return (*(v4 + 8))(v7, v29);
  }

  v34[2] = v23;
  v34[1] = v24;
  v54 = v4;
  v55 = 1;
  sub_24A4AC1E0();
  v55 = 2;
  sub_24A4AC1E0();
  v55 = 3;
  sub_24A4AC1D0();
  v55 = 4;
  sub_24A4AC1E0();
  v55 = 5;
  sub_24A4AC1E0();
  v55 = 6;
  sub_24A4AC1C0();
  v55 = 7;
  sub_24A4AC1E0();
  v55 = 8;
  sub_24A4AC1E0();
  v55 = 9;
  v52 = v7;
  v53 = v29;
  sub_24A4AC1E0();
  v55 = 10;
  sub_24A4AC1E0();
  v55 = 11;
  sub_24A4AC1E0();
  v55 = 12;
  sub_24A4AC1C0();
  v55 = 13;
  sub_24A4AC1E0();
  v55 = 14;
  sub_24A4AC1E0();
  v55 = 15;
  sub_24A4AC1E0();
  v55 = 16;
  sub_24A4AC1E0();
  v55 = 17;
  sub_24A4AC1E0();
  v55 = 18;
  sub_24A4AC1E0();
  v55 = 19;
  sub_24A4AC1E0();
  v55 = 20;
  sub_24A4AC1E0();
  v55 = 21;
  sub_24A4AC1E0();
  v55 = 22;
  sub_24A4AC1E0();
  v55 = 23;
  sub_24A4AC1E0();
  v55 = 24;
  sub_24A4AC1E0();
  v55 = 25;
  sub_24A4AC1C0();
  v55 = 26;
  sub_24A4AC1C0();
  v55 = 27;
  sub_24A4AC1E0();
  v55 = 28;
  sub_24A4AC1E0();
  v55 = 29;
  sub_24A4AC1E0();
  v55 = 30;
  v32 = v52;
  v33 = v53;
  sub_24A4AC1E0();
  return (*(v54 + 8))(v32, v33);
}

uint64_t sub_24A3AACC8(uint64_t *a1, uint64_t *a2)
{
  v5 = *(*(v2 + 88) + 56);

  sub_24A3C9CEC(a1, a2);
  sub_24A4ABD70();

  return v7;
}

uint64_t sub_24A3AAD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A390DA0();
  *a1 = result;
  return result;
}

uint64_t FMFFriend.relationshipType.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMFFriend();
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_24A3AADFC()
{
  result = qword_27EF3FBC8;
  if (!qword_27EF3FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBC8);
  }

  return result;
}

unint64_t sub_24A3AAE54()
{
  result = qword_27EF3FBD0;
  if (!qword_27EF3FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBD0);
  }

  return result;
}

void *sub_24A3AAF24@<X0>(void *a1@<X8>)
{
  result = sub_24A397C64();
  *a1 = result;
  return result;
}

uint64_t sub_24A3AAFA8()
{
  v1 = *(*(v0 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
  sub_24A4ABD70();
}

uint64_t sub_24A3AB038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3AB078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[67];
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = v3[8];
  if (!v6)
  {
    v7 = a1[93];
    v8 = a1[94];
    v9 = a1[95];
    v10 = a1[96];
    sub_24A388B00(v7, v8, v9);
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return sub_24A388B00(v4, v5, v6);
}

uint64_t FMFFriend.contact.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFFriend() + 76));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_24A39AED0(v4, v5);
}

id sub_24A3AB248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A4B4E10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_24A4ABA50();

  v11 = [v8 predicateForContactsWithIdentifiers_];

  v12 = *(v4 + 56);
  if (!a3)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v13 = sub_24A4ABA50();

  v42[0] = 0;
  v14 = [v12 unifiedContactsMatchingPredicate:v11 keysToFetch:v13 error:v42];

  v15 = v42[0];
  if (!v14)
  {
    v24 = v42[0];
    v25 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);
    v27 = v25;
    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136315138;
      v32 = v25;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v33 = sub_24A4AB870();
      v35 = sub_24A37BD58(v33, v34, v42);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_24A376000, v28, v29, "Error getting contact - %s", v30, 0xCu);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v16 = sub_24A4ABA70();
  v17 = qword_27EF3EBF8;
  v18 = v15;
  if (v17 != -1)
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
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v14;
    *v23 = v14;
    _os_log_impl(&dword_24A376000, v20, v21, "Got contact - %@", v22, 0xCu);
    sub_24A37EF2C(v23, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v23, -1, -1);
    MEMORY[0x24C219130](v22, -1, -1);
  }

  else
  {

    v20 = v14;
  }

  if (v16 >> 62)
  {
    if (sub_24A4AC060())
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

    v38 = sub_24A4AB600();
    v39 = sub_24A4ABCE0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A376000, v38, v39, "No contact found in store", v40, 2u);
      MEMORY[0x24C219130](v40, -1, -1);
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

LABEL_15:
  v36 = sub_24A42F78C(v16);

  result = v36;
LABEL_22:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FMFFriend.locationAlertsOnFriend.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFFriend() + 64));
}

uint64_t FMFFriend.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t FMFFriend.name.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFFriend() + 76));
  if (v1[1])
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v2;
    }
  }

  v5 = *(v0 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_24A3A11EC(*(v5 + 16), 0, &qword_27EF3F2F0, &unk_24A4B68D0);
    v8 = sub_24A3A1268(&v13, v7 + 4, v6, v5);

    sub_24A3A13C0();
    if (v8 == v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_10:
  v13 = v7;
  sub_24A3A13C8(&v13);
  if (*(v13 + 2))
  {
    v2 = *(v13 + 4);
    v9 = *(v13 + 5);

    if (qword_27EF3EBC0 != -1)
    {
      swift_once();
    }

    v10 = qword_27EF4E198;
    v11 = sub_24A4AB820();
    LOBYTE(v10) = [v10 evaluateWithObject_];

    if ((v10 & 1) == 0)
    {
      v2 = sub_24A45D170(v2);
    }
  }

  else
  {

    return 0xD000000000000014;
  }

  return v2;
}

uint64_t sub_24A3ABAD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A4AC220();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24A4ABAC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A40B5B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24A3ABBD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24A3ABBD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24A4AC270(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A3ABCA0()
{
  sub_24A37B428(0, &unk_27EF403E0, 0x277CCAC30);
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A4B4E10;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_24A3ABD70();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x800000024A4B1A00;
  result = sub_24A4ABC90();
  qword_27EF4E198 = result;
  return result;
}

unint64_t sub_24A3ABD70()
{
  result = qword_27EF403F0;
  if (!qword_27EF403F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF403F0);
  }

  return result;
}

uint64_t FMFFriend.shortName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFFriend() + 76));
  if (!v1[1])
  {
    return 0;
  }

  v2 = v1[5];
  v3 = v1[6];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_24A3ABE58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 104);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24A3ABFA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 48);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 104);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_24A3AC160@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v4 = *(a1 + 536);
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  v7 = v6[2];
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v11[9] = v2;
  v8 = sub_24A40B47C(v7, 0);
  v9 = *(type metadata accessor for FMFFriend() - 8);
  v10 = sub_24A40C240(v11, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v6);

  result = sub_24A3A13C0();
  if (v10 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertTriggerType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMFLocationAlertTriggerType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFPendingUpdateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t FMFPreferences.primaryEmail.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t getEnumTagSinglePayload for FMFPendingUpdateReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_24A3AC568(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_24A39B2C8(0xD000000000000019, 0x800000024A4AEC50);
    if (v2)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v3 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v4 = v38;
        }

        v41 = v3;
        v40[0] = v4;
        swift_beginAccess();
        sub_24A3B1460(v40, 1);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0x74655365636E6566, 0xEE006B6E694C7075);
    if (v5)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v6 = MEMORY[0x277D837D0];
      result = swift_dynamicCast();
      if (result)
      {
        v8 = v38;
        v7 = v39;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v7 = v39;
          v8 = v38;
        }

        v41 = v6;
        v40[0] = v8;
        v40[1] = v7;
        swift_beginAccess();
        sub_24A3B1460(v40, 0);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000015, 0x800000024A4AEC70);
    if (v9)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v10 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v11 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v11 = v38;
        }

        v41 = v10;
        v40[0] = v11;
        swift_beginAccess();
        sub_24A3B1460(v40, 2);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000014, 0x800000024A4AEC90);
    if (v12)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v13 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v14 = v38;
        }

        v41 = v13;
        v40[0] = v14;
        swift_beginAccess();
        sub_24A3B1460(v40, 3);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000018, 0x800000024A4AECD0);
    if (v15)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v16 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v17 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v17 = v38;
        }

        v41 = v16;
        v40[0] = v17;
        swift_beginAccess();
        sub_24A3B1460(v40, 5);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000020, 0x800000024A4AECF0);
    if (v18)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v19 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v20 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v20 = v38;
        }

        v41 = v19;
        v40[0] = v20;
        swift_beginAccess();
        sub_24A3B1460(v40, 6);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001DLL, 0x800000024A4AECB0);
    if (v21)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v22 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v23 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v23 = v38;
        }

        v41 = v22;
        v40[0] = v23;
        swift_beginAccess();
        sub_24A3B1460(v40, 4);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001DLL, 0x800000024A4AED20);
    if (v24)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v25 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v26 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v26 = v38;
        }

        v41 = v25;
        v40[0] = v26;
        swift_beginAccess();
        sub_24A3B1460(v40, 7);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001BLL, 0x800000024A4AED40);
    if (v27)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v28 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v29 = v38;
        if (qword_27EF3EC18 != -1)
        {
          swift_once();
          v29 = v38;
        }

        v41 = v28;
        v40[0] = v29;
        swift_beginAccess();
        sub_24A3B1460(v40, 8);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001BLL, 0x800000024A4AED60);
    if (v30)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v31 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v32 = v38;
        if (qword_27EF3EC18 != -1)
        {
          swift_once();
          v32 = v38;
        }

        v41 = v31;
        v40[0] = v32;
        swift_beginAccess();
        sub_24A3B1460(v40, 9);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000020, 0x800000024A4AED80);
    if (v33)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v34 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v35 = v38;
        if (qword_27EF3EC18 != -1)
        {
          swift_once();
          v35 = v38;
        }

        v41 = v34;
        v40[0] = v35;
        swift_beginAccess();
        sub_24A3B1460(v40, 10);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000018, 0x800000024A4AEDE0);
    if (v36)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v37 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        if (qword_27EF3EC20 != -1)
        {
          swift_once();
        }

        v41 = v37;
        v40[0] = v38;
        swift_beginAccess();
        sub_24A3B1460(v40, 12);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_24A3ACFD4()
{
  sub_24A3C9CEC(&qword_27EF40808, &unk_24A4BB7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4BB5E0;
  *(inited + 32) = 0;
  v1 = sub_24A4AB820();
  v2 = MGGetSInt32Answer();

  if (v2 == 9)
  {
    v4 = "s-for-friends-iph843dd79b6/ios";
    v3 = 0xD000000000000056;
  }

  else if (v2 == 3)
  {
    v3 = 0xD00000000000005FLL;
    v4 = "tions-fmmeb70d2de0/mac";
  }

  else
  {
    v4 = "DeviceClassNumber";
    v3 = 0xD00000000000005ELL;
  }

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v4 | 0x8000000000000000;
  *(inited + 72) = 1;
  v5 = MEMORY[0x277D83B88];
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 200;
  *(inited + 112) = 2;
  v6 = MEMORY[0x277D839F8];
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0x4000000000000000;
  *(inited + 152) = 3;
  *(inited + 184) = v6;
  *(inited + 160) = 0x404E000000000000;
  *(inited + 192) = 5;
  *(inited + 224) = v6;
  *(inited + 200) = 0x403E000000000000;
  *(inited + 232) = 6;
  *(inited + 264) = v5;
  *(inited + 240) = 100;
  *(inited + 272) = 4;
  *(inited + 304) = v6;
  *(inited + 280) = 0x403E000000000000;
  *(inited + 312) = 7;
  *(inited + 344) = v6;
  *(inited + 320) = 0x4092C00000000000;
  *(inited + 352) = 11;
  *(inited + 384) = v6;
  *(inited + 360) = 0x4072C00000000000;
  v7 = sub_24A3AD5F4(inited);
  swift_setDeallocating();
  sub_24A3C9CEC(&qword_27EF403A0, &unk_24A4BA180);
  result = swift_arrayDestroy();
  off_27EF40778 = v7;
  return result;
}

void sub_24A3AD1E4(uint64_t a1, double a2)
{
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval) < a2)
  {
    a2 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval);
  }

  v12 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval;
  if (a2 >= *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval))
  {
    v24 = 1;
  }

  else
  {
    sub_24A4AAAC0();
    sub_24A4AAA90();
    v14 = v13;
    v15 = *(v5 + 8);
    v15(v11, v4);
    v16 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_lastRefreshTime;
    swift_beginAccess();
    (*(v5 + 16))(v9, a1 + v16, v4);
    sub_24A4AAA90();
    v18 = v17;
    v15(v9, v4);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v19 = v14 - v18;
    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);
    v21 = sub_24A4AB600();
    v22 = sub_24A4ABCE0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v19;
      _os_log_impl(&dword_24A376000, v21, v22, "FMFRefreshController: last refresh interval %{public}f s", v23, 0xCu);
      MEMORY[0x24C219130](v23, -1, -1);
    }

    v24 = 0;
    if (*(a1 + v12) + v19 * -1000.0 > 0.0)
    {
      a2 = *(a1 + v12) + v19 * -1000.0;
    }

    else
    {
      a2 = 0.0;
    }
  }

  *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshReason) = v24;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    *(v28 + 4) = a2;
    _os_log_impl(&dword_24A376000, v26, v27, "FMFRefreshController: scheduling next refresh in %{public}f s", v28, 0xCu);
    MEMORY[0x24C219130](v28, -1, -1);
  }

  v29 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer;
  [*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer) invalidate];
  v30 = [objc_opt_self() timerWithTimeInterval:a1 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:a2 / 1000.0];
  v31 = [objc_opt_self() mainRunLoop];
  [v31 addTimer:v30 forMode:*MEMORY[0x277CBE640]];

  v32 = *(a1 + v29);
  *(a1 + v29) = v30;
}

unint64_t sub_24A3AD5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40398, &unk_24A4BD220);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, v10, &qword_27EF403A0, &unk_24A4BA180);
      result = sub_24A3AE6B8(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_24A3A60B4(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

id sub_24A3AD714(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, id *a5, void (*a6)(void, void), uint64_t a7, void *a8)
{
  if (a3)
  {
    v12 = sub_24A4AA700();
    v67[3] = v12;
    v67[4] = sub_24A37F064(&qword_27EF40910, MEMORY[0x277D08A28]);
    v13 = sub_24A38D3BC(v67);
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D089E0], v12);
    LOBYTE(v12) = sub_24A4AA6C0();
    sub_24A37EEE0(v67);
    if (v12)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v14 = sub_24A4AB630();
      sub_24A378E18(v14, qword_27EF4E260);
      v15 = a3;
      v16 = sub_24A4AB600();
      v17 = sub_24A4ABCE0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v67[0] = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_24A4AC310();
        v22 = a6;
        v23 = a8;
        v24 = sub_24A37BD58(v20, v21, v67);

        *(v18 + 4) = v24;
        a8 = v23;
        a6 = v22;
        _os_log_impl(&dword_24A376000, v16, v17, "FMFServerInteractionController: didn't complete because of error (will check Stewie): %s", v18, 0xCu);
        sub_24A37EEE0(v19);
        MEMORY[0x24C219130](v19, -1, -1);
        MEMORY[0x24C219130](v18, -1, -1);
      }

      sub_24A459010(v67);
      v25 = sub_24A3CF238(v67);
      v26 = sub_24A37EEE0(v67);
      if (v25 & 1) != 0 && ((*(*a5 + qword_27EF4E0E0 + 192))(v26))
      {
        v27 = sub_24A4AB600();
        v28 = sub_24A4ABCE0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_24A376000, v27, v28, "FMFServerInteractionController: discarded alert because refresh request and Stewie-enabled", v29, 2u);
          MEMORY[0x24C219130](v29, -1, -1);
        }
      }

      else
      {
        v34 = sub_24A4AB600();
        v35 = sub_24A4ABCE0();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_24A376000, v34, v35, "FMFServerInteractionController: proceeding with alert", v36, 2u);
          MEMORY[0x24C219130](v36, -1, -1);
        }

        sub_24A459EF0(a5, a3);
      }
    }

    a6(0, a3);
    return [a8 signal];
  }

  v32 = *a5;
  if (type metadata accessor for FMFInitRefreshClientRequest() == v32)
  {
    *(a4 + qword_27EF407C0) = 1;
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v33 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v33 != 2)
    {
LABEL_26:
      sub_24A386DFC(a1, a2);
      goto LABEL_28;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
LABEL_28:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v38 = sub_24A4AB630();
      sub_24A378E18(v38, qword_27EF4E260);
      v39 = sub_24A4AB600();
      v40 = sub_24A4ABCE0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_24A376000, v39, v40, "FMFServerInteractionController: received empty data", v41, 2u);
        MEMORY[0x24C219130](v41, -1, -1);
      }

      sub_24A45AB40();
      v42 = swift_allocError();
      *v43 = 1;
      a6(0, v42);

      return [a8 signal];
    }

    goto LABEL_35;
  }

  if (v33)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_28;
    }

LABEL_35:
    sub_24A3AE614(a1, a2);
    goto LABEL_36;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_36:
  v44 = sub_24A4AA760();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_24A4AA750();
  swift_getWitnessTable();
  sub_24A4AA740();

  v47 = v67[0];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v48 = sub_24A4AB630();
  sub_24A378E18(v48, qword_27EF4E260);

  v49 = sub_24A4AB600();
  v50 = sub_24A4ABCE0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v51 = 136315138;
    v67[5] = v47;

    v52 = sub_24A4AB870();
    v54 = sub_24A37BD58(v52, v53, v67);

    *(v51 + 4) = v54;
    _os_log_impl(&dword_24A376000, v49, v50, "*** FMFServerInteractionController: received response?: %s", v51, 0xCu);
    sub_24A37EEE0(v65);
    MEMORY[0x24C219130](v65, -1, -1);
    MEMORY[0x24C219130](v51, -1, -1);
  }

  else
  {
  }

  v55 = *(a4 + qword_27EF4E2A8);
  *(a4 + qword_27EF4E2A8) = *(v47 + 16);

  v56 = *(a4 + qword_27EF4E2B0);
  *(a4 + qword_27EF4E2B0) = *(v47 + 24);

  sub_24A3B1AC4(*(v47 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = Strong;
    type metadata accessor for FMFInitRefreshClientResponse();
    v59 = swift_dynamicCastClass();
    if (v59)
    {
      v60 = v59;

      sub_24A3BB2D8(v60);
    }
  }

  v61 = *(v47 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert);
  if (v61)
  {
    v62 = a4 + qword_27EF4E2A0;
    swift_unknownObjectWeakLoadStrong();
    *(v61 + 24) = *(v62 + 8);
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    if ((sub_24A3E5C88() & 1) != 0 && (v63 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      sub_24A45A9E0(v61, v63);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  a6(v64, 0);

  [a8 signal];
  return sub_24A386DFC(a1, a2);
}

uint64_t sub_24A3AE1EC(double a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce) == 1)
  {
    if ((*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_useOptimizedFetch) & 1) == 0)
    {
      v22 = *(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
      v23 = result;
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = v1;
      aBlock[4] = sub_24A3AD1D8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A388564;
      aBlock[3] = &unk_285D85AC8;
      v16 = _Block_copy(aBlock);

      sub_24A4AB6B0();
      v24 = MEMORY[0x277D84F90];
      sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
      sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
      sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
      sub_24A4ABE90();
      MEMORY[0x24C218190](0, v14, v8, v16);
      _Block_release(v16);
      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v14, v23);
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A4AB630();
    sub_24A378E18(v17, qword_27EF4E260);
    v18 = sub_24A4AB600();
    v19 = sub_24A4ABCE0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A376000, v18, v19, "FMFRefreshController: Initialization is not completed yet. Cannot fire refresh.", v20, 2u);
      MEMORY[0x24C219130](v20, -1, -1);
    }

    v21 = MEMORY[0x24C2189A0]();
    sub_24A3A3C54(v2, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    objc_autoreleasePoolPop(v21);
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_24A3AE5D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3AE614(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A380530(a1, a2);
  }

  return a1;
}

unint64_t sub_24A3AE628()
{
  result = qword_27EF40790;
  if (!qword_27EF40790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40790);
  }

  return result;
}

uint64_t sub_24A3AE67C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A3AE6B8(char a1)
{
  v3 = *(v1 + 40);
  sub_24A4AC360();
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();

  v4 = sub_24A4AC3A0();

  return sub_24A3AF5D8(a1, v4);
}

uint64_t sub_24A3AE744(uint64_t *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F0F8, &qword_24A4B4948);
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v58 - v6;
  v8 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B16E8();
  sub_24A4AC3C0();
  if (v2)
  {
    sub_24A37EEE0(a1);
    type metadata accessor for FMFInitRefreshClientResponse();
    v9 = *(*v1 + 48);
    v10 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v60 = v1;
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    LOBYTE(v81[0]) = 0;
    sub_24A3B1A24();
    sub_24A4AC160();
    v11 = 0;
    v62 = v4;
    v63 = v7;
    v61 = a1;
    v12 = v82;
    v13 = *(v82 + 16);
    if (v13)
    {
      v59 = 0;
      *&v82 = MEMORY[0x277D84F90];
      sub_24A3DBC2C(0, v13, 0);
      v14 = v82;
      v58[1] = v12;
      v15 = (v12 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        swift_bridgeObjectRetain_n();
        v18 = sub_24A4AC0C0();

        v19 = v18 > 4;
        *&v82 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24A3DBC2C((v20 > 1), v21 + 1, 1);
          v19 = v18 > 4;
          v14 = v82;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 24 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v16;
        *(v22 + 48) = 3;
        *(v22 + 49) = v19;
        v15 += 2;
        --v13;
      }

      while (v13);

      v11 = v59;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v23 = v60;
    *(v60 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels) = v14;
    sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
    LOBYTE(v81[0]) = 1;
    sub_24A387298();
    sub_24A4AC160();
    if (v11)
    {

      v24 = 0;
    }

    else
    {
      v24 = v82;
    }

    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations) = v24;
    sub_24A3C9CEC(&qword_27EF3F130, &unk_24A4B4960);
    LOBYTE(v81[0]) = 2;
    sub_24A3B224C(&qword_27EF3F138, &qword_27EF3F130, &unk_24A4B4960, sub_24A3852CC);
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices) = v82;
    LOBYTE(v81[0]) = 3;
    sub_24A382B78();
    sub_24A4AC160();
    v25 = *(&v82 + 1);
    v26 = v83;
    v27 = 256;
    if (!BYTE1(v82))
    {
      v27 = 0;
    }

    v28 = v27 | v82;
    v29 = 0x10000;
    if (!BYTE2(v82))
    {
      v29 = 0;
    }

    v30 = v28 | v29 | (BYTE3(v82) << 24);
    v31 = v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences;
    *v31 = v30;
    *(v31 + 8) = v25;
    *(v31 + 16) = v26;
    v103 = 4;
    sub_24A38351C();
    sub_24A4AC160();
    v32 = v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features;
    *v32 = v104;
    *(v32 + 8) = 0;
    v97 = 5;
    sub_24A384C18();
    sub_24A4AC160();
    v33 = v99;
    v34 = v100;
    v35 = v101;
    v36 = v102;
    v37 = v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo;
    *v37 = v98;
    *(v37 + 16) = v33;
    *(v37 + 32) = v34;
    *(v37 + 48) = v35;
    *(v37 + 56) = v36;
    v80 = 6;
    sub_24A383EF0();
    sub_24A4AC160();
    v77 = v81[12];
    v78 = v81[13];
    v79 = v81[14];
    v73 = v81[8];
    v74 = v81[9];
    v75 = v81[10];
    v76 = v81[11];
    v69 = v81[4];
    v70 = v81[5];
    v71 = v81[6];
    v72 = v81[7];
    v65 = v81[0];
    v66 = v81[1];
    v67 = v81[2];
    v68 = v81[3];
    nullsub_1(&v65);
    v94 = v77;
    v95 = v78;
    v96 = v79;
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v93 = v76;
    v86 = v69;
    v87 = v70;
    v88 = v71;
    v89 = v72;
    v82 = v65;
    v83 = v66;
    v84 = v67;
    v85 = v68;
    v38 = (v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
    v39 = v78;
    v38[12] = v77;
    v38[13] = v39;
    v38[14] = v96;
    v40 = v91;
    v38[8] = v90;
    v38[9] = v40;
    v41 = v93;
    v38[10] = v92;
    v38[11] = v41;
    v42 = v87;
    v38[4] = v86;
    v38[5] = v42;
    v43 = v89;
    v38[6] = v88;
    v38[7] = v43;
    v44 = v83;
    *v38 = v82;
    v38[1] = v44;
    v45 = v85;
    v38[2] = v84;
    v38[3] = v45;
    sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
    LOBYTE(v65) = 7;
    sub_24A3B25B4();
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations) = *&v81[0];
    sub_24A3C9CEC(&qword_27EF3F180, &qword_24A4B4970);
    LOBYTE(v65) = 8;
    sub_24A3B224C(&qword_27EF3F188, &qword_27EF3F180, &qword_24A4B4970, sub_24A3B4CF4);
    v46 = v63;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress) = *&v81[0];
    sub_24A3C9CEC(&qword_27EF3F198, &qword_24A4B4978);
    LOBYTE(v65) = 10;
    sub_24A3818EC();
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following) = *&v81[0];
    LOBYTE(v65) = 11;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers) = *&v81[0];
    LOBYTE(v65) = 12;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing) = *&v81[0];
    LOBYTE(v65) = 13;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers) = *&v81[0];
    LOBYTE(v65) = 9;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers) = *&v81[0];
    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    LOBYTE(v65) = 14;
    sub_24A382AC4();
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe) = *&v81[0];
    LOBYTE(v65) = 16;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends) = *&v81[0];
    LOBYTE(v65) = 15;
    sub_24A4AC160();
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe) = *&v81[0];
    LOBYTE(v65) = 17;
    sub_24A4AC160();
    v47 = v61;
    *(v23 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends) = *&v81[0];
    sub_24A39997C(v47, v81);
    v4 = sub_24A3B7448(v81);
    v48 = qword_27EF3EBF8;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_24A4AB630();
    sub_24A378E18(v49, qword_27EF4E260);
    v50 = sub_24A4AB600();
    v51 = sub_24A4ABCE0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v81[0] = v53;
      *v52 = 136315138;
      v54 = sub_24A3BA0E8();
      v56 = sub_24A37BD58(v54, v55, v81);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_24A376000, v50, v51, "FMFInitRefreshClientResponse: initialized with coder %s", v52, 0xCu);
      sub_24A37EEE0(v53);
      MEMORY[0x24C219130](v53, -1, -1);
      MEMORY[0x24C219130](v52, -1, -1);

      (*(v64 + 8))(v63, v62);
    }

    else
    {

      (*(v64 + 8))(v46, v62);
    }

    sub_24A37EEE0(v61);
  }

  return v4;
}

unint64_t FMFConfigValue.rawValue.getter()
{
  result = 0x74655365636E6566;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 0xA:
      result = 0xD000000000000020;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 0xB:
      result = 0xD000000000000021;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A3AF58C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_24A3AE744(a1);
}

unint64_t sub_24A3AF5D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE006B6E694C7075;
      v8 = 0x74655365636E6566;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000019;
          v7 = 0x800000024A4AEC50;
          break;
        case 2:
          v8 = 0xD000000000000015;
          v7 = 0x800000024A4AEC70;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x800000024A4AEC90;
          break;
        case 4:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000024A4AECB0;
          break;
        case 5:
          v8 = 0xD000000000000018;
          v7 = 0x800000024A4AECD0;
          break;
        case 6:
          v8 = 0xD000000000000020;
          v7 = 0x800000024A4AECF0;
          break;
        case 7:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000024A4AED20;
          break;
        case 8:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000024A4AED40;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000024A4AED60;
          break;
        case 0xA:
          v8 = 0xD000000000000020;
          v7 = 0x800000024A4AED80;
          break;
        case 0xB:
          v8 = 0xD000000000000021;
          v7 = 0x800000024A4AEDB0;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x800000024A4AEDE0;
          break;
        default:
          break;
      }

      v9 = 0x74655365636E6566;
      v10 = 0xEE006B6E694C7075;
      switch(a1)
      {
        case 1:
          v10 = 0x800000024A4AEC50;
          if (v8 == 0xD000000000000019)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v10 = 0x800000024A4AEC70;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v10 = 0x800000024A4AEC90;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          v10 = 0x800000024A4AECB0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          v10 = 0x800000024A4AECD0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v10 = 0x800000024A4AECF0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v10 = 0x800000024A4AED20;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v10 = 0x800000024A4AED40;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v10 = 0x800000024A4AED60;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v9 = 0xD000000000000020;
          v10 = 0x800000024A4AED80;
          goto LABEL_38;
        case 11:
          v10 = 0x800000024A4AEDB0;
          if (v8 != 0xD000000000000021)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v10 = 0x800000024A4AEDE0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v9)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_24A4AC270();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

void sub_24A3AFAB4(unint64_t a1, char *a2)
{
  v198 = a2;
  v205 = type metadata accessor for FMFFriend();
  v207 = *(v205 - 1);
  v3 = *(v207 + 64);
  v4 = MEMORY[0x28223BE20](v205);
  v6 = (&v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v196 = &v185 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v185 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v185 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v191 = &v185 - v16;
  MEMORY[0x28223BE20](v15);
  v190 = &v185 - v17;
  v18 = type metadata accessor for FMFLocation();
  v201 = *(v18 - 8);
  v19 = *(v201 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v193 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v185 - v23);
  MEMORY[0x28223BE20](v22);
  v206 = &v185 - v25;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v202 = a1;
    v195 = v11;
    v26 = sub_24A4AB630();
    v185 = sub_24A378E18(v26, qword_27EF4E260);
    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24A376000, v27, v28, "FMFGenericResponseHandler: handleInitRefreshResponse", v29, 2u);
      MEMORY[0x24C219130](v29, -1, -1);
    }

    v30 = (v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences);
    v31 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16);
    if (v31)
    {
      v32 = *v30;
      v33 = v30[1];
      v34 = v30[3];
      v35 = v198;
      v36 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      *&v244 = v32;
      *(&v244 + 1) = v33;
      *&v245 = v31;
      *(&v245 + 1) = v34;
      sub_24A388B00(v32, v33, v31);
      v200 = v32;
      v203 = v33;
      v204 = v34;
      sub_24A388B00(v32, v33, v31);

      sub_24A3B173C(&v244);

      v37 = &v35[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v37 + 1);
        ObjectType = swift_getObjectType();
        *&v244 = v200;
        *(&v244 + 1) = v203;
        *&v245 = v31;
        *(&v245 + 1) = v204;
        (*(v38 + 8))(&v244, ObjectType, v38);
        swift_unknownObjectRelease();
        v41 = *(&v244 + 1);
        v40 = v244;
        v42 = v245;
      }

      else
      {
        v40 = v200;
        v41 = v203;
        v42 = v31;
      }

      sub_24A37F110(v40, v41, v42);
    }

    v43 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 176);
    v44 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 208);
    v241 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 192);
    v242 = v44;
    v45 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 112);
    v46 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 144);
    v237 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 128);
    v238 = v46;
    v47 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 144);
    v48 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 176);
    v239 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 160);
    v240 = v48;
    v49 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 48);
    v50 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 80);
    v233 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 64);
    v234 = v50;
    v51 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 80);
    v52 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 112);
    v235 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 96);
    v236 = v52;
    v53 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 16);
    v229 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
    v230 = v53;
    v54 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 48);
    v56 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
    v55 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 16);
    v231 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 32);
    v232 = v54;
    v255 = v43;
    v256 = v241;
    v57 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 224);
    v257 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 208);
    v258 = v57;
    v251 = v45;
    v252 = v237;
    v253 = v47;
    v254 = v239;
    v247 = v49;
    v248 = v233;
    v249 = v51;
    v250 = v235;
    v243 = v57;
    v244 = v56;
    v245 = v55;
    v246 = v231;
    Strong = sub_24A387AB8(&v244);
    if (Strong != 1)
    {
      v59 = v198;
      v60 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v222 = v241;
      v223 = v242;
      v224 = v243;
      v218 = v237;
      v219 = v238;
      v220 = v239;
      v221 = v240;
      v214 = v233;
      v215 = v234;
      v216 = v235;
      v217 = v236;
      v211 = v229;
      v212 = v230;
      v213[0] = v231;
      v213[1] = v232;

      sub_24A387AD4(&v211);

      v61 = &v59[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v62 = *(v61 + 1);
        v63 = swift_getObjectType();
        v222 = v256;
        v223 = v257;
        v224 = v258;
        v218 = v252;
        v219 = v253;
        v220 = v254;
        v221 = v255;
        v214 = v248;
        v215 = v249;
        v216 = v250;
        v217 = v251;
        v211 = v244;
        v212 = v245;
        v213[0] = v246;
        v213[1] = v247;
        nullsub_1(&v211);
        v210[9] = v221;
        v210[10] = v222;
        v210[11] = v223;
        v210[12] = v224;
        v210[5] = v217;
        v210[6] = v218;
        v210[7] = v219;
        v210[8] = v220;
        v210[2] = v214;
        v210[3] = v215;
        v210[4] = v216;
        v208 = v211;
        v209 = v212;
        v210[0] = v213[0];
        v210[1] = v213[1];
        (*(v62 + 32))(&v208, v63, v62);
        Strong = swift_unknownObjectRelease();
      }
    }

    v64 = (v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features);
    if ((*(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features + 8) & 1) == 0)
    {
      v65 = *v64;
      v66 = v198;
      v67 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      *&v211 = *v64;
      BYTE8(v211) = 0;

      sub_24A3877A0(&v211);

      v68 = &v66[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v69 = *(v68 + 1);
        v70 = swift_getObjectType();
        *&v211 = v65;
        BYTE8(v211) = 0;
        (*(v69 + 16))(&v211, v70, v69);
        Strong = swift_unknownObjectRelease();
      }
    }

    v71 = (v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo);
    v72 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 16);
    v211 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo);
    v212 = v72;
    v213[0] = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 32);
    *(v213 + 9) = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 41);
    if (v211)
    {
      v73 = v198;
      v74 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v75 = v71[1];
      v208 = *v71;
      v209 = v75;
      v210[0] = v71[2];
      *(v210 + 9) = *(v71 + 41);
      sub_24A37B740(&v211, &v225, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A37B740(&v211, &v225, &qword_27EF3FD68, &unk_24A4B9F40);

      sub_24A3B3930(&v208);

      v76 = &v73[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v77 = *(v76 + 1);
        v78 = swift_getObjectType();
        v225 = v211;
        v226 = v212;
        v227[0] = v213[0];
        *(v227 + 9) = *(v213 + 9);
        (*(v77 + 24))(&v225, v78, v77);
        swift_unknownObjectRelease();
        v208 = v225;
        v209 = v226;
        v210[0] = v227[0];
        *(v210 + 9) = *(v227 + 9);
        v79 = &v208;
      }

      else
      {
        v79 = &v211;
      }

      Strong = sub_24A37EF2C(v79, &qword_27EF3FD68, &unk_24A4B9F40);
    }

    v80 = v202;
    v81 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices);
    if (v81)
    {
      v82 = v198;
      v83 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];

      sub_24A38744C(v84);

      v85 = &v82[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v86 = *(v85 + 1);
        v87 = swift_getObjectType();
        (*(v86 + 40))(v81, 1, v87, v86);
        Strong = swift_unknownObjectRelease();
      }
    }

    v88 = *(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels);
    if (v88)
    {
      v89 = v198;
      v90 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];

      sub_24A387740(v91);

      v92 = &v89[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v93 = *(v92 + 1);
        v94 = swift_getObjectType();
        (*(v93 + 48))(v88, v94, v93);
        Strong = swift_unknownObjectRelease();
      }
    }

    v95 = *(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations);
    if (v95)
    {
      v96 = v198;
      v97 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];

      sub_24A387770(v98);

      v99 = &v96[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v100 = *(v99 + 1);
        v101 = swift_getObjectType();
        (*(v100 + 80))(v95, v101, v100);
        Strong = swift_unknownObjectRelease();
      }
    }

    if (*(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following))
    {
      v102 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v103 = *(v102 + 56);
      MEMORY[0x28223BE20](Strong);
      *(&v185 - 2) = v104;
      *(&v185 - 1) = v102;

      sub_24A4ABD70();

      v80 = v202;
      v192 = v208;
    }

    else
    {
      v192 = 0;
    }

    if (*(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers))
    {
      v105 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v106 = *(v105 + 56);
      MEMORY[0x28223BE20](Strong);
      *(&v185 - 2) = v107;
      *(&v185 - 1) = v105;

      v80 = v202;
      sub_24A4ABD70();

      v192 |= v208;
    }

    if (*(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers))
    {
      v108 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v109 = *(v108 + 56);
      MEMORY[0x28223BE20](Strong);
      *(&v185 - 2) = v110;
      *(&v185 - 1) = v108;

      v80 = v202;
      sub_24A4ABD70();

      v192 |= v208;
    }

    if (*(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing))
    {
      v111 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v112 = *(v111 + 56);
      MEMORY[0x28223BE20](Strong);
      *(&v185 - 2) = v113;
      *(&v185 - 1) = v111;

      v80 = v202;
      sub_24A4ABD70();

      v192 |= v208;
    }

    v114 = v198;
    if (*(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers))
    {
      v115 = *&v198[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      v116 = *(v115 + 56);
      MEMORY[0x28223BE20](Strong);
      *(&v185 - 2) = v117;
      *(&v185 - 1) = v115;

      v80 = v202;
      sub_24A4ABD70();

      v192 |= v208;
    }

    v118 = *(v80 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe);
    v119 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe;
    v120 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe];
    v121 = v118;
    v122 = v114;
    if (!v118)
    {
      v123 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe];

      v121 = v120;
    }

    *&v114[v119] = v121;

    v124 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends;
    v125 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends];
    v126 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends);
    if (!v126)
    {
      v127 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends];

      v126 = v125;
    }

    *&v114[v124] = v126;

    v128 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe;
    v129 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe];
    v130 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe);
    if (!v130)
    {
      v131 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe];

      v130 = v129;
    }

    *&v114[v128] = v130;

    v132 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends;
    v133 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends];
    v134 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends);
    if (!v134)
    {
      v135 = *&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends];

      v134 = v133;
    }

    *&v114[v132] = v134;

    sub_24A39FD18();
    v136 = swift_allocObject();
    v189 = v136;
    *(v136 + 16) = 0;
    v186 = (v136 + 16);
    v200 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager;
    v11 = *(*&v114[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager] + 56);

    v187 = sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v188 = 0;

    v137 = v208;
    v138 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations);
    if (v138)
    {
      v199 = *(v138 + 16);
      if (v199)
      {
        a1 = 0;
        v194 = MEMORY[0x277D84F90];
        v197 = v138;
        while (1)
        {
          if (a1 >= *(v138 + 16))
          {
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v204 = (*(v201 + 80) + 32) & ~*(v201 + 80);
          v203 = *(v201 + 72);
          v140 = v206;
          sub_24A3BCA40(v138 + v204 + v203 * a1, v206, type metadata accessor for FMFLocation);
          sub_24A3BCA40(v140, v24, type metadata accessor for FMFLocation);
          v141 = *(v137 + 16);
          if (v141)
          {
            break;
          }

LABEL_51:
          v11 = type metadata accessor for FMFLocation;
          sub_24A3B599C(v206, type metadata accessor for FMFLocation);
          v139 = v24;
LABEL_52:
          sub_24A3B599C(v139, type metadata accessor for FMFLocation);
LABEL_53:
          ++a1;
          v138 = v197;
          if (a1 == v199)
          {
            goto LABEL_81;
          }
        }

        v142 = v137 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
        v143 = *(v207 + 72);
        while (1)
        {
          sub_24A3BCA40(v142, v14, type metadata accessor for FMFFriend);
          v144 = v24[1];
          if (v144)
          {
            v145 = *v14 == *v24 && v144 == v14[1];
            if (v145 || (sub_24A4AC270() & 1) != 0)
            {
              break;
            }
          }

          sub_24A3B599C(v14, type metadata accessor for FMFFriend);
          v142 += v143;
          if (!--v141)
          {
            goto LABEL_51;
          }
        }

        v11 = type metadata accessor for FMFFriend;
        v146 = v191;
        sub_24A3B587C(v14, v191, type metadata accessor for FMFFriend);
        v147 = v146;
        v148 = v190;
        sub_24A3B587C(v147, v190, type metadata accessor for FMFFriend);
        if (*(*&v122[v200] + 672) == 1)
        {
          v149 = *(v148 + v205[11]);
          if (v149 != 2 && (v149 & 1) != 0)
          {
            sub_24A3B599C(v148, type metadata accessor for FMFFriend);
            sub_24A3B599C(v24, type metadata accessor for FMFLocation);
LABEL_74:
            v139 = v206;
            goto LABEL_52;
          }

          v11 = *(v148 + v205[12]);
          if (v11 == 2)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v150 = *(v148 + v205[12]);
          if (v150 == 2 || (v150 & 1) == 0)
          {
LABEL_72:
            sub_24A3B599C(v148, type metadata accessor for FMFFriend);
            sub_24A3B599C(v24, type metadata accessor for FMFLocation);
LABEL_75:
            sub_24A3B587C(v206, v193, type metadata accessor for FMFLocation);
            v11 = v194;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v208 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24A3B57CC(0, *(v11 + 16) + 1, 1);
              v11 = v208;
            }

            v153 = *(v11 + 16);
            v152 = *(v11 + 24);
            if (v153 >= v152 >> 1)
            {
              sub_24A3B57CC(v152 > 1, v153 + 1, 1);
              v11 = v208;
            }

            *(v11 + 16) = v153 + 1;
            v194 = v11;
            sub_24A3B587C(v193, v11 + v204 + v153 * v203, type metadata accessor for FMFLocation);
            goto LABEL_53;
          }

          v11 = *(v148 + v205[13]) ^ 1u;
        }

        sub_24A3B599C(v148, type metadata accessor for FMFFriend);
        sub_24A3B599C(v24, type metadata accessor for FMFLocation);
        if ((v11 & 1) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      v194 = MEMORY[0x277D84F90];
LABEL_81:
      v154 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v155 = sub_24A4AB820();
      v156 = [v154 initWithDescription:v155 andTimeout:60.0];

      v11 = *&v122[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationShifter];
      v24 = swift_allocObject();
      v157 = v189;
      v24[2] = v122;
      v24[3] = v157;
      v24[4] = v156;
      v158 = v122;

      v14 = v156;
      sub_24A3BCD18(v194, sub_24A3B57B0, v24);

      [v14 wait];
    }

    v159 = *(v202 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress);
    if (!v159)
    {
      break;
    }

    v204 = *(v159 + 16);
    if (!v204)
    {
      v202 = MEMORY[0x277D84F90];
LABEL_118:

LABEL_120:
      v174 = *&v122[v200];
      v175 = *(v174 + 56);
      MEMORY[0x28223BE20](v173);
      *(&v185 - 2) = v202;
      *(&v185 - 1) = v174;

      sub_24A4ABD70();

      swift_bridgeObjectRelease_n();
      if ((v192 & 1) == 0)
      {
        v172 = v208;
        goto LABEL_122;
      }

      goto LABEL_125;
    }

    a1 = 0;
    v203 = v159 + 32;
    v202 = MEMORY[0x277D84F90];
    while (a1 < *(v159 + 16))
    {
      v160 = v203 + 24 * a1;
      v14 = *v160;
      v24 = *(v160 + 8);
      LODWORD(v206) = *(v160 + 16);
      ++a1;
      v11 = *(v137 + 16);

      if (v11)
      {
        v161 = 0;
        while (1)
        {
          if (v161 >= *(v137 + 16))
          {
            __break(1u);
            goto LABEL_132;
          }

          sub_24A3BCA40(v137 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v161, v6, type metadata accessor for FMFFriend);
          v162 = *v6 == v14 && v6[1] == v24;
          if (v162 || (sub_24A4AC270() & 1) != 0)
          {
            break;
          }

          ++v161;
          sub_24A3B599C(v6, type metadata accessor for FMFFriend);
          if (v11 == v161)
          {
            goto LABEL_97;
          }
        }

        v11 = type metadata accessor for FMFFriend;
        v167 = v196;
        sub_24A3B587C(v6, v196, type metadata accessor for FMFFriend);
        v168 = v167;
        v169 = v195;
        sub_24A3B587C(v168, v195, type metadata accessor for FMFFriend);
        if (*(*&v122[v200] + 672) == 1)
        {
          v170 = *(v169 + v205[11]);
          if (v170 != 2 && (v170 & 1) != 0)
          {
            sub_24A3B599C(v169, type metadata accessor for FMFFriend);
            goto LABEL_86;
          }

          v11 = *(v169 + v205[12]);
          if (v11 != 2)
          {
            sub_24A3B599C(v169, type metadata accessor for FMFFriend);
            if ((v11 & 1) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_86;
          }

LABEL_113:
          sub_24A3B599C(v169, type metadata accessor for FMFFriend);
          goto LABEL_97;
        }

        v171 = *(v169 + v205[12]);
        if (v171 == 2 || (v171 & 1) == 0)
        {
          goto LABEL_113;
        }

        v11 = *(v169 + v205[13]);
        sub_24A3B599C(v169, type metadata accessor for FMFFriend);
        if (v11)
        {
          goto LABEL_97;
        }

LABEL_86:

        if (a1 != v204)
        {
          continue;
        }

        if (!v202)
        {
          goto LABEL_115;
        }

        goto LABEL_120;
      }

LABEL_97:
      v11 = v202;
      v163 = swift_isUniquelyReferenced_nonNull_native();
      *&v208 = v11;
      if ((v163 & 1) == 0)
      {
        sub_24A3BCBC4(0, *(v11 + 16) + 1, 1);
        v11 = v208;
      }

      v165 = *(v11 + 16);
      v164 = *(v11 + 24);
      if (v165 >= v164 >> 1)
      {
        sub_24A3BCBC4((v164 > 1), v165 + 1, 1);
        v11 = v208;
      }

      *(v11 + 16) = v165 + 1;
      v202 = v11;
      v166 = v11 + 24 * v165;
      *(v166 + 32) = v14;
      *(v166 + 40) = v24;
      *(v166 + 48) = v206;
      v122 = v198;
      if (a1 == v204)
      {
        goto LABEL_118;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

LABEL_115:
  if (v192)
  {
    goto LABEL_125;
  }

  v172 = 0;
LABEL_122:
  v176 = v186;
  swift_beginAccess();
  if ((*v176 & 1) != 0 || (v172 & 1) != 0 || v122[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_isSnapshotMode] == 1)
  {
LABEL_125:
    v177 = &v122[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v178 = *(v177 + 1);
      v179 = swift_getObjectType();
      v180 = *(*&v122[v200] + 56);

      sub_24A4ABD70();

      (*(v178 + 56))(v228, 1, v179, v178);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v181 = v189;

    v182 = sub_24A4AB600();
    v183 = sub_24A4ABCE0();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 67240448;
      *(v184 + 8) = 1026;
      *(v184 + 10) = *(v181 + 16);

      _os_log_impl(&dword_24A376000, v182, v183, "FMFGenericResponseHandler: Skipping update due to no changes detected:\nfriendsUpdated: %{BOOL,public}d locationsUpdated: %{BOOL,public}d", v184, 0xEu);
      MEMORY[0x24C219130](v184, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24A3B13B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24A3B1404()
{
  result = qword_27EF3F1D8;
  if (!qword_27EF3F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1D8);
  }

  return result;
}

_OWORD *sub_24A3B1460(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_24A3A60B4(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_24A3B15BC(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_24A37EF2C(a1, &qword_27EF3F808, &unk_24A4BA6D0);
    v8 = *v2;
    v9 = sub_24A3AE6B8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_24A4A9528();
        v14 = v16;
      }

      sub_24A3A60B4((*(v14 + 56) + 32 * v11), v17);
      sub_24A4A782C(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_24A37EF2C(v17, &qword_27EF3F808, &unk_24A4BA6D0);
  }

  return result;
}

unint64_t sub_24A3B1568()
{
  result = qword_27EF3F1E0;
  if (!qword_27EF3F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1E0);
  }

  return result;
}

_OWORD *sub_24A3B15BC(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24A3AE6B8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24A4A9528();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24A4A609C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_24A3AE6B8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    sub_24A37EEE0(v21);

    return sub_24A3A60B4(a1, v21);
  }

  else
  {

    return sub_24A4A8298(v9, a2, a1, v20);
  }
}

unint64_t sub_24A3B16E8()
{
  result = qword_27EF3F100;
  if (!qword_27EF3F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F100);
  }

  return result;
}

uint64_t sub_24A3B173C(__int128 *a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = *a1;
  *(v12 + 40) = a1[1];
  *(v12 + 24) = v13;
  aBlock[4] = sub_24A3B2230;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D898C0;
  v14 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

unint64_t sub_24A3B1A24()
{
  result = qword_27EF3F110;
  if (!qword_27EF3F110)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F110);
  }

  return result;
}

uint64_t sub_24A3B1AC4(uint64_t a1)
{
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  v14 = os_log_type_enabled(v12, v13);
  v25 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = sub_24A4AB790();
    v19 = sub_24A37BD58(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_24A376000, v12, v13, "FMFServerInteractionController: process server context: %s", v15, 0xCu);
    sub_24A37EEE0(v16);
    MEMORY[0x24C219130](v16, -1, -1);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  if (qword_27EF3EC08 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  aBlock[4] = sub_24A3ACFCC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A1B0;
  v21 = _Block_copy(aBlock);

  v22 = v26;
  sub_24A4AB6B0();
  v29 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v22, v6, v21);
  _Block_release(v21);
  (*(v3 + 8))(v6, v2);
  (*(v28 + 8))(v22, v27);
}

uint64_t sub_24A3B1F04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24A3B1F3C(char a1)
{
  result = 0x736C6562616CLL;
  switch(a1)
  {
    case 1:
    case 16:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73656369766564;
      break;
    case 3:
      result = 0x7366657270;
      break;
    case 4:
      result = 0x7365727574616566;
      break;
    case 5:
      result = 0x6F666E49796DLL;
      break;
    case 6:
      result = 0x6769666E6F63;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x4F676E69646E6570;
      break;
    case 10:
      result = 0x6E69776F6C6C6F66;
      break;
    case 11:
      result = 0x7265776F6C6C6F66;
      break;
    case 12:
    case 13:
      result = 0x6F46657275747566;
      break;
    case 14:
      result = 0x7365636E6546796DLL;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A3B216C(uint64_t a1)
{
  v2 = sub_24A3B16E8();

  return MEMORY[0x2821FE718](a1, v2);
}

void sub_24A3B21A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[93];
  v7 = a1[94];
  v8 = a1[95];
  v9 = a1[96];
  a1[93] = a2;
  a1[94] = a3;
  a1[95] = a4;
  a1[96] = a5;
  sub_24A388B00(a2, a3, a4);
  sub_24A37F110(v6, v7, v8);
  v10 = a1[72];
  a1[72] = 0;

  sub_24A387F3C();
}

uint64_t sub_24A3B224C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFInitRefreshClientResponse.InitRefreshCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFInitRefreshClientResponse.InitRefreshCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL _s7FMFCore9FMFConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = *(a2 + 32);
  v9 = *(a2 + 72);
  v10 = *(a2 + 56);
  v2.i64[0] = *(a1 + 16);
  v11 = vdupq_laneq_s64(v5, 1);
  v12 = vzip1q_s64(v2, v5);
  v13 = vzip1q_s64(v11, v7);
  v11.i64[0] = vdupq_laneq_s64(v6, 1).u64[0];
  v14 = vextq_s8(v7, v6, 8uLL);
  v7.i64[0] = *(a2 + 16);
  v15 = vzip1q_s64(v7, v8);
  v16 = vzip1q_s64(vdupq_laneq_s64(v8, 1), v10);
  v17 = vextq_s8(v10, v9, 8uLL);
  v9.i64[0] = vdupq_laneq_s64(v9, 1).u64[0];
  v9.i64[1] = *(a2 + 88);
  v11.i64[1] = *(a1 + 88);
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(v12, v15)), vuzp1q_s32(vceqq_s64(v13, v16), vceqq_s64(v14, v17))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(v11, v9), vceqq_s64(*(a1 + 104), *(a2 + 104))), vuzp1q_s32(vceqq_s64(*(a1 + 120), *(a2 + 120)), vceqq_s64(*(a1 + 136), *(a2 + 136)))))) & 1) != 0 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(a1 + 152), *(a2 + 152)), vceqq_s64(*(a1 + 168), *(a2 + 168))), vuzp1q_s32(vceqq_s64(*(a1 + 184), *(a2 + 184)), vceqq_s64(*(a1 + 208), *(a2 + 208)))), xmmword_24A4B8F30)) == 255 && *(a1 + 224) == *(a2 + 224) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && ((*(a1 + 200) ^ *(a2 + 200)) & 1) == 0 && ((*(a1 + 201) ^ *(a2 + 201)) & 1) == 0 && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 232) == *(a2 + 232);
  }

  return result;
}

unint64_t sub_24A3B25B4()
{
  result = qword_27EF3F170;
  if (!qword_27EF3F170)
  {
    sub_24A3CBC9C(&qword_27EF3F168, &unk_24A4BA240);
    sub_24A3819A0(&qword_27EF3F178, type metadata accessor for FMFLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F170);
  }

  return result;
}

uint64_t FMFLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_24A3C9CEC(&qword_27EF3F828, &qword_24A4B6590);
  v44 = *(v41 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v35 - v4;
  v6 = type metadata accessor for FMFLocation();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 3) = 0;
  v10[32] = 1;
  v39 = v8;
  v11 = *(v8 + 32);
  v12 = sub_24A4AAB20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v46 = v11;
  v43 = v14;
  v14(&v10[v11], 1, 1, v12);
  v16 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B2B60();
  v40 = v5;
  v17 = v45;
  sub_24A4AC3C0();
  if (v17)
  {
    sub_24A37EEE0(a1);
    return sub_24A37EF2C(&v10[v46], &qword_27EF3F468, &qword_24A4B9F30);
  }

  else
  {
    v38 = v15;
    v45 = v12;
    v20 = v39;
    v19 = v40;
    v49[0] = 3;
    v21 = v41;
    v22 = sub_24A4AC150();
    v36 = 0;
    v37 = a1;
    v35 = v22;
    v23 = v10;
    v49[383] = 0;
    v24 = v19;
    v25 = sub_24A4AC120();
    v26 = v44;
    *v10 = v25;
    *(v10 + 1) = v27;
    v49[382] = 1;
    sub_24A3B2D98();
    v28 = v21;
    sub_24A4AC160();
    memcpy(v47, v48, 0x161uLL);
    nullsub_1(v47);
    memcpy(v49, v47, 0x161uLL);
    v29 = v46;
    v30 = v43;
    (*(v26 + 8))(v24, v28, v31);
    memcpy((v23 + v20[11]), v49, 0x161uLL);
    v32 = v35;
    v33 = v35 < 4 && v36 == 0;
    *(v23 + 16) = 0;
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    *(v23 + 33) = v34;
    sub_24A37EF2C(v23 + v29, &qword_27EF3F468, &qword_24A4B9F30);
    v30(v23 + v29, 1, 1, v45);
    *(v23 + v20[9]) = 0;
    *(v23 + v20[10]) = 0;
    sub_24A3EE104(v23, v42, type metadata accessor for FMFLocation);
    sub_24A37EEE0(v37);
    return sub_24A3EE16C(v23, type metadata accessor for FMFLocation);
  }
}

uint64_t sub_24A3B2A58(uint64_t a1)
{
  v3 = v1[2];

  if (v1[5])
  {

    v4 = v1[6];
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_24A3B2AB4()
{
  result = qword_27EF3F898;
  if (!qword_27EF3F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F898);
  }

  return result;
}

unint64_t sub_24A3B2B0C()
{
  result = qword_27EF3F8A0;
  if (!qword_27EF3F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F8A0);
  }

  return result;
}

unint64_t sub_24A3B2B60()
{
  result = qword_27EF3F830;
  if (!qword_27EF3F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F830);
  }

  return result;
}

unint64_t sub_24A3B2BB4()
{
  v1 = 25705;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

void sub_24A3B2C24(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 1032);
  v3 = *(a1 + 1040);
  v4 = *(a1 + 1048);
  v5 = *(a1 + 1056);
  v6 = *(a1 + 1064);
  v7 = *(a1 + 1072);
  v8 = *(a1 + 1080);
  v9 = a2[1];
  *(a1 + 1032) = *a2;
  *(a1 + 1048) = v9;
  *(a1 + 1064) = a2[2];
  v10 = *(a1 + 1088);
  *(a1 + 1073) = *(a2 + 41);
  sub_24A37B740(a2, &v11, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A3B2D38(v2);
  sub_24A387F3C();
}

uint64_t sub_24A3B2CF0(uint64_t a1)
{
  v2 = sub_24A3B2B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3B2D38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24A3B2D98()
{
  result = qword_27EF3F838;
  if (!qword_27EF3F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F838);
  }

  return result;
}

uint64_t sub_24A3B2DEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for FMFLabelledLocation();
  v109 = *(v3 - 8);
  v4 = *(v109 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v100 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v98 = &v91 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v99 = &v91 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v91 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v91 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v102 = &v91 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v91 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v103 = &v91 - v20;
  MEMORY[0x28223BE20](v19);
  v104 = &v91 - v21;
  v22 = sub_24A4AAAD0();
  v105 = *(v22 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A3C9CEC(&qword_27EF3F300, &qword_24A4B5228);
  v110 = *(v26 - 8);
  v27 = *(v110 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v91 - v28;
  v30 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B4A78();
  v31 = v111;
  sub_24A4AC3C0();
  if (v31)
  {
    return sub_24A37EEE0(a1);
  }

  v33 = v109;
  v96 = v22;
  v97 = v25;
  v123 = 0;
  sub_24A3D7088();
  v111 = v29;
  sub_24A4AC160();
  memcpy(v112, v113, 0x130uLL);
  nullsub_1(v112);
  memcpy(v124, v112, sizeof(v124));
  v34 = a1;
  LOBYTE(v113[0]) = 6;
  v35 = sub_24A4AC130();
  LOBYTE(v113[0]) = 1;
  sub_24A4AC140();
  v37 = v36;
  LOBYTE(v113[0]) = 2;
  sub_24A4AC140();
  v39 = v38;
  LOBYTE(v113[0]) = 3;
  sub_24A4AC140();
  v94 = v35;
  v41 = v40;
  LOBYTE(v113[0]) = 4;
  v42 = sub_24A4AC170();
  v43 = [objc_opt_self() fm:v42 dateFromEpoch:?];
  sub_24A4AAAA0();

  sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
  LOBYTE(v112[0]) = 5;
  sub_24A3D73CC(&qword_27EF3F120, &qword_27EF3F128);
  sub_24A4AC160();
  v91 = v26;
  if (!v113[0])
  {
    v95 = 0;
    goto LABEL_17;
  }

  v92 = *(v113[0] + 16);
  v95 = v113[0];
  if (!v92)
  {
LABEL_17:
    v108 = 0;
    v109 = 0;
    LODWORD(v107) = 0;
LABEL_18:
    v51 = v96;
    v52 = v105;
LABEL_19:
    v53 = v94 & 1;
    v54 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v55 = v97;
    v56 = sub_24A4AAA60();
    v57 = [v54 initWithCoordinate:v56 altitude:v39 horizontalAccuracy:v37 verticalAccuracy:0.0 course:v41 speed:0.0 timestamp:{-1.0, -1.0}];

    (*(v52 + 8))(v55, v51);
    (*(v110 + 8))(v111, v91);
    memcpy(v112, v124, 0x130uLL);
    v112[38] = v57;
    LOBYTE(v112[39]) = 0;
    *(&v112[39] + 1) = v127[0];
    HIDWORD(v112[39]) = *(v127 + 3);
    v59 = v108;
    v58 = v109;
    v112[40] = v109;
    v112[41] = v108;
    v60 = v107;
    LOWORD(v112[42]) = v107;
    *(&v112[42] + 2) = v125;
    HIWORD(v112[42]) = v126;
    v61 = v95;
    v112[43] = v95;
    LOBYTE(v112[44]) = v53;
    memcpy(v106, v112, 0x161uLL);
    sub_24A3D70DC(v112, v113);
    sub_24A37EEE0(v34);
    memcpy(v113, v124, 0x130uLL);
    v113[38] = v57;
    v114 = 0;
    *v115 = v127[0];
    *&v115[3] = *(v127 + 3);
    v116 = v58;
    v117 = v59;
    v118 = v60;
    v119 = v125;
    v120 = v126;
    v121 = v61;
    v122 = v53;
    return sub_24A3C36E0(v113);
  }

  v44 = v33;
  v93 = v113[0] + ((*(v33 + 80) + 32) & ~*(v33 + 80));

  v45 = 0;
  v46 = v108;
  do
  {
    if (v45 >= *(v95 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v48 = *(v44 + 72);
    sub_24A3D7114(v93 + v48 * v45, v46);
    v49 = *(v46 + 32);
    if (*(v46 + 24))
    {
      v50 = v49 == 3;
    }

    else
    {
      v50 = 1;
    }

    if (!v50)
    {
      if (v49 != 1 && v49 != 2)
      {

LABEL_46:
        v78 = v96;
        v80 = v103;
        v79 = v104;

        sub_24A3D71D4(v108, v80);
        sub_24A3D71D4(v80, v79);
        v81 = *(v79 + 16);
        v108 = *(v79 + 24);
        v109 = v81;
        LODWORD(v107) = *(v79 + 32);

        sub_24A3D7178(v79);
        v52 = v105;
        v51 = v78;
        goto LABEL_19;
      }

      v47 = sub_24A4AC270();

      v44 = v33;
      if (v47)
      {
        goto LABEL_46;
      }
    }

    ++v45;
    v46 = v108;
    result = sub_24A3D7178(v108);
  }

  while (v92 != v45);
  v62 = v95;

  if (!*(v62 + 16))
  {
    goto LABEL_17;
  }

  v63 = *(v62 + 16);
  v64 = 0;
  v65 = v93;
  v109 = v48;
  v66 = v95;
  while (v64 < *(v66 + 16))
  {
    v68 = v107;
    sub_24A3D7114(v65, v107);
    v67 = v68;
    v69 = *(v68 + 32);
    if (*(v68 + 24))
    {
      v70 = v69 == 3;
    }

    else
    {
      v70 = 1;
    }

    if (!v70)
    {
      if (*(v68 + 32) && v69 != 2)
      {
        swift_bridgeObjectRelease_n();
        v67 = v107;
LABEL_51:
        v83 = v101;
        sub_24A3D71D4(v67, v101);
        v84 = v83;
        v85 = v102;
        sub_24A3D71D4(v84, v102);
        v86 = *(v85 + 16);
        v108 = *(v85 + 24);
        v109 = v86;
        LODWORD(v107) = *(v85 + 32);

        sub_24A3D7178(v85);
        goto LABEL_18;
      }

      LODWORD(v108) = sub_24A4AC270();

      v67 = v107;
      if (v108)
      {
        goto LABEL_51;
      }
    }

    ++v64;
    result = sub_24A3D7178(v67);
    v65 += v109;
    if (v63 == v64)
    {
      v71 = *(v66 + 16);
      if (v71)
      {
        v72 = 0;
        v73 = v93;
        v74 = v100;
        v75 = v95;
        while (v72 < *(v75 + 16))
        {
          sub_24A3D7114(v73, v74);
          v76 = *(v74 + 32);
          if (*(v74 + 24))
          {
            v77 = v76 == 3;
          }

          else
          {
            v77 = 1;
          }

          if (!v77)
          {
            if (*(v74 + 32) && v76 != 1)
            {
              swift_bridgeObjectRelease_n();
LABEL_53:
              v87 = v98;
              sub_24A3D71D4(v74, v98);
              v88 = v87;
              v89 = v99;
              sub_24A3D71D4(v88, v99);
              v90 = *(v89 + 16);
              v108 = *(v89 + 24);
              v109 = v90;
              LODWORD(v107) = *(v89 + 32);

              sub_24A3D7178(v89);
              goto LABEL_54;
            }

            LODWORD(v108) = sub_24A4AC270();

            if (v108)
            {
              goto LABEL_53;
            }
          }

          ++v72;
          result = sub_24A3D7178(v74);
          v73 += v109;
          if (v71 == v72)
          {
            if (!*(v75 + 16))
            {
              goto LABEL_49;
            }

            v82 = *(v93 + 16);
            v108 = *(v93 + 24);
            v109 = v82;
            LODWORD(v107) = *(v93 + 32);

            goto LABEL_54;
          }
        }

        goto LABEL_57;
      }

LABEL_49:
      v108 = 0;
      v109 = 0;
      LODWORD(v107) = 0;
LABEL_54:
      v34 = a1;
      goto LABEL_18;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_24A3B3930(_OWORD *a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + 56);
  v12 = swift_allocObject();
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 16) = v1;
  *(v12 + 40) = v13;
  *(v12 + 56) = a1[2];
  *(v12 + 65) = *(a1 + 41);
  aBlock[4] = sub_24A3B2D2C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D897D0;
  v14 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_24A3B3C1C()
{
  v1 = v0[2];

  if (v0[3])
  {

    v2 = v0[5];

    v3 = v0[7];

    v4 = v0[9];
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_24A3B3CA4()
{
  result = qword_27EF3F378;
  if (!qword_27EF3F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F378);
  }

  return result;
}

unint64_t sub_24A3B3D08()
{
  result = qword_27EF3F380;
  if (!qword_27EF3F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F380);
  }

  return result;
}

uint64_t sub_24A3B3D5C(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v63 = a2;
  v68 = a1;
  v66 = sub_24A4AB690();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24A4AB6E0();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  v13 = sub_24A378E18(v10, qword_27EF4E260);
  v11 = v68;

  v61 = v13;
  v12 = sub_24A4AB600();
  LOBYTE(v13) = sub_24A4ABCE0();
  v14 = v11 >> 62;
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_8;
  }

  v11 = swift_slowAlloc();
  *v11 = 134217984;
  if (v14)
  {
    goto LABEL_26;
  }

  for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A4AC060())
  {
    *(v11 + 4) = i;

    _os_log_impl(&dword_24A376000, v12, v13, "FMLocationShifter: processing %ld shifting request", v11, 0xCu);
    MEMORY[0x24C219130](v11, -1, -1);

LABEL_8:
    v16 = swift_allocObject();
    v67 = v16;
    *(v16 + 16) = MEMORY[0x277D84F90];
    v13 = (v16 + 16);
    if (v14)
    {
      v12 = sub_24A4AC060();
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    v17 = objc_opt_self();
    if (v12 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v19 = v17;
  v20 = 0;
  v21 = v68 & 0xC000000000000001;
  v56 = "Queue";
  v55 = v71;
  v54 = (v4 + 8);
  v53 = (v7 + 8);
  v22 = &off_278FE1000;
  v23 = &off_278FE1000;
  *&v18 = 136315138;
  v52 = v18;
  v59 = v12;
  v60 = v13;
  v57 = v68 & 0xC000000000000001;
  v58 = v17;
  do
  {
    if (v21)
    {
      v32 = MEMORY[0x24C218380](v20, v68);
    }

    else
    {
      v32 = *(v68 + 8 * v20 + 32);
    }

    [*(v32 + 16) v22[182]];
    v34 = v33;
    [*(v32 + 16) v22[182]];
    if ([v19 v23[183]])
    {
      v35 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v36 = sub_24A4AB820();
      v37 = [v35 initWithDescription:v36 andTimeout:60.0];

      v38 = sub_24A4AB600();
      v39 = sub_24A4ABCE0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69 = v32;
        aBlock[0] = v41;
        *v40 = v52;
        type metadata accessor for FMLocationShiftingRequest();

        v42 = sub_24A4AB870();
        v44 = sub_24A37BD58(v42, v43, aBlock);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_24A376000, v38, v39, "FMLocationShifter: processing shifting request %s", v40, 0xCu);
        sub_24A37EEE0(v41);
        MEMORY[0x24C219130](v41, -1, -1);
        MEMORY[0x24C219130](v40, -1, -1);
      }

      v24 = v63;
      v25 = *(v63 + 32);
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v32;
      v26[4] = v67;
      v26[5] = v37;
      v71[2] = sub_24A3D671C;
      v71[3] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v71[0] = sub_24A388564;
      v71[1] = &unk_285D85C80;
      v27 = _Block_copy(aBlock);

      v28 = v37;
      v29 = v62;
      sub_24A4AB6B0();
      v69 = MEMORY[0x277D84F90];
      sub_24A378620(&qword_27EF408E0, MEMORY[0x277D85198]);
      sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
      sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
      v31 = v65;
      v30 = v66;
      sub_24A4ABE90();
      MEMORY[0x24C218190](0, v29, v31, v27);
      _Block_release(v27);
      (*v54)(v31, v30);
      (*v53)(v29, v64);

      [v28 wait];

      v12 = v59;
      v13 = v60;
      v21 = v57;
      v19 = v58;
      v22 = &off_278FE1000;
      v23 = &off_278FE1000;
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C217E50](v45);
      if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A4ABAA0();
      }

      sub_24A4ABAE0();
      swift_endAccess();
    }

    ++v20;
  }

  while (v12 != v20);
LABEL_24:
  swift_beginAccess();
  v47 = *(v67 + 16);

  v51(v48);
}

uint64_t sub_24A3B44FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3B4534()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3B4584(unint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v56 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - v9;
  v10 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v46 - v14;
  v53 = type metadata accessor for FMFLocation();
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v53);
  v49 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v57 = &v46 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v25 = (v20 + 56);
    v26 = MEMORY[0x277D84F90];
    v52 = *(v20 + 72);
    do
    {
      v28 = sub_24A3B4B10(v24, v22);
      MEMORY[0x28223BE20](v28);
      *(&v46 - 2) = v22;
      v29 = sub_24A3B4BD0(sub_24A407068, (&v46 - 4), v56);
      if (v29)
      {
        v30 = v29;
        v31 = v49;
        sub_24A3B4B10(v22, v49);
        v32 = *(v30 + 16);
        v33 = v57;
        FMFLocation.init(from:shiftedLocation:)(v31, v32, v57);
        v34 = v50;
        sub_24A3B4B10(v22, v50);
        (*v25)(v34, 0, 1, v53);
        v35 = *(v55 + 48);
        v36 = v33;
        v37 = v58;
        sub_24A3B4B10(v36, v58);
        sub_24A37BE24(v34, v37 + v35, &qword_27EF3F480, &unk_24A4B8C20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_24A3B4D48(0, v26[2] + 1, 1, v26);
        }

        v39 = v26[2];
        v38 = v26[3];
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v26 = sub_24A3B4D48(v38 > 1, v39 + 1, 1, v26);
        }

        sub_24A3B4B74(v57);
        v27 = v58;
      }

      else
      {
        v41 = v48;
        sub_24A3B4B10(v22, v48);
        (*v25)(v41, 0, 1, v53);
        v42 = *(v55 + 48);
        v43 = v51;
        sub_24A3B4B10(v22, v51);
        sub_24A37BE24(v41, v43 + v42, &qword_27EF3F480, &unk_24A4B8C20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_24A3B4D48(0, v26[2] + 1, 1, v26);
        }

        v39 = v26[2];
        v44 = v26[3];
        v40 = v39 + 1;
        if (v39 >= v44 >> 1)
        {
          v26 = sub_24A3B4D48(v44 > 1, v39 + 1, 1, v26);
        }

        v27 = v51;
      }

      v26[2] = v40;
      sub_24A37BE24(v27, v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v39, &qword_27EF3F8C0, &qword_24A4B9F50);
      sub_24A3B4B74(v22);
      v24 += v52;
      --v23;
    }

    while (v23);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v47(v26);
}

unint64_t sub_24A3B4A78()
{
  result = qword_27EF3F308;
  if (!qword_27EF3F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F308);
  }

  return result;
}

double sub_24A3B4ACC(uint64_t a1)
{
  *(a1 + 352) = 0;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24A3B4B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3B4B74(uint64_t a1)
{
  v2 = type metadata accessor for FMFLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3B4BD0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_24A4AC060();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C218380](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

unint64_t sub_24A3B4CF4()
{
  result = qword_27EF3F190;
  if (!qword_27EF3F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F190);
  }

  return result;
}

size_t sub_24A3B4D48(size_t result, int64_t a2, char a3, void *a4)
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

  sub_24A3C9CEC(&qword_27EF3F8B8, &unk_24A4B68E0);
  v10 = *(sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

uint64_t sub_24A3B4F38(uint64_t *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FF98, &qword_24A4B9530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B5C54();
  sub_24A4AC3C0();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_24A4AC120();
    v11 = 1;
    sub_24A4AC120();
    sub_24A4AC0C0();

    (*(v4 + 8))(v7, v3);
  }

  sub_24A37EEE0(a1);
  return v8;
}

uint64_t sub_24A3B514C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A3B4F38(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

id sub_24A3B517C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a2;
  v57 = a3;
  v6 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for FMFLocation();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v66 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v16 = *(v66 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v66);
  v60 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v55 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v61 = &v55 - v23;
  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v58 = v9;
    v59 = v10;
    v55 = a4;
    v67 = MEMORY[0x277D84F90];
    sub_24A3B57CC(0, v24, 0);
    v26 = v67;
    v27 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v64 = *(v16 + 72);
    v28 = v27;
    v29 = v24;
    do
    {
      v30 = v65;
      sub_24A37B740(v28, v65, &qword_27EF3F8C0, &qword_24A4B9F50);
      v31 = v60;
      sub_24A37BE24(v30, v60, &qword_27EF3F8C0, &qword_24A4B9F50);
      v32 = *(v66 + 48);
      sub_24A3B587C(v31, v15, type metadata accessor for FMFLocation);
      sub_24A37EF2C(v31 + v32, &qword_27EF3F480, &unk_24A4B8C20);
      v67 = v26;
      v33 = v15;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_24A3B57CC(v34 > 1, v35 + 1, 1);
        v26 = v67;
      }

      *(v26 + 16) = v35 + 1;
      v36 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v37 = *(v63 + 72);
      sub_24A3B587C(v33, v26 + v36 + v37 * v35, type metadata accessor for FMFLocation);
      v28 += v64;
      --v29;
      v15 = v33;
    }

    while (v29);
    v60 = v26;
    v38 = (v63 + 48);
    v39 = MEMORY[0x277D84F90];
    v40 = v58;
    do
    {
      v41 = v61;
      sub_24A37B740(v27, v61, &qword_27EF3F8C0, &qword_24A4B9F50);
      v42 = v41;
      v43 = v65;
      sub_24A37BE24(v42, v65, &qword_27EF3F8C0, &qword_24A4B9F50);
      sub_24A37BE24(v43 + *(v66 + 48), v40, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A3B599C(v43, type metadata accessor for FMFLocation);
      if ((*v38)(v40, 1, v59) == 1)
      {
        v22 = sub_24A37EF2C(v40, &qword_27EF3F480, &unk_24A4B8C20);
      }

      else
      {
        sub_24A3B587C(v40, v62, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_24A3B5C2C(0, v39[2] + 1, 1, v39);
        }

        v45 = v39[2];
        v44 = v39[3];
        if (v45 >= v44 >> 1)
        {
          v39 = sub_24A3B5C2C(v44 > 1, v45 + 1, 1, v39);
        }

        v39[2] = v45 + 1;
        v22 = sub_24A3B587C(v62, v39 + v36 + v37 * v45, type metadata accessor for FMFLocation);
        v40 = v58;
      }

      v27 += v64;
      --v24;
    }

    while (v24);
    a4 = v55;
    v25 = v60;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v46 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager;
  v47 = v56;
  v48 = *(v56 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager);
  v49 = v48[7];
  MEMORY[0x28223BE20](v22);
  *(&v55 - 2) = v39;
  *(&v55 - 1) = v48;

  sub_24A4ABD70();

  v51 = *(v47 + v46);
  v52 = v51[7];
  MEMORY[0x28223BE20](v50);
  *(&v55 - 2) = v51;
  *(&v55 - 1) = v25;

  sub_24A4ABD70();

  LOBYTE(v51) = v67;
  v53 = v57;
  swift_beginAccess();
  *(v53 + 16) = v51;
  return [a4 signal];
}

size_t sub_24A3B57CC(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F4F0, &unk_24A4B8C00, type metadata accessor for FMFLocation);
  *v3 = result;
  return result;
}

uint64_t sub_24A3B5814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3B587C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A3B58E4()
{
  result = qword_27EF3FFC0;
  if (!qword_27EF3FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFC0);
  }

  return result;
}

uint64_t sub_24A3B593C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A3B599C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_24A3B59FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_24A3B5BD8()
{
  result = qword_27EF3FFC8;
  if (!qword_27EF3FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFC8);
  }

  return result;
}

unint64_t sub_24A3B5C54()
{
  result = qword_27EF3FFA0;
  if (!qword_27EF3FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFA0);
  }

  return result;
}

uint64_t sub_24A3B5CA8()
{
  if (*v0)
  {
    result = 0x737574617473;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_24A3B5CD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v100 = a3;
  v5 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v101 = &v95 - v7;
  v103 = type metadata accessor for FMFLocation();
  v114 = *(v103 - 8);
  v8 = *(v114 + 64);
  v9 = MEMORY[0x28223BE20](v103);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v105 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v95 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v96 = &v95 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v98 = (&v95 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v95 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v95 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v95 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v95 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v95 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = (&v95 - v32);
  v102 = (a2 + 632);
  swift_beginAccess();
  v34 = *(a2 + 632);
  v110 = v11;
  if (v34)
  {

    v35 = sub_24A3B936C(a1);

    if (v35)
    {
      *v100 = 0;
      return result;
    }

    v37 = *v102;
    v11 = v110;
  }

  v39 = sub_24A3B6800(v38, a1);

  v40 = *(a2 + 576);
  *(a2 + 576) = 0;

  v112 = v39[2];
  v113 = v28;
  if (!v112)
  {
    v42 = MEMORY[0x277D84F98];
LABEL_23:

    v118 = MEMORY[0x277D84F90];
    if (*v102)
    {
      v59 = *v102;
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v60 = *(v59 + 16);
    if (!v60)
    {

LABEL_61:

      sub_24A3B7B8C(v42);
      v94 = *v102;
      *v102 = v118;

      *v100 = 1;
      return result;
    }

    v112 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v61 = v59 + v112;
    v62 = *(v114 + 72);
    v108 = v59;
    v109 = (v114 + 56);

    v63 = MEMORY[0x277D84F90];
    v114 = v62;
    while (1)
    {
      sub_24A3992EC(v61, v28, type metadata accessor for FMFLocation);
      v66 = v28[1];
      v67 = v42;
      if (!v66)
      {
        goto LABEL_44;
      }

      if (!v42[2])
      {
        goto LABEL_44;
      }

      v68 = sub_24A39B2C8(*v28, v66);
      if ((v69 & 1) == 0)
      {
        goto LABEL_44;
      }

      v70 = v104;
      sub_24A3992EC(v67[7] + v68 * v62, v104, type metadata accessor for FMFLocation);
      v71 = v70;
      v72 = v106;
      sub_24A39983C(v71, v106, type metadata accessor for FMFLocation);
      v73 = v72;
      v74 = *(v72 + 8);
      if (!v74)
      {
        sub_24A39A7B8(v73, type metadata accessor for FMFLocation);
LABEL_44:
        sub_24A3992EC(v28, v11, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_24A3B5C2C(0, v63[2] + 1, 1, v63);
        }

        v83 = v63[2];
        v82 = v63[3];
        if (v83 >= v82 >> 1)
        {
          v63 = sub_24A3B5C2C(v82 > 1, v83 + 1, 1, v63);
        }

        sub_24A39A7B8(v28, type metadata accessor for FMFLocation);
        v63[2] = v83 + 1;
        v84 = v63 + v112 + v83 * v114;
        v62 = v114;
        sub_24A39983C(v11, v84, type metadata accessor for FMFLocation);
        goto LABEL_30;
      }

      v111 = *v73;
      if (!*(v73 + 33) || *(v73 + 16) != 1)
      {
        goto LABEL_50;
      }

      v75 = v73;
      memcpy(v117, (v73 + *(v103 + 44)), 0x161uLL);
      if (sub_24A3B9C24(v117) != 1)
      {
        break;
      }

      sub_24A3992EC(v75, v98, type metadata accessor for FMFLocation);
      v76 = v96;
      sub_24A3992EC(v28, v96, type metadata accessor for FMFLocation);
      sub_24A3BAFB0(v116);
      memcpy(v115, v116, sizeof(v115));
      v77 = v97;
      FMFLocation.init(from:updatedLocation:address:)(v98, v76, v115, v97);
      sub_24A3992EC(v77, v99, type metadata accessor for FMFLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_24A3B5C2C(0, v63[2] + 1, 1, v63);
      }

      v79 = v63[2];
      v78 = v63[3];
      if (v79 >= v78 >> 1)
      {
        v63 = sub_24A3B5C2C(v78 > 1, v79 + 1, 1, v63);
      }

      sub_24A39A7B8(v97, type metadata accessor for FMFLocation);
      v63[2] = v79 + 1;
      v80 = v63 + v112 + v79 * v114;
      v81 = v99;
LABEL_55:
      sub_24A39983C(v81, v80, type metadata accessor for FMFLocation);
      v87 = v74;
      v88 = v67;
      v89 = sub_24A39B2C8(v111, v87);
      v11 = v110;
      if (v90)
      {
        v91 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117[0] = v67;
        v65 = v101;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24A4A919C();
          v65 = v101;
          v88 = v117[0];
        }

        v93 = *(*(v88 + 48) + 16 * v91 + 8);

        sub_24A39983C(*(v88 + 56) + v91 * v114, v65, type metadata accessor for FMFLocation);
        v67 = v88;
        sub_24A4A7438(v91, v88);
        v64 = 0;
      }

      else
      {
        v64 = 1;
        v65 = v101;
      }

      (*v109)(v65, v64, 1, v103);
      sub_24A37EF2C(v65, &qword_27EF3F480, &unk_24A4B8C20);
      v28 = v113;
      sub_24A39A7B8(v113, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v106, type metadata accessor for FMFLocation);
      v62 = v114;
LABEL_30:
      v61 += v62;
      --v60;
      v42 = v67;
      if (!v60)
      {

        v118 = v63;
        goto LABEL_61;
      }
    }

    v73 = v75;
LABEL_50:
    sub_24A3992EC(v73, v105, type metadata accessor for FMFLocation);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_24A3B5C2C(0, v63[2] + 1, 1, v63);
    }

    v86 = v63[2];
    v85 = v63[3];
    if (v86 >= v85 >> 1)
    {
      v63 = sub_24A3B5C2C(v85 > 1, v86 + 1, 1, v63);
    }

    v63[2] = v86 + 1;
    v80 = v63 + v112 + v86 * v114;
    v81 = v105;
    goto LABEL_55;
  }

  v41 = 0;
  v111 = v39 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
  v42 = MEMORY[0x277D84F98];
  v107 = v39;
  v108 = v33;
  v109 = v31;
  while (v41 < v39[2])
  {
    v43 = *(v114 + 72);
    sub_24A3992EC(v111 + v43 * v41, v33, type metadata accessor for FMFLocation);
    v44 = v33[1];
    if (v44)
    {
      v45 = *v33;
      sub_24A3992EC(v33, v31, type metadata accessor for FMFLocation);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v42;
      v48 = sub_24A39B2C8(v45, v44);
      v49 = v42[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_63;
      }

      v52 = v47;
      if (v42[3] >= v51)
      {
        if ((v46 & 1) == 0)
        {
          sub_24A4A919C();
        }
      }

      else
      {
        sub_24A3B740C(v51, v46);
        v53 = sub_24A39B2C8(v45, v44);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_65;
        }

        v48 = v53;
      }

      v11 = v110;
      v42 = v117[0];
      if (v52)
      {
        v31 = v109;
        sub_24A39AF20(v109, *(v117[0] + 56) + v48 * v43, type metadata accessor for FMFLocation);
      }

      else
      {
        *(v117[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
        v55 = (v42[6] + 16 * v48);
        *v55 = v45;
        v55[1] = v44;
        v31 = v109;
        sub_24A39983C(v109, v42[7] + v48 * v43, type metadata accessor for FMFLocation);
        v56 = v42[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_64;
        }

        v42[2] = v58;
      }

      v33 = v108;
      sub_24A39A7B8(v108, type metadata accessor for FMFLocation);
      v28 = v113;
      v39 = v107;
    }

    else
    {
      sub_24A39A7B8(v33, type metadata accessor for FMFLocation);
      v28 = v113;
    }

    if (v112 == ++v41)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

__n128 sub_24A3B6794(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A3B67C4(uint64_t a1)
{
  v2 = sub_24A382600();

  return MEMORY[0x2821FE718](a1, v2);
}

void *sub_24A3B6800(uint64_t a1, void *a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v97 - v6;
  v8 = type metadata accessor for FMFLocation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v122 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v97 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v97 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v97 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v97 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v101 = &v97 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v112 = &v97 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v116 = &v97 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v97 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v97 - v32;
  v34 = sub_24A4AAAD0();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v39 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a1;
  if (a1)
  {
    v117 = v9;
    v100 = v22;
    v40 = v39;
    v41 = v36;
    v42 = v37;
    sub_24A4AAAC0();
    sub_24A4AAA30();
    v44 = v43;
    v45 = *(v42 + 8);
    v109 = v40;
    v110 = v42 + 8;
    v111 = v41;
    v108 = v45;
    v45(v40, v41);
    v46 = a2[2];
    if (v46)
    {
      v99 = v19;
      v47 = 0;
      v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v48 = a2 + v119;
      v118 = (v117 + 48);
      a2 = MEMORY[0x277D84F90];
      v49 = *(v117 + 72);
      v121 = v8;
      v105 = v33;
      v106 = v7;
      v104 = v31;
      v117 = v49;
      while (1)
      {
        sub_24A3992EC(v48, v33, type metadata accessor for FMFLocation);
        v54 = sub_24A3992EC(v33, v31, type metadata accessor for FMFLocation);
        MEMORY[0x28223BE20](v54);
        *(&v97 - 2) = v31;
        sub_24A3BC81C(sub_24A440FC0, v120, v7);
        if ((*v118)(v7, 1, v8) == 1)
        {
          sub_24A37EF2C(v7, &qword_27EF3F480, &unk_24A4B8C20);
          goto LABEL_15;
        }

        v55 = v116;
        sub_24A39983C(v7, v116, type metadata accessor for FMFLocation);
        memcpy(v126, (v55 + *(v8 + 44)), 0x161uLL);
        if (sub_24A3B9C24(v126) == 1)
        {
          v56 = v55;
          goto LABEL_14;
        }

        v57 = v126[38];
        memcpy(v125, &v31[*(v8 + 44)], 0x161uLL);
        if (sub_24A3B9C24(v125) == 1)
        {
          v56 = v116;
LABEL_14:
          sub_24A39A7B8(v56, type metadata accessor for FMFLocation);
LABEL_15:
          sub_24A3992EC(v31, v122, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
          }

          v59 = a2[2];
          v58 = a2[3];
          if (v59 >= v58 >> 1)
          {
            a2 = sub_24A3B5C2C(v58 > 1, v59 + 1, 1, a2);
          }

          sub_24A39A7B8(v33, type metadata accessor for FMFLocation);
          a2[2] = v59 + 1;
          v51 = v117;
          sub_24A39983C(v122, a2 + v119 + v59 * v117, type metadata accessor for FMFLocation);
          goto LABEL_7;
        }

        v113 = v47;
        v60 = v125[38];
        v61 = v57;
        v62 = v60;
        v114 = v61;
        v63 = [v61 timestamp];
        v64 = v109;
        sub_24A4AAAA0();

        sub_24A4AAA30();
        v66 = v65;
        v67 = v111;
        v68 = v108;
        v108(v64, v111);
        v115 = v62;
        v69 = [v62 timestamp];
        sub_24A4AAAA0();

        sub_24A4AAA30();
        v71 = v70;
        v68(v64, v67);
        if (v71 - v66 >= 0.0)
        {
          v31 = v104;
          v75 = v114;
          if (v71 - v66 < 5.0 && ([v115 distanceFromLocation_], v76 < 10.0) && *(v116 + 33) == 2 && v31[33] == 1)
          {
            sub_24A3992EC(v116, v101, type metadata accessor for FMFLocation);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v33 = v105;
            v7 = v106;
            v47 = v113;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
            }

            v79 = a2[2];
            v78 = a2[3];
            v102 = v79 + 1;
            if (v79 >= v78 >> 1)
            {
              a2 = sub_24A3B5C2C(v78 > 1, v79 + 1, 1, a2);
            }

            sub_24A39A7B8(v33, type metadata accessor for FMFLocation);
            v52 = v101;
            a2[2] = v102;
            v50 = a2 + v119 + v79 * v117;
            v51 = v117;
          }

          else
          {
            v80 = v121;
            v33 = v105;
            v7 = v106;
            v47 = v113;
            if (v71 + 300.0 < v44 && v31[33] == 2)
            {
              v98 = type metadata accessor for FMFLocation;
              v81 = v99;
              sub_24A3992EC(v31, v99, type metadata accessor for FMFLocation);
              v102 = v80[8];
              v82 = sub_24A4AAB20();
              v83 = v100;
              (*(*(v82 - 8) + 56))(&v100[v102], 1, 1, v82);
              v84 = *(v81 + 8);
              *v83 = *v81;
              *(v83 + 8) = v84;
              *(v83 + 16) = *(v81 + 16);
              v85 = *(v81 + 32);
              *(v83 + 24) = *(v81 + 24);
              *(v83 + 32) = v85;
              *(v83 + 33) = 1;
              v97 = v121[8];

              sub_24A3EE6D0(v81 + v97, v83 + v102);
              v86 = v121;
              *(v83 + v121[9]) = *(v81 + v121[9]);
              *(v83 + v86[10]) = *(v81 + v86[10]);
              memcpy(v124, (v81 + v86[11]), 0x161uLL);
              sub_24A37B740(v124, &v123, &qword_27EF3F840, &qword_24A4B6598);
              v87 = v81;
              v88 = v98;
              sub_24A39A7B8(v87, v98);
              memcpy((v83 + v121[11]), v124, 0x161uLL);
              sub_24A3992EC(v83, v103, v88);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
              }

              v90 = a2[2];
              v89 = a2[3];
              v91 = v90 + 1;
              v102 = v90;
              v92 = v114;
              if (v90 >= v89 >> 1)
              {
                a2 = sub_24A3B5C2C(v89 > 1, v90 + 1, 1, a2);
              }

              sub_24A39A7B8(v100, type metadata accessor for FMFLocation);
              sub_24A39A7B8(v33, type metadata accessor for FMFLocation);
              a2[2] = v91;
              v93 = v117;
              sub_24A39983C(v103, a2 + v119 + v102 * v117, type metadata accessor for FMFLocation);
              v53 = v116;
              v51 = v93;
              goto LABEL_6;
            }

            sub_24A3992EC(v31, v107, type metadata accessor for FMFLocation);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
            }

            v95 = a2[2];
            v94 = a2[3];
            v102 = v95 + 1;
            if (v95 >= v94 >> 1)
            {
              a2 = sub_24A3B5C2C(v94 > 1, v95 + 1, 1, a2);
            }

            sub_24A39A7B8(v33, type metadata accessor for FMFLocation);
            a2[2] = v102;
            v50 = a2 + v119 + v95 * v117;
            v51 = v117;
            v52 = v107;
          }
        }

        else
        {
          sub_24A3992EC(v116, v112, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
          }

          v33 = v105;
          v7 = v106;
          v31 = v104;
          v47 = v113;
          v72 = v114;
          v74 = a2[2];
          v73 = a2[3];
          v114 = (v74 + 1);
          if (v74 >= v73 >> 1)
          {
            a2 = sub_24A3B5C2C(v73 > 1, v74 + 1, 1, a2);
          }

          sub_24A39A7B8(v33, type metadata accessor for FMFLocation);
          a2[2] = v114;
          v50 = a2 + v119 + v74 * v117;
          v51 = v117;
          v52 = v112;
        }

        sub_24A39983C(v52, v50, type metadata accessor for FMFLocation);
        v53 = v116;
LABEL_6:
        sub_24A39A7B8(v53, type metadata accessor for FMFLocation);
LABEL_7:
        v8 = v121;
        sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
        v48 += v51;
        if (!--v46)
        {
          return a2;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return a2;
}

uint64_t sub_24A3B7448(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF40DC8, &unk_24A4BCF60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v59 = a1;
  sub_24A37EACC(a1, v14);
  sub_24A3B98AC();
  sub_24A4AC3C0();
  if (v2)
  {
    goto LABEL_71;
  }

  v16 = v10;
  LOBYTE(v60[0]) = 3;
  result = sub_24A4AC120();
  v19 = v9;
  v20 = v13;
  v21 = HIBYTE(v18) & 0xF;
  v22 = result & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v23 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v41 = v19;

    goto LABEL_67;
  }

  v24 = v8;
  if ((v18 & 0x1000000000000000) != 0)
  {
    v41 = v19;
    v61 = 0;
    v26 = sub_24A49D860(result, v18, 10);
    v48 = v47;

    if (v48)
    {
      goto LABEL_67;
    }

    goto LABEL_70;
  }

  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A4ABF90();
      v22 = v57;
    }

    v25 = *result;
    if (v25 == 43)
    {
      if (v22 >= 1)
      {
        if (--v22)
        {
          if (result)
          {
            v26 = 0;
            v33 = (result + 1);
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_65;
              }

              v35 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_65;
              }

              ++v33;
              if (!--v22)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_65;
      }

      goto LABEL_76;
    }

    if (v25 != 45)
    {
      if (v22)
      {
        if (result)
        {
          v26 = 0;
          while (1)
          {
            v39 = *result - 48;
            if (v39 > 9)
            {
              goto LABEL_65;
            }

            v40 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              goto LABEL_65;
            }

            v26 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_65:
      v41 = v19;
      v26 = 0;
      LOBYTE(v22) = 1;
      goto LABEL_66;
    }

    if (v22 >= 1)
    {
      if (--v22)
      {
        if (result)
        {
          v26 = 0;
          v27 = (result + 1);
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_65;
            }

            v29 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              goto LABEL_65;
            }

            v26 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              goto LABEL_65;
            }

            ++v27;
            if (!--v22)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_56:
        v41 = v19;
        v26 = 0;
LABEL_57:
        LOBYTE(v22) = 0;
LABEL_66:
        v61 = v22;
        v45 = v22;

        if (v45)
        {
LABEL_67:
          sub_24A45AB40();
          swift_allocError();
          *v46 = 0;
          swift_willThrow();
          (*(v16 + 8))(v20, v41);
LABEL_71:
          v49 = v59;
          type metadata accessor for FMFBaseResponse();
          v50 = *(*v3 + 48);
          v51 = *(*v3 + 52);
          swift_deallocPartialClassInstance();
          v56 = v49;
          goto LABEL_72;
        }

LABEL_70:
        *(v3 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_fetchStatus) = v26;
        LOBYTE(v60[0]) = 1;
        v3[2] = sub_24A4AC0D0();
        LOBYTE(v60[0]) = 2;
        v3[3] = sub_24A4AC0D0();
        v52 = type metadata accessor for FMFCommandResponseFragment();
        LOBYTE(v60[0]) = 4;
        sub_24A3B9B40(&qword_27EF40DD8, type metadata accessor for FMFCommandResponseFragment);
        v58 = v41;
        sub_24A4AC160();
        (*(*(v52 - 8) + 56))(v24, 0, 1, v52);
        sub_24A3B9C3C(v24, v3 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse);
        type metadata accessor for FMFAlert();
        v61 = 0;
        sub_24A3B9B40(&qword_27EF40DE0, type metadata accessor for FMFAlert);
        v53 = v58;
        sub_24A4AC160();
        v54 = v60[0];
        v55 = v59;
        (*(v16 + 8))(v20, v53);
        *(v3 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert) = v54;
        v56 = v55;
LABEL_72:
        sub_24A37EEE0(v56);
        return v3;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v60[0] = result;
  v60[1] = v18 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v21)
      {
        v26 = 0;
        v42 = v60;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v26 = v44 + v43;
          if (__OFADD__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v21)
          {
            v41 = v19;
            goto LABEL_57;
          }
        }
      }

      goto LABEL_65;
    }

    if (v21)
    {
      v22 = v21 - 1;
      if (v21 != 1)
      {
        v26 = 0;
        v30 = v60 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v26 = v32 - v31;
          if (__OFSUB__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v22)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_75;
  }

  if (v21)
  {
    v22 = v21 - 1;
    if (v21 != 1)
    {
      v26 = 0;
      v36 = v60 + 1;
      while (1)
      {
        v37 = *v36 - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v26;
        if ((v26 * 10) >> 64 != (10 * v26) >> 63)
        {
          break;
        }

        v26 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        ++v36;
        if (!--v22)
        {
LABEL_55:
          v41 = v19;
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_24A3B7B8C(void *a1)
{
  v69 = type metadata accessor for FMFLocation();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v66 = &v54 - v13;
  result = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = a1[2];
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_24A3B5C2C(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_24A3B84D4(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_24A3A13C0();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v57 = v71;
  v58 = v70;
  v30 = v73;
  v55 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v64 = (v31 - 1) & v31;
    sub_24A3B4B10(*(v58 + 56) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16);
    v36 = v69;
    v60 = *(v1 + 56);
    v60(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_24A37B740(v16, v66, &qword_27EF3F480, &unk_24A4B8C20);
      v38 = *(v1 + 48);
      v1 += 48;
      v63 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v56 = (v55 + 64) >> 6;
      v59 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_24A37EF2C(v37, &qword_27EF3F480, &unk_24A4B8C20);
        v42 = v18[3];
        v43 = v42 >> 1;
        v65 = v39;
        if ((v42 >> 1) < v39 + 1)
        {
          v18 = sub_24A3B5C2C(v42 > 1, v39 + 1, 1, v18);
          v43 = v18[3] >> 1;
        }

        v44 = v68;
        sub_24A37B740(v16, v68, &qword_27EF3F480, &unk_24A4B8C20);
        if (v63(v44, 1, v69) != 1)
        {
          break;
        }

        v45 = v35;
        v46 = v68;
LABEL_37:
        sub_24A37EF2C(v46, &qword_27EF3F480, &unk_24A4B8C20);
        v40 = v65;
        v35 = v45;
LABEL_32:
        v18[2] = v40;
        v37 = v66;
        sub_24A37B740(v16, v66, &qword_27EF3F480, &unk_24A4B8C20);
        v41 = v63(v37, 1, v69);
        v39 = v65;
        if (v41 == 1)
        {
          goto LABEL_29;
        }
      }

      v61 = v18 + v20;
      v47 = v65;
      if (v65 <= v43)
      {
        v47 = v43;
      }

      v62 = v47;
      v46 = v68;
      while (1)
      {
        v50 = v67;
        sub_24A3DCC88(v46, v67, type metadata accessor for FMFLocation);
        if (v65 == v62)
        {
          sub_24A3DCAEC(v50, type metadata accessor for FMFLocation);
          v40 = v62;
          v65 = v62;
          goto LABEL_32;
        }

        v4 = v65;
        sub_24A37EF2C(v16, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A3DCC88(v50, &v61[v4 * v19], type metadata accessor for FMFLocation);
        v51 = v64;
        if (!v64)
        {
          break;
        }

        v52 = v35;
LABEL_53:
        v64 = (v51 - 1) & v51;
        sub_24A3B4B10(*(v58 + 56) + (__clz(__rbit64(v51)) | (v52 << 6)) * v19, v16);
        v48 = 0;
        v45 = v52;
LABEL_42:
        v65 = v4 + 1;
        v49 = v69;
        v60(v16, v48, 1, v69);
        v46 = v68;
        sub_24A37B740(v16, v68, &qword_27EF3F480, &unk_24A4B8C20);
        v35 = v45;
        if (v63(v46, 1, v49) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v56 <= (v35 + 1))
      {
        v53 = v35 + 1;
      }

      else
      {
        v53 = v56;
      }

      v45 = v53 - 1;
      while (1)
      {
        v52 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          v64 = 0;
          v48 = 1;
          goto LABEL_42;
        }

        v51 = *(v57 + 8 * v52);
        ++v35;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v36 = v69;
      v60 = *(v1 + 56);
      v60(v16, 1, 1, v69);
      v64 = 0;
    }

LABEL_29:
    sub_24A37EF2C(v16, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A3A13C0();
    result = sub_24A37EF2C(v37, &qword_27EF3F480, &unk_24A4B8C20);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v55 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v55 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_55;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3B8238(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v41 = a6;
  v42 = a7;
  v11 = a5(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a4 + 8;
  v19 = -1 << *(a4 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & a4[8];
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v18;
    a1[2] = ~v19;
    a1[3] = v22;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = a1;
    v38 = a3;
    result = 0;
    v22 = 0;
    v36 = v19;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      a1 = a4;
      v28 = a4[7];
      v29 = v39;
      v30 = *(v40 + 72);
      sub_24A39921C(v28 + v30 * (v27 | (v22 << 6)), v39, v41);
      v31 = v29;
      v32 = v42;
      sub_24A39CAB8(v31, v17, v42);
      sub_24A39CAB8(v17, a2, v32);
      if (v24 == v38)
      {
        a4 = a1;
        a1 = v37;
        a3 = v38;
        goto LABEL_23;
      }

      a2 += v30;
      result = v24;
      v33 = __OFADD__(v24++, 1);
      a4 = a1;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = v18[v26];
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v34 = v22 + 1;
    }

    else
    {
      v34 = v23;
    }

    v22 = v34 - 1;
    a3 = result;
    a1 = v37;
LABEL_23:
    v19 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_24A3B8480()
{
  result = qword_27EF40DF8;
  if (!qword_27EF40DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DF8);
  }

  return result;
}

uint64_t sub_24A3B8504@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24A4AB690();
  v118 = *(v6 - 8);
  v119 = v6;
  v7 = *(v118 + 64);
  MEMORY[0x28223BE20](v6);
  v116 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24A4AB6E0();
  v115 = *(v117 - 8);
  v9 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v124 = &v110 - v13;
  v125 = type metadata accessor for FMFLocation();
  v133 = *(v125 - 8);
  v14 = *(v133 + 64);
  v15 = MEMORY[0x28223BE20](v125);
  v130 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v127 = &v110 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v110 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v110 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v121 = (&v110 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v120 = &v110 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v126 = &v110 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v110 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v135 = (&v110 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v134 = &v110 - v35;
  MEMORY[0x28223BE20](v34);
  v129 = (&v110 - v36);
  v37 = sub_24A390DA0();
  sub_24A39CB88();
  v38 = sub_24A3B936C(a2);

  if (v38)
  {

    *a3 = 0;
    return result;
  }

  v111 = a3;
  sub_24A3B9900(a2, v37, 0x69737365636F7270, 0xEA0000000000676ELL);
  v40 = sub_24A39CB88();
  v41 = sub_24A3B6800(v40, a2);

  sub_24A3B9900(v41, v37, 0x65737365636F7270, 0xE900000000000064);

  v42 = a1[72];
  a1[72] = 0;

  v43 = a1[78];
  a1[78] = 0;

  v44 = v41[2];
  v112 = a1;
  v123 = v31;
  v132 = v44;
  if (v44)
  {
    v45 = 0;
    v131 = (v41 + ((*(v133 + 80) + 32) & ~*(v133 + 80)));
    v46 = MEMORY[0x277D84F98];
    v47 = v129;
    v48 = v130;
    v128 = v41;
    do
    {
      if (v45 >= v41[2])
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        result = sub_24A4AC2B0();
        __break(1u);
        return result;
      }

      v49 = *(v133 + 72);
      sub_24A3992EC(v131 + v49 * v45, v47, type metadata accessor for FMFLocation);
      v50 = v47[1];
      if (v50)
      {
        v51 = *v47;
        sub_24A3992EC(v47, v134, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138[0] = v46;
        v54 = sub_24A39B2C8(v51, v50);
        v55 = v46[2];
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_60;
        }

        v58 = v53;
        if (v46[3] >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A4A919C();
          }
        }

        else
        {
          sub_24A3B740C(v57, isUniquelyReferenced_nonNull_native);
          v59 = sub_24A39B2C8(v51, v50);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_62;
          }

          v54 = v59;
        }

        v48 = v130;
        v46 = v138[0];
        if (v58)
        {
          sub_24A39AF20(v134, *(v138[0] + 56) + v54 * v49, type metadata accessor for FMFLocation);
        }

        else
        {
          *(v138[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
          v61 = (v46[6] + 16 * v54);
          *v61 = v51;
          v61[1] = v50;
          sub_24A39983C(v134, v46[7] + v54 * v49, type metadata accessor for FMFLocation);
          v62 = v46[2];
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
            goto LABEL_61;
          }

          v46[2] = v64;
        }

        v47 = v129;
        sub_24A39A7B8(v129, type metadata accessor for FMFLocation);
        v41 = v128;
      }

      else
      {
        sub_24A39A7B8(v47, type metadata accessor for FMFLocation);
      }

      ++v45;
    }

    while (v132 != v45);

    a1 = v112;
    v31 = v123;
  }

  else
  {

    v46 = MEMORY[0x277D84F98];
    v48 = v130;
  }

  v65 = MEMORY[0x277D84F90];
  v139 = MEMORY[0x277D84F90];
  v66 = a1 + 77;
  swift_beginAccess();
  v67 = a1[77];
  v68 = *(v67 + 16);
  if (!v68)
  {
    goto LABEL_55;
  }

  v69 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v131 = a1 + 77;
  v132 = v69;
  v70 = v67 + v69;
  v71 = *(v133 + 72);
  v133 += 56;
  v134 = v71;
  v129 = v67;

  v72 = MEMORY[0x277D84F90];
  do
  {
    v76 = v135;
    sub_24A3992EC(v70, v135, type metadata accessor for FMFLocation);
    v77 = v76[1];
    v78 = v46;
    if (v77)
    {
      if (v46[2])
      {
        v79 = sub_24A39B2C8(*v135, v77);
        if (v80)
        {
          v81 = v126;
          sub_24A3992EC(v78[7] + v79 * v134, v126, type metadata accessor for FMFLocation);
          sub_24A39983C(v81, v31, type metadata accessor for FMFLocation);
          v82 = *(v31 + 1);
          if (v82)
          {
            v83 = *v31;
            if (v31[33] && v31[16] == 1 && (memcpy(v138, &v31[*(v125 + 44)], 0x161uLL), sub_24A3B9C24(v138) == 1))
            {
              v128 = v83;
              sub_24A3992EC(v31, v121, type metadata accessor for FMFLocation);
              v84 = v113;
              sub_24A3992EC(v135, v113, type metadata accessor for FMFLocation);
              sub_24A3BAFB0(v137);
              memcpy(v136, v137, sizeof(v136));
              v85 = v120;
              FMFLocation.init(from:updatedLocation:address:)(v121, v84, v136, v120);
              sub_24A3992EC(v85, v122, type metadata accessor for FMFLocation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_24A3B5C2C(0, v72[2] + 1, 1, v72);
              }

              v87 = v72[2];
              v86 = v72[3];
              v83 = v128;
              if (v87 >= v86 >> 1)
              {
                v72 = sub_24A3B5C2C(v86 > 1, v87 + 1, 1, v72);
              }

              sub_24A39A7B8(v120, type metadata accessor for FMFLocation);
              v72[2] = v87 + 1;
              v88 = v72 + v132 + v87 * v134;
              v89 = v122;
            }

            else
            {
              sub_24A3992EC(v31, v127, type metadata accessor for FMFLocation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_24A3B5C2C(0, v72[2] + 1, 1, v72);
              }

              v91 = v72[2];
              v90 = v72[3];
              if (v91 >= v90 >> 1)
              {
                v72 = sub_24A3B5C2C(v90 > 1, v91 + 1, 1, v72);
              }

              v72[2] = v91 + 1;
              v88 = v72 + v132 + v91 * v134;
              v89 = v127;
            }

            sub_24A39983C(v89, v88, type metadata accessor for FMFLocation);
            v92 = v82;
            v93 = v78;
            v94 = sub_24A39B2C8(v83, v92);
            v48 = v130;
            if (v95)
            {
              v96 = v94;
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v138[0] = v78;
              v74 = v124;
              if (!v97)
              {
                sub_24A4A919C();
                v74 = v124;
                v93 = v138[0];
              }

              v98 = *(*(v93 + 48) + 16 * v96 + 8);

              sub_24A39983C(*(v93 + 56) + v96 * v134, v74, type metadata accessor for FMFLocation);
              v78 = v93;
              sub_24A4A7438(v96, v93);
              v73 = 0;
            }

            else
            {
              v73 = 1;
              v74 = v124;
            }

            (*v133)(v74, v73, 1, v125);
            sub_24A37EF2C(v74, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A39A7B8(v135, type metadata accessor for FMFLocation);
            v31 = v123;
            sub_24A39A7B8(v123, type metadata accessor for FMFLocation);
            v75 = v134;
            goto LABEL_26;
          }

          sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
        }
      }
    }

    sub_24A3992EC(v135, v48, type metadata accessor for FMFLocation);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_24A3B5C2C(0, v72[2] + 1, 1, v72);
    }

    v100 = v72[2];
    v99 = v72[3];
    if (v100 >= v99 >> 1)
    {
      v72 = sub_24A3B5C2C(v99 > 1, v100 + 1, 1, v72);
    }

    sub_24A39A7B8(v135, type metadata accessor for FMFLocation);
    v72[2] = v100 + 1;
    v75 = v134;
    sub_24A39983C(v48, v72 + v132 + v100 * v134, type metadata accessor for FMFLocation);
LABEL_26:
    v70 += v75;
    --v68;
    v46 = v78;
  }

  while (v68);

  v139 = v72;
  a1 = v112;
  v65 = MEMORY[0x277D84F90];
  v66 = v131;
LABEL_55:

  sub_24A3B7B8C(v46);
  v101 = *v66;
  v102 = v139;

  v104 = sub_24A3B936C(v103);

  if (v104)
  {
  }

  else
  {
    v105 = a1[77];
    a1[77] = v102;

    v135 = a1[8];
    v138[4] = sub_24A3BCC0C;
    v138[5] = a1;
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 1107296256;
    v138[2] = sub_24A388564;
    v138[3] = &unk_285D89438;
    v106 = _Block_copy(v138);

    v107 = v114;
    sub_24A4AB6B0();
    *&v137[0] = v65;
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v108 = v116;
    v109 = v119;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v107, v108, v106);
    _Block_release(v106);
    (*(v118 + 8))(v108, v109);
    (*(v115 + 8))(v107, v117);
  }

  *v111 = 1;
  return result;
}