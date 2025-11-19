uint64_t sub_24E126FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_24E346EE8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_24E346F08();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_24E127128;

  return sub_24E1276A0();
}

uint64_t sub_24E127128()
{
  OUTLINED_FUNCTION_9_7();
  *(*v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_24E127224, 0, 0);
}

uint64_t sub_24E127224()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v13 = v0[14];
  v14 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v12 = sub_24E348368();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v0[6] = sub_24E129014;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24E00B24C;
  v0[5] = &block_descriptor_58;
  v8 = _Block_copy(v0 + 2);
  v9 = v1;

  sub_24E346EF8();
  v0[8] = MEMORY[0x277D84F90];
  sub_24E12901C(&qword_27F1DFD00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24DFCD5F4();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v2, v3, v8);
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24E127460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E127514;

  return sub_24E126FE0(a1, v4, v5, v6);
}

uint64_t sub_24E127514()
{
  OUTLINED_FUNCTION_9_7();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24E127604(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 bundleIdentifier];
    v3 = sub_24E347CF8();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = v1;
      sub_24E125CA0();
    }
  }

  return sub_24E125D24();
}

uint64_t sub_24E1276A0()
{
  OUTLINED_FUNCTION_9_7();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1728);
  *v1 = v0;
  v1[1] = sub_24E127784;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x800000024E3A7DD0, sub_24E12787C, 0, v2);
}

uint64_t sub_24E127784()
{
  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](sub_24E03E56C, 0, 0);
}

uint64_t sub_24E12787C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = [v6 currentLocalPlayer];
  if (!v7)
  {
    v7 = [v6 local];
  }

  v8 = [objc_opt_self() proxyForPlayer_];
  v9 = [v8 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v5, v2);
  aBlock[4] = sub_24E128F80;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0D5E98;
  aBlock[3] = &block_descriptor_47;
  v12 = _Block_copy(aBlock);

  [v9 currentNonGameCenterForegroundGameHandler_];
  _Block_release(v12);

  return swift_unknownObjectRelease();
}

void sub_24E127AC0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 bundleIdentifier];
    v3 = sub_24E347CF8();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
      sub_24E348018();

      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  sub_24E348018();
}

uint64_t HostingContentPayload.deinit()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__currentGame;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FD8);
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__checkingForegroundedGame;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0220);
  OUTLINED_FUNCTION_5_2();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__switchView, v4);
  v7 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__bundleIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0218);
  OUTLINED_FUNCTION_5_2();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t HostingContentPayload.__deallocating_deinit()
{
  HostingContentPayload.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24E127D3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HostingContentPayload();
  result = sub_24E344DD8();
  *a1 = result;
  return result;
}

char *sub_24E127DB8()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (!__dst[0])
  {
    goto LABEL_22;
  }

  v1 = __dst[0];
  v2 = [v1 bundleIdentifier];
  v3 = sub_24E347CF8();
  v5 = v4;

  if (v3 == sub_24E347CF8() && v5 == v6)
  {
    goto LABEL_21;
  }

  v8 = sub_24E348C08();

  if ((v8 & 1) == 0)
  {
    v9 = [v1 bundleIdentifier];
    v10 = sub_24E347CF8();
    v12 = v11;

    if (v10 != sub_24E347CF8() || v12 != v13)
    {
      v15 = sub_24E348C08();

      if (v15)
      {
        goto LABEL_7;
      }

      v16 = objc_opt_self();
      v17 = [v1 internal];
      [v16 setCurrentGameFromInternal:v17 serverEnvironment:{objc_msgSend(v1, sel_environment)}];

      v18 = objc_opt_self();
      v19 = [v18 currentLocalPlayer];
      if (!v19)
      {
        v19 = [v18 local];
      }

      v20 = [objc_allocWithZone(GKDashboardRequest) init];
      v21 = __dst[1];
      [v20 setState_];
      v22 = [v1 bundleIdentifier];
      v23 = sub_24E347CF8();
      v25 = v24;

      sub_24DFC1DD4(v23, v25, v20, &selRef_setGameBundleID_);
      v26 = v19;
      v27 = [v26 internal];
      v28 = [v27 playerID];

      v29 = sub_24E347CF8();
      v31 = v30;

      sub_24DFC1DD4(v29, v31, v20, &selRef_setPlayerID_);
      v32 = [objc_opt_self() gameRecordForPlayer:v26 game:v1];

      [v20 setGameRecord_];
      [v1 gameInfo];
      [v20 setIsArcade_];
      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_61;
        }

        v33 = __dst[8];
        if (__dst[8])
        {
          sub_24E348918();
          sub_24E12C94C(v33, &v79);
          sub_24DF8BE60(&v81);
          if (*(&v80 + 1))
          {
            if (swift_dynamicCast())
            {
              v35 = *(&v81 + 1);
              v34 = v81;
              v36 = &selRef_setAchievementID_;
LABEL_58:
              sub_24DFC1DD4(v34, v35, v20, v36);
              goto LABEL_61;
            }

            goto LABEL_61;
          }

          goto LABEL_60;
        }

LABEL_59:
        v79 = 0u;
        v80 = 0u;
        goto LABEL_60;
      }

      v76 = __dst[8];
      if (__dst[8])
      {
        sub_24E348918();
        sub_24E12C94C(v76, &v79);
        sub_24DF8BE60(&v81);
        if (*(&v80 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_24DFC1DD4(v81, *(&v81 + 1), v20, &selRef_setLeaderboardID_);
          }

          goto LABEL_55;
        }
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }

      sub_24DF8BFF4(&v79, &qword_27F1E0370);
      if (!v76)
      {
        goto LABEL_59;
      }

LABEL_55:
      sub_24E348918();
      sub_24E12C94C(v76, &v79);
      sub_24DF8BE60(&v81);
      if (*(&v80 + 1))
      {
        if (swift_dynamicCast())
        {
          v35 = *(&v81 + 1);
          v34 = v81;
          v36 = &selRef_setLeaderboardSetID_;
          goto LABEL_58;
        }

LABEL_61:
        LOBYTE(v79) = __dst[7];
        v77 = type metadata accessor for DashboardSplitViewController();
        v81 = 0u;
        v82 = 0u;
        v83 = 0;
        objc_allocWithZone(v77);
        v78 = v20;
        v71 = DashboardSplitViewController.init(launchContext:request:navigationProxy:)();

        goto LABEL_48;
      }

LABEL_60:
      sub_24DF8BFF4(&v79, &qword_27F1E0370);
      goto LABEL_61;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_7:

LABEL_22:
  v37 = objc_opt_self();
  v38 = [v37 currentLocalPlayer];
  if (!v38)
  {
    v38 = [v37 local];
  }

  v39 = [objc_allocWithZone(GKDashboardRequest) init];
  switch(LOBYTE(__dst[2]))
  {
    case 1:
      if (__dst[4])
      {
        v46 = __dst[3];
        v47 = __dst[4];
      }

      else
      {
        v67 = [v38 internal];
        v68 = [v67 playerID];

        v46 = sub_24E347CF8();
        v47 = v69;
      }

      sub_24DFC1DD4(v46, v47, v39, &selRef_setPlayerID_);
      v42 = &selRef_setState_;
      v45 = 5;
      goto LABEL_46;
    case 2:
      if (__dst[4])
      {
        v43 = __dst[3];
        v44 = __dst[4];
      }

      else
      {
        v54 = [v38 internal];
        v55 = [v54 playerID];

        v43 = sub_24E347CF8();
        v44 = v56;
      }

      sub_24DFC1DD4(v43, v44, v39, &selRef_setPlayerID_);
      [v39 setState_];
      v42 = &selRef_setDeepLinkDestination_;
      v45 = 1;
      goto LABEL_46;
    case 3:
      if (!__dst[4])
      {
        goto LABEL_39;
      }

      sub_24E128F28(__dst[3], __dst[4], v39);
      [v39 setState_];
      v42 = &selRef_setDeepLinkDestination_;
      v45 = 2;
      goto LABEL_46;
    case 4:
      if (__dst[4])
      {
        sub_24E128F28(__dst[3], __dst[4], v39);
        [v39 setState_];
        v42 = &selRef_setDeepLinkDestination_;
      }

      else
      {
LABEL_39:
        v57 = [v38 internal];
        v58 = [v57 playerID];

        v59 = sub_24E347CF8();
        v61 = v60;

        v62 = v59;
        v63 = v61;
LABEL_42:
        sub_24DFC1DD4(v62, v63, v39, &selRef_setPlayerID_);
        v42 = &selRef_setState_;
      }

      v45 = 3;
LABEL_46:
      [v39 *v42];
      v53 = 10;
LABEL_47:
      LOBYTE(v79) = v53;
      v81 = 0u;
      v82 = 0u;
      v83 = 0;
      objc_allocWithZone(type metadata accessor for DashboardSplitViewController());
      v70 = v39;
      v71 = DashboardSplitViewController.init(launchContext:request:navigationProxy:)();

      break;
    case 5:
      v48 = [v38 internal];
      v49 = [v48 playerID];

      v50 = sub_24E347CF8();
      v52 = v51;

      sub_24DFC1DD4(v50, v52, v39, &selRef_setPlayerID_);
      v53 = 11;
      goto LABEL_47;
    default:
      if (__dst[4])
      {
        v40 = __dst[3];
        v41 = __dst[4];
      }

      else
      {
        v64 = [v38 internal];
        v65 = [v64 playerID];

        v40 = sub_24E347CF8();
        v41 = v66;
      }

      v62 = v40;
      v63 = v41;
      goto LABEL_42;
  }

LABEL_48:
  v72 = swift_allocObject();
  memcpy((v72 + 16), __dst, 0x48uLL);
  v73 = &v71[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler];
  v74 = *&v71[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler];
  *v73 = sub_24E128EC0;
  v73[1] = v72;
  sub_24E128EF0(__dst, &v81);
  sub_24E0BB45C(v74);
  return v71;
}

uint64_t sub_24E1287F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E128E6C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E128854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E128E6C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E1288B8()
{
  sub_24E128E6C();
  sub_24E3460C8();
  __break(1u);
}

void sub_24E128984()
{
  sub_24DFF5F9C(319, &qword_27F1E5028, &qword_27F1E1728);
  if (v0 <= 0x3F)
  {
    sub_24E128B18();
    if (v1 <= 0x3F)
    {
      sub_24DFF5F9C(319, &qword_27F1E02E8, &unk_27F1DFEF0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24E128B18()
{
  if (!qword_27F1E02E0)
  {
    v0 = sub_24E344E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E02E0);
    }
  }
}

uint64_t sub_24E128B68(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HostingContentPayload.InvocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HostingContentPayload.InvocationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E128D48(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24E128D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24E128E18()
{
  result = qword_27F1E5040;
  if (!qword_27F1E5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5040);
  }

  return result;
}

unint64_t sub_24E128E6C()
{
  result = qword_27F1E5048;
  if (!qword_27F1E5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5048);
  }

  return result;
}

uint64_t sub_24E128EC0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_24E128F28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();
  [a3 setPlayerID_];
}

void sub_24E128F80(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);

  sub_24E127AC0(a1);
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E12901C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for GameCenterSplitViewDashboard.PresentedPage(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E1291AC()
{
  result = qword_27F1E5050;
  if (!qword_27F1E5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_64()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_4_56()
{

  return sub_24E12C94C(v0, (v1 - 128));
}

double OUTLINED_FUNCTION_5_60()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  a29 = v35;
  a30 = v34;
  a31 = v39;
  a32 = v37;
  a33 = v38;
  a34 = v36;

  return sub_24E124C18(&a19);
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return sub_24DFF6218(v1, v0);
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return sub_24E348918();
}

uint64_t sub_24E1293C0(uint64_t result)
{
  v2 = *(v1 + qword_27F1E5DB0);
  if (v2 >> 62)
  {
    result = sub_24E348878();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25303F560](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;

      sub_24E287350(v7);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_24E1294D4()
{
  OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_4_57();
  return v1(*(v0 + 80));
}

BOOL sub_24E129544()
{
  OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_4_57();
  return (v1(*(v0 + 80)) & 1) == 0;
}

id sub_24E1295BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DetailData();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0);
  sub_24E347148();
  sub_24E15A630(v7, a3);
  sub_24E12AA40(v7);
  return [v3 setNeedsLayout];
}

id sub_24E1296BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();

  return [v4 setNeedsLayout];
}

id sub_24E129894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  a7();

  return [v7 setNeedsLayout];
}

id sub_24E1298E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24E093274(a1, a2, a3, a4, a5, a6);

  return [v6 setNeedsLayout];
}

id sub_24E129940()
{
  [*(*&v0[qword_280BE0C10] + OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator) startAnimating];

  return [v0 setNeedsLayout];
}

char *sub_24E129A4C(double a1, double a2, double a3, double a4)
{
  v9 = qword_280BE0C10;
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_280BE0C08] = MEMORY[0x277D84FA0];
  v10 = type metadata accessor for EmbeddableViewCollectionViewCell();
  v36.receiver = v4;
  v36.super_class = v10;
  v34 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v35 = v10;
  v11 = v34;
  v12 = OUTLINED_FUNCTION_7_2();
  objc_msgSendSuper2(v13, v14, v12);
  v15 = qword_280BE0C10;
  v16 = OUTLINED_FUNCTION_7_2();
  [v17 v18];
  [v11 setEdgesInsettingLayoutMarginsFromSafeArea_];
  v19 = v11;
  v20 = [v19 contentView];
  v21 = OUTLINED_FUNCTION_7_2();
  [v22 v23];

  v24 = [v19 contentView];
  [v24 addSubview_];

  v33[3] = v10;
  v33[0] = v19;
  v25 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v26 = v19;
  v27 = sub_24E2BE570(v33, sel_didGestureGameControllerSelectButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24E369990;
  v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v30 = v27;
  *(v28 + 32) = [v29 initWithInteger_];
  sub_24DF97DD4();
  v31 = sub_24E347EE8();

  [v30 setAllowedPressTypes_];

  [v30 setDelegate_];
  [v26 addGestureRecognizer_];

  return v26;
}

void sub_24E129D38()
{
  v1 = qword_280BE0C10;
  OUTLINED_FUNCTION_0_99();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + qword_280BE0C08) = MEMORY[0x277D84FA0];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E129E10(void *a1)
{
  v1 = a1;
  sub_24E1294D4();
}

uint64_t sub_24E129E58()
{
}

id sub_24E129E98()
{
  [v0 removeAllGestureRecognizers];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddableViewCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E129F50(uint64_t a1)
{
}

double sub_24E129FC4(void *a1)
{
  v1 = a1;
  sub_24E12A020();
  v3 = v2;

  return v3;
}

void sub_24E12A038(void *a1)
{
  v1 = a1;
  sub_24E12A0B0();
}

id sub_24E12A0B0()
{
  v1 = *(v0 + qword_280BE0C10);
  [v1 setLayoutMargins_];

  return [v1 setNeedsLayout];
}

id sub_24E12A104()
{
  OUTLINED_FUNCTION_0_99();
  OUTLINED_FUNCTION_0_99();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddableViewCollectionViewCell();
  objc_msgSendSuper2(&v2, sel_setNeedsLayout);
  return [*&v0[qword_280BE0C10] setNeedsLayout];
}

void sub_24E12A188(void *a1)
{
  v1 = a1;
  sub_24E12A104();
}

double sub_24E12A1D0(void *a1)
{
  v1 = a1;
  sub_24DFB64A4();
  v3 = v2;

  return v3;
}

double sub_24E12A224(uint64_t a1, double a2, double a3)
{
  v11 = [v3 contentView];
  [v11 layoutMargins];
  OUTLINED_FUNCTION_3_69();

  [*&v3[qword_280BE0C10] measurementsWithFitting:a1 in:{a2 - v5 - v7, a3 - v4 - v6}];
  v13 = v12;
  [v3 layoutMargins];
  return v13 + v14 + v15;
}

double sub_24E12A304(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = sub_24E12A224(a5, a2, a3);
  swift_unknownObjectRelease();

  return v10;
}

id sub_24E12A38C()
{
  OUTLINED_FUNCTION_0_99();
  OUTLINED_FUNCTION_0_99();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for EmbeddableViewCollectionViewCell();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v5 = *&v0[qword_280BE0C10];
  v6 = [v0 contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [v6 layoutMargins];
  OUTLINED_FUNCTION_3_69();

  return [v5 setFrame_];
}

void sub_24E12A490(void *a1)
{
  v1 = a1;
  sub_24E12A38C();
}

void sub_24E12A4D8(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EmbeddableViewCollectionViewCell();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v4 = sub_24E3483C8() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v2 traitCollection];
  v6 = sub_24E3483C8();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    [v2 setNeedsLayout];
  }
}

void sub_24E12A5C4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_24E12A4D8(a3);
}

uint64_t sub_24E12A630()
{
  OUTLINED_FUNCTION_0_99();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_0_99();
  v4 = *(v3 + 88);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for EmbeddableViewCollectionViewCell();
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  return (*(v4 + 72))(v2, v4);
}

void sub_24E12A6D8(void *a1)
{
  v1 = a1;
  sub_24E12A630();
}

uint64_t sub_24E12AA40(uint64_t a1)
{
  v2 = type metadata accessor for DetailData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E12AAC0(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  *&v2[OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94431CollectionViewLayoutEnvironment_traitCollection] = v4;
  objc_allocWithZone(type metadata accessor for CollectionViewLayoutContainer());
  v5 = a1;
  *&v2[OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94431CollectionViewLayoutEnvironment_container] = sub_24E12ADB4(v5);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CollectionViewLayoutEnvironment();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id sub_24E12ADB4(void *a1)
{
  [a1 bounds];
  v3 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94429CollectionViewLayoutContainer_contentSize];
  *v3 = v4;
  *(v3 + 1) = v5;
  [a1 safeAreaInsets];
  v7 = v6;
  [a1 safeAreaInsets];
  v9 = v8;
  [a1 safeAreaInsets];
  v11 = v10;
  [a1 safeAreaInsets];
  v12 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94429CollectionViewLayoutContainer_contentInsets];
  *v12 = v7;
  *(v12 + 1) = v9;
  *(v12 + 2) = v11;
  *(v12 + 3) = v13;
  v14 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94429CollectionViewLayoutContainer_effectiveContentInsets];
  *v14 = v7;
  *(v14 + 1) = v9;
  *(v14 + 2) = v11;
  *(v14 + 3) = v13;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CollectionViewLayoutContainer();
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

void sub_24E12AEFC(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94429CollectionViewLayoutContainer_contentSize);
  *v3 = a1;
  v3[1] = a2;
}

void sub_24E12AFDC(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94429CollectionViewLayoutContainer_contentInsets);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_24E12B054(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12GameCenterUIP33_70BCE0F81E66D9FA90EE8BB9B414A94429CollectionViewLayoutContainer_effectiveContentInsets);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

id sub_24E12B0D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_24E12B13C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = (v13 - v12);
  v15 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_headerLabel;
  type metadata accessor for TitleHeaderView(0);
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [objc_opt_self() shared];
  if (result)
  {
    v17 = result;
    v18 = [result isInternalBuild];

    if (v18)
    {
      v19 = [objc_opt_self() buttonWithType_];
      sub_24DFC2C38();
      v20 = sub_24E1A5748(0x637269632E746E61, 0xEF6C6C69662E656CLL, 0);
      if (v20)
      {
        v21 = v20;
        v22 = [objc_opt_self() configurationWithPointSize:7 weight:24.0];
        v23 = [v21 imageWithSymbolConfiguration_];
      }

      else
      {
        v23 = 0;
      }

      [v19 setImage:v23 forState:0];
    }

    else
    {
      v19 = 0;
    }

    *&v5[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_radarButton] = v19;
    v39.receiver = v5;
    v39.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
    [v24 setLayoutMargins_];
    v25 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_headerLabel;
    v26 = *&v24[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_headerLabel];
    sub_24E099B2C(v14);
    v27 = v11[5];
    v28 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
    __swift_storeEnumTagSinglePayload(&v14[v27], 1, 1, v28);
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v29 = type metadata accessor for PlayerCardTheme();
    v30 = *(__swift_project_value_buffer(v29, qword_27F20BF00) + *(v29 + 40));
    v31 = v11[8];
    v14[v11[6]] = 0;
    v14[v11[7]] = 0;
    v14[v31] = 0;
    v14[v11[9]] = 0;
    *&v14[v11[11]] = 0;
    *&v14[v11[13]] = v30;
    v14[v11[10]] = 1;
    v14[v11[12]] = 0;
    v32 = v30;
    sub_24E27E608(v14);

    [v24 addSubview_];
    v33 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_radarButton;
    v34 = *&v24[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_radarButton];
    if (v34)
    {
      v35 = v34;
      [v35 addTarget:v24 action:sel_tapToRadarButton forControlEvents:64];
      v36 = *&v24[v33];
      v37 = *&v24[v25];
      v38 = v36;
      sub_24E27E748(v36);
    }

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E12B4F4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_headerLabel;
  type metadata accessor for TitleHeaderView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24E348AE8();
  __break(1u);
}

id sub_24E12B604()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_headerLabel];
  [v0 bounds];
  return [v1 setFrame_];
}

double sub_24E12B6C0()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_1();
  v3 = (v2 - v1);
  type metadata accessor for TitleHeaderView(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5180);
  sub_24E347128();

  sub_24E099B2C(v3);
  v4 = v0[5];
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __swift_storeEnumTagSinglePayload(&v3[v4], 1, 1, v5);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v6 = type metadata accessor for PlayerCardTheme();
  v7 = *(__swift_project_value_buffer(v6, qword_27F20BF00) + *(v6 + 40));
  v8 = v0[8];
  v3[v0[6]] = 0;
  v3[v0[7]] = 0;
  v3[v8] = 0;
  v3[v0[9]] = 0;
  *&v3[v0[11]] = 0;
  *&v3[v0[13]] = v7;
  v3[v0[10]] = 1;
  v3[v0[12]] = 0;
  swift_getObjectType();
  v9 = v7;
  sub_24DFC1764();
  if (qword_27F1DDB90 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  sub_24E281B18();
  v11 = v10;

  swift_unknownObjectRelease();
  sub_24E026F3C(v3);
  return v11;
}

id sub_24E12B95C()
{
  v1 = *(*&v0[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderView_headerLabel] + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5180);
  sub_24E347128();

  sub_24DFA0B40(v4, v5, v2);

  return [v0 setNeedsLayout];
}

id sub_24E12BA28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_24E343288();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  type metadata accessor for ActivityFeedBaseData();
  sub_24E0E6D4C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_24DF90BE4(v2);
  }

  (*(v4 + 32))(v7, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    v10 = sub_24E343228();
    [v9 openURL_];

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E12BD14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E12BD60()
{
  v1 = *v0;
  v2 = 0x6F50737365636361;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_0_105();
      v2 = v3 + 2;
      break;
    case 2:
      v2 = 0x7974697669746361;
      break;
    case 3:
      if (qword_27F1DD878 != -1)
      {
        swift_once();
      }

      v5 = &qword_27F1E5188;
      goto LABEL_16;
    case 4:
      v2 = 0x73746361746E6F63;
      break;
    case 5:
      v2 = 0x746E6F63656D6167;
      break;
    case 6:
      if (qword_280BDFCB0 != -1)
      {
        swift_once();
      }

      v5 = &qword_280BDFCB8;
LABEL_16:
      v2 = *v5;

      break;
    case 7:
      v2 = 0x656E656353647568;
      break;
    case 8:
      v2 = 0xD000000000000012;
      break;
    case 9:
      v2 = 0x64656D6167;
      break;
    case 10:
      OUTLINED_FUNCTION_0_105();
      v2 = v6 + 10;
      break;
    case 11:
      v2 = 0x436C6F72746E6F63;
      break;
    case 12:
      OUTLINED_FUNCTION_0_105();
      v2 = v4 + 20;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_24E12BF48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v1;
  *(inited + 48) = 0x676E69646E616CLL;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v2;
  *(inited + 80) = 0x72616F6268736164;
  *(inited + 88) = 0xE900000000000064;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v3;
  *(inited + 112) = 0x72616F6268736164;
  *(inited + 120) = 0xE900000000000064;
  return sub_24E347C28();
}

uint64_t sub_24E12C030@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_24E347458();
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v30 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = sub_24E347C28();
  sub_24E0A7788(v20);

  if (a1)
  {
    sub_24E3479B8();
    v21 = sub_24E347068();
    sub_24E1C3144();
    (*(v7 + 8))(v11, v5);
    v21(v33, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2740);
  v29 = *(*(sub_24E3470B8() - 8) + 72);
  v22 = swift_allocObject();
  v27 = xmmword_24E36A270;
  *(v22 + 16) = xmmword_24E36A270;
  v23 = v30;
  (*(v30 + 16))(v16, v19, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2748);
  sub_24E347108();
  v28 = v12;
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3470F8();
  sub_24E1AD060();
  sub_24E3470A8();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v24 = sub_24E347058();
  __swift_project_value_buffer(v24, qword_27F20AE00);
  sub_24E347028();
  *(swift_allocObject() + 16) = v27;
  sub_24E3470E8();
  sub_24E3470D8();
  sub_24E1AD060();
  sub_24E3470A8();
  v25 = sub_24E12BF48();
  sub_24E335A58(v25);

  sub_24E347448();
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E3470C8();
  return (*(v23 + 8))(v19, v28);
}

GameCenterUI::DashboardLaunchContext_optional __swiftcall DashboardLaunchContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DashboardLaunchContext.rawValue.getter()
{
  result = 0x6F50737365636361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x65726F7453707061;
      break;
    case 4:
      result = 0x73746361746E6F63;
      break;
    case 5:
      result = 0x746E6F43656D6167;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656E656353647568;
      break;
    case 8:
      result = 0x656D61476E69;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x73676E6974746573;
      break;
    case 0xB:
      result = 0x436C6F72746E6F63;
      break;
    case 0xC:
      result = 0x746567646977;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24E12C6D4()
{
  result = qword_27F1E5198;
  if (!qword_27F1E5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5198);
  }

  return result;
}

unint64_t sub_24E12C74C@<X0>(unint64_t *a1@<X8>)
{
  result = DashboardLaunchContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DashboardLaunchContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DashboardLaunchContext(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E12C8D8()
{
  result = sub_24E347CF8();
  qword_27F1E5188 = result;
  unk_27F1E5190 = v1;
  return result;
}

uint64_t sub_24E12C908()
{
  result = sub_24E347CF8();
  qword_280BDFCB8 = result;
  unk_280BDFCC0 = v1;
  return result;
}

double sub_24E12C94C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_24E26AE00(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_24DFB4104(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_24E12C9B0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_24E26AD7C(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

void *sub_24E12CA08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_24E26AE00();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_24E12CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24E26AE3C();
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E12CAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24E26AE3C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_24();
  return v3;
}

double sub_24E12CAE8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_24E26AE3C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_24DFB4104(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_24E12CB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_24E26AE3C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_24E12CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24E26AE3C();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E12CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24E26AE3C();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E12CC34(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24E26B168(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_24();
  return v2;
}

uint64_t GameCenterSettingsState.__allocating_init()()
{
  v0 = swift_allocObject();
  GameCenterSettingsState.init()();
  return v0;
}

uint64_t GameCenterSettingsState.page.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24E12DCF8();
  sub_24E343538();

  swift_beginAccess();
  v3 = *(v1 + 18);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

uint64_t GameCenterSettingsState.page.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  OUTLINED_FUNCTION_10_36();
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  if (*(v1 + 18))
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  v16 = v3;
  v17 = v2;
  v11 = v2 | (v3 << 8);
  if (v4)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_24E12DB4C(v9 | v10, v7, v8, v11 | v12, v6, v5);

  if (v13)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E12DC30();
  }

  else
  {
    *(v1 + 16) = v17;
    *(v1 + 17) = v16;
    *(v1 + 18) = v4;
    *(v1 + 24) = v6;
    *(v1 + 32) = v5;
  }
}

Swift::Void __swiftcall GameCenterSettingsState.handleURL(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  *&v47 = 1752457584;
  *(&v47 + 1) = 0xE400000000000000;
  v4 = MEMORY[0x277D837D0];
  sub_24E348918();
  sub_24E12C94C(a1._rawValue, &v47);
  sub_24DF8BE60(&v50);
  if (v49)
  {
    sub_24E024710(&v47, &v52);
  }

  else
  {
    v53 = v4;
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
  }

  if (OUTLINED_FUNCTION_8_44())
  {
    GameCenterSettingsStateIdentifier.init(rawValue:)(v50);
    switch(LOBYTE(v50._countAndFlagsBits))
    {
      case 3:
        v5 = 0;
        goto LABEL_11;
      case 4:
        v5 = 1;
        goto LABEL_11;
      case 5:
        OUTLINED_FUNCTION_7_40(MEMORY[0x277D84F90], v42, v47, *(&v47 + 1), v48, v49, 2u, v50._object, v51);
        *&v47 = 25705;
        *(&v47 + 1) = 0xE200000000000000;
        sub_24E348918();
        sub_24E12C94C(a1._rawValue, &v52);
        sub_24DF8BE60(&v50);
        if (!v53)
        {
          goto LABEL_20;
        }

        if ((OUTLINED_FUNCTION_8_44() & 1) == 0)
        {
          return;
        }

        v6 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
        v7 = OUTLINED_FUNCTION_19_20();
        *(v7 + 16) = xmmword_24E367D20;
        *(v7 + 32) = v6;
        swift_getKeyPath();
        v50._countAndFlagsBits = v2;
        v8 = sub_24E12DCF8();
        OUTLINED_FUNCTION_2_65(v8, v9, v10, v11, v12, v13, v14, v15, v43, v47, *(&v47 + 1), v48, v49, v50._countAndFlagsBits);
        sub_24E343538();

        v50._countAndFlagsBits = v2;
        KeyPath = swift_getKeyPath();
        OUTLINED_FUNCTION_2_65(KeyPath, v17, v18, v19, v20, v21, v22, v23, v44, v47, *(&v47 + 1), v48, v49, v50._countAndFlagsBits);
        sub_24E343558();

        OUTLINED_FUNCTION_10_36();
        *(v2 + 24) = v7;
        goto LABEL_19;
      case 6:
        OUTLINED_FUNCTION_7_40(MEMORY[0x277D84F90], v42, v47, *(&v47 + 1), v48, v49, 3u, v50._object, v51);
        *&v47 = 25705;
        *(&v47 + 1) = 0xE200000000000000;
        sub_24E348918();
        sub_24E12C94C(a1._rawValue, &v52);
        sub_24DF8BE60(&v50);
        if (v53)
        {
          if (OUTLINED_FUNCTION_8_44())
          {
            v24 = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
            v25 = OUTLINED_FUNCTION_19_20();
            *(v25 + 16) = xmmword_24E367D20;
            *(v25 + 32) = v24;
            swift_getKeyPath();
            v50._countAndFlagsBits = v2;
            v26 = sub_24E12DCF8();
            OUTLINED_FUNCTION_2_65(v26, v27, v28, v29, v30, v31, v32, v33, v45, v47, *(&v47 + 1), v48, v49, v50._countAndFlagsBits);
            sub_24E343538();

            v50._countAndFlagsBits = v2;
            v34 = swift_getKeyPath();
            OUTLINED_FUNCTION_2_65(v34, v35, v36, v37, v38, v39, v40, v41, v46, v47, *(&v47 + 1), v48, v49, v50._countAndFlagsBits);
            sub_24E343558();

            OUTLINED_FUNCTION_10_36();
            *(v2 + 32) = v25;
LABEL_19:

            *&v52 = v2;
            swift_getKeyPath();
            sub_24E343548();
          }
        }

        else
        {
LABEL_20:
          sub_24DFA9298(&v52, &qword_27F1E0370);
        }

        break;
      case 7:
        v5 = 4;
        goto LABEL_11;
      case 9:
        v5 = 6;
        goto LABEL_11;
      case 0xA:
        return;
      default:
        v5 = 6;
LABEL_11:
        OUTLINED_FUNCTION_7_40(MEMORY[0x277D84F90], v42, v47, *(&v47 + 1), v48, v49, v5, v50._object, v51);
        return;
    }
  }
}

void (*GameCenterSettingsState.page.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC12GameCenterUI23GameCenterSettingsState___observationRegistrar;
  *v3 = v1;
  v3[5] = sub_24E12DCF8();
  sub_24E343538();

  *v3 = v1;
  swift_getKeyPath();
  sub_24E343558();

  swift_beginAccess();
  return sub_24E12D384;
}

void sub_24E12D384(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24E343548();

  free(v1);
}

GameCenterUI::GameCenterSettingsState::SettingsPage __swiftcall GameCenterSettingsState.SettingsPage.init(sheet:push:showMessageSheet:)(GameCenterUI::GameCenterSettingsDestination_optional sheet, GameCenterUI::GameCenterSettingsDestination_optional push, Swift::Bool showMessageSheet)
{
  v4 = *sheet.value;
  v5 = MEMORY[0x277D84F90];
  v6 = *push.value;
  *(v3 + 8) = MEMORY[0x277D84F90];
  *(v3 + 16) = v5;
  *v3 = v4;
  *(v3 + 1) = v6;
  *(v3 + 2) = showMessageSheet;
  LOBYTE(result.friendRequestsPath._rawValue) = showMessageSheet;
  LOBYTE(result.allFriendsPath._rawValue) = push;
  result.sheet = sheet;
  return result;
}

uint64_t static GameCenterSettingsState.SettingsPage.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  if (*a1 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v7 == 6 || (sub_24DFD42AC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == 6)
  {
    if (v8 != 6)
    {
      return 0;
    }
  }

  else if (v8 == 6 || (sub_24DFD42AC() & 1) == 0)
  {
    return 0;
  }

  if (((v4 ^ v9) & 1) != 0 || (sub_24E12D524(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return sub_24E12D524(v5, v10);
}

uint64_t sub_24E12D524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24E348C08() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24E12D5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 49);
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v17 = *(v3 - 9);
      v18 = *(v4 - 9);
      v7 = *(v3 - 1);
      v8 = 0xE300000000000000;
      v9 = *v3;
      v10 = 6778480;
      switch(*(v4 - 17))
      {
        case 1u:
          v8 = 0xE400000000000000;
          v10 = 1734701162;
          break;
        case 2u:
          v8 = 0xE400000000000000;
          v10 = 1667851624;
          break;
        case 3u:
          v10 = 7496556;
          break;
        default:
          break;
      }

      v11 = 0xE300000000000000;
      v12 = 6778480;
      switch(*(v3 - 17))
      {
        case 1u:
          v11 = 0xE400000000000000;
          v12 = 1734701162;
          break;
        case 2u:
          v11 = 0xE400000000000000;
          v12 = 1667851624;
          break;
        case 3u:
          v12 = 7496556;
          break;
        default:
          break;
      }

      if (v10 == v12 && v8 == v11)
      {
      }

      else
      {
        v14 = sub_24E348C08();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      result = 0;
      if (v5)
      {
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        if (v18 == v17)
        {
          v16 = v7;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          return result;
        }
      }

      if ((v6 ^ v9))
      {
        return result;
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_24E12D7A4(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24E348878())
  {
    v8 = a2 >> 62 ? sub_24E348878() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v8 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_15_24();
    if (!v11)
    {
      v10 = v5;
    }

    if (v6)
    {
      v9 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v9 == v13)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    sub_24DF88A8C(0, a3);
    v22 = v5;
    v14 = v5 & 0xC000000000000001;
    v5 = a2;
    v15 = a2 & 0xC000000000000001;
    v16 = 4;
    a2 = i;
    while (1)
    {
      v6 = v16 - 3;
      if (__OFADD__(v16 - 4, 1))
      {
        break;
      }

      if (v14)
      {
        v17 = MEMORY[0x25303F560](v16 - 4, v22);
      }

      else
      {
        OUTLINED_FUNCTION_12_26();
        if (v18)
        {
          goto LABEL_33;
        }

        v17 = *(v22 + 8 * v16);
      }

      a3 = v17;
      if (v15)
      {
        v19 = MEMORY[0x25303F560](v16 - 4, v5);
      }

      else
      {
        OUTLINED_FUNCTION_12_26();
        if (v18)
        {
          goto LABEL_34;
        }

        v19 = *(v5 + 8 * v16);
      }

      v20 = v19;
      v21 = sub_24E348628();

      if (v21)
      {
        ++v16;
        if (v6 != a2)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }
}

void sub_24E12D974(unint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24E348878())
  {
    v6 = a2 >> 62 ? sub_24E348878() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v6 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_15_24();
    if (!v9)
    {
      v8 = a1;
    }

    if (v4)
    {
      v7 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v7 == v11)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    v4 = type metadata accessor for AvatarView();
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x25303F560](v13 - 4, a1);
      }

      else
      {
        OUTLINED_FUNCTION_12_26();
        if (v17)
        {
          goto LABEL_33;
        }

        v16 = *(a1 + 8 * v13);
      }

      v18 = v16;
      if (v12)
      {
        v19 = MEMORY[0x25303F560](v13 - 4, a2);
      }

      else
      {
        OUTLINED_FUNCTION_12_26();
        if (v17)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_24E348628();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v15 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }
}

BOOL sub_24E12DB4C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  *v7 = a4;
  v8 = a5;
  v9 = a6;
  return (static GameCenterSettingsState.SettingsPage.== infix(_:_:)(&v10, v7) & 1) == 0;
}

uint64_t sub_24E12DB8C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = a2 >> 8;
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 17) = v8;
  *(a1 + 18) = BYTE2(a2) & 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
}

uint64_t GameCenterSettingsState.init()()
{
  *(v0 + 16) = 1542;
  *(v0 + 18) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  *(v0 + 32) = v1;
  sub_24E343568();
  return v0;
}

unint64_t sub_24E12DCF8()
{
  result = qword_27F1E03D8;
  if (!qword_27F1E03D8)
  {
    type metadata accessor for GameCenterSettingsState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E03D8);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterSettingsState()
{
  result = qword_27F1E51C0;
  if (!qword_27F1E51C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E12DD9C()
{
  if (*(v0 + 26))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_24E12DB8C(*(v0 + 16), *(v0 + 24) | v1, *(v0 + 32), *(v0 + 40));
}

GameCenterUI::GameCenterSettingsStateIdentifier_optional __swiftcall GameCenterSettingsStateIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GameCenterSettingsState.handleURL(_:)()
{
  v1 = v0;
  sub_24E342F68();
  OUTLINED_FUNCTION_0_14();
  v79 = v3;
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - v6;
  MEMORY[0x28223BE20](v8);
  v77 = &v72 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E51A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v72 - v14;
  v16 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E342F98();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    return sub_24DFA9298(v15, &qword_27F1E51A8);
  }

  v72 = v12;
  v73 = v7;
  v74 = v16;
  v75 = v18;
  (*(v18 + 32))(v21, v15, v16);
  v81 = sub_24E342FD8();
  v82 = v23;
  v83 = 47;
  v84 = 0xE100000000000000;
  sub_24DF90C4C();
  v24 = sub_24E3486D8();

  v25 = 0;
  v26 = *(v24 + 16);
  v27 = MEMORY[0x277D84F90];
  v76 = v21;
LABEL_4:
  v28 = (v24 + 40 + 16 * v25);
  while (v26 != v25)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    ++v25;
    v30 = *(v28 - 1);
    v29 = *v28;
    v28 += 2;
    v31 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v31 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v81 = v27;
      v32 = v1;
      if ((result & 1) == 0)
      {
        result = sub_24E12F080(0, *(v27 + 16) + 1, 1);
        v27 = v81;
      }

      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_24E12F080((v33 > 1), v34 + 1, 1);
        v27 = v81;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v29;
      v1 = v32;
      v21 = v76;
      goto LABEL_4;
    }
  }

  v36 = sub_24E12E6EC(v27);
  v38 = v37;

  if (v38)
  {
    v39._countAndFlagsBits = v36;
    v39._object = v38;
    GameCenterSettingsStateIdentifier.init(rawValue:)(v39);
    switch(v81)
    {
      case 3:
        v40 = 1536;
        goto LABEL_19;
      case 4:
        v40 = 1537;
        goto LABEL_19;
      case 5:
        LOWORD(v81) = 1538;
        BYTE2(v81) = 0;
        OUTLINED_FUNCTION_6_53(MEMORY[0x277D84F90]);
        result = sub_24E342F78();
        if (!result)
        {
          return (*(v75 + 8))(v21, v74);
        }

        v41 = result;
        v78 = v1;
        v42 = 0;
        v43 = *(result + 16);
        v44 = (v79 + 8);
        while (2)
        {
          if (v43 == v42)
          {
            (*(v75 + 8))(v21, v74);
          }

          if (v42 >= *(v41 + 16))
          {
            goto LABEL_56;
          }

          (*(v79 + 16))(v77, v41 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v42, v80);
          if (sub_24E342F48() == 25705 && v45 == 0xE200000000000000)
          {
          }

          else
          {
            v47 = OUTLINED_FUNCTION_17_26();

            if ((v47 & 1) == 0)
            {
              result = (*v44)(v77, v80);
              ++v42;
              continue;
            }
          }

          break;
        }

        v56 = v80;
        v57 = v79 + 32;
        v58 = v72;
        (*(v79 + 32))(v72, v77, v80);
        v59 = sub_24E342F58();
        v61 = v60;
        (*(v57 - 24))(v58, v56);
        v62 = v78;
        if (v61)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
          v63 = OUTLINED_FUNCTION_19_20();
          *(v63 + 16) = xmmword_24E367D20;
          *(v63 + 32) = v59;
          *(v63 + 40) = v61;
          swift_getKeyPath();
          v81 = v62;
          sub_24E12DCF8();
          OUTLINED_FUNCTION_1_83();
          sub_24E343538();

          v81 = v62;
          swift_getKeyPath();
          OUTLINED_FUNCTION_1_83();
          sub_24E343558();

          OUTLINED_FUNCTION_10_36();
          *(v62 + 3) = v63;

          v83 = v62;
          swift_getKeyPath();
          OUTLINED_FUNCTION_9_37();
        }

        return (*(v75 + 8))(v21, v74);
      case 6:
        LOWORD(v81) = 1539;
        BYTE2(v81) = 0;
        OUTLINED_FUNCTION_6_53(MEMORY[0x277D84F90]);
        result = sub_24E342F78();
        if (!result)
        {
          return (*(v75 + 8))(v21, v74);
        }

        v48 = result;
        v49 = 0;
        v50 = *(result + 16);
        v51 = (v79 + 8);
        break;
      case 7:
        v40 = 1540;
        goto LABEL_19;
      case 9:
        v40 = 1286;
        goto LABEL_19;
      default:
        goto LABEL_18;
    }

    while (v50 != v49)
    {
      if (v49 >= *(v48 + 16))
      {
        goto LABEL_57;
      }

      (*(v79 + 16))(v78, v48 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v49, v80);
      if (sub_24E342F48() == 25705 && v52 == 0xE200000000000000)
      {
        v55 = v1;

LABEL_52:

        v64 = v79 + 32;
        v65 = v73;
        v66 = v80;
        (*(v79 + 32))(v73, v78, v80);
        v67 = sub_24E342F58();
        v69 = v68;
        (*(v64 - 24))(v65, v66);
        v70 = v76;
        if (v69)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
          v71 = OUTLINED_FUNCTION_19_20();
          *(v71 + 16) = xmmword_24E367D20;
          *(v71 + 32) = v67;
          *(v71 + 40) = v69;
          swift_getKeyPath();
          v81 = v55;
          sub_24E12DCF8();
          OUTLINED_FUNCTION_1_83();
          sub_24E343538();

          v81 = v55;
          swift_getKeyPath();
          OUTLINED_FUNCTION_1_83();
          sub_24E343558();

          OUTLINED_FUNCTION_10_36();
          *(v55 + 32) = v71;

          v83 = v55;
          swift_getKeyPath();
          OUTLINED_FUNCTION_9_37();
        }

        return (*(v75 + 8))(v70, v74);
      }

      v54 = OUTLINED_FUNCTION_17_26();

      if (v54)
      {
        v55 = v1;
        goto LABEL_52;
      }

      result = (*v51)(v78, v80);
      ++v49;
    }

    (*(v75 + 8))(v76, v74);
  }

  else
  {
LABEL_18:
    v40 = 1542;
LABEL_19:
    LOWORD(v81) = v40;
    BYTE2(v81) = 0;
    OUTLINED_FUNCTION_6_53(MEMORY[0x277D84F90]);
    return (*(v75 + 8))(v21, v74);
  }
}

void sub_24E12E6A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_24E05F5E4(a1 + 160 * v2 - 128, a2);
  }

  else
  {
    bzero(a2, 0xA0uLL);
  }
}

uint64_t sub_24E12E6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E12E6EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

char *sub_24E12E734(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_24DFFA844(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x25303F560](v3, a1);
  }

  result = sub_24E348878();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t GameCenterSettingsState.deinit()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI23GameCenterSettingsState___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t GameCenterSettingsState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI23GameCenterSettingsState___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t GameCenterSettingsStateIdentifier.rawValue.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      result = 0x4E495F4E474953;
      break;
    case 2:
      result = 0x54554F5F4E474953;
      break;
    case 3:
      result = 0x454C49464F5250;
      break;
    case 4:
      result = 0x4F52505F54494445;
      break;
    case 5:
      result = 0x454952465F4C4C41;
      break;
    case 6:
      result = 0x525F444E45495246;
      break;
    case 7:
      result = 0x465F455449564E49;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24E12EA1C@<X0>(unint64_t *a1@<X8>)
{
  result = GameCenterSettingsStateIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24E12EA60()
{
  result = 0x656C69666F7270;
  switch(*v0)
  {
    case 1:
      result = 0x666F725074696465;
      break;
    case 2:
      result = 0x6E656972466C6C61;
      break;
    case 3:
      result = 0x6552646E65697266;
      break;
    case 4:
      result = 0x7246657469766E69;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

GameCenterUI::GameCenterSettingsDestination_optional __swiftcall GameCenterSettingsDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

char *sub_24E12EBC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12EBFC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12EC24(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12EC64(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12EC8C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12ECCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12ED34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12ED5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

uint64_t sub_24E12ED98(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_24E12EE9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12EEF4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24E12EF78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

uint64_t sub_24E12EFB8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_13_32();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_13_32();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_24E12F080(char *a1, int64_t a2, char a3)
{
  result = sub_24E12F9E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_24E12F0A4()
{
  result = qword_27F1E51B0;
  if (!qword_27F1E51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E51B0);
  }

  return result;
}

unint64_t sub_24E12F0FC()
{
  result = qword_27F1E51B8;
  if (!qword_27F1E51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E51B8);
  }

  return result;
}

uint64_t sub_24E12F158()
{
  result = sub_24E343578();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameCenterSettingsStateIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DashboardSections.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameCenterSettingsDestination(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_24E12F6C0(void *a1, int64_t a2, char a3)
{
  result = sub_24E12FD8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F6E0(char *a1, int64_t a2, char a3)
{
  result = sub_24E12FEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24E12F700(void *a1, int64_t a2, char a3)
{
  result = sub_24E12FFD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F720(char *a1, int64_t a2, char a3)
{
  result = sub_24E130104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F798(char *a1, int64_t a2, char a3)
{
  result = sub_24E13021C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F7B8(char *a1, int64_t a2, char a3)
{
  result = sub_24E130334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F7D8(char *a1, int64_t a2, char a3)
{
  result = sub_24E13044C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24E12F7F8(size_t a1, int64_t a2, char a3)
{
  result = sub_24E130564(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F858(char *a1, int64_t a2, char a3)
{
  result = sub_24E130730(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F878(char *a1, int64_t a2, char a3)
{
  result = sub_24E130940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F898(char *a1, int64_t a2, char a3)
{
  result = sub_24E130A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F8B8(char *a1, int64_t a2, char a3)
{
  result = sub_24E130B60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F9C8(char *a1, int64_t a2, char a3)
{
  result = sub_24E130D98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24E12F9E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_24E12FAF0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_43();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_17_14();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_60();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size_0(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_24E12EFB8(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_24E12FCA4(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_43();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_17_14();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_60();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 2);
  if (v7 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v12 = swift_allocObject();
    _swift_stdlib_malloc_size_0(v12);
    OUTLINED_FUNCTION_9_24();
    *(v12 + 2) = v10;
    *(v12 + 3) = v13;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v12 != a4 || &v15[16 * v10] <= v14)
    {
      memmove(v14, v15, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_24E12FD8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E51D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E51E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E12FEBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24E12FFD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E130104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E13021C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E130334(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E13044C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24E130564(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1C10);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_24E12ED98(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24E130730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_24E130830(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_43();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17_14();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_60();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24F8);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size_0(v11);
    OUTLINED_FUNCTION_9_24();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2C38);
    swift_arrayInitWithCopy();
  }
}

char *sub_24E130940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E130A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24E130B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_24E130C74(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_43();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_17_14();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_60();
    }
  }

  else
  {
    v10 = a2;
  }

  v13 = a4[2];
  if (v10 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v15 != a4 || &a4[5 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }
}

char *sub_24E130D98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E51F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_6_53@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;
  *(v1 - 104) = a1;

  return GameCenterSettingsState.page.setter((v1 - 120));
}

uint64_t OUTLINED_FUNCTION_7_40@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  a8 = a1;
  a9 = a1;

  return GameCenterSettingsState.page.setter(&a7);
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_37()
{

  return sub_24E343548();
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_26()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_18_24()
{
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return swift_allocObject();
}

id GKPickerGroupNearbyCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for GKPickerGroupNearbyCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKPickerGroupNearbyCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupNearbyCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E1311E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_24E347CB8();

  return v3;
}

void sub_24E1312D0(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_24E1313B4(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_24E131498(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_24E1314E0()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for GKPickerGroupNearbyCell();
  objc_msgSendSuper2(&v23, sel_awakeFromNib);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong layer];

  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  [v3 setBackgroundColor_];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v7 layer];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  [v9 setCornerRadius_];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
    [v21 setFont_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_24E13176C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = Strong;
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = sub_24E347CF8();
  v9 = v8;

  sub_24DFA0B40(v7, v9, v3);
  if (a1 < 10)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v11 = v19;
    v20 = [objc_opt_self() localizedStringFromNumber:v18 numberStyle:1];
    v21 = sub_24E347CF8();
    v23 = v22;

    sub_24DFA0B40(v21, v23, v11);
  }

  else
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = v10;
    v12 = objc_opt_self();
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v14 = [v12 localizedStringFromNumber:v13 numberStyle:1];

    v15 = sub_24E347CF8();
    v17 = v16;

    MEMORY[0x25303E950](43, 0xE100000000000000);
    sub_24DFA0B40(v15, v17, v11);
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_24DFFA658(v26);
  if (v27)
  {
    v28 = sub_24E347CB8();
  }

  else
  {
    v28 = 0;
  }

  [v25 setAccessibilityLabel_];

  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = v29;
  sub_24DFD8050(0xD000000000000017, 0x800000024E3A8360, v29);
}

void sub_24E131A94(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupNearbyCell();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_24E348458();
}

id sub_24E131BBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKPickerGroupNearbyCell();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24E131C44(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GKPickerGroupNearbyCell();
  objc_msgSendSuper2(&v8, sel_setHighlighted_, a1 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v7[4] = sub_24E132198;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24E00B24C;
  v7[3] = &block_descriptor_48;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0.1];
  _Block_release(v5);
}

void sub_24E131D54(void *a1, char a2)
{
  v3 = [a1 layer];
  v5 = v3;
  LODWORD(v4) = 1.0;
  if (a2)
  {
    *&v4 = 0.5;
  }

  [v3 setOpacity_];
}

uint64_t sub_24E131DF8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_24E131E24()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for GKPickerGroupNearbyCell();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setText_];

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 setText_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id GKPickerGroupNearbyCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  v5 = type metadata accessor for GKPickerGroupNearbyCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKPickerGroupNearbyCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKPickerGroupNearbyCell.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupNearbyCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_24E13209C()
{
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI23GKPickerGroupNearbyCell_iconContainer);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI23GKPickerGroupNearbyCell_badgeLabel);

  JUMPOUT(0x253040FB0);
}

id sub_24E132104(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E132210(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AppStorePlatterData(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_24DF8BFF4(a1, &qword_27F1E4EF0);
    v13 = sub_24E26AFB8(a2);
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1ED8);
      sub_24E348AB8();
      v16 = v20;
      sub_24DFC7750(*(v20 + 56) + *(v10 + 72) * v15, v8);
      sub_24E13509C();
      sub_24E348AD8();
      v17 = 0;
      *v3 = v16;
    }

    else
    {
      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v17, 1, v9);
    return sub_24DF8BFF4(v8, &qword_27F1E4EF0);
  }

  else
  {
    sub_24DFC7750(a1, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    result = sub_24E0589DC();
    *v3 = v20;
  }

  return result;
}

id sub_24E13244C()
{
  v0 = objc_opt_self();
  result = [v0 shared];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = [result isAccountModificationRestricted];

  if (v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  result = [v0 shared];
  if (result)
  {
    v5 = result;
    v6 = [result isAddingFriendsRestricted];

    v4 = v6 ^ 1;
LABEL_6:
    result = [v0 shared];
    if (result)
    {
      v7 = result;
      v8 = [result isScreenTimeRestrictionsPasscodeSet];

      return ((v4 | v8) & 1);
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24E132534()
{
  v0 = sub_24E3433A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for AppStorePlatterData.ContentData(0);
  __swift_allocate_value_buffer(v7, qword_27F1E5220);
  v30 = v7;
  v8 = __swift_project_value_buffer(v7, qword_27F1E5220);
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v28 = v13;
  v29 = v12;

  v14 = sub_24E347CB8();
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();

  v17 = sub_24E347CF8();
  v19 = v18;

  if (qword_27F1DD630 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for ExternalUrlAction();
  v21 = __swift_project_value_buffer(v20, qword_27F20A968);
  v31[3] = v20;
  v31[4] = sub_24E135254(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_24E1351F4(v21, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);
  v23 = type metadata accessor for EmptyStateData();
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0;
  *(v8 + 136) = 0u;
  v24 = *(v23 + 52);
  v25 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v8 + v24, 1, 1, v25);
  *(v8 + 40) = xmmword_24E36CD50;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  v26 = v28;
  *(v8 + 80) = v29;
  *(v8 + 88) = v26;
  *(v8 + 96) = v17;
  *(v8 + 104) = v19;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 1;
  sub_24DF8BDF0(v31, v8 + 136);
  sub_24E343398();
  (*(v1 + 16))(v3, v6, v0);
  sub_24E135254(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v1 + 8))(v6, v0);
  sub_24DF8BFF4(v31, &qword_27F1DEE90);
  return swift_storeEnumTagMultiPayload();
}

void sub_24E1328E4()
{
  OUTLINED_FUNCTION_32();
  v81 = v1;
  v82 = v2;
  v80 = v3;
  v4 = type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v0[2] = v12;
  v0[3] = v14;
  v88 = objc_opt_self();
  v15 = [v88 local];
  v16 = [v15 internal];

  type metadata accessor for AppStoreContentLookupPresenter();
  v17 = swift_allocObject();
  type metadata accessor for ASCLockupBatchPresenter();
  v18 = sub_24E347C28();
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v0[4] = v17;
  v0[8] = 0x72616F6268736164;
  v0[9] = 0xE900000000000064;
  v83 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5248);
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5250) - 8);
  v20 = *(*v19 + 72);
  v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24E37B2E0;
  v23 = v22 + v21;
  v24 = v22 + v21 + v19[14];
  *(v22 + v21) = 0;
  swift_storeEnumTagMultiPayload();
  sub_24E13509C();
  sub_24E348918();
  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = GKGetLocalizedStringFromTableInBundle();

  v28 = sub_24E347CF8();
  v30 = v29;

  *(v24 + 104) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 120) = -1;
  type metadata accessor for AppStorePlatterData(0);
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  *(v24 + 160) = 0;
  OUTLINED_FUNCTION_5_61();
  v86 = v31;
  v87 = v32;
  sub_24E1351F4(v8, v24 + v33, v34);
  *(v24 + 40) = v28;
  *(v24 + 48) = v30;
  *(v24 + 168) = 0;
  sub_24E13519C(v8, type metadata accessor for AppStorePlatterData.ContentData);
  v84 = v20;
  v85 = v23;
  v35 = v19[14];
  *(v23 + v20) = 1;
  v89 = v4;
  swift_storeEnumTagMultiPayload();
  sub_24E133110(v8, 0, 0, v23 + v20 + v35);
  sub_24E13519C(v8, type metadata accessor for AppStorePlatterData.ContentData);
  v36 = (v23 + 2 * v20);
  v37 = &v36[v19[14]];
  *v36 = 2;
  swift_storeEnumTagMultiPayload();
  sub_24E348918();
  v38 = sub_24E347CB8();
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();

  v41 = sub_24E347CF8();
  v75 = v42;
  v77 = v41;

  v43 = [v88 local];
  v44 = [v43 internal];

  v45 = sub_24E347CF8();
  v47 = v46;
  v48 = sub_24E347CF8();
  v50 = v49;
  v51 = type metadata accessor for AppStoreContentListAction();
  *(v37 + 19) = v51;
  v79 = sub_24E135254(&qword_27F1E5240, type metadata accessor for AppStoreContentListAction);
  *(v37 + 20) = v79;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37 + 16);
  ActionMetrics.init(domain:eventType:)(v45, v47, v48, v50);
  *boxed_opaque_existential_1 = v44;
  *(boxed_opaque_existential_1 + 8) = 2;
  boxed_opaque_existential_1[2] = 0;
  sub_24E1351F4(v8, &v37[*(v86 + 36)], v87);
  *(v37 + 5) = v77;
  *(v37 + 6) = v75;
  v37[168] = 3;
  sub_24E13519C(v8, type metadata accessor for AppStorePlatterData.ContentData);
  v53 = (v85 + 3 * v84);
  v54 = &v53[v19[14]];
  *v53 = 3;
  swift_storeEnumTagMultiPayload();
  sub_24E348918();
  v55 = sub_24E347CB8();
  v56 = GKGameCenterUIFrameworkBundle();
  v57 = GKGetLocalizedStringFromTableInBundle();

  v58 = sub_24E347CF8();
  v76 = v59;
  v78 = v58;

  v60 = [v88 local];
  v61 = [v60 internal];

  v62 = sub_24E347CF8();
  v64 = v63;
  v65 = sub_24E347CF8();
  v67 = v66;
  *(v54 + 19) = v51;
  *(v54 + 20) = v79;
  v68 = __swift_allocate_boxed_opaque_existential_1(v54 + 16);
  ActionMetrics.init(domain:eventType:)(v62, v64, v65, v67);
  *v68 = v61;
  *(v68 + 8) = 3;
  v68[2] = 0;
  sub_24E1351F4(v8, &v54[*(v86 + 36)], v87);
  *(v54 + 5) = v78;
  *(v54 + 6) = v76;
  v54[168] = 3;
  sub_24E13519C(v8, type metadata accessor for AppStorePlatterData.ContentData);
  v69 = (v85 + 4 * v84);
  v70 = v19[14];
  *v69 = 4;
  if (qword_27F1DD888 != -1)
  {
    swift_once();
  }

  v71 = &v69[v70];
  v72 = __swift_project_value_buffer(v89, qword_27F1E5220);
  sub_24E348918();
  *(v71 + 104) = 0u;
  *(v71 + 88) = 0u;
  *(v71 + 72) = 0u;
  *(v71 + 56) = 0u;
  v71[120] = -1;
  *(v71 + 8) = 0u;
  *(v71 + 9) = 0u;
  *(v71 + 20) = 0;
  OUTLINED_FUNCTION_5_61();
  sub_24E1351F4(v72, &v71[v73], v74);
  *(v71 + 5) = 0;
  *(v71 + 6) = 0;
  v71[168] = 2;
  v83[10] = sub_24E347C28();
  *(v83 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F08);
  swift_allocObject();
  v83[12] = sub_24E346F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F18);
  swift_allocObject();
  v83[13] = sub_24E346F88();
  v83[5] = v80;
  v83[6] = v81;
  v83[7] = v82;
  OUTLINED_FUNCTION_18();
}

__n128 sub_24E133110@<Q0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v8 = type metadata accessor for AppStorePlatterData.ContentData(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v35[0]) = *v4;
  v11 = LOBYTE(v35[0]);
  sub_24E13509C();
  sub_24E348918();
  v37 = v11;
  v12 = sub_24E0B19C0();
  v31 = v13;
  v32 = v12;
  v14 = 0;
  v15 = -1;
  if (a2)
  {
    v16 = 0;
    v17 = 0;
    if ((v11 - 1) <= 2u)
    {
      v18 = sub_24E347CB8();
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v17 = sub_24E347CF8();
      v16 = v21;

      v14 = [objc_opt_self() secondaryLabelColor];
      v15 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v34 = v11;
  sub_24E134D28(a3, v35);
  v22 = v33;
  switch(v11)
  {
    case 1:
      sub_24E1351F4(v33, v10, type metadata accessor for AppStorePlatterData.ContentData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_24E13519C(v10, type metadata accessor for AppStorePlatterData.ContentData);
      if (EnumCaseMultiPayload == 1)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 3;
      }

      break;
    case 2:
    case 3:
      LOBYTE(v11) = 3;
      break;
    case 4:
      LOBYTE(v11) = 2;
      break;
    default:
      break;
  }

  v24 = type metadata accessor for AppStorePlatterData(0);
  sub_24E1351F4(v22, a4 + *(v24 + 36), type metadata accessor for AppStorePlatterData.ContentData);
  v25 = v39;
  *a4 = v38;
  *(a4 + 16) = v25;
  v26 = v31;
  v27 = v32;
  *(a4 + 32) = v40;
  *(a4 + 40) = v27;
  *(a4 + 48) = v26;
  *(a4 + 56) = v17;
  *(a4 + 64) = v16;
  *(a4 + 72) = v14;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 120) = v15;
  result = v35[0];
  v29 = v35[1];
  *(a4 + 160) = v36;
  *(a4 + 128) = result;
  *(a4 + 144) = v29;
  *(a4 + 168) = v11;
  return result;
}

void sub_24E1333C4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v46 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v8;
  v43 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v44 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v25;
  *(inited + 48) = 0x676E69646E616CLL;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v26;
  *(inited + 80) = 0x656461637261;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v27;
  v28 = *(v1 + 72);
  *(inited + 112) = *(v1 + 64);
  *(inited + 120) = v28;

  v42 = sub_24E347C28();
  v29 = sub_24E347C28();
  sub_24E0A7788(v29);

  if (*(v1 + 88) == 1)
  {
    sub_24E3479B8();
    v30 = sub_24E347068();
    sub_24E1C3144();
    (*(v10 + 8))(v14, v43);
    v30(&v47, 0);
  }

  v43 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2740);
  v31 = sub_24E3470B8();
  OUTLINED_FUNCTION_6_15(v31);
  v32 = swift_allocObject();
  v39 = xmmword_24E36A270;
  *(v32 + 16) = xmmword_24E36A270;
  (*(v17 + 16))(v44, v23, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2748);
  v33 = sub_24E347108();
  OUTLINED_FUNCTION_6_15(v33);
  v41 = v15;
  v40 = v23;
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3470F8();
  sub_24E1AD060();
  sub_24E3470A8();
  if (qword_27F1DD808 != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  v34 = sub_24E347058();
  __swift_project_value_buffer(v34, qword_27F20AE00);
  sub_24E347028();
  *(swift_allocObject() + 16) = v39;
  sub_24E3470E8();
  sub_24E3470D8();
  sub_24E1AD060();
  sub_24E3470A8();
  sub_24E335A58(v42);

  sub_24E347448();
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E3470C8();
  sub_24E347118();
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_24E347698();
  (*(v17 + 8))(v40, v41);
  OUTLINED_FUNCTION_18();
}

void sub_24E1339B0()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = type metadata accessor for AppStorePlatterData(0);
  v3 = OUTLINED_FUNCTION_6_15(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v23[1] = *(v0 + 96);
  v12 = *(v0 + 40);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    swift_beginAccess();
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v1 + 80);
      if (*(v16 + 16))
      {
        v17 = sub_24E26AFB8(*v14);
        if (v18)
        {
          v19 = *(v5 + 72);
          sub_24E1351F4(*(v16 + 56) + v19 * v17, v8, type metadata accessor for AppStorePlatterData);
          sub_24DFC7750(v8, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_24E077D38();
            v15 = v21;
          }

          v20 = *(v15 + 16);
          if (v20 >= *(v15 + 24) >> 1)
          {
            sub_24E077D38();
            v15 = v22;
          }

          *(v15 + 16) = v20 + 1;
          sub_24DFC7750(v11, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v20 * v19);
        }
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v23[2] = v15;
  sub_24E346F78();

  sub_24E133BB0();
  sub_24E1343B4(1);
  sub_24E1346A0(1);
  OUTLINED_FUNCTION_18();
}

void sub_24E133BB0()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v48 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = sub_24E347458();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v10 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v49 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v26 = v25 - v24;
  if ((v3 & 1) == 0)
  {
    LOBYTE(v50[0]) = 1;
    swift_storeEnumTagMultiPayload();
    sub_24E1349FC();
    OUTLINED_FUNCTION_0_107();
    sub_24E13519C(v26, v27);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v47 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v29 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v29;
  *(inited + 48) = 1852141679;
  *(inited + 56) = 0xE400000000000000;
  v30 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  v31 = sub_24E347058();
  v32 = __swift_project_value_buffer(v31, qword_27F20AE00);
  MEMORY[0x25303DB90](0x6E65697246646461, 0xEA00000000007364, 0x6E6F74747562, 0xE600000000000000, v30, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v47;
  (*(v12 + 16))(v34 + v33, v16, v10);
  sub_24E347448();
  sub_24E3471D8();
  (*(v12 + 8))(v16, v10);
  type metadata accessor for AddFriendsAction();
  v35 = swift_allocBox();
  v37 = v36;
  v38 = [objc_opt_self() local];
  memset(v51, 0, 32);
  v51[32] = 1;
  v39 = v49;
  (*(v18 + 16))(v7, v22, v49);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_24E2835B0(v38, v51, v7, 0, v37);
  LOBYTE(v50[0]) = 1;
  sub_24E167484(v50, 1, 6, v1[6]);
  OUTLINED_FUNCTION_3_35();
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v35;
  v44[4] = v48;
  OUTLINED_FUNCTION_3_35();
  swift_allocObject();
  swift_weakInit();
  v45 = sub_24E085260();

  v46 = sub_24E348368();
  v50[3] = v45;
  v50[4] = MEMORY[0x277D225C0];
  v50[0] = v46;
  sub_24E347A78();

  (*(v18 + 8))(v22, v39);
  __swift_destroy_boxed_opaque_existential_1(v50);

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E13411C(uint64_t *a1)
{
  v2 = type metadata accessor for AppStorePlatterData.ContentData(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v5 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = *a1;
  v9 = type metadata accessor for AddFriendsAction();
  v10 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24DFC34EC();
    v7[128] = sub_24E13244C() & 1;
    swift_beginAccess();
    v15[3] = v9;
    v15[4] = sub_24E135254(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_24E1351F4(v10, boxed_opaque_existential_1, type metadata accessor for AddFriendsAction);
    sub_24DFE981C(v15, (v7 + 136));
    LOBYTE(v15[0]) = 1;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC10) + 48);
    *v4 = v8;
    sub_24E1351F4(v7, v4 + v13, type metadata accessor for EmptyStateData);
    __swift_storeEnumTagSinglePayload(v4 + v13, 0, 1, v5);
    swift_storeEnumTagMultiPayload();
    sub_24DFD8654(v8);

    sub_24E1349FC();

    sub_24E13519C(v4, type metadata accessor for AppStorePlatterData.ContentData);
    return sub_24E13519C(v7, type metadata accessor for EmptyStateData);
  }

  return result;
}

void sub_24E1343EC()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_1();
  v3 = v2 - v1;
  v4 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  v11 = sub_24E347018();
  OUTLINED_FUNCTION_6_15(v11);
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  sub_24E346FB8();
  swift_getErrorValue();
  v15[3] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1);
  sub_24E346FE8();
  sub_24DF8BFF4(v15, &qword_27F1E0370);
  (*(v6 + 104))(v10, *MEMORY[0x277D21DE8], v4);
  sub_24E0EF428();

  (*(v6 + 8))(v10, v4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_storeEnumTagMultiPayload();
    sub_24E1349FC();

    OUTLINED_FUNCTION_0_107();
    sub_24E13519C(v3, v13);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E1346D8(char a1, char a2)
{
  v4 = v2;
  v6 = *v4;
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  if ((a1 & 1) == 0)
  {
    LOBYTE(v17[0]) = a2;
    swift_storeEnumTagMultiPayload();
    sub_24E1349FC();
    OUTLINED_FUNCTION_0_107();
    sub_24E13519C(v10, v11);
  }

  LOBYTE(v17[0]) = a2;
  sub_24E167484(v17, 1, 6, v4[6]);
  OUTLINED_FUNCTION_3_35();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v6;
  OUTLINED_FUNCTION_3_35();
  swift_allocObject();
  swift_weakInit();
  v14 = sub_24E085260();

  v15 = sub_24E348368();
  v17[3] = v14;
  v17[4] = MEMORY[0x277D225C0];
  v17[0] = v15;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E1348A0(uint64_t *a1)
{
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v5 = (v4 - v3);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_24DFD8654(v6))
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC10) + 48);
      *v5 = v6;
      v9 = type metadata accessor for EmptyStateData();
      __swift_storeEnumTagSinglePayload(v5 + v8, 1, 1, v9);
      swift_storeEnumTagMultiPayload();
      sub_24DFD8654(v6);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    sub_24E1349FC();

    OUTLINED_FUNCTION_0_107();
    return sub_24E13519C(v5, v10);
  }

  return result;
}

void sub_24E1349FC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EE8) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EF0);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for AppStorePlatterData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  v30 = *v7;
  v21 = v30;
  sub_24E133110(v5, v3, *(v1 + 48), v19 - v18);
  sub_24E1351F4(v20, v15, type metadata accessor for AppStorePlatterData);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v16);
  swift_beginAccess();
  sub_24E132210(v15, v21);
  swift_endAccess();
  sub_24E1351F4(v20, v15, type metadata accessor for AppStorePlatterData);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
  v28 = *(v8 + 56);
  *v11 = v21;
  sub_24E134CB8(v15, &v11[v28]);
  sub_24E346F78();
  sub_24DF8BFF4(v11, &qword_27F1E4EE8);
  sub_24E13519C(v20, type metadata accessor for AppStorePlatterData);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E134C00()
{

  return v0;
}

uint64_t sub_24E134C60()
{
  sub_24E134C00();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_24E134CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_24E134D28@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      v30 = result;
      v14 = [objc_opt_self() local];
      v15 = [v14 internal];

      v16 = sub_24E347CF8();
      v18 = v17;
      v19 = sub_24E347CF8();
      v21 = v20;
      *(a2 + 24) = type metadata accessor for AppStoreContentListAction();
      *(a2 + 32) = sub_24E135254(&qword_27F1E5240, type metadata accessor for AppStoreContentListAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      ActionMetrics.init(domain:eventType:)(v16, v18, v19, v21);
      *boxed_opaque_existential_1 = v15;
      v13 = 1;
      goto LABEL_6;
    case 2:
      v30 = result;
      v22 = [objc_opt_self() local];
      v23 = [v22 internal];

      v24 = sub_24E347CF8();
      v26 = v25;
      v27 = sub_24E347CF8();
      v29 = v28;
      *(a2 + 24) = type metadata accessor for AppStoreContentListAction();
      *(a2 + 32) = sub_24E135254(&qword_27F1E5240, type metadata accessor for AppStoreContentListAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      ActionMetrics.init(domain:eventType:)(v24, v26, v27, v29);
      *boxed_opaque_existential_1 = v23;
      v13 = 2;
      goto LABEL_6;
    case 3:
      v30 = result;
      v4 = [objc_opt_self() local];
      v5 = [v4 internal];

      v6 = sub_24E347CF8();
      v8 = v7;
      v9 = sub_24E347CF8();
      v11 = v10;
      *(a2 + 24) = type metadata accessor for AppStoreContentListAction();
      *(a2 + 32) = sub_24E135254(&qword_27F1E5240, type metadata accessor for AppStoreContentListAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      ActionMetrics.init(domain:eventType:)(v6, v8, v9, v11);
      *boxed_opaque_existential_1 = v5;
      v13 = 3;
LABEL_6:
      *(boxed_opaque_existential_1 + 8) = v13;
      boxed_opaque_existential_1[2] = v30;

      result = v30;
      break;
    default:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
  }

  return result;
}

unint64_t sub_24E13509C()
{
  result = qword_27F1E5238;
  if (!qword_27F1E5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5238);
  }

  return result;
}

uint64_t sub_24E13519C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E1351F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E135254(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_8_45()
{
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 120) = -1;
  return result;
}

uint64_t sub_24E13531C()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI29AchievementsGameListPresenter_snapshot;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_24E1353E0()
{
  sub_24E13531C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AchievementsGameListPresenter()
{
  result = qword_27F1E5258;
  if (!qword_27F1E5258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E13548C()
{
  sub_24E0239BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E135560(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E1355E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI29AchievementsGameListPresenter_snapshot;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_5_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_24E135674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI29AchievementsGameListPresenter_snapshot;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_5_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_24E13571C(uint64_t a1)
{
  result = sub_24E135760(&qword_27F1E5270);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E135760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AchievementsGameListPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E1357A4(uint64_t a1)
{
  result = sub_24E135760(&qword_27F1E5268);
  *(a1 + 8) = result;
  return result;
}

void sub_24E1357E8(void *a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    v4 = [a1 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void sub_24E135884(char a1)
{
  v3 = [v1 layer];
  [v3 setMaskedCorners_];
}

id sub_24E1358F8(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

id sub_24E1359A4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_24E135AD8(void *a1)
{
  sub_24E348998();
  swift_getObjectType();
  sub_24E348DD8();

  MEMORY[0x25303E950](0xD00000000000002BLL, 0x800000024E3A8690);
  sub_24E3433B8();
}

uint64_t sub_24E135BF0()
{
  sub_24E348998();
  swift_getObjectType();
  sub_24E348DD8();

  MEMORY[0x25303E950](0xD000000000000027, 0x800000024E3A8660);
  sub_24E3433B8();
}

void sub_24E135CC8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v63 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23_23();
  sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v61 = v9;
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  sub_24E346F28();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = *a1;
  v22 = *(a1 + 8);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  if (*(a1 + 64))
  {
    if (*(a1 + 64) == 1)
    {
      v57 = v2;
      v58 = v17;
      v59 = v5;
      v60 = v18;
      v25 = v21;
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      *(v26 + 24) = v25;
      *(v26 + 32) = v22 & 1;
      if (v23)
      {
        v27 = v3;
        sub_24DFC14C0(a1, aBlock);
        [v27 presentViewController:v25 animated:v22 & 1 completion:0];
      }

      else
      {
        sub_24DF88A8C(0, &qword_27F1DFCD0);
        v46 = v3;
        sub_24DFC14C0(a1, aBlock);
        v55 = sub_24E348368();
        sub_24E346F18();
        sub_24E346F48();
        v47 = *(v60 + 8);
        v60 += 8;
        v56 = v47;
        v48 = v58;
        v47(v15, v58);
        OUTLINED_FUNCTION_16_4();
        v49 = swift_allocObject();
        *(v49 + 16) = sub_24DFC14A8;
        *(v49 + 24) = v26;
        aBlock[4] = sub_24DFA92FC;
        aBlock[5] = v49;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24E00B24C;
        aBlock[3] = &block_descriptor_49;
        v50 = _Block_copy(aBlock);

        sub_24E346EF8();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_24DFC151C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
        sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90);
        v51 = v57;
        v52 = v59;
        sub_24E3487E8();
        v53 = v55;
        MEMORY[0x25303EE90](v20, v12, v51, v50);
        _Block_release(v50);

        v63[1](v51, v52);
        (*(v61 + 8))(v12, v62);
        v56(v20, v48);
      }
    }

    else
    {
      v43 = &v3[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler];
      swift_beginAccess();
      v44 = *v43;
      if (*v43)
      {

        v44(v45);
        sub_24DE73FA0(v44);
      }
    }
  }

  else
  {
    v29 = *(a1 + 48);
    v28 = *(a1 + 56);
    v30 = *(a1 + 40);
    v61 = *(a1 + 32);
    v63 = v24;
    v31 = v21;
    sub_24DF88A8C(0, &qword_27F1E2900);

    v32 = sub_24E347CB8();
    v33 = GKGameCenterUIFrameworkBundle();
    v62 = v3;
    v34 = v33;
    v35 = GKGetLocalizedStringFromTableInBundle();

    v36 = sub_24E347CF8();
    v38 = v37;

    v39 = sub_24E3190AC(v36, v38, 1, 0, 0);
    OUTLINED_FUNCTION_16_4();
    v40 = swift_allocObject();
    *(v40 + 16) = v29;
    *(v40 + 24) = v28;
    sub_24DE56C38(v29);
    v41 = sub_24E3190AC(v61, v30, 0, sub_24DFC1574, v40);
    sub_24DF88A8C(0, &qword_27F1DFB28);
    v63 = sub_24E3191B4(v31, v22, v63, v23, 1);
    [v63 addAction_];
    [v63 addAction_];
    [v62 presentViewController:v63 animated:1 completion:0];

    v42 = v63;
  }
}

uint64_t sub_24E136330()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1);
  return v2;
}

uint64_t sub_24E13638C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6);
}

void *sub_24E13644C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter);
  v2 = v1;
  return v1;
}

void *sub_24E136488()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout);
  v2 = v1;
  return v1;
}

void sub_24E1364D4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  OUTLINED_FUNCTION_21_2();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D752B8]);
  v4 = v2;
  v5 = sub_24E237540(sub_24E13AE2C, v3, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout) = v5;
  v8 = v5;

  if (v8)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v10 = sub_24E347CB8();

    [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

    v11 = *(v1 + v6);
    if (v11)
    {
      v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24E136610(uint64_t a1, void *a2)
{
  v71 = a2;
  v76 = a1;
  sub_24E347478();
  OUTLINED_FUNCTION_0_14();
  v73 = v3;
  v74 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v72 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_38();
  v75 = v8;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_20();
  v77 = v10;
  OUTLINED_FUNCTION_18_1();
  sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  v79 = v11;
  v80 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38();
  v70 = v13;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_20();
  v78 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v82 = v17;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_3();
  v81 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_4_5(v20);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  v31 = OUTLINED_FUNCTION_4_5(v30);
  MEMORY[0x28223BE20](v31);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v66 - v35;
  sub_24E344CD8();
  v37 = sub_24E3434D8();
  sub_24DFB8854(v37, v23);
  OUTLINED_FUNCTION_17_4(v23, 1, v24);
  if (v41)
  {
    sub_24DF8BFF4(v36, &unk_27F1E6C70);
    v38 = &unk_27F1E1CB0;
    v39 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_18_25();
    v40(v29, v23, v24);
    sub_24E344CD8();
    OUTLINED_FUNCTION_17_4(v33, 1, v16);
    if (v41)
    {
      (*(v26 + 8))(v29, v24);
      OUTLINED_FUNCTION_25_19();
      sub_24DF8BFF4(v42, v43);
      OUTLINED_FUNCTION_25_19();
    }

    else
    {
      v44 = v16;
      v69 = v29;
      v68 = v26;
      v45 = v82;
      OUTLINED_FUNCTION_18_25();
      v47 = v46;
      v48();
      swift_getKeyPath();
      v49 = v77;
      sub_24E347128();

      v50 = v79;
      OUTLINED_FUNCTION_17_4(v49, 1, v79);
      if (v51)
      {
        (*(v45 + 8))(v47, v44);
        (*(v68 + 8))(v69, v24);
        sub_24DF8BFF4(v36, &unk_27F1E6C70);
        v38 = &qword_27F1E58A0;
        v39 = v49;
      }

      else
      {
        v67 = v44;
        v52 = *(v80 + 32);
        v52(v78, v49, v50);
        swift_getKeyPath();
        v53 = v75;
        sub_24E347128();

        OUTLINED_FUNCTION_17_4(v53, 1, v50);
        if (v54)
        {
          sub_24DF8BFF4(v53, &qword_27F1E58A0);

          v55 = v80;
        }

        else
        {
          v56 = v70;
          v52(v70, v53, v50);
          v57 = [v71 collectionViewLayout];
          [v57 _contentFrameForSection_];

          sub_24E3476C8();
          v58 = v72;
          sub_24E347498();
          v59 = sub_24E3476B8();
          (*(v73 + 8))(v58, v74);
          v60 = v80;
          (*(v80 + 8))(v56, v50);
          v55 = v60;
          if (!v59)
          {
          }
        }

        v61 = v67;
        v62 = v82;
        v63 = v68;
        v64 = v78;
        sub_24E3476C8();

        (*(v55 + 8))(v64, v50);
        (*(v62 + 8))(v81, v61);
        (*(v63 + 8))(v69, v24);
        v38 = &unk_27F1E6C70;
        v39 = v36;
      }
    }
  }

  return sub_24DF8BFF4(v39, v38);
}

void sub_24E136D60()
{
  OUTLINED_FUNCTION_32();
  v72 = v2;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v79 = v4;
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v78 = v6 - v5;
  OUTLINED_FUNCTION_18_1();
  sub_24E347478();
  OUTLINED_FUNCTION_0_14();
  v68 = v8;
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v67 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38();
  v70 = v13;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_20();
  v73 = v15;
  OUTLINED_FUNCTION_18_1();
  v75 = sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  v71 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38();
  v66 = v18;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_20();
  v74 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v21);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v77 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_3();
  v76 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_4_5(v29);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_9();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v33 = v32;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_14();
  v35 = sub_24E3434D8();
  sub_24DFB8854(v35, v0);
  OUTLINED_FUNCTION_17_4(v0, 1, v31);
  if (v38)
  {
    v36 = &unk_27F1E1CB0;
    v37 = v0;
  }

  else
  {
    (*(v33 + 32))(v1, v0, v31);
    sub_24E344CD8();
    OUTLINED_FUNCTION_17_4(v24, 1, v25);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_23_3();
      v40(v39);
      v36 = &unk_27F1E6C70;
      v37 = v24;
    }

    else
    {
      v41 = v25;
      v65 = v33;
      v42 = v76;
      v43 = v77;
      (*(v77 + 32))(v76, v24, v25);
      swift_getKeyPath();
      v44 = v73;
      sub_24E347128();

      v45 = v75;
      OUTLINED_FUNCTION_17_4(v44, 1, v75);
      if (!v46)
      {
        v53 = v71;
        v54 = *(v71 + 32);
        v54(v74, v44, v45);
        swift_getKeyPath();
        v55 = v70;
        sub_24E347128();

        OUTLINED_FUNCTION_17_4(v55, 1, v45);
        if (v56)
        {
          sub_24DF8BFF4(v55, &qword_27F1E58A0);

          v58 = v76;
          v57 = v77;
        }

        else
        {
          v59 = v66;
          v54(v66, v55, v45);
          v60 = v67;
          sub_24E347498();
          v61 = sub_24E3476B8();
          (*(v68 + 8))(v60, v69);
          (*(v53 + 8))(v59, v45);
          v58 = v76;
          if (!v61)
          {
          }

          v57 = v77;
        }

        v62 = v74;
        sub_24E347718();

        (*(v53 + 8))(v62, v45);
        (*(v57 + 8))(v58, v41);
        v63 = OUTLINED_FUNCTION_23_3();
        v64(v63);
        goto LABEL_13;
      }

      (*(v43 + 8))(v42, v25);
      v47 = OUTLINED_FUNCTION_23_3();
      v48(v47);
      v36 = &qword_27F1E58A0;
      v37 = v44;
    }
  }

  sub_24DF8BFF4(v37, v36);
  v49 = v78;
  sub_24E343C98();
  v50 = sub_24E343F78();
  v51 = sub_24E348238();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_24DE53000, v50, v51, "Unable to get item at index path", v52, 2u);
    MEMORY[0x253040EE0](v52, -1, -1);
  }

  (*(v79 + 8))(v49, v80);
LABEL_13:
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E137568@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24E136330();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E1375D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1);
  return sub_24E13638C(v4, v3);
}

void sub_24E137668()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v38 = v3;
  v39 = v2;
  v31 = v4;
  v6 = v5;
  v40 = v7;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0);
  OUTLINED_FUNCTION_0_14();
  v36 = v11;
  v37 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v35 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0);
  OUTLINED_FUNCTION_0_14();
  v33 = v15;
  v34 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v32 = v17;
  OUTLINED_FUNCTION_18_1();
  v18 = sub_24E3476F8();
  v19 = OUTLINED_FUNCTION_4_5(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v20 = &v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout] = 0;
  v21 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator;
  *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator] = 0;
  v22 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components;
  if (qword_27F1DD8F8 != -1)
  {
    OUTLINED_FUNCTION_10_37();
    swift_once();
  }

  *&v1[v22] = qword_27F20B000;
  *&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810);
  swift_allocObject();

  v23 = v9;
  v41[0] = sub_24E347578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CE0);
  swift_allocObject();
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810);
  *&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_statePresenter] = sub_24E344898();
  *&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_pageMetricsPresenter] = v6;
  if (v39)
  {
    sub_24E347748();

    swift_unknownObjectRetain();
    sub_24E3476E8();
    v24 = v31;
    *&v1[v21] = sub_24E347708();
  }

  else
  {
    *&v1[v21] = 0;

    v24 = v31;
  }

  v42.receiver = v1;
  v42.super_class = type metadata accessor for BaseJetCollectionViewController();
  v25 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  sub_24DF8BD90(v40, v41, &qword_27F1E1B70);
  v26 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());

  v27 = v25;

  swift_unknownObjectRetain();
  v28 = v27;
  v29 = sub_24E190B5C(v25, v41, 0, v6, v39, v24, v38);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E878;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0);
  sub_24DFB4C28(&qword_27F1DFB10, &unk_27F1E1CF0);
  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v41);
  (*(v33 + 8))(v32, v34);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E878;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00);
  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v41);
  (*(v36 + 8))(v35, v37);

  swift_unknownObjectRelease();

  sub_24DF8BFF4(v40, &qword_27F1E1B70);
  v30 = *&v28[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  *&v28[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter] = v29;

  OUTLINED_FUNCTION_18();
}

id BaseJetCollectionViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_22_19()) initWithCoder_];

  return v1;
}

void BaseJetCollectionViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator) = 0;
  v2 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components;
  if (qword_27F1DD8F8 != -1)
  {
    OUTLINED_FUNCTION_10_37();
    swift_once();
  }

  *(v0 + v2) = qword_27F20B000;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E137E60()
{

  sub_24E3448A8();
  OUTLINED_FUNCTION_22_19();

  return v0;
}

uint64_t sub_24E137F30()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    OUTLINED_FUNCTION_21_2();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0));
    v1 = sub_24E344CB8();
    v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
    *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource] = v1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821F96F8](v1, v2);
}

void *sub_24E137FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v19 = result;
  v40 = v9;
  v41 = a1;
  v20 = *(result + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v20)
  {
    v21 = a3;
    v22 = v20;
    v23 = v45;
    v24 = sub_24E3434D8();
    sub_24DFB8854(v24, v13);

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v39 = v15;
      (*(v15 + 32))(v17, v13, v14);

      v38 = v21;
      sub_24E3448C8();

      v27 = v43;
      v28 = *(v43 + 48);
      v29 = MEMORY[0x277D85000];
      v30 = (*((*MEMORY[0x277D85000] & *v19) + 0x228))(v26);
      v31 = sub_24E3434D8();
      sub_24DFC15B4(v8, &v8[v28], v31);

      v32 = (*((*v29 & *v19) + 0x260))();
      v33 = v42;
      sub_24DF8BD90(v8, v42, &unk_27F1E1CA0);
      v34 = *(v27 + 48);
      v35 = sub_24DFC15B8();
      v36 = v23;
      v37 = v46;
      v25 = (*(*v32 + 104))(v38, v36, v17, v33, v33 + v34, v46, v35, v41);

      sub_24DF8BFF4(v8, &unk_27F1E1CA0);
      (*(v44 + 8))(v37, v40);
      (*(v39 + 8))(v17, v14);
      sub_24DF8BFF4(v33 + v34, &unk_27F1E1CB0);
      sub_24DF8BFF4(v33, &unk_27F1E1CB0);
      return v25;
    }

    sub_24DF8BFF4(v13, &unk_27F1E1CB0);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

void sub_24E138520(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseJetCollectionViewController();
  v3 = objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x228))(v3);
  v5 = *&v4[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph];

  if (v5)
  {

    sub_24E3476A8();
    OUTLINED_FUNCTION_22_19();

    sub_24E3478A8();
  }
}

id sub_24E138668(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BaseJetCollectionViewController();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);

  sub_24E347668();

  v5 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator;
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator])
  {

    result = [v2 view];
    if (result)
    {
      v6 = result;
      [result bounds];
      OUTLINED_FUNCTION_8_2();

      OUTLINED_FUNCTION_7_2();
      sub_24E3476D8();

      if (*&v2[v5])
      {

        sub_24E347738();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_24E1387BC(char a1)
{
  v4 = sub_24E347908();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BaseJetCollectionViewController();
  v8 = objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1 & 1);
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x228))(v8);
  v10 = *&v9[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph];

  if (v10)
  {

    sub_24E3478E8();
    sub_24E347678();

    (*(v6 + 8))(v2, v4);
  }
}

void sub_24E138984(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BaseJetCollectionViewController();
  v4 = objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x228))(v4);
  v6 = *&v5[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph];

  if (v6)
  {

    sub_24E3476A8();

    sub_24E3478B8();
  }

  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator))
  {

    sub_24E347738();
  }
}

id sub_24E138B00()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseJetCollectionViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  sub_24E3476A8();

  sub_24E347888();

  if (*&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator])
  {

    result = [v0 collectionView];
    if (result)
    {
      v2 = result;
      [result bounds];
      OUTLINED_FUNCTION_8_2();

      OUTLINED_FUNCTION_7_2();
      sub_24E3476D8();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_24E138C38()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseJetCollectionViewController();
  v1 = objc_msgSendSuper2(&v4, sel_didReceiveMemoryWarning);
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x228))(v1);
  v3 = *&v2[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph];

  if (v3)
  {

    sub_24E3476A8();
    OUTLINED_FUNCTION_22_19();

    sub_24E3478D8();
  }
}

uint64_t sub_24E138D6C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v20 = Strong;
  v21 = *(Strong + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (!v21)
  {
    goto LABEL_15;
  }

  v57 = v15;
  v22 = v21;
  sub_24DFB8854(a1, v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v23 = v13;
    v24 = *(v13 + 32);
    v55 = v13 + 32;
    v56 = v24;
    v25 = (v24)(v18, v11, v12);
    v26 = *v20;
    v60 = v12;
    v27 = v18;
    v28 = MEMORY[0x277D85000];
    v29 = (*((*MEMORY[0x277D85000] & v26) + 0x298))(v25);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    (*((*v28 & *v20) + 0x260))();
    v36 = (*((*v28 & *v20) + 0x228))();
    sub_24DFC15B4(v8, v5, a1);

    v37 = sub_24DFC15B8();
    v38 = sub_24E1E108C(v27, v8, v5, v37, v58, v29, v31, v33, v35);

    sub_24DF8BFF4(v5, &unk_27F1E1CB0);
    sub_24DF8BFF4(v8, &unk_27F1E1CB0);
    [v38 contentInsets];
    [v38 setContentInsets_];
    [v38 contentInsets];
    [v38 setContentInsets_];
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = v23;
    v41 = v23 + 16;
    v40 = *(v23 + 16);
    v42 = v57;
    v54 = v27;
    v43 = v60;
    v40(v57, v27, v60);
    v44 = (*(v41 + 64) + 16) & ~*(v41 + 64);
    v11 = ((v59 + v44 + 7) & 0xFFFFFFFFFFFFFFF8);
    v45 = swift_allocObject();
    v56(v45 + v44, v42, v43);
    *&v11[v45] = v39;
    aBlock[4] = sub_24E13AE34;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E288CBC;
    aBlock[3] = &block_descriptor_67;
    v46 = _Block_copy(aBlock);

    [v38 setVisibleItemsInvalidationHandler_];
    _Block_release(v46);
    v47 = [v38 decorationItems];
    sub_24DF88A8C(0, &qword_27F1E7690);
    v48 = sub_24E347F08();

    v49 = sub_24DFD8654(v48);
    for (i = 0; ; ++i)
    {
      if (v49 == i)
      {

        (*(v58 + 8))(v54, v60);
        return v38;
      }

      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x25303F560](i, v48);
      }

      else
      {
        if (i >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v51 = *(v48 + 8 * i + 32);
      }

      v11 = v51;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v51 contentInsets];
      [v11 setContentInsets_];
      [v11 contentInsets];
      [v11 setContentInsets_];
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  sub_24DF8BFF4(v11, &unk_27F1E1CB0);
LABEL_17:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

uint64_t sub_24E13940C(uint64_t a1, void *a2)
{
  v3 = sub_24E347478();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_24E3474B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_24DF8BFF4(v8, &qword_27F1E58A0);
  }

  (*(v10 + 32))(v12, v8, v9);
  [objc_msgSend(a2 container)];
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator);

    if (v16)
    {
      sub_24E347498();
      sub_24E347728();

      (*(v17 + 8))(v5, v3);
    }
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_24E13975C()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  swift_getObjectType();
  v11 = dynamic_cast_existential_1_conditional(v4);
  if (!v11)
  {
LABEL_10:
    OUTLINED_FUNCTION_18();
    return;
  }

  v13 = v11;
  v14 = v12;
  v23 = v9;
  v15 = *((*MEMORY[0x277D85000] & *v2) + 0x260);
  v24 = v4;
  v15();
  v16 = sub_24DFC15B8();
  sub_24E1E1904(v13, v14, v6, v16);

  if (!*(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator))
  {
    sub_24E343C98();
    v20 = sub_24E343F78();
    v21 = sub_24E348238();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24DE53000, v20, v21, "No impressionsCalculator found", v22, 2u);
      MEMORY[0x253040EE0](v22, -1, -1);
    }

    (*(v23 + 8))(v1, v7);
    goto LABEL_10;
  }

  v17 = *(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v17)
  {

    v17;
    sub_24E136D60();

    OUTLINED_FUNCTION_18();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E1399DC()
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v26 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_23();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_14();
  v15 = sub_24E343488();
  v16 = [v5 cellForItemAtIndexPath_];

  if (!v16)
  {
    goto LABEL_8;
  }

  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v16))
  {

LABEL_8:
    OUTLINED_FUNCTION_18();
    return;
  }

  v18 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_24E344CD8();

    OUTLINED_FUNCTION_17_4(v3, 1, v11);
    if (v21)
    {

      sub_24DF8BFF4(v3, &unk_27F1E6C70);
    }

    else
    {
      OUTLINED_FUNCTION_18_25();
      v22 = OUTLINED_FUNCTION_23_3();
      v23(v22);
      ObjectType = swift_getObjectType();

      sub_24E3448C8();

      v25 = sub_24DFC15B8();
      (*(v19 + 120))(v2, v1, v25, ObjectType, v19);

      (*(v26 + 8))(v1, v6);
      (*(v13 + 8))(v2, v11);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_24E139DD0()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  OUTLINED_FUNCTION_0_14();
  v30 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_23();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_14();
  v16 = sub_24E343488();
  v31 = [v4 cellForItemAtIndexPath_];

  if (!v31)
  {
    goto LABEL_10;
  }

  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v31))
  {
    v29 = v5;
    v18 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_24E344CD8();

      OUTLINED_FUNCTION_17_4(v2, 1, v12);
      if (v21)
      {

        sub_24DF8BFF4(v2, &unk_27F1E6C70);
      }

      else
      {
        OUTLINED_FUNCTION_18_25();
        v24 = OUTLINED_FUNCTION_23_3();
        v25(v24);
        ObjectType = swift_getObjectType();

        sub_24E3448B8();

        v27 = sub_24DFC15B8();
        (*(v19 + 128))(v1, v9, v27, ObjectType, v19);

        (*(v30 + 8))(v9, v29);
        (*(v14 + 8))(v1, v12);
      }

LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_24E13A1D8(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator))
  {

    [a2 frame];
    if (*(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource))
    {
      OUTLINED_FUNCTION_8_2();
      v7 = v4;
      OUTLINED_FUNCTION_7_2();
      sub_24E136610(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24E13A2DC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v11 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23_23();
  sub_24E343498();
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a6(v15, v16, v6);

  return (*(v13 + 8))(v6, v11);
}

void sub_24E13A3E4()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v64 = v5;
  v65 = v6;
  v61 = v7;
  v62 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v63 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_3();
  v66 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  v17 = OUTLINED_FUNCTION_4_5(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38();
  v60 = v18;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v19);
  v59 = &v58 - v20;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_14();
  v28 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v29 = *(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v29)
  {
    v30 = v29;
    v31 = v4;
    v32 = sub_24E3434D8();
    sub_24DFB8854(v32, v23);

    OUTLINED_FUNCTION_17_4(v23, 1, v24);
    if (v33)
    {
      v34 = &unk_27F1E1CB0;
      v35 = v23;
      goto LABEL_9;
    }

    v36 = OUTLINED_FUNCTION_23_3();
    v37(v36);
    v38 = *(v2 + v28);
    if (v38)
    {
      v39 = v38;
      v40 = v31;
      sub_24E344CD8();

      v41 = v67;
      OUTLINED_FUNCTION_17_4(v12, 1, v67);
      if (!v33)
      {
        v42 = v63;
        v43 = (*(v63 + 32))(v66, v12, v41);
        v44 = MEMORY[0x277D85000];
        v45 = (*((*MEMORY[0x277D85000] & *v2) + 0x260))(v43);
        v46 = (*((*v44 & *v2) + 0x228))();
        v47 = sub_24E3434D8();
        v49 = v59;
        v48 = v60;
        sub_24DFC15B4(v59, v60, v47);

        v50 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
        v51 = sub_24E12AAC0(v61);
        v52 = v40;
        v53 = v66;
        (*(*v45 + 160))(v62, v64, v65, v52, v66, v1, v49, v48, v51);

        OUTLINED_FUNCTION_25_19();
        sub_24DF8BFF4(v54, v55);
        OUTLINED_FUNCTION_25_19();
        sub_24DF8BFF4(v56, v57);
        (*(v42 + 8))(v53, v67);
        (*(v26 + 8))(v1, v24);
LABEL_10:
        OUTLINED_FUNCTION_18();
        return;
      }

      (*(v26 + 8))(v1, v24);
      v34 = &unk_27F1E6C70;
      v35 = v12;
LABEL_9:
      sub_24DF8BFF4(v35, v34);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_24E13A9A8(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseJetCollectionViewController();
  result = objc_msgSendSuper2(&v4, sel_scrollViewDidScroll_, a1);
  if (*&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator])
  {

    [a1 bounds];
    sub_24E3476D8();
  }

  return result;
}

id BaseJetCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_24E13AB58()
{
  sub_24DE73FA0(*(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler));

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
}

id BaseJetCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseJetCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_49()
{
}

{
}

uint64_t sub_24E13AE34(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);

  return sub_24E13940C(a1, a2);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24E13AF78(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24E13AFCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24E13B058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E13C554(*a1, a2, type metadata accessor for ProfileSection);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5308);
  v5 = a2 + v4[12];
  v6 = a1[1];
  v7 = a1[2];
  v37 = *(v6 + 8);
  v38 = *(v6 + 16);
  v39 = *(v6 + 40);
  v8 = *(v6 + 48);
  v9 = *(v6 + 24);
  *v5 = *v6;
  *(v5 + 8) = v37;
  *(v5 + 16) = v38;
  *(v5 + 24) = v9;
  *(v5 + 40) = v39;
  *(v5 + 48) = v8;
  *(a2 + v4[16]) = *v7;
  v10 = a2 + v4[20];
  v11 = a1[3];
  v12 = a1[4];
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v36 = *(v11 + 32);
  v15 = *(v11 + 40);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  *(v10 + 32) = v36;
  *(v10 + 40) = v15;
  v16 = a2 + v4[24];
  v17 = *(v12 + 1);
  v18 = *(v12 + 24);
  v19 = *(v12 + 8);
  *v16 = *v12;
  *(v16 + 1) = v17;
  *(v16 + 8) = v19;
  *(v16 + 24) = v18;
  sub_24E13C554(a1[5], a2 + v4[28], type metadata accessor for ProfilePrivacySection);
  v20 = a2 + v4[32];
  v21 = a1[6];
  v22 = a1[7];
  v23 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v23;
  v24 = (a2 + v4[36]);
  v25 = *v22;
  v26 = v22[1];
  v27 = v22[2];
  v28 = v22[3];
  *v24 = *v22;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  sub_24DF8BD90(a1[8], a2 + v4[40], &qword_27F1E12A0);
  v29 = a2 + v4[44];
  v30 = a1[9];
  v31 = *(v30 + 16);
  v32 = *(v30 + 24);
  v33 = *(v30 + 32);
  v34 = *(v30 + 40);
  *v29 = *v30;
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v33;
  *(v29 + 40) = v34;

  sub_24E13C5B4(v25, v26);
}

uint64_t sub_24E13B2EC()
{
  OUTLINED_FUNCTION_3_70();
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = **(v0 + 24);
  OUTLINED_FUNCTION_1_84(v7, v8, v9);
  *(v10 + 48) = v2;
  *(v10 + 56) = v3;
  *(v10 + 64) = v4;
  *(v10 + 72) = v5;
  *(v10 + 80) = v6;
  *(v10 + 88) = v11;
  sub_24DF82DD4(v14, v12, v13);

  sub_24E13C544(v2, v3, v4, v5);
}

uint64_t sub_24E13B394()
{
  OUTLINED_FUNCTION_3_70();
  v1 = **(v0 + 24);
  OUTLINED_FUNCTION_1_84(v2, v3, v4);
  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 57) = v8;
  *(v5 + 64) = v1;
  *(v5 + 72) = v9;
  sub_24DF82DD4(v12, v10, v11);
}

uint64_t sub_24E13B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v16 = *(v2 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *v8;
  v11 = *(v8 + 8);
  v13 = *(v8 + 24);
  v12 = *(v8 + 16);
  v14 = *v9;
  LODWORD(v8) = *(v9 + 2);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v16;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v8;
  sub_24DF82DD4(v4, v3, v5);

  sub_24DF82DD4(v10, v11, v12);
}

id sub_24E13B4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  v9 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v10 = *(*a1 + 40);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  v11 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *(a2 + 48) = v11;
  *(a2 + 56) = v4;
  v12 = *(a1 + 16);
  LOBYTE(v4) = *(v12 + 8);
  LOBYTE(v8) = *(v12 + 16);
  v13 = *(v12 + 24);
  v24 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  *(a2 + 64) = *v12;
  *(a2 + 72) = v4;
  *(a2 + 80) = v8;
  *(a2 + 88) = v13;
  *(a2 + 96) = v24;
  *(a2 + 104) = v14;
  *(a2 + 112) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5320);
  sub_24DF8BD90(*(a1 + 24), a2 + v16[20], &qword_27F1E5328);
  v17 = a2 + v16[24];
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  *v17 = v20;
  *(v17 + 8) = v18;
  v21 = a2 + v16[28];
  v22 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  *v21 = v22;
  *(v21 + 8) = v19;
  sub_24DF82DD4(v5, v6, v7);

  return v24;
}

uint64_t sub_24E13B664()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 40);
  v7 = *(v0 + 32);
  v12 = v7;
  v8 = v13;

  if ((v8 & 1) == 0)
  {
    sub_24E348268();
    v9 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DF8BFF4(&v12, &qword_27F1E4208);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_24E13B7B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E52B8);
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v27[-v7];
  v28 = v1;
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v33 = v12;
  v34 = v14;
  sub_24DF90C4C();
  v33 = sub_24E3464E8();
  v34 = v15;
  v35 = v16 & 1;
  v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E52C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E52C8);
  v19 = sub_24E345778();
  v20 = sub_24DFB4C28(&qword_27F1E52D0, &qword_27F1E52C8);
  v21 = sub_24E13C4FC(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v22 = 1;
  swift_getOpaqueTypeConformance2();
  sub_24E346D38();
  type metadata accessor for GameCenterSettings();
  if (sub_24DFF2284())
  {
    v22 = [objc_opt_self() _gkIsOnline] ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v5 + 32))(a1, v8, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E52D8);
  v26 = (a1 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = sub_24DFEB7E4;
  v26[2] = v24;
  return result;
}

uint64_t sub_24E13BAC0(__int128 *a1)
{
  v2 = sub_24E345778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E52C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v10 = *a1;
  v19 = a1[1];
  v20 = v10;
  v17 = *(a1 + 4);
  v18 = *(a1 + 40);
  v11 = swift_allocObject();
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  *(v11 + 41) = *(a1 + 25);
  v15 = a1;
  sub_24DF8BD90(&v20, v16, &qword_27F1E2058);
  sub_24DF8BD90(&v19, v16, &qword_27F1E34E0);
  sub_24DF8BD90(&v17, v16, &qword_27F1E4208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E52E0);
  sub_24E13C418();
  sub_24E346BD8();
  sub_24E345768();
  sub_24DFB4C28(&qword_27F1E52D0, &qword_27F1E52C8);
  sub_24E13C4FC(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
  sub_24E346588();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E13BDB8()
{
  v0 = sub_24E13B664();
  swift_getKeyPath();
  sub_24E13C4FC(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
  sub_24E343538();

  swift_getKeyPath();
  sub_24E343558();

  swift_beginAccess();
  *(v0 + 17) = 5;
  swift_getKeyPath();
  sub_24E343548();
}

void *sub_24E13BEE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345BF8();
  v8 = 1;
  sub_24E13BFC8(__src);
  memcpy(__dst, __src, 0x5CuLL);
  memcpy(v10, __src, 0x5CuLL);
  sub_24DF8BD90(__dst, &v5, &qword_27F1E5300);
  sub_24DF8BFF4(v10, &qword_27F1E5300);
  memcpy(&v7[7], __dst, 0x5CuLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v7, 0x63uLL);
  *(a1 + 116) = 0;
  return result;
}

uint64_t sub_24E13BFC8@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_24E347CB8();
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v4 = sub_24E3464E8();
  v22 = v5;
  v23 = v4;
  v7 = v6;
  v24 = v8;
  sub_24E13C200();
  v9 = sub_24E3464E8();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() secondaryLabelColor];
  sub_24E346948();
  v15 = sub_24E346468();
  v17 = v16;
  LOBYTE(v2) = v18;
  v20 = v19;

  sub_24DFA92EC(v9, v11, v13 & 1);

  v34 = v23;
  v35 = v22;
  v36 = v7 & 1;
  v31 = v20;
  v32 = 0;
  v33 = 1;
  v37 = v24;
  v38[0] = &v34;
  v38[1] = &v32;
  v28 = v15;
  v29 = v17;
  v30 = v2 & 1;
  v26 = sub_24E346A58();
  v27 = sub_24E345F28();
  v38[2] = &v28;
  v38[3] = &v26;
  sub_24E13B424(v38, a1);

  sub_24DFA92EC(v28, v29, v30);

  sub_24DFA92EC(v34, v35, v36);
}

uint64_t sub_24E13C200()
{
  type metadata accessor for GameCenterSettings();
  if ((sub_24DFF2284() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (*v0)
  {

    v1 = sub_24DFECF6C();

    v2 = [v1 internal];

    v3 = [v2 globalFriendListAccess];
    if (v3 - 1 < 2)
    {
      goto LABEL_7;
    }

    if (v3 == -1)
    {
      return 0;
    }

    if (!v3)
    {
LABEL_7:
      v5 = sub_24E347CB8();
      v6 = GKGameCenterUIFrameworkBundle();
      v7 = GKGetLocalizedStringFromTableInBundle();

      v4 = sub_24E347CF8();
      return v4;
    }
  }

  else
  {
    sub_24E13C4FC(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    sub_24E345828();
    __break(1u);
  }

  type metadata accessor for GKGlobalFriendListAccess(0);
  result = sub_24E348C58();
  __break(1u);
  return result;
}

unint64_t sub_24E13C418()
{
  result = qword_27F1E52E8;
  if (!qword_27F1E52E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E52E0);
    sub_24DFB4C28(&qword_27F1E52F0, &qword_27F1E52F8);
    sub_24DFB4C28(&qword_27F1E4140, &qword_27F1E4148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E52E8);
  }

  return result;
}

uint64_t sub_24E13C4FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E13C544(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_24E00B1C4(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_24E13C554(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E13C5B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24E13C5FC()
{
  result = qword_27F1E5310;
  if (!qword_27F1E5310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E52D8);
    sub_24E13C6B4();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5310);
  }

  return result;
}

unint64_t sub_24E13C6B4()
{
  result = qword_27F1E5318;
  if (!qword_27F1E5318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E52B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E52C8);
    sub_24E345778();
    sub_24DFB4C28(&qword_27F1E52D0, &qword_27F1E52C8);
    sub_24E13C4FC(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5318);
  }

  return result;
}

void OUTLINED_FUNCTION_1_84(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  *a3 = v3;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = v6;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
}

uint64_t NearbyPlayersSection.body.getter()
{
  sub_24E13CFFC(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5330);
  sub_24E13D0F4();
  return sub_24E346D38();
}

uint64_t sub_24E13C8CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v4 = a1;
  v26 = a1;
  v31 = a3;
  v5 = sub_24E345738();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1788);
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v25[-v9];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5348);
  MEMORY[0x28223BE20](v30);
  v12 = &v25[-v11];
  v13 = sub_24E347CB8();
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();

  v16 = sub_24E347CF8();
  v18 = v17;

  v36 = v16;
  v37 = v18;
  v34 = v4;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  sub_24DF90C4C();
  sub_24E346C38();
  v32 = MEMORY[0x277D84F90];
  sub_24E13D458(&qword_27F1DFB98, MEMORY[0x277CDDA80]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBA0);
  sub_24DFB4C28(&qword_27F1DFBA8, &qword_27F1DFBA0);
  sub_24E3487E8();
  sub_24DFB4C28(qword_27F1E1790, &qword_27F1E1788);
  v19 = v28;
  sub_24E3468F8();
  (*(v29 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
  LOBYTE(v32) = v26;
  v33 = v27;
  sub_24E346B88();
  LOBYTE(v16) = v36;
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5358) + 36)];
  *v20 = v16;
  *(v20 + 1) = sub_24E13CD74;
  *(v20 + 2) = 0;
  type metadata accessor for GameCenterSettings();
  LOBYTE(v16) = sub_24DFF2214();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v16 & 1) == 0;
  v23 = &v12[*(v30 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_24DFEB7E4;
  v23[2] = v22;
  sub_24E13D1B0();
  sub_24E346648();
  return sub_24DE646A0(v12);
}

id sub_24E13CD74(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v3 = sub_24E347CF8();
  v5 = v4;
  v6 = sub_24E347CF8();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  v10 = MEMORY[0x277D837D0];
  sub_24E348918();
  if (qword_27F1DD788 != -1)
  {
    swift_once();
  }

  if (byte_27F1E20F0)
  {
    v11 = 0xE900000000000072;
    v12 = 0x6579614C656D6167;
  }

  else
  {
    if (qword_27F1DD790 != -1)
    {
      swift_once();
    }

    v12 = 0x73676E6974746573;
    if (!byte_27F1E20F1)
    {
      v12 = 0x65726F7453707061;
    }

    v11 = 0xE800000000000000;
  }

  *(inited + 96) = v10;
  *(inited + 72) = v12;
  *(inited + 80) = v11;
  v13 = sub_24E347C28();
  sub_24E32BF38(v3, v5, v6, v8, v13, v2);

  result = [objc_opt_self() shared];
  if (result)
  {
    v15 = result;
    [result setShouldAllowNearbyMultiplayer_];

    v16 = [objc_opt_self() proxyForLocalPlayer];
    v17 = [v16 utilityServicePrivate];

    [v17 refreshPreferences];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E13CFFC@<X0>(uint64_t a1@<X8>)
{
  [objc_opt_self() wapiCapability];
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_24E13D0F4()
{
  result = qword_27F1E5338;
  if (!qword_27F1E5338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5330);
    sub_24E13D1B0();
    sub_24E13D458(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5338);
  }

  return result;
}

unint64_t sub_24E13D1B0()
{
  result = qword_27F1E5340;
  if (!qword_27F1E5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5348);
    sub_24E13D268();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5340);
  }

  return result;
}

unint64_t sub_24E13D268()
{
  result = qword_27F1E5350;
  if (!qword_27F1E5350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1788);
    sub_24DFB4C28(qword_27F1E1790, &qword_27F1E1788);
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E45A0, &qword_27F1E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5350);
  }

  return result;
}

unint64_t sub_24E13D3C0()
{
  result = qword_27F1E5360;
  if (!qword_27F1E5360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5368);
    sub_24E13D0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5360);
  }

  return result;
}

uint64_t sub_24E13D458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FriendSuggestionLockup()
{
  result = qword_27F1E5370;
  if (!qword_27F1E5370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E13D514()
{
  sub_24E13D6C8(319, &qword_27F1E15F0, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E13D6C8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E028218();
      if (v2 <= 0x3F)
      {
        sub_24E13D6C8(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24DF88A8C(319, &qword_27F1E21A0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FriendSuggestionInvitationStateManager();
            if (v5 <= 0x3F)
            {
              sub_24E13D6C8(319, &qword_27F1E5380, &type metadata for FriendSuggestionLockup.MetricsContext, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24E01CA4C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24E13D6C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24E13D720(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_24E13D760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E13D7E4()
{
  v1 = *(v0 + *(type metadata accessor for FriendSuggestionLockup() + 44));
  if (v1 && (v2 = [v1 alias]) != 0)
  {
    v3 = v2;
    sub_24E347CF8();

    sub_24E343AA8();
    v4 = sub_24E3439A8();

    return v4;
  }

  else
  {
    v6 = sub_24E13D8A4();
    sub_24E343AA8();
    if (v6)
    {
      return sub_24E343948();
    }

    else
    {
      return sub_24E3438B8();
    }
  }
}

BOOL sub_24E13D8A4()
{
  v1 = objc_opt_self();
  v2 = [*(v0 + *(type metadata accessor for FriendSuggestionLockup() + 32)) contact];
  v3 = [v1 messagesRecipientHandleForContact_];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_24E13D92C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FriendSuggestionLockup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_24E345D08();
  v8 = sub_24E345BF8();
  OUTLINED_FUNCTION_1_85();
  sub_24E1409B4(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_24E13FFF8(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5388) + 52);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  *a1 = sub_24E14005C;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5390);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24E13DABC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for FriendSuggestionLockup();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5398);
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v58 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E53A0);
  MEMORY[0x28223BE20](v69);
  v70 = &v58 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E53A8);
  v68 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E53B0);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v76 = &v58 - v13;
  v14 = *(a1 + *(v3 + 44));
  v83 = v14;
  if (!v14)
  {
    v83 = [*(a1 + *(v3 + 32)) contact];
  }

  v71 = v3;
  v15 = v14;
  sub_24E346E28();
  sub_24E3453D8();
  v77 = v119;
  v79 = v121;
  v81 = v124;
  v82 = v123;
  v16 = v14 == 0;
  v108[96] = v14 == 0;
  v78 = v120;
  v108[88] = v120;
  v80 = v122;
  v108[80] = v122;
  v17 = sub_24E346DF8();
  v19 = v18;
  sub_24E13E57C(a1, v84);
  memcpy(v109, v84, 0x48uLL);
  v109[9] = v17;
  v109[10] = v19;
  memcpy(&v118[6], v109, 0x58uLL);
  memcpy(v110, v84, sizeof(v110));
  v111 = v17;
  v112 = v19;
  sub_24DF8BD90(v109, &KeyPath, &qword_27F1E4B38);
  sub_24DF8BFF4(v110, &qword_27F1E4B38);
  v20 = sub_24E345D08();
  LOBYTE(KeyPath) = 1;
  sub_24E13E8BC(a1, v116);
  *&v108[7] = v116[0];
  *&v108[23] = v116[1];
  *&v108[39] = v116[2];
  *&v108[55] = v116[3];
  v21 = KeyPath;
  v22 = sub_24E346218();
  sub_24E3451B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = 1;
  if (!v14)
  {
    v59 = v21;
    v60 = v22;
    v61 = v20;
    if (sub_24E13D8A4())
    {
      v32 = v63;
      sub_24E1409B4(a1, v63, type metadata accessor for FriendSuggestionLockup);
      v33 = (*(v62 + 80) + 16) & ~*(v62 + 80);
      v34 = swift_allocObject();
      v35 = sub_24E13FFF8(v32, v34 + v33);
      MEMORY[0x28223BE20](v35);
      *(&v58 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF880);
      sub_24DFB4858();
      v36 = v64;
      sub_24E346BD8();
      KeyPath = swift_getKeyPath();
      LOWORD(v96) = 256;
      sub_24DFB4C28(&qword_27F1E53D0, &qword_27F1E5398);
      sub_24E11FB48();
      v37 = v70;
      v38 = v66;
      sub_24E346588();
      sub_24DE73F34(KeyPath, v96);
      (*(v65 + 8))(v36, v38);
      v39 = v71;
      sub_24E15567C();
      v40 = [*(a1 + *(v39 + 32)) contact];
      v41 = [v40 identifier];

      v42 = sub_24E347CF8();
      v44 = v43;

      KeyPath = v42;
      v96 = v44;
      MEMORY[0x28223BE20](v45);
      *(&v58 - 2) = &KeyPath;
      LOBYTE(v42) = sub_24E023F8C();

      v46 = swift_getKeyPath();
      v47 = swift_allocObject();
      *(v47 + 16) = v42 & 1;
      v48 = (v37 + *(v69 + 36));
      *v48 = v46;
      v48[1] = sub_24DFEB7E4;
      v48[2] = v47;
      v49 = a1 + *(v39 + 28);
      v50 = *v49;
      v51 = *(v49 + 8);
      LOBYTE(v84[0]) = v50;
      v84[1] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
      sub_24E346BA8();
      sub_24E140514();
      v52 = v67;
      sub_24E346828();

      sub_24DF8BFF4(v37, &qword_27F1E53A0);
      (*(v68 + 32))(v76, v52, v75);
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v16 = 1;
    v20 = v61;
    LOBYTE(v21) = v59;
    LOBYTE(v22) = v60;
  }

  v53 = v76;
  __swift_storeEnumTagSinglePayload(v76, v31, 1, v75);
  v54 = v74;
  sub_24DE64888(v53, v74);
  v84[0] = v83;
  v72 = v16;
  LOBYTE(v84[1]) = v16;
  *(&v84[1] + 1) = *v115;
  HIDWORD(v84[1]) = *&v115[3];
  v84[2] = 0x4050000000000000;
  v84[3] = v77;
  LOBYTE(v84[4]) = v78;
  *(&v84[4] + 1) = *v114;
  HIDWORD(v84[4]) = *&v114[3];
  v84[5] = v79;
  LOBYTE(v84[6]) = v80;
  *(&v84[6] + 1) = *v113;
  HIDWORD(v84[6]) = *&v113[3];
  v84[7] = v82;
  v84[8] = v81;
  LOWORD(v84[9]) = 256;
  memcpy(&v84[9] + 2, v118, 0x5EuLL);
  v55 = v73;
  memcpy(v73, v84, 0xA8uLL);
  v85[0] = v20;
  v85[1] = 0;
  LOBYTE(v85[2]) = v21;
  memcpy(&v85[2] + 1, v108, 0x47uLL);
  LOBYTE(v85[11]) = v22;
  *(&v85[11] + 1) = *v117;
  HIDWORD(v85[11]) = *&v117[3];
  v85[12] = v24;
  v85[13] = v26;
  v85[14] = v28;
  v85[15] = v30;
  LOBYTE(v85[16]) = 0;
  memcpy(v55 + 21, v85, 0x81uLL);
  v55[38] = 0;
  *(v55 + 312) = 1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E53B8);
  sub_24DE64888(v54, v55 + *(v56 + 80));
  sub_24DF8BD90(v84, &KeyPath, &qword_27F1E53C0);
  sub_24DF8BD90(v85, &KeyPath, &qword_27F1E53C8);
  sub_24DF8BFF4(v53, &qword_27F1E53B0);
  sub_24DF8BFF4(v54, &qword_27F1E53B0);
  v86[0] = v20;
  v86[1] = 0;
  v87 = v21;
  memcpy(v88, v108, 0x47uLL);
  v88[71] = v22;
  *v89 = *v117;
  *&v89[3] = *&v117[3];
  v90 = v24;
  v91 = v26;
  v92 = v28;
  v93 = v30;
  v94 = 0;
  sub_24DF8BFF4(v86, &qword_27F1E53C8);
  KeyPath = v83;
  LOBYTE(v96) = v72;
  *(&v96 + 1) = *v115;
  HIDWORD(v96) = *&v115[3];
  v97 = 0x4050000000000000;
  v98 = v77;
  v99 = v78;
  *v100 = *v114;
  *&v100[3] = *&v114[3];
  v101 = v79;
  v102 = v80;
  *v103 = *v113;
  *&v103[3] = *&v113[3];
  v104 = v82;
  v105 = v81;
  v106 = 256;
  memcpy(v107, v118, sizeof(v107));
  return sub_24DF8BFF4(&KeyPath, &qword_27F1E53C0);
}