unint64_t DeepLinkActivityType.userActivityType.getter()
{
  result = 0xD000000000000019;
  switch(*v0)
  {
    case 1:
    case 0xF:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 3:
    case 0x11:
      result = 0xD00000000000001CLL;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      return result;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD00000000000002CLL;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xE:
      result = 0xD000000000000028;
      break;
    case 0x10:
      result = 0xD000000000000025;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

id static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, char a5, BOOL a6, char a7)
{
  v10 = a6;
  v11 = *a3;
  DeepLinkActivityType.userActivityType.getter();
  v12 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v13 = sub_25130EF94();

  v14 = [v12 initWithActivityType_];

  v15 = v14;
  v16 = sub_25130EF94();
  [v15 setTitle_];

  [v15 setEligibleForSearch_];
  if (v10 == 2)
  {
    v17 = v11 != 5;
  }

  else
  {
    v17 = a6;
  }

  [v15 setEligibleForHandoff_];
  [v15 setEligibleForPrediction_];

  if (a4)
  {
    v18 = a4;
    v19 = sub_251308E90(v15, v18);

    v15 = v19;
  }

  sub_2512F2BD0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F2F80(inited + 32);
  v21 = sub_25130EF64();

  [v15 addUserInfoEntriesFromDictionary_];

  return v15;
}

void sub_2512F2BD0()
{
  if (!qword_280C61358)
  {
    sub_2512F2C28();
    v0 = sub_25130F2B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C61358);
    }
  }
}

void sub_2512F2C28()
{
  if (!qword_280C61370)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C61370);
    }
  }
}

unint64_t sub_2512F2C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2512F2E00();
    v3 = sub_25130F264();
    v4 = a1 + 32;

    while (1)
    {
      sub_2512F2D9C(v4, v13);
      result = sub_2512F2E64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2512F2EA8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2512F2D9C(uint64_t a1, uint64_t a2)
{
  sub_2512F2C28();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2512F2E00()
{
  if (!qword_280C61368)
  {
    v0 = sub_25130F274();
    if (!v1)
    {
      atomic_store(v0, &qword_280C61368);
    }
  }
}

unint64_t sub_2512F2E64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25130F1C4();

  return sub_2512F2EB8(a1, v5);
}

_OWORD *sub_2512F2EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2512F2EB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25130460C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253070F40](v9, a1);
      sub_2512F8B54(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2512F2F80(uint64_t a1)
{
  sub_2512F2C28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *HealthAppOrchestrationClient.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for HealthAppOrchestrationClient.WeakClientProxy();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy;
  *&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy] = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v5 = sub_25130EF94();
  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection;
  *&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection] = v6;
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v11 = *&v0[v7];
  v12 = [v8 interfaceWithProtocol_];
  [v11 setExportedInterface_];

  [*&v0[v7] setExportedObject_];
  v13 = *&v0[v7];
  v14 = swift_allocObject();
  *(v14 + 16) = ObjectType;
  v28 = sub_2512FB038;
  v29 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2512F9AA0;
  v27 = &block_descriptor;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v16 setInterruptionHandler_];
  _Block_release(v15);

  v17 = *&v0[v7];
  v18 = [v17 interruptionHandler];
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v28 = sub_2512FB048;
    v29 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2512F9AA0;
    v27 = &block_descriptor_6;
    v18 = _Block_copy(&aBlock);
  }

  [v17 setInvalidationHandler_];
  _Block_release(v18);

  [*&v0[v7] resume];
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy];
  swift_unknownObjectWeakAssign();
  return v20;
}

uint64_t sub_2512F3360()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2512F3928()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2512F3960()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2512F3A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2512F3AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2512F3C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2512F3C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_2512F3CDC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

__CFString *HAStringForDataRequestType(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"write";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"read";
  }
}

id AllHealthAppAnalyticsAgreements()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"ImproveHealthAndAnalytics";
  v3[1] = @"ImproveHealthRecords";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t ContactDeepLinkingParameter.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactDeepLinkingParameter.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2512F7104@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2512F7110(void *a1)
{
  v3 = v1[1];

  v5 = a1[1];
  *v1 = *a1;
  v1[1] = v5;
  return result;
}

uint64_t SharingInviteFlowURLData.contactData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static SharingInviteFlowURLData.isSharingInviteFlow(_:)(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_25130EFB4();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  DeepLinkActivityType.init(_:)(v5);
  if (v16 == 18)
  {
    v6 = 0;
  }

  else
  {
    v7 = DeepLinkActivityType.rawValue.getter();
    v9 = v8;
    v10 = [objc_opt_self() healthAppSharingInviteFlowPath];
    v11 = sub_25130EFB4();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_25130F2D4();
    }
  }

  return v6 & 1;
}

uint64_t SharingInviteFlowURLData.url()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130ECE4();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F8A34(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_25130EEC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = v1[1];
  sub_2512F75C0();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2512F8AE4(v12, &qword_27F429C08, MEMORY[0x277CC9260]);
    return (*(v14 + 56))(a1, 1, 1, v13);
  }

  else
  {
    v27 = a1;
    v22 = *(v14 + 32);
    v22(v18, v12, v13);
    if (v20)
    {
      v29 = v19;
      v30 = v20;

      sub_25130ECD4();
      sub_2512F8818();
      v23 = sub_25130F164();
      v25 = v24;
      (*(v28 + 8))(v7, v3);

      sub_251305560(0x8000000251311680, v23, v25, v27);

      return (*(v14 + 8))(v18, v13);
    }

    else
    {
      v26 = v27;
      v22(v27, v18, v13);
      return (*(v14 + 56))(v26, 0, 1, v13);
    }
  }
}

uint64_t sub_2512F75C0()
{
  v0 = objc_opt_self();
  v1 = [v0 externalHealthAppURLScheme];
  sub_25130EFB4();

  v2 = [v0 externalHealthAppURLHost];
  v3 = sub_25130EFB4();
  v5 = v4;

  MEMORY[0x253070D80](3092282, 0xE300000000000000);
  MEMORY[0x253070D80](v3, v5);

  MEMORY[0x253070D80](47, 0xE100000000000000);
  MEMORY[0x253070D80](0xD000000000000011, 0x8000000251311590);
  sub_25130EEB4();
}

uint64_t sub_2512F76E0()
{
  v0 = objc_opt_self();
  v1 = [v0 externalHealthAppURLScheme];
  sub_25130EFB4();

  v2 = [v0 externalHealthAppURLHost];
  v3 = sub_25130EFB4();
  v5 = v4;

  MEMORY[0x253070D80](3092282, 0xE300000000000000);
  MEMORY[0x253070D80](v3, v5);

  MEMORY[0x253070D80](47, 0xE100000000000000);
  MEMORY[0x253070D80](0x50676E6972616873, 0xEE00656C69666F72);
  sub_25130EEB4();
}

uint64_t static SharingInviteFlowURLData.fromURL(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HAURL();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25130EEC4();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = HAURL.queryItems.getter();
  if (v10)
  {
    sub_2512F7928(v10, &v13);

    result = sub_2512F886C(v8, type metadata accessor for HAURL);
    v12 = v14;
    if (v14)
    {
      *a2 = v13;
      a2[1] = v12;
      return result;
    }
  }

  else
  {
    result = sub_2512F886C(v8, type metadata accessor for HAURL);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_2512F7928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_25130ED24();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6, v9);
  v28 = &v28 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_12;
  }

  v31 = *(v30 + 16);
  v13 = (v30 + 8);
  v14 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v15 = *(v30 + 72);
  while (1)
  {
    v31(v8, v14, v3);
    if (sub_25130ED04() == 0xD000000000000011 && 0x8000000251311680 == v16)
    {
      break;
    }

    v17 = sub_25130F2D4();

    if (v17)
    {
      goto LABEL_9;
    }

    result = (*v13)(v8, v3);
    v14 += v15;
    if (!--v12)
    {
      goto LABEL_12;
    }
  }

  v18 = v30 + 32;
  v19 = v28;
  (*(v30 + 32))(v28, v8, v3);
  v20 = sub_25130ED14();
  v22 = v21;
  result = (*(v18 - 24))(v19, v3);
  if (!v22)
  {
    goto LABEL_12;
  }

LABEL_9:
  v32 = v20;
  v33 = v22;
  sub_2512F8818();
  v23 = sub_25130F184();
  v25 = v24;

  if (v25)
  {
    v26 = v29;
    *v29 = v23;
    v26[1] = v25;
  }

  else
  {
LABEL_12:
    v27 = v29;
    *v29 = 0;
    v27[1] = 0;
  }

  return result;
}

uint64_t sub_2512F7B74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2512F8A34(0, &qword_27F429C18, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v47 - v7;
  v9 = sub_25130EF24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25130ED24();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v24 = *(a1 + 16);
  if (v24)
  {
    v50 = v8;
    v51 = &v47 - v22;
    v47 = v14;
    v48 = v10;
    v49 = v9;
    v52 = v23;
    v53 = a2;
    v25 = 0x55676E6972616873;
    v54 = *(v23 + 16);
    v26 = (v23 + 8);
    v27 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    while (1)
    {
      v54(v20, v27, v15);
      if (sub_25130ED04() == v25 && v29 == 0xEB00000000444955)
      {
        break;
      }

      v30 = v25;
      v31 = sub_25130F2D4();

      if (v31)
      {
        goto LABEL_9;
      }

      (*v26)(v20, v15);
      v27 += v28;
      --v24;
      v25 = v30;
      if (!v24)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    v32 = v51;
    v33 = v52 + 32;
    (*(v52 + 32))(v51, v20, v15);
    v34 = sub_25130ED14();
    v36 = v35;
    (*(v33 - 24))(v32, v15);
    if (!v36)
    {
LABEL_14:
      v42 = 1;
      a2 = v53;
      goto LABEL_15;
    }

    v55 = v34;
    v56 = v36;
    sub_2512F8818();
    sub_25130F184();
    v38 = v37;

    a2 = v53;
    if (!v38)
    {
      goto LABEL_13;
    }

    v39 = v50;
    _s10Foundation4UUIDV17HealthAppServicesE13fromURLStringyACSgSSFZ_0();

    v41 = v48;
    v40 = v49;
    if ((*(v48 + 48))(v39, 1, v49) == 1)
    {
      sub_2512F8AE4(v39, &qword_27F429C18, MEMORY[0x277CC95F0]);
      goto LABEL_13;
    }

    v45 = *(v41 + 32);
    v46 = v47;
    v45(v47, v39, v40);
    v45(a2, v46, v40);
    v42 = 0;
  }

  else
  {
LABEL_13:
    v42 = 1;
  }

LABEL_15:
  v43 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  return (*(*(v43 - 8) + 56))(a2, v42, 1, v43);
}

NSUserActivity __swiftcall SharingInviteFlowURLData.userActivity()()
{
  v2 = *v0;
  v1 = v0[1];
  sub_25130F214();

  v3 = MEMORY[0x277D837D0];
  sub_2512F8A98(0, &qword_27F429C10);

  v4 = sub_25130EFD4();
  MEMORY[0x253070D80](v4);

  v5 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v6 = sub_25130EF94();
  v7 = [v5 initWithActivityType_];

  v8 = v7;
  v9 = sub_25130EF94();

  [v8 setTitle_];

  [v8 setEligibleForSearch_];
  [v8 setEligibleForHandoff_];
  [v8 setEligibleForPrediction_];

  sub_2512F8A34(0, &qword_280C61358, sub_2512F2C28, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F886C(inited + 32, sub_2512F2C28);
  v11 = sub_25130EF64();

  [v8 addUserInfoEntriesFromDictionary_];

  if (v1)
  {
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_251310350;
    sub_25130F1E4();
    *(v12 + 96) = v3;
    *(v12 + 72) = v2;
    *(v12 + 80) = v1;

    sub_2512F2C8C(v12);
    swift_setDeallocating();
    sub_2512F886C(v12 + 32, sub_2512F2C28);
    v13 = sub_25130EF64();

    [v8 addUserInfoEntriesFromDictionary_];
  }

  return v8;
}

double static SharingInviteFlowURLData.fromUserActivity(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2512F8364(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2512F8364@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [a1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25130EF74();

    sub_25130F1E4();
    if (*(v5 + 16))
    {
      v6 = sub_2512F2E64(v10);
      if (v7)
      {
        sub_2512F8BA8(*(v5 + 56) + 32 * v6, v11);
        sub_2512F8B54(v10);

        goto LABEL_7;
      }
    }

    sub_2512F8B54(v10);
  }

  memset(v11, 0, sizeof(v11));
LABEL_7:
  sub_2512F8A98(0, &qword_27F429C20);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v10[0];
  }

  else
  {
    v9 = 0uLL;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_2512F84A4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_2512F8A34(0, &qword_27F429C18, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v26 - v7;
  v9 = sub_25130EF24();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 userInfo];
  if (v15)
  {
    v16 = v15;
    v17 = sub_25130EF74();

    v26[1] = 0x55676E6972616873;
    v26[2] = 0xEB00000000444955;
    sub_25130F1E4();
    if (*(v17 + 16))
    {
      v18 = sub_2512F2E64(v27);
      if (v19)
      {
        sub_2512F8BA8(*(v17 + 56) + 32 * v18, v28);
        sub_2512F8B54(v27);

        goto LABEL_7;
      }
    }

    sub_2512F8B54(v27);
  }

  memset(v28, 0, sizeof(v28));
LABEL_7:
  sub_2512F8A98(0, &qword_27F429C20);
  v20 = swift_dynamicCast();
  v21 = v10[7];
  if (v20)
  {
    v21(v8, 0, 1, v9);
    v22 = v10[4];
    v22(v14, v8, v9);
    v22(a2, v14, v9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v21(v8, 1, 1, v9);
    sub_2512F8AE4(v8, &qword_27F429C18, MEMORY[0x277CC95F0]);
  }

  v24 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  return (*(*(v24 - 8) + 56))(a2, v23, 1, v24);
}

double sub_2512F87E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2512F8364(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_2512F8818()
{
  result = qword_280C61378[0];
  if (!qword_280C61378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C61378);
  }

  return result;
}

uint64_t sub_2512F886C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2512F88E4(uint64_t a1, int a2)
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

uint64_t sub_2512F892C(uint64_t result, int a2, int a3)
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

uint64_t sub_2512F8978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2512F89D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_2512F8A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2512F8A98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25130F144();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2512F8AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2512F8A34(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2512F8BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2512F8C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_25130EDE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130EDD4();

  sub_25130EDA4();

  sub_25130EDB4();
  v12 = objc_opt_self();
  v13 = sub_25130EDC4();
  v14 = [v12 localizedStringFromPersonNameComponents:v13 style:a5 options:0];

  v15 = sub_25130EFB4();
  (*(v7 + 8))(v11, v6);
  return v15;
}

uint64_t static ProfileInformationSupport.localizedFullNameOrAccountIdentifier(firstName:lastName:isContact:accountIdentifier:shouldDisplaySuggestedName:newlineBetweenNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  HIDWORD(v34) = a8;
  v35 = a6;
  v10 = sub_25130EDE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130EDD4();

  sub_25130EDA4();

  sub_25130EDB4();
  v16 = objc_opt_self();
  v17 = sub_25130EDC4();
  v18 = [v16 localizedStringFromPersonNameComponents:v17 style:2 options:0];

  v19 = sub_25130EFB4();
  v21 = v20;

  (*(v11 + 8))(v15, v10);
  if ((a5 & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_25130ED94();

    if ((v34 & 0x100000000) != 0)
    {
      v25 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v25 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        sub_2512F9748();
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_251310350;
        v27 = MEMORY[0x277D837D0];
        *(v26 + 56) = MEMORY[0x277D837D0];
        v28 = sub_2512F9804();
        *(v26 + 64) = v28;
        *(v26 + 32) = v19;
        *(v26 + 40) = v21;

        v29 = sub_25130EFA4();
        v31 = v30;

        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_251310430;
        *(v32 + 56) = v27;
        *(v32 + 64) = v28;
        *(v32 + 32) = v35;
        *(v32 + 40) = a7;
        *(v32 + 96) = v27;
        *(v32 + 104) = v28;
        *(v32 + 72) = v29;
        *(v32 + 80) = v31;

        v19 = sub_25130EFC4();

        return v19;
      }
    }

LABEL_12:

    return v35;
  }

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_12;
  }

  return v19;
}

uint64_t static ProfileInformationSupport.localizedShortNameOrAccountIdentifier(firstName:lastName:isContact:accountIdentifier:shouldDisplaySuggestedName:newlineBetweenNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v40 = a8;
  v41 = a6;
  v42 = a7;
  v43 = a5;
  v9 = sub_25130EDE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130EDD4();

  sub_25130EDA4();

  v39 = a3;
  sub_25130EDB4();
  v15 = objc_opt_self();
  v16 = sub_25130EDC4();
  v17 = [v15 localizedStringFromPersonNameComponents:v16 style:1 options:0];

  v18 = sub_25130EFB4();
  v20 = v19;

  v21 = *(v10 + 8);
  v21(v14, v9);
  if (v43)
  {
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_25130EDD4();

    sub_25130EDA4();

    sub_25130EDB4();
    v23 = sub_25130EDC4();
    v24 = [v15 localizedStringFromPersonNameComponents:v23 style:2 options:0];

    v25 = sub_25130EFB4();
    v27 = v26;

    v21(v14, v9);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    sub_25130ED94();

    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }

    v30 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v30 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
LABEL_11:

LABEL_12:

      return v41;
    }

    sub_2512F9748();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_251310350;
    v32 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    v33 = sub_2512F9804();
    *(v31 + 64) = v33;
    *(v31 + 32) = v25;
    *(v31 + 40) = v27;

    v34 = sub_25130EFA4();
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_251310430;
    *(v37 + 56) = v32;
    *(v37 + 64) = v33;
    *(v37 + 32) = v41;
    *(v37 + 40) = v42;
    *(v37 + 96) = v32;
    *(v37 + 104) = v33;
    *(v37 + 72) = v34;
    *(v37 + 80) = v36;

    v18 = sub_25130EFC4();
  }

  return v18;
}

id sub_2512F9538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, char))
{
  v11 = a4;
  if (a3)
  {
    v12 = sub_25130EFB4();
    v14 = v13;
    if (v11)
    {
LABEL_3:
      v15 = sub_25130EFB4();
      v11 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = sub_25130EFB4();
  v19 = v18;
  swift_getObjCClassMetadata();
  a9(v12, v14, v15, v11, a5, v17, v19, a7, a8);

  v20 = sub_25130EF94();

  return v20;
}

id ProfileInformationSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileInformationSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileInformationSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProfileInformationSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileInformationSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2512F9748()
{
  if (!qword_27F429C28)
  {
    sub_2512F97A0();
    v0 = sub_25130F2B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429C28);
    }
  }
}

unint64_t sub_2512F97A0()
{
  result = qword_27F429C30;
  if (!qword_27F429C30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F429C30);
  }

  return result;
}

unint64_t sub_2512F9804()
{
  result = qword_27F429C38;
  if (!qword_27F429C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C38);
  }

  return result;
}

id sub_2512F987C()
{
  result = [objc_allocWithZone(type metadata accessor for HealthAppOrchestrationClient()) init];
  qword_27F429C40 = result;
  return result;
}

id HealthAppOrchestrationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static HealthAppOrchestrationClient.sharedConnection.getter()
{
  if (qword_27F429BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F429C40;

  return v1;
}

void sub_2512F9958()
{
  if (qword_280C61590 != -1)
  {
    swift_once();
  }

  v0 = sub_25130EF54();
  __swift_project_value_buffer(v0, qword_280C61668);
  oslog = sub_25130EF34();
  v1 = sub_25130F124();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_251302D38(0xD000000000000022, 0x8000000251311920, &v5);
    _os_log_impl(&dword_2512F1000, oslog, v1, "%s: connection interrupted", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x253071680](v3, -1, -1);
    MEMORY[0x253071680](v2, -1, -1);
  }
}

uint64_t sub_2512F9AA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void HealthAppOrchestrationClient.fireOnce(resetErrors:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_2512F9CE0(sub_2512FB3C0, v6);

  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v16 = sub_2512FB388;
    v17 = v8;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2512F9AA0;
    v15 = &block_descriptor_21;
    v9 = _Block_copy(&v12);

    [v7 remote:v9 fireOnceWithCompletion:?];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v16 = sub_2512FB388;
    v17 = v10;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2512F9AA0;
    v15 = &block_descriptor_15;
    v11 = _Block_copy(&v12);

    [v7 remote:v11 resetAndFireWithCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2512F9CE0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v19 = sub_2512FB220;
  v20 = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2512FAF98;
  v18 = &block_descriptor_109;
  v7 = _Block_copy(aBlock);
  v8 = v2;

  v9 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_25130F1A4();
  swift_unknownObjectRelease();
  sub_2512F8BA8(aBlock, v16);
  sub_2512FB22C();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v15;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_25130F214();
    v11 = [v8 description];
    v12 = sub_25130EFB4();
    v14 = v13;

    MEMORY[0x253070D80](v12, v14);

    MEMORY[0x253070D80](0xD000000000000010, 0x8000000251311AE0);
    __swift_project_boxed_opaque_existential_0(aBlock, v18);
    sub_25130F2C4();
    MEMORY[0x253070D80](0xD000000000000099, 0x8000000251311B00);
    result = sub_25130F234();
    __break(1u);
  }

  return result;
}

uint64_t HealthAppOrchestrationClient.fetchOrchestrationStatus(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB058, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB088;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA078;
  v9[3] = &block_descriptor_30;
  v7 = _Block_copy(v9);

  [v5 remote:v7 fetchOrchestrationStatusWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2512FA078(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_25130EFB4();
  v5 = v4;

  v2(v3, v5);
}

uint64_t HealthAppOrchestrationClient.fetchOrchestrationGraph(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB0B4, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB0E0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA218;
  v9[3] = &block_descriptor_39;
  v7 = _Block_copy(v9);

  [v5 remote:v7 fetchOrchestrationGraphWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2512FA218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_25130F0D4();

  v2(v3);
}

uint64_t HealthAppOrchestrationClient.deleteCacheAndTerminate(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB10C, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB158;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA3BC;
  v9[3] = &block_descriptor_48;
  v7 = _Block_copy(v9);

  [v5 remote:v7 deleteCacheAndTerminateWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.cancelAllGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB180, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB1A8;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_57;
  v7 = _Block_copy(v9);

  [v5 remote:v7 cancelAllGenerationWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

id HealthAppOrchestrationClient.runForegroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512FA614;
  v9[3] = &block_descriptor_63;
  v6 = _Block_copy(v9);

  v7 = [v5 remote:v6 runForegroundGenerationWithCompletion:?];
  _Block_release(v6);
  swift_unknownObjectRelease();
  return v7;
}

void sub_2512FA61C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void HealthAppOrchestrationClient.runBackgroundGeneration(plugins:commitAsUrgent:generationType:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  v11 = sub_2512F9CE0(sub_2512FB3C0, v10);

  if (a1)
  {
    a1 = sub_25130F0C4();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v14[4] = sub_2512FB180;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2512FA614;
  v14[3] = &block_descriptor_72;
  v13 = _Block_copy(v14);

  [v11 remote:a1 runBackgroundGenerationWithPlugins:a2 & 1 commitAsUrgent:a3 generationType:v13 completion:?];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.requestBackgroundGenerationForFeedItemsAfterUnlock(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB388;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_81;
  v7 = _Block_copy(v9);

  [v5 remote:v7 requestBackgroundGenerationForFeedItemsAfterUnlockWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.requestBackgroundGenerationForAllModelsAfterUnlock(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB388;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_90;
  v7 = _Block_copy(v9);

  [v5 remote:v7 requestBackgroundGenerationForAllModelsAfterUnlockWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t HealthAppOrchestrationClient.runOrRequestBackgroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2512F9CE0(sub_2512FB3C0, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_2512FB388;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2512F9AA0;
  v9[3] = &block_descriptor_99;
  v7 = _Block_copy(v9);

  [v5 remote:v7 runOrRequestBackgroundGenerationWithCompletion:?];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

id HealthAppOrchestrationClient.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy];
  swift_unknownObjectWeakAssign();
  [*&v0[OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection] invalidate];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2512FACE8(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (qword_280C61590 != -1)
  {
    swift_once();
  }

  v8 = sub_25130EF54();
  __swift_project_value_buffer(v8, qword_280C61668);
  v9 = a2;
  v10 = a1;
  v11 = sub_25130EF34();
  v12 = sub_25130F114();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    v15 = v9;
    v16 = [v15 description];
    v17 = sub_25130EFB4();
    v30[0] = a4;
    v18 = a3;
    v20 = v19;

    v21 = sub_251302D38(v17, v20, &v31);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    v23 = *(*(v30[2] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue, v30[1]);
    (*(v25 + 16))(v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_25130EFD4();
    v28 = sub_251302D38(v26, v27, &v31);
    a3 = v18;

    *(v13 + 14) = v28;
    _os_log_impl(&dword_2512F1000, v11, v12, "%s: remoteObjectProxyWithErrorHandler error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253071680](v14, -1, -1);
    MEMORY[0x253071680](v13, -1, -1);
  }

  return a3(a1);
}

void sub_2512FAF98(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2512FB000()
{
  sub_2512FB1F8(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2512FB058(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0, 1);
}

uint64_t sub_2512FB088(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2, 0);
}

uint64_t sub_2512FB0B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

uint64_t sub_2512FB0E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

void sub_2512FB10C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_25130EDF4();
  v1();
}

uint64_t sub_2512FB158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2512FB180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2512FB1A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t sub_2512FB22C()
{
  result = qword_280C61598[0];
  if (!qword_280C61598[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280C61598);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t DeepLinkingDataConformable.healthAppBaseURL()(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 externalHealthAppURLScheme];
  sub_25130EFB4();

  v6 = [v4 externalHealthAppURLHost];
  v7 = sub_25130EFB4();
  v9 = v8;

  MEMORY[0x253070D80](3092282, 0xE300000000000000);
  MEMORY[0x253070D80](v7, v9);

  MEMORY[0x253070D80](47, 0xE100000000000000);
  v10 = (*(a2 + 8))(a1, a2);
  MEMORY[0x253070D80](v10);

  sub_25130EEB4();
}

HealthAppServices::HAUserActivity::UserActivityVersion __swiftcall NSUserActivityProtocol.versionInfo()()
{
  v2 = v1;
  v3 = (*(v0 + 32))();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  sub_25130F1E4();
  if (!*(v4 + 16) || (v5 = sub_2512F2E64(v9), (v6 & 1) == 0))
  {

    sub_2512F8B54(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_2512F8BA8(*(v4 + 56) + 32 * v5, &v10);
  sub_2512F8B54(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    result = sub_2512FBB6C(&v10, sub_2512FB6A4);
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0 || !v9[0])
  {
    goto LABEL_11;
  }

  v8 = v9[0] == 1;
LABEL_12:
  *v2 = v8;
  return result;
}

void sub_2512FB6A4()
{
  if (!qword_27F429C20)
  {
    v0 = sub_25130F144();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429C20);
    }
  }
}

id NSUserActivityProtocol<>.ensureLatestVersionAndUpgradeIfNeeded()()
{
  NSUserActivityProtocol.versionInfo()();
  if (v3[16])
  {
    v0 = v2;
  }

  else
  {
    v3[0] = 0;
    v0 = sub_2512FB93C(v3);
  }

  return v0;
}

unint64_t sub_2512FB8F0()
{
  result = qword_27F429C58;
  if (!qword_27F429C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F429C58);
  }

  return result;
}

void *sub_2512FB93C(char *a1)
{
  v2 = v1;
  v3 = *a1;
  sub_2512F2BD0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  v13 = 0xEA00000000007965;
  v5 = MEMORY[0x277D837D0];
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512FBB6C(inited + 32, sub_2512F2C28);
  v6 = sub_25130EF64();

  [v2 addUserInfoEntriesFromDictionary_];

  v12 = v2;
  v11 = v3;
  v7 = NSUserActivityProtocol.fetchUpToDatePluginIdForActivity(since:)(&v11);
  if (v7.value._object)
  {
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_251310350;
    v12 = 0x614E656C646E7562;
    v13 = 0xEA0000000000656DLL;
    sub_25130F1E4();
    *(v8 + 96) = v5;
    *(v8 + 72) = v7;
    sub_2512F2C8C(v8);
    swift_setDeallocating();
    sub_2512FBB6C(v8 + 32, sub_2512F2C28);
    v9 = sub_25130EF64();

    [v2 addUserInfoEntriesFromDictionary_];
  }

  return v2;
}

uint64_t sub_2512FBB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SharingUUIDDeepLinkingParameter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SharingUUIDDeepLinkingParameter.value.setter(uint64_t a1)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SharingUUIDDeepLinkingParameter.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EF24();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2512FBD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EF24();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2512FBDD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2512FBE3C(uint64_t a1)
{
  v3 = sub_25130EF24();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2512FBEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2512FBF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SharingManagementURLData.isSharingProfile(_:)(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_25130EFB4();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  DeepLinkActivityType.init(_:)(v5);
  if (v16 == 18)
  {
    v6 = 0;
  }

  else
  {
    v7 = DeepLinkActivityType.rawValue.getter();
    v9 = v8;
    v10 = [objc_opt_self() healthAppSharingProfilePath];
    v11 = sub_25130EFB4();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_25130F2D4();
    }
  }

  return v6 & 1;
}

uint64_t SharingManagementURLData.url()@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_25130ECE4();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25130EF24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512FCF30(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v31 - v16;
  v18 = sub_25130EEC4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F76E0();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2512FCFEC(v17, &qword_27F429C08, MEMORY[0x277CC9260]);
    return (*(v19 + 56))(v32, 1, 1, v18);
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
    (*(v8 + 16))(v12, v1, v7);
    v25 = _s10Foundation4UUIDV17HealthAppServicesE11toURLStringSSyF_0();
    v27 = v26;
    (*(v8 + 8))(v12, v7);
    v33 = v25;
    v34 = v27;
    sub_25130ECD4();
    sub_2512F8818();
    v28 = sub_25130F164();
    v30 = v29;
    (*(v2 + 8))(v6, v31);

    sub_251305560(0xEB00000000444955, v28, v30, v32);

    return (*(v19 + 8))(v23, v18);
  }
}

uint64_t static SharingManagementURLData.fromURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2512FCF30(0, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HAURL();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25130EEC4();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  v21 = HAURL.queryItems.getter();
  if (v21)
  {
    sub_2512F7B74(v21, v8);

    sub_2512FD0B4(v19, type metadata accessor for HAURL);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_2512FCFEC(v8, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter);
      v22 = 1;
    }

    else
    {
      sub_2512FBF60(v8, v14);
      sub_2512FBF60(v14, a2);
      v22 = 0;
    }
  }

  else
  {
    sub_2512FD0B4(v19, type metadata accessor for HAURL);
    v22 = 1;
  }

  v23 = type metadata accessor for SharingManagementURLData(0);
  return (*(*(v23 - 8) + 56))(a2, v22, 1, v23);
}

NSUserActivity __swiftcall SharingManagementURLData.userActivity()()
{
  v1 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_25130F214();

  v22 = 0x50676E6972616853;
  v23 = 0xEF2E656C69666F72;
  sub_2512FBEB0(v0, v5);
  v6 = sub_25130EF24();
  sub_2512FD05C();
  v7 = sub_25130F2A4();
  MEMORY[0x253070D80](v7);

  v8 = *(v6 - 8);
  (*(v8 + 8))(v5, v6);
  v9 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v10 = sub_25130EF94();
  v11 = [v9 initWithActivityType_];

  v12 = v11;
  v13 = sub_25130EF94();

  [v12 setTitle_];

  [v12 setEligibleForSearch_];
  [v12 setEligibleForHandoff_];
  [v12 setEligibleForPrediction_];

  sub_2512FCF30(0, &qword_280C61358, sub_2512F2C28, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v20 = xmmword_251310350;
  *(inited + 16) = xmmword_251310350;
  v22 = 0x4B6E6F6973726576;
  v23 = 0xEA00000000007965;
  sub_25130F1E4();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512FD0B4(inited + 32, sub_2512F2C28);
  v15 = sub_25130EF64();

  [v12 addUserInfoEntriesFromDictionary_];

  v16 = swift_initStackObject();
  *(v16 + 16) = v20;
  v22 = 0x55676E6972616873;
  v23 = 0xEB00000000444955;
  sub_25130F1E4();
  *(v16 + 96) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 72));
  (*(v8 + 16))(boxed_opaque_existential_0, v21, v6);
  sub_2512F2C8C(v16);
  swift_setDeallocating();
  sub_2512FD0B4(v16 + 32, sub_2512F2C28);
  v18 = sub_25130EF64();

  [v12 addUserInfoEntriesFromDictionary_];

  return v12;
}

uint64_t static SharingManagementURLData.fromUserActivity(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2512FCF30(0, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F84A4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2512FCFEC(v8, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter);
    v15 = 1;
  }

  else
  {
    sub_2512FBF60(v8, v14);
    sub_2512FBF60(v14, a2);
    v15 = 0;
  }

  v16 = type metadata accessor for SharingManagementURLData(0);
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

uint64_t sub_2512FCD58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2512FCF30(0, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SharingUUIDDeepLinkingParameter(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512F84A4(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2512FCFEC(v10, &qword_27F429C60, type metadata accessor for SharingUUIDDeepLinkingParameter);
    v17 = 1;
  }

  else
  {
    sub_2512FBF60(v10, v16);
    sub_2512FBF60(v16, a3);
    v17 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v17, 1, a2);
}

void sub_2512FCF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2512FCFB4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2512FCFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2512FCF30(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2512FD05C()
{
  result = qword_27F429C68;
  if (!qword_27F429C68)
  {
    sub_25130EF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C68);
  }

  return result;
}

uint64_t sub_2512FD0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_2512FD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2512FD394()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2512FD3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t HAURL.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t HAURL.queryItems.getter()
{
  v1 = type metadata accessor for HAURL();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v11 = sub_25130EE54();
  v12 = [v10 initWithURL:v11 resolvingAgainstBaseURL:0];

  if (v12)
  {
    v13 = [v12 queryItems];
    if (v13)
    {
      v14 = v13;
      sub_25130ED24();
      v15 = sub_25130F0D4();

      return v15;
    }
  }

  if (qword_280C61590 != -1)
  {
    swift_once();
  }

  v17 = sub_25130EF54();
  __swift_project_value_buffer(v17, qword_280C61668);
  sub_251302CD4(v0, v9);
  v18 = sub_25130EF34();
  v19 = sub_25130F114();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v27);
    *(v20 + 12) = 2080;
    sub_251302CD4(v9, v6);
    v22 = sub_25130EFD4();
    v24 = v23;
    sub_2513032E8(v9, type metadata accessor for HAURL);
    v25 = sub_251302D38(v22, v24, &v27);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_2512F1000, v18, v19, "[%s] Could not resolve query items for URL: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253071680](v21, -1, -1);
    MEMORY[0x253071680](v20, -1, -1);
  }

  else
  {

    sub_2513032E8(v9, type metadata accessor for HAURL);
  }

  return 0;
}

uint64_t HAURL.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EEC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *HAURL.objectType.getter()
{
  v1 = type metadata accessor for HAURLValidator();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EEC4();
  (*(*(v6 - 8) + 16))(v5, v0, v6);
  v7 = sub_25130EEA4();
  if (v8)
  {
    v29[2] = v7;
    v29[3] = v8;
    v9 = objc_opt_self();
    v10 = [v9 internalHealthAppURLScheme];
    v11 = sub_25130EFB4();
    v13 = v12;

    v29[0] = v11;
    v29[1] = v13;
    sub_2512F8818();
    v14 = sub_25130F174();

    if (!v14)
    {
      v19 = sub_25130EE84();
      v21 = v20;
      v22 = [v9 sampleTypeHostName];
      v23 = sub_25130EFB4();
      v25 = v24;

      if (!v21)
      {

        goto LABEL_3;
      }

      if (v19 == v23 && v21 == v25)
      {
      }

      else
      {
        v27 = sub_25130F2D4();

        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v17 = sub_2512FDAA0();
      goto LABEL_15;
    }
  }

LABEL_3:
  v15 = objc_opt_self();
  v16 = [v15 sampleTypeHostName];
  sub_25130EFB4();

  LOBYTE(v16) = sub_25130CA14();

  if (v16)
  {
    v17 = sub_2512FDDC0();
LABEL_15:
    v26 = v17;
    goto LABEL_16;
  }

  v18 = [v15 dataTypeDetailHostName];
  sub_25130EFB4();

  LOBYTE(v18) = sub_25130CA14();

  if (v18)
  {
    v17 = sub_2512FE178();
    goto LABEL_15;
  }

  v26 = 0;
LABEL_16:
  sub_2513032E8(v5, type metadata accessor for HAURLValidator);
  return v26;
}

id sub_2512FDAA0()
{
  v1 = type metadata accessor for HAURL();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EE34();
  if (v6[2] < 2uLL || (v6[4] == 47 ? (v8 = v6[5] == 0xE100000000000000) : (v8 = 0), !v8 && (v9 = v6, v10 = v6[4], v11 = sub_25130F2D4(), v6 = v9, (v11 & 1) == 0)))
  {

    return 0;
  }

  v13 = v6[6];
  v12 = v6[7];

  v14 = objc_opt_self();
  v15 = sub_25130EF94();
  v16 = [v14 _typeWithIdentifier_];

  if (!v16)
  {
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v17 = sub_25130EF54();
    __swift_project_value_buffer(v17, qword_280C61668);
    sub_251302CD4(v0, v5);

    v18 = sub_25130EF34();
    v19 = sub_25130F114();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315651;
      *(v20 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v28);
      *(v20 + 12) = 2082;
      v22 = sub_251302D38(v13, v12, &v28);

      *(v20 + 14) = v22;
      *(v20 + 22) = 2081;
      v23 = sub_25130EE24();
      v25 = v24;
      sub_2513032E8(v5, type metadata accessor for HAURL);
      v26 = sub_251302D38(v23, v25, &v28);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_2512F1000, v18, v19, "%s Invalid type identifier %{public}s provided in URL %{private}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v21, -1, -1);
      MEMORY[0x253071680](v20, -1, -1);
    }

    else
    {

      sub_2513032E8(v5, type metadata accessor for HAURL);
    }

    return 0;
  }

  return v16;
}

id sub_2512FDDC0()
{
  v1 = type metadata accessor for HAURL();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EE34();
  v7 = v6;
  if (v6[2] != 3)
  {
    goto LABEL_12;
  }

  v8 = v6[4] == 47 && v6[5] == 0xE100000000000000;
  if (!v8 && (sub_25130F2D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = v7[6];
  v9 = v7[7];
  v11 = objc_opt_self();

  v12 = [v11 sampleTypeHostName];
  v13 = sub_25130EFB4();
  v15 = v14;

  if (v10 == v13 && v9 == v15)
  {
  }

  else
  {
    v10 = sub_25130F2D4();

    if ((v10 & 1) == 0)
    {
LABEL_12:

      return 0;
    }
  }

  if (v7[2] < 3uLL)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_19:
    v21 = sub_25130EF54();
    __swift_project_value_buffer(v21, qword_280C61668);
    sub_251302CD4(v0, v5);

    v22 = sub_25130EF34();
    v23 = sub_25130F114();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315651;
      *(v24 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v32);
      *(v24 + 12) = 2082;
      v26 = sub_251302D38(v10, v9, &v32);

      *(v24 + 14) = v26;
      *(v24 + 22) = 2081;
      v27 = sub_25130EE24();
      v29 = v28;
      sub_2513032E8(v5, type metadata accessor for HAURL);
      v30 = sub_251302D38(v27, v29, &v32);

      *(v24 + 24) = v30;
      _os_log_impl(&dword_2512F1000, v22, v23, "%s Invalid type identifier %{public}s provided in URL %{private}s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v25, -1, -1);
      MEMORY[0x253071680](v24, -1, -1);
    }

    else
    {

      sub_2513032E8(v5, type metadata accessor for HAURL);
    }

    return 0;
  }

  v10 = v7[8];
  v9 = v7[9];

  v18 = objc_opt_self();
  v19 = sub_25130EF94();
  v20 = [v18 _typeWithIdentifier_];

  if (!v20)
  {
    if (qword_280C61590 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  return v20;
}

unsigned __int8 *sub_2512FE178()
{
  v0 = sub_25130ED24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC8958];
  v6 = MEMORY[0x277D83D88];
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v68 - v14;
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], v6);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v68 = &v68 - v19;
  sub_25130ED44();
  sub_251303348(v15, v12, &qword_27F429C70, v5);
  v20 = sub_25130ED84();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_2513033C8(v15, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_15:
    v37 = MEMORY[0x277CC8958];
    v38 = v12;
    goto LABEL_16;
  }

  v22 = sub_25130ED34();
  (*(v21 + 8))(v12, v20);
  if (!v22)
  {
    v12 = v15;
    goto LABEL_15;
  }

  v70 = *(v22 + 16);
  if (v70)
  {
    v23 = objc_opt_self();
    v24 = 0;
    v72 = v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v73 = v23;
    v71 = v1 + 16;
    v69 = (v1 + 8);
    while (v24 < *(v22 + 16))
    {
      v25 = v22;
      v26 = v1;
      v27 = v0;
      (*(v1 + 16))(v74, v72 + *(v1 + 72) * v24, v0);
      v28 = sub_25130ED04();
      v30 = v29;
      v31 = [v73 queryParameterNameDataTypeCode];
      v32 = sub_25130EFB4();
      v34 = v33;

      if (v28 == v32 && v30 == v34)
      {

LABEL_50:
        sub_2513033C8(v15, &qword_27F429C70, MEMORY[0x277CC8958]);

        v1 = v26;
        v39 = v68;
        v0 = v27;
        (*(v26 + 32))(v68, v74, v27);
        (*(v26 + 56))(v39, 0, 1, v27);
        goto LABEL_17;
      }

      v36 = sub_25130F2D4();

      if (v36)
      {
        goto LABEL_50;
      }

      ++v24;
      v0 = v27;
      (*v69)(v74, v27);
      v1 = v26;
      v22 = v25;
      if (v70 == v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_88;
  }

LABEL_13:

  v37 = MEMORY[0x277CC8958];
  v38 = v15;
LABEL_16:
  sub_2513033C8(v38, &qword_27F429C70, v37);
  v39 = v68;
  (*(v1 + 56))(v68, 1, 1, v0);
LABEL_17:
  if ((*(v1 + 48))(v39, 1, v0) == 1)
  {
    sub_2513033C8(v39, &qword_27F429C78, MEMORY[0x277CC8918]);
    return 0;
  }

  v40 = sub_25130ED14();
  v42 = v41;
  result = (*(v1 + 8))(v39, v0);
  if (!v42)
  {
    return 0;
  }

  v44 = HIBYTE(v42) & 0xF;
  v45 = v40 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v46 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
LABEL_88:

    return 0;
  }

  if ((v42 & 0x1000000000000000) != 0)
  {
    v48 = sub_251303438(v40, v42, 10);
    v66 = v67;
    goto LABEL_84;
  }

  if ((v42 & 0x2000000000000000) != 0)
  {
    v75[0] = v40;
    v75[1] = v42 & 0xFFFFFFFFFFFFFFLL;
    if (v40 == 43)
    {
      if (v44)
      {
        if (--v44)
        {
          v48 = 0;
          v58 = v75 + 1;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v48;
            if ((v48 * 10) >> 64 != (10 * v48) >> 63)
            {
              break;
            }

            v48 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              break;
            }

            ++v58;
            if (!--v44)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

LABEL_94:
      __break(1u);
      return result;
    }

    if (v40 != 45)
    {
      if (v44)
      {
        v48 = 0;
        v63 = v75;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          v65 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            break;
          }

          v48 = v65 + v64;
          if (__OFADD__(v65, v64))
          {
            break;
          }

          ++v63;
          if (!--v44)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_82;
    }

    if (v44)
    {
      if (--v44)
      {
        v48 = 0;
        v52 = v75 + 1;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          v54 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            break;
          }

          v48 = v54 - v53;
          if (__OFSUB__(v54, v53))
          {
            break;
          }

          ++v52;
          if (!--v44)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_82;
    }

    goto LABEL_92;
  }

  if ((v40 & 0x1000000000000000) != 0)
  {
    result = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_25130F224();
  }

  v47 = *result;
  if (v47 == 43)
  {
    if (v45 < 1)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v44 = v45 - 1;
    if (v45 != 1)
    {
      v48 = 0;
      if (result)
      {
        v55 = result + 1;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            goto LABEL_82;
          }

          v57 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            goto LABEL_82;
          }

          v48 = v57 + v56;
          if (__OFADD__(v57, v56))
          {
            goto LABEL_82;
          }

          ++v55;
          if (!--v44)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_74;
    }

LABEL_82:
    v48 = 0;
    LOBYTE(v44) = 1;
    goto LABEL_83;
  }

  if (v47 != 45)
  {
    if (v45)
    {
      v48 = 0;
      if (result)
      {
        while (1)
        {
          v61 = *result - 48;
          if (v61 > 9)
          {
            goto LABEL_82;
          }

          v62 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            goto LABEL_82;
          }

          v48 = v62 + v61;
          if (__OFADD__(v62, v61))
          {
            goto LABEL_82;
          }

          ++result;
          if (!--v45)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_82;
  }

  if (v45 < 1)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v44 = v45 - 1;
  if (v45 == 1)
  {
    goto LABEL_82;
  }

  v48 = 0;
  if (result)
  {
    v49 = result + 1;
    while (1)
    {
      v50 = *v49 - 48;
      if (v50 > 9)
      {
        goto LABEL_82;
      }

      v51 = 10 * v48;
      if ((v48 * 10) >> 64 != (10 * v48) >> 63)
      {
        goto LABEL_82;
      }

      v48 = v51 - v50;
      if (__OFSUB__(v51, v50))
      {
        goto LABEL_82;
      }

      ++v49;
      if (!--v44)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_74:
  LOBYTE(v44) = 0;
LABEL_83:
  v76 = v44;
  v66 = v44;
LABEL_84:

  if (v66)
  {
    return 0;
  }

  return [objc_opt_self() dataTypeWithCode_];
}

uint64_t HAURL.objectTypeAllDataNavigationSampleUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HAURLValidator();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25130EEC4();
  (*(*(v8 - 8) + 16))(v7, v1, v8);
  if ((sub_25130CBC0() & 1) == 0)
  {
    goto LABEL_4;
  }

  v9 = sub_25130EE34();
  if (v9[2] <= 3uLL)
  {

LABEL_4:
    sub_2513032E8(v7, type metadata accessor for HAURLValidator);
    v10 = sub_25130EF24();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  v12 = v9[10];
  v13 = v9[11];

  _s10Foundation4UUIDV17HealthAppServicesE13fromURLStringyACSgSSFZ_0();

  return sub_2513032E8(v7, type metadata accessor for HAURLValidator);
}

uint64_t sub_2512FEB2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_25130ED24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CC8958];
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v17 = *a1;
  v19 = &v41 - v18;
  sub_25130ED44();
  sub_251303348(v19, v15, &qword_27F429C70, v9);
  v20 = sub_25130ED84();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_2513033C8(v19, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_39:
    v38 = MEMORY[0x277CC8958];
    v39 = v15;
    goto LABEL_40;
  }

  v22 = sub_25130ED34();
  result = (*(v21 + 8))(v15, v20);
  if (!v22)
  {
    v15 = v19;
    goto LABEL_39;
  }

  v42 = v19;
  v45 = *(v22 + 16);
  if (v45)
  {
    v24 = 0;
    v47 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v46 = v4 + 16;
    v43 = v22;
    do
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v4 + 16))(v8, v47 + *(v4 + 72) * v24, v3);
      v25 = sub_25130ED04();
      v27 = v26;
      if (v17 > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v28 = 0xE200000000000000;
            v29 = 26992;
            goto LABEL_31;
          }

          v48 = v25;
          if (v17 == 8)
          {
            v30 = [objc_opt_self() queryParameterNameTrendOverlay];
          }

          else
          {
            v30 = [objc_opt_self() queryParameterNameSource];
          }

          goto LABEL_30;
        }

        if (v17 == 5)
        {
          v29 = 0x79726F6765746163;
        }

        else
        {
          v29 = 0x656C646E7562;
        }

        if (v17 == 5)
        {
          v28 = 0xE800000000000000;
        }

        else
        {
          v28 = 0xE600000000000000;
        }
      }

      else
      {
        if (v17 <= 1)
        {
          v48 = v25;
          if (v17)
          {
            v30 = [objc_opt_self() queryParameterNameStartDate];
          }

          else
          {
            v30 = [objc_opt_self() queryParameterNameDate];
          }

LABEL_30:
          v34 = v30;
          v29 = sub_25130EFB4();
          v28 = v35;

          v25 = v48;
          v22 = v43;
          goto LABEL_31;
        }

        if (v17 == 2)
        {
          v48 = v25;
          v31 = [objc_opt_self() queryParameterNameEndDate];
        }

        else
        {
          if (v17 == 3)
          {
            v28 = 0xE600000000000000;
            v29 = 0x686372616573;
            goto LABEL_31;
          }

          v48 = v25;
          v31 = [objc_opt_self() queryParameterNameDataTypeCode];
        }

        v32 = v31;
        v29 = sub_25130EFB4();
        v28 = v33;

        v22 = v43;
        v25 = v48;
      }

LABEL_31:
      if (v25 == v29 && v27 == v28)
      {

LABEL_43:
        sub_2513033C8(v42, &qword_27F429C70, MEMORY[0x277CC8958]);

        v40 = v44;
        (*(v4 + 32))(v44, v8, v3);
        return (*(v4 + 56))(v40, 0, 1, v3);
      }

      v37 = sub_25130F2D4();

      if (v37)
      {
        goto LABEL_43;
      }

      ++v24;
      result = (*(v4 + 8))(v8, v3);
    }

    while (v45 != v24);
  }

  v38 = MEMORY[0x277CC8958];
  v39 = v42;
LABEL_40:
  sub_2513033C8(v39, &qword_27F429C70, v38);
  return (*(v4 + 56))(v44, 1, 1, v3);
}

uint64_t sub_2512FF0B8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_25130F224();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_251303438(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id HAURL.profileIdentifier.getter()
{
  v0 = sub_25130EE54();
  v1 = [v0 _hk_extractEncodedHKProfileIdentifier];

  return v1;
}

uint64_t sub_2512FF424@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CC8918];
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - v12;
  LOBYTE(v24) = *a1;
  sub_2512FEB2C(&v24, &v23 - v12);
  sub_251303348(v13, v10, &qword_27F429C78, v4);
  v14 = sub_25130ED24();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_2513033C8(v13, &qword_27F429C78, MEMORY[0x277CC8918]);
    v16 = 1;
    v13 = v10;
  }

  else
  {
    v17 = sub_25130ED14();
    v19 = v18;
    (*(v15 + 8))(v10, v14);
    if (v19 && (v24 = 0, v20 = sub_251304444(v17, v19), , v20))
    {
      sub_25130EEE4();
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  sub_2513033C8(v13, &qword_27F429C78, MEMORY[0x277CC8918]);
  v21 = sub_25130EEF4();
  return (*(*(v21 - 8) + 56))(a2, v16, 1, v21);
}

void *HAURL.source.getter()
{
  v0 = sub_25130ED24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC8958];
  v6 = MEMORY[0x277D83D88];
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v41 - v14;
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], v6);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v42 = &v41 - v19;
  sub_25130ED44();
  sub_251303348(v15, v12, &qword_27F429C70, v5);
  v20 = sub_25130ED84();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_2513033C8(v15, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_15:
    v37 = MEMORY[0x277CC8958];
    v38 = v12;
LABEL_16:
    sub_2513033C8(v38, &qword_27F429C70, v37);
    v39 = v42;
    (*(v1 + 56))(v42, 1, 1, v0);
LABEL_17:
    if ((*(v1 + 48))(v39, 1, v0) == 1)
    {
      sub_2513033C8(v39, &qword_27F429C78, MEMORY[0x277CC8918]);
      return 0;
    }

    else
    {
      v40 = sub_25130ED14();
      (*(v1 + 8))(v39, v0);
      return v40;
    }
  }

  v22 = sub_25130ED34();
  (*(v21 + 8))(v12, v20);
  if (!v22)
  {
    v12 = v15;
    goto LABEL_15;
  }

  v44 = *(v22 + 16);
  if (!v44)
  {
LABEL_13:

    v37 = MEMORY[0x277CC8958];
    v38 = v15;
    goto LABEL_16;
  }

  result = objc_opt_self();
  v24 = 0;
  v46 = v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v47 = result;
  v45 = v1 + 16;
  v43 = (v1 + 8);
  while (v24 < *(v22 + 16))
  {
    v25 = v22;
    v26 = v1;
    v27 = v0;
    (*(v1 + 16))(v48, v46 + *(v1 + 72) * v24, v0);
    v28 = sub_25130ED04();
    v30 = v29;
    v31 = [v47 queryParameterNameSource];
    v32 = sub_25130EFB4();
    v34 = v33;

    if (v28 == v32 && v30 == v34)
    {

LABEL_22:
      sub_2513033C8(v15, &qword_27F429C70, MEMORY[0x277CC8958]);

      v1 = v26;
      v39 = v42;
      v0 = v27;
      (*(v26 + 32))(v42, v48, v27);
      (*(v26 + 56))(v39, 0, 1, v27);
      goto LABEL_17;
    }

    v36 = sub_25130F2D4();

    if (v36)
    {
      goto LABEL_22;
    }

    ++v24;
    v0 = v27;
    result = (*v43)(v48, v27);
    v1 = v26;
    v22 = v25;
    if (v44 == v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t HAURL.pluginBundleName.getter()
{
  v1 = type metadata accessor for HAURLValidator();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EEC4();
  (*(*(v6 - 8) + 16))(v5, v0, v6);
  v7 = sub_25130EEA4();
  if (!v8)
  {
    goto LABEL_3;
  }

  v30 = v7;
  v31 = v8;
  v9 = [objc_opt_self() internalHealthAppURLScheme];
  v10 = sub_25130EFB4();
  v12 = v11;

  v29[2] = v10;
  v29[3] = v12;
  sub_2512F8818();
  v13 = sub_25130F174();

  if (v13)
  {
    goto LABEL_3;
  }

  v15 = sub_25130EE84();
  if (v16)
  {
    v30 = 46;
    v31 = 0xE100000000000000;
    v17 = MEMORY[0x28223BE20](v15, v16);
    v29[-2] = &v30;
    v18 = v17;
    v20 = v19;

    v21 = v18;
    v23 = sub_2513025BC(0x7FFFFFFFFFFFFFFFLL, 1, sub_25130453C, &v29[-4], v18, v20, v22);
    if (v23[2] == 2)
    {
      v24 = v23[8];
      v25 = v23[9];
      v26 = v23[10];
      v27 = v23[11];

      v28 = sub_251304594(v24, v25, v26, v27, 0x6C7068746C616568, 0xEC0000006E696775);

      sub_2513032E8(v5, type metadata accessor for HAURLValidator);
      if (v28)
      {
        return v21;
      }
    }

    else
    {
      sub_2513032E8(v5, type metadata accessor for HAURLValidator);
    }
  }

  else
  {
LABEL_3:
    sub_2513032E8(v5, type metadata accessor for HAURLValidator);
  }

  return 0;
}

unsigned __int8 *HAURL.trendTimescope.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HAURL();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25130ED24();
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_251304874(0, &qword_27F429C78, MEMORY[0x277CC8918], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v121 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v122 = &v119 - v19;
  sub_251304874(0, &qword_27F429C70, MEMORY[0x277CC8958], v12);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v123 = &v119 - v27;
  v28 = type metadata accessor for HAURLValidator();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25130EEC4();
  (*(*(v33 - 8) + 16))(v32, v0, v33);
  v34 = sub_25130EEA4();
  if (!v35)
  {
    goto LABEL_3;
  }

  v129 = v34;
  v130 = v35;
  v36 = objc_opt_self();
  v37 = [v36 internalHealthAppURLScheme];
  v38 = sub_25130EFB4();
  v126 = v32;
  v40 = v39;

  v127 = v38;
  v128 = v40;
  sub_2512F8818();
  v41 = sub_25130F174();

  v32 = v126;

  if (v41)
  {
    goto LABEL_3;
  }

  v44 = sub_25130EE84();
  v46 = v45;
  v47 = [v36 sampleTypeHostName];
  v48 = sub_25130EFB4();
  v50 = v49;

  if (!v46)
  {

    v32 = v126;
    goto LABEL_3;
  }

  if (v44 == v48 && v46 == v50)
  {

    v32 = v126;
  }

  else
  {
    v51 = sub_25130F2D4();

    v32 = v126;
    if ((v51 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v52 = *(sub_25130EE34() + 16);

  if (v52 != 2)
  {
    goto LABEL_3;
  }

  v53 = sub_25130EE34();
  if (!v53[2])
  {

    goto LABEL_3;
  }

  v55 = v53[4];
  v54 = v53[5];

  if (v55 == 47 && v54 == 0xE100000000000000)
  {
  }

  else
  {
    v56 = sub_25130F2D4();

    if ((v56 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v57 = (sub_25130EE34() + 16);
  if (!*v57)
  {
LABEL_114:
    sub_2513032E8(v32, type metadata accessor for HAURLValidator);

    return 0;
  }

  v58 = &v57[2 * *v57];
  v59 = *v58;
  v60 = v58[1];

  v61 = objc_opt_self();
  v120 = v59;
  v62 = sub_25130EF94();
  v63 = [v61 _typeWithIdentifier_];

  if (!v63)
  {
    v67 = v120;
    if (qword_280C61590 == -1)
    {
LABEL_24:
      v68 = sub_25130EF54();
      __swift_project_value_buffer(v68, qword_280C61668);
      sub_251302CD4(v1, v6);

      v69 = sub_25130EF34();
      v70 = v60;
      v71 = sub_25130F114();

      if (os_log_type_enabled(v69, v71))
      {
        v72 = swift_slowAlloc();
        v73 = v32;
        v74 = swift_slowAlloc();
        v129 = v74;
        *v72 = 136315651;
        *(v72 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, &v129);
        *(v72 + 12) = 2082;
        v75 = sub_251302D38(v67, v70, &v129);

        *(v72 + 14) = v75;
        *(v72 + 22) = 2081;
        v76 = sub_25130EE24();
        v78 = v77;
        sub_2513032E8(v6, type metadata accessor for HAURL);
        v79 = sub_251302D38(v76, v78, &v129);

        *(v72 + 24) = v79;
        _os_log_impl(&dword_2512F1000, v69, v71, "%s Invalid type identifier %{public}s provided in URL %{private}s with trend", v72, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253071680](v74, -1, -1);
        MEMORY[0x253071680](v72, -1, -1);

        v42 = v73;
        goto LABEL_4;
      }

      sub_2513032E8(v6, type metadata accessor for HAURL);
LABEL_3:
      v42 = v32;
LABEL_4:
      sub_2513032E8(v42, type metadata accessor for HAURLValidator);
      return 0;
    }

LABEL_112:
    swift_once();
    goto LABEL_24;
  }

  v64 = v123;
  sub_25130ED44();
  sub_251303348(v64, v25, &qword_27F429C70, MEMORY[0x277CC8958]);
  v65 = sub_25130ED84();
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v25, 1, v65) == 1)
  {
    sub_2513033C8(v25, &qword_27F429C70, MEMORY[0x277CC8958]);
    v60 = v124;
LABEL_37:
    v89 = v122;
    v67 = v125;
    (*(v60 + 56))(v122, 1, 1, v125);
    goto LABEL_42;
  }

  v6 = sub_25130ED34();
  (*(v66 + 8))(v25, v65);
  v60 = v124;
  if (!v6)
  {
    goto LABEL_37;
  }

  v67 = v125;
  v119 = *(v6 + 2);
  if (v119)
  {
    v1 = 0;
    v120 = v124 + 16;
    v32 = (v124 + 8);
    while (v1 < *(v6 + 2))
    {
      (*(v60 + 16))(v11, &v6[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v1], v67);
      v80 = sub_25130ED04();
      v82 = v81;
      v83 = [v36 queryParameterNameTrendOverlay];
      v84 = sub_25130EFB4();
      v86 = v85;

      if (v80 == v84 && v82 == v86)
      {

LABEL_40:

        v60 = v124;
        v67 = v125;
        v89 = v122;
        (*(v124 + 32))(v122, v11, v125);
        (*(v60 + 56))(v89, 0, 1, v67);
        goto LABEL_41;
      }

      v88 = sub_25130F2D4();

      if (v88)
      {
        goto LABEL_40;
      }

      ++v1;
      v67 = v125;
      (*v32)(v11, v125);
      v60 = v124;
      if (v119 == v1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_112;
  }

LABEL_36:

  v89 = v122;
  (*(v60 + 56))(v122, 1, 1, v67);
LABEL_41:
  v32 = v126;
LABEL_42:
  v90 = v121;
  sub_251303348(v89, v121, &qword_27F429C78, MEMORY[0x277CC8918]);
  if ((*(v60 + 48))(v90, 1, v67) == 1)
  {
    v91 = MEMORY[0x277CC8918];
    sub_2513033C8(v89, &qword_27F429C78, MEMORY[0x277CC8918]);
    sub_2513033C8(v123, &qword_27F429C70, MEMORY[0x277CC8958]);
    sub_2513032E8(v32, type metadata accessor for HAURLValidator);
    sub_2513033C8(v90, &qword_27F429C78, v91);
    return 0;
  }

  v92 = sub_25130ED14();
  v94 = v93;
  result = (*(v60 + 8))(v90, v67);
  if (!v94)
  {
    sub_2513033C8(v89, &qword_27F429C78, MEMORY[0x277CC8918]);
    sub_2513033C8(v123, &qword_27F429C70, MEMORY[0x277CC8958]);
    goto LABEL_3;
  }

  v95 = HIBYTE(v94) & 0xF;
  v96 = v92 & 0xFFFFFFFFFFFFLL;
  if ((v94 & 0x2000000000000000) != 0)
  {
    v97 = HIBYTE(v94) & 0xF;
  }

  else
  {
    v97 = v92 & 0xFFFFFFFFFFFFLL;
  }

  if (!v97)
  {
    sub_2513033C8(v89, &qword_27F429C78, MEMORY[0x277CC8918]);
    sub_2513033C8(v123, &qword_27F429C70, MEMORY[0x277CC8958]);
    goto LABEL_114;
  }

  if ((v94 & 0x1000000000000000) == 0)
  {
    if ((v94 & 0x2000000000000000) != 0)
    {
      v129 = v92;
      v130 = v94 & 0xFFFFFFFFFFFFFFLL;
      if (v92 == 43)
      {
        if (v95)
        {
          if (--v95)
          {
            v99 = 0;
            v109 = &v129 + 1;
            while (1)
            {
              v110 = *v109 - 48;
              if (v110 > 9)
              {
                break;
              }

              v111 = 10 * v99;
              if ((v99 * 10) >> 64 != (10 * v99) >> 63)
              {
                break;
              }

              v99 = v111 + v110;
              if (__OFADD__(v111, v110))
              {
                break;
              }

              ++v109;
              if (!--v95)
              {
                goto LABEL_107;
              }
            }
          }

          goto LABEL_106;
        }

LABEL_120:
        __break(1u);
        return result;
      }

      if (v92 != 45)
      {
        if (v95)
        {
          v99 = 0;
          v114 = &v129;
          while (1)
          {
            v115 = *v114 - 48;
            if (v115 > 9)
            {
              break;
            }

            v116 = 10 * v99;
            if ((v99 * 10) >> 64 != (10 * v99) >> 63)
            {
              break;
            }

            v99 = v116 + v115;
            if (__OFADD__(v116, v115))
            {
              break;
            }

            v114 = (v114 + 1);
            if (!--v95)
            {
              goto LABEL_107;
            }
          }
        }

        goto LABEL_106;
      }

      if (v95)
      {
        if (--v95)
        {
          v99 = 0;
          v103 = &v129 + 1;
          while (1)
          {
            v104 = *v103 - 48;
            if (v104 > 9)
            {
              break;
            }

            v105 = 10 * v99;
            if ((v99 * 10) >> 64 != (10 * v99) >> 63)
            {
              break;
            }

            v99 = v105 - v104;
            if (__OFSUB__(v105, v104))
            {
              break;
            }

            ++v103;
            if (!--v95)
            {
              goto LABEL_107;
            }
          }
        }

        goto LABEL_106;
      }
    }

    else
    {
      if ((v92 & 0x1000000000000000) != 0)
      {
        result = ((v94 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_25130F224();
      }

      v98 = *result;
      if (v98 == 43)
      {
        if (v96 >= 1)
        {
          v95 = v96 - 1;
          if (v96 != 1)
          {
            v99 = 0;
            if (result)
            {
              v106 = result + 1;
              while (1)
              {
                v107 = *v106 - 48;
                if (v107 > 9)
                {
                  goto LABEL_106;
                }

                v108 = 10 * v99;
                if ((v99 * 10) >> 64 != (10 * v99) >> 63)
                {
                  goto LABEL_106;
                }

                v99 = v108 + v107;
                if (__OFADD__(v108, v107))
                {
                  goto LABEL_106;
                }

                ++v106;
                if (!--v95)
                {
                  goto LABEL_107;
                }
              }
            }

            goto LABEL_98;
          }

          goto LABEL_106;
        }

        goto LABEL_119;
      }

      if (v98 != 45)
      {
        if (v96)
        {
          v99 = 0;
          if (result)
          {
            while (1)
            {
              v112 = *result - 48;
              if (v112 > 9)
              {
                goto LABEL_106;
              }

              v113 = 10 * v99;
              if ((v99 * 10) >> 64 != (10 * v99) >> 63)
              {
                goto LABEL_106;
              }

              v99 = v113 + v112;
              if (__OFADD__(v113, v112))
              {
                goto LABEL_106;
              }

              ++result;
              if (!--v96)
              {
                goto LABEL_98;
              }
            }
          }

          goto LABEL_98;
        }

LABEL_106:
        v99 = 0;
        LOBYTE(v95) = 1;
        goto LABEL_107;
      }

      if (v96 >= 1)
      {
        v95 = v96 - 1;
        if (v96 != 1)
        {
          v99 = 0;
          if (result)
          {
            v100 = result + 1;
            while (1)
            {
              v101 = *v100 - 48;
              if (v101 > 9)
              {
                goto LABEL_106;
              }

              v102 = 10 * v99;
              if ((v99 * 10) >> 64 != (10 * v99) >> 63)
              {
                goto LABEL_106;
              }

              v99 = v102 - v101;
              if (__OFSUB__(v102, v101))
              {
                goto LABEL_106;
              }

              ++v100;
              if (!--v95)
              {
                goto LABEL_107;
              }
            }
          }

LABEL_98:
          LOBYTE(v95) = 0;
LABEL_107:
          LOBYTE(v127) = v95;
          v117 = v95;
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      __break(1u);
    }

    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v99 = sub_251303438(v92, v94, 10);
  v117 = v118;
LABEL_108:
  sub_2513033C8(v89, &qword_27F429C78, MEMORY[0x277CC8918]);
  sub_2513033C8(v123, &qword_27F429C70, MEMORY[0x277CC8958]);
  sub_2513032E8(v32, type metadata accessor for HAURLValidator);

  if (v117)
  {
    return 0;
  }

  else
  {
    return v99;
  }
}

uint64_t static HAURL.createURLComponents(pluginBundleName:)(uint64_t a1, uint64_t a2)
{
  sub_25130ED74();
  v4 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_25130ED64();

  return MEMORY[0x253070AC0](a1, a2);
}

uint64_t static HAURL.appendProfileIdentifier(to:profileIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_25130EE54();
  v6 = [v4 _hk_appendQueryParameterToURL_forHKProfileIdentifier_];

  if (v6)
  {
    sub_25130EE64();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_25130EEC4();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

Swift::OpaquePointer_optional __swiftcall HAURL.createUserActivityDictionary()()
{
  v1 = v0;
  v179[5] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HAURLValidator();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HAURL();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25130ED24();
  v172 = *(v12 - 8);
  v13 = *(v172 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v18 = sub_25130EE54();
  v19 = [v17 initWithURL:v18 resolvingAgainstBaseURL:0];

  if (v19)
  {
    v21 = [v19 queryItems];
    v160 = v19;
    if (v21)
    {
      v22 = v21;
      v23 = sub_25130F0D4();
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = sub_2512F2C8C(MEMORY[0x277D84F90]);
    v171 = *(v23 + 16);
    if (v171)
    {
      v159 = v6;
      v26 = 0;
      v161 = 0;
      v170 = v23 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
      v169 = v172 + 16;
      v157 = 0x8000000251311620;
      v156 = 0x8000000251311600;
      v168 = (v172 + 8);
      *&v25 = 136315394;
      v158 = v25;
      v165 = v1;
      v163 = v11;
      v164 = v12;
      v167 = v23;
      while (1)
      {
        if (v26 >= *(v23 + 16))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
        }

        (*(v172 + 16))(v16, v170 + *(v172 + 72) * v26, v12);
        v28._countAndFlagsBits = sub_25130ED04();
        QueryParameterName.init(paramName:)(v28);
        v29 = LOBYTE(v179[0]);
        if (LOBYTE(v179[0]) == 10 || (v30 = sub_25130ED14(), !v31))
        {
          v35 = sub_25130ED14();
          if (v36)
          {
            v37 = v35;
            v38 = v36;
            *&v177 = sub_25130ED04();
            *(&v177 + 1) = v39;
            v40 = MEMORY[0x277D837D0];
            sub_25130F1E4();
            v178 = v40;
            *&v177 = v37;
            *(&v177 + 1) = v38;
            sub_2512F2EA8(&v177, v176);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v175 = v24;
            v42 = sub_2512F2E64(v179);
            v44 = v24[2];
            v45 = (v43 & 1) == 0;
            v46 = __OFADD__(v44, v45);
            v47 = v44 + v45;
            if (v46)
            {
              goto LABEL_160;
            }

            v48 = v43;
            if (v24[3] >= v47)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v140 = v42;
                sub_2513042AC();
                v42 = v140;
              }
            }

            else
            {
              sub_251303E38(v47, isUniquelyReferenced_nonNull_native);
              v42 = sub_2512F2E64(v179);
              if ((v48 & 1) != (v49 & 1))
              {
                goto LABEL_164;
              }
            }

            v23 = v167;
            v24 = v175;
            if (v48)
            {
              v27 = (v175[7] + 32 * v42);
              __swift_destroy_boxed_opaque_existential_0(v27);
              sub_2512F2EA8(v176, v27);
              sub_2512F8B54(v179);
              (*v168)(v16, v12);
            }

            else
            {
              v175[(v42 >> 6) + 8] |= 1 << v42;
              v50 = v42;
              sub_25130460C(v179, v24[6] + 40 * v42);
              sub_2512F2EA8(v176, (v24[7] + 32 * v50));
              sub_2512F8B54(v179);
              (*v168)(v16, v12);
              v51 = v24[2];
              v46 = __OFADD__(v51, 1);
              v52 = v51 + 1;
              if (v46)
              {
                goto LABEL_161;
              }

              v24[2] = v52;
            }

            goto LABEL_9;
          }

          (*v168)(v16, v12);
          goto LABEL_22;
        }

        v32 = v31;
        v166 = v30;
        v33 = sub_25130EEC4();
        (*(*(v33 - 8) + 16))(v11, v1, v33);
        LOBYTE(v179[0]) = v29;
        if (QueryParameterName.rawValue.getter() == 26992 && v34 == 0xE200000000000000)
        {
        }

        else
        {
          v53 = sub_25130F2D4();

          if ((v53 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v54 = sub_25130EE54();
        v55 = [v54 _hk_extractEncodedHKProfileIdentifier];

        if (!v55)
        {
LABEL_36:
          LOBYTE(v179[0]) = v29;
          Parameter = QueryParameterName.rawValue.getter();
          v67 = v66;
          v162 = objc_opt_self();
          v68 = [v162 queryParameterNameDataTypeCode];
          v69 = sub_25130EFB4();
          v71 = v70;

          if (Parameter == v69 && v67 == v71)
          {

            goto LABEL_53;
          }

          v72 = sub_25130F2D4();

          if (v72)
          {
            goto LABEL_53;
          }

          LOBYTE(v179[0]) = v29;
          if (QueryParameterName.rawValue.getter() == 0x79726F6765746163 && v73 == 0xE800000000000000)
          {

            goto LABEL_53;
          }

          v89 = sub_25130F2D4();

          if (v89)
          {
LABEL_53:

            sub_2512FF0B8(v166, v32);
            if (v90)
            {
              goto LABEL_54;
            }

            if (v29 <= 4)
            {
              v1 = v165;
              v11 = v163;
              v12 = v164;
              v23 = v167;
              if (v29 > 1)
              {
                if (v29 == 2)
                {
                  v98 = 0xE700000000000000;
                  v99 = 0x65746144646E65;
                }

                else if (v29 == 3)
                {
                  v98 = 0xE500000000000000;
                  v99 = 0x7972657571;
                }

                else
                {
                  v99 = 0x6570795461746164;
                  v98 = 0xEC00000065646F43;
                }

                goto LABEL_134;
              }

              if (!v29)
              {
                v98 = 0xE400000000000000;
                v99 = 1702125924;
                goto LABEL_134;
              }

              v99 = 0x7461447472617473;
LABEL_132:
              v98 = 0xE900000000000065;
              goto LABEL_134;
            }

            v1 = v165;
            v11 = v163;
            v12 = v164;
            v23 = v167;
            if (v29 > 6)
            {
              if (v29 == 7)
              {
                v99 = 0xD000000000000011;
                v98 = v157;
                goto LABEL_134;
              }

              if (v29 == 8)
              {
                v99 = 0x6D6954646E657274;
                v98 = 0xEE0065706F637365;
                goto LABEL_134;
              }

              v99 = 0x6372756F536C7275;
              goto LABEL_132;
            }

            if (v29 == 5)
            {
              v99 = 0xD000000000000011;
              v98 = v156;
            }

            else
            {
              v98 = 0xEA0000000000656DLL;
              v99 = 0x614E656C646E7562;
            }

LABEL_134:
            *&v177 = v99;
            *(&v177 + 1) = v98;
            sub_25130F1E4();
            v136 = sub_25130F0F4();
            v178 = sub_2512FB8F0();
            *&v177 = v136;
LABEL_151:
            sub_2512F2EA8(&v177, v176);
            v139 = swift_isUniquelyReferenced_nonNull_native();
            v175 = v24;
            sub_2513040E4(v176, v179, v139);
            sub_2512F8B54(v179);
            sub_2513032E8(v11, type metadata accessor for HAURL);
            (*v168)(v16, v12);
            v24 = v175;
            goto LABEL_9;
          }

LABEL_54:
          LOBYTE(v179[0]) = v29;
          v91 = QueryParameterName.rawValue.getter();
          v93 = v92;
          v94 = [v162 queryParameterNameDate];
          v95 = sub_25130EFB4();
          v97 = v96;

          if (v91 == v95 && v93 == v97)
          {
LABEL_56:

            v1 = v165;
            goto LABEL_63;
          }

          v100 = sub_25130F2D4();

          v1 = v165;
          if ((v100 & 1) == 0)
          {
            LOBYTE(v179[0]) = v29;
            v108 = QueryParameterName.rawValue.getter();
            v110 = v109;
            v111 = [v162 queryParameterNameStartDate];
            v112 = sub_25130EFB4();
            v114 = v113;

            if (v108 == v112 && v110 == v114)
            {
              goto LABEL_56;
            }

            v115 = sub_25130F2D4();

            v1 = v165;
            if ((v115 & 1) == 0)
            {
              LOBYTE(v179[0]) = v29;
              v116 = QueryParameterName.rawValue.getter();
              v118 = v117;
              v119 = [v162 queryParameterNameEndDate];
              v120 = sub_25130EFB4();
              v122 = v121;

              if (v116 == v120 && v118 == v122)
              {
                goto LABEL_56;
              }

              v123 = sub_25130F2D4();

              v1 = v165;
              if ((v123 & 1) == 0)
              {
                v11 = v163;
                v12 = v164;
                v23 = v167;
                v101 = v166;
                if (v29 > 4)
                {
LABEL_85:
                  if (v29 <= 6)
                  {
                    if (v29 == 5)
                    {
                      v107 = 0xD000000000000011;
                      v106 = v156;
                    }

                    else
                    {
                      v106 = 0xEA0000000000656DLL;
                      v107 = 0x614E656C646E7562;
                    }

                    goto LABEL_142;
                  }

                  if (v29 == 7)
                  {
                    v107 = 0xD000000000000011;
                    v106 = v157;
                    goto LABEL_142;
                  }

                  if (v29 == 8)
                  {
                    v107 = 0x6D6954646E657274;
                    v106 = 0xEE0065706F637365;
LABEL_142:
                    *&v177 = v107;
                    *(&v177 + 1) = v106;
                    v137 = MEMORY[0x277D837D0];
                    sub_25130F1E4();
                    v178 = v137;
                    *&v177 = v101;
                    *(&v177 + 1) = v32;
                    goto LABEL_151;
                  }

                  v107 = 0x6372756F536C7275;
                  goto LABEL_140;
                }

LABEL_70:
                if (v29 > 1)
                {
                  if (v29 == 2)
                  {
                    v106 = 0xE700000000000000;
                    v107 = 0x65746144646E65;
                  }

                  else if (v29 == 3)
                  {
                    v106 = 0xE500000000000000;
                    v107 = 0x7972657571;
                  }

                  else
                  {
                    v107 = 0x6570795461746164;
                    v106 = 0xEC00000065646F43;
                  }

                  goto LABEL_142;
                }

                if (!v29)
                {
                  v106 = 0xE400000000000000;
                  v107 = 1702125924;
                  goto LABEL_142;
                }

                v107 = 0x7461447472617473;
LABEL_140:
                v106 = 0xE900000000000065;
                goto LABEL_142;
              }
            }
          }

LABEL_63:
          v179[0] = 0;
          v101 = v166;
          v102 = v161;
          v103 = sub_251304444(v166, v32);
          v161 = v102;
          if (!v103)
          {
            v11 = v163;
            v12 = v164;
            v23 = v167;
            if (v29 > 4)
            {
              goto LABEL_85;
            }

            goto LABEL_70;
          }

          v11 = v163;
          v12 = v164;
          v23 = v167;
          if (v29 > 4)
          {
            if (v29 <= 6)
            {
              if (v29 == 5)
              {
                v105 = 0xD000000000000011;
                v104 = v156;
              }

              else
              {
                v104 = 0xEA0000000000656DLL;
                v105 = 0x614E656C646E7562;
              }

              goto LABEL_150;
            }

            if (v29 == 7)
            {
              v105 = 0xD000000000000011;
              v104 = v157;
              goto LABEL_150;
            }

            if (v29 == 8)
            {
              v105 = 0x6D6954646E657274;
              v104 = 0xEE0065706F637365;
LABEL_150:
              v138 = v179[0];
              *&v177 = v105;
              *(&v177 + 1) = v104;
              sub_25130F1E4();
              v178 = MEMORY[0x277D839F8];
              *&v177 = v138;
              goto LABEL_151;
            }

            v105 = 0x6372756F536C7275;
          }

          else
          {
            if (v29 > 1)
            {
              if (v29 == 2)
              {
                v104 = 0xE700000000000000;
                v105 = 0x65746144646E65;
              }

              else if (v29 == 3)
              {
                v104 = 0xE500000000000000;
                v105 = 0x7972657571;
              }

              else
              {
                v105 = 0x6570795461746164;
                v104 = 0xEC00000065646F43;
              }

              goto LABEL_150;
            }

            if (!v29)
            {
              v104 = 0xE400000000000000;
              v105 = 1702125924;
              goto LABEL_150;
            }

            v105 = 0x7461447472617473;
          }

          v104 = 0xE900000000000065;
          goto LABEL_150;
        }

        v56 = objc_opt_self();
        v179[0] = 0;
        v57 = [v56 archivedDataWithRootObject:v55 requiringSecureCoding:1 error:v179];
        v58 = v179[0];
        if (!v57)
        {
          v166 = v55;
          v74 = v58;
          v75 = sub_25130EE04();

          swift_willThrow();
          if (qword_280C61590 != -1)
          {
            swift_once();
          }

          v161 = 0;
          v76 = sub_25130EF54();
          __swift_project_value_buffer(v76, qword_280C61668);
          v77 = v75;
          v78 = sub_25130EF34();
          v79 = sub_25130F114();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v179[0] = v162;
            *v80 = v158;
            *(v80 + 4) = sub_251302D38(0x4C52554148, 0xE500000000000000, v179);
            *(v80 + 12) = 2080;
            ErrorValue = swift_getErrorValue();
            v82 = *(*(v174 - 8) + 64);
            MEMORY[0x28223BE20](ErrorValue, v173);
            (*(v84 + 16))(&v156 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
            v85 = sub_25130EFD4();
            v87 = sub_251302D38(v85, v86, v179);
            v11 = v163;

            *(v80 + 14) = v87;
            v1 = v165;
            _os_log_impl(&dword_2512F1000, v78, v79, "%s Failed to encode data with error %s", v80, 0x16u);
            v88 = v162;
            swift_arrayDestroy();
            MEMORY[0x253071680](v88, -1, -1);
            MEMORY[0x253071680](v80, -1, -1);
          }

          sub_2513032E8(v11, type metadata accessor for HAURL);
          v12 = v164;
          (*v168)(v16, v164);
LABEL_22:
          v23 = v167;
          goto LABEL_9;
        }

        v59 = sub_25130EED4();
        v61 = v60;

        v62 = v55;
        if (v29 > 4)
        {
          if (v29 <= 6)
          {
            if (v29 == 5)
            {
              v64 = 0xD000000000000011;
              v63 = v156;
            }

            else
            {
              v63 = 0xEA0000000000656DLL;
              v64 = 0x614E656C646E7562;
            }

            goto LABEL_108;
          }

          if (v29 == 7)
          {
            v64 = 0xD000000000000011;
            v63 = v157;
          }

          else
          {
            if (v29 != 8)
            {
              v64 = 0x6372756F536C7275;
LABEL_106:
              v63 = 0xE900000000000065;
              goto LABEL_108;
            }

            v64 = 0x6D6954646E657274;
            v63 = 0xEE0065706F637365;
          }
        }

        else
        {
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              v63 = 0xE700000000000000;
              v64 = 0x65746144646E65;
            }

            else if (v29 == 3)
            {
              v63 = 0xE500000000000000;
              v64 = 0x7972657571;
            }

            else
            {
              v64 = 0x6570795461746164;
              v63 = 0xEC00000065646F43;
            }

            goto LABEL_108;
          }

          if (v29)
          {
            v64 = 0x7461447472617473;
            goto LABEL_106;
          }

          v63 = 0xE400000000000000;
          v64 = 1702125924;
        }

LABEL_108:
        *&v177 = v64;
        *(&v177 + 1) = v63;
        sub_25130F1E4();
        v178 = MEMORY[0x277CC9318];
        *&v177 = v59;
        *(&v177 + 1) = v61;
        sub_2512F2EA8(&v177, v176);
        sub_251304668(v59, v61);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v175 = v24;
        v125 = sub_2512F2E64(v179);
        v127 = v24[2];
        v128 = (v126 & 1) == 0;
        v46 = __OFADD__(v127, v128);
        v129 = v127 + v128;
        if (v46)
        {
          goto LABEL_162;
        }

        v130 = v126;
        if (v24[3] >= v129)
        {
          if ((v124 & 1) == 0)
          {
            v141 = v125;
            sub_2513042AC();
            v125 = v141;
          }
        }

        else
        {
          sub_251303E38(v129, v124);
          v125 = sub_2512F2E64(v179);
          if ((v130 & 1) != (v131 & 1))
          {
LABEL_164:
            v155 = sub_25130F2F4();
            __break(1u);
            goto LABEL_165;
          }
        }

        v12 = v164;
        v24 = v175;
        if (v130)
        {
          v132 = (v175[7] + 32 * v125);
          __swift_destroy_boxed_opaque_existential_0(v132);
          sub_2512F2EA8(v176, v132);
          sub_2513046BC(v59, v61);

          sub_2512F8B54(v179);
          v11 = v163;
          sub_2513032E8(v163, type metadata accessor for HAURL);
          (*v168)(v16, v12);
        }

        else
        {
          v175[(v125 >> 6) + 8] |= 1 << v125;
          v133 = v125;
          sub_25130460C(v179, v24[6] + 40 * v125);
          sub_2512F2EA8(v176, (v24[7] + 32 * v133));
          sub_2513046BC(v59, v61);

          sub_2512F8B54(v179);
          v11 = v163;
          sub_2513032E8(v163, type metadata accessor for HAURL);
          (*v168)(v16, v12);
          v134 = v24[2];
          v46 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v46)
          {
            goto LABEL_163;
          }

          v24[2] = v135;
        }

        v23 = v167;
        v1 = v165;
LABEL_9:
        if (v171 == ++v26)
        {

          v6 = v159;
          goto LABEL_154;
        }
      }
    }

LABEL_154:
    v142 = sub_25130EEC4();
    (*(*(v142 - 8) + 16))(v6, v1, v142);
    v143 = sub_25130EEA4();
    if (!v144)
    {
      goto LABEL_156;
    }

    v179[0] = v143;
    v179[1] = v144;
    v145 = [objc_opt_self() internalHealthAppURLScheme];
    v146 = sub_25130EFB4();
    v148 = v147;

    *&v177 = v146;
    *(&v177 + 1) = v148;
    sub_2512F8818();
    v149 = MEMORY[0x277D837D0];
    v150 = sub_25130F174();

    if (!v150)
    {
      *&v177 = 0x63536D6F74737563;
      *(&v177 + 1) = 0xEF4C5255656D6568;
      sub_25130F1E4();
      v151 = sub_25130EE24();
      v178 = v149;
      *&v177 = v151;
      *(&v177 + 1) = v152;
      sub_2512F2EA8(&v177, v176);
      v153 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v24;
      sub_2513040E4(v176, v179, v153);

      sub_2512F8B54(v179);
      sub_2513032E8(v6, type metadata accessor for HAURLValidator);
      v24 = v175;
    }

    else
    {
LABEL_156:
      sub_2513032E8(v6, type metadata accessor for HAURLValidator);
    }
  }

  else
  {
    v24 = 0;
  }

  v154 = *MEMORY[0x277D85DE8];
  v155 = v24;
LABEL_165:
  result.value._rawValue = v155;
  result.is_nil = v20;
  return result;
}

unint64_t sub_2513025BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25130F0B4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_251302B78(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_251302B78((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25130F094();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25130F004();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25130F004();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25130F0B4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_251302B78(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25130F0B4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_251302B78(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_251302B78((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25130F004();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

size_t sub_25130297C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_251304874(0, &qword_27F429C88, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v10 = *(sub_25130ED24() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_25130ED24() - 8);
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

char *sub_251302B78(char *result, int64_t a2, char a3, char *a4)
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
    sub_251304828(0, &qword_280C61360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for HAURL()
{
  result = qword_280C61448;
  if (!qword_280C61448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251302CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HAURL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251302D38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251302E04(v11, 0, 0, 1, a1, a2);
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
    sub_2512F8BA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251302E04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251302F10(a5, a6);
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
    result = sub_25130F224();
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

uint64_t sub_251302F10(uint64_t a1, unint64_t a2)
{
  v4 = sub_251302F5C(a1, a2);
  sub_25130308C(&unk_286359A40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251302F5C(uint64_t a1, unint64_t a2)
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

  v6 = sub_251303178(v5, 0);
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

  result = sub_25130F224();
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
        v10 = sub_25130F024();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251303178(v10, 0);
        result = sub_25130F1F4();
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

uint64_t sub_25130308C(uint64_t result)
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

  result = sub_2513031F0(result, v12, 1, v3);
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

void *sub_251303178(uint64_t a1, uint64_t a2)
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

  sub_251304828(0, &qword_27F429C80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2513031F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251304828(0, &qword_27F429C80);
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

uint64_t sub_2513032E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251303348(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251304874(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2513033C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251304874(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unsigned __int8 *sub_251303438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25130F0A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2513039C4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25130F224();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2513039C4()
{
  v0 = sub_25130F0B4();
  v4 = sub_251303A44(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_251303A44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25130EFE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25130F154();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_251303178(v9, 0);
  v12 = sub_251303B9C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25130EFE4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25130F224();
LABEL_4:

  return sub_25130EFE4();
}

unint64_t sub_251303B9C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_251303DBC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25130F054();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25130F224();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_251303DBC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25130F034();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_251303DBC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25130F064();
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
    v5 = MEMORY[0x253070DB0](15, a1 >> 16);
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

uint64_t sub_251303E38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2512F2E00();
  result = sub_25130F254();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_2512F2EA8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_25130460C(v24, &v38);
        sub_2512F8BA8(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_25130F1C4();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2512F2EA8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_2513040E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2512F2E64(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2513042AC();
      goto LABEL_7;
    }

    sub_251303E38(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2512F2E64(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25130460C(a2, v22);
      return sub_251304230(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_25130F2F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_2512F2EA8(a1, v17);
}

_OWORD *sub_251304230(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2512F2EA8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_2513042AC()
{
  v1 = v0;
  sub_2512F2E00();
  v2 = *v0;
  v3 = sub_25130F244();
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
        v18 = 40 * v17;
        sub_25130460C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2512F8BA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2512F2EA8(v22, (*(v4 + 56) + v17));
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

BOOL sub_251304444(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_25130F204();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_25130453C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25130F2D4() & 1;
  }
}

uint64_t sub_251304594(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_25130F294() & 1;
  }
}

uint64_t sub_251304668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2513046BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_251304738()
{
  result = sub_25130EEC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_2513047A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_251304828(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25130F2B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251304874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DeepLinkingDataParameter.addToURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a4;
  v27[1] = a1;
  v6 = sub_25130ECE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = v27 - v16;
  (*(a3 + 40))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = v20;
  (*(v13 + 8))(v17, AssociatedTypeWitness);
  v27[2] = v19;
  v27[3] = v21;
  sub_25130ECD4();
  sub_2512F8818();
  v22 = sub_25130F164();
  v24 = v23;
  (*(v7 + 8))(v11, v6);

  (*(a3 + 32))(a2, a3);
  sub_251305560(v25, v22, v24, v27[0]);
}

uint64_t static DeepLinkingDataParameter.fromURLQueryItems(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_25130F144();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v62 = &v53 - v14;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v13, v17);
  v58 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v59 = &v53 - v21;
  v22 = sub_25130ED24();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v31 = *(a1 + 16);
  if (v31)
  {
    v55 = AssociatedTypeWitness;
    v56 = &v53 - v29;
    v54 = v15;
    v63 = a4;
    v64 = a3;
    v65 = a2;
    v57 = v30;
    v32 = *(v30 + 16);
    v33 = (v30 + 8);
    v34 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v35 = *(v30 + 72);
    while (1)
    {
      v32(v27, v34, v22);
      if (sub_25130595C(v27, v4, v65, v64))
      {
        break;
      }

      (*v33)(v27, v22);
      v34 += v35;
      if (!--v31)
      {
        goto LABEL_12;
      }
    }

    v37 = v56;
    v38 = v57 + 32;
    (*(v57 + 32))(v56, v27, v22);
    v39 = sub_25130ED14();
    v41 = v40;
    (*(v38 - 24))(v37, v22);
    if (!v41)
    {
LABEL_12:
      v36 = 1;
      a2 = v65;
      goto LABEL_13;
    }

    v66 = v39;
    v67 = v41;
    sub_2512F8818();
    v42 = sub_25130F184();
    v44 = v43;

    a2 = v65;
    if (!v44)
    {
LABEL_11:
      v36 = 1;
LABEL_13:
      a4 = v63;
      return (*(*(a2 - 8) + 56))(a4, v36, 1, a2);
    }

    v45 = v64;
    v46 = v55;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = v62;
    (*(AssociatedConformanceWitness + 16))(v42, v44, v46, AssociatedConformanceWitness);

    v49 = v54;
    if ((*(v54 + 48))(v48, 1, v46) == 1)
    {
      (*(v60 + 8))(v48, v61);
      goto LABEL_11;
    }

    v51 = v59;
    (*(v49 + 32))(v59, v48, v46);
    v52 = v58;
    (*(v49 + 16))(v58, v51, v46);
    a4 = v63;
    (*(v45 + 24))(v52, a2, v45);
    (*(v49 + 8))(v51, v46);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  return (*(*(a2 - 8) + 56))(a4, v36, 1, a2);
}

NSUserActivity __swiftcall DeepLinkingDataParameter.addToUserActivity(_:)(NSUserActivity a1)
{
  v3 = v2;
  v4 = v1;
  sub_251305A80(0, &qword_280C61358, sub_2512F2C28, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310350;
  (*(v3 + 32))(v4, v3);
  sub_25130F1E4();
  v6 = *(v3 + 40);
  *(inited + 96) = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  v6(v4, v3);
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F2F80(inited + 32);
  v7 = sub_25130EF64();

  [(objc_class *)a1.super.isa addUserInfoEntriesFromDictionary:v7];

  return a1.super.isa;
}

uint64_t static DeepLinkingDataParameter.fromUserActivity(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25130F144();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v11, v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - v21;
  v23 = [a1 userInfo];
  if (v23)
  {
    v24 = v23;
    v25 = sub_25130EF74();

    v37 = (*(a3 + 32))(a2, a3);
    v38 = v26;
    sub_25130F1E4();
    if (*(v25 + 16))
    {
      v27 = sub_2512F2E64(v39);
      v28 = v36;
      if (v29)
      {
        sub_2512F8BA8(*(v25 + 56) + 32 * v27, &v40);
        sub_2512F8B54(v39);
      }

      else
      {

        sub_2512F8B54(v39);
        v40 = 0u;
        v41 = 0u;
      }

      goto LABEL_8;
    }

    sub_2512F8B54(v39);
  }

  v40 = 0u;
  v41 = 0u;
  v28 = v36;
LABEL_8:
  sub_2512FB6A4();
  v30 = swift_dynamicCast();
  v31 = *(v14 + 56);
  if (v30)
  {
    v31(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v22, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v19, v22, AssociatedTypeWitness);
    (*(a3 + 24))(v19, a2, a3);
    (*(v14 + 8))(v22, AssociatedTypeWitness);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31(v13, 1, 1, AssociatedTypeWitness);
    (*(v34 + 8))(v13, v35);
  }

  return (*(*(a2 - 8) + 56))(v28, v32, 1, a2);
}

uint64_t sub_251305560@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37[2] = a2;
  v37[3] = a3;
  v37[1] = a1;
  sub_251305A80(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v37 - v8;
  v10 = sub_25130ED24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v37 - v18;
  v20 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v21 = sub_25130EE54();
  v22 = [v20 initWithURL:v21 resolvingAgainstBaseURL:0];

  if (v22)
  {
    v37[0] = a4;
    v23 = [v22 queryItems];
    if (v23)
    {
      v24 = v23;
      v25 = sub_25130F0D4();
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    sub_25130ECF4();
    (*(v11 + 16))(v16, v19, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_25130297C(0, v25[2] + 1, 1, v25);
    }

    v30 = v25[2];
    v29 = v25[3];
    if (v30 >= v29 >> 1)
    {
      v25 = sub_25130297C(v29 > 1, v30 + 1, 1, v25);
    }

    v25[2] = v30 + 1;
    (*(v11 + 32))(v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v16, v10);
    v31 = sub_25130F0C4();

    [v22 setQueryItems_];

    v32 = [v22 URL];
    if (v32)
    {
      v33 = v32;
      sub_25130EE64();

      (*(v11 + 8))(v19, v10);
      v34 = 0;
    }

    else
    {
      (*(v11 + 8))(v19, v10);

      v34 = 1;
    }

    v35 = v37[0];
    v36 = sub_25130EEC4();
    (*(*(v36 - 8) + 56))(v9, v34, 1, v36);
    return sub_251305AE4(v9, v35);
  }

  else
  {
    v26 = sub_25130EEC4();
    v27 = *(*(v26 - 8) + 56);

    return v27(a4, 1, 1, v26);
  }
}

uint64_t sub_25130595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25130ED04();
  v8 = v7;
  if (v6 == (*(a4 + 32))(a3, a4) && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25130F2D4();
  }

  return v11 & 1;
}

void sub_251305A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251305AE4(uint64_t a1, uint64_t a2)
{
  sub_251305A80(0, &qword_27F429C08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251305BF8(void *a1@<X8>)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_25130EF94();

  v4 = [v2 initWithActivityType_];

  *a1 = v4;
}

uint64_t sub_251305C70()
{
  v1 = [*v0 activityType];
  v2 = sub_25130EFB4();

  return v2;
}

uint64_t sub_251305CC8()
{
  v1 = [*v0 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25130EF74();

  return v3;
}

void sub_251305D38(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = sub_25130EF64();
  }

  else
  {
    v3 = 0;
  }

  [v2 setUserInfo_];
}

void (*sub_251305DC4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_251305EF8(v3);
  return sub_251305E38;
}

void sub_251305E38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_251305EF8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25130EF74();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_251305F94;
}

void sub_251305F94(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;

      v6 = sub_25130EF64();
    }

    else
    {
      v6 = 0;
    }

    [a1[1] setUserInfo_];
  }

  else if (v3)
  {
    v5 = *a1;
    v6 = sub_25130EF64();

    [a1[1] setUserInfo_];
  }

  else
  {
    v6 = 0;
    [a1[1] setUserInfo_];
  }
}

uint64_t sub_251306088()
{
  v0 = sub_25130EF54();
  __swift_allocate_value_buffer(v0, qword_280C61668);
  __swift_project_value_buffer(v0, qword_280C61668);
  return sub_25130EF44();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

HealthAppServices::DeepLinkActivityType_optional __swiftcall DeepLinkActivityType.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v10 = v1;
  v4 = 0;
  while (1)
  {
    v5 = byte_286359A08[v4++ + 32];
    v6 = 0xD000000000000019;
    v7 = ".view.category.all";
    switch(v5)
    {
      case 1:
        v6 = 0xD00000000000001DLL;
        v7 = "com.apple.health.view.sharing";
        break;
      case 2:
        v6 = 0xD00000000000001CLL;
        v7 = ".view.notifications.settings";
        break;
      case 3:
        v6 = 0xD00000000000001CLL;
        v7 = ".profile.sources";
        break;
      case 4:
        v6 = 0xD00000000000001ELL;
        v7 = "com.apple.health.view.data";
        break;
      case 5:
        break;
      case 6:
        v6 = 0xD00000000000001ELL;
        v7 = "com.apple.health.view.category";
        break;
      case 7:
        v6 = 0xD00000000000001ALL;
        v7 = "com.apple.health.view.foryou";
        break;
      case 8:
        v6 = 0xD000000000000020;
        v7 = ".profile.medicalID";
        break;
      case 9:
        v6 = 0xD000000000000018;
        v7 = "com.apple.health.view.search";
        break;
      case 10:
        v6 = 0xD000000000000022;
        v7 = "com.apple.health.plugin";
        break;
      case 11:
        v6 = 0xD00000000000002CLL;
        v7 = "com.apple.Health";
        break;
      case 12:
        v6 = 0xD000000000000017;
        v7 = "com.apple.health.profile";
        break;
      case 13:
        v6 = 0xD000000000000020;
        v7 = "com.apple.health.view.summary";
        break;
      case 14:
        v6 = 0xD000000000000028;
        v7 = "SharingInviteFlow.";
        break;
      case 15:
        v6 = 0xD00000000000001DLL;
        v7 = "com.apple.health.view.trends";
        break;
      case 16:
        v6 = 0xD000000000000025;
        v7 = "com.apple.SleepHealth";
        break;
      case 17:
        v6 = 0xD00000000000001CLL;
        v7 = ".view.highlights";
        break;
      default:
        v6 = 0xD000000000000022;
        v7 = "com.apple.health.view.data.all";
        break;
    }

    if (v6 == countAndFlagsBits && (v7 | 0x8000000000000000) == object)
    {
      break;
    }

    v8 = sub_25130F2D4();

    if (v8)
    {
      goto LABEL_26;
    }

    if (v4 == 18)
    {

      LOBYTE(v5) = 18;
      goto LABEL_27;
    }
  }

LABEL_26:

LABEL_27:
  *v10 = v5;
  return result;
}

uint64_t DeepLinkActivityType.rawValue.getter()
{
  result = 0x67657461436C6C61;
  switch(*v0)
  {
    case 1:
      return 0x746C6165486C6C61;
    case 2:
      v2 = [objc_opt_self() healthTrendsHostName];
      goto LABEL_17;
    case 3:
      v2 = [objc_opt_self() healthAppBrowseHostName];
      goto LABEL_17;
    case 4:
      return 0x79726F6765746163;
    case 5:
    case 6:
      return 0x6570795461746164;
    case 7:
      v2 = [objc_opt_self() dataTypeDetailHostName];
      goto LABEL_17;
    case 8:
      return 0xD000000000000012;
    case 9:
      return 0x725068746C616568;
    case 0xA:
      v2 = [objc_opt_self() healthAppMedicalIDPath];
      goto LABEL_17;
    case 0xB:
      v2 = [objc_opt_self() healthAppNotificationSettingsPath];
      goto LABEL_17;
    case 0xC:
      return 0x6E6967756C70;
    case 0xD:
      return 0xD000000000000011;
    case 0xE:
      v2 = [objc_opt_self() healthAppSharingInviteFlowPath];
      goto LABEL_17;
    case 0xF:
      v2 = [objc_opt_self() sharingOverviewHostName];
      goto LABEL_17;
    case 0x10:
      v2 = [objc_opt_self() healthAppSharingProfilePath];
      goto LABEL_17;
    case 0x11:
      v2 = [objc_opt_self() healthAppSummaryHostName];
LABEL_17:
      v3 = v2;
      v4 = sub_25130EFB4();

      result = v4;
      break;
    default:
      return result;
  }

  return result;
}

HealthAppServices::DeepLinkActivityType_optional __swiftcall DeepLinkActivityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25130F2E4();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25130674C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = DeepLinkActivityType.rawValue.getter();
  v4 = v3;
  if (v2 == DeepLinkActivityType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25130F2D4();
  }

  return v7 & 1;
}

unint64_t sub_2513067EC()
{
  result = qword_27F429C90;
  if (!qword_27F429C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C90);
  }

  return result;
}

uint64_t sub_251306840()
{
  v1 = *v0;
  sub_25130F304();
  DeepLinkActivityType.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

uint64_t sub_2513068A8()
{
  v2 = *v0;
  DeepLinkActivityType.rawValue.getter();
  sub_25130EFF4();
}

uint64_t sub_25130690C()
{
  v1 = *v0;
  sub_25130F304();
  DeepLinkActivityType.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

unint64_t sub_251306974()
{
  result = qword_27F429C98;
  if (!qword_27F429C98)
  {
    sub_2513069CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429C98);
  }

  return result;
}

void sub_2513069CC()
{
  if (!qword_27F429CA0)
  {
    v0 = sub_25130F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429CA0);
    }
  }
}

uint64_t sub_251306A38@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkActivityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeepLinkActivityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeepLinkActivityType(uint64_t result, unsigned int a2, unsigned int a3)
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

id static NotificationSupport.defaultHealthAppNotificationSound.getter()
{
  v0 = [objc_opt_self() soundWithAlertType_];

  return v0;
}

id NotificationSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NotificationSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_251306E88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2512F2E64(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2513042AC();
      v11 = v13;
    }

    sub_2512F8B54(*(v11 + 48) + 40 * v8);
    sub_2512F2EA8((*(v11 + 56) + 32 * v8), a2);
    sub_251306F2C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_251306F2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25130F1B4() + 1) & ~v5;
    do
    {
      sub_25130460C(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_25130F1C4();
      result = sub_2512F8B54(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t _s17HealthAppServices19NotificationSupportC06createD8UserInfo3for4withSDys11AnyHashableVypGSo20HKNotificationDomainV_10Foundation3URLVSgtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_251307374();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2512F2C8C(MEMORY[0x277D84F90]);
  v10 = *MEMORY[0x277CCE4D0];
  *&v27 = sub_25130EFB4();
  *(&v27 + 1) = v11;
  v12 = MEMORY[0x277D837D0];
  sub_25130F1E4();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v28 = sub_2512FB8F0();
  *&v27 = v13;
  sub_2512F2EA8(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v9;
  sub_2513040E4(v26, v29, isUniquelyReferenced_nonNull_native);
  sub_2512F8B54(v29);
  v30 = v25;
  v15 = *MEMORY[0x277CCE4E0];
  *&v27 = sub_25130EFB4();
  *(&v27 + 1) = v16;
  sub_25130F1E4();
  sub_2513073CC(a2, v8);
  v17 = sub_25130EEC4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    sub_251307430(v8, sub_251307374);
    sub_251306E88(v29, &v27);
    sub_251307430(&v27, sub_2512FB6A4);
    sub_2512F8B54(v29);
    return v30;
  }

  else
  {
    v20 = sub_25130EE24();
    v28 = v12;
    *&v27 = v20;
    *(&v27 + 1) = v21;
    (*(v18 + 8))(v8, v17);
    sub_2512F2EA8(&v27, v26);
    v22 = v30;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v22;
    sub_2513040E4(v26, v29, v23);
    sub_2512F8B54(v29);
    return v25;
  }
}

void sub_251307374()
{
  if (!qword_27F429C08)
  {
    sub_25130EEC4();
    v0 = sub_25130F144();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429C08);
    }
  }
}

uint64_t sub_2513073CC(uint64_t a1, uint64_t a2)
{
  sub_251307374();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251307430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t QueryParameterName.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        v3 = [objc_opt_self() queryParameterNameStartDate];
      }

      else
      {
        v3 = [objc_opt_self() queryParameterNameDate];
      }
    }

    else if (v1 == 2)
    {
      v3 = [objc_opt_self() queryParameterNameEndDate];
    }

    else
    {
      if (v1 == 3)
      {
        return 0x686372616573;
      }

      v3 = [objc_opt_self() queryParameterNameDataTypeCode];
    }

LABEL_20:
    v4 = v3;
    v5 = sub_25130EFB4();

    return v5;
  }

  if (*v0 > 6u)
  {
    if (v1 == 7)
    {
      return 26992;
    }

    if (v1 == 8)
    {
      v3 = [objc_opt_self() queryParameterNameTrendOverlay];
    }

    else
    {
      v3 = [objc_opt_self() queryParameterNameSource];
    }

    goto LABEL_20;
  }

  if (v1 == 5)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x656C646E7562;
  }
}

HealthAppServices::QueryParameterName_optional __swiftcall QueryParameterName.init(paramName:)(Swift::String paramName)
{
  object = paramName._object;
  countAndFlagsBits = paramName._countAndFlagsBits;
  v4 = v1;
  v5 = 0;
  while (1)
  {
    v6 = byte_286359A68[v5 + 32];
    if (v6 <= 4)
    {
      if (byte_286359A68[v5 + 32] <= 1u)
      {
        if (byte_286359A68[v5 + 32])
        {
          v9 = [objc_opt_self() queryParameterNameStartDate];
        }

        else
        {
          v9 = [objc_opt_self() queryParameterNameDate];
        }
      }

      else if (v6 == 2)
      {
        v9 = [objc_opt_self() queryParameterNameEndDate];
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xE600000000000000;
          v8 = 0x686372616573;
          goto LABEL_25;
        }

        v9 = [objc_opt_self() queryParameterNameDataTypeCode];
      }

LABEL_24:
      v10 = v9;
      v8 = sub_25130EFB4();
      v7 = v11;

      goto LABEL_25;
    }

    if (byte_286359A68[v5 + 32] > 6u)
    {
      if (v6 == 7)
      {
        v7 = 0xE200000000000000;
        v8 = 26992;
        goto LABEL_25;
      }

      if (v6 == 8)
      {
        v9 = [objc_opt_self() queryParameterNameTrendOverlay];
      }

      else
      {
        v9 = [objc_opt_self() queryParameterNameSource];
      }

      goto LABEL_24;
    }

    v8 = v6 == 5 ? 0x79726F6765746163 : 0x656C646E7562;
    v7 = v6 == 5 ? 0xE800000000000000 : 0xE600000000000000;
LABEL_25:
    if (v8 == countAndFlagsBits && v7 == object)
    {
      break;
    }

    v13 = sub_25130F2D4();

    if (v13)
    {
      goto LABEL_34;
    }

    if (++v5 == 10)
    {
      LOBYTE(v6) = 10;
      goto LABEL_34;
    }
  }

LABEL_34:

  *v4 = v6;
  return result;
}

unint64_t QueryParameterName.restorationType.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x6D6954646E657274;
    if (v1 != 8)
    {
      v7 = 0x6372756F536C7275;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0x614E656C646E7562;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1702125924;
    v3 = 0x65746144646E65;
    v4 = 0x7972657571;
    if (v1 != 3)
    {
      v4 = 0x6570795461746164;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7461447472617473;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

HealthAppServices::QueryParameterName_optional __swiftcall QueryParameterName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25130F284();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2513079F0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  Parameter = QueryParameterName.rawValue.getter();
  v4 = v3;
  if (Parameter == QueryParameterName.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25130F2D4();
  }

  return v7 & 1;
}

unint64_t sub_251307A90()
{
  result = qword_27F429CA8;
  if (!qword_27F429CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CA8);
  }

  return result;
}

uint64_t sub_251307AE4()
{
  v1 = *v0;
  sub_25130F304();
  QueryParameterName.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

uint64_t sub_251307B4C()
{
  v2 = *v0;
  QueryParameterName.rawValue.getter();
  sub_25130EFF4();
}

uint64_t sub_251307BB0()
{
  v1 = *v0;
  sub_25130F304();
  QueryParameterName.rawValue.getter();
  sub_25130EFF4();

  return sub_25130F324();
}

uint64_t sub_251307C20@<X0>(uint64_t *a1@<X8>)
{
  result = QueryParameterName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_251307C4C()
{
  result = qword_27F429CB0;
  if (!qword_27F429CB0)
  {
    sub_251307CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CB0);
  }

  return result;
}

void sub_251307CA4()
{
  if (!qword_27F429CB8)
  {
    v0 = sub_25130F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429CB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for QueryParameterName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryParameterName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251307E54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x65746144646E65;
    if (a1 != 2)
    {
      v13 = 0x7972657571;
      v12 = 0xE500000000000000;
    }

    v14 = 0x7461447472617473;
    if (a1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v14 = 1702125924;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6E6F437472616863;
    v4 = 0xEC00000074786574;
    v5 = 0x6D6954646E657274;
    v6 = 0xEE0065706F637365;
    if (a1 != 7)
    {
      v5 = 0x6372756F536C7275;
      v6 = 0xE900000000000065;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6570795461746164;
    v8 = 0xEC00000065646F43;
    if (a1 != 4)
    {
      v7 = 0xD000000000000011;
      v8 = 0x8000000251311600;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x65746144646E65)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x7972657571)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      v15 = 0xE400000000000000;
      if (v9 != 1702125924)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v18 = 0x7461447472617473;
    goto LABEL_47;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEE0065706F637365;
        if (v9 != 0x6D6954646E657274)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v18 = 0x6372756F536C7275;
LABEL_47:
      v15 = 0xE900000000000065;
      if (v9 != v18)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x6E6F437472616863;
    v17 = 1954047348;
LABEL_41:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6570795461746164;
    v17 = 1701080899;
    goto LABEL_41;
  }

  v15 = 0x8000000251311600;
  if (v9 != 0xD000000000000011)
  {
LABEL_52:
    v19 = sub_25130F2D4();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v19 = 1;
LABEL_53:

  return v19 & 1;
}

HealthAppServices::HAUserActivity::UserActivityVersion_optional __swiftcall HAUserActivity.UserActivityVersion.init(rawValue:)(Swift::Int rawValue)
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

unint64_t HAUserActivity.RestorationInfoKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 1702125924;
    v7 = 0x65746144646E65;
    if (v1 != 2)
    {
      v7 = 0x7972657571;
    }

    if (*v0)
    {
      v6 = 0x7461447472617473;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E6F437472616863;
    v3 = 0x6D6954646E657274;
    if (v1 != 7)
    {
      v3 = 0x6372756F536C7275;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6570795461746164;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2513082FC()
{
  sub_25130EFF4();
}

uint64_t HAUserActivity.PluginUserInfoKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25130F284();

  *a1 = v2 != 0;
  return result;
}

uint64_t HAUserActivity.ProfilesRestorationKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25130F284();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2513085D8()
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

uint64_t sub_25130864C()
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

HealthAppServices::HAUserActivity::RestorationInfoKey_optional __swiftcall HAUserActivity.RestorationInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25130F284();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251308734()
{
  v1 = *v0;
  sub_25130F304();
  sub_2513082FC();
  return sub_25130F324();
}

uint64_t sub_251308784()
{
  v1 = *v0;
  sub_25130F304();
  sub_2513082FC();
  return sub_25130F324();
}

unint64_t sub_2513087D4@<X0>(unint64_t *a1@<X8>)
{
  result = HAUserActivity.RestorationInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HAUserActivity.URLConversionKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25130F284();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25130890C()
{
  v1 = *v0;
  sub_25130F304();
  MEMORY[0x253071080](v1);
  return sub_25130F324();
}