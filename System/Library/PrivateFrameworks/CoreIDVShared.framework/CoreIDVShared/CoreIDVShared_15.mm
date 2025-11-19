uint64_t sub_225B063F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_225CCFBD4();
  sub_225CCE5B4();
  v6 = sub_225CCFC24();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_225CCF934() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_225B064E8(uint64_t a1)
{
  v2 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  sub_225CCF824();
  v3 = sub_225CCE444();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v50[0] = v2;
  sub_225A0492C(v3, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v5 = v2;
  if (qword_28105B6C0 != -1)
  {
LABEL_62:
    swift_once();
  }

  v6 = off_28105B6C8;
  os_unfair_lock_lock(off_28105B6C8 + 8);
  v7 = *(v6 + 3);

  os_unfair_lock_unlock(v6 + 8);
  if (v7)
  {
    v8 = sub_225CCE444();

    v9 = swift_isUniquelyReferenced_nonNull_native();
    *&v50[0] = v5;
    sub_225A0492C(v8, 0x737365636F7270, 0xE700000000000000, v9);
    v5 = *&v50[0];
  }

  v10 = sub_2259F6218(&unk_2838FE028);
  v11 = *(a1 + 32);
  a1 = v11 + 64;
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v14)
    {
      if (v15 <= v16 + 1)
      {
        v19 = v16 + 1;
      }

      else
      {
        v19 = v15;
      }

      v16 = v19 - 1;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          v14 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * v18);
        ++v17;
        if (v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v18 = v16;
LABEL_16:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v18 << 6);
    v22 = *(*(v11 + 48) + v21);
    sub_225A32940(*(v11 + 56) + 40 * v21, v46);
    LOBYTE(v47) = v22;
    sub_2259A9C20(v46, &v47 + 8);
    v16 = v18;
LABEL_17:
    v50[1] = v48;
    v50[2] = v49;
    v50[0] = v47;
    if (!v49)
    {

      return v5;
    }

    v23 = LOBYTE(v50[0]);
    sub_2259A9C20((v50 + 8), &v47);
    if (sub_225B05B70(v23, v10))
    {
      break;
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(&v47);
  }

  strcpy(v45, "certUsage");
  WORD1(v45[1]) = 0;
  HIDWORD(v45[1]) = -385875968;
  switch(v23)
  {
    case 1:
      HIWORD(v45[1]) = -4864;
      strcpy(v45, "inoProviderID");
      break;
    case 2:
      BYTE5(v45[1]) = 0;
      HIWORD(v45[1]) = -5120;
      strcpy(v45, "spWorkflowID");
      break;
    case 3:
      v45[0] = 0x6469766F72507073;
      v24 = 0xEC00000044497265;
      goto LABEL_49;
    case 4:
      HIDWORD(v45[1]) = -352321536;
      strcpy(v45, "attributeID");
      break;
    case 5:
      v45[0] = 0xD000000000000012;
      v24 = 0x8000000225D0C380;
      goto LABEL_49;
    case 6:
      strcpy(v45, "serverURL");
      WORD1(v45[1]) = 0;
      HIDWORD(v45[1]) = -385875968;
      break;
    case 7:
      v45[0] = 0xD000000000000010;
      v24 = 0x8000000225D0C3A0;
      goto LABEL_49;
    case 8:
      v45[0] = 0xD000000000000013;
      v24 = 0x8000000225D0C3C0;
      goto LABEL_49;
    case 9:
      strcpy(v45, "requestID");
      WORD1(v45[1]) = 0;
      HIDWORD(v45[1]) = -385875968;
      break;
    case 10:
      HIBYTE(v45[1]) = -18;
      strcpy(v45, "conversationID");
      break;
    case 11:
      v45[0] = 0xD000000000000010;
      v24 = 0x8000000225D0C3F0;
      goto LABEL_49;
    case 12:
      v45[0] = 0xD000000000000012;
      v24 = 0x8000000225D0C410;
      goto LABEL_49;
    case 13:
      v45[0] = 0xD000000000000013;
      v24 = 0x8000000225D0C430;
      goto LABEL_49;
    case 14:
      v45[1] = 0xEF656E6F5A64726FLL;
      v45[0] = 0x63655264756F6C63;
      break;
    case 15:
      BYTE5(v45[1]) = 0;
      HIWORD(v45[1]) = -5120;
      strcpy(v45, "deviceRegion");
      break;
    case 16:
      v45[0] = 0xD000000000000012;
      v24 = 0x8000000225D0C470;
      goto LABEL_49;
    case 17:
      break;
    case 18:
      HIBYTE(v45[1]) = -18;
      strcpy(v45, "databaseColumn");
      break;
    case 19:
      HIBYTE(v45[1]) = -18;
      strcpy(v45, "filesystemPath");
      break;
    case 20:
      v45[1] = 0xEF6F6E727245676ELL;
      v45[0] = 0x69796C7265646E75;
      break;
    case 21:
      v45[1] = 0xED0000676E69646FLL;
      v25 = 0x456567616D69;
      goto LABEL_47;
    case 22:
      v45[0] = 1701273968;
      v45[1] = 0xE400000000000000;
      break;
    case 23:
      v45[1] = 0xED00007265695468;
      v25 = 0x75614C6F6E69;
LABEL_47:
      v45[0] = v25 & 0xFFFFFFFFFFFFLL | 0x636E000000000000;
      break;
    case 24:
      strcpy(v45, "tryCount");
      BYTE1(v45[1]) = 0;
      WORD1(v45[1]) = 0;
      HIDWORD(v45[1]) = -402653184;
      break;
    case 25:
      v45[0] = 0xD000000000000012;
      v24 = 0x8000000225D0C4F0;
      goto LABEL_49;
    case 26:
      v45[0] = 0xD000000000000016;
      v24 = 0x8000000225D0C510;
LABEL_49:
      v45[1] = v24;
      break;
    default:
      HIWORD(v45[1]) = -4864;
      strcpy(v45, "inoWorkflowID");
      break;
  }

  __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
  sub_225CCF824();
  v26 = sub_225CCE444();

  v27 = v5;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v46[0] = v27;
  v29 = sub_2259F18D4(v45[0], v45[1]);
  v31 = v27[2];
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (!v33)
  {
    v35 = v30;
    if (v27[3] >= v34)
    {
      if ((v28 & 1) == 0)
      {
        v40 = v29;
        sub_225A45624();
        v29 = v40;
        if (v35)
        {
LABEL_56:
          v37 = v29;

          v5 = *&v46[0];
          v38 = *(*&v46[0] + 56);
          v39 = *(v38 + 8 * v37);
          *(v38 + 8 * v37) = v26;

          goto LABEL_19;
        }

        goto LABEL_58;
      }
    }

    else
    {
      sub_225A42B40(v34, v28);
      v29 = sub_2259F18D4(v45[0], v45[1]);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_65;
      }
    }

    if (v35)
    {
      goto LABEL_56;
    }

LABEL_58:
    v5 = *&v46[0];
    *(*&v46[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v41 = (v5[6] + 16 * v29);
    *v41 = v45[0];
    v41[1] = v45[1];
    *(v5[7] + 8 * v29) = v26;
    v42 = v5[2];
    v33 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v33)
    {
      goto LABEL_64;
    }

    v5[2] = v43;
    goto LABEL_19;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

id sub_225B06D38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2259D8718(0, &qword_281059A68);
    v4 = sub_225CCE2B4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void static DaemonAnalytics.sendPasskitRegistrationEvent(success:preconditionFailed:)(char a1, char a2)
{
  v4 = sub_225CCE444();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 17) = a1;
  v7[4] = sub_225B1F15C;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_225B06D38;
  v7[3] = &block_descriptor_3;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

unint64_t sub_225B06ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000225D1DD20;
  *(inited + 48) = sub_225CCE8E4();
  *(inited + 56) = 0x6673736563637573;
  *(inited + 64) = 0xEA00000000006C75;
  *(inited + 72) = sub_225CCE8E4();
  v1 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v1;
}

void static DaemonAnalytics.sendBoundBiometricDeletedEvent()()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v1 + 16))(v4, &v5[v6], v0);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2259A7000, v8, v9, "sendBoundBiometricDeletedEvent", v10, 2u);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v11 = sub_225CCE444();
  aBlock[4] = sub_225B21014;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_3;
  v12 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)(uint64_t a1, uint64_t a2, char a3, char a4, int a5)
{
  v24 = a5;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (*(v10 + 16))(v13, &v14[v15], v9);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = sub_225CCD934();
  v18 = sub_225CCED04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a3 & 1;
    _os_log_impl(&dword_2259A7000, v17, v18, "sendDateOfBirthInvalid. Did retrieve date of birth from pdf417: %{BOOL}d", v19, 8u);
    MEMORY[0x22AA6F950](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v20 = sub_225CCE444();
  v21 = swift_allocObject();
  *(v21 + 16) = a3 & 1;
  *(v21 + 17) = a4 & 1;
  *(v21 + 18) = v24 & 1;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  aBlock[4] = sub_225B1F180;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_9_0;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

unint64_t sub_225B07530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = 0x7974706D457369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_225CCE8E4();
  strcpy((inited + 56), "invalidRange");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_225CCE8E4();
  *(inited + 80) = 0x636572726F636E69;
  *(inited + 88) = 0xEF74616D726F4674;
  *(inited + 96) = sub_225CCE8E4();
  *(inited + 104) = 0x726575737369;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_225CCE444();
  v1 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v1;
}

void static DaemonAnalytics.sendGenderInvalidEvent(issuer:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v9 = off_28105B918;
  v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v11));
  (*(v5 + 16))(v8, &v9[v10], v4);
  os_unfair_lock_unlock(&v9[v11]);
  v12 = sub_225CCD934();
  v13 = sub_225CCED04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2259A7000, v12, v13, "sendGenderInvalidEvent", v14, 2u);
    MEMORY[0x22AA6F950](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = sub_225CCE444();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = sub_225B1F194;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_15;
  v17 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

unint64_t sub_225B07948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x726575737369;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_225CCE444();
  v1 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  return v1;
}

void static DaemonAnalytics.sendStaticWorkflowFetchedEvent(workflowID:wasLoadedFromCache:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v7 + 16))(v10, &v11[v12], v6);
  os_unfair_lock_unlock(&v11[v13]);

  v14 = sub_225CCD934();
  v15 = sub_225CCED04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_2259BE198(a1, a2, aBlock);
    *(v16 + 12) = 1026;
    *(v16 + 14) = a3 & 1;
    _os_log_impl(&dword_2259A7000, v14, v15, "sendStaticWorkflowFetchedEvent workflowID  = %{public}s, wasLoadedFromCache = %{BOOL,public}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v18 = sub_225CCE444();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3 & 1;
  aBlock[4] = sub_225B1F19C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_21;
  v20 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

unint64_t sub_225B07D34(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x776F6C666B726F77;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 48) = sub_225CCE444();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000225D1DD00;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v5 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v5;
}

void static DaemonAnalytics.sendStaticAssetFetchedEvent(wasLoadedFromCache:)(char a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_2259A7000, v10, v11, "sendStaticAssetFetchedEvent, wasLoadedFromCache = %{BOOL,public}d", v12, 8u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = sub_225CCE444();
  v14 = swift_allocObject();
  *(v14 + 16) = a1 & 1;
  aBlock[4] = sub_225B1F1A8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_27_0;
  v15 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

unint64_t sub_225B08104(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000225D1DD00;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  return v3;
}

void static DaemonAnalytics.sendDynamicWorkflowNeededEvent(providerID:wasFetchedInTime:didError:)(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);

  v16 = sub_225CCD934();
  v17 = sub_225CCED04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v8;
    aBlock[0] = v19;
    v20 = a1;
    v21 = a3;
    v22 = a4;
    v23 = v19;
    *v18 = 136446722;
    *(v18 + 4) = sub_2259BE198(v20, a2, aBlock);
    *(v18 + 12) = 1026;
    *(v18 + 14) = v21 & 1;
    *(v18 + 18) = 1026;
    *(v18 + 20) = v22 & 1;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendDynamicWorkflowNeededEvent providerID = %{public}s, wasFetchedInTime = %{BOOL,public}d, didError = %{BOOL,public}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    a4 = v22;
    a3 = v21;
    a1 = v20;
    MEMORY[0x22AA6F950](v24, -1, -1);
    MEMORY[0x22AA6F950](v18, -1, -1);

    (*(v9 + 8))(v12, v29);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = sub_225CCE444();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3 & 1;
  *(v26 + 33) = a4 & 1;
  aBlock[4] = sub_225B1F1B0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_33;
  v27 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v27);
}

void static DaemonAnalytics.sendAccountKeySigningKeyUnavailableEvent()()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v1 + 16))(v4, &v5[v6], v0);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2259A7000, v8, v9, "sendAccountKeySigningKeyUnavailableEvent", v10, 2u);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v11 = sub_225CCE444();
  aBlock[4] = sub_225B21014;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_36;
  v12 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);

  v16 = sub_225CCD934();
  v17 = sub_225CCED04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v8;
    aBlock[0] = v19;
    v20 = a1;
    v21 = a3;
    v22 = a4;
    v23 = v19;
    *v18 = 136446722;
    *(v18 + 4) = sub_2259BE198(v20, a2, aBlock);
    *(v18 + 12) = 1026;
    *(v18 + 14) = v21 & 1;
    *(v18 + 18) = 1026;
    *(v18 + 20) = v22 & 1;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendImageQualitySettingsNeededEvent providerID = %{public}s, wasFetchedInTime = %{BOOL,public}d, didError = %{BOOL,public}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    a4 = v22;
    a3 = v21;
    a1 = v20;
    MEMORY[0x22AA6F950](v24, -1, -1);
    MEMORY[0x22AA6F950](v18, -1, -1);

    (*(v9 + 8))(v12, v29);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = sub_225CCE444();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3 & 1;
  *(v26 + 33) = a4 & 1;
  aBlock[4] = sub_225B21114;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_42;
  v27 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v27);
}

unint64_t sub_225B08B34(uint64_t a1, uint64_t a2, char a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 48) = sub_225CCE444();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000225D1DCE0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0x726F727245646964;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v7 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v7;
}

void static DaemonAnalytics.sendWebPresentmentPermissionsTimeoutEvent(timedOut:)(char a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_2259A7000, v10, v11, "sendWebPresentmentPermissionsTimeoutEvent timedOut = %{BOOL,public}d", v12, 8u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = sub_225CCE444();
  v14 = swift_allocObject();
  *(v14 + 16) = a1 & 1;
  aBlock[4] = sub_225B1F1D4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_48;
  v15 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

unint64_t sub_225B08F38(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x74754F64656D6974;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  return v3;
}

void static DaemonAnalytics.sendIdentityProvisioningAttemptedEvent(workflowID:trigger:target:wasSuccessful:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v39 = a1;
  v40 = a5;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  (*(v11 + 16))(v14, &v15[v16], v10);
  os_unfair_lock_unlock(&v15[v17]);

  v18 = v10;
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v18;
    v37 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315906;
    v38 = a3;
    v24 = v39;
    if (a2)
    {
      v25 = v39;
    }

    else
    {
      v25 = 0x3E6C696E3CLL;
    }

    HIDWORD(v35) = v20;
    v26 = a4;
    v27 = a6;
    if (a2)
    {
      v28 = a2;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = sub_2259BE198(v25, v28, aBlock);
    a6 = v27;
    a4 = v26;

    *(v22 + 4) = v29;
    v30 = v24;
    a3 = v38;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2259BE198(a3, v26, aBlock);
    *(v22 + 22) = 2048;
    v31 = v40;
    *(v22 + 24) = v40;
    *(v22 + 32) = 1024;
    *(v22 + 34) = a6 & 1;
    _os_log_impl(&dword_2259A7000, v19, BYTE4(v35), "sendIdentityProvisioningAttemptedEvent workflowID = %s, trigger = %s, target = %lld, wasSuccessful = %{BOOL}d)", v22, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v23, -1, -1);
    MEMORY[0x22AA6F950](v22, -1, -1);

    (*(v11 + 8))(v37, v36);
  }

  else
  {

    (*(v11 + 8))(v14, v18);
    v30 = v39;
    v31 = v40;
  }

  v32 = sub_225CCE444();
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;
  *(v33 + 32) = v31;
  *(v33 + 40) = a6 & 1;
  *(v33 + 48) = v30;
  *(v33 + 56) = a2;
  aBlock[4] = sub_225B1F1DC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_54;
  v34 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v34);
}

unint64_t sub_225B09418(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x72656767697274;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_225CCE444();
  *(inited + 56) = 0x746567726174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  strcpy((inited + 80), "wasSuccessful");
  *(inited + 94) = -4864;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a6)
  {
    v11 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v11, 0x776F6C666B726F77, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
  }

  return v10;
}

void static DaemonAnalytics.sendWatchPrearmSuccessEvent(attempts:)(uint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_2259A7000, v10, v11, "sendWatchPrearmSuccessEvent attempts = %ld)", v12, 0xCu);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = sub_225CCE444();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = sub_225B1F1F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_60;
  v15 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

void static DaemonAnalytics.sendUploadedAssetToCloudKitEvent(assetType:isUserInitiated:fileSizeBytes:batchUploadDurationSeconds:metaUploadDurationSeconds:batchSizeBytes:batchAssetCount:networkType:networkCost:isScheduledUpload:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, uint64_t a11, unint64_t a12, unsigned __int8 a13)
{
  v44 = a1;
  v45 = a7;
  v40 = a4;
  v41 = a3;
  v19 = sub_225CCD954();
  v46 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v43 = a13;
  v42 = a11;
  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  (*(v46 + 16))(v22, &v23[v24], v19);
  os_unfair_lock_unlock(&v23[v25]);

  v26 = sub_225CCD934();
  v27 = sub_225CCED04();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v28 = 136317442;
    *(v28 + 4) = sub_2259BE198(v44, a2, aBlock);
    *(v28 + 12) = 1024;
    v38 = v19;
    v39 = v22;
    HIDWORD(v36) = v27;
    v29 = v41;
    *(v28 + 14) = v41 & 1;
    *(v28 + 18) = 2048;
    v30 = v40;
    *(v28 + 20) = v40;
    *(v28 + 28) = 2048;
    *(v28 + 30) = a9;
    *(v28 + 38) = 2048;
    *(v28 + 40) = a10;
    *(v28 + 48) = 2048;
    *(v28 + 50) = a5;
    *(v28 + 58) = 2048;
    *(v28 + 60) = a6;
    *(v28 + 68) = 2080;
    *(v28 + 70) = sub_2259BE198(v45, a8, aBlock);
    *(v28 + 78) = 2080;
    *(v28 + 80) = sub_2259BE198(v42, a12, aBlock);
    *(v28 + 88) = 1024;
    *(v28 + 90) = v43 & 1;
    _os_log_impl(&dword_2259A7000, v26, BYTE4(v36), "sendUploadedAssetToCloudKitEvent assetType = %s, isUserInitiated = %{BOOL}d, fileSizeBytes = %llu, batchUploadDurationSeconds = %f, metaUploadDurationSeconds = %f, batchSizeBytes = %llu, batchAssetCount = %lu, networkType = %s, networkCost = %s, isScheduledUpload = %{BOOL}d", v28, 0x5Eu);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v31, -1, -1);
    MEMORY[0x22AA6F950](v28, -1, -1);

    v32 = v44;
    (*(v46 + 8))(v39, v38);
  }

  else
  {

    (*(v46 + 8))(v22, v19);
    v30 = v40;
    v29 = v41;
    v32 = v44;
  }

  v33 = sub_225CCE444();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = a2;
  *(v34 + 32) = v29 & 1;
  *(v34 + 40) = v30;
  *(v34 + 48) = a9;
  *(v34 + 56) = a10;
  *(v34 + 64) = a5;
  *(v34 + 72) = a6;
  *(v34 + 80) = v45;
  *(v34 + 88) = a8;
  *(v34 + 96) = v42;
  *(v34 + 104) = a12;
  *(v34 + 112) = v43 & 1;
  aBlock[4] = sub_225B1F228;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_66;
  v35 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v35);
}

unint64_t sub_225B09D00(double a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CE7590;
  *(inited + 32) = 0x7079547465737361;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = sub_225CCE444();
  *(inited + 56) = 0x6E49726573557369;
  *(inited + 64) = 0xEF64657461697469;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "fileSizeBytes");
  *(inited + 94) = -4864;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000225D1DC80;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000225D1DCA0;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 152), "batchSizeBytes");
  *(inited + 167) = -18;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 176) = 0x7373416863746162;
  *(inited + 184) = 0xEF746E756F437465;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 200) = 0x546B726F7774656ELL;
  *(inited + 208) = 0xEB00000000657079;
  *(inited + 216) = sub_225CCE444();
  *(inited + 224) = 0x436B726F7774656ELL;
  *(inited + 232) = 0xEB0000000074736FLL;
  *(inited + 240) = sub_225CCE444();
  *(inited + 248) = 0xD000000000000011;
  *(inited + 256) = 0x8000000225D1DCC0;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v20;
}

uint64_t DaemonAnalytics.GarbageCollectionEventType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225B0A0A0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225B0A124()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225B0A180@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    sub_225CCF204();

    v6 = 0xD00000000000001ELL;
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    sub_225CCF204();

    v6 = 0xD00000000000001FLL;
    swift_getErrorValue();
LABEL_5:
    v3 = sub_225CCFB24();
    MEMORY[0x22AA6CE70](v3);

    return v6;
  }

  v5 = 0x6E61432072657355;
  if (v1 != 0x8000000000000008)
  {
    v5 = 0x636E614320707041;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x73736563637553;
  }

  else
  {
    return v5;
  }
}

void static DaemonAnalytics.sendDigitalPresentmentRequestDocumentEvent(merchantID:bundleID:documentType:outcome:elements:isTestMDL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, unsigned __int8 a9)
{
  v44 = a5;
  v45 = a6;
  v41 = a4;
  v42 = a1;
  v43 = a3;
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a7;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v40 = a9;
  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  (*(v13 + 16))(v16, &v18[v19], v12);
  os_unfair_lock_unlock(&v18[v20]);
  sub_225B1F270(v17);
  v21 = v12;
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  sub_225B1F28C(v17);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v21;
    v25 = v24;
    v26 = swift_slowAlloc();
    v46 = v17;
    aBlock[0] = v26;
    *v25 = 136315138;
    sub_225B1F270(v17);
    v27 = DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.description.getter();
    v39 = a2;
    v29 = v28;
    sub_225B1F28C(v17);
    v30 = sub_2259BE198(v27, v29, aBlock);
    a2 = v39;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_2259A7000, v22, v23, "sendDigitalPresentmentRequestDocumentEvent outcome = %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA6F950](v26, -1, -1);
    MEMORY[0x22AA6F950](v25, -1, -1);

    (*(v13 + 8))(v16, v38);
  }

  else
  {

    (*(v13 + 8))(v16, v21);
  }

  v31 = sub_225CCE444();
  v32 = swift_allocObject();
  v34 = v42;
  v33 = v43;
  *(v32 + 16) = v17;
  *(v32 + 24) = v34;
  *(v32 + 32) = a2;
  *(v32 + 40) = v33;
  *(v32 + 48) = v41;
  *(v32 + 56) = v40 & 1;
  v35 = v45;
  *(v32 + 64) = v44;
  *(v32 + 72) = v35;
  *(v32 + 80) = a8;
  aBlock[4] = sub_225B1F2A8;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_72;
  v36 = _Block_copy(aBlock);
  sub_225B1F270(v17);

  AnalyticsSendEventLazy();
  _Block_release(v36);
}

uint64_t sub_225B0A744(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  v13 = sub_225CCE444();

  *(inited + 48) = v13;
  v14 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  if (a3)
  {
    v15 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v15, 0x746E61686372656DLL, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
  }

  if (a5)
  {
    v17 = sub_225CCE444();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v17, 0x4449656C646E7562, 0xE800000000000000, v18);
  }

  if ((a1 >> 62) <= 1)
  {
    swift_getErrorValue();
    sub_225B1F270(a1);
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v19, 0xD000000000000010, 0x8000000225D1DB80, v20);
    sub_225B1F28C(a1);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v21, 0x444D747365547369, 0xE90000000000004CLL, v22);
  v23 = v14;
  if (a8)
  {
    v24 = sub_225CCE444();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v24, 0x746E656D75636F64, 0xEC00000065707954, v25);
  }

  v26 = *(a9 + 16);
  if (!v26)
  {
    return v23;
  }

  v291 = 0x8000000225D1DC40;
  v27 = (a9 + 48);
  while (2)
  {
    v32 = *(v27 - 2);
    v33 = *(v27 - 1);
    v35 = *v27;
    v27 += 24;
    v34 = v35;
    v36 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    switch(v35 >> 3)
    {
      case 1u:
        v159 = -2;
        if (v32)
        {
          v159 = -1;
        }

        if (v33)
        {
          v160 = v159;
        }

        else
        {
          v160 = v32;
        }

        v39 = [v36 initWithInteger_];
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_2259F18D4(0x614E796C696D6166, 0xEA0000000000656DLL);
        v163 = v23[2];
        v164 = (v162 & 1) == 0;
        v30 = __OFADD__(v163, v164);
        v165 = v163 + v164;
        if (v30)
        {
          goto LABEL_313;
        }

        v166 = v162;
        if (v23[3] >= v165)
        {
          if ((v161 & 1) == 0)
          {
            v286 = v41;
            sub_225A45624();
            v41 = v286;
            if (v166)
            {
              goto LABEL_280;
            }

            goto LABEL_265;
          }
        }

        else
        {
          sub_225A42B40(v165, v161);
          v41 = sub_2259F18D4(0x614E796C696D6166, 0xEA0000000000656DLL);
          if ((v166 & 1) != (v167 & 1))
          {
            goto LABEL_335;
          }
        }

        if (v166)
        {
          goto LABEL_280;
        }

LABEL_265:
        v23[(v41 >> 6) + 8] |= 1 << v41;
        v269 = (v23[6] + 16 * v41);
        *v269 = 0x614E796C696D6166;
        v269[1] = 0xEA0000000000656DLL;
        *(v23[7] + 8 * v41) = v39;
        v270 = v23[2];
        v30 = __OFADD__(v270, 1);
        v31 = v270 + 1;
        if (v30)
        {
          goto LABEL_328;
        }

        goto LABEL_12;
      case 2u:
        v117 = -2;
        if (v32)
        {
          v117 = -1;
        }

        if (v33)
        {
          v118 = v117;
        }

        else
        {
          v118 = v32;
        }

        v39 = [v36 initWithInteger_];
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_2259F18D4(7890291, 0xE300000000000000);
        v121 = v23[2];
        v122 = (v120 & 1) == 0;
        v30 = __OFADD__(v121, v122);
        v123 = v121 + v122;
        if (v30)
        {
          goto LABEL_300;
        }

        v124 = v120;
        if (v23[3] < v123)
        {
          sub_225A42B40(v123, v119);
          v41 = sub_2259F18D4(7890291, 0xE300000000000000);
          if ((v124 & 1) != (v125 & 1))
          {
            goto LABEL_335;
          }

LABEL_249:
          if (v124)
          {
            goto LABEL_280;
          }

          goto LABEL_250;
        }

        if (v119)
        {
          goto LABEL_249;
        }

        v283 = v41;
        sub_225A45624();
        v41 = v283;
        if (v124)
        {
          goto LABEL_280;
        }

LABEL_250:
        v23[(v41 >> 6) + 8] |= 1 << v41;
        v263 = (v23[6] + 16 * v41);
        *v263 = 7890291;
        v263[1] = 0xE300000000000000;
        *(v23[7] + 8 * v41) = v39;
        v264 = v23[2];
        v30 = __OFADD__(v264, 1);
        v31 = v264 + 1;
        if (v30)
        {
          goto LABEL_322;
        }

        goto LABEL_12;
      case 3u:
        v138 = -2;
        if (v32)
        {
          v138 = -1;
        }

        if (v33)
        {
          v139 = v138;
        }

        else
        {
          v139 = v32;
        }

        v39 = [v36 initWithInteger_];
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_2259F18D4(0x7469617274726F70, 0xE800000000000000);
        v142 = v23[2];
        v143 = (v141 & 1) == 0;
        v30 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v30)
        {
          goto LABEL_308;
        }

        v145 = v141;
        if (v23[3] < v144)
        {
          sub_225A42B40(v144, v140);
          v41 = sub_2259F18D4(0x7469617274726F70, 0xE800000000000000);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_335;
          }

LABEL_254:
          if (v145)
          {
            goto LABEL_280;
          }

          goto LABEL_255;
        }

        if (v140)
        {
          goto LABEL_254;
        }

        v284 = v41;
        sub_225A45624();
        v41 = v284;
        if (v145)
        {
          goto LABEL_280;
        }

LABEL_255:
        v23[(v41 >> 6) + 8] |= 1 << v41;
        v265 = (v23[6] + 16 * v41);
        *v265 = 0x7469617274726F70;
        v265[1] = 0xE800000000000000;
        *(v23[7] + 8 * v41) = v39;
        v266 = v23[2];
        v30 = __OFADD__(v266, 1);
        v31 = v266 + 1;
        if (v30)
        {
          goto LABEL_321;
        }

        goto LABEL_12;
      case 4u:
        v84 = -2;
        if (v32)
        {
          v84 = -1;
        }

        if (v33)
        {
          v85 = v84;
        }

        else
        {
          v85 = v32;
        }

        v39 = [v36 initWithInteger_];
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_2259F18D4(0x73736572646461, 0xE700000000000000);
        v88 = v23[2];
        v89 = (v87 & 1) == 0;
        v30 = __OFADD__(v88, v89);
        v90 = v88 + v89;
        if (v30)
        {
          goto LABEL_312;
        }

        v91 = v87;
        if (v23[3] < v90)
        {
          sub_225A42B40(v90, v86);
          v41 = sub_2259F18D4(0x73736572646461, 0xE700000000000000);
          if ((v91 & 1) != (v92 & 1))
          {
            goto LABEL_335;
          }

LABEL_244:
          if (v91)
          {
            goto LABEL_280;
          }

          goto LABEL_245;
        }

        if (v86)
        {
          goto LABEL_244;
        }

        v282 = v41;
        sub_225A45624();
        v41 = v282;
        if (v91)
        {
          goto LABEL_280;
        }

LABEL_245:
        v23[(v41 >> 6) + 8] |= 1 << v41;
        v261 = (v23[6] + 16 * v41);
        *v261 = 0x73736572646461;
        v261[1] = 0xE700000000000000;
        *(v23[7] + 8 * v41) = v39;
        v262 = v23[2];
        v30 = __OFADD__(v262, 1);
        v31 = v262 + 1;
        if (v30)
        {
          goto LABEL_327;
        }

        goto LABEL_12;
      case 5u:
        v180 = -2;
        if (v32)
        {
          v180 = -1;
        }

        if (v33)
        {
          v181 = v180;
        }

        else
        {
          v181 = v32;
        }

        v50 = [v36 initWithInteger_];
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v183 = sub_2259F18D4(0x746867696568, 0xE600000000000000);
        v185 = v184;
        v186 = v23[2];
        v187 = (v184 & 1) == 0;
        if (__OFADD__(v186, v187))
        {
          goto LABEL_314;
        }

        v57 = v183;
        if ((sub_225A03EE0(v182, v186 + v187) & 1) == 0)
        {
          goto LABEL_171;
        }

        v188 = sub_2259F18D4(0x746867696568, 0xE600000000000000);
        if ((v185 & 1) != (v189 & 1))
        {
          goto LABEL_335;
        }

        v57 = v188;
LABEL_171:
        if (v185)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v190 = (v23[6] + 16 * v57);
        *v190 = 0x746867696568;
        v190[1] = 0xE600000000000000;
        *(v23[7] + 8 * v57) = v50;
        v191 = v23[2];
        v30 = __OFADD__(v191, 1);
        v31 = v191 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_324;
      case 6u:
        v204 = -2;
        if (v32)
        {
          v204 = -1;
        }

        if (v33)
        {
          v205 = v204;
        }

        else
        {
          v205 = v32;
        }

        v50 = [v36 initWithInteger_];
        v206 = swift_isUniquelyReferenced_nonNull_native();
        v207 = sub_2259F18D4(0x746867696577, 0xE600000000000000);
        v209 = v208;
        v210 = v23[2];
        v211 = (v208 & 1) == 0;
        if (__OFADD__(v210, v211))
        {
          goto LABEL_311;
        }

        v57 = v207;
        if ((sub_225A03EE0(v206, v210 + v211) & 1) == 0)
        {
          goto LABEL_197;
        }

        v212 = sub_2259F18D4(0x746867696577, 0xE600000000000000);
        if ((v209 & 1) != (v213 & 1))
        {
          goto LABEL_335;
        }

        v57 = v212;
LABEL_197:
        if (v209)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v214 = (v23[6] + 16 * v57);
        *v214 = 0x746867696577;
        v214[1] = 0xE600000000000000;
        *(v23[7] + 8 * v57) = v50;
        v215 = v23[2];
        v30 = __OFADD__(v215, 1);
        v31 = v215 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_330;
      case 7u:
        v147 = -2;
        if (v32)
        {
          v147 = -1;
        }

        if (v33)
        {
          v148 = v147;
        }

        else
        {
          v148 = v32;
        }

        v50 = [v36 initWithInteger_];
        v149 = swift_isUniquelyReferenced_nonNull_native();
        v150 = sub_2259F18D4(0x726F6C6F43657965, 0xE800000000000000);
        v152 = v151;
        v153 = v23[2];
        v154 = (v151 & 1) == 0;
        if (__OFADD__(v153, v154))
        {
          goto LABEL_306;
        }

        v57 = v150;
        if ((sub_225A03EE0(v149, v153 + v154) & 1) == 0)
        {
          goto LABEL_136;
        }

        v155 = sub_2259F18D4(0x726F6C6F43657965, 0xE800000000000000);
        if ((v152 & 1) != (v156 & 1))
        {
          goto LABEL_335;
        }

        v57 = v155;
LABEL_136:
        if (v152)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v157 = (v23[6] + 16 * v57);
        *v157 = 0x726F6C6F43657965;
        v157[1] = 0xE800000000000000;
        *(v23[7] + 8 * v57) = v50;
        v158 = v23[2];
        v30 = __OFADD__(v158, 1);
        v31 = v158 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_323;
      case 8u:
        v240 = -2;
        if (v32)
        {
          v240 = -1;
        }

        if (v33)
        {
          v241 = v240;
        }

        else
        {
          v241 = v32;
        }

        v50 = [v36 initWithInteger_];
        v242 = swift_isUniquelyReferenced_nonNull_native();
        v243 = sub_2259F18D4(0x6F6C6F4372696168, 0xE900000000000072);
        v245 = v244;
        v246 = v23[2];
        v247 = (v244 & 1) == 0;
        if (__OFADD__(v246, v247))
        {
          goto LABEL_297;
        }

        v57 = v243;
        if ((sub_225A03EE0(v242, v246 + v247) & 1) == 0)
        {
          goto LABEL_232;
        }

        v248 = sub_2259F18D4(0x6F6C6F4372696168, 0xE900000000000072);
        if ((v245 & 1) != (v249 & 1))
        {
          goto LABEL_335;
        }

        v57 = v248;
LABEL_232:
        if (v245)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v278 = (v23[6] + 16 * v57);
        *v278 = 0x6F6C6F4372696168;
        v278[1] = 0xE900000000000072;
        *(v23[7] + 8 * v57) = v50;
        v279 = v23[2];
        v30 = __OFADD__(v279, 1);
        v31 = v279 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_325;
      case 9u:
        v105 = -2;
        if (v32)
        {
          v105 = -1;
        }

        if (v33)
        {
          v106 = v105;
        }

        else
        {
          v106 = v32;
        }

        v50 = [v36 initWithInteger_];
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v108 = sub_2259F18D4(0xD000000000000010, v291);
        v110 = v109;
        v111 = v23[2];
        v112 = (v109 & 1) == 0;
        if (__OFADD__(v111, v112))
        {
          goto LABEL_303;
        }

        v57 = v108;
        if ((sub_225A03EE0(v107, v111 + v112) & 1) == 0)
        {
          goto LABEL_92;
        }

        v113 = sub_2259F18D4(0xD000000000000010, v291);
        if ((v110 & 1) != (v114 & 1))
        {
          goto LABEL_335;
        }

        v57 = v113;
LABEL_92:
        if (v110)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v115 = (v23[6] + 16 * v57);
        *v115 = 0xD000000000000010;
        v115[1] = v291;
        *(v23[7] + 8 * v57) = v50;
        v116 = v23[2];
        v30 = __OFADD__(v116, 1);
        v31 = v116 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_317;
      case 0xAu:
        v228 = -2;
        if (v32)
        {
          v228 = -1;
        }

        if (v33)
        {
          v229 = v228;
        }

        else
        {
          v229 = v32;
        }

        v50 = [v36 initWithInteger_];
        v230 = swift_isUniquelyReferenced_nonNull_native();
        v231 = sub_2259F18D4(0x536E617265746576, 0xED00007375746174);
        v233 = v232;
        v234 = v23[2];
        v235 = (v232 & 1) == 0;
        if (__OFADD__(v234, v235))
        {
          goto LABEL_309;
        }

        v57 = v231;
        if ((sub_225A03EE0(v230, v234 + v235) & 1) == 0)
        {
          goto LABEL_219;
        }

        v236 = sub_2259F18D4(0x536E617265746576, 0xED00007375746174);
        if ((v233 & 1) != (v237 & 1))
        {
          goto LABEL_335;
        }

        v57 = v236;
LABEL_219:
        if (v233)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v238 = v23[6] + 16 * v57;
        strcpy(v238, "veteranStatus");
        *(v238 + 14) = -4864;
        *(v23[7] + 8 * v57) = v50;
        v239 = v23[2];
        v30 = __OFADD__(v239, 1);
        v31 = v239 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_316;
      case 0xBu:
        v72 = -2;
        if (v32)
        {
          v72 = -1;
        }

        if (v33)
        {
          v73 = v72;
        }

        else
        {
          v73 = v32;
        }

        v50 = [v36 initWithInteger_];
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v75 = sub_2259F18D4(0xD000000000000010, 0x8000000225D0ABE0);
        v77 = v76;
        v78 = v23[2];
        v79 = (v76 & 1) == 0;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_305;
        }

        v57 = v75;
        if ((sub_225A03EE0(v74, v78 + v79) & 1) == 0)
        {
          goto LABEL_57;
        }

        v80 = sub_2259F18D4(0xD000000000000010, 0x8000000225D0ABE0);
        if ((v77 & 1) != (v81 & 1))
        {
          goto LABEL_335;
        }

        v57 = v80;
LABEL_57:
        if (v77)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v82 = (v23[6] + 16 * v57);
        *v82 = 0xD000000000000010;
        v82[1] = 0x8000000225D0ABE0;
        *(v23[7] + 8 * v57) = v50;
        v83 = v23[2];
        v30 = __OFADD__(v83, 1);
        v31 = v83 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_320;
      case 0xCu:
        v93 = -2;
        if (v32)
        {
          v93 = -1;
        }

        if (v33)
        {
          v94 = v93;
        }

        else
        {
          v94 = v32;
        }

        v50 = [v36 initWithInteger_];
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v96 = sub_2259F18D4(0xD00000000000001BLL, 0x8000000225D1DC20);
        v98 = v97;
        v99 = v23[2];
        v100 = (v97 & 1) == 0;
        if (__OFADD__(v99, v100))
        {
          goto LABEL_299;
        }

        v57 = v96;
        if ((sub_225A03EE0(v95, v99 + v100) & 1) == 0)
        {
          goto LABEL_79;
        }

        v101 = sub_2259F18D4(0xD00000000000001BLL, 0x8000000225D1DC20);
        if ((v98 & 1) != (v102 & 1))
        {
          goto LABEL_335;
        }

        v57 = v101;
LABEL_79:
        if (v98)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v103 = (v23[6] + 16 * v57);
        *v103 = 0xD00000000000001BLL;
        v103[1] = 0x8000000225D1DC20;
        *(v23[7] + 8 * v57) = v50;
        v104 = v23[2];
        v30 = __OFADD__(v104, 1);
        v31 = v104 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_332;
      case 0xDu:
        v192 = -2;
        if (v32)
        {
          v192 = -1;
        }

        if (v33)
        {
          v193 = v192;
        }

        else
        {
          v193 = v32;
        }

        v50 = [v36 initWithInteger_];
        v194 = swift_isUniquelyReferenced_nonNull_native();
        v195 = sub_2259F18D4(0xD000000000000016, 0x8000000225D1DC00);
        v197 = v196;
        v198 = v23[2];
        v199 = (v196 & 1) == 0;
        if (__OFADD__(v198, v199))
        {
          goto LABEL_307;
        }

        v57 = v195;
        if ((sub_225A03EE0(v194, v198 + v199) & 1) == 0)
        {
          goto LABEL_184;
        }

        v200 = sub_2259F18D4(0xD000000000000016, 0x8000000225D1DC00);
        if ((v197 & 1) != (v201 & 1))
        {
          goto LABEL_335;
        }

        v57 = v200;
LABEL_184:
        if (v197)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v202 = (v23[6] + 16 * v57);
        *v202 = 0xD000000000000016;
        v202[1] = 0x8000000225D1DC00;
        *(v23[7] + 8 * v57) = v50;
        v203 = v23[2];
        v30 = __OFADD__(v203, 1);
        v31 = v203 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_329;
      case 0xEu:
        v60 = -2;
        if (v32)
        {
          v60 = -1;
        }

        if (v33)
        {
          v61 = v60;
        }

        else
        {
          v61 = v32;
        }

        v50 = [v36 initWithInteger_];
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = sub_2259F18D4(0x746E656D75636F64, 0xEE007265626D754ELL);
        v65 = v64;
        v66 = v23[2];
        v67 = (v64 & 1) == 0;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_310;
        }

        v57 = v63;
        if ((sub_225A03EE0(v62, v66 + v67) & 1) == 0)
        {
          goto LABEL_44;
        }

        v68 = sub_2259F18D4(0x746E656D75636F64, 0xEE007265626D754ELL);
        if ((v65 & 1) != (v69 & 1))
        {
          goto LABEL_335;
        }

        v57 = v68;
LABEL_44:
        if (v65)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v70 = (v23[6] + 16 * v57);
        strcpy(v70, "documentNumber");
        v70[15] = -18;
        *(v23[7] + 8 * v57) = v50;
        v71 = v23[2];
        v30 = __OFADD__(v71, 1);
        v31 = v71 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_318;
      case 0xFu:
        v126 = -2;
        if (v32)
        {
          v126 = -1;
        }

        if (v33)
        {
          v127 = v126;
        }

        else
        {
          v127 = v32;
        }

        v50 = [v36 initWithInteger_];
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v129 = sub_2259F18D4(0xD000000000000011, 0x8000000225D1DBE0);
        v131 = v130;
        v132 = v23[2];
        v133 = (v130 & 1) == 0;
        if (__OFADD__(v132, v133))
        {
          goto LABEL_304;
        }

        v57 = v129;
        if ((sub_225A03EE0(v128, v132 + v133) & 1) == 0)
        {
          goto LABEL_114;
        }

        v134 = sub_2259F18D4(0xD000000000000011, 0x8000000225D1DBE0);
        if ((v131 & 1) != (v135 & 1))
        {
          goto LABEL_335;
        }

        v57 = v134;
LABEL_114:
        if (v131)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v136 = (v23[6] + 16 * v57);
        *v136 = 0xD000000000000011;
        v136[1] = 0x8000000225D1DBE0;
        *(v23[7] + 8 * v57) = v50;
        v137 = v23[2];
        v30 = __OFADD__(v137, 1);
        v31 = v137 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_331;
      case 0x10u:
        v48 = -2;
        if (v32)
        {
          v48 = -1;
        }

        if (v33)
        {
          v49 = v48;
        }

        else
        {
          v49 = v32;
        }

        v50 = [v36 initWithInteger_];
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v52 = sub_2259F18D4(6645601, 0xE300000000000000);
        v54 = v53;
        v55 = v23[2];
        v56 = (v53 & 1) == 0;
        if (!__OFADD__(v55, v56))
        {
          v57 = v52;
          if (sub_225A03EE0(v51, v55 + v56))
          {
            v58 = sub_2259F18D4(6645601, 0xE300000000000000);
            if ((v54 & 1) != (v59 & 1))
            {
              goto LABEL_335;
            }

            v57 = v58;
          }

          if (v54)
          {
LABEL_233:
            v250 = v23[7];
            v251 = *(v250 + 8 * v57);
            *(v250 + 8 * v57) = v50;
          }

          else
          {
            v23[(v57 >> 6) + 8] |= 1 << v57;
            v28 = (v23[6] + 16 * v57);
            *v28 = 6645601;
            v28[1] = 0xE300000000000000;
            *(v23[7] + 8 * v57) = v50;
            v29 = v23[2];
            v30 = __OFADD__(v29, 1);
            v31 = v29 + 1;
            if (v30)
            {
              goto LABEL_333;
            }

LABEL_12:
            v23[2] = v31;
          }

LABEL_13:
          if (!--v26)
          {
            return v23;
          }

          continue;
        }

        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        result = sub_225CCFAC4();
        __break(1u);
        return result;
      case 0x11u:
        v168 = -2;
        if (v32)
        {
          v168 = -1;
        }

        if (v33)
        {
          v169 = v168;
        }

        else
        {
          v169 = v32;
        }

        v50 = [v36 initWithInteger_];
        v170 = swift_isUniquelyReferenced_nonNull_native();
        v171 = sub_2259F18D4(0x6942664F65746164, 0xEB00000000687472);
        v173 = v172;
        v174 = v23[2];
        v175 = (v172 & 1) == 0;
        if (__OFADD__(v174, v175))
        {
          goto LABEL_298;
        }

        v57 = v171;
        if ((sub_225A03EE0(v170, v174 + v175) & 1) == 0)
        {
          goto LABEL_158;
        }

        v176 = sub_2259F18D4(0x6942664F65746164, 0xEB00000000687472);
        if ((v173 & 1) != (v177 & 1))
        {
          goto LABEL_335;
        }

        v57 = v176;
LABEL_158:
        if (v173)
        {
          goto LABEL_233;
        }

        v23[(v57 >> 6) + 8] |= 1 << v57;
        v178 = (v23[6] + 16 * v57);
        *v178 = 0x6942664F65746164;
        v178[1] = 0xEB00000000687472;
        *(v23[7] + 8 * v57) = v50;
        v179 = v23[2];
        v30 = __OFADD__(v179, 1);
        v31 = v179 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        goto LABEL_319;
      case 0x12u:
        v216 = -2;
        if (v33)
        {
          v216 = -1;
        }

        if (v34)
        {
          v217 = v216;
        }

        else
        {
          v217 = v33;
        }

        v218 = [v36 initWithInteger_];
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v221 = sub_2259F18D4(0x61654C7441656761, 0xEA00000000007473);
        v222 = v23[2];
        v223 = (v220 & 1) == 0;
        v224 = v222 + v223;
        if (__OFADD__(v222, v223))
        {
          goto LABEL_315;
        }

        v225 = v220;
        if (v23[3] >= v224)
        {
          if ((v219 & 1) == 0)
          {
            sub_225A45624();
          }
        }

        else
        {
          sub_225A42B40(v224, v219);
          v226 = sub_2259F18D4(0x61654C7441656761, 0xEA00000000007473);
          if ((v225 & 1) != (v227 & 1))
          {
            goto LABEL_335;
          }

          v221 = v226;
        }

        if (v225)
        {
          v271 = v23[7];
          v272 = *(v271 + 8 * v221);
          *(v271 + 8 * v221) = v218;
        }

        else
        {
          v23[(v221 >> 6) + 8] |= 1 << v221;
          v273 = (v23[6] + 16 * v221);
          *v273 = 0x61654C7441656761;
          v273[1] = 0xEA00000000007473;
          *(v23[7] + 8 * v221) = v218;
          v274 = v23[2];
          v30 = __OFADD__(v274, 1);
          v275 = v274 + 1;
          if (v30)
          {
            goto LABEL_334;
          }

          v23[2] = v275;
        }

        v276 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v277 = swift_isUniquelyReferenced_nonNull_native();
        sub_225A0492C(v276, 0x61654C7441656761, 0xEF73726165597473, v277);
        goto LABEL_13;
      case 0x13u:
        v252 = -2;
        if (v32)
        {
          v252 = -1;
        }

        if (v33)
        {
          v253 = v252;
        }

        else
        {
          v253 = v32;
        }

        v39 = [v36 initWithInteger_];
        v254 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_2259F18D4(0xD000000000000011, 0x8000000225D1DBC0);
        v256 = v23[2];
        v257 = (v255 & 1) == 0;
        v30 = __OFADD__(v256, v257);
        v258 = v256 + v257;
        if (v30)
        {
          goto LABEL_301;
        }

        v259 = v255;
        if (v23[3] < v258)
        {
          sub_225A42B40(v258, v254);
          v41 = sub_2259F18D4(0xD000000000000011, 0x8000000225D1DBC0);
          if ((v259 & 1) != (v260 & 1))
          {
            goto LABEL_335;
          }

LABEL_279:
          if (v259)
          {
            goto LABEL_280;
          }

          goto LABEL_292;
        }

        if (v254)
        {
          goto LABEL_279;
        }

        v287 = v41;
        sub_225A45624();
        v41 = v287;
        if (v259)
        {
LABEL_280:
          v280 = v23[7];
          v281 = *(v280 + 8 * v41);
          *(v280 + 8 * v41) = v39;

          goto LABEL_13;
        }

LABEL_292:
        v23[(v41 >> 6) + 8] |= 1 << v41;
        v288 = (v23[6] + 16 * v41);
        *v288 = 0xD000000000000011;
        v288[1] = 0x8000000225D1DBC0;
        *(v23[7] + 8 * v41) = v39;
        v289 = v23[2];
        v30 = __OFADD__(v289, 1);
        v31 = v289 + 1;
        if (!v30)
        {
          goto LABEL_12;
        }

        __break(1u);
        return v23;
      default:
        v37 = -2;
        if (v32)
        {
          v37 = -1;
        }

        if (v33)
        {
          v38 = v37;
        }

        else
        {
          v38 = v32;
        }

        v39 = [v36 initWithInteger_];
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_2259F18D4(0x6D614E6E65766967, 0xE900000000000065);
        v43 = v23[2];
        v44 = (v42 & 1) == 0;
        v30 = __OFADD__(v43, v44);
        v45 = v43 + v44;
        if (v30)
        {
          goto LABEL_302;
        }

        v46 = v42;
        if (v23[3] < v45)
        {
          sub_225A42B40(v45, v40);
          v41 = sub_2259F18D4(0x6D614E6E65766967, 0xE900000000000065);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_335;
          }

LABEL_259:
          if (v46)
          {
            goto LABEL_280;
          }

          goto LABEL_260;
        }

        if (v40)
        {
          goto LABEL_259;
        }

        v285 = v41;
        sub_225A45624();
        v41 = v285;
        if (v46)
        {
          goto LABEL_280;
        }

LABEL_260:
        v23[(v41 >> 6) + 8] |= 1 << v41;
        v267 = (v23[6] + 16 * v41);
        *v267 = 0x6D614E6E65766967;
        v267[1] = 0xE900000000000065;
        *(v23[7] + 8 * v41) = v39;
        v268 = v23[2];
        v30 = __OFADD__(v268, 1);
        v31 = v268 + 1;
        if (v30)
        {
          goto LABEL_326;
        }

        goto LABEL_12;
    }
  }
}

CoreIDVShared::DaemonAnalytics::DigitalPresentmentCanRequestDocumentOutcome_optional __swiftcall DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.rawValue.getter()
{
  v1 = 0x73736563637573;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x44676E697373696DLL;
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

uint64_t sub_225B0C270()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B0C348()
{
  sub_225CCE5B4();
}

uint64_t sub_225B0C40C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B0C4EC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  v4 = 0xD000000000000012;
  v5 = 0x8000000225D0BAB0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000225D0BAD0;
  }

  if (*v1)
  {
    v3 = 0x44676E697373696DLL;
    v2 = 0xEF746E656D75636FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

void static DaemonAnalytics.sendDigitalPresentmentCanRequestDocumentEvent(outcome:bundleID:documentType:isTestMDL:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v34 = a6;
  v32 = a4;
  v33 = a2;
  v35 = a3;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v31 = a5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    v20 = 0xE700000000000000;
    v21 = 0x73736563637573;
    v22 = 0x8000000225D0BAB0;
    v23 = 0xD000000000000017;
    if (v36 == 2)
    {
      v23 = 0xD000000000000012;
    }

    else
    {
      v22 = 0x8000000225D0BAD0;
    }

    if (v36)
    {
      v21 = 0x44676E697373696DLL;
      v20 = 0xEF746E656D75636FLL;
    }

    if (v36 <= 1)
    {
      v24 = v21;
    }

    else
    {
      v24 = v23;
    }

    if (v36 <= 1)
    {
      v25 = v20;
    }

    else
    {
      v25 = v22;
    }

    v26 = sub_2259BE198(v24, v25, aBlock);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendDigitalPresentmentCanRequestDocumentEvent outcome = %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AA6F950](v19, -1, -1);
    MEMORY[0x22AA6F950](v18, -1, -1);

    (*(v9 + 8))(v12, v8);
    a5 = v31;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v27 = sub_225CCE444();
  v28 = swift_allocObject();
  *(v28 + 16) = v36;
  *(v28 + 24) = v32;
  *(v28 + 32) = a5;
  *(v28 + 40) = v34 & 1;
  v29 = v35;
  *(v28 + 48) = v33;
  *(v28 + 56) = v29;
  aBlock[4] = sub_225B1F2E4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_79;
  v30 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v30);
}

unint64_t sub_225B0C980(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  v9 = sub_225CCE444();

  *(inited + 48) = v9;
  strcpy((inited + 56), "documentType");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_225CCE444();
  *(inited + 80) = 0x444D747365547369;
  *(inited + 88) = 0xE90000000000004CLL;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a6)
  {
    v11 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v11, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v10;
}

uint64_t DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.analyticsValue.getter()
{
  v1 = *v0 >> 62;
  v2 = 0x73736563637573;
  if (v1 == 1)
  {
    v2 = 0x6C616E696D726574;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6C62617972746572;
  }
}

uint64_t DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.error.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 == 2)
  {
    return 0;
  }

  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  if (v2 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v4 = v3;
  return v1;
}

void static DaemonAnalytics.sendDigitalPresentmentSpinnerShownEvent(outcome:duration:)(unint64_t *a1, double a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v5 + 16))(v8, &v10[v11], v4);
  os_unfair_lock_unlock(&v10[v12]);
  v13 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    v18 = v9 >> 62;
    *v16 = 136315394;
    v19 = 0xE700000000000000;
    v20 = 0x73736563637573;
    if (v9 >> 62 == 1)
    {
      v20 = 0x6C616E696D726574;
      v19 = 0xED0000726F727245;
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x6C62617972746572;
    }

    if (v18)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0xEE00726F72724565;
    }

    v23 = sub_2259BE198(v21, v22, aBlock);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a2;
    _os_log_impl(&dword_2259A7000, v14, v15, "sendDigitalPresentmentSpinnerShownEvent outcome = %s duration = %f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v24 = sub_225CCE444();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = v9;
  aBlock[4] = sub_225B1F2F8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_85;
  v26 = _Block_copy(aBlock);
  v27 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

  AnalyticsSendEventLazy();
  _Block_release(v26);
}

unint64_t sub_225B0D02C(unint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 56) = 0x656D6F6374756FLL;
  *(inited + 64) = 0xE700000000000000;
  v5 = sub_225CCE444();

  *(inited + 72) = v5;
  v6 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a1 >> 62 != 2)
  {
    v7 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
    swift_getErrorValue();
    v8 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v9, 0xD000000000000010, 0x8000000225D1DB80, isUniquelyReferenced_nonNull_native);
  }

  return v6;
}

CoreIDVShared::DaemonAnalytics::WebPresentmentFailureReasonTag_optional __swiftcall DaemonAnalytics.WebPresentmentFailureReasonTag.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 16;
  if (rawValue < 0x10)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v7) = a5;
  v38 = a2;
  v39 = a4;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  if (a6)
  {
    v15 = a6;
    sub_225B0D6C4(a6, aBlock);

    v16 = LOBYTE(aBlock[0]);
  }

  else
  {
    v16 = 16;
  }

  v36 = v16;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  (*(v11 + 16))(v14, &v17[v18], v10);
  os_unfair_lock_unlock(&v17[v19]);

  v20 = sub_225CCD934();
  v21 = sub_225CCED04();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v7;
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v7 = 134218754;
    v24 = v38;
    *(v7 + 4) = v37;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2259BE198(v24, a3, aBlock);
    *(v7 + 22) = 2048;
    v35 = v22;
    v25 = v39;
    if (v22)
    {
      v25 = 0;
    }

    *(v7 + 24) = v25;
    *(v7 + 32) = 2080;
    if (v36 == 16)
    {
      v26 = 0xE500000000000000;
      v27 = 0x3E6C696E3CLL;
    }

    else
    {
      v40 = v36;
      sub_225A84D38();
      v27 = sub_225CCF094();
      v26 = v28;
    }

    v29 = sub_2259BE198(v27, v26, aBlock);

    *(v7 + 34) = v29;
    _os_log_impl(&dword_2259A7000, v20, v21, "sendWebPresentmentOutcomeEvent outcome: %ld, serializedOrigin: %s, certificateChainCount: %ld, failure reason = %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v23, -1, -1);
    MEMORY[0x22AA6F950](v7, -1, -1);

    (*(v11 + 8))(v14, v10);
    LOBYTE(v7) = v35;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v30 = sub_225CCE444();
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 16) = v37;
  *(v31 + 24) = v32;
  *(v31 + 32) = a3;
  *(v31 + 40) = v39;
  *(v31 + 48) = v7 & 1;
  *(v31 + 49) = v36;
  aBlock[4] = sub_225B1F304;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_91;
  v33 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v33);
}

void sub_225B0D6C4(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if (swift_dynamicCast())
  {

    v4 = 2;
    switch(v5)
    {
      case 1044:
        v4 = 11;
        break;
      case 1045:
        v4 = 8;
        break;
      case 1046:
      case 1047:
      case 1048:
      case 1049:
      case 1051:
      case 1052:
      case 1053:
      case 1054:
      case 1055:
      case 1056:
      case 1057:
      case 1058:
      case 1059:
      case 1060:
      case 1061:
      case 1062:
      case 1063:
      case 1064:
      case 1065:
      case 1066:
      case 1067:
      case 1072:
      case 1073:
      case 1075:
      case 1077:
      case 1081:
      case 1082:
      case 1083:
      case 1084:
      case 1085:
        goto LABEL_6;
      case 1050:
        v4 = 7;
        break;
      case 1068:
        v4 = 3;
        break;
      case 1069:
        v4 = 0;
        break;
      case 1070:
        v4 = 13;
        break;
      case 1071:
        v4 = 9;
        break;
      case 1074:
        v4 = 14;
        break;
      case 1076:
        v4 = 1;
        break;
      case 1078:
        v4 = 6;
        break;
      case 1079:
        v4 = 12;
        break;
      case 1080:
        v4 = 10;
        break;
      case 1086:
        break;
      default:
        if (v5 != 702)
        {
          goto LABEL_6;
        }

        v4 = 5;
        break;
    }
  }

  else
  {
LABEL_6:
    v4 = 15;
  }

  *a2 = v4;
}

unint64_t sub_225B0D80C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v11 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  v12 = sub_225CCE444();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v12, 0xD000000000000010, 0x8000000225D1DB40, isUniquelyReferenced_nonNull_native);
  if ((a5 & 1) == 0 && a4 >= 1)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v14, 0xD000000000000015, 0x8000000225D1DB60, v15);
  }

  if (a6 != 16)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v16, 0x526572756C696166, 0xED00006E6F736165, v17);
  }

  return v11;
}

void static DaemonAnalytics.sendMobileDocumentReaderAttestationKeyCreationFailedEvent(error:)(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "sendMobileDocumentReaderSEKeyCreationFailedEvent", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = sub_225CCE444();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = sub_225B1F31C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_97;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

unint64_t sub_225B0DCC0(void *a1)
{
  v2 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if (swift_dynamicCast())
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2;
    sub_225A0492C(v4, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2;
    sub_225A0492C(v6, 0x646F43726F727265, 0xE900000000000065, v7);
  }

  return v10;
}

void static DaemonAnalytics.sendMobileDocumentReaderSEPairingResultEvent(result:)(void *a1, char a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v9 = off_28105B918;
  v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v11));
  (*(v5 + 16))(v8, &v9[v10], v4);
  os_unfair_lock_unlock(&v9[v11]);
  v12 = sub_225CCD934();
  v13 = sub_225CCED04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2259A7000, v12, v13, "sendMobileDocumentReaderSEKeyCreationFailedEvent", v14, 2u);
    MEMORY[0x22AA6F950](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = sub_225CCE444();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = a2 & 1;
  *(v16 + 24) = v17;
  aBlock[4] = sub_225B1F324;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_103;
  v18 = _Block_copy(aBlock);
  sub_225A47308(a1, v17);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

unint64_t sub_225B0E0F4(void *a1, char a2)
{
  v4 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  if ((a2 & 1) == 0)
  {
    sub_2259D8718(0, &qword_281059A70);
    v10 = sub_225CCEF44();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v4;
    v12 = v10;
    v13 = 0x73736563637573;
    v14 = 0xE700000000000000;
LABEL_6:
    sub_225A0492C(v12, v13, v14, isUniquelyReferenced_nonNull_native);
    return v17;
  }

  sub_2259D8718(0, &qword_281059A70);
  v5 = sub_225CCEF44();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v5, 0x73736563637573, 0xE700000000000000, v6);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v4;
    v12 = v15;
    v13 = 0x646F43726F727265;
    v14 = 0xE900000000000065;
    goto LABEL_6;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v4;
  sub_225A0492C(v8, 0x646F43726F727265, 0xE900000000000065, v9);

  return v17;
}

void static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)(void *a1, int a2, uint64_t a3, unint64_t a4)
{
  v40 = a3;
  LODWORD(v5) = a2;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0);
  v37 = *(v6 - 8);
  v39 = *(v37 + 64);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - v8;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  (*(v11 + 16))(v14, &v15[v16], v10);
  os_unfair_lock_unlock(&v15[v17]);

  v18 = sub_225CCD934();
  v19 = sub_225CCED04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v5;
    v34 = v14;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_225B05900(a4);
    v5 = MEMORY[0x22AA6D060]();
    v35 = a4;
    v24 = v23;

    v25 = sub_2259BE198(v5, v24, aBlock);
    a4 = v35;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2259A7000, v18, v19, "sendResponseValidationResultEvent issuerCertificateChain=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    LOBYTE(v5) = v36;
    MEMORY[0x22AA6F950](v22, -1, -1);
    MEMORY[0x22AA6F950](v20, -1, -1);

    (*(v11 + 8))(v34, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v26 = sub_225CCE444();
  v27 = v9;
  sub_225B1F330(v40, v9);
  v28 = (*(v37 + 80) + 25) & ~*(v37 + 80);
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 16) = v38;
  *(v30 + 24) = v5 & 1;
  sub_225B1F3A0(v27, v30 + v28);
  *(v30 + v29) = a4;
  aBlock[4] = sub_225B1F410;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_109;
  v32 = _Block_copy(aBlock);

  sub_225A47308(v31, v5 & 1);

  AnalyticsSendEventLazy();
  _Block_release(v32);
}

void sub_225B0E77C(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v73 = a3;
  v7 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v71 - v18;
  v20 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  if (a2)
  {
    sub_2259D8718(0, &qword_281059A60);
    v21 = sub_225CCEF94();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v20;
    sub_225A0492C(v21, 0x746C75736572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v77 = a1;
    v78 = v74;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v71[1] = v75;
    v72 = v76;
    v74 = qword_225CE8F68[v74];
    sub_225CCF824();
    v24 = sub_225CCE444();

    v25 = v78;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v25;
    sub_225A0492C(v24, 0x646F43726F727265, 0xE900000000000065, v26);
  }

  else
  {
    sub_2259D8718(0, &qword_281059A60);
    v27 = sub_225CCEF94();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v20;
    sub_225A0492C(v27, 0x746C75736572, 0xE600000000000000, v28);
  }

  v78 = v74;
LABEL_6:
  sub_225B1F330(v73, v19);
  v30 = *(v8 + 48);
  v29 = (v8 + 48);
  if (v30(v19, 1, v7) == 1)
  {
    v31 = 0;
  }

  else
  {
    sub_225B20D2C(v19, v15);
    sub_225B20D90(v15, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    sub_225B20DF4(v12);
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_225B20DF4(v15);
    v31 = v33;
  }

  sub_225A055AC(v31, 0x7541656369766564, 0xEE00657079546874);
  v34 = a4 >> 62;
  if (a4 >> 62)
  {
    v35 = sub_225CCF144();
  }

  else
  {
    v35 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v35)
  {
LABEL_26:
    v52 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!v34)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v29 = (a4 & 0xC000000000000001);
  if ((a4 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x22AA6DA80](0, a4);
  }

  else
  {
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v36 = *(a4 + 32);
  }

  v37 = v36;
  object = SecCertificateRef.commonName()().value._object;

  if (object)
  {
    v39 = sub_225CCE444();

    v40 = v78;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v40;
    sub_225A0492C(v39, 0xD000000000000018, 0x8000000225D1DB20, v41);
    v78 = v74;
  }

  if (v29)
  {
    v42 = MEMORY[0x22AA6DA80](0, a4);
  }

  else
  {
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_55;
    }

    v42 = *(a4 + 32);
  }

  v43 = v42;
  v44 = SecCertificateCopySerialNumberData(v42, 0);
  if (v44)
  {
    v45 = v44;
    v46 = sub_225CCCFA4();
    v48 = v47;

    sub_225CCCF84();
    sub_2259BEF00(v46, v48);
    v29 = "issuerRootCommonName";
    v49 = sub_225CCE444();

    v50 = v78;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v50;
    sub_225A0492C(v49, 0xD00000000000001ALL, 0x8000000225D1DB00, v51);
    v78 = v74;
    goto LABEL_26;
  }

  v52 = a4 & 0xFFFFFFFFFFFFFF8;
  if (!v34)
  {
LABEL_27:
    v53 = *(v52 + 16);
    if (!v35)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_30:
  v53 = sub_225CCF144();
  if (!v35)
  {
    return;
  }

LABEL_31:
  if (v53 < 2)
  {
    return;
  }

  if (__OFSUB__(v35--, 1))
  {
    goto LABEL_51;
  }

  v29 = (a4 + 8 * v35);
  v34 = a4 & 0xC000000000000001;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v35 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v55 = *(v29 + 4);
      goto LABEL_37;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_52:
  v55 = MEMORY[0x22AA6DA80](v35, a4);
LABEL_37:
  v56 = v55;
  v57 = SecCertificateRef.commonName()().value._object;

  if (v57)
  {
    v58 = sub_225CCE444();

    v59 = v78;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v59;
    sub_225A0492C(v58, 0xD000000000000014, 0x8000000225D1DAE0, v60);
    v78 = v74;
  }

  if (v34)
  {
    v61 = MEMORY[0x22AA6DA80](v35, a4);
    goto LABEL_44;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (v35 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_57:
    __break(1u);
    return;
  }

  v61 = *(v29 + 4);
LABEL_44:
  v62 = v61;
  v63 = SecCertificateCopySerialNumberData(v61, 0);
  if (v63)
  {
    v64 = v63;
    v65 = sub_225CCCFA4();
    v67 = v66;

    sub_225CCCF84();
    sub_2259BEF00(v65, v67);
    v68 = sub_225CCE444();

    v69 = v78;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v69;
    sub_225A0492C(v68, 0xD000000000000016, 0x8000000225D1DAC0, v70);
    v78 = v74;
  }

  else
  {
  }
}

CoreIDVShared::DaemonAnalytics::VICALFetchResult_optional __swiftcall DaemonAnalytics.VICALFetchResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DaemonAnalytics.VICALFetchResult.rawValue.getter()
{
  v1 = 0x73736563637573;
  v2 = 0x6572756C696166;
  if (*v0 != 2)
  {
    v2 = 0x686361436D6F7266;
  }

  if (*v0)
  {
    v1 = 0x6B6361626C6C6166;
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

uint64_t sub_225B0EF8C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B0F054()
{
  sub_225CCE5B4();
}

uint64_t sub_225B0F108()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B0F1D8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  v4 = 0xE700000000000000;
  v5 = 0x6572756C696166;
  if (*v1 != 2)
  {
    v5 = 0x686361436D6F7266;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x6B6361626C6C6166;
    v2 = 0xE800000000000000;
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

void static DaemonAnalytics.sendVICALFetchedEvent(result:error:)(unsigned __int8 *a1, void *a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v5 + 16))(v8, &v10[v11], v4);
  os_unfair_lock_unlock(&v10[v12]);
  v13 = a2;
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();

  if (os_log_type_enabled(v14, v15))
  {
    v33 = v4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    v19 = 0xE700000000000000;
    *v16 = 136315394;
    v20 = 0x73736563637573;
    v21 = 0xE700000000000000;
    v22 = 0x6572756C696166;
    if (v9 != 2)
    {
      v22 = 0x686361436D6F7266;
      v21 = 0xE900000000000065;
    }

    if (v9)
    {
      v20 = 0x6B6361626C6C6166;
      v19 = 0xE800000000000000;
    }

    v34 = v9;
    if (v9 <= 1)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    if (v9 <= 1)
    {
      v24 = v19;
    }

    else
    {
      v24 = v21;
    }

    v25 = sub_2259BE198(v23, v24, aBlock);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2112;
    if (a2)
    {
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    LOBYTE(v9) = v34;
    *(v16 + 14) = v27;
    *v17 = v28;
    _os_log_impl(&dword_2259A7000, v14, v15, "sendVICALFetchedEvent result=%s error=%@", v16, 0x16u);
    sub_2259CB640(v17, &unk_27D73FC90);
    MEMORY[0x22AA6F950](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA6F950](v18, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v5 + 8))(v8, v33);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v29 = sub_225CCE444();
  v30 = swift_allocObject();
  *(v30 + 16) = v9;
  *(v30 + 24) = a2;
  aBlock[4] = sub_225B1F4B0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_116;
  v31 = _Block_copy(aBlock);
  v32 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v31);
}

uint64_t sub_225B0F684(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  v4 = sub_225CCE444();

  *(inited + 48) = v4;
  v5 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  static ServerEnvironment.current(suiteNameOverride:)(0, 0, v14);
  v6 = sub_225CCE444();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = v5;
  sub_225A0492C(v6, 0x6D6E6F7269766E65, 0xEB00000000746E65, isUniquelyReferenced_nonNull_native);
  v8 = v14[0];
  if (a2)
  {
    v14[6] = a2;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    if (swift_dynamicCast())
    {
      v10 = v14[5];
      v14[0] = qword_225CE8F68[SLOWORD(v14[0])];
      sub_225CCF824();
      v11 = sub_225CCE444();

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v14[0] = v8;
      sub_225A0492C(v11, 0x646F43726F727265, 0xE900000000000065, v12);

      return v14[0];
    }
  }

  return v8;
}

CoreIDVShared::DaemonAnalytics::MobileDocumentReaderInvalidSessionReason_optional __swiftcall DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.rawValue.getter()
{
  v1 = 0x73694D6C61636976;
  v2 = 0x73694D79654B6573;
  if (*v0 != 2)
  {
    v2 = 0x4D6E6F6973736573;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_225B0FA24()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B0FAFC()
{
  sub_225CCE5B4();
}

uint64_t sub_225B0FBC0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B0FCA0(unint64_t *a1@<X8>)
{
  v2 = 0x73694D6C61636976;
  v3 = 0x73694D79654B6573;
  v4 = 0xEE00676E69737369;
  if (*v1 == 2)
  {
    v4 = 0xEC000000676E6973;
  }

  else
  {
    v3 = 0x4D6E6F6973736573;
  }

  v5 = 0x8000000225D0BB10;
  if (*v1)
  {
    v5 = 0xEC000000676E6973;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

void static DaemonAnalytics.sendReadDocumentSessionStatus(status:)(char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v8 = off_28105B918;
  v9 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v10));
  (*(v3 + 16))(v6, &v8[v9], v2);
  os_unfair_lock_unlock(&v8[v10]);
  v11 = sub_225CCD934();
  v12 = sub_225CCED04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2259A7000, v11, v12, "sendReadDocumentSessionStatus", v13, 2u);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = sub_225CCE444();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  aBlock[4] = sub_225B1F4BC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_123;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

unint64_t sub_225B0FFDC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  sub_2259D8718(0, &qword_281059A60);
  v3 = sub_225CCEF94();
  if (v1 == 4)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v2;
    v5 = v3;
    v6 = 0x737574617473;
  }

  else
  {
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v3, 0x737574617473, 0xE600000000000000, v7);
    v8 = v2;
    v9 = sub_225CCE444();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v8;
    v6 = 0x6E6F73616572;
    v5 = v9;
  }

  sub_225A0492C(v5, v6, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  return v11;
}

CoreIDVShared::DaemonAnalytics::MobileDocumentReaderFetchLogoError_optional __swiftcall DaemonAnalytics.MobileDocumentReaderFetchLogoError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DaemonAnalytics.MobileDocumentReaderFetchLogoError.rawValue.getter()
{
  v1 = 0xD000000000000028;
  v2 = *v0;
  if (v2 == 2)
  {
    v3 = 0xD000000000000029;
  }

  else
  {
    v3 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_225B1026C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B1031C()
{
  sub_225CCE5B4();
}

uint64_t sub_225B103B8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B10470(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000028;
  v3 = *v1;
  v4 = "seKeyMissing";
  v5 = "rtificateInvalidLogoURL";
  if (v3 == 2)
  {
    v6 = 0xD000000000000029;
  }

  else
  {
    v6 = 0xD000000000000028;
  }

  if (v3 != 2)
  {
    v5 = "rtificateDataHashMismatch";
  }

  if (*v1)
  {
    v2 = 0xD000000000000027;
    v4 = "rtificateLogotypeMissing";
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v6;
    v7 = v5;
  }

  *a1 = v2;
  a1[1] = v7 | 0x8000000000000000;
}

void static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_225CCE444();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v5;
  *(v8 + 33) = v6;
  v10[4] = sub_225B1F4C4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_225B06D38;
  v10[3] = &block_descriptor_130;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_225B10600(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a3;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v49 - v13;
  v52 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  if (a2)
  {
    v15 = sub_225CCE444();
  }

  else
  {
    v15 = 0;
  }

  sub_225A055AC(v15, 7107189, 0xE300000000000000);
  if ((a3 & 0x100) != 0)
  {
    v28 = v3;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v29 = off_28105B918;
    v30 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v31 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v31));
    (*(v7 + 16))(v11, &v29[v30], v6);
    os_unfair_lock_unlock(&v29[v31]);
    v32 = sub_225CCD934();
    v33 = sub_225CCED04();
    if (os_log_type_enabled(v32, v33))
    {
      v50 = v6;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = v35;
      *v34 = 136315138;
      v36 = "seKeyMissing";
      v37 = "rtificateInvalidLogoURL";
      if (v28 == 2)
      {
        v38 = 0xD000000000000029;
      }

      else
      {
        v38 = 0xD000000000000028;
      }

      if (v28 != 2)
      {
        v37 = "rtificateDataHashMismatch";
      }

      v39 = 0xD000000000000027;
      if (v28)
      {
        v36 = "rtificateLogotypeMissing";
      }

      else
      {
        v39 = 0xD000000000000028;
      }

      if (v28 <= 1)
      {
        v40 = v39;
      }

      else
      {
        v40 = v38;
      }

      if (v28 <= 1)
      {
        v41 = v36;
      }

      else
      {
        v41 = v37;
      }

      v42 = sub_2259BE198(v40, v41 | 0x8000000000000000, &v51);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_2259A7000, v32, v33, "sendMobileDocumentReaderFetchLogoStatus sending event stating fetch logo failed. Error code: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA6F950](v35, -1, -1);
      MEMORY[0x22AA6F950](v34, -1, -1);

      (*(v7 + 8))(v11, v50);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    sub_2259D8718(0, &qword_281059A60);
    v43 = sub_225CCEF94();
    v44 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v44;
    sub_225A0492C(v43, 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v46 = v51;
    v47 = sub_225CCE444();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v46;
    v25 = 0x646F43726F727265;
    v26 = v47;
    v27 = 0xE900000000000065;
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v16 = off_28105B918;
    v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v18));
    (*(v7 + 16))(v14, &v16[v17], v6);
    os_unfair_lock_unlock(&v16[v18]);
    v19 = sub_225CCD934();
    v20 = sub_225CCED04();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2259A7000, v19, v20, "sendMobileDocumentReaderFetchLogoStatus sending event stating fetch logo was a success.", v21, 2u);
      MEMORY[0x22AA6F950](v21, -1, -1);
    }

    (*(v7 + 8))(v14, v6);
    sub_2259D8718(0, &qword_281059A60);
    v22 = sub_225CCEF94();
    v23 = v52;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v23;
    v25 = 0x737574617473;
    v26 = v22;
    v27 = 0xE600000000000000;
  }

  sub_225A0492C(v26, v25, v27, v24);
  return v51;
}

CoreIDVShared::DaemonAnalytics::PIITokenUseCase_optional __swiftcall DaemonAnalytics.PIITokenUseCase.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static DaemonAnalytics.sendPIITokenRetrievalEvent(origin:didRetreivePIIToken:usecase:)(unsigned __int8 *a1, char a2, unsigned __int8 *a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a3;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v7 + 16))(v10, &v13[v14], v6);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = v11;
    *(v18 + 12) = 1024;
    *(v18 + 14) = a2 & 1;
    *(v18 + 18) = 2048;
    *(v18 + 20) = v12;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendPIITokenRetrievalEvent origin: %ld, didRetreivePIIToken: %{BOOL}d, usecase: %ld", v18, 0x1Cu);
    MEMORY[0x22AA6F950](v18, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v19 = sub_225CCE444();
  v20 = swift_allocObject();
  v20[16] = v11;
  v20[17] = a2 & 1;
  v20[18] = v12;
  aBlock[4] = sub_225B1F4E0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_136;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

unint64_t sub_225B10EFC(char a1, char a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x73746C75736572;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0x65736163657375;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v7;
}

CoreIDVShared::IDCSAnalytics::ReaderAuthTypeTag_optional __swiftcall IDCSAnalytics.ReaderAuthTypeTag.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

CoreIDVShared::IDCSAnalytics::ReaderAuthOutcome_optional __swiftcall IDCSAnalytics.ReaderAuthOutcome.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IDCSAnalytics.ReaderAuthOutcome.rawValue.getter()
{
  v1 = 0x6E65687475616E75;
  if (*v0 != 1)
  {
    v1 = 0x64657463656A6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6568747561;
  }
}

uint64_t sub_225B11144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65687475616E75;
  v4 = 0xEF64657461636974;
  if (v2 != 1)
  {
    v3 = 0x64657463656A6572;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x69746E6568747561;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006465746163;
  }

  v7 = 0x6E65687475616E75;
  v8 = 0xEF64657461636974;
  if (*a2 != 1)
  {
    v7 = 0x64657463656A6572;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x69746E6568747561;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006465746163;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B11268()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B11324()
{
  sub_225CCE5B4();
}

uint64_t sub_225B113CC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B11490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465746163;
  v4 = 0xEF64657461636974;
  v5 = 0x6E65687475616E75;
  if (v2 != 1)
  {
    v5 = 0x64657463656A6572;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6568747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::IDCSAnalytics::ReaderAuthFailureReason_optional __swiftcall IDCSAnalytics.ReaderAuthFailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IDCSAnalytics.ReaderAuthFailureReason.rawValue.getter()
{
  result = 0x7250687475416F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 6:
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0x656D614E74736F68;
      break;
    case 0xF:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_225B117AC@<X0>(unint64_t *a1@<X8>)
{
  result = IDCSAnalytics.ReaderAuthFailureReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.description.getter()
{
  if (!*v0)
  {
    return 0x73736563637553;
  }

  v1 = sub_225CCCCB4();
  [v1 code];

  return sub_225CCF824();
}

uint64_t sub_225B11850()
{
  if (!*v0)
  {
    return 0x73736563637553;
  }

  v1 = sub_225CCCCB4();
  [v1 code];

  return sub_225CCF824();
}

uint64_t IDCSAnalytics.NetworkStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x656E696C6E6FLL;
  }
}

uint64_t sub_225B11910(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C66666FLL;
  }

  else
  {
    v3 = 0x656E696C6E6FLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x656E696C6E6FLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225B119B4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B11A34()
{
  sub_225CCE5B4();
}

uint64_t sub_225B11AA0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B11B28(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E6FLL;
  if (*v1)
  {
    v2 = 0x656E696C66666FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

CoreIDVShared::IDCSAnalytics::ConnectionType_optional __swiftcall IDCSAnalytics.ConnectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IDCSAnalytics.ConnectionType.rawValue.getter()
{
  v1 = 1768319351;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

uint64_t sub_225B11C10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1768319351;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72616C756C6C6563;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1768319351;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C756C6C6563;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B11CFC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B11D94()
{
  sub_225CCE5B4();
}

uint64_t sub_225B11E18()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B11EB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1768319351;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C756C6C6563;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v8 = sub_225CCD954();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *a2;
  v58 = *a3;
  v54 = *a4;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  if (!v14)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 &= v14 - 1;

      v18 = sub_225CCF5D4();

      if (v18 < 3)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_225B29CD4(0, *(v17 + 2) + 1, 1, v17);
    }

    v21 = *(v17 + 2);
    v20 = *(v17 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v53 = v21 + 1;
      v23 = sub_225B29CD4((v20 > 1), v21 + 1, 1, v17);
      v22 = v53;
      v17 = v23;
    }

    *(v17 + 2) = v22;
    *&v17[8 * v21 + 32] = v18;
  }

  while (v14);
  while (1)
  {
LABEL_6:
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(a1 + 56 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_4;
    }
  }

  if (qword_28105B910 == -1)
  {
    goto LABEL_17;
  }

LABEL_33:
  swift_once();
LABEL_17:
  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  v27 = v56;
  v28 = &v24[v25];
  v29 = v57;
  (*(v56 + 16))(v11, v28, v57);
  os_unfair_lock_unlock(&v24[v26]);

  v30 = sub_225CCD934();
  v31 = sub_225CCED04();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v55;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446978;
    v36 = MEMORY[0x22AA6D060](v17, MEMORY[0x277D83B88]);
    v38 = sub_2259BE198(v36, v37, aBlock);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v39 = 0xEF64657461636974;
    v40 = 0x6E65687475616E75;
    if (v33 != 1)
    {
      v40 = 0x64657463656A6572;
      v39 = 0xE800000000000000;
    }

    if (v33)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x69746E6568747561;
    }

    if (v33)
    {
      v42 = v39;
    }

    else
    {
      v42 = 0xED00006465746163;
    }

    v43 = sub_2259BE198(v41, v42, aBlock);

    *(v34 + 14) = v43;
    *(v34 + 22) = 2082;
    if (v58 == 16)
    {
      v44 = 0xE500000000000000;
      v45 = 0x3E6C696E3CLL;
    }

    else
    {
      v59 = v58;
      v45 = IDCSAnalytics.ReaderAuthFailureReason.rawValue.getter();
      v44 = v47;
    }

    v48 = v57;
    v49 = sub_2259BE198(v45, v44, aBlock);

    *(v34 + 24) = v49;
    *(v34 + 32) = 2050;
    v46 = v54;
    *(v34 + 34) = v54;
    _os_log_impl(&dword_2259A7000, v30, v31, "sendReaderAuthOutcomeEvent document types = %{public}s, outcome: %{public}s, failure reason = %{public}s reader auth type = %{public}ld", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v35, -1, -1);
    MEMORY[0x22AA6F950](v34, -1, -1);

    (*(v56 + 8))(v11, v48);
  }

  else
  {

    (*(v27 + 8))(v11, v29);
    v46 = v54;
  }

  v50 = sub_225CCE444();
  v51 = swift_allocObject();
  *(v51 + 16) = v33;
  *(v51 + 24) = v17;
  *(v51 + 32) = v58;
  *(v51 + 33) = v46;
  aBlock[4] = sub_225B1F4F0;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_147;
  v52 = _Block_copy(aBlock);

  AnalyticsSendExplodingEventLazy();
  _Block_release(v52);
}

unint64_t sub_225B124E0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  v7 = sub_225CCE444();

  *(inited + 48) = v7;
  v8 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  v9 = sub_225CCE7F4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v9, 0x746E656D75636F64, 0xED00007365707954, isUniquelyReferenced_nonNull_native);
  if (a3 != 16)
  {
    IDCSAnalytics.ReaderAuthFailureReason.rawValue.getter();
    v11 = sub_225CCE444();

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v11, 0x526572756C696166, 0xED00006E6F736165, v12);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v13, 0x7541726564616572, 0xEE00657079546874, v14);
  return v8;
}

CoreIDVShared::IDCSAnalytics::ReaderAuthOnlineOCSPOutcome_optional __swiftcall IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.rawValue.getter()
{
  v1 = 0x64656B6F766572;
  if (*v0 != 1)
  {
    v1 = 0x756C636E6F636E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6F766552746F6ELL;
  }
}

uint64_t sub_225B1280C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656B6F766572;
  if (v2 != 1)
  {
    v4 = 0x756C636E6F636E69;
    v3 = 0xEC00000065766973;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6B6F766552746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656B6F766572;
  if (*a2 != 1)
  {
    v8 = 0x756C636E6F636E69;
    v7 = 0xEC00000065766973;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B6F766552746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B12920()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B129D0()
{
  sub_225CCE5B4();
}

uint64_t sub_225B12A6C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B12B24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE700000000000000;
  v5 = 0x64656B6F766572;
  if (v2 != 1)
  {
    v5 = 0x756C636E6F636E69;
    v4 = 0xEC00000065766973;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B6F766552746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_225CCD954();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a2;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_9:
    v9 &= v9 - 1;

    v14 = sub_225CCF5D4();

    if (!v14 || v14 == 2 || v14 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_225B29CD4(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_225B29CD4((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      *&v12[8 * v16 + 32] = v14;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  if (qword_28105B910 == -1)
  {
    goto LABEL_18;
  }

LABEL_31:
  swift_once();
LABEL_18:
  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  v20 = v41;
  v21 = &v17[v18];
  v22 = v44;
  v23 = v42;
  (*(v41 + 16))(v44, v21, v42);
  os_unfair_lock_unlock(&v17[v19]);

  v24 = sub_225CCD934();
  v25 = sub_225CCED04();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v43;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136446466;
    v30 = MEMORY[0x22AA6D060](v12, MEMORY[0x277D83B88]);
    v32 = sub_2259BE198(v30, v31, aBlock);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = 0xE700000000000000;
    v34 = 0x64656B6F766572;
    if (v27 != 1)
    {
      v34 = 0x756C636E6F636E69;
      v33 = 0xEC00000065766973;
    }

    if (v27)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x6B6F766552746F6ELL;
    }

    if (v27)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0xEA00000000006465;
    }

    v37 = sub_2259BE198(v35, v36, aBlock);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_2259A7000, v24, v25, "sendOnlineOCSPOutcomeEvent doctype = %{public}s, outcome: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v29, -1, -1);
    MEMORY[0x22AA6F950](v28, -1, -1);

    (*(v20 + 8))(v44, v23);
  }

  else
  {

    (*(v20 + 8))(v22, v23);
  }

  v38 = sub_225CCE444();
  v39 = swift_allocObject();
  *(v39 + 16) = v27;
  *(v39 + 24) = v12;
  aBlock[4] = sub_225B1F504;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_155;
  v40 = _Block_copy(aBlock);

  AnalyticsSendExplodingEventLazy();
  _Block_release(v40);
}

unint64_t sub_225B130B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  v1 = sub_225CCE444();

  *(inited + 48) = v1;
  v2 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  v3 = sub_225CCE7F4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v3, 0x746E656D75636F64, 0xED00007365707954, isUniquelyReferenced_nonNull_native);
  return v2;
}

void static IDCSAnalytics.sendPhysicalPresentmentEvent(networkStatus:connectionType:presentmentResult:biometricAuthMethod:terminalAuthPerformed:portraitWasRequested:isAppleReader:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8)
{
  LODWORD(v8) = a8;
  LODWORD(v9) = a7;
  LODWORD(v10) = a6;
  v70 = a5;
  v69 = a3;
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v67 = *a2;
  v68 = v19;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  (*(v15 + 16))(v18, &v20[v21], v14);
  os_unfair_lock_unlock(&v20[v22]);

  v23 = v14;
  v24 = sub_225CCD934();
  v25 = sub_225CCED04();

  if (os_log_type_enabled(v24, v25))
  {
    v63 = v25;
    v64 = v23;
    HIDWORD(v61) = v10;
    v65 = v9;
    v66 = v8;
    v10 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v10 = 136316674;
    v26 = 0x656E696C6E6FLL;
    if (v68)
    {
      v26 = 0x656E696C66666FLL;
    }

    v27 = 0xE600000000000000;
    if (v68)
    {
      v27 = 0xE700000000000000;
    }

    if (v68 == 2)
    {
      v28 = 0x3E6C696E3CLL;
    }

    else
    {
      v28 = v26;
    }

    if (v68 == 2)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = v27;
    }

    v30 = sub_2259BE198(v28, v29, aBlock);

    *(v10 + 4) = v30;
    *(v10 + 12) = 2080;
    v31 = 0xE800000000000000;
    v32 = 0x72616C756C6C6563;
    v33 = 0x726568746FLL;
    if (v67 != 2)
    {
      v33 = 0x3E6C696E3CLL;
    }

    if (v67)
    {
      v32 = 1768319351;
      v31 = 0xE400000000000000;
    }

    if (v67 <= 1)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    if (v67 <= 1)
    {
      v35 = v31;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = v70;
    v37 = sub_2259BE198(v34, v35, aBlock);

    *(v10 + 14) = v37;
    *(v10 + 22) = 2080;
    if (a4)
    {
      v38 = v69;
    }

    else
    {
      v38 = 0x3E6C696E3CLL;
    }

    if (a4)
    {
      v39 = a4;
    }

    else
    {
      v39 = 0xE500000000000000;
    }

    v40 = sub_2259BE198(v38, v39, aBlock);

    *(v10 + 24) = v40;
    *(v10 + 32) = 2080;
    v71 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C8);
    v41 = sub_225CCE504();
    v43 = sub_2259BE198(v41, v42, aBlock);

    *(v10 + 34) = v43;
    *(v10 + 42) = 2080;
    v44 = BYTE4(v61);
    v71 = BYTE4(v61);
    v45 = sub_225CCE504();
    v47 = sub_2259BE198(v45, v46, aBlock);

    *(v10 + 44) = v47;
    *(v10 + 52) = 2080;
    v48 = v65;
    v71 = v65;
    v49 = sub_225CCE504();
    v8 = sub_2259BE198(v49, v50, aBlock);

    *(v10 + 54) = v8;
    *(v10 + 62) = 2080;
    LOBYTE(v8) = v66;
    v71 = v66;
    v51 = sub_225CCE504();
    v9 = sub_2259BE198(v51, v52, aBlock);

    *(v10 + 64) = v9;
    LOBYTE(v9) = v48;
    _os_log_impl(&dword_2259A7000, v24, v63, "sendPhysicalPresentmentEvent networkStatus = %s, connectionType = %s, presentmentResult = %s, biometricAuthMethod = %s, terminalAuthPerformed = %s, portraitWasRequested = %s, isAppleReader = %s", v10, 0x48u);
    v53 = v62;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v53, -1, -1);
    v54 = v10;
    LOBYTE(v10) = v44;
    v55 = v69;
    v56 = v70;
    MEMORY[0x22AA6F950](v54, -1, -1);

    (*(v15 + 8))(v18, v64);
  }

  else
  {

    (*(v15 + 8))(v18, v23);
    v56 = v70;
    v55 = v69;
  }

  v57 = sub_225CCE444();
  v58 = swift_allocObject();
  v59 = v67;
  *(v58 + 16) = v68;
  *(v58 + 17) = v59;
  *(v58 + 24) = v55;
  *(v58 + 32) = a4;
  *(v58 + 40) = v56;
  *(v58 + 41) = v10;
  *(v58 + 42) = v9;
  *(v58 + 43) = v8;
  aBlock[4] = sub_225B1F510;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_161;
  v60 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v60);
}

unint64_t sub_225B13800(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  v14 = a1;
  v15 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  if (v14 != 2)
  {
    v16 = sub_225CCE444();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v16, 0x536B726F7774656ELL, 0xED00007375746174, isUniquelyReferenced_nonNull_native);
  }

  if (a2 <= 2u)
  {
    v18 = sub_225CCE444();

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v18, 0x697463656E6E6F63, 0xEE00657079546E6FLL, v19);
  }

  if (a4)
  {
    v20 = sub_225CCE444();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v20, 0xD000000000000011, 0x8000000225D1DAA0, v21);
  }

  if (a5 != 2)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v22, 0xD000000000000013, 0x8000000225D1DA80, v23);
  }

  if (a6 != 2)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v24, 0xD000000000000015, 0x8000000225D1DA60, v25);
  }

  if (a7 != 2)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v26, 0xD000000000000014, 0x8000000225D1DA40, v27);
  }

  if (a8 != 2)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v28, 0x656C7070417369, 0xE700000000000000, v29);
  }

  return v15;
}

CoreIDVShared::IDCSAnalytics::PayloadValidationReason_optional __swiftcall IDCSAnalytics.PayloadValidationReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IDCSAnalytics.PayloadValidationReason.rawValue.getter()
{
  v1 = 0x6D746E6573657270;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697369766F7270;
  }
}

uint64_t sub_225B13C34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D746E6573657270;
  v4 = 0xEB00000000746E65;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F697369766F7270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000676E696ELL;
  }

  v7 = 0x6D746E6573657270;
  v8 = 0xEB00000000746E65;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F697369766F7270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000676E696ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B13D4C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B13E00()
{
  sub_225CCE5B4();
}

uint64_t sub_225B13EA0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B13F5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E696ELL;
  v4 = 0xEB00000000746E65;
  v5 = 0x6D746E6573657270;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F697369766F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::IDCSAnalytics::PayloadValidationResult_optional __swiftcall IDCSAnalytics.PayloadValidationResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
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
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t IDCSAnalytics.PayloadValidationResult.rawValue.getter()
{
  result = 0x64696C6176;
  switch(*v0)
  {
    case 1:
      result = 0x64696C61766E69;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 0xF:
      result = 0xD000000000000015;
      break;
    case 4:
    case 7:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 8:
    case 0x15:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
      result = 0x4464696C61766E69;
      break;
    case 0xB:
      v2 = 0x696C61766E69;
      goto LABEL_23;
    case 0xC:
      result = 0xD00000000000001ALL;
      break;
    case 0xD:
      result = 0x44676E697373696DLL;
      break;
    case 0xE:
      result = 0x4D676E697373696DLL;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
    case 0x14:
      result = 0xD000000000000016;
      break;
    case 0x12:
      result = 0x6156746559746F6ELL;
      break;
    case 0x13:
      v2 = 0x657269707865;
LABEL_23:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x4D64000000000000;
      break;
    case 0x16:
      result = 0xD00000000000001FLL;
      break;
    case 0x17:
      result = 0xD00000000000001BLL;
      break;
    case 0x18:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225B143D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B14490(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_225CCFBD4();
  a3(v4);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B14518(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_225CCE5B4();
}

uint64_t sub_225B14598(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_225CCFBD4();
  a4(v5);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B14610@<X0>(uint64_t *a1@<X8>)
{
  result = IDCSAnalytics.PayloadValidationResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static IDCSAnalytics.sendPayloadValidationEvent(reason:docType:issuer:result:region:issuingJurisdiction:hasTaggedIssuerAuth:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unsigned __int8 a11)
{
  v66 = a7;
  v67 = a2;
  v64 = a4;
  v63 = sub_225CCD954();
  v16 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v20 = *a6;
  if (a3)
  {

    v21 = sub_2259F6B18(&unk_2838FE9A8);
    swift_arrayDestroy();
    v68 = v21;
    sub_225B1C618(aBlock, 0xD000000000000017, 0x8000000225D0AC80);

    LOBYTE(v21) = sub_225B063F0(v67, a3, v68);

    if ((v21 & 1) == 0)
    {

      a3 = 0xE500000000000000;
      v67 = 0x726568746FLL;
    }
  }

  v60 = v20;
  v59 = a9;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v58 = a11;
  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v24));
  v25 = &v22[v23];
  v26 = v63;
  v27 = v19;
  (*(v16 + 16))(v19, v25, v63);
  os_unfair_lock_unlock(&v22[v24]);

  v28 = sub_225CCD934();
  v29 = sub_225CCED04();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v65 = a5;
    v62 = a8;
    v31 = v30;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v31 = 136316418;
    HIDWORD(v55) = v29;
    if (a3)
    {
      v32 = v67;
    }

    else
    {
      v32 = 0x3E6C696E3CLL;
    }

    if (a3)
    {
      v33 = a3;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = sub_2259BE198(v32, v33, aBlock);

    *(v31 + 4) = v34;
    v56 = v27;
    *(v31 + 12) = 2080;
    if (v65)
    {
      v35 = v64;
    }

    else
    {
      v35 = 0x3E6C696E3CLL;
    }

    if (v65)
    {
      v36 = v65;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    v37 = sub_2259BE198(v35, v36, aBlock);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2080;
    if (v62)
    {
      v38 = v66;
    }

    else
    {
      v38 = 0x3E6C696E3CLL;
    }

    if (v62)
    {
      v39 = v62;
    }

    else
    {
      v39 = 0xE500000000000000;
    }

    v40 = sub_2259BE198(v38, v39, aBlock);

    *(v31 + 24) = v40;
    *(v31 + 32) = 2080;
    v41 = v59;
    if (a10)
    {
      v42 = v59;
    }

    else
    {
      v42 = 0x3E6C696E3CLL;
    }

    if (a10)
    {
      v43 = a10;
    }

    else
    {
      v43 = 0xE500000000000000;
    }

    v44 = sub_2259BE198(v42, v43, aBlock);

    *(v31 + 34) = v44;
    *(v31 + 42) = 2080;
    v45 = v60;
    LOBYTE(v68) = v60;
    v46 = IDCSAnalytics.PayloadValidationResult.rawValue.getter();
    v48 = sub_2259BE198(v46, v47, aBlock);

    *(v31 + 44) = v48;
    *(v31 + 52) = 1024;
    LOBYTE(v44) = v58;
    *(v31 + 54) = v58 & 1;
    _os_log_impl(&dword_2259A7000, v28, BYTE4(v55), "sendPayloadValidationEvent docType = %s, issuer = %s, region = %s, issuingJurisdiction = %s, result = %s hasTaggedIssuerAuth = %{BOOL}d ", v31, 0x3Au);
    v49 = v57;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v49, -1, -1);
    v50 = v31;
    a8 = v62;
    a5 = v65;
    MEMORY[0x22AA6F950](v50, -1, -1);

    (*(v16 + 8))(v56, v63);
    v51 = v44;
  }

  else
  {

    (*(v16 + 8))(v19, v26);
    v45 = v60;
    v41 = v59;
    v51 = v58;
  }

  v52 = sub_225CCE444();
  v53 = swift_allocObject();
  *(v53 + 16) = v61;
  *(v53 + 17) = v45;
  *(v53 + 24) = v67;
  *(v53 + 32) = a3;
  *(v53 + 40) = v64;
  *(v53 + 48) = a5;
  *(v53 + 56) = v66;
  *(v53 + 64) = a8;
  *(v53 + 72) = v41;
  *(v53 + 80) = a10;
  *(v53 + 88) = v51 & 1;
  aBlock[4] = sub_225B1F530;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_169;
  v54 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v54);
}

unint64_t sub_225B14C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  sub_225CCF434();
  v12 = sub_225CCE444();

  *(inited + 48) = v12;
  *(inited + 56) = 0x746C75736572;
  *(inited + 64) = 0xE600000000000000;
  sub_225CCF434();
  v13 = sub_225CCE444();

  *(inited + 72) = v13;
  v14 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a4)
  {
    v15 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v15, 0x65707954636F64, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v17 = sub_225CCE444();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v17, 0x726575737369, 0xE600000000000000, v18);
  }

  if (a8)
  {
    v19 = sub_225CCE444();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v19, 0x6E6F69676572, 0xE600000000000000, v20);
  }

  if (a10)
  {
    v21 = sub_225CCE444();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v21, 0xD000000000000013, 0x8000000225D1DA20, v22);
  }

  v23 = sub_225CCE8E4();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v23, 0xD000000000000013, 0x8000000225D1DA00, v24);
  return v14;
}

CoreIDVShared::IDCSAnalytics::GarbageCollectionEventType_optional __swiftcall IDCSAnalytics.GarbageCollectionEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IDCSAnalytics.GarbageCollectionEventType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64656E616870726FLL;
  v3 = 0xD00000000000001CLL;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225B15058()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B15154()
{
  sub_225CCE5B4();
}

uint64_t sub_225B1523C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B15340(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73746F6C534553;
  v4 = 0x64656E616870726FLL;
  v5 = 0x8000000225D0C120;
  v6 = 0xD00000000000001CLL;
  if (v2 == 3)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x8000000225D0C140;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000014;
  v8 = 0x8000000225D0C0D0;
  if (*v1)
  {
    v7 = 0xD000000000000016;
    v8 = 0x8000000225D0C0F0;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v8;
  }

  *a1 = v9;
  a1[1] = v3;
}

CoreIDVShared::IDCSAnalytics::FetchCredentialUUIDsEventResult_optional __swiftcall IDCSAnalytics.FetchCredentialUUIDsEventResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IDCSAnalytics.FetchCredentialUUIDsEventResult.rawValue.getter()
{
  v1 = 0x7465527364697575;
  v2 = 0x5473444955556F6ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x526F544C43416F6ELL;
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

uint64_t sub_225B15504()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B155F0()
{
  sub_225CCE5B4();
}

uint64_t sub_225B156C8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B157BC(unint64_t *a1@<X8>)
{
  v2 = 0xED000064656E7275;
  v3 = 0x7465527364697575;
  v4 = 0xEF6E72757465526FLL;
  v5 = 0x5473444955556F6ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000018;
    v4 = 0x8000000225D0C190;
  }

  if (*v1)
  {
    v3 = 0x526F544C43416F6ELL;
    v2 = 0xED00006E72757465;
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

CoreIDVShared::IDCSAnalytics::NamespaceElement __swiftcall IDCSAnalytics.NamespaceElement.init(namespace:element:)(Swift::String a1, Swift::String element)
{
  *v2 = a1;
  v2[1] = element;
  result.element = element;
  result.namespace = a1;
  return result;
}

unint64_t IDCSAnalytics.ElementFallbackAlgorithm.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_225B158B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "skippedUUIDsNoCredential";
  }

  else
  {
    v4 = "ageOverToNearestAgeOver";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (*a2)
  {
    v7 = "ageOverToNearestAgeOver";
  }

  else
  {
    v7 = "skippedUUIDsNoCredential";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_225CCF934();
  }

  return v9 & 1;
}

uint64_t sub_225B15964()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B159E4()
{
  sub_225CCE5B4();
}

uint64_t sub_225B15A50()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B15AD8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "ageOverToNearestAgeOver";
  }

  else
  {
    v3 = "skippedUUIDsNoCredential";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void static IDCSAnalytics.sendElementFallbackTriggeredEvent(algorithm:from:to:)(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = *a3;
  v15 = a3[1];
  v17 = a3[2];
  v18 = a3[3];
  aBlock = v12;
  v47 = v11;

  MEMORY[0x22AA6CE70](45, 0xE100000000000000);
  MEMORY[0x22AA6CE70](v14, v13);
  v19 = aBlock;
  v45 = v47;
  if (v15)
  {
    aBlock = v16;
    v47 = v15;

    MEMORY[0x22AA6CE70](45, 0xE100000000000000);
    MEMORY[0x22AA6CE70](v17, v18);
    v21 = aBlock;
    v20 = v47;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = v45;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  (*(v7 + 16))(v10, &v23[v24], v6);
  os_unfair_lock_unlock(&v23[v25]);

  v26 = sub_225CCD934();
  v27 = sub_225CCED04();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43 = v21;
    v30 = v29;
    aBlock = v29;
    *v28 = 136315650;
    if (v44)
    {
      v31 = 0xD000000000000013;
    }

    else
    {
      v31 = 0xD000000000000017;
    }

    v42 = v6;
    if (v44)
    {
      v32 = "ageOverToNearestAgeOver";
    }

    else
    {
      v32 = "skippedUUIDsNoCredential";
    }

    v33 = sub_2259BE198(v31, v32 | 0x8000000000000000, &aBlock);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2259BE198(v19, v45, &aBlock);
    *(v28 + 22) = 2080;
    if (v20)
    {
      v34 = v43;
    }

    else
    {
      v34 = 0x3E6C696E3CLL;
    }

    if (v20)
    {
      v35 = v20;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_2259BE198(v34, v35, &aBlock);

    *(v28 + 24) = v36;
    _os_log_impl(&dword_2259A7000, v26, v27, "sendElementFallbackTriggeredEvent %s from %s to %s", v28, 0x20u);
    swift_arrayDestroy();
    v37 = v30;
    v21 = v43;
    MEMORY[0x22AA6F950](v37, -1, -1);
    v38 = v28;
    v22 = v45;
    MEMORY[0x22AA6F950](v38, -1, -1);

    (*(v7 + 8))(v10, v42);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v39 = sub_225CCE444();
  v40 = swift_allocObject();
  *(v40 + 16) = v44;
  *(v40 + 24) = v19;
  *(v40 + 32) = v22;
  *(v40 + 40) = v21;
  *(v40 + 48) = v20;
  v50 = sub_225B1F574;
  v51 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_225B06D38;
  v49 = &block_descriptor_179;
  v41 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v41);
}

unint64_t sub_225B15FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x687469726F676C61;
  *(inited + 40) = 0xE90000000000006DLL;
  v7 = sub_225CCE444();

  *(inited + 48) = v7;
  *(inited + 56) = 0x6D656C456D6F7266;
  *(inited + 64) = 0xEB00000000746E65;
  *(inited + 72) = sub_225CCE444();
  v8 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a5)
  {
    v9 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v9, 0x6E656D656C456F74, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

void static IDCSAnalytics.sendLegacyACLUsageEvent(presentmentType:)(uint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2259BE198(0xD000000000000029, 0x8000000225D1D530, aBlock);
    _os_log_impl(&dword_2259A7000, v10, v11, "%s called", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA6F950](v13, -1, -1);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = sub_225CCE444();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_225B1F584;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_185;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

unint64_t sub_225B1644C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) *a4];
  v9 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  return v9;
}

void static IDCSAnalytics.sendPayloadMissingRequiredElementEvent(element:issuer:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v35 = a2;
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  v36 = a1[2];
  v37 = v10;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v6 + 16))(v9, &v13[v14], v5);
  os_unfair_lock_unlock(&v13[v15]);

  v16 = v5;
  v17 = sub_225CCD934();
  v18 = sub_225CCED04();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315394;
    v38 = v20;
    aBlock = v37;
    v40 = v11;

    v34 = v16;
    MEMORY[0x22AA6CE70](45, 0xE100000000000000);
    MEMORY[0x22AA6CE70](v36, v12);
    v21 = v12;
    v22 = a3;
    v23 = sub_2259BE198(aBlock, v40, &v38);

    *(v19 + 4) = v23;
    a3 = v22;
    v12 = v21;
    *(v19 + 12) = 2080;
    v24 = v35;
    *(v19 + 14) = sub_2259BE198(v35, a3, &v38);
    v25 = v18;
    v26 = v37;
    _os_log_impl(&dword_2259A7000, v17, v25, "sendPayloadMissingRequiredElement for element %s, issuer %s", v19, 0x16u);
    v27 = v33;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v27, -1, -1);
    v28 = v19;
    v29 = v36;
    MEMORY[0x22AA6F950](v28, -1, -1);

    (*(v6 + 8))(v9, v34);
  }

  else
  {

    (*(v6 + 8))(v9, v16);
    v24 = v35;
    v29 = v36;
    v26 = v37;
  }

  v30 = sub_225CCE444();
  v31 = swift_allocObject();
  v31[2] = v26;
  v31[3] = v11;
  v31[4] = v29;
  v31[5] = v12;
  v31[6] = v24;
  v31[7] = a3;
  v43 = sub_225B1F5C8;
  v44 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_225B06D38;
  v42 = &block_descriptor_191;
  v32 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v32);
}

unint64_t sub_225B16928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x746E656D656C65;
  *(inited + 40) = 0xE700000000000000;

  MEMORY[0x22AA6CE70](45, 0xE100000000000000);
  MEMORY[0x22AA6CE70](a3, a4);
  v7 = sub_225CCE444();

  *(inited + 48) = v7;
  *(inited + 56) = 0x726575737369;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_225CCE444();
  v8 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v8;
}

void static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendRequestedElementsNotPermittedEvent", v18, 2u);
    MEMORY[0x22AA6F950](v18, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v19 = sub_225CCE444();
  v20 = swift_allocObject();
  *(v20 + 16) = a3 & 1;
  *(v20 + 24) = a4;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  aBlock[4] = sub_225B1F5D8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_197;
  v21 = _Block_copy(aBlock);

  AnalyticsSendExplodingEventLazy();
  _Block_release(v21);
}

uint64_t sub_225B16D48(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x4F79616C70736964;
  *(inited + 40) = 0xEB00000000796C6ELL;
  *(inited + 48) = sub_225CCE8E4();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000225D1D9E0;
  v4 = a2[2];
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_5:
    v10 = v5;
    sub_225B1E3E8(&v10);
    v7 = sub_225CCE7F4();

    *(inited + 72) = v7;
    strcpy((inited + 80), "rpIdentifier");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = sub_225CCE444();
    v8 = sub_225B2E2BC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
    swift_arrayDestroy();
    return v8;
  }

  v5 = sub_225C00680(v4, 0);
  v6 = sub_225B929C0(&v10, v5 + 4, v4, a2);

  sub_2259D8710();
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

void static IDCSAnalytics.sendPayloadIngestionSizeEvent(docType:issuer:overallSizeBytes:numberOfPackages:packageSizeBytes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a5;
  v43 = a1;
  v12 = sub_225CCD954();
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v44 + 16))(v15, &v16[v17], v12);
  os_unfair_lock_unlock(&v16[v18]);

  v19 = v12;
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = v19;
    v23 = v22;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v23 = 136316162;
    *(v23 + 4) = sub_2259BE198(v43, a2, aBlock);
    *(v23 + 12) = 2080;
    v41 = a2;
    v24 = a7;
    if (a4)
    {
      v25 = a3;
    }

    else
    {
      v25 = 0x3E6C696E3CLL;
    }

    v39 = v15;
    v26 = a3;
    v27 = a6;
    if (a4)
    {
      v28 = a4;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = sub_2259BE198(v25, v28, aBlock);
    a6 = v27;
    a3 = v26;

    *(v23 + 14) = v29;
    a7 = v24;
    a2 = v41;
    v30 = v42;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v30;
    *(v23 + 32) = 2048;
    *(v23 + 34) = a6;
    *(v23 + 42) = 2048;
    *(v23 + 44) = a7;
    v31 = v21;
    v32 = v43;
    _os_log_impl(&dword_2259A7000, v20, v31, "sendPayloadIngestionSizeEvent docType = %s, issuer = %s, overallSizeBytes = %ld, numberOfPackages = %ld, packageSizeBytes = %ld", v23, 0x34u);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v33, -1, -1);
    MEMORY[0x22AA6F950](v23, -1, -1);

    (*(v44 + 8))(v39, v40);
  }

  else
  {

    (*(v44 + 8))(v15, v19);
    v30 = v42;
    v32 = v43;
  }

  v34 = sub_225CCE444();
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = a2;
  v35[4] = v30;
  v35[5] = a6;
  v35[6] = a7;
  v35[7] = a3;
  v35[8] = a4;
  aBlock[4] = sub_225B1F5E8;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_203;
  v36 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v36);
}

unint64_t sub_225B17370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = 0x65707954636F64;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_225CCE444();
  strcpy((inited + 56), "overallSizeKB");
  *(inited + 70) = -4864;
  *(inited + 72) = sub_225CCEC44();
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000225D1D9C0;
  *(inited + 96) = sub_225CCEC44();
  strcpy((inited + 104), "packageSizeKB");
  *(inited + 118) = -4864;
  *(inited + 120) = sub_225CCEC44();
  v9 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a7)
  {
    v10 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v10, 0x726575737369, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v9;
}

void static IDCSAnalytics.sendPayloadPortraitSizeEvent(docType:issuer:portraitSizeBytes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v38 = a1;
  v39 = a5;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);

  v16 = v8;
  v17 = sub_225CCD934();
  v18 = sub_225CCED04();

  v19 = a2;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v37 = a3;
    v21 = v20;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v21 = 136315650;
    v22 = v38;
    *(v21 + 4) = sub_2259BE198(v38, v19, aBlock);
    *(v21 + 12) = 2080;
    if (a4)
    {
      v23 = v37;
    }

    else
    {
      v23 = 0x3E6C696E3CLL;
    }

    v36 = v16;
    v24 = v9;
    v25 = v19;
    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_2259BE198(v23, v26, aBlock);
    v19 = v25;

    *(v21 + 14) = v27;
    *(v21 + 22) = 2048;
    v28 = v39;
    *(v21 + 24) = v39;
    _os_log_impl(&dword_2259A7000, v17, v18, "sendPayloadPortraitSizeEvent docType = %s, issuer = %s, portraitSizeBytes = %ld", v21, 0x20u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v29, -1, -1);
    v30 = v21;
    a3 = v37;
    MEMORY[0x22AA6F950](v30, -1, -1);

    (*(v24 + 8))(v12, v36);
  }

  else
  {

    (*(v9 + 8))(v12, v16);
    v22 = v38;
    v28 = v39;
  }

  v31 = sub_225CCE444();
  v32 = swift_allocObject();
  v32[2] = v22;
  v32[3] = v19;
  v32[4] = v28;
  v32[5] = a3;
  v32[6] = a4;
  aBlock[4] = sub_225B1F5FC;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_209;
  v33 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v33);
}

unint64_t sub_225B17934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x65707954636F64;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_225CCE444();
  strcpy((inited + 56), "portraitSizeKB");
  *(inited + 71) = -18;
  *(inited + 72) = sub_225CCEC44();
  v7 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a5)
  {
    v8 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v8, 0x726575737369, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v7;
}

CoreIDVShared::IDCSAnalytics::SEProgenitorKeyDesignationFlow_optional __swiftcall IDCSAnalytics.SEProgenitorKeyDesignationFlow.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IDCSAnalytics.SEProgenitorKeyDesignationFlow.rawValue.getter()
{
  v1 = 0x74616E6769736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_225B17B5C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x74616E6769736564;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x74616E6769736564;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4 == 1)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0x8000000225D0C220;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000225D0C1F0;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x8000000225D0C220;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000225D0C1F0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B17C3C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B17CE8()
{
  sub_225CCE5B4();
}

uint64_t sub_225B17D80()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B17E34(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x74616E6769736564;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000225D0C220;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v5)
  {
    v3 = 0x8000000225D0C1F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t IDCSAnalytics.SEProgenitorKeyType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x74696E65676F7270;
  }
}

uint64_t sub_225B17EF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x74696E65676F7270;
  }

  if (v2)
  {
    v4 = 0xED000079654B726FLL;
  }

  else
  {
    v4 = 0x8000000225D0C250;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x74696E65676F7270;
  }

  if (*a2)
  {
    v6 = 0x8000000225D0C250;
  }

  else
  {
    v6 = 0xED000079654B726FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225B17FAC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B18040()
{
  sub_225CCE5B4();
}

uint64_t sub_225B180C0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B1815C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0C250;
  v3 = 0x74696E65676F7270;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xED000079654B726FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t IDCSAnalytics.SEProgenitorKeyDesignationEventType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000031;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

uint64_t sub_225B181F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000031;
  }

  else
  {
    v3 = 0xD00000000000002CLL;
  }

  if (v2)
  {
    v4 = "thirdPartyProgenitorKey";
  }

  else
  {
    v4 = "d.seprogenitorkeydesignation";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000031;
  }

  else
  {
    v6 = 0xD00000000000002CLL;
  }

  if (*a2)
  {
    v7 = "d.seprogenitorkeydesignation";
  }

  else
  {
    v7 = "thirdPartyProgenitorKey";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_225CCF934();
  }

  return v9 & 1;
}

uint64_t sub_225B182A0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B18320()
{
  sub_225CCE5B4();
}

uint64_t sub_225B1838C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B18414(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v2 = 0xD00000000000002CLL;
  }

  if (*v1)
  {
    v3 = "d.seprogenitorkeydesignation";
  }

  else
  {
    v3 = "thirdPartyProgenitorKey";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v48 = sub_225CCD954();
  v12 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v16 = *a2;
  v49 = *a3;
  if (v6)
  {
    v17 = 0xE300000000000000;
    v44 = 7104878;
  }

  else
  {
    aBlock[0] = a5;
    v44 = sub_225CCF824();
    v17 = v18;
  }

  v47 = a4;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  v22 = &v19[v20];
  v23 = v48;
  (*(v12 + 16))(v15, v22, v48);
  os_unfair_lock_unlock(&v19[v21]);

  v24 = sub_225CCD934();
  v25 = sub_225CCED04();

  v26 = os_log_type_enabled(v24, v25);
  v46 = v16;
  if (v26)
  {
    v42 = a5;
    v43 = v6;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315906;
    if (v16)
    {
      v29 = 0xD000000000000017;
    }

    else
    {
      v29 = 0x74696E65676F7270;
    }

    if (v16)
    {
      v30 = 0x8000000225D0C250;
    }

    else
    {
      v30 = 0xED000079654B726FLL;
    }

    v31 = sub_2259BE198(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = 0xEB000000006E6F69;
    v33 = 0x74616E6769736564;
    if (v49 != 1)
    {
      v33 = 0xD000000000000016;
      v32 = 0x8000000225D0C220;
    }

    if (v49)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0xD000000000000015;
    }

    if (v49)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0x8000000225D0C1F0;
    }

    v6 = sub_2259BE198(v34, v35, aBlock);

    *(v27 + 14) = v6;
    *(v27 + 22) = 1024;
    v36 = v47;
    *(v27 + 24) = v47 & 1;
    *(v27 + 28) = 2080;
    v37 = sub_2259BE198(v44, v17, aBlock);

    *(v27 + 30) = v37;
    _os_log_impl(&dword_2259A7000, v24, v25, "sendSEProgenitorKeyDesignationEvent keyType = %s , flow = %s, success = %{BOOL}d, errorCode = %s ", v27, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v28, -1, -1);
    MEMORY[0x22AA6F950](v27, -1, -1);

    (*(v12 + 8))(v15, v48);
    LOBYTE(v6) = v43;
    a5 = v42;
  }

  else
  {

    (*(v12 + 8))(v15, v23);
    v36 = v47;
  }

  v38 = sub_225CCE444();

  v39 = swift_allocObject();
  *(v39 + 16) = v46;
  *(v39 + 17) = v49;
  *(v39 + 18) = v36 & 1;
  *(v39 + 24) = a5;
  *(v39 + 32) = v6 & 1;
  aBlock[4] = sub_225B1F60C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_218;
  v40 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v40);
}

unint64_t sub_225B18970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x6570795479656BLL;
  *(inited + 40) = 0xE700000000000000;
  v8 = sub_225CCE444();

  *(inited + 48) = v8;
  *(inited + 56) = 2003790950;
  *(inited + 64) = 0xE400000000000000;
  v9 = sub_225CCE444();

  *(inited + 72) = v9;
  *(inited + 80) = 0x73736563637573;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_225CCE8E4();
  v10 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if ((a5 & 1) == 0)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v11, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  }

  return v10;
}

void static UIAnalytics.sendIDScanCompleteEvent(imageType:iqaCode:retakeCount:captureTime:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v42 = a4;
  v43 = a1;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v9 + 16))(v12, &v16[v17], v8);
  os_unfair_lock_unlock(&v16[v18]);

  sub_225B1F624(v13, v14, v15);
  v19 = v8;
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();

  sub_225B1F638(v13, v14, v15);
  v22 = os_log_type_enabled(v20, v21);
  v41 = v13;
  if (v22)
  {
    v39 = v19;
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v23 = 136446978;
    *(v23 + 4) = sub_2259BE198(v43, a2, &v44);
    *(v23 + 12) = 2082;
    v40 = a2;
    if (v15 == 255)
    {
      v26 = 0xE500000000000000;
      v24 = 0x3E6C696E3CLL;
    }

    else
    {
      aBlock = v13;
      v46 = v14;
      LOBYTE(v47) = v15;
      v24 = IQACode.toString.getter();
      v26 = v25;
    }

    v28 = sub_2259BE198(v24, v26, &v44);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2050;
    v27 = v42;
    *(v23 + 24) = v42;
    *(v23 + 32) = 2082;
    v29 = sub_225CCEBA4();
    v31 = sub_2259BE198(v29, v30, &v44);

    *(v23 + 34) = v31;
    _os_log_impl(&dword_2259A7000, v20, v21, "sendIDScanCompleteEvent imageType = %{public}s, iqaCode = %{public}s, retakeCount = %{public}ld, captureTime = %{public}s", v23, 0x2Au);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v32, -1, -1);
    MEMORY[0x22AA6F950](v23, -1, -1);

    (*(v9 + 8))(v12, v39);
    a2 = v40;
  }

  else
  {

    (*(v9 + 8))(v12, v19);
    v27 = v42;
  }

  v33 = sub_225CCE444();
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  *(v34 + 24) = a2;
  *(v34 + 32) = v27;
  *(v34 + 40) = a5;
  v35 = v41;
  *(v34 + 48) = v41;
  *(v34 + 56) = v14;
  *(v34 + 64) = v15;
  v49 = sub_225B1F64C;
  v50 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_225B06D38;
  v48 = &block_descriptor_224;
  v36 = _Block_copy(&aBlock);

  sub_225B1F624(v35, v14, v15);

  AnalyticsSendEventLazy();
  _Block_release(v36);
}

unint64_t sub_225B1900C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = ~a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x7079546567616D69;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = sub_225CCE444();
  *(inited + 56) = 0x6F43656B61746572;
  *(inited + 64) = 0xEB00000000746E75;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x5465727574706163;
  *(inited + 88) = 0xEB00000000656D69;
  v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v12 = a1;
  *(inited + 96) = [v11 initWithFloat_];
  v13 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (v9)
  {
    IQACode.toString.getter();
    v14 = sub_225CCE444();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v14, 0x65646F43617169, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v13;
}

void static UIAnalytics.sendProofingEligibilityStatusEvent(proofingEligibilityStatus:)(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = a1;
  v11 = sub_225CCD934();
  v12 = sub_225CCED04();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_2259A7000, v11, v12, "sendProofingEligibilityStatusEvent proofingEligibilityStatus = %{public}@", v13, 0xCu);
    sub_2259CB640(v14, &unk_27D73FC90);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v16 = sub_225CCE444();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  aBlock[4] = sub_225B1F664;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_230;
  v18 = _Block_copy(aBlock);
  v19 = v10;

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

unint64_t sub_225B194F4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000225D1D9A0;
  *(inited + 48) = a1;
  v3 = a1;
  v4 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  return v4;
}

CoreIDVShared::UIAnalytics::BiometricAuthType_optional __swiftcall UIAnalytics.BiometricAuthType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UIAnalytics.BiometricAuthType.rawValue.getter()
{
  v1 = 0x44496863756F74;
  if (*v0 != 1)
  {
    v1 = 0x65646F6373736170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636166;
  }
}

uint64_t sub_225B1965C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x44496863756F74;
  if (v2 != 1)
  {
    v4 = 0x65646F6373736170;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x444965636166;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x44496863756F74;
  if (*a2 != 1)
  {
    v8 = 0x65646F6373736170;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444965636166;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225B1975C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B197FC()
{
  sub_225CCE5B4();
}

uint64_t sub_225B19888()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B19930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x44496863756F74;
  if (v2 != 1)
  {
    v5 = 0x65646F6373736170;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444965636166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::UIAnalytics::BiometricBindingSetupOutcome_optional __swiftcall UIAnalytics.BiometricBindingSetupOutcome.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UIAnalytics.BiometricBindingSetupOutcome.rawValue.getter()
{
  v1 = 0x73736563637573;
  v2 = 0x64656C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x626967696C656E69;
  }

  if (*v0)
  {
    v1 = 0x646573756572;
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

uint64_t sub_225B19A70()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B19B34()
{
  sub_225CCE5B4();
}

uint64_t sub_225B19BE4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B19CB0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  v4 = 0xE800000000000000;
  v5 = 0x64656C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x626967696C656E69;
    v4 = 0xEA0000000000656CLL;
  }

  if (*v1)
  {
    v3 = 0x646573756572;
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

CoreIDVShared::UIAnalytics::BiometricBindingReplacementOutcome_optional __swiftcall UIAnalytics.BiometricBindingReplacementOutcome.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UIAnalytics.BiometricBindingReplacementOutcome.rawValue.getter()
{
  v1 = 0x646563616C706572;
  v2 = 0x6C69614668747561;
  if (*v0 != 2)
  {
    v2 = 0x6F6B636F4C6F6962;
  }

  if (*v0)
  {
    v1 = 0x6E6946676E6F7277;
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

uint64_t sub_225B19E24()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B19EF8()
{
  sub_225CCE5B4();
}

uint64_t sub_225B19FB8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225B1A094(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x646563616C706572;
  v4 = 0xEA00000000006465;
  v5 = 0x6C69614668747561;
  if (*v1 != 2)
  {
    v5 = 0x6F6B636F4C6F6962;
    v4 = 0xEA00000000007475;
  }

  if (*v1)
  {
    v3 = 0x6E6946676E6F7277;
    v2 = 0xEB00000000726567;
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

void static UIAnalytics.sendBiometricBindingSetupCompleteEvent(authType:outcome:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v9) = *a1;
  v10 = *a2;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v5 + 16))(v8, &v11[v12], v4);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = 0xE700000000000000;
    v19 = 0x44496863756F74;
    if (v9 != 1)
    {
      v19 = 0x65646F6373736170;
      v18 = 0xE800000000000000;
    }

    v33 = v9;
    if (v9)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x444965636166;
    }

    if (v9)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = sub_2259BE198(v20, v21, aBlock);

    v23 = 0xE700000000000000;
    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v24 = 0x73736563637573;
    v25 = 0xE800000000000000;
    v26 = 0x64656C65636E6163;
    if (v10 != 2)
    {
      v26 = 0x626967696C656E69;
      v25 = 0xEA0000000000656CLL;
    }

    if (v10)
    {
      v24 = 0x646573756572;
      v23 = 0xE600000000000000;
    }

    if (v10 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (v10 <= 1)
    {
      v9 = v23;
    }

    else
    {
      v9 = v25;
    }

    v28 = sub_2259BE198(v27, v9, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_2259A7000, v14, v15, "sendBiometricBindingSetupCompleteEvent authType = %s, outcome = %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v5 + 8))(v8, v4);
    LOBYTE(v9) = v33;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v29 = sub_225CCE444();
  v30 = swift_allocObject();
  *(v30 + 16) = v9;
  *(v30 + 17) = v10;
  aBlock[4] = sub_225B1F66C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_239;
  v31 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v31);
}

unint64_t sub_225B1A550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x6570795468747561;
  *(inited + 40) = 0xE800000000000000;
  v1 = sub_225CCE444();

  *(inited + 48) = v1;
  *(inited + 56) = 0x656D6F6374756FLL;
  *(inited + 64) = 0xE700000000000000;
  v2 = sub_225CCE444();

  *(inited + 72) = v2;
  v3 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v3;
}

void static UIAnalytics.sendBiometricReplacedEvent(authType:outcome:target:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v11) = *a1;
  v12 = *a2;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v7 + 16))(v10, &v13[v14], v6);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v35 = a3;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315650;
    v20 = 0xE700000000000000;
    v21 = 0x44496863756F74;
    if (v11 != 1)
    {
      v21 = 0x65646F6373736170;
      v20 = 0xE800000000000000;
    }

    HIDWORD(v34) = v11;
    if (v11)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0x444965636166;
    }

    if (v11)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0xE600000000000000;
    }

    v24 = sub_2259BE198(v22, v23, aBlock);

    v25 = 0xE800000000000000;
    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v26 = 0x646563616C706572;
    v27 = 0xEA00000000006465;
    v28 = 0x6C69614668747561;
    if (v12 != 2)
    {
      v28 = 0x6F6B636F4C6F6962;
      v27 = 0xEA00000000007475;
    }

    if (v12)
    {
      v26 = 0x6E6946676E6F7277;
      v25 = 0xEB00000000726567;
    }

    if (v12 <= 1)
    {
      v29 = v26;
    }

    else
    {
      v29 = v28;
    }

    if (v12 <= 1)
    {
      v30 = v25;
    }

    else
    {
      v30 = v27;
    }

    v11 = sub_2259BE198(v29, v30, aBlock);

    *(v18 + 14) = v11;
    *(v18 + 22) = 2048;
    a3 = v35;
    *(v18 + 24) = v35;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendBiometricReplacedEvent authType = %s, outcome = %s, target = %lld", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v19, -1, -1);
    MEMORY[0x22AA6F950](v18, -1, -1);

    (*(v7 + 8))(v10, v6);
    LOBYTE(v11) = BYTE4(v34);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v31 = sub_225CCE444();
  v32 = swift_allocObject();
  *(v32 + 16) = v11;
  *(v32 + 17) = v12;
  *(v32 + 24) = a3;
  aBlock[4] = sub_225B1F678;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_245;
  v33 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v33);
}

unint64_t sub_225B1AB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x6570795468747561;
  *(inited + 40) = 0xE800000000000000;
  v5 = sub_225CCE444();

  *(inited + 48) = v5;
  *(inited + 56) = 0x746C75736572;
  *(inited + 64) = 0xE600000000000000;
  v6 = sub_225CCE444();

  *(inited + 72) = v6;
  *(inited + 80) = 0x746567726174;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v7 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v7;
}

void static UIAnalytics.sendLivenessRestartEvent(timeout:stitchDetected:faceOutOfBounds:faceTooSmall:sentToBackground:proofingCompleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v25 = a6;
  v24 = a5;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  (*(v11 + 16))(v14, &v15[v16], v10);
  os_unfair_lock_unlock(&v15[v17]);
  v18 = sub_225CCD934();
  v19 = sub_225CCED04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134219264;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a2;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a3;
    *(v20 + 32) = 2048;
    *(v20 + 34) = a4;
    *(v20 + 42) = 2048;
    *(v20 + 44) = v24;
    *(v20 + 52) = 1024;
    *(v20 + 54) = v25 & 1;
    _os_log_impl(&dword_2259A7000, v18, v19, "sendLivenessRestartEvent timeout: %ld, stitchDetected %ld, faceOutOfBounds %ld, faceTooSmall %ld, sentToBackground %ld, proofingCompleted %{BOOL}d", v20, 0x3Au);
    MEMORY[0x22AA6F950](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v21 = sub_225CCE444();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *(v22 + 48) = v24;
  *(v22 + 56) = v25 & 1;
  aBlock[4] = sub_225B1F688;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_251;
  v23 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v23);
}

unint64_t sub_225B1B0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73D0;
  *(inited + 32) = 0x74756F656D6974;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 56), "stitchDetected");
  *(inited + 71) = -18;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x4F74754F65636166;
  *(inited + 88) = 0xEF73646E756F4266;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 104), "faceTooSmall");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000225D1D960;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x8000000225D1D980;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v13 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v13;
}

void static UIAnalytics.sendNfcReadEvent(durationOfDeviceRead:durationOfServerRead:isScanSuccessful:numberOfTears:numberOfTimeouts:totalRestart:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  (*(v11 + 16))(v14, &v15[v16], v10);
  os_unfair_lock_unlock(&v15[v17]);
  v18 = sub_225CCD934();
  v19 = sub_225CCED04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134219264;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a2;
    *(v20 + 22) = 1024;
    *(v20 + 24) = a3 & 1;
    *(v20 + 28) = 2048;
    *(v20 + 30) = a4;
    *(v20 + 38) = 2048;
    *(v20 + 40) = v26;
    *(v20 + 48) = 2048;
    *(v20 + 50) = v27;
    _os_log_impl(&dword_2259A7000, v18, v19, "sendNfcReadEvent durationOfDeviceRead: %ld, durationOfServerRead %ld, isScanSuccessful %{BOOL}d, numberOfTears %ld, numberOfTimeouts %ld, totalRestart %ld", v20, 0x3Au);
    MEMORY[0x22AA6F950](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v21 = sub_225CCE444();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3 & 1;
  v24 = v26;
  v23 = v27;
  *(v22 + 40) = a4;
  *(v22 + 48) = v24;
  *(v22 + 56) = v23;
  aBlock[4] = sub_225B1F69C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_257;
  v25 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v25);
}

unint64_t sub_225B1B5E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000225D1D920;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x8000000225D1D940;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 80), "scanCompleted");
  *(inited + 94) = -4864;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 1918985588;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0x74756F656D6974;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 152), "totalRestart");
  *(inited + 165) = 0;
  *(inited + 166) = -5120;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  return v12;
}

void static UIAnalytics.sendMRZThresholdEvent(resultCount:)(uint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_2259A7000, v10, v11, "sendMRZThresholdEvent resultCount: %ld", v12, 0xCu);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = sub_225CCE444();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = sub_225B1F6B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_263;
  v15 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

void static UIAnalytics.sendInEligibleMRZ(isExpired:isUnderage:unSupportedCountry:)(char a1, char a2, char a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v7 + 16))(v10, &v11[v12], v6);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109632;
    *(v16 + 4) = a1 & 1;
    *(v16 + 8) = 1024;
    *(v16 + 10) = a2 & 1;
    *(v16 + 14) = 1024;
    *(v16 + 16) = a3 & 1;
    _os_log_impl(&dword_2259A7000, v14, v15, "sendInEligibleMRZ isExpired: %{BOOL}d, isUnderage: %{BOOL}d, unSupportedCountry: %{BOOL}d ", v16, 0x14u);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v17 = sub_225CCE444();
  v18 = swift_allocObject();
  v18[16] = a1 & 1;
  v18[17] = a2 & 1;
  v18[18] = a3 & 1;
  aBlock[4] = sub_225B1F6F0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_269;
  v19 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

unint64_t sub_225B1BD88(char a1, char a2, char a3)
{
  v6 = sub_225B2E2BC(MEMORY[0x277D84F90]);
  if ((a1 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v12, 0x617265646E557369, 0xEA00000000006567, isUniquelyReferenced_nonNull_native);
    if ((a3 & 1) == 0)
    {
      return v6;
    }

    goto LABEL_4;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A0492C(v10, 0x6572697078457369, 0xE900000000000064, v11);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a3)
  {
LABEL_4:
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v7, 0xD000000000000012, 0x8000000225D1D900, v8);
  }

  return v6;
}

unint64_t sub_225B1BEF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000225D1D8E0;
  *(inited + 48) = sub_225CCE444();
  v1 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8B0);
  return v1;
}

void static UIAnalytics.sendGetPendingCommandsReadinessEvent(timeToReadyInSeconds:tries:errorCode:)(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);

  v16 = sub_225CCD934();
  v17 = sub_225CCED04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a1;
    *(v19 + 22) = 2080;
    v28 = a1;
    aBlock[0] = v20;
    v21 = a2;
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      a2 = 0x3E6C696E3CLL;
      v22 = 0xE500000000000000;
    }

    v23 = sub_2259BE198(a2, v22, aBlock);

    *(v19 + 24) = v23;
    a2 = v21;
    a1 = v28;
    _os_log_impl(&dword_2259A7000, v16, v17, "sendGetPendingCommandsReadinessEvent timeToReadyInSeconds: %f, tries %ld, errorCode: %s", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA6F950](v20, -1, -1);
    MEMORY[0x22AA6F950](v19, -1, -1);

    (*(v9 + 8))(v12, v27);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = sub_225CCE444();
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a1;
  *(v25 + 32) = a2;
  *(v25 + 40) = a3;
  aBlock[4] = sub_225B1FA14;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_275;
  v26 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v26);
}