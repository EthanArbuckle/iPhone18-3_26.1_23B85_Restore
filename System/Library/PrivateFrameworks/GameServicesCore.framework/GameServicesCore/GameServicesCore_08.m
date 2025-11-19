uint64_t sub_227BC12E0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227BC132C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 72))
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

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227BC1368(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RefreshContentsDataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *storeEnumTagSinglePayload for RefreshContentsDataType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227BC1520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 80))
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

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227BC155C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ForcedOnboardingState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[7])
    {
      return OUTLINED_FUNCTION_161(*a1 + 254);
    }

    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_161(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_161(v5);
}

uint64_t storeEnumTagSinglePayload for ForcedOnboardingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of GameServicesSupport.authenticatedPlayerID.getter()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *(OUTLINED_FUNCTION_27_4(v0, v1) + 24);
  OUTLINED_FUNCTION_32();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_50(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_6(v7);

  return v10(v9);
}

uint64_t sub_227BC1784()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_58();

  return v7(v6);
}

uint64_t dispatch thunk of GameServicesSupport.fetchGameKitDirectory(for:)()
{
  OUTLINED_FUNCTION_119();
  v5 = *(OUTLINED_FUNCTION_13_10(v0, v1, v2, v3, v4) + 40);
  OUTLINED_FUNCTION_28_2();
  v14 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50(v9);
  *v10 = v11;
  v10[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_19_6();

  return v12();
}

uint64_t dispatch thunk of GameServicesSupport.getContacts(for:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.getGameMetadata(bundleID:)()
{
  OUTLINED_FUNCTION_119();
  v5 = *(OUTLINED_FUNCTION_13_10(v0, v1, v2, v3, v4) + 56);
  OUTLINED_FUNCTION_28_2();
  v14 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50(v9);
  *v10 = v11;
  v10[1] = sub_227B355D0;
  OUTLINED_FUNCTION_19_6();

  return v12();
}

uint64_t dispatch thunk of GameServicesSupport.sendRequest(data:headers:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_29_4(a1, a2, a3, a4, a5, a6, a7) + 80);
  OUTLINED_FUNCTION_28_2();
  v16 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_50(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_35(v12);
  v14 = OUTLINED_FUNCTION_38_4();

  return v16(v14);
}

uint64_t sub_227BC1CF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2);
}

uint64_t dispatch thunk of GameServicesSupport.fetchDebugImage(url:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 88);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.fetchLiveImage(url:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 96);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.listAuthenticatedLocalPlayers()()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *(OUTLINED_FUNCTION_27_4(v0, v1) + 104);
  OUTLINED_FUNCTION_32();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_50(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_6(v7);

  return v10(v9);
}

uint64_t dispatch thunk of GameServicesSupport.achievementEarned(achievementDescription:player:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  v14 = *(OUTLINED_FUNCTION_5_12(v10, v11, v12, v13) + 112);
  OUTLINED_FUNCTION_32();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_50(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_4_12(v19);
  OUTLINED_FUNCTION_42_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameServicesSupport.launchGame(with:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 128);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.notifyGame(with:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 136);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.scoreSubmitted(entry:leaderboardDescription:player:)()
{
  OUTLINED_FUNCTION_119();
  v5 = *(OUTLINED_FUNCTION_13_10(v0, v1, v2, v3, v4) + 160);
  OUTLINED_FUNCTION_28_2();
  v14 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_35(v10);
  OUTLINED_FUNCTION_19_6();

  return v12();
}

uint64_t dispatch thunk of GameServicesSupport.cachedLocalPlayerOnboardingState(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  v14 = *(OUTLINED_FUNCTION_5_12(v10, v11, v12, v13) + 168);
  OUTLINED_FUNCTION_32();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_50(v18);
  *v19 = v20;
  v19[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_42_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameServicesSupport.setCachedLocalPlayerOnboardingState(savedVersions:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  v14 = *(OUTLINED_FUNCTION_5_12(v10, v11, v12, v13) + 176);
  OUTLINED_FUNCTION_32();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_50(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_4_12(v19);
  OUTLINED_FUNCTION_42_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameServicesSupport.setCachedProfileSettingsForLocalPlayer(_:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 184);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.invalidateCachedLocalPlayerProfile()()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *(OUTLINED_FUNCTION_27_4(v0, v1) + 192);
  OUTLINED_FUNCTION_32();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_50(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_6(v7);

  return v10(v9);
}

uint64_t dispatch thunk of GameServicesSupport.getGamesPlayedSummaries(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  v14 = *(OUTLINED_FUNCTION_5_12(v10, v11, v12, v13) + 200);
  OUTLINED_FUNCTION_32();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_50(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_4_12(v19);
  OUTLINED_FUNCTION_42_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameServicesSupport.getGameMetadata(for:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 208);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227BC2A94()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of GameServicesSupport.readGamesPlayedSummaries(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  v14 = *(OUTLINED_FUNCTION_5_12(v10, v11, v12, v13) + 216);
  OUTLINED_FUNCTION_32();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_50(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_4_12(v19);
  OUTLINED_FUNCTION_42_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameServicesSupport.readGameMetadata(for:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 224);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.getAppMetadata(for:adamIDs:ttlOption:environment:localDataOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_29_4(a1, a2, a3, a4, a5, a6, a7) + 232);
  OUTLINED_FUNCTION_28_2();
  v16 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_50(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_35(v12);
  v14 = OUTLINED_FUNCTION_38_4();

  return v16(v14);
}

uint64_t dispatch thunk of GameServicesSupport.getRecentlyPlayedBiomeData(for:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 240);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.getGamePolicies(for:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v3 = *(OUTLINED_FUNCTION_2_19(v0, v1, v2) + 248);
  OUTLINED_FUNCTION_28_2();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_32(v8);
  OUTLINED_FUNCTION_33_0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesSupport.getInstallMetadata(for:deleteNonmatchingCachedEntries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_119();
  v23 = v9 + 256;
  v24 = *(v9 + 256) + **(v9 + 256);
  v10 = *(*(v9 + 256) + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_50(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_35(v12);
  OUTLINED_FUNCTION_42_2();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t dispatch thunk of GameServicesSupport.getInternalPlayerID(player:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v14 = *(v0 + 264) + **(v0 + 264);
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_32(v3);
  OUTLINED_FUNCTION_33_0();

  return v8(v5, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_227BC328C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_227D4D5F8();

  return sub_227BC32D0(a1, v5);
}

unint64_t sub_227BC32D0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_227BC3394(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x22AAA6350](v8, a1);
    sub_227BBF8F0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_dynamicCast();
}

uint64_t PreferencesService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore18PreferencesService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227BC350C()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BB98);
  __swift_project_value_buffer(v0, qword_280E7BB98);
  return sub_227D49E38();
}

uint64_t sub_227BC3558()
{
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_28_7();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BB98);
}

uint64_t static PreferencesService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_28_7();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BB98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PreferencesService.__allocating_init(actorSystem:dataProvider:)()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PreferencesService.init(actorSystem:dataProvider:)(v2, v0);
  return v5;
}

uint64_t PreferencesService.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = sub_227D49EF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v23 = OBJC_IVAR____TtC16GameServicesCore18PreferencesService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_actorSystem) = a1;
  v10 = type metadata accessor for PreferencesService();
  v24 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_16();
  sub_227B0F730(v11);
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v12);

  v21 = v10;
  sub_227D493B8();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_id, v9, v5);
  v13 = type metadata accessor for AuthenticationService();

  v14 = v22;

  v15 = sub_227CAAD7C(a1, v14);
  v16 = (v3 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_authenticationService);
  *(v3 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_authenticationService + 24) = v13;
  v16[4] = sub_227B0F730(&unk_27D7E81B8);
  *v16 = v15;
  v17 = type metadata accessor for OnboardingService();

  v18 = sub_227D3C4F0();
  v19 = (v3 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_onboardingService);
  *(v3 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_onboardingService + 24) = v17;
  v19[4] = sub_227B0F730(&unk_27D7E81C0);
  *v19 = v18;
  v24 = *(v3 + v23);

  sub_227D49398();

  return v3;
}

uint64_t type metadata accessor for PreferencesService()
{
  result = qword_27D7F8E20;
  if (!qword_27D7F8E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreferencesService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49D58();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227BC3AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[3];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[9];
    OUTLINED_FUNCTION_36(v17[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v20 = v17[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227BC3FDC(&qword_27D7E6BD0);
    sub_227BC3FDC(&qword_27D7E6BE0);
    OUTLINED_FUNCTION_17();
    v21 = v17[9];
    sub_227D49D08();
    v26 = v17[6];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v27 = *(MEMORY[0x277D0CE28] + 4);
    v28 = swift_task_alloc();
    v17[10] = v28;
    type metadata accessor for PreferencesService();
    OUTLINED_FUNCTION_0_33();
    sub_227B0F730(v29);
    OUTLINED_FUNCTION_47();
    *v28 = v30;
    v28[1] = sub_227BC3D88;
    v31 = v17[9];
    v32 = v17[6];
    v33 = v17[3];
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B00](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v22 = swift_task_alloc();
    v17[12] = v22;
    *v22 = v17;
    v22[1] = sub_227B48470;
    v23 = v17[3];
    OUTLINED_FUNCTION_54_4();

    return sub_227BC3F1C();
  }
}

uint64_t sub_227BC3D88()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC3E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227B486D8;

  return PreferencesService.listLocalPlayers()();
}

uint64_t sub_227BC3F38()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_9(*(v0 + 16));
  v1 = *(MEMORY[0x277D0D4A0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_35(v2);
  v3 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x282165230](v3);
}

unint64_t sub_227BC3FDC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227BC4050(v4);
    result = OUTLINED_FUNCTION_56_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227BC4050(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67C0, &unk_227D4FB20);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t PreferencesService.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v1[13] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227BC423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  v13 = v12[3];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[15];
    v15 = v12[12];
    v17 = v12[8];
    v16 = v12[9];
    v18 = v12[7];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[3]);
    v20 = OUTLINED_FUNCTION_25_4();
    v21(v20);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_6_7(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_5_13(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_18_7();
    if (v14)
    {
      v24 = v12[14];
      (*(v12[11] + 8))(v12[12], v12[10]);
      (*(v24 + 8))(v12[15], v12[13]);
      v25 = v12[15];
      v26 = v12[12];
      v27 = v12[9];
      v28 = v12[6];

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    v22 = v12[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v23 = v12[15];
    sub_227D49D08();
    v36 = v12[6];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v37 = *(MEMORY[0x277D0CE38] + 4);
    v38 = swift_task_alloc();
    v12[16] = v38;
    type metadata accessor for PreferencesService();
    OUTLINED_FUNCTION_0_33();
    sub_227B0F730(v39);
    OUTLINED_FUNCTION_48_0();
    *v38 = v40;
    v38[1] = sub_227BC44E0;
    v41 = v12[15];
    v42 = v12[6];
    v43 = v12[3];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }

  else
  {
    v31 = swift_task_alloc();
    v12[18] = v31;
    *v31 = v12;
    v31[1] = sub_227BC46B4;
    v32 = v12[3];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227BC4B0C(v33);
  }
}

uint64_t sub_227BC44E0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC45DC()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v7 = OUTLINED_FUNCTION_42();
  v8(v7);
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_57_0();
  v11(v10);
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[6];

  OUTLINED_FUNCTION_18();

  return v16();
}

uint64_t sub_227BC46B4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[9];
  v8 = v1[6];

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_227BC4814(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227BC49AC;

  return PreferencesService.refreshOnboarding(for:)();
}

uint64_t sub_227BC49AC()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2] - 8;
  v6 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_9_2();
  v10(v9);

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227BC4B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BC4B28, v1);
}

uint64_t sub_227BC4B28()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_9(v2[3]);
  v3 = *(MEMORY[0x277D0D470] + 4);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_227B2F79C;
  v5 = OUTLINED_FUNCTION_53(v2[2]);

  return MEMORY[0x2821651F8](v5, v0, v1);
}

uint64_t PreferencesService.describeOnboarding(for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227BC4D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_45_3();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_25_4();
    v22(v21);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_6_7(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_5_13(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_18_7();
    if (v17)
    {
      v27 = v18[15];
      v28 = OUTLINED_FUNCTION_64();
      v29(v28);
      (*(v27 + 8))(v18[16], v18[14]);
      OUTLINED_FUNCTION_89_0();
      v30 = v18[7];

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_54_4();

      return v31();
    }

    else
    {
      v23 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v24 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E81C8, &unk_227D69A00);
      sub_227BC57B8(&unk_27D7E81D0);
      OUTLINED_FUNCTION_20_5();
      sub_227BC57B8(v25);
      OUTLINED_FUNCTION_17();
      v26 = v18[16];
      sub_227D49D08();
      v39 = v18[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE28] + 4);
      v41 = swift_task_alloc();
      v18[17] = v41;
      type metadata accessor for PreferencesService();
      OUTLINED_FUNCTION_0_33();
      sub_227B0F730(v42);
      OUTLINED_FUNCTION_48_0();
      *v41 = v43;
      v41[1] = sub_227BC5088;
      v44 = v18[16];
      v45 = v18[7];
      v46 = v18[4];
      v47 = v18[2];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[19] = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_50_4(v34);
    OUTLINED_FUNCTION_54_4();

    return sub_227BC555C(v36, v37);
  }
}

uint64_t sub_227BC5088()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC5184()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = *(v2 + 8);
  v12 = OUTLINED_FUNCTION_57_0();
  v13(v12);
  OUTLINED_FUNCTION_89_0();
  v14 = v0[7];

  OUTLINED_FUNCTION_18();

  return v15();
}

uint64_t sub_227BC524C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[10];
  v8 = v1[7];

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_227BC53AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227BC82EC;

  return PreferencesService.describeOnboarding(for:)();
}

uint64_t sub_227BC555C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227BC557C, v2);
}

uint64_t sub_227BC557C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_9(*(v0 + 32));
  v1 = *(MEMORY[0x277D0D480] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 40) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_43_4(v2);

  return MEMORY[0x282165208](v4);
}

uint64_t sub_227BC561C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_227BC5744, v11, 0);
  }
}

uint64_t sub_227BC5744()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  v2 = sub_227D49FE8();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  OUTLINED_FUNCTION_18();

  return v3();
}

unint64_t sub_227BC57B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E81C8, &unk_227D69A00);
    sub_227B0F730(v4);
    result = OUTLINED_FUNCTION_56_3();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t PreferencesService.describeOnboarding2(for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227BC59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_45_3();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_25_4();
    v22(v21);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_6_7(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_5_13(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_18_7();
    if (v17)
    {
      v27 = v18[15];
      v28 = OUTLINED_FUNCTION_64();
      v29(v28);
      (*(v27 + 8))(v18[16], v18[14]);
      OUTLINED_FUNCTION_89_0();
      v30 = v18[7];

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_54_4();

      return v31();
    }

    else
    {
      v23 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v24 = v18[16];
      sub_227D49FE8();
      sub_227B0F730(&unk_27D7E81D8);
      OUTLINED_FUNCTION_20_5();
      sub_227B0F730(v25);
      OUTLINED_FUNCTION_17();
      v26 = v18[16];
      sub_227D49D08();
      v39 = v18[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE28] + 4);
      v41 = swift_task_alloc();
      v18[17] = v41;
      type metadata accessor for PreferencesService();
      OUTLINED_FUNCTION_0_33();
      sub_227B0F730(v42);
      OUTLINED_FUNCTION_48_0();
      *v41 = v43;
      v41[1] = sub_227BC5CC8;
      v44 = v18[16];
      v45 = v18[7];
      v46 = v18[4];
      v47 = v18[2];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[19] = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_50_4(v34);
    OUTLINED_FUNCTION_54_4();

    return sub_227BC5F74(v36, v37);
  }
}

uint64_t sub_227BC5CC8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC5DC4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227BC82EC;

  return PreferencesService.describeOnboarding2(for:)();
}

uint64_t sub_227BC5F74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227BC5F94, v2);
}

uint64_t sub_227BC5F94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_9(*(v0 + 32));
  v1 = *(MEMORY[0x277D0D480] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 40) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_43_4(v2);

  return MEMORY[0x282165208](v4);
}

uint64_t PreferencesService.setProfileSettings(_:for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4A038();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E81F0, &qword_227D69B80);
  v0[17] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[18] = v20;
  v22 = *(v21 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v23 = sub_227D49D58();
  v0[20] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v0[21] = v24;
  v26 = *(v25 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v27 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_227BC6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  v13 = v12[4];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[22];
    v15 = v12[19];
    v17 = v12[15];
    v16 = v12[16];
    v18 = v12[14];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[4]);
    (*(v17 + 16))(v16, v19, v18);
    sub_227D49478();
    sub_227B0F730(&unk_27D7E81F8);
    sub_227B0F730(&unk_27D7E8200);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v27 = v12[22];
    v28 = v12[13];
    (*(v12[9] + 16))(v12[10], v12[3], v12[8]);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_6_7(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_5_13(&qword_27D7E6BE8);
    sub_227D49D18();
    v29 = v12[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v30 = v12[22];
    sub_227D49D08();
    v31 = v12[7];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v32 = *(MEMORY[0x277D0CE38] + 4);
    v33 = swift_task_alloc();
    v12[23] = v33;
    type metadata accessor for PreferencesService();
    OUTLINED_FUNCTION_0_33();
    sub_227B0F730(v34);
    OUTLINED_FUNCTION_48_0();
    *v33 = v35;
    v33[1] = sub_227BC6650;
    v36 = v12[22];
    v37 = v12[7];
    v38 = v12[4];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }

  else
  {
    v20 = swift_task_alloc();
    v12[25] = v20;
    *v20 = v12;
    v20[1] = sub_227BC686C;
    v21 = v12[3];
    v22 = v12[4];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227BC6F98(v23, v24);
  }
}

uint64_t sub_227BC6650()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC674C()
{
  OUTLINED_FUNCTION_111();
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = OUTLINED_FUNCTION_62();
  v11(v10);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v12 = *(v2 + 8);
  v13 = OUTLINED_FUNCTION_57_0();
  v14(v13);
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[7];

  OUTLINED_FUNCTION_18();

  return v21();
}

uint64_t sub_227BC686C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[22];
  v6 = v1[19];
  v7 = v1[16];
  v8 = v1[13];
  v9 = v1[10];
  v10 = v1[7];

  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_227BC6A10()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = *(v2 + 8);
  v12 = OUTLINED_FUNCTION_57_0();
  v13(v12);
  v14 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[7];

  OUTLINED_FUNCTION_18();

  return v21();
}

uint64_t sub_227BC6B14(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_227BC6DB4;

  return PreferencesService.setProfileSettings(_:for:)();
}

uint64_t sub_227BC6DB4()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = v1[4];
  v6 = v1[3];
  v7 = v1[2];
  v8 = v1[5] - 8;
  v9 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;

  (*(v6 + 8))(v5, v7);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_9_2();
  v13(v12);

  OUTLINED_FUNCTION_18();

  return v14();
}

uint64_t sub_227BC6F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227BC6FB8, v2);
}

uint64_t sub_227BC6FB8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_9(v0[4]);
  v1 = *(MEMORY[0x277D0D478] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B45D74;
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_53(v0[2]);

  return MEMORY[0x282165200](v4);
}

uint64_t static PreferencesService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PreferencesService();
  sub_227D49D78();
  OUTLINED_FUNCTION_1_16();
  sub_227B0F730(v5);
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore18PreferencesService_id;
    v10 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v10);
    (*(v11 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_actorSystem) = a2;
  }

  return v8;
}

uint64_t PreferencesService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore18PreferencesService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore18PreferencesService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_16();
  sub_227B0F730(v3);
  sub_227D493C8();
  v4 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 8))(v0 + v1);
  v6 = *(v0 + v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_authenticationService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_onboardingService));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PreferencesService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore18PreferencesService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18PreferencesService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    PreferencesService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227BC7324()
{
  sub_227D4DB58();
  type metadata accessor for PreferencesService();
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t PreferencesService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for PreferencesService();
    OUTLINED_FUNCTION_0_33();
    sub_227B0F730(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227BC7418@<X0>(uint64_t *a1@<X8>)
{
  result = PreferencesService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227BC74BC()
{
  v1 = *v0;
  type metadata accessor for PreferencesService();
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v2);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227BC7524()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for PreferencesService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BC780C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for PreferencesService();
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v4);
  v5 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v5);
}

uint64_t sub_227BC7884()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return PreferencesService.listLocalPlayers()();
}

uint64_t sub_227BC7908()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return PreferencesService.refreshOnboarding(for:)();
}

uint64_t sub_227BC7994()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_28_0(v3);

  return PreferencesService.describeOnboarding(for:)();
}

uint64_t sub_227BC7A28()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_28_0(v3);

  return PreferencesService.describeOnboarding2(for:)();
}

uint64_t sub_227BC7ABC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return PreferencesService.setProfileSettings(_:for:)();
}

uint64_t sub_227BC7B54()
{
  v1 = *v0;
  type metadata accessor for PreferencesService();
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v2);
  OUTLINED_FUNCTION_8_7();
  sub_227B0F730(v3);
  return sub_227D49428();
}

uint64_t sub_227BC7BFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PreferencesService();
  OUTLINED_FUNCTION_0_33();
  sub_227B0F730(v3);
  OUTLINED_FUNCTION_8_7();
  sub_227B0F730(v4);
  OUTLINED_FUNCTION_9_0();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227BC7CA8()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of PreferencesService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_20();
  v1 = *(*v0 + 128);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);

  return v7();
}

uint64_t dispatch thunk of PreferencesService.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v3 = *(*v0 + 136);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v2);
}

uint64_t dispatch thunk of PreferencesService.describeOnboarding(for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of PreferencesService.describeOnboarding2(for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of PreferencesService.setProfileSettings(_:for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v3 = *(v2 + 160);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v1, v0);
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return swift_getWitnessTable();
}

uint64_t LeaderboardService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227BC83D0()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BBB8);
  __swift_project_value_buffer(v0, qword_280E7BBB8);
  return sub_227D49E58();
}

uint64_t sub_227BC841C()
{
  if (_MergedGlobals_7 != -1)
  {
    OUTLINED_FUNCTION_60_3();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BBB8);
}

uint64_t static LeaderboardService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_7 != -1)
  {
    OUTLINED_FUNCTION_60_3();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BBB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227BC8508()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_227BC8554(v2, v0);
  return v5;
}

uint64_t sub_227BC8554(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = sub_227D49EF8();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_actorSystem) = a1;
  type metadata accessor for LeaderboardService();
  v17 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_4_13();
  sub_227B0F774(v9, v10);
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v11, v12);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_id, v7, v15);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider) = v16;
  v17 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for LeaderboardService()
{
  result = qword_27D7F92C0;
  if (!qword_27D7F92C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LeaderboardService.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_110_2(v10);
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BC88B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_10_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8270, &unk_227D619F0);
      sub_227BC8FC0();
      sub_227BC90F8();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_79_4(v44);
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      v23[1] = sub_227BC8B18;
      v48 = v18[14];
      v49 = v18[8];
      v50 = v18[5];
      OUTLINED_FUNCTION_1_2(v51);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227BC8DB0(v40);
  }
}

uint64_t sub_227BC8B18()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC8C10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227B4AFB0;

  return LeaderboardService.describe(leaderboards:)();
}

uint64_t sub_227BC8DB0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BC8DCC, v1);
}

uint64_t sub_227BC8DCC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20184(v5);
}

unint64_t sub_227BC8E60()
{
  result = qword_27D7E8260;
  if (!qword_27D7E8260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8258, &unk_227D589F0);
    sub_227B15A74(&qword_27D7E7148, &qword_27D7E6938, &qword_227D4E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8260);
  }

  return result;
}

unint64_t sub_227BC8F10()
{
  result = qword_27D7E8268;
  if (!qword_27D7E8268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8258, &unk_227D589F0);
    sub_227B15A74(&qword_27D7E7150, &qword_27D7E6938, &qword_227D4E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8268);
  }

  return result;
}

unint64_t sub_227BC8FC0()
{
  result = qword_27D7E8278;
  if (!qword_27D7E8278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8270, &unk_227D619F0);
    sub_227BC9044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8278);
  }

  return result;
}

unint64_t sub_227BC9044()
{
  result = qword_27D7E8280;
  if (!qword_27D7E8280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8288, &unk_227D58A00);
    sub_227B0F774(&qword_27D7E8290, MEMORY[0x277D0D320]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8280);
  }

  return result;
}

unint64_t sub_227BC90F8()
{
  result = qword_27D7E8298;
  if (!qword_27D7E8298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8270, &unk_227D619F0);
    sub_227BC917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8298);
  }

  return result;
}

unint64_t sub_227BC917C()
{
  result = qword_27D7E82A0;
  if (!qword_27D7E82A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8288, &unk_227D58A00);
    sub_227B0F774(&qword_27D7E82A8, MEMORY[0x277D0D320]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E82A0);
  }

  return result;
}

uint64_t LeaderboardService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_227D49458();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[14] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49D58();
  v1[17] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227BC93D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[7];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    sub_227D49478();
    sub_227B67D40();
    sub_227B67DF0();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[19];
    if (v17)
    {
      v22 = OUTLINED_FUNCTION_99_2();
      v23(v22);
      v24 = OUTLINED_FUNCTION_17_0();
      v25(v24);
      OUTLINED_FUNCTION_109_3();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    else
    {
      v33 = v18[13];
      v18[3] = v18[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_19_7();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v34 = v18[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v35 = v18[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      sub_227BCA200();
      OUTLINED_FUNCTION_17();
      v36 = v18[19];
      sub_227D49D08();
      v45 = v18[10];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v46 = *(MEMORY[0x277D0CE28] + 4);
      v47 = swift_task_alloc();
      v18[20] = v47;
      type metadata accessor for LeaderboardService();
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v48, v49);
      OUTLINED_FUNCTION_48();
      *v47 = v50;
      v47[1] = sub_227BC96FC;
      v51 = v18[19];
      v52 = v18[10];
      v53 = v18[7];
      OUTLINED_FUNCTION_1_2(v54);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v18[22] = v26;
    *v26 = v18;
    v26[1] = sub_227BC98CC;
    v27 = v18[6];
    v28 = v18[7];
    OUTLINED_FUNCTION_53(v18[5]);
    OUTLINED_FUNCTION_46();

    return sub_227BC9FA8(v29, v30);
  }
}

uint64_t sub_227BC96FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BC97F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v20 = OUTLINED_FUNCTION_70_3();
  v21(v20);
  (*(v19 + 8))(v15, v16);
  (*(v18 + 8))(v12, v14);
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_57_0();
  v24(v23);
  v25 = v13[4];
  v26 = v13[19];
  v27 = v13[16];
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227BC98CC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_93();
  v2 = v1[22];
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_209();
  v6 = *(v5 + 152);
  v7 = v1[16];
  v8 = v1[13];
  v9 = v1[10];

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_117_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227BC9A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v20 = OUTLINED_FUNCTION_70_3();
  v21(v20);
  (*(v19 + 8))(v15, v16);
  (*(v18 + 8))(v12, v14);
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_57_0();
  v24(v23);
  v25 = v13[21];
  v26 = v13[19];
  v27 = v13[16];
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227BC9B0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v16 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v14 = *v13;
  v15 = swift_task_alloc();
  v3[9] = v15;
  *v15 = v3;
  v15[1] = sub_227BC9DBC;

  return LeaderboardService.listLeaderboards(games:players:)();
}

uint64_t sub_227BC9DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[9];
  v14 = v12[8];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[5];
  v18 = v12[4];
  v19 = v12[3];
  v20 = v12[2];
  OUTLINED_FUNCTION_80_0();
  *v21 = v22;
  *v24 = v23;

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_227BC9FA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227BC9FC8, v2);
}

uint64_t sub_227BC9FC8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227BCA068;
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D20294(v4, v5);
}

uint64_t sub_227BCA068()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 40);
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

unint64_t sub_227BCA150()
{
  result = qword_27D7E82B8;
  if (!qword_27D7E82B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E82B0, &unk_227D58AC0);
    sub_227B15A74(&qword_27D7E82C0, &qword_27D7E82C8, &unk_227D64BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E82B8);
  }

  return result;
}

unint64_t sub_227BCA200()
{
  result = qword_27D7E82D0;
  if (!qword_27D7E82D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E82B0, &unk_227D58AC0);
    sub_227B15A74(&qword_27D7E82D8, &qword_27D7E82C8, &unk_227D64BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E82D0);
  }

  return result;
}

uint64_t LeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = sub_227D49458();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[15] = v11;
  v12 = *(*(v11 - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[17] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[18] = v14;
  v16 = *(v15 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49328();
  v1[20] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[21] = v18;
  v20 = *(v19 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[23] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[24] = v22;
  v24 = *(v23 + 64);
  v1[25] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F8, &qword_227D58B90);
  v1[26] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[27] = v26;
  v28 = *(v27 + 64);
  v1[28] = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[29] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[30] = v30;
  v32 = *(v31 + 64);
  v1[31] = OUTLINED_FUNCTION_30();
  v33 = sub_227D49D58();
  v1[32] = v33;
  OUTLINED_FUNCTION_10_0(v33);
  v1[33] = v34;
  v36 = *(v35 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v37 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_227BCA588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(v17 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v19 = *(v17 + 272);
    v20 = *(v17 + 248);
    v21 = *(v17 + 48);
    OUTLINED_FUNCTION_36(*(v17 + 88));
    *(v17 + 32) = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_10_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v22 = *(v17 + 272);
    if (v19)
    {
      v23 = *(v17 + 256);
      v24 = *(v17 + 264);
      (*(*(v17 + 240) + 8))(*(v17 + 248), *(v17 + 232));
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      v48 = *(v17 + 272);
      v49 = *(v17 + 248);
      v50 = *(v17 + 224);
      OUTLINED_FUNCTION_52_4();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_82_4();

      __asm { BRAA            X1, X16 }
    }

    v40 = *(v17 + 224);
    *(v17 + 16) = *(v17 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8300, &unk_227D58BA0);
    OUTLINED_FUNCTION_58_4();
    sub_227D49478();
    sub_227BCBB14(&qword_27D7E8308);
    sub_227BCBB14(&qword_27D7E8310);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v41 = *(v17 + 272);
    v42 = *(v17 + 200);
    v43 = *(v17 + 176);
    (*(*(v17 + 168) + 16))(v43, *(v17 + 72), *(v17 + 160));
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_44_4();
    sub_227B0F774(v44, v43);
    OUTLINED_FUNCTION_50_5(&qword_27D7E8320);
    OUTLINED_FUNCTION_38_1();
    sub_227D49D18();
    v45 = *(v17 + 272);
    v46 = *(v17 + 152);
    v47 = *(v17 + 120);
    sub_227BCBB80(*(v17 + 80), *(v17 + 128));
    OUTLINED_FUNCTION_51_4();
    sub_227BCBBF0();
    sub_227BCBCA4();
    OUTLINED_FUNCTION_38_1();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
    sub_227BCBD58();
    sub_227BCBE08();
    OUTLINED_FUNCTION_17();
    v53 = *(v17 + 272);
    sub_227D49D08();
    v54 = *(v17 + 112);
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v55 = *(MEMORY[0x277D0CE28] + 4);
    v56 = swift_task_alloc();
    *(v17 + 280) = v56;
    type metadata accessor for LeaderboardService();
    OUTLINED_FUNCTION_0_34();
    sub_227B0F774(v57, v58);
    OUTLINED_FUNCTION_48();
    *v56 = v59;
    v56[1] = sub_227BCAC88;
    v60 = *(v17 + 272);
    v61 = *(v17 + 112);
    v62 = *(v17 + 88);
    OUTLINED_FUNCTION_1_2(v63);

    return MEMORY[0x282164B00](v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v27 = swift_task_alloc();
    *(v17 + 296) = v27;
    *v27 = v17;
    v27[1] = sub_227BCAE84;
    v28 = *(v17 + 80);
    v29 = *(v17 + 88);
    v30 = *(v17 + 64);
    v31 = *(v17 + 72);
    v32 = *(v17 + 56);
    OUTLINED_FUNCTION_53(*(v17 + 48));
    OUTLINED_FUNCTION_82_4();

    return sub_227BCB960(v33, v34, v35, v36, v37);
  }
}

uint64_t sub_227BCAC88()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BCAE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v36 = v14;
  OUTLINED_FUNCTION_93();
  v15 = v13[37];
  v16 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v17 = v16;

  OUTLINED_FUNCTION_209();
  v19 = *(v18 + 272);
  v20 = v13[31];
  v21 = v13[28];
  v22 = v13[25];
  v23 = v13[22];
  v24 = v13[19];
  v25 = v13[16];
  v26 = v13[14];

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_135_0();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_227BCB160(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v23 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v22 = *v13;
  v21 = v13[1];
  v14 = a2[2];
  v3[9] = v14;
  v15 = *(v14 - 8);
  v3[10] = v15;
  v16 = *(v15 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v17 = a2[3];
  v3[12] = v17;
  v18 = *(v17 - 8);
  v3[13] = v18;
  v19 = *(v18 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v20 = swift_task_alloc();
  v3[15] = v20;
  *v20 = v3;
  v20[1] = sub_227BCB660;

  return LeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_227BCB660()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 120);
  v30 = *(v0 + 112);
  OUTLINED_FUNCTION_69();
  v29 = *(v2 + 104);
  OUTLINED_FUNCTION_69();
  v26 = *(v3 + 96);
  OUTLINED_FUNCTION_69();
  v28 = *(v4 + 88);
  OUTLINED_FUNCTION_69();
  v27 = *(v5 + 80);
  OUTLINED_FUNCTION_69();
  v7 = *(v6 + 72);
  v25 = *(v8 + 64);
  OUTLINED_FUNCTION_69();
  v24 = *(v9 + 56);
  OUTLINED_FUNCTION_69();
  v11 = *(v10 + 48);
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  v16 = v12[2];
  OUTLINED_FUNCTION_80_0();
  v18 = v17;
  OUTLINED_FUNCTION_13();
  *v19 = v18;
  *v21 = v20;

  (*(v14 + 8))(v13, v15);
  (*(v24 + 8))(v25, v11);
  (*(v27 + 8))(v28, v7);
  (*(v29 + 8))(v30, v26);

  v22 = *(v18 + 8);

  return v22();
}

uint64_t sub_227BCB960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0(sub_227BCB984, v5);
}

uint64_t sub_227BCB984()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[7] + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_227BCBA2C;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D203AC(v7, v8, v9, v10, v11);
}

uint64_t sub_227BCBA2C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 64);
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_227BCBB14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8300, &unk_227D58BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227BCBB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227BCBBF0()
{
  result = qword_27D7E8328;
  if (!qword_27D7E8328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E82E0, &unk_227D61A90);
    sub_227B0F774(&qword_27D7E8330, MEMORY[0x277D0D2A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8328);
  }

  return result;
}

unint64_t sub_227BCBCA4()
{
  result = qword_27D7E8338;
  if (!qword_27D7E8338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E82E0, &unk_227D61A90);
    sub_227B0F774(&qword_27D7E8340, MEMORY[0x277D0D2A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8338);
  }

  return result;
}

unint64_t sub_227BCBD58()
{
  result = qword_27D7E8350;
  if (!qword_27D7E8350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8348, &unk_227D61AC0);
    sub_227B15A74(&qword_27D7E8358, &qword_27D7E8360, &unk_227D58BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8350);
  }

  return result;
}

unint64_t sub_227BCBE08()
{
  result = qword_27D7E8368;
  if (!qword_27D7E8368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8348, &unk_227D61AC0);
    sub_227B15A74(&qword_27D7E8370, &qword_27D7E8360, &unk_227D58BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8368);
  }

  return result;
}

uint64_t LeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_227D49458();
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[13] = v10;
  v11 = *(*(v10 - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[15] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[16] = v13;
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49328();
  v1[18] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[19] = v17;
  v19 = *(v18 + 64);
  v1[20] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[21] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[22] = v21;
  v23 = *(v22 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[24] = v24;
  OUTLINED_FUNCTION_10_0(v24);
  v1[25] = v25;
  v27 = *(v26 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[27] = v28;
  OUTLINED_FUNCTION_10_0(v28);
  v1[28] = v29;
  v31 = *(v30 + 64);
  v1[29] = OUTLINED_FUNCTION_30();
  v32 = sub_227D49D58();
  v1[30] = v32;
  OUTLINED_FUNCTION_10_0(v32);
  v1[31] = v33;
  v35 = *(v34 + 64);
  v1[32] = OUTLINED_FUNCTION_30();
  v36 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_227BCC190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17[9];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[32];
    v20 = v17[29];
    v21 = v17[5];
    OUTLINED_FUNCTION_36(v17[9]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_10_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v22 = v17[32];
    if (v19)
    {
      v23 = v17[30];
      v24 = v17[31];
      (*(v17[28] + 8))(v17[29], v17[27]);
      v25 = OUTLINED_FUNCTION_17_0();
      v26(v25);
      v46 = v17[32];
      v47 = v17[29];
      v48 = v17[26];
      OUTLINED_FUNCTION_57_3();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_82_4();

      __asm { BRAA            X1, X16 }
    }

    v38 = v17[26];
    v17[3] = v17[6];
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    OUTLINED_FUNCTION_19_7();
    sub_227B47E34();
    sub_227B47EE4();
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v39 = v17[32];
    v40 = v17[23];
    v41 = v17[20];
    (*(v17[19] + 16))(v41, v17[7], v17[18]);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_44_4();
    sub_227B0F774(v42, v41);
    OUTLINED_FUNCTION_50_5(&qword_27D7E8320);
    OUTLINED_FUNCTION_38_1();
    sub_227D49D18();
    v43 = v17[32];
    v44 = v17[17];
    v45 = v17[13];
    sub_227BCBB80(v17[8], v17[14]);
    OUTLINED_FUNCTION_51_4();
    sub_227BCBBF0();
    sub_227BCBCA4();
    OUTLINED_FUNCTION_38_1();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
    sub_227BCBD58();
    sub_227BCBE08();
    OUTLINED_FUNCTION_17();
    v51 = v17[32];
    sub_227D49D08();
    v52 = v17[12];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v53 = *(MEMORY[0x277D0CE28] + 4);
    v54 = swift_task_alloc();
    v17[33] = v54;
    type metadata accessor for LeaderboardService();
    OUTLINED_FUNCTION_0_34();
    sub_227B0F774(v55, v56);
    OUTLINED_FUNCTION_48();
    *v54 = v57;
    v54[1] = sub_227BCC824;
    v58 = v17[32];
    v59 = v17[12];
    v60 = v17[9];
    OUTLINED_FUNCTION_1_2(v61);

    return MEMORY[0x282164B00](v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v27 = swift_task_alloc();
    v17[35] = v27;
    *v27 = v17;
    v27[1] = sub_227BCCA20;
    v28 = v17[8];
    v29 = v17[9];
    v30 = v17[6];
    v31 = v17[7];
    OUTLINED_FUNCTION_53(v17[5]);
    OUTLINED_FUNCTION_82_4();

    return sub_227BCD1FC(v32, v33, v34, v35);
  }
}

uint64_t sub_227BCC824()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BCCA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v36 = v14;
  OUTLINED_FUNCTION_93();
  v15 = v13[35];
  v16 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v17 = v16;

  OUTLINED_FUNCTION_209();
  v19 = *(v18 + 256);
  v20 = v13[29];
  v21 = v13[26];
  v22 = v13[23];
  v23 = v13[20];
  v24 = v13[17];
  v25 = v13[14];
  v26 = v13[12];

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_135_0();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_227BCCCFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v21 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v22 = swift_task_alloc();
  v3[8] = v22;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v20 = *v22;
  v13 = a2[2];
  v3[9] = v13;
  v14 = *(v13 - 8);
  v3[10] = v14;
  v15 = *(v14 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v16 = a2[3];
  v3[12] = v16;
  v17 = *(v16 - 8);
  v3[13] = v17;
  v18 = *(v17 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v19 = swift_task_alloc();
  v3[15] = v19;
  *v19 = v3;
  v19[1] = sub_227BD2638;

  return LeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_227BCD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227BCD220, v4);
}

uint64_t sub_227BCD220()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[6] + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_227BCD2C4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D204E0(v6, v7, v8, v9);
}

uint64_t sub_227BCD2C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 56);
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t LeaderboardService.previousOcurrences(leaderboards:players:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_227D49458();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[14] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49D58();
  v1[17] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227BCD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[7];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_10_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[19];
    if (v17)
    {
      v22 = OUTLINED_FUNCTION_99_2();
      v23(v22);
      v24 = OUTLINED_FUNCTION_17_0();
      v25(v24);
      OUTLINED_FUNCTION_109_3();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
    }

    else
    {
      v30 = v18[13];
      v18[3] = v18[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_19_7();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v31 = v18[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v32 = v18[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8378, &qword_227D58D88);
      sub_227BCDCDC();
      sub_227BCDE10();
      OUTLINED_FUNCTION_17();
      v33 = v18[19];
      sub_227D49D08();
      v42 = v18[10];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      v18[20] = v44;
      type metadata accessor for LeaderboardService();
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v45, v46);
      OUTLINED_FUNCTION_48();
      *v44 = v47;
      v44[1] = sub_227BCD85C;
      v48 = v18[19];
      v49 = v18[10];
      v50 = v18[7];
      OUTLINED_FUNCTION_1_2(v51);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v18[22] = v26;
    *v26 = v18;
    v26[1] = sub_227BD2634;
    v27 = v18[7];
    OUTLINED_FUNCTION_46();

    return sub_227BCDC04();
  }
}

uint64_t sub_227BCD85C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BCD954(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v16 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v14 = *v13;
  v15 = swift_task_alloc();
  v3[9] = v15;
  *v15 = v3;
  v15[1] = sub_227BD265C;

  return LeaderboardService.previousOcurrences(leaderboards:players:)();
}

uint64_t sub_227BCDC1C()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  sub_227B0F774(&qword_27D7E67C8, MEMORY[0x277D0CE80]);
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v0();
}

unint64_t sub_227BCDCDC()
{
  result = qword_27D7E8380;
  if (!qword_27D7E8380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8378, &qword_227D58D88);
    sub_227BCDD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8380);
  }

  return result;
}

unint64_t sub_227BCDD60()
{
  result = qword_27D7E8388;
  if (!qword_27D7E8388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8390, &unk_227D58D90);
    sub_227B15A74(&qword_27D7E7148, &qword_27D7E6938, &qword_227D4E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8388);
  }

  return result;
}

unint64_t sub_227BCDE10()
{
  result = qword_27D7E8398;
  if (!qword_27D7E8398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8378, &qword_227D58D88);
    sub_227BCDE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8398);
  }

  return result;
}

unint64_t sub_227BCDE94()
{
  result = qword_27D7E83A0;
  if (!qword_27D7E83A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8390, &unk_227D58D90);
    sub_227B15A74(&qword_27D7E7150, &qword_27D7E6938, &qword_227D4E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E83A0);
  }

  return result;
}

uint64_t LeaderboardService.submit(entries:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83A8, &qword_227D58E40);
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BCE08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_91_4();
    v15 = v13[3];
    OUTLINED_FUNCTION_36(v13[4]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83B0, &unk_227D58E50);
    sub_227D49478();
    sub_227BCE64C();
    sub_227BCE700();
    OUTLINED_FUNCTION_8_3();
    v16 = v13[13];
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_98_2();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v17 = v13[13];
      sub_227D49D08();
      v35 = v13[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = *(MEMORY[0x277D0CE38] + 4);
      v37 = swift_task_alloc();
      v13[14] = v37;
      type metadata accessor for LeaderboardService();
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v38, v39);
      *v37 = v13;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v13[16] = v31;
    *v31 = v13;
    v31[1] = sub_227BD2658;
    v32 = v13[4];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227BCE59C(v33);
  }
}

uint64_t sub_227BCE308()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BCE400(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_227B4AF94;

  return LeaderboardService.submit(entries:)();
}

uint64_t sub_227BCE59C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BCE5B8, v1);
}

uint64_t sub_227BCE5B8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20610(v5);
}

unint64_t sub_227BCE64C()
{
  result = qword_27D7E83B8;
  if (!qword_27D7E83B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E83B0, &unk_227D58E50);
    sub_227B0F774(&qword_27D7E83C0, MEMORY[0x277D0D080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E83B8);
  }

  return result;
}

unint64_t sub_227BCE700()
{
  result = qword_27D7E83C8;
  if (!qword_27D7E83C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E83B0, &unk_227D58E50);
    sub_227B0F774(&qword_27D7E83D0, MEMORY[0x277D0D080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E83C8);
  }

  return result;
}

uint64_t LeaderboardService.reset(leaderboards:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BCE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v14 = v13[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_91_4();
    v15 = v13[3];
    OUTLINED_FUNCTION_36(v13[4]);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_10_10();
    sub_227BC8E60();
    sub_227BC8F10();
    OUTLINED_FUNCTION_8_3();
    v16 = v13[13];
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_98_2();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v17 = v13[13];
      sub_227D49D08();
      v35 = v13[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = *(MEMORY[0x277D0CE38] + 4);
      v37 = swift_task_alloc();
      v13[14] = v37;
      type metadata accessor for LeaderboardService();
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v38, v39);
      *v37 = v13;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v13[16] = v31;
    *v31 = v13;
    v31[1] = sub_227BCECEC;
    v32 = v13[4];
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227BCF07C(v33);
  }
}

uint64_t sub_227BCEB50()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BCEC48()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_59_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = *(v0 + 8);
  v6 = OUTLINED_FUNCTION_57_0();
  v7(v6);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_227BCECEC()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[7];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_227BCEE30()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_59_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = v0[15];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227BCEEE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_227B3FFF4;

  return LeaderboardService.reset(leaderboards:)();
}

uint64_t sub_227BCF07C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BCF098, v1);
}

uint64_t sub_227BCF098()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20720(v5);
}

uint64_t LeaderboardService.describe(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_110_2(v10);
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BCF264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_18_8();
    sub_227BCF728();
    sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8410, &unk_227D58F60);
      sub_227BCF888();
      sub_227BCF9C0();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_79_4(v44);
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      v23[1] = sub_227BC8B18;
      v48 = v18[14];
      v49 = v18[8];
      v50 = v18[5];
      OUTLINED_FUNCTION_1_2(v51);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227BCF678(v40);
  }
}

uint64_t sub_227BCF4D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227B4AFB0;

  return LeaderboardService.describe(leaderboardSets:)();
}

uint64_t sub_227BCF678(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BCF694, v1);
}

uint64_t sub_227BCF694()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20844(v5);
}

unint64_t sub_227BCF728()
{
  result = qword_27D7E83E8;
  if (!qword_27D7E83E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E83E0, &unk_227D58F50);
    sub_227B15A74(&qword_27D7E83F0, &qword_27D7E83F8, &unk_227D61E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E83E8);
  }

  return result;
}

unint64_t sub_227BCF7D8()
{
  result = qword_27D7E8400;
  if (!qword_27D7E8400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E83E0, &unk_227D58F50);
    sub_227B15A74(&qword_27D7E8408, &qword_27D7E83F8, &unk_227D61E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8400);
  }

  return result;
}

unint64_t sub_227BCF888()
{
  result = qword_27D7E8418;
  if (!qword_27D7E8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8410, &unk_227D58F60);
    sub_227BCF90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8418);
  }

  return result;
}

unint64_t sub_227BCF90C()
{
  result = qword_27D7E8420;
  if (!qword_27D7E8420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8428, &unk_227D61E60);
    sub_227B0F774(&qword_27D7E8430, MEMORY[0x277D0D458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8420);
  }

  return result;
}

unint64_t sub_227BCF9C0()
{
  result = qword_27D7E8438;
  if (!qword_27D7E8438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8410, &unk_227D58F60);
    sub_227BCFA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8438);
  }

  return result;
}

unint64_t sub_227BCFA44()
{
  result = qword_27D7E8440;
  if (!qword_27D7E8440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8428, &unk_227D61E60);
    sub_227B0F774(&qword_27D7E8448, MEMORY[0x277D0D458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8440);
  }

  return result;
}

uint64_t LeaderboardService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_110_2(v10);
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BCFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    sub_227D49478();
    sub_227B67D40();
    sub_227B67DF0();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8450, &unk_227D64DE0);
      sub_227BD058C();
      sub_227BD063C();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_79_4(v44);
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      v23[1] = sub_227BCFEB0;
      v48 = v18[14];
      v49 = v18[8];
      v50 = v18[5];
      OUTLINED_FUNCTION_1_2(v51);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227BD03F4(v40);
  }
}

uint64_t sub_227BCFEB0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BCFFA8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_83();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = v0[3];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[8];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227BD0058()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_93();
  v2 = v1[17];
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_209();
  v6 = *(v5 + 112);
  v7 = v1[11];
  v8 = v1[8];

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_164();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_227BD01A4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_83();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = v0[16];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[8];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227BD0254(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227B4476C;

  return LeaderboardService.listLeaderboardSets(games:)();
}

uint64_t sub_227BD03F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BD0410, v1);
}

uint64_t sub_227BD0410()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20968(v5);
}

uint64_t sub_227BD04A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 32);
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

unint64_t sub_227BD058C()
{
  result = qword_27D7E8458;
  if (!qword_27D7E8458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8450, &unk_227D64DE0);
    sub_227B15A74(&qword_27D7E8460, &qword_27D7E8468, &unk_227D59010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8458);
  }

  return result;
}

unint64_t sub_227BD063C()
{
  result = qword_27D7E8470;
  if (!qword_27D7E8470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8450, &unk_227D64DE0);
    sub_227B15A74(&qword_27D7E8478, &qword_27D7E8468, &unk_227D59010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8470);
  }

  return result;
}

uint64_t LeaderboardService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_110_2(v10);
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BD0824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[5];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36(v20);
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_18_8();
    sub_227BCF728();
    sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3();
    v21 = v18[14];
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_27_5();
      v25(v24);
      v26 = OUTLINED_FUNCTION_17_0();
      v27(v26);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v22 = v18[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      sub_227BCA200();
      OUTLINED_FUNCTION_17();
      v23 = v18[14];
      sub_227D49D08();
      v42 = v18[8];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = *(MEMORY[0x277D0CE28] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_79_4(v44);
      OUTLINED_FUNCTION_0_34();
      sub_227B0F774(v45, v46);
      OUTLINED_FUNCTION_48();
      *v23 = v47;
      v23[1] = sub_227BC8B18;
      v48 = v18[14];
      v49 = v18[8];
      v50 = v18[5];
      OUTLINED_FUNCTION_1_2(v51);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_92_1(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_25(v38);
    OUTLINED_FUNCTION_46();

    return sub_227BD0C38(v40);
  }
}

uint64_t sub_227BD0A98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227B4AFB0;

  return LeaderboardService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227BD0C38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BD0C54, v1);
}

uint64_t sub_227BD0C54()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_165(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_41(v3);

  return sub_227D20A8C(v5);
}

uint64_t static LeaderboardService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LeaderboardService();
  sub_227D49D78();
  OUTLINED_FUNCTION_4_13();
  sub_227B0F774(v5, v6);
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_actorSystem) = a2;
  }

  return v10;
}

uint64_t LeaderboardService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_4_13();
  sub_227B0F774(v3, v4);
  sub_227D493C8();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LeaderboardService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18LeaderboardService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    LeaderboardService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227BD0F94()
{
  sub_227D4DB58();
  type metadata accessor for LeaderboardService();
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t LeaderboardService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for LeaderboardService();
    OUTLINED_FUNCTION_0_34();
    sub_227B0F774(v1, v2);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227BD1088@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227BD10E8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 200))();
}

uint64_t sub_227BD1128()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for LeaderboardService();
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v0, v1);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227BD118C()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for LeaderboardService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BD1394()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return LeaderboardService.describe(leaderboards:)();
}

uint64_t sub_227BD1418()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_117_0();

  return LeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_227BD14AC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_164();

  return LeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_227BD1540()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_16_1(v3);

  return LeaderboardService.listLeaderboards(games:players:)();
}

uint64_t sub_227BD15D0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_16_1(v3);

  return LeaderboardService.previousOcurrences(leaderboards:players:)();
}

uint64_t sub_227BD1660()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return LeaderboardService.submit(entries:)();
}

uint64_t sub_227BD16E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return LeaderboardService.reset(leaderboards:)();
}

uint64_t sub_227BD1768()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return LeaderboardService.describe(leaderboardSets:)();
}

uint64_t sub_227BD17EC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return LeaderboardService.listLeaderboardSets(games:)();
}

uint64_t sub_227BD1870()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return LeaderboardService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227BD18F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for LeaderboardService();
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v4, v5);
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v6);
}

uint64_t sub_227BD196C()
{
  v1 = *v0;
  type metadata accessor for LeaderboardService();
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v2, v3);
  OUTLINED_FUNCTION_11_11();
  sub_227B0F774(v4, v5);
  return sub_227D49428();
}

uint64_t sub_227BD1A14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LeaderboardService();
  OUTLINED_FUNCTION_0_34();
  sub_227B0F774(v3, v4);
  OUTLINED_FUNCTION_11_11();
  sub_227B0F774(v5, v6);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227BD1AC4()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of LeaderboardService.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 128);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);
  v6 = OUTLINED_FUNCTION_86_2();

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);
  v6 = OUTLINED_FUNCTION_95_2();

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.previousOcurrences(leaderboards:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.submit(entries:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.reset(leaderboards:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 168);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.describe(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 176);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 184);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LeaderboardService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 192);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v8(v6);
}

uint64_t OUTLINED_FUNCTION_39_4()
{
  v1 = v0[33];
  v2 = v0[32];
  v16 = v0[34];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[25];
  v14 = v0[26];
  v15 = v0[28];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  result = v0[14];
  v12 = v0[12];
  v13 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_5(unint64_t *a1)
{

  return sub_227B0F774(a1, v1);
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_52_4()
{
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[14];
}

uint64_t OUTLINED_FUNCTION_60_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for LeaderboardService();
}

uint64_t OUTLINED_FUNCTION_87_5()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  result = v0[13];
  v6 = v0[14];
  v7 = v0[11];
  v8 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_98_2()
{
  v1 = v0[11];
  v2 = v0[12];
  result = v0[10];
  v4 = v0[8];
  v5 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_99_2()
{
  v1 = v0[17];
  v2 = v0[18];
  result = v0[16];
  v4 = v0[14];
  v5 = *(v0[15] + 8);
  return result;
}

void OUTLINED_FUNCTION_100_2()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[7];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_109_3()
{
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1)
{
  *(v1 + 88) = a1;

  return sub_227D49D58();
}

uint64_t sub_227BD2890()
{
  result = sub_227D4A6B8();
  if (!v0)
  {
    sub_227D4A638();
    result = sub_227D4A628();
    if (!v2)
    {
LABEL_74:
      sub_227D4A648();
      return sub_227D4AE78();
    }

    v3 = HIBYTE(v2) & 0xF;
    v4 = result & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      goto LABEL_74;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      sub_227BD2F40(result, v2, 10);
      goto LABEL_72;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v26[0] = result;
      v26[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_2_20();
            while (1)
            {
              OUTLINED_FUNCTION_1_17();
              if (!v8 & v7)
              {
                break;
              }

              OUTLINED_FUNCTION_0_35();
              if (!v8 || __OFADD__(v16, v15))
              {
                break;
              }

              OUTLINED_FUNCTION_3_15();
              if (v8)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_81;
      }

      if (result != 45)
      {
        if (v3)
        {
          v20 = v26;
          while (*v20 - 48 <= 9)
          {
            OUTLINED_FUNCTION_0_35();
            if (!v8 || __OFADD__(v24, v23))
            {
              break;
            }

            v20 = (v21 + 1);
            if (v22 == 1)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_2_20();
          while (1)
          {
            OUTLINED_FUNCTION_1_17();
            if (!v8 & v7)
            {
              break;
            }

            OUTLINED_FUNCTION_0_35();
            if (!v8 || __OFSUB__(v12, v11))
            {
              break;
            }

            OUTLINED_FUNCTION_3_15();
            if (v8)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_227D4D6C8();
        v4 = v25;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_17();
                if (!v8 & v7)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_0_35();
                if (!v8 || __OFADD__(v14, v13))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_3_15();
                if (v8)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v17 = 0;
          if (result)
          {
            while (1)
            {
              v18 = *result - 48;
              if (v18 > 9)
              {
                goto LABEL_70;
              }

              v19 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_70;
              }

              v17 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_70:
        LOBYTE(v4) = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_17();
              if (!v8 & v7)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_0_35();
              if (!v8 || __OFSUB__(v10, v9))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_3_15();
              if (v8)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_69:
          LOBYTE(v4) = 0;
LABEL_71:
          v27 = v4;
LABEL_72:

          goto LABEL_74;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }

  return result;
}

uint64_t sub_227BD2BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227D4AA28();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_227D4BB08();
  if (!v16)
  {
    goto LABEL_6;
  }

  v27 = v9;
  if ((sub_227D4BB18() & 0x100000000) != 0)
  {

LABEL_6:
    v24 = 1;
    goto LABEL_8;
  }

  v26 = a1;
  if ((MEMORY[0x22AAA4870]() & 0x100000000) != 0)
  {

    v24 = 1;
    a1 = v26;
  }

  else
  {
    sub_227D4A768();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v19 = v27;
    (*(v27 + 32))(v15, v7, v8);
    (*(v19 + 16))(v13, v15, v8);
    sub_227D4A9F8();
    v20 = sub_227D4BB38();
    v25[3] = v21;
    v25[4] = v20;
    v22 = sub_227D4BAC8();
    v25[1] = v23;
    v25[2] = v22;
    sub_227D4BAD8();
    sub_227D4BAE8();
    sub_227D4BAF8();
    a1 = v26;
    sub_227D4A9C8();
    (*(v19 + 8))(v15, v8);
    v24 = 0;
  }

LABEL_8:
  v17 = sub_227D4AA38();
  return __swift_storeEnumTagSinglePayload(a1, v24, 1, v17);
}

uint64_t sub_227BD2ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_227BD2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_227D4CE58();
  result = sub_227D4D0E8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_227BD34C8(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_227D4D6C8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_227BD34C8(uint64_t a1, unint64_t a2)
{
  v2 = sub_227BD3534(sub_227BD3530, 0, a1, a2);
  v6 = sub_227BD3568(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_227BD3534(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_227BD3568(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_227D4D038();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_227D4D508();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_227B29F94(v9, 0);
  v12 = sub_227BD36C8(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_227D4CE58();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_227D4D038();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_227D4D6C8();
LABEL_4:

  return sub_227D4D038();
}

unint64_t sub_227BD36C8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_227BD38D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_227D4D0B8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_227D4D6C8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_227BD38D8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_227D4D088();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_227BD38D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_227D4D0C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAA5DE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_227BD395C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_227BD3988(*(v0 + 16), v1);
  }
}

void sub_227BD3988(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_227BD4F70(a1, a2, v4);
  if (v5)
  {
    v6 = v5;
    if ([v5 weeks] < 1 || OUTLINED_FUNCTION_10_11() || OUTLINED_FUNCTION_9_7())
    {
      if ([v6 days] < 1 || OUTLINED_FUNCTION_10_11() || OUTLINED_FUNCTION_9_7())
      {
        if (![v6 days] && OUTLINED_FUNCTION_10_11() >= 1 && !OUTLINED_FUNCTION_9_7())
        {
          v13 = &selRef_hours;
LABEL_24:
          [v6 *v13];

          return;
        }

        v7 = [v6 days];
        if ((v7 * 24) >> 64 == (24 * v7) >> 63)
        {
          v8 = 1440 * v7;
          if ((24 * v7 * 60) >> 64 == (1440 * v7) >> 63)
          {
            v9 = OUTLINED_FUNCTION_10_11();
            v10 = 60 * v9;
            if ((v9 * 60) >> 64 == (60 * v9) >> 63)
            {
              v11 = v8 + v10;
              if (!__OFADD__(v8, v10))
              {
                v12 = OUTLINED_FUNCTION_9_7();

                if (!__OFADD__(v11, v12))
                {
                  return;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_27;
      }

LABEL_23:
      v13 = &selRef_days;
      goto LABEL_24;
    }

    v14 = [v6 weeks];
    v15 = 7 * v14;
    if ((v14 * 7) >> 64 != (7 * v14) >> 63)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v16 = [v6 days];

    if (__OFADD__(v15, v16))
    {
      __break(1u);
      goto LABEL_23;
    }
  }
}

uint64_t sub_227BD3B70(void *a1)
{
  if (*(v1 + 24))
  {
    v4 = OUTLINED_FUNCTION_7_14();
    sub_227BD3988(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  sub_227BD3BF0(a1, v6);
  result = OUTLINED_FUNCTION_1_18();
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_227BD3BC0()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  sub_227BD3988(*(v0 + 16), v1);
  return v2;
}

void sub_227BD3BF0(void *a1, char a2)
{
  v2 = a1;
  if (!a2)
  {
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D7F110]) initWithWeeks:0 days:0 hours:a1 minutes:0 seconds:0];
    if (!v3)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v2 = v3;
    v4 = [v3 ICSStringWithOptions_];

    if (!v4)
    {
      __break(1u);
LABEL_6:
      if ((v2 * 24) >> 64 == (24 * v2) >> 63)
      {
        v5 = sub_227D4DA38();
        MEMORY[0x22AAA5DA0](v5);

        MEMORY[0x22AAA5DA0](72, 0xE100000000000000);
        return;
      }

      __break(1u);
      goto LABEL_12;
    }

LABEL_10:
    sub_227D4CFA8();

    return;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D7F110]) initWithWeeks:0 days:0 hours:0 minutes:a1 seconds:0];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v4 = [v6 ICSStringWithOptions_];

  if (v4)
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t (*sub_227BD3D7C(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v4;
  if (v4)
  {
    sub_227BD3988(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_227BD3DD8;
}

uint64_t sub_227BD3DD8(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 24))
  {
    v3 = OUTLINED_FUNCTION_7_14();
    sub_227BD3988(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  sub_227BD3BF0(v2, v5);
  result = OUTLINED_FUNCTION_0_36();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  return result;
}

uint64_t sub_227BD3E30(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v4 = OUTLINED_FUNCTION_7_14();
    sub_227BD3988(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  sub_227BD3BF0(v6, a1);
  result = OUTLINED_FUNCTION_1_18();
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return result;
}

uint64_t (*sub_227BD3E80(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    sub_227BD3988(v3, v4);
  }

  *(a1 + 24) = v4;
  return sub_227BD3ED4;
}

uint64_t sub_227BD3ED4(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8(a1);
  if (v1)
  {
    sub_227BD3988(v3[1], v1);
  }

  else
  {
    v4 = 0;
  }

  v5 = *v3;
  sub_227BD3BF0(v4, v2);
  result = OUTLINED_FUNCTION_0_36();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  return result;
}

id sub_227BD3F28()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  v1 = *(v0 + 32);
  sub_227BD4FF4();
  sub_227D4CE58();
  v2 = OUTLINED_FUNCTION_4_14();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  [v2 freq];
  v4 = [v3 interval];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_227BD3FD0()
{
  sub_227BD4FF4();
  sub_227D4CE58();
  v0 = OUTLINED_FUNCTION_4_14();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  [v0 freq];
  OUTLINED_FUNCTION_3_16();
  v2 = [v1 interval];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_227BD4080(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    sub_227BD3FD0();
  }

  else
  {
    v6 = 0;
  }

  sub_227BD4174(a1, v6);
  result = OUTLINED_FUNCTION_1_18();
  *(v1 + 32) = a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_227BD40D4()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  v1 = *(v0 + 32);
  sub_227BD4FF4();
  sub_227D4CE58();
  v2 = OUTLINED_FUNCTION_4_14();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  [v2 freq];
  OUTLINED_FUNCTION_3_16();
  v4 = [v3 interval];
  if (v4)
  {
    v5 = v4;
    [v4 integerValue];
  }

  return v1;
}

void sub_227BD4174(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = objc_allocWithZone(MEMORY[0x277D7F138]);
  v5 = sel_initWithFrequency_;
  if (!a2)
  {
LABEL_5:
    v4 = [v4 v5];
    if (!v4)
    {
      __break(1u);
LABEL_7:
      v4 = [v4 v5];
      if (!v4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
    goto LABEL_7;
  }

  v4 = [v4 initWithFrequency_];
  if (!v4)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v6 = v4;
  [v6 setInterval_];
  v7 = [v6 ICSStringWithOptions_];

  if (v7)
  {
    sub_227D4CFA8();

    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t (*sub_227BD4284(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v4;
  if (v4)
  {
    v5 = sub_227BD3FD0();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_227BD42E0;
}

uint64_t sub_227BD42E0(uint64_t *a1)
{
  v2 = *a1;
  if (a1[3])
  {
    OUTLINED_FUNCTION_7_14();
    sub_227BD3FD0();
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[1];
  sub_227BD4174(v2, v3);
  result = OUTLINED_FUNCTION_0_36();
  *(v4 + 32) = a1;
  *(v4 + 40) = v2;
  return result;
}

uint64_t sub_227BD4338(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = sub_227BD3FD0();
  }

  else
  {
    v6 = 0;
  }

  sub_227BD4174(v6, a1);
  result = OUTLINED_FUNCTION_1_18();
  *(v1 + 32) = a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t (*sub_227BD438C(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    sub_227BD3FD0();
  }

  *(a1 + 24) = v4;
  return sub_227BD43E0;
}

uint64_t sub_227BD43E0(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8(a1);
  if (v1)
  {
    v4 = v3[1];
    v5 = sub_227BD3FD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = *v3;
  sub_227BD4174(v5, v2);
  result = OUTLINED_FUNCTION_0_36();
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  return result;
}

uint64_t sub_227BD4434@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227D492A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  if (*(v1 + 56))
  {
    v12 = *(v1 + 48);
    v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v14 = sub_227D4CF78();
    v15 = [v13 dateFromString_];

    if (v15)
    {
      sub_227D49278();

      v16 = *(v4 + 32);
      v16(v11, v7, v3);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
      return (v16)(a1, v11, v3);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v3);
      sub_227D49298();
      result = __swift_getEnumTagSinglePayload(v11, 1, v3);
      if (result != 1)
      {
        return sub_227BD5038(v11);
      }
    }
  }

  else
  {

    return sub_227D49298();
  }

  return result;
}

uint64_t sub_227BD4660(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v5 = sub_227D491F8();
  v6 = [v4 stringFromDate_];

  v7 = sub_227D4CFA8();
  v9 = v8;

  v10 = sub_227D492A8();
  (*(*(v10 - 8) + 8))(a1, v10);
  v11 = *(v2 + 56);

  *(v2 + 48) = v7;
  *(v2 + 56) = v9;
  return result;
}

uint64_t sub_227BD4738()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v1 = sub_227D491F8();
  v2 = [v0 stringFromDate_];

  v3 = sub_227D4CFA8();
  return v3;
}

void (*sub_227BD47C8())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0xD8uLL);
  OUTLINED_FUNCTION_2_21(v2);
  v3 = sub_227D492A8();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64);
  v1[25] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  v1[26] = v6;
  memcpy(v1, v0, 0xB0uLL);
  sub_227BD4434(v6);
  return sub_227BD48A8;
}

void sub_227BD48A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  v4 = *(*a1 + 208);
  if (a2)
  {
    v5 = v2[23];
    v6 = v2[24];
    v7 = v2[22];
    (*(v6 + 16))(*(*a1 + 200), v4, v5);
    sub_227BD4660(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[22];
    sub_227BD4660(*(*a1 + 208));
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_227BD4988())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0xC0uLL);
  v3 = OUTLINED_FUNCTION_2_21(v2);
  memcpy(v3, v0, 0xB0uLL);
  *(v1 + 184) = (sub_227BAAE3C() & 1) == 0;
  return sub_227BD49FC;
}

void (*sub_227BD4A40())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0xC0uLL);
  v3 = OUTLINED_FUNCTION_2_21(v2);
  memcpy(v3, v0, 0xB0uLL);
  *(v1 + 184) = (sub_227BAACF0() & 1) == 0;
  return sub_227BD4AB4;
}

void sub_227BD4ACC(uint64_t a1, uint64_t a2, void (*a3)(BOOL))
{
  v3 = *a1;
  v4 = *(*a1 + 176);
  a3((*(*a1 + 184) & 1) == 0);

  free(v3);
}

uint64_t sub_227BD4B18(uint64_t result, char a2)
{
  if (!a2)
  {
LABEL_5:
    v3 = 24 * result;
    if ((result * 24) >> 64 == (24 * result) >> 63)
    {
      result *= 1440;
      if ((v3 * 60) >> 64 == result >> 63)
      {
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (a2 == 1)
  {
    v2 = (result * 60) >> 64;
    result *= 60;
    if (v2 != result >> 63)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  return result;
}

id sub_227BD4B80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_227D4CF78();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() recurrenceRuleFromICSString_];

  return v3;
}

uint64_t sub_227BD4BF0(char a1)
{
  if (!a1)
  {
    return 0x297328796144;
  }

  if (a1 == 1)
  {
    return 0x29732872756F48;
  }

  return 0x73286574756E694DLL;
}

uint64_t sub_227BD4C48()
{
  v0 = sub_227D4D868();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BD4CAC(unsigned __int8 a1, char a2)
{
  v2 = 0x297328796144;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x29732872756F48;
    }

    else
    {
      v4 = 0x73286574756E694DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000029;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x297328796144;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x29732872756F48;
    }

    else
    {
      v2 = 0x73286574756E694DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000029;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BD4DC8()
{
  sub_227D4D048();
}

uint64_t sub_227BD4E5C()
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BD4EFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BD4C48();
  *a2 = result;
  return result;
}

uint64_t sub_227BD4F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BD4BF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_227BD4F70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227D4CF78();
  v5 = [a3 generateDurationFromICSString_];

  return v5;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_227BD4FF4()
{
  result = qword_27D7E84A0;
  if (!qword_27D7E84A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E84A0);
  }

  return result;
}

uint64_t sub_227BD5038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227BD50A4()
{
  result = qword_27D7E84A8;
  if (!qword_27D7E84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84A8);
  }

  return result;
}

unint64_t sub_227BD50FC()
{
  result = qword_27D7E84B0;
  if (!qword_27D7E84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84B0);
  }

  return result;
}

unint64_t sub_227BD5154()
{
  result = qword_27D7E84B8;
  if (!qword_27D7E84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84B8);
  }

  return result;
}

unint64_t sub_227BD51AC()
{
  result = qword_27D7E84C0;
  if (!qword_27D7E84C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84C8, qword_227D59600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84C0);
  }

  return result;
}

_BYTE *sub_227BD5224(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227BD52F8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_4_14()
{

  return sub_227BD4B80(v1, v0);
}

uint64_t PurchaseHistoryData.init(purchaseHistories:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227BD736C(a1);
  *a2 = result;
  a2[1] = a1;
  return result;
}

uint64_t sub_227BD5450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73666552656D6167 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000227D76950 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_1();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227BD5508(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x73666552656D6167;
  }
}

uint64_t sub_227BD554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BD5450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BD5574()
{
  sub_227BD7660();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BD55AC()
{
  sub_227BD7660();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t PurchaseHistoryData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E84D0, &qword_227D596C0);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = *v1;
  v15 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BD7660();
  sub_227D4CE58();
  sub_227D4DC08();
  v17 = v12;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E84D8, &unk_227D596C8);
  sub_227BD76B4();
  OUTLINED_FUNCTION_4_15();
  sub_227D4DA08();

  if (!v2)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E84E8, &qword_227D596D8);
    sub_227BD775C();
    OUTLINED_FUNCTION_4_15();
    sub_227D4DA08();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t PurchaseHistoryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8500, &qword_227D596E0);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BD7660();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E84D8, &unk_227D596C8);
  v18 = 0;
  sub_227BD7864();
  OUTLINED_FUNCTION_6_8();
  v14 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E84E8, &qword_227D596D8);
  v18 = 1;
  sub_227BD795C();
  OUTLINED_FUNCTION_6_8();
  (*(v7 + 8))(v12, v5);
  v15 = v19;
  *a2 = v14;
  a2[1] = v15;
  sub_227D4CE58();
  sub_227D4CE58();
  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PurchaseHistoryGame.ref.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v4 = OUTLINED_FUNCTION_62_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t PurchaseHistoryGame.datePurchased.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseHistoryGame() + 20);
  v4 = sub_227D492A8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t PurchaseHistoryGame.init(ref:datePurchased:isHidden:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0(v8);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for PurchaseHistoryGame();
  v11 = *(v10 + 20);
  v12 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0(v12);
  result = (*(v13 + 32))(a4 + v11, a2);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

uint64_t sub_227BD5B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710642 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6372755065746164 && a2 == 0xED00006465736168;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_1();

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

uint64_t sub_227BD5C6C(char a1)
{
  if (!a1)
  {
    return 6710642;
  }

  if (a1 == 1)
  {
    return 0x6372755065746164;
  }

  return 0x6E65646469487369;
}

uint64_t sub_227BD5CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BD5B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BD5D14()
{
  sub_227BD7A18();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BD5D4C()
{
  sub_227BD7A18();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t PurchaseHistoryGame.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8520, &qword_227D596E8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BD7A18();
  sub_227D4DC08();
  v20[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  sub_227BD790C(&qword_280E7B838);
  OUTLINED_FUNCTION_4_15();
  sub_227D4DA08();
  if (!v2)
  {
    v14 = type metadata accessor for PurchaseHistoryGame();
    v15 = *(v14 + 20);
    v20[14] = 1;
    sub_227D492A8();
    OUTLINED_FUNCTION_2_22();
    sub_227BD7A6C(v16, v17);
    OUTLINED_FUNCTION_4_15();
    sub_227D4DA08();
    v18 = *(v3 + *(v14 + 24));
    v20[13] = 2;
    sub_227D4D9D8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t PurchaseHistoryGame.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_227D492A8();
  v43 = OUTLINED_FUNCTION_9(v4);
  v44 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v45);
  v41 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8528, &qword_227D596F0);
  OUTLINED_FUNCTION_9(v47);
  v42 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for PurchaseHistoryGame();
  v20 = OUTLINED_FUNCTION_62_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BD7A18();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = v19;
  v39 = a1;
  v26 = v24;
  v27 = v44;
  v28 = v43;
  v50 = 0;
  sub_227BD790C(&qword_280E7B830);
  v29 = v45;
  sub_227D4D938();
  (*(v41 + 32))(v26, v46, v29);
  v49 = 1;
  OUTLINED_FUNCTION_2_22();
  sub_227BD7A6C(v30, v31);
  sub_227D4D938();
  (*(v27 + 32))(v26 + *(v38 + 20), v9, v28);
  v48 = 2;
  v32 = sub_227D4D908();
  v33 = v39;
  v34 = v32;
  v35 = OUTLINED_FUNCTION_3_17();
  v36(v35);
  *(v26 + *(v38 + 24)) = v34 & 1;
  sub_227BD7AB4(v26, v40);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_227BD7B18(v26);
}

id sub_227BD63E8()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t AppPurchaseHistoryProvider.__allocating_init(purchaseHistoryStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AppPurchaseHistoryProvider.fetch()()
{
  OUTLINED_FUNCTION_6();
  v1[19] = v2;
  v1[20] = v0;
  v3 = *(type metadata accessor for PurchaseHistoryGame() - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8530, &qword_227D59700);
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227BD6588, 0, 0);
}

uint64_t sub_227BD6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
  v14[26] = v15;
  v16 = [v15 ams_activeiTunesAccount];
  v14[27] = v16;
  if (v16)
  {
    v17 = v16;
    v18 = [v16 ams_DSID];
    if (v18)
    {
      v19 = v18;
      v20 = v14[24];
      v21 = v14[25];
      v22 = v14[23];
      v23 = v14[20];
      v24 = [v18 longLongValue];

      v41 = *(v23 + 16);
      v25 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
      v14[28] = v25;
      [v25 setAccountID_];
      [v25 setIsFirstParty_];
      [v25 setIsPreorder_];
      [v25 setIncludeArcade_];
      [v25 setSupportsCurrentDevice_];
      sub_227B0F360(0, &qword_27D7E8568, 0x277CCABB0);
      v26 = sub_227D4D4B8();
      [v25 setGenreID_];

      [v25 setProperties_];
      [v25 setIsHidden_];
      v14[2] = v14;
      v14[7] = v14 + 18;
      v14[3] = sub_227BD6980;
      swift_continuation_init();
      v14[17] = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8540, &unk_227D59708);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D4D288();
      (*(v20 + 32))(boxed_opaque_existential_1, v21, v22);
      v14[10] = MEMORY[0x277D85DD0];
      v14[11] = 1107296256;
      v14[12] = sub_227BD6E70;
      v14[13] = &block_descriptor_1;
      [v41 executeQuery:v25 withResultHandler:?];
      (*(v20 + 8))(boxed_opaque_existential_1, v22);

      return MEMORY[0x282200938](v14 + 2, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_227BD7B74();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
  }

  else
  {
    sub_227BD7B74();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
  }

  v37 = v14[25];
  v38 = v14[22];

  OUTLINED_FUNCTION_18();

  return v39();
}

uint64_t sub_227BD6980()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_227BD6DCC;
  }

  else
  {
    v3 = sub_227BD6A8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227BD6A8C()
{
  v1 = *(v0 + 144);
  v51 = *(v0 + 168);
  v2 = sub_227B4BF3C(v1);
  v3 = 0;
  v52 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v2 == v3)
    {
      v39 = v53[27];
      v40 = v53[28];
      v41 = v53[25];
      v42 = v53[26];
      v43 = v53[22];
      v44 = v53[19];

      v45 = sub_227BD736C(v52);

      *v44 = v45;
      v44[1] = v52;

      OUTLINED_FUNCTION_18();

      return v46();
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAA63D0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = [v4 bundleID];
    v8 = sub_227D4CFA8();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v53[22];
      v13 = [v5 bundleID];
      v14 = sub_227D4CFA8();
      v16 = v15;

      sub_227BD6FCC(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v48 = v14;
      v50 = v16;
      result = sub_227B2664C(v14, v16);
      if (__OFADD__(*(v52 + 16), (v18 & 1) == 0))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v19 = result;
      HIDWORD(v49) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8548, &qword_227D59718);
      if (sub_227D4D7C8())
      {
        v27 = v50;
        v28 = sub_227B2664C(v48, v50);
        v29 = BYTE4(v49);
        if ((BYTE4(v49) & 1) != (v20 & 1))
        {
          goto LABEL_27;
        }

        v19 = v28;
      }

      else
      {
        v27 = v50;
        v29 = BYTE4(v49);
      }

      v30 = v53[22];
      if (v29)
      {
        OUTLINED_FUNCTION_14_8(v30, v20, v21, v22, v23, v24, v25, v26, v47, v48, v49, v50, v51);
        sub_227BD7C58(v31, v32);
      }

      else
      {
        *(v52 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v33 = (*(v52 + 48) + 16 * v19);
        *v33 = v48;
        v33[1] = v27;
        OUTLINED_FUNCTION_14_8(v30, v20, v21, v22, v23, v24, v25, v26, v47, v48, v49, v50, v51);
        result = sub_227BD7BF4(v34, v35);
        v36 = *(v52 + 16);
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_31;
        }

        *(v52 + 16) = v38;
      }

      v3 = v6;
    }

    else
    {

      ++v3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:

  return sub_227D4DAE8();
}

uint64_t sub_227BD6DCC()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[22];

  OUTLINED_FUNCTION_18();

  return v8();
}

void sub_227BD6E70(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_227BD6F34();
  }

  else
  {
    sub_227B0F360(0, &qword_27D7E8560, 0x277CEC410);
    sub_227D4D1C8();

    sub_227BD6F80();
  }
}

uint64_t sub_227BD6FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = [v1 bundleID];
  sub_227D4CFA8();

  v17[1] = [v2 storeItemID];
  sub_227D4DA38();
  sub_227D4A688();
  (*(v6 + 16))(a1, v11, v4);
  v13 = [v2 datePurchased];
  v14 = type metadata accessor for PurchaseHistoryGame();
  v15 = a1 + *(v14 + 20);
  sub_227D49278();

  LOBYTE(v13) = [v2 isHiddenFromSpringboard];
  result = (*(v6 + 8))(v11, v4);
  *(a1 + *(v14 + 24)) = v13;
  return result;
}

uint64_t AppPurchaseHistoryProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_227BD71E8()
{
  OUTLINED_FUNCTION_6();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227BD7280;

  return AppPurchaseHistoryProvider.fetch()();
}

uint64_t sub_227BD7280()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227BD736C(uint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = v33 - v4;
  v5 = type metadata accessor for PurchaseHistoryGame();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8570, &qword_227D59BB0);
  result = sub_227D4D818();
  v9 = result;
  v10 = 0;
  v42 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = result + 64;
  v35 = v2 + 16;
  v40 = v2;
  v33[1] = v2 + 32;
  v36 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v43 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = *(v42 + 56);
      v23 = (*(v42 + 48) + 16 * v21);
      v24 = v23[1];
      v44 = *v23;
      v25 = v37;
      sub_227BD7AB4(v22 + *(v38 + 72) * v21, v37);
      v27 = v39;
      v26 = v40;
      v28 = v41;
      (*(v40 + 16))(v39, v25, v41);
      sub_227D4CE58();
      sub_227BD7B18(v25);
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v9 = v36;
      v29 = (*(v36 + 48) + 16 * v21);
      *v29 = v44;
      v29[1] = v24;
      result = (*(v26 + 32))(*(v9 + 56) + *(v26 + 72) * v21, v27, v28);
      v30 = *(v9 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v9 + 16) = v32;
      v16 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_227BD7660()
{
  result = qword_27D7F97D0;
  if (!qword_27D7F97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F97D0);
  }

  return result;
}

unint64_t sub_227BD76B4()
{
  result = qword_27D7E84E0;
  if (!qword_27D7E84E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84D8, &unk_227D596C8);
    sub_227BD790C(&qword_280E7B838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84E0);
  }

  return result;
}

unint64_t sub_227BD775C()
{
  result = qword_27D7E84F0;
  if (!qword_27D7E84F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84E8, &qword_227D596D8);
    sub_227BD7A6C(&qword_27D7E84F8, type metadata accessor for PurchaseHistoryGame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84F0);
  }

  return result;
}

uint64_t type metadata accessor for PurchaseHistoryGame()
{
  result = qword_27D7F9B60;
  if (!qword_27D7F9B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227BD7864()
{
  result = qword_27D7E8508;
  if (!qword_27D7E8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84D8, &unk_227D596C8);
    sub_227BD790C(&qword_280E7B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8508);
  }

  return result;
}

uint64_t sub_227BD790C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6888, &unk_227D4E630);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BD795C()
{
  result = qword_27D7E8510;
  if (!qword_27D7E8510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84E8, &qword_227D596D8);
    sub_227BD7A6C(&qword_27D7E8518, type metadata accessor for PurchaseHistoryGame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8510);
  }

  return result;
}

unint64_t sub_227BD7A18()
{
  result = qword_27D7F97D8[0];
  if (!qword_27D7F97D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F97D8);
  }

  return result;
}

uint64_t sub_227BD7A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227BD7AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryGame();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BD7B18(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseHistoryGame();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227BD7B74()
{
  result = qword_27D7E8538;
  if (!qword_27D7E8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8538);
  }

  return result;
}

uint64_t sub_227BD7BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryGame();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BD7C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryGame();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_227BD7CC0()
{
  result = qword_27D7E8550;
  if (!qword_27D7E8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8550);
  }

  return result;
}

uint64_t sub_227BD7D14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_227BD7D54(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_227BD7DC8()
{
  sub_227BD7E54();
  if (v0 <= 0x3F)
  {
    sub_227D492A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227BD7E54()
{
  if (!qword_280E7B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8558, &qword_227D607E0);
    v0 = sub_227D4A928();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7B6A0);
    }
  }
}

_BYTE *sub_227BD7F20(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseHistoryData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BD80D4()
{
  result = qword_27D7F9C70[0];
  if (!qword_27D7F9C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F9C70);
  }

  return result;
}

unint64_t sub_227BD812C()
{
  result = qword_27D7F9E80[0];
  if (!qword_27D7F9E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F9E80);
  }

  return result;
}

unint64_t sub_227BD8184()
{
  result = qword_27D7F9F90;
  if (!qword_27D7F9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F9F90);
  }

  return result;
}

unint64_t sub_227BD81DC()
{
  result = qword_27D7F9F98[0];
  if (!qword_27D7F9F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F9F98);
  }

  return result;
}

unint64_t sub_227BD8234()
{
  result = qword_27D7FA020;
  if (!qword_27D7FA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FA020);
  }

  return result;
}

unint64_t sub_227BD828C()
{
  result = qword_27D7FA028[0];
  if (!qword_27D7FA028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FA028);
  }

  return result;
}

uint64_t sub_227BD8304()
{
  OUTLINED_FUNCTION_6();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690) - 8) + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227BD8390()
{
  v1 = v0[8];
  v0[12] = sub_227D4A6A8();
  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_227BD8494;
  v4 = v0[10];

  return sub_227CACB7C();
}

uint64_t sub_227BD8494()
{
  OUTLINED_FUNCTION_6();
  v2 = *(*v1 + 112);
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  if (v0)
  {

    v5 = sub_227BDE69C;
  }

  else
  {
    v5 = sub_227BD85A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227BD85A0()
{
  v1 = *(v0[10] + 96);
  v0[15] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[16] = *(*v1 + 96);
  v0[17] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BD85DC, v1);
}

uint64_t sub_227BD85DC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  *(v0 + 144) = (*(v0 + 128))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BD8640()
{
  v1 = sub_227BD8C70(v0[12], v0[13], v0[18]);
  v0[19] = v1;

  if (v1)
  {
    v2 = *v1 + 392;
    v0[20] = *v2;
    v0[21] = v2 & 0xFFFFFFFFFFFFLL | 0xDD5F000000000000;

    return MEMORY[0x2822009F8](sub_227BD87AC, v1, 0);
  }

  else
  {
    v3 = v0[11];
    v4 = v0[7];
    v5 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v3, v6, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
    OUTLINED_FUNCTION_8_9(&qword_27D7E6AA0);
    OUTLINED_FUNCTION_6_9(&qword_27D7E6AB8);
    sub_227D4A948();
    v8 = v0[11];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_227BD87AC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  *(v0 + 176) = (*(v0 + 160))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227BD8810()
{
  v1 = *(v0 + 80);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_227BD8940;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_227BD8940()
{
  OUTLINED_FUNCTION_6();
  v3 = *(*v1 + 184);
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v2;
  *(v2 + 192) = v0;

  if (v0)
  {
    v5 = *(v2 + 176);

    v6 = sub_227BD8C08;
  }

  else
  {
    v6 = sub_227BD8A50;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227BD8A50()
{
  v18 = v0;
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v0 + 2;
  v6 = sub_227BD95C4(MEMORY[0x277D84FA0], sub_227BD8CC0, v5, v2);

  v17[0] = sub_227BD9708(v6);
  sub_227D4CE58();
  sub_227BDB3AC(v17);
  v7 = v0[19];
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v8 = v0[11];

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v10 = v0[11];
    v11 = v0[7];

    v12 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v10, v13, v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
    OUTLINED_FUNCTION_8_9(&qword_27D7E6AA0);
    OUTLINED_FUNCTION_6_9(&qword_27D7E6AB8);
    sub_227D4A948();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v15 = v0[11];

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_227BD8C08()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[19];

  v2 = v0[24];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227BD8C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_227BD8CC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v7[2] = *(v2 + 16);
  v8 = *(v2 + 24);
  v4 = sub_227BD8D84(sub_227BDE4FC, v7, v3);
  v5 = sub_227BD91F0(v4);
  return sub_227BD93A8(v5);
}