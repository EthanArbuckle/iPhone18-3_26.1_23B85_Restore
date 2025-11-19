void __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.init(receivingPlayerIds:bundleId:activityUrl:activityVendorId:activityType:ascResourceId:)(GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent *__return_ptr retstr, Swift::OpaquePointer receivingPlayerIds, Swift::String bundleId, Swift::String activityUrl, Swift::String activityVendorId, Swift::String activityType, Swift::String_optional ascResourceId)
{
  OUTLINED_FUNCTION_1329(receivingPlayerIds._rawValue, bundleId._countAndFlagsBits, bundleId._object, activityUrl._countAndFlagsBits, activityUrl._object, activityVendorId._countAndFlagsBits, activityVendorId._object, activityType._countAndFlagsBits, retstr);
  *(v7 + 64) = v8;
  *(v7 + 80) = v9;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DD85498()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 4:
      return;
    case 3:
      OUTLINED_FUNCTION_155();
      break;
    case 5:
      OUTLINED_FUNCTION_925();
      break;
    default:
      OUTLINED_FUNCTION_345();
      break;
  }
}

uint64_t sub_24DD855D8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD85608()
{
  sub_24DDE20BC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD85640()
{
  sub_24DDE20BC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_597();
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v28 = v0[6];
  v29 = v0[5];
  v27 = v0[7];
  v26 = v0[8];
  v23 = v0[10];
  v6 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v11 = v5[4];
  v10 = v5[5];
  v12 = v5[6];
  v25 = v5[7];
  v24 = v5[8];
  v20 = v5[9];
  v21 = v0[9];
  v22 = v5[10];
  v13 = OUTLINED_FUNCTION_1076(*v0);
  if (sub_24DD85994(v13, v14))
  {
    v15 = v1 == v7 && v3 == v9;
    if (v15 || (OUTLINED_FUNCTION_393(), OUTLINED_FUNCTION_1179(), (sub_24DE22CA0() & 1) != 0))
    {
      v16 = v2 == v8 && v4 == v11;
      if (v16 || (OUTLINED_FUNCTION_638(), OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
      {
        v17 = v29 == v10 && v28 == v12;
        if (v17 || (OUTLINED_FUNCTION_812(), (sub_24DE22CA0() & 1) != 0))
        {
          v18 = v27 == v25 && v26 == v24;
          if (v18 || (sub_24DE22CA0()) && v23 && v22 && (v21 != v20 || v23 != v22))
          {
            sub_24DE22CA0();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_586();
}

void sub_24DD857C4()
{
  OUTLINED_FUNCTION_659();
  v32 = v0;
  v2 = v1;
  v4 = v3;
  v6 = OUTLINED_FUNCTION_1208(v3, v1, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_27(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v14);
  v15 = *(v4 + 16);
  if (v15 == *(v2 + 16) && v15 && v4 != v2)
  {
    v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v17 = v4 + v16;
    v18 = v2 + v16;
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v21 = (v19 - 8);
    v30 = *(v19 + 56);
    v31 = v20;
    while (1)
    {
      v22 = OUTLINED_FUNCTION_616();
      v31(v22);
      if (!v15)
      {
        break;
      }

      v23 = OUTLINED_FUNCTION_642();
      v24 = v19;
      v31(v23);
      sub_24DDFCE60(v32);
      OUTLINED_FUNCTION_539();
      v25 = sub_24DE22AB0();
      v26 = *v21;
      v27 = OUTLINED_FUNCTION_546();
      v26(v27);
      v28 = OUTLINED_FUNCTION_615();
      v26(v28);
      if (v25)
      {
        v18 += v30;
        v17 += v30;
        v29 = v15-- == 1;
        v19 = v24;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_653();
  }
}

uint64_t sub_24DD85994(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_24DE22CA0() & 1) == 0)
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

uint64_t sub_24DD85A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + v5 + 36);
      if (*(a1 + v5 + 36))
      {
        if (!*(a2 + v5 + 36))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 32) != *(a2 + v5 + 32))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v7 = *(a1 + v5 + 40) == *(a2 + v5 + 40) && *(a1 + v5 + 48) == *(a2 + v5 + 48);
      if (!v7 && (sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }

      v5 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24DD85ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = *(v4 - 16);
      v8 = 0xE200000000000000;
      v9 = 27503;
      v11 = *(v4 - 1);
      v10 = *v4;
      switch(*(v3 - 16))
      {
        case 1:
          v9 = 0x5F79646165726C61;
          v8 = 0xEF64657469766E69;
          break;
        case 2:
          v9 = 0xD000000000000010;
          v8 = 0x800000024DE39BB0;
          break;
        case 3:
          v9 = 0xD000000000000020;
          v8 = 0x800000024DE39BD0;
          break;
        case 4:
          v9 = 0xD00000000000001CLL;
          v8 = 0x800000024DE39C00;
          break;
        case 5:
          v8 = 0xE500000000000000;
          v9 = 0x726F727265;
          break;
        default:
          break;
      }

      v12 = 0xE200000000000000;
      v13 = 27503;
      switch(*(v4 - 16))
      {
        case 1:
          v13 = 0x5F79646165726C61;
          v12 = 0xEF64657469766E69;
          break;
        case 2:
          v13 = 0xD000000000000010;
          v12 = 0x800000024DE39BB0;
          break;
        case 3:
          v13 = 0xD000000000000020;
          v12 = 0x800000024DE39BD0;
          break;
        case 4:
          v13 = 0xD00000000000001CLL;
          v12 = 0x800000024DE39C00;
          break;
        case 5:
          v12 = 0xE500000000000000;
          v13 = 0x726F727265;
          break;
        default:
          break;
      }

      if (v9 == v13 && v8 == v12)
      {
        v16 = *v3;
      }

      else
      {
        v15 = sub_24DE22CA0();

        if ((v15 & 1) == 0)
        {

          return 0;
        }
      }

      if (v6 == v11 && v5 == v10)
      {
      }

      else
      {
        v18 = sub_24DE22CA0();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24DD85DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = a2;
    v4 = a1;
    if (a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v7 = *(v4 + i + 48);
      v6 = *(v4 + i + 56);
      v8 = *(v4 + i + 64);
      v9 = *(v4 + i + 72);
      v39 = *(v4 + i + 76);
      v10 = *(v4 + i + 80);
      v11 = *(v4 + i + 84);
      v12 = *(v3 + i + 48);
      v13 = *(v3 + i + 56);
      v40 = *(v3 + i + 64);
      v14 = *(v3 + i + 72);
      v15 = *(v3 + i + 76);
      v16 = *(v3 + i + 80);
      v17 = *(v4 + i + 32) == *(v3 + i + 32) && *(v4 + i + 40) == *(v3 + i + 40);
      v18 = *(v3 + i + 84);
      if (!v17)
      {
        v35 = *(v3 + i + 48);
        v38 = *(v3 + i + 84);
        v36 = *(v3 + i + 76);
        v19 = *(v3 + i + 80);
        v37 = *(v4 + i + 64);
        v20 = *(v4 + i + 72);
        v21 = *(v3 + i + 72);
        v22 = *(v4 + i + 56);
        v23 = sub_24DE22CA0();
        v3 = a2;
        v12 = v35;
        v6 = v22;
        v14 = v21;
        v9 = v20;
        v8 = v37;
        v16 = v19;
        v15 = v36;
        v18 = v38;
        v4 = a1;
        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v13)
        {
          return 0;
        }

        if (v7 != v12 || v6 != v13)
        {
          v25 = v16;
          v26 = v9;
          v27 = v14;
          v28 = sub_24DE22CA0();
          v14 = v27;
          v9 = v26;
          v16 = v25;
          v4 = a1;
          v3 = a2;
          if ((v28 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v13)
      {
        return 0;
      }

      if (v9)
      {
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v40)
        {
          v29 = v14;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          return 0;
        }
      }

      if (v10)
      {
        if (v11 == v18)
        {
          v30 = v16;
        }

        else
        {
          v30 = 0;
        }

        if (v30 != 1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v16)
        {
          return result;
        }

        if (v39 != v15 || v11 != v18)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD85FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    while (1)
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v6 = *(a1 + v3 + 64);
      v7 = *(a1 + v3 + 72);
      v8 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v23 = v3;
      v24 = *(a2 + v3 + 72);
      if (*(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40))
      {
        if (v4 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_24DE22CA0();
        result = 0;
        if ((v12 & 1) == 0 || v4 != v8)
        {
          return result;
        }
      }

      v14 = v5 == v9 && v6 == v10;
      if (!v14 && (sub_24DE22CA0() & 1) == 0)
      {
        break;
      }

      if (v7 == 6)
      {
        if (v24 != 6)
        {
          return 0;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        v16 = 27503;
        switch(v7)
        {
          case 1:
            v16 = 0x5F79646165726C61;
            v15 = 0xEF64657469766E69;
            break;
          case 2:
            v16 = 0xD000000000000010;
            v15 = 0x800000024DE39BB0;
            break;
          case 3:
            v16 = 0xD000000000000020;
            v15 = 0x800000024DE39BD0;
            break;
          case 4:
            v16 = 0xD00000000000001CLL;
            v15 = 0x800000024DE39C00;
            break;
          case 5:
            v15 = 0xE500000000000000;
            v16 = 0x726F727265;
            break;
          default:
            break;
        }

        v17 = 0xE200000000000000;
        v18 = 27503;
        switch(v24)
        {
          case 0:
            break;
          case 1:
            v18 = 0x5F79646165726C61;
            v17 = 0xEF64657469766E69;
            break;
          case 2:
            v18 = 0xD000000000000010;
            v17 = 0x800000024DE39BB0;
            break;
          case 3:
            v18 = 0xD000000000000020;
            v17 = 0x800000024DE39BD0;
            break;
          case 4:
            v18 = 0xD00000000000001CLL;
            v17 = 0x800000024DE39C00;
            break;
          case 5:
            v17 = 0xE500000000000000;
            v18 = 0x726F727265;
            break;
          default:
            return 0;
        }

        if (v16 == v18 && v15 == v17)
        {
        }

        else
        {
          v20 = sub_24DE22CA0();

          if ((v20 & 1) == 0)
          {
            return 0;
          }
        }
      }

      v3 = v23 + 48;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD8633C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, 0x81uLL);
      memcpy(v10, v3, sizeof(v10));
      memcpy(v12, i, 0x81uLL);
      memcpy(__src, i, sizeof(__src));
      sub_24DDE51F8(__dst, v8);
      sub_24DDE51F8(v12, v8);
      static Components.Schemas.Leaderboard_ScoreWithPlayerDesc.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, 0x81uLL);
      sub_24DDE5174(v13);
      memcpy(v14, v10, 0x81uLL);
      sub_24DDE5174(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD8644C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 472)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v10, v3, sizeof(v10));
      memcpy(v12, i, sizeof(v12));
      memcpy(__src, i, sizeof(__src));
      sub_24DDE3E38(__dst, v8);
      sub_24DDE3E38(v12, v8);
      static Components.Schemas.Leaderboard_GetLeaderboards_Result.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, sizeof(v13));
      sub_24DDE3E70(v13);
      memcpy(v14, v10, sizeof(v14));
      sub_24DDE3E70(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 472;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD8655C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 9)
    {
      v5 = *i;
      v6 = i[1];
      v7 = i[2];
      v8 = i[3];
      v9 = i[4];
      v10 = i[6];
      v38 = i[5];
      v11 = *(v3 - 12);
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[2];
      v15 = v3[3];
      v16 = v3[4];
      v18 = v3[5];
      v17 = v3[6];
      if (*(i - 12))
      {
        if (!*(v3 - 12))
        {
          return 0;
        }
      }

      else
      {
        if (*(i - 4) != *(v3 - 4))
        {
          v11 = 1;
        }

        if (v11)
        {
          return 0;
        }
      }

      if (v5)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(i - 1) != *(v3 - 1) || v5 != v12)
        {
          v36 = v3[5];
          v37 = i[3];
          v34 = v3[6];
          v35 = i[4];
          v20 = i[6];
          v21 = v3[3];
          v22 = i[1];
          v23 = v3[1];
          v24 = sub_24DE22CA0();
          v13 = v23;
          v6 = v22;
          v15 = v21;
          v10 = v20;
          v17 = v34;
          v9 = v35;
          v18 = v36;
          v8 = v37;
          if ((v24 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v7)
      {
        if (!v14)
        {
          return 0;
        }

        if (v6 != v13 || v7 != v14)
        {
          v26 = v10;
          v27 = v15;
          v28 = sub_24DE22CA0();
          v15 = v27;
          v10 = v26;
          if ((v28 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v9)
      {
        if (!v16)
        {
          return 0;
        }

        if (v8 != v15 || v9 != v16)
        {
          v30 = v10;
          v31 = sub_24DE22CA0();
          v10 = v30;
          if ((v31 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v10)
      {
        if (!v17)
        {
          return 0;
        }

        v32 = v38 == v18 && v10 == v17;
        if (!v32 && (sub_24DE22CA0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v17)
      {
        return 0;
      }

      v3 += 9;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_24DD86754(uint64_t a1, uint64_t a2)
{
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  v5 = *(*(LeaderboardCategories_Result - 8) + 64);
  v6 = MEMORY[0x28223BE20](LeaderboardCategories_Result - 8);
  MEMORY[0x28223BE20](v6);
  v8 = *(a1 + 16);
  if (v8 == *(a2 + 16))
  {
    if (!v8 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = a1 + v9;
      v11 = a2 + v9;
      v12 = *(v7 + 72);
      do
      {
        sub_24DD74A90();
        sub_24DD74A90();
        static Components.Schemas.Game_GetLeaderboardCategories_Result.== infix(_:_:)();
        v14 = v13;
        sub_24DD74008();
        sub_24DD74008();
        if ((v14 & 1) == 0)
        {
          break;
        }

        v11 += v12;
        v10 += v12;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24DD8690C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 192)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_24DDE7374(__dst, v7);
      sub_24DDE7374(v11, v7);
      v5 = static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.== infix(_:_:)(v9);
      memcpy(v12, __src, sizeof(v12));
      sub_24DDE73AC(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_24DDE73AC(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 192;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86A1C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v28 = a2 + 32;
  v29 = result + 32;
  v27 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v29 + 80 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[5];
    v35 = v4[7];
    v36 = v4[6];
    v31 = v4[9];
    v32 = v4[8];
    v11 = (v28 + 80 * v3);
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    v33 = v11[7];
    v34 = v11[6];
    v16 = v11[8];
    v30 = v11[9];
    v17 = v5 == *v11 && v6 == v11[1];
    if (!v17 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (!v12)
      {
        return 0;
      }

      v18 = v7 == v13 && v8 == v12;
      if (!v18 && (sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    v19 = v9 == v14 && v10 == v15;
    if (!v19 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    result = v36;
    if (v36 != v34 || v35 != v33)
    {
      result = sub_24DE22CA0();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v32)
    {
      if (!v16)
      {
        return 0;
      }

      v21 = *(v32 + 16);
      if (v21 != *(v16 + 16))
      {
        return 0;
      }

      if (v21)
      {
        v22 = v32 == v16;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v32 + 40);
        v24 = (v16 + 40);
        while (v21)
        {
          result = *(v23 - 1);
          if (result != *(v24 - 1) || *v23 != *v24)
          {
            result = sub_24DE22CA0();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v23 += 2;
          v24 += 2;
          if (!--v21)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
        break;
      }

LABEL_45:
      if (v31 != v30)
      {
        return 0;
      }
    }

    else
    {
      if (v16)
      {
        v26 = 0;
      }

      else
      {
        v26 = v31 == v30;
      }

      if (!v26)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    v2 = v27;
    if (v3 == v27)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD86C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 176)
    {
      memcpy(__dst, v3, 0xA9uLL);
      memcpy(v9, v3, 0xA9uLL);
      memcpy(v11, i, 0xA9uLL);
      memcpy(__src, i, sizeof(__src));
      sub_24DDE72B8(__dst, v7);
      sub_24DDE72B8(v11, v7);
      v5 = static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.== infix(_:_:)(v9);
      memcpy(v12, __src, 0xA9uLL);
      sub_24DDE72F0(v12);
      memcpy(v13, v9, 0xA9uLL);
      sub_24DDE72F0(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 176;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86D3C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD86D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 288)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_24DDE47A8(__dst, v7);
      sub_24DDE47A8(v11, v7);
      v5 = static Components.Schemas.GetGameAchievements_Achievement.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_24DDE47E0(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_24DDE47E0(v13);
      if (!v5)
      {
        break;
      }

      v3 += 288;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86EA8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = *(v1 + 16);
  if (v3 == *(v2 + 16))
  {
    if (!v3 || v1 == v2)
    {
      return 1;
    }

    v4 = (v1 + 32);
    for (i = (v2 + 32); ; i += 624)
    {
      memcpy(__dst, v4, 0x26FuLL);
      memcpy(v11, v4, sizeof(v11));
      memcpy(v13, i, 0x26FuLL);
      memcpy(__src, i, sizeof(__src));
      sub_24DDE30DC(__dst, v9);
      sub_24DDE30DC(v13, v9);
      static Components.Schemas.Profile_GetProfileInfo_ProfileInfo.== infix(_:_:)();
      v7 = v6;
      memcpy(v14, __src, 0x26FuLL);
      sub_24DDE2F5C(v14);
      memcpy(v15, v11, 0x26FuLL);
      sub_24DDE2F5C(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v4 += 624;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 152)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      v5 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_24DD83490(__dst, v7);
      sub_24DD83490(v11, v7);
      sub_24DD83460(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_24DD83460(v13);
      if (!v5)
      {
        break;
      }

      v3 += 152;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_24DD870E4()
{
  result = qword_27F1B2900;
  if (!qword_27F1B2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2900);
  }

  return result;
}

unint64_t sub_24DD87138()
{
  result = qword_27F1B2908;
  if (!qword_27F1B2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2908);
  }

  return result;
}

unint64_t sub_24DD8718C()
{
  result = qword_27F1B2918;
  if (!qword_27F1B2918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2910, &qword_24DE230B8);
    sub_24DD87258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2918);
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

unint64_t sub_24DD87258()
{
  result = qword_27F1B2920;
  if (!qword_27F1B2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2920);
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1177();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2960, &qword_24DE230D8);
  OUTLINED_FUNCTION_23(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_100();
  v7 = *v0;
  v23 = v0[2];
  v24 = v0[1];
  v21 = v0[4];
  v22 = v0[3];
  v19 = v0[6];
  v20 = v0[5];
  v17 = v0[7];
  v18 = v0[8];
  v15 = v0[9];
  v16 = v0[10];
  v9 = *(v1 + 24);
  v8 = *(v1 + 32);
  OUTLINED_FUNCTION_152();
  v10 = sub_24DDE20BC();

  OUTLINED_FUNCTION_425();
  sub_24DE22D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
  OUTLINED_FUNCTION_4();
  sub_24DDE2110(v11);
  OUTLINED_FUNCTION_920();
  OUTLINED_FUNCTION_179();
  sub_24DE22C70();
  if (v10)
  {
  }

  else
  {

    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
  }

  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_446();
  v14(v13);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.hash(into:)()
{
  OUTLINED_FUNCTION_628();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_768();
  v3 = v0[10];
  sub_24DDE0DB4(v4, v5);
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_727();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_584();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_446();
  sub_24DE22AD0();
  if (v3)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_549();

    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
    OUTLINED_FUNCTION_549();
  }
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_884();
  a31 = v34;
  a32 = v35;
  v36 = *v32;
  v37 = v32[1];
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_1290();
  sub_24DDE0DB4(&a12, v36);
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_727();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_584();
  sub_24DE22AD0();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v33)
  {
    OUTLINED_FUNCTION_919();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_882();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2980, &qword_24DE230E8);
  OUTLINED_FUNCTION_27(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_138();
  v30 = v24[3];
  v31 = v24[4];
  OUTLINED_FUNCTION_301(v24);
  sub_24DDE20BC();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_675();
  sub_24DE22D30();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    LOBYTE(v55[0]) = 0;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v32);
    OUTLINED_FUNCTION_782();
    sub_24DE22BC0();
    v33 = v56[0];
    OUTLINED_FUNCTION_304();
    v50 = sub_24DE22BA0();
    OUTLINED_FUNCTION_816(v34, &a17);
    OUTLINED_FUNCTION_304();
    v35 = sub_24DE22BA0();
    v51 = v36;
    v49 = v35;
    OUTLINED_FUNCTION_304();
    v48 = sub_24DE22BA0();
    v53 = v37;
    LOBYTE(v56[0]) = 4;
    OUTLINED_FUNCTION_304();
    v47 = sub_24DE22BA0();
    v52 = v38;
    OUTLINED_FUNCTION_1016(5);
    OUTLINED_FUNCTION_304();
    v39 = sub_24DE22B40();
    v40 = OUTLINED_FUNCTION_381();
    v42 = v41;
    v43(v40, v27);
    v55[0] = v33;
    OUTLINED_FUNCTION_707();
    v55[1] = v45;
    v55[2] = v44;
    v55[3] = v49;
    v55[4] = v51;
    v55[5] = v48;
    v55[6] = v53;
    v55[7] = v47;
    v55[8] = v52;
    v55[9] = v39;
    v55[10] = v42;
    memcpy(v26, v55, 0x58uLL);
    sub_24DDE2164(v55, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v56[0] = v33;
    v56[1] = v50;
    v56[2] = v54;
    v56[3] = v49;
    OUTLINED_FUNCTION_1236();
    v56[4] = v51;
    v56[5] = v46;
    v56[6] = v53;
    v56[7] = v47;
    v56[8] = v52;
    v56[9] = v39;
    v56[10] = v42;
    sub_24DDE219C(v56);
  }

  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

double Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

double Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.init(status:message:alert:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_917(a1, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v6 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v6, v7);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.CodingKeys.stringValue.getter()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7472656C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_24DD87C60@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD87C90()
{
  sub_24DDE21CC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD87CC8()
{
  sub_24DDE21CC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_267(a1);
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  OUTLINED_FUNCTION_1282();
  v15 = v13[3];
  v14 = v13[4];
  v17 = v13[5];
  v16 = v13[6];
  if (v18)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543(v11);
    if (v19)
    {
      return 0;
    }
  }

  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  v20 = v7 == v9 && v8 == v10;
  if (!v20 && (sub_24DE22CA0() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  if (v5 != 1)
  {
    v51[0] = v3;
    v51[1] = v5;
    v51[2] = v4;
    v51[3] = v6;
    if (v14 != 1)
    {
      v50[0] = v15;
      v50[1] = v14;
      v50[2] = v17;
      v50[3] = v16;
      v41 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)(v51, v50);
      v42 = OUTLINED_FUNCTION_94();
      sub_24DD7639C(v42, v43);
      OUTLINED_FUNCTION_380();
      OUTLINED_FUNCTION_693();
      sub_24DD7639C(v44, v45);
      v46 = OUTLINED_FUNCTION_94();
      sub_24DD7639C(v46, v47);

      v48 = OUTLINED_FUNCTION_94();
      sub_24DD763E4(v48, v49);
      return (v41 & 1) != 0;
    }

    v28 = OUTLINED_FUNCTION_94();
    sub_24DD7639C(v28, v29);
    v30 = OUTLINED_FUNCTION_603();
    sub_24DD7639C(v30, v31);
    v32 = OUTLINED_FUNCTION_94();
    sub_24DD7639C(v32, v33);

    goto LABEL_20;
  }

  v21 = OUTLINED_FUNCTION_176();
  sub_24DD7639C(v21, v22);
  if (v14 != 1)
  {
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_693();
    sub_24DD7639C(v34, v35);
LABEL_20:
    v36 = OUTLINED_FUNCTION_94();
    sub_24DD763E4(v36, v37);
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_693();
    sub_24DD763E4(v38, v39);
    return 0;
  }

  v23 = 1;
  v24 = OUTLINED_FUNCTION_603();
  sub_24DD7639C(v24, v25);
  v26 = OUTLINED_FUNCTION_176();
  sub_24DD763E4(v26, v27);
  return v23;
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2990, &qword_24DE230F0);
  OUTLINED_FUNCTION_23(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE21CC();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v10)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_606();
    OUTLINED_FUNCTION_554();
    sub_24DD7639C(v5, v6);
    sub_24DD87138();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_197();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
  }

  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_446();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.hash(into:)()
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_192();
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  if (v7 == 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_386();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *v0;
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v3 == 1)
  {
    goto LABEL_13;
  }

  sub_24DE22CE0();
  if (!v3)
  {
    sub_24DE22CE0();
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_13:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_999();
    return;
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_593();
  sub_24DE22AD0();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_999();

  sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29A0, &qword_24DE230F8);
  OUTLINED_FUNCTION_27(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_84();
  v18 = v11[3];
  v19 = v11[4];
  OUTLINED_FUNCTION_153(v11);
  sub_24DDE21CC();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v12)
  {
    OUTLINED_FUNCTION_612();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v39 = 0;
    v40 = a11;
    v41 = v14;
    v42 = v19;
    *v43 = xmmword_24DE22F30;
    *&v43[16] = 0;
    v44 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_436();
    v20 = sub_24DE22B80();
    v21 = v20;
    OUTLINED_FUNCTION_212(v20);
    LOBYTE(v39) = v22;
    OUTLINED_FUNCTION_436();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    OUTLINED_FUNCTION_890();
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_581();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v23 = OUTLINED_FUNCTION_305();
    v24(v23);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    v28 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v28, v29);
    LODWORD(v32) = v21;
    BYTE4(v32) = a11;
    *(&v32 + 1) = v14;
    *&v33 = v19;
    *(&v33 + 1) = v36;
    v34 = v37;
    v35 = v38;
    *(v14 + 48) = v38;
    v30 = v34;
    v31 = v32;
    *(v14 + 16) = v33;
    *(v14 + 32) = v30;
    *v14 = v31;
    sub_24DDE2250(&v32, &v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v39 = v21;
    v40 = a11;
    v41 = v14;
    v42 = v19;
    *v43 = v25;
    *&v43[8] = v27;
    v44 = v26;
  }

  sub_24DDE2220(&v39);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Artwork.bgColor.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor1.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor2.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor3.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor4.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.url.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.width.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 108) = BYTE4(result) & 1;
  return result;
}

__n128 Components.Schemas.Artwork.init(height:bgColor:textColor1:textColor2:textColor3:textColor4:url:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, int a13, char a14)
{
  result = a11;
  *a9 = a1;
  *(a9 + 4) = BYTE4(a1) & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 108) = a14 & 1;
  return result;
}

GameCenterServerClient::Components::Schemas::Artwork::CodingKeys_optional __swiftcall Components.Schemas.Artwork.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Artwork::CodingKeys_optional __swiftcall Components.Schemas.Artwork.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Artwork.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DD88750()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_895();
      break;
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_1281();
      break;
    default:
      return;
  }
}

uint64_t sub_24DD888CC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Artwork.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD888FC()
{
  sub_24DDE2288();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD88934()
{
  sub_24DDE2288();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Artwork.== infix(_:_:)()
{
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_267(v0);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v87 = *(v1 + 64);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  v13 = *(v1 + 108);
  OUTLINED_FUNCTION_1282();
  v26 = v25;
  v28 = *(v21 + 24);
  v27 = *(v21 + 32);
  v30 = *(v21 + 40);
  v29 = *(v21 + 48);
  v85 = *(v21 + 56);
  v31 = *(v21 + 72);
  v86 = *(v21 + 64);
  v33 = *(v21 + 80);
  v32 = *(v21 + 88);
  v34 = *(v21 + 96);
  v35 = *(v21 + 108);
  if (v36)
  {
    if (!v22)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*v20 == *v21)
    {
      v37 = v22;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_60;
    }
  }

  if (v15)
  {
    if (!v17)
    {
      goto LABEL_60;
    }

    if (v14 != v16 || v15 != v17)
    {
      v79 = *(v21 + 72);
      v81 = *(v21 + 88);
      v39 = *(v21 + 108);
      v77 = v23;
      v40 = v24;
      v72 = *(v21 + 104);
      v70 = v19;
      v71 = *(v21 + 96);
      v73 = *(v21 + 80);
      v75 = v18;
      v41 = sub_24DE22CA0();
      v19 = v70;
      v33 = v73;
      v18 = v75;
      v34 = v71;
      v24 = v40;
      v23 = v77;
      v31 = v79;
      v32 = v81;
      if ((v41 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_60;
  }

  if (v5)
  {
    if (!v27)
    {
      goto LABEL_60;
    }

    if (v3 != v28 || v5 != v27)
    {
      v80 = v31;
      v82 = v32;
      v78 = v23;
      v43 = v24;
      v44 = v34;
      v74 = v33;
      v76 = v18;
      v45 = v19;
      v46 = sub_24DE22CA0();
      v33 = v74;
      v18 = v76;
      v19 = v45;
      v34 = v44;
      v31 = v80;
      v32 = v82;
      v24 = v43;
      v23 = v78;
      if ((v46 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_60;
  }

  if (v6)
  {
    if (!v29)
    {
      goto LABEL_60;
    }

    if (v4 != v30 || v6 != v29)
    {
      v83 = v32;
      v48 = v23;
      v49 = v24;
      v50 = v34;
      v51 = v18;
      v52 = v19;
      v53 = v33;
      v54 = sub_24DE22CA0();
      v33 = v53;
      v19 = v52;
      v18 = v51;
      v32 = v83;
      v34 = v50;
      v24 = v49;
      v23 = v48;
      if ((v54 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v29)
  {
    goto LABEL_60;
  }

  if (v87)
  {
    if (!v86)
    {
      goto LABEL_60;
    }

    if (v26 != v85 || v87 != v86)
    {
      v84 = v32;
      v56 = v23;
      v57 = v24;
      v58 = v34;
      v59 = v18;
      v60 = v19;
      v61 = v33;
      v62 = sub_24DE22CA0();
      v33 = v61;
      v19 = v60;
      v18 = v59;
      v34 = v58;
      v24 = v57;
      v23 = v56;
      v32 = v84;
      if ((v62 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v86)
  {
    goto LABEL_60;
  }

  if (v19)
  {
    if (!v33)
    {
      goto LABEL_60;
    }

    if (v18 != v31 || v19 != v33)
    {
      v64 = v32;
      v65 = v23;
      v66 = v24;
      v67 = v34;
      v68 = sub_24DE22CA0();
      v32 = v64;
      v34 = v67;
      v24 = v66;
      v23 = v65;
      if ((v68 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_60;
  }

  if (v24 && v34 && (v23 != v32 || v24 != v34))
  {
    sub_24DE22CA0();
  }

LABEL_60:
  OUTLINED_FUNCTION_585();
}

void Components.Schemas.Artwork.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29A8, &qword_24DE23100);
  OUTLINED_FUNCTION_27(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_100();
  v7 = *v0;
  v8 = *(v0 + 4);
  v25 = *(v0 + 2);
  v26 = *(v0 + 1);
  v23 = *(v0 + 4);
  v24 = *(v0 + 3);
  v21 = *(v0 + 6);
  v22 = *(v0 + 5);
  v19 = *(v0 + 7);
  v20 = *(v0 + 8);
  v17 = *(v0 + 9);
  v18 = *(v0 + 10);
  v15 = *(v0 + 11);
  v16 = *(v0 + 12);
  v14 = v0[26];
  v13 = *(v0 + 108);
  v9 = v3[3];
  v10 = v3[4];
  OUTLINED_FUNCTION_153(v3);
  sub_24DDE2288();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_820();
  sub_24DE22C30();
  if (!v1)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_747();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_843();
    OUTLINED_FUNCTION_681();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_970();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_376();
    sub_24DE22C30();
  }

  v11 = OUTLINED_FUNCTION_530();
  v12(v11, v4);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Artwork.hash(into:)()
{
  OUTLINED_FUNCTION_1011();
  OUTLINED_FUNCTION_192();
  v2 = *(v0 + 1);
  v1 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v18 = *(v0 + 5);
  v5 = *(v0 + 7);
  v19 = *(v0 + 6);
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v17 = *(v0 + 11);
  v9 = *(v0 + 12);
  v16 = v0[26];
  v10 = *(v0 + 108);
  if (v11 == 1)
  {
    sub_24DE22CE0();
    if (v1)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_867();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *(v0 + 8);
    v12 = *(v0 + 10);
    v13 = *(v0 + 12);
    v14 = *v0;
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v4)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1073();
    sub_24DE22AD0();
    if (v19)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v19)
    {
LABEL_8:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1074();
      sub_24DE22AD0();
      if (v6)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  sub_24DE22CE0();
  if (v6)
  {
LABEL_9:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_822();
    sub_24DE22AD0();
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_24DE22CE0();
  if (v8)
  {
LABEL_10:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_426();
    sub_24DE22AD0();
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_24DE22CE0();
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_18:
    sub_24DE22CE0();
    sub_24DE22CF0();
    goto LABEL_19;
  }

LABEL_16:
  sub_24DE22CE0();
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_714();
  sub_24DE22AD0();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_12:
  sub_24DE22CE0();
LABEL_19:
  OUTLINED_FUNCTION_1007();
}

uint64_t Components.Schemas.Artwork.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.Artwork.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Artwork.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1067();
  OUTLINED_FUNCTION_358();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29B8, &qword_24DE23108);
  OUTLINED_FUNCTION_24(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_84();
  *(v6 - 72) = v12;
  v13 = v0[3];
  v14 = v0[4];
  *(v6 - 328) = v0;
  OUTLINED_FUNCTION_153(v0);
  sub_24DDE2288();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v1)
  {
    *(v6 - 336) = v1;
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_770();
    __swift_destroy_boxed_opaque_existential_1Tm(*(v6 - 328));
    *(v6 - 200) = 0;
    *(v6 - 196) = *(v6 - 68);
    *(v6 - 195) = *(v6 - 67);
    *(v6 - 193) = *(v6 - 65);
    *(v6 - 192) = 0;
    *(v6 - 184) = v3;
    *(v6 - 176) = v13;
    *(v6 - 168) = v5;
    OUTLINED_FUNCTION_1236();
    *(v6 - 160) = v0;
    *(v6 - 152) = v16;
    v17 = *(v6 - 344);
    *(v6 - 144) = *(v6 - 360);
    *(v6 - 136) = v17;
    *(v6 - 128) = *(v6 - 352);
    *(v6 - 120) = v4;
    *(v6 - 112) = v2;
    *(v6 - 104) = v14;
    *(v6 - 96) = 0;
    LOBYTE(v17) = *(v6 - 72);
  }

  else
  {
    *(v6 - 200) = 0;
    OUTLINED_FUNCTION_392();
    v15 = sub_24DE22B80();
    *(v6 - 368) = v15;
    OUTLINED_FUNCTION_212(v15);
    *(v6 - 200) = v18;
    OUTLINED_FUNCTION_392();
    *(v6 - 384) = sub_24DE22B40();
    OUTLINED_FUNCTION_816(v19, v6 - 120);
    *(v6 - 200) = v20;
    OUTLINED_FUNCTION_392();
    *(v6 - 400) = sub_24DE22B40();
    *(v6 - 392) = v21;
    *(v6 - 200) = 3;
    OUTLINED_FUNCTION_392();
    v22 = sub_24DE22B40();
    *(v6 - 320) = v23;
    *(v6 - 200) = 4;
    OUTLINED_FUNCTION_392();
    v24 = sub_24DE22B40();
    *(v6 - 344) = v25;
    *(v6 - 200) = 5;
    OUTLINED_FUNCTION_392();
    v26 = sub_24DE22B40();
    *(v6 - 360) = v24;
    *(v6 - 408) = v27;
    *(v6 - 352) = v26;
    *(v6 - 200) = 6;
    OUTLINED_FUNCTION_392();
    v28 = sub_24DE22B40();
    *(v6 - 416) = v29;
    v30 = v28;
    *(v6 - 69) = 7;
    v31 = sub_24DE22B80();
    *(v6 - 336) = 0;
    v32 = *(v9 + 8);
    v33 = v31;
    v34 = OUTLINED_FUNCTION_667();
    v35(v34);
    *(v6 - 440) = v33;
    *(v6 - 72) = BYTE4(v33) & 1;
    *(v6 - 312) = *(v6 - 368);
    v36 = *(v6 - 68);
    *(v6 - 428) = v36;
    *(v6 - 308) = v36;
    v37 = *(v6 - 384);
    *(v6 - 304) = v37;
    v38 = *(v6 - 376);
    *(v6 - 296) = v38;
    v39 = *(v6 - 400);
    *(v6 - 288) = v39;
    v40 = *(v6 - 392);
    *(v6 - 280) = v40;
    OUTLINED_FUNCTION_1244();
    *(v6 - 424) = v22;
    v41 = *(v6 - 320);
    *(v6 - 264) = v41;
    *(v6 - 256) = v24;
    OUTLINED_FUNCTION_1235(v6 - 88);
    v42 = *(v6 - 408);
    *(v6 - 232) = v42;
    *(v6 - 224) = v30;
    *(v6 - 216) = *(v6 - 416);
    *(v6 - 208) = v43;
    v44 = *(v6 - 72);
    *(v6 - 444) = v44;
    *(v6 - 204) = v44;
    memcpy(v45, (v6 - 312), 0x6DuLL);
    sub_24DDE230C(v6 - 312, v6 - 200);
    __swift_destroy_boxed_opaque_existential_1Tm(*(v6 - 328));
    *(v6 - 200) = *(v6 - 368);
    *(v6 - 196) = *(v6 - 428);
    *(v6 - 192) = v37;
    *(v6 - 184) = v38;
    *(v6 - 176) = v39;
    *(v6 - 168) = v40;
    *(v6 - 160) = *(v6 - 424);
    *(v6 - 152) = v41;
    *(v6 - 144) = *(v6 - 360);
    *(v6 - 136) = v24;
    *(v6 - 128) = v9 + 8;
    *(v6 - 120) = v42;
    v17 = *(v6 - 416);
    *(v6 - 112) = v30;
    *(v6 - 104) = v17;
    *(v6 - 96) = *(v6 - 440);
    LODWORD(v17) = *(v6 - 444);
  }

  *(v6 - 92) = v17;
  sub_24DDE22DC(v6 - 200);
  OUTLINED_FUNCTION_1237(v6 - 80);
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD8967C()
{
  sub_24DE22CC0();
  Components.Schemas.Artwork.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.App_AppInit_RequestContent.timestamp.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_24DD89734()
{
  OUTLINED_FUNCTION_960();
  sub_24DE22960();
  v0 = OUTLINED_FUNCTION_525();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Components.Schemas.App_AppInit_RequestContent.pushToken.modify()
{
  v0 = OUTLINED_FUNCTION_429();
  v1 = *(type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v0) + 20);
  return OUTLINED_FUNCTION_574();
}

uint64_t Components.Schemas.App_AppInit_RequestContent.background.setter(char a1)
{
  result = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_RequestContent.background.modify()
{
  v0 = OUTLINED_FUNCTION_429();
  v1 = *(type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v0) + 24);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.App_AppInit_RequestContent.init(timestamp:pushToken:background:)()
{
  OUTLINED_FUNCTION_1013();
  v2 = v1;
  OUTLINED_FUNCTION_1033();
  v4 = v3;
  v6 = v5;
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  v8 = *(inited + 20);
  sub_24DE22960();
  OUTLINED_FUNCTION_778();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = *(inited + 24);
  *v6 = v4;
  v6[1] = v0;
  sub_24DDE444C();
  *(v6 + v13) = v2;
  OUTLINED_FUNCTION_999();
}

GameCenterServerClient::Components::Schemas::App_AppInit_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.App_AppInit_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.App_AppInit_RequestContent.CodingKeys.stringValue.getter()
{
  v1 = 0x6B6F742D68737570;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_24DD89A04@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.App_AppInit_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD89A34()
{
  sub_24DDE238C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD89A6C()
{
  sub_24DDE238C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.App_AppInit_RequestContent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_372();
  v3 = sub_24DE22960();
  v4 = OUTLINED_FUNCTION_27(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
  OUTLINED_FUNCTION_443(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_238();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C8, &qword_24DE23118);
  OUTLINED_FUNCTION_90(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_223();
  v17 = *v1 == *v0 && v1[1] == v0[1];
  if (!v17 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v34 = v6;
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  v18 = *(inited + 20);
  v19 = *(v13 + 48);
  OUTLINED_FUNCTION_910();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_910();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_568(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_568(v2 + v19);
    if (v17)
    {
      sub_24DDE8DAC(v2, &qword_27F1B29C0);
LABEL_17:
      v31 = *(inited + 24);
      v32 = *(v1 + v31);
      LODWORD(v31) = *(v0 + v31);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_503();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_568(v2 + v19);
  if (v20)
  {
    v21 = *(v34 + 8);
    v22 = OUTLINED_FUNCTION_615();
    v23(v22);
LABEL_14:
    sub_24DDE8DAC(v2, &qword_27F1B29C8);
    goto LABEL_15;
  }

  v24 = OUTLINED_FUNCTION_1029();
  v25(v24);
  OUTLINED_FUNCTION_52();
  sub_24DDE23E0(v26);
  OUTLINED_FUNCTION_454();
  v27 = sub_24DE22AB0();
  v28 = *(v34 + 8);
  v29 = OUTLINED_FUNCTION_551();
  v28(v29);
  v30 = OUTLINED_FUNCTION_615();
  v28(v30);
  sub_24DDE8DAC(v2, &qword_27F1B29C0);
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_15:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.App_AppInit_RequestContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29D8, &qword_24DE23120);
  OUTLINED_FUNCTION_23(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_100();
  v11 = a1[3];
  v12 = a1[4];
  OUTLINED_FUNCTION_250(a1);
  sub_24DDE238C();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  v13 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_453();
  sub_24DE22C50();
  if (!v2)
  {
    inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
    v16 = *(inited + 20);
    OUTLINED_FUNCTION_414();
    sub_24DE22960();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v17);
    OUTLINED_FUNCTION_377();
    sub_24DE22C20();
    v18 = *(v3 + *(inited + 24));
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_502();
    sub_24DE22C00();
  }

  v19 = *(v7 + 8);
  v20 = OUTLINED_FUNCTION_446();
  return v21(v20);
}

void Components.Schemas.App_AppInit_RequestContent.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_429();
  v1 = sub_24DE22960();
  v2 = OUTLINED_FUNCTION_27(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_66();
  v7 = OUTLINED_FUNCTION_393();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_443(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_147();
  v13 = *v0;
  v14 = v0[1];
  sub_24DE22AD0();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  v16 = *(inited + 20);
  sub_24DDE73DC();
  OUTLINED_FUNCTION_880(v0, 1, v1);
  if (v17)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v18 = *(v4 + 32);
    v19 = OUTLINED_FUNCTION_546();
    v20(v19);
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v21);
    OUTLINED_FUNCTION_610();
    sub_24DE22AA0();
    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_541();
    v24(v23);
  }

  if (*(v0 + *(inited + 24)) != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.App_AppInit_RequestContent.init(from:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
  OUTLINED_FUNCTION_443(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_223();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29F8, &qword_24DE23128);
  OUTLINED_FUNCTION_27(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_140();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  v13 = OUTLINED_FUNCTION_90(inited);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v17 = *(v16 + 20);
  v18 = sub_24DE22960();
  OUTLINED_FUNCTION_778();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v23 = v3[3];
  v22 = v3[4];
  OUTLINED_FUNCTION_250(v3);
  sub_24DDE238C();
  OUTLINED_FUNCTION_544();
  sub_24DE22D30();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_24DDE8DAC(v1 + v17, &qword_27F1B29C0);
  }

  else
  {
    OUTLINED_FUNCTION_578();
    *v1 = sub_24DE22BA0();
    v1[1] = v24;
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v25);
    sub_24DE22B70();
    sub_24DDE444C();
    OUTLINED_FUNCTION_589();
    v26 = sub_24DE22B50();
    v27 = *(inited + 24);
    v28 = OUTLINED_FUNCTION_763();
    v29(v28);
    *(v1 + v27) = v26;
    sub_24DD74A90();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_669();
    sub_24DD74008();
  }

  OUTLINED_FUNCTION_1259();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GameMetadata.softwareType.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_24DD8A4CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24DDE0A84(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24DE22CA0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Components.Schemas.GameMetadata.imageUrls.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

void sub_24DD8A6B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0u;
  OUTLINED_FUNCTION_1115(a1, 0);
  *(v1 + 101) = 0;
}

uint64_t Components.Schemas.GameMetadata.artwork.getter()
{
  OUTLINED_FUNCTION_1087();
  OUTLINED_FUNCTION_847();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_1324(v4, (v0 + 32));
  OUTLINED_FUNCTION_1030(v5, v6, &unk_27F1B2A08, &unk_24DE23130, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  return sub_24DDE73DC();
}

void *Components.Schemas.GameMetadata.artwork.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_847();
  memcpy(v1, v2, v3);
  sub_24DDE8DAC(&v5, &unk_27F1B2A08);
  return OUTLINED_FUNCTION_1171((v0 + 32));
}

uint64_t Components.Schemas.GameMetadata.name.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t Components.Schemas.GameMetadata.maxAchievements.setter(uint64_t result)
{
  *(v1 + 160) = result;
  *(v1 + 164) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.maxAchievementsScore.setter(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 172) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.numLeaderboardCategories.setter(uint64_t result)
{
  *(v1 + 176) = result;
  *(v1 + 180) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.adamId.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t Components.Schemas.GameMetadata.bundleId.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.GameMetadata.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t Components.Schemas.GameMetadata.defaultLeaderboardCategory.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.GameMetadata.defaultLeaderboardCategory.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t Components.Schemas.GameMetadata.supportedTransports.setter(uint64_t a1)
{
  v3 = *(v1 + 248);

  *(v1 + 248) = a1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.platforms.setter(uint64_t a1)
{
  v3 = *(v1 + 256);

  *(v1 + 256) = a1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.source.getter()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.GameMetadata.source.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 272);

  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  return result;
}

__n128 Components.Schemas.GameMetadata.init(arcadeGame:softwareType:imageUrls:artwork:name:maxAchievements:maxAchievementsScore:numLeaderboardCategories:allowChallenges:allowLeaderboardChallenges:isArcadeGame:isPrerendered:supportsTurnBasedMultiPlayer:supportsAchievements:adamId:bundleId:defaultLeaderboardCategory:hasAggregateLeaderboard:supportsLeaderboards:supportsMultiPlayer:supportedTransports:platforms:source:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, int a9, char a10, int a11, char a12, uint64_t a13, uint64_t a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, int a19, __n128 a20, uint64_t a21, uint64_t a22)
{
  v26 = *a4;
  *(a8 + 32) = 0;
  v27 = (a8 + 32);
  *(a8 + 40) = 0;
  *(a8 + 48) = 1;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 0u;
  *(a8 + 120) = 0u;
  *(a8 + 133) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;

  *(a8 + 24) = v26;
  memcpy(__dst, v27, 0x6DuLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2A08);
  v28 = OUTLINED_FUNCTION_539();
  memcpy(v28, v29, 0x6DuLL);
  *(a8 + 144) = a5;
  *(a8 + 152) = a6;
  *(a8 + 160) = a7;
  *(a8 + 164) = BYTE4(a7) & 1;
  *(a8 + 168) = a9;
  *(a8 + 172) = a10 & 1;
  *(a8 + 176) = a11;
  *(a8 + 180) = a12 & 1;
  *(a8 + 181) = a13;
  *(a8 + 183) = *(&a13 + 2);
  *(a8 + 192) = a14;
  *(a8 + 200) = a15 & 1;
  *(a8 + 208) = a16;
  *(a8 + 224) = a17;
  *(a8 + 232) = a18;
  *(a8 + 240) = a19;
  *(a8 + 241) = *(&a19 + 1);
  result = a20;
  *(a8 + 248) = a20;
  *(a8 + 264) = a21;
  *(a8 + 272) = a22;
  return result;
}

GameCenterServerClient::Components::Schemas::GameMetadata::CodingKeys_optional __swiftcall Components.Schemas.GameMetadata.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 5;
  switch(v2)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v4 = 1;
      goto LABEL_15;
    case 2:
      v4 = 2;
      goto LABEL_15;
    case 3:
      v4 = 3;
      goto LABEL_15;
    case 4:
      v4 = 4;
LABEL_15:
      v5 = v4;
      break;
    case 5:
      break;
    case 6:
      v5 = 6;
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    default:
      v5 = 23;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::GameMetadata::CodingKeys_optional __swiftcall Components.Schemas.GameMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GameMetadata.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.GameMetadata.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_419();
      break;
    case 3:
      OUTLINED_FUNCTION_340();
      break;
    case 5:
    case 8:
      OUTLINED_FUNCTION_758(21);
      break;
    case 6:
      OUTLINED_FUNCTION_759(21);
      break;
    case 7:
      OUTLINED_FUNCTION_1122(21);
      break;
    case 9:
    case 0x10:
      OUTLINED_FUNCTION_762();
      break;
    case 0xD:
    case 0x12:
    case 0x13:
      OUTLINED_FUNCTION_155();
      break;
    case 0xE:
      OUTLINED_FUNCTION_752();
      break;
    case 0xF:
      OUTLINED_FUNCTION_151();
      break;
    case 0x11:
      OUTLINED_FUNCTION_1121(21);
      break;
    case 0x14:
      OUTLINED_FUNCTION_344(21);
      break;
    default:
      return;
  }
}

uint64_t sub_24DD8B268(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_686();
  return sub_24DD78F50(v4, v5, v6) & 1;
}

uint64_t sub_24DD8B298()
{
  v1 = *v0;
  OUTLINED_FUNCTION_686();
  return sub_24DD7DD50(v2, v3, v4);
}

void sub_24DD8B2F4(void *a1@<X8>)
{
  Components.Schemas.GameMetadata.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DD8B328()
{
  sub_24DDE2584();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8B360()
{
  sub_24DDE2584();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GameMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  memcpy(__dst, v2 + 4, 0x6DuLL);
  v108 = v3[18];
  v112 = v3[19];
  v104 = *(v3 + 40);
  v110 = *(v3 + 164);
  v101 = *(v3 + 42);
  v105 = *(v3 + 172);
  v102 = *(v3 + 180);
  v97 = *(v3 + 44);
  v98 = *(v3 + 181);
  v94 = *(v3 + 183);
  v95 = *(v3 + 182);
  v92 = *(v3 + 185);
  v93 = *(v3 + 184);
  v90 = *(v3 + 200);
  v91 = *(v3 + 186);
  v88 = v3[24];
  v89 = v3[27];
  v84 = v3[28];
  v86 = v3[26];
  v87 = v3[29];
  v85 = *(v3 + 240);
  v82 = *(v3 + 242);
  v83 = *(v3 + 241);
  v80 = v3[32];
  v81 = v3[31];
  v78 = v3[34];
  v79 = v3[33];
  v8 = *v1;
  v10 = *(v1 + 1);
  v9 = *(v1 + 2);
  v11 = *(v1 + 3);
  OUTLINED_FUNCTION_847();
  memcpy(v12, v13, v14);
  v107 = *(v1 + 18);
  v111 = *(v1 + 19);
  v103 = *(v1 + 40);
  v109 = v1[164];
  v100 = *(v1 + 42);
  v106 = v1[172];
  v96 = *(v1 + 44);
  v99 = v1[180];
  v113 = v1[181];
  v15 = v1[182];
  v16 = v1[183];
  v17 = v1[185];
  v18 = v1[242];
  v20 = *(v1 + 31);
  v19 = *(v1 + 32);
  v22 = *(v1 + 33);
  v21 = *(v1 + 34);
  if (v4 == 2)
  {
    v77 = v1[182];
    if (v8 != 2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v8 == 2)
    {
      goto LABEL_29;
    }

    v77 = v1[182];
    if ((v8 ^ v4))
    {
      goto LABEL_29;
    }
  }

  if (v6)
  {
    if (!v9)
    {
      goto LABEL_29;
    }

    if (v5 != v10 || v6 != v9)
    {
      v69 = v1[200];
      v71 = *(v1 + 26);
      v73 = *(v1 + 28);
      v75 = *(v1 + 29);
      v67 = *(v1 + 24);
      v68 = *(v1 + 27);
      v9 = v1[241];
      v10 = v1[240];
      v4 = v1[186];
      v8 = v1[184];
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_29;
  }

  if (!v7)
  {
    if (!v11)
    {
      v66 = v16;
      OUTLINED_FUNCTION_1021();

      goto LABEL_22;
    }

LABEL_20:

    goto LABEL_29;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  v66 = v16;
  OUTLINED_FUNCTION_1021();
  swift_bridgeObjectRetain_n();

  v24 = sub_24DD8A4CC(v7, v11);
  swift_bridgeObjectRelease_n();

  if ((v24 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v25 = __src;
  v26 = __dst[2];
  *&v122[3] = *(v1 + 2);
  v27 = v124;
  if (__dst[2] == 1)
  {
    if (v124 == 1)
    {
      *__src = *(v3 + 2);
      *&__src[16] = 1;
      OUTLINED_FUNCTION_1285();
      OUTLINED_FUNCTION_499();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_499();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_592();
      sub_24DDE8DAC(v28, v29);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_553();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC();
LABEL_28:
    *__src = *(v3 + 2);
    *&__src[16] = v26;
    memcpy(&__src[24], v3 + 7, 0x55uLL);
    *v119 = *v122;
    *&v119[15] = *&v122[15];
    v120 = v27;
    memcpy(v121, v1 + 56, sizeof(v121));
    sub_24DDE8DAC(__src, &unk_27F1B2A10);
    goto LABEL_29;
  }

  *__src = *(v3 + 2);
  *&__src[16] = __dst[2];
  OUTLINED_FUNCTION_1285();
  memcpy(v117, __src, sizeof(v117));
  if (v27 == 1)
  {
    memcpy(v116, __src, 0x6DuLL);
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC();
    sub_24DDE22DC(v116);
    goto LABEL_28;
  }

  v116[0] = *(v1 + 2);
  v25 = v116;
  memcpy(&v116[1] + 8, v1 + 56, 0x55uLL);
  *&v116[1] = v27;
  static Components.Schemas.Artwork.== infix(_:_:)();
  v31 = v30;
  memcpy(v114, v116, 0x6DuLL);
  v27 = &unk_24DE23130;
  OUTLINED_FUNCTION_489();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_489();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_489();
  sub_24DDE73DC();
  sub_24DDE22DC(v114);
  memcpy(v115, v117, 0x6DuLL);
  sub_24DDE22DC(v115);
  v116[0] = *(v3 + 2);
  *&v116[1] = v26;
  memcpy(&v116[1] + 8, v3 + 7, 0x55uLL);
  OUTLINED_FUNCTION_540();
  sub_24DDE8DAC(v32, v33);
  if ((v31 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  if (v112)
  {
    OUTLINED_FUNCTION_844();
    v43 = v66;
    v44 = v113;
    if (!v111)
    {
      goto LABEL_29;
    }

    if (v108 != v107 || v34 != v111)
    {
      v64 = v4;
      v65 = v8;
      v70 = v40;
      v72 = v35;
      v74 = v39;
      v76 = v38;
      v46 = v36;
      v47 = v37;
      v48 = v41;
      v49 = v42;
      v50 = sub_24DE22CA0();
      v44 = v113;
      v43 = v66;
      v42 = v49;
      v41 = v48;
      v40 = v70;
      v35 = v72;
      v39 = v74;
      v38 = v76;
      v37 = v47;
      v36 = v46;
      v4 = v64;
      v8 = v65;
      if ((v50 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_844();
    v43 = v66;
    v44 = v113;
    if (v111)
    {
      goto LABEL_29;
    }
  }

  if (v110)
  {
    if (!v109)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v51 = v109;
    if (v104 != v103)
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_29;
    }
  }

  if (v105)
  {
    if (!v106)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v52 = v106;
    if (v101 != v100)
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }
  }

  if (v102)
  {
    if (!v99)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v53 = v99;
    if (v97 != v96)
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_29;
    }
  }

  if (v98 == 2)
  {
    if (v44 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v44 == 2 || ((v44 ^ v98) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v95 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v77 == 2 || ((v77 ^ v95) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v94 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v43 == 2 || ((v43 ^ v94) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v93 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v42 == 2 || ((v42 ^ v93) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v92 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v27 == 2 || ((v27 ^ v92) & 1) != 0)
  {
    goto LABEL_29;
  }

  v54 = v25;
  v55 = v3;
  v56 = v39;
  v57 = v38;
  v58 = v37;
  v59 = v36;
  if (v91 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v41 == 2 || ((v41 ^ v91) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v90)
  {
    if (!v40)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v88 == v54)
    {
      v60 = v40;
    }

    else
    {
      v60 = 1;
    }

    if (v60)
    {
      goto LABEL_29;
    }
  }

  if (v89)
  {
    if (!v55)
    {
      goto LABEL_29;
    }

    v61 = v86 == v35 && v89 == v55;
    if (!v61 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v55)
  {
    goto LABEL_29;
  }

  if (v87)
  {
    if (!v57)
    {
      goto LABEL_29;
    }

    if (v84 != v56 || v87 != v57)
    {
      OUTLINED_FUNCTION_500();
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v57)
  {
    goto LABEL_29;
  }

  if (v85 == 2)
  {
    if (v58 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v58 == 2 || ((v58 ^ v85) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v83 == 2)
  {
    if (v59 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v59 == 2 || ((v59 ^ v83) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v82 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v26 == 2 || ((v26 ^ v82) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v81)
  {
    if (!v4 || (sub_24DD86D3C(v81, v4) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v4)
  {
    goto LABEL_29;
  }

  if (v80)
  {
    if (!v8 || (sub_24DD85994(v80, v8) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  if (v78 && v9 && (v79 != v10 || v78 != v9))
  {
    OUTLINED_FUNCTION_806();
    sub_24DE22CA0();
  }

LABEL_29:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.GameMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A18, &qword_24DE23140);
  OUTLINED_FUNCTION_27(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_223();
  v49 = *(v0 + 2);
  v50 = *(v0 + 1);
  v48 = *(v0 + 3);
  v10 = *v0;
  OUTLINED_FUNCTION_847();
  memcpy(v11, v12, v13);
  v46 = *(v0 + 19);
  v47 = *(v0 + 18);
  v45 = *(v0 + 40);
  v53 = v0[164];
  v44 = *(v0 + 42);
  v43 = v0[172];
  v42 = *(v0 + 44);
  v40 = v0[181];
  v41 = v0[180];
  v38 = v0[183];
  v39 = v0[182];
  v36 = v0[185];
  v37 = v0[184];
  v34 = v0[200];
  v35 = v0[186];
  v32 = *(v0 + 27);
  v33 = *(v0 + 24);
  v30 = *(v0 + 29);
  v31 = *(v0 + 26);
  v22 = v0[240];
  v23 = v0[241];
  v24 = v0[242];
  v25 = *(v0 + 31);
  v26 = *(v0 + 32);
  v27 = *(v0 + 33);
  v28 = *(v0 + 34);
  v29 = *(v0 + 28);
  v14 = v3[3];
  v15 = v3[4];
  OUTLINED_FUNCTION_153(v3);
  sub_24DDE2584();
  OUTLINED_FUNCTION_617();
  sub_24DE22D50();
  LOBYTE(v52[0]) = 0;
  sub_24DE22C00();
  if (v1)
  {
    v16 = *(v6 + 8);
    v20 = OUTLINED_FUNCTION_464();
  }

  else
  {
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    v52[0] = v48;
    sub_24DDE25D8();

    sub_24DE22C20();

    OUTLINED_FUNCTION_1314(v52);
    OUTLINED_FUNCTION_598();
    sub_24DDE73DC();
    sub_24DDE262C();
    OUTLINED_FUNCTION_750();
    sub_24DE22C20();
    memcpy(v51, v52, 0x6DuLL);
    sub_24DDE8DAC(v51, &unk_27F1B2A08);
    OUTLINED_FUNCTION_1079(4);
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_635(v43);
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_635(v41);
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_793(8);
    OUTLINED_FUNCTION_750();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(9);
    OUTLINED_FUNCTION_750();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(10);
    OUTLINED_FUNCTION_1274();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(11);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(12);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(13);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1079(14);
    OUTLINED_FUNCTION_416();
    sub_24DE22C40();
    OUTLINED_FUNCTION_1079(15);
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1079(16);
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_793(17);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(18);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(19);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A38, &qword_24DE23148);
    OUTLINED_FUNCTION_4();
    sub_24DDE2680(v17);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v18);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_1079(22);
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    v19 = *(v6 + 8);
    v20 = OUTLINED_FUNCTION_379();
  }

  v21(v20);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.GameMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v18 = *(v0 + 8);
  v19 = *(v0 + 144);
  v23 = *(v0 + 152);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);
  v24 = *(v0 + 164);
  v25 = *(v0 + 172);
  v16 = *(v0 + 176);
  v26 = *(v0 + 180);
  v27 = *(v0 + 181);
  v28 = *(v0 + 182);
  v29 = *(v0 + 183);
  v5 = *(v0 + 185);
  v17 = *(v0 + 192);
  v32 = *(v0 + 186);
  v33 = *(v0 + 200);
  v6 = *(v0 + 216);
  v7 = *(v0 + 232);
  v20 = *(v0 + 208);
  v21 = *(v0 + 224);
  v30 = *(v0 + 184);
  v31 = *(v0 + 240);
  v8 = *(v0 + 241);
  v34 = *(v0 + 242);
  v35 = *(v0 + 248);
  v9 = *(v0 + 264);
  v22 = *(v0 + 48);
  v36 = *(v0 + 272);
  v37 = *(v0 + 256);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v3)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1084();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v10 = OUTLINED_FUNCTION_548();
    sub_24DDE2424(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v22 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    __src[0] = *(v0 + 32);
    memcpy(&__src[1] + 8, (v0 + 56), 0x55uLL);
    *&__src[1] = v22;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v39 = *(v0 + 32);
    v40 = v22;
    memcpy(v41, (v0 + 56), sizeof(v41));
    sub_24DDE230C(&v39, v42);
    Components.Schemas.Artwork.hash(into:)();
    memcpy(v42, __src, 0x6DuLL);
    sub_24DDE22DC(v42);
  }

  if (v23)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1083();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v24)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v25)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v26)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v27 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v28 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v29 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v30 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v5 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v32 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v33)
  {
    OUTLINED_FUNCTION_795();
    if (v6)
    {
LABEL_38:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_41;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v17);
    if (v6)
    {
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_41:
  if (v7)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v31 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v8 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v34 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v35)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v12 = OUTLINED_FUNCTION_492();
    sub_24DDE1900(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DDE0DB4(v2, v37);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v36)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1278();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.GameMetadata.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.GameMetadata.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.GameMetadata.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A48, &qword_24DE23150);
  OUTLINED_FUNCTION_27(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_91();
  v155 = v10;
  v152 = v10;
  v149 = v10;
  v146 = v10;
  v11 = v0[3];
  v12 = v0[4];
  OUTLINED_FUNCTION_153(v0);
  sub_24DDE2584();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v1)
  {
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_528();
    OUTLINED_FUNCTION_612();
    OUTLINED_FUNCTION_95();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    LOBYTE(v114) = 2;
    v115 = v6;
    v116 = v4;
    v117 = 0;
    v118 = v80;
    v119 = v79;
    v120 = v12;
    OUTLINED_FUNCTION_866();
    *(&v114 + 1) = v158[0];
    HIDWORD(v114) = *(v158 + 3);
    OUTLINED_FUNCTION_730();
    v122 = BYTE4(v3);
    v121 = v3;
    v123 = v156;
    OUTLINED_FUNCTION_823();
    v124 = v155;
    v125 = *(v13 + 24);
    OUTLINED_FUNCTION_1263();
    v126 = v152;
    v15 = *(v14 + 20);
    v128 = v151;
    v127 = v15;
    v129 = v63;
    v130 = v149;
    v131 = v2;
    OUTLINED_FUNCTION_945();
    v132 = v86;
    v133 = v84;
    v135 = v148;
    v134 = *(v16 + 14);
    v136 = v82;
    v137 = v146;
    v17 = *v16;
    *&v138[3] = *(v16 + 3);
    *v138 = v17;
    OUTLINED_FUNCTION_622();
    *&v138[42] = v18;
    v139 = v57;
    v140 = v55;
    v142 = 0;
    v141 = 0;
  }

  else
  {
    LOBYTE(v114) = 0;
    v51 = sub_24DE22B50();
    OUTLINED_FUNCTION_64(1);
    v49 = sub_24DE22B40();
    v50 = v19;
    sub_24DDE2704();
    OUTLINED_FUNCTION_1202();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v48 = v114;

    v98[23] = 3;
    sub_24DDE2758();
    OUTLINED_FUNCTION_1202();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v81 = v99;
    v20 = v100;
    v46 = v101;
    v21 = v102;
    v74 = v105;
    v75 = v104;
    v76 = v103;
    v77 = v106;
    v72 = v107;
    v69 = v109;
    v70 = v108;
    v67 = v111;
    v68 = v110;
    v47 = v112 | (v113 << 32);
    v93[1] = 0;
    v93[0] = 0;
    v93[2] = 1;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    memset(v98, 0, 21);
    sub_24DDE8DAC(v93, &unk_27F1B2A08);
    OUTLINED_FUNCTION_64(4);
    v78 = v21;
    v71 = sub_24DE22B40();
    v73 = v22;
    OUTLINED_FUNCTION_64(5);
    v23 = sub_24DE22B80();
    v66 = v23;
    v155 = BYTE4(v23) & 1;
    OUTLINED_FUNCTION_64(6);
    v24 = sub_24DE22B80();
    v65 = v24;
    v152 = BYTE4(v24) & 1;
    OUTLINED_FUNCTION_64(7);
    v25 = sub_24DE22B80();
    v64 = v25;
    v149 = BYTE4(v25) & 1;
    OUTLINED_FUNCTION_64(8);
    v45 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(9);
    v90 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(10);
    v89 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(11);
    v88 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(12);
    v87 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(13);
    v85 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(14);
    v83 = sub_24DE22B90();
    OUTLINED_FUNCTION_1189(v83, v26);
    OUTLINED_FUNCTION_57(15);
    v59 = sub_24DE22B40();
    v61 = v27;
    OUTLINED_FUNCTION_57(16);
    v60 = sub_24DE22B40();
    v62 = v28;
    OUTLINED_FUNCTION_57(17);
    v53 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(18);
    v52 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(19);
    v54 = sub_24DE22B50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A38, &qword_24DE23148);
    OUTLINED_FUNCTION_3();
    sub_24DDE2680(v29);
    OUTLINED_FUNCTION_782();
    sub_24DE22B70();
    v58 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    LOBYTE(v91[0]) = 21;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v30);
    OUTLINED_FUNCTION_782();
    sub_24DE22B70();
    v56 = v114;
    v92 = 22;
    v31 = sub_24DE22B40();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_142();
    v35(v34);
    LOBYTE(v91[0]) = v51;
    *(v91 + 1) = v158[0];
    HIDWORD(v91[0]) = *(v158 + 3);
    v91[1] = v49;
    v91[2] = v50;
    v91[3] = v48;
    v91[4] = v81;
    v91[5] = v20;
    v91[6] = v46;
    v91[7] = v78;
    v91[8] = v76;
    v91[9] = v75;
    v91[10] = v74;
    v91[11] = v77;
    v91[12] = v72;
    v91[13] = v70;
    v91[14] = v69;
    v91[15] = v68;
    v91[16] = v67;
    BYTE4(v91[17]) = BYTE4(v47);
    LODWORD(v91[17]) = v47;
    *(&v91[17] + 5) = v156;
    HIBYTE(v91[17]) = v157;
    v91[18] = v71;
    v91[19] = v73;
    LODWORD(v91[20]) = v66;
    v44 = v155;
    BYTE4(v91[20]) = v155;
    *(&v91[20] + 5) = v153;
    HIBYTE(v91[20]) = v154;
    LODWORD(v91[21]) = v65;
    v43 = v152;
    BYTE4(v91[21]) = v152;
    HIBYTE(v91[21]) = v151;
    *(&v91[21] + 5) = v150;
    LODWORD(v91[22]) = v64;
    *(&v91[23] + 3) = v147;
    HIDWORD(v91[25]) = *&v145[3];
    *(&v91[25] + 1) = *v145;
    *(&v91[30] + 3) = v143;
    v42 = v149;
    BYTE4(v91[22]) = v149;
    BYTE5(v91[22]) = v45;
    BYTE6(v91[22]) = v90;
    HIBYTE(v91[22]) = v89;
    LOBYTE(v91[23]) = v88;
    BYTE1(v91[23]) = v87;
    BYTE2(v91[23]) = v85;
    HIBYTE(v91[23]) = v148;
    v91[24] = v83;
    HIBYTE(v91[30]) = v144;
    v41 = v146;
    LOBYTE(v91[25]) = v146;
    v91[26] = v59;
    v91[27] = v61;
    v91[28] = v60;
    v91[29] = v62;
    LOBYTE(v91[30]) = v53;
    BYTE1(v91[30]) = v52;
    BYTE2(v91[30]) = v54;
    v91[31] = v58;
    v91[32] = v56;
    v91[33] = v31;
    v91[34] = v33;
    memcpy(v2, v91, 0x118uLL);
    sub_24DDE27AC(v91, &v114);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    LOBYTE(v114) = v51;
    v115 = v49;
    v116 = v50;
    v117 = v48;
    v118 = v81;
    v119 = v20;
    v120 = v46;
    OUTLINED_FUNCTION_866();
    OUTLINED_FUNCTION_730();
    v122 = BYTE4(v47);
    *(&v114 + 1) = v158[0];
    HIDWORD(v114) = *(v158 + 3);
    v121 = v47;
    v123 = v156;
    OUTLINED_FUNCTION_823();
    v124 = v44;
    *(v36 + 165) = v153;
    OUTLINED_FUNCTION_1263();
    v126 = v43;
    v128 = v151;
    *(v37 + 173) = v150;
    v129 = v64;
    v130 = v42;
    v131 = v45;
    OUTLINED_FUNCTION_945();
    v132 = v87;
    v133 = v85;
    v135 = v148;
    *(v38 + 187) = v147;
    v136 = v83;
    v137 = v41;
    *&v138[3] = *&v145[3];
    *(v38 + 201) = *v145;
    OUTLINED_FUNCTION_622();
    *(v40 + 243) = v39;
    v139 = v58;
    v140 = v56;
    v141 = v31;
    v142 = v33;
  }

  sub_24DDE26D4(&v114);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD8D438()
{
  sub_24DE22CC0();
  Components.Schemas.GameMetadata.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.status.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.alert.getter()
{
  v0 = OUTLINED_FUNCTION_1243();
  *v2 = v0;
  v2[1] = v1;
  v2[2] = v3;
  v2[3] = v4;
  return sub_24DD7639C(v0, v1);
}

double Components.Schemas.App_AppInit_ResponseContent.alert.setter()
{
  v0 = OUTLINED_FUNCTION_1243();
  sub_24DD763E4(v0, v1);
  *&result = OUTLINED_FUNCTION_995().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.appSession.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gameMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  memcpy(a1, (v1 + 88), 0x118uLL);
  return sub_24DDE73DC();
}

void *Components.Schemas.App_AppInit_ResponseContent.gameMetadata.setter()
{
  OUTLINED_FUNCTION_564();
  memcpy(v2, (v1 + 88), 0x118uLL);
  sub_24DDE8DAC(&v4, &unk_27F1B2A68);
  return memcpy((v1 + 88), v0, 0x118uLL);
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gameScopedPlayerId.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gameScopedPlayerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 376);

  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.teamScopedPlayerId.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.teamScopedPlayerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 392);

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.allowContactLookup.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.allowContactLookup.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 416);

  *(v1 + 408) = v2;
  *(v1 + 416) = v0;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.contactAssociationId.getter()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.contactAssociationId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 432);

  *(v1 + 424) = v2;
  *(v1 + 432) = v0;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.lastUpdated.getter()
{
  result = *(v0 + 440);
  v2 = *(v0 + 448);
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.lastUpdated.setter(uint64_t result, char a2)
{
  *(v2 + 440) = result;
  *(v2 + 448) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.privacyNoticeVersion.getter()
{
  result = *(v0 + 456);
  v2 = *(v0 + 464);
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.privacyNoticeVersion.setter(uint64_t result, char a2)
{
  *(v2 + 456) = result;
  *(v2 + 464) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gamesPrivacyNoticeVersion.getter()
{
  result = *(v0 + 472);
  v2 = *(v0 + 480);
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gamesPrivacyNoticeVersion.setter(uint64_t result, char a2)
{
  *(v2 + 472) = result;
  *(v2 + 480) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gamesCrossUseNoticeVersion.getter()
{
  result = *(v0 + 488);
  v2 = *(v0 + 496);
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gamesCrossUseNoticeVersion.setter(uint64_t result, char a2)
{
  *(v2 + 488) = result;
  *(v2 + 496) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.crossUseLinkedDsid.getter()
{
  result = *(v0 + 504);
  v2 = *(v0 + 512);
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.crossUseLinkedDsid.setter(uint64_t result, char a2)
{
  *(v2 + 504) = result;
  *(v2 + 512) = a2 & 1;
  return result;
}

void Components.Schemas.App_AppInit_ResponseContent.init(lastUpdatedMillis:status:message:alert:appSession:gameMetadata:gameScopedPlayerId:teamScopedPlayerId:renewAuthToken:isDefaultNickname:hasPrivacySettings:allowContactLookup:contactAssociationId:lastUpdated:privacyNoticeVersion:gamesPrivacyNoticeVersion:gamesCrossUseNoticeVersion:crossUseLinkedDsid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int128 a22, uint64_t a23, uint64_t a24, int a25, __int128 a26, __int128 a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  OUTLINED_FUNCTION_659();
  v57 = v37;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24DDE27E4(__src);
  memcpy((v53 + 88), __src, 0x118uLL);
  *v53 = v51;
  *(v53 + 8) = v49 & 1;
  *(v53 + 12) = v47;
  *(v53 + 16) = BYTE4(v47) & 1;
  *(v53 + 24) = v45;
  *(v53 + 32) = v43;
  v54 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v54, v55);
  v56 = *v41;
  *(v53 + 56) = v41[1];
  *(v53 + 40) = v56;
  *(v53 + 72) = v39;
  *(v53 + 80) = v57;
  memcpy(__dst, (v53 + 88), 0x118uLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2A68);
  memcpy((v53 + 88), a21, 0x118uLL);
  *(v53 + 368) = a22;
  *(v53 + 384) = a23;
  *(v53 + 392) = a24;
  *(v53 + 400) = a25;
  *(v53 + 401) = *(&a25 + 1);
  *(v53 + 408) = a26;
  *(v53 + 424) = a27;
  *(v53 + 440) = a28;
  *(v53 + 448) = a29 & 1;
  *(v53 + 456) = a30;
  *(v53 + 464) = a31 & 1;
  *(v53 + 472) = a32;
  *(v53 + 480) = a33 & 1;
  *(v53 + 488) = a34;
  *(v53 + 496) = a35 & 1;
  *(v53 + 504) = a36;
  *(v53 + 512) = a37 & 1;
  OUTLINED_FUNCTION_653();
}

GameCenterServerClient::Components::Schemas::App_AppInit_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.App_AppInit_ResponseContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::App_AppInit_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.App_AppInit_ResponseContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.App_AppInit_ResponseContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

unint64_t Components.Schemas.App_AppInit_ResponseContent.CodingKeys.rawValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_16();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32();
      break;
    case 4:
      result = 0x737365732D707061;
      break;
    case 5:
      result = 0x74656D2D656D6167;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = OUTLINED_FUNCTION_758(21);
      break;
    case 9:
      result = OUTLINED_FUNCTION_423(21);
      break;
    case 0xA:
    case 0xB:
      result = OUTLINED_FUNCTION_344(21);
      break;
    case 0xC:
    case 0xE:
      result = OUTLINED_FUNCTION_759(21);
      break;
    case 0xD:
      result = OUTLINED_FUNCTION_286();
      break;
    case 0xF:
      result = OUTLINED_FUNCTION_762();
      break;
    case 0x10:
      result = 0xD00000000000001ELL;
      break;
    case 0x11:
      result = 0xD000000000000015;
      break;
    default:
      result = OUTLINED_FUNCTION_760(21);
      break;
  }

  return result;
}

uint64_t sub_24DD8DF6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_702();
  return sub_24DD78F50(v4, v5, v6) & 1;
}

uint64_t sub_24DD8DF9C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_702();
  return sub_24DD7DD50(v2, v3, v4);
}

unint64_t sub_24DD8DFF8@<X0>(unint64_t *a1@<X8>)
{
  result = Components.Schemas.App_AppInit_ResponseContent.CodingKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD8E02C()
{
  sub_24DDE2820();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8E064()
{
  sub_24DDE2820();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.App_AppInit_ResponseContent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = *(v2 + 8);
  v122 = *(v2 + 3);
  v6 = *(v2 + 16);
  v124 = v2[4];
  v118 = v2[5];
  v119 = v2[7];
  v120 = v2[8];
  v121 = v2[6];
  v110 = v2[9];
  v112 = v2[10];
  v113 = v2[3];
  memcpy(__dst, v2 + 11, sizeof(__dst));
  v106 = v3[46];
  v107 = v3[47];
  v103 = v3[48];
  v104 = v3[49];
  v101 = *(v3 + 401);
  v102 = *(v3 + 400);
  v100 = *(v3 + 402);
  v96 = v3[53];
  v97 = v3[51];
  v98 = v3[54];
  v99 = v3[52];
  v93 = v3[55];
  v91 = v3[57];
  v94 = *(v3 + 464);
  v95 = *(v3 + 448);
  v89 = v3[59];
  v92 = *(v3 + 480);
  v90 = *(v3 + 496);
  v86 = v3[63];
  v87 = v3[61];
  v88 = *(v3 + 512);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 3);
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v114 = v1[5];
  v115 = v1[7];
  v116 = v1[6];
  v117 = v1[8];
  v109 = v1[9];
  v111 = v1[10];
  memcpy(__src, v1 + 11, sizeof(__src));
  v105 = v1[46];
  v108 = v1[47];
  v13 = v1[48];
  v14 = v1[49];
  v15 = *(v1 + 400);
  v16 = *(v1 + 401);
  v17 = *(v1 + 402);
  v19 = v1[51];
  v18 = v1[52];
  v20 = v1[53];
  v21 = v1[54];
  v22 = v1[55];
  v23 = *(v1 + 448);
  v24 = v1[57];
  v25 = *(v1 + 464);
  v26 = v1[59];
  v27 = *(v1 + 480);
  v28 = v1[61];
  v29 = *(v1 + 496);
  v30 = v1[63];
  LOBYTE(v1) = *(v1 + 512);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v31 = v8;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_31;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v122 == v9)
    {
      v32 = v10;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_31;
    }
  }

  if (v124)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    v123 = v13;
    if (v113 != v11 || v124 != v12)
    {
      v82 = v20;
      v84 = v21;
      LODWORD(v11) = v25;
      LODWORD(v7) = v22;
      v34 = v19;
      v35 = sub_24DE22CA0();
      v21 = v84;
      v19 = v34;
      v20 = v82;
      if ((v35 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v123 = v13;
    if (v12)
    {
      goto LABEL_31;
    }
  }

  if (v121 == 1)
  {
    v85 = v21;
    v81 = v19;
    v83 = v20;
    OUTLINED_FUNCTION_1226();
    v36 = v118;
    OUTLINED_FUNCTION_572();
    sub_24DD7639C(v37, v38);
    if (v116 == 1)
    {
      sub_24DD7639C(v114, 1);
      OUTLINED_FUNCTION_784();
      OUTLINED_FUNCTION_430();
      sub_24DD763E4(v39, v40);
      goto LABEL_33;
    }

    v47 = OUTLINED_FUNCTION_380();
    sub_24DD7639C(v47, v48);
LABEL_30:
    OUTLINED_FUNCTION_252();
    sub_24DD763E4(v49, v50);
    v51 = OUTLINED_FUNCTION_380();
    sub_24DD763E4(v51, v52);
    goto LABEL_31;
  }

  v36 = v118;
  v130[0] = v118;
  v130[1] = v121;
  v130[2] = v119;
  v130[3] = v120;
  if (v116 == 1)
  {
    OUTLINED_FUNCTION_252();
    sub_24DD7639C(v41, v42);
    v43 = OUTLINED_FUNCTION_603();
    sub_24DD7639C(v43, v44);
    OUTLINED_FUNCTION_252();
    sub_24DD7639C(v45, v46);

    goto LABEL_30;
  }

  v85 = v21;
  v81 = v19;
  v83 = v20;
  OUTLINED_FUNCTION_1226();
  LODWORD(v7) = v115;
  v128[0] = v114;
  v128[1] = v116;
  v128[2] = v115;
  LODWORD(v11) = v117;
  v128[3] = v117;
  v53 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)(v130, v128);
  OUTLINED_FUNCTION_252();
  sub_24DD7639C(v54, v55);
  v56 = OUTLINED_FUNCTION_380();
  sub_24DD7639C(v56, v57);
  OUTLINED_FUNCTION_252();
  sub_24DD7639C(v58, v59);

  OUTLINED_FUNCTION_252();
  sub_24DD763E4(v60, v61);
  if ((v53 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (v112)
  {
    if (!v111)
    {
      goto LABEL_31;
    }

    v62 = v110 == v109 && v112 == v111;
    if (!v62 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v111)
  {
    goto LABEL_31;
  }

  memcpy(v130, __dst, 0x118uLL);
  memcpy(&v130[35], __src, 0x118uLL);
  memcpy(v131, __dst, sizeof(v131));
  if (sub_24DDE27FC(v131) != 1)
  {
    OUTLINED_FUNCTION_1166(v129);
    memcpy(v128, &v130[35], 0x118uLL);
    if (sub_24DDE27FC(v128) != 1)
    {
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      static Components.Schemas.GameMetadata.== infix(_:_:)();
      v66 = v65;
      memcpy(v125, &v130[35], sizeof(v125));
      sub_24DDE26D4(v125);
      OUTLINED_FUNCTION_1166(v126);
      sub_24DDE26D4(v126);
      OUTLINED_FUNCTION_1166(v127);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v67, v68);
      if ((v66 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_50;
    }

    OUTLINED_FUNCTION_1166(v127);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    sub_24DDE26D4(v127);
LABEL_48:
    memcpy(v128, v130, sizeof(v128));
    sub_24DDE8DAC(v128, &unk_27F1B2A70);
    goto LABEL_31;
  }

  memcpy(v128, &v130[35], 0x118uLL);
  if (sub_24DDE27FC(v128) != 1)
  {
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_1166(v129);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v63, v64);
LABEL_50:
  if (v107)
  {
    OUTLINED_FUNCTION_1047();
    if (!v108)
    {
      goto LABEL_31;
    }

    if (v106 != v105 || v69 != v108)
    {
      v73 = v70;
      v74 = v71;
      v75 = sub_24DE22CA0();
      v71 = v74;
      v70 = v73;
      if ((v75 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1047();
    if (v108)
    {
      goto LABEL_31;
    }
  }

  if (v104)
  {
    if (!v71)
    {
      goto LABEL_31;
    }

    if (v103 != v123 || v104 != v71)
    {
      v77 = v70;
      v78 = sub_24DE22CA0();
      v70 = v77;
      if ((v78 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v71)
  {
    goto LABEL_31;
  }

  if (v102 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v11 == 2 || ((v11 ^ v102) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v101 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v36 == 2 || ((v36 ^ v101) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v100 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v7 == 2 || ((v7 ^ v100) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v99)
  {
    if (!v70)
    {
      goto LABEL_31;
    }

    v79 = v97 == v81 && v99 == v70;
    if (!v79 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v70)
  {
    goto LABEL_31;
  }

  if (v98 && v85 && (v96 != v83 || v98 != v85))
  {
    sub_24DE22CA0();
  }

LABEL_31:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.App_AppInit_ResponseContent.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A78, &qword_24DE23168);
  OUTLINED_FUNCTION_18(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_390();
  v10 = *(v0 + 8);
  v50 = *(v0 + 3);
  v51 = *v0;
  v49 = *(v0 + 16);
  v47 = v0[4];
  v48 = v0[3];
  v45 = v0[6];
  v46 = v0[5];
  v43 = v0[7];
  v44 = v0[8];
  v41 = v0[9];
  v42 = v0[10];
  memcpy(v54, v0 + 11, sizeof(v54));
  v39 = v0[46];
  v40 = v0[47];
  v37 = v0[48];
  v38 = v0[49];
  v35 = *(v0 + 401);
  v36 = *(v0 + 400);
  v34 = *(v0 + 402);
  v32 = v0[51];
  v33 = v0[52];
  v30 = v0[53];
  v31 = v0[54];
  v28 = v0[55];
  v29 = *(v0 + 448);
  v26 = v0[57];
  v27 = *(v0 + 464);
  v24 = v0[59];
  v25 = *(v0 + 480);
  v22 = v0[61];
  v23 = *(v0 + 496);
  v20 = v0[63];
  v21 = *(v0 + 512);
  v11 = v3[4];
  OUTLINED_FUNCTION_387(v3, v3[3]);
  sub_24DDE2820();
  OUTLINED_FUNCTION_851();
  sub_24DE22D50();
  v53[0] = 0;
  sub_24DE22C40();
  if (v1)
  {
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_426();
    v14(v13);
  }

  else
  {
    OUTLINED_FUNCTION_1027();
    sub_24DE22C30();
    OUTLINED_FUNCTION_732();
    OUTLINED_FUNCTION_1300();
    v16 = OUTLINED_FUNCTION_463();
    sub_24DD7639C(v16, v17);
    sub_24DD87138();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C20();
    sub_24DD763E4(v46, v45);
    OUTLINED_FUNCTION_1300();
    memcpy(v53, v54, sizeof(v53));
    v52[287] = 5;
    sub_24DDE73DC();
    sub_24DDE2874();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C20();
    memcpy(v52, v53, 0x118uLL);
    sub_24DDE8DAC(v52, &unk_27F1B2A68);
    OUTLINED_FUNCTION_764(6);
    OUTLINED_FUNCTION_1300();
    OUTLINED_FUNCTION_764(7);
    OUTLINED_FUNCTION_1300();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C00();
    sub_24DE22C00();
    OUTLINED_FUNCTION_764(11);
    OUTLINED_FUNCTION_329();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_764(12);
    OUTLINED_FUNCTION_329();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_764(13);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(14);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(15);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(16);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(17);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    v18 = *(v6 + 8);
    v19 = OUTLINED_FUNCTION_541();
    v15(v19);
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.App_AppInit_ResponseContent.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  v1 = *(v0 + 3);
  v22 = *(v0 + 16);
  v2 = v0[4];
  v3 = v0[6];
  v10 = v0[5];
  v5 = v0[7];
  v4 = v0[8];
  v24 = v0[10];
  v6 = v0[47];
  v16 = v0[3];
  v17 = v0[46];
  v18 = v0[9];
  v19 = v0[48];
  v26 = v0[49];
  v27 = *(v0 + 401);
  v32 = *(v0 + 400);
  v33 = *(v0 + 402);
  v20 = v0[51];
  v21 = v0[53];
  v28 = v0[52];
  v29 = v0[54];
  v14 = v0[55];
  v15 = v0[57];
  v30 = *(v0 + 448);
  v31 = *(v0 + 464);
  v7 = v0[59];
  v8 = *(v0 + 480);
  v11 = v7;
  v12 = v0[61];
  v23 = *(v0 + 496);
  v13 = v0[63];
  v25 = *(v0 + 512);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v9 = *v0;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v9);
  }

  if (v22)
  {
    OUTLINED_FUNCTION_795();
    if (v2)
    {
LABEL_6:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1278();
      sub_24DE22AD0();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_9:
  if (v3 != 1)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    if (v3)
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_826();
      sub_24DE22AD0();
      if (v4)
      {
LABEL_12:
        OUTLINED_FUNCTION_371();
        sub_24DE22CE0();
        OUTLINED_FUNCTION_1082();
        sub_24DE22AD0();
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_795();
      if (v4)
      {
        goto LABEL_12;
      }
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_15:
  if (v24)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  memcpy(__dst, v0 + 11, 0x118uLL);
  if (sub_24DDE27FC(__dst) == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    memcpy(v34, v0 + 11, sizeof(v34));
    sub_24DDE27AC(v34, v35);
    Components.Schemas.GameMetadata.hash(into:)();
    memcpy(v35, v0 + 11, sizeof(v35));
    sub_24DDE26D4(v35);
  }

  if (v6)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v26)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v32 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v27 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v33 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v28)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v29)
    {
LABEL_35:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_38;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v29)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_38:
  if (v30)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v14);
  }

  if (v31)
  {
    OUTLINED_FUNCTION_795();
    if (!v8)
    {
LABEL_43:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      MEMORY[0x253039750](v11);
      goto LABEL_46;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v15);
    if (!v8)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_46:
  if (v23)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v12);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v13);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.App_AppInit_ResponseContent.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.App_AppInit_ResponseContent.init(from:)()
{
  OUTLINED_FUNCTION_645();
  v2 = v1;
  v4 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A90, &qword_24DE23170);
  OUTLINED_FUNCTION_27(v46);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_138();
  v118 = 1;
  v115 = 1;
  sub_24DDE27E4(v119);
  memcpy(v113, v119, sizeof(v113));
  v110 = 1;
  v108 = 1;
  v106 = 1;
  v104 = 1;
  v102 = 1;
  v10 = v2[3];
  v11 = v2[4];
  v57 = v2;
  OUTLINED_FUNCTION_153(v2);
  sub_24DDE2820();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v0)
  {
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_583();
    OUTLINED_FUNCTION_295();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v75 = 0;
    LOBYTE(v76) = v118;
    *(&v76 + 1) = v116;
    BYTE3(v76) = v117;
    HIDWORD(v76) = 0;
    LOBYTE(v77) = v115;
    *(&v77 + 1) = *v114;
    HIDWORD(v77) = *&v114[3];
    v78 = v4;
    v79 = v6;
    v80 = v0;
    v81 = v2;
    v82 = v59;
    v83 = v61;
    OUTLINED_FUNCTION_1262();
    memcpy(v84, v113, sizeof(v84));
    OUTLINED_FUNCTION_916();
    v85 = v11;
    v86 = v10;
    v87 = v68;
    OUTLINED_FUNCTION_697(v88);
    v89 = v110;
    *v90 = v12[6];
    *&v90[3] = *(v12 + 27);
    v91 = v63;
    v92 = v108;
    *v93 = v12[4];
    *&v93[3] = *(v12 + 19);
    v94 = v50;
    v95 = v106;
    *v96 = v12[2];
    *&v96[3] = *(v12 + 11);
    v97 = v48;
    v98 = v104;
    *v99 = *v12;
    *&v99[3] = *(v12 + 3);
    v100 = 0;
    v101 = v102;
  }

  else
  {
    LOBYTE(v75) = 0;
    v45 = sub_24DE22B90();
    v118 = v13 & 1;
    OUTLINED_FUNCTION_207(1);
    v14 = sub_24DE22B80();
    v44 = v14;
    v115 = BYTE4(v14) & 1;
    OUTLINED_FUNCTION_207(2);
    v42 = sub_24DE22B40();
    v43 = v15;
    v70[0] = 3;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v41 = v75;
    v16 = v76;
    v60 = v77;
    v62 = v78;
    v17 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v17, v18);
    OUTLINED_FUNCTION_207(4);
    v56 = sub_24DE22B40();
    v58 = v19;
    v73[287] = 5;
    sub_24DDE28F8();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    memcpy(v72, v74, sizeof(v72));
    memcpy(v73, v113, 0x118uLL);
    sub_24DDE8DAC(v73, &unk_27F1B2A68);
    memcpy(v113, v72, sizeof(v113));
    OUTLINED_FUNCTION_207(6);
    v54 = sub_24DE22B40();
    v55 = v20;
    OUTLINED_FUNCTION_207(7);
    v52 = sub_24DE22B40();
    v53 = v21;
    OUTLINED_FUNCTION_207(8);
    v40 = sub_24DE22B50();
    OUTLINED_FUNCTION_207(9);
    v39 = sub_24DE22B50();
    OUTLINED_FUNCTION_122(10);
    v69 = sub_24DE22B50();
    OUTLINED_FUNCTION_122(11);
    v66 = sub_24DE22B40();
    v67 = v22;
    OUTLINED_FUNCTION_122(12);
    sub_24DE22B40();
    v65 = v23;
    OUTLINED_FUNCTION_122(13);
    sub_24DE22B90();
    v110 = v24 & 1;
    OUTLINED_FUNCTION_122(14);
    v64 = sub_24DE22B90();
    v108 = v25 & 1;
    OUTLINED_FUNCTION_122(15);
    v51 = sub_24DE22B90();
    v106 = v26 & 1;
    OUTLINED_FUNCTION_122(16);
    v49 = sub_24DE22B90();
    v104 = v27 & 1;
    v71 = 17;
    v28 = sub_24DE22B90();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_306();
    v32(v31);
    v102 = v30 & 1;
    *v70 = v45;
    v47 = v118;
    v70[8] = v118;
    *&v70[9] = v116;
    v70[11] = v117;
    *&v70[12] = v44;
    v38 = v115;
    v70[16] = v115;
    *&v70[17] = *v114;
    *&v70[20] = *&v114[3];
    *&v70[24] = v42;
    *&v70[32] = v43;
    *&v70[40] = v41;
    *&v70[48] = v16;
    *&v70[56] = v60;
    *&v70[64] = v62;
    *&v70[72] = v56;
    *&v70[80] = v58;
    memcpy(&v70[88], v72, 0x118uLL);
    *&v70[368] = v54;
    *&v70[376] = v55;
    *&v70[384] = v52;
    *&v70[392] = v53;
    v70[400] = v40;
    v70[401] = v39;
    v70[402] = v69;
    *&v70[403] = v111;
    v70[407] = v112;
    *&v70[408] = v66;
    *&v70[416] = v67;
    OUTLINED_FUNCTION_1209(v65);
    v37 = v110;
    v70[448] = v110;
    *&v70[449] = *v109;
    *&v70[452] = *&v109[3];
    *&v70[456] = v64;
    v36 = v108;
    v70[464] = v108;
    *&v70[465] = *v107;
    *&v70[468] = *&v107[3];
    *&v70[472] = v51;
    v35 = v106;
    v70[480] = v106;
    *&v70[481] = *v105;
    *&v70[484] = *&v105[3];
    *&v70[488] = v49;
    v33 = v104;
    v70[496] = v104;
    *&v70[497] = *v103;
    *&v70[500] = *&v103[3];
    *&v70[504] = v28;
    v34 = v102;
    v70[512] = v102;
    memcpy(v4, v70, 0x201uLL);
    sub_24DDE294C(v70, &v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    v75 = v45;
    LOBYTE(v76) = v47;
    *(&v76 + 1) = v116;
    BYTE3(v76) = v117;
    HIDWORD(v76) = v44;
    LOBYTE(v77) = v38;
    *(&v77 + 1) = *v114;
    HIDWORD(v77) = *&v114[3];
    v78 = v42;
    v79 = v43;
    v80 = v41;
    v81 = v16;
    v82 = v60;
    v83 = v62;
    OUTLINED_FUNCTION_1262();
    memcpy(v84, v113, sizeof(v84));
    OUTLINED_FUNCTION_916();
    v85 = v40;
    v86 = v39;
    v87 = v69;
    OUTLINED_FUNCTION_697(v88);
    v89 = v37;
    *v90 = *v109;
    *&v90[3] = *&v109[3];
    v91 = v64;
    v92 = v36;
    *v93 = *v107;
    *&v93[3] = *&v107[3];
    v94 = v51;
    v95 = v35;
    *v96 = *v105;
    *&v96[3] = *&v105[3];
    v97 = v49;
    v98 = v33;
    *v99 = *v103;
    *&v99[3] = *&v103[3];
    v100 = v28;
    v101 = v34;
  }

  sub_24DDE28C8(&v75);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD8FDBC()
{
  sub_24DE22CC0();
  Components.Schemas.App_AppInit_ResponseContent.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.games.setter()
{
  result = OUTLINED_FUNCTION_1311();
  *v1 = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.relatedPlayerIds.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.init(games:relatedPlayerIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t Components.Schemas.Profile_GetScopedIDs_Request.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x73656D6167;
  }

  *v0;
  return result;
}

unint64_t sub_24DD8FF20@<X0>(unint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetScopedIDs_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD8FF50()
{
  sub_24DDE2984();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8FF88()
{
  sub_24DDE2984();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Profile_GetScopedIDs_Request.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_281(a1);
  v3 = *(v2 + 8);
  v5 = *v4;
  v7 = *(v6 + 8);
  if (v1)
  {
    if (!v5 || (sub_24DD85994(v1, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_407();
      if (sub_24DD85994(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

void Components.Schemas.Profile_GetScopedIDs_Request.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1177();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AA0, &qword_24DE23178);
  OUTLINED_FUNCTION_23(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  v7 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_111();
  v8 = sub_24DDE2984();

  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_475();
  sub_24DE22D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
  OUTLINED_FUNCTION_4();
  sub_24DDE2110(v9);
  OUTLINED_FUNCTION_920();
  OUTLINED_FUNCTION_709();
  OUTLINED_FUNCTION_376();
  sub_24DE22C20();

  if (!v8)
  {
    OUTLINED_FUNCTION_1175();
    OUTLINED_FUNCTION_920();
    OUTLINED_FUNCTION_709();
    OUTLINED_FUNCTION_376();
    sub_24DE22C20();
  }

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_446();
  v12(v11);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (!*v1)
  {
    OUTLINED_FUNCTION_887();
    if (v3)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_887();
  }

  OUTLINED_FUNCTION_878();
  sub_24DDE0DB4(a1, v4);
  if (!v3)
  {
    return OUTLINED_FUNCTION_887();
  }

LABEL_3:
  OUTLINED_FUNCTION_878();
  v5 = OUTLINED_FUNCTION_446();

  return sub_24DDE0DB4(v5, v6);
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_796();
  if (v2)
  {
    v3 = sub_24DE22CE0();
    v11 = OUTLINED_FUNCTION_814(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25);
    sub_24DDE0DB4(v11, v12);
  }

  else
  {
    sub_24DE22CE0();
  }

  if (v1)
  {
    v13 = sub_24DE22CE0();
    v21 = OUTLINED_FUNCTION_452(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25);
    sub_24DDE0DB4(v21, v22);
  }

  else
  {
    sub_24DE22CE0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetScopedIDs_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AB0, &qword_24DE23180);
  OUTLINED_FUNCTION_18(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE2984();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v10)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v19);
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_507();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    OUTLINED_FUNCTION_1175();
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_507();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v20 = *(v15 + 8);
    v21 = OUTLINED_FUNCTION_379();
    v22(v21);
    *v12 = a10;
    v12[1] = a10;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD90470()
{
  v13 = *v0;
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1232(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Profile_GetScopedIDs_Request.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.init(status:results:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x73746C75736572;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_24DD90590@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetScopedIDs_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD905C0()
{
  sub_24DDE29D8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD905F8()
{
  sub_24DDE29D8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Profile_GetScopedIDs_Response.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_267(a1);
  v4 = *(v3 + 4);
  v5 = *(v3 + 8);
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543(v2);
    if (v7)
    {
      return 0;
    }
  }

  if (v1)
  {
    return v5 && (sub_24DD8655C(v1, v5) & 1) != 0;
  }

  return !v5;
}

void Components.Schemas.Profile_GetScopedIDs_Response.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AB8, &qword_24DE23188);
  OUTLINED_FUNCTION_23(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_100();
  v10 = *v0;
  v11 = *(v0 + 4);
  v17 = *(v0 + 1);
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_250(v3);
  sub_24DDE29D8();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v1)
  {
    OUTLINED_FUNCTION_414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AC8, &qword_24DE23190);
    sub_24DDE2A2C();
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_179();
    sub_24DE22C20();
  }

  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_446();
  v16(v15);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.hash(into:)()
{
  OUTLINED_FUNCTION_192();
  v1 = *(v0 + 8);
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_1163(v0);
    sub_24DE22CF0();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (!v1)
  {
    return sub_24DE22CE0();
  }

LABEL_3:
  sub_24DE22CE0();
  v3 = OUTLINED_FUNCTION_407();

  return sub_24DDE1718(v3, v4);
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  OUTLINED_FUNCTION_796();
  sub_24DE22CE0();
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_1306();
  }

  if (v3)
  {
    v4 = sub_24DE22CE0();
    v12 = OUTLINED_FUNCTION_452(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
    sub_24DDE1718(v12, v13);
  }

  else
  {
    sub_24DE22CE0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetScopedIDs_Response.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AE0, &qword_24DE23198);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE29D8();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v0)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_416();
    sub_24DE22B80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AC8, &qword_24DE23190);
    OUTLINED_FUNCTION_414();
    sub_24DDE2B04();
    OUTLINED_FUNCTION_211();
    sub_24DE22B70();
    v6 = OUTLINED_FUNCTION_106();
    v7(v6);
    OUTLINED_FUNCTION_975();
    *(v1 + 8) = v8;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD90A90()
{
  v12 = *v0;
  v13 = *(v0 + 4);
  v14 = *(v0 + 1);
  v1 = sub_24DE22CC0();
  OUTLINED_FUNCTION_1232(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  Components.Schemas.Profile_GetScopedIDs_Response.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ImageURL.init(avatarType:template:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ImageURL.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x742D726174617661;
  }

  *v0;
  return result;
}

uint64_t sub_24DD90BCC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetProfileInfo_ImageURL.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD90BFC()
{
  sub_24DDE2BDC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD90C34()
{
  sub_24DDE2BDC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Profile_GetProfileInfo_ImageURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 16) && v6 == v7;
    return v9 || (sub_24DE22CA0() & 1) != 0;
  }

  return !v7;
}

void Components.Schemas.Profile_GetProfileInfo_ImageURL.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AF8, &qword_24DE231A0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  v7 = *v0;
  v8 = *(v0 + 8);
  OUTLINED_FUNCTION_737();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_153(v2);
  sub_24DDE2BDC();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_139();
  sub_24DE22C40();
  if (!v1)
  {
    OUTLINED_FUNCTION_121();
    sub_24DE22BF0();
  }

  v11 = OUTLINED_FUNCTION_213();
  v12(v11);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ImageURL.hash(into:)()
{
  OUTLINED_FUNCTION_438();
  v1 = v0[2];
  v2 = v0[3];
  if (*(v0 + 8) != 1)
  {
    v4 = *v0;
    sub_24DE22CE0();
    MEMORY[0x253039750](v4);
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (!v2)
  {
    return sub_24DE22CE0();
  }

LABEL_3:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();

  return sub_24DE22AD0();
}

void Components.Schemas.Profile_GetProfileInfo_ImageURL.hashValue.getter()
{
  OUTLINED_FUNCTION_1100();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_1035();
  if (v5)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    MEMORY[0x253039750](v1);
  }

  sub_24DE22CE0();
  if (v4)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void Components.Schemas.Profile_GetProfileInfo_ImageURL.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2B08, &qword_24DE231A8);
  OUTLINED_FUNCTION_24(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE2BDC();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v1)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_336();
    v7 = sub_24DE22B90();
    v9 = v8;
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_529();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1036();
    v13 = v10;
    v11 = OUTLINED_FUNCTION_532();
    v12(v11);
    *v2 = v7;
    *(v2 + 8) = v9 & 1;
    *(v2 + 16) = v13;
    *(v2 + 24) = v0;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD910A4()
{
  v12 = *v0;
  v13 = *(v0 + 8);
  v14 = *(v0 + 1);
  v1 = sub_24DE22CC0();
  OUTLINED_FUNCTION_1051(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  Components.Schemas.Profile_GetProfileInfo_ImageURL.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.init(suggestionsCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.CodingKeys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void sub_24DD911E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.CodingKeys.init(rawValue:)();
}

uint64_t sub_24DD9123C()
{
  sub_24DDE2C30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD91274()
{
  sub_24DDE2C30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.achievements.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.friends.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.gamesPlayed.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall Components.Schemas.Profile_GetProfileInfo_PrivacySettings.init(achievements:friends:gamesPlayed:)(GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_PrivacySettings *__return_ptr retstr, Swift::String_optional achievements, Swift::String_optional friends, Swift::String_optional gamesPlayed)
{
  retstr->achievements = achievements;
  retstr->friends = friends;
  retstr->gamesPlayed = gamesPlayed;
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_PrivacySettings::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_PrivacySettings.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.CodingKeys.stringValue.getter()
{
  v1 = 0x73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x6C702D73656D6167;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D65766569686361;
  }
}

uint64_t sub_24DD91648@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetProfileInfo_PrivacySettings.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9167C()
{
  sub_24DDE2C84();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD916B4()
{
  sub_24DDE2C84();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.alias.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.firstName.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void sub_24DD91930(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.imageUrls.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24DDE2CD8(v2, v3, v4, v5);
}

__n128 Components.Schemas.Profile_GetProfileInfo_ProfileInfo.imageUrls.setter(uint64_t a1)
{
  sub_24DDE2CEC(v1[7], v1[8], v1[9], v1[10]);
  result = *a1;
  *(v1 + 9) = *(a1 + 16);
  *(v1 + 7) = result;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.inputId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastName.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedGame.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_1201();
  memcpy(v2, v3, v4);
  v5 = memcpy(v0, (v1 + 144), 0x59uLL);
  OUTLINED_FUNCTION_805(v5, v6, &unk_27F1B2B40, &unk_24DE231D0, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  return sub_24DDE73DC();
}

void *Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedGame.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_1201();
  memcpy(v1, v2, v3);
  sub_24DDE8DAC(&v5, &unk_27F1B2B40);
  return OUTLINED_FUNCTION_949((v0 + 144));
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedTimestamp.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numAchievements.setter(uint64_t result)
{
  *(v1 + 252) = result;
  *(v1 + 256) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numCommonFriends.setter(uint64_t result)
{
  *(v1 + 260) = result;
  *(v1 + 264) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numCommonGames.setter(uint64_t result)
{
  *(v1 + 268) = result;
  *(v1 + 272) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numFriends.setter(uint64_t result)
{
  *(v1 + 276) = result;
  *(v1 + 280) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numGamesPlayed.setter(uint64_t result)
{
  *(v1 + 284) = result;
  *(v1 + 288) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.playerId.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.playerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 304);

  *(v1 + 296) = v2;
  *(v1 + 304) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.gameScopedPlayerId.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.gameScopedPlayerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 320);

  *(v1 + 312) = v2;
  *(v1 + 320) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.teamScopedPlayerId.getter()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.teamScopedPlayerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 336);

  *(v1 + 328) = v2;
  *(v1 + 336) = v0;
  return result;
}

double sub_24DD91F1C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.privacySettings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[43];
  v3 = v1[44];
  v4 = v1[45];
  v5 = v1[46];
  v6 = v1[47];
  v7 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_24DDE3490(v2, v3);
}

__n128 Components.Schemas.Profile_GetProfileInfo_ProfileInfo.privacySettings.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  sub_24DDE34E4(v1[43], v1[44]);
  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 43) = *a1;
  *(v1 + 45) = v10;
  v1[47] = v3;
  v1[48] = v4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendsApi.getter()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendsApi.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 408);

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendInvitesFromChallenges.getter()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendInvitesFromChallenges.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 424);

  *(v1 + 416) = v2;
  *(v1 + 424) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendInvitesFromMultiplayerInvites.getter()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendInvitesFromMultiplayerInvites.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 440);

  *(v1 + 432) = v2;
  *(v1 + 440) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowContactLookup.getter()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowContactLookup.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 456);

  *(v1 + 448) = v2;
  *(v1 + 456) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.contactAssociationId.getter()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.contactAssociationId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 472);

  *(v1 + 464) = v2;
  *(v1 + 472) = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastUpdated.getter()
{
  result = *(v0 + 480);
  v2 = *(v0 + 488);
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastUpdated.setter(uint64_t result, char a2)
{
  *(v2 + 480) = result;
  *(v2 + 488) = a2 & 1;
  return result;
}

void *sub_24DD922DC()
{
  OUTLINED_FUNCTION_1086();
  sub_24DDE2D00(v0);
  v1 = OUTLINED_FUNCTION_1065();
  return memcpy(v1, v2, 0x7DuLL);
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.avatar.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1183();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 496), 0x7DuLL);
  return sub_24DDE73DC();
}

void *Components.Schemas.Profile_GetProfileInfo_ProfileInfo.avatar.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_1183();
  memcpy(v2, v3, v4);
  sub_24DDE8DAC(&v6, &unk_27F1B2B48);
  return memcpy((v1 + 496), v0, 0x7DuLL);
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.init(pbaccount:challengeable:achievementPoints:alias:findable:firstName:imageUrls:inputId:isChild:isInvitable:isPlayerInvitable:lastSeenTimestamp:lastName:lastPlayedGame:lastPlayedTimestamp:numAchievements:numCommonFriends:numCommonGames:numFriends:numGamesPlayed:pbAccount:playerId:gameScopedPlayerId:teamScopedPlayerId:privacySettings:isArcadeSubscriber:allowFriendsApi:allowFriendInvitesFromChallenges:allowFriendInvitesFromMultiplayerInvites:allowContactLookup:contactAssociationId:lastUpdated:canReceiveFriendInvitation:avatar:isChallengeable:supportsMultiplayerActivities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, char a31, int a32, int a33, char a34, int a35, char a36, int a37, char a38, int a39, char a40, int a41, char a42, __int16 a43, char a44, __int128 a45, __int128 a46, uint64_t a47, uint64_t a48, __int128 *a49, char a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, __int128 a55, uint64_t a56, char a57, char a58, const void *a59, __int16 a60)
{
  OUTLINED_FUNCTION_659();
  v84 = v60;
  v83 = v61;
  v82 = v62;
  v80 = v63;
  v81 = v64;
  v79 = v65;
  v77 = v66;
  v78 = v67;
  v69 = v68;
  v70 = v68 + 256;
  *(v68 + 72) = 0;
  *(v68 + 80) = 1;
  v68 += 360;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  *(v69 + 144) = xmmword_24DE22F30;
  *(v69 + 56) = 0;
  *(v69 + 64) = 0;
  *(v69 + 160) = 0u;
  *(v69 + 176) = 0u;
  *(v69 + 192) = 0u;
  *(v69 + 208) = 0u;
  *(v69 + 217) = 0u;
  *(v70 + 88) = xmmword_24DE22F30;
  v85 = *(a49 + 5);
  v86 = *(a49 + 4);
  sub_24DDE2D00(__src);
  memcpy((v69 + 496), __src, 0x7DuLL);
  *v69 = v77;
  *(v69 + 1) = v78;
  *(v69 + 4) = v79;
  *(v69 + 8) = BYTE4(v79) & 1;
  *(v69 + 16) = v80;
  *(v69 + 24) = v81;
  *(v69 + 32) = v82;
  *(v69 + 40) = v83;
  *(v69 + 48) = v84;
  sub_24DDE2CEC(*(v69 + 56), *(v69 + 64), *(v69 + 72), *(v69 + 80));
  v71 = *a21;
  *(v69 + 72) = a21[1];
  *(v69 + 56) = v71;
  *(v69 + 88) = a22;
  *(v69 + 96) = a23;
  *(v69 + 104) = a24;
  *(v69 + 105) = *(&a24 + 1);
  *(v69 + 112) = a25;
  *(v69 + 120) = a26 & 1;
  *(v69 + 128) = a27;
  *(v69 + 136) = a28;
  memcpy(__dst, (v69 + 144), 0x59uLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2B40);
  memcpy((v69 + 144), a29, 0x59uLL);
  *(v69 + 240) = a30;
  *(v69 + 248) = a31 & 1;
  *(v69 + 252) = a33;
  *(v69 + 256) = a34 & 1;
  *(v69 + 260) = a35;
  *(v69 + 264) = a36 & 1;
  *(v69 + 268) = a37;
  *(v69 + 272) = a38 & 1;
  *(v69 + 276) = a39;
  *(v69 + 280) = a40 & 1;
  *(v69 + 284) = a41;
  *(v69 + 288) = a42 & 1;
  *(v69 + 289) = a44;
  *(v69 + 296) = a45;
  *(v69 + 312) = a46;
  *(v69 + 328) = a47;
  *(v69 + 336) = a48;
  v72 = *(v69 + 360);
  v73 = *(v69 + 368);
  v74 = *(v69 + 376);
  v75 = *(v69 + 384);
  sub_24DDE34E4(*(v70 + 88), *(v69 + 352));
  v76 = *a49;
  *(v70 + 104) = a49[1];
  *(v70 + 88) = v76;
  *(v69 + 376) = v86;
  *(v69 + 384) = v85;
  *(v69 + 392) = a50;
  *(v69 + 400) = a51;
  *(v69 + 416) = a52;
  *(v69 + 432) = a53;
  *(v69 + 448) = a54;
  *(v69 + 464) = a55;
  *(v69 + 480) = a56;
  *(v69 + 488) = a57 & 1;
  *(v69 + 489) = a58;
  memcpy(v89, (v69 + 496), 0x7DuLL);
  sub_24DDE8DAC(v89, &unk_27F1B2B48);
  memcpy((v69 + 496), a59, 0x7DuLL);
  *(v69 + 621) = a60;
  OUTLINED_FUNCTION_653();
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_ProfileInfo::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 18;
  switch(v2)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v4 = 1;
      goto LABEL_28;
    case 2:
      v4 = 2;
      goto LABEL_28;
    case 3:
      v4 = 3;
      goto LABEL_28;
    case 4:
      v4 = 4;
      goto LABEL_28;
    case 5:
      v4 = 5;
      goto LABEL_28;
    case 6:
      v4 = 6;
      goto LABEL_28;
    case 7:
      v4 = 7;
      goto LABEL_28;
    case 8:
      v4 = 8;
      goto LABEL_28;
    case 9:
      v4 = 9;
      goto LABEL_28;
    case 10:
      v4 = 10;
      goto LABEL_28;
    case 11:
      v4 = 11;
      goto LABEL_28;
    case 12:
      v4 = 12;
      goto LABEL_28;
    case 13:
      v4 = 13;
      goto LABEL_28;
    case 14:
      v4 = 14;
      goto LABEL_28;
    case 15:
      v4 = 15;
      goto LABEL_28;
    case 16:
      v4 = 16;
      goto LABEL_28;
    case 17:
      v4 = 17;
LABEL_28:
      v5 = v4;
      break;
    case 18:
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    case 35:
      v5 = 35;
      break;
    default:
      v5 = 36;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_ProfileInfo::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
    case 0x10:
      OUTLINED_FUNCTION_561(16);
      break;
    case 3:
      OUTLINED_FUNCTION_830();
      break;
    case 5:
      OUTLINED_FUNCTION_895();
      break;
    case 6:
      OUTLINED_FUNCTION_419();
      break;
    case 0xA:
    case 0xB:
    case 0x1B:
    case 0x1C:
    case 0x23:
      OUTLINED_FUNCTION_1162();
      break;
    case 0xC:
      OUTLINED_FUNCTION_828();
      break;
    case 0xD:
    case 0xF:
    case 0x11:
    case 0x13:
    case 0x18:
    case 0x22:
      OUTLINED_FUNCTION_155();
      break;
    case 0x15:
      OUTLINED_FUNCTION_193(0x726579616C70);
      break;
    case 0x19:
    case 0x1D:
      OUTLINED_FUNCTION_560(16);
      break;
    case 0x1A:
      OUTLINED_FUNCTION_244(16);
      break;
    case 0x1E:
      OUTLINED_FUNCTION_761(16);
      break;
    case 0x1F:
      OUTLINED_FUNCTION_286();
      break;
    default:
      return;
  }
}

uint64_t sub_24DD92E40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_719();
  return sub_24DD78F50(v4, v5, v6) & 1;
}

uint64_t sub_24DD92E70()
{
  v1 = *v0;
  OUTLINED_FUNCTION_719();
  return sub_24DD7DD50(v2, v3, v4);
}

void sub_24DD92ECC(void *a1@<X8>)
{
  Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DD92F00()
{
  sub_24DDE2D80();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD92F38()
{
  sub_24DDE2D80();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Profile_GetProfileInfo_ProfileInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_569();
  v3 = *v2;
  v4 = v2[1];
  v319 = *(v2 + 1);
  v321 = v2[8];
  v317 = *(v2 + 2);
  v320 = *(v2 + 3);
  v318 = v2[32];
  v311 = *(v2 + 5);
  v310 = *(v2 + 6);
  v314 = *(v2 + 7);
  v315 = *(v2 + 8);
  v316 = *(v2 + 9);
  v313 = *(v2 + 10);
  v300 = *(v2 + 11);
  v304 = *(v2 + 12);
  v302 = v2[104];
  v297 = v2[105];
  v296 = v2[106];
  v290 = *(v2 + 14);
  v293 = v2[120];
  v288 = *(v2 + 16);
  v292 = *(v2 + 17);
  OUTLINED_FUNCTION_1201();
  memcpy(v5, v6, v7);
  v282 = *(v1 + 240);
  v286 = *(v1 + 248);
  v279 = *(v1 + 252);
  v283 = *(v1 + 256);
  v275 = *(v1 + 260);
  v280 = *(v1 + 264);
  v271 = *(v1 + 268);
  v276 = *(v1 + 272);
  v266 = *(v1 + 276);
  v272 = *(v1 + 280);
  v263 = *(v1 + 284);
  v267 = *(v1 + 288);
  v264 = *(v1 + 289);
  v180 = *(v1 + 296);
  v184 = *(v1 + 312);
  v259 = *(v1 + 304);
  v260 = *(v1 + 320);
  v188 = *(v1 + 336);
  v192 = *(v1 + 328);
  v235 = *(v1 + 344);
  v236 = *(v1 + 360);
  v237 = *(v1 + 368);
  v238 = *(v1 + 376);
  v239 = *(v1 + 384);
  HIDWORD(v224) = *(v1 + 392);
  v229 = *(v1 + 400);
  v226 = *(v1 + 352);
  v227 = *(v1 + 408);
  v240 = *(v1 + 424);
  v241 = *(v1 + 416);
  v246 = *(v1 + 440);
  v247 = *(v1 + 432);
  v249 = *(v1 + 456);
  v250 = *(v1 + 448);
  v251 = *(v1 + 472);
  v252 = *(v1 + 464);
  v254 = *(v1 + 480);
  v253 = *(v1 + 488);
  v255 = *(v1 + 489);
  OUTLINED_FUNCTION_1183();
  memcpy(v8, v9, v10);
  v256 = *(v1 + 621);
  v257 = *(v1 + 622);
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 1);
  v14 = v0[8];
  v16 = *(v0 + 2);
  v15 = *(v0 + 3);
  v17 = v0[32];
  v308 = *(v0 + 5);
  v309 = *(v0 + 6);
  v312 = *(v0 + 7);
  v305 = *(v0 + 8);
  v306 = *(v0 + 9);
  v307 = *(v0 + 10);
  v299 = *(v0 + 11);
  v303 = *(v0 + 12);
  v301 = v0[104];
  v298 = v0[105];
  v295 = v0[106];
  v289 = *(v0 + 14);
  v294 = v0[120];
  v287 = *(v0 + 16);
  v291 = *(v0 + 17);
  memcpy(__dst, v0 + 144, 0x59uLL);
  v281 = *(v0 + 30);
  v285 = v0[248];
  v278 = *(v0 + 63);
  v284 = v0[256];
  v273 = *(v0 + 65);
  v277 = v0[264];
  v269 = *(v0 + 67);
  v274 = v0[272];
  v265 = *(v0 + 69);
  v270 = v0[280];
  v261 = *(v0 + 71);
  v268 = v0[288];
  v262 = v0[289];
  v258 = *(v0 + 38);
  v160 = *(v0 + 37);
  v164 = *(v0 + 39);
  v168 = *(v0 + 40);
  v172 = *(v0 + 41);
  v176 = *(v0 + 42);
  v196 = *(v0 + 43);
  v200 = *(v0 + 45);
  v206 = *(v0 + 44);
  v208 = *(v0 + 46);
  v202 = *(v0 + 47);
  HIDWORD(v204) = v0[392];
  v210 = *(v0 + 48);
  v212 = *(v0 + 50);
  v214 = *(v0 + 51);
  v216 = *(v0 + 52);
  v218 = *(v0 + 53);
  v220 = *(v0 + 54);
  v222 = *(v0 + 55);
  v231 = *(v0 + 56);
  v233 = *(v0 + 57);
  v242 = *(v0 + 58);
  v243 = *(v0 + 59);
  v244 = *(v0 + 60);
  v245 = v0[488];
  v248 = v0[489];
  memcpy(v333, v0 + 496, sizeof(v333));
  v18 = v0[621];
  v19 = v0[622];
  if (v3 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v11 == 2 || ((v11 ^ v3) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v4 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v12 == 2 || ((v12 ^ v4) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v321)
  {
    if (!v14)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v319 == v13)
    {
      v20 = v14;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_48;
    }
  }

  if (v320)
  {
    if (!v15)
    {
      goto LABEL_48;
    }

    if (v317 != v16 || v320 != v15)
    {
      OUTLINED_FUNCTION_641();
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_48;
  }

  if (v318 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v17 == 2 || ((v17 ^ v318) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v310)
  {
    OUTLINED_FUNCTION_1071();
    if (!v309)
    {
      goto LABEL_48;
    }

    v25 = v22 == v24 && v23 == v309;
    if (!v25 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1071();
    if (v309)
    {
      goto LABEL_48;
    }
  }

  if (v16 == 1)
  {
    v26 = OUTLINED_FUNCTION_539();
    sub_24DDE2CD8(v26, v27, v3, 1);
    v28 = v307;
    if (v307 == 1)
    {
      sub_24DDE2CD8(v11, v305, v306, 1);
      v29 = OUTLINED_FUNCTION_539();
      sub_24DDE2CEC(v29, v30, v3, 1);
      goto LABEL_50;
    }

    v42 = OUTLINED_FUNCTION_1020();
    sub_24DDE2CD8(v42, v43, v44, v307);
LABEL_47:
    v45 = OUTLINED_FUNCTION_290();
    sub_24DDE2CEC(v45, v46, v47, v48);
    OUTLINED_FUNCTION_954();
    sub_24DDE2CEC(v49, v50, v51, v28);
    goto LABEL_48;
  }

  __src[0] = v12;
  __src[1] = v14;
  __src[2] = v3;
  __src[3] = v16;
  v28 = v307;
  if (v307 == 1)
  {
    v31 = OUTLINED_FUNCTION_290();
    sub_24DDE2CD8(v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_1020();
    sub_24DDE2CD8(v35, v36, v37, 1);
    v38 = OUTLINED_FUNCTION_290();
    sub_24DDE2CD8(v38, v39, v40, v41);

    goto LABEL_47;
  }

  v327[0] = v11;
  LOBYTE(v327[1]) = v305 & 1;
  v327[2] = v306;
  v327[3] = v307;
  v322 = static Components.Schemas.Profile_GetProfileInfo_ImageURL.== infix(_:_:)(__src, v327);
  v52 = OUTLINED_FUNCTION_290();
  sub_24DDE2CD8(v52, v53, v54, v55);
  v56 = OUTLINED_FUNCTION_822();
  sub_24DDE2CD8(v56, v57, v306, v307);
  v58 = OUTLINED_FUNCTION_290();
  sub_24DDE2CD8(v58, v59, v60, v61);

  v62 = OUTLINED_FUNCTION_290();
  sub_24DDE2CEC(v62, v63, v64, v65);
  if (!v322)
  {
    goto LABEL_48;
  }

LABEL_50:
  if (v304)
  {
    if (!v303)
    {
      goto LABEL_48;
    }

    v66 = v300 == v299 && v304 == v303;
    if (!v66 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v303)
  {
    goto LABEL_48;
  }

  if (v302 == 2)
  {
    if (v301 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v301 == 2 || ((v301 ^ v302) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v297 == 2)
  {
    if (v298 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v298 == 2 || ((v298 ^ v297) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v296 == 2)
  {
    if (v295 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v295 == 2 || ((v295 ^ v296) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v293)
  {
    if (!v294)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v67 = v294;
    if (v290 != v289)
    {
      v67 = 1;
    }

    if (v67)
    {
      goto LABEL_48;
    }
  }

  if (v292)
  {
    if (!v291)
    {
      goto LABEL_48;
    }

    v68 = v288 == v287 && v292 == v291;
    if (!v68 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v291)
  {
    goto LABEL_48;
  }

  v69 = v330[16];
  v70 = v330[17];
  OUTLINED_FUNCTION_1002(v325);
  v71 = __dst[0];
  v72 = __dst[1];
  memcpy(v324, &__dst[2], 0x49uLL);
  if (v70 == 1)
  {
    if (__dst[1] == 1)
    {
      __src[0] = v69;
      __src[1] = 1;
      OUTLINED_FUNCTION_940(__src);
      OUTLINED_FUNCTION_500();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_500();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_954();
      v75 = sub_24DDE8DAC(v73, v74);
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
LABEL_95:
    __src[0] = v69;
    __src[1] = v70;
    memcpy(&__src[2], v325, 0x49uLL);
    __src[12] = v71;
    __src[13] = v72;
    memcpy(&__src[14], v324, 0x49uLL);
    v83 = &unk_27F1B2B50;
    v84 = __src;
    goto LABEL_96;
  }

  __src[0] = v69;
  __src[1] = v70;
  OUTLINED_FUNCTION_940(__src);
  memcpy(v327, __src, 0x59uLL);
  if (v72 == 1)
  {
    memcpy(v330, __src, 0x59uLL);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    sub_24DDE2054(v330);
    goto LABEL_95;
  }

  memcpy(&v330[2], &__dst[2], 0x49uLL);
  v330[0] = v71;
  v330[1] = v72;
  static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)();
  v86 = v85;
  memcpy(v326, v330, 0x59uLL);
  OUTLINED_FUNCTION_499();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_499();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_499();
  sub_24DDE73DC();
  sub_24DDE2054(v326);
  memcpy(v328, v327, 0x59uLL);
  sub_24DDE2054(v328);
  v330[0] = v69;
  v330[1] = v70;
  memcpy(&v330[2], v325, 0x49uLL);
  OUTLINED_FUNCTION_592();
  v75 = sub_24DDE8DAC(v87, v88);
  if ((v86 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_98:
  if (v286)
  {
    if (!v285)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v89 = v285;
    if (v282 != v281)
    {
      v89 = 1;
    }

    if (v89)
    {
      goto LABEL_48;
    }
  }

  if (v283)
  {
    if (!v284)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v90 = v284;
    if (v279 != v278)
    {
      v90 = 1;
    }

    if (v90)
    {
      goto LABEL_48;
    }
  }

  if (v280)
  {
    if (!v277)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v91 = v277;
    if (v275 != v273)
    {
      v91 = 1;
    }

    if (v91)
    {
      goto LABEL_48;
    }
  }

  if (v276)
  {
    if (!v274)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v92 = v274;
    if (v271 != v269)
    {
      v92 = 1;
    }

    if (v92)
    {
      goto LABEL_48;
    }
  }

  if (v272)
  {
    if (!v270)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v93 = v270;
    if (v266 != v265)
    {
      v93 = 1;
    }

    if (v93)
    {
      goto LABEL_48;
    }
  }

  if (v267)
  {
    if (!v268)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v94 = v268;
    if (v263 != v261)
    {
      v94 = 1;
    }

    if (v94)
    {
      goto LABEL_48;
    }
  }

  if (v264 == 2)
  {
    if (v262 != 2)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v75 = 0;
    if (v262 == 2 || ((v262 ^ v264) & 1) != 0)
    {
      goto LABEL_48;
    }
  }

  if (v259)
  {
    if (!v258)
    {
      goto LABEL_48;
    }

    if (v180 != v160 || v259 != v258)
    {
      v75 = sub_24DE22CA0();
      if ((v75 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v258)
  {
    goto LABEL_48;
  }

  if (v260)
  {
    if (!v168)
    {
      goto LABEL_48;
    }

    if (v184 != v164 || v260 != v168)
    {
      v75 = sub_24DE22CA0();
      if ((v75 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v168)
  {
    goto LABEL_48;
  }

  if (v188)
  {
    if (!v176)
    {
      goto LABEL_48;
    }

    if (v192 != v172 || v188 != v176)
    {
      v75 = sub_24DE22CA0();
      if ((v75 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v176)
  {
    goto LABEL_48;
  }

  if (v226 != 1)
  {
    __src[0] = v235;
    __src[1] = v226;
    __src[2] = v236;
    __src[3] = v237;
    __src[4] = v238;
    __src[5] = v239;
    if (v206 != 1)
    {
      v327[0] = v196;
      v327[1] = v206;
      v327[2] = v200;
      v327[3] = v208;
      v327[4] = v202;
      v327[5] = v210;
      static Components.Schemas.Profile_GetProfileInfo_PrivacySettings.== infix(_:_:)();
      v323 = v140;
      sub_24DDE3490(v235, v226);
      v141 = OUTLINED_FUNCTION_557();
      sub_24DDE3490(v141, v142);
      OUTLINED_FUNCTION_708();
      OUTLINED_FUNCTION_1273();
      sub_24DDE3490(v143, v144);

      OUTLINED_FUNCTION_708();
      OUTLINED_FUNCTION_1273();
      sub_24DDE34E4(v145, v146);
      if ((v323 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_174;
    }

    v118 = sub_24DDE3490(v235, v226);
    OUTLINED_FUNCTION_1294(v118, v119, v120, v121, v122, v123, v124, v125, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196);
    OUTLINED_FUNCTION_503();
    OUTLINED_FUNCTION_595();
    sub_24DDE3490(v126, v127);

LABEL_172:
    v130 = sub_24DDE34E4(v235, v226);
    v138 = OUTLINED_FUNCTION_1253(v130, v131, v132, v133, v134, v135, v136, v137, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199);
    sub_24DDE34E4(v138, v139);
    goto LABEL_48;
  }

  v98 = OUTLINED_FUNCTION_1254(v75, v76, v77, v78, v79, v80, v81, v82, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, 1, v227, v229, v231, v233, v235);
  v100 = sub_24DDE3490(v98, v99);
  if (v207 != 1)
  {
    v128 = OUTLINED_FUNCTION_1253(v100, v101, v102, v103, v104, v105, v106, v107, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197);
    sub_24DDE3490(v128, v129);
    goto LABEL_172;
  }

  v108 = OUTLINED_FUNCTION_1294(v100, v101, v102, v103, v104, v105, v106, v107, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197);
  v116 = OUTLINED_FUNCTION_1254(v108, v109, v110, v111, v112, v113, v114, v115, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v201, v203, v205, 1, v209, v211, v213, v215, v217, v219, v221, v223, v225, v226, v228, v230, v232, v234, v235);
  sub_24DDE34E4(v116, v117);
LABEL_174:
  if (HIDWORD(v224) == 2)
  {
    if (HIDWORD(v204) != 2)
    {
      goto LABEL_48;
    }
  }

  else if (HIDWORD(v204) == 2 || ((HIDWORD(v204) ^ HIDWORD(v224)) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v227)
  {
    if (!v214)
    {
      goto LABEL_48;
    }

    v147 = v229 == v212 && v227 == v214;
    if (!v147 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v214)
  {
    goto LABEL_48;
  }

  if (v240)
  {
    if (!v218)
    {
      goto LABEL_48;
    }

    v148 = v241 == v216 && v240 == v218;
    if (!v148 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v218)
  {
    goto LABEL_48;
  }

  if (v246)
  {
    if (!v222)
    {
      goto LABEL_48;
    }

    v149 = v247 == v220 && v246 == v222;
    if (!v149 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v222)
  {
    goto LABEL_48;
  }

  if (v249)
  {
    if (!v233)
    {
      goto LABEL_48;
    }

    v150 = v250 == v231 && v249 == v233;
    if (!v150 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v233)
  {
    goto LABEL_48;
  }

  if (v251)
  {
    if (!v243)
    {
      goto LABEL_48;
    }

    v151 = v252 == v242 && v251 == v243;
    if (!v151 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v243)
  {
    goto LABEL_48;
  }

  if (v253)
  {
    if (!v245)
    {
      goto LABEL_48;
    }

    goto LABEL_230;
  }

  v152 = v245;
  if (v254 != v244)
  {
    v152 = 1;
  }

  if ((v152 & 1) == 0)
  {
LABEL_230:
    if (v255 == 2)
    {
      if (v248 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (v248 == 2 || ((v248 ^ v255) & 1) != 0)
    {
      goto LABEL_48;
    }

    memcpy(__src, v331, 0x7DuLL);
    OUTLINED_FUNCTION_1059();
    memcpy(v153, v154, v155);
    memcpy(v330, v331, 0x7DuLL);
    if (sub_24DDE2D2C(v330) == 1)
    {
      memcpy(v327, &__src[16], 0x7DuLL);
      if (sub_24DDE2D2C(v327) == 1)
      {
        OUTLINED_FUNCTION_1170(v328);
        OUTLINED_FUNCTION_500();
        sub_24DDE73DC();
        OUTLINED_FUNCTION_500();
        sub_24DDE73DC();
        OUTLINED_FUNCTION_954();
        sub_24DDE8DAC(v156, v157);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
    }

    else
    {
      OUTLINED_FUNCTION_1170(v328);
      memcpy(v327, &__src[16], 0x7DuLL);
      if (sub_24DDE2D2C(v327) != 1)
      {
        OUTLINED_FUNCTION_1134();
        OUTLINED_FUNCTION_1134();
        OUTLINED_FUNCTION_1134();
        static Components.Schemas.ArtworkAvatar.== infix(_:_:)();
        memcpy(v324, &__src[16], 0x7DuLL);
        sub_24DDE2D50(v324);
        OUTLINED_FUNCTION_1170(v325);
        sub_24DDE2D50(v325);
        OUTLINED_FUNCTION_1170(v326);
        OUTLINED_FUNCTION_454();
        sub_24DDE8DAC(v158, v159);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_1170(v326);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      sub_24DDE2D50(v326);
    }

    memcpy(v327, __src, 0xFDuLL);
    v83 = &unk_27F1B2B58;
    v84 = v327;
LABEL_96:
    sub_24DDE8DAC(v84, v83);
  }

LABEL_48:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2B60, &qword_24DE231F0);
  OUTLINED_FUNCTION_24(v4);
  v94 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  v87 = v0[1];
  v86 = *(v0 + 1);
  v85 = v0[8];
  v83 = *(v0 + 2);
  v84 = *(v0 + 3);
  v82 = v0[32];
  v80 = *(v0 + 5);
  v81 = *(v0 + 6);
  v76 = *(v0 + 7);
  v77 = *(v0 + 8);
  v78 = *(v0 + 10);
  v79 = *(v0 + 9);
  v74 = *(v0 + 11);
  v75 = *(v0 + 12);
  v73 = v0[104];
  v72 = v0[105];
  v71 = v0[106];
  v70 = v0[120];
  v67 = *(v0 + 16);
  v68 = *(v0 + 17);
  v69 = *(v0 + 14);
  v88 = *v0;
  OUTLINED_FUNCTION_1201();
  memcpy(v9, v10, v11);
  v66 = v0[248];
  v64 = *(v0 + 63);
  v65 = *(v0 + 30);
  v63 = v0[256];
  v62 = *(v0 + 65);
  v61 = v0[264];
  v29 = *(v0 + 67);
  v28 = v0[272];
  v31 = *(v0 + 69);
  v30 = v0[280];
  v33 = *(v0 + 71);
  v32 = v0[288];
  v34 = v0[289];
  v35 = *(v0 + 38);
  v36 = *(v0 + 37);
  v37 = *(v0 + 40);
  v38 = *(v0 + 39);
  v39 = *(v0 + 42);
  v40 = *(v0 + 41);
  v45 = *(v0 + 44);
  v46 = *(v0 + 43);
  v43 = *(v0 + 46);
  v44 = *(v0 + 45);
  v41 = *(v0 + 48);
  v42 = *(v0 + 47);
  v47 = v0[392];
  v48 = *(v0 + 51);
  v49 = *(v0 + 50);
  v50 = *(v0 + 53);
  v51 = *(v0 + 52);
  v52 = *(v0 + 55);
  v53 = *(v0 + 54);
  v54 = *(v0 + 57);
  v55 = *(v0 + 56);
  v56 = *(v0 + 59);
  v57 = *(v0 + 58);
  v59 = *(v0 + 60);
  v58 = v0[488];
  v60 = v0[489];
  OUTLINED_FUNCTION_1183();
  memcpy(v12, v13, v14);
  v15 = v0[621];
  v16 = v0[622];
  v17 = v3[3];
  v18 = v3[4];
  OUTLINED_FUNCTION_250(v3);
  sub_24DDE2D80();
  sub_24DE22D50();
  LOBYTE(v90[0]) = 0;
  sub_24DE22C00();
  if (v1)
  {
    v19 = *(v94 + 8);
    v20 = OUTLINED_FUNCTION_557();
    v21(v20);
  }

  else
  {
    OUTLINED_FUNCTION_771(1);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_604();
    sub_24DE22C30();
    OUTLINED_FUNCTION_531(3);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_771(4);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(5);
    sub_24DE22BF0();
    sub_24DDE2CD8(v76, v77, v79, v78);
    sub_24DDE2DD4();
    OUTLINED_FUNCTION_436();
    sub_24DE22C20();
    sub_24DDE2CEC(v76, v77, v79, v78);
    OUTLINED_FUNCTION_531(7);
    OUTLINED_FUNCTION_436();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_771(8);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_771(9);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_771(10);
    OUTLINED_FUNCTION_1274();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(11);
    OUTLINED_FUNCTION_253();
    sub_24DE22C40();
    OUTLINED_FUNCTION_531(12);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    memcpy(v92, v93, sizeof(v92));
    v91[95] = 13;
    sub_24DDE73DC();
    sub_24DDE2E28();
    OUTLINED_FUNCTION_228();
    sub_24DE22C20();
    memcpy(v91, v92, 0x59uLL);
    sub_24DDE8DAC(v91, &unk_27F1B2B40);
    OUTLINED_FUNCTION_531(14);
    OUTLINED_FUNCTION_253();
    sub_24DE22C40();
    OUTLINED_FUNCTION_1055(v63);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v61);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v28);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v30);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v32);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_771(20);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(21);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(22);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(23);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    v90[0] = v46;
    v90[1] = v45;
    v90[2] = v44;
    v90[3] = v43;
    v90[4] = v42;
    v90[5] = v41;
    sub_24DDE3490(v46, v45);
    sub_24DDE2E7C();
    OUTLINED_FUNCTION_228();
    sub_24DE22C20();
    sub_24DDE34E4(v46, v45);
    OUTLINED_FUNCTION_771(25);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(26);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(27);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(28);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(29);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(30);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(31);
    OUTLINED_FUNCTION_253();
    sub_24DE22C40();
    OUTLINED_FUNCTION_771(32);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1059();
    memcpy(v25, v26, v27);
    v89[127] = 33;
    sub_24DDE73DC();
    sub_24DDE2ED0();
    OUTLINED_FUNCTION_228();
    sub_24DE22C20();
    memcpy(v89, v90, 0x7DuLL);
    sub_24DDE8DAC(v89, &unk_27F1B2B48);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    v23 = *(v94 + 8);
    v24 = OUTLINED_FUNCTION_379();
    v22(v24);
  }

  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  v1 = v0;
  v2 = *v0;
  v27 = *(v0 + 1);
  v51 = v0[1];
  v52 = v0[8];
  v53 = *(v0 + 3);
  v54 = v0[32];
  v39 = *(v0 + 2);
  v40 = *(v0 + 5);
  v22 = *(v0 + 7);
  v23 = *(v0 + 9);
  v55 = *(v0 + 6);
  v56 = *(v0 + 10);
  v41 = *(v0 + 11);
  v57 = *(v0 + 12);
  v58 = v0[104];
  v59 = v0[105];
  v60 = v0[106];
  v28 = *(v0 + 8);
  v29 = *(v0 + 14);
  v61 = v0[120];
  v42 = *(v0 + 16);
  v62 = *(v0 + 17);
  v3 = *(v0 + 18);
  v4 = *(v0 + 19);
  v30 = v3;
  v31 = *(v1 + 30);
  v63 = v1[248];
  v64 = v1[256];
  v32 = *(v1 + 63);
  v33 = *(v1 + 65);
  v65 = v1[264];
  v66 = v1[272];
  v34 = *(v1 + 67);
  v35 = *(v1 + 69);
  v67 = v1[280];
  v36 = *(v1 + 71);
  v68 = v1[288];
  v69 = v1[289];
  v43 = *(v1 + 37);
  v44 = *(v1 + 39);
  v70 = *(v1 + 38);
  v71 = *(v1 + 40);
  v72 = *(v1 + 42);
  v5 = *(v1 + 44);
  v24 = *(v1 + 43);
  v25 = *(v1 + 45);
  v37 = *(v1 + 46);
  v6 = *(v1 + 48);
  v26 = *(v1 + 47);
  v73 = v1[392];
  v7 = *(v1 + 51);
  v45 = *(v1 + 41);
  v46 = *(v1 + 50);
  v8 = *(v1 + 53);
  v47 = *(v1 + 52);
  v48 = *(v1 + 54);
  v78 = *(v1 + 55);
  v74 = *(v1 + 57);
  v9 = *(v1 + 59);
  v49 = *(v1 + 56);
  v50 = *(v1 + 58);
  v38 = *(v1 + 60);
  v75 = v1[488];
  v10 = v1[489];
  memcpy(v86, v1 + 496, 0x7DuLL);
  v76 = v1[621];
  v77 = v1[622];
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v51 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v52)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v53)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v54 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v55)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v56 != 1)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    if (v28)
    {
      OUTLINED_FUNCTION_795();
      if (v56)
      {
LABEL_19:
        OUTLINED_FUNCTION_371();
        sub_24DE22CE0();
        OUTLINED_FUNCTION_826();
        sub_24DE22AD0();
        goto LABEL_22;
      }
    }

    else
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      MEMORY[0x253039750](v22);
      if (v56)
      {
        goto LABEL_19;
      }
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_22:
  if (v57)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v58 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v59 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v60 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v61)
  {
    OUTLINED_FUNCTION_795();
    if (v62)
    {
LABEL_33:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v29);
    if (v62)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_36:
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    memcpy(&__src[2], v1 + 160, 0x49uLL);
    __src[0] = v30;
    __src[1] = v4;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v82 = v30;
    v83 = v4;
    memcpy(v84, v1 + 160, 0x49uLL);
    sub_24DDE2084(&v82, __dst);
    Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)();
    memcpy(__dst, __src, 0x59uLL);
    sub_24DDE2054(__dst);
  }

  if (v63)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v31);
  }

  if (v64)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v65)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v66)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v67)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v68)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v69 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v70)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v71)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v72)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v5 == 1)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  if (v5)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1081();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1084();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (!v6)
  {
LABEL_77:
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1083();
    sub_24DE22AD0();
  }

  if (v73 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v7)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v8)
    {
LABEL_82:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_85;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v8)
    {
      goto LABEL_82;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_85:
  if (v78)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v74)
    {
      goto LABEL_87;
    }

LABEL_90:
    OUTLINED_FUNCTION_795();
    if (v9)
    {
      goto LABEL_88;
    }

    goto LABEL_91;
  }

  OUTLINED_FUNCTION_795();
  if (!v74)
  {
    goto LABEL_90;
  }

LABEL_87:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22AD0();
  if (v9)
  {
LABEL_88:
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    goto LABEL_92;
  }

LABEL_91:
  OUTLINED_FUNCTION_795();
LABEL_92:
  if (v75)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v38);
  }

  if (v10 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_1059();
  memcpy(v11, v12, v13);
  if (sub_24DDE2D2C(__dst) == 1)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_1059();
  memcpy(v14, v15, v16);
  v17 = v82;
  v18 = v83;
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  if (v18)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v17);
  }

  if (v84[2] == 1)
  {
LABEL_102:
    OUTLINED_FUNCTION_795();
  }

  else
  {
    memcpy(v80, v84, sizeof(v80));
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1059();
    memcpy(v19, v20, v21);
    sub_24DDE2F24(__src, v79);
    sub_24DDE2F24(&v82, v79);
    Components.Schemas.Artwork.hash(into:)();
    memcpy(v79, v80, 0x6DuLL);
    sub_24DDE22DC(v79);
    sub_24DDE8DAC(v86, &unk_27F1B2B48);
  }

  if (v76 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v77 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_992();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2B90, &qword_24DE231F8);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_140();
  v263 = 1;
  v258 = 1;
  v255 = 1;
  v252 = 1;
  v249 = 1;
  v246 = 1;
  v243 = 1;
  v240 = 1;
  v236 = 1;
  sub_24DDE2D00(v264);
  memcpy(&v235[6], v264, 0x7DuLL);
  v8 = v0[3];
  v9 = v0[4];
  v138 = v0;
  OUTLINED_FUNCTION_250(v0);
  sub_24DDE2D80();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097();
  if (v1)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_984();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_520(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    LOWORD(v163) = 514;
    HIDWORD(v163) = v136;
    v165 = v132;
    v166 = v134;
    LOBYTE(v167) = 2;
    OUTLINED_FUNCTION_821();
    v169 = v3;
    v170 = v123;
    v171 = v125;
    v172 = v8;
    v173 = v2;
    OUTLINED_FUNCTION_1223();
    OUTLINED_FUNCTION_1048();
    v178 = 1;
    OUTLINED_FUNCTION_590();
    v180 = v141;
    v184 = v139;
    v188 = 0;
    *(&v164 + 1) = *v262;
    *(&v167 + 1) = *v261;
    v174 = v259;
    v177[0] = *v257;
    *&v179[3] = *&v256[3];
    *v179 = *v256;
    v182 = v253;
    v186 = v250;
    v190 = v247;
    v194 = v244;
    LOBYTE(v164) = v263;
    HIDWORD(v164) = *&v262[3];
    HIDWORD(v167) = *&v261[3];
    v175 = v260;
    v176 = v258;
    *(v177 + 3) = *&v257[3];
    v181 = v255;
    v183 = v254;
    v185 = v252;
    v187 = v251;
    v189 = v249;
    v191 = v248;
    v192 = v91;
    v193 = v246;
    v195 = v245;
    v196 = v77;
    v197 = v243;
    v198 = v241;
    v199 = v242;
    v200 = v73;
    v201 = v240;
    v202 = v54;
    v203 = v238;
    v204 = v239;
    v205 = v79;
    v206 = v85;
    v207 = v81;
    v208 = v89;
    v209 = v83;
    v210 = v93;
    v211 = v75;
    v212 = v60;
    v213 = v87;
    v214 = v95;
    v215 = v99;
    v216 = v105;
    v217 = v52;
    *v218 = *v237;
    *&v218[3] = *&v237[3];
    v219 = v97;
    v220 = v103;
    v221 = v101;
    v222 = v109;
    v223 = v107;
    v224 = v113;
    v225 = v111;
    v226 = v115;
    v227 = v117;
    v228 = v119;
    v229 = v121;
    v230 = v236;
    v231 = v56;
    memcpy(v232, v235, sizeof(v232));
    v233 = v58;
    v37 = 2;
  }

  else
  {
    LOBYTE(v163) = 0;
    OUTLINED_FUNCTION_417();
    v51 = sub_24DE22B50();
    OUTLINED_FUNCTION_38(1);
    v50 = sub_24DE22B50();
    OUTLINED_FUNCTION_38(2);
    v11 = sub_24DE22B80();
    v137 = v11;
    v263 = BYTE4(v11) & 1;
    OUTLINED_FUNCTION_38(3);
    v133 = sub_24DE22B40();
    v135 = v12;
    OUTLINED_FUNCTION_38(4);
    v49 = sub_24DE22B50();
    OUTLINED_FUNCTION_38(5);
    v130 = sub_24DE22B40();
    v131 = v13;
    sub_24DDE2F8C();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v127 = v163;
    v48 = v166;
    v14 = OUTLINED_FUNCTION_232();
    sub_24DDE2CEC(v14, v15, v16, 1);
    OUTLINED_FUNCTION_38(7);
    v128 = v164;
    v129 = v165;
    v124 = sub_24DE22B40();
    v126 = v17;
    OUTLINED_FUNCTION_38(8);
    v47 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(9);
    v46 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(10);
    v145 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(11);
    v144 = sub_24DE22B90();
    v258 = v18 & 1;
    OUTLINED_FUNCTION_26(12);
    sub_24DE22B40();
    v143 = v19;
    v151[95] = 13;
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    v45 = v152;
    v70 = v154;
    v71 = v153;
    v68 = v156;
    v69 = v155;
    v66 = v158;
    v67 = v157;
    v64 = v160;
    v65 = v159;
    v63 = v161;
    v62 = v162;
    *v151 = xmmword_24DE22F30;
    memset(&v151[16], 0, 73);
    sub_24DDE8DAC(v151, &unk_27F1B2B40);
    OUTLINED_FUNCTION_26(14);
    v142 = sub_24DE22B90();
    v255 = v20 & 1;
    OUTLINED_FUNCTION_26(15);
    v140 = sub_24DE22B80();
    v252 = BYTE4(v140) & 1;
    OUTLINED_FUNCTION_26(16);
    v72 = sub_24DE22B80();
    v249 = BYTE4(v72) & 1;
    OUTLINED_FUNCTION_26(17);
    v92 = sub_24DE22B80();
    v246 = BYTE4(v92) & 1;
    OUTLINED_FUNCTION_26(18);
    v78 = sub_24DE22B80();
    v243 = BYTE4(v78) & 1;
    OUTLINED_FUNCTION_26(19);
    v74 = sub_24DE22B80();
    v240 = BYTE4(v74) & 1;
    OUTLINED_FUNCTION_26(20);
    v55 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(21);
    v80 = sub_24DE22B40();
    v86 = v21;
    OUTLINED_FUNCTION_26(22);
    v82 = sub_24DE22B40();
    v90 = v22;
    OUTLINED_FUNCTION_26(23);
    v84 = sub_24DE22B40();
    v94 = v23;
    v146[0] = 24;
    sub_24DDE3034();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    v76 = v163;
    v61 = v164;
    v88 = v165;
    v96 = v166;
    v100 = v167;
    v106 = v168;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_1042();
    sub_24DDE34E4(v24, v25);
    OUTLINED_FUNCTION_26(25);
    v53 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(26);
    v98 = sub_24DE22B40();
    v104 = v26;
    OUTLINED_FUNCTION_26(27);
    v102 = sub_24DE22B40();
    v110 = v27;
    OUTLINED_FUNCTION_26(28);
    v108 = sub_24DE22B40();
    v114 = v28;
    OUTLINED_FUNCTION_26(29);
    v112 = sub_24DE22B40();
    v116 = v29;
    OUTLINED_FUNCTION_26(30);
    v118 = sub_24DE22B40();
    v120 = v30;
    OUTLINED_FUNCTION_26(31);
    v122 = sub_24DE22B90();
    v236 = v31 & 1;
    OUTLINED_FUNCTION_26(32);
    v57 = sub_24DE22B50();
    v149[127] = 33;
    sub_24DDE3088();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    memcpy(v148, v150, sizeof(v148));
    memcpy(v149, &v235[6], 0x7DuLL);
    sub_24DDE8DAC(v149, &unk_27F1B2B48);
    memcpy(&v235[6], v148, 0x7DuLL);
    OUTLINED_FUNCTION_26(34);
    v59 = sub_24DE22B50();
    v147 = 35;
    OUTLINED_FUNCTION_417();
    v32 = sub_24DE22B50();
    v33 = OUTLINED_FUNCTION_118();
    v34(v33);
    v146[0] = v51;
    v146[1] = v50;
    *&v146[4] = v137;
    v42 = v263;
    v146[8] = v263;
    *&v146[9] = *v262;
    *&v146[12] = *&v262[3];
    *&v146[16] = v133;
    *&v146[24] = v135;
    v146[32] = v49;
    *&v146[33] = *v261;
    *&v146[36] = *&v261[3];
    *&v146[40] = v130;
    *&v146[48] = v131;
    *&v146[56] = v127;
    *&v146[64] = v128;
    *&v146[72] = v129;
    *&v146[80] = v48;
    *&v146[88] = v124;
    *&v146[96] = v126;
    v146[104] = v47;
    v146[105] = v46;
    v146[106] = v145;
    *&v146[107] = v259;
    v146[111] = v260;
    *&v146[112] = v144;
    v41 = v258;
    v146[120] = v258;
    *&v146[121] = *v257;
    *&v146[124] = *&v257[3];
    OUTLINED_FUNCTION_1209(v143);
    *&v146[152] = v45;
    *&v146[160] = v71;
    *&v146[168] = v70;
    *&v146[176] = v69;
    *&v146[184] = v68;
    *&v146[192] = v67;
    *&v146[200] = v66;
    *&v146[208] = v65;
    *&v146[216] = v64;
    *&v146[224] = v63;
    v146[232] = v62;
    *&v146[236] = *&v256[3];
    *&v146[233] = *v256;
    *&v146[240] = v142;
    v40 = v255;
    v146[248] = v255;
    v146[251] = v254;
    *&v146[249] = v253;
    *&v146[252] = v140;
    v39 = v252;
    v146[256] = v252;
    *&v146[257] = v250;
    v146[259] = v251;
    *&v146[260] = v72;
    v38 = v249;
    v146[264] = v249;
    *&v146[265] = v247;
    v146[267] = v248;
    *&v146[268] = v92;
    v35 = v246;
    v146[272] = v246;
    *&v146[273] = v244;
    v146[275] = v245;
    *&v146[276] = v78;
    v36 = v243;
    v146[280] = v243;
    *&v146[281] = v241;
    v146[283] = v242;
    *&v146[284] = v74;
    *&v146[290] = v238;
    *&v146[393] = *v237;
    v43 = v240;
    v146[288] = v240;
    v146[289] = v55;
    *&v146[294] = v239;
    *&v146[296] = v80;
    *&v146[304] = v86;
    *&v146[312] = v82;
    *&v146[320] = v90;
    *&v146[328] = v84;
    *&v146[336] = v94;
    *&v146[344] = v76;
    *&v146[352] = v61;
    *&v146[360] = v88;
    *&v146[368] = v96;
    *&v146[376] = v100;
    *&v146[384] = v106;
    v146[392] = v53;
    *&v146[396] = *&v237[3];
    *&v146[400] = v98;
    *&v146[408] = v104;
    *&v146[416] = v102;
    *&v146[424] = v110;
    *&v146[432] = v108;
    *&v146[440] = v114;
    *&v146[448] = v112;
    *&v146[456] = v116;
    *&v146[464] = v118;
    *&v146[472] = v120;
    *&v146[480] = v122;
    v44 = v236;
    v146[488] = v236;
    v146[489] = v57;
    memcpy(&v146[490], v235, 0x83uLL);
    v146[621] = v59;
    v146[622] = v32;
    memcpy(v3, v146, 0x26FuLL);
    sub_24DDE30DC(v146, &v163);
    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    LOBYTE(v163) = v51;
    BYTE1(v163) = v50;
    HIDWORD(v163) = v137;
    LOBYTE(v164) = v42;
    v165 = v133;
    v166 = v135;
    LOBYTE(v167) = v49;
    OUTLINED_FUNCTION_821();
    v169 = v48;
    v170 = v124;
    v171 = v126;
    v172 = v47;
    v173 = v46;
    OUTLINED_FUNCTION_1223();
    v176 = v41;
    OUTLINED_FUNCTION_1048();
    v178 = v45;
    OUTLINED_FUNCTION_590();
    v180 = v142;
    v181 = v40;
    v184 = v140;
    v185 = v39;
    v188 = v72;
    v189 = v38;
    v192 = v92;
    v193 = v35;
    v196 = v78;
    v197 = v36;
    v200 = v74;
    *(&v164 + 1) = *v262;
    *(&v167 + 1) = *v261;
    HIDWORD(v164) = *&v262[3];
    HIDWORD(v167) = *&v261[3];
    v174 = v259;
    v175 = v260;
    v177[0] = *v257;
    *(v177 + 3) = *&v257[3];
    *&v179[3] = *&v256[3];
    *v179 = *v256;
    v183 = v254;
    v182 = v253;
    v186 = v250;
    v187 = v251;
    v190 = v247;
    v191 = v248;
    v194 = v244;
    v195 = v245;
    v198 = v241;
    v199 = v242;
    v201 = v43;
    v202 = v55;
    v203 = v238;
    v204 = v239;
    v205 = v80;
    v206 = v86;
    v207 = v82;
    v208 = v90;
    v209 = v84;
    v210 = v94;
    v211 = v76;
    v212 = v61;
    v213 = v88;
    v214 = v96;
    v215 = v100;
    v216 = v106;
    v217 = v53;
    *v218 = *v237;
    *&v218[3] = *&v237[3];
    v219 = v98;
    v220 = v104;
    v221 = v102;
    v222 = v110;
    v223 = v108;
    v224 = v114;
    v225 = v112;
    v226 = v116;
    v227 = v118;
    v228 = v120;
    v229 = v122;
    v230 = v44;
    v231 = v57;
    memcpy(v232, v235, sizeof(v232));
    v233 = v59;
    v37 = v32;
  }

  v234 = v37;
  sub_24DDE2F5C(&v163);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}