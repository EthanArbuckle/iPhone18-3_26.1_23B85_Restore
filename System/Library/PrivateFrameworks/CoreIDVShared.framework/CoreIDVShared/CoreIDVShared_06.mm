uint64_t sub_225A370C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_225A3716C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A371B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225A3723C()
{
  sub_225CCCEA4();
  if (v0 <= 0x3F)
  {
    sub_225A372C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225A372C0()
{
  if (!qword_27D73B318)
  {
    sub_225CCCEA4();
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73B318);
    }
  }
}

uint64_t dispatch thunk of IdentityKey.authMethod()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A01DDC;

  return v7(a1, a2);
}

uint64_t DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, _BYTE *a7, uint64_t a8)
{
  *(v9 + 400) = v17;
  *(v9 + 408) = v8;
  *(v9 + 384) = a8;
  *(v9 + 392) = v16;
  *(v9 + 521) = v15;
  *(v9 + 368) = a4;
  *(v9 + 376) = a5;
  *(v9 + 352) = a2;
  *(v9 + 360) = a3;
  *(v9 + 344) = a1;
  v12 = sub_225CCD954();
  *(v9 + 416) = v12;
  *(v9 + 424) = *(v12 - 8);
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 522) = *a6;
  *(v9 + 523) = *a7;

  return MEMORY[0x2822009F8](sub_225A376C4, 0, 0);
}

uint64_t sub_225A376C4()
{
  v107 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  LOBYTE(v106) = 0;
  v7 = *(v1 + 8);
  v8 = v7(v5, v6, v3, v4, &v106, v2);
  *(v0 + 464) = v9;
  v10 = v9;
  v11 = *(v0 + 400);
  LOBYTE(v106) = 2;
  v12 = *(v11 + 24);
  v101 = v8;
  v12();
  if (*(v0 + 120))
  {
    v95 = v12;
    v99 = v7;
    sub_2259A9C20((v0 + 96), v0 + 56);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 456);
    v15 = *(v0 + 416);
    v16 = *(v0 + 424);
    v17 = off_28105B918;
    v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v19));
    v83 = *(v16 + 16);
    v84 = v18;
    v83(v14, &v17[v18], v15);
    v90 = v17;
    v86 = v19;
    os_unfair_lock_unlock(&v17[v19]);

    v20 = sub_225CCD934();
    v21 = sub_225CCED04();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 456);
    v25 = *(v0 + 416);
    v24 = *(v0 + 424);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v82 = v25;
      v27 = v23;
      v28 = swift_slowAlloc();
      v106 = v28;
      *v26 = 136315138;
      *(v26 + 4) = sub_2259BE198(v101, v10, &v106);
      _os_log_impl(&dword_2259A7000, v20, v21, "Found standard key with label %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA6F950](v28, -1, -1);
      MEMORY[0x22AA6F950](v26, -1, -1);

      v29 = *(v24 + 8);
      v29(v27, v82);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v23, v25);
    }

    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v30);
    v32 = *((*(v31 + 40))(0, v30, v31) + 16);

    if (v32)
    {
      sub_225A386A4(v0 + 16);
      sub_225A32940(v0 + 56, v0 + 16);
      v12 = v95;
      v7 = v99;
    }

    else
    {
      v43 = *(v0 + 448);
      v44 = *(v0 + 416);
      os_unfair_lock_lock(&v90[v86]);
      v83(v43, &v90[v84], v44);
      os_unfair_lock_unlock(&v90[v86]);

      v45 = sub_225CCD934();
      v46 = sub_225CCED04();

      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 448);
      v49 = *(v0 + 416);
      if (v47)
      {
        v50 = swift_slowAlloc();
        v88 = v49;
        v51 = swift_slowAlloc();
        v106 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_2259BE198(v101, v10, &v106);
        _os_log_impl(&dword_2259A7000, v45, v46, "Standard key with label %s does not have an attestation; deleting it", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AA6F950](v51, -1, -1);
        MEMORY[0x22AA6F950](v50, -1, -1);

        v52 = v88;
        v53 = v48;
      }

      else
      {

        v53 = v48;
        v52 = v49;
      }

      v29(v53, v52);
      v12 = v95;
      v7 = v99;
      (*(*(v0 + 400) + 32))(v101, v10, 0, *(v0 + 392));
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_225A386A4(v0 + 96);
  }

  sub_225A3870C(v0 + 16, v0 + 136);
  if (!*(v0 + 160))
  {
    v100 = v7;
    v102 = *(v0 + 400);
    v92 = *(v0 + 392);
    v96 = v12;
    v37 = *(v0 + 368);
    v36 = *(v0 + 376);
    v39 = *(v0 + 352);
    v38 = *(v0 + 360);
    sub_225A386A4(v0 + 136);
    LOBYTE(v106) = 1;
    v40 = v100(v39, v38, v37, v36, &v106, v92, v102);
    *(v0 + 472) = v41;
    v42 = v41;
    LOBYTE(v106) = 0;
    v103 = v40;
    v96();
    if (*(v0 + 240))
    {
      sub_2259A9C20((v0 + 216), v0 + 176);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 440);
      v55 = *(v0 + 424);
      v97 = *(v0 + 416);
      v56 = off_28105B918;
      v57 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v58 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v58));
      (*(v55 + 16))(v54, &v56[v57], v97);
      os_unfair_lock_unlock(&v56[v58]);

      v59 = sub_225CCD934();
      v60 = sub_225CCED04();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 440);
      v64 = *(v0 + 416);
      v63 = *(v0 + 424);
      if (v61)
      {
        v98 = *(v0 + 416);
        v65 = swift_slowAlloc();
        v93 = v62;
        v66 = swift_slowAlloc();
        v106 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_2259BE198(v103, v42, &v106);
        _os_log_impl(&dword_2259A7000, v59, v60, "Found background key with label %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x22AA6F950](v66, -1, -1);
        MEMORY[0x22AA6F950](v65, -1, -1);

        (*(v63 + 8))(v93, v98);
      }

      else
      {

        (*(v63 + 8))(v62, v64);
      }

      sub_225A386A4(v0 + 16);
      sub_2259A9C20((v0 + 176), v0 + 16);
    }

    else
    {
      sub_225A386A4(v0 + 216);
    }

    sub_225A3870C(v0 + 16, v0 + 256);
    if (*(v0 + 280))
    {
      v33 = *(v0 + 344);
      sub_225A386A4(v0 + 16);

      v34 = (v0 + 256);
      goto LABEL_17;
    }

    sub_225A386A4(v0 + 256);
    v67 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v68 = sub_225CCE444();
      v69 = [v67 BOOLForKey_];

      if (v69)
      {
        v70 = 15;
        goto LABEL_44;
      }
    }

    else
    {
    }

    v71 = *(v0 + 522);
    v72 = 15;
    if (v71 == 1)
    {
      v72 = 525600;
    }

    if (v71 == 3)
    {
      v70 = 87840;
    }

    else
    {
      v70 = v72;
    }

LABEL_44:
    if (*(v0 + 384))
    {
      v73 = *(v0 + 384);
    }

    else
    {
      v73 = sub_225B2CECC(MEMORY[0x277D84F90]);
    }

    v74 = *(v0 + 522);
    v104 = *(v0 + 400);
    v94 = *(v0 + 392);
    v89 = *(v0 + 368);
    v91 = *(v0 + 376);
    v85 = *(v0 + 352);
    v87 = *(v0 + 360);
    *(v0 + 336) = v70;

    v75 = sub_225CCF824();
    v77 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v73;
    sub_225A04090(v75, v77, 1, isUniquelyReferenced_nonNull_native);
    *(v0 + 480) = v106;
    LOBYTE(v106) = v74;
    *(v0 + 488) = v100(v85, v87, v89, v91, &v106, v94, v104);
    *(v0 + 496) = v79;
    v80 = *(v0 + 400);
    *(v0 + 520) = *(v0 + 523);
    v105 = *(v80 + 16) + **(v80 + 16);
    v81 = swift_task_alloc();
    *(v0 + 504) = v81;
    *v81 = v0;
    v81[1] = sub_225A38220;
    v109 = *(v0 + 400);

    __asm { BRAA            X8, X16 }
  }

  v33 = *(v0 + 344);
  sub_225A386A4(v0 + 16);

  v34 = (v0 + 136);
LABEL_17:
  sub_2259A9C20(v34, v33);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_225A38220()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_225A38614;
  }

  else
  {
    v2 = sub_225A3836C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A3836C()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);

  v7 = sub_225CCD934();
  v8 = sub_225CCED04();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 496);
  if (v9)
  {
    v11 = *(v0 + 488);
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v14 = *(v0 + 416);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_2259BE198(v11, v10, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_2259A7000, v7, v8, "created new identity key with label %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA6F950](v16, -1, -1);
    MEMORY[0x22AA6F950](v15, -1, -1);

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v19 = *(v0 + 424);
    v18 = *(v0 + 432);
    v20 = *(v0 + 416);

    (*(v19 + 8))(v18, v20);
  }

  sub_225A386A4(v0 + 16);
  sub_2259A9C20((v0 + 296), *(v0 + 344));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_225A38614()
{
  sub_225A386A4(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A386A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225A3870C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225A38780()
{
  result = qword_27D73B320;
  if (!qword_27D73B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B320);
  }

  return result;
}

unint64_t sub_225A387D8()
{
  result = qword_27D73B328;
  if (!qword_27D73B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityKeyGenerationOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityKeyGenerationOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of DIPKeystoreProtocol.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_2259FE39C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

unint64_t DIPOID.rawValue.getter()
{
  result = 0xD000000000000019;
  switch(*v0)
  {
    case 7:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xF:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

double static DIPCertUsage.photoIDIssuerAuth.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 19;
  *a1 = xmmword_225CD9260;
  *(a1 + 16) = 2;
  return result;
}

uint64_t DIPCertUsage.policyName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 16))
  {
    sub_225CCF204();

    v3 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_225CCF204();

    v3 = 0xD000000000000019;
LABEL_5:
    v7 = v3;
    MEMORY[0x22AA6CE70](v1, v2);
    MEMORY[0x22AA6CE70](10530, 0xE200000000000000);
    return v7;
  }

  result = 0x6449746E65696C63;
  switch(v1)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
      return 0xD000000000000016;
    case 3:
      return 0xD00000000000001ELL;
    case 4:
      return 0xD000000000000021;
    case 5:
      v6 = 1399811689;
      goto LABEL_23;
    case 6:
      return 0x7972636E456F6E69;
    case 7:
      return 0x6E696E6769537073;
    case 8:
      return 0x707972636E457073;
    case 9:
    case 12:
      v5 = 9;
      goto LABEL_25;
    case 10:
    case 16:
      v5 = 5;
LABEL_25:
      result = v5 | 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000025;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      v6 = 1399616107;
LABEL_23:
      result = v6 | 0x696E676900000000;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225A3901C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (!*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_225CD30F0;
    v7 = 3;
LABEL_5:
    *(v6 + 32) = SecPolicyCreateRevocation(v7);
    *a1 = v4;
    *(a1 + 8) = v3;
LABEL_6:
    *(a1 + 16) = 5397;
    goto LABEL_32;
  }

  if (v5 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_225CD30F0;
    v7 = 16;
    goto LABEL_5;
  }

  switch(v4)
  {
    case 1:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4353;
      goto LABEL_31;
    case 2:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4354;
      goto LABEL_31;
    case 3:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4355;
      goto LABEL_31;
    case 4:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4356;
      goto LABEL_31;
    case 5:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4357;
      goto LABEL_31;
    case 6:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4358;
      goto LABEL_31;
    case 7:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4359;
      goto LABEL_31;
    case 8:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4360;
      goto LABEL_31;
    case 9:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4361;
      goto LABEL_31;
    case 10:
      *a1 = xmmword_225CD9290;
      v9 = 5397;
      goto LABEL_31;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v11 = 3;
      goto LABEL_14;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v11 = 16;
LABEL_14:
      *(v6 + 32) = SecPolicyCreateRevocation(v11);
      v8 = xmmword_225CD48A0;
      goto LABEL_27;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v10 = 3;
      goto LABEL_26;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v10 = 16;
LABEL_26:
      *(v6 + 32) = SecPolicyCreateRevocation(v10);
      v8 = xmmword_225CD9280;
      goto LABEL_27;
    case 15:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4363;
      goto LABEL_31;
    case 16:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4364;
      goto LABEL_31;
    case 17:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 5133;
      goto LABEL_31;
    case 18:
    case 19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      *(v6 + 32) = SecPolicyCreateRevocation(0x10uLL);
      v8 = xmmword_225CD9270;
LABEL_27:
      *a1 = v8;
      goto LABEL_6;
    case 20:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4622;
      goto LABEL_31;
    default:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4096;
LABEL_31:
      *(a1 + 16) = v9;
      v6 = MEMORY[0x277D84F90];
      break;
  }

LABEL_32:
  *(a1 + 24) = v6;

  return sub_2259F6128(v4, v3, v5);
}

CoreIDVShared::DIPOID_optional __swiftcall DIPOID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_225A39464()
{
  v0 = DIPOID.rawValue.getter();
  v2 = v1;
  if (v0 == DIPOID.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_225CCF934();
  }

  return v5 & 1;
}

uint64_t sub_225A39500()
{
  sub_225CCFBD4();
  DIPOID.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A39568()
{
  DIPOID.rawValue.getter();
  sub_225CCE5B4();
}

uint64_t sub_225A395CC()
{
  sub_225CCFBD4();
  DIPOID.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225A3963C@<X0>(unint64_t *a1@<X8>)
{
  result = DIPOID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DIPOIDVerifier.init(dateProvider:)@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_225B2D350(MEMORY[0x277D84F90]);
  a2[1] = 0;

  return sub_2259A9C20(a1, (a2 + 2));
}

Swift::Void __swiftcall DIPOIDVerifier.setIntermediates(fromBase64DER:)(Swift::OpaquePointer fromBase64DER)
{
  v2 = sub_225CCD954();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v11 = &v62 - v9;
  v12 = *(fromBase64DER._rawValue + 2);
  if (!v12)
  {
    return;
  }

  v67 = (v8 + 8);
  v68 = (v8 + 16);
  v13 = (fromBase64DER._rawValue + 40);
  *&v10 = 136446210;
  v64 = v10;
  v66 = v2;
  v69 = &v62 - v9;
  v63 = v6;
  while (1)
  {
    v14 = *(v13 - 1);
    v15 = *v13;

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    v17 = decodeCertificate(fromBase64DER:)(v16);
    if (v18)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v19 = off_28105B918;
      v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v21));
      (*v68)(v6, &v19[v20], v2);
      os_unfair_lock_unlock(&v19[v21]);

      v22 = v18;
      v23 = v6;
      v24 = sub_225CCD934();
      v25 = sub_225CCED14();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v70 = v27;
        *v26 = v64;
        swift_getErrorValue();
        v28 = sub_225CCFB24();
        v30 = sub_2259BE198(v28, v29, &v70);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2259A7000, v24, v25, "Error decoding intermediate certificate; skipping: %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA6F950](v27, -1, -1);
        v31 = v26;
        v2 = v66;
        MEMORY[0x22AA6F950](v31, -1, -1);
      }

      else
      {
      }

      (*v67)(v23, v2);
      v6 = v23;
      goto LABEL_5;
    }

    v32 = v17;

    v33 = SecCertificateCopyNormalizedSubjectSequence(v32);
    if (!v33)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v54 = off_28105B918;
      v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v56));
      (*v68)(v11, &v54[v55], v2);
      os_unfair_lock_unlock(&v54[v56]);
      v57 = sub_225CCD934();
      v58 = sub_225CCED14();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_2259A7000, v57, v58, "No normalized subject sequence was returned from intermediate cert; skipping", v59, 2u);
        MEMORY[0x22AA6F950](v59, -1, -1);
      }

      else
      {
      }

      (*v67)(v11, v2);
      goto LABEL_6;
    }

    v34 = v33;
    v35 = sub_225CCCFA4();
    v37 = v36;

    v38 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v38;
    v70 = v40;
    v42 = sub_2259F1D7C(v35, v37);
    v43 = *(v40 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      break;
    }

    v46 = v41;
    if (*(v40 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v70;
        if ((v41 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_225A444CC();
        v49 = v70;
        if ((v46 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_225A40E50(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_2259F1D7C(v35, v37);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_34;
      }

      v42 = v47;
      v49 = v70;
      if ((v46 & 1) == 0)
      {
LABEL_17:
        v49[(v42 >> 6) + 8] |= 1 << v42;
        v50 = (v49[6] + 16 * v42);
        *v50 = v35;
        v50[1] = v37;
        *(v49[7] + 8 * v42) = v32;
        v51 = v49[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_33;
        }

        v49[2] = v53;
        goto LABEL_26;
      }
    }

    v60 = v49[7];
    v61 = *(v60 + 8 * v42);
    *(v60 + 8 * v42) = v32;

    sub_2259BEF00(v35, v37);
LABEL_26:
    v2 = v66;
    *v65 = v49;
    v6 = v63;
LABEL_5:
    v11 = v69;
LABEL_6:
    v13 += 2;
    if (!--v12)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_225CCFAC4();
  __break(1u);
}

Swift::Void __swiftcall DIPOIDVerifier.setTrustedRoots(_:)(Swift::OpaquePointer a1)
{

  v1[1]._rawValue = a1._rawValue;
}

uint64_t DIPOIDVerifier.verifyChain(_:forUsage:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = type metadata accessor for DIPSignpost.Config(0);
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for DIPSignpost(0);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;
  *(v3 + 248) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_225A39DC4, 0, 0);
}

uint64_t sub_225A39DC4()
{
  v12 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  v10 = *(v0 + 200);
  LOBYTE(v11) = v1;
  v3 = sub_225A3A94C(v2, &v10);
  *(v0 + 216) = v3;
  *(v0 + 224) = 0;
  v4 = v3;
  if (qword_28105AD80 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = __swift_project_value_buffer(*(v0 + 176), qword_28105AD88);
  sub_225A47158(v7, v6, type metadata accessor for DIPSignpost.Config);
  DIPSignpost.init(_:)(v6, v5);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_225A3A30C;

  return sub_225A3C0F4(v4);
}

uint64_t sub_225A3A30C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 249) = a2;

  return MEMORY[0x2822009F8](sub_225A3A410, 0, 0);
}

uint64_t sub_225A3A410()
{
  v54 = v0;
  v1 = *(v0 + 249);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v47 = *(v0 + 224);
  v4 = *(v0 + 248);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 152);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v48 = v5;
  v49 = v6;
  LOBYTE(v50) = v4;
  sub_225A3C3C0(v2, v1 & 1, v7, v3, &v48);
  if (v47)
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 249);
    sub_2259CB6A0(*(v0 + 192));

    sub_225A4607C(v8, v10 & 1);
    v11 = v47;
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v13;
    swift_getErrorValue();
    v15 = *(v0 + 104);
    v16 = v47;
    sub_225B21FAC(v15, &v48);

    v17 = v49;
    if (v49)
    {
      v45 = v51;
      v46 = v48;
      v18 = v52;
      v43 = v53;
      v44 = v50;
    }

    else
    {
      *(v0 + 128) = v47;
      v24 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v25 = *(v0 + 136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v27 = [v25 code];
        v28 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v28;
        *(inited + 40) = v27;
        v18 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v29 = v47;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v17 = MEMORY[0x277D84F90];
      }

      else
      {
        v30 = *(v0 + 168);
        *(v0 + 144) = v47;
        v31 = v47;
        v32 = sub_225CCE954();
        v33 = swift_dynamicCast();
        v34 = *(v32 - 8);
        (*(v34 + 56))(v30, v33 ^ 1u, 1, v32);
        LODWORD(v34) = (*(v34 + 48))(v30, 1, v32);
        sub_2259CB640(v30, &unk_27D73B050);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = 23;
        }

        v46 = v35;
        v17 = MEMORY[0x277D84F90];
        v18 = sub_225B2C374(MEMORY[0x277D84F90]);
        v36 = v47;
        v44 = 0;
        v45 = 0;
      }

      v43 = v47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v18;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v48);

    v38 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_225B29AA0(0, *(v17 + 2) + 1, 1, v17);
    }

    v40 = *(v17 + 2);
    v39 = *(v17 + 3);
    if (v40 >= v39 >> 1)
    {
      v17 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v17);
    }

    *(v17 + 2) = v40 + 1;
    v41 = &v17[56 * v40];
    *(v41 + 4) = 0;
    *(v41 + 5) = 0;
    *(v41 + 6) = 0xD000000000000022;
    *(v41 + 7) = 0x8000000225D19320;
    *(v41 + 8) = 0xD000000000000018;
    *(v41 + 9) = 0x8000000225D19350;
    *(v41 + 10) = 415;
    *v14 = v46;
    *(v14 + 8) = v17;
    *(v14 + 16) = v44;
    *(v14 + 24) = v45;
    *(v14 + 32) = v38;
    *(v14 + 40) = v43;
    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 249);
    sub_2259CB6A0(*(v0 + 192));
    sub_225A4607C(v19, v20 & 1);

    v21 = *(v0 + 8);
    v22 = *(v0 + 216);

    return v21(v22);
  }
}

SecTrustRef sub_225A3A94C(unint64_t a1, uint64_t a2)
{
  v207 = *MEMORY[0x277D85DE8];
  v187 = sub_225CCD0B4();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v4);
  v185 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v193 = &v181 - v8;
  v191 = sub_225CCD954();
  v192 = *(v191 - 8);
  v10 = MEMORY[0x28223BE20](v191, v9);
  v184 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v183 = &v181 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v182 = &v181 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v181 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v181 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v181 - v27;
  v29 = *a2;
  v32 = *(a2 + 8);
  LODWORD(a2) = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 17;
  v194 = v29;
  v197 = v29;
  v31 = v32;
  LODWORD(v32) = a2;
  v198 = v31;
  v199 = a2;
  v33 = DIPCertUsage.policyName.getter();
  v34 = MEMORY[0x277D83838];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 72) = v34;
  *(inited + 40) = v33;
  *(inited + 48) = v35;
  v36 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060);
  v190 = v36;
  v196 = v36;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_74:
    sub_2259CB5EC();
    swift_allocError();
    v168 = v167;
    v169 = sub_225CCE954();
    v170 = *(v169 - 8);
    v171 = v193;
    (*(v170 + 56))(v193, 1, 1, v169);
    LODWORD(v169) = (*(v170 + 48))(v171, 1, v169);
    sub_2259CB640(v171, &unk_27D73B050);
    if (v169)
    {
      v172 = 263;
    }

    else
    {
      v172 = 23;
    }

    v173 = MEMORY[0x277D84F90];
    v174 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v197 = v174;
    sub_225B2C4A0(v190, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v197);

    v112 = v197;
    v176 = sub_225B29AA0(0, 1, 1, v173);
    v178 = *(v176 + 2);
    v177 = *(v176 + 3);
    if (v178 >= v177 >> 1)
    {
      v176 = sub_225B29AA0((v177 > 1), v178 + 1, 1, v176);
    }

    *(v176 + 2) = v178 + 1;
    v179 = &v176[56 * v178];
    *(v179 + 4) = 0xD000000000000030;
    *(v179 + 5) = 0x8000000225D19590;
    *(v179 + 6) = 0xD000000000000022;
    *(v179 + 7) = 0x8000000225D19320;
    *(v179 + 8) = 0xD000000000000017;
    *(v179 + 9) = 0x8000000225D19530;
    *(v179 + 10) = 459;
    *v168 = v172;
    *(v168 + 8) = v176;
    *(v168 + 16) = 0xD000000000000030;
    *(v168 + 24) = 0x8000000225D19590;
    *(v168 + 32) = v112;
    *(v168 + 40) = 0;
    swift_willThrow();
    return v112;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_74;
  }

LABEL_3:
  v188 = a1;
  v204 = v194;
  v205 = v31;
  v206 = v32;
  sub_225A3901C(&v197);
  v37 = v197;
  v38 = v198;
  sub_225A47314(v197, v198);
  sub_225A47328(v37, v38);

  if (v38 <= 1)
  {
    if (!v38)
    {
      v74 = v32;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v75 = off_28105B918;
      v76 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v77 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v77));
      v78 = v192;
      v79 = v191;
      (v192)[2](v28, &v75[v76], v191);
      os_unfair_lock_unlock(&v75[v77]);
      v80 = sub_225CCD934();
      v81 = sub_225CCED04();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_2259A7000, v80, v81, "OIDVerifier using AP policy", v82, 2u);
        MEMORY[0x22AA6F950](v82, -1, -1);
      }

      (v78[1])(v28, v79);
      v204 = v194;
      v205 = v31;
      v206 = v74;
      sub_225A3901C(&v197);
      v83 = v200;
      sub_225A47328(v197, v198);

      if (v83 == 21)
      {
        v84 = 0;
      }

      else
      {
        LOBYTE(v197) = v83;
        DIPOID.rawValue.getter();
        v84 = sub_225CCE444();
      }

      v204 = v194;
      v205 = v31;
      v206 = v74;
      sub_225A3901C(&v197);
      v99 = v199;
      sub_225A47328(v197, v198);

      if (v99 == 21)
      {
        v100 = 0;
      }

      else
      {
        LOBYTE(v197) = v99;
        DIPOID.rawValue.getter();
        v100 = sub_225CCE444();
      }

      v197 = v194;
      v198 = v31;
      v199 = v74;
      DIPCertUsage.policyName.getter();
      v32 = sub_225CCE444();

      ApplePinned = DIPSecPolicyCreateApplePinned();

      LOBYTE(v32) = v74;
      ApplePayModelSigning = ApplePinned;
      goto LABEL_47;
    }

    if (v38 == 1)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v49 = off_28105B918;
      v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v51));
      v52 = v192;
      v53 = v191;
      (v192)[2](v25, &v49[v50], v191);
      os_unfair_lock_unlock(&v49[v51]);
      v54 = sub_225CCD934();
      v55 = sub_225CCED04();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2259A7000, v54, v55, "OIDVerifier using APMS policy", v56, 2u);
        MEMORY[0x22AA6F950](v56, -1, -1);
      }

      (v52[1])(v25, v53);
      ApplePayModelSigning = DIPSecPolicyCreateApplePayModelSigning(0);
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  switch(v38)
  {
    case 2:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v57 = off_28105B918;
      v58 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v59 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v59));
      v60 = v192;
      v61 = v191;
      (v192)[2](v21, &v57[v58], v191);
      os_unfair_lock_unlock(&v57[v59]);
      v62 = sub_225CCD934();
      v63 = sub_225CCED04();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_2259A7000, v62, v63, "OIDVerifier using mDL TA policy", v64, 2u);
        MEMORY[0x22AA6F950](v64, -1, -1);
      }

      (v60[1])(v21, v61);
      break;
    case 3:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v65 = off_28105B918;
      v66 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v67 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v67));
      v68 = v192;
      v69 = v182;
      v70 = v191;
      (v192)[2](v182, &v65[v66], v191);
      os_unfair_lock_unlock(&v65[v67]);
      v71 = sub_225CCD934();
      v72 = sub_225CCED04();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_2259A7000, v71, v72, "OIDVerifier using mDL TA policy without OID check", v73, 2u);
        MEMORY[0x22AA6F950](v73, -1, -1);
      }

      (v68[1])(v69, v70);
      break;
    case 4:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v39 = off_28105B918;
      v40 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v41 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v41));
      v42 = v192;
      v43 = v183;
      v44 = v191;
      (v192)[2](v183, &v39[v40], v191);
      os_unfair_lock_unlock(&v39[v41]);
      v45 = sub_225CCD934();
      v46 = sub_225CCED04();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2259A7000, v45, v46, "OIDVerifier using BasicX509 policy", v47, 2u);
        MEMORY[0x22AA6F950](v47, -1, -1);
      }

      (v42[1])(v43, v44);
      ApplePayModelSigning = SecPolicyCreateBasicX509();
      goto LABEL_47;
    default:
LABEL_36:
      LODWORD(v183) = v32;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v85 = off_28105B918;
      v86 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v87 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v87));
      v88 = v192;
      v89 = v184;
      v90 = v191;
      (v192)[2](v184, &v85[v86], v191);
      v91 = &v85[v87];
      v92 = v89;
      os_unfair_lock_unlock(v91);

      v93 = sub_225CCD934();
      v94 = sub_225CCED04();
      sub_225A47328(v37, v38);
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = v31;
        v97 = swift_slowAlloc();
        v197 = v97;
        *v95 = 136315138;
        *(v95 + 4) = sub_2259BE198(v37, v38, &v197);
        _os_log_impl(&dword_2259A7000, v93, v94, "OIDVerifier using IdentityWebPresentment policy with host name %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        v98 = v97;
        v31 = v96;
        MEMORY[0x22AA6F950](v98, -1, -1);
        MEMORY[0x22AA6F950](v95, -1, -1);

        (v88[1])(v184, v90);
      }

      else
      {

        (v88[1])(v92, v90);
      }

      LOBYTE(v32) = v183;
      v102 = sub_225CCE444();
      sub_225A47328(v37, v38);
      IdentityWebPresentment = SecPolicyCreateIdentityWebPresentment();

      ApplePayModelSigning = IdentityWebPresentment;
      goto LABEL_47;
  }

  ApplePayModelSigning = SecPolicyCreateMDLTerminalAuth();
LABEL_47:
  v104 = ApplePayModelSigning;
  v204 = v194;
  v205 = v31;
  v206 = v32;
  sub_225A3901C(&v197);
  v106 = v197;
  v105 = v198;
  v107 = v201;

  sub_225A47328(v106, v105);

  v195 = v107;
  MEMORY[0x22AA6D020](v108);
  if (*(v195 + 16) >= *(v195 + 24) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  trust = 0;
  type metadata accessor for SecCertificate(0);
  v109 = sub_225CCE7F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F8);
  v110 = sub_225CCE7F4();

  v111 = SecTrustCreateWithCertificates(v109, v110, &trust);

  if (!v111)
  {
    v112 = trust;
    if (trust)
    {
      if (v189[1])
      {
        v113 = trust;
        v114 = sub_225CCE7F4();
        v115 = SecTrustSetAnchorCertificates(v113, v114);

        if (v115)
        {
          v201 = MEMORY[0x277D849A8];
          v202 = MEMORY[0x277D84A08];
          LODWORD(v197) = v115;
          sub_225A053A8(&v197, 20);
          v197 = 0;
          v198 = 0xE000000000000000;
          sub_225CCF204();
          MEMORY[0x22AA6CE70](0xD000000000000035, 0x8000000225D19550);
          v116 = SecCopyErrorMessageString(v115, 0);
          v192 = v104;
          if (v116)
          {
            v117 = v116;
            v118 = sub_225CCE474();
            v120 = v119;
          }

          else
          {
            v118 = 0;
            v120 = 0;
          }

          v204 = v118;
          v205 = v120;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130);
          sub_225CCF434();

          v150 = v197;
          v149 = v198;
          v151 = v196;
          v194 = 0x8000000225D19320;
          v191 = 0x8000000225D19530;
          sub_2259CB5EC();
          swift_allocError();
          v112 = v152;
          v153 = sub_225CCE954();
          v154 = *(v153 - 8);
          v155 = v193;
          (*(v154 + 56))(v193, 1, 1, v153);
          LODWORD(v153) = (*(v154 + 48))(v155, 1, v153);
          sub_2259CB640(v155, &unk_27D73B050);
          if (v153)
          {
            v156 = 155;
          }

          else
          {
            v156 = 23;
          }

          v157 = MEMORY[0x277D84F90];
          v158 = sub_225B2C374(MEMORY[0x277D84F90]);
          v159 = swift_isUniquelyReferenced_nonNull_native();
          v197 = v158;
          sub_225B2C4A0(v151, sub_225B2AC40, 0, v159, &v197);

          v160 = v197;
          v161 = sub_225B29AA0(0, 1, 1, v157);
          v163 = *(v161 + 2);
          v162 = *(v161 + 3);
          if (v163 >= v162 >> 1)
          {
            v161 = sub_225B29AA0((v162 > 1), v163 + 1, 1, v161);
          }

          *(v161 + 2) = v163 + 1;
          v164 = &v161[56 * v163];
          *(v164 + 4) = v150;
          *(v164 + 5) = v149;
          v165 = v194;
          *(v164 + 6) = 0xD000000000000022;
          *(v164 + 7) = v165;
          v166 = v191;
          *(v164 + 8) = 0xD000000000000017;
          *(v164 + 9) = v166;
          *(v164 + 10) = 510;
          *v112 = v156;
          *(v112 + 1) = v161;
          *(v112 + 2) = v150;
          *(v112 + 3) = v149;
          *(v112 + 4) = v160;
          *(v112 + 5) = 0;
          swift_willThrow();

          return v112;
        }
      }

      else
      {
        v144 = trust;
      }

      v145 = v189[5];
      v146 = v189[6];
      __swift_project_boxed_opaque_existential_1(v189 + 2, v145);
      v147 = v185;
      (*(v146 + 8))(v145, v146);
      v148 = sub_225CCD034();
      (*(v186 + 8))(v147, v187);
      SecTrustSetVerifyDate(v112, v148);

      return v112;
    }
  }

  v201 = MEMORY[0x277D849A8];
  v202 = MEMORY[0x277D84A08];
  LODWORD(v197) = v111;
  sub_225A053A8(&v197, 20);
  v197 = 0;
  v198 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D169B0);
  v121 = SecCopyErrorMessageString(v111, 0);
  v192 = v104;
  if (v121)
  {
    v122 = v121;
    v123 = sub_225CCE474();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0;
  }

  v204 = v123;
  v205 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130);
  sub_225CCF434();

  v127 = v197;
  v126 = v198;
  v128 = v196;
  v194 = 0x8000000225D19320;
  sub_2259CB5EC();
  swift_allocError();
  v130 = v129;
  v131 = sub_225CCE954();
  v132 = *(v131 - 8);
  v133 = v193;
  (*(v132 + 56))(v193, 1, 1, v131);
  LODWORD(v131) = (*(v132 + 48))(v133, 1, v131);
  sub_2259CB640(v133, &unk_27D73B050);
  if (v131)
  {
    v134 = 155;
  }

  else
  {
    v134 = 23;
  }

  v135 = MEMORY[0x277D84F90];
  v136 = sub_225B2C374(MEMORY[0x277D84F90]);
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v197 = v136;
  sub_225B2C4A0(v128, sub_225B2AC40, 0, v137, &v197);

  v138 = v197;
  v139 = sub_225B29AA0(0, 1, 1, v135);
  v141 = *(v139 + 2);
  v140 = *(v139 + 3);
  v112 = (v141 + 1);
  if (v141 >= v140 >> 1)
  {
    v139 = sub_225B29AA0((v140 > 1), v141 + 1, 1, v139);
  }

  *(v139 + 2) = v112;
  v142 = &v139[56 * v141];
  *(v142 + 4) = v127;
  *(v142 + 5) = v126;
  v143 = v194;
  *(v142 + 6) = 0xD000000000000022;
  *(v142 + 7) = v143;
  *(v142 + 8) = 0xD000000000000017;
  *(v142 + 9) = 0x8000000225D19530;
  *(v142 + 10) = 501;
  *v130 = v134;
  *(v130 + 8) = v139;
  *(v130 + 16) = v127;
  *(v130 + 24) = v126;
  *(v130 + 32) = v138;
  *(v130 + 40) = 0;
  swift_willThrow();

  return v112;
}

uint64_t sub_225A3C114()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_225A3C20C;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000017, 0x8000000225D167D0, sub_2259F4800, v2, v4);
}

uint64_t sub_225A3C20C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_225A3C34C;
  }

  else
  {

    v2 = sub_225A3C328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A3C34C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 40) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void sub_225A3C3C0(void *a1, char a2, unint64_t a3, __SecTrust *a4, uint64_t a5)
{
  v195 = a3;
  v205 = *MEMORY[0x277D85DE8];
  v9 = sub_225CCD954();
  v190 = *(v9 - 8);
  v191 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  *&v189 = &v181[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v181[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v181[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v181[-v22];
  v24 = *a5;
  v193 = *(a5 + 8);
  v194 = v24;
  v25 = *(a5 + 16);
  v192 = a1;
  if ((a2 & 1) == 0)
  {
    LODWORD(result) = 0;
    if (SecTrustGetTrustResult(a4, &result) || result != 4 && result != 1)
    {
      v199 = 0;
      v200 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000041, 0x8000000225D194A0);
      v196 = result;
      v49 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v49);

      v195 = v199;
      v50 = v200;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 17;
      v199 = v194;
      v200 = v193;
      LOBYTE(v201) = v25;
      v52 = DIPCertUsage.policyName.getter();
      v53 = MEMORY[0x277D83838];
      *(inited + 64) = MEMORY[0x277D837D0];
      *(inited + 72) = v53;
      *(inited + 40) = v52;
      *(inited + 48) = v54;
      v55 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);
      v193 = 0x8000000225D19460;
      v194 = 0x8000000225D19320;
      sub_2259CB5EC();
      swift_allocError();
      v57 = v56;
      v58 = sub_225CCE954();
      v59 = *(v58 - 8);
      (*(v59 + 56))(v23, 1, 1, v58);
      LODWORD(v58) = (*(v59 + 48))(v23, 1, v58);
      sub_2259CB640(v23, &unk_27D73B050);
      if (v58)
      {
        v60 = 263;
      }

      else
      {
        v60 = 23;
      }

      v61 = MEMORY[0x277D84F90];
      v62 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v199 = v62;
      sub_225B2C4A0(v55, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v199);

      v64 = v199;
      v65 = sub_225B29AA0(0, 1, 1, v61);
      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      if (v67 >= v66 >> 1)
      {
        v65 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v65);
      }

      *(v65 + 2) = v67 + 1;
      v68 = &v65[56 * v67];
      v70 = v194;
      v69 = v195;
      *(v68 + 4) = v195;
      *(v68 + 5) = v50;
      *(v68 + 6) = 0xD000000000000022;
      *(v68 + 7) = v70;
      v71 = v193;
      *(v68 + 8) = 0xD000000000000031;
      *(v68 + 9) = v71;
      *(v68 + 10) = 546;
      *v57 = v60;
      *(v57 + 8) = v65;
      *(v57 + 16) = v69;
      *(v57 + 24) = v50;
      *(v57 + 32) = v64;
      *(v57 + 40) = 0;
      goto LABEL_17;
    }

    if (v192)
    {
      return;
    }

    v38 = 0x8000000225D194F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    v86 = swift_initStackObject();
    *(v86 + 16) = xmmword_225CD30F0;
    *(v86 + 32) = 17;
    v199 = v194;
    v200 = v193;
    LOBYTE(v201) = v25;
    v87 = DIPCertUsage.policyName.getter();
    v88 = MEMORY[0x277D83838];
    *(v86 + 64) = MEMORY[0x277D837D0];
    *(v86 + 72) = v88;
    *(v86 + 40) = v87;
    *(v86 + 48) = v89;
    v90 = sub_225B2C374(v86);
    swift_setDeallocating();
    sub_2259CB640(v86 + 32, &qword_27D73B060);
    v194 = 0x8000000225D19460;
    v195 = 0x8000000225D19320;
    sub_2259CB5EC();
    swift_allocError();
    v92 = v91;
    v93 = sub_225CCE954();
    v94 = *(v93 - 8);
    (*(v94 + 56))(v23, 1, 1, v93);
    LODWORD(v93) = (*(v94 + 48))(v23, 1, v93);
    sub_2259CB640(v23, &unk_27D73B050);
    if (v93)
    {
      LOWORD(v95) = 263;
    }

    else
    {
      LOWORD(v95) = 23;
    }

    v96 = MEMORY[0x277D84F90];
    v97 = sub_225B2C374(MEMORY[0x277D84F90]);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v199 = v97;
    sub_225B2C4A0(v90, sub_225B2AC40, 0, v98, &v199);

    v33 = v199;
    v99 = sub_225B29AA0(0, 1, 1, v96);
    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    v102 = v101 + 1;
    if (v101 < v100 >> 1)
    {
LABEL_28:
      *(v99 + 2) = v102;
      v103 = &v99[56 * v101];
      *(v103 + 4) = 0xD000000000000035;
      *(v103 + 5) = v38;
      v104 = v195;
      *(v103 + 6) = 0xD000000000000022;
      *(v103 + 7) = v104;
      v105 = v194;
      *(v103 + 8) = 0xD000000000000031;
      *(v103 + 9) = v105;
      *(v103 + 10) = 550;
      *v92 = v95;
      v92[1] = v99;
      v92[2] = 0xD000000000000035;
      v92[3] = v38;
      v92[4] = v33;
      v92[5] = 0;
LABEL_17:
      swift_willThrow();
      return;
    }

LABEL_63:
    v99 = sub_225B29AA0((v100 > 1), v102, 1, v99);
    goto LABEL_28;
  }

  v199 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  swift_willThrowTypedImpl();
  v27 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8)
  {
    v28 = sub_225CCE444();
    v29 = [v27 BOOLForKey_];

    if (v29)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v30 = off_28105B918;
      v31 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v32));
      v33 = v190;
      v34 = *(v190 + 16);
      v184 = (v190 + 16);
      v185 = v31;
      v35 = v30 + v31;
      v36 = v191;
      v183 = v34;
      v34(v15, v35, v191);
      v186 = v32;
      v187 = v30;
      os_unfair_lock_unlock((v30 + v32));
      v38 = v193;
      v37 = v194;
      sub_2259F6128(v194, v193, v25);
      v39 = v37;
      v40 = sub_225CCD934();
      v41 = sub_225CCED04();
      sub_2259F6140(v39, v38, v25);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 136446210;
        result = v43;
        v199 = v39;
        v200 = v193;
        LOBYTE(v201) = v25;
        v44 = DIPCertUsage.policyName.getter();
        v33 = v25;
        v25 = sub_2259BE198(v44, v45, &result);
        v39 = v194;

        *(v42 + 4) = v25;
        LODWORD(v25) = v33;
        _os_log_impl(&dword_2259A7000, v40, v41, "Treating certificate validation for %{public}s as non-fatal because certificate pinning is disabled in user defaults", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        v46 = v43;
        v36 = v191;
        MEMORY[0x22AA6F950](v46, -1, -1);
        v47 = v42;
        v38 = v193;
        MEMORY[0x22AA6F950](v47, -1, -1);

        v48 = v190;
      }

      else
      {

        v48 = v33;
      }

      v188 = *(v48 + 8);
      v188(v15, v36);
      v130 = v195;
      if (v195 >> 62)
      {
        v179 = v195;
        v180 = sub_225CCF144();
        v130 = v179;
        v101 = v180;
      }

      else
      {
        v101 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v95 = MEMORY[0x277D84F90];
      if (!v101)
      {
        goto LABEL_56;
      }

      v102 = v130;
      v199 = MEMORY[0x277D84F90];
      v92 = &v199;
      sub_2259D52A4(0, v101 & ~(v101 >> 63), 0);
      if ((v101 & 0x8000000000000000) == 0)
      {
        v182 = v25;
        v95 = v199;
        v131 = v102;
        if ((v102 & 0xC000000000000001) != 0)
        {
          v132 = 0;
          do
          {
            v133 = MEMORY[0x22AA6DA80](v132, v131);
            v134 = SecCertificateCopyData(v133);
            v135 = sub_225CCCFA4();
            v137 = v136;

            v138 = sub_225CCCF84();
            v140 = v139;
            sub_2259BEF00(v135, v137);
            swift_unknownObjectRelease();
            v199 = v95;
            v142 = *(v95 + 16);
            v141 = *(v95 + 24);
            if (v142 >= v141 >> 1)
            {
              sub_2259D52A4((v141 > 1), v142 + 1, 1);
              v95 = v199;
            }

            ++v132;
            *(v95 + 16) = v142 + 1;
            v143 = v95 + 16 * v142;
            *(v143 + 32) = v138;
            *(v143 + 40) = v140;
            v131 = v195;
          }

          while (v101 != v132);
        }

        else
        {
          v144 = (v102 + 32);
          do
          {
            v145 = *v144;
            v146 = SecCertificateCopyData(v145);
            v147 = sub_225CCCFA4();
            v149 = v148;

            v150 = sub_225CCCF84();
            v152 = v151;
            sub_2259BEF00(v147, v149);

            v199 = v95;
            v154 = *(v95 + 16);
            v153 = *(v95 + 24);
            if (v154 >= v153 >> 1)
            {
              sub_2259D52A4((v153 > 1), v154 + 1, 1);
              v95 = v199;
            }

            *(v95 + 16) = v154 + 1;
            v155 = v95 + 16 * v154;
            *(v155 + 32) = v150;
            *(v155 + 40) = v152;
            ++v144;
            --v101;
          }

          while (v101);
        }

        v36 = v191;
        LOBYTE(v25) = v182;
        v38 = v193;
        v39 = v194;
LABEL_56:
        v156 = v186;
        v157 = v187;
        os_unfair_lock_lock((v186 + v187));
        v158 = v189;
        v183(v189, v157 + v185, v36);
        os_unfair_lock_unlock((v156 + v157));
        v159 = v192;
        sub_225A47308(v192, 1);
        sub_2259F6128(v39, v38, v25);

        v160 = sub_225CCD934();
        v161 = v194;
        v162 = v160;
        LODWORD(v156) = sub_225CCED14();
        sub_2259F6140(v161, v38, v25);
        sub_225A4607C(v159, 1);

        LODWORD(v195) = v156;
        if (os_log_type_enabled(v162, v156))
        {
          v163 = swift_slowAlloc();
          v187 = v162;
          v164 = v163;
          v186 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          v193 = v165;
          *v164 = 136446722;
          result = v165;
          v199 = v161;
          v200 = v38;
          LOBYTE(v201) = v25;
          v166 = DIPCertUsage.policyName.getter();
          v168 = v158;
          v169 = sub_2259BE198(v166, v167, &result);

          *(v164 + 4) = v169;
          *(v164 + 12) = 2112;
          sub_225A47308(v159, 1);
          v170 = _swift_stdlib_bridgeErrorToNSError();
          *(v164 + 14) = v170;
          v171 = v186;
          *v186 = v170;
          *(v164 + 22) = 2080;
          v172 = MEMORY[0x22AA6D060](v95, MEMORY[0x277D837D0]);
          v174 = v173;

          v175 = sub_2259BE198(v172, v174, &result);

          *(v164 + 24) = v175;
          v176 = v187;
          _os_log_impl(&dword_2259A7000, v187, v195, "Certificate verification for usage %{public}s failed due to error: %@\nCertificate Chain:\n%s", v164, 0x20u);
          sub_2259CB640(v171, &unk_27D73FC90);
          MEMORY[0x22AA6F950](v171, -1, -1);
          v177 = v193;
          swift_arrayDestroy();
          MEMORY[0x22AA6F950](v177, -1, -1);
          MEMORY[0x22AA6F950](v164, -1, -1);

          sub_225A4607C(v159, 1);
          v178 = v168;
        }

        else
        {
          sub_225A4607C(v159, 1);

          v178 = v158;
        }

        v188(v178, v191);
        return;
      }

      __break(1u);
      goto LABEL_63;
    }
  }

  else
  {
  }

  v195 = 0x8000000225D19440;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  v72 = swift_initStackObject();
  v189 = xmmword_225CD30F0;
  *(v72 + 16) = xmmword_225CD30F0;
  *(v72 + 32) = 17;
  v73 = v72 + 32;
  v199 = v194;
  v200 = v193;
  LOBYTE(v201) = v25;
  v74 = v192;
  v75 = v192;
  v76 = DIPCertUsage.policyName.getter();
  v77 = MEMORY[0x277D83838];
  *(v72 + 64) = MEMORY[0x277D837D0];
  *(v72 + 72) = v77;
  *(v72 + 40) = v76;
  *(v72 + 48) = v78;
  v193 = sub_225B2C374(v72);
  v79 = v74;
  swift_setDeallocating();
  sub_2259CB640(v73, &qword_27D73B060);
  v190 = "error evaluating sec trust";
  v191 = "topekaServerSigning";
  sub_2259CB5EC();
  v194 = swift_allocError();
  v81 = v80;
  swift_getErrorValue();
  v82 = v197;
  v83 = v79;
  sub_225B21FAC(v82, &v199);
  sub_225A4607C(v79, 1);
  v84 = v200;
  if (v200)
  {
    v188 = v201;
    *&v189 = v199;
    v85 = v203;
    v186 = v204;
    v187 = v202;
  }

  else
  {
    v199 = v79;
    v106 = v79;
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v107 = result;
      v108 = swift_initStackObject();
      *(v108 + 16) = v189;
      *(v108 + 32) = 20;
      v109 = [v107 code];
      v110 = MEMORY[0x277D83BF8];
      *(v108 + 64) = MEMORY[0x277D83B88];
      *(v108 + 72) = v110;
      *(v108 + 40) = v109;
      v85 = sub_225B2C374(v108);
      swift_setDeallocating();
      sub_2259CB640(v108 + 32, &qword_27D73B060);

      v111 = v79;
      v187 = 0;
      v188 = 0;
      v84 = MEMORY[0x277D84F90];
      *&v189 = 263;
      v186 = v79;
    }

    else
    {
      v199 = v79;
      v112 = v79;
      v113 = sub_225CCE954();
      v114 = swift_dynamicCast();
      v115 = v79;
      v116 = *(v113 - 8);
      (*(v116 + 56))(v20, v114 ^ 1u, 1, v113);
      LODWORD(v113) = (*(v116 + 48))(v20, 1, v113);
      sub_2259CB640(v20, &unk_27D73B050);
      if (v113)
      {
        v117 = 263;
      }

      else
      {
        v117 = 23;
      }

      *&v189 = v117;
      v84 = MEMORY[0x277D84F90];
      v85 = sub_225B2C374(MEMORY[0x277D84F90]);
      v118 = v115;
      v187 = v195;
      v188 = 0xD00000000000001ALL;
      v186 = v115;
    }
  }

  v119 = v191 | 0x8000000000000000;
  v120 = v190 | 0x8000000000000000;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v199 = v85;
  sub_225B2C4A0(v193, sub_225B2AC40, 0, v121, &v199);

  v122 = v199;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_225B29AA0(0, *(v84 + 2) + 1, 1, v84);
  }

  v124 = *(v84 + 2);
  v123 = *(v84 + 3);
  if (v124 >= v123 >> 1)
  {
    v84 = sub_225B29AA0((v123 > 1), v124 + 1, 1, v84);
  }

  v125 = v192;
  sub_225A4607C(v192, 1);
  *(v84 + 2) = v124 + 1;
  v126 = &v84[56 * v124];
  v127 = v195;
  *(v126 + 4) = 0xD00000000000001ALL;
  *(v126 + 5) = v127;
  *(v126 + 6) = 0xD000000000000022;
  *(v126 + 7) = v119;
  *(v126 + 8) = 0xD000000000000031;
  *(v126 + 9) = v120;
  *(v126 + 10) = 538;
  v128 = v188;
  *v81 = v189;
  *(v81 + 8) = v84;
  *(v81 + 16) = v128;
  v129 = v186;
  *(v81 + 24) = v187;
  *(v81 + 32) = v122;
  *(v81 + 40) = v129;
  swift_willThrow();
  sub_225A4607C(v125, 1);
}

__SecTrust *DIPOIDVerifier.verifyChain(_:forUsage:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v68 = (&v65 - v8);
  v9 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  error = *a2;
  v77 = v18;
  LOBYTE(v78) = v19;
  v20 = v73;
  v21 = sub_225A3A94C(a1, &error);
  v73 = v21;
  if (v20)
  {
    v71 = 0;
    v70 = "topekaServerSigning";
    v69 = "POIDVerifier.swift";
    v33 = v20;
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v35 = swift_allocError();
    v37 = v36;
    swift_getErrorValue();
    v38 = v75;
    v39 = v20;
    sub_225B21FAC(v38, &error);

    v40 = v77;
    v72 = v35;
    if (v77)
    {
      v68 = error;
      v66 = v78;
      v67 = v79;
      v41 = v80;
      v42 = v81;
    }

    else
    {
      error = v20;
      v43 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v44 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v46 = [v44 code];
        v47 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v47;
        *(inited + 40) = v46;
        v41 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v48 = v20;
        v67 = 0;
        v66 = 0;
        v68 = 0;
        v40 = MEMORY[0x277D84F90];
      }

      else
      {
        error = v20;
        v49 = v20;
        v50 = sub_225CCE954();
        v51 = v68;
        v52 = swift_dynamicCast();
        v53 = *(v50 - 8);
        (*(v53 + 56))(v51, v52 ^ 1u, 1, v50);
        LODWORD(v50) = (*(v53 + 48))(v51, 1, v50);
        sub_2259CB640(v51, &unk_27D73B050);
        if (v50)
        {
          v54 = 0;
        }

        else
        {
          v54 = 23;
        }

        v68 = v54;
        v40 = MEMORY[0x277D84F90];
        v41 = sub_225B2C374(MEMORY[0x277D84F90]);
        v55 = v20;
        v67 = 0;
        v66 = 0;
      }

      v42 = v20;
    }

    v56 = v70 | 0x8000000000000000;
    v57 = v69 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    error = v41;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &error);

    v59 = error;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_225B29AA0(0, *(v40 + 2) + 1, 1, v40);
    }

    v61 = *(v40 + 2);
    v60 = *(v40 + 3);
    if (v61 >= v60 >> 1)
    {
      v40 = sub_225B29AA0((v60 > 1), v61 + 1, 1, v40);
    }

    *(v40 + 2) = v61 + 1;
    v62 = &v40[56 * v61];
    *(v62 + 4) = 0;
    *(v62 + 5) = 0;
    *(v62 + 6) = 0xD000000000000022;
    *(v62 + 7) = v56;
    *(v62 + 8) = 0xD000000000000018;
    *(v62 + 9) = v57;
    *(v62 + 10) = 450;
    *v37 = v68;
    v63 = v66;
    *(v37 + 8) = v40;
    *(v37 + 16) = v63;
    *(v37 + 24) = v67;
    *(v37 + 32) = v59;
    *(v37 + 40) = v42;
    swift_willThrow();
  }

  else
  {
    LODWORD(v69) = v19;
    v70 = v18;
    v71 = v17;
    v72 = v3;
    v22 = v21;
    if (qword_28105AD80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v9, qword_28105AD88);
    sub_225A47158(v23, v12, type metadata accessor for DIPSignpost.Config);
    DIPSignpost.init(_:)(v12, v16);
    error = 0;
    v24 = SecTrustEvaluateWithError(v22, &error);
    v25 = error;
    v26 = a1;
    v27 = v70;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_225A47110(&qword_281059B10, type metadata accessor for CFError);
      v28 = swift_allocError();
      *v29 = v25;
      v30 = error;
    }

    else
    {
      v30 = 0;
      v28 = v24;
    }

    v31 = v71;
    v32 = v25;

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    error = v31;
    v77 = v27;
    LOBYTE(v78) = v69;
    sub_225A3C3C0(v28, v25 != 0, v26, v73, &error);
    sub_2259CB6A0(0);
    sub_225A4607C(v28, v25 != 0);
  }

  return v73;
}

uint64_t DIPOIDVerifier.verifyChain(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 33) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_225A3DE80, 0, 0);
}

uint64_t sub_225A3DE80()
{
  v1 = decodeCertificateChain(fromBase64DER:)(*(v0 + 40));
  *(v0 + 72) = v1;
  v2 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_225A3DF88;

  return DIPOIDVerifier.verifyChain(_:forUsage:)(v3, v0 + 16);
}

uint64_t sub_225A3DF88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225A3E0E8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

__SecTrust *DIPOIDVerifier.verifyChain(fromBase64DER:forUsage:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = decodeCertificateChain(fromBase64DER:)(a1);
  if (!v2)
  {
    v8[0] = v3;
    v8[1] = v4;
    v9 = v5;
    v3 = DIPOIDVerifier.verifyChain(_:forUsage:)(v6, v8);
  }

  return v3;
}

uint64_t DIPOIDVerifier.verifyLeaf(_:forUsage:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_225CCD954();
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = *a2;
  *(v3 + 161) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_225A3E278, 0, 0);
}

uint64_t sub_225A3E278()
{
  v80 = v0;
  v1 = SecCertificateCopyNormalizedIssuerSequence(*(v0 + 192));
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = v1;
    v4 = sub_225CCCFA4();
    v6 = v5;

    *(v0 + 256) = v4;
    *(v0 + 264) = v6;
    v7 = *v2;
    if (*(*v2 + 16) && (v8 = sub_2259F1D7C(v4, v6), (v9 & 1) != 0))
    {
      v10 = *(v0 + 161);
      v12 = *(v0 + 240);
      v11 = *(v0 + 248);
      v13 = *(v0 + 192);
      v14 = *(*(v7 + 56) + 8 * v8);
      *(v0 + 272) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
      v15 = swift_allocObject();
      *(v0 + 280) = v15;
      *(v15 + 16) = xmmword_225CD73E0;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      *(v0 + 168) = v12;
      v16 = v0 + 168;
      *(v0 + 176) = v11;
      *(v0 + 184) = v10;
      v17 = v14;
      v18 = v13;
      v19 = swift_task_alloc();
      *(v0 + 288) = v19;
      *v19 = v0;
      v20 = sub_225A3E938;
    }

    else
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 240);
      v21 = *(v0 + 248);
      v24 = *(v0 + 224);
      v23 = *(v0 + 232);
      v25 = *(v0 + 216);
      v26 = off_28105B918;
      v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      v29 = *(v0 + 161);
      os_unfair_lock_lock((off_28105B918 + v28));
      (*(v24 + 16))(v23, &v26[v27], v25);
      os_unfair_lock_unlock(&v26[v28]);
      sub_2259F6128(v22, v21, v29);
      v30 = sub_225CCD934();
      v31 = sub_225CCED04();
      sub_2259F6140(v22, v21, v29);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 161);
        v33 = *(v0 + 240);
        v34 = *(v0 + 248);
        v35 = *(v0 + 224);
        v75 = *(v0 + 232);
        v36 = *(v0 + 216);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v76 = v38;
        v77 = v33;
        *v37 = 136446210;
        v78 = v34;
        v79 = v32;
        v39 = DIPCertUsage.policyName.getter();
        v41 = sub_2259BE198(v39, v40, &v76);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_2259A7000, v30, v31, "Could not find matching intermediate cert for usage = %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x22AA6F950](v38, -1, -1);
        MEMORY[0x22AA6F950](v37, -1, -1);

        (*(v35 + 8))(v75, v36);
      }

      else
      {
        v68 = *(v0 + 224);
        v67 = *(v0 + 232);
        v69 = *(v0 + 216);

        (*(v68 + 8))(v67, v69);
      }

      v70 = *(v0 + 161);
      v72 = *(v0 + 240);
      v71 = *(v0 + 248);
      v73 = *(v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
      v15 = swift_allocObject();
      *(v0 + 304) = v15;
      *(v15 + 16) = xmmword_225CD7D40;
      *(v15 + 32) = v73;
      *(v0 + 144) = v72;
      v16 = v0 + 144;
      *(v0 + 152) = v71;
      *(v0 + 160) = v70;
      v74 = v73;
      v19 = swift_task_alloc();
      *(v0 + 312) = v19;
      *v19 = v0;
      v20 = sub_225A3EAF8;
    }

    v19[1] = v20;

    return DIPOIDVerifier.verifyChain(_:forUsage:)(v15, v16);
  }

  else
  {
    v42 = *(v0 + 161);
    v44 = *(v0 + 240);
    v43 = *(v0 + 248);
    v45 = *(v0 + 208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 17;
    v77 = v44;
    v78 = v43;
    v79 = v42;
    v47 = DIPCertUsage.policyName.getter();
    v48 = MEMORY[0x277D83838];
    *(inited + 64) = MEMORY[0x277D837D0];
    *(inited + 72) = v48;
    *(inited + 40) = v47;
    *(inited + 48) = v49;
    v50 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v52 = v51;
    v53 = sub_225CCE954();
    v54 = *(v53 - 8);
    (*(v54 + 56))(v45, 1, 1, v53);
    v55 = (*(v54 + 48))(v45, 1, v53);
    sub_2259CB640(v45, &unk_27D73B050);
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v57;
    sub_225B2C4A0(v50, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v77);

    v59 = v77;
    v60 = sub_225B29AA0(0, 1, 1, v56);
    v62 = *(v60 + 2);
    v61 = *(v60 + 3);
    if (v62 >= v61 >> 1)
    {
      v60 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v60);
    }

    *(v60 + 2) = v62 + 1;
    v63 = &v60[56 * v62];
    *(v63 + 4) = 0xD00000000000003BLL;
    *(v63 + 5) = 0x8000000225D19370;
    *(v63 + 6) = 0xD000000000000022;
    *(v63 + 7) = 0x8000000225D19320;
    *(v63 + 8) = 0xD000000000000017;
    *(v63 + 9) = 0x8000000225D193B0;
    *(v63 + 10) = 574;
    if (v55)
    {
      v64 = 124;
    }

    else
    {
      v64 = 23;
    }

    *v52 = v64;
    *(v52 + 8) = v60;
    *(v52 + 16) = 0xD00000000000003BLL;
    *(v52 + 24) = 0x8000000225D19370;
    *(v52 + 32) = v59;
    *(v52 + 40) = 0;
    swift_willThrow();

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_225A3E938(uint64_t a1)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = v1;
  v3[37] = v1;

  if (v1)
  {
    v4 = sub_225A3ECB0;
  }

  else
  {
    v4 = sub_225A3EA64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225A3EA64()
{
  v1 = *(v0 + 104);
  sub_2259BEF00(*(v0 + 256), *(v0 + 264));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_225A3EAF8(uint64_t a1)
{
  v3 = *v2;
  v3[15] = v2;
  v3[16] = a1;
  v3[17] = v1;
  v3[40] = v1;

  if (v1)
  {
    v4 = sub_225A3ED30;
  }

  else
  {
    v4 = sub_225A3EC24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225A3EC24()
{
  v1 = v0[16];
  sub_2259BEF00(v0[32], v0[33]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_225A3ECB0()
{
  v1 = v0[34];
  sub_2259BEF00(v0[32], v0[33]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_225A3ED30()
{
  sub_2259BEF00(v0[32], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = *a3;
  *(v4 + 33) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_225A3EDDC, 0, 0);
}

uint64_t sub_225A3EDDC()
{
  v1 = decodeCertificate(fromBase64DER:)(*(v0 + 40));
  *(v0 + 80) = v1;
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 33);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_225A3EEE4;

    return DIPOIDVerifier.verifyLeaf(_:forUsage:)(v6, v0 + 16);
  }
}

uint64_t sub_225A3EEE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_225A3F074;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_225A3F00C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225A3F00C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_225A3F074()
{
  v1 = *(v0 + 8);

  return v1();
}

__SecTrust *DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v76[-v8];
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a3;
  v15 = *(a3 + 8);
  v17 = *(a3 + 16);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  v19 = decodeCertificate(fromBase64DER:)(v18);
  if (!v20)
  {
    v22 = v19;
    v23 = v85;
    v80 = v9;
    v81 = v11;
    v82 = v14;
    v83 = v17;
    v86 = v15;
    v84 = 0;
    v24 = SecCertificateCopyNormalizedIssuerSequence(v19);
    if (v24)
    {
      v25 = v24;
      v26 = sub_225CCCFA4();
      v28 = v27;

      v29 = *v23;
      if (*(*v23 + 16) && (v30 = sub_2259F1D7C(v26, v28), (v31 & 1) != 0))
      {
        v32 = *(*(v29 + 56) + 8 * v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_225CD73E0;
        *(v33 + 32) = v22;
        *(v33 + 40) = v32;
        v87 = v16;
        v88 = v86;
        v89 = v83;
        v34 = v32;
        v35 = v22;
        v14 = DIPOIDVerifier.verifyChain(_:forUsage:)(v33, &v87);
        sub_2259BEF00(v26, v28);
      }

      else
      {
        v36 = v22;
        v79 = v28;
        v80 = v26;
        v37 = v16;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v38 = off_28105B918;
        v39 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v40 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v40));
        v41 = v81;
        v42 = &v38[v39];
        v43 = v82;
        (*(v81 + 16))(v82, v42, v10);
        os_unfair_lock_unlock(&v38[v40]);
        v44 = v86;
        v45 = v83;
        sub_2259F6128(v37, v86, v83);
        v46 = sub_225CCD934();
        v47 = sub_225CCED04();
        sub_2259F6140(v37, v44, v45);
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v77 = v47;
          v49 = v48;
          v90 = swift_slowAlloc();
          v78 = v10;
          v50 = v90;
          *v49 = 136446210;
          v87 = v37;
          v88 = v44;
          v89 = v45;
          v51 = DIPCertUsage.policyName.getter();
          v53 = v36;
          v54 = sub_2259BE198(v51, v52, &v90);

          *(v49 + 4) = v54;
          v36 = v53;
          v44 = v86;
          _os_log_impl(&dword_2259A7000, v46, v77, "Could not find matching intermediate cert for usage = %{public}s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x22AA6F950](v50, -1, -1);
          MEMORY[0x22AA6F950](v49, -1, -1);

          (*(v41 + 8))(v82, v78);
        }

        else
        {

          (*(v41 + 8))(v43, v10);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_225CD7D40;
        *(v74 + 32) = v36;
        v87 = v37;
        v88 = v44;
        v89 = v45;
        v75 = v36;
        v14 = DIPOIDVerifier.verifyChain(_:forUsage:)(v74, &v87);
        sub_2259BEF00(v80, v79);
      }
    }

    else
    {
      v85 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 17;
      v87 = v16;
      v88 = v86;
      v89 = v83;
      v56 = DIPCertUsage.policyName.getter();
      v57 = MEMORY[0x277D83838];
      *(inited + 64) = MEMORY[0x277D837D0];
      *(inited + 72) = v57;
      *(inited + 40) = v56;
      *(inited + 48) = v58;
      v59 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);
      sub_2259CB5EC();
      swift_allocError();
      v61 = v60;
      v62 = sub_225CCE954();
      v63 = *(v62 - 8);
      v64 = v80;
      (*(v63 + 56))(v80, 1, 1, v62);
      LODWORD(v62) = (*(v63 + 48))(v64, 1, v62);
      sub_2259CB640(v64, &unk_27D73B050);
      if (v62)
      {
        v65 = 124;
      }

      else
      {
        v65 = 23;
      }

      v66 = MEMORY[0x277D84F90];
      v67 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v67;
      sub_225B2C4A0(v59, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v87);

      v69 = v87;
      v70 = sub_225B29AA0(0, 1, 1, v66);
      v72 = *(v70 + 2);
      v71 = *(v70 + 3);
      v14 = (v72 + 1);
      if (v72 >= v71 >> 1)
      {
        v70 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v70);
      }

      *(v70 + 2) = v14;
      v73 = &v70[56 * v72];
      *(v73 + 4) = 0xD00000000000003BLL;
      *(v73 + 5) = 0x8000000225D19370;
      *(v73 + 6) = 0xD000000000000022;
      *(v73 + 7) = 0x8000000225D19320;
      *(v73 + 8) = 0xD000000000000023;
      *(v73 + 9) = 0x8000000225D193D0;
      *(v73 + 10) = 600;
      *v61 = v65;
      *(v61 + 8) = v70;
      *(v61 + 16) = 0xD00000000000003BLL;
      *(v61 + 24) = 0x8000000225D19370;
      *(v61 + 32) = v69;
      *(v61 + 40) = 0;
      swift_willThrow();
    }
  }

  return v14;
}

uint64_t sub_225A3F820(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_225A3F85C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A47350;

  return DIPOIDVerifier.verifyChain(_:forUsage:)(a1, a2);
}

uint64_t sub_225A3F900(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 33) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_225A3F930, 0, 0);
}

uint64_t sub_225A3F930()
{
  v1 = decodeCertificateChain(fromBase64DER:)(*(v0 + 40));
  *(v0 + 72) = v1;
  v2 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_225A3FA38;

  return DIPOIDVerifier.verifyChain(_:forUsage:)(v3, v0 + 16);
}

uint64_t sub_225A3FA38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225A47340, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_225A3FB98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A13BBC;

  return DIPOIDVerifier.verifyLeaf(_:forUsage:)(a1, a2);
}

uint64_t sub_225A3FC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = *a3;
  *(v4 + 33) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_225A3FC70, 0, 0);
}

uint64_t sub_225A3FC70()
{
  v1 = decodeCertificate(fromBase64DER:)(*(v0 + 40));
  *(v0 + 80) = v1;
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 33);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_225A3FD78;

    return DIPOIDVerifier.verifyLeaf(_:forUsage:)(v6, v0 + 16);
  }
}

uint64_t sub_225A3FD78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_225A4734C;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_225A47348;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225A3FEA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 40 * v23);
      if (a2)
      {
        sub_2259A9C20(v25, v31);
      }

      else
      {
        sub_225A32940(v25, v31);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();

      result = sub_225CCFC24();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = (-1 << v16) & ~*(v14 + 8 * (v16 >> 6));
      if (!v18)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v18)) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      result = sub_2259A9C20(v31, *(v7 + 56) + 40 * v19);
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_225A4054C(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_225CCF564();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_2259CB810(v27, v38);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_225A40810(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B418);
  v32 = a2;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      MEMORY[0x22AA6E420](v21);
      result = sub_225CCFC24();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A40AB0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_225CCF454();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B410);
  v39 = a2;
  result = sub_225CCF564();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_2259B9624((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_2259CB810(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_225CCE344();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_2259B9624(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_225A40E50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B408);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_2259CB710(v31, *(*(v5 + 48) + 16 * v20 + 8));
        v22 = v21;
      }

      sub_225CCFBD4();
      sub_225CCCFB4();
      result = sub_225CCFC24();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_225A410F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F0);
  v37 = a2;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[3];
      v38 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v38;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A413F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D8);
  v41 = a2;
  result = sub_225CCF564();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_225A47298(v29, v42);
      }

      else
      {
        sub_225A47228(v29, v42);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_225A47298(v42, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_225A41748(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3C8);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        sub_2259CB710(v30, *(&v30 + 1));
      }

      result = sub_225CCFBC4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_225A419E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A8);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v28 = *(*(v5 + 48) + 16 * (v17 | (v8 << 6)));
      if ((a2 & 1) == 0)
      {
        sub_2259CB710(v28, *(*(v5 + 48) + 16 * (v17 | (v8 << 6)) + 8));
      }

      sub_225CCFBD4();
      sub_225CCCFB4();
      result = sub_225CCFC24();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v16 = v28;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v16 = v28;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_225A41CA0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_225CCF564();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_225CCEF54();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_225A41F00(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AnyCodable();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B390);
  v41 = a2;
  result = sub_225CCF564();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_225A471C0(v29, v42, type metadata accessor for AnyCodable);
      }

      else
      {
        sub_225A47158(v29, v42, type metadata accessor for AnyCodable);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_225A471C0(v42, *(v10 + 56) + v28 * v18, type metadata accessor for AnyCodable);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_225A42278(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AnyCodable();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B388);
  v38 = a2;
  result = sub_225CCF564();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v3;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v37 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v38)
      {
        sub_225A471C0(v26, v8, type metadata accessor for AnyCodable);
      }

      else
      {
        sub_225A47158(v26, v8, type metadata accessor for AnyCodable);
      }

      result = sub_225CCFBC4();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      result = sub_225A471C0(v8, *(v11 + 56) + v25 * v19, type metadata accessor for AnyCodable);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_225A425C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B380);
  v36 = a2;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v36 & 1) == 0)
      {
        sub_2259F6128(v23, v24, v25);
      }

      result = sub_225CCFBC4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A42860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B378);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_2259B9624(v21, v31);
      }

      else
      {
        sub_2259CB810(v21, v31);
        v22 = v20;
      }

      sub_225CCFBD4();
      type metadata accessor for CFString(0);
      sub_225A47110(&qword_27D73AEA0, type metadata accessor for CFString);
      sub_225CCD504();
      result = sub_225CCFC24();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2259B9624(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_225A42B40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370);
  v35 = a2;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A42DF8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_225CCF564();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_225A43098(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340);
  v37 = a2;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A43358(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B358);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      MEMORY[0x22AA6E420](v29);
      MEMORY[0x22AA6E420](*(&v29 + 1));
      result = sub_225CCFC24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A435F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348);
  v34 = a2;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A43898(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v52 = &v41 - v8;
  v9 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B350);
  v49 = a2;
  result = sub_225CCF564();
  v15 = result;
  if (*(v13 + 16))
  {
    v42 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v43 = v6 + 16;
    v44 = v13;
    v45 = v6;
    v46 = v5;
    v50 = (v6 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v51 = *(v47 + 72);
      v29 = v28 + v51 * v27;
      if (v49)
      {
        sub_225A471C0(v29, v12, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v30 = *(v13 + 56);
        v31 = *(v45 + 72);
        (*(v45 + 32))(v52, v30 + v31 * v27, v5);
      }

      else
      {
        sub_225A47158(v29, v12, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v32 = *(v13 + 56);
        v31 = *(v45 + 72);
        (*(v45 + 16))(v52, v32 + v31 * v27, v5);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      sub_225CCD124();
      sub_225A47110(&qword_27D73FDF0, MEMORY[0x277CC95F0]);
      sub_225CCE354();
      result = sub_225CCFC24();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v5 = v46;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v5 = v46;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_225A471C0(v12, *(v15 + 48) + v51 * v23, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
      result = (*v50)(*(v15 + 56) + v31 * v23, v52, v5);
      ++*(v15 + 16);
      v13 = v44;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v13 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v3 = v15;
  return result;
}

void *sub_225A43D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + v17);
        sub_225A32940(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2259A9C20(v19, *(v4 + 56) + 40 * v17);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A43F40(uint64_t *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v3;
  v6 = sub_225CCF554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_2259CB810(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_225A440E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B418);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A44248()
{
  v1 = v0;
  v26 = sub_225CCF454();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20]();
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B410);
  v3 = *v0;
  v4 = sub_225CCF554();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_2259CB810(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_2259B9624(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_225A444CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B408);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_2259CB710(v19, *(&v19 + 1));
        result = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A44638()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F0);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A447F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D8);
  v5 = *v0;
  v6 = sub_225CCF554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_225A47228(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_225A47298(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_225A44A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3C8);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_2259CB710(v18, *(&v18 + 1));
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A44BD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A8);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2259CB710(v18, *(&v18 + 1));
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_225A44D54(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_225CCF554();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_225A44EA4()
{
  v1 = v0;
  v2 = type metadata accessor for AnyCodable();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B390);
  v5 = *v0;
  v6 = sub_225CCF554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_225A47158(*(v5 + 56) + v27, v31, type metadata accessor for AnyCodable);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_225A471C0(v26, *(v28 + 56) + v27, type metadata accessor for AnyCodable);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_225A450FC()
{
  v1 = v0;
  v2 = type metadata accessor for AnyCodable();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B388);
  v6 = *v0;
  v7 = sub_225CCF554();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_225A47158(*(v6 + 56) + v23, v5, type metadata accessor for AnyCodable);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_225A471C0(v5, *(v8 + 56) + v23, type metadata accessor for AnyCodable);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_225A45330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B380);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_2259F6128(v19, v20, v21);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_225A454A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B378);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2259CB810(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2259B9624(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_225A45624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A457A4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_225CCF554();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_225A45904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A45A7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B358);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A45BDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348);
  v2 = *v0;
  v3 = sub_225CCF554();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_225A45D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v34 - v5;
  v6 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B350);
  v9 = *v0;
  v10 = sub_225CCF554();
  v11 = v10;
  if (*(v9 + 16))
  {
    v35 = v1;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v13 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v44 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = v9;
    v21 = v39;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = *(v40 + 72) * v25;
        sub_225A47158(*(v9 + 48) + v26, v21, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v28 = v42;
        v27 = v43;
        v29 = *(v43 + 72) * v25;
        v30 = *(v9 + 56) + v29;
        v31 = v41;
        (*(v43 + 16))(v41, v30, v42);
        v32 = v44;
        sub_225A471C0(v21, *(v44 + 48) + v26, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v33 = v31;
        v9 = v38;
        result = (*(v27 + 32))(*(v32 + 56) + v29, v33, v28);
        v19 = v45;
      }

      while (v45);
    }

    v23 = v15;
    v11 = v44;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v24 = *(v13 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v45 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void sub_225A4607C(id a1, char a2)
{
  if (a2)
  {
  }
}

void *_s13CoreIDVShared14DIPOIDVerifierV27getSpecificCertificateErrorys0G0_psAE_pFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v61 - v4;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  Error.dipErrorCode.getter(v79, &v72);
  if (v72 != 263)
  {
    goto LABEL_24;
  }

  v78 = a1;
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if (!swift_dynamicCast())
  {
    goto LABEL_24;
  }

  v68 = v12;
  v13 = v77;
  v14 = v77;

  if (!v13)
  {
    goto LABEL_24;
  }

  swift_getErrorValue();
  v15 = sub_225CCFB44();
  v17 = v16;
  if (v15 == sub_225CCE474() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_225CCF934();

    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v69 = v13;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  (*(v7 + 16))(v10, &v20[v21], v6);
  os_unfair_lock_unlock(&v20[v22]);
  v13 = v69;
  v23 = v69;
  v24 = sub_225CCD934();
  v25 = sub_225CCED14();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    swift_getErrorValue();
    *(v26 + 4) = sub_225CCFB34();

    _os_log_impl(&dword_2259A7000, v24, v25, "Untrusted certificate underlying security error: %ld", v26, 0xCu);
    v27 = v26;
    v13 = v69;
    MEMORY[0x22AA6F950](v27, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
  swift_getErrorValue();
  v28 = v71;
  v29 = sub_225CCFB34();
  if (v29 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v29 <= 0x7FFFFFFF)
  {
    if (v29 > -67819)
    {
      switch(v29)
      {
        case 0xFFFF9D1A:
          v30 = 267;
          break;
        case 0xFFFEF7EE:
          v30 = 268;
          break;
        case 0xFFFEF716:
          v30 = 265;
          break;
        default:
          goto LABEL_23;
      }

LABEL_29:
      v65 = "certificate error";
      v66 = "topekaServerSigning";
      v33 = v13;
      v34 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a1 = swift_allocError();
      v6 = v35;
      swift_getErrorValue();
      v36 = v70;
      v37 = v69;
      v38 = v36;
      v39 = v69;
      sub_225B21FAC(v38, &v72);

      v28 = v73;
      v67 = 0x8000000225D19400;
      if (v73)
      {
        v68 = v72;
        v63 = v75;
        v64 = v74;
        v40 = v76;
        v62 = v77;
      }

      else
      {
        v61 = v34;
        v72 = v39;
        v41 = v39;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v68 = v30;
          v42 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v43 = v39;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v45 = [v42 code];
          v46 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v46;
          *(inited + 40) = v45;
          v40 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v47 = v43;
          v63 = 0;
          v64 = 0;
          v28 = MEMORY[0x277D84F90];
          v62 = v43;
        }

        else
        {
          v72 = v39;
          v48 = v39;
          v49 = sub_225CCE954();
          v50 = swift_dynamicCast();
          v51 = *(v49 - 8);
          (*(v51 + 56))(v5, v50 ^ 1u, 1, v49);
          LODWORD(v49) = (*(v51 + 48))(v5, 1, v49);
          sub_2259CB640(v5, &unk_27D73B050);
          if (v49)
          {
            v30 = v30;
          }

          else
          {
            v30 = 23;
          }

          v68 = v30;
          v28 = MEMORY[0x277D84F90];
          v40 = sub_225B2C374(MEMORY[0x277D84F90]);
          v52 = v39;
          v63 = 0x8000000225D19400;
          v64 = 0xD000000000000011;
          v62 = v39;
        }

        v34 = v61;
      }

      v10 = (v66 | 0x8000000000000000);
      v25 = v65 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v40;
      sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v72);

      v13 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_39;
      }

      goto LABEL_44;
    }

    if (v29 == -67820)
    {
      v30 = 264;
      goto LABEL_29;
    }

    if (v29 == -67819)
    {
      v30 = 266;
      goto LABEL_29;
    }

LABEL_23:

LABEL_24:
    v31 = a1;
    return a1;
  }

  __break(1u);
LABEL_44:
  v28 = sub_225B29AA0(0, *(v28 + 2) + 1, 1, v28);
LABEL_39:
  v55 = *(v28 + 2);
  v54 = *(v28 + 3);
  if (v55 >= v54 >> 1)
  {
    v28 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v28);
  }

  v56 = v69;

  *(v28 + 2) = v55 + 1;
  v57 = &v28[56 * v55];
  v58 = v67;
  *(v57 + 4) = 0xD000000000000011;
  *(v57 + 5) = v58;
  *(v57 + 6) = 0xD000000000000022;
  *(v57 + 7) = v10;
  *(v57 + 8) = 0xD00000000000001FLL;
  *(v57 + 9) = v25;
  *(v57 + 10) = 660;
  *v6 = v68;
  v59 = v63;
  v60 = v64;
  *(v6 + 8) = v28;
  *(v6 + 16) = v60;
  *(v6 + 24) = v59;
  *(v6 + 32) = v13;
  *(v6 + 40) = v62;

  return a1;
}

unint64_t sub_225A468EC()
{
  result = qword_27D73B330;
  if (!qword_27D73B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B330);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared12DIPCertUsageO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_225A4695C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_225A469A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_225A469E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DIPOID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPOID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A4733C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OIDVerifying.verifyChain(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A4733C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OIDVerifying.verifyLeaf(_:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A4733C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OIDVerifying.verifyLeaf(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A206E8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_225A4706C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A470B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A47110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225A47158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A471C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A47228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A47298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_225A47308(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_225A47314(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_225A47328(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t DIPTrustKey.encryptedPrivateKey.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t DIPTrustKey.attestation.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t DIPTrustKey.publicKey.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t DIPTrustKey.keyBlob.getter()
{
  v1 = *(v0 + 48);
  sub_2259CB710(v1, *(v0 + 56));
  return v1;
}

uint64_t DIPTrustKey.baaCertificate.getter()
{
  v1 = *(v0 + 64);
  sub_2259CB710(v1, *(v0 + 72));
  return v1;
}

uint64_t DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_225A47490, 0, 0);
}

uint64_t sub_225A47490()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_2259CB710(v0[5], v0[6]);
  sub_2259CB710(v1, v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_225A47540;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return sub_225A477CC(14, v4, v5, v6, v7);
}

uint64_t sub_225A47540(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[12] = v2;

  v7 = v6[8];
  v8 = v6[7];
  v9 = v6[6];
  v10 = v6[5];
  if (v2)
  {
    sub_2259BEF00(v8, v7);
    sub_2259BEF00(v10, v9);
    v11 = sub_225A47728;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    sub_2259BEF00(v8, v7);
    sub_2259BEF00(v10, v9);
    v11 = sub_225A476E8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_225A476E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 104);
  *v1 = *(v0 + 24);
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 64) = vextq_s8(v5, v5, 8uLL);
  return (*(v0 + 8))();
}

uint64_t sub_225A47728()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_2259BEF00(v0[3], v0[4]);
  sub_2259BEF00(v6, v5);
  sub_2259BEF00(v4, v3);
  sub_2259BEF00(v1, v2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_225A477CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[62] = a4;
  v5[63] = a5;
  v5[60] = a2;
  v5[61] = a3;
  v5[59] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v5[64] = swift_task_alloc();
  v6 = sub_225CCD954();
  v5[65] = v6;
  v5[66] = *(v6 - 8);
  v5[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A478CC, 0, 0);
}

uint64_t sub_225A478CC()
{
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v31 = v0[59];
  v32 = v2;
  v0[68] = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD9620;
  *(inited + 32) = sub_225CCE474();
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v7;
  *(inited + 48) = 1;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v8;
  *(inited + 120) = v6;
  *(inited + 96) = 0;
  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v9;
  v10 = MEMORY[0x277CC9318];
  *(inited + 168) = MEMORY[0x277CC9318];
  *(inited + 144) = v2;
  *(inited + 152) = v1;
  *(inited + 176) = sub_225CCE474();
  *(inited + 184) = v11;
  *(inited + 216) = v10;
  *(inited + 192) = v4;
  *(inited + 200) = v3;
  *(inited + 224) = sub_225CCE474();
  *(inited + 232) = v12;
  *(inited + 264) = v6;
  *(inited + 240) = v31;
  *(inited + 272) = sub_225CCE474();
  *(inited + 280) = v13;
  *(inited + 312) = v6;
  *(inited + 288) = 1;
  *(inited + 320) = sub_225CCE474();
  *(inited + 328) = v14;
  *(inited + 360) = v10;
  *(inited + 336) = xmmword_225CD4150;
  *(inited + 368) = sub_225CCE474();
  *(inited + 376) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_225CD73D0;
  *(v16 + 32) = sub_225CCE474();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_225CCE474();
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_225CCE474();
  *(v16 + 72) = v19;
  *(v16 + 80) = sub_225CCE474();
  *(v16 + 88) = v20;
  *(v16 + 96) = sub_225CCE474();
  *(v16 + 104) = v21;
  *(v16 + 112) = sub_225CCE474();
  *(v16 + 120) = v22;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  *(inited + 384) = v16;
  sub_2259CB710(v32, v1);
  sub_2259CB710(v4, v3);
  v23 = sub_225B2CD9C(inited);
  v0[69] = v23;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90);
  swift_arrayDestroy();
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v24 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v25 = *(v24 + 2);
  sub_225A02E9C(v25);
  os_unfair_lock_unlock(v24 + 8);
  if (v25)
  {
    v25();
    sub_225A02E98(v25);
    v26 = v0[57];
    v27 = v0[58];
  }

  else
  {
    v26 = &type metadata for DeviceIdentityCommon;
    v27 = &protocol witness table for DeviceIdentityCommon;
    v0[57] = &type metadata for DeviceIdentityCommon;
    v0[58] = &protocol witness table for DeviceIdentityCommon;
    v28 = swift_allocObject();
    v0[54] = v28;
    *(v28 + 40) = &type metadata for DeviceInformationProvider;
    *(v28 + 48) = &protocol witness table for DeviceInformationProvider;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 54, v26);
  v33 = (v27[3] + *v27[3]);
  v29 = swift_task_alloc();
  v0[70] = v29;
  *v29 = v0;
  v29[1] = sub_225A47D30;

  return v33(v23, v26, v27);
}

uint64_t sub_225A47D30(void *a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 568) = a2;
  *(v5 + 576) = v2;

  if (v2)
  {

    v6 = sub_225A484EC;
  }

  else
  {

    v6 = sub_225A47E60;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225A47E60()
{
  v68 = v0;
  v1 = v0[71];
  __swift_destroy_boxed_opaque_existential_0((v0 + 54));
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v2; i = v0)
  {
    v3 = 0;
    v4 = v0[66];
    v64 = v1 & 0xFFFFFFFFFFFFFF8;
    v65 = v1 & 0xC000000000000001;
    v62 = (v4 + 16);
    v60 = v0[71] + 32;
    v61 = (v4 + 8);
    v63 = v2;
    while (v65)
    {
      v5 = MEMORY[0x22AA6DA80](v3, v0[71]);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_9:
      v7 = v0[68];
      v66 = v5;
      v8 = SecCertificateCopyData(v5);
      v9 = sub_225CCCFA4();
      v11 = v10;

      v12 = sub_225CCCF74();
      [v7 appendData_];

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v13 = v0[67];
      v14 = v0[65];
      v15 = off_28105B918;
      v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v17));
      (*v62)(v13, &v15[v16], v14);
      os_unfair_lock_unlock(&v15[v17]);
      sub_2259CB710(v9, v11);
      v1 = sub_225CCD934();
      v18 = sub_225CCED04();
      sub_2259BEF00(v9, v11);
      v19 = os_log_type_enabled(v1, v18);
      v20 = v0[67];
      v21 = v0[65];
      if (v19)
      {
        v59 = v0[67];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v67[0] = v23;
        *v22 = 136446210;
        v24 = sub_225CCCF84();
        v58 = v21;
        v26 = sub_2259BE198(v24, v25, v67);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_2259A7000, v1, v18, "Creating baaCertificates: [%{public}s]", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        v0 = i;
        MEMORY[0x22AA6F950](v23, -1, -1);
        MEMORY[0x22AA6F950](v22, -1, -1);

        sub_2259BEF00(v9, v11);
        (*v61)(v59, v58);
      }

      else
      {
        sub_2259BEF00(v9, v11);

        (*v61)(v20, v21);
      }

      ++v3;
      if (v6 == v63)
      {
        goto LABEL_18;
      }
    }

    if (v3 >= *(v64 + 16))
    {
      goto LABEL_16;
    }

    v5 = *(v60 + 8 * v3);
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_225CCF144();
  }

LABEL_18:

  v27 = sub_225CCCF04();
  if (v28 >> 60 == 15)
  {
    v29 = v0[64];
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v29, 1, 1, v34);
    v36 = (*(v35 + 48))(v29, 1, v34);
    sub_2259DB318(v29);
    v37 = sub_225B2C374(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v37;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v67);

    v39 = v67[0];
    v40 = sub_225B29AA0(0, 1, 1, v30);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    v43 = i[68];
    *(v40 + 2) = v42 + 1;
    v44 = &v40[56 * v42];
    *(v44 + 4) = 0xD000000000000020;
    *(v44 + 5) = 0x8000000225D198B0;
    *(v44 + 6) = 0xD00000000000001FLL;
    *(v44 + 7) = 0x8000000225D198E0;
    *(v44 + 8) = 0xD000000000000034;
    *(v44 + 9) = 0x8000000225D19900;
    *(v44 + 10) = 73;
    if (v36)
    {
      v45 = 125;
    }

    else
    {
      v45 = 23;
    }

    *v33 = v45;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0xD000000000000020;
    *(v33 + 24) = 0x8000000225D198B0;
    *(v33 + 32) = v39;
    *(v33 + 40) = 0;
    swift_willThrow();

    v46 = i[1];

    return v46();
  }

  else
  {
    v48 = v0[68];
    v49 = v27;
    v50 = v28;
    v51 = sub_225CCCF74();
    [v48 appendData_];

    v52 = v48;
    v53 = sub_225CCCFA4();
    v55 = v54;

    sub_2259B97A8(v49, v50);

    v56 = v0[1];

    return v56(v53, v55);
  }
}

uint64_t sub_225A484EC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 432);

  v1 = *(v0 + 8);

  return v1();
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_225A48588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225A485DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t HPKESuiteKwV1.init(pkISm:info:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v28 = sub_225CCDDE4();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_225CCDDC4();
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCDDD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = &type metadata for AEADScheme_AES_128_GCM;
  *(a5 + 1) = &off_283903448;
  v19 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v15 + 104))(v18, *MEMORY[0x277CC5450], v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CC5438], v27);
  (*(v6 + 104))(v9, *MEMORY[0x277CC5460], v28);
  sub_225CCDDA4();
  v20 = &a5[v19[7]];
  v21 = v30;
  *v20 = v29;
  *(v20 + 1) = v21;
  v22 = v19[8];
  v23 = type metadata accessor for HPKEPrivateKey(0);
  result = (*(*(v23 - 8) + 56))(&a5[v22], 1, 1, v23);
  v25 = &a5[v19[6]];
  v26 = v32;
  *v25 = v31;
  *(v25 + 1) = v26;
  return result;
}

uint64_t sub_225A48950(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double HPKESuiteKwV1.init(skR:info:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v26 = sub_225CCDDE4();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_225CCDDC4();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCDDD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = &type metadata for AEADScheme_AES_128_GCM;
  *(a4 + 1) = &off_283903448;
  v18 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v14 + 104))(v17, *MEMORY[0x277CC5450], v13);
  (*(v9 + 104))(v12, *MEMORY[0x277CC5438], v25);
  (*(v5 + 104))(v8, *MEMORY[0x277CC5460], v26);
  sub_225CCDDA4();
  v19 = v18[8];
  sub_225A5EB00(v27, &a4[v19], type metadata accessor for HPKEPrivateKey);
  v20 = type metadata accessor for HPKEPrivateKey(0);
  (*(*(v20 - 8) + 56))(&a4[v19], 0, 1, v20);
  result = 0.0;
  *&a4[v18[7]] = xmmword_225CD4150;
  v22 = &a4[v18[6]];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  return result;
}

void HPKESuiteKwV1.sealMessageHPKE<A>(message:to:encoder:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v210 = a6;
  v189 = a5;
  v206 = a3;
  v217 = a2;
  v208 = a1;
  v186 = a7;
  v237 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v191 = &v183 - v10;
  v209 = a4;
  v11 = sub_225CCEFC4();
  v187 = *(v11 - 8);
  v188 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v184 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v185 = &v183 - v16;
  v216 = sub_225CCDDB4();
  *&v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216, v17);
  *(&v215 + 1) = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_225CCDEA4();
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v19);
  v213 = &v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_225CCDE24();
  v204 = *(v21 - 8);
  v205 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v221 = &v183 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_225CCE164();
  v224 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  *&v219 = &v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_225CCDBA4();
  v225 = *(v222 - 8);
  MEMORY[0x28223BE20](v222, v27);
  v220 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_225CCD954();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v34 = off_28105B918;
  v35 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v36));
  v37 = *(v30 + 16);
  v198 = v30 + 16;
  v199 = v35;
  v197 = v37;
  v37(v33, &v34[v35], v29);
  v200 = v36;
  v201 = v34;
  os_unfair_lock_unlock(&v34[v36]);
  MEMORY[0x28223BE20](v38, v39);
  *(&v183 - 2) = v223;
  Logger.cryptoParam(_:)(sub_225A0E450);
  v40 = *(v30 + 8);
  v202 = v33;
  v203 = v30 + 8;
  v196 = v40;
  v41 = (v40)(v33, v29);
  v42 = v217;
  v43 = MEMORY[0x22AA6C6C0](v41);
  v45 = v44;
  v46 = sub_225A5EBD0(&qword_27D73AE10, MEMORY[0x277CC5540]);
  v47 = v219;
  sub_225CCDB94();
  sub_2259CB710(v43, v45);
  v48 = *(&v218 + 1);
  sub_2259DB138(v43, v45);
  v192 = v29;
  v49 = v24;
  v211 = v48;
  sub_2259BEF00(v43, v45);
  v50 = v220;
  v207 = v46;
  sub_225CCDB84();
  sub_2259BEF00(v43, v45);
  v51 = *(v224 + 8);
  v224 += 8;
  v190 = v49;
  v195 = v51;
  v51(v47, v49);
  v52 = sub_225A5EBD0(&qword_27D73AE58, MEMORY[0x277CC5290]);
  v53 = v222;
  v194 = v52;
  v54 = sub_225CCE154();
  v56 = sub_2259D732C(v54, v55);

  *&v218 = sub_2259D8490(v56);
  *(&v218 + 1) = v57;

  v58 = *(v225 + 8);
  v225 += 8;
  v193 = v58;
  v58(v50, v53);
  (*(v212 + 16))(v213, v42, v214);
  v59 = type metadata accessor for HPKESuiteKwV1(0);
  v60 = v223;
  (*(v215 + 16))(*(&v215 + 1), v223 + *(v59 + 20), v216);
  v61 = v60 + *(v59 + 24);
  sub_2259CB710(*v61, *(v61 + 8));
  v62 = v211;
  sub_225CCDDF4();
  v63 = v62;
  if (v62)
  {
    sub_2259BEF00(v218, *(&v218 + 1));
    goto LABEL_6;
  }

  v216 = v59;
  v217 = v61;
  v64 = v206[3];
  v65 = v206[4];
  __swift_project_boxed_opaque_existential_1(v206, v64);
  *&v215 = (*(v65 + 8))(v208, v209, v210, v64, v65);
  *(&v215 + 1) = v95;
  v96 = sub_225CCDE04();
  v98 = v96;
  v99 = v97;
  v100 = v97 >> 62;
  if ((v97 >> 62) > 1)
  {
    if (v100 == 2)
    {
      v105 = *(v96 + 16);
      v106 = *(v96 + 24);
      v107 = sub_225CCCA44();
      if (v107)
      {
        v108 = sub_225CCCA74();
        if (__OFSUB__(v105, v108))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v107 += v105 - v108;
      }

      v109 = __OFSUB__(v106, v105);
      v110 = v106 - v105;
      if (v109)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v111 = sub_225CCCA64();
      if (v111 >= v110)
      {
        v112 = v110;
      }

      else
      {
        v112 = v111;
      }

      v113 = (v112 + v107);
      if (v107)
      {
        v114 = v113;
      }

      else
      {
        v114 = 0;
      }

      v115 = v107;
    }

    else
    {
      *(v229 + 6) = 0;
      *&v229[0] = 0;
      v115 = v229;
      v114 = v229;
    }

    sub_225A5A00C(v115, v114, &v230);
    sub_2259BEF00(v98, v99);
    v102 = v222;
    v101 = v223;
    v103 = v220;
    v104 = v219;
    goto LABEL_48;
  }

  if (v100)
  {
    v116 = (v96 >> 32) - v96;
    if (v96 >> 32 >= v96)
    {
      v117 = sub_225CCCA44();
      if (!v117)
      {
LABEL_39:
        v103 = v220;
        v119 = sub_225CCCA64();
        if (v119 >= v116)
        {
          v120 = (v98 >> 32) - v98;
        }

        else
        {
          v120 = v119;
        }

        v121 = v120 + v117;
        if (v117)
        {
          v122 = v121;
        }

        else
        {
          v122 = 0;
        }

        sub_225A5A00C(v117, v122, &v230);
        sub_2259BEF00(v98, v99);
        v104 = v219;
        v102 = v222;
        v101 = v223;
        goto LABEL_48;
      }

      v118 = sub_225CCCA74();
      if (!__OFSUB__(v98, v118))
      {
        v117 += v98 - v118;
        goto LABEL_39;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  *&v229[0] = v96;
  WORD4(v229[0]) = v97;
  BYTE10(v229[0]) = BYTE2(v97);
  BYTE11(v229[0]) = BYTE3(v97);
  BYTE12(v229[0]) = BYTE4(v97);
  BYTE13(v229[0]) = BYTE5(v97);
  sub_225A5A00C(v229, v229 + BYTE6(v97), &v230);
  sub_2259BEF00(v98, v99);
  v102 = v222;
  v101 = v223;
  v103 = v220;
  v104 = v219;
LABEL_48:
  v223 = *(&v230 + 1);
  v220 = v230;
  v219 = xmmword_225CD3100;
  v236 = xmmword_225CD3100;
  v123 = (v101 + *(v216 + 28));
  v124 = v123[1];
  v216 = v123;
  if (v124 >> 60 == 15)
  {
    v125 = v192;
    v126 = v190;
    v127 = v217;
    v214 = 0;
  }

  else
  {
    v128 = *v123;
    sub_2259CB710(*v123, v124);
    v126 = v190;
    sub_225CCDB94();
    sub_2259CB710(v128, v124);
    v213 = v128;
    sub_2259DB138(v128, v124);
    v214 = 0;
    sub_2259B97A8(v128, v124);
    sub_225CCDB84();
    v195(v104, v126);
    v129 = sub_225CCE154();
    v131 = sub_2259D732C(v129, v130);

    v132 = sub_2259D8490(v131);
    v134 = v133;

    v193(v103, v102);
    sub_2259B97A8(v236, *(&v236 + 1));
    *&v236 = v132;
    *(&v236 + 1) = v134;
    v135 = v200;
    v136 = v201;
    os_unfair_lock_lock(&v201[v200]);
    v137 = v202;
    v125 = v192;
    v197(v202, &v136[v199], v192);
    os_unfair_lock_unlock(&v136[v135]);
    sub_225B3EAA4(v137, &v236);
    sub_2259B97A8(v213, v124);
    v196(v137, v125);
    v127 = v217;
  }

  v138 = *v127;
  v139 = v127[1];
  sub_225CCDB94();
  sub_2259CB710(v138, v139);
  v140 = v214;
  sub_2259DB138(v138, v139);
  v217 = v140;
  sub_2259BEF00(v138, v139);
  sub_225CCDB84();
  v195(v104, v126);
  v141 = v222;
  v142 = sub_225CCE154();
  v144 = sub_2259D732C(v142, v143);

  v145 = sub_2259D8490(v144);
  v147 = v146;

  v193(v103, v141);
  v148 = v200;
  v149 = v201;
  os_unfair_lock_lock(&v201[v200]);
  v150 = v202;
  v197(v202, &v149[v199], v125);
  os_unfair_lock_unlock(&v149[v148]);
  sub_2259CB710(v145, v147);
  sub_225B41958();
  sub_2259BEF00(v145, v147);
  v196(v150, v125);
  v151 = *(&v236 + 1);
  v224 = v236;
  v152 = v220;
  *&v230 = v220;
  v153 = v223;
  *(&v230 + 1) = v223;
  v154 = *(&v218 + 1);
  v231 = v218;
  v232 = v219;
  v233 = v236;
  v234 = v219;
  *&v235 = v145;
  *(&v235 + 1) = v147;
  v229[0] = v215;
  v155 = *v216;
  v156 = *(v216 + 8);
  if (v156 >> 60 == 15)
  {
    v157 = 0;
  }

  else
  {
    v157 = *v216;
  }

  v158 = 0xC000000000000000;
  if (v156 >> 60 != 15)
  {
    v158 = *(v216 + 8);
  }

  v227 = v157;
  v228 = v158;
  v225 = v145;
  v222 = v147;
  v159 = v147;
  v160 = v218;
  sub_2259CB710(v145, v159);
  v161 = v153;
  v162 = v154;
  sub_2259CB710(v152, v161);
  sub_2259CB710(v160, v154);
  sub_2259CB6FC(v224, v151);
  sub_2259CB6FC(v155, v156);
  sub_2259DB42C();
  v163 = v221;
  v164 = v217;
  v165 = sub_225CCDE14();
  v63 = v164;
  if (!v164)
  {
    v167 = v166;
    v168 = v222;
    v224 = 0;
    v169 = v165;
    sub_2259BEF00(v227, v228);
    v170 = v200;
    v171 = v201;
    os_unfair_lock_lock(&v201[v200]);
    v172 = v202;
    v173 = v192;
    v197(v202, &v171[v199], v192);
    os_unfair_lock_unlock(&v171[v170]);
    sub_2259CB710(v169, v167);
    sub_225B41BAC();
    *&v219 = v169;
    sub_2259BEF00(v169, v167);
    v196(v172, v173);
    v174 = shouldIncludeUnencryptedData()();
    v175 = v209;
    v176 = *(v209 - 8);
    if (v174)
    {
      v177 = v185;
      (*(*(v209 - 8) + 16))(v185, v208, v209);
      v178 = 0;
    }

    else
    {
      v178 = 1;
      v177 = v185;
    }

    v179 = *(&v218 + 1);
    (*(v176 + 56))(v177, v178, 1, v175);
    v229[2] = v232;
    v229[3] = v233;
    v229[4] = v234;
    v229[5] = v235;
    v229[0] = v230;
    v229[1] = v231;
    v181 = v187;
    v180 = v188;
    v182 = v184;
    (*(v187 + 16))(v184, v177, v188);
    sub_225A0E2F8(&v230, &v227);
    HPKEEnvelope.init(params:data:unencryptedData:)(v229, v219, v167, v182, v175, v186);
    sub_2259BEF00(v215, *(&v215 + 1));
    sub_225A0E354(&v230);
    sub_2259BEF00(v225, v168);
    sub_2259BEF00(v218, v179);
    sub_2259BEF00(v220, v223);
    (*(v181 + 8))(v177, v180);
    (*(v204 + 8))(v221, v205);
    sub_2259B97A8(v236, *(&v236 + 1));
    return;
  }

  sub_225A0E354(&v230);
  sub_2259BEF00(v225, v222);
  sub_2259BEF00(v160, v162);
  sub_2259BEF00(v220, v223);
  sub_2259BEF00(v227, v228);
  (*(v204 + 8))(v163, v205);
  sub_2259BEF00(v215, *(&v215 + 1));
  sub_2259B97A8(v236, *(&v236 + 1));
LABEL_6:
  v225 = 0x8000000225D17280;
  v223 = "t the message using HPKE";
  v66 = v63;
  v67 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v224 = swift_allocError();
  v69 = v68;
  swift_getErrorValue();
  v70 = v226;
  v71 = v63;
  sub_225B21FAC(v70, &v230);

  v72 = *(&v230 + 1);
  if (*(&v230 + 1))
  {
    v221 = v231;
    v222 = v230;
    v220 = *(&v231 + 1);
    *&v219 = *(&v232 + 1);
    v73 = v232;
  }

  else
  {
    *(&v218 + 1) = 0;
    *&v230 = v63;
    v74 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v75 = *&v229[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v77 = [v75 code];
      v78 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v78;
      *(inited + 40) = v77;
      v73 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v79 = v63;
      v220 = 0;
      v221 = 0;
      v72 = MEMORY[0x277D84F90];
      v222 = 283;
    }

    else
    {
      *&v230 = v63;
      v80 = v63;
      v81 = sub_225CCE954();
      v82 = v191;
      v83 = swift_dynamicCast();
      v84 = *(v81 - 8);
      (*(v84 + 56))(v82, v83 ^ 1u, 1, v81);
      LODWORD(v84) = (*(v84 + 48))(v82, 1, v81);
      sub_2259CB640(v82, &unk_27D73B050);
      if (v84)
      {
        v85 = 283;
      }

      else
      {
        v85 = 23;
      }

      v222 = v85;
      v72 = MEMORY[0x277D84F90];
      v73 = sub_225B2C374(MEMORY[0x277D84F90]);
      v86 = v63;
      v221 = 0xD000000000000028;
      v220 = v225;
    }

    *&v219 = v63;
  }

  v87 = v223 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v230 = v73;
  sub_225B2C4A0(v67, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v230);

  v89 = v230;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_225B29AA0(0, *(v72 + 2) + 1, 1, v72);
  }

  v91 = *(v72 + 2);
  v90 = *(v72 + 3);
  if (v91 >= v90 >> 1)
  {
    v72 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v72);
  }

  *(v72 + 2) = v91 + 1;
  v92 = &v72[56 * v91];
  v93 = v225;
  *(v92 + 4) = 0xD000000000000028;
  *(v92 + 5) = v93;
  *(v92 + 6) = 0xD00000000000001CLL;
  *(v92 + 7) = 0x8000000225D17220;
  *(v92 + 8) = 0xD000000000000024;
  *(v92 + 9) = v87;
  *(v92 + 10) = 651;
  v94 = v221;
  *v69 = v222;
  *(v69 + 8) = v72;
  *(v69 + 16) = v94;
  *(v69 + 24) = v220;
  *(v69 + 32) = v89;
  *(v69 + 40) = v219;
  swift_willThrow();
}