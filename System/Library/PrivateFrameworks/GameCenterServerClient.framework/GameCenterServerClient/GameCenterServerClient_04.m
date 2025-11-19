void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3310, &qword_24DE23568);
  OUTLINED_FUNCTION_27(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_100();
  v6 = *v0;
  v7 = v0[1];
  v14 = *(v0 + 28);
  v15 = v0[2];
  v13 = *(v0 + 6);
  v12 = *(v0 + 29);
  v8 = OUTLINED_FUNCTION_1070();
  OUTLINED_FUNCTION_255(v8);
  sub_24DDE692C();
  OUTLINED_FUNCTION_375();
  OUTLINED_FUNCTION_642();
  OUTLINED_FUNCTION_820();
  sub_24DE22C50();
  if (!v1)
  {
    OUTLINED_FUNCTION_1175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v9);
    OUTLINED_FUNCTION_920();
    OUTLINED_FUNCTION_190();
    sub_24DE22C70();
    sub_24DDE6980();
    OUTLINED_FUNCTION_920();
    OUTLINED_FUNCTION_376();
    sub_24DE22C20();
  }

  v10 = OUTLINED_FUNCTION_530();
  v11(v10, v2);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 28);
  v5 = *(v0 + 6);
  v6 = *(v0 + 29);
  sub_24DE22AD0();
  v7 = OUTLINED_FUNCTION_729();
  sub_24DDE0DB4(v7, v8);
  if (v6 == 1)
  {
    return OUTLINED_FUNCTION_1001();
  }

  OUTLINED_FUNCTION_963();
  if (((v5 | (v4 << 32)) & 0x100000000) != 0)
  {
    return OUTLINED_FUNCTION_1001();
  }

  OUTLINED_FUNCTION_963();
  return sub_24DE22CF0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_645();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3328, &qword_24DE23570);
  OUTLINED_FUNCTION_18(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_140();
  v21 = v12[3];
  v22 = v12[4];
  OUTLINED_FUNCTION_250(v12);
  sub_24DDE692C();
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_1097();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_415();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_1026();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_1175();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v23);
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_401();
    sub_24DE22BC0();
    sub_24DDE69D4();
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    v24 = *(v17 + 8);
    v25 = OUTLINED_FUNCTION_380();
    v26(v25);
    *v14 = v22;
    *(v14 + 8) = v21;
    *(v14 + 16) = a10;
    *(v14 + 28) = BYTE4(a10);
    *(v14 + 24) = a10;
    *(v14 + 29) = BYTE5(a10);

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDBA184()
{
  v12 = *v0;
  v13 = *(v0 + 1);
  v15 = *(v0 + 28);
  v14 = *(v0 + 6);
  v16 = *(v0 + 29);
  v1 = sub_24DE22CC0();
  OUTLINED_FUNCTION_1051(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.playerInvite.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.codeInvite.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void sub_24DDBA2A4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 12) = 256;
  *(a1 + 8) = 0;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.testOption.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  v5 = *(v1 + 45);
  OUTLINED_FUNCTION_835(a1);
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.testOption.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = *(result + 13);
  *(v1 + 32) = *result;
  *(v1 + 44) = v3;
  *(v1 + 40) = v2;
  *(v1 + 45) = v4;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.init(playerInvite:codeInvite:testOption:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a2;
  v11 = *a1;
  v5 = *a3;
  v6 = *(a3 + 2);
  v7 = *(a3 + 12);
  v8 = *(a3 + 13);
  swift_bridgeObjectRelease_n();
  result = v11;
  *a4 = v11;
  *(a4 + 16) = v10;
  *(a4 + 32) = v5;
  *(a4 + 44) = v7;
  *(a4 + 40) = v6;
  *(a4 + 45) = v8;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeAccept_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
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

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.CodingKeys.stringValue.getter()
{
  v1 = 0x766E692D65646F63;
  if (*v0 != 1)
  {
    v1 = 0x74706F2D74736574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x692D726579616C70;
  }
}

uint64_t sub_24DDBA474@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBA4A4()
{
  sub_24DDE6A28();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBA4DC()
{
  sub_24DDE6A28();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.== infix(_:_:)()
{
  OUTLINED_FUNCTION_885();
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 44);
  v7 = *(v0 + 40);
  v8 = *(v0 + 45);
  v10 = *(v1 + 8);
  v9 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 44);
  v14 = *(v1 + 40);
  v15 = *(v1 + 45);
  if (!v2)
  {
    if (v10)
    {
      v18 = *(v1 + 8);
      goto LABEL_21;
    }

    v21 = *(v1 + 44);
    v23 = *(v0 + 40);
    v25 = *(v0 + 44);

    if (v4)
    {
LABEL_9:
      if (v11)
      {
        if (v3 != v9 || v4 != v11)
        {
          OUTLINED_FUNCTION_674();
          OUTLINED_FUNCTION_858();
          sub_24DE22CA0();
        }

        goto LABEL_22;
      }

LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    if (!v11)
    {

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v10)
  {
    v19 = *(v0 + 8);
    goto LABEL_21;
  }

  v20 = *(v1 + 44);
  v22 = *(v0 + 40);
  v24 = *(v0 + 44);
  v16 = *v0 == *v1 && v2 == v10;
  if (v16 || (OUTLINED_FUNCTION_947(), (sub_24DE22CA0() & 1) != 0))
  {
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_22:
  OUTLINED_FUNCTION_720();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3338, &qword_24DE23578);
  OUTLINED_FUNCTION_23(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_100();
  v10 = *v0;
  v11 = v0[1];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *(v0 + 44);
  v19 = v0[4];
  v17 = *(v0 + 10);
  v22 = *(v0 + 45);
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_255(v3);
  sub_24DDE6A28();

  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_507();
  sub_24DE22D50();
  sub_24DDE6A7C();
  OUTLINED_FUNCTION_502();
  sub_24DE22C20();

  if (!v1)
  {
    sub_24DDE6AD0();
    OUTLINED_FUNCTION_757();

    OUTLINED_FUNCTION_376();
    sub_24DE22C20();

    OUTLINED_FUNCTION_1217(v17 | (v18 << 32));
    OUTLINED_FUNCTION_890();
    sub_24DDE6B24();
    OUTLINED_FUNCTION_197();
    sub_24DE22C20();
  }

  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_446();
  v16(v15);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_438();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0 + 44);
  v5 = *(v0 + 10);
  v6 = *(v0 + 45);
  if (v0[1])
  {
    v7 = *v0;
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v3)
    {
LABEL_3:
      sub_24DE22CE0();

      OUTLINED_FUNCTION_406();
      sub_24DE22AD0();

      if (v6)
      {
        goto LABEL_9;
      }

LABEL_7:
      v8 = v5 | (v4 << 32);
      sub_24DE22CE0();
      if ((v2 & 0x100000000) != 0)
      {
        sub_24DE22CE0();
        if ((v8 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24DE22CE0();
        sub_24DE22CF0();
        if ((v8 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      sub_24DE22CE0();
      sub_24DE22CF0();
      goto LABEL_12;
    }
  }

  sub_24DE22CE0();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_24DE22CE0();
LABEL_12:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hashValue.getter()
{
  OUTLINED_FUNCTION_706();
  v0 = sub_24DE22CC0();
  OUTLINED_FUNCTION_856(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3360, &qword_24DE23580);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_140();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_250(v0);
  sub_24DDE6A28();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097();
  if (!v1)
  {
    sub_24DDE6B78();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();

    sub_24DDE6BCC();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();

    OUTLINED_FUNCTION_890();
    sub_24DDE6C20();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v9 = OUTLINED_FUNCTION_189();
    v10(v9);
    *v2 = v11;
    *(v2 + 8) = v12;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;
    *(v2 + 32) = v11;
    *(v2 + 44) = BYTE4(v12);
    *(v2 + 40) = v12;
    *(v2 + 45) = BYTE5(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDBABE4()
{
  OUTLINED_FUNCTION_706();
  v0 = sub_24DE22CC0();
  OUTLINED_FUNCTION_856(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.challengeId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.challengeVendorId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.fromPlayerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.bundleIds.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.init(challengeId:challengeVendorId:fromPlayerId:bundleId:bundleIds:invitedTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  result = OUTLINED_FUNCTION_1329(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  *(v10 + 64) = v12;
  *(v10 + 72) = v11;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.init(rawValue:)(Swift::String rawValue)
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

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

unint64_t sub_24DDBAF00()
{
  result = 0x676E656C6C616863;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_561(17);
      break;
    case 2:
      result = OUTLINED_FUNCTION_646();
      break;
    case 3:
    case 4:
      result = OUTLINED_FUNCTION_65();
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBB028@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBB058()
{
  sub_24DDE6C74();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBB090()
{
  sub_24DDE6C74();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_1011();
  OUTLINED_FUNCTION_281(v2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v29 = v3[7];
  v30 = v3[6];
  v9 = v3[8];
  v10 = v3[9];
  OUTLINED_FUNCTION_1017(v11);
  v16 = v14[4];
  v17 = v14[5];
  v18 = v14[6];
  v19 = v14[7];
  v22 = v20 == v21 && v12 == v13;
  v27 = v14[8];
  v28 = v15;
  v26 = v14[9];
  if (!v22 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v6)
  {
    if (!v0)
    {
      goto LABEL_28;
    }

    v23 = v5 == v1 && v6 == v0;
    if (!v23 && (OUTLINED_FUNCTION_369() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v0)
  {
    goto LABEL_28;
  }

  v24 = v7 == v16 && v8 == v17;
  if (v24 || (OUTLINED_FUNCTION_393(), OUTLINED_FUNCTION_1179(), (sub_24DE22CA0() & 1) != 0))
  {
    v25 = v30 == v18 && v29 == v19;
    if (v25 || (OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
    {
      if (v28 && v27)
      {
        sub_24DD85994(v28, v27);
      }
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_1007();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3380, &qword_24DE23588);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_804();
  v11 = v4[3];
  v12 = v4[4];
  OUTLINED_FUNCTION_153(v4);
  sub_24DDE6C74();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_820();
  sub_24DE22C50();
  if (!v1)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_195();
    sub_24DE22C50();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_195();
    sub_24DE22C50();
    OUTLINED_FUNCTION_889();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v13);
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
    OUTLINED_FUNCTION_376();
    sub_24DE22C90();
  }

  v14 = OUTLINED_FUNCTION_530();
  v15(v14, v2);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v12 = v0[8];
  v11 = v0[9];
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v6)
  {
    OUTLINED_FUNCTION_606();
    sub_24DE22AD0();
  }

  OUTLINED_FUNCTION_495();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v12)
  {
    sub_24DDE0DB4(v2, v12);
  }

  MEMORY[0x253039750](v11);
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.init(from:)()
{
  OUTLINED_FUNCTION_645();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3390, &qword_24DE23590);
  OUTLINED_FUNCTION_27(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_138();
  v7 = v2[3];
  v8 = v2[4];
  v9 = OUTLINED_FUNCTION_541();
  OUTLINED_FUNCTION_387(v9, v10);
  sub_24DDE6C74();
  OUTLINED_FUNCTION_501();
  sub_24DE22D30();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    OUTLINED_FUNCTION_304();
    v11 = sub_24DE22BA0();
    v32 = v12;
    OUTLINED_FUNCTION_1023(1);
    OUTLINED_FUNCTION_304();
    sub_24DE22B40();
    v14 = v13;
    OUTLINED_FUNCTION_1023(2);
    OUTLINED_FUNCTION_304();
    v30 = sub_24DE22BA0();
    v31 = v15;
    OUTLINED_FUNCTION_1023(3);
    OUTLINED_FUNCTION_304();
    v16 = sub_24DE22BA0();
    v18 = v17;
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v19);
    OUTLINED_FUNCTION_782();
    sub_24DE22B70();
    v28 = v11;
    v20 = v34[0];
    OUTLINED_FUNCTION_1016(5);
    OUTLINED_FUNCTION_304();
    v21 = sub_24DE22BE0();
    v22 = OUTLINED_FUNCTION_154();
    v23(v22);
    v33[0] = v28;
    v33[1] = v32;
    OUTLINED_FUNCTION_707();
    v33[2] = v24;
    v33[3] = v14;
    v33[4] = v30;
    v33[5] = v31;
    v33[6] = v29;
    v33[7] = v18;
    v33[8] = v34[0];
    v33[9] = v21;
    v25 = OUTLINED_FUNCTION_1053();
    memcpy(v25, v26, 0x50uLL);
    sub_24DDE6CC8(v33, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v34[0] = v28;
    v34[1] = v32;
    OUTLINED_FUNCTION_707();
    v34[2] = v27;
    v34[3] = v14;
    v34[4] = v30;
    v34[5] = v31;
    v34[6] = v29;
    v34[7] = v18;
    v34[8] = v20;
    v34[9] = v21;
    sub_24DDE6D00(v34);
  }

  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.platform.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.shortBundleVersion.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.bundleVersion.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_GameBundleDescriptor::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.CodingKeys.stringValue.getter()
{
  result = 0x6D726F6674616C70;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_65();
      break;
    case 2:
      result = OUTLINED_FUNCTION_412(20);
      break;
    case 3:
      result = OUTLINED_FUNCTION_1328();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBBC8C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBBCBC()
{
  sub_24DDE6D30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBBCF4()
{
  sub_24DDE6D30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_628();
  v1 = OUTLINED_FUNCTION_281(v0);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v3[7];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v13 = v1 == *v2 && v3[1] == v2[1];
  v14 = v2[7];
  v18 = v2[6];
  v19 = v3[6];
  if (v13 || (sub_24DE22CA0() & 1) != 0)
  {
    v15 = v4 == v9 && v6 == v10;
    if (v15 || (OUTLINED_FUNCTION_457(), OUTLINED_FUNCTION_812(), (sub_24DE22CA0() & 1) != 0))
    {
      v16 = v5 == v11 && v7 == v12;
      if (v16 || (OUTLINED_FUNCTION_495(), (OUTLINED_FUNCTION_1301() & 1) != 0))
      {
        if (v8 && v14 && (v19 != v18 || v8 != v14))
        {
          OUTLINED_FUNCTION_888();
        }
      }
    }
  }

  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3398, &qword_24DE23598);
  OUTLINED_FUNCTION_24(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_737();
  v16 = v0[5];
  v17 = v0[4];
  v14 = v0[7];
  v15 = v0[6];
  v10 = v3[3];
  v11 = v3[4];
  OUTLINED_FUNCTION_153(v3);
  sub_24DDE6D30();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_498();
  OUTLINED_FUNCTION_819();
  sub_24DE22C50();
  if (!v1)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22C50();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_135();
    sub_24DE22C50();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
  }

  v12 = OUTLINED_FUNCTION_180();
  v13(v12);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.hash(into:)()
{
  OUTLINED_FUNCTION_1013();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_24DE22AD0();
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_727();
  sub_24DE22AD0();
  if (v8)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_409();
    OUTLINED_FUNCTION_999();

    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
    OUTLINED_FUNCTION_999();
  }
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.hashValue.getter()
{
  OUTLINED_FUNCTION_597();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_495();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_606();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v8)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_586();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33A8, &qword_24DE235A0);
  OUTLINED_FUNCTION_18(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_390();
  v11 = v0[3];
  v12 = v0[4];
  OUTLINED_FUNCTION_250(v0);
  sub_24DDE6D30();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_709();
  sub_24DE22D30();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    OUTLINED_FUNCTION_994();
    v13 = sub_24DE22BA0();
    v27 = v14;
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_994();
    v15 = sub_24DE22BA0();
    v26 = v16;
    v24 = v15;
    OUTLINED_FUNCTION_634(2);
    v23 = sub_24DE22BA0();
    v25 = v17;
    OUTLINED_FUNCTION_598();
    OUTLINED_FUNCTION_994();
    v18 = sub_24DE22B40();
    v20 = v19;
    (*(v7 + 8))(v4, v3);
    *&v28 = v13;
    *(&v28 + 1) = v27;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    *&v31 = v18;
    *(&v31 + 1) = v20;
    v21 = v29;
    *v2 = v28;
    v2[1] = v21;
    v22 = v31;
    v2[2] = v30;
    v2[3] = v22;
    sub_24DDE6D84(&v28, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v32[0] = v13;
    v32[1] = v27;
    v32[2] = v24;
    v32[3] = v26;
    v32[4] = v23;
    v32[5] = v25;
    v32[6] = v18;
    v32[7] = v20;
    sub_24DDE6DBC(v32);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.challengeId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.challengeVendorId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.bundleIds.setter()
{
  result = OUTLINED_FUNCTION_1312();
  *(v1 + 104) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.creatorPlayerId.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.creatorPlayerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.durationCode.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.durationCode.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.leaderboardId.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.leaderboardId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.StatePayload.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657669746361;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::StatePayload_optional sub_24DDBC83C@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::StatePayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.StatePayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_24DDBC86C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.StatePayload.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.cardText.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.cardText.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.participants.setter(uint64_t a1)
{
  v3 = *(v1 + 240);

  *(v1 + 240) = a1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.invitedPlayers.setter(uint64_t a1)
{
  v3 = *(v1 + 248);

  *(v1 + 248) = a1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::InviteCodeStatusPayload_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_155();
      break;
    case 2:
      OUTLINED_FUNCTION_1162();
      break;
    case 3:
      OUTLINED_FUNCTION_561(16);
      break;
    default:
      return;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::InviteCodeStatusPayload_optional sub_24DDBCC28@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::InviteCodeStatusPayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_24DDBCC58(void *a1@<X8>)
{
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 3;
  switch(v2)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v4 = 1;
      goto LABEL_11;
    case 2:
      v4 = 2;
LABEL_11:
      v5 = v4;
      break;
    case 3:
      break;
    case 4:
      v5 = 4;
      break;
    case 5:
      v5 = 5;
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
    default:
      v5 = 21;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

unint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.rawValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_130();
      break;
    case 4:
      result = OUTLINED_FUNCTION_68();
      break;
    case 5:
      result = OUTLINED_FUNCTION_151();
      break;
    case 6:
      result = OUTLINED_FUNCTION_65();
      break;
    case 7:
      result = OUTLINED_FUNCTION_102();
      break;
    case 8:
      result = OUTLINED_FUNCTION_103();
      break;
    case 9:
      result = OUTLINED_FUNCTION_322();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_249();
      break;
    case 0xB:
      result = OUTLINED_FUNCTION_344(18);
      break;
    case 0xC:
      result = OUTLINED_FUNCTION_263();
      break;
    case 0xD:
      result = OUTLINED_FUNCTION_34();
      break;
    case 0xE:
      result = OUTLINED_FUNCTION_829();
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = OUTLINED_FUNCTION_664();
      break;
    case 0x11:
      result = OUTLINED_FUNCTION_663();
      break;
    case 0x12:
      result = OUTLINED_FUNCTION_649();
      break;
    case 0x13:
      result = 0x64657361656C6572;
      break;
    case 0x14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBD1CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_692();
  return sub_24DD78F50(v4, v5, v6) & 1;
}

uint64_t sub_24DDBD1FC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_692();
  return sub_24DD7DD50(v2, v3, v4);
}

unint64_t sub_24DDBD258@<X0>(unint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBD28C()
{
  sub_24DDE6DEC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBD2C4()
{
  sub_24DDE6DEC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_1219(v0);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v162 = v1[4];
  v5 = v1[6];
  v159 = v1[7];
  v158 = v1[8];
  v149 = v1[9];
  v154 = v1[10];
  v152 = v1[11];
  v155 = v1[12];
  OUTLINED_FUNCTION_591(v1);
  v134 = *(v8 + 160);
  v127 = *(v8 + 168);
  v10 = *(v8 + 184);
  v129 = *(v8 + 176);
  v11 = *(v8 + 192);
  v12 = *(v8 + 200);
  v13 = *(v8 + 208);
  v123 = *(v8 + 216);
  v14 = *(v8 + 224);
  v121 = *(v8 + 232);
  v15 = *(v8 + 248);
  v122 = *(v8 + 240);
  v120 = *(v8 + 256);
  v16 = *(v8 + 257);
  v17 = *(v9 + 16);
  v19 = *(v9 + 24);
  v18 = *(v9 + 32);
  v160 = *(v9 + 40);
  v161 = *(v9 + 48);
  v157 = *(v9 + 56);
  v156 = *(v9 + 64);
  v148 = *(v9 + 72);
  v153 = *(v9 + 80);
  v151 = *(v9 + 88);
  v150 = *(v9 + 96);
  v146 = *(v9 + 104);
  v142 = *(v9 + 112);
  v143 = *(v9 + 120);
  v136 = *(v9 + 128);
  v140 = *(v9 + 136);
  v130 = *(v9 + 140);
  v139 = *(v9 + 144);
  v132 = *(v9 + 152);
  v131 = *(v9 + 160);
  v125 = *(v9 + 168);
  v128 = *(v9 + 176);
  v124 = *(v9 + 184);
  v126 = *(v9 + 192);
  v20 = *(v9 + 200);
  v21 = *(v9 + 208);
  v22 = *(v9 + 216);
  v24 = *(v9 + 224);
  v23 = *(v9 + 232);
  v25 = *(v9 + 240);
  v26 = *(v9 + 248);
  v27 = *(v9 + 256);
  v28 = *(v9 + 257);
  if (v29)
  {
    if (!*(v9 + 4))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v8 == *v9)
    {
      v30 = *(v9 + 4);
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    if (!v17)
    {
      goto LABEL_24;
    }

    v31 = v6 == *(v9 + 8) && v7 == v17;
    if (!v31)
    {
      v118 = v10;
      v107 = *(v9 + 257);
      v110 = v16;
      v109 = *(v9 + 248);
      v104 = *(v9 + 256);
      v32 = v14;
      v33 = v13;
      v112 = *(v9 + 240);
      v114 = *(v9 + 232);
      v106 = *(v9 + 224);
      v103 = *(v9 + 32);
      v116 = *(v9 + 216);
      v34 = *(v9 + 208);
      v35 = sub_24DE22CA0();
      v21 = v34;
      v22 = v116;
      v18 = v103;
      v25 = v112;
      v23 = v114;
      v13 = v33;
      v14 = v32;
      v27 = v104;
      v16 = v110;
      v10 = v118;
      v28 = v107;
      if ((v35 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_24;
  }

  v119 = v10;
  if (v162 == 1)
  {
    v101 = v21;
    v102 = v13;
    v117 = v22;
    v113 = v25;
    v115 = v23;
    v100 = v14;
    v111 = v16;
    v36 = OUTLINED_FUNCTION_624();
    sub_24DD7639C(v36, v37);
    if (v18 == 1)
    {
      v108 = v28;
      v38 = OUTLINED_FUNCTION_1061();
      sub_24DD7639C(v38, v39);
      v40 = OUTLINED_FUNCTION_624();
      sub_24DD763E4(v40, v41);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_1112(v19, v18);
LABEL_23:
    v48 = OUTLINED_FUNCTION_201();
    sub_24DD763E4(v48, v49);
    OUTLINED_FUNCTION_532();
    OUTLINED_FUNCTION_672();
    sub_24DD763E4(v50, v51);
    goto LABEL_24;
  }

  if (v18 == 1)
  {
    v42 = OUTLINED_FUNCTION_201();
    sub_24DD7639C(v42, v43);
    v44 = OUTLINED_FUNCTION_1061();
    OUTLINED_FUNCTION_1112(v44, v45);
    v46 = OUTLINED_FUNCTION_201();
    sub_24DD7639C(v46, v47);

    goto LABEL_23;
  }

  v108 = v28;
  v101 = v21;
  v102 = v13;
  v117 = v22;
  v113 = v25;
  v115 = v23;
  v100 = v14;
  v111 = v16;
  LODWORD(v106) = OUTLINED_FUNCTION_1172();
  v52 = OUTLINED_FUNCTION_201();
  sub_24DD7639C(v52, v53);
  v54 = OUTLINED_FUNCTION_708();
  sub_24DD7639C(v54, v55);
  v56 = OUTLINED_FUNCTION_201();
  sub_24DD7639C(v56, v57);

  v58 = OUTLINED_FUNCTION_201();
  sub_24DD763E4(v58, v59);
  if ((v106 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v60 = v159 == v157 && v158 == v156;
  if (!v60 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v154)
  {
    OUTLINED_FUNCTION_1024();
    if (!v153)
    {
      goto LABEL_24;
    }

    if (v149 != v148 || v62 != v153)
    {
      OUTLINED_FUNCTION_608();
      v24 = v68;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_337();
      if ((v69 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1024();
    if (v153)
    {
      goto LABEL_24;
    }
  }

  if (v152 != v151 || v61 != v150)
  {
    OUTLINED_FUNCTION_608();
    v24 = v71;
    sub_24DE22CA0();
    OUTLINED_FUNCTION_337();
    if ((v72 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v147)
  {
    if (!v146)
    {
      goto LABEL_24;
    }

    v105 = v65;
    LOBYTE(v19) = v63;
    sub_24DD85994(v147, v146);
    OUTLINED_FUNCTION_696();
    if ((v73 & 1) == 0)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_1228();
    v63 = v19;
    v64 = v119;
    v65 = v105;
    v66 = v20;
    if (!v31)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v146)
    {
      goto LABEL_24;
    }

    if (v144 != v142 || v145 != v143)
    {
      goto LABEL_24;
    }
  }

  if (v141)
  {
    if (!v140)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v75 = v140;
    if (v137 != v136)
    {
      v75 = 1;
    }

    if (v75)
    {
      goto LABEL_24;
    }
  }

  if (v138)
  {
    if (!v139)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v76 = v139;
    if (v133 != v130)
    {
      v76 = 1;
    }

    if (v76)
    {
      goto LABEL_24;
    }
  }

  if (v135 != v132 || v134 != v131)
  {
    OUTLINED_FUNCTION_608();
    v24 = v78;
    sub_24DE22CA0();
    OUTLINED_FUNCTION_337();
    if ((v79 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v129)
  {
    if (!v128)
    {
      goto LABEL_24;
    }

    if (v127 != v125 || v129 != v128)
    {
      OUTLINED_FUNCTION_608();
      v24 = v81;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_337();
      if ((v82 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v128)
  {
    goto LABEL_24;
  }

  if (v65)
  {
    if (!v126)
    {
      goto LABEL_24;
    }

    if (v64 != v124 || v65 != v126)
    {
      OUTLINED_FUNCTION_608();
      v85 = v84;
      v86 = sub_24DE22CA0();
      v66 = v85;
      v63 = v19;
      v24 = v106;
      if ((v86 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v126)
  {
    goto LABEL_24;
  }

  if ((sub_24DD7B63C(v63, v66) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v123)
  {
    v87 = v27;
    if (!v117)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v87 = v27;
    v88 = v117;
    if (v102 != v101)
    {
      v88 = 1;
    }

    if (v88)
    {
      goto LABEL_24;
    }
  }

  if (v121)
  {
    if (!v115)
    {
      goto LABEL_24;
    }

    v89 = v100 == v24 && v121 == v115;
    if (!v89 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v115)
  {
    goto LABEL_24;
  }

  if (sub_24DD85DD4(v122, v113))
  {
    v90 = OUTLINED_FUNCTION_677();
    sub_24DD85FA8(v90, v91);
    OUTLINED_FUNCTION_696();
    if ((v92 & 1) != 0 && ((v120 ^ v87) & 1) == 0 && v111 != 5 && v108 != 5)
    {
      Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(v111);
      v94 = v93;
      v96 = v95;
      Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(v108);
      if (v94 != v98 || v96 != v97)
      {
        OUTLINED_FUNCTION_674();
        OUTLINED_FUNCTION_858();
        sub_24DE22CA0();
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1256();
  *(v2 - 128) = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33B0, &qword_24DE235A8);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v11 = *v0;
  v12 = *(v0 + 4);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_431();
  *(v2 - 360) = v13;
  *(v2 - 356) = *(v0 + 257);
  v14 = *(v4 + 24);
  v15 = *(v4 + 32);
  v16 = OUTLINED_FUNCTION_446();
  OUTLINED_FUNCTION_387(v16, v17);
  sub_24DDE6DEC();
  OUTLINED_FUNCTION_501();
  sub_24DE22D50();
  OUTLINED_FUNCTION_487();
  v18 = *(v2 - 128);
  sub_24DE22C30();
  if (v18)
  {
    v19 = *(v7 + 8);
    v20 = OUTLINED_FUNCTION_393();
  }

  else
  {
    v23 = *(v2 - 176);
    v22 = *(v2 - 168);
    v25 = *(v2 - 160);
    v24 = *(v2 - 152);
    *(v2 - 128) = v7;
    OUTLINED_FUNCTION_456(1);
    v27 = *(v2 - 144);
    v26 = *(v2 - 136);
    OUTLINED_FUNCTION_303();
    sub_24DE22BF0();
    *(v2 - 120) = v24;
    *(v2 - 112) = v25;
    *(v2 - 104) = v22;
    *(v2 - 96) = v23;
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_732();
    OUTLINED_FUNCTION_870();
    sub_24DD7639C(v28, v29);
    sub_24DD87138();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    v30 = *(v2 - 128);
    OUTLINED_FUNCTION_967();
    OUTLINED_FUNCTION_456(3);
    v31 = *(v2 - 192);
    v32 = *(v2 - 184);
    OUTLINED_FUNCTION_303();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(4);
    v33 = *(v2 - 208);
    v34 = *(v2 - 200);
    OUTLINED_FUNCTION_303();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(5);
    v35 = *(v2 - 224);
    v36 = *(v2 - 216);
    OUTLINED_FUNCTION_303();
    sub_24DE22C50();
    OUTLINED_FUNCTION_516();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v37);
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_505();
    OUTLINED_FUNCTION_416();
    sub_24DE22C90();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_416();
    sub_24DE22C90();
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_303();
    sub_24DE22C40();
    *(v2 - 120) = 10;
    OUTLINED_FUNCTION_481(v2 - 12);
    OUTLINED_FUNCTION_479(v38);
    OUTLINED_FUNCTION_416();
    sub_24DE22C30();
    OUTLINED_FUNCTION_456(11);
    OUTLINED_FUNCTION_1053();
    OUTLINED_FUNCTION_169(v2 - 24);
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(12);
    v39 = *(v2 - 304);
    OUTLINED_FUNCTION_169(v2 - 40);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(13);
    v40 = *(v2 - 320);
    OUTLINED_FUNCTION_169(v2 - 56);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1022();
    sub_24DDE6E40();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_456(15);
    v41 = *(v2 - 336);
    v42 = *(v2 - 328);
    OUTLINED_FUNCTION_415();
    sub_24DE22C40();
    OUTLINED_FUNCTION_456(16);
    OUTLINED_FUNCTION_988();
    OUTLINED_FUNCTION_169(v43);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_860(v2 - 120);
    *(v2 - 68) = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3208, &qword_24DE23510);
    sub_24DDE6074();
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_860(v2 - 112);
    *(v2 - 68) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3220, &qword_24DE23518);
    sub_24DDE614C();
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_639(19);
    v44 = *(v2 - 360);
    OUTLINED_FUNCTION_415();
    sub_24DE22C60();
    *(v2 - 120) = *(v2 - 356);
    *(v2 - 68) = 20;
    sub_24DDE6E94();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_415();
    sub_24DE22C20();
    OUTLINED_FUNCTION_859();
    v20 = OUTLINED_FUNCTION_380();
  }

  v21(v20);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)()
{
  OUTLINED_FUNCTION_192();
  v2 = *(v1 + 2);
  v22 = *(v1 + 1);
  v3 = *(v1 + 4);
  v4 = *(v1 + 6);
  v17 = *(v1 + 3);
  v18 = *(v1 + 5);
  v5 = *(v1 + 7);
  v6 = *(v1 + 10);
  v24 = *(v1 + 9);
  v7 = *(v1 + 11);
  v29 = *(v1 + 12);
  v26 = *(v1 + 13);
  v27 = *(v1 + 8);
  v32 = *(v1 + 14);
  v33 = *(v1 + 15);
  v19 = *(v1 + 16);
  v34 = *(v1 + 136);
  v20 = v1[35];
  v35 = *(v1 + 144);
  v36 = *(v1 + 20);
  v37 = *(v1 + 19);
  v8 = *(v1 + 21);
  v38 = *(v1 + 22);
  v9 = *(v1 + 24);
  v23 = *(v1 + 23);
  v10 = *(v1 + 200);
  v21 = *(v1 + 26);
  v39 = *(v1 + 216);
  v25 = *(v1 + 28);
  v28 = *(v1 + 30);
  v30 = *(v1 + 31);
  v31 = *(v1 + 256);
  v41 = *(v1 + 257);
  v40 = *(v1 + 29);
  if (v11 == 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_781();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v12 = *(v1 + 4);
    v13 = *v1;
    sub_24DE22CE0();
    v3 = v12;
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v3 != 1)
  {
    sub_24DE22CE0();
    if (v3)
    {
      sub_24DE22CE0();
      OUTLINED_FUNCTION_731();
      sub_24DE22AD0();
      if (v4)
      {
LABEL_9:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_714();
        sub_24DE22AD0();
        goto LABEL_12;
      }
    }

    else
    {
      sub_24DE22CE0();
      if (v4)
      {
        goto LABEL_9;
      }
    }
  }

  sub_24DE22CE0();
LABEL_12:
  OUTLINED_FUNCTION_426();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v6)
  {
    sub_24DE22AD0();
  }

  OUTLINED_FUNCTION_638();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v26)
  {
    v14 = OUTLINED_FUNCTION_638();
    sub_24DDE0DB4(v14, v15);
  }

  MEMORY[0x253039750](v32);
  MEMORY[0x253039750](v33);
  sub_24DE22CE0();
  if (!v34)
  {
    MEMORY[0x253039750](v19);
  }

  sub_24DE22CE0();
  if (!v35)
  {
    sub_24DE22CF0();
  }

  sub_24DE22AD0();
  if (v38)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_593();
    sub_24DE22AD0();
    if (v9)
    {
LABEL_22:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_868();
      sub_24DE22AD0();
      goto LABEL_25;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v9)
    {
      goto LABEL_22;
    }
  }

  sub_24DE22CE0();
LABEL_25:
  sub_24DE22AD0();

  sub_24DE22CE0();
  if (!v39)
  {
    MEMORY[0x253039750](v21);
  }

  sub_24DE22CE0();
  if (v40)
  {
    sub_24DE22AD0();
  }

  sub_24DDE12E4(v0, v28);
  sub_24DDE1100(v0, v30);
  sub_24DE22CE0();
  if (v41 == 5)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1279();
  }

  else
  {
    sub_24DE22CE0();
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(v41);
    sub_24DE22AD0();
    OUTLINED_FUNCTION_1279();
  }
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33D0, &qword_24DE235B0);
  OUTLINED_FUNCTION_27(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_140();
  v9 = v0[3];
  v10 = v0[4];
  OUTLINED_FUNCTION_153(v0);
  sub_24DDE6DEC();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v1)
  {
    OUTLINED_FUNCTION_1260();
    OUTLINED_FUNCTION_160();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);

    v14 = OUTLINED_FUNCTION_593();
    sub_24DD763E4(v14, v15);

    if (v9)
    {
    }

    if (v5)
    {
    }

    if (v60)
    {
    }

    if (v62)
    {
    }
  }

  else
  {
    LOBYTE(v70) = 0;
    OUTLINED_FUNCTION_411();
    v11 = sub_24DE22B80();
    v12 = v11;
    OUTLINED_FUNCTION_396(v11);
    OUTLINED_FUNCTION_80(v13);
    v63 = sub_24DE22B40();
    v54 = v16;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v17 = v12;
    v53 = v72;
    v51 = v71;
    v52 = v73;
    v18 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v18, v19);
    OUTLINED_FUNCTION_80(3);
    v20 = sub_24DE22BA0();
    v59 = v21;
    OUTLINED_FUNCTION_80(4);
    v50 = sub_24DE22B40();
    v61 = v20;
    v66 = v22;
    OUTLINED_FUNCTION_80(5);
    v49 = sub_24DE22BA0();
    v58 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_1085();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v24);
    OUTLINED_FUNCTION_395();
    sub_24DE22B70();
    v65 = v70;
    OUTLINED_FUNCTION_80(7);
    v25 = sub_24DE22BE0();
    v48 = v70;
    OUTLINED_FUNCTION_69(8);
    v47 = sub_24DE22BE0();
    OUTLINED_FUNCTION_69(9);
    v26 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v26, v27);
    OUTLINED_FUNCTION_69(10);
    v46 = sub_24DE22B80();
    OUTLINED_FUNCTION_1181(v46);
    OUTLINED_FUNCTION_69(11);
    v45 = sub_24DE22BA0();
    v57 = v28;
    OUTLINED_FUNCTION_69(12);
    v44 = sub_24DE22B40();
    v68 = v29;
    OUTLINED_FUNCTION_69(13);
    v43 = sub_24DE22B40();
    v67 = v30;
    sub_24DDE6EE8();
    OUTLINED_FUNCTION_268();
    sub_24DE22BC0();
    OUTLINED_FUNCTION_69(15);
    v42 = sub_24DE22B90();
    OUTLINED_FUNCTION_1189(v42, v31);
    OUTLINED_FUNCTION_69(16);
    v41 = sub_24DE22B40();
    v64 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3208, &qword_24DE23510);
    sub_24DDE6278();
    OUTLINED_FUNCTION_395();
    sub_24DE22BC0();
    v56 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3220, &qword_24DE23518);
    LOBYTE(v69[0]) = 18;
    sub_24DDE6350();
    OUTLINED_FUNCTION_395();
    sub_24DE22BC0();
    v55 = v70;
    OUTLINED_FUNCTION_69(19);
    v40 = sub_24DE22BB0();
    v110 = 20;
    sub_24DDE6F3C();
    OUTLINED_FUNCTION_268();
    sub_24DE22B70();
    v40 &= 1u;
    v33 = OUTLINED_FUNCTION_117();
    v34(v33);
    LODWORD(v69[0]) = v17;
    v37 = v111;
    v38 = v122;
    BYTE4(v69[0]) = v122;
    *(v69 + 5) = v120;
    HIBYTE(v69[0]) = v121;
    v69[1] = v63;
    v69[2] = v54;
    v69[3] = v48;
    v69[4] = v51;
    v69[5] = v53;
    v69[6] = v52;
    v69[7] = v61;
    v69[8] = v59;
    v69[9] = v50;
    v69[10] = v66;
    v69[11] = v49;
    v69[12] = v58;
    v69[13] = v65;
    v69[14] = v25;
    v69[15] = v47;
    v69[16] = v26;
    v39 = v119;
    LOBYTE(v69[17]) = v119;
    *(&v69[17] + 1) = v117;
    BYTE3(v69[17]) = v118;
    HIDWORD(v69[17]) = v46;
    *(&v69[18] + 1) = *v115;
    HIDWORD(v69[25]) = *&v114[3];
    *(&v69[25] + 1) = *v114;
    HIDWORD(v69[27]) = *&v112[3];
    *(&v69[27] + 1) = *v112;
    v35 = v116;
    LOBYTE(v69[18]) = v116;
    HIDWORD(v69[18]) = *&v115[3];
    v69[19] = v45;
    v69[20] = v57;
    v69[21] = v44;
    v69[22] = v68;
    v69[23] = v43;
    v69[24] = v67;
    LOBYTE(v69[25]) = 0;
    v69[26] = v42;
    v36 = v113;
    LOBYTE(v69[27]) = v113;
    v69[28] = v41;
    v69[29] = v64;
    v69[30] = v56;
    v69[31] = v55;
    LOBYTE(v69[32]) = v40;
    BYTE1(v69[32]) = v111;
    memcpy(v2, v69, 0x102uLL);
    sub_24DDE6F90(v69, &v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    LODWORD(v70) = v17;
    BYTE4(v70) = v38;
    v71 = v63;
    v72 = v54;
    v73 = v48;
    v74 = v51;
    v75 = v53;
    v76 = v52;
    *(&v70 + 5) = v120;
    HIBYTE(v70) = v121;
    v77 = v61;
    v78 = v59;
    v79 = v50;
    v80 = v66;
    v81 = v49;
    v82 = v58;
    v83 = v65;
    v84 = v25;
    v85 = v47;
    v86 = v26;
    v87 = v39;
    v88 = v117;
    v89 = v118;
    v90 = v46;
    v91 = v35;
    *v92 = *v115;
    *&v92[3] = *&v115[3];
    v93 = v45;
    v94 = v57;
    v95 = v44;
    v96 = v68;
    v97 = v43;
    v98 = v67;
    v99 = 0;
    *&v100[3] = *&v114[3];
    *v100 = *v114;
    v101 = v42;
    v102 = v36;
    *&v103[3] = *&v112[3];
    *v103 = *v112;
    v104 = v41;
    v105 = v64;
    v106 = v56;
    v107 = v55;
    v108 = v40;
    v109 = v37;
    sub_24DDE6FC8(&v70);
  }

  OUTLINED_FUNCTION_1031();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDBECB8()
{
  sub_24DE22CC0();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.playerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.formattedScoreValue.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.rank.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.init(playerId:formattedScoreValue:scoreValue:rank:attemptCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 44) = a7;
  *(a9 + 48) = BYTE4(a7) & 1;
  *(a9 + 52) = a8;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_Participant::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_944();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_Participant::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.CodingKeys.stringValue.getter()
{
  result = 0x692D726579616C70;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_412(21);
      break;
    case 2:
      result = OUTLINED_FUNCTION_275();
      break;
    case 3:
      result = OUTLINED_FUNCTION_191();
      break;
    case 4:
      result = 0x2D74706D65747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBF028@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBF058()
{
  sub_24DDE6FF8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBF090()
{
  sub_24DDE6FF8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_281(v2);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v23 = *(v3 + 44);
  v24 = *(v3 + 52);
  OUTLINED_FUNCTION_1017(v10);
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  v19 = v17 == v18 && v11 == v12;
  v21 = *(v13 + 44);
  v22 = *(v13 + 52);
  if (v19 || (sub_24DE22CA0()) && v6 && v0 && (v5 != v1 || v6 != v0))
  {
    OUTLINED_FUNCTION_369();
  }

  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1176();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33E8, &qword_24DE235B8);
  OUTLINED_FUNCTION_27(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_100();
  v6 = *v0;
  v7 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v15 = v0[4];
  v14 = *(v0 + 40);
  v13 = *(v0 + 11);
  v11 = *(v0 + 13);
  v12 = *(v0 + 48);
  v8 = OUTLINED_FUNCTION_1070();
  OUTLINED_FUNCTION_255(v8);
  sub_24DDE6FF8();
  OUTLINED_FUNCTION_375();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_393();
  OUTLINED_FUNCTION_135();
  sub_24DE22C50();
  if (!v1)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_135();
    sub_24DE22C40();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_110();
    sub_24DE22C30();
    OUTLINED_FUNCTION_889();
    OUTLINED_FUNCTION_166();
    sub_24DE22C80();
  }

  v9 = OUTLINED_FUNCTION_180();
  v10(v9);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.hash(into:)()
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_438();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 11);
  v8 = *(v0 + 48);
  v9 = *(v0 + 13);
  sub_24DE22AD0();
  if (v4)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_533();
    sub_24DE22AD0();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24DE22CE0();
    MEMORY[0x253039750](v5);
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_24DE22CE0();
    goto LABEL_8;
  }

  sub_24DE22CE0();
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24DE22CE0();
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_24DE22CE0();
  sub_24DE22CF0();
LABEL_8:
  sub_24DE22CF0();
  OUTLINED_FUNCTION_999();
}

uint64_t sub_24DDBF420()
{
  OUTLINED_FUNCTION_588();
  v0(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Participant.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33F8, &qword_24DE235C0);
  OUTLINED_FUNCTION_24(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_140();
  v8 = v0[3];
  v9 = v0[4];
  OUTLINED_FUNCTION_250(v0);
  sub_24DDE6FF8();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    OUTLINED_FUNCTION_311();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_1026();
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_311();
    *&v19 = sub_24DE22B40();
    *(&v19 + 1) = v10;
    OUTLINED_FUNCTION_634(2);
    OUTLINED_FUNCTION_311();
    v18 = sub_24DE22B90();
    v31 = v11 & 1;
    OUTLINED_FUNCTION_634(3);
    OUTLINED_FUNCTION_311();
    v12 = sub_24DE22B80();
    v17 = v12;
    v30 = BYTE4(v12) & 1;
    OUTLINED_FUNCTION_1016(4);
    OUTLINED_FUNCTION_311();
    v13 = sub_24DE22BD0();
    v14 = OUTLINED_FUNCTION_318();
    v15(v14);
    *&v20[0] = v9;
    *(&v20[0] + 1) = v8;
    v20[1] = v19;
    *&v21 = v18;
    BYTE8(v21) = v31;
    HIDWORD(v21) = v17;
    v16 = v30;
    LOBYTE(v22) = v30;
    HIDWORD(v22) = v13;
    *v3 = v20[0];
    *(v3 + 16) = v19;
    *(v3 + 32) = v21;
    *(v3 + 48) = v22;
    sub_24DDE704C(v20, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v23[0] = v9;
    v23[1] = v8;
    v24 = v19;
    v25 = v18;
    v26 = v31;
    v27 = v17;
    v28 = v16;
    v29 = v13;
    sub_24DDE7084(v23);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDBF70C()
{
  OUTLINED_FUNCTION_855();
  v0(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.challengeId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.challengeVendorId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.bundleIds.setter()
{
  result = OUTLINED_FUNCTION_1312();
  *(v1 + 104) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.participantsSummary.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.init(status:message:alert:challengeId:challengeVendorId:bundleId:bundleIds:startTimestamp:endTimestamp:scheduledEndTimestamp:participantsSummary:participantsCount:rank:remainingAttempts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, int a18, int a19, char a20, int a21, char a22)
{
  OUTLINED_FUNCTION_938();
  v26 = v25;
  OUTLINED_FUNCTION_349();
  *v26 = v27;
  *(v26 + 4) = v28 & 1;
  *(v26 + 8) = v29;
  *(v26 + 16) = v30;
  v31 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v31, v32);
  v33 = *v23;
  *(v26 + 40) = v23[1];
  *(v26 + 24) = v33;
  *(v26 + 56) = v22;
  *(v26 + 64) = a6;
  *(v26 + 72) = a7;
  *(v26 + 80) = a8;
  result = v36;
  *(v26 + 88) = v35;
  *(v26 + 104) = v36;
  *(v26 + 120) = a13;
  *(v26 + 128) = a14;
  *(v26 + 136) = a15 & 1;
  *(v26 + 144) = a16;
  *(v26 + 152) = a17;
  *(v26 + 156) = a19;
  *(v26 + 160) = a20 & 1;
  *(v26 + 164) = a21;
  *(v26 + 168) = a22 & 1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 14;
  if (v2 < 0xE)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

unint64_t sub_24DDBFC5C()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_130();
      break;
    case 4:
      result = OUTLINED_FUNCTION_68();
      break;
    case 5:
    case 6:
      result = OUTLINED_FUNCTION_65();
      break;
    case 7:
      result = OUTLINED_FUNCTION_102();
      break;
    case 8:
      result = OUTLINED_FUNCTION_103();
      break;
    case 9:
      result = OUTLINED_FUNCTION_322();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_345();
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = OUTLINED_FUNCTION_191();
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBFD4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_680();
  return sub_24DD78F50(v4, v5, v6) & 1;
}

uint64_t sub_24DDBFD7C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_680();
  return sub_24DD7DD50(v2, v3, v4);
}

uint64_t sub_24DDBFDD8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBFE0C()
{
  sub_24DDE70B4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBFE44()
{
  sub_24DDE70B4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_267(a1);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  OUTLINED_FUNCTION_1178(v1);
  v134 = v12;
  v139 = *(v10 + 80);
  v136 = *(v10 + 88);
  v13 = *(v10 + 104);
  v140 = *(v10 + 96);
  v14 = *(v10 + 112);
  v145 = *(v10 + 120);
  v129 = *(v10 + 128);
  v15 = *(v10 + 136);
  v16 = *(v10 + 144);
  v128 = *(v10 + 152);
  v126 = *(v10 + 156);
  v127 = *(v10 + 160);
  v17 = *(v10 + 164);
  v125 = *(v10 + 168);
  v18 = *(v11 + 16);
  v19 = *(v11 + 24);
  v20 = *(v11 + 32);
  v21 = *(v11 + 40);
  v22 = *(v11 + 48);
  v141 = *(v11 + 64);
  v142 = *(v11 + 56);
  v137 = *(v11 + 80);
  v135 = *(v11 + 88);
  v138 = *(v11 + 96);
  v132 = *(v11 + 104);
  v133 = *(v11 + 72);
  v130 = *(v11 + 112);
  v131 = *(v11 + 120);
  v23 = *(v11 + 128);
  v24 = *(v11 + 152);
  v25 = *(v11 + 156);
  v26 = *(v11 + 164);
  if (v27)
  {
    if (!*(v11 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v10 == *v11)
    {
      v28 = *(v11 + 4);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != *(v11 + 8) || v9 != v18)
    {
      v113 = *(v11 + 168);
      v114 = *(v11 + 136);
      v101 = *(v11 + 164);
      v104 = *(v11 + 156);
      v30 = *(v11 + 160);
      v110 = *(v11 + 152);
      v116 = *(v11 + 144);
      v31 = *(v11 + 128);
      v32 = sub_24DE22CA0();
      v23 = v31;
      v24 = v110;
      v26 = v101;
      v25 = v104;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v109 = v23;
  if (v4 == 1)
  {
    v112 = v13;
    v111 = v24;
    OUTLINED_FUNCTION_630();
    sub_24DD7639C(v33, v34);
    if (v20 == 1)
    {
      OUTLINED_FUNCTION_545();
      OUTLINED_FUNCTION_953();
      sub_24DD7639C(v35, v36);
      OUTLINED_FUNCTION_630();
      sub_24DD763E4(v37, v38);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_637();
    OUTLINED_FUNCTION_953();
    sub_24DD7639C(v45, v46);
LABEL_23:
    v47 = OUTLINED_FUNCTION_283();
    sub_24DD763E4(v47, v48);
    OUTLINED_FUNCTION_637();
    OUTLINED_FUNCTION_953();
    sub_24DD763E4(v49, v50);
    return 0;
  }

  if (v20 == 1)
  {
    v39 = OUTLINED_FUNCTION_283();
    sub_24DD7639C(v39, v40);
    OUTLINED_FUNCTION_545();
    OUTLINED_FUNCTION_953();
    sub_24DD7639C(v41, v42);
    v43 = OUTLINED_FUNCTION_283();
    sub_24DD7639C(v43, v44);

    goto LABEL_23;
  }

  v112 = v13;
  v111 = v24;
  v105 = OUTLINED_FUNCTION_1172();
  v52 = OUTLINED_FUNCTION_283();
  sub_24DD7639C(v52, v53);
  OUTLINED_FUNCTION_637();
  OUTLINED_FUNCTION_953();
  sub_24DD7639C(v54, v55);
  v56 = OUTLINED_FUNCTION_283();
  sub_24DD7639C(v56, v57);

  v58 = OUTLINED_FUNCTION_283();
  sub_24DD763E4(v58, v59);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v60 = v144 == v142 && v143 == v141;
  if (!v60 && (sub_24DE22CA0() & 1) == 0)
  {
    return 0;
  }

  if (v139)
  {
    OUTLINED_FUNCTION_842();
    v70 = v140;
    v71 = v138;
    v72 = v145;
    if (!v137)
    {
      return 0;
    }

    if (v134 != v133 || v61 != v137)
    {
      v119 = v67;
      v121 = v65;
      v102 = v26;
      v106 = v25;
      v123 = v63;
      v74 = v64;
      v75 = v66;
      v76 = v62;
      v77 = v68;
      v78 = sub_24DE22CA0();
      v70 = v140;
      v69 = v109;
      v68 = v77;
      v67 = v119;
      v65 = v121;
      v62 = v76;
      v66 = v75;
      v72 = v145;
      v64 = v74;
      v26 = v102;
      v25 = v106;
      v63 = v123;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_842();
    v70 = v140;
    v71 = v138;
    v72 = v145;
    if (v137)
    {
      return 0;
    }
  }

  if (v136 != v135 || v70 != v71)
  {
    v120 = v67;
    v122 = v65;
    v103 = v26;
    v107 = v25;
    v124 = v63;
    v80 = v64;
    v81 = v66;
    v82 = v62;
    v83 = v68;
    v84 = sub_24DE22CA0();
    v69 = v109;
    v68 = v83;
    v67 = v120;
    v65 = v122;
    v62 = v82;
    v66 = v81;
    v72 = v145;
    v64 = v80;
    v26 = v103;
    v25 = v107;
    v63 = v124;
    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

  if (v112)
  {
    if (!v132)
    {
      return 0;
    }

    v115 = v21;
    v117 = v68;
    v85 = v67;
    v118 = v62;
    v108 = v25;
    v100 = v66;
    v86 = v65;
    v87 = v64;
    v88 = v63;
    sub_24DD85994(v112, v132);
    result = OUTLINED_FUNCTION_696();
    if ((v89 & 1) == 0)
    {
      return result;
    }

    v90 = v85 == v130 && v72 == v131;
    v63 = v88;
    v64 = v87;
    v65 = v86;
    v66 = v100;
    v25 = v108;
    v62 = v118;
    v68 = v117;
    LODWORD(v21) = v115;
    v69 = v109;
    if (!v90)
    {
      return result;
    }

    goto LABEL_60;
  }

  result = 0;
  if (!v132 && v67 == v130 && v72 == v131)
  {
LABEL_60:
    if (v62)
    {
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (v129 == v69)
      {
        v92 = v21;
      }

      else
      {
        v92 = 1;
      }

      if (v92)
      {
        return 0;
      }
    }

    v93 = v25;
    v94 = v66;
    v95 = v64;
    v96 = v63;
    sub_24DD85A20(v65, v68);
    result = OUTLINED_FUNCTION_696();
    if ((v97 & 1) == 0 || v128 != v111)
    {
      return result;
    }

    if (v127)
    {
      if (!v94)
      {
        return 0;
      }
    }

    else
    {
      if (v126 == v93)
      {
        v98 = v94;
      }

      else
      {
        v98 = 1;
      }

      if (v98)
      {
        return 0;
      }
    }

    if ((v125 & 1) == 0)
    {
      if (v96 == v26)
      {
        v99 = v95;
      }

      else
      {
        v99 = 1;
      }

      return (v99 & 1) == 0;
    }

    return (v95 & 1) != 0;
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_645();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3400, &qword_24DE235C8);
  OUTLINED_FUNCTION_27(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_140();
  v34 = *v22;
  v35 = *(v22 + 4);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_579();
  v37 = v27[3];
  v36 = v27[4];
  OUTLINED_FUNCTION_250(v27);
  sub_24DDE70B4();
  OUTLINED_FUNCTION_544();
  sub_24DE22D50();
  sub_24DE22C30();
  if (v23)
  {
    v41 = *(v30 + 8);
    v44 = OUTLINED_FUNCTION_384();
  }

  else
  {
    OUTLINED_FUNCTION_456(1);
    OUTLINED_FUNCTION_308();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_681();
    OUTLINED_FUNCTION_870();
    sub_24DD7639C(v38, v39);
    sub_24DD87138();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_415();
    sub_24DE22C20();
    OUTLINED_FUNCTION_967();
    OUTLINED_FUNCTION_456(3);
    OUTLINED_FUNCTION_308();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(4);
    OUTLINED_FUNCTION_308();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(5);
    OUTLINED_FUNCTION_308();
    sub_24DE22C50();
    OUTLINED_FUNCTION_516();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v40);
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_401();
    sub_24DE22C20();
    OUTLINED_FUNCTION_505();
    OUTLINED_FUNCTION_415();
    sub_24DE22C90();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_415();
    sub_24DE22C90();
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_308();
    sub_24DE22C40();
    OUTLINED_FUNCTION_733();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3410, &qword_24DE235D0);
    sub_24DDE7108();
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_1274();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_639(11);
    OUTLINED_FUNCTION_251();
    sub_24DE22C80();
    OUTLINED_FUNCTION_481(&a17);
    OUTLINED_FUNCTION_479(v42);
    OUTLINED_FUNCTION_251();
    sub_24DE22C30();
    OUTLINED_FUNCTION_481(&a14);
    OUTLINED_FUNCTION_479(v43);
    OUTLINED_FUNCTION_251();
    sub_24DE22C30();
    OUTLINED_FUNCTION_859();
    v44 = OUTLINED_FUNCTION_379();
  }

  v45(v44);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.hash(into:)()
{
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_192();
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v18 = *(v0 + 3);
  v19 = *(v0 + 5);
  v3 = *(v0 + 7);
  v20 = *(v0 + 6);
  v26 = *(v0 + 8);
  v4 = *(v0 + 10);
  v24 = *(v0 + 1);
  v25 = *(v0 + 9);
  v27 = *(v0 + 12);
  v28 = *(v0 + 11);
  v29 = *(v0 + 13);
  v30 = *(v0 + 14);
  v31 = *(v0 + 15);
  v21 = *(v0 + 16);
  v5 = *(v0 + 136);
  v6 = *(v0 + 18);
  v8 = v0[38];
  v7 = v0[39];
  v9 = *(v0 + 160);
  v22 = v0[39];
  v23 = v0[41];
  v10 = *(v0 + 168);
  if (v11 != 1)
  {
    v17 = *(v0 + 136);
    v12 = *v0;
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24DE22CE0();
    goto LABEL_6;
  }

  sub_24DE22CE0();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_781();
  sub_24DE22AD0();
LABEL_6:
  if (v2 == 1)
  {
    goto LABEL_11;
  }

  sub_24DE22CE0();
  sub_24DE22CE0();
  if (v2)
  {
    OUTLINED_FUNCTION_731();
    sub_24DE22AD0();
  }

  if (!v20)
  {
LABEL_11:
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_714();
    sub_24DE22AD0();
  }

  OUTLINED_FUNCTION_464();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v4)
  {
    OUTLINED_FUNCTION_868();
    sub_24DE22AD0();
  }

  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v29)
  {
    v13 = OUTLINED_FUNCTION_822();
    sub_24DDE0DB4(v13, v14);
  }

  MEMORY[0x253039750](v30);
  MEMORY[0x253039750](v31);
  sub_24DE22CE0();
  if (!v5)
  {
    MEMORY[0x253039750](v21);
  }

  v15 = OUTLINED_FUNCTION_386();
  sub_24DDE0E2C(v15, v16);
  sub_24DE22CF0();
  if (!v9)
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_22:
    sub_24DE22CE0();
    goto LABEL_23;
  }

  sub_24DE22CE0();
  if (v10)
  {
    goto LABEL_22;
  }

LABEL_20:
  sub_24DE22CE0();
  sub_24DE22CF0();
LABEL_23:
  OUTLINED_FUNCTION_585();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_469();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3428, &qword_24DE235D8);
  OUTLINED_FUNCTION_27(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_238();
  v8 = v0[3];
  v9 = v0[4];
  v51 = v0;
  OUTLINED_FUNCTION_250(v0);
  sub_24DDE70B4();
  OUTLINED_FUNCTION_658();
  OUTLINED_FUNCTION_709();
  sub_24DE22D30();
  if (v1)
  {
    OUTLINED_FUNCTION_291();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);

    OUTLINED_FUNCTION_935();
    OUTLINED_FUNCTION_1028();
    sub_24DD763E4(v13, v14);
    if (v3)
    {
    }

    if (v4)
    {
    }

    if (v0)
    {
    }
  }

  else
  {
    LOBYTE(v55) = 0;
    OUTLINED_FUNCTION_433();
    v10 = sub_24DE22B80();
    v11 = v10;
    OUTLINED_FUNCTION_396(v10);
    OUTLINED_FUNCTION_146(v12);
    v15 = sub_24DE22B40();
    v47 = v16;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_476();
    sub_24DE22B70();
    v44 = v2;
    v45 = v15;
    v43 = v11;
    v18 = v55;
    v17 = v56;
    v19 = v57;
    v46 = v58;
    v20 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v20, v21);
    OUTLINED_FUNCTION_146(3);
    v22 = sub_24DE22BA0();
    v50 = v23;
    OUTLINED_FUNCTION_146(4);
    v41 = sub_24DE22B40();
    v42 = v22;
    v52 = v24;
    OUTLINED_FUNCTION_146(5);
    v40 = sub_24DE22BA0();
    v49 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_1085();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v26);
    OUTLINED_FUNCTION_257();
    sub_24DE22B70();
    v53 = v55;
    OUTLINED_FUNCTION_146(7);
    v27 = sub_24DE22BE0();
    OUTLINED_FUNCTION_146(8);
    v39 = sub_24DE22BE0();
    v38 = v27;
    OUTLINED_FUNCTION_146(9);
    v28 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3410, &qword_24DE235D0);
    LOBYTE(v54[0]) = 10;
    sub_24DDE71E0();
    OUTLINED_FUNCTION_257();
    sub_24DE22BC0();
    v48 = v55;
    OUTLINED_FUNCTION_146(11);
    v37 = sub_24DE22BD0();
    OUTLINED_FUNCTION_146(12);
    v36 = sub_24DE22B80();
    OUTLINED_FUNCTION_1181(v36);
    v82 = 13;
    OUTLINED_FUNCTION_433();
    v30 = sub_24DE22B80();
    v31 = OUTLINED_FUNCTION_149();
    v32(v31);
    v83 = BYTE4(v30) & 1;
    LODWORD(v54[0]) = v43;
    v33 = v91;
    BYTE4(v54[0]) = v91;
    v54[1] = v45;
    v54[2] = v47;
    v54[3] = v18;
    v54[4] = v17;
    v54[5] = v19;
    v54[6] = v46;
    v54[7] = v42;
    v54[8] = v50;
    v54[9] = v41;
    v54[10] = v52;
    v54[11] = v40;
    v54[12] = v49;
    v54[13] = v53;
    v54[14] = v38;
    v54[15] = v39;
    v54[16] = v28;
    v34 = v88;
    LOBYTE(v54[17]) = v88;
    v54[18] = v48;
    v54[19] = __PAIR64__(v36, v37);
    v35 = v86;
    LOBYTE(v54[20]) = v86;
    HIDWORD(v54[20]) = v30;
    LOBYTE(v54[21]) = BYTE4(v30) & 1;
    memcpy(v44, v54, 0xA9uLL);
    sub_24DDE72B8(v54, &v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    LODWORD(v55) = v43;
    BYTE4(v55) = v33;
    *(&v55 + 5) = v89;
    HIBYTE(v55) = v90;
    v56 = v45;
    v57 = v47;
    v58 = v18;
    v59 = v17;
    v60 = v19;
    v61 = v46;
    v62 = v42;
    v63 = v50;
    v64 = v41;
    v65 = v52;
    v66 = v40;
    v67 = v49;
    v68 = v53;
    v69 = v38;
    v70 = v39;
    v71 = v28;
    v72 = v34;
    *v73 = *v87;
    *&v73[3] = *&v87[3];
    v74 = v48;
    v75 = v37;
    v76 = v36;
    v77 = v35;
    v78 = v84;
    v79 = v85;
    v80 = v30;
    v81 = BYTE4(v30) & 1;
    sub_24DDE72F0(&v55);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC0FF0()
{
  sub_24DE22CC0();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.challengeId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.challengeVendorId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.bundleIds.setter()
{
  result = OUTLINED_FUNCTION_1312();
  *(v1 + 104) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.participantsSummary.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.cardText.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.cardText.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_16();
      break;
    case 2:
      OUTLINED_FUNCTION_32();
      break;
    case 3:
      OUTLINED_FUNCTION_130();
      break;
    case 4:
      OUTLINED_FUNCTION_68();
      break;
    case 5:
      OUTLINED_FUNCTION_151();
      break;
    case 6:
      OUTLINED_FUNCTION_65();
      break;
    case 7:
      OUTLINED_FUNCTION_102();
      break;
    case 8:
      OUTLINED_FUNCTION_103();
      break;
    case 9:
      OUTLINED_FUNCTION_322();
      break;
    case 0xA:
      OUTLINED_FUNCTION_345();
      break;
    case 0xB:
    case 0xD:
      OUTLINED_FUNCTION_155();
      break;
    case 0xC:
      OUTLINED_FUNCTION_191();
      break;
    default:
      return;
  }
}

uint64_t sub_24DDC16D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  OUTLINED_FUNCTION_716();
  return sub_24DD78F50(v4, v5, v6) & 1;
}

uint64_t sub_24DDC1704()
{
  v1 = *v0;
  OUTLINED_FUNCTION_716();
  return sub_24DD7DD50(v2, v3, v4);
}

void sub_24DDC1760(void *a1@<X8>)
{
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DDC1794()
{
  sub_24DDE7320();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC17CC()
{
  sub_24DDE7320();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_267(a1);
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  OUTLINED_FUNCTION_1178(v1);
  v133 = v12;
  v138 = *(v10 + 80);
  v136 = *(v10 + 88);
  v139 = *(v10 + 96);
  v13 = *(v10 + 112);
  v131 = *(v10 + 104);
  v14 = *(v10 + 120);
  v15 = *(v10 + 128);
  v16 = *(v10 + 136);
  v126 = *(v10 + 144);
  v17 = *(v10 + 152);
  v18 = *(v10 + 156);
  v19 = *(v10 + 160);
  v120 = *(v10 + 164);
  v122 = *(v10 + 168);
  v20 = *(v10 + 176);
  v121 = *(v10 + 184);
  v21 = *(v11 + 16);
  v22 = *(v11 + 24);
  v23 = *(v11 + 32);
  v24 = *(v11 + 40);
  v25 = *(v11 + 48);
  v141 = *(v11 + 56);
  v140 = *(v11 + 64);
  v132 = *(v11 + 72);
  v137 = *(v11 + 80);
  v135 = *(v11 + 88);
  v134 = *(v11 + 96);
  v130 = *(v11 + 104);
  v128 = *(v11 + 112);
  v129 = *(v11 + 120);
  v124 = *(v11 + 128);
  v127 = *(v11 + 136);
  v125 = *(v11 + 144);
  v27 = *(v11 + 152);
  v26 = *(v11 + 156);
  v123 = *(v11 + 160);
  v28 = *(v11 + 164);
  v144 = *(v11 + 168);
  v29 = *(v11 + 176);
  v30 = *(v11 + 184);
  if (v31)
  {
    if (!*(v11 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v10 == *v11)
    {
      v32 = *(v11 + 4);
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v21)
    {
      return 0;
    }

    if (v8 != *(v11 + 8) || v9 != v21)
    {
      v102 = v17;
      v104 = *(v11 + 156);
      v98 = v18;
      v100 = *(v11 + 152);
      v116 = v14;
      v118 = v20;
      v96 = *(v11 + 184);
      v34 = *(v11 + 176);
      v35 = v19;
      v113 = *(v11 + 164);
      v110 = v15;
      v107 = v16;
      v36 = sub_24DE22CA0();
      v14 = v116;
      v20 = v118;
      v27 = v100;
      v17 = v102;
      v16 = v107;
      v26 = v104;
      v15 = v110;
      v28 = v113;
      v19 = v35;
      v29 = v34;
      v30 = v96;
      v18 = v98;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  v105 = v26;
  if (v5 == 1)
  {
    v106 = v13;
    v117 = v14;
    v119 = v20;
    v101 = v27;
    v103 = v17;
    v108 = v16;
    v111 = v15;
    v114 = v28;
    v99 = v19;
    v97 = v29;
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_672();
    sub_24DD7639C(v37, v38);
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_625();
      OUTLINED_FUNCTION_553();
      sub_24DD7639C(v39, v40);
      OUTLINED_FUNCTION_624();
      OUTLINED_FUNCTION_672();
      sub_24DD763E4(v41, v42);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_553();
    sub_24DD7639C(v49, v50);
LABEL_23:
    v51 = OUTLINED_FUNCTION_178();
    sub_24DD763E4(v51, v52);
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_553();
    sub_24DD763E4(v53, v54);
    return 0;
  }

  if (v23 == 1)
  {
    v43 = OUTLINED_FUNCTION_178();
    sub_24DD7639C(v43, v44);
    OUTLINED_FUNCTION_625();
    OUTLINED_FUNCTION_553();
    sub_24DD7639C(v45, v46);
    v47 = OUTLINED_FUNCTION_178();
    sub_24DD7639C(v47, v48);

    goto LABEL_23;
  }

  v106 = v13;
  v117 = v14;
  v119 = v20;
  v101 = v27;
  v103 = v17;
  v108 = v16;
  v111 = v15;
  v114 = v28;
  v99 = v19;
  v97 = v29;
  v95 = OUTLINED_FUNCTION_1172();
  v56 = OUTLINED_FUNCTION_178();
  sub_24DD7639C(v56, v57);
  OUTLINED_FUNCTION_626();
  OUTLINED_FUNCTION_553();
  sub_24DD7639C(v58, v59);
  v60 = OUTLINED_FUNCTION_178();
  sub_24DD7639C(v60, v61);

  v62 = OUTLINED_FUNCTION_178();
  sub_24DD763E4(v62, v63);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v64 = v143 == v141 && v142 == v140;
  if (!v64 && (sub_24DE22CA0() & 1) == 0)
  {
    return 0;
  }

  if (v138)
  {
    v66 = v117;
    v65 = v119;
    v67 = v97;
    v68 = v99;
    v69 = v114;
    v70 = v111;
    v71 = v108;
    v72 = v139;
    v73 = v144;
    if (!v137)
    {
      return 0;
    }

    if (v133 != v132 || v138 != v137)
    {
      OUTLINED_FUNCTION_1126();
      OUTLINED_FUNCTION_1072();
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v66 = v117;
    v65 = v119;
    v67 = v97;
    v68 = v99;
    v69 = v114;
    v70 = v111;
    v71 = v108;
    v72 = v139;
    v73 = v144;
    if (v137)
    {
      return 0;
    }
  }

  if (v136 != v135 || v72 != v134)
  {
    OUTLINED_FUNCTION_1126();
    OUTLINED_FUNCTION_1072();
    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  result = v131;
  if (v131)
  {
    if (!v130)
    {
      return 0;
    }

    v78 = v66;
    v109 = v71;
    v112 = v70;
    v115 = v69;
    v79 = v68;
    v80 = v67;
    v81 = v65;
    sub_24DD85994(v131, v130);
    result = OUTLINED_FUNCTION_696();
    if ((v82 & 1) == 0)
    {
      return result;
    }

    v83 = v106 == v128 && v78 == v129;
    v65 = v81;
    v67 = v80;
    v68 = v79;
    v73 = v144;
    v69 = v115;
    v70 = v112;
    v71 = v109;
    if (!v83)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (!v130 && v106 == v128 && v66 == v129)
  {
LABEL_60:
    if (v71)
    {
      if (!v127)
      {
        return 0;
      }
    }

    else
    {
      v85 = v127;
      if (v70 != v124)
      {
        v85 = 1;
      }

      if (v85)
      {
        return 0;
      }
    }

    v86 = v69;
    v87 = v73;
    v88 = v68;
    v89 = v67;
    v90 = v65;
    sub_24DD85A20(v126, v125);
    result = OUTLINED_FUNCTION_696();
    if ((v91 & 1) == 0 || v103 != v101)
    {
      return result;
    }

    if (v88)
    {
      if (!v123)
      {
        return 0;
      }
    }

    else
    {
      v92 = v123;
      if (v18 != v105)
      {
        v92 = 1;
      }

      if (v92)
      {
        return 0;
      }
    }

    if ((v122 & 1) == 0)
    {
      if (v120 == v86)
      {
        v93 = v87;
      }

      else
      {
        v93 = 1;
      }

      if (v93)
      {
        return 0;
      }

      goto LABEL_81;
    }

    if (v87)
    {
LABEL_81:
      if (v90 == v89 && v121 == v30)
      {
        return 1;
      }

      OUTLINED_FUNCTION_1179();

      return sub_24DE22CA0();
    }

    return 0;
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_645();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3440, &qword_24DE235E0);
  OUTLINED_FUNCTION_24(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_140();
  v34 = *v22;
  v35 = *(v22 + 4);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_579();
  v46 = *(v22 + 22);
  v47 = *(v22 + 23);
  v36 = v27[3];
  v37 = v27[4];
  OUTLINED_FUNCTION_153(v27);
  sub_24DDE7320();
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_617();
  sub_24DE22D50();
  OUTLINED_FUNCTION_487();
  sub_24DE22C30();
  if (v23)
  {
    v38 = *(v30 + 8);
    v39 = OUTLINED_FUNCTION_384();
  }

  else
  {
    OUTLINED_FUNCTION_456(1);
    OUTLINED_FUNCTION_308();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    v41 = OUTLINED_FUNCTION_681();
    sub_24DD7639C(v41, v42);
    sub_24DD87138();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_415();
    sub_24DE22C20();
    OUTLINED_FUNCTION_967();
    OUTLINED_FUNCTION_456(3);
    OUTLINED_FUNCTION_308();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(4);
    OUTLINED_FUNCTION_308();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(5);
    OUTLINED_FUNCTION_308();
    sub_24DE22C50();
    OUTLINED_FUNCTION_516();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v43);
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_401();
    sub_24DE22C20();
    OUTLINED_FUNCTION_505();
    OUTLINED_FUNCTION_415();
    sub_24DE22C90();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_415();
    sub_24DE22C90();
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_308();
    sub_24DE22C40();
    OUTLINED_FUNCTION_733();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3410, &qword_24DE235D0);
    sub_24DDE7108();
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_1274();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_639(11);
    OUTLINED_FUNCTION_251();
    sub_24DE22C80();
    OUTLINED_FUNCTION_481(&a17);
    OUTLINED_FUNCTION_479(v44);
    OUTLINED_FUNCTION_251();
    sub_24DE22C30();
    OUTLINED_FUNCTION_481(&a14);
    OUTLINED_FUNCTION_479(v45);
    OUTLINED_FUNCTION_251();
    sub_24DE22C30();
    OUTLINED_FUNCTION_456(14);
    OUTLINED_FUNCTION_514(&a11);
    OUTLINED_FUNCTION_416();
    sub_24DE22C50();
    OUTLINED_FUNCTION_859();
    v39 = OUTLINED_FUNCTION_379();
  }

  v40(v39);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.hash(into:)()
{
  OUTLINED_FUNCTION_1000();
  OUTLINED_FUNCTION_192();
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v19 = *(v0 + 3);
  v3 = *(v0 + 6);
  v20 = *(v0 + 5);
  v4 = *(v0 + 7);
  v28 = *(v0 + 8);
  v5 = *(v0 + 10);
  v24 = *(v0 + 1);
  v25 = *(v0 + 9);
  v29 = *(v0 + 12);
  v30 = *(v0 + 11);
  v31 = *(v0 + 13);
  v32 = *(v0 + 14);
  v33 = *(v0 + 15);
  v23 = *(v0 + 16);
  v34 = *(v0 + 136);
  v6 = *(v0 + 18);
  v7 = v0[38];
  v8 = *(v0 + 160);
  v21 = v0[39];
  v22 = v0[41];
  v9 = *(v0 + 168);
  v26 = *(v0 + 23);
  v27 = *(v0 + 22);
  if (v10 == 1)
  {
    sub_24DE22CE0();
    if (v1)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1268();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(v0 + 4);
    v12 = *v0;
    sub_24DE22CE0();
    v2 = v11;
    sub_24DE22CF0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v2 != 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
      sub_24DE22CE0();
      OUTLINED_FUNCTION_731();
      sub_24DE22AD0();
      if (v3)
      {
LABEL_9:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_714();
        sub_24DE22AD0();
        goto LABEL_12;
      }
    }

    else
    {
      sub_24DE22CE0();
      if (v3)
      {
        goto LABEL_9;
      }
    }
  }

  sub_24DE22CE0();
LABEL_12:
  OUTLINED_FUNCTION_464();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v5)
  {
    OUTLINED_FUNCTION_781();
    sub_24DE22AD0();
  }

  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v31)
  {
    v13 = OUTLINED_FUNCTION_426();
    sub_24DDE0DB4(v13, v14);
  }

  MEMORY[0x253039750](v32);
  MEMORY[0x253039750](v33);
  sub_24DE22CE0();
  if (!v34)
  {
    MEMORY[0x253039750](v23);
  }

  v15 = OUTLINED_FUNCTION_822();
  sub_24DDE0E2C(v15, v16);
  sub_24DE22CF0();
  if (v8)
  {
    sub_24DE22CE0();
    if (!v9)
    {
LABEL_20:
      sub_24DE22CE0();
      sub_24DE22CF0();
      goto LABEL_23;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  sub_24DE22CE0();
LABEL_23:
  OUTLINED_FUNCTION_827();

  return sub_24DE22AD0();
}

uint64_t sub_24DDC2344()
{
  OUTLINED_FUNCTION_588();
  v0(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_469();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3450, &qword_24DE235E8);
  OUTLINED_FUNCTION_27(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_238();
  v8 = v0[3];
  v9 = v0[4];
  OUTLINED_FUNCTION_250(v0);
  sub_24DDE7320();
  OUTLINED_FUNCTION_658();
  OUTLINED_FUNCTION_709();
  sub_24DE22D30();
  if (v1)
  {
    OUTLINED_FUNCTION_291();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);

    OUTLINED_FUNCTION_935();
    OUTLINED_FUNCTION_1028();
    sub_24DD763E4(v13, v14);
    if (v3)
    {
    }

    if (v4)
    {
    }

    if (v0)
    {
    }
  }

  else
  {
    LOBYTE(v59) = 0;
    OUTLINED_FUNCTION_433();
    v10 = sub_24DE22B80();
    v11 = v10;
    OUTLINED_FUNCTION_396(v10);
    OUTLINED_FUNCTION_128(v12);
    v15 = sub_24DE22B40();
    v52 = v16;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_476();
    sub_24DE22B70();
    v49 = v2;
    v50 = v15;
    v48 = v11;
    v18 = v59;
    v17 = v60;
    v19 = v61;
    v51 = v62;
    v20 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v20, v21);
    OUTLINED_FUNCTION_128(3);
    v22 = sub_24DE22BA0();
    v55 = v23;
    OUTLINED_FUNCTION_128(4);
    v46 = sub_24DE22B40();
    v47 = v22;
    v57 = v24;
    OUTLINED_FUNCTION_128(5);
    v45 = sub_24DE22BA0();
    v54 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_1085();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v26);
    OUTLINED_FUNCTION_257();
    sub_24DE22B70();
    v56 = v59;
    OUTLINED_FUNCTION_128(7);
    v27 = sub_24DE22BE0();
    OUTLINED_FUNCTION_128(8);
    v44 = sub_24DE22BE0();
    v43 = v27;
    OUTLINED_FUNCTION_128(9);
    v28 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3410, &qword_24DE235D0);
    LOBYTE(v58[0]) = 10;
    sub_24DDE71E0();
    OUTLINED_FUNCTION_257();
    sub_24DE22BC0();
    v53 = v59;
    OUTLINED_FUNCTION_128(11);
    v42 = sub_24DE22BD0();
    OUTLINED_FUNCTION_128(12);
    v41 = sub_24DE22B80();
    OUTLINED_FUNCTION_1181(v41);
    OUTLINED_FUNCTION_128(13);
    v40 = sub_24DE22B80();
    v90 = BYTE4(v40) & 1;
    v88 = 14;
    OUTLINED_FUNCTION_433();
    v30 = sub_24DE22BA0();
    v38 = v31;
    v39 = v30;
    v32 = OUTLINED_FUNCTION_149();
    v33(v32);
    LODWORD(v58[0]) = v48;
    v34 = v98;
    BYTE4(v58[0]) = v98;
    v58[1] = v50;
    v58[2] = v52;
    v58[3] = v18;
    v58[4] = v17;
    v58[5] = v19;
    v58[6] = v51;
    v58[7] = v47;
    v58[8] = v55;
    v58[9] = v46;
    v58[10] = v57;
    v58[11] = v45;
    v58[12] = v54;
    v58[13] = v56;
    v58[14] = v43;
    v58[15] = v44;
    v58[16] = v28;
    v35 = v95;
    LOBYTE(v58[17]) = v95;
    v58[18] = v53;
    v58[19] = __PAIR64__(v41, v42);
    v37 = v93;
    LOBYTE(v58[20]) = v93;
    *(&v58[20] + 1) = v91;
    BYTE3(v58[20]) = v92;
    HIDWORD(v58[20]) = v40;
    v36 = v90;
    LOBYTE(v58[21]) = v90;
    *(&v58[21] + 1) = *v89;
    HIDWORD(v58[21]) = *&v89[3];
    v58[22] = v39;
    v58[23] = v38;
    memcpy(v49, v58, 0xC0uLL);
    sub_24DDE7374(v58, &v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    LODWORD(v59) = v48;
    BYTE4(v59) = v34;
    *(&v59 + 5) = v96;
    HIBYTE(v59) = v97;
    v60 = v50;
    v61 = v52;
    v62 = v18;
    v63 = v17;
    v64 = v19;
    v65 = v51;
    v66 = v47;
    v67 = v55;
    v68 = v46;
    v69 = v57;
    v70 = v45;
    v71 = v54;
    v72 = v56;
    v73 = v43;
    v74 = v44;
    v75 = v28;
    v76 = v35;
    v77 = *v94;
    OUTLINED_FUNCTION_973(*&v94[3]);
    v78 = v42;
    v79 = v41;
    v80 = v37;
    v81 = v91;
    v82 = v92;
    v83 = v40;
    v84 = v36;
    *&v85[3] = *&v89[3];
    *v85 = *v89;
    v86 = v39;
    v87 = v38;
    sub_24DDE73AC(&v59);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC2A58()
{
  OUTLINED_FUNCTION_855();
  v0(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void sub_24DDC2B10(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  OUTLINED_FUNCTION_921(a1, 0);
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.gameBundleDescriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>)
{
  v18 = v7[1];
  v19 = v7[2];
  v8 = v7[3];
  v20 = v7[4];
  *a7 = v18;
  a7[1] = v19;
  a7[2] = v8;
  a7[3] = v20;
  OUTLINED_FUNCTION_848(a1, a2, &unk_27F1B3458, &unk_24DE235F0, a3, a4, a5, a6, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  return sub_24DDE73DC();
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.gameBundleDescriptor.setter(uint64_t a1)
{
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v4 = v1[4];
  v8[2] = v1[3];
  v8[3] = v4;
  sub_24DDE8DAC(v8, &unk_27F1B3458);
  v5 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v7;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.challengeVendorId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.leaderboardId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.attemptLimit.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.durationCode.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.durationCode.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.invitedPlayerIds.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.previousChallengeId.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.previousChallengeId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.testOption.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 188);
  v5 = *(v1 + 189);
  OUTLINED_FUNCTION_835(a1);
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.testOption.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = *(result + 13);
  *(v1 + 176) = *result;
  *(v1 + 188) = v3;
  *(v1 + 184) = v2;
  *(v1 + 189) = v4;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.init(bundleId:gameBundleDescriptor:challengeVendorId:leaderboardId:attemptLimit:duration:durationCode:invitedPlayerIds:previousChallengeId:testOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, __int128 a39, __int128 a40, uint64_t a41, uint64_t *a42)
{
  OUTLINED_FUNCTION_1006();
  a35 = v45;
  a36 = v46;
  v48 = v47;
  v65 = v49;
  OUTLINED_FUNCTION_749();
  v51 = v50;
  v53 = v52;
  v68 = a40;
  v66 = a39;
  v54 = a38;
  v55 = a37;
  v64 = a41;
  v56 = *a42;
  v67 = *(a42 + 2);
  v57 = *(a42 + 12);
  v63 = *(a42 + 13);
  *v52 = v58;
  v52[1] = v59;
  a19 = 0u;
  a20 = 0u;
  a21 = 0u;
  a22 = 0u;
  sub_24DDE8DAC(&a19, &unk_27F1B3458);
  v60 = v51[1];
  *(v53 + 1) = *v51;
  *(v53 + 2) = v60;
  v61 = v51[3];
  *(v53 + 3) = v51[2];
  *(v53 + 4) = v61;
  v53[10] = v44;
  v53[11] = v43;
  v53[12] = v42;
  v53[13] = v65;
  *(v53 + 28) = v48;
  *(v53 + 116) = BYTE4(v48) & 1;
  v53[15] = v55;
  *(v53 + 128) = v54 & 1;
  *(v53 + 17) = v66;
  *(v53 + 19) = v68;
  v53[21] = v64;
  v53[22] = v56;
  *(v53 + 188) = v57;
  *(v53 + 46) = v67;
  *(v53 + 189) = v63;
  OUTLINED_FUNCTION_1005();
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeCreate_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeCreate_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DDC302C()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_560(18);
      break;
    case 2:
      OUTLINED_FUNCTION_68();
      break;
    case 3:
      OUTLINED_FUNCTION_34();
      break;
    case 4:
      OUTLINED_FUNCTION_249();
      break;
    case 5:
    case 6:
      OUTLINED_FUNCTION_263();
      break;
    case 7:
      OUTLINED_FUNCTION_155();
      break;
    case 8:
      OUTLINED_FUNCTION_559(18);
      break;
    default:
      return;
  }
}

uint64_t sub_24DDC31A0@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDC31D0()
{
  sub_24DDE7430();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC3208()
{
  sub_24DDE7430();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_923(v3);
  v5 = *(v0 + 8);
  v6 = *(v0 + 32);
  v123 = *(v0 + 16);
  v124 = v6;
  v7 = *(v0 + 64);
  v125 = *(v0 + 48);
  v126 = v7;
  v103 = *(v0 + 88);
  v104 = *(v0 + 80);
  v8 = *(v0 + 96);
  v100 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 116);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 188);
  v20 = *(v0 + 184);
  v21 = *(v0 + 189);
  v22 = *v2;
  v23 = v2[1];
  v24 = *(v2 + 2);
  v127 = *(v2 + 1);
  v128 = v24;
  v25 = *(v2 + 4);
  v129 = *(v2 + 3);
  v130 = v25;
  v101 = v2[11];
  v102 = v2[10];
  v97 = v2[12];
  v99 = v2[13];
  v98 = *(v2 + 116);
  v94 = v2[15];
  v95 = *(v2 + 28);
  v96 = *(v2 + 128);
  v27 = v2[17];
  v26 = v2[18];
  v29 = v2[19];
  v28 = v2[20];
  v30 = v2[21];
  v31 = v2[22];
  v32 = *(v2 + 188);
  v33 = *(v2 + 46);
  v34 = *(v2 + 189);
  if (v5)
  {
    if (!v23)
    {
      goto LABEL_18;
    }

    v35 = v4 == v22 && v5 == v23;
    if (!v35)
    {
      v90 = v2[18];
      v82 = *(v2 + 188);
      v92 = v12;
      v86 = v2[17];
      v88 = v9;
      v84 = v10;
      v36 = sub_24DE22CA0();
      v10 = v84;
      v9 = v88;
      v27 = v86;
      v26 = v90;
      v12 = v92;
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_18;
  }

  v37 = v123;
  v38 = v127;
  if (!*(&v123 + 1))
  {
    if (!*(&v127 + 1))
    {
      v83 = v8;
      v85 = v10;
      v89 = v9;
      v87 = v27;
      v91 = v26;
      v93 = v12;
      OUTLINED_FUNCTION_1064();
      v115 = v123;
      OUTLINED_FUNCTION_1229();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v45, v46);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_657();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_657();
    sub_24DDE73DC();
LABEL_17:
    v115 = v37;
    OUTLINED_FUNCTION_1229();
    v119 = v38;
    v44 = *(v2 + 3);
    v120 = *(v2 + 2);
    v121 = v44;
    v122 = *(v2 + 4);
    sub_24DDE8DAC(&v115, &unk_27F1B3460);
    goto LABEL_18;
  }

  v115 = v123;
  v39 = *(v0 + 48);
  v116 = *(v0 + 32);
  v117 = v39;
  v118 = *(v0 + 64);
  v111 = v123;
  v112 = v116;
  v113 = v39;
  v114 = v118;
  if (!*(&v127 + 1))
  {
    v107 = v115;
    v108 = v116;
    v109 = v117;
    v110 = v118;
    OUTLINED_FUNCTION_657();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_657();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_657();
    sub_24DDE73DC();
    sub_24DDE6DBC(&v107);
    goto LABEL_17;
  }

  v83 = v8;
  v85 = v10;
  v89 = v9;
  v87 = v27;
  v91 = v26;
  v93 = v12;
  OUTLINED_FUNCTION_1064();
  v40 = *(v2 + 3);
  v108 = *(v2 + 2);
  v109 = v40;
  v110 = *(v2 + 4);
  v107 = v127;
  static Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.== infix(_:_:)();
  v42 = v41;
  v105[0] = v127;
  v105[1] = v108;
  v105[2] = v109;
  v105[3] = v110;
  OUTLINED_FUNCTION_580();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_580();
  sub_24DDE73DC();
  OUTLINED_FUNCTION_580();
  sub_24DDE73DC();
  sub_24DDE6DBC(v105);
  v106[0] = v111;
  v106[1] = v112;
  v106[2] = v113;
  v106[3] = v114;
  sub_24DDE6DBC(v106);
  v107 = v37;
  v43 = *(v0 + 48);
  v108 = *(v0 + 32);
  v109 = v43;
  v110 = *(v0 + 64);
  sub_24DDE8DAC(&v107, &unk_27F1B3458);
  if ((v42 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  v47 = v104 == v102 && v103 == v101;
  if (!v47 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v100)
  {
    OUTLINED_FUNCTION_946();
    v55 = v79;
    v56 = v93;
    v57 = v91;
    v58 = v87;
    v59 = v89;
    v60 = v85;
    if (!v99)
    {
      goto LABEL_18;
    }

    if (v83 != v97 || v48 != v99)
    {
      v62 = v49;
      v80 = v52;
      v81 = v50;
      v63 = v51;
      v64 = v53;
      v65 = v54;
      v66 = sub_24DE22CA0();
      v59 = v89;
      v57 = v91;
      v56 = v93;
      v54 = v65;
      v55 = v79;
      v52 = v80;
      v53 = v64;
      v51 = v63;
      v50 = v81;
      v49 = v62;
      if ((v66 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_946();
    v55 = v79;
    v56 = v93;
    v57 = v91;
    v58 = v87;
    v59 = v89;
    v60 = v85;
    if (v99)
    {
      goto LABEL_18;
    }
  }

  if (v60)
  {
    if (!v98)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v35 = v59 == v95;
    v67 = v98;
    if (!v35)
    {
      v67 = 1;
    }

    if (v67)
    {
      goto LABEL_18;
    }
  }

  if (v56)
  {
    if (!v96)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v68 = v96;
    if (v54 != v94)
    {
      v68 = 1;
    }

    if (v68)
    {
      goto LABEL_18;
    }
  }

  if (v53)
  {
    if (!v57)
    {
      goto LABEL_18;
    }

    if (v52 != v58 || v53 != v57)
    {
      v70 = v49;
      v71 = v50;
      v72 = v51;
      v73 = v55;
      v74 = sub_24DE22CA0();
      v55 = v73;
      v51 = v72;
      v50 = v71;
      v49 = v70;
      if ((v74 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (v57)
  {
    goto LABEL_18;
  }

  if (v49)
  {
    if (!v55)
    {
      goto LABEL_18;
    }

    v75 = v50;
    v76 = v51;
    v77 = sub_24DD85994(v49, v55);
    v51 = v76;
    v50 = v75;
    if ((v77 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v55)
  {
    goto LABEL_18;
  }

  if (v18 && v50 && (v16 != v51 || v18 != v50))
  {
    OUTLINED_FUNCTION_642();
    sub_24DE22CA0();
  }

LABEL_18:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3468, &qword_24DE23600);
  OUTLINED_FUNCTION_27(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_972();
  v10 = *v0;
  v11 = v0[1];
  v12 = *(v0 + 2);
  v43 = *(v0 + 1);
  v44 = v12;
  v13 = *(v0 + 4);
  v45 = *(v0 + 3);
  v46 = v13;
  v39 = v0[10];
  v38 = v0[11];
  v37 = v0[12];
  v36 = v0[13];
  v35 = *(v0 + 28);
  v34 = *(v0 + 116);
  v32 = v0[15];
  v33 = *(v0 + 128);
  v30 = v0[17];
  v31 = v0[18];
  v29 = v0[19];
  v27 = v0[20];
  v28 = v0[21];
  v23 = v0[22];
  v25 = *(v0 + 188);
  v24 = *(v0 + 46);
  v26 = *(v0 + 189);
  v14 = v3[3];
  v15 = v3[4];
  OUTLINED_FUNCTION_153(v3);
  sub_24DDE7430();
  sub_24DE22D50();
  LOBYTE(v41) = 0;
  OUTLINED_FUNCTION_642();
  sub_24DE22BF0();
  if (v1)
  {
    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_464();
    v18(v17);
  }

  else
  {
    v41 = v43;
    v42[0] = v44;
    v42[1] = v45;
    v42[2] = v46;
    v40[79] = 1;
    sub_24DDE73DC();
    sub_24DDE7484();
    OUTLINED_FUNCTION_750();
    sub_24DE22C20();
    OUTLINED_FUNCTION_741();
    sub_24DDE8DAC(v40, &unk_27F1B3458);
    OUTLINED_FUNCTION_613(2);
    OUTLINED_FUNCTION_408();
    OUTLINED_FUNCTION_862();
    sub_24DE22C50();
    OUTLINED_FUNCTION_613(3);
    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_613(5);
    OUTLINED_FUNCTION_862();
    sub_24DE22C40();
    OUTLINED_FUNCTION_613(6);
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_991(&v43 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v19);
    OUTLINED_FUNCTION_724();
    sub_24DE22C20();
    OUTLINED_FUNCTION_613(8);
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_991(v42 + 8);
    sub_24DDE74D8();
    OUTLINED_FUNCTION_750();
    sub_24DE22C20();
    v20 = *(v6 + 8);
    v21 = OUTLINED_FUNCTION_464();
    v22(v21);
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)()
{
  OUTLINED_FUNCTION_438();
  v1 = v0[3];
  v2 = v0[6];
  v21 = v0[2];
  v22 = v0[5];
  v23 = v0[4];
  v24 = v0[7];
  v16 = v0[8];
  v20 = v0[9];
  v30 = v0[10];
  v29 = v0[11];
  v26 = v0[12];
  v31 = v0[13];
  v17 = *(v0 + 28);
  v32 = *(v0 + 116);
  v3 = v0[15];
  v4 = *(v0 + 128);
  v5 = v0[18];
  v6 = v0[19];
  v25 = v0[20];
  v7 = v0[21];
  v27 = v0[22];
  v19 = *(v0 + 188);
  v18 = *(v0 + 46);
  v28 = *(v0 + 189);
  if (v0[1])
  {
    v15 = v0[17];
    v8 = *v0;
    sub_24DE22CE0();
    OUTLINED_FUNCTION_406();
    sub_24DE22AD0();
  }

  else
  {
    sub_24DE22CE0();
  }

  v9 = v5;
  if (v1)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_781();
    sub_24DE22AD0();
    sub_24DE22AD0();
    OUTLINED_FUNCTION_406();
    sub_24DE22AD0();
    v10 = v31;
    sub_24DE22CE0();
    if (v20)
    {
      OUTLINED_FUNCTION_731();
      sub_24DE22AD0();
    }
  }

  else
  {
    sub_24DE22CE0();
    v10 = v31;
  }

  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v10)
  {
    sub_24DE22AD0();
  }

  if (v32)
  {
    sub_24DE22CE0();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (!v4)
    {
LABEL_12:
      sub_24DE22CE0();
      MEMORY[0x253039750](v3);
      if (v9)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  sub_24DE22CE0();
  if (v9)
  {
LABEL_13:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_822();
    sub_24DE22AD0();
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_19:
    sub_24DE22CE0();
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_18:
  sub_24DE22CE0();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_24DE22CE0();
  v11 = OUTLINED_FUNCTION_867();
  sub_24DDE0DB4(v11, v12);
  if (v7)
  {
LABEL_15:
    sub_24DE22CE0();
    sub_24DE22AD0();
    goto LABEL_21;
  }

LABEL_20:
  sub_24DE22CE0();
LABEL_21:
  if (v28)
  {
    return sub_24DE22CE0();
  }

  v13 = v18 | (v19 << 32);
  sub_24DE22CE0();
  if ((v27 & 0x100000000) != 0)
  {
    sub_24DE22CE0();
    if ((v13 & 0x100000000) != 0)
    {
      return sub_24DE22CE0();
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if ((v13 & 0x100000000) != 0)
    {
      return sub_24DE22CE0();
    }
  }

  sub_24DE22CE0();
  return sub_24DE22CF0();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hashValue.getter()
{
  OUTLINED_FUNCTION_796();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, unint64_t a40, unint64_t a41, uint64_t *a42, unint64_t a43, uint64_t *a44, unint64_t a45, uint64_t *a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50, int a51, char a52, unint64_t a53, char a54, uint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, unint64_t a59, unint64_t a60, int a61, char a62, char a63)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1255();
  OUTLINED_FUNCTION_359();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3488, &qword_24DE23608);
  OUTLINED_FUNCTION_18(v80);
  v82 = v81;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_140();
  *(v79 - 112) = 1;
  v86 = v75[3];
  v87 = v75[4];
  v131 = v75;
  OUTLINED_FUNCTION_250(v75);
  sub_24DDE7430();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097();
  if (v76)
  {
    *(v79 - 72) = v76;
    OUTLINED_FUNCTION_583();
    v130 = 0;
    v88 = 0;
    OUTLINED_FUNCTION_929();
    v89 = 0;
    v90 = 0;
    LODWORD(v129) = 0;
    OUTLINED_FUNCTION_623();
  }

  else
  {
    LOBYTE(a64) = 0;
    OUTLINED_FUNCTION_417();
    v91 = sub_24DE22B40();
    v127 = v92;
    *(v79 - 177) = 1;
    sub_24DDE752C();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v129 = v91;
    v124 = *(v79 - 168);
    v125 = *(v79 - 176);
    v87 = *(v79 - 160);
    v93 = *(v79 - 152);
    v123 = *(v79 - 144);
    v121 = v78;
    v122 = *(v79 - 136);
    v89 = *(v79 - 128);
    v126 = *(v79 - 120);
    *(v79 - 256) = 0u;
    *(v79 - 240) = 0u;
    *(v79 - 224) = 0u;
    *(v79 - 208) = 0u;
    sub_24DDE8DAC(v79 - 256, &unk_27F1B3458);
    OUTLINED_FUNCTION_353(2);
    v130 = v87;
    sub_24DE22BA0();
    v128 = v94;
    OUTLINED_FUNCTION_353(3);
    v120 = sub_24DE22B40();
    v135 = v95;
    OUTLINED_FUNCTION_353(4);
    v96 = sub_24DE22B80();
    *(v79 - 100) = BYTE4(v96) & 1;
    LOBYTE(a64) = 5;
    v119 = v96;
    OUTLINED_FUNCTION_417();
    v118 = sub_24DE22B90();
    OUTLINED_FUNCTION_1188(v118, v97);
    OUTLINED_FUNCTION_353(6);
    v116 = sub_24DE22B40();
    v117 = v93;
    v134 = v98;
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    LOBYTE(a37) = 7;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v99);
    OUTLINED_FUNCTION_405();
    sub_24DE22B70();
    v133 = a64;
    OUTLINED_FUNCTION_353(8);
    v100 = sub_24DE22B40();
    *(v79 - 72) = 0;
    v115 = v100;
    v132 = v101;
    LOBYTE(STACK[0x25F]) = 9;
    sub_24DDE7580();
    OUTLINED_FUNCTION_227();
    v102 = *(v79 - 72);
    sub_24DE22B70();
    *(v79 - 72) = v102;
    if (!v102)
    {
      v105 = OUTLINED_FUNCTION_189();
      v106(v105);
      v107 = STACK[0x268];
      v112 = STACK[0x268];
      v108 = STACK[0x26C];
      v113 = STACK[0x26C];
      v114 = STACK[0x260];
      *(v79 - 112) = STACK[0x26D];
      a37 = v129;
      a38 = v127;
      a39 = v125;
      a40 = v124;
      a41 = v87;
      a42 = v117;
      a43 = v123;
      a44 = v122;
      a45 = v89;
      a46 = v126;
      a47 = 0;
      a48 = v128;
      a49 = v120;
      a50 = v135;
      a51 = v119;
      a52 = *(v79 - 100);
      v109 = a52;
      a53 = v118;
      a54 = *(v79 - 104);
      v110 = a54;
      a55 = v116;
      a56 = v134;
      a57 = v133;
      a58 = v115;
      a59 = v132;
      a60 = v114;
      a62 = v108;
      a61 = v107;
      a63 = *(v79 - 112);
      v111 = a63;
      memcpy(v121, &a37, 0xBEuLL);
      sub_24DDE75D4(&a37, &a64);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      a64 = v129;
      a65 = v127;
      a66 = v125;
      a67 = v124;
      a68 = v87;
      a69 = v117;
      a70 = v123;
      a71 = v122;
      a72 = v89;
      a73 = v126;
      a74 = 0;
      a75 = v128;
      STACK[0x200] = v120;
      STACK[0x208] = v135;
      LODWORD(STACK[0x210]) = v119;
      LOBYTE(STACK[0x214]) = v109;
      LOWORD(STACK[0x215]) = *(v79 - 103);
      LOBYTE(STACK[0x217]) = *(v79 - 101);
      STACK[0x218] = v118;
      LOBYTE(STACK[0x220]) = v110;
      LODWORD(STACK[0x221]) = *(v79 - 111);
      LODWORD(STACK[0x224]) = *(v79 - 108);
      STACK[0x228] = v116;
      STACK[0x230] = v134;
      STACK[0x238] = v133;
      STACK[0x240] = v115;
      STACK[0x248] = v132;
      STACK[0x250] = v114;
      LOBYTE(STACK[0x25C]) = v113;
      LODWORD(STACK[0x258]) = v112;
      LOBYTE(STACK[0x25D]) = v111;
      sub_24DDE760C(&a64);
      goto LABEL_7;
    }

    v103 = OUTLINED_FUNCTION_189();
    v104(v103);
    OUTLINED_FUNCTION_1018();
    v75 = v122;
    v77 = v123;
    v90 = v126;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v131);

  a64 = v87;
  a65 = v82;
  a66 = v130;
  a67 = v88;
  a68 = v77;
  a69 = v75;
  a70 = v89;
  a71 = v90;
  sub_24DDE8DAC(&a64, &unk_27F1B3458);
  if (v129)
  {
  }

LABEL_7:
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC466C()
{
  sub_24DE22CC0();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.result.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  *a1 = v1[7];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.result.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_977(a1);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);

  result = v6;
  *(v1 + 56) = v6;
  *(v1 + 72) = v2;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.init(status:message:alert:result:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X4>, uint64_t a3@<X8>)
{
  v11 = *a2;
  v4 = a2[1].n128_u64[0];
  OUTLINED_FUNCTION_917(a1, a3);
  *(a3 + 4) = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  v8 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v8, v9);
  OUTLINED_FUNCTION_219();
  result = v11;
  *(a3 + 56) = v11;
  *(a3 + 72) = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_GetCompletedChallenges_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24DDC487C()
{
  sub_24DDE763C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC48B4()
{
  sub_24DDE763C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B34A0, &qword_24DE23610);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v8 = *v0;
  OUTLINED_FUNCTION_29();
  v15 = v0[7];
  v16 = v0[8];
  v17 = v0[9];
  v9 = v3[3];
  v10 = v3[4];
  OUTLINED_FUNCTION_255(v3);
  sub_24DDE763C();
  OUTLINED_FUNCTION_375();
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_404();
  if (!v1)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_727();
    sub_24DD7639C(v11, v12);
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_629();
    sub_24DDE5D6C();

    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_376();
    sub_24DE22C70();
  }

  v13 = OUTLINED_FUNCTION_180();
  v14(v13);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.hash(into:)()
{
  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_900(v4);
  if (!v6)
  {
    OUTLINED_FUNCTION_1163(v5);
    sub_24DE22CF0();
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_4:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_584();
    sub_24DE22AD0();
    goto LABEL_7;
  }

  sub_24DE22CE0();
  if (v3)
  {
    goto LABEL_4;
  }

LABEL_6:
  sub_24DE22CE0();
LABEL_7:
  if (v2 == 1)
  {
    goto LABEL_13;
  }

  sub_24DE22CE0();
  if (v2)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_426();
    sub_24DE22AD0();
    if (v1)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_24DE22CE0();
    if (!v0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_24DE22CE0();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  if (!v0)
  {
LABEL_11:
    sub_24DE22CE0();
    goto LABEL_15;
  }

LABEL_14:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_540();
  sub_24DE22AD0();
LABEL_15:
  OUTLINED_FUNCTION_407();
  OUTLINED_FUNCTION_549();

  return sub_24DDE0ED0(v7, v8);
}

uint64_t sub_24DDC4E64()
{
  OUTLINED_FUNCTION_588();
  v0(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_645();
  a20 = v23;
  a21 = v24;
  OUTLINED_FUNCTION_455();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B34B0, &qword_24DE23618);
  OUTLINED_FUNCTION_27(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_238();
  v31 = v21[3];
  v32 = v21[4];
  OUTLINED_FUNCTION_168();
  sub_24DDE763C();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v22)
  {
    OUTLINED_FUNCTION_583();
    OUTLINED_FUNCTION_321();

    sub_24DD763E4(0, 1);
  }

  else
  {
    OUTLINED_FUNCTION_1247();
    OUTLINED_FUNCTION_494();
    v33 = sub_24DE22B80();
    v34 = v33;
    OUTLINED_FUNCTION_212(v33);
    OUTLINED_FUNCTION_861(v35);
    OUTLINED_FUNCTION_494();
    v36 = sub_24DE22B40();
    OUTLINED_FUNCTION_816(v37, &a17);
    LOBYTE(v54[0]) = v38;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_581();
    OUTLINED_FUNCTION_494();
    sub_24DE22B70();
    v49 = v36;
    v50 = v34;
    v51 = v26;
    v40 = v55;
    v39 = v56;
    v41 = v57;
    v42 = v58;
    v43 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v43, v44);
    OUTLINED_FUNCTION_598();
    sub_24DDE5E68();
    OUTLINED_FUNCTION_581();
    OUTLINED_FUNCTION_494();
    sub_24DE22BC0();
    v45 = OUTLINED_FUNCTION_482(&a16);
    v46(v45, v27);
    v48 = v64;
    v47 = v65;
    LODWORD(v54[0]) = v50;
    v52 = a11;
    BYTE4(v54[0]) = a11;
    v54[1] = v49;
    v54[2] = v53;
    v54[3] = v55;
    v54[4] = v56;
    v54[5] = v57;
    v54[6] = v58;
    v54[7] = v64;
    v54[8] = v65;
    v54[9] = v66;
    memcpy(v51, v54, 0x50uLL);
    sub_24DDE7690(v54, &v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    LODWORD(v55) = v50;
    BYTE4(v55) = v52;
    v56 = v49;
    v57 = v53;
    v58 = v40;
    v59 = v39;
    v60 = v41;
    v61 = v42;
    v62 = v48;
    v63 = v47;
    OUTLINED_FUNCTION_860(&a9);
    sub_24DDE76C8(&v55);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC5214()
{
  OUTLINED_FUNCTION_855();
  v0(v2);
  return sub_24DE22D10();
}

unint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_TestOption.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000021;
  }

  else
  {
    result = 0xD000000000000025;
  }

  *v0;
  return result;
}

unint64_t sub_24DDC5314@<X0>(unint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_TestOption.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDC5344()
{
  sub_24DDE76F8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC537C()
{
  sub_24DDE76F8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO54Com_apple_gk_data_challenge_ChallengeAccept_TestOptionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
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

  if (*(a1 + 12))
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v5 = *(a2 + 12);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

void sub_24DDC5444()
{
  OUTLINED_FUNCTION_645();
  v21 = v2;
  v4 = v3;
  v6 = OUTLINED_FUNCTION_632(v3, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_100();
  v12 = *v0;
  v13 = *(v0 + 4);
  v20 = v0[2];
  v19 = *(v0 + 12);
  v14 = v4[3];
  v15 = v4[4];
  v16 = OUTLINED_FUNCTION_255(v4);
  v21(v16);
  OUTLINED_FUNCTION_507();
  sub_24DE22D50();
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v1)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_197();
    sub_24DE22C30();
  }

  v17 = OUTLINED_FUNCTION_213();
  v18(v17);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO54Com_apple_gk_data_challenge_ChallengeAccept_TestOptionV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_192();
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  if (v3 == 1)
  {
    sub_24DE22CE0();
    if (!v2)
    {
LABEL_3:
      sub_24DE22CE0();
      return sub_24DE22CF0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_1163(v0);
    sub_24DE22CF0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_24DE22CE0();
}

void _s22GameCenterServerClient10ComponentsO7SchemasO54Com_apple_gk_data_challenge_ChallengeAccept_TestOptionV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_1100();
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_1035();
  if (v5)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1306();
  }

  sub_24DE22CE0();
  if (!v4)
  {
    OUTLINED_FUNCTION_1165();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void sub_24DDC56B0()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  OUTLINED_FUNCTION_1242();
  v22 = v4;
  v7 = OUTLINED_FUNCTION_632(v5, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_24(v9);
  v21 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_138();
  v14 = v0[3];
  v15 = v0[4];
  v16 = OUTLINED_FUNCTION_255(v0);
  v3(v16);
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (!v1)
  {
    OUTLINED_FUNCTION_336();
    sub_24DE22B80();
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_529();
    v17 = sub_24DE22B80();
    v18 = *(v21 + 8);
    v19 = OUTLINED_FUNCTION_532();
    v20(v19);
    OUTLINED_FUNCTION_975();
    *(v22 + 8) = v17;
    *(v22 + 12) = BYTE4(v17) & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void sub_24DDC582C()
{
  OUTLINED_FUNCTION_1100();
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1035();
  if (v5)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1306();
  }

  sub_24DE22CE0();
  if (!v4)
  {
    OUTLINED_FUNCTION_1165();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_24DDC59B4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 56), sizeof(__dst));
  memcpy(a1, (v1 + 56), 0x101uLL);
  return sub_24DDE73DC();
}

void *Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.result.setter()
{
  OUTLINED_FUNCTION_564();
  memcpy(v2, (v1 + 56), 0x101uLL);
  sub_24DDE8DAC(&v4, &unk_27F1B30E8);
  return memcpy((v1 + 56), v0, 0x101uLL);
}

void *sub_24DDC5A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_24DDE57A4(v16);
  memcpy((a6 + 56), v16, 0x101uLL);
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v12 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v12, v13);
  v14 = *a4;
  *(a6 + 40) = a4[1];
  *(a6 + 24) = v14;
  memcpy(__dst, (a6 + 56), 0x101uLL);
  sub_24DDE8DAC(__dst, &unk_27F1B30E8);
  return memcpy((a6 + 56), a5, 0x101uLL);
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeAccept_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = 0x746C75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDC5C00(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_24DD78828() & 1;
}

uint64_t sub_24DDC5CAC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDC5CDC()
{
  sub_24DDE774C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC5D14()
{
  sub_24DDE774C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void sub_24DDC5D50()
{
  OUTLINED_FUNCTION_659();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 4);
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = *(v2 + 4);
  v49 = *(v2 + 3);
  v50 = *(v2 + 5);
  v51 = *(v2 + 6);
  memcpy(__dst, v2 + 14, sizeof(__dst));
  v8 = *v1;
  v9 = *(v1 + 4);
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v45 = *(v1 + 3);
  v46 = *(v1 + 5);
  v47 = *(v1 + 4);
  v48 = *(v1 + 6);
  memcpy(__src, v1 + 14, sizeof(__src));
  if (v4)
  {
    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_8:
    if (v6)
    {
      if (!v10)
      {
        goto LABEL_32;
      }

      if (v5 != v11 || v6 != v10)
      {
        OUTLINED_FUNCTION_457();
        OUTLINED_FUNCTION_641();
        if ((sub_24DE22CA0() & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v10)
    {
      goto LABEL_32;
    }

    if (v7 == 1)
    {
      v14 = OUTLINED_FUNCTION_625();
      sub_24DD7639C(v14, v15);
      if (v47 == 1)
      {
        OUTLINED_FUNCTION_911();
        sub_24DD7639C(v16, v17);
        v18 = OUTLINED_FUNCTION_299();
        sub_24DD763E4(v18, v19);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_506();
      OUTLINED_FUNCTION_911();
      sub_24DD7639C(v26, v27);
    }

    else
    {
      *v57 = v49;
      *&v57[8] = v7;
      *&v57[16] = v50;
      *&v57[24] = v51;
      if (v47 != 1)
      {
        v55[0] = v45;
        v55[1] = v47;
        v55[2] = v46;
        v55[3] = v48;
        v32 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)(v57, v55);
        v33 = OUTLINED_FUNCTION_96();
        sub_24DD7639C(v33, v34);
        OUTLINED_FUNCTION_506();
        OUTLINED_FUNCTION_911();
        sub_24DD7639C(v35, v36);
        v37 = OUTLINED_FUNCTION_96();
        sub_24DD7639C(v37, v38);

        v39 = OUTLINED_FUNCTION_96();
        sub_24DD763E4(v39, v40);
        if ((v32 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_25:
        memcpy(v57, __dst, 0x101uLL);
        memcpy(&v57[264], __src, 0x101uLL);
        memcpy(v58, __dst, 0x101uLL);
        if (sub_24DDE57AC(v58) == 1)
        {
          memcpy(v55, &v57[264], 0x101uLL);
          if (sub_24DDE57AC(v55) == 1)
          {
            OUTLINED_FUNCTION_1167(v56);
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC();
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC();
            OUTLINED_FUNCTION_444();
            sub_24DDE8DAC(v41, v42);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_377();
          sub_24DDE73DC();
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC();
        }

        else
        {
          OUTLINED_FUNCTION_1167(v56);
          memcpy(v55, &v57[264], 0x101uLL);
          if (sub_24DDE57AC(v55) != 1)
          {
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC();
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC();
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC();
            static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.== infix(_:_:)();
            memcpy(v52, &v57[264], 0x101uLL);
            sub_24DDE57C4(v52);
            OUTLINED_FUNCTION_1167(v53);
            sub_24DDE57C4(v53);
            OUTLINED_FUNCTION_1167(v54);
            OUTLINED_FUNCTION_444();
            sub_24DDE8DAC(v43, v44);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_1167(v54);
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC();
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC();
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC();
          sub_24DDE57C4(v54);
        }

        memcpy(v55, v57, 0x209uLL);
        sub_24DDE8DAC(v55, &unk_27F1B30F0);
        goto LABEL_32;
      }

      v20 = OUTLINED_FUNCTION_96();
      sub_24DD7639C(v20, v21);
      OUTLINED_FUNCTION_911();
      sub_24DD7639C(v22, v23);
      v24 = OUTLINED_FUNCTION_96();
      sub_24DD7639C(v24, v25);
    }

    v28 = OUTLINED_FUNCTION_96();
    sub_24DD763E4(v28, v29);
    OUTLINED_FUNCTION_506();
    OUTLINED_FUNCTION_911();
    sub_24DD763E4(v30, v31);
    goto LABEL_32;
  }

  if (v3 == v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_32:
  OUTLINED_FUNCTION_653();
}

void sub_24DDC61C4()
{
  OUTLINED_FUNCTION_645();
  v32 = v2;
  v4 = v3;
  v6 = OUTLINED_FUNCTION_632(v3, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_27(v8);
  v33 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_238();
  v31 = *v0;
  v13 = *(v0 + 4);
  v29 = *(v0 + 2);
  v30 = *(v0 + 1);
  v27 = *(v0 + 4);
  v28 = *(v0 + 3);
  v25 = *(v0 + 6);
  v26 = *(v0 + 5);
  memcpy(v36, v0 + 14, sizeof(v36));
  v15 = *(v4 + 24);
  v14 = *(v4 + 32);
  v16 = OUTLINED_FUNCTION_152();
  v32(v16);
  sub_24DE22D50();
  LOBYTE(v35[0]) = 0;
  LOBYTE(v34[0]) = v13;
  sub_24DE22C30();
  if (v1)
  {
    v17 = *(v33 + 8);
    v18 = OUTLINED_FUNCTION_406();
    v19(v18);
  }

  else
  {
    sub_24DE22BF0();
    OUTLINED_FUNCTION_606();
    v35[2] = v26;
    v35[3] = v25;
    LOBYTE(v34[0]) = 2;
    sub_24DD7639C(v20, v21);
    sub_24DD87138();
    sub_24DE22C20();
    sub_24DD763E4(v28, v27);
    memcpy(v35, v36, 0x101uLL);
    OUTLINED_FUNCTION_598();
    sub_24DDE73DC();
    sub_24DDE5848();
    OUTLINED_FUNCTION_1015();
    sub_24DE22C20();
    memcpy(v34, v35, 0x101uLL);
    sub_24DDE8DAC(v34, &unk_27F1B30E8);
    v22 = *(v33 + 8);
    v23 = OUTLINED_FUNCTION_406();
    v24(v23);
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void sub_24DDC6438()
{
  OUTLINED_FUNCTION_659();
  v11[10] = v2;
  v11[11] = v3;
  OUTLINED_FUNCTION_1255();
  OUTLINED_FUNCTION_734();
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  if (*(v1 + 4) == 1)
  {
    OUTLINED_FUNCTION_1001();
    if (v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_963();
      OUTLINED_FUNCTION_606();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *v0;
    OUTLINED_FUNCTION_963();
    sub_24DE22CF0();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_1001();
LABEL_6:
  if (v6 != 1)
  {
    OUTLINED_FUNCTION_963();
    if (v6)
    {
      OUTLINED_FUNCTION_963();
      sub_24DE22AD0();
      if (v9)
      {
LABEL_9:
        OUTLINED_FUNCTION_963();
        OUTLINED_FUNCTION_440();
        sub_24DE22AD0();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1001();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }

  OUTLINED_FUNCTION_1001();
LABEL_12:
  memcpy(v13, v0 + 14, 0x101uLL);
  if (sub_24DDE57AC(v13) == 1)
  {
    OUTLINED_FUNCTION_1001();
  }

  else
  {
    OUTLINED_FUNCTION_963();
    memcpy(v11, v0 + 14, 0x101uLL);
    sub_24DDE589C(v11, v12);
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.hash(into:)();
    memcpy(v12, v0 + 14, 0x101uLL);
    sub_24DDE57C4(v12);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t sub_24DDC6584()
{
  OUTLINED_FUNCTION_588();
  v0(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_645();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B34E0, &qword_24DE23638);
  OUTLINED_FUNCTION_27(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_660();
  sub_24DDE57A4(v44);
  memcpy(v43, v44, 0x101uLL);
  v24 = v15[3];
  v25 = v15[4];
  OUTLINED_FUNCTION_153(v15);
  sub_24DDE774C();
  OUTLINED_FUNCTION_658();
  OUTLINED_FUNCTION_617();
  sub_24DE22D30();
  if (v12)
  {
    OUTLINED_FUNCTION_612();
    OUTLINED_FUNCTION_491();
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v38 = 0;
    v39 = a12;
    v40 = v13;
    v41 = v17;
    v42 = 0;
    v32 = OUTLINED_FUNCTION_362();
    v33 = v43;
  }

  else
  {
    OUTLINED_FUNCTION_526();
    v26 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v26);
    LOBYTE(v38) = v27;
    OUTLINED_FUNCTION_526();
    sub_24DE22B40();
    v36[0] = 2;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_721();
    v28 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v28, v29);
    OUTLINED_FUNCTION_598();
    sub_24DDE5904();
    OUTLINED_FUNCTION_721();
    v30 = OUTLINED_FUNCTION_352();
    v31(v30);
    memcpy(v34, v37, 0x101uLL);
    memcpy(v35, v43, 0x101uLL);
    sub_24DDE8DAC(v35, &unk_27F1B30E8);
    OUTLINED_FUNCTION_650();
    memcpy(v17, v36, 0x139uLL);
    sub_24DDE77D0(v36, &v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v38 = v13;
    v39 = a10;
    v40 = v20;
    v41 = v18;
    v42 = v15;
    v32 = OUTLINED_FUNCTION_362();
    v33 = v34;
  }

  memcpy(v32, v33, 0x101uLL);
  sub_24DDE77A0(&v38);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC6910()
{
  OUTLINED_FUNCTION_855();
  v0(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.playerId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.bundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_24DDC6A44()
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request._TypePayload.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 7237495;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_GetCompletedChallenges_Request::_TypePayload_optional sub_24DDC6AF0@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_GetCompletedChallenges_Request::_TypePayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request._TypePayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_24DDC6B20@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request._TypePayload.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.testOption.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  OUTLINED_FUNCTION_567(a1);
}

int *Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.testOption.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 40) = *(result + 4);
  *(v1 + 36) = v2;
  *(v1 + 41) = v3;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.init(playerId:bundleId:_type:testOption:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  v8 = *(a6 + 4);
  v9 = *(a6 + 5);
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 40) = v8;
  *(a7 + 36) = v7;
  *(a7 + 41) = v9;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_GetCompletedChallenges_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.CodingKeys.stringValue.getter()
{
  result = 0x692D726579616C70;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_65();
      break;
    case 2:
      result = OUTLINED_FUNCTION_897();
      break;
    case 3:
      result = 0x74706F2D74736574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDC6DFC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDC6E2C()
{
  sub_24DDE7808();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC6E64()
{
  sub_24DDE7808();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.== infix(_:_:)()
{
  OUTLINED_FUNCTION_628();
  v1 = OUTLINED_FUNCTION_281(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v17 = *(v3 + 40);
  v16 = *(v3 + 36);
  v7 = *(v3 + 41);
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 36);
  v13 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v14 = *(v2 + 41);
  if (!v13 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v5)
  {
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_24DD77C24(v6, v10);
    goto LABEL_16;
  }

  if (v8)
  {
    if (v4 == v9 && v5 == v8)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_656();
    if (sub_24DE22CA0())
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B34E8, &qword_24DE23640);
  OUTLINED_FUNCTION_24(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v8 = *v0;
  v9 = v0[1];
  v18 = v0[3];
  v19 = v0[2];
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v15 = *(v0 + 9);
  v14 = *(v0 + 41);
  v10 = v3[3];
  v11 = v3[4];
  OUTLINED_FUNCTION_153(v3);
  sub_24DDE7808();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_820();
  sub_24DE22C50();
  if (!v1)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    sub_24DDE785C();
    OUTLINED_FUNCTION_110();
    sub_24DE22C70();
    OUTLINED_FUNCTION_1217(v15 | (v16 << 32));
    OUTLINED_FUNCTION_843();
    sub_24DDE78B0();
    OUTLINED_FUNCTION_166();
    sub_24DE22C20();
  }

  v12 = OUTLINED_FUNCTION_180();
  v13(v12);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)()
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_987();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 36);
  v5 = *(v0 + 41);
  sub_24DE22AD0();
  if (v1)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
  }

  sub_24DE22AD0();

  if (v5 || (OUTLINED_FUNCTION_878(), ((v4 | (v3 << 32)) & 0x100000000) != 0))
  {
    OUTLINED_FUNCTION_887();
  }

  else
  {
    OUTLINED_FUNCTION_878();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_999();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hashValue.getter()
{
  OUTLINED_FUNCTION_654();
  v0 = sub_24DE22CC0();
  OUTLINED_FUNCTION_856(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3508, &qword_24DE23648);
  OUTLINED_FUNCTION_18(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_140();
  v21 = v12[3];
  v22 = v12[4];
  OUTLINED_FUNCTION_250(v12);
  sub_24DDE7808();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_405();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_1026();
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_365();
    v27 = sub_24DE22B40();
    v28 = v23;
    OUTLINED_FUNCTION_554();
    sub_24DDE7904();
    OUTLINED_FUNCTION_175();
    sub_24DE22BC0();
    OUTLINED_FUNCTION_843();
    sub_24DDE7958();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v24 = *(v17 + 8);
    v25 = OUTLINED_FUNCTION_380();
    v26(v25);
    *v14 = v22;
    *(v14 + 8) = v21;
    *(v14 + 16) = v27;
    *(v14 + 24) = v28;
    *(v14 + 32) = a12;
    *(v14 + 40) = v30;
    *(v14 + 36) = v29;
    *(v14 + 41) = v31;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC74B0()
{
  OUTLINED_FUNCTION_654();
  v0 = sub_24DE22CC0();
  OUTLINED_FUNCTION_856(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)();
  return sub_24DE22D10();
}

uint64_t sub_24DDC7540()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result = OUTLINED_FUNCTION_798();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_24DDC75A4()
{
  sub_24DDE79AC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC75DC()
{
  sub_24DDE79AC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO50Com_apple_gk_data_challenge_ChallengeLeave_RequestV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_281(a1);
  OUTLINED_FUNCTION_1019(v5);
  v8 = v8 && v6 == v7;
  if (v8 || (sub_24DE22CA0(), result = OUTLINED_FUNCTION_696(), (v10 & 1) != 0))
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_370();
      OUTLINED_FUNCTION_489();

      return sub_24DE22CA0();
    }
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Request.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3520, &qword_24DE23650);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  v7 = *v0;
  v8 = v0[1];
  OUTLINED_FUNCTION_737();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_153(v2);
  sub_24DDE79AC();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_139();
  sub_24DE22C50();
  if (!v1)
  {
    OUTLINED_FUNCTION_121();
    sub_24DE22C50();
  }

  v11 = OUTLINED_FUNCTION_213();
  v12(v11);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO50Com_apple_gk_data_challenge_ChallengeLeave_RequestV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DE22AD0();
  OUTLINED_FUNCTION_547();

  return sub_24DE22AD0();
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO50Com_apple_gk_data_challenge_ChallengeLeave_RequestV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_454();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

void sub_24DDC7878()
{
  OUTLINED_FUNCTION_645();
  v4 = v3;
  OUTLINED_FUNCTION_1242();
  v21 = v5;
  v8 = OUTLINED_FUNCTION_632(v6, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_24(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_138();
  v14 = v0[3];
  v15 = v0[4];
  v16 = OUTLINED_FUNCTION_255(v0);
  v4(v16);
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    OUTLINED_FUNCTION_578();
    OUTLINED_FUNCTION_310();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_807();
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_439();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_1036();
    v20 = v17;
    v18 = OUTLINED_FUNCTION_532();
    v19(v18);
    *v21 = v14;
    v21[1] = 0;
    v21[2] = v20;
    v21[3] = v1;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC7A28()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DE22CC0();
  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_454();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request_TestOption.CodingKeys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request_TestOption.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void sub_24DDC7B4C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request_TestOption.CodingKeys.init(rawValue:)();
}

uint64_t sub_24DDC7BA8()
{
  sub_24DDE7A00();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC7BE0()
{
  sub_24DDE7A00();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void sub_24DDC7C5C()
{
  OUTLINED_FUNCTION_645();
  v20 = v3;
  v5 = v4;
  v7 = OUTLINED_FUNCTION_632(v4, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_23(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_140();
  v19 = *v1;
  v15 = *(v1 + 4);
  v16 = v5[3];
  v17 = v5[4];
  v18 = OUTLINED_FUNCTION_255(v5);
  v20(v18);
  OUTLINED_FUNCTION_1222();
  OUTLINED_FUNCTION_507();
  sub_24DE22D50();
  sub_24DE22C30();
  (*(v11 + 8))(v2, v0);
  OUTLINED_FUNCTION_1031();
  OUTLINED_FUNCTION_644();
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO42Profile_GetSuggestedPlayerNickname_RequestV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_192();
  if (v1 == 1)
  {
    return sub_24DE22CE0();
  }

  v3 = *v0;
  sub_24DE22CE0();
  return sub_24DE22CF0();
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO42Profile_GetSuggestedPlayerNickname_RequestV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  OUTLINED_FUNCTION_796();
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_1119();
  }

  else
  {
    OUTLINED_FUNCTION_915();
    OUTLINED_FUNCTION_1165();
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDC7E74()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_24DE22CC0();
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_1119();
  }

  else
  {
    OUTLINED_FUNCTION_915();
    OUTLINED_FUNCTION_1165();
  }

  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_GameCenterPlayerInvite.challengeId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_GameCenterPlayerInvite.CodingKeys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_GameCenterPlayerInvite.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void sub_24DDC8040(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_GameCenterPlayerInvite.CodingKeys.init(rawValue:)();
}

uint64_t sub_24DDC8074()
{
  sub_24DDE7A54();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC80AC()
{
  sub_24DDE7A54();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_24DDC80E8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_281(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_836();
  }
}

void sub_24DDC8150()
{
  OUTLINED_FUNCTION_645();
  v21 = v1;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_632(v2, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_27(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_140();
  v13 = v0[1];
  v20 = *v0;
  v15 = v3[3];
  v14 = v3[4];
  v16 = OUTLINED_FUNCTION_301(v3);
  v21(v16);
  OUTLINED_FUNCTION_1222();
  sub_24DE22D50();
  sub_24DE22C50();
  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_384();
  v19(v18);
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_GameCenterPlayerInvite.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DE22AD0();
}

uint64_t sub_24DDC8268()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_444();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

void sub_24DDC82DC()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  OUTLINED_FUNCTION_1242();
  v24 = v4;
  v7 = OUTLINED_FUNCTION_632(v5, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_24(v9);
  v23 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_238();
  v14 = v0[3];
  v15 = v0[4];
  v16 = OUTLINED_FUNCTION_255(v0);
  v3(v16);
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (!v1)
  {
    v17 = sub_24DE22BA0();
    v19 = v18;
    v20 = *(v23 + 8);
    v21 = OUTLINED_FUNCTION_539();
    v22(v21);
    *v24 = v17;
    v24[1] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_1259();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDC844C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DE22CC0();
  OUTLINED_FUNCTION_444();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeLeave_Response::ResponseStatusPayload_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.ResponseStatusPayload.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.ResponseStatusPayload.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_761(17);
      break;
    case 2:
      OUTLINED_FUNCTION_155();
      break;
    default:
      return;
  }
}

uint64_t sub_24DDC8570(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_24DD78A98() & 1;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeLeave_Response::ResponseStatusPayload_optional sub_24DDC8594@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeLeave_Response::ResponseStatusPayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.ResponseStatusPayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_24DDC85C4(void *a1@<X8>)
{
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.ResponseStatusPayload.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.message.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24DD7639C(v2, v3);
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.alert.setter(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  sub_24DD763E4(v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v6;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.init(responseStatus:status:message:alert:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 4) = a2;
  *(a6 + 8) = BYTE4(a2) & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v8, v9);
  result = *a5;
  v11 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v11;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeLeave_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.CodingKeys.stringValue.getter()
{
  result = 0x65736E6F70736572;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_834();
      break;
    case 2:
      result = OUTLINED_FUNCTION_16();
      break;
    case 3:
      result = 0x7472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDC89F0@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDC8A20()
{
  sub_24DDE7AA8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDC8A58()
{
  sub_24DDE7AA8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.encode(to:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1177();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3568, &qword_24DE23680);
  OUTLINED_FUNCTION_23(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v8 = *v0;
  v16 = *(v0 + 1);
  v17 = v0[8];
  OUTLINED_FUNCTION_1180();
  v14 = *(v0 + 6);
  v15 = *(v0 + 7);
  OUTLINED_FUNCTION_111();
  sub_24DDE7AA8();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  sub_24DDE7AFC();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_197();
  sub_24DE22C20();
  if (!v1)
  {
    OUTLINED_FUNCTION_635(v17);
    OUTLINED_FUNCTION_197();
    sub_24DE22C30();
    OUTLINED_FUNCTION_565(2);
    OUTLINED_FUNCTION_408();
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_629();
    sub_24DD7639C(v9, v10);
    sub_24DD87138();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_197();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
  }

  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_446();
  v13(v12);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_438();
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (*v0 == 4)
  {
    sub_24DE22CE0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24DE22CE0();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_24DE22CE0();
  sub_24DD7DAA0();
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24DE22CE0();
  sub_24DE22CF0();
  if (v4)
  {
LABEL_4:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    goto LABEL_8;
  }

LABEL_7:
  sub_24DE22CE0();
LABEL_8:
  if (v5 == 1)
  {
    goto LABEL_15;
  }

  sub_24DE22CE0();
  if (!v5)
  {
    sub_24DE22CE0();
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_15:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_653();
    return;
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_593();
  sub_24DE22AD0();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_11:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_653();

  sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.init(from:)()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3580, &qword_24DE23688);
  OUTLINED_FUNCTION_27(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_91();
  v44 = v8;
  v9 = v0[3];
  v10 = v0[4];
  OUTLINED_FUNCTION_153(v0);
  sub_24DDE7AA8();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v1)
  {
    OUTLINED_FUNCTION_612();
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v36[0] = 4;
    v37 = 0;
    v38 = v44;
    v39 = v3;
    v40 = v10;
    v41 = xmmword_24DE22F30;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    sub_24DDE7B80();
    OUTLINED_FUNCTION_581();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v25 = v36[0];
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_436();
    v11 = sub_24DE22B80();
    OUTLINED_FUNCTION_1270();
    v45 = v12 & 1;
    OUTLINED_FUNCTION_634(2);
    OUTLINED_FUNCTION_436();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    OUTLINED_FUNCTION_598();
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_581();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v13 = OUTLINED_FUNCTION_305();
    v14(v13);
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v19, v20);
    LOBYTE(v26) = v36[0];
    DWORD1(v26) = v11;
    BYTE8(v26) = v45;
    *&v27 = v3;
    *(&v27 + 1) = v10;
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    OUTLINED_FUNCTION_733();
    v21[2] = v22;
    v21[3] = v23;
    v24 = v27;
    *v21 = v26;
    v21[1] = v24;
    sub_24DDE7BD4(&v26, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v36[0] = v25;
    v37 = v11;
    v38 = v45;
    v39 = v3;
    v40 = v10;
    *&v41 = v15;
    *(&v41 + 1) = v16;
    v42 = v17;
    v43 = v18;
  }

  sub_24DDE7B50(v36);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62);
  return sub_24DD7125C(v18, v19);
}

void *Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE7C0C(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.Body.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_360(a1, a2);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      if (v2 == v5 && v3 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_595();
      if (sub_24DE22CA0())
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.Body.hash(into:)()
{
  OUTLINED_FUNCTION_438();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x253039720](0);
  if (!v2)
  {
    sub_24DE22CE0();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_406();
  sub_24DE22AD0();
  if (!v4)
  {
    return sub_24DE22CE0();
  }

LABEL_3:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();

  return sub_24DE22AD0();
}

void Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.Body.hashValue.getter()
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_619();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_965();
  sub_24DE22CE0();
  if (v1)
  {
    OUTLINED_FUNCTION_519();
    sub_24DE22AD0();
  }

  sub_24DE22CE0();
  if (v0)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void static Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_1297(v43);
  v5 = v3[19];
  v4 = v3[20];
  v7 = v3[21];
  v6 = v3[22];
  OUTLINED_FUNCTION_1137(v44);
  v8 = v1[19];
  v9 = v1[20];
  v10 = v1[22];
  v40 = v1[21];
  sub_24DD7125C(v43, v46);
  sub_24DD7125C(v44, v46);
  v11 = OUTLINED_FUNCTION_408();
  v13 = static Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.Headers.== infix(_:_:)(v11, v12);
  OUTLINED_FUNCTION_1137(v45);
  sub_24DDE7C0C(v45);
  OUTLINED_FUNCTION_1297(v46);
  sub_24DDE7C0C(v46);
  if (v13)
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_410();
      sub_24DD7639C(v14, v15);
      if (v9 == 1)
      {
        v16 = OUTLINED_FUNCTION_624();
        sub_24DD7639C(v16, v17);
        OUTLINED_FUNCTION_625();
        OUTLINED_FUNCTION_849();
        sub_24DD763E4(v18, v19);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_386();
      OUTLINED_FUNCTION_809();
      sub_24DD7639C(v26, v27);
    }

    else
    {
      v42[0] = v5;
      v42[1] = v4;
      v42[2] = v7;
      v42[3] = v6;
      if (v9 != 1)
      {
        v41[0] = v8;
        v41[1] = v9;
        v41[2] = v40;
        v41[3] = v10;
        static Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.Body.== infix(_:_:)(v42, v41);
        OUTLINED_FUNCTION_440();
        OUTLINED_FUNCTION_849();
        sub_24DD7639C(v32, v33);
        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_809();
        sub_24DD7639C(v34, v35);
        OUTLINED_FUNCTION_440();
        OUTLINED_FUNCTION_849();
        sub_24DD7639C(v36, v37);

        OUTLINED_FUNCTION_440();
        OUTLINED_FUNCTION_849();
        sub_24DD763E4(v38, v39);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_486();
      sub_24DD7639C(v20, v21);
      OUTLINED_FUNCTION_624();
      OUTLINED_FUNCTION_809();
      sub_24DD7639C(v22, v23);
      OUTLINED_FUNCTION_486();
      sub_24DD7639C(v24, v25);
    }

    OUTLINED_FUNCTION_486();
    sub_24DD763E4(v28, v29);
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_809();
    sub_24DD763E4(v30, v31);
  }

LABEL_9:
  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.hash(into:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[21];
  v4 = v0[22];
  Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.Headers.hash(into:)();
  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  if (!v1)
  {
    OUTLINED_FUNCTION_795();
    if (v4)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_571();
  sub_24DE22AD0();
  if (!v4)
  {
    return OUTLINED_FUNCTION_795();
  }

LABEL_4:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();

  return sub_24DE22AD0();
}

uint64_t sub_24DDC9B34(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  v8 = *(v2 + 10);
  v6 = *(v2 + 7);
  v11 = *(v2 + 4);
  OUTLINED_FUNCTION_1322();
  v9 = *(v2 + 2);
  v10 = *(v2 + 6);
  return a2(a1);
}

uint64_t sub_24DDC9BC4(void (*a1)(_BYTE *, __n128))
{
  OUTLINED_FUNCTION_852();
  sub_24DE22CC0();
  v18 = v1;
  OUTLINED_FUNCTION_1004();
  OUTLINED_FUNCTION_980();
  v4 = *(v2 + 8);
  v5 = *(v2 + 24);
  v14 = OUTLINED_FUNCTION_361(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  a1(v17, v14);
  return sub_24DE22D10();
}

void static Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v3 = OUTLINED_FUNCTION_477();
  v4 = OUTLINED_FUNCTION_20(v3);
  v56 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28(v8, v50);
  v10 = MEMORY[0x28223BE20](v9);
  v18 = OUTLINED_FUNCTION_63(v10, v11, v12, v13, v14, v15, v16, v17, v51);
  FriendPlayer = type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(v18);
  v20 = OUTLINED_FUNCTION_35(FriendPlayer);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_182();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3590, &qword_24DE23690);
  OUTLINED_FUNCTION_443(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_373();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_31(v28, v29, v52);
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    if (OUTLINED_FUNCTION_210() != 1)
    {
      v39 = OUTLINED_FUNCTION_10();
      static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.== infix(_:_:)(v39, v40, v41, v42, v43, v44, v45, v46, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      v47 = OUTLINED_FUNCTION_863();
      sub_24DDE7C74(v47);
      sub_24DDE7C74(v75);
      goto LABEL_11;
    }

    sub_24DDE7C74(v75);
LABEL_9:
    sub_24DDE8DAC(v0, &qword_27F1B3590);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = OUTLINED_FUNCTION_132();
    v38(v37);
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_12();
  v2(v31);
  v32 = OUTLINED_FUNCTION_131();
  v2(v32);
  OUTLINED_FUNCTION_723();
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v34);
    v35 = OUTLINED_FUNCTION_62();
    v1(v35);
    v36 = OUTLINED_FUNCTION_442();
    v1(v36);
LABEL_11:
    OUTLINED_FUNCTION_413();
    sub_24DD74008();
    goto LABEL_12;
  }

  v48 = OUTLINED_FUNCTION_181();
  v30(v48);
  v49 = OUTLINED_FUNCTION_442();
  v30(v49);
  OUTLINED_FUNCTION_413();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62);
  return sub_24DD717AC(v18, v19);
}

void *Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE7D70(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.Body.== infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  OUTLINED_FUNCTION_1056(a1, a2, a3, a4, a5, a6, a7, a8, *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], *a1);
  static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.== infix(_:_:)();
  return v8 & 1;
}

void Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.Body.hash(into:)()
{
  OUTLINED_FUNCTION_885();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v13 = v0[8];
  v14 = v0[7];
  v12 = v0[9];
  v8 = v0[10];
  OUTLINED_FUNCTION_1322();
  v9 = OUTLINED_FUNCTION_594();
  sub_24DDE0DB4(v9, v10);
  OUTLINED_FUNCTION_445();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_606();
  sub_24DE22AD0();
  sub_24DE22AD0();
  sub_24DE22AD0();
  if (v8)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_919();
    OUTLINED_FUNCTION_720();

    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
    OUTLINED_FUNCTION_720();
  }
}

void Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.Body.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_884();
  a31 = v34;
  a32 = v35;
  v36 = *v32;
  v37 = v32[1];
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_1290();
  OUTLINED_FUNCTION_1309();
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

double sub_24DDCA448@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.body.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 152), sizeof(__dst));
  v3 = memcpy(a1, (v1 + 152), 0x58uLL);
  OUTLINED_FUNCTION_1056(v3, v4, &unk_27F1B27F0, &unk_24DE22FA0, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, __dst[0]);
  return sub_24DDE73DC();
}

void *Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.body.setter()
{
  memcpy(__dst, (v0 + 152), sizeof(__dst));
  sub_24DDE8DAC(__dst, &unk_27F1B27F0);
  v1 = OUTLINED_FUNCTION_1264();
  return memcpy(v1, v2, 0x58uLL);
}

void static Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_839(v16);
  memcpy(__dst, (v0 + 152), sizeof(__dst));
  OUTLINED_FUNCTION_799(v18);
  memcpy(v19, (v1 + 152), sizeof(v19));
  sub_24DD717AC(v16, &v13);
  sub_24DD717AC(v18, &v13);
  v2 = OUTLINED_FUNCTION_370();
  v4 = static Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.Headers.== infix(_:_:)(v2, v3);
  OUTLINED_FUNCTION_799(v20);
  sub_24DDE7D70(v20);
  OUTLINED_FUNCTION_839(v21);
  sub_24DDE7D70(v21);
  if (v4)
  {
    v5 = __dst[10];
    v6 = v19[0];
    if (__dst[0])
    {
      if (v19[0])
      {
        v13 = v19[0];
        memcpy(v14, &v19[1], 0x50uLL);
        static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.== infix(_:_:)();
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC();
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC();
        OUTLINED_FUNCTION_592();
        sub_24DDE8DAC(v7, v8);
        OUTLINED_FUNCTION_592();
        sub_24DDE8DAC(v9, v10);
        goto LABEL_7;
      }
    }

    else if (!v19[0])
    {
      v13 = 0;
      v14[0] = __dst[1];
      OUTLINED_FUNCTION_1207();
      v14[9] = v5;
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v11, v12);
      goto LABEL_7;
    }

    v13 = __dst[0];
    v14[0] = __dst[1];
    OUTLINED_FUNCTION_1207();
    v14[9] = v5;
    v14[10] = v6;
    memcpy(v15, &v19[1], sizeof(v15));
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC();
    sub_24DDE8DAC(&v13, &unk_27F1B35A8);
  }

LABEL_7:
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.hash(into:)()
{
  OUTLINED_FUNCTION_885();
  v2 = v1;
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[25];
  v13 = v0[27];
  v14 = v0[26];
  v12 = v0[28];
  v10 = v0[29];
  Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.Headers.hash(into:)();
  if (!v4)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  sub_24DDE0DB4(v2, v4);
  OUTLINED_FUNCTION_547();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_584();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_677();
  sub_24DE22AD0();
  sub_24DE22AD0();
  if (v10)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_826();
    OUTLINED_FUNCTION_720();

    sub_24DE22AD0();
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_795();
    OUTLINED_FUNCTION_720();
  }
}

void Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_884();
  a31 = v33;
  a32 = v34;
  v35 = v32[19];
  v36 = v32[20];
  v37 = v32[21];
  v38 = v32[22];
  v40 = v32[23];
  v39 = v32[24];
  v41 = v32[25];
  v42 = v32[27];
  v44 = v32[28];
  v45 = v32[26];
  v43 = v32[29];
  sub_24DE22CC0();
  Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.Headers.hash(into:)();
  if (!v35)
  {
    goto LABEL_4;
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_1309();
  sub_24DDE0DB4(&a12, v35);
  sub_24DE22AD0();
  OUTLINED_FUNCTION_606();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_495();
  sub_24DE22AD0();
  sub_24DE22AD0();
  if (v43)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_919();
    sub_24DE22AD0();
  }

  else
  {
LABEL_4:
    sub_24DE22CE0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_882();
}

uint64_t sub_24DDCA9A8()
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.Body.json.getter()
{
  OUTLINED_FUNCTION_161();
  v19 = v0;
  *v1 = v2;
  *(v1 + 4) = v0;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  v11 = v2;
  v12 = v0;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  return sub_24DDE2250(&v11, &v10);
}

uint64_t sub_24DDCAA5C()
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.Body.hash(into:)(v1);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE7DA0(v1, v4);
  sub_24DDE7DA0(v4, v0);
  return sub_24DDE7DC0(v4, &v3);
}

double Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.body.setter(__int128 *a1)
{
  sub_24DDE7DA0(a1, v4);
  sub_24DDE7DA0(v4, v5);
  OUTLINED_FUNCTION_937();
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  sub_24DDE7DF8(v8);
  v2 = v5[1];
  *v1 = v5[0];
  *(v1 + 16) = v2;
  result = *&v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v7;
  return result;
}

double Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  sub_24DDE7DA0(v1, v2);
  sub_24DDE7DA0(v5, v6);
  v3 = v6[1];
  *v0 = v6[0];
  *(v0 + 16) = v3;
  result = *&v7;
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  return result;
}

BOOL sub_24DDCABC4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  v11 = *(a1 + 4);
  v12 = v4;
  v6 = v2;
  v7 = v11;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  OUTLINED_FUNCTION_1032(a1, a2);
  return static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.== infix(_:_:)(&v6);
}

void _s22GameCenterServerClient10OperationsO52PostWebObjectsGKInvitationService_woaWaShareActivityO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_366();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_879();
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_811();
  OUTLINED_FUNCTION_1275();
  Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.hash(into:)();
}

uint64_t _s22GameCenterServerClient10OperationsO52PostWebObjectsGKInvitationService_woaWaShareActivityO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_320();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1310();
  OUTLINED_FUNCTION_346();
  Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.hash(into:)();
  return sub_24DE22D10();
}

uint64_t sub_24DDCAD0C()
{
  OUTLINED_FUNCTION_320();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1310();
  OUTLINED_FUNCTION_346();
  Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.hash(into:)();
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.ok.getter()
{
  v2 = OUTLINED_FUNCTION_92();
  v3 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(v2);
  v4 = OUTLINED_FUNCTION_35(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_51();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_270();
    sub_24DD74008();
  }

  else
  {
    v7 = *(v0 + 16);
    *v1 = *v0;
    *(v1 + 16) = v7;
    *(v1 + 32) = *(v0 + 32);
    *(v1 + 48) = *(v0 + 48);
  }

  OUTLINED_FUNCTION_670();
}

void static Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v2 = v1;
  v3 = sub_24DE229C0();
  v4 = OUTLINED_FUNCTION_27(v3);
  v44 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_113();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1224(&v41 - v12);
  v13 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
  v14 = OUTLINED_FUNCTION_90(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_113();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B35B0, &qword_24DE236A8);
  OUTLINED_FUNCTION_443(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_972();
  v28 = v0 + *(v27 + 56);
  sub_24DD74A90();
  OUTLINED_FUNCTION_380();
  sub_24DD74A90();
  OUTLINED_FUNCTION_492();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_677();
    sub_24DD74A90();
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
    OUTLINED_FUNCTION_539();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *v19;
      v30 = *v28;
      OUTLINED_FUNCTION_1234();
      v31 = *(v2 + 32);
      v31(v43, &v19[v29], v3);
      v31(v10, (v28 + v29), v3);
      if (v42 != v30)
      {
        v38 = *(v2 + 8);
        v39 = OUTLINED_FUNCTION_551();
        v38(v39);
        v40 = OUTLINED_FUNCTION_1058();
        v38(v40);
        OUTLINED_FUNCTION_270();
        sub_24DD74008();
        goto LABEL_11;
      }

      v32 = OUTLINED_FUNCTION_935();
      MEMORY[0x253039400](v32);
      v33 = *(v2 + 8);
      v34 = OUTLINED_FUNCTION_551();
      v33(v34);
      v35 = OUTLINED_FUNCTION_1058();
      v33(v35);
      goto LABEL_10;
    }

    (*(v44 + 8))(&v19[v29], v3);
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_1082();
    sub_24DD74A90();
    v36 = *(v22 + 1);
    *v58 = *v22;
    *&v58[16] = v36;
    *&v58[32] = *(v22 + 2);
    *&v58[48] = *(v22 + 6);
    OUTLINED_FUNCTION_539();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = *(v28 + 16);
      *v55 = *v28;
      *&v55[16] = v37;
      *&v55[32] = *(v28 + 32);
      *&v55[48] = *(v28 + 48);
      v56 = v58[4];
      v57 = v55[4];
      v50 = *v58;
      v51 = v58[4];
      v52 = *&v58[8];
      v53 = *&v58[24];
      v54 = *&v58[40];
      v45 = *v55;
      v46 = v55[4];
      v47 = *&v55[8];
      v48 = *&v55[24];
      v49 = *&v55[40];
      static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.== infix(_:_:)(&v50);
      sub_24DDE7DF8(v55);
      sub_24DDE7DF8(v58);
LABEL_10:
      OUTLINED_FUNCTION_270();
      sub_24DD74008();
      goto LABEL_11;
    }

    sub_24DDE7DF8(v58);
  }

  sub_24DDE8DAC(v0, &qword_27F1B35B0);
LABEL_11:
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.hash(into:)()
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_343();
  v1 = sub_24DE229C0();
  v2 = OUTLINED_FUNCTION_20(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_42();
  v5 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
  v6 = OUTLINED_FUNCTION_35(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_546();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v11 = OUTLINED_FUNCTION_67(v10);
    v12(v11);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v9);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v13);
    OUTLINED_FUNCTION_447();
    v14 = OUTLINED_FUNCTION_394();
    v15(v14);
  }

  else
  {
    v16 = *(v0 + 1);
    v17[0] = *v0;
    v17[1] = v16;
    v17[2] = *(v0 + 2);
    v18 = v0[6];
    OUTLINED_FUNCTION_841();
    v19 = BYTE4(v17[0]);
    MEMORY[0x253039720](0);
    Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.hash(into:)();
    sub_24DDE7DF8(v17);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t sub_24DDCB410()
{
  OUTLINED_FUNCTION_855();
  v0(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDCB45C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.AcceptableContentType.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24DDCB48C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.AcceptableContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_24DDCB4B8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DD7CBB0();
}

uint64_t sub_24DDCB4D4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DD7CD04();
}

uint64_t sub_24DDCB4F0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DD80BA8();
}

uint64_t sub_24DDCB51C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  OUTLINED_FUNCTION_1076(*a1);
  return sub_24DD77278() & 1;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Headers.xGkAppSig.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Headers.xGkAppStore.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Headers.xGkBundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Headers.xGkBundleVersion.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Headers.xGkHostBundleId.setter()
{
  OUTLINED_FUNCTION_372();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62);
  return sub_24DD71E50(v18, v19);
}

void *Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE7E48(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body.== infix(_:_:)()
{
  OUTLINED_FUNCTION_569();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B35B8, &qword_24DE236B0);
  OUTLINED_FUNCTION_443(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1199();
  v5 = *(v4 + 56);
  sub_24DD74A90();
  sub_24DD74A90();
  static Components.Schemas.App_AppInit_RequestContent.== infix(_:_:)();
  v7 = v6;
  sub_24DD74008();
  OUTLINED_FUNCTION_674();
  sub_24DD74008();
  return v7 & 1;
}

void Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body.hash(into:)()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_429();
  v5 = sub_24DE22960();
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_66();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
  OUTLINED_FUNCTION_443(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  v16 = OUTLINED_FUNCTION_35(inited);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v19 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(0);
  v20 = OUTLINED_FUNCTION_443(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_822();
  sub_24DD74A90();
  sub_24DD74B08();
  OUTLINED_FUNCTION_841();
  v23 = *v1;
  v24 = v1[1];
  sub_24DE22AD0();
  v25 = *(v3 + 20);
  sub_24DDE73DC();
  OUTLINED_FUNCTION_880(v4, 1, v0);
  if (v26)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v27 = *(v8 + 32);
    v28 = OUTLINED_FUNCTION_676();
    v29(v28);
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v30);
    OUTLINED_FUNCTION_610();
    sub_24DE22AA0();
    (*(v8 + 8))(v2, v0);
  }

  if (*(v1 + *(v3 + 24)) != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_669();
  sub_24DD74008();
  OUTLINED_FUNCTION_653();
}

uint64_t sub_24DDCBCA8()
{
  v0 = OUTLINED_FUNCTION_960();
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(v0);
  v1 = OUTLINED_FUNCTION_525();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_24DDCBD08()
{
  OUTLINED_FUNCTION_957();
  v1 = *(v0(0) + 20);
  OUTLINED_FUNCTION_410();
  return sub_24DDE73DC();
}

uint64_t sub_24DDCBD80(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a2(0) + 20);
  OUTLINED_FUNCTION_410();
  return sub_24DDE444C();
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.body.modify()
{
  v0 = OUTLINED_FUNCTION_429();
  v1 = *(type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(v0) + 20);
  return OUTLINED_FUNCTION_574();
}

void static Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.== infix(_:_:)()
{
  OUTLINED_FUNCTION_659();
  v1 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(0);
  v2 = OUTLINED_FUNCTION_90(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_22();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2800, &qword_24DE22FB0);
  OUTLINED_FUNCTION_443(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B35C0, &qword_24DE236B8);
  OUTLINED_FUNCTION_90(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1199();
  OUTLINED_FUNCTION_1096(v19);
  OUTLINED_FUNCTION_1096(v18);
  OUTLINED_FUNCTION_968(v20);
  OUTLINED_FUNCTION_968(v17);
  sub_24DD71E50(v19, v22);
  sub_24DD71E50(v20, v22);
  v13 = static Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Headers.== infix(_:_:)(v18, v17);
  memcpy(v21, v17, sizeof(v21));
  sub_24DDE7E48(v21);
  memcpy(v22, v18, 0x98uLL);
  sub_24DDE7E48(v22);
  if (v13)
  {
    v14 = *(type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(0) + 20);
    v15 = *(v9 + 48);
    OUTLINED_FUNCTION_910();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_910();
    sub_24DDE73DC();
    OUTLINED_FUNCTION_880(v0, 1, v1);
    if (!v16)
    {
      OUTLINED_FUNCTION_440();
      sub_24DDE73DC();
      OUTLINED_FUNCTION_880(v0 + v15, 1, v1);
      if (!v16)
      {
        OUTLINED_FUNCTION_690();
        sub_24DD74B08();
        OUTLINED_FUNCTION_551();
        static Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body.== infix(_:_:)();
        sub_24DD74008();
        OUTLINED_FUNCTION_445();
        sub_24DD74008();
        sub_24DDE8DAC(v0, &qword_27F1B2800);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_691();
      sub_24DD74008();
LABEL_10:
      sub_24DDE8DAC(v0, &qword_27F1B35C0);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_880(v0 + v15, 1, v1);
    if (!v16)
    {
      goto LABEL_10;
    }

    sub_24DDE8DAC(v0, &qword_27F1B2800);
  }

LABEL_11:
  OUTLINED_FUNCTION_653();
}