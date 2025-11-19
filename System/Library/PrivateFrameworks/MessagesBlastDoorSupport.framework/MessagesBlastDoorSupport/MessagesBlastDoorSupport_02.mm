unint64_t sub_258D137D0()
{
  result = qword_27F980EF0;
  if (!qword_27F980EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980EF0);
  }

  return result;
}

char *sub_258D13824()
{

  v0 = sub_258D17964();
  if (!v1)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v2 = v0;
  v3 = v1;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = 0;
    while (1)
    {
      if ((v5 & 1) == 0)
      {
        if (v2 == 1 && v3 == 0xE100000000000000)
        {
          v5 = 1;
          goto LABEL_6;
        }

        v5 = 1;
        if (sub_258D17E14())
        {
          goto LABEL_6;
        }

        if (v2 == 25 && v3 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
        {
          break;
        }
      }

      MEMORY[0x259C99B60](v2, v3);
      v5 = 0;
LABEL_6:

      v2 = sub_258D17964();
      v3 = v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_258D03A5C(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_258D03A5C((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    v9 = &v4[16 * v8];
    *(v9 + 4) = 0;
    *(v9 + 5) = 0xE000000000000000;
    v2 = sub_258D17964();
    v3 = v10;
  }

  while (v10);
LABEL_22:

  return v4;
}

uint64_t sub_258D13AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B38, &qword_258D19300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D13B50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t SatelliteSMSTextMessageDictionary.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t SatelliteSMSTextMessageDictionary.compressedText.getter()
{
  v1 = *v0;
  sub_258CFA9D0(*v0, *(v0 + 8));
  return v1;
}

uint64_t SatelliteSMSTextMessageDictionary.compressedText.setter(uint64_t a1, uint64_t a2)
{
  result = sub_258D0199C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SatelliteSMSTextMessageDictionary.codecID.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SatelliteSMSTextMessageDictionary.codecID.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SatelliteSMSTextMessageDictionary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980EF8, "h.");
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v12 = *(v1 + 16);
  v16 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258CFA9D0(v8, v9);
  sub_258D1412C();
  sub_258D17F34();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  sub_258D0ED10();
  sub_258D17DA4();
  sub_258D0199C(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_258D17D94();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t SatelliteSMSTextMessageDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F08, &qword_258D1AD08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D1412C();
  sub_258D17F14();
  if (v2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v19 = 0;
    sub_258D0F1CC();
    sub_258D17CF4();
    v12 = v18[0];
    v13 = v18[1];
    sub_258D0199C(0, 0xF000000000000000);
    LOBYTE(v18[0]) = 1;
    v14 = sub_258D17CE4();
    v15 = v9;
    v17 = v16;
    (*(v6 + 8))(v15, v5);
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v17 & 1;
    sub_258CFA9D0(v12, v13);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_258D0199C(v12, v13);
}

uint64_t sub_258D140B4@<X0>(char *a1@<X8>)
{
  v2 = sub_258D17C94();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_258D1412C()
{
  result = qword_27F980F00;
  if (!qword_27F980F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F00);
  }

  return result;
}

uint64_t sub_258D14180(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = "geOriginalEncryptionType";
  }

  else
  {
    v5 = "SatelliteSMSCompressedText";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v8 = "SatelliteSMSCompressedText";
  }

  else
  {
    v8 = "geOriginalEncryptionType";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_258D17E14();
  }

  return v10 & 1;
}

unint64_t sub_258D14230()
{
  result = qword_27F980F10;
  if (!qword_27F980F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F10);
  }

  return result;
}

uint64_t sub_258D14284()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D17914();

  return sub_258D17EF4();
}

uint64_t sub_258D14304()
{
  *v0;
  sub_258D17914();
}

uint64_t sub_258D14370()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D17914();

  return sub_258D17EF4();
}

uint64_t sub_258D143EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258D17C94();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_258D1444C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "SatelliteSMSCompressedText";
  }

  else
  {
    v3 = "geOriginalEncryptionType";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_258D14490()
{
  result = qword_27F980F18;
  if (!qword_27F980F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F18);
  }

  return result;
}

unint64_t sub_258D144E8()
{
  result = qword_27F980F20;
  if (!qword_27F980F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F20);
  }

  return result;
}

unint64_t sub_258D1453C()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_258D14578@<X0>(char *a1@<X8>)
{
  v2 = sub_258D17C94();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_258D145DC(uint64_t a1)
{
  v2 = sub_258D1412C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D14618(uint64_t a1)
{
  v2 = sub_258D1412C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_258D146AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 25))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258D14708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_258D14780()
{
  v2 = sub_258D03F18(1);
  if (v1)
  {

    sub_258D148F0();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else if (v2)
  {
    v5 = sub_258D03F18(1);
    sub_258D04144(7);
    if (v5)
    {
      v6 = 43;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0xE100000000000000;
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    v8 = sub_258D17E04();
    v10 = v9;
    v16 = v7;

    MEMORY[0x259C99B70](v8, v10);

    return v6;
  }

  else
  {
    v11 = sub_258CDB2E4();
    v13 = HIBYTE(v12) & 0xF;
    v15 = v11;
    v16 = v12;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v17 = 0;
    v18 = v13;
    v14 = sub_258D0C5F8(&v15);

    v0 = Array<A>.spansAsPlainText.getter(v14);
  }

  return v0;
}

unint64_t sub_258D148F0()
{
  result = qword_27F980F28;
  if (!qword_27F980F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F28);
  }

  return result;
}

uint64_t NSUserDefaults.isMessagesLockdownModeEnabled.getter()
{
  v1 = v0;
  sub_258D16B84();
  v2 = sub_258D16B64();
  v3 = MEMORY[0x259C98D90]();

  if (v3)
  {
    return 1;
  }

  v5 = sub_258D17884();
  v6 = [v1 objectForKey:v5 inDomain:*MEMORY[0x277CCA208]];

  if (v6)
  {
    sub_258D17B44();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_258D14A60(v10);
  }

  return 0;
}

uint64_t sub_258D14A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F30, &qword_258D1AF98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D14AC8(char a1, char a2)
{
  if (qword_258D1B308[a1] == qword_258D1B308[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_258D17E14();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_258D14B30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 85;
  v4 = 0xE200000000000000;
  v5 = 25453;
  if (a1 != 5)
  {
    v5 = 72;
    v4 = 0xE100000000000000;
  }

  v6 = 0xE200000000000000;
  v7 = 25967;
  if (a1 != 3)
  {
    v7 = 68;
    v6 = 0xE100000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 99;
  if (a1 != 1)
  {
    v8 = 101;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = 0xE100000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE100000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 99)
        {
          goto LABEL_38;
        }
      }

      else if (v9 != 101)
      {
        goto LABEL_38;
      }
    }

    else if (v9 != 85)
    {
      goto LABEL_38;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE200000000000000;
      if (v9 != 25453)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v11 = 0xE100000000000000;
      if (v9 != 72)
      {
LABEL_38:
        v12 = sub_258D17E14();
        goto LABEL_39;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE200000000000000;
    if (v9 != 25967)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = 0xE100000000000000;
    if (v9 != 68)
    {
      goto LABEL_38;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_38;
  }

  v12 = 1;
LABEL_39:

  return v12 & 1;
}

uint64_t sub_258D14CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "IDSIncomingMessageDecryptedData";
      v4 = 0xD000000000000026;
    }

    else
    {
      v5 = "geShouldShowPeerErrors";
      v4 = 0xD000000000000028;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001FLL;
    }

    else
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v5 = "IDSIncomingMessagePushPayload";
    }

    else
    {
      v5 = "e";
    }
  }

  if (a2 > 1u)
  {
    v2 = "IDSIncomingMessageDecryptedData";
    v6 = "geShouldShowPeerErrors";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000026;
    }

    else
    {
      v8 = 0xD000000000000028;
    }
  }

  else
  {
    v6 = "IDSIncomingMessagePushPayload";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_258D17E14();
  }

  return v10 & 1;
}

void RelayGroupMutationPayload.knownType.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (*v1 >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a1 = v2;
}

uint64_t RelayGroupMutationPayload.knownParticipantChangeType.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 128))
  {
    v3 = sub_258D17644();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    v6 = *(v1 + 120);

    return sub_258D17634();
  }
}

uint64_t sub_258D14EA4(uint64_t a1, char a2)
{
  v2 = qword_258D1B308[a2];
  sub_258D17914();
}

MessagesBlastDoorSupport::RelayGroupMutationType_optional __swiftcall RelayGroupMutationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t RelayGroupMutationPayload.service.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RelayGroupMutationPayload.service.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.groupID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RelayGroupMutationPayload.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.originalGroupID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t RelayGroupMutationPayload.originalGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.guid.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t RelayGroupMutationPayload.guid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.destinationCallerID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t RelayGroupMutationPayload.destinationCallerID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.sender.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t RelayGroupMutationPayload.sender.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.updatedName.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t RelayGroupMutationPayload.updatedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t RelayGroupMutationPayload.participantChangeType.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t RelayGroupMutationPayload.participantChangeType.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t RelayGroupMutationPayload.changedParticipants.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

MessagesBlastDoorSupport::RelayGroupMutationPayload::CodingKeys_optional __swiftcall RelayGroupMutationPayload.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258D17C94();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MessagesBlastDoorSupport::RelayGroupMutationPayload::CodingKeys_optional __swiftcall RelayGroupMutationPayload.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = RelayGroupMutationPayload.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_258D15474()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D14EA4(v3, v1);
  return sub_258D17EF4();
}

uint64_t sub_258D154C4()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D14EA4(v3, v1);
  return sub_258D17EF4();
}

uint64_t sub_258D15514@<X0>(uint64_t *a1@<X8>)
{
  result = RelayGroupMutationPayload.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_258D155A0(uint64_t a1)
{
  v2 = sub_258D15984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D155DC(uint64_t a1)
{
  v2 = sub_258D15984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RelayGroupMutationPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F38, &qword_258D1AFB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v41 = v1[2];
  v42 = v8;
  v11 = v1[5];
  v39 = v1[4];
  v40 = v10;
  v12 = v1[7];
  v37 = v1[6];
  v38 = v11;
  v13 = v1[8];
  v14 = v1[9];
  v35 = v12;
  v36 = v13;
  v15 = v1[10];
  v16 = v1[11];
  v33 = v14;
  v34 = v15;
  v17 = v1[12];
  v18 = v1[13];
  v31 = v16;
  v32 = v17;
  v19 = v1[14];
  v20 = v1[15];
  v29 = v18;
  v30 = v19;
  v28 = *(v1 + 128);
  v26 = v1[17];
  v27 = v20;
  v21 = *(v1 + 144);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D15984();
  sub_258D17F34();
  LOBYTE(v45) = 0;
  v23 = v43;
  sub_258D17DD4();
  if (!v23)
  {
    LOBYTE(v45) = 1;
    sub_258D17DC4();
    LOBYTE(v45) = 2;
    sub_258D17DC4();
    LOBYTE(v45) = 3;
    sub_258D17DC4();
    LOBYTE(v45) = 4;
    sub_258D17DC4();
    LOBYTE(v45) = 5;
    sub_258D17D74();
    LOBYTE(v45) = 6;
    sub_258D17D74();
    LOBYTE(v45) = 7;
    sub_258D17D74();
    LOBYTE(v45) = 8;
    sub_258D17D94();
    v45 = v26;
    v44 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F48, &qword_258D1AFB8);
    sub_258D160B4(&qword_27F980F50);
    sub_258D17DA4();
    LOBYTE(v45) = 10;
    sub_258D17D84();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_258D15984()
{
  result = qword_27F980F40;
  if (!qword_27F980F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F40);
  }

  return result;
}

uint64_t RelayGroupMutationPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F58, &qword_258D1AFC0);
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v8 = &v32 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D15984();
  sub_258D17F14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v47 = v5;
    LOBYTE(v59[0]) = 0;
    v10 = sub_258D17D24();
    LOBYTE(v59[0]) = 1;
    v43 = sub_258D17D14();
    v45 = v11;
    LOBYTE(v59[0]) = 2;
    v12 = sub_258D17D14();
    v44 = v13;
    v40 = v12;
    LOBYTE(v59[0]) = 3;
    v39 = sub_258D17D14();
    v42 = v14;
    LOBYTE(v59[0]) = 4;
    v38 = sub_258D17D14();
    v41 = v15;
    LOBYTE(v59[0]) = 5;
    v36 = sub_258D17CC4();
    v37 = v10;
    v46 = v16;
    LOBYTE(v59[0]) = 6;
    v17 = sub_258D17CC4();
    v19 = v18;
    v34 = v17;
    v35 = 0;
    LOBYTE(v59[0]) = 7;
    v20 = sub_258D17CC4();
    v22 = v21;
    v33 = v20;
    LOBYTE(v59[0]) = 8;
    v32 = sub_258D17CE4();
    v63 = v23 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F48, &qword_258D1AFB8);
    LOBYTE(v49) = 9;
    sub_258D160B4(&qword_27F980F60);
    sub_258D17CF4();
    v24 = v59[0];
    v64 = 10;
    v25 = sub_258D17CD4();
    (*(v47 + 8))(v8, v48);
    *&v49 = v37;
    *(&v49 + 1) = v43;
    v26 = v45;
    *&v50 = v45;
    *(&v50 + 1) = v40;
    *&v51 = v44;
    *(&v51 + 1) = v39;
    *&v52 = v42;
    *(&v52 + 1) = v38;
    *&v53 = v41;
    *(&v53 + 1) = v36;
    *&v54 = v46;
    *(&v54 + 1) = v34;
    *&v55 = v19;
    *(&v55 + 1) = v33;
    *&v56 = v22;
    *(&v56 + 1) = v32;
    LODWORD(v48) = v63;
    LOBYTE(v57) = v63;
    *(&v57 + 1) = v24;
    v58 = v25;
    v27 = v54;
    *(a2 + 64) = v53;
    *(a2 + 80) = v27;
    v28 = v52;
    *(a2 + 32) = v51;
    *(a2 + 48) = v28;
    *(a2 + 144) = v25;
    v29 = v56;
    *(a2 + 96) = v55;
    *(a2 + 112) = v29;
    v30 = v50;
    *a2 = v49;
    *(a2 + 16) = v30;
    *(a2 + 128) = v57;
    sub_258D16120(&v49, v59);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v59[0] = v37;
    v59[1] = v43;
    v59[2] = v26;
    v59[3] = v40;
    v59[4] = v44;
    v59[5] = v39;
    v59[6] = v42;
    v59[7] = v38;
    v59[8] = v41;
    v59[9] = v36;
    v59[10] = v46;
    v59[11] = v34;
    v59[12] = v19;
    v59[13] = v33;
    v59[14] = v22;
    v59[15] = v32;
    v60 = v48;
    v61 = v24;
    v62 = v25;
    return sub_258D03668(v59);
  }
}

uint64_t sub_258D160B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980F48, &qword_258D1AFB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258D1615C()
{
  result = qword_27F980F68;
  if (!qword_27F980F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F68);
  }

  return result;
}

unint64_t sub_258D161B4()
{
  result = qword_27F980F70;
  if (!qword_27F980F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F70);
  }

  return result;
}

unint64_t sub_258D1620C()
{
  result = qword_27F980F78;
  if (!qword_27F980F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F78);
  }

  return result;
}

unint64_t sub_258D16264()
{
  result = qword_27F980F80;
  if (!qword_27F980F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F80);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_258D1632C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_258D16374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelayGroupMutationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RelayGroupMutationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}