uint64_t sub_249F759C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75A00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75A68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_249F75AD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_249F75B48()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_249F75BD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75C0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75C48()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249F75CA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249F75CEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249F75D2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75D70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75DEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75E24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75E5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75EC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249F75F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_249F75F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id nm_signingInfo(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    staticCode = 0;
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
    if (SecStaticCodeCreateWithPath(v3, 0, &staticCode))
    {
      v4 = staticCode;
      if (staticCode)
      {
LABEL_4:
        CFRelease(v4);
      }
    }

    else
    {
      theDict = 0;
      v7 = SecCodeCopySigningInformation(staticCode, 2u, &theDict);
      CFRelease(staticCode);
      if (!v7)
      {
        if (a2 == 1)
        {
          v8 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC268]);
          v9 = v8;
          if (v8)
          {
            v5 = hexStringForData(v8);
          }

          else
          {
            v5 = 0;
          }
        }

        else if (a2)
        {
          v5 = 0;
        }

        else
        {
          v5 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC260]);
        }

        CFRelease(theDict);
        goto LABEL_6;
      }

      v4 = theDict;
      if (theDict)
      {
        goto LABEL_4;
      }
    }

    v5 = 0;
LABEL_6:

    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id hexStringForData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 length], v4 = objc_msgSend(v2, "bytes"), (v5 = malloc_type_calloc((2 * v3) | 1, 1uLL, 0x3DC5581AuLL)) != 0))
  {
    v6 = v5;
    if (v3)
    {
      v7 = v5;
      do
      {
        v8 = *v4++;
        sprintf(v7, "%2.2x", v8);
        v7 += 2;
        --v3;
      }

      while (v3);
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void nm_systemstats_get_microstackshots(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  systemstats_get_microstackshots();
}

uint64_t nm_macho_for_each_slice(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 cStringUsingEncoding:4];
  callback[0] = MEMORY[0x277D85DD0];
  callback[1] = 3221225472;
  callback[2] = __nm_macho_for_each_slice_block_invoke;
  callback[3] = &unk_278FBF560;
  v9 = v3;
  v5 = v3;
  v6 = macho_for_each_slice(v4, callback);

  return v6;
}

uint64_t nm_macho_for_each_imported_symbol(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_imported_symbol();

  return v4;
}

uint64_t nm_macho_for_each_dependent_dylib(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_dependent_dylib();

  return v4;
}

uint64_t nm_macho_for_each_exported_symbol(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_exported_symbol();

  return v4;
}

uint64_t nm_macho_for_each_defined_rpath(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_defined_rpath();

  return v4;
}

id nm_dyld_get_uuid_for_header()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  v0 = 0;
  if (_dyld_get_image_uuid())
  {
    v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v4];
    v0 = [v1 UUIDString];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t MicrostackshotsCoordinator.__allocating_init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t MicrostackshotsCoordinator.init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t MicrostackshotsCoordinator.__allocating_init(interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 40) = a3;
  *(result + 41) = a4;
  return result;
}

uint64_t MicrostackshotsCoordinator.init(interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = a3;
  *(v4 + 41) = a4;
  return v4;
}

void sub_249F76830()
{
  v102 = type metadata accessor for TargetType(0);
  v99 = *(v102 - 8);
  v0 = *(v99 + 64);
  v1 = MEMORY[0x28223BE20](v102);
  v100 = v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v101 = v97 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v98 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = v97 - v8;
  v109 = sub_249F9A834();
  v106 = *(v109 - 8);
  v9 = *(v106 + 64);
  v10 = MEMORY[0x28223BE20](v109);
  v104 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = v97 - v12;
  v13 = sub_249F9AA04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9ABB4();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v18 = swift_allocObject();
  v113 = xmmword_249F9B920;
  *(v18 + 16) = xmmword_249F9B920;
  v19 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v19;
  *(v18 + 32) = 500;
  v111 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v20 = sub_249F9AC64();
  sub_249F9A874();

  v115 = 0;
  v116 = 0xE000000000000000;
  sub_249F9AD14();

  v115 = 0xD000000000000020;
  v116 = 0x8000000249F9C940;
  v121 = 500;
  v21 = sub_249F9ADE4();
  MEMORY[0x24C20A200](v21);

  MEMORY[0x24C20A200](0xD000000000000010, 0x8000000249F9C970);
  sub_249F9A9F4();
  sub_249F7798C();
  v22 = sub_249F9ACA4();
  (*(v14 + 8))(v17, v13);

  if (v22)
  {
    nm_CRSetCrashLogMessage(v22 + 32);
  }

  type metadata accessor for AnalyticsRandomizer();
  v23 = swift_allocObject();
  v23[2] = sub_249F790D0(MEMORY[0x277D84F90]);
  v23[5] = -1;
  sub_249F9ABB4();
  v24 = sub_249F9AC64();
  sub_249F9A874();

  v23[3] = 0xD00000000000002DLL;
  v23[4] = 0x8000000249F9C990;
  v110 = v23;
  v23[5] = 500;
  v25 = sub_249F792D8();
  if (v25)
  {
    v26 = v25;
    *&v108 = *(v25 + 2);
    v97[1] = v23 + 2;
    swift_beginAccess();
    v27 = 0;
    v107 = v26;
    while (1)
    {
      if (v108 == v27)
      {

        goto LABEL_12;
      }

      if (v27 >= *(v26 + 2))
      {
        break;
      }

      v28 = *&v26[4 * v27 + 32];
      v30 = v114[2];
      v29 = v114[3];

      LOBYTE(v30) = v30(v31);

      if (v30)
      {

        sub_249F9ABA4();
        v67 = sub_249F9AC64();
        sub_249F9A874();

        v68 = v114[4];
        return;
      }

      ++v27;
      sub_249F9ABB4();
      v32 = swift_allocObject();
      *(v32 + 16) = v113;
      *(v32 + 56) = MEMORY[0x277D849A8];
      *(v32 + 64) = MEMORY[0x277D84A20];
      *(v32 + 32) = v28;
      v33 = v114;
      v34 = sub_249F9AC64();
      sub_249F9A874();

      v35 = MEMORY[0x24C20A7A0]();
      v36 = v110;
      sub_249F779E0(v28, v110);
      objc_autoreleasePoolPop(v35);
      sub_249F9AB84();
      v37 = swift_allocObject();
      *(v37 + 16) = v113;
      v38 = v33[4];
      *(v37 + 56) = MEMORY[0x277D83B88];
      *(v37 + 64) = MEMORY[0x277D83C10];
      *(v37 + 32) = v38;
      v39 = sub_249F9AC64();
      v26 = v107;
      sub_249F9A874();

      if (*(*(v36 + 16) + 16) >= 0x1F5uLL)
      {

        sub_249F864E4();
        v41 = v40;
        sub_249F9ABB4();
        v42 = swift_allocObject();
        *(v42 + 16) = v113;
        *(v42 + 56) = MEMORY[0x277D83B88];
        *(v42 + 64) = MEMORY[0x277D83C10];
        *(v42 + 32) = v41;
        v43 = sub_249F9AC64();
        sub_249F9A874();

        return;
      }
    }

    __break(1u);
  }

  else
  {
    sub_249F9ABB4();
    v44 = sub_249F9AC64();
    sub_249F9A874();

LABEL_12:
    sub_249F9ABB4();
    v45 = sub_249F9AC64();
    sub_249F9A874();

    v46 = v105;
    sub_249F9A824();
    swift_beginAccess();
    v107 = (v106 + 40);
    v47 = 6;
    v108 = xmmword_249F9B930;
    v48 = v104;
    while (1)
    {
      v50 = v114[2];
      v49 = v114[3];

      LOBYTE(v50) = v50(v51);

      if (v50)
      {
        break;
      }

      sub_249F9A7F4();
      sub_249F9ABB4();
      v52 = swift_allocObject();
      *(v52 + 16) = v108;
      v53 = sub_249F9A814();
      v55 = v54;
      v56 = MEMORY[0x277D837D0];
      *(v52 + 56) = MEMORY[0x277D837D0];
      v57 = sub_249F7A16C();
      *(v52 + 64) = v57;
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      v58 = sub_249F9A814();
      *(v52 + 96) = v56;
      *(v52 + 104) = v57;
      *(v52 + 72) = v58;
      *(v52 + 80) = v59;
      v60 = sub_249F9AC64();
      sub_249F9A874();

      v61 = MEMORY[0x24C20A7A0]();
      v62 = v110;
      v63 = v114;
      sub_249F77F90(v46, v110, 600.0);
      objc_autoreleasePoolPop(v61);
      sub_249F9ABB4();
      v64 = swift_allocObject();
      *(v64 + 16) = v113;
      v65 = v63[4];
      *(v64 + 56) = MEMORY[0x277D83B88];
      *(v64 + 64) = MEMORY[0x277D83C10];
      *(v64 + 32) = v65;
      v66 = sub_249F9AC64();
      sub_249F9A874();

      if (*(*(v62 + 16) + 16) >= 0x1F4uLL)
      {
        (*(v106 + 8))(v48, v109);
LABEL_22:
        sub_249F864E4();
        v79 = v78;
        sub_249F9ABB4();
        v80 = swift_allocObject();
        *(v80 + 16) = v113;
        *(v80 + 56) = MEMORY[0x277D83B88];
        *(v80 + 64) = MEMORY[0x277D83C10];
        *(v80 + 32) = v79;
        v81 = sub_249F9AC64();
        sub_249F9A874();

        (*(v106 + 8))(v46, v109);
        return;
      }

      (*v107)(v46, v48, v109);
      if (!--v47)
      {
        goto LABEL_22;
      }
    }

    sub_249F9ABA4();
    v69 = sub_249F9AC64();
    sub_249F9A874();

    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB10, &unk_249F9B970) + 48);
    v71 = v103;
    (*(v106 + 16))(v103, v46, v109);
    *(v71 + v70) = 0x4082C00000000000;
    v72 = v102;
    swift_storeEnumTagMultiPayload();
    v73 = v99;
    (*(v99 + 56))(v71, 0, 1, v72);
    v74 = v71;
    v75 = v98;
    sub_249F7A914(v74, v98, &unk_27EF2CCC0, &unk_249F9B960);
    v76 = *(v73 + 48);
    if (v76(v75, 1, v72) == 1)
    {
      v77 = v101;
      swift_storeEnumTagMultiPayload();
      if (v76(v75, 1, v72) != 1)
      {
        sub_249F7A1C0(v75);
      }
    }

    else
    {
      v77 = v101;
      sub_249F7A2F8(v75, v101);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v83 = sub_249F9A9A4();

    *(inited + 192) = v83;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v77, v100);
    sub_249F9AA14();
    v84 = sub_249F9A9A4();

    *(inited + 216) = v84;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v85 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v86 = sub_249F9ABA4();
    v87 = sub_249F9AC64();
    if (os_log_type_enabled(v87, v86))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v115 = v89;
      *v88 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v90 = sub_249F9A974();
      v92 = sub_249F78A30(v90, v91, &v115);

      *(v88 + 4) = v92;
      v77 = v101;
      _os_log_impl(&dword_249F74000, v87, v86, "Sending failure analysis event: %s)", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x24C20AE50](v89, -1, -1);
      MEMORY[0x24C20AE50](v88, -1, -1);
    }

    v93 = sub_249F9A9A4();
    v94 = swift_allocObject();
    *(v94 + 16) = v85;
    v119 = sub_249F7A28C;
    v120 = v94;
    v115 = MEMORY[0x277D85DD0];
    v116 = 1107296256;
    v117 = sub_249F77EF4;
    v118 = &block_descriptor;
    v95 = _Block_copy(&v115);

    AnalyticsSendEventLazy();
    _Block_release(v95);

    sub_249F7A714(v77, type metadata accessor for TargetType);
    sub_249F7A1C0(v103);
    v96 = v114[4];
    (*(v106 + 8))(v105, v109);
  }
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

unint64_t sub_249F7798C()
{
  result = qword_27EF2CB00;
  if (!qword_27EF2CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CB00);
  }

  return result;
}

uint64_t sub_249F779E0(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnalyzableTarget(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_249F9AA04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9AB84();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v15 = sub_249F9AC64();
  sub_249F9A874();

  v22[0] = 0xD00000000000002ALL;
  v22[1] = 0x8000000249F9CEB0;
  sub_249F9A9F4();
  sub_249F7798C();
  v16 = sub_249F9ACA4();
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    nm_CRSetCrashLogMessage(v16 + 32);
  }

  *v9 = a1;
  type metadata accessor for TargetType(0);
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a2;
  v19 = v3[2];
  v20 = v3[3];

  sub_249F99AE8(v9, sub_249F7A35C, v18, v19, v20);

  sub_249F7A714(v9, type metadata accessor for AnalyzableTarget);
  return v3[4];
}

uint64_t sub_249F77C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    *(result + 32) = v8;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = *(result + 40);

      if (v9 != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  if (a3)
  {
    sub_249F85FFC(a1);
  }

  else
  {
    v10 = sub_249F9A9A4();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v15[4] = sub_249F7A97C;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_249F77EF4;
    v15[3] = &block_descriptor_29;
    v12 = _Block_copy(v15);

    AnalyticsSendEventLazy();
    _Block_release(v12);
  }

LABEL_10:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *(result + 41);

  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249F9B920;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v14 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

id sub_249F77EF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v5 = sub_249F9A954();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_249F77F90(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for AnalyzableTarget(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249F9AA04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9AB84();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v17 = sub_249F9AC64();
  sub_249F9A874();

  v26[0] = 0xD00000000000002BLL;
  v26[1] = 0x8000000249F9CFC0;
  sub_249F9A9F4();
  sub_249F7798C();
  v18 = sub_249F9ACA4();
  (*(v13 + 8))(v16, v12);
  if (v18)
  {
    nm_CRSetCrashLogMessage(v18 + 32);
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB10, &unk_249F9B970) + 48);
  v20 = sub_249F9A834();
  (*(*(v20 - 8) + 16))(v11, a1, v20);
  *&v11[v19] = a3;
  type metadata accessor for TargetType(0);
  swift_storeEnumTagMultiPayload();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a2;
  v23 = *(v4 + 16);
  v24 = *(v4 + 24);

  sub_249F99AE8(v11, sub_249F7AA24, v22, v23, v24);

  return sub_249F7A714(v11, type metadata accessor for AnalyzableTarget);
}

uint64_t sub_249F7828C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(result + 32) = v5;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = *(result + 40);

      if (v6 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  sub_249F85FFC(a1);
LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = *(result + 41);

  if (v7 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249F9B920;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v8 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

uint64_t MicrostackshotsCoordinator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MicrostackshotsCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_249F78488(uint64_t a1, id *a2)
{
  result = sub_249F9A9B4();
  *a2 = 0;
  return result;
}

uint64_t sub_249F78500(uint64_t a1, id *a2)
{
  v3 = sub_249F9A9C4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_249F78580@<X0>(uint64_t *a1@<X8>)
{
  sub_249F9A9D4();
  v2 = sub_249F9A9A4();

  *a1 = v2;
  return result;
}

uint64_t sub_249F785C4()
{
  v1 = *v0;
  v2 = sub_249F9A9D4();
  v3 = MEMORY[0x24C20A2B0](v2);

  return v3;
}

uint64_t sub_249F78600()
{
  v1 = *v0;
  sub_249F9A9D4();
  sub_249F9AA34();
}

uint64_t sub_249F78654()
{
  v1 = *v0;
  sub_249F9A9D4();
  sub_249F9AE64();
  sub_249F9AA34();
  v2 = sub_249F9AE84();

  return v2;
}

BOOL sub_249F786C8(void *a1, uint64_t *a2)
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

uint64_t sub_249F78744(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_249F9A9D4();
  v6 = v5;
  if (v4 == sub_249F9A9D4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_249F9ADF4();
  }

  return v9 & 1;
}

uint64_t sub_249F787E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_249F9A9A4();

  *a2 = v5;
  return result;
}

uint64_t sub_249F78828@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_249F9A9D4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_249F78854(uint64_t a1)
{
  v2 = sub_249F7A89C(&qword_27EF2CB48);
  v3 = sub_249F7A89C(&qword_27EF2CB50);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_249F788EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_249F78938(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB88, &qword_249F9BBE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_249F789D4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_249F78A30(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_249F78A30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249F78AFC(v11, 0, 0, 1, a1, a2);
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
    sub_249F7A984(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_249F78AFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_249F78C08(a5, a6);
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
    result = sub_249F9AD44();
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

uint64_t sub_249F78C08(uint64_t a1, unint64_t a2)
{
  v4 = sub_249F78C54(a1, a2);
  sub_249F78D84(&unk_285D1E458);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_249F78C54(uint64_t a1, unint64_t a2)
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

  v6 = sub_249F78938(v5, 0);
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

  result = sub_249F9AD44();
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
        v10 = sub_249F9AA84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249F78938(v10, 0);
        result = sub_249F9AD04();
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

uint64_t sub_249F78D84(uint64_t result)
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

  result = sub_249F78E70(result, v12, 1, v3);
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

char *sub_249F78E70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB88, &qword_249F9BBE8);
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

_BYTE **sub_249F78F64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_249F78F74()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x24C20AE60](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x24C20AE60](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = *&v1[4 * v4 + 32];
        v11 = *&v1[4 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_249F790BC(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[4 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_22;
        }

        *&v1[4 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

unint64_t sub_249F790D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBB0, &qword_249F9BC08);
    v3 = sub_249F9ADB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_249F86B30(v5, v6);
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

unint64_t sub_249F791D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB90, &unk_249F9BBF0);
    v3 = sub_249F9ADB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_249F86B30(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

char *sub_249F792D8()
{
  v116 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for TargetType(0);
  v107 = *(v0 - 8);
  v1 = *(v107 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v98 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v98 - v12;
  sub_249F9ABB4();
  v14 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v15 = sub_249F9AC64();
  sub_249F9A874();

  v16 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB98, &unk_249F9BF50);
  v17 = swift_allocObject();
  v100 = xmmword_249F9B920;
  *(v17 + 16) = xmmword_249F9B920;
  v108 = *MEMORY[0x277D0AC90];
  *(v17 + 32) = sub_249F9A9D4();
  *(v17 + 40) = v18;
  v19 = sub_249F9AB24();

  [v16 setEndowmentNamespaces_];

  [v16 setValues_];
  v20 = [objc_opt_self() predicateMatchingProcessTypeApplication];
  v21 = objc_opt_self();
  v110 = 0;
  v102 = v16;
  v22 = [v21 statesForPredicate:v20 withDescriptor:v16 error:&v110];
  v23 = v110;
  v103 = v14;
  if (v22)
  {
    v24 = v22;
    sub_249F7AA2C(0, &qword_27EF2CBA8, 0x277D46FA8);
    v25 = sub_249F9AB34();
    v26 = v23;

    v27 = (v25 & 0xFFFFFFFFFFFFFF8);
    if (v25 >> 62)
    {
      goto LABEL_56;
    }

    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v25; v28; i = v25)
    {
      v29 = 0;
      v98 = 0;
      v30 = i & 0xC000000000000001;
      v31 = i + 32;
      v99 = MEMORY[0x277D84F90];
      v25 = 0x278FBF000uLL;
      v104 = v28;
      v105 = v27;
      v106 = (i + 32);
      v107 = i & 0xC000000000000001;
      while (1)
      {
        if (v30)
        {
          v32 = MEMORY[0x24C20A4F0](v29, i);
        }

        else
        {
          if (v29 >= v27[2])
          {
            goto LABEL_55;
          }

          v32 = *(v31 + 8 * v29);
        }

        v33 = v32;
        if (__OFADD__(v29++, 1))
        {
          break;
        }

        if ([v32 *(v25 + 1784)] == 4 && (v35 = objc_msgSend(v33, sel_endowmentNamespaces)) != 0)
        {
          v36 = v35;
          v37 = sub_249F9AB54();

          v38 = sub_249F9A9D4();
          v40 = v39;
          if (*(v37 + 16))
          {
            v41 = v38;
            v42 = v20;
            v43 = *(v37 + 40);
            sub_249F9AE64();
            sub_249F9AA34();
            v44 = sub_249F9AE84();
            v45 = -1 << *(v37 + 32);
            v46 = v44 & ~v45;
            if (((*(v37 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
LABEL_21:

              v20 = v42;
LABEL_39:
              v28 = v104;
              v27 = v105;
              goto LABEL_40;
            }

            v47 = ~v45;
            while (1)
            {
              v48 = (*(v37 + 48) + 16 * v46);
              v49 = *v48 == v41 && v48[1] == v40;
              if (v49 || (sub_249F9ADF4() & 1) != 0)
              {
                break;
              }

              v46 = (v46 + 1) & v47;
              if (((*(v37 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v50 = [v33 process];
            v20 = v42;
            if (!v50)
            {

              goto LABEL_39;
            }

            v51 = v50;
            v52 = [v50 bundle];

            v28 = v104;
            v27 = v105;
            if (!v52 || (v53 = [v52 identifier], v52, !v53))
            {

              goto LABEL_40;
            }

            sub_249F9A9D4();

            v54 = [v33 process];
            if (!v54)
            {

              goto LABEL_23;
            }

            v55 = v54;
            v56 = [v54 pid];

            v57 = objc_allocWithZone(MEMORY[0x277CC1E70]);
            v58 = sub_249F9A9A4();

            v110 = 0;
            v59 = [v57 initWithBundleIdentifier:v58 allowPlaceholder:0 error:&v110];

            if (!v59)
            {
              v65 = v110;
              v66 = sub_249F9A714();

              swift_willThrow();
              v98 = 0;
              goto LABEL_40;
            }

            v60 = v110;
            v61 = [v59 developerType];

            v49 = v61 == 3;
            v31 = v106;
            v30 = v107;
            if (!v49)
            {
              goto LABEL_41;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_249F8E9E4(0, *(v99 + 2) + 1, 1, v99);
            }

            v63 = *(v99 + 2);
            v62 = *(v99 + 3);
            if (v63 >= v62 >> 1)
            {
              v99 = sub_249F8E9E4((v62 > 1), v63 + 1, 1, v99);
            }

            v64 = v99;
            *(v99 + 2) = v63 + 1;
            *&v64[4 * v63 + 32] = v56;
            v25 = 0x278FBF000;
            if (v29 == v28)
            {
              goto LABEL_58;
            }
          }

          else
          {

LABEL_23:

LABEL_40:
            v31 = v106;
            v30 = v107;
LABEL_41:
            v25 = 0x278FBF000;
            if (v29 == v28)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {

          if (v29 == v28)
          {
            goto LABEL_58;
          }
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v28 = sub_249F9AD84();
    }

    v99 = MEMORY[0x277D84F90];
LABEL_58:

    v89 = v99;
    v90 = *(v99 + 2);
    if (v90)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v104 = v4;
    v108 = v6;
    v67 = v110;
    v68 = sub_249F9A714();

    swift_willThrow();
    sub_249F9ABA4();
    v69 = sub_249F9AC64();
    sub_249F9A874();

    v70 = v107;
    (*(v107 + 56))(v13, 1, 1, v0);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_249F9AD14();
    MEMORY[0x24C20A200](0xD00000000000002ELL, 0x8000000249F9D0D0);
    v105 = v68;
    v109 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBA0, &qword_249F9BC00);
    sub_249F9AD54();
    sub_249F7A914(v13, v11, &unk_27EF2CCC0, &unk_249F9B960);
    v71 = *(v70 + 48);
    v72 = v71(v11, 1, v0);
    v106 = v13;
    if (v72 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v71(v11, 1, v0) != 1)
      {
        sub_249F7A1C0(v11);
      }
    }

    else
    {
      sub_249F7A2F8(v11, v108);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v74 = sub_249F9A9A4();

    *(inited + 72) = v74;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v75 = sub_249F9A9A4();

    *(inited + 192) = v75;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v76 = v108;
    sub_249F7A228(v108, v104);
    sub_249F9AA14();
    v77 = sub_249F9A9A4();

    *(inited + 216) = v77;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v78 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v79 = sub_249F9ABA4();
    v80 = sub_249F9AC64();
    if (os_log_type_enabled(v80, v79))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v110 = v82;
      *v81 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v83 = sub_249F9A974();
      v85 = sub_249F78A30(v83, v84, &v110);
      v76 = v108;

      *(v81 + 4) = v85;
      _os_log_impl(&dword_249F74000, v80, v79, "Sending failure analysis event: %s)", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x24C20AE50](v82, -1, -1);
      MEMORY[0x24C20AE50](v81, -1, -1);
    }

    v86 = sub_249F9A9A4();
    v87 = swift_allocObject();
    *(v87 + 16) = v78;
    v114 = sub_249F7ABC0;
    v115 = v87;
    v110 = MEMORY[0x277D85DD0];
    v111 = 1107296256;
    v112 = sub_249F77EF4;
    v113 = &block_descriptor_40;
    v88 = _Block_copy(&v110);

    AnalyticsSendEventLazy();
    _Block_release(v88);

    sub_249F7A714(v76, type metadata accessor for TargetType);
    sub_249F7A1C0(v106);
    v89 = MEMORY[0x277D84F90];
    v90 = *(MEMORY[0x277D84F90] + 16);
    if (v90)
    {
LABEL_59:
      sub_249F9ABB4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
      v93 = swift_allocObject();
      v94 = MEMORY[0x277D83B88];
      *(v93 + 16) = v100;
      v95 = MEMORY[0x277D83C10];
      *(v93 + 56) = v94;
      *(v93 + 64) = v95;
      *(v93 + 32) = v90;
      v96 = sub_249F9AC64();
      sub_249F9A874();

      v110 = v89;
      sub_249F78F74();

      result = v110;
      goto LABEL_60;
    }
  }

  sub_249F9ABA4();
  v91 = sub_249F9AC64();
  sub_249F9A874();

  result = 0;
LABEL_60:
  v97 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_249F7A16C()
{
  result = qword_27EF2CB08;
  if (!qword_27EF2CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CB08);
  }

  return result;
}

uint64_t sub_249F7A1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F7A228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_249F7A2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249F7A364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB68, &unk_249F9BF30);
  v3 = sub_249F9ADB4();

  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v5 = *(a1 + 96);
  v6 = *(a1 + 128);
  v37 = *(a1 + 112);
  v38 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v33 = v4;
  v34 = v7;
  v39 = *(a1 + 144);
  v35 = v8;
  v36 = v5;
  v10 = *(&v32 + 1);
  v9 = v32;
  sub_249F7A914(&v32, v31, &qword_27EF2CB70, &unk_249F9BBD0);
  result = sub_249F86B30(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 152);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 104 * result;
    v16 = v33;
    v17 = v35;
    *(v15 + 16) = v34;
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    *(v15 + 96) = v39;
    *(v15 + 64) = v19;
    *(v15 + 80) = v20;
    *(v15 + 48) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v13[1];
    v32 = *v13;
    v25 = v13[4];
    v26 = v13[6];
    v37 = v13[5];
    v38 = v26;
    v27 = v13[2];
    v28 = v13[3];
    v33 = v24;
    v34 = v27;
    v29 = (v13 + 120);
    v39 = *(v13 + 14);
    v35 = v28;
    v36 = v25;
    v10 = *(&v32 + 1);
    v9 = v32;
    sub_249F7A914(&v32, v31, &qword_27EF2CB70, &unk_249F9BBD0);
    result = sub_249F86B30(v9, v10);
    v13 = v29;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_249F7A53C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB58, &qword_249F9BBB8);
  v3 = sub_249F9ADB4();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_249F7A914(&v31, v30, &qword_27EF2CB60, &unk_249F9BBC0);
  result = sub_249F86B30(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 168);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 120 * result;
    v15 = v32;
    v16 = v33;
    v17 = v35;
    *(v14 + 32) = v34;
    *(v14 + 48) = v17;
    *v14 = v15;
    *(v14 + 16) = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    *(v14 + 112) = v39;
    *(v14 + 80) = v19;
    *(v14 + 96) = v20;
    *(v14 + 64) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 136);
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = *(v12 + 16);
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_249F7A914(&v31, v30, &qword_27EF2CB60, &unk_249F9BBC0);
    result = sub_249F86B30(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249F7A714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_249F7A89C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249F7A914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_249F7A984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249F7AA24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_249F7828C(a1);
}

uint64_t sub_249F7AA2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_249F7AA8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249F7AAAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249F7AAFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249F7AB1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_249F7AB58(uint64_t a1, unint64_t *a2)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249F7ABE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_249F7AC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_249F7ACB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_249F9A634();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = a1;
  *(&v50 + 1) = a2;
  v52 = 47;
  v53 = 0xE100000000000000;
  v45 = sub_249F7798C();
  v8 = sub_249F9AC74();
  v9 = v8;
  v10 = 0xE000000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v8 + 40);
    while (v12 < v9[2])
    {
      v2 = *(v13 - 1);
      v10 = *v13;
      *&v50 = 47;
      *(&v50 + 1) = 0xE100000000000000;

      MEMORY[0x24C20A200](v2, v10);
      MEMORY[0x24C20A200](v50, *(&v50 + 1));

      if (sub_249F9AAE4())
      {
        goto LABEL_8;
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        v2 = 0;
        v10 = 0xE000000000000000;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v2 = 0;
LABEL_8:

  if ((v2 || v10 != 0xE000000000000000) && (sub_249F9ADF4() & 1) == 0)
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v15 = sub_249F9A9A4();

    v9 = [v14 initWithPath_];

    if (!v9)
    {
      v50 = 0u;
      v51 = 0u;
      sub_249F7B2A0(&v50);
      goto LABEL_37;
    }

    v16 = [v9 infoDictionary];
    if (v16)
    {
      v17 = v16;
      v18 = sub_249F9A964();

      if (*(v18 + 16))
      {
        v19 = sub_249F86B30(0xD000000000000013, 0x8000000249F9D1B0);
        if (v20)
        {
          sub_249F7A984(*(v18 + 56) + 32 * v19, &v50);

          sub_249F7B2A0(&v50);
          v21 = [v9 infoDictionary];
          if (v21)
          {
            v22 = v21;
            v23 = sub_249F9A964();

            if (*(v23 + 16) && (v24 = sub_249F86B30(0xD000000000000013, 0x8000000249F9D1B0), (v25 & 1) != 0))
            {
              sub_249F7A984(*(v23 + 56) + 32 * v24, &v50);

              if (swift_dynamicCast())
              {
                goto LABEL_31;
              }
            }

            else
            {
            }
          }

          goto LABEL_24;
        }
      }
    }

    v50 = 0u;
    v51 = 0u;
    sub_249F7B2A0(&v50);
LABEL_24:
    v26 = [v9 infoDictionary];
    if (v26)
    {
      v27 = v26;
      v28 = sub_249F9A964();

      if (*(v28 + 16))
      {
        v29 = sub_249F86B30(0x656C646E75424643, 0xEC000000656D614ELL);
        if (v30)
        {
          sub_249F7A984(*(v28 + 56) + 32 * v29, &v50);

          sub_249F7B2A0(&v50);
          v31 = [v9 infoDictionary];
          if (!v31)
          {
            goto LABEL_45;
          }

          v32 = v31;
          v33 = sub_249F9A964();

          if (!*(v33 + 16) || (v34 = sub_249F86B30(0x656C646E75424643, 0xEC000000656D614ELL), (v35 & 1) == 0))
          {
LABEL_47:

            goto LABEL_38;
          }

          sub_249F7A984(*(v33 + 56) + 32 * v34, &v50);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_45:

            goto LABEL_38;
          }

LABEL_31:
          v36 = v49;
          v50 = v49;
          v37 = v46;
          sub_249F9A624();
          v38 = sub_249F9AC84();
          v40 = v39;
          (*(v47 + 8))(v37, v48);

          v41 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v41 = v38 & 0xFFFFFFFFFFFFLL;
          }

          if (v41)
          {
            v50 = v36;

            MEMORY[0x24C20A200](1886413102, 0xE400000000000000);

            v43 = *(&v50 + 1);
            v42 = v50;
            goto LABEL_39;
          }

          goto LABEL_47;
        }
      }
    }

LABEL_37:
    v50 = 0u;
    v51 = 0u;
    sub_249F7B2A0(&v50);
    goto LABEL_38;
  }

LABEL_38:
  v42 = 0;
  v43 = 0xE000000000000000;
LABEL_39:
  if (!v42 && v43 == 0xE000000000000000 || (sub_249F9ADF4() & 1) != 0)
  {
  }

  else
  {

    return v42;
  }

  return v2;
}

uint64_t sub_249F7B2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CBC8, &qword_249F9C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F7B308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v41 = a1;
  *&v48 = a1;
  *(&v48 + 1) = a2;
  *&v44 = 47;
  *(&v44 + 1) = 0xE100000000000000;
  sub_249F7798C();
  *(&v41 + 1) = a2;

  result = sub_249F9AC74();
  v5 = result;
  v55 = 0;
  v56 = 0xE000000000000000;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (result + 40);
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v8 - 1);
      v9 = *v8;
      *&v48 = 47;
      *(&v48 + 1) = 0xE100000000000000;

      MEMORY[0x24C20A200](v10, v9);
      MEMORY[0x24C20A200](47, 0xE100000000000000);

      if (sub_249F9AAE4())
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249F9B920;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_249F7A16C();
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;
    sub_249F7B7E8();

    v12 = sub_249F9AC64();
    sub_249F9A874();

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_6:

    v9 = 0xE000000000000000;
  }

  if (v9 == 0xE000000000000000)
  {

LABEL_11:
    v14 = a3;

LABEL_12:
    v15 = 0;
    v16 = 0;
    goto LABEL_13;
  }

LABEL_10:
  v13 = sub_249F9ADF4();

  if (v13)
  {
    goto LABEL_11;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v25 = sub_249F9A9A4();

  v26 = [v24 initWithPath_];

  v14 = a3;
  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = [v26 bundleIdentifier];
  if (v27)
  {
    v28 = v27;
    v15 = sub_249F9A9D4();
    v16 = v29;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v30 = [v26 infoDictionary];
  if (v30)
  {
    v31 = v30;
    v32 = sub_249F9A964();

    if (*(v32 + 16) && (v33 = sub_249F86B30(0xD00000000000001ALL, 0x8000000249F9D220), (v34 & 1) != 0))
    {
      sub_249F7A984(*(v32 + 56) + 32 * v33, &v48);

      if (swift_dynamicCast())
      {
        v18 = *(&v44 + 1);
        v17 = v44;

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v35 = [v26 infoDictionary];
  if (v35)
  {
    v36 = v35;
    v37 = sub_249F9A964();

    if (*(v37 + 16))
    {
      v38 = sub_249F86B30(0x656C646E75424643, 0xEF6E6F6973726556);
      if (v39)
      {
        sub_249F7A984(*(v37 + 56) + 32 * v38, &v48);

        v40 = swift_dynamicCast();
        if (v40)
        {
          v17 = v44;
        }

        else
        {
          v17 = 0;
        }

        if (v40)
        {
          v18 = *(&v44 + 1);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_13:
  v17 = 0;
  v18 = 0;
LABEL_14:
  v19 = sub_249F7ACB0(v41, *(&v41 + 1));
  v21 = v20;

  v44 = v41;
  *&v45 = v15;
  *(&v45 + 1) = v16;
  *&v46 = v17;
  *(&v46 + 1) = v18;
  *&v47 = v19;
  *(&v47 + 1) = v21;
  v48 = v41;
  v49 = v15;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v21;
  sub_249F7B834(&v44, v43);
  result = sub_249F7B86C(&v48);
  v22 = v45;
  *v14 = v44;
  v14[1] = v22;
  v23 = v47;
  v14[2] = v46;
  v14[3] = v23;
  return result;
}

unint64_t sub_249F7B7E8()
{
  result = qword_27EF2CC10;
  if (!qword_27EF2CC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2CC10);
  }

  return result;
}

uint64_t sub_249F7B8C4(uint64_t a1, uint64_t a2)
{
  sub_249F7E1BC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      v8 = MEMORY[0x24C20A7A0]();
      v9 = sub_249F7E828(v7);
      sub_249F7FB7C(v9);
      sub_249F80228(v10);

      [v9 symbolicate];
      [v9 postprocess];
      sub_249F7B9AC(a1, a2, v9);

      objc_autoreleasePoolPop(v8);
      --v5;
    }

    while (v5);
  }
}

void sub_249F7B9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v210 = a2;
  v209 = a1;
  v194 = sub_249F9A864();
  v4 = *(v194 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_249F7A364(MEMORY[0x277D84F90]);
  if ([a3 numSamples] < 1)
  {
    v217 = 0;
    goto LABEL_108;
  }

  sub_249F9AB94();
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249F9B920;
  v8 = [a3 tasksByUniquePid];
  v9 = sub_249F7AA2C(0, &qword_27EF2CC80, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC88, &qword_249F9BDF8);
  v10 = sub_249F804C4();
  v11 = sub_249F9A964();

  v12 = *(v11 + 16);

  v13 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v13;
  *(v7 + 32) = v12;
  v185 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v14 = sub_249F9AC64();
  sub_249F9A874();

  v15 = [a3 tasksByUniquePid];
  v196 = v9;
  v190 = v10;
  v16 = sub_249F9A964();

  v217 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = 0x8000000249F9D500;
  v25 = 0x8000000249F9D520;
  v26 = (v4 + 8);
  v208 = &v218[2];
  v189 = xmmword_249F9BD20;
  v27 = xmmword_249F9B930;
LABEL_6:
  v28 = MEMORY[0x277D837D0];
  do
  {
    if (!v22)
    {
      do
      {
        v29 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_110;
        }

        if (v29 >= v23)
        {
          goto LABEL_107;
        }

        v22 = *(v19 + 8 * v29);
        ++v18;
      }

      while (!v22);
      v18 = v29;
    }

    v30 = *(*(v16 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v22)))));
    if (v30 >> 62)
    {
      v173 = v16;
      v32 = v19;
      v33 = v18;
      v34 = v23;
      v216 = v17;
      v35 = v24;
      v36 = v25;
      v37 = v26;
      v38 = v22;
      v180 = v27;
      v39 = v28;
      v182 = v30;
      v40 = sub_249F9AD84();
      v30 = v182;
      v28 = v39;
      v27 = v180;
      v22 = v38;
      v26 = v37;
      v25 = v36;
      v24 = v35;
      v17 = v216;
      v23 = v34;
      v18 = v33;
      v19 = v32;
      v31 = v40;
      v16 = v173;
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 &= v22 - 1;
  }

  while (!v31);
  v180 = v27;
  v169 = v22;
  v170 = v23;
  v181 = v26;
  v182 = v30;
  v171 = v18;
  v172 = v19;
  v173 = v16;
  v184 = v30 & 0xC000000000000001;
  v178 = v30 & 0xFFFFFFFFFFFFFF8;
  v179 = v24;
  v176 = v25;
  v177 = v30 + 32;

  v41 = 0;
  v183 = v31;
  while (1)
  {
    if (v184)
    {
      v42 = MEMORY[0x24C20A4F0](v41, v182);
    }

    else
    {
      if (v41 >= *(v178 + 16))
      {
        goto LABEL_116;
      }

      v42 = *(v177 + 8 * v41);
    }

    v43 = v42;
    v44 = __OFADD__(v41, 1);
    v45 = v41 + 1;
    if (v44)
    {
      goto LABEL_115;
    }

    v46 = [v42 bundleIdentifier];
    v192 = v45;
    if (v46)
    {

      v47 = [v43 bundleIdentifier];
      if (!v47)
      {
        goto LABEL_117;
      }

      v48 = v47;
      v49 = sub_249F9A9D4();
      v51 = v50;

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v53 = sub_249F9AB94();
        v54 = swift_allocObject();
        *(v54 + 16) = v180;
        v55 = [v43 mainBinaryPath];
        if (v55)
        {
          v56 = v55;
          v57 = sub_249F9A9D4();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v60 = MEMORY[0x277D837D0];
        *(v54 + 56) = MEMORY[0x277D837D0];
        v61 = sub_249F7A16C();
        *(v54 + 64) = v61;
        v62 = 0xD000000000000013;
        if (v59)
        {
          v62 = v57;
        }

        v63 = v179;
        if (v59)
        {
          v63 = v59;
        }

        *(v54 + 32) = v62;
        *(v54 + 40) = v63;
        v64 = [v43 bundleIdentifier];
        if (v64)
        {
          LODWORD(v216) = v53;
          v65 = v64;
          v66 = sub_249F9A9D4();
          v68 = v67;

          v69 = (v54 + 72);
          *(v54 + 96) = v60;
          *(v54 + 104) = v61;
          if (v68)
          {
            *v69 = v66;
LABEL_40:
            *(v54 + 80) = v68;
            v70 = sub_249F9AC64();
            sub_249F9A874();

            goto LABEL_41;
          }
        }

        else
        {
          v69 = (v54 + 72);
          *(v54 + 96) = v60;
          *(v54 + 104) = v61;
        }

        *v69 = 0xD000000000000019;
        v68 = v176;
        goto LABEL_40;
      }
    }

LABEL_41:
    v71 = v43;
    v72 = [v71 mainBinaryPath];
    if (!v72)
    {

LABEL_107:

LABEL_108:

      sub_249F8052C(v217);
      return;
    }

    v73 = v72;
    v214 = sub_249F9A9D4();
    v215 = v74;

    v75 = [v71 bundleIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = sub_249F9A9D4();
      v79 = v78;
    }

    else
    {
      v77 = 0;
      v79 = 0;
    }

    v213 = v71;
    v80 = [v71 bundleShortVersion];
    if (v80)
    {
      v81 = v80;
      v82 = sub_249F9A9D4();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v85 = v215;

    v86 = v214;
    v87 = sub_249F7ACB0(v214, v85);
    *&v224 = v86;
    *(&v224 + 1) = v85;
    *&v225 = v77;
    *(&v225 + 1) = v79;
    *&v226 = v82;
    *(&v226 + 1) = v84;
    *&v227 = v87;
    *(&v227 + 1) = v88;
    v222[0] = v86;
    v222[1] = v85;
    v222[2] = v77;
    v222[3] = v79;
    v222[4] = v82;
    v222[5] = v84;
    v222[6] = v87;
    v222[7] = v88;
    sub_249F7B834(&v224, v221);
    sub_249F7B86C(v222);
    type metadata accessor for MachOParser();
    swift_allocObject();

    v200 = sub_249F85C5C(v86, v85, sub_249F7C9A0, 0);
    v89 = [v213 mainBinary];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 uuid];

      v92 = v193;
      sub_249F9A854();

      v212 = sub_249F9A844();
      v216 = v93;
      (*v181)(v92, v194);
    }

    else
    {
      v212 = 0;
      v216 = 0xE000000000000000;
    }

    v94 = v214;
    v95 = sub_249F88BD4();
    v96 = sub_249F9A1B8(v94);
    v98 = v97;
    v99 = v200[2];
    v100 = v200[3];

    v101 = sub_249F9A9A4();

    v102 = nm_extractTeamID(v101);

    if (v102)
    {
      v103 = sub_249F9A9D4();
      v105 = v104;
    }

    else
    {
      v103 = 0;
      v105 = 0xE000000000000000;
    }

    v106 = v200[2];
    v107 = v200[3];

    v108 = sub_249F9A9A4();

    v109 = nm_extractCDHash(v108);

    if (v109)
    {
      v110 = sub_249F9A9D4();
      v112 = v111;
    }

    else
    {
      v110 = 0;
      v112 = 0xE000000000000000;
    }

    v113 = sub_249F80F98();
    v228[0] = v212;
    v228[1] = v216;
    if (v114)
    {
      v115 = v113;
    }

    else
    {
      v115 = 0;
    }

    v116 = 0xE000000000000000;
    if (v114)
    {
      v116 = v114;
    }

    v229 = v95;
    v230 = v96;
    v231 = v98;
    v232 = v103;
    v233 = v105;
    v234 = v110;
    v235 = v112;
    v236 = v115;
    v237 = v116;
    v238 = v189;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v221[0] = v223;
    v223 = 0x8000000000000000;
    sub_249F87A8C(v228, v214, v215, isUniquelyReferenced_nonNull_native);
    v223 = *&v221[0];

    v118 = v213;
    v119 = [v213 threads];

    v195 = sub_249F7AA2C(0, &qword_27EF2CCA0, 0x277D4B468);
    v120 = sub_249F9A964();

    if ((v120 & 0xC000000000000001) != 0)
    {
      v121 = sub_249F9AD64();
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v120 = v121 | 0x8000000000000000;
    }

    else
    {
      v125 = -1 << *(v120 + 32);
      v122 = v120 + 64;
      v123 = ~v125;
      v126 = -v125;
      v127 = v126 < 64 ? ~(-1 << v126) : -1;
      v124 = v127 & *(v120 + 64);
    }

    v128 = 0;
    v191 = v123;
    v129 = (v123 + 64) >> 6;
    v201 = v129;
LABEL_69:
    if ((v120 & 0x8000000000000000) != 0)
    {
      break;
    }

    v130 = v128;
    v131 = v124;
    v132 = v128;
    if (v124)
    {
LABEL_74:
      v205 = (v131 - 1) & v131;
      v206 = v132;
      v133 = (v132 << 9) | (8 * __clz(__rbit64(v131)));
      v134 = *(*(v120 + 56) + v133);
      v135 = *(*(v120 + 48) + v133);
      v136 = v134;
      if (v135)
      {
        goto LABEL_78;
      }
    }

    else
    {
      while (1)
      {
        v132 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_111;
        }

        if (v132 >= v129)
        {
          break;
        }

        v131 = *(v122 + 8 * v132);
        ++v130;
        if (v131)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_17:
    sub_249F8053C();

    sub_249F7B86C(&v224);

    v41 = v192;
    if (v192 == v183)
    {

      v19 = v172;
      v16 = v173;
      v23 = v170;
      v18 = v171;
      v24 = v179;
      v25 = v176;
      v26 = v181;
      v22 = v169;
      v27 = v180;
      goto LABEL_6;
    }
  }

  v137 = sub_249F9AD74();
  if (!v137)
  {
    goto LABEL_17;
  }

  v139 = v138;
  v220[0] = v137;
  swift_dynamicCast();
  v135 = *&v221[0];
  v220[0] = v139;
  swift_dynamicCast();
  v136 = *&v221[0];
  v205 = v124;
  v206 = v128;
  if (!v135)
  {
    goto LABEL_17;
  }

LABEL_78:
  v203 = v135;
  v204 = v136;
  v140 = [v136 threadStates];
  sub_249F7AA2C(0, &qword_27EF2CCA8, 0x277D4B470);
  v141 = sub_249F9AB34();

  if (v141 >> 62)
  {
    v142 = sub_249F9AD84();
    v143 = v204;
    if (!v142)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v143 = v204;
    if (!v142)
    {
LABEL_80:

      v124 = v205;
      v128 = v206;
      v129 = v201;
      goto LABEL_69;
    }
  }

  v197 = v142;
  v144.n128_f64[0] = sub_249F80544(v221);
  v145 = 0;
  v198 = v141;
  v199 = v141 & 0xC000000000000001;
  v187 = v141 + 32;
  v188 = v141 & 0xFFFFFFFFFFFFFF8;
  v174 = v122;
  v175 = v120;
  if ((v141 & 0xC000000000000001) != 0)
  {
LABEL_83:
    v146 = MEMORY[0x24C20A4F0](v145, v141, v144);
    goto LABEL_86;
  }

  while (2)
  {
    if (v145 >= *(v188 + 16))
    {
      goto LABEL_114;
    }

    v146 = *(v187 + 8 * v145);
LABEL_86:
    v207 = v146;
    v44 = __OFADD__(v145, 1);
    v147 = v145 + 1;
    if (v44)
    {
      goto LABEL_112;
    }

    v202 = v147;
    memcpy(v220, v221, sizeof(v220));
    v219 = 0;
    v148 = [v207 stack];
    sub_249F7AA2C(0, &qword_27EF2CCB0, 0x277D4B428);
    v149 = sub_249F9AB34();

    if (!(v149 >> 62))
    {
      v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v150)
      {
        break;
      }

      goto LABEL_100;
    }

    v150 = sub_249F9AD84();
    if (!v150)
    {
LABEL_100:

      memcpy(v218, v220, sizeof(v218));
      sub_249F806B8(v218, &qword_27EF2CCB8, &unk_249F9BE00);
      v145 = v202;
      if (v202 == v197)
      {

        v122 = v174;
        v120 = v175;
        v129 = v201;
        v124 = v205;
        v128 = v206;
        goto LABEL_69;
      }

      v141 = v198;
      if (v199)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  if (v150 < 1)
  {
    goto LABEL_113;
  }

  v151 = 0;
  v216 = v149 & 0xC000000000000001;
  v212 = v150;
  while (2)
  {
    if (v216)
    {
      v152 = MEMORY[0x24C20A4F0](v151, v149);
    }

    else
    {
      v152 = *(v149 + 8 * v151 + 32);
    }

    v153 = v152;
    v154 = [v152 instruction];
    if (!v154)
    {

      goto LABEL_92;
    }

    v155 = v154;
    v156 = swift_allocObject();
    v157 = v225;
    *(v156 + 40) = v224;
    *(v156 + 56) = v157;
    v158 = v227;
    *(v156 + 72) = v226;
    v159 = v214;
    v160 = v215;
    *(v156 + 16) = v153;
    *(v156 + 24) = v159;
    *(v156 + 32) = v160;
    *(v156 + 88) = v158;
    v161 = v213;
    *(v156 + 104) = &v223;
    *(v156 + 112) = v161;
    *(v156 + 120) = v220;
    v162 = v210;
    *(v156 + 128) = v209;
    *(v156 + 136) = v162;
    v163 = v211;
    *(v156 + 144) = &v219;
    *(v156 + 152) = v163;
    v164 = v161;

    sub_249F7B834(&v224, v218);
    v165 = v153;

    sub_249F8052C(v217);
    v166 = swift_allocObject();
    *(v166 + 16) = sub_249F80584;
    *(v166 + 24) = v156;
    v218[4] = sub_249F805C4;
    v218[5] = v166;
    v218[0] = MEMORY[0x277D85DD0];
    v218[1] = 1107296256;
    v218[2] = sub_249F7E140;
    v218[3] = &block_descriptor_51;
    v167 = _Block_copy(v218);

    [v155 enumerateSymbols_];

    _Block_release(v167);
    LOBYTE(v155) = swift_isEscapingClosureAtFileLocation();

    if ((v155 & 1) == 0)
    {
      v17 = v156;
      v217 = sub_249F80584;
      v150 = v212;
LABEL_92:
      if (v150 == ++v151)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

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
}

uint64_t sub_249F7C9A8(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8, void *a9, uint64_t *a10, void (*a11)(void, void), uint64_t a12, void *a13, uint64_t a14)
{
  v208 = a7;
  v209 = a5;
  v210 = a6;
  v205 = a1;
  v213 = type metadata accessor for TargetType(0);
  v206 = *(v213 - 8);
  v16 = *(v206 + 64);
  v17 = MEMORY[0x28223BE20](v213);
  v212 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v192 - v20;
  MEMORY[0x28223BE20](v19);
  v203 = &v192 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v211 = &v192 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v202 = &v192 - v31;
  MEMORY[0x28223BE20](v30);
  v204 = &v192 - v32;
  v33 = sub_249F9A864();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [a4 instruction];
  v207 = v21;
  if (!v38)
  {
    goto LABEL_11;
  }

  v39 = v38;
  v40 = [v38 binary];

  if (!v40)
  {
    goto LABEL_11;
  }

  v41 = [v40 path];

  if (!v41)
  {
    goto LABEL_11;
  }

  v200 = sub_249F9A9D4();
  v201 = v42;

  v43 = [a4 instruction];
  if (!v43 || (v44 = v43, v45 = [v43 binary], v44, !v45))
  {

LABEL_11:
    v64 = v206;
    v65 = v208;
    v66 = v211;
    v67 = v213;
    (*(v206 + 56))(v211, 1, 1, v213);
    v209 = sub_249F9A1B8(v209);
    v210 = v68;
    v70 = v65[6];
    v69 = v65[7];
    v72 = v65[2];
    v71 = v65[3];
    v73 = v65[4];
    v74 = v65[5];
    v205 = v73;
    sub_249F805EC(v66, v27);
    v75 = *(v64 + 48);
    if (v75(v27, 1, v67) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v75(v27, 1, v67) != 1)
      {
        sub_249F806B8(v27, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v27, v212);
    }

    v76 = 0x206E776F6E6B6E75;
    if (v69)
    {
      v76 = v70;
    }

    v206 = v76;
    if (v71)
    {
      v77 = v72;
    }

    else
    {
      v77 = 0xD000000000000011;
    }

    v78 = 0xD000000000000016;
    if (v74)
    {
      v78 = v205;
    }

    v204 = v77;
    v205 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_249F9B940;
    *(v79 + 32) = 0x74536E6F6D656164;
    v208 = (v79 + 32);
    *(v79 + 40) = 0xEB00000000657461;

    *(v79 + 48) = sub_249F9A9A4();
    *(v79 + 56) = 0xD000000000000012;
    *(v79 + 64) = 0x8000000249F9CCF0;
    *(v79 + 72) = sub_249F9A9A4();
    *(v79 + 80) = 0x546572756C696166;
    *(v79 + 88) = 0xEB00000000657079;
    *(v79 + 96) = sub_249F9A9A4();
    strcpy((v79 + 104), "targetBundleID");
    *(v79 + 119) = -18;
    v80 = sub_249F9A9A4();

    *(v79 + 120) = v80;
    *(v79 + 128) = 0xD000000000000013;
    *(v79 + 136) = 0x8000000249F9CD10;
    v81 = sub_249F9A9A4();

    *(v79 + 144) = v81;
    *(v79 + 152) = 0x614E746567726174;
    *(v79 + 160) = 0xEA0000000000656DLL;
    v82 = sub_249F9A9A4();

    *(v79 + 168) = v82;
    *(v79 + 176) = 0x6150746567726174;
    *(v79 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v209);

    v83 = sub_249F9A9A4();

    *(v79 + 192) = v83;
    *(v79 + 200) = 0x7954746567726174;
    *(v79 + 208) = 0xEA00000000006570;
    v84 = v212;
    sub_249F7A228(v212, v207);
    sub_249F9AA14();
    v85 = sub_249F9A9A4();

    *(v79 + 216) = v85;
    *(v79 + 224) = 1701869940;
    *(v79 + 232) = 0xE400000000000000;
    *(v79 + 240) = sub_249F9AB64();
    strcpy((v79 + 248), "failureRetries");
    *(v79 + 263) = -18;
    *(v79 + 264) = sub_249F9AB64();
    v86 = sub_249F791D4(v79);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v87 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v88 = sub_249F9AC64();
    if (os_log_type_enabled(v88, v87))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v247 = v90;
      *v89 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v91 = sub_249F9A974();
      v93 = sub_249F78A30(v91, v92, &v247);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_249F74000, v88, v87, "Sending failure analysis event: %s)", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x24C20AE50](v90, -1, -1);
      MEMORY[0x24C20AE50](v89, -1, -1);
    }

    v94 = sub_249F9A9A4();
    v95 = swift_allocObject();
    *(v95 + 16) = v86;
    *&v249 = sub_249F7A28C;
    *(&v249 + 1) = v95;
    *&v247 = MEMORY[0x277D85DD0];
    *(&v247 + 1) = 1107296256;
    *&v248 = sub_249F77EF4;
    *(&v248 + 1) = &block_descriptor_57;
    v96 = _Block_copy(&v247);

    AnalyticsSendEventLazy();
    _Block_release(v96);

    sub_249F8065C(v84);
    v97 = v211;
    return sub_249F806B8(v97, &unk_27EF2CCC0, &unk_249F9B960);
  }

  v46 = [v45 uuid];

  sub_249F9A854();
  v211 = sub_249F9A844();
  v212 = v47;
  (*(v34 + 8))(v37, v33);
  v48 = v201;
  if (!*(*a8 + 16) || (v49 = a8, v50 = *a8, , sub_249F86B30(v200, v48), v52 = v51, , (v52 & 1) == 0))
  {
    type metadata accessor for MachOParser();
    swift_allocObject();

    v53 = v200;
    v54 = sub_249F85C5C(v200, v48, sub_249F7C9A0, 0);
    LODWORD(v199) = sub_249F88BD4();
    v55 = sub_249F9A1B8(v53);
    v197 = v56;
    v198 = v55;
    v57 = v54[2];
    v58 = v54[3];

    v59 = sub_249F9A9A4();

    v60 = nm_extractTeamID(v59);

    if (v60)
    {
      v61 = sub_249F9A9D4();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0xE000000000000000;
    }

    v99 = v54[2];
    v100 = v54[3];

    v101 = sub_249F9A9A4();

    v102 = nm_extractCDHash(v101);

    if (v102)
    {
      v103 = sub_249F9A9D4();
      v105 = v104;
    }

    else
    {
      v103 = 0;
      v105 = 0xE000000000000000;
    }

    v106 = sub_249F80F98();
    if (v107)
    {
      v108 = v106;
    }

    else
    {
      v108 = 0;
    }

    v109 = 0xE000000000000000;
    if (v107)
    {
      v109 = v107;
    }

    v279[0] = v211;
    v279[1] = v212;
    v280 = v199;
    v281 = v198;
    v282 = v197;
    v283 = v61;
    v284 = v63;
    v285 = v103;
    v286 = v105;
    v287 = v108;
    v288 = v109;
    v289 = xmmword_249F9BD20;

    v48 = v201;
    v49 = a8;
    sub_249F85ADC(v279, v200, v201, &v247);

    v232[4] = v251;
    v232[5] = v252;
    *&v232[6] = v253;
    v232[0] = v247;
    v232[1] = v248;
    v232[3] = v250;
    v232[2] = v249;
    sub_249F806B8(v232, &qword_27EF2CCE0, &qword_249F9BE20);
  }

  if (!*(*v49 + 16) || (sub_249F86B30(v209, v210), (v110 & 1) == 0) || !*(*v49 + 16) || (result = sub_249F86B30(v200, v48), (v111 & 1) == 0))
  {
  }

  v112 = *v49;
  if (!*(*v49 + 16))
  {
    __break(1u);
    goto LABEL_81;
  }

  result = sub_249F86B30(v209, v210);
  if ((v113 & 1) == 0)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v114 = *(v112 + 56) + 104 * result;
  v115 = *v114;
  v116 = *(v114 + 16);
  v235 = *(v114 + 32);
  v234 = v116;
  v117 = *(v114 + 48);
  v118 = *(v114 + 64);
  v119 = *(v114 + 80);
  v239 = *(v114 + 96);
  v238 = v119;
  v237 = v118;
  v236 = v117;
  v233 = v115;
  v120 = *v49;
  if (!*(*v49 + 16))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  sub_249F80718(&v233, &v247);
  v121 = sub_249F86B30(v200, v48);
  v123 = v122;

  if ((v123 & 1) == 0)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v124 = *(v120 + 56) + 104 * v121;
  v126 = *(v124 + 16);
  v125 = *(v124 + 32);
  v240 = *v124;
  v241 = v126;
  v242 = v125;
  v127 = *(v124 + 48);
  v128 = *(v124 + 64);
  v129 = *(v124 + 80);
  v246 = *(v124 + 96);
  v245 = v129;
  v244 = v128;
  v243 = v127;
  sub_249F80718(&v240, &v247);
  v130 = v205;
  v131 = [v205 name];
  if (v131)
  {
    v132 = v131;
    v212 = sub_249F9A9D4();
    v199 = v133;
  }

  else
  {
    v212 = 0;
    v199 = 0xE000000000000000;
  }

  *&v247 = [v130 offsetIntoSegment];
  v211 = sub_249F9ADE4();
  v205 = v134;
  v135 = [a4 instruction];
  if (v135 && (v136 = v135, v137 = [v135 binary], v136, v137) && (v138 = objc_msgSend(v137, sel_path), v137, v138))
  {
    v139 = sub_249F9A9D4();

    v140 = sub_249F9A1B8(v139);
    v200 = v141;
    v201 = v140;
  }

  else
  {
    v200 = 0xE000000000000000;
    v201 = 0;
  }

  v142 = [a9 architectureString];
  if (v142)
  {
    v143 = v142;
    v144 = sub_249F9A9D4();
    v196 = v145;
    v197 = v144;
  }

  else
  {
    v196 = 0xE000000000000000;
    v197 = 0;
  }

  v198 = a13;
  v192 = a12;
  v193 = a11;
  memcpy(v232, a10, sizeof(v232));
  if (get_enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0(v232) == 1)
  {
    v195 = 0;
    v146 = 0xE000000000000000;
  }

  else
  {
    v147 = a10[23];
    v195 = a10[22];
    v146 = v147;
  }

  memcpy(v231, a10, sizeof(v231));
  enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0 = get_enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0(v231);
  v194 = a10;
  if (enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0 == 1)
  {
    v149 = 0;
    v150 = 0xE000000000000000;
  }

  else
  {
    v149 = *a10;
    v150 = a10[1];
  }

  v226 = v237;
  v227 = v238;
  v222 = v233;
  v223 = v234;
  v224 = v235;
  v225 = v236;
  v215 = v240;
  v216 = v241;
  v219 = v244;
  v220 = v245;
  v217 = v242;
  v218 = v243;
  v250 = v233;
  v251 = v234;
  v254 = v237;
  v255 = v238;
  v252 = v235;
  v253 = v236;
  v259 = v242;
  v258 = v241;
  v257 = v240;
  v228 = v239;
  v221 = v246;
  *&v247 = v212;
  v151 = v199;
  *(&v247 + 1) = v199;
  *&v248 = v211;
  *(&v248 + 1) = v205;
  *&v249 = v201;
  *(&v249 + 1) = v200;
  v256 = v239;
  v263 = v246;
  v262 = v245;
  v261 = v244;
  v260 = v243;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  v264 = 0u;
  v271 = 0;
  v152 = v196;
  v153 = v197;
  v272 = v197;
  v273 = v196;
  v274 = 1;
  v154 = v195;
  v275 = v195;
  v276 = v146;
  v277 = v149;
  v278 = v150;
  v193(&v247, v208);
  v229[7] = v226;
  v229[8] = v227;
  v229[3] = v222;
  v229[4] = v223;
  v229[5] = v224;
  v229[6] = v225;
  *(&v229[12] + 8) = v218;
  *(&v229[13] + 8) = v219;
  *(&v229[14] + 8) = v220;
  *(&v229[9] + 8) = v215;
  *(&v229[10] + 8) = v216;
  *&v229[0] = v212;
  *(&v229[0] + 1) = v151;
  *&v229[1] = v211;
  *(&v229[1] + 1) = v205;
  *&v229[2] = v201;
  *(&v229[2] + 1) = v200;
  *&v229[9] = v228;
  *(&v229[15] + 1) = v221;
  *(&v229[11] + 8) = v217;
  memset(&v229[16], 0, 120);
  *(&v229[23] + 1) = v153;
  *&v229[24] = v152;
  *(&v229[24] + 1) = 1;
  *&v229[25] = v154;
  *(&v229[25] + 1) = v146;
  *&v229[26] = v149;
  *(&v229[26] + 1) = v150;
  nullsub_1(v229);
  memcpy(v230, v194, sizeof(v230));
  memcpy(v194, v229, 0x1B0uLL);
  result = sub_249F806B8(v230, &qword_27EF2CCB8, &unk_249F9BE00);
  if (__OFADD__(*v198, 1))
  {
    goto LABEL_84;
  }

  ++*v198;
  v156 = *(a14 + 24);
  v155 = *(a14 + 32);

  LOBYTE(v156) = v156(v157);

  v158 = v213;
  if (v156)
  {
    sub_249F9ABA4();
    v212 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v159 = sub_249F9AC64();
    sub_249F9A874();

    v160 = v206;
    v161 = v204;
    (*(v206 + 56))(v204, 1, 1, v158);
    v210 = sub_249F9A1B8(v209);
    v211 = v162;
    v164 = v208[6];
    v163 = v208[7];
    v165 = v208[3];
    v205 = v208[2];
    v166 = v208[5];
    v209 = v208[4];
    v167 = v161;
    v168 = v202;
    sub_249F805EC(v167, v202);
    v169 = *(v160 + 48);
    if (v169(v168, 1, v158) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v169(v168, 1, v158) != 1)
      {
        sub_249F806B8(v168, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v168, v203);
    }

    v170 = 0x206E776F6E6B6E75;
    if (v163)
    {
      v170 = v164;
    }

    v208 = v170;
    v171 = 0xEC000000656D616ELL;
    if (v163)
    {
      v171 = v163;
    }

    v206 = v171;
    v172 = 0xD000000000000011;
    if (v165)
    {
      v172 = v205;
    }

    v202 = v172;
    v173 = v209;
    if (!v166)
    {
      v173 = 0xD000000000000016;
    }

    v205 = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v174 = swift_allocObject();
    *(v174 + 16) = xmmword_249F9B940;
    *(v174 + 32) = 0x74536E6F6D656164;
    v209 = (v174 + 32);
    *(v174 + 40) = 0xEB00000000657461;

    *(v174 + 48) = sub_249F9A9A4();
    *(v174 + 56) = 0xD000000000000012;
    *(v174 + 64) = 0x8000000249F9CCF0;
    *(v174 + 72) = sub_249F9A9A4();
    *(v174 + 80) = 0x546572756C696166;
    *(v174 + 88) = 0xEB00000000657079;
    *(v174 + 96) = sub_249F9A9A4();
    strcpy((v174 + 104), "targetBundleID");
    *(v174 + 119) = -18;
    v175 = sub_249F9A9A4();

    *(v174 + 120) = v175;
    *(v174 + 128) = 0xD000000000000013;
    *(v174 + 136) = 0x8000000249F9CD10;
    v176 = sub_249F9A9A4();

    *(v174 + 144) = v176;
    *(v174 + 152) = 0x614E746567726174;
    *(v174 + 160) = 0xEA0000000000656DLL;
    v177 = sub_249F9A9A4();

    *(v174 + 168) = v177;
    *(v174 + 176) = 0x6150746567726174;
    *(v174 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v210);

    v178 = sub_249F9A9A4();

    *(v174 + 192) = v178;
    *(v174 + 200) = 0x7954746567726174;
    *(v174 + 208) = 0xEA00000000006570;
    v179 = v203;
    sub_249F7A228(v203, v207);
    sub_249F9AA14();
    v180 = sub_249F9A9A4();

    *(v174 + 216) = v180;
    *(v174 + 224) = 1701869940;
    *(v174 + 232) = 0xE400000000000000;
    *(v174 + 240) = sub_249F9AB64();
    strcpy((v174 + 248), "failureRetries");
    *(v174 + 263) = -18;
    *(v174 + 264) = sub_249F9AB64();
    v181 = sub_249F791D4(v174);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v182 = sub_249F9ABA4();
    v183 = sub_249F9AC64();
    if (os_log_type_enabled(v183, v182))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v214[0] = v185;
      *v184 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v186 = sub_249F9A974();
      v188 = sub_249F78A30(v186, v187, v214);

      *(v184 + 4) = v188;
      _os_log_impl(&dword_249F74000, v183, v182, "Sending failure analysis event: %s)", v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v185);
      MEMORY[0x24C20AE50](v185, -1, -1);
      MEMORY[0x24C20AE50](v184, -1, -1);
    }

    v189 = sub_249F9A9A4();
    v190 = swift_allocObject();
    *(v190 + 16) = v181;
    v214[4] = sub_249F7ABC0;
    v214[5] = v190;
    v214[0] = MEMORY[0x277D85DD0];
    v214[1] = 1107296256;
    v214[2] = sub_249F77EF4;
    v214[3] = &block_descriptor_64;
    v191 = _Block_copy(v214);

    AnalyticsSendEventLazy();
    _Block_release(v191);

    sub_249F8065C(v179);
    v97 = v204;
    return sub_249F806B8(v97, &unk_27EF2CCC0, &unk_249F9B960);
  }

  return result;
}

void sub_249F7E140(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = a2;
  v8 = a3;
  v7(v9, a3, a4);
}

void sub_249F7E1BC()
{
  v0 = sub_249F7E828(-1);
  [v0 postprocess];
  if ([v0 numSamples] < 1)
  {
LABEL_51:
  }

  else
  {
    sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_249F9B920;
    v2 = [v0 tasksByUniquePid];
    sub_249F7AA2C(0, &qword_27EF2CC80, 0x277CCABB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC88, &qword_249F9BDF8);
    sub_249F804C4();
    v3 = sub_249F9A964();

    v4 = *(v3 + 16);

    v5 = MEMORY[0x277D83C10];
    *(v1 + 56) = MEMORY[0x277D83B88];
    *(v1 + 64) = v5;
    *(v1 + 32) = v4;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v6 = sub_249F9AC64();
    sub_249F9A874();

    v7 = [v0 tasksByUniquePid];
    v8 = sub_249F9A964();

    v9 = v8;
    v10 = 0;
    v11 = v8 + 64;
    v12 = 1 << *(v8 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v8 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = MEMORY[0x277D84F90];
    v17 = 0x8000000249F9D520;
    v18 = 0x278FBF000uLL;
LABEL_5:
    v19 = MEMORY[0x277D837D0];
LABEL_6:
    if (v14)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20 >= v15)
      {

        goto LABEL_51;
      }

      v14 = *(v11 + 8 * v20);
      ++v10;
      if (v14)
      {
        v10 = v20;
LABEL_11:
        v21 = *(*(v9 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
        if (v21 >> 62)
        {
          v64 = v21;
          v23 = v9;
          v24 = v17;
          v25 = v19;
          v26 = sub_249F9AD84();
          v19 = v25;
          v17 = v24;
          v22 = v26;
          v9 = v23;
          v21 = v64;
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 &= v14 - 1;
        if (v22)
        {
          v58 = v9;
          v59 = v17;
          v57 = v0;
          v66 = v21 & 0xC000000000000001;
          v62 = v21 & 0xFFFFFFFFFFFFFF8;

          v27 = 0;
          v65 = v21;
          v63 = v22;
          while (1)
          {
            if (v66)
            {
              v28 = MEMORY[0x24C20A4F0](v27, v21);
            }

            else
            {
              if (v27 >= *(v62 + 16))
              {
                goto LABEL_54;
              }

              v28 = *(v21 + 8 * v27 + 32);
            }

            v29 = v28;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_53;
            }

            v67 = v27 + 1;
            v30 = [v28 *(v18 + 1864)];
            if (v30)
            {
              break;
            }

LABEL_17:
            ++v27;
            if (v67 == v22)
            {

              v0 = v57;
              v9 = v58;
              v17 = v59;
              goto LABEL_5;
            }
          }

          v31 = [v29 *(v18 + 1864)];
          if (!v31)
          {
            goto LABEL_55;
          }

          v32 = v31;
          v33 = sub_249F9A9D4();
          v35 = v34;

          v36 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v36 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (!v36)
          {
            goto LABEL_30;
          }

          v37 = [v29 bundleIdentifier];
          if (!v37)
          {
            goto LABEL_56;
          }

          v38 = v37;
          sub_249F9A9D4();

          LOBYTE(v38) = sub_249F80848();

          if (v38)
          {
LABEL_30:

LABEL_48:
            v18 = 0x278FBF000;
            v21 = v65;
            v22 = v63;
            goto LABEL_17;
          }

          v61 = v16;
          sub_249F9AB94();
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_249F9B930;
          v40 = [v29 mainBinaryPath];
          if (v40)
          {
            v41 = v40;
            v42 = sub_249F9A9D4();
            v44 = v43;
          }

          else
          {
            v42 = 0;
            v44 = 0;
          }

          *(v39 + 56) = MEMORY[0x277D837D0];
          v45 = sub_249F7A16C();
          *(v39 + 64) = v45;
          v46 = 0xD000000000000013;
          if (v44)
          {
            v46 = v42;
          }

          v47 = 0x8000000249F9D500;
          if (v44)
          {
            v47 = v44;
          }

          *(v39 + 32) = v46;
          *(v39 + 40) = v47;
          v48 = [v29 bundleIdentifier];
          if (v48)
          {
            v49 = v48;
            v60 = sub_249F9A9D4();
            v51 = v50;

            v52 = (v39 + 72);
            *(v39 + 96) = MEMORY[0x277D837D0];
            *(v39 + 104) = v45;
            if (v51)
            {
              *v52 = v60;
LABEL_43:
              *(v39 + 80) = v51;
              v53 = sub_249F9AC64();
              sub_249F9A874();

              v54 = [v29 pid];
              v16 = v61;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_249F8E9E4(0, *(v61 + 2) + 1, 1, v61);
              }

              v56 = *(v16 + 2);
              v55 = *(v16 + 3);
              if (v56 >= v55 >> 1)
              {
                v16 = sub_249F8E9E4((v55 > 1), v56 + 1, 1, v16);
              }

              *(v16 + 2) = v56 + 1;
              *&v16[4 * v56 + 32] = v54;
              goto LABEL_48;
            }
          }

          else
          {
            v52 = (v39 + 72);
            *(v39 + 96) = MEMORY[0x277D837D0];
            *(v39 + 104) = v45;
          }

          *v52 = 0xD000000000000019;
          v51 = v59;
          goto LABEL_43;
        }

        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }
}

id sub_249F7E828(int a1)
{
  LODWORD(v72) = a1;
  v79 = *MEMORY[0x277D85DE8];
  v66 = sub_249F9A834();
  v64 = *(v66 - 8);
  v1 = *(v64 + 64);
  v2 = MEMORY[0x28223BE20](v66);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v63 = &v58 - v4;
  v71 = sub_249F9ABD4();
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v71);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_249F9ABC4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_249F9A8D4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  v67 = dispatch_semaphore_create(0);
  v70 = sub_249F7AA2C(0, &qword_27EF2CBF0, 0x277D85C78);
  sub_249F9A8B4();
  info = MEMORY[0x277D84F90];
  sub_249F7FA18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC00, qword_249F9BDE0);
  sub_249F80778(&qword_27EF2CC08, &qword_27EF2CC00, qword_249F9BDE0);
  sub_249F9ACD4();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v71);
  v13 = sub_249F9ABF4();
  empty = xpc_dictionary_create_empty();
  v15 = [objc_allocWithZone(MEMORY[0x277D4B458]) initForFileParsing];
  [v15 setDataGatheringOptions_];
  [v15 setDataGatheringOptions_];
  [v15 setDataGatheringOptions_];
  [v15 setDataGatheringOptions_];
  [v15 setAdditionalCSSymbolicatorFlags_];
  info = 0;
  mach_timebase_info(&info);
  [v15 setMachTimebase_];
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v18 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v18 timeIntervalSince1970];
  v20 = v19;
  v21 = v19;

  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v20 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v20 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 >= 0xFFFFFFFFFFFFFC18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v17 + 16) = (v20 + 1000);
  v22 = v72;
  v71 = v17;
  if (v72 < 1)
  {
    v59 = empty;
    v60 = v13;
    sub_249F9ABB4();
    v61 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v23 = sub_249F9AC64();
    sub_249F9A874();

    v24 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_startTime;
    v25 = v65;
    swift_beginAccess();
    v26 = v64;
    v27 = *(v64 + 16);
    v28 = v62;
    v70 = v16;
    v29 = v66;
    v27(v62, v25 + v24, v66);
    v30 = -*(v25 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval);
    v31 = v63;
    sub_249F9A7F4();
    v32 = *(v26 + 8);
    v32(v28, v29);
    sub_249F9A804();
    v34 = v33;
    v32(v31, v29);
    v35 = *MEMORY[0x277CBECD0];
    *(v70 + 16) = v34 - *MEMORY[0x277CBECD0];
    v27(v31, v25 + v24, v29);
    sub_249F9A804();
    v37 = v36;
    v38 = v29;
    v16 = v70;
    v32(v31, v38);
    v17 = v71;
    v39 = v37 - v35;
    *(v71 + 16) = v39;
    sub_249F9AB84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_249F9B930;
    v41 = *(v16 + 16);
    v42 = MEMORY[0x277D839F8];
    v43 = MEMORY[0x277D83A80];
    *(v40 + 56) = MEMORY[0x277D839F8];
    *(v40 + 64) = v43;
    *(v40 + 32) = v41;
    *(v40 + 96) = v42;
    *(v40 + 104) = v43;
    *(v40 + 72) = v39;
    v44 = sub_249F9AC64();
    sub_249F9A874();

    v45 = v35 + *(v16 + 16);
    if (COERCE__INT64(fabs(v45)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v45 > -1.0)
      {
        if (v45 < 1.84467441e19)
        {
          empty = v59;
          xpc_dictionary_set_uint64(v59, "time", v45);
          v22 = v72;
          v13 = v60;
          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  xpc_dictionary_set_uint64(empty, "pid", v72);
LABEL_11:
  v46 = [objc_allocWithZone(MEMORY[0x277D4B438]) init];
  v47 = swift_allocObject();
  v48 = v69;
  *(v47 + 16) = v68;
  *(v47 + 24) = v15;
  *(v47 + 32) = v16;
  *(v47 + 40) = v17;
  *(v47 + 48) = v22;
  *(v47 + 56) = v46;
  *(v47 + 64) = v48;
  v49 = v15;
  v50 = v67;
  *(v47 + 72) = v67;
  *(v47 + 80) = v13;
  v77 = sub_249F7FAB8;
  v78 = v47;
  info = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_249F7F7AC;
  v76 = &block_descriptor_0;
  v51 = _Block_copy(&info);
  v72 = v78;
  swift_unknownObjectRetain();

  v52 = v49;

  v53 = v46;

  v54 = v50;
  v55 = v13;

  nm_systemstats_get_microstackshots(empty, v51);
  _Block_release(v51);

  swift_unknownObjectRelease_n();
  v56 = *MEMORY[0x277D85DE8];
  return v52;
}

uint64_t sub_249F7F138(int a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12)
{
  v57 = a1;
  v58 = a8;
  v61 = a6;
  v62 = a7;
  v59 = a2;
  v60 = a5;
  v14 = sub_249F9A894();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_249F9A8A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_249F9A8D4();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  v31 = &v49 - v30;
  if (a3 != 54)
  {
    v56 = a12;
    v50 = a3;
    v49 = a10;
    v51 = a9;
    v52 = a4;
    v32 = *MEMORY[0x277D851A8];
    v33 = *(v19 + 104);
    v34 = result;
    v54 = result;
    v55 = v29;
    v35 = v18;
    v36 = v29;
    v33(v22, v32, v35);
    sub_249F9A8C4();
    (*(v36 + 16))(v27, v31, v34);
    sub_249F9A884();
    v37 = swift_allocObject();
    v53 = v17;
    v39 = v59;
    v38 = v60;
    *(v37 + 16) = a4;
    *(v37 + 24) = v39;
    v40 = v61;
    v41 = v62;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    *(v37 + 48) = v41;
    v42 = v57;
    *(v37 + 56) = v58;
    *(v37 + 64) = a9;
    *(v37 + 72) = v42 & 1;
    *(v37 + 80) = v49;
    *(v37 + 88) = v50;
    *(v37 + 96) = a11;
    aBlock[4] = sub_249F7FB0C;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249F7F768;
    aBlock[3] = &block_descriptor_42;
    _Block_copy(aBlock);
    v43 = sub_249F9A8F4();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v46 = v38;

    v47 = v51;

    v48 = a11;

    sub_249F9A8E4();

    sub_249F9ABE4();

    return (*(v55 + 8))(v31, v54);
  }

  return result;
}

void sub_249F7F4BC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, unsigned int a10)
{
  swift_beginAccess();
  if (*(a1 + 16) == 2)
  {
    sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v18 = sub_249F9AC64();
    sub_249F9A874();

    return;
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  if (a2)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a2);
    length = xpc_data_get_length(a2);
    if (!bytes_ptr)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v21 = sub_249F803C0(bytes_ptr, length);
    v23 = v22;
    v24 = sub_249F9A7E4();
    swift_beginAccess();
    v25 = *(a4 + 16);
    swift_beginAccess();
    [a3 addMicrostackshotsFromData:v24 ofTypes:17 inTimeRangeStart:a6 end:0 onlyPid:a7 onlyTid:v25 statistics:*(a5 + 16)];
    sub_249F80470(v21, v23);
  }

  if ((a8 & 1) == 0)
  {
    return;
  }

  if ((a10 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  *(a9 + 16) = a10;
  v26 = sub_249F9ABA4();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v27 = sub_249F9AC64();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    swift_beginAccess();
    *(v28 + 4) = *(a9 + 16);

    _os_log_impl(&dword_249F74000, v27, v26, "EcosystemAnalytics.framework:MicrostackshotsParser: Done: %llu", v28, 0xCu);
    MEMORY[0x24C20AE50](v28, -1, -1);
  }

  else
  {
  }

  sub_249F9AC04();
}

uint64_t sub_249F7F768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_249F7F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_249F7F82C()
{
  v1 = *(v0 + 4);

  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  v7 = *(v0 + 12);
  sub_249F807C0(*(v0 + 5), *(v0 + 6));
  v8 = *(v0 + 13);

  v9 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_startTime;
  v10 = sub_249F9A834();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicrostackshotsParser()
{
  result = qword_27EF2CBD8;
  if (!qword_27EF2CBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F7F940()
{
  result = sub_249F9A834();
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

unint64_t sub_249F7FA18()
{
  result = qword_27EF2CBF8;
  if (!qword_27EF2CBF8)
  {
    sub_249F9ABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CBF8);
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_249F7FB5C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_249F7FB7C(void *a1)
{
  sub_249F9AB94();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v2 = sub_249F9AC64();
  sub_249F9A874();

  if ([a1 numSamples] >= 1)
  {
    sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_249F9B920;
    v4 = [a1 tasksByUniquePid];
    sub_249F7AA2C(0, &qword_27EF2CC80, 0x277CCABB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC88, &qword_249F9BDF8);
    sub_249F804C4();
    v5 = sub_249F9A964();

    v6 = *(v5 + 16);

    v7 = MEMORY[0x277D83C10];
    *(v3 + 56) = MEMORY[0x277D83B88];
    *(v3 + 64) = v7;
    *(v3 + 32) = v6;
    v8 = sub_249F9AC64();
    sub_249F9A874();

    v9 = [a1 tasksByUniquePid];
    v10 = sub_249F9A964();

    v11 = 0;
    v12 = v10 + 64;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = MEMORY[0x277D84F90];
LABEL_5:
    if (v15)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return;
      }

      v15 = *(v12 + 8 * v18);
      ++v11;
      if (v15)
      {
        v11 = v18;
LABEL_10:
        v19 = *(*(v10 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v15)))));
        if (v19 >> 62)
        {
          v20 = sub_249F9AD84();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 &= v15 - 1;
        if (v20)
        {
          v59 = v16;
          v60 = v10;
          v63 = v20;
          v64 = v19 & 0xC000000000000001;
          v62 = v19 & 0xFFFFFFFFFFFFFF8;

          v21 = 0;
          v22 = MEMORY[0x277D837D0];
          v65 = v19;
          while (1)
          {
            if (v64)
            {
              v23 = MEMORY[0x24C20A4F0](v21, v19);
            }

            else
            {
              if (v21 >= *(v62 + 16))
              {
                goto LABEL_52;
              }

              v23 = *(v19 + 8 * v21 + 32);
            }

            v24 = v23;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_51;
            }

            v66 = v21 + 1;
            v25 = [v23 bundleIdentifier];
            v67 = v24;
            if (v25)
            {

              v26 = [v24 bundleIdentifier];
              if (!v26)
              {
                goto LABEL_53;
              }

              v27 = v26;
              v28 = sub_249F9A9D4();
              v30 = v29;

              v31 = HIBYTE(v30) & 0xF;
              if ((v30 & 0x2000000000000000) == 0)
              {
                v31 = v28 & 0xFFFFFFFFFFFFLL;
              }

              v24 = v67;
              if (v31)
              {
                break;
              }
            }

LABEL_40:
            v48 = [v24 name];
            if (v48)
            {
              v49 = v48;
              v50 = sub_249F9A9D4();
              v52 = v51;

              sub_249F9AB94();
              v53 = swift_allocObject();
              *(v53 + 16) = xmmword_249F9B920;
              *(v53 + 56) = v22;
              *(v53 + 64) = sub_249F7A16C();
              *(v53 + 32) = v50;
              *(v53 + 40) = v52;

              v54 = v17;
              v55 = sub_249F9AC64();
              sub_249F9A874();

              v17 = v54;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_249F8EAE8(0, *(v54 + 2) + 1, 1, v54);
              }

              v57 = *(v17 + 2);
              v56 = *(v17 + 3);
              v22 = MEMORY[0x277D837D0];
              if (v57 >= v56 >> 1)
              {
                v17 = sub_249F8EAE8((v56 > 1), v57 + 1, 1, v17);
              }

              *(v17 + 2) = v57 + 1;
              v58 = &v17[16 * v57];
              *(v58 + 4) = v50;
              *(v58 + 5) = v52;
              v19 = v65;
            }

            else
            {
            }

            ++v21;
            if (v66 == v63)
            {

              v16 = v59;
              v10 = v60;
              goto LABEL_5;
            }
          }

          sub_249F9AB94();
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_249F9B930;
          v33 = [v67 mainBinaryPath];
          if (v33)
          {
            v34 = v33;
            v35 = sub_249F9A9D4();
            v37 = v36;
          }

          else
          {
            v35 = 0;
            v37 = 0;
          }

          *(v32 + 56) = v22;
          v38 = sub_249F7A16C();
          *(v32 + 64) = v38;
          v39 = 0xD000000000000013;
          if (v37)
          {
            v39 = v35;
          }

          v40 = 0x8000000249F9D500;
          if (v37)
          {
            v40 = v37;
          }

          *(v32 + 32) = v39;
          *(v32 + 40) = v40;
          v24 = v67;
          v41 = [v67 bundleIdentifier];
          if (v41)
          {
            v42 = v17;
            v43 = v41;
            v61 = sub_249F9A9D4();
            v45 = v44;

            v46 = (v32 + 72);
            *(v32 + 96) = v22;
            *(v32 + 104) = v38;
            if (v45)
            {
              *v46 = v61;
              v17 = v42;
              v24 = v67;
LABEL_39:
              *(v32 + 80) = v45;
              v47 = sub_249F9AC64();
              sub_249F9A874();

              v22 = MEMORY[0x277D837D0];
              v19 = v65;
              goto LABEL_40;
            }

            v17 = v42;
            v24 = v67;
          }

          else
          {
            v46 = (v32 + 72);
            *(v32 + 96) = v22;
            *(v32 + 104) = v38;
          }

          *v46 = 0xD000000000000019;
          v45 = 0x8000000249F9D520;
          goto LABEL_39;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }
}

uint64_t sub_249F80228(uint64_t a1)
{
  v2 = sub_249F9AA04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CCE8, &qword_249F9BE28);
  sub_249F80778(&qword_27EF2CCF0, &qword_27EF2CCE8, &qword_249F9BE28);
  v11 = sub_249F9A984();
  v12 = v7;
  v11 = sub_249F9AB04();
  v12 = v8;
  sub_249F9A9F4();
  sub_249F7798C();
  v9 = sub_249F9ACA4();
  (*(v3 + 8))(v6, v2);

  if (v9)
  {
    nm_CRSetCrashLogMessage(v9 + 32);
  }

  return result;
}

uint64_t sub_249F803C0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_249F8FA0C(a1, &a1[a2]);
  }

  v3 = sub_249F9A6A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_249F9A654();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_249F9A7B4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_249F80470(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_249F804C4()
{
  result = qword_27EF2CC90;
  if (!qword_27EF2CC90)
  {
    sub_249F7AA2C(255, &qword_27EF2CC80, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CC90);
  }

  return result;
}

uint64_t sub_249F8052C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_249F80544(_OWORD *a1)
{
  result = 0.0;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_249F805C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249F805EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F8065C(uint64_t a1)
{
  v2 = type metadata accessor for TargetType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F806B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_249F80778(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_249F807C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_249F80848()
{

  v0 = sub_249F9AA74();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_249F9AA74();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_249F9ADF4();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_249F9AA74();
      v3 = v5;
    }

    while (v5);
  }

  sub_249F9AA74();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_249F809A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = sub_249F85E5C;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_249F80C2C;
  v9[3] = &block_descriptor_61;
  v7 = _Block_copy(v9);

  nm_macho_for_each_defined_rpath(a1, a3, v7);
  _Block_release(v7);
  return 0;
}

uint64_t sub_249F80A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249F9AB94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249F9B920;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD60, &qword_249F9BE98);
  v5 = sub_249F9AA14();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_249F7A16C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v8 = sub_249F9AC64();
  sub_249F9A874();

  v9 = sub_249F9AA54();
  v11 = v10;
  swift_beginAccess();
  v12 = *(a3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 56) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_249F8EAE8(0, *(v12 + 2) + 1, 1, v12);
    *(a3 + 56) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_249F8EAE8((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = v9;
  *(v16 + 5) = v11;
  *(a3 + 56) = v12;
  return swift_endAccess();
}

uint64_t sub_249F80C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_249F80C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  LOBYTE(a5) = v10(a2, a3, a4, a5);

  return a5 & 1;
}

uint64_t sub_249F80D00()
{
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = sub_249F9A9A4();

  v15[4] = sub_249F85F94;
  v15[5] = v1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_249F80C8C;
  v15[3] = &block_descriptor_86;
  v5 = _Block_copy(v15);

  nm_macho_for_each_slice(v4, v5);
  _Block_release(v5);

  sub_249F9AB94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249F9B920;
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_249F7A16C();
  v9 = 7104878;
  if (v8)
  {
    v9 = v7;
  }

  v10 = 0xE300000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v11 = sub_249F9AC64();
  sub_249F9A874();

  v12 = *(v1 + 16);
  v13 = *(v1 + 24);

  return v12;
}

uint64_t sub_249F80F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = nm_dyld_get_uuid_for_header();
  if (v6)
  {
    v7 = v6;
    v8 = sub_249F9A9D4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  swift_beginAccess();
  v11 = *(a5 + 24);
  *(a5 + 16) = v8;
  *(a5 + 24) = v10;

  return 0;
}

uint64_t sub_249F80F98()
{
  v1 = *(v0 + 24);
  v37 = *(v0 + 16);
  v38 = v1;
  v39 = 47;
  v40 = 0xE100000000000000;
  sub_249F7798C();
  result = sub_249F9AC74();
  v3 = *(result + 16);
  if (!v3)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v4 = result;
  v5 = result + 32;
  v6 = (result + 32 + 16 * (v3 - 1));
  v7 = v6[1];
  v37 = *v6;
  v38 = v7;
  v39 = 0x6F77656D6172662ELL;
  v40 = 0xEA00000000006B72;
  result = sub_249F9ACB4();
  if (result)
  {
    goto LABEL_6;
  }

  v8 = v6[1];
  v37 = *v6;
  v38 = v8;
  v39 = 1886413102;
  v40 = 0xE400000000000000;
  result = sub_249F9ACB4();
  if (result)
  {
    goto LABEL_6;
  }

  v9 = v6[1];
  v37 = *v6;
  v38 = v9;
  v39 = 0x69736E657478652ELL;
  v40 = 0xEA00000000006E6FLL;
  result = sub_249F9ACB4();
  if (result & 1) != 0 || (v10 = v6[1], v37 = *v6, v38 = v10, v39 = 0x6E6967756C702ELL, v40 = 0xE700000000000000, result = sub_249F9ACB4(), (result))
  {
LABEL_6:
    if (*(v4 + 16) >= v3)
    {
      v37 = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD70, &qword_249F9BEA8);
      sub_249F85F30();
      sub_249F9A984();
      swift_bridgeObjectRelease_n();
      v11 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v12 = sub_249F9A9A4();

      v13 = [v11 initWithPath_];

      if (v13)
      {
        v14 = [v13 infoDictionary];
        if (v14)
        {
          v15 = v14;
          v16 = sub_249F9A964();

          if (*(v16 + 16) && (v17 = sub_249F86B30(0xD00000000000001ALL, 0x8000000249F9D220), (v18 & 1) != 0))
          {
            sub_249F7A984(*(v16 + 56) + 32 * v17, &v37);

            if (swift_dynamicCast())
            {
              v19 = v39;
              v20 = v40;

LABEL_33:
              v24 = MEMORY[0x277D837D0];
              goto LABEL_34;
            }
          }

          else
          {
          }
        }

        v21 = [v13 infoDictionary];
        if (v21)
        {
          v22 = v21;
          v23 = sub_249F9A964();

          v24 = MEMORY[0x277D837D0];
          if (*(v23 + 16) && (v25 = sub_249F86B30(0x656C646E75424643, 0xEF6E6F6973726556), (v26 & 1) != 0))
          {
            sub_249F7A984(*(v23 + 56) + 32 * v25, &v37);

            if (swift_dynamicCast())
            {
              v19 = v39;
              v20 = v40;
LABEL_34:
              sub_249F9AB94();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_249F9B920;
              *(v33 + 56) = v24;
              *(v33 + 64) = sub_249F7A16C();
              v34 = 7104878;
              if (v20)
              {
                v34 = v19;
              }

              v35 = 0xE300000000000000;
              if (v20)
              {
                v35 = v20;
              }

              *(v33 + 32) = v34;
              *(v33 + 40) = v35;
              sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

              v36 = sub_249F9AC64();
              sub_249F9A874();

              return v19;
            }
          }

          else
          {
          }
        }

        else
        {

          v24 = MEMORY[0x277D837D0];
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_34;
      }

LABEL_32:
      v19 = 0;
      v20 = 0;
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (v3 == 1)
  {
LABEL_31:

    goto LABEL_32;
  }

  v27 = (v4 + 16 * v3-- + 8);
  while (1)
  {
    v28 = v3 - 1;
    if (v3 < 1)
    {
      break;
    }

    if (v3 > *(v4 + 16))
    {
      goto LABEL_42;
    }

    v29 = *v27;
    v37 = *(v27 - 1);
    v38 = v29;
    v39 = 0x6F77656D6172662ELL;
    v40 = 0xEA00000000006B72;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v30 = *v27;
    v37 = *(v27 - 1);
    v38 = v30;
    v39 = 1886413102;
    v40 = 0xE400000000000000;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v31 = *v27;
    v37 = *(v27 - 1);
    v38 = v31;
    v39 = 0x69736E657478652ELL;
    v40 = 0xEA00000000006E6FLL;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v32 = *v27;
    v37 = *(v27 - 1);
    v38 = v32;
    v39 = 0x6E6967756C702ELL;
    v40 = 0xE700000000000000;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v27 -= 2;
    --v3;
    if (!v28)
    {
      goto LABEL_31;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_249F815A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a1;
  v13[4] = sub_249F85EB8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249F82238;
  v13[3] = &block_descriptor_74;
  v11 = _Block_copy(v13);

  nm_macho_for_each_imported_symbol(a1, a3, v11);
  _Block_release(v11);
  return 1;
}

uint64_t sub_249F8169C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, const mach_header *a7)
{
  v10 = sub_249F9AA54();
  v12 = v11;
  v13 = sub_249F9AA54();
  v15 = v14;
  v16 = CSDemangleSymbolName();
  if (v16)
  {
    v17 = v16;

    v13 = sub_249F9AA54();
    v15 = v18;
    MEMORY[0x24C20AE50](v17, -1, -1);
  }

  if (sub_249F80848() & 1) != 0 || (sub_249F80848())
  {
    sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249F9BE40;
    v20 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v21 = sub_249F7A16C();
    v171 = v13;
    *(v19 + 32) = v13;
    *(v19 + 40) = v15;
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 64) = v21;
    *(v19 + 72) = v10;
    *(v19 + 80) = v12;
    v22 = MEMORY[0x277D839F0];
    *(v19 + 136) = MEMORY[0x277D839B0];
    *(v19 + 144) = v22;
    *(v19 + 112) = a3 & 1;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

    v23 = sub_249F9AC64();
    sub_249F9A874();

    v25 = a6[2];
    v24 = a6[3];
    swift_beginAccess();
    v26 = a6[6];
    v27 = *(v26 + 16);
    *&v178 = a6;
    v172 = v15;
    v173 = v10;
    v174 = v12;
    if (v27)
    {

      v28 = sub_249F86B30(v25, v24);
      v30 = v29;

      if (v30)
      {
        v31 = *(v26 + 56) + 120 * v28;
        v33 = *(v31 + 32);
        v32 = *(v31 + 48);
        v34 = *(v31 + 16);
        v203 = *v31;
        v204 = v34;
        v205 = v33;
        v206 = v32;
        v35 = *(v31 + 112);
        v37 = *(v31 + 80);
        v36 = *(v31 + 96);
        v207 = *(v31 + 64);
        v208 = v37;
        v209 = v36;
        v168 = v35;
        v210 = v35;
        v38 = *(&v203 + 1);
        v39 = v203;
        v40 = *(&v34 + 1);
        v41 = v34;
        v42 = v205;
        v43 = *(&v206 + 1);
        v176 = *(&v205 + 1);
        v177 = v206;
        v45 = *(&v207 + 1);
        v44 = v207;
        v160 = v37;
        v164 = v36;
        sub_249F85EC4(&v203, &v181);

        if (v38 && v40)
        {
          v203 = __PAIR128__(v38, v39);
          v204 = __PAIR128__(v40, v41);
          v205 = __PAIR128__(v176, v42);
          v206 = __PAIR128__(v43, v177);
          v207 = __PAIR128__(v45, v44);
          v208 = v160;
          v209 = v164;
          v210 = v168;

          sub_249F806B8(&v203, &qword_27EF2CD68, &qword_249F9BEA0);
          goto LABEL_17;
        }

        v52 = v176;
        v27 = v177;
        v47 = *(&v164 + 1);
        v46 = v168;
        v49 = *(&v160 + 1);
        v48 = v164;
        v50 = v160;
LABEL_16:
        *&v203 = v39;
        *(&v203 + 1) = v38;
        *&v204 = v41;
        *(&v204 + 1) = v40;
        *&v205 = v42;
        *(&v205 + 1) = v52;
        *&v206 = v27;
        *(&v206 + 1) = v43;
        *&v207 = v44;
        *(&v207 + 1) = v45;
        *&v208 = v50;
        *(&v208 + 1) = v49;
        *&v209 = v48;
        *(&v209 + 1) = v47;
        v210 = v46;
        sub_249F806B8(&v203, &qword_27EF2CD68, &qword_249F9BEA0);
        v176 = 0;
        v177 = 0xE000000000000000;
LABEL_17:
        v53 = *(v178 + 48);
        if (*(v53 + 16))
        {
          v55 = *(v178 + 16);
          v54 = *(v178 + 24);

          v56 = sub_249F86B30(v55, v54);
          v58 = v57;

          if (v58)
          {
            v59 = *(v53 + 56) + 120 * v56;
            v61 = *(v59 + 32);
            v60 = *(v59 + 48);
            v62 = *(v59 + 16);
            v203 = *v59;
            v204 = v62;
            v205 = v61;
            v206 = v60;
            v63 = *(v59 + 112);
            v65 = *(v59 + 80);
            v64 = *(v59 + 96);
            v207 = *(v59 + 64);
            v208 = v65;
            v209 = v64;
            v210 = v63;
            v66 = v203;
            v67 = *(&v62 + 1);
            v68 = v62;
            v69 = *(&v205 + 1);
            v70 = v205;
            v72 = *(&v206 + 1);
            v71 = v206;
            v166 = *(&v207 + 1);
            v73 = v207;
            v169 = v63;
            v74 = v65;
            v161 = v64;
            v156 = *(&v203 + 1);
            v158 = *(&v64 + 1);
            sub_249F85EC4(&v203, &v181);

            if (v156)
            {
              v181 = __PAIR128__(v67, v68);
              v182 = __PAIR128__(v69, v70);
              v183 = __PAIR128__(v72, v71);
              v184 = __PAIR128__(v166, v73);
              v185 = v74;
              *v186 = __PAIR128__(v158, v161);
              *&v186[16] = v169;
              v203 = __PAIR128__(v156, v66);
              v204 = __PAIR128__(v67, v68);
              v205 = __PAIR128__(v69, v70);
              v206 = __PAIR128__(v72, v71);
              v207 = __PAIR128__(v166, v73);
              v208 = v74;
              v209 = __PAIR128__(v158, v161);
              v210 = v169;
              sub_249F7A914(&v181, &v189, &qword_27EF2CCE0, &qword_249F9BE20);
              sub_249F806B8(&v203, &qword_27EF2CD68, &qword_249F9BEA0);
              if (*(&v181 + 1))
              {
                v167 = *(&v181 + 1);
                v165 = v182;
                v162 = *(&v182 + 1);
                v163 = v181;
                v157 = *(&v183 + 1);
                v159 = v183;
                v154 = *(&v184 + 1);
                v155 = v184;
                v152 = *(&v185 + 1);
                v153 = v185;
                v151 = *v186;
                v170 = *&v186[8];
                v75 = v178;
                goto LABEL_26;
              }

              v200 = v185;
              v201 = *v186;
              v202 = *&v186[16];
              v196 = v181;
              v197 = v182;
              v198 = v183;
              v199 = v184;
LABEL_25:
              v75 = v178;
              sub_249F806B8(&v196, &qword_27EF2CCE0, &qword_249F9BE20);
              v165 = 5;
              v167 = 0xE700000000000000;
              v170 = xmmword_249F9BD20;
              v159 = 0xE700000000000000;
              v162 = 0x6E776F6E6B6E75;
              v155 = 0xE700000000000000;
              v157 = 0x6E776F6E6B6E75;
              v153 = 0xE700000000000000;
              v154 = 0x6E776F6E6B6E75;
              v163 = 0x6E776F6E6B6E75;
              v152 = 0x6E776F6E6B6E75;
              v151 = 0xE700000000000000;
LABEL_26:
              v82 = v75[6];
              if (*(v82 + 16))
              {
                v84 = v75[2];
                v83 = v75[3];

                v85 = sub_249F86B30(v84, v83);
                LOBYTE(v84) = v86;

                if (v84)
                {
                  v87 = *(v82 + 56) + 120 * v85;
                  v89 = *(v87 + 32);
                  v88 = *(v87 + 48);
                  v90 = *(v87 + 16);
                  v203 = *v87;
                  v204 = v90;
                  v205 = v89;
                  v206 = v88;
                  v91 = *(v87 + 112);
                  v93 = *(v87 + 80);
                  v92 = *(v87 + 96);
                  v207 = *(v87 + 64);
                  v208 = v93;
                  v209 = v92;
                  v210 = v91;
                  v94 = v203;
                  v95 = *(&v90 + 1);
                  v96 = v90;
                  v97 = *(&v205 + 1);
                  v98 = v205;
                  v100 = *(&v206 + 1);
                  v99 = v206;
                  v147 = *(&v207 + 1);
                  v101 = v207;
                  v149 = v91;
                  v102 = v93;
                  v144 = v92;
                  v142 = *(&v203 + 1);
                  v143 = *(&v92 + 1);
                  sub_249F85EC4(&v203, &v181);

                  if (v142)
                  {
                    v181 = __PAIR128__(v95, v96);
                    v182 = __PAIR128__(v97, v98);
                    v183 = __PAIR128__(v100, v99);
                    v184 = __PAIR128__(v147, v101);
                    v185 = v102;
                    *v186 = __PAIR128__(v143, v144);
                    *&v186[16] = v149;
                    v203 = __PAIR128__(v142, v94);
                    v204 = __PAIR128__(v95, v96);
                    v205 = __PAIR128__(v97, v98);
                    v206 = __PAIR128__(v100, v99);
                    v207 = __PAIR128__(v147, v101);
                    v208 = v102;
                    v209 = __PAIR128__(v143, v144);
                    v210 = v149;
                    sub_249F7A914(&v181, v188, &qword_27EF2CCE0, &qword_249F9BE20);
                    sub_249F806B8(&v203, &qword_27EF2CD68, &qword_249F9BEA0);
                    v103 = *(&v181 + 1);
                    if (*(&v181 + 1))
                    {
                      v104 = v181;
                      v105 = v182;
                      v106 = *(&v182 + 1);
                      v107 = *(&v183 + 1);
                      v109 = v183;
                      v108 = v184;
                      v148 = v185;
                      v150 = *(&v184 + 1);
                      v145 = *(&v185 + 1);
                      v146 = *v186;
                      v110 = *&v186[8];
                      v111 = v174;
                      v112 = a5;
                      v113 = v173;
                      v114 = v178;
                      goto LABEL_35;
                    }

                    v193 = v185;
                    v194 = *v186;
                    v195 = *&v186[16];
                    v189 = v181;
                    v190 = v182;
                    v191 = v183;
                    v192 = v184;
LABEL_34:
                    v111 = v174;
                    v112 = a5;
                    v113 = v173;
                    v114 = v178;
                    sub_249F806B8(&v189, &qword_27EF2CCE0, &qword_249F9BE20);
                    v105 = 5;
                    v103 = 0xE700000000000000;
                    v110 = xmmword_249F9BD20;
                    v104 = 0x6E776F6E6B6E75;
                    v106 = 0x6E776F6E6B6E75;
                    v109 = 0xE700000000000000;
                    v107 = 0x6E776F6E6B6E75;
                    v108 = 0xE700000000000000;
                    v148 = 0xE700000000000000;
                    v150 = 0x6E776F6E6B6E75;
                    v145 = 0x6E776F6E6B6E75;
                    v146 = 0xE700000000000000;
LABEL_35:
                    v121 = *(v114 + 48);
                    if (*(v121 + 16))
                    {
                      v144 = v108;
                      a5 = v107;
                      v178 = v110;

                      v122 = sub_249F86B30(v113, v111);
                      if (v123)
                      {
                        v143 = v109;
                        v173 = v103;
                        v124 = *(v121 + 56) + 120 * v122;
                        v126 = *(v124 + 32);
                        v125 = *(v124 + 48);
                        v127 = *(v124 + 16);
                        v203 = *v124;
                        v204 = v127;
                        v205 = v126;
                        v206 = v125;
                        v128 = *(v124 + 64);
                        v129 = *(v124 + 80);
                        v130 = *(v124 + 96);
                        v210 = *(v124 + 112);
                        v208 = v129;
                        v209 = v130;
                        v207 = v128;
                        sub_249F85EC4(&v203, &v181);

                        nm_macho_arch_name_for_mach_header(a7);
                        v111 = sub_249F9AA54();
                        v121 = v131;
                        swift_beginAccess();
                        v113 = *(v112 + 16);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        *(v112 + 16) = v113;
                        v103 = v106;
                        LOBYTE(v109) = v105;
                        if (isUniquelyReferenced_nonNull_native)
                        {
LABEL_38:
                          v134 = *(v113 + 2);
                          v133 = *(v113 + 3);
                          if (v134 >= v133 >> 1)
                          {
                            v113 = sub_249F8EBF4((v133 > 1), v134 + 1, 1, v113);
                          }

                          v187 = v210;
                          v183 = v205;
                          v184 = v206;
                          *v186 = v208;
                          *&v186[16] = v209;
                          v185 = v207;
                          v181 = v203;
                          v182 = v204;
                          *(v113 + 2) = v134 + 1;
                          v135 = &v113[432 * v134];
                          *(v135 + 4) = v171;
                          *(v135 + 5) = v172;
                          *(v135 + 8) = v176;
                          *(v135 + 9) = v177;
                          *(v135 + 10) = v163;
                          *(v135 + 11) = v167;
                          v135[96] = v165;
                          *(v135 + 25) = *&v180[3];
                          *(v135 + 97) = *v180;
                          *(v135 + 13) = v162;
                          *(v135 + 14) = v159;
                          *(v135 + 15) = v157;
                          *(v135 + 16) = v155;
                          *(v135 + 17) = v154;
                          *(v135 + 18) = v153;
                          *(v135 + 19) = v152;
                          *(v135 + 20) = v151;
                          *(v135 + 23) = v104;
                          *(v135 + 24) = v173;
                          v135[200] = v109;
                          *(v135 + 51) = *&v179[3];
                          *(v135 + 201) = *v179;
                          *(v135 + 26) = v103;
                          *(v135 + 27) = v143;
                          *(v135 + 28) = a5;
                          *(v135 + 29) = v144;
                          *(v135 + 30) = v150;
                          *(v135 + 31) = v148;
                          *(v135 + 32) = v145;
                          *(v135 + 33) = v146;
                          *(v135 + 6) = 0;
                          *(v135 + 7) = 0xE000000000000000;
                          *(v135 + 168) = v170;
                          *(v135 + 17) = v178;
                          v136 = v181;
                          v137 = v182;
                          v138 = v184;
                          *(v135 + 20) = v183;
                          *(v135 + 21) = v138;
                          *(v135 + 18) = v136;
                          *(v135 + 19) = v137;
                          v139 = v185;
                          v140 = *v186;
                          v141 = *&v186[16];
                          *(v135 + 50) = v187;
                          *(v135 + 51) = v111;
                          *(v135 + 52) = v121;
                          *(v135 + 53) = 1;
                          *(v135 + 54) = 0;
                          *(v135 + 55) = 0xE000000000000000;
                          *(v135 + 56) = 0;
                          *(v135 + 57) = 0xE000000000000000;
                          *(v135 + 23) = v140;
                          *(v135 + 24) = v141;
                          *(v135 + 22) = v139;
                          *(v112 + 16) = v113;
                          return swift_endAccess();
                        }

LABEL_48:
                        v113 = sub_249F8EBF4(0, *(v113 + 2) + 1, 1, v113);
                        *(v112 + 16) = v113;
                        goto LABEL_38;
                      }
                    }

                    else
                    {
                      __break(1u);
                    }

                    __break(1u);
                    goto LABEL_48;
                  }

                  v120 = v147;
                  v115 = v149;
                  v116 = v143;
                  v117 = v144;
                  v118 = *(&v102 + 1);
                  v119 = v102;
LABEL_33:
                  v203 = v94;
                  *&v204 = v96;
                  *(&v204 + 1) = v95;
                  *&v205 = v98;
                  *(&v205 + 1) = v97;
                  *&v206 = v99;
                  *(&v206 + 1) = v100;
                  *&v207 = v101;
                  *(&v207 + 1) = v120;
                  *&v208 = v119;
                  *(&v208 + 1) = v118;
                  *&v209 = v117;
                  *(&v209 + 1) = v116;
                  v210 = v115;
                  sub_249F806B8(&v203, &qword_27EF2CD68, &qword_249F9BEA0);
                  v189 = 0u;
                  v190 = 0u;
                  v191 = 0u;
                  v192 = 0u;
                  v193 = 0u;
                  v194 = 0u;
                  v195 = 0;
                  goto LABEL_34;
                }
              }

              v115 = 0;
              v116 = 0;
              v117 = 0;
              v118 = 0;
              v119 = 0;
              v120 = 0;
              v101 = 0;
              v100 = 0;
              v99 = 0;
              v97 = 0;
              v98 = 0;
              v95 = 0;
              v96 = 0;
              v94 = 0;
              goto LABEL_33;
            }

            v81 = v166;
            v76 = v169;
            v77 = v158;
            v78 = v161;
            v79 = *(&v74 + 1);
            v80 = v74;
LABEL_24:
            v203 = v66;
            *&v204 = v68;
            *(&v204 + 1) = v67;
            *&v205 = v70;
            *(&v205 + 1) = v69;
            *&v206 = v71;
            *(&v206 + 1) = v72;
            *&v207 = v73;
            *(&v207 + 1) = v81;
            *&v208 = v80;
            *(&v208 + 1) = v79;
            *&v209 = v78;
            *(&v209 + 1) = v77;
            v210 = v76;
            sub_249F806B8(&v203, &qword_27EF2CD68, &qword_249F9BEA0);
            v196 = 0u;
            v197 = 0u;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            v201 = 0u;
            v202 = 0;
            goto LABEL_25;
          }
        }

        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v73 = 0;
        v72 = 0;
        v71 = 0;
        v69 = 0;
        v70 = 0;
        v67 = 0;
        v68 = 0;
        v66 = 0;
        goto LABEL_24;
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v27 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v45 = 0;
      v44 = 0;
      v43 = 0;
    }

    v52 = 0;
    v42 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_16;
  }
}

uint64_t sub_249F82238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

void sub_249F822B0()
{
  v1 = v0;
  v2 = v0[3];
  v39 = v0[2];

  v3 = sub_249F80D00();
  v5 = v4;
  v6 = v0[2];
  v7 = v1[3];

  v38 = sub_249F88BD4();

  v8 = v1[2];
  v9 = v1[3];

  v10 = sub_249F9A1B8(v8);
  v36 = v11;
  v37 = v10;

  v12 = v1[2];
  v13 = v1[3];

  v14 = sub_249F9A9A4();

  v15 = nm_extractTeamID(v14);

  if (v15)
  {
    v16 = sub_249F9A9D4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = v1[2];
  v20 = v1[3];

  v21 = sub_249F9A9A4();

  v22 = nm_extractCDHash(v21);

  if (v22)
  {
    v23 = sub_249F9A9D4();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
    v3 = 0;
  }

  v26 = sub_249F80F98();
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v42[2] = v3;
  v42[3] = v5;
  v43 = v38;
  v44 = v37;
  v45 = v36;
  v46 = v16;
  v47 = v18;
  v48 = v23;
  v49 = v25;
  v50 = v28;
  v51 = v29;
  v52 = xmmword_249F9BD20;
  swift_beginAccess();
  v30 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v1[6];
  v1[6] = 0x8000000000000000;
  sub_249F87F28(v42, v39, v2, isUniquelyReferenced_nonNull_native);

  v1[6] = v41;
  swift_endAccess();
  v32 = v1[2];
  v33 = v1[3];

  v34 = sub_249F9A9A4();

  aBlock[4] = sub_249F85F20;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249F80C8C;
  aBlock[3] = &block_descriptor_77;
  v35 = _Block_copy(aBlock);

  nm_macho_for_each_slice(v34, v35);
  _Block_release(v35);
}

uint64_t sub_249F82584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = sub_249F85F28;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_249F8280C;
  v9[3] = &block_descriptor_80;
  v7 = _Block_copy(v9);

  nm_macho_for_each_dependent_dylib(a1, a3, v7);
  _Block_release(v7);
  return 1;
}

uint64_t sub_249F82658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_249F9AA54();
  v7 = v6;
  sub_249F9AB94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249F9B920;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_249F7A16C();
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v9 = sub_249F9AC64();
  sub_249F9A874();

  swift_beginAccess();
  if (*(*(a4 + 48) + 16))
  {
    v10 = *(a4 + 48);

    sub_249F86B30(v5, v7);
    v12 = v11;

    if (v12)
    {
    }
  }

  sub_249F8287C(v5, v7, v17);
  swift_beginAccess();
  v14 = *(a4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + 48);
  *(a4 + 48) = 0x8000000000000000;
  sub_249F87F28(v17, v5, v7, isUniquelyReferenced_nonNull_native);

  *(a4 + 48) = v16;
  return swift_endAccess();
}

uint64_t sub_249F8280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_249F8287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v86 = sub_249F7798C();
  v89 = a1;
  v80 = a3;
  if (sub_249F9ACB4())
  {
    swift_beginAccess();
    v8 = *(v3 + 56);
    v9 = *(v8 + 16);
    v10 = 0uLL;
    v84 = v9;
    if (v9)
    {
      v85 = a2;
      v11 = objc_opt_self();

      v13 = 0;
      v14 = (v8 + 40);
      v81 = v3;
      v82 = v11;
      v83 = v8;
      while (1)
      {
        if (v13 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v90 = *(v14 - 1);
        v91 = *v14;
        v16 = *(v4 + 16);
        v15 = *(v4 + 24);

        sub_249F9A43C(v16);
        v17 = [v11 defaultManager];
        v18 = sub_249F9A9A4();
        v19 = [v17 fileExistsAtPath_];

        if (v19)
        {
          v20 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v21 = sub_249F9A9A4();

          v22 = [v20 initWithPath_];

          if (v22)
          {
            v23 = [v22 executablePath];
            if (v23)
            {
              v24 = v23;
              sub_249F9A9D4();

              v25 = sub_249F9A9A4();

              v26 = [v25 stringByDeletingLastPathComponent];
              sub_249F9A9D4();
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v27 = MEMORY[0x277D837D0];
        sub_249F9AC94();

        v28 = sub_249F9AC94();
        v30 = v29;

        v11 = v82;
        v31 = [v82 defaultManager];
        v32 = sub_249F9A9A4();
        LODWORD(v27) = [v31 fileExistsAtPath_];

        if (v27)
        {
          break;
        }

        ++v13;

        v14 += 2;
        v8 = v83;
        v4 = v81;
        if (v84 == v13)
        {

          v33 = 0;
          v34 = 0;
          v28 = 0;
          v30 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          LOBYTE(v9) = 0;
          a2 = v85;
          v10 = 0uLL;
          goto LABEL_60;
        }
      }

      type metadata accessor for MachOParser();
      swift_allocObject();

      v55 = sub_249F85C5C(v28, v30, sub_249F7C9A0, 0);
      v56 = sub_249F80D00();
      if (v57)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0;
      }

      v88 = v58;
      v36 = 0xE000000000000000;
      if (v57)
      {
        v34 = v57;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v87 = sub_249F88BD4();
      v59 = v55[2];
      v60 = v55[3];

      v61 = sub_249F9A9A4();

      v62 = nm_extractTeamID(v61);

      if (v62)
      {
        v35 = sub_249F9A9D4();
        v36 = v63;
      }

      else
      {
        v35 = 0;
      }

      v64 = v55[2];
      v65 = v55[3];

      v66 = sub_249F9A9A4();

      v67 = nm_extractCDHash(v66);

      if (v67)
      {
        v37 = sub_249F9A9D4();
        v38 = v68;
      }

      else
      {
        v37 = 0;
        v38 = 0xE000000000000000;
      }

      v69 = sub_249F80F98();
      v71 = v70;

      if (v71)
      {
        v39 = v69;
      }

      else
      {
        v39 = 0;
      }

      if (v71)
      {
        v40 = v71;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      v10 = xmmword_249F9BD20;
      a2 = v85;
      goto LABEL_59;
    }

    v33 = 0;
    v34 = 0;
    v28 = 0;
    v30 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v10 = 0uLL;
    if (a1 || a2 != 0xE000000000000000)
    {
      if ((sub_249F9ADF4() & 1) == 0)
      {
        v41 = [objc_opt_self() defaultManager];
        v42 = sub_249F9A9A4();
        v43 = [v41 fileExistsAtPath_];

        if (v43)
        {
          type metadata accessor for MachOParser();
          swift_allocObject();

          v44 = sub_249F85C5C(a1, a2, sub_249F7C9A0, 0);
          v45 = sub_249F80D00();
          v47 = v46;
          if (v46)
          {
            v48 = v45;
          }

          else
          {
            v48 = 0;
          }

          v88 = v48;
          v49 = a2;
          v87 = sub_249F88BD4();
          v50 = v44[2];
          v51 = v44[3];

          v52 = sub_249F9A9A4();

          v53 = nm_extractTeamID(v52);

          if (v53)
          {
            v35 = sub_249F9A9D4();
            v36 = v54;
          }

          else
          {
            v35 = 0;
            v36 = 0xE000000000000000;
          }

          v72 = v44[2];
          v73 = v44[3];

          v74 = sub_249F9A9A4();

          v75 = nm_extractCDHash(v74);

          v34 = 0xE000000000000000;
          if (v75)
          {
            v37 = sub_249F9A9D4();
            v38 = v76;
          }

          else
          {
            v37 = 0;
            v38 = 0xE000000000000000;
          }

          v77 = sub_249F80F98();
          v79 = v78;

          if (v79)
          {
            v39 = v77;
          }

          else
          {
            v39 = 0;
          }

          if (v79)
          {
            v40 = v79;
          }

          else
          {
            v40 = 0xE000000000000000;
          }

          if (v47)
          {
            v34 = v47;
          }

          a2 = v49;

          v10 = xmmword_249F9BD20;
          v28 = v89;
          v30 = a2;
LABEL_59:
          LOBYTE(v9) = v87;
          v33 = v88;
          goto LABEL_60;
        }
      }

      v33 = 0;
      v34 = 0;
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      LOBYTE(v9) = 0;
      v10 = 0uLL;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      LOBYTE(v9) = 0;
    }
  }

LABEL_60:
  *v80 = v89;
  *(v80 + 8) = a2;
  *(v80 + 16) = v33;
  *(v80 + 24) = v34;
  *(v80 + 32) = v9;
  *(v80 + 40) = v28;
  *(v80 + 48) = v30;
  *(v80 + 56) = v35;
  *(v80 + 64) = v36;
  *(v80 + 72) = v37;
  *(v80 + 80) = v38;
  *(v80 + 88) = v39;
  *(v80 + 96) = v40;
  *(v80 + 104) = v10;
}

uint64_t sub_249F830E8()
{
  v1 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  sub_249F822B0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5 = sub_249F9A9A4();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  aBlock[4] = sub_249F85E64;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249F80C8C;
  aBlock[3] = &block_descriptor_68;
  v7 = _Block_copy(aBlock);

  nm_macho_for_each_slice(v5, v7);
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v2 + 16);

  sub_249F83258(v8);
  return v11;
}

uint64_t sub_249F83258(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_249F8EBF4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_249F83350()
{
  v1 = v0;
  v50 = sub_249F9AA04();
  v49 = *(v50 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v52 = v4;
  *(v4 + 16) = MEMORY[0x277D84F90];
  v51 = v4 + 16;
  v6 = swift_allocObject();
  v7 = sub_249F7A364(v5);
  *(v6 + 16) = v7;
  v8 = *(v0 + 24);
  v47 = *(v0 + 16);

  v9 = sub_249F80D00();
  v11 = v10;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);

  v46 = sub_249F88BD4();

  v14 = *(v1 + 16);
  v15 = *(v1 + 24);

  v45 = sub_249F9A1B8(v14);
  v44 = v16;

  v17 = *(v1 + 16);
  v18 = *(v1 + 24);

  v19 = sub_249F9A9A4();

  v20 = nm_extractTeamID(v19);

  if (v20)
  {
    v43 = sub_249F9A9D4();
    v42 = v21;
  }

  else
  {
    v43 = 0;
    v42 = 0xE000000000000000;
  }

  v22 = *(v1 + 16);
  v23 = *(v1 + 24);

  v24 = sub_249F9A9A4();

  v25 = nm_extractCDHash(v24);

  if (v25)
  {
    v26 = sub_249F9A9D4();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  if (!v11)
  {
    v11 = 0xE000000000000000;
    v9 = 0;
  }

  v29 = sub_249F80F98();
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v59[0] = v9;
  v59[1] = v11;
  v60 = v46;
  v61 = v45;
  v62 = v44;
  v63 = v43;
  v64 = v42;
  v65 = v26;
  v66 = v28;
  v67 = v31;
  v68 = v32;
  v69 = xmmword_249F9BD20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v7;
  *(v6 + 16) = 0x8000000000000000;
  sub_249F87A8C(v59, v47, v8, isUniquelyReferenced_nonNull_native);

  *(v6 + 16) = aBlock;
  v34 = *(v1 + 24);
  aBlock = *(v1 + 16);
  v54 = v34;

  v35 = v48;
  sub_249F9A9F4();
  sub_249F7798C();
  sub_249F9ACA4();
  (*(v49 + 8))(v35, v50);

  v36 = swift_allocObject();
  v36[2] = v1;
  v36[3] = v6;
  v37 = v52;
  v36[4] = v52;
  v57 = sub_249F85D78;
  v58 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_249F859A0;
  v56 = &block_descriptor_1;
  v38 = _Block_copy(&aBlock);

  CSSymbolicatorForeachSymbolicatorWithPath();

  _Block_release(v38);
  swift_beginAccess();
  v39 = *(v37 + 16);

  return v39;
}

void sub_249F837D4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v53 = a2;
  v8 = type metadata accessor for TargetType(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v51 - v19);
  v22 = a3[4];
  v21 = a3[5];

  LOBYTE(v22) = v22(v23);

  if (v22)
  {
    sub_249F9ABA4();
    v52 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v24 = sub_249F9AC64();
    sub_249F9A874();

    v25 = a3[2];
    v26 = a3[3];

    v27 = sub_249F9A1B8(v25);
    v29 = v28;

    *v20 = v27;
    v20[1] = v29;
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v20, 0, 1, v8);
    v30 = a3[2];
    v31 = a3[3];

    v51 = sub_249F9A1B8(v30);

    v53 = v20;
    sub_249F7A914(v20, v18, &unk_27EF2CCC0, &unk_249F9B960);
    v32 = *(v9 + 48);
    if (v32(v18, 1, v8) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v32(v18, 1, v8) != 1)
      {
        sub_249F806B8(v18, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v18, v55);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v51);

    v36 = sub_249F9A9A4();

    *(inited + 192) = v36;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v37 = v55;
    sub_249F7A228(v55, v54);
    sub_249F9AA14();
    v38 = sub_249F9A9A4();

    *(inited + 216) = v38;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v39 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v40 = sub_249F9ABA4();
    v41 = sub_249F9AC64();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v44 = sub_249F9A974();
      v46 = sub_249F78A30(v44, v45, &aBlock);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_249F74000, v41, v40, "Sending failure analysis event: %s)", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C20AE50](v43, -1, -1);
      MEMORY[0x24C20AE50](v42, -1, -1);
    }

    v47 = v53;
    v48 = sub_249F9A9A4();
    v49 = swift_allocObject();
    *(v49 + 16) = v39;
    v60 = sub_249F7A28C;
    v61 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_249F77EF4;
    v59 = &block_descriptor_35;
    v50 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v50);

    sub_249F8065C(v37);
    sub_249F806B8(v47, &unk_27EF2CCC0, &unk_249F9B960);
  }

  else
  {
    v33 = swift_allocObject();
    v33[2] = a3;
    v33[3] = a4;
    v33[4] = a5;
    v60 = sub_249F85DE4;
    v61 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_249F859A0;
    v59 = &block_descriptor_29_0;
    v34 = _Block_copy(&aBlock);

    CSSymbolicatorForeachSymbolOwnerAtTime();
    _Block_release(v34);
  }
}

void sub_249F84034(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v57 = a2;
  v8 = type metadata accessor for TargetType(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v53 - v19);
  v22 = a3[4];
  v21 = a3[5];

  LOBYTE(v22) = v22(v23);

  if (v22)
  {
    sub_249F9ABA4();
    v56 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v24 = sub_249F9AC64();
    sub_249F9A874();

    v25 = a3[2];
    v26 = a3[3];

    v27 = sub_249F9A1B8(v25);
    v29 = v28;

    *v20 = v27;
    v20[1] = v29;
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v20, 0, 1, v8);
    v30 = a3[2];
    v31 = a3[3];

    v54 = sub_249F9A1B8(v30);

    v57 = v20;
    sub_249F7A914(v20, v18, &unk_27EF2CCC0, &unk_249F9B960);
    v32 = *(v9 + 48);
    v33 = v32(v18, 1, v8);
    v55 = v8;
    if (v33 == 1)
    {
      v34 = v59;
      swift_storeEnumTagMultiPayload();
      if (v32(v18, 1, v8) != 1)
      {
        sub_249F806B8(v18, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v34 = v59;
      sub_249F7A2F8(v18, v59);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v54);

    v39 = sub_249F9A9A4();

    *(inited + 192) = v39;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v34, v58);
    sub_249F9AA14();
    v40 = sub_249F9A9A4();

    *(inited + 216) = v40;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v41 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v42 = sub_249F9ABA4();
    v43 = sub_249F9AC64();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v46 = sub_249F9A974();
      v48 = sub_249F78A30(v46, v47, &aBlock);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_249F74000, v43, v42, "Sending failure analysis event: %s)", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C20AE50](v45, -1, -1);
      MEMORY[0x24C20AE50](v44, -1, -1);
    }

    v49 = v57;
    v50 = sub_249F9A9A4();
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v64 = sub_249F7ABC0;
    v65 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_249F77EF4;
    v63 = &block_descriptor_48;
    v52 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v52);

    sub_249F8065C(v34);
    sub_249F806B8(v49, &unk_27EF2CCC0, &unk_249F9B960);
  }

  else
  {
    v35 = swift_allocObject();
    v35[2] = a3;
    v35[3] = a1;
    v36 = v56;
    v35[4] = v57;
    v35[5] = a4;
    v35[6] = v36;
    v64 = sub_249F85DF0;
    v65 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_249F859A0;
    v63 = &block_descriptor_41;
    v37 = _Block_copy(&aBlock);

    CSSymbolOwnerForeachSymbol();
    _Block_release(v37);
  }
}

uint64_t sub_249F848B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v174 = a7;
  v175 = a6;
  v176 = a2;
  v8 = type metadata accessor for TargetType(0);
  v177 = *(v8 - 8);
  v9 = *(v177 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v178 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v160 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v160 - v18);
  v21 = a3[4];
  v20 = a3[5];

  LOBYTE(v21) = v21(v22);

  if (v21)
  {
    sub_249F9ABA4();
    v176 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v23 = sub_249F9AC64();
    sub_249F9A874();

    v24 = a3[2];
    v25 = a3[3];

    v26 = sub_249F9A1B8(v24);
    v28 = v27;

    *v19 = v26;
    v19[1] = v28;
    swift_storeEnumTagMultiPayload();
    v29 = v177;
    (*(v177 + 56))(v19, 0, 1, v8);
    v30 = a3[2];
    v31 = a3[3];

    v175 = sub_249F9A1B8(v30);

    sub_249F7A914(v19, v17, &unk_27EF2CCC0, &unk_249F9B960);
    v32 = *(v29 + 48);
    v33 = v32(v17, 1, v8);
    v172 = v8;
    v173 = v19;
    if (v33 == 1)
    {
      v34 = v179;
      swift_storeEnumTagMultiPayload();
      if (v32(v17, 1, v8) != 1)
      {
        sub_249F806B8(v17, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v34 = v179;
      sub_249F7A2F8(v17, v179);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_249F9B940;
    *(v56 + 32) = 0x74536E6F6D656164;
    *(v56 + 40) = 0xEB00000000657461;
    *(v56 + 48) = sub_249F9A9A4();
    *(v56 + 56) = 0xD000000000000012;
    *(v56 + 64) = 0x8000000249F9CCF0;
    *(v56 + 72) = sub_249F9A9A4();
    *(v56 + 80) = 0x546572756C696166;
    *(v56 + 88) = 0xEB00000000657079;
    *(v56 + 96) = sub_249F9A9A4();
    strcpy((v56 + 104), "targetBundleID");
    *(v56 + 119) = -18;
    *(v56 + 120) = sub_249F9A9A4();
    *(v56 + 128) = 0xD000000000000013;
    *(v56 + 136) = 0x8000000249F9CD10;
    *(v56 + 144) = sub_249F9A9A4();
    *(v56 + 152) = 0x614E746567726174;
    *(v56 + 160) = 0xEA0000000000656DLL;
    *(v56 + 168) = sub_249F9A9A4();
    *(v56 + 176) = 0x6150746567726174;
    *(v56 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v175);

    v57 = sub_249F9A9A4();

    *(v56 + 192) = v57;
    *(v56 + 200) = 0x7954746567726174;
    *(v56 + 208) = 0xEA00000000006570;
    sub_249F7A228(v34, v178);
    sub_249F9AA14();
    v58 = sub_249F9A9A4();

    *(v56 + 216) = v58;
    *(v56 + 224) = 1701869940;
    *(v56 + 232) = 0xE400000000000000;
    *(v56 + 240) = sub_249F9AB64();
    strcpy((v56 + 248), "failureRetries");
    *(v56 + 263) = -18;
    *(v56 + 264) = sub_249F9AB64();
    v59 = sub_249F791D4(v56);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v60 = sub_249F9ABA4();
    v61 = sub_249F9AC64();
    if (os_log_type_enabled(v61, v60))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v64 = sub_249F9A974();
      v66 = sub_249F78A30(v64, v65, &aBlock);
      v67 = v179;

      *(v62 + 4) = v66;
      _os_log_impl(&dword_249F74000, v61, v60, "Sending failure analysis event: %s)", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x24C20AE50](v63, -1, -1);
      MEMORY[0x24C20AE50](v62, -1, -1);
    }

    else
    {
      v67 = v34;
    }

    v68 = sub_249F9A9A4();
    v69 = swift_allocObject();
    *(v69 + 16) = v59;
    v212 = sub_249F7ABC0;
    v213 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v209 = 1107296256;
    v210 = sub_249F77EF4;
    v211 = &block_descriptor_55;
    v70 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v70);

    sub_249F8065C(v67);
    return sub_249F806B8(v173, &unk_27EF2CCC0, &unk_249F9B960);
  }

  Name = CSSymbolGetName();
  Path = CSSymbolOwnerGetPath();
  CSSymbolOwnerGetArchitecture();
  FamilyName = CSArchitectureGetFamilyName();
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  v39 = swift_slowAlloc();
  if (CFUUIDBytes && MEMORY[0x24C20A710](CFUUIDBytes, v39, 40))
  {
    v40 = sub_249F9AA64();
    v42 = v41;
    if (!Name)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
    if (!Name)
    {
LABEL_15:
    }
  }

  if (!Path || !FamilyName)
  {
    goto LABEL_15;
  }

  v177 = v40;
  v169 = FamilyName;
  v43 = sub_249F9AA54();
  v45 = v44;
  v46 = a3[2];
  v47 = a3[3];
  v178 = v43;
  v179 = v46;
  v48 = v175;
  swift_beginAccess();
  v49 = *(v48 + 16);

  v50 = sub_249F9AA54();
  if (*(v49 + 16))
  {
    sub_249F86B30(v50, v51);
    v53 = v52;

    v54 = v178;
    if (v53)
    {
      goto LABEL_37;
    }
  }

  else
  {

    v54 = v178;
  }

  type metadata accessor for MachOParser();
  swift_allocObject();

  v71 = sub_249F85C5C(v54, v45, sub_249F7C9A0, 0);
  LODWORD(v172) = sub_249F88BD4();
  v72 = sub_249F9A1B8(v54);
  v170 = v73;
  v171 = v72;
  v74 = v71[2];
  v75 = v71[3];

  v76 = sub_249F9A9A4();

  v77 = nm_extractTeamID(v76);

  v176 = v45;
  v173 = v47;
  if (v77)
  {
    v78 = sub_249F9A9D4();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0xE000000000000000;
  }

  v81 = v71[2];
  v82 = v71[3];

  v83 = sub_249F9A9A4();

  v84 = nm_extractCDHash(v83);

  if (v84)
  {
    v85 = sub_249F9A9D4();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0xE000000000000000;
  }

  v88 = sub_249F80F98();
  if (v89)
  {
    v90 = v88;
  }

  else
  {
    v90 = 0;
  }

  if (v89)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  aBlock = v177;
  v209 = v42;
  LOBYTE(v210) = v172;
  v211 = v171;
  v212 = v170;
  v213 = v78;
  v214 = v80;
  v215 = v85;
  v216 = v87;
  v217 = v90;
  v218 = v91;
  v219 = xmmword_249F9BD20;
  swift_beginAccess();

  v54 = v178;
  v45 = v176;
  sub_249F85ADC(&aBlock, v178, v176, &v202);
  swift_endAccess();

  v199 = v206;
  v200 = *v207;
  v201 = *&v207[16];
  v195 = v202;
  v196 = v203;
  v197 = v204;
  v198 = v205;
  sub_249F806B8(&v195, &qword_27EF2CCE0, &qword_249F9BE20);
  v47 = v173;
LABEL_37:
  v92 = v175;
  swift_beginAccess();
  v93 = v179;
  if (!*(*(v92 + 16) + 16) || (sub_249F86B30(v179, v47), (v94 & 1) == 0) || (swift_endAccess(), v95 = v175, swift_beginAccess(), !*(*(v95 + 16) + 16)) || (sub_249F86B30(v54, v45), (v96 & 1) == 0))
  {
    swift_endAccess();
  }

  swift_endAccess();
  v97 = v175;
  swift_beginAccess();
  v98 = *(v97 + 16);
  if (!*(v98 + 16))
  {
    goto LABEL_62;
  }

  v99 = sub_249F86B30(v93, v47);
  if ((v100 & 1) == 0)
  {
    goto LABEL_62;
  }

  v101 = v47;
  v102 = *(v98 + 56) + 104 * v99;
  v104 = *(v102 + 16);
  v103 = *(v102 + 32);
  v195 = *v102;
  v196 = v104;
  v197 = v103;
  v105 = *(v102 + 48);
  v106 = *(v102 + 64);
  v107 = *(v102 + 80);
  v201 = *(v102 + 96);
  v199 = v106;
  v200 = v107;
  v198 = v105;
  swift_endAccess();
  v170 = *(&v195 + 1);
  v171 = v195;
  LODWORD(v172) = v196;
  if (v195 != __PAIR128__(0xE000000000000000, 0) && (sub_249F9ADF4() & 1) == 0 || (v93 != v54 || v47 != v45) && (sub_249F9ADF4() & 1) == 0)
  {
    v179 = *(&v200 + 1);
    v177 = v201;
    v167 = v200;
    v168 = *(&v199 + 1);
    v165 = v199;
    v166 = *(&v198 + 1);
    v163 = v198;
    v164 = *(&v197 + 1);
    v161 = v197;
    v162 = *(&v196 + 1);
    sub_249F80718(&v195, &v202);
    goto LABEL_53;
  }

  v108 = *(&v196 + 1);

  sub_249F80718(&v195, &v202);
  v109 = sub_249F9A1B8(v108);
  *&v202 = v177;
  *(&v202 + 1) = v42;
  LOBYTE(v203) = v172;
  *(&v203 + 1) = v109;
  *&v204 = v110;
  *(&v204 + 1) = *(&v197 + 1);
  v205 = v198;
  v206 = v199;
  *v207 = v200;
  *&v207[8] = xmmword_249F9BD20;
  v111 = v175;
  swift_beginAccess();

  v112 = v179;

  v113 = *(v111 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v181 = *(v111 + 16);
  *(v111 + 16) = 0x8000000000000000;
  sub_249F87A8C(&v202, v112, v101, isUniquelyReferenced_nonNull_native);

  v115 = v181;
  *(v111 + 16) = v181;
  swift_endAccess();
  if (!*(v115 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  v116 = sub_249F86B30(v112, v101);
  if ((v117 & 1) == 0)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    swift_endAccess();
    __break(1u);
LABEL_63:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v118 = *(v115 + 56) + 104 * v116;
  v120 = *(v118 + 16);
  v119 = *(v118 + 32);
  v188 = *v118;
  v189 = v120;
  v190 = v119;
  v121 = *(v118 + 48);
  v122 = *(v118 + 64);
  v123 = *(v118 + 80);
  v194 = *(v118 + 96);
  v192 = v122;
  v193 = v123;
  v191 = v121;
  sub_249F80718(&v188, &v181);
  sub_249F85E00(&v195);
  v179 = *(&v193 + 1);
  v177 = v194;
  v167 = v193;
  v168 = *(&v192 + 1);
  v165 = v192;
  v166 = *(&v191 + 1);
  v163 = v191;
  v164 = *(&v190 + 1);
  v161 = v190;
  v162 = *(&v189 + 1);
  LODWORD(v172) = v189;
  v170 = *(&v188 + 1);
  v171 = v188;
  v54 = v178;
LABEL_53:
  v124 = v175;
  swift_beginAccess();
  v125 = *(v124 + 16);
  if (!*(v125 + 16))
  {
    goto LABEL_63;
  }

  v126 = sub_249F86B30(v54, v45);
  if ((v127 & 1) == 0)
  {
    goto LABEL_63;
  }

  v128 = *(v125 + 56) + 104 * v126;
  v130 = *(v128 + 16);
  v129 = *(v128 + 32);
  v188 = *v128;
  v189 = v130;
  v190 = v129;
  v131 = *(v128 + 48);
  v132 = *(v128 + 64);
  v133 = *(v128 + 80);
  v194 = *(v128 + 96);
  v192 = v132;
  v193 = v133;
  v191 = v131;
  swift_endAccess();
  sub_249F80718(&v188, &v181);

  v134 = sub_249F9AA54();
  v136 = v135;
  v137 = sub_249F9A1B8(v54);
  v139 = v138;

  v140 = sub_249F9AA54();
  v142 = v141;
  v143 = v174;
  swift_beginAccess();
  v144 = *(v143 + 16);
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *(v143 + 16) = v144;
  if ((v145 & 1) == 0)
  {
    v144 = sub_249F8EBF4(0, *(v144 + 2) + 1, 1, v144);
    *(v174 + 16) = v144;
  }

  v147 = *(v144 + 2);
  v146 = *(v144 + 3);
  if (v147 >= v146 >> 1)
  {
    v144 = sub_249F8EBF4((v146 > 1), v147 + 1, 1, v144);
  }

  v187 = v194;
  v185 = v192;
  v186 = v193;
  v183 = v190;
  v184 = v191;
  v181 = v188;
  v182 = v189;
  *(v144 + 2) = v147 + 1;
  v148 = &v144[432 * v147];
  *(v148 + 4) = v134;
  *(v148 + 5) = v136;
  v148 += 32;
  *(v148 + 2) = 0;
  *(v148 + 3) = 0xE000000000000000;
  *(v148 + 4) = v137;
  *(v148 + 5) = v139;
  v149 = v170;
  *(v148 + 6) = v171;
  *(v148 + 7) = v149;
  v148[64] = v172;
  LODWORD(v149) = v180[0];
  *(v148 + 17) = *(v180 + 3);
  *(v148 + 65) = v149;
  v150 = v161;
  *(v148 + 9) = v162;
  *(v148 + 10) = v150;
  v151 = v163;
  *(v148 + 11) = v164;
  *(v148 + 12) = v151;
  v152 = v165;
  *(v148 + 13) = v166;
  *(v148 + 14) = v152;
  v153 = v167;
  *(v148 + 15) = v168;
  *(v148 + 16) = v153;
  v154 = v177;
  *(v148 + 17) = v179;
  *(v148 + 18) = v154;
  v155 = v181;
  v156 = v182;
  *(v148 + 184) = v183;
  *(v148 + 168) = v156;
  *(v148 + 152) = v155;
  v157 = v184;
  v158 = v185;
  v159 = v186;
  *(v148 + 31) = v187;
  *(v148 + 232) = v159;
  *(v148 + 216) = v158;
  *(v148 + 200) = v157;
  *(v148 + 16) = 0u;
  *(v148 + 17) = 0u;
  *(v148 + 18) = 0u;
  *(v148 + 19) = 0u;
  *(v148 + 20) = 0u;
  *(v148 + 21) = 0u;
  *(v148 + 22) = 0u;
  *(v148 + 46) = 0;
  *(v148 + 47) = v140;
  *(v148 + 48) = v142;
  *(v148 + 49) = 1;
  *(v148 + 50) = 0;
  *(v148 + 51) = 0xE000000000000000;
  *(v148 + 52) = 0;
  *(v148 + 53) = 0xE000000000000000;
  *(v174 + 16) = v144;
  return swift_endAccess();
}

uint64_t sub_249F859A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_249F85A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  v7 = *(a5 + 16);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = v8;
    return 1;
  }

  return result;
}

uint64_t sub_249F85A68()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

unint64_t sub_249F85ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  result = sub_249F86B30(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_249F86F08(v19, isUniquelyReferenced_nonNull_native);
    result = sub_249F86B30(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    result = sub_249F9AE04();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v30 = result;
    sub_249F882AC();
    result = v30;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_249F880D0(result, a2, a3, a1, v13);
    *(a4 + 96) = 0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v13[7] + 104 * result;
  v22 = *(v21 + 80);
  *(a4 + 64) = *(v21 + 64);
  *(a4 + 80) = v22;
  *(a4 + 96) = *(v21 + 96);
  v23 = *(v21 + 16);
  *a4 = *v21;
  *(a4 + 16) = v23;
  v24 = *(v21 + 48);
  *(a4 + 32) = *(v21 + 32);
  *(a4 + 48) = v24;
  v25 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v25;
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  v28 = *(a1 + 64);
  v29 = *(a1 + 80);
  *(v21 + 96) = *(a1 + 96);
  *(v21 + 64) = v28;
  *(v21 + 80) = v29;
  *(v21 + 32) = v26;
  *(v21 + 48) = v27;
LABEL_11:
  *v6 = v13;
  return result;
}

void *sub_249F85C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D84F90];
  v4[6] = sub_249F7A53C(MEMORY[0x277D84F90]);
  v4[7] = v9;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;

  v10 = sub_249F9A9A4();

  v13[4] = sub_249F85E54;
  v14 = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249F80C8C;
  v13[3] = &block_descriptor_58;
  v11 = _Block_copy(v13);

  nm_macho_for_each_slice(v10, v11);
  _Block_release(v11);

  return v4;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_64Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_249F85F30()
{
  result = qword_27EF2CD78;
  if (!qword_27EF2CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2CD70, &qword_249F9BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CD78);
  }

  return result;
}

void sub_249F85FFC(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_249F86B30(0x614E6C6F626D7973, 0xEA0000000000656DLL);
    if (v5)
    {
      v6 = *(*(a1 + 56) + 8 * v4);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD80, &qword_249F9BF28);
  v7 = sub_249F9AA14();
  MEMORY[0x24C20A200](v7);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v8 = sub_249F86B30(0x61507972616E6962, 0xEA00000000006874);
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v8);
    }
  }

  v11 = sub_249F9AA14();
  MEMORY[0x24C20A200](v11);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v12 = sub_249F86B30(0x74615062696C7964, 0xE900000000000068);
    if (v13)
    {
      v14 = *(*(a1 + 56) + 8 * v12);
    }
  }

  v15 = sub_249F9AA14();
  MEMORY[0x24C20A200](v15);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v16 = sub_249F86B30(0xD000000000000010, 0x8000000249F9DD10);
    if (v17)
    {
      v18 = *(*(a1 + 56) + 8 * v16);
    }
  }

  v19 = sub_249F9AA14();
  MEMORY[0x24C20A200](v19);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v20 = sub_249F86B30(0x794472656C6C6163, 0xEF6874615062696CLL);
    if (v21)
    {
      v22 = *(*(a1 + 56) + 8 * v20);
    }
  }

  v23 = sub_249F9AA14();
  MEMORY[0x24C20A200](v23);

  swift_beginAccess();
  if (!*(*(v1 + 16) + 16) || (v24 = *(v1 + 16), , sub_249F86B30(0, 0xE000000000000000), v26 = v25, , (v26 & 1) == 0))
  {
    swift_beginAccess();

    v40 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_249F87C34(a1, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

    *(v1 + 16) = v43;
    swift_endAccess();
    return;
  }

  v27 = *(v1 + 16);
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v28 = *(v1 + 16);

  v29 = sub_249F86B30(0, 0xE000000000000000);
  if ((v30 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = *(*(v27 + 56) + 8 * v29);

  if (*(v31 + 16))
  {
    v32 = sub_249F86B30(0x6F436C6F626D7973, 0xEB00000000746E75);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 8 * v32);
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_249F9AC54();
      v35 = v34;
      MEMORY[0x24C20A3E0](1);
      sub_249F9AC44();
      v36 = sub_249F9AC34();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_249F87DB0(v36, 0x6F436C6F626D7973, 0xEB00000000746E75, v37);
      swift_beginAccess();

      v38 = *(v2 + 16);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      sub_249F87C34(v31, 0, 0xE000000000000000, v39);

      *(v2 + 16) = v42;
      swift_endAccess();

      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_249F864E4()
{
  v1 = v0;
  v2 = v0[5];
  if (v2 == -1)
  {
    swift_beginAccess();
    v2 = *(v0[2] + 16);
  }

  swift_beginAccess();
  v3 = *(v0[2] + 16);
  v49 = v1;
  if (v2 < v3)
  {
    while (v3)
    {
      aBlock[0] = 0;
      MEMORY[0x24C20AE60](aBlock, 8);
      v13 = (aBlock[0] * v3) >> 64;
      if (v3 > (aBlock[0] * v3))
      {
        v14 = -v3 % v3;
        if (v14 > aBlock[0] * v3)
        {
          do
          {
            aBlock[0] = 0;
            MEMORY[0x24C20AE60](aBlock, 8);
          }

          while (v14 > aBlock[0] * v3);
          v13 = (aBlock[0] * v3) >> 64;
        }
      }

      v15 = v1[2];
      v16 = *(v15 + 16);
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB98, &unk_249F9BF50);
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 17;
        }

        v17[2] = v16;
        v17[3] = 2 * (v19 >> 4);
        v50 = sub_249F888B8(aBlock, v17 + 4, v16, v15);

        sub_249F8053C();
        if (v50 != v16)
        {
          goto LABEL_38;
        }

        v1 = v49;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      if (v13 >= v17[2])
      {
        goto LABEL_37;
      }

      v20 = &v17[2 * v13];
      v21 = v20[4];
      v22 = v20[5];

      swift_beginAccess();
      v23 = v1[2];
      v24 = sub_249F86B30(v21, v22);
      LOBYTE(v23) = v25;

      if (v23)
      {
        v26 = v1[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v1[2];
        v1[2] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_249F8813C();
        }

        v11 = *(*(v28 + 48) + 16 * v24 + 8);

        v12 = *(*(v28 + 56) + 8 * v24);

        sub_249F878DC(v24, v28);
        v1[2] = v28;
      }

      swift_endAccess();
      v3 = *(v1[2] + 16);
      if (v2 >= v3)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = sub_249F9ABB4();
    sub_249F7B7E8();

    v5 = sub_249F9AC64();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 134218242;
      *(v6 + 4) = *(v1[2] + 16);

      *(v6 + 12) = 2080;
      v8 = v1[3];
      v9 = v49[4];

      v10 = sub_249F78A30(v8, v9, aBlock);
      v1 = v49;

      *(v6 + 14) = v10;
      _os_log_impl(&dword_249F74000, v5, v4, "EcosystemAnalytics.framework:AnalyticsRandomizer: Sending %ld %s events", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C20AE50](v7, -1, -1);
      MEMORY[0x24C20AE50](v6, -1, -1);
    }

    else
    {
    }

    v29 = v1[2];
    v30 = 1 << *(v29 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    while (v32)
    {
      v35 = v34;
LABEL_32:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = v36 | (v35 << 6);
      v38 = (*(v29 + 48) + 16 * v37);
      v39 = *v38;
      v40 = v38[1];
      v41 = *(*(v29 + 56) + 8 * v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_249F9B920;
      *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
      *(v42 + 32) = v41;
      swift_bridgeObjectRetain_n();

      sub_249F9AE54();

      v44 = v49[3];
      v43 = v49[4];

      v45 = sub_249F9A9A4();

      v46 = swift_allocObject();
      v46[2] = v39;
      v46[3] = v40;
      v46[4] = v41;
      aBlock[4] = sub_249F88898;
      aBlock[5] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_249F77EF4;
      aBlock[3] = &block_descriptor_2;
      v47 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v47);
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        v48 = *(v49[2] + 16);
        return;
      }

      v32 = *(v29 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t AnalyticsRandomizer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t AnalyticsRandomizer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_249F86B30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_249F9AE64();
  sub_249F9AA34();
  v6 = sub_249F9AE84();

  return sub_249F86BA8(a1, a2, v6);
}

unint64_t sub_249F86BA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_249F9ADF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_249F86C60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBB0, &qword_249F9BC08);
  v38 = a2;
  result = sub_249F9ADA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_249F86F08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB68, &unk_249F9BF30);
  v42 = a2;
  result = sub_249F9ADA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 104 * v22;
      if (v42)
      {
        v45 = *(v26 + 16);
        v48 = *(v26 + 24);
        v43 = *(v26 + 8);
        v44 = *(v26 + 32);
        v46 = *v26;
        v47 = *(v26 + 48);
        v49 = *(v26 + 64);
        v50 = *(v26 + 40);
        v51 = *(v26 + 80);
        v52 = *(v26 + 56);
        v54 = *(v26 + 72);
        v55 = *(v26 + 88);
        v53 = *(v26 + 96);
      }

      else
      {
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v57 = *v26;
        v58 = v28;
        v59 = v27;
        v30 = *(v26 + 64);
        v29 = *(v26 + 80);
        v31 = *(v26 + 48);
        v63 = *(v26 + 96);
        v61 = v30;
        v62 = v29;
        v60 = v31;
        v53 = v63;
        v54 = *(&v30 + 1);
        v55 = *(&v29 + 1);
        v51 = v29;
        v52 = *(&v31 + 1);
        v49 = v30;
        v50 = *(&v59 + 1);
        v47 = v31;
        v48 = *(&v58 + 1);
        v45 = v58;
        v43 = *(&v57 + 1);
        v46 = v57;
        v44 = v59;

        sub_249F80718(&v57, v56);
      }

      v32 = *(v8 + 40);
      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 104 * v16;
      *v18 = v46;
      *(v18 + 8) = v43;
      *(v18 + 16) = v45;
      *(v18 + 24) = v48;
      *(v18 + 32) = v44;
      *(v18 + 40) = v50;
      *(v18 + 48) = v47;
      *(v18 + 56) = v52;
      *(v18 + 64) = v49;
      *(v18 + 72) = v54;
      *(v18 + 80) = v51;
      *(v18 + 88) = v55;
      *(v18 + 96) = v53;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_249F872D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB90, &unk_249F9BBF0);
  v39 = a2;
  result = sub_249F9ADA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}