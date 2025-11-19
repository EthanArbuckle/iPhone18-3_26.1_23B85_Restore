id sub_259A766A4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

  return [v0 init];
}

NSObject *sub_259A766DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_259A81CD8();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_259A81CB8();
  v8 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_259A81EB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259A81EA8();
  v26 = a1;
  v15 = a2;
  v16 = sub_259A81E88();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (v18 >> 60 == 15)
  {
    sub_259A81F28();
    v19 = sub_259A81C58();
    v20 = sub_259A81F68();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v30);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_259A7AF28(v26, v15, &v30);
      _os_log_impl(&dword_259A75000, v19, v20, "%s could not convert string %s to UTF-8 data", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v22, -1, -1);
      MEMORY[0x259CAA9D0](v21, -1, -1);
    }

    sub_259A7C6FC();
    swift_allocError();
    *v23 = 10;
    swift_willThrow();
  }

  else
  {
    sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540]);
    sub_259A81CA8();
    sub_259A7C4F4(v16, v18);
    sub_259A7B694(v16, v18);
    sub_259A7C8B4(v16, v18);
    sub_259A81C98();
    (*(v28 + 8))(v7, v4);
    sub_259A7CA0C(&qword_27F9E2220, MEMORY[0x277CC5290]);
    v19 = sub_259A81F08();
    sub_259A7C8B4(v16, v18);
  }

  return v19;
}

uint64_t sub_259A76B00(uint64_t a1, unint64_t a2)
{
  v4 = sub_259A81C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_259A7C6A8(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_259A7B368(v11, 0);
      v15 = sub_259A81C08();
      sub_259A7C6A8(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_259A76CD0()
{
  v2 = v0;
  v67 = sub_259A81C38();
  v64 = *(v67 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_log;
  v7 = sub_259A81C58();
  v8 = sub_259A81F68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v68 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v68);
    _os_log_impl(&dword_259A75000, v7, v8, "%s Sending proposeNonce request...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x259CAA9D0](v10, -1, -1);
    MEMORY[0x259CAA9D0](v9, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v11 lock];
  v12 = *(v2 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient);

  v13 = sub_259A7CAB4();
  if (v1)
  {

    [v11 unlock];
    v15 = v1;
    v16 = sub_259A81C58();
    v17 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v68);
      *(v18 + 12) = 2112;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_259A75000, v16, v17, "%s proposeNonce request failed: %@", v18, 0x16u);
      sub_259A7C1B0(v19);
      MEMORY[0x259CAA9D0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x259CAA9D0](v20, -1, -1);
      MEMORY[0x259CAA9D0](v18, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v23 = v14;
    v60 = v13;

    [v11 unlock];
    v24 = sub_259A81F28();
    v25 = sub_259A7C418(v24);
    v27 = v26;

    v65 = v27;
    v59[0] = v23;
    if (v27 >> 62 == 2)
    {
      v28 = *(v25 + 16);
    }

    v62 = v6;
    v63 = v2;
    v59[1] = 0;
    sub_259A7C4F4(v25, v65);
    sub_259A81C48();
    sub_259A7CA0C(&qword_27F9E2150, MEMORY[0x277CC92E0]);
    sub_259A81F78();
    v61 = v25;
    v29 = MEMORY[0x277D84F90];
    if ((BYTE1(v68) & 1) == 0)
    {
      v66 = xmmword_259A82750;
      v49 = MEMORY[0x277D84B78];
      v50 = MEMORY[0x277D84BC0];
      do
      {
        v51 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v52 = swift_allocObject();
        *(v52 + 16) = v66;
        *(v52 + 56) = v49;
        *(v52 + 64) = v50;
        *(v52 + 32) = v51;
        v53 = sub_259A81E98();
        v55 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_259A7AD10(0, *(v29 + 2) + 1, 1, v29);
        }

        v57 = *(v29 + 2);
        v56 = *(v29 + 3);
        if (v57 >= v56 >> 1)
        {
          v29 = sub_259A7AD10((v56 > 1), v57 + 1, 1, v29);
        }

        *(v29 + 2) = v57 + 1;
        v58 = &v29[16 * v57];
        *(v58 + 4) = v53;
        *(v58 + 5) = v55;
        sub_259A81F78();
      }

      while (BYTE1(v68) != 1);
    }

    (*(v64 + 8))(v5, v67);
    v68 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
    v30 = sub_259A81E68();
    v32 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2168, &qword_259A82780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_259A82760;
    *(inited + 32) = 0x65636E6F4E776172;
    *(inited + 40) = 0xE800000000000000;
    v34 = sub_259A7C418(v60);
    v36 = v35;

    *(inited + 48) = v34;
    *(inited + 56) = v36;
    *(inited + 64) = 0x6F4E747365676964;
    *(inited + 72) = 0xEB0000000065636ELL;
    v37 = v61;
    v38 = v65;
    *(inited + 80) = v61;
    *(inited + 88) = v38;
    sub_259A7C4F4(v37, v38);
    v39 = sub_259A7C590(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2170, &qword_259A82788);
    swift_arrayDestroy();
    v40 = sub_259A81C58();
    v41 = sub_259A81F68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v68 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v68);
      _os_log_impl(&dword_259A75000, v40, v41, "%s proposeNonce request succeeded.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x259CAA9D0](v43, -1, -1);
      MEMORY[0x259CAA9D0](v42, -1, -1);
    }

    v2 = sub_259A77504(v39);

    sub_259A81F28();
    v44 = sub_259A81C58();
    v45 = sub_259A81F68();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_259A7AF28(v30, v32, &v68);
      _os_log_impl(&dword_259A75000, v44, v45, "proposeNonce returning: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x259CAA9D0](v47, -1, -1);
      MEMORY[0x259CAA9D0](v46, -1, -1);
    }

    sub_259A7C6A8(v61, v65);
  }

  return v2;
}

uint64_t sub_259A77504(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2230, &qword_259A82830);
    v2 = sub_259A81FF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  result = sub_259A81F28();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;
    sub_259A81F28();
    sub_259A7C4F4(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_259A7C8C8(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_259A7C8C8(v34, v35);
    v19 = *(v2 + 40);
    result = sub_259A81F88();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_259A7C8C8(v35, (*(v2 + 56) + 32 * v10));
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

void sub_259A7789C(int a1, NSObject *a2, unint64_t a3, int a4, uint64_t a5, NSObject *a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, _BYTE *a11)
{
  v13 = v11;
  v182 = a7;
  v183 = a8;
  v180 = a5;
  v181 = a6;
  v186 = a2;
  v17 = sub_259A81CD8();
  v184 = *(v17 - 8);
  v18 = *(v184 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_259A81CB8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 - 1) > 2)
  {
    v72 = sub_259A81C58();
    v73 = sub_259A81F68();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v191 = v75;
      *v74 = 136315394;
      *(v74 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
      *(v74 + 12) = 2080;
      LODWORD(v190) = a4;
      type metadata accessor for SecureMobileAssetManifestStateEnum(0);
      v76 = sub_259A81EC8();
      v78 = sub_259A7AF28(v76, v77, &v191);

      *(v74 + 14) = v78;
      _os_log_impl(&dword_259A75000, v72, v73, "%s checkState=%s is invalid", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v75, -1, -1);
      MEMORY[0x259CAA9D0](v74, -1, -1);
    }

    sub_259A7C6FC();
    swift_allocError();
    *v79 = 10;
    goto LABEL_61;
  }

  v185 = a3;
  v177 = a4 - 1;
  v178 = a1;
  v188 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_log;
  *&v189 = v23;
  v26 = sub_259A81C58();
  v27 = sub_259A81F68();
  v28 = os_log_type_enabled(v26, v27);
  v187 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v191 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
    _os_log_impl(&dword_259A75000, v26, v27, "%s Sending checkManifestForSelector request...", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x259CAA9D0](v30, -1, -1);
    v31 = v29;
    v13 = v187;
    MEMORY[0x259CAA9D0](v31, -1, -1);
  }

  v32 = *(v13 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v32 lock];
  v33 = sub_259A766DC(v186, v185);
  v34 = v12;
  if (v12)
  {
LABEL_58:
    [v32 unlock];
    v159 = v34;
    v160 = sub_259A81C58();
    v161 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v34);
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v191 = v164;
      *v162 = 136315394;
      *(v162 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
      *(v162 + 12) = 2112;
      v165 = v34;
      v166 = _swift_stdlib_bridgeErrorToNSError();
      *(v162 + 14) = v166;
      *v163 = v166;
      _os_log_impl(&dword_259A75000, v160, v161, "%s checkManifestForSelector request failed: %@", v162, 0x16u);
      sub_259A7C1B0(v163);
      MEMORY[0x259CAA9D0](v163, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v164);
      MEMORY[0x259CAA9D0](v164, -1, -1);
      MEMORY[0x259CAA9D0](v162, -1, -1);
    }

LABEL_61:
    swift_willThrow();
    return;
  }

  v176 = 0;
  v173 = a10;
  v174 = v32;
  v172 = a9;
  v179 = v33;
  sub_259A81F28();
  v36 = v180;
  v35 = v181;
  sub_259A7C4F4(v180, v181);
  sub_259A76B00(v36, v35);
  sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540]);
  sub_259A81CA8();
  v37 = *(sub_259A81F28() + 16);
  sub_259A81C88();

  sub_259A81C98();
  v181 = *(v184 + 8);
  (v181)(v20, v17);
  v180 = sub_259A7CA0C(&qword_27F9E2190, MEMORY[0x277CC5290]);
  v38 = sub_259A81CC8();
  v40 = v39;
  v175 = *(v189 + 8);
  *&v189 = v189 + 8;
  v175(v25, v21);
  v184 = sub_259A7B954(v38, v40);

  v42 = v182;
  v41 = v183;
  sub_259A7C4F4(v182, v183);
  sub_259A76B00(v42, v41);
  sub_259A81CA8();
  v43 = *(sub_259A81F28() + 16);
  sub_259A81C88();

  sub_259A81C98();
  (v181)(v20, v17);
  v44 = sub_259A81CC8();
  v46 = v45;
  v175(v25, v21);
  v183 = sub_259A7B954(v44, v46);

  v48 = v172;
  v47 = v173;
  sub_259A7C4F4(v172, v173);
  sub_259A76B00(v48, v47);
  sub_259A81CA8();
  v49 = *(sub_259A81F28() + 16);
  sub_259A81C88();

  v50 = v179;

  sub_259A81C98();
  (v181)(v20, v17);
  v51 = sub_259A81CC8();
  v53 = v52;
  v175(v25, v21);
  v54 = sub_259A7B954(v51, v53);

  sub_259A81F28();
  sub_259A81F28();
  v55 = v187;
  v56 = sub_259A81C58();
  v57 = sub_259A81F48();

  v58 = os_log_type_enabled(v56, v57);
  v182 = v54;
  if (v58)
  {
    LODWORD(v175) = v57;
    v181 = v56;
    v59 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v191 = v173;
    *v59 = 136315650;
    *(v59 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
    v180 = v59;
    *(v59 + 12) = 2080;
    v60 = *(v50 + 16);
    if (v60)
    {
      v61 = (v50 + 32);
      v62 = MEMORY[0x277D84F90];
      v189 = xmmword_259A82750;
      v63 = MEMORY[0x277D84BC0];
      do
      {
        v64 = *v61++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v65 = swift_allocObject();
        *(v65 + 16) = v189;
        *(v65 + 56) = MEMORY[0x277D84B78];
        *(v65 + 64) = v63;
        *(v65 + 32) = v64;
        v66 = sub_259A81E98();
        v68 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_259A7AD10(0, *(v62 + 2) + 1, 1, v62);
        }

        v70 = *(v62 + 2);
        v69 = *(v62 + 3);
        if (v70 >= v69 >> 1)
        {
          v62 = sub_259A7AD10((v69 > 1), v70 + 1, 1, v62);
        }

        *(v62 + 2) = v70 + 1;
        v71 = &v62[16 * v70];
        *(v71 + 4) = v66;
        *(v71 + 5) = v68;
        --v60;
      }

      while (v60);
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
    }

    v50 = v179;

    v190 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
    v80 = sub_259A81E68();
    v82 = v81;

    v83 = sub_259A7AF28(v80, v82, &v191);

    v84 = v180;
    *(v180 + 14) = v83;
    *(v84 + 22) = 2080;
    *(v84 + 24) = sub_259A7AF28(v186, v185, &v191);
    v85 = v181;
    _os_log_impl(&dword_259A75000, v181, v175, "%s specifierDigest=%s (%s)", v84, 0x20u);
    v86 = v173;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v86, -1, -1);
    MEMORY[0x259CAA9D0](v84, -1, -1);

    v55 = v187;
    v54 = v182;
  }

  else
  {
  }

  v87 = v184;

  v88 = sub_259A81C58();
  v89 = sub_259A81F48();

  v90 = os_log_type_enabled(v88, v89);
  v91 = v176;
  v92 = v183;
  if (v90)
  {
    LODWORD(v181) = v89;
    v186 = v88;
    v93 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v191 = v180;
    *v93 = 136315394;
    *(v93 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
    v185 = v93;
    *(v93 + 12) = 2080;
    v94 = *(v87 + 16);
    if (v94)
    {
      v95 = (v87 + 32);
      v96 = MEMORY[0x277D84F90];
      v189 = xmmword_259A82750;
      v97 = MEMORY[0x277D84BC0];
      do
      {
        v98 = *v95++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v99 = swift_allocObject();
        *(v99 + 16) = v189;
        *(v99 + 56) = MEMORY[0x277D84B78];
        *(v99 + 64) = v97;
        *(v99 + 32) = v98;
        v100 = sub_259A81E98();
        v102 = v101;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_259A7AD10(0, *(v96 + 2) + 1, 1, v96);
        }

        v104 = *(v96 + 2);
        v103 = *(v96 + 3);
        if (v104 >= v103 >> 1)
        {
          v96 = sub_259A7AD10((v103 > 1), v104 + 1, 1, v96);
        }

        *(v96 + 2) = v104 + 1;
        v105 = &v96[16 * v104];
        *(v105 + 4) = v100;
        *(v105 + 5) = v102;
        --v94;
      }

      while (v94);
    }

    else
    {
      v96 = MEMORY[0x277D84F90];
    }

    v190 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
    v106 = sub_259A81E68();
    v108 = v107;

    v109 = sub_259A7AF28(v106, v108, &v191);

    v110 = v185;
    *(v185 + 14) = v109;
    v111 = v186;
    _os_log_impl(&dword_259A75000, v186, v181, "%s manifestHash=%s", v110, 0x16u);
    v112 = v180;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v112, -1, -1);
    MEMORY[0x259CAA9D0](v110, -1, -1);

    v91 = v176;
    v55 = v187;
    v50 = v179;
    v92 = v183;
    v87 = v184;
    v54 = v182;
  }

  else
  {
  }

  v113 = sub_259A81C58();
  v114 = sub_259A81F48();

  if (os_log_type_enabled(v113, v114))
  {
    LODWORD(v181) = v114;
    v186 = v113;
    v115 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v191 = v180;
    *v115 = 136315394;
    *(v115 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
    v185 = v115;
    *(v115 + 12) = 2080;
    v116 = *(v92 + 16);
    if (v116)
    {
      v117 = (v92 + 32);
      v118 = MEMORY[0x277D84F90];
      v189 = xmmword_259A82750;
      v119 = MEMORY[0x277D84BC0];
      do
      {
        v120 = *v117++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v121 = swift_allocObject();
        *(v121 + 16) = v189;
        *(v121 + 56) = MEMORY[0x277D84B78];
        *(v121 + 64) = v119;
        *(v121 + 32) = v120;
        v122 = sub_259A81E98();
        v124 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_259A7AD10(0, *(v118 + 2) + 1, 1, v118);
        }

        v126 = *(v118 + 2);
        v125 = *(v118 + 3);
        if (v126 >= v125 >> 1)
        {
          v118 = sub_259A7AD10((v125 > 1), v126 + 1, 1, v118);
        }

        *(v118 + 2) = v126 + 1;
        v127 = &v118[16 * v126];
        *(v127 + 4) = v122;
        *(v127 + 5) = v124;
        --v116;
      }

      while (v116);
    }

    else
    {
      v118 = MEMORY[0x277D84F90];
    }

    v190 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
    v128 = sub_259A81E68();
    v130 = v129;

    v131 = sub_259A7AF28(v128, v130, &v191);

    v132 = v185;
    *(v185 + 14) = v131;
    v133 = v186;
    _os_log_impl(&dword_259A75000, v186, v181, "%s infoPlistHash=%s", v132, 0x16u);
    v134 = v180;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v134, -1, -1);
    MEMORY[0x259CAA9D0](v132, -1, -1);

    v91 = v176;
    v55 = v187;
    v50 = v179;
    v92 = v183;
    v87 = v184;
    v54 = v182;
  }

  else
  {
  }

  v135 = sub_259A81C58();
  v136 = sub_259A81F48();

  if (os_log_type_enabled(v135, v136))
  {
    LODWORD(v181) = v136;
    v186 = v135;
    v137 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v191 = v180;
    *v137 = 136315394;
    *(v137 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
    v185 = v137;
    *(v137 + 12) = 2080;
    v138 = *(v54 + 16);
    if (v138)
    {
      v139 = (v54 + 32);
      v140 = MEMORY[0x277D84F90];
      v189 = xmmword_259A82750;
      v141 = MEMORY[0x277D84BC0];
      do
      {
        v142 = *v139++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v143 = swift_allocObject();
        *(v143 + 16) = v189;
        *(v143 + 56) = MEMORY[0x277D84B78];
        *(v143 + 64) = v141;
        *(v143 + 32) = v142;
        v144 = sub_259A81E98();
        v146 = v145;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_259A7AD10(0, *(v140 + 2) + 1, 1, v140);
        }

        v148 = *(v140 + 2);
        v147 = *(v140 + 3);
        if (v148 >= v147 >> 1)
        {
          v140 = sub_259A7AD10((v147 > 1), v148 + 1, 1, v140);
        }

        *(v140 + 2) = v148 + 1;
        v149 = &v140[16 * v148];
        *(v149 + 4) = v144;
        *(v149 + 5) = v146;
        --v138;
      }

      while (v138);
    }

    else
    {
      v140 = MEMORY[0x277D84F90];
    }

    v190 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
    v150 = sub_259A81E68();
    v152 = v151;

    v153 = sub_259A7AF28(v150, v152, &v191);

    v154 = v185;
    *(v185 + 14) = v153;
    v155 = v186;
    _os_log_impl(&dword_259A75000, v186, v181, "%s catalogHash=%s", v154, 0x16u);
    v156 = v180;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v156, -1, -1);
    MEMORY[0x259CAA9D0](v154, -1, -1);

    v91 = v176;
    v55 = v187;
    v50 = v179;
    v92 = v183;
    v87 = v184;
    v54 = v182;
  }

  else
  {
  }

  v157 = *(v55 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient);

  v158 = sub_259A7CF10(v178, v50, v177, v87, v92, v54);
  v34 = v91;
  if (v91)
  {

    v32 = v174;
    goto LABEL_58;
  }

  v167 = v158;

  [v174 unlock];
  v168 = sub_259A81C58();
  v169 = sub_259A81F68();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v191 = v171;
    *v170 = 136315138;
    *(v170 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v191);
    _os_log_impl(&dword_259A75000, v168, v169, "%s checkManifestForSelector request succeeded.", v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v171);
    MEMORY[0x259CAA9D0](v171, -1, -1);
    MEMORY[0x259CAA9D0](v170, -1, -1);
  }

  *a11 = v167 & 1;
}

void sub_259A78EC8(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v17 = sub_259A81C58();
  v18 = sub_259A81F68();
  v73 = a7;
  v74 = a8;
  v72 = a6;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = a2;
    v21 = swift_slowAlloc();
    v78 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v78);
    _os_log_impl(&dword_259A75000, v17, v18, "%s Sending stageManifestForSelector request...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v22 = v21;
    a2 = v20;
    MEMORY[0x259CAA9D0](v22, -1, -1);
    MEMORY[0x259CAA9D0](v19, -1, -1);
  }

  v23 = *(v10 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v23 lock];
  v24 = sub_259A766DC(a2, a3);
  if (v77)
  {
    [v23 unlock];
    v50 = v77;
    v51 = sub_259A81C58();
    v52 = sub_259A81F58();
    MEMORY[0x259CAA8E0]();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78 = v55;
      *v53 = 136315394;
      *(v53 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v78);
      *(v53 + 12) = 2112;
      v56 = v77;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v57;
      *v54 = v57;
      _os_log_impl(&dword_259A75000, v51, v52, "%s stageManifestForSelector request failed: %@", v53, 0x16u);
      sub_259A7C1B0(v54);
      MEMORY[0x259CAA9D0](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x259CAA9D0](v55, -1, -1);
      MEMORY[0x259CAA9D0](v53, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v25 = v24;
    sub_259A81F28();
    sub_259A81F28();
    v26 = sub_259A81C58();
    v27 = sub_259A81F48();

    v69 = v27;
    v70 = v23;
    if (os_log_type_enabled(v26, v27))
    {
      log = v26;
      v71 = a4;
      v67 = a5;
      v68 = v10;
      v28 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v78 = v63;
      *v28 = 136315650;
      *(v28 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v78);
      v64 = v28;
      *(v28 + 12) = 2080;
      isa = v25[2].isa;
      v66 = v25;
      if (isa)
      {
        v30 = v25 + 4;
        v31 = MEMORY[0x277D84F90];
        v32 = MEMORY[0x277D84BC0];
        do
        {
          v33 = v30->isa;
          v30 = (v30 + 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_259A82750;
          *(v34 + 56) = MEMORY[0x277D84B78];
          *(v34 + 64) = v32;
          *(v34 + 32) = v33;
          v35 = sub_259A81E98();
          v37 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_259A7AD10(0, *(v31 + 2) + 1, 1, v31);
          }

          v39 = *(v31 + 2);
          v38 = *(v31 + 3);
          if (v39 >= v38 >> 1)
          {
            v31 = sub_259A7AD10((v38 > 1), v39 + 1, 1, v31);
          }

          *(v31 + 2) = v39 + 1;
          v40 = &v31[16 * v39];
          *(v40 + 4) = v35;
          *(v40 + 5) = v37;
          isa = (isa - 1);
        }

        while (isa);
      }

      v41 = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
      sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
      v42 = sub_259A81E68();
      v44 = v43;

      v45 = sub_259A7AF28(v42, v44, &v78);

      *(v64 + 14) = v45;
      *(v64 + 22) = 2080;
      *(v64 + 24) = sub_259A7AF28(a2, a3, &v78);
      _os_log_impl(&dword_259A75000, log, v69, "%s specifierDigest=%s (%s)", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v63, -1, -1);
      MEMORY[0x259CAA9D0](v64, -1, -1);

      a4 = v71;
      a5 = v67;
      v10 = v68;
    }

    else
    {

      v41 = v25;
    }

    sub_259A7C4F4(a4, a5);
    v46 = sub_259A76B00(a4, a5);
    sub_259A7C4F4(v72, v73);
    v47 = sub_259A76B00(v72, v73);
    sub_259A7C4F4(v74, a9);
    v48 = sub_259A76B00(v74, a9);
    v49 = *(v10 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient);

    sub_259A7D4EC(a1, v41, v46, v47, v48);

    [v70 unlock];
    v58 = sub_259A81C58();
    v59 = sub_259A81F68();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v78 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v78);
      _os_log_impl(&dword_259A75000, v58, v59, "%s stageManifestForSelector request succeeded.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x259CAA9D0](v61, -1, -1);
      MEMORY[0x259CAA9D0](v60, -1, -1);
    }
  }
}

void sub_259A797D0(unint64_t a1, char *a2)
{
  v4 = v3;
  v5 = v2;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_259A81FE8())
  {
    v9 = *(a2 + 2);
    v10 = sub_259A81C58();
    v81 = i;
    if (i != v9)
    {
      v15 = sub_259A81F58();
      if (os_log_type_enabled(v10, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v93 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v93);
        _os_log_impl(&dword_259A75000, v10, v15, "%s commitStagedManifestForSelectors: fsTags and specifiers have unequal count", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x259CAA9D0](v17, -1, -1);
        MEMORY[0x259CAA9D0](v16, -1, -1);
      }

      sub_259A81F28();
      sub_259A81F28();
      v18 = sub_259A81C58();
      v19 = sub_259A81F48();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v93 = v21;
        *v20 = 136315650;
        *(v20 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v93);
        *(v20 + 12) = 2080;
        v22 = sub_259A7C764();
        v23 = MEMORY[0x259CAA470](a1, v22);
        v25 = sub_259A7AF28(v23, v24, &v93);

        *(v20 + 14) = v25;
        *(v20 + 22) = 2080;
        v26 = MEMORY[0x259CAA470](a2, MEMORY[0x277D837D0]);
        v28 = sub_259A7AF28(v26, v27, &v93);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_259A75000, v18, v19, "%s commitStagedManifestForSelectors:\nfsTags=%s\nspecifiers=%s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259CAA9D0](v21, -1, -1);
        MEMORY[0x259CAA9D0](v20, -1, -1);
      }

      sub_259A7C6FC();
      swift_allocError();
      *v29 = 21;
LABEL_47:
      swift_willThrow();
      return;
    }

    v11 = sub_259A81F68();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v93 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v93);
      _os_log_impl(&dword_259A75000, v10, v11, "%s Sending commitStagedManifestForSelectors request...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x259CAA9D0](v13, -1, -1);
      MEMORY[0x259CAA9D0](v12, -1, -1);
    }

    v77 = *(v5 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
    [v77 lock];
    v14 = v7 ? sub_259A81FE8() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v5;
    v5 = v81;
    if (!v14)
    {
      break;
    }

    v30 = 0;
    v85 = a2 + 32;
    a2 = MEMORY[0x277D84F90];
    v79 = v14;
    v80 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x259CAA4F0](v30, a1);
      }

      else
      {
        if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v31 = *(a1 + 32 + 8 * v30);
      }

      v32 = v31;
      if (v30 == v5)
      {
        break;
      }

      v91 = a2;
      v33 = &v85[16 * v30];
      v34 = *v33;
      v35 = v33[1];
      sub_259A81F28();
      v36 = sub_259A766DC(v34, v35);
      if (v4)
      {
        v64 = v4;

        goto LABEL_44;
      }

      v37 = v36;
      v38 = v35;
      v39 = v14;
      v88 = v34;
      v86 = v38;

      v89 = [v32 unsignedIntValue];
      sub_259A81F28();
      sub_259A81F28();
      v92 = v37;
      v40 = sub_259A81C58();
      v41 = sub_259A81F48();

      v87 = v41;
      v90 = v32;
      if (os_log_type_enabled(v40, v41))
      {
        log = v40;
        v42 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v93 = v82;
        *v42 = 136315650;
        *(v42 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v93);
        v83 = v42;
        *(v42 + 12) = 2080;
        isa = v37[2].isa;
        if (isa)
        {
          v44 = v37 + 4;
          v45 = MEMORY[0x277D84F90];
          v46 = v86;
          do
          {
            v47 = v44->isa;
            v44 = (v44 + 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_259A82750;
            *(v48 + 56) = MEMORY[0x277D84B78];
            *(v48 + 64) = MEMORY[0x277D84BC0];
            *(v48 + 32) = v47;
            v49 = sub_259A81E98();
            v51 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_259A7AD10(0, *(v45 + 2) + 1, 1, v45);
            }

            v53 = *(v45 + 2);
            v52 = *(v45 + 3);
            if (v53 >= v52 >> 1)
            {
              v45 = sub_259A7AD10((v52 > 1), v53 + 1, 1, v45);
            }

            *(v45 + 2) = v53 + 1;
            v54 = &v45[16 * v53];
            *(v54 + 4) = v49;
            *(v54 + 5) = v51;
            isa = (isa - 1);
          }

          while (isa);
        }

        else
        {
          v46 = v86;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
        sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
        v55 = sub_259A81E68();
        v57 = v56;

        v58 = sub_259A7AF28(v55, v57, &v93);

        *(v83 + 14) = v58;
        *(v83 + 22) = 2080;
        sub_259A81F28();
        v59 = sub_259A7AF28(v88, v46, &v93);

        *(v83 + 24) = v59;
        _os_log_impl(&dword_259A75000, log, v87, "%s specifierDigest=%s (%s)", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259CAA9D0](v82, -1, -1);
        MEMORY[0x259CAA9D0](v83, -1, -1);

        v4 = 0;
        v7 = v80;
        v5 = v81;
        v14 = v79;
      }

      else
      {

        v14 = v39;
        v4 = 0;
      }

      a2 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_259A7AE1C(0, *(v91 + 2) + 1, 1, v91);
      }

      v61 = *(a2 + 2);
      v60 = *(a2 + 3);
      if (v61 >= v60 >> 1)
      {
        a2 = sub_259A7AE1C((v60 > 1), v61 + 1, 1, a2);
      }

      ++v30;

      *(a2 + 2) = v61 + 1;
      v62 = &a2[16 * v61];
      *(v62 + 8) = v89;
      *(v62 + 5) = v92;
      if (v30 == v14)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_41:
  v63 = *(v7 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient);

  sub_259A7DA9C(a2);
  v64 = v4;
  if (v4)
  {

LABEL_44:

    [v77 unlock];
    v65 = v64;
    v66 = sub_259A81C58();
    v67 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v64);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v93 = v70;
      *v68 = 136315394;
      *(v68 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v93);
      *(v68 + 12) = 2112;
      v71 = v64;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v72;
      *v69 = v72;
      _os_log_impl(&dword_259A75000, v66, v67, "%s commitStagedManifestForSelectors request failed: %@", v68, 0x16u);
      sub_259A7C1B0(v69);
      MEMORY[0x259CAA9D0](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x259CAA9D0](v70, -1, -1);
      MEMORY[0x259CAA9D0](v68, -1, -1);
    }

    goto LABEL_47;
  }

  [v77 unlock];
  v73 = sub_259A81C58();
  v74 = sub_259A81F68();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v93 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v93);
    _os_log_impl(&dword_259A75000, v73, v74, "%s commitStagedManifestForSelectors request succeeded.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x259CAA9D0](v76, -1, -1);
    MEMORY[0x259CAA9D0](v75, -1, -1);
  }
}

void sub_259A7A428(unsigned int a1, uint64_t a2, unint64_t a3, const char *a4, void (*a5)(void, NSObject *), char *a6, const char *a7)
{
  v12 = v7;
  v13 = sub_259A81C58();
  v14 = sub_259A81F68();
  format = a6;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = v12;
    v17 = swift_slowAlloc();
    v65 = v17;
    *v15 = 136315138;
    *(v15 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
    _os_log_impl(&dword_259A75000, v13, v14, a4, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v18 = v17;
    v12 = v16;
    MEMORY[0x259CAA9D0](v18, -1, -1);
    MEMORY[0x259CAA9D0](v15, -1, -1);
  }

  v19 = *(v12 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v19 lock];
  v20 = sub_259A766DC(a2, a3);
  if (v8)
  {
    [v19 unlock];
    v42 = v8;
    v43 = sub_259A81C58();
    v44 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v8);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = a7;
      v48 = swift_slowAlloc();
      v65 = v48;
      *v45 = 136315394;
      *(v45 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
      *(v45 + 12) = 2112;
      v49 = v8;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v50;
      *v46 = v50;
      _os_log_impl(&dword_259A75000, v43, v44, v47, v45, 0x16u);
      sub_259A7C1B0(v46);
      MEMORY[0x259CAA9D0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x259CAA9D0](v48, -1, -1);
      MEMORY[0x259CAA9D0](v45, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v21 = v20;
    sub_259A81F28();
    sub_259A81F28();
    v22 = sub_259A81C58();
    v23 = sub_259A81F48();

    if (os_log_type_enabled(v22, v23))
    {
      log = v22;
      v59 = v12;
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65 = v55;
      *v24 = 136315650;
      *(v24 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
      v56 = v24;
      *(v24 + 12) = 2080;
      isa = v21[2].isa;
      v58 = v19;
      if (isa)
      {
        v26 = v21 + 4;
        v27 = MEMORY[0x277D84F90];
        v28 = MEMORY[0x277D84BC0];
        do
        {
          v29 = v26->isa;
          v26 = (v26 + 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_259A82750;
          *(v30 + 56) = MEMORY[0x277D84B78];
          *(v30 + 64) = v28;
          *(v30 + 32) = v29;
          v31 = sub_259A81E98();
          v33 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_259A7AD10(0, *(v27 + 2) + 1, 1, v27);
          }

          v35 = *(v27 + 2);
          v34 = *(v27 + 3);
          if (v35 >= v34 >> 1)
          {
            v27 = sub_259A7AD10((v34 > 1), v35 + 1, 1, v27);
          }

          *(v27 + 2) = v35 + 1;
          v36 = &v27[16 * v35];
          *(v36 + 4) = v31;
          *(v36 + 5) = v33;
          isa = (isa - 1);
        }

        while (isa);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
      sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778);
      v37 = sub_259A81E68();
      v39 = v38;

      v40 = sub_259A7AF28(v37, v39, &v65);

      *(v56 + 14) = v40;
      *(v56 + 22) = 2080;
      *(v56 + 24) = sub_259A7AF28(a2, a3, &v65);
      _os_log_impl(&dword_259A75000, log, v23, "%s specifierDigest=%s (%s)", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v55, -1, -1);
      MEMORY[0x259CAA9D0](v56, -1, -1);

      v19 = v58;
      v12 = v59;
    }

    else
    {
    }

    v41 = *(v12 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient);

    a5(a1, v21);

    [v19 unlock];
    v51 = sub_259A81C58();
    v52 = sub_259A81F68();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
      _os_log_impl(&dword_259A75000, v51, v52, format, v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x259CAA9D0](v54, -1, -1);
      MEMORY[0x259CAA9D0](v53, -1, -1);
    }
  }
}

uint64_t sub_259A7AAF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_259A81E78();
  v11 = v10;
  v12 = a1;
  a6(a3, v9, v11);

  return 1;
}

id sub_259A7ABB8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_259A7AC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MobileAssetExclaveServicesManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_259A7AD10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2228, &qword_259A82828);
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

char *sub_259A7AE1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2210, &qword_259A82818);
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

uint64_t sub_259A7AF28(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_259A81F28();
  v6 = sub_259A7AFF4(v11, 0, 0, 1, a1, a2);
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
    sub_259A7C9B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_259A7AFF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_259A7B100(a5, a6);
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
    result = sub_259A81FC8();
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

uint64_t sub_259A7B100(uint64_t a1, unint64_t a2)
{
  v4 = sub_259A7B14C(a1, a2);
  sub_259A7B27C(&unk_286AB9368);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_259A7B14C(uint64_t a1, unint64_t a2)
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

  v6 = sub_259A7B368(v5, 0);
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

  result = sub_259A81FC8();
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
        v10 = sub_259A81EF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_259A7B368(v10, 0);
        result = sub_259A81F98();
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

uint64_t sub_259A7B27C(uint64_t result)
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

  result = sub_259A7B3DC(result, v12, 1, v3);
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

void *sub_259A7B368(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_259A7B3DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
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

_BYTE *sub_259A7B4D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_259A7C260(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_259A7C318(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_259A7C394(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_259A7B564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_259A82068();
  sub_259A81ED8();
  v6 = sub_259A82088();

  return sub_259A7B5DC(a1, a2, v6);
}

unint64_t sub_259A7B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_259A82018())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_259A7B694(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_259A81CD8();
      sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540]);
      result = sub_259A81C88();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_259A7B874(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_259A7B874(uint64_t a1, uint64_t a2)
{
  result = sub_259A81BB8();
  if (!result || (result = sub_259A81BD8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_259A81BC8();
      sub_259A81CD8();
      sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540]);
      return sub_259A81C88();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_259A7B954(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_259A7BABC()
{
  v1 = v0;
  v2 = sub_259A81C78();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x28223BE20])();
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_log;
  sub_259A81C68();
  v15 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock;
  *&v1[v15] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    v19 = v3[2];
    v50 = v15;
    if (exclaveCapability)
    {
      v19(v13, &v1[v14], v2);
      v20 = sub_259A81C58();
      v21 = sub_259A81F68();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v47 = v14;
        v24 = v3;
        v25 = v23;
        v52 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v52);
        _os_log_impl(&dword_259A75000, v20, v21, "%s Starting com.apple.mobileasset.conclave...", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        v26 = v25;
        v3 = v24;
        v14 = v47;
        MEMORY[0x259CAA9D0](v26, -1, -1);
        MEMORY[0x259CAA9D0](v22, -1, -1);
      }

      v27 = v3[1];
      v27(v13, v2);
      type metadata accessor for MAExclaveManifestStorageService.Service();
      sub_259A7CA0C(&qword_27F9E2250, type metadata accessor for MAExclaveManifestStorageService.Service);
      sub_259A81E48();
      *&v1[OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient] = v52;
      v36 = &v1[v14];
      v37 = v48;
      v19(v48, v36, v2);
      v38 = sub_259A81C58();
      v39 = sub_259A81F68();
      if (os_log_type_enabled(v38, v39))
      {
        v41 = v37;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v52 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v52);
        _os_log_impl(&dword_259A75000, v38, v39, "%s Successfully started com.apple.mobileasset.conclave", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x259CAA9D0](v43, -1, -1);
        MEMORY[0x259CAA9D0](v42, -1, -1);

        v44 = v41;
      }

      else
      {

        v44 = v37;
      }

      v27(v44, v2);
      v45 = type metadata accessor for MobileAssetExclaveServicesManager();
      v51.receiver = v1;
      v51.super_class = v45;
      return objc_msgSendSuper2(&v51, sel_init);
    }

    else
    {
      v28 = v14;
      v19(v9, &v1[v14], v2);
      v29 = sub_259A81C58();
      v30 = sub_259A81F68();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v52 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v52);
        _os_log_impl(&dword_259A75000, v29, v30, "%s Exclaves not supported", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x259CAA9D0](v32, -1, -1);
        MEMORY[0x259CAA9D0](v31, -1, -1);
      }

      v33 = v3[1];
      v33(v9, v2);
      v33(&v1[v28], v2);

      type metadata accessor for MobileAssetExclaveServicesManager();
      v34 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
      v35 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_259A7C1B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2148, &qword_259A82770);
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

uint64_t sub_259A7C260(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_259A7C318(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_259A81BE8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_259A81BA8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_259A81C18();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_259A7C394(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_259A81BE8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_259A81BA8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_259A7C418(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2240, &unk_259A82840);
  v10 = sub_259A7C8D8(&qword_27F9E2248, &qword_27F9E2240, &unk_259A82840);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  sub_259A81F28();
  sub_259A7B4D0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_259A7C4F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

unint64_t sub_259A7C590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2238, &qword_259A82838);
    v3 = sub_259A81FF8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_259A81F28();
      sub_259A7C4F4(v7, v8);
      result = sub_259A7B564(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_259A7C6A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_259A7C6FC()
{
  result = qword_27F9E2180;
  if (!qword_27F9E2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2180);
  }

  return result;
}

unint64_t sub_259A7C764()
{
  result = qword_27F9E2198;
  if (!qword_27F9E2198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9E2198);
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetExclaveServicesManager()
{
  result = qword_28154B0F8;
  if (!qword_28154B0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_259A7C804()
{
  result = sub_259A81C78();
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

uint64_t sub_259A7C8B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_259A7C6A8(a1, a2);
  }

  return a1;
}

_OWORD *sub_259A7C8C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_259A7C8D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_259A7C9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_259A7CA0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_259A7CA68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_259A7CAB4()
{
  v1 = sub_259A81D58();
  v37 = *(v1 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_259A81DC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_259A81DE8();
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = *(v0 + 16);
  v20 = v40;
  sub_259A81E08();
  if (v20)
  {
    v30 = v42;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v24 = v30;
  }

  else
  {
    v36 = v4;
    v40 = v1;
    v21 = v38;
    v22 = *(v39 + 32);
    v39 += 32;
    v23 = v22;
    v22(v16, v18, v38);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A81DB8();
    sub_259A81E18();
    v23(v16, v13, v21);
    v26 = v36;
    sub_259A81D48();
    v27 = sub_259A81410();
    v30 = v27;
    v31 = v40;
    v32 = v37;
    if (v29)
    {
      v41 = v27;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v33 = v30;
    }

    else
    {
      v34 = v28;
      sub_259A81F28();
      sub_259A81F28();
      sub_259A81A68(v30, v34, 0);
    }

    (*(v32 + 8))(v26, v31);
  }

  return v30;
}

uint64_t sub_259A7CF10(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v47 = a3;
  LODWORD(v51) = a1;
  v8 = sub_259A81D58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_259A81DC8();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_259A81DE8();
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v46 = &v42 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  v26 = 0;
  while (v26 != 32)
  {
    v27 = *(a2 + 16);
    v28 = v26 >= v27;
    if (v26 == v27)
    {
      break;
    }

    ++v26;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v44 = v9;
  if (__OFADD__(v26 + 16, sub_259A81588(v53, v54, v55)))
  {
    __break(1u);
  }

  else
  {
    v43 = v8;
    v29 = *(v6 + 16);
    v30 = v52;
    sub_259A81E08();
    if (v30)
    {
      v31 = v57;
      type metadata accessor for TransportError(0);
      sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError);
      swift_allocError();
      *v32 = v31;
      return v25 & 1;
    }

    v52 = v18;
    v33 = v14;
    v34 = *(v50 + 32);
    v34(v23, v25, v33);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v51, a2);
    v50 = v33;
    v51 = v34;
    sub_259A81D98();
    sub_259A7EE7C(v53, v54, v55);
    sub_259A81DB8();
    v36 = v46;
    sub_259A81E18();
    v51(v23, v36, v50);
    v37 = v45;
    sub_259A81D48();
    v38 = sub_259A81D08();
    if (!v38)
    {
      LOBYTE(v25) = sub_259A81CE8();
      (*(v44 + 8))(v37, v43);
      return v25 & 1;
    }

    v39 = v43;
    if (v38 == 1)
    {
      v40 = sub_259A81324();
      v56 = v40;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      LOBYTE(v25) = swift_allocError();
      *v41 = v40;
      (*(v44 + 8))(v37, v39);
      return v25 & 1;
    }
  }

  result = sub_259A81FD8();
  __break(1u);
  return result;
}

uint64_t sub_259A7D4EC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v48 = a1;
  v8 = sub_259A81D58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_259A81DC8();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_259A81DE8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v26 = &v41 - v25;
  v27 = 0;
  while (v27 != 32)
  {
    v28 = *(a2 + 16);
    v29 = v27 >= v28;
    if (v27 == v28)
    {
      break;
    }

    ++v27;
    if (v29)
    {
      __break(1u);
      break;
    }
  }

  v44 = v24;
  v45 = v23;
  v49 = v22;
  v42 = v9;
  if (__OFADD__(v27 + 12, sub_259A81608(v50, v51, v52)))
  {
    __break(1u);
  }

  else
  {
    v41 = v8;
    v30 = *(v5 + 16);
    sub_259A81E08();
    if (v6)
    {
      v31 = v54;
      type metadata accessor for TransportError(0);
      sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError);
      result = swift_allocError();
      *v33 = v31;
      return result;
    }

    v34 = *(v15 + 32);
    v34(v21, v26, v49);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v48, a2);
    sub_259A7F148(v50, v51, v52);
    sub_259A81DB8();
    v35 = v45;
    sub_259A81E18();
    v34(v21, v35, v49);
    v36 = v43;
    sub_259A81D48();
    v37 = sub_259A81D08();
    if (!v37)
    {
      return (*(v42 + 8))(v36, v41);
    }

    v38 = v41;
    if (v37 == 1)
    {
      v39 = sub_259A81324();
      v53 = v39;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v40 = v39;
      return (*(v42 + 8))(v36, v38);
    }
  }

  result = sub_259A81FD8();
  __break(1u);
  return result;
}

uint64_t sub_259A7DA9C(uint64_t a1)
{
  v4 = sub_259A81D58();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_259A81DC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = sub_259A81DE8();
  v9 = *(*(v60 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v60);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v19 = &v52 - v18;
  v20 = 0;
  v21 = 0;
  v22 = *(a1 + 16);
  v23 = a1 + 32;
LABEL_3:
  if (v20 == v22)
  {
    goto LABEL_10;
  }

  v26 = 0;
  v27 = v20 + 1;
  v28 = *(v23 + 16 * v20 + 8);
  do
  {
    if (v26 == 32 || (v29 = *(v28 + 16), v30 = v26 >= v29, v26 == v29))
    {
      v24 = v26 + 4;
      v20 = v27;
      v25 = __OFADD__(v21, v24);
      v21 += v24;
      if (v25)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      goto LABEL_3;
    }

    ++v26;
  }

  while (!v30);
  __break(1u);
LABEL_10:
  v25 = __OFADD__(v21, 8);
  v31 = v21 + 8;
  if (v25)
  {
    goto LABEL_26;
  }

  if (__OFADD__(v31, 8))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v56 = v17;
  v57 = v16;
  v32 = v15;
  v33 = *(v1 + 16);
  sub_259A81E08();
  if (v2)
  {
    goto LABEL_20;
  }

  v34 = *(v32 + 32);
  v54 = v32 + 32;
  v55 = 0;
  v52 = v4;
  v53 = v34;
  v34(v14, v19, v60);
  sub_259A81DD8();
  sub_259A81DA8();
  sub_259A81DA8();
  if (v22)
  {
    v35 = 0;
    while (1)
    {
      v36 = (v23 + 16 * v35);
      v19 = *(v36 + 1);
      v37 = *v36;
      sub_259A81F28();
      sub_259A81D98();
      if (*(v19 + 2) != 32)
      {
        break;
      }

      ++v35;
      for (i = 32; i != 64; ++i)
      {
        v39 = v19[i];
        sub_259A81D88();
      }

      if (v35 == v22)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v61 = *(v19 + 2);
    v51 = sub_259A82008();
    MEMORY[0x259CAA420](v51);

    while (1)
    {
LABEL_29:
      sub_259A81FD8();
      __break(1u);
    }
  }

LABEL_19:
  sub_259A81DB8();
  v40 = v57;
  v41 = v55;
  sub_259A81E18();
  if (v41)
  {
LABEL_20:
    v42 = v64;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v44 = v42;
  }

  else
  {
    v53(v14, v40, v60);
    v45 = v59;
    sub_259A81D48();
    v46 = sub_259A81D08();
    if (v46)
    {
      v47 = v52;
      v48 = v58;
      if (v46 != 1)
      {
        goto LABEL_29;
      }

      v49 = sub_259A81324();
      LOBYTE(v62) = v49;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v50 = v49;
      return (*(v48 + 8))(v45, v47);
    }

    else
    {
      return (*(v58 + 8))(v45, v52);
    }
  }

  return result;
}

uint64_t sub_259A7E0B4(unsigned int a1, uint64_t a2)
{
  v48 = a1;
  v5 = sub_259A81D58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_259A81DC8();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = sub_259A81DE8();
  v11 = *(*(v47 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v47);
  v13 = MEMORY[0x28223BE20](v12);
  v44 = &v39 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  v21 = 0;
  while (v21 != 32)
  {
    v22 = *(a2 + 16);
    v23 = v21 >= v22;
    if (v21 == v22)
    {
      break;
    }

    ++v21;
    if (v23)
    {
      __break(1u);
      break;
    }
  }

  v24 = v18;
  v41 = v5;
  v42 = v6;
  v25 = *(v2 + 16);
  sub_259A81E08();
  if (v3)
  {
    v26 = v50;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v28 = v26;
  }

  else
  {
    v29 = v20;
    v30 = v47;
    v40 = *(v24 + 32);
    v40(v17, v29, v47);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v48, a2);
    v31 = v30;
    v32 = v40;
    sub_259A81DB8();
    v33 = v44;
    sub_259A81E18();
    v32(v17, v33, v31);
    v34 = v43;
    sub_259A81D48();
    v35 = sub_259A81D08();
    if (v35)
    {
      v36 = v42;
      if (v35 == 1)
      {
        v37 = sub_259A81324();
        v49 = v37;
        sub_259A7C6FC();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v38 = v37;
        return (*(v36 + 8))(v34, v41);
      }

      else
      {
        result = sub_259A81FD8();
        __break(1u);
      }
    }

    else
    {
      return (*(v42 + 8))(v34, v41);
    }
  }

  return result;
}

uint64_t sub_259A7E630(unsigned int a1, uint64_t a2)
{
  v48 = a1;
  v5 = sub_259A81D58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_259A81DC8();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = sub_259A81DE8();
  v11 = *(*(v47 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v47);
  v13 = MEMORY[0x28223BE20](v12);
  v44 = &v39 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  v21 = 0;
  while (v21 != 32)
  {
    v22 = *(a2 + 16);
    v23 = v21 >= v22;
    if (v21 == v22)
    {
      break;
    }

    ++v21;
    if (v23)
    {
      __break(1u);
      break;
    }
  }

  v24 = v18;
  v41 = v5;
  v42 = v6;
  v25 = *(v2 + 16);
  sub_259A81E08();
  if (v3)
  {
    v26 = v50;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v28 = v26;
  }

  else
  {
    v29 = v20;
    v30 = v47;
    v40 = *(v24 + 32);
    v40(v17, v29, v47);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v48, a2);
    v31 = v30;
    v32 = v40;
    sub_259A81DB8();
    v33 = v44;
    sub_259A81E18();
    v32(v17, v33, v31);
    v34 = v43;
    sub_259A81D48();
    v35 = sub_259A81D08();
    if (v35)
    {
      v36 = v42;
      if (v35 == 1)
      {
        v37 = sub_259A81324();
        v49 = v37;
        sub_259A7C6FC();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v38 = v37;
        return (*(v36 + 8))(v34, v41);
      }

      else
      {
        result = sub_259A81FD8();
        __break(1u);
      }
    }

    else
    {
      return (*(v42 + 8))(v34, v41);
    }
  }

  return result;
}

uint64_t sub_259A7EBD0()
{
  v1 = *v0;
  sub_259A82068();
  v2 = dword_259A82AAC[v1];
  sub_259A82078();
  return sub_259A82088();
}

uint64_t sub_259A7EC58()
{
  v1 = *v0;
  sub_259A82068();
  v2 = dword_259A82AAC[v1];
  sub_259A82078();
  return sub_259A82088();
}

uint64_t sub_259A7ECA4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_259A8122C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_259A7ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_259A80EC8();
  v5 = sub_259A80F1C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_259A7ED4C(uint64_t a1, uint64_t a2)
{
  sub_259A81D98();
  if (*(a2 + 16) == 32)
  {
    v3 = 0;
    v4 = a2 + 32;
    do
    {
      v5 = v3 + 1;
      v6 = *(v4 + v3);
      result = sub_259A81D88();
      v3 = v5;
    }

    while (v5 != 32);
  }

  else
  {
    v8 = *(a2 + 16);
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v9 = sub_259A82008();
    MEMORY[0x259CAA420](v9);

    result = sub_259A81FD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_259A7EE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != 32)
  {
    v18 = *(a1 + 16);
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v19 = sub_259A82008();
    MEMORY[0x259CAA420](v19);

LABEL_14:
    result = sub_259A81FD8();
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = a1 + 32;
  do
  {
    v7 = v5 + 1;
    v8 = *(v6 + v5);
    sub_259A81D88();
    v5 = v7;
  }

  while (v7 != 32);
  if (*(a2 + 16) != 32)
  {
    v20 = *(a2 + 16);
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v21 = sub_259A82008();
    MEMORY[0x259CAA420](v21);

    goto LABEL_14;
  }

  v9 = 0;
  v10 = a2 + 32;
  do
  {
    v11 = v9 + 1;
    v12 = *(v10 + v9);
    sub_259A81D88();
    v9 = v11;
  }

  while (v11 != 32);
  if (*(a3 + 16) != 32)
  {
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v22 = sub_259A82008();
    MEMORY[0x259CAA420](v22);

    goto LABEL_14;
  }

  v13 = 0;
  v14 = a3 + 32;
  do
  {
    v15 = v13 + 1;
    v16 = *(v14 + v13);
    result = sub_259A81D88();
    v13 = v15;
  }

  while (v15 != 32);
  return result;
}

uint64_t sub_259A7F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  sub_259A81DA8();
  if (v6)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_259A81D88();
      --v6;
    }

    while (v6);
  }

  v9 = *(a2 + 16);
  sub_259A81DA8();
  if (v9)
  {
    v10 = (a2 + 32);
    do
    {
      v11 = *v10++;
      sub_259A81D88();
      --v9;
    }

    while (v9);
  }

  v12 = *(a3 + 16);
  result = sub_259A81DA8();
  if (v12)
  {
    v14 = (a3 + 32);
    do
    {
      v15 = *v14++;
      result = sub_259A81D88();
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_259A7F1F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_259A7F22C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_259A81DF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_259A81E38();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_259A81E28();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_259A7F35C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v5 = v3;
  v114 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2340, &qword_259A82A60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v111 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v111 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v111 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v113 = &v111 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v111 - v26;
  v28 = sub_259A81DC8();
  v118 = *(v28 - 8);
  v119 = v27;
  v29 = *(v118 + 56);
  v120 = v28;
  v115 = v29;
  v116 = v118 + 56;
  (v29)(v27, 1, 1);
  v121 = a1;
  v30 = sub_259A81654();
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v53 = v121;
      v54 = sub_259A81D18();
      MEMORY[0x28223BE20](v54);
      v109 = v53;
      v55 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
      v56 = v5[6];
      v57 = v5[7];
      __swift_project_boxed_opaque_existential_1(v5 + 3, v56);
      (*(v57 + 48))(v54, v55, v56, v57);
      v41 = v119;
      if (v4)
      {
        v123 = v4;
        v58 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CAA8E0](v123);
          v110 = 0;
          v109 = 387;
          goto LABEL_88;
        }

        MEMORY[0x259CAA8E0](v4);

        v59 = v122;
        MEMORY[0x259CAA8E0](v123);
      }

      else
      {

        v59 = 23;
      }

      sub_259A81D38();
      v121 = 0;
      v82 = v120;
      v115(v11, 0, 1, v120);
      v83 = *(v118 + 48);
      if (v83(v41, 1, v82) != 1)
      {
        sub_259A817F8(v41);
      }

      sub_259A81860(v11, v41);
      if (v83(v41, 1, v82))
      {
        goto LABEL_70;
      }

      goto LABEL_64;
    }

    if (v30 != 4)
    {
      v65 = v121;
      v66 = sub_259A81D18();
      LODWORD(v113) = v66;
      MEMORY[0x28223BE20](v66);
      v112 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
      v67 = sub_259A81D28();
      MEMORY[0x28223BE20](v67);
      v69 = sub_259A80724(sub_259A81B90, (&v111 - 4), 0, v68);
      v70 = sub_259A81D28();
      MEMORY[0x28223BE20](v70);
      v72 = sub_259A80724(sub_259A81944, (&v111 - 4), 0, v71);
      v73 = sub_259A81D28();
      MEMORY[0x28223BE20](v73);
      v109 = v65;
      v75 = sub_259A80724(sub_259A81B90, (&v111 - 4), 0, v74);
      v77 = v5[6];
      v76 = v5[7];
      v78 = v5 + 3;
      v79 = v112;
      __swift_project_boxed_opaque_existential_1(v78, v77);
      (*(v76 + 24))(v113, v79, v69, v72, v75, v77, v76);
      if (v4)
      {
        v123 = v4;
        v80 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
        v81 = swift_dynamicCast();
        v41 = v119;
        if (!v81)
        {
          MEMORY[0x259CAA8E0](v123);
          v110 = 0;
          v109 = 346;
          goto LABEL_88;
        }

        MEMORY[0x259CAA8E0](v4);

        LODWORD(v43) = v122;
        MEMORY[0x259CAA8E0](v123);
      }

      else
      {

        LODWORD(v43) = 23;
        v41 = v119;
      }

      sub_259A81D38();
      v121 = 0;
      v100 = v120;
      v115(v20, 0, 1, v120);
      v83 = *(v118 + 48);
      if (v83(v41, 1, v100) != 1)
      {
        sub_259A817F8(v41);
      }

      sub_259A81860(v20, v41);
      v82 = v120;
      if (v83(v41, 1, v120))
      {
        goto LABEL_70;
      }

      if (v43 == 23)
      {
        goto LABEL_65;
      }

LABEL_67:
      sub_259A81D88();
      v84 = v43;
      goto LABEL_69;
    }

    v36 = v5[6];
    v37 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v36);
    v38 = (*(v37 + 8))(v36, v37);
    v40 = v4;
    v41 = v119;
    if (v4)
    {
      v123 = v4;
      v42 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
      if (swift_dynamicCast())
      {
        MEMORY[0x259CAA8E0](v4);
        v43 = v122;
        MEMORY[0x259CAA8E0](v123);
        v44 = 0;
        goto LABEL_43;
      }

LABEL_84:
      MEMORY[0x259CAA8E0](v123);
      v110 = 0;
      v109 = 311;
      goto LABEL_88;
    }

    v43 = v38;
    v44 = v39;
    v91 = *(v38 + 16);
    v92 = v91 + 8;
    v93 = __OFADD__(v91, 8);
    sub_259A81F28();
    sub_259A81F28();
    if (v93)
    {
      __break(1u);
    }

    else
    {
      v94 = *(v44 + 16);
      v95 = __OFADD__(v94, 8);
      v96 = v94 + 8;
      if (!v95)
      {
        v97 = v92 + v96;
        if (!__OFADD__(v92, v96))
        {
          sub_259A81A68(v43, v44, 0);
          if (!__OFADD__(v97, 1))
          {
LABEL_43:
            sub_259A81D38();
            v121 = 0;
            v82 = v120;
            v115(v25, 0, 1, v120);
            v83 = *(v118 + 48);
            if (v83(v41, 1, v82) != 1)
            {
              sub_259A817F8(v41);
            }

            sub_259A81860(v25, v41);
            if (v83(v41, 1, v82))
            {
              sub_259A81A68(v43, v44, v40 != 0);
              goto LABEL_70;
            }

            if (!v40)
            {
              sub_259A81D88();
              v107 = v121;
              v108 = sub_259A80F70(v43, v44);
              if (v107)
              {
                LODWORD(v35) = v108;
                sub_259A81A68(v43, v44, 0);
                result = (v83)(v41, 1, v120);
                if (result != 1)
                {
                  result = sub_259A817F8(v41);
                }

                goto LABEL_56;
              }

              v121 = 0;
              sub_259A81A68(v43, v44, 0);
              v82 = v120;
              goto LABEL_70;
            }

            goto LABEL_67;
          }

          goto LABEL_83;
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  if (!v30)
  {
    v45 = v121;
    v46 = sub_259A81D18();
    MEMORY[0x28223BE20](v46);
    v109 = v45;
    v47 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
    v48 = v5[6];
    v49 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v48);
    (*(v49 + 40))(v46, v47, v48, v49);
    if (!v4)
    {

      v52 = 23;
      v41 = v119;
      goto LABEL_25;
    }

    v123 = v4;
    v50 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
    v51 = swift_dynamicCast();
    v41 = v119;
    if (v51)
    {
      MEMORY[0x259CAA8E0](v4);

      v52 = v122;
      MEMORY[0x259CAA8E0](v123);
LABEL_25:
      sub_259A81D38();
      v121 = 0;
      v82 = v120;
      v115(v14, 0, 1, v120);
      v83 = *(v118 + 48);
      if (v83(v41, 1, v82) != 1)
      {
        sub_259A817F8(v41);
      }

      sub_259A81860(v14, v41);
      if (v83(v41, 1, v82))
      {
        goto LABEL_70;
      }

      if (v52 == 23)
      {
        goto LABEL_65;
      }

      sub_259A81D88();
      v84 = v52;
      goto LABEL_69;
    }

    MEMORY[0x259CAA8E0](v123);
    v110 = 0;
    v109 = 374;
LABEL_88:
    result = sub_259A81FD8();
    __break(1u);
    return result;
  }

  if (v30 == 1)
  {
    v31 = v121;
    v32 = sub_259A81D18();
    MEMORY[0x28223BE20](v32);
    v109 = v31;
    v33 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
    v34 = sub_259A81980();
    v35 = v34;
    if (v4)
    {

LABEL_18:
      v62 = v119;
      if ((*(v118 + 48))(v119, 1, v120) != 1)
      {
        sub_259A817F8(v62);
      }

      v63 = sub_259A81D58();
      result = (*(*(v63 - 8) + 8))(v31, v63);
LABEL_56:
      *v117 = v35;
      return result;
    }

    MEMORY[0x28223BE20](v34);
    v112 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
    MEMORY[0x28223BE20](v112);
    v111 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
    MEMORY[0x28223BE20](v111);
    v109 = v31;
    v85 = sub_259A808A8(sub_259A81B90, (&v111 - 4), 0, 32);
    v86 = v32;
    v87 = v5[6];
    v88 = v5[7];
    v89 = v5 + 3;
    v90 = v112;
    __swift_project_boxed_opaque_existential_1(v89, v87);
    (*(v88 + 16))(v86, v33, v35, v90, v111, v85, v87, v88);

    v101 = v113;
    sub_259A81D38();
    v121 = 0;
    v82 = v120;
    v115(v101, 0, 1, v120);
    v41 = v119;
    v83 = *(v118 + 48);
    if (v83(v119, 1, v82) != 1)
    {
      sub_259A817F8(v41);
    }

    sub_259A81860(v101, v41);
    if (!v83(v41, 1, v82))
    {
      sub_259A81D88();
      sub_259A81D68();
    }

    goto LABEL_70;
  }

  v31 = v121;
  v60 = sub_259A81D28();
  MEMORY[0x28223BE20](v60);
  v109 = v31;
  v35 = sub_259A80A1C(sub_259A818D0, (&v111 - 4), 0, v61);
  if (v4)
  {
    goto LABEL_18;
  }

  v98 = v5[6];
  v99 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v98);
  (*(v99 + 32))(v35, v98, v99);
  v41 = v119;

  v59 = 23;
  sub_259A81D38();
  v121 = 0;
  v82 = v120;
  v115(v17, 0, 1, v120);
  v83 = *(v118 + 48);
  if (v83(v41, 1, v82) != 1)
  {
    sub_259A817F8(v41);
  }

  sub_259A81860(v17, v41);
  if (!v83(v41, 1, v82))
  {
LABEL_64:
    if (v59 == 23)
    {
LABEL_65:
      sub_259A81D88();
      goto LABEL_70;
    }

    sub_259A81D88();
    v84 = v59;
LABEL_69:
    v102 = dword_259A82AAC[v84];
    sub_259A81D78();
  }

LABEL_70:
  v103 = (v83)(v41, 1, v82);
  v104 = v103;
  if (v103 == 1)
  {
    v105 = v114;
  }

  else
  {
    v105 = v114;
    if (v103)
    {
      sub_259A817F8(v41);
      v104 = 1;
    }

    else
    {
      sub_259A81DB8();
    }
  }

  v106 = sub_259A81DE8();
  return (*(*(v106 - 8) + 56))(v105, v104, 1, v106);
}

uint64_t sub_259A80724(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_259A80FEC(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_259A80FEC((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_259A808A8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_259A80FEC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_259A80FEC((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

char *sub_259A80A1C(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v21 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v25 = MEMORY[0x277D84F90];
    result = sub_259A8100C(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v25;
      v10 = v5 - v6;
      if (v5 < v6)
      {
        v10 = 0;
      }

      v19 = v10 + 1;
      v20 = v6;
      v18 = v7;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v23 = v6 + v9;
        result = (v21)(v24, &v23, &v22);
        if (v4)
        {

          return v22;
        }

        v12 = v5;
        v13 = v24[0];
        v14 = v24[1];
        v25 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_259A8100C((v15 > 1), v16 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v5 = v12;
        v6 = v20;
        if (v5 < v20)
        {
          goto LABEL_21;
        }

        if (v19 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v18)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_259A80BB4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_259A80BF4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_259A7F35C(a1, &v8, a3);
  if (v4)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAStorageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAStorageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_259A80E2C()
{
  result = qword_27F9E2320;
  if (!qword_27F9E2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2320);
  }

  return result;
}

unint64_t sub_259A80EC8()
{
  result = qword_27F9E2330;
  if (!qword_27F9E2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2330);
  }

  return result;
}

unint64_t sub_259A80F1C()
{
  result = qword_27F9E2338;
  if (!qword_27F9E2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2338);
  }

  return result;
}

uint64_t sub_259A80F70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  sub_259A81DA8();
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_259A81D88();
      --v4;
    }

    while (v4);
  }

  v7 = *(a2 + 16);
  result = sub_259A81DA8();
  if (v7)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      result = sub_259A81D88();
      --v7;
    }

    while (v7);
  }

  return result;
}

char *sub_259A80FEC(char *a1, int64_t a2, char a3)
{
  result = sub_259A8102C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_259A8100C(char *a1, int64_t a2, char a3)
{
  result = sub_259A81120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_259A8102C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
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

char *sub_259A81120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2210, &qword_259A82818);
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

uint64_t sub_259A8122C(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 31:
    case 32:
    case 33:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
      goto LABEL_5;
    case 5:
      result = 3;
      break;
    case 9:
      result = 4;
      break;
    case 12:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 17:
      result = 7;
      break;
    case 20:
      result = 8;
      break;
    case 21:
      result = 9;
      break;
    case 22:
      result = 10;
      break;
    case 28:
      result = 11;
      break;
    case 30:
      result = 12;
      break;
    case 34:
      result = 13;
      break;
    case 35:
      result = 14;
      break;
    case 45:
      result = 15;
      break;
    case 55:
      result = 16;
      break;
    case 63:
      result = 17;
      break;
    case 70:
      result = 18;
      break;
    case 80:
      result = 19;
      break;
    case 128:
      result = 20;
      break;
    case 129:
      result = 21;
      break;
    default:
      if (a1 == 9999)
      {
        result = 22;
      }

      else
      {
LABEL_5:
        result = 23;
      }

      break;
  }

  return result;
}

uint64_t sub_259A81324()
{
  v0 = sub_259A81CF8();
  result = sub_259A8122C(v0);
  if (result == 23)
  {
    sub_259A81FA8();

    v2 = sub_259A82008();
    MEMORY[0x259CAA420](v2);

    result = sub_259A81FD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_259A81410()
{
  v2 = sub_259A81D08();
  if (v2 == 1)
  {
    LODWORD(result) = sub_259A81324();
    if (v1)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  else if (v2)
  {
    result = sub_259A81FD8();
    __break(1u);
  }

  else
  {
    v4 = sub_259A81D28();
    MEMORY[0x28223BE20](v4);
    v10 = v0;
    v6 = sub_259A80724(sub_259A81B90, v9, 0, v5);
    v7 = sub_259A81D28();
    MEMORY[0x28223BE20](v7);
    v10 = v0;
    sub_259A80724(sub_259A81B90, v9, 0, v8);
    return v6;
  }

  return result;
}

unint64_t sub_259A81588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  while (v3 != 32)
  {
    v4 = *(a1 + 16);
    v5 = v3 >= v4;
    if (v3 == v4)
    {
      break;
    }

    ++v3;
    if (v5)
    {
      __break(1u);
      break;
    }
  }

  v6 = 0;
  while (v6 != 32)
  {
    v7 = *(a2 + 16);
    v8 = v6 >= v7;
    if (v6 == v7)
    {
      break;
    }

    ++v6;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  result = v3 + v6;
  v10 = -1;
  while (v10 != 31)
  {
    v11 = *(a3 + 16);
    if (v10 + 1 == v11)
    {
      break;
    }

    ++result;
    if (++v10 >= v11)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_259A81608(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(a2 + 16);
  v4 = __OFADD__(v6, 8);
  v7 = v6 + 8;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = __OFADD__(v5, v7);
  v8 = v5 + v7;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(a3 + 16);
  v4 = __OFADD__(v9, 8);
  v10 = v9 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_259A81654()
{
  v0 = sub_259A81D28();
  if (v0 <= 0x29173956A6EF0793)
  {
    switch(v0)
    {
      case 0xFC7D3E57AEBC3257:
        return 0;
      case 0x1966A8294C6FBDD8:
        return 1;
      case 0x2301E5CED9E3886ALL:
        return 5;
    }

    goto LABEL_15;
  }

  if (v0 == 0x29173956A6EF0794)
  {
    return 3;
  }

  if (v0 == 0x422BFAA998E697FELL)
  {
    return 4;
  }

  if (v0 != 0x50F6D7246ECB4BA2)
  {
LABEL_15:
    sub_259A81FA8();
    MEMORY[0x259CAA420](0xD00000000000003ELL, 0x8000000259A82FA0);
    v2 = sub_259A82008();
    MEMORY[0x259CAA420](v2);

    result = sub_259A81FD8();
    __break(1u);
    return result;
  }

  return 2;
}

uint64_t sub_259A817F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2340, &qword_259A82A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_259A81860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2340, &qword_259A82A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_259A818D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_259A81D18();
  v6[2] = v3;
  result = sub_259A808A8(sub_259A81B90, v6, 0, 32);
  *a1 = v4;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_259A81944@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_259A81D08();
  *a1 = result;
  return result;
}

uint64_t sub_259A81980()
{
  v0 = sub_259A81D18();
  if ((v0 - 1) <= 2)
  {
    return (v0 - 1);
  }

  sub_259A81FA8();
  MEMORY[0x259CAA420](0xD000000000000035, 0x8000000259A82F60);
  v2 = sub_259A82008();
  MEMORY[0x259CAA420](v2);

  result = sub_259A81FD8();
  __break(1u);
  return result;
}

uint64_t sub_259A81A68(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_259A81AA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_259A81AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_259A81B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}