uint64_t type metadata accessor for NCProtoContactInfo(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymV0G4TypeO21InternalSwiftProtobuf4EnumAafGP8rawValuexSgSi_tcfCTW_0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymV0G4TypeOSYAASY8rawValuexSg03RawJ0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s27NeighborhoodActivityConduit27NCProtoCancelAddMemberEventV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t _s27NeighborhoodActivityConduit40NCProtoActiveConversationsDidChangeEventV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t _s27NeighborhoodActivityConduit37NCProtoCreateLinkConversationResponseV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t _s27NeighborhoodActivityConduit25NCProtoConversationAVModeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s27NeighborhoodActivityConduit25NCProtoConversationAVModeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s27NeighborhoodActivityConduit25NCProtoConversationAVModeOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s27NeighborhoodActivityConduit25NCProtoConversationAVModeOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2255665B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_225566664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225566708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2255667B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225566858(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_2255669DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_225566B60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_225566C90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_225566DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_225566E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_225566F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22556706C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2255671C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22556726C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225567310(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2255673BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225567490(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2255675C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2255676FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2255677A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22556784C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22556797C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_225567AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_225567BDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_225567D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_225567E00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225567EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_225567F50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225567FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_2255680BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_2255681AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_225568258(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225568320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2255683CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225568470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_225568548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_225568600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2255686B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22556878C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_225568910(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_225568A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_225568B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_225568C2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_225568CD8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225568D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_225568E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_225568F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_225569028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2255690CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_225569178(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22556921C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2255692C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225569534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2255695A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_225569610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2255696DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2255697AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2255697EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = type metadata accessor for AssertionManager.Assertion();
  result = MEMORY[0x22AA667E0](v6, v7);
  *a4 = result;
  return result;
}

uint64_t sub_225569848()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2255698B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2255698F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22556992C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s27NeighborhoodActivityConduit8CallTypeO15VideoCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOs0G3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2255699B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2255699F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoConversationAVMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoConversationState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoConversationState and conformance NCProtoConversationState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoConversationLetMeInRequestState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t NCProtoContactImageType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContactImageType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoContactInfo.namePrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NCProtoContactInfo.namePrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NCProtoContactInfo.givenName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NCProtoContactInfo.givenName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NCProtoContactInfo.middleName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NCProtoContactInfo.middleName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NCProtoContactInfo.familyName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NCProtoContactInfo.familyName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NCProtoContactInfo.nameSuffix.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t NCProtoContactInfo.nameSuffix.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t NCProtoContactInfo.nickname.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t NCProtoContactInfo.nickname.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t NCProtoContactInfo.imageData.getter()
{
  v1 = *(v0 + 96);
  outlined copy of Data._Representation(v1, *(v0 + 104));
  return v1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t NCProtoContactInfo.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 96), *(v2 + 104));
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t NCProtoContactInfo.organizationName.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoContactInfo(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoContactInfo.organizationName : NCProtoContactInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoContactInfo(0) + 48));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NCProtoContactInfo.organizationName : NCProtoContactInfo(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoContactInfo(0) + 48));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NCProtoContactInfo.organizationName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NCProtoContactInfo(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NCProtoContactInfo.organizationName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoContactInfo(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

Swift::Void __swiftcall NCProtoContactInfo.clearOrganizationName()()
{
  v1 = (v0 + *(type metadata accessor for NCProtoContactInfo(0) + 48));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NCProtoContactInfo.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoContactInfo(0) + 52));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoContactInfo.identifier : NCProtoContactInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoContactInfo(0) + 52));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NCProtoContactInfo.identifier : NCProtoContactInfo(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoContactInfo(0) + 52));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NCProtoContactInfo.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NCProtoContactInfo(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NCProtoContactInfo.identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoContactInfo(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

Swift::Void __swiftcall NCProtoContactInfo.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for NCProtoContactInfo(0) + 52));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NCProtoContactInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NCProtoContactInfo(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NCProtoContactInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoContactInfo(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NCProtoContactInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = xmmword_2255D3AB0;
  v2 = type metadata accessor for NCProtoContactInfo(0);
  v3 = a1 + v2[11];
  result = UnknownStorage.init()();
  v5 = (a1 + v2[12]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[13]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

void NCProtoContactHandleAnonym.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t NCProtoContactHandleAnonym.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContactHandleAnonym.AnonymType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoContactHandleAnonym.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for NCProtoContactHandleAnonym(0) + 32);
  return UnknownStorage.init()();
}

uint64_t NCProtoContinuityFavorite.contactInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 32), v5, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v7 = type metadata accessor for NCProtoContactInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoContactInfo);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = xmmword_2255D3AB0;
  v9 = a1 + v7[11];
  UnknownStorage.init()();
  v10 = (a1 + v7[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[13]);
  *v11 = 0;
  v11[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  }

  return result;
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

uint64_t key path setter for NCProtoContinuityFavorite.contactInfo : NCProtoContinuityFavorite(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoContactInfo);
  v9 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 32);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoContactInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoContinuityFavorite.contactInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 32);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoContactInfo);
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*NCProtoContinuityFavorite.contactInfo.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoContactInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0xE000000000000000;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0xE000000000000000;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0xE000000000000000;
    *(v14 + 96) = xmmword_2255D3AB0;
    v17 = v14 + v9[11];
    UnknownStorage.init()();
    v18 = (v14 + v9[12]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[13]);
    *v19 = 0;
    v19[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoContactInfo);
  }

  return NCProtoContinuityFavorite.contactInfo.modify;
}

BOOL NCProtoContinuityFavorite.hasContactInfo.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(v0 + *(v4 + 32), v3, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v5 = type metadata accessor for NCProtoContactInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NCProtoContactInfo?(v3, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  return v6;
}

Swift::Void __swiftcall NCProtoContinuityFavorite.clearContactInfo()()
{
  v1 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 32);
  outlined destroy of NCProtoContactInfo?(v0 + v1, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v2 = type metadata accessor for NCProtoContactInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NCProtoContinuityFavorite.anonym.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 36), v5, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v7 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoContactHandleAnonym);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v9 = a1 + *(v7 + 32);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  }

  return result;
}

uint64_t outlined init with take of NCProtoContactInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t key path getter for NCProtoContinuityFavorite.anonym : NCProtoContinuityFavorite@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v7 + 36), v6, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v8 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoContactHandleAnonym);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v10 = a2 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoContinuityFavorite.anonym : NCProtoContinuityFavorite(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoContactHandleAnonym);
  v9 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 36);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoContactHandleAnonym);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoContinuityFavorite.anonym.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 36);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoContactHandleAnonym);
  v4 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoContinuityFavorite.anonym.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0xE000000000000000;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoContactHandleAnonym);
  }

  return NCProtoContinuityFavorite.anonym.modify;
}

void NCProtoContinuityFavorite.anonym.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoContactHandleAnonym);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoContactHandleAnonym);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoContactHandleAnonym);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoContactHandleAnonym);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of NCProtoContactInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NCProtoContactInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL NCProtoContinuityFavorite.hasAnonym.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(v0 + *(v4 + 36), v3, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v5 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NCProtoContactInfo?(v3, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  return v6;
}

Swift::Void __swiftcall NCProtoContinuityFavorite.clearAnonym()()
{
  v1 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 36);
  outlined destroy of NCProtoContactInfo?(v0 + v1, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v2 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NCProtoContinuityFavorite.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoContinuityFavorite(0);
  v3 = &a1[v2[7]];
  UnknownStorage.init()();
  v4 = v2[8];
  v5 = type metadata accessor for NCProtoContactInfo(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[9];
  v7 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t NCProtoAddressableContact.contactInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = type metadata accessor for NCProtoAddressableContact(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 28), v5, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v7 = type metadata accessor for NCProtoContactInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoContactInfo);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = xmmword_2255D3AB0;
  v9 = a1 + v7[11];
  UnknownStorage.init()();
  v10 = (a1 + v7[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[13]);
  *v11 = 0;
  v11[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoAddressableContact.contactInfo : NCProtoAddressableContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoContactInfo);
  v9 = *(type metadata accessor for NCProtoAddressableContact(0) + 28);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoContactInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoAddressableContact.contactInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoAddressableContact(0) + 28);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoContactInfo);
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoAddressableContact.contactInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoContactInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoAddressableContact(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0xE000000000000000;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0xE000000000000000;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0xE000000000000000;
    *(v14 + 96) = xmmword_2255D3AB0;
    v17 = v14 + v9[11];
    UnknownStorage.init()();
    v18 = (v14 + v9[12]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[13]);
    *v19 = 0;
    v19[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoContactInfo);
  }

  return NCProtoAddressableContact.contactInfo.modify;
}

void NCProtoAddressableContact.contactInfo.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoContactInfo);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoContactInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoContactInfo);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoContactInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t NCProtoAddressableContact.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoAddressableContact(0);
  v3 = &a1[*(v2 + 24)];
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for NCProtoContactInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t (*NCProtoActiveConversation.uuidString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoActiveConversation(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t (*NCProtoActiveConversation.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoActiveConversation(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t (*NCProtoActiveConversation.avMode.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoActiveConversation(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

uint64_t NCProtoActiveConversation.remoteMemberCount.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoActiveConversation(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for NCProtoActiveConversation.remoteMemberCount : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for NCProtoActiveConversation.remoteMemberCount : NCProtoActiveConversation(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoActiveConversation(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t NCProtoActiveConversation.remoteMemberCount.setter(uint64_t a1)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NCProtoActiveConversation.remoteMemberCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NCProtoActiveConversation(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return NCProtoActiveConversation.remoteMemberCount.modify;
}

uint64_t NCProtoActiveConversation.remoteMemberCount.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall NCProtoActiveConversation.clearRemoteMemberCount()()
{
  v1 = v0 + *(type metadata accessor for NCProtoActiveConversation(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NCProtoActiveConversation.state.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v4 = (v1 + *(result + 40));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for NCProtoActiveConversation.state : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v5 = (a1 + *(result + 40));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t key path setter for NCProtoActiveConversation.state : NCProtoActiveConversation(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for NCProtoActiveConversation(0);
  v6 = a2 + *(result + 40);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t NCProtoActiveConversation.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NCProtoActiveConversation(0);
  v5 = v1 + *(result + 40);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*NCProtoActiveConversation.state.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoActiveConversation(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

Swift::Void __swiftcall NCProtoActiveConversation.clearState()()
{
  v1 = v0 + *(type metadata accessor for NCProtoActiveConversation(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t NCProtoActiveConversation.letMeInRequestState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v4 = (v1 + *(result + 44));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for NCProtoActiveConversation.letMeInRequestState : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v5 = (a1 + *(result + 44));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t key path setter for NCProtoActiveConversation.letMeInRequestState : NCProtoActiveConversation(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for NCProtoActiveConversation(0);
  v6 = a2 + *(result + 44);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t NCProtoActiveConversation.letMeInRequestState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NCProtoActiveConversation(0);
  v5 = v1 + *(result + 44);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*NCProtoActiveConversation.letMeInRequestState.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoActiveConversation(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

Swift::Void __swiftcall NCProtoActiveConversation.clearLetMeInRequestState()()
{
  v1 = v0 + *(type metadata accessor for NCProtoActiveConversation(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t NCProtoActiveConversation.handlesHash.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoActiveConversation(0) + 48));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t key path getter for NCProtoActiveConversation.handlesHash : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoActiveConversation(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for NCProtoActiveConversation.handlesHash : NCProtoActiveConversation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoActiveConversation(0) + 48));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NCProtoActiveConversation.handlesHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NCProtoActiveConversation(0) + 48);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t (*NCProtoActiveConversation.handlesHash.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoActiveConversation(0) + 48);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.modify;
}

Swift::Void __swiftcall NCProtoActiveConversation.clearHandlesHash()()
{
  v1 = v0 + *(type metadata accessor for NCProtoActiveConversation(0) + 48);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_2255D3AC0;
}

double NCProtoActiveConversation.init()@<D0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  active = type metadata accessor for NCProtoActiveConversation(0);
  v3 = a1 + active[5];
  UnknownStorage.init()();
  v4 = (a1 + active[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + active[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + active[8];
  *v6 = 0;
  *(v6 + 4) = 256;
  v7 = a1 + active[9];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + active[10];
  *v8 = 0;
  *(v8 + 4) = 256;
  v9 = a1 + active[11];
  *v9 = 0;
  *(v9 + 4) = 256;
  result = 0.0;
  *(a1 + active[12]) = xmmword_2255D3AC0;
  return result;
}

uint64_t NCProtoContinuityCall.uuidString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoContinuityCall.uuidString : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for NCProtoContinuityCall.uuidString : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = *(v8 + 24);
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
}

uint64_t NCProtoContinuityCall.uuidString.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
}

void (*NCProtoContinuityCall.uuidString.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return NCProtoContinuityCall.uuidString.modify;
}

void NCProtoContinuityCall.uuidString.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 24);
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 24);
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
  }

  free(v2);
}

BOOL NCProtoContinuityCall.hasUuidString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearUuidString()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 24);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
}

uint64_t NCProtoContinuityCall.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoContinuityCall.displayName : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for NCProtoContinuityCall.displayName : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = *(v8 + 40);
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
}

uint64_t NCProtoContinuityCall.displayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 40);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
}

void (*NCProtoContinuityCall.displayName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return NCProtoContinuityCall.displayName.modify;
}

void NCProtoContinuityCall.displayName.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 40);
    *(v10 + 32) = v3;
    *(v10 + 40) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 40);
    *(v21 + 32) = v3;
    *(v21 + 40) = v5;
  }

  free(v2);
}

BOOL NCProtoContinuityCall.hasDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearDisplayName()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
}

uint64_t NCProtoContinuityCall.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 57))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for NCProtoContinuityCall.status : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 57);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for NCProtoContinuityCall.status : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  result = swift_beginAccess();
  *(v8 + 48) = v3;
  *(v8 + 56) = v4;
  *(v8 + 57) = 0;
  return result;
}

uint64_t NCProtoContinuityCall.status.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(v2 + v5) = v12;
    v8 = v12;
  }

  result = swift_beginAccess();
  *(v8 + 48) = v3;
  *(v8 + 56) = v4;
  *(v8 + 57) = 0;
  return result;
}

void (*NCProtoContinuityCall.status.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 57))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return NCProtoContinuityCall.status.modify;
}

void NCProtoContinuityCall.status.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(v10 + v9) = v14;
    v8 = v14;
  }

  swift_beginAccess();
  *(v8 + 48) = v2;
  *(v8 + 56) = v5;
  *(v8 + 57) = 0;

  free(v1);
}

BOOL NCProtoContinuityCall.hasStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return (*(v1 + 57) & 1) == 0;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearStatus()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 56) = 256;
}

uint64_t NCProtoContinuityCall.conversationUuidString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  if (*(v1 + 72))
  {
    v2 = *(v1 + 64);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoContinuityCall.conversationUuidString : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  if (*(v3 + 72))
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for NCProtoContinuityCall.conversationUuidString : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = *(v8 + 72);
  *(v8 + 64) = v4;
  *(v8 + 72) = v3;
}

uint64_t NCProtoContinuityCall.conversationUuidString.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 72);
  *(v9 + 64) = a1;
  *(v9 + 72) = a2;
}

void (*NCProtoContinuityCall.conversationUuidString.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 72))
  {
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return NCProtoContinuityCall.conversationUuidString.modify;
}

void NCProtoContinuityCall.conversationUuidString.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 72);
    *(v10 + 64) = v3;
    *(v10 + 72) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 72);
    *(v21 + 64) = v3;
    *(v21 + 72) = v5;
  }

  free(v2);
}

BOOL NCProtoContinuityCall.hasConversationUuidString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 72) != 0;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearConversationUuidString()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 72);
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
}

uint64_t NCProtoContinuityCall.isMuted.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 80) & 1;
}

uint64_t key path getter for NCProtoContinuityCall.isMuted : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 80) & 1;
  return result;
}

uint64_t key path setter for NCProtoContinuityCall.isMuted : NCProtoContinuityCall(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 80) = v3;
  return result;
}

uint64_t NCProtoContinuityCall.isMuted.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 80) = a1 & 1;
  return result;
}

void (*NCProtoContinuityCall.isMuted.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 80) & 1;
  return NCProtoContinuityCall.isMuted.modify;
}

void NCProtoContinuityCall.isMuted.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 80) = v4;

  free(v1);
}

BOOL NCProtoContinuityCall.hasIsMuted.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 80) != 2;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearIsMuted()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 80) = 2;
}

uint64_t NCProtoContinuityCall.isCameraEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 81) & 1;
}

uint64_t key path getter for NCProtoContinuityCall.isCameraEnabled : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 81) & 1;
  return result;
}

uint64_t key path setter for NCProtoContinuityCall.isCameraEnabled : NCProtoContinuityCall(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 81) = v3;
  return result;
}

uint64_t NCProtoContinuityCall.isCameraEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 81) = a1 & 1;
  return result;
}

void (*NCProtoContinuityCall.isCameraEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 81) & 1;
  return NCProtoContinuityCall.isCameraEnabled.modify;
}

void NCProtoContinuityCall.isCameraEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 81) = v4;

  free(v1);
}

BOOL NCProtoContinuityCall.hasIsCameraEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  swift_beginAccess();
  return *(v1 + 81) != 2;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearIsCameraEnabled()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 81) = 2;
}

uint64_t NCProtoContinuityCall.info.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  v7 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined init with copy of NCProtoContactInfo?(v6 + v7, v5, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v8 = type metadata accessor for NCProtoCallInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoCallInfo);
  }

  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = a1 + v8[5];
  UnknownStorage.init()();
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  *(a1 + v8[9]) = 2;
  v14 = v8[10];
  v15 = type metadata accessor for NCProtoSenderIdentity(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  *(a1 + v8[11]) = xmmword_2255D3AC0;
  *(a1 + v8[12]) = 2;
  *(a1 + v8[13]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoContinuityCall.info : NCProtoContinuityCall(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = type metadata accessor for NCProtoCallInfo(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v11, type metadata accessor for NCProtoCallInfo);
  v12 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v13 = *(a2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v15);

    *(a2 + v12) = v19;
    v15 = v19;
  }

  outlined init with take of NCProtoContactInfo(v11, v6, type metadata accessor for NCProtoCallInfo);
  (*(v8 + 56))(v6, 0, 1, v7);
  v20 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined assign with take of NCProtoCallInfo?(v6, v15 + v20, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  return swift_endAccess();
}

uint64_t NCProtoContinuityCall.info.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v18 - v5;
  v7 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v8 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v10);

    *(v2 + v7) = v14;
    v10 = v14;
  }

  outlined init with take of NCProtoContactInfo(a1, v6, type metadata accessor for NCProtoCallInfo);
  v15 = type metadata accessor for NCProtoCallInfo(0);
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined assign with take of NCProtoCallInfo?(v6, v10 + v16, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  return swift_endAccess();
}

double NCProtoCallInfo.init()@<D0>(unint64_t *a1@<X8>)
{
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for NCProtoCallInfo(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v2[9]) = 2;
  v7 = v2[10];
  v8 = type metadata accessor for NCProtoSenderIdentity(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  result = 0.0;
  *(a1 + v2[11]) = xmmword_2255D3AC0;
  *(a1 + v2[12]) = 2;
  *(a1 + v2[13]) = 2;
  return result;
}

void (*NCProtoContinuityCall.info.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for NCProtoCallInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined init with copy of NCProtoContactInfo?(v16 + v17, v8, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v14 + v9[7]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[8]);
    *v22 = 0;
    v22[1] = 0;
    *(v14 + v9[9]) = 2;
    v23 = v9[10];
    v24 = type metadata accessor for NCProtoSenderIdentity(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    *(v14 + v9[11]) = xmmword_2255D3AC0;
    *(v14 + v9[12]) = 2;
    *(v14 + v9[13]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoCallInfo);
  }

  return NCProtoContinuityCall.info.modify;
}

void NCProtoContinuityCall.info.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of NCProtoContactInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for NCProtoCallInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of NCProtoContactInfo(v15, v19, type metadata accessor for NCProtoCallInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
    swift_beginAccess();
    outlined assign with take of NCProtoCallInfo?(v19, v7 + v20, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    swift_endAccess();
    outlined destroy of NCProtoContactInfo(v14, type metadata accessor for NCProtoCallInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of NCProtoContactInfo(v14, v19, type metadata accessor for NCProtoCallInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
    swift_beginAccess();
    outlined assign with take of NCProtoCallInfo?(v19, v24 + v33, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL NCProtoContinuityCall.hasInfo.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  v5 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined init with copy of NCProtoContactInfo?(v4 + v5, v3, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v6 = type metadata accessor for NCProtoCallInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of NCProtoContactInfo?(v3, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearInfo()()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v15 - v3;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(v1 + v5) = v12;
    v8 = v12;
  }

  v13 = type metadata accessor for NCProtoCallInfo(0);
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined assign with take of NCProtoCallInfo?(v4, v8 + v14, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  swift_endAccess();
}

uint64_t NCProtoContinuityCall.callGroupUuidString.getter()
{
  v1 = (*(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoContinuityCall.callGroupUuidString : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for NCProtoContinuityCall.callGroupUuidString : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  v13 = (v8 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = v4;
  v13[1] = v3;
}

uint64_t NCProtoContinuityCall.callGroupUuidString.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  v14 = (v9 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v15 = v14[1];
  *v14 = a1;
  v14[1] = a2;
}

void (*NCProtoContinuityCall.callGroupUuidString.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return NCProtoContinuityCall.callGroupUuidString.modify;
}

void NCProtoContinuityCall.callGroupUuidString.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    v17 = (v10 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
    swift_beginAccess();
    v18 = v17[1];
    *v17 = v3;
    v17[1] = v5;

    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v22);

      *(v24 + v23) = v28;
      v22 = v28;
    }

    v29 = (v22 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
    swift_beginAccess();
    v30 = v29[1];
    *v29 = v3;
    v29[1] = v5;
  }

  free(v2);
}

BOOL NCProtoContinuityCall.hasCallGroupUuidString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearCallGroupUuidString()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = (v5 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v11 = v10[1];
  *v10 = 0;
  v10[1] = 0;
}

uint64_t NCProtoContinuityCall.imageData.getter()
{
  v1 = (*(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  outlined copy of Data?(v2, v3);
  return v4;
}

uint64_t key path getter for NCProtoContinuityCall.imageData : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v3[1];
  }

  *a2 = v6;
  a2[1] = v7;
  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for NCProtoContinuityCall.imageData : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  outlined copy of Data._Representation(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  v13 = (v8 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = v3;
  v13[1] = v4;
  return outlined consume of Data?(v14, v15);
}

uint64_t NCProtoContinuityCall.imageData.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  v14 = (v9 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = a1;
  v14[1] = a2;
  return outlined consume of Data?(v15, v16);
}

void (*NCProtoContinuityCall.imageData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return NCProtoContinuityCall.imageData.modify;
}

void NCProtoContinuityCall.imageData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v15 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

      *(v11 + v10) = v15;
      v9 = v15;
    }

    v16 = (v9 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    *v16 = v3;
    v16[1] = v5;
    outlined consume of Data?(v17, v18);
    outlined consume of Data._Representation(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    v28 = (v21 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
    swift_beginAccess();
    v29 = *v28;
    v30 = v28[1];
    *v28 = v3;
    v28[1] = v5;
    outlined consume of Data?(v29, v30);
  }

  free(v2);
}

BOOL NCProtoContinuityCall.hasImageData.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData;
  swift_beginAccess();
  return *(v1 + 8) >> 60 != 15;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearImageData()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = (v5 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = xmmword_2255D3AC0;
  outlined consume of Data?(v11, v12);
}

uint64_t NCProtoContinuityCall.service.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  result = swift_beginAccess();
  if (*(v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for NCProtoContinuityCall.service : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  result = swift_beginAccess();
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for NCProtoContinuityCall.service : NCProtoContinuityCall(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  v13 = v8 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  result = swift_beginAccess();
  *v13 = v3;
  *(v13 + 8) = v4;
  *(v13 + 9) = 0;
  return result;
}

uint64_t NCProtoContinuityCall.service.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(v2 + v5) = v12;
    v8 = v12;
  }

  v13 = v8 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  result = swift_beginAccess();
  *v13 = v3;
  *(v13 + 8) = v4;
  *(v13 + 9) = 0;
  return result;
}

void (*NCProtoContinuityCall.service.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  swift_beginAccess();
  if (*(v6 + 9))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *v6;
    v8 = *(v6 + 8);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return NCProtoContinuityCall.service.modify;
}

void NCProtoContinuityCall.service.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v8);

    *(v10 + v9) = v14;
    v8 = v14;
  }

  v15 = v8 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  swift_beginAccess();
  *v15 = v2;
  *(v15 + 8) = v5;
  *(v15 + 9) = 0;

  free(v1);
}

BOOL NCProtoContinuityCall.hasService.getter()
{
  v1 = *(v0 + *(type metadata accessor for NCProtoContinuityCall(0) + 20)) + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  swift_beginAccess();
  return (*(v1 + 9) & 1) == 0;
}

Swift::Void __swiftcall NCProtoContinuityCall.clearService()()
{
  v1 = v0;
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = v5 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  swift_beginAccess();
  *v10 = 0;
  *(v10 + 8) = 256;
}

void (*NCProtoContinuityCall.wantsHoldMusic.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return NCProtoContinuityCall.wantsHoldMusic.modify;
}

uint64_t NCProtoContinuityCall.wantsHoldMusic.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) & 1;
}

uint64_t key path getter for NCProtoContinuityCall.wantsHoldMusic : NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6) & 1;
  return result;
}

uint64_t key path setter for NCProtoContinuityCall.wantsHoldMusic : NCProtoContinuityCall(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v11 + v16) = v7;
  return result;
}

uint64_t NCProtoContinuityCall.wantsHoldMusic.setter(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1 & 1;
  return result;
}

void (*NCProtoContinuityCall.isScreening.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return NCProtoContinuityCall.isScreening.modify;
}

void NCProtoContinuityCall.wantsHoldMusic.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v7;

  free(v4);
}

BOOL NCProtoContinuityCall.hasWantsHoldMusic.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for NCProtoContinuityCall(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 2;
}

uint64_t NCProtoContinuityCall.clearWantsHoldMusic()(uint64_t *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = *a1;
  result = swift_beginAccess();
  *(v7 + v12) = 2;
  return result;
}

unint64_t NCProtoContinuityCall.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContinuityCall.Status(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t NCProtoContinuityCall.Service.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContinuityCall.Service(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoContinuityCall.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static NCProtoContinuityCall._StorageClass.defaultInstance;
}

uint64_t NCProtoStartedSessionEvent.memberAssociationPrimaryInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  v6 = type metadata accessor for NCProtoStartedSessionEvent(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 28), v5, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v7 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  }

  *a1 = MEMORY[0x277D84F90];
  v9 = a1 + v7[5];
  UnknownStorage.init()();
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v7[7]) = xmmword_2255D3AC0;
  v11 = a1 + v7[8];
  *v11 = 0;
  v11[8] = 1;
  v12 = (a1 + v7[9]);
  *v12 = 0;
  v12[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoStartedSessionEvent.memberAssociationPrimaryInfo : NCProtoStartedSessionEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  v9 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 28);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoStartedSessionEvent.memberAssociationPrimaryInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 28);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double NCProtoMemberAssociationPrimaryInfo.init()@<D0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_2255D3AC0;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[8] = 1;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t (*NCProtoStartedSessionEvent.memberAssociationPrimaryInfo.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + v9[5];
    UnknownStorage.init()();
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    *(v14 + v9[7]) = xmmword_2255D3AC0;
    v19 = v14 + v9[8];
    *v19 = 0;
    v19[8] = 1;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  }

  return NCProtoStartedSessionEvent.memberAssociationPrimaryInfo.modify;
}

BOOL NCProtoAddressableContact.hasContactInfo.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of NCProtoContactInfo?(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NCProtoContactInfo?(v11, a1, a2);
  return v14;
}

uint64_t NCProtoAddressableContact.clearContactInfo()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of NCProtoContactInfo?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t NCProtoActiveConversation.avMode.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1(0);
  v5 = (v2 + *(result + 32));
  if (*(v5 + 9))
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = *v5;
    v7 = *(v5 + 8);
  }

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t key path getter for NCProtoActiveConversation.avMode : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(0);
  v6 = (a1 + *(result + 32));
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 9);
  if (v9)
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = (v9 | v8) & 1;
  return result;
}

uint64_t key path setter for NCProtoActiveConversation.avMode : NCProtoActiveConversation(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  result = a5(0);
  v9 = a2 + *(result + 32);
  *v9 = v6;
  *(v9 + 8) = v7;
  *(v9 + 9) = 0;
  return result;
}

uint64_t NCProtoActiveConversation.avMode.setter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = a2(0);
  v6 = v2 + *(result + 32);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*NCProtoStartedSessionEvent.avMode.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

uint64_t NCProtoActiveConversation.clearAvMode()(uint64_t (*a1)(void))
{
  result = a1(0);
  v3 = v1 + *(result + 32);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t key path getter for NCProtoStartedSessionEvent.isExpanseHandoffSupported : NCProtoStartedSessionEvent@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  *a2 = *(a1 + *(result + 36)) & 1;
  return result;
}

uint64_t key path setter for NCProtoStartedSessionEvent.isExpanseHandoffSupported : NCProtoStartedSessionEvent(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t NCProtoStartedSessionEvent.isExpanseHandoffSupported.setter(char a1)
{
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t key path getter for NCProtoStartedSessionEvent.isLagunaHandoffSupported : NCProtoStartedSessionEvent@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  *a2 = *(a1 + *(result + 40)) & 1;
  return result;
}

uint64_t key path setter for NCProtoStartedSessionEvent.isLagunaHandoffSupported : NCProtoStartedSessionEvent(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t NCProtoStartedSessionEvent.isLagunaHandoffSupported.setter(char a1)
{
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*NCProtoStartedSessionEvent.isLagunaHandoffSupported.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoAddressableContact.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NCProtoAddressableContact.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NCProtoStartedSessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_2255D3AB0;
  v2 = type metadata accessor for NCProtoStartedSessionEvent(0);
  v3 = a1 + v2[6];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[8];
  *v7 = 0;
  *(v7 + 8) = 256;
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 2;
  return result;
}

uint64_t NCProtoActiveConversation.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NCProtoActiveConversation.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NCProtoPendingConversationDisconnectedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for NCProtoPendingConversationDisconnectedEvent(0) + 24);
  return UnknownStorage.init()();
}

uint64_t NCProtoJoinEvent.identifierHash.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t NCProtoJoinEvent.identifierHash.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NCProtoJoinEvent.userAccountInfoData.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t NCProtoJoinEvent.userAccountInfoData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NCProtoJoinEvent.policyInfos.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t NCProtoContinuityFavorite.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NCProtoContinuityFavorite.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NCProtoJoinEvent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = xmmword_2255D3AB0;
  *(a1 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for NCProtoJoinEvent(0) + 28);
  return UnknownStorage.init()();
}

uint64_t NCProtoRecentCallsDidChangeEvent.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(v2);
  a1[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(v2);
  v3 = a1 + *(type metadata accessor for NCProtoRecentCallsDidChangeEvent(0) + 28);
  return UnknownStorage.init()();
}

uint64_t NCProtoFavoritesDidChangeEvent.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

unint64_t NCProtoSuggestionAdvertisement.SuggestionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t NCProtoSuggestionAdvertisement.SuggestionType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance NCProtoSuggestionAdvertisement.SuggestionType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance NCProtoSuggestionAdvertisement.SuggestionType()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance NCProtoSuggestionAdvertisement.SuggestionType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NCProtoSuggestionAdvertisement.SuggestionType(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoSuggestionAdvertisement.SuggestionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoSuggestionAdvertisement.SuggestionType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t NCProtoSuggestionAdvertisement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = a1 + *(type metadata accessor for NCProtoSuggestionAdvertisement(0) + 28);
  return UnknownStorage.init()();
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.advertisement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 20), v5, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v7 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoSuggestionAdvertisement);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v9 = a1 + *(v7 + 28);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  }

  return result;
}

uint64_t key path getter for NCProtoSuggestionAdvertisementDidChangeEvent.advertisement : NCProtoSuggestionAdvertisementDidChangeEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v7 + 20), v6, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v8 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoSuggestionAdvertisement);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v10 = a2 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoSuggestionAdvertisementDidChangeEvent.advertisement : NCProtoSuggestionAdvertisementDidChangeEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoSuggestionAdvertisement);
  v9 = *(type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0) + 20);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoSuggestionAdvertisement);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.advertisement.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0) + 20);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoSuggestionAdvertisement);
  v4 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoSuggestionAdvertisementDidChangeEvent.advertisement.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoSuggestionAdvertisement);
  }

  return NCProtoSuggestionAdvertisementDidChangeEvent.advertisement.modify;
}

void NCProtoSuggestionAdvertisementDidChangeEvent.advertisement.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoSuggestionAdvertisement);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoSuggestionAdvertisement);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoSuggestionAdvertisement);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoSuggestionAdvertisement);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t NCProtoLagunaConnectionRequest.contactInfos.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t NCProtoLagunaConnectionRequest.callState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 44), v5, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v7 = type metadata accessor for NCProtoCallState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoCallState);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 2;
  *(a1 + v7[6]) = 2;
  v9 = a1 + v7[7];
  *v9 = 0;
  *(v9 + 8) = 256;
  *(a1 + v7[8]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  return result;
}

uint64_t key path getter for NCProtoLagunaConnectionRequest.callState : NCProtoLagunaConnectionRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v7 + 44), v6, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v8 = type metadata accessor for NCProtoCallState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoCallState);
  }

  UnknownStorage.init()();
  *(a2 + v8[5]) = 2;
  *(a2 + v8[6]) = 2;
  v10 = a2 + v8[7];
  *v10 = 0;
  *(v10 + 8) = 256;
  *(a2 + v8[8]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoLagunaConnectionRequest.callState : NCProtoLagunaConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoCallState);
  v9 = *(type metadata accessor for NCProtoLagunaConnectionRequest(0) + 44);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoCallState);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoLagunaConnectionRequest.callState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoLagunaConnectionRequest(0) + 44);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoCallState);
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

int *NCProtoCallState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for NCProtoCallState(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  v3 = a1 + result[7];
  *v3 = 0;
  *(v3 + 8) = 256;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t (*NCProtoLagunaConnectionRequest.callState.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoCallState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoLagunaConnectionRequest(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    v17 = v14 + v9[7];
    *v17 = 0;
    *(v17 + 8) = 256;
    *(v14 + v9[8]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoCallState);
  }

  return NCProtoLagunaConnectionRequest.callState.modify;
}

BOOL NCProtoLagunaConnectionRequest.hasCallState.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  outlined init with copy of NCProtoContactInfo?(v0 + *(v4 + 44), v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v5 = type metadata accessor for NCProtoCallState(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NCProtoContactInfo?(v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  return v6;
}

Swift::Void __swiftcall NCProtoLagunaConnectionRequest.clearCallState()()
{
  v1 = *(type metadata accessor for NCProtoLagunaConnectionRequest(0) + 44);
  outlined destroy of NCProtoContactInfo?(v0 + v1, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v2 = type metadata accessor for NCProtoCallState(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NCProtoLagunaConnectionRequest.favorites.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t NCProtoLagunaConnectionRequest.recentCallsInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t NCProtoLagunaConnectionRequest.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(v2);
  *(a1 + 2) = v2;
  *(a1 + 3) = v2;
  *(a1 + 4) = v2;
  *(a1 + 5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(v2);
  v3 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  v4 = &a1[*(v3 + 40)];
  UnknownStorage.init()();
  v5 = *(v3 + 44);
  v6 = type metadata accessor for NCProtoCallState(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t (*NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoNearbyCallStatusChangedEvent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.modify;
}

double NCProtoNearbyCallStatusChangedEvent.init()@<D0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for NCProtoNearbyCallStatusChangedEvent(0);
  v4 = a1 + *(v3 + 24);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v3 + 28)) = xmmword_2255D3AC0;
  return result;
}

uint64_t NCProtoEndedSessionEvent.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

void NCProtoAddMemberRequest.context.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t NCProtoAddMemberRequest.context.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t NCProtoAddMemberRequest.associationVoucherData.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoAddMemberRequest(0) + 32));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path getter for NCProtoAddMemberRequest.associationVoucherData : NCProtoAddMemberRequest@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoAddMemberRequest(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for NCProtoAddMemberRequest.associationVoucherData : NCProtoAddMemberRequest(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoAddMemberRequest(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NCProtoAddMemberRequest.associationVoucherData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NCProtoAddMemberRequest(0) + 32);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NCProtoAddMemberRequest.associationVoucherData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoAddMemberRequest(0) + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.modify;
}

Swift::Void __swiftcall NCProtoAddMemberRequest.clearAssociationVoucherData()()
{
  v1 = v0 + *(type metadata accessor for NCProtoAddMemberRequest(0) + 32);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_2255D3AC0;
}

unint64_t NCProtoAddMemberRequest.NearbyConversationPullContext.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAddMemberRequest.NearbyConversationPullContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext();

  return MEMORY[0x28217E238](a1, a2, v4);
}

double NCProtoAddMemberRequest.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for NCProtoAddMemberRequest(0);
  v3 = a1 + *(v2 + 28);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 32)) = xmmword_2255D3AC0;
  return result;
}

uint64_t NCProtoAddMemberResponse.policyInfos.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NCProtoContactUpdateEvent.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_2255D3AB0;
  *(a3 + 16) = a1(MEMORY[0x277D84F90]);
  v5 = a3 + *(a2(0) + 24);
  return UnknownStorage.init()();
}

uint64_t (*NCProtoPullLagunaSessionToTVRequest.reason.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoPullLagunaSessionToTVRequest(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPullLagunaSessionToTVRequest.Reason(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t key path getter for NCProtoTransferActiveConversationRequest.isAudioEnabled : NCProtoTransferActiveConversationRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t key path setter for NCProtoTransferActiveConversationRequest.isAudioEnabled : NCProtoTransferActiveConversationRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t NCProtoTransferActiveConversationRequest.isAudioEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*NCProtoTransferActiveConversationRequest.isAudioEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoTransferActiveConversationRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t key path getter for NCProtoTransferActiveConversationRequest.isVideoEnabled : NCProtoTransferActiveConversationRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t key path setter for NCProtoTransferActiveConversationRequest.isVideoEnabled : NCProtoTransferActiveConversationRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t NCProtoTransferActiveConversationRequest.isVideoEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*NCProtoTransferActiveConversationRequest.isVideoEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoTransferActiveConversationRequest(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoTransferActiveConversationRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  active = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  v3 = a1 + active[5];
  result = UnknownStorage.init()();
  *(a1 + active[6]) = 2;
  *(a1 + active[7]) = 2;
  return result;
}

uint64_t key path getter for NCProtoTransferContinuityCallRequest.isAudioEnabled : NCProtoTransferContinuityCallRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoTransferContinuityCallRequest(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t key path setter for NCProtoTransferContinuityCallRequest.isAudioEnabled : NCProtoTransferContinuityCallRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoTransferContinuityCallRequest(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t NCProtoTransferContinuityCallRequest.isAudioEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoTransferContinuityCallRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*NCProtoTransferContinuityCallRequest.isAudioEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoTransferContinuityCallRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoTransferContinuityCallRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoTransferContinuityCallRequest(0);
  v3 = a1 + *(v2 + 20);
  result = UnknownStorage.init()();
  *(a1 + *(v2 + 24)) = 2;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoSenderIdentity.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for NCProtoSenderIdentity(0) + 24);
  return UnknownStorage.init()();
}

uint64_t NCProtoActiveConversation.uuidString.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for NCProtoActiveConversation.uuidString : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for NCProtoActiveConversation.uuidString : NCProtoActiveConversation(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t NCProtoActiveConversation.uuidString.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*NCProtoCallInfo.callerIDSubstring.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoCallInfo(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t NCProtoActiveConversation.clearUuidString()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t NCProtoActiveConversation.displayName.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for NCProtoActiveConversation.displayName : NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for NCProtoActiveConversation.displayName : NCProtoActiveConversation(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t NCProtoActiveConversation.displayName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*NCProtoCallInfo.callIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoCallInfo(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t NCProtoActiveConversation.clearDisplayName()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t NCProtoCallInfo.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoCallInfo(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NCProtoCallInfo.displayName : NCProtoCallInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoCallInfo(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NCProtoCallInfo.displayName : NCProtoCallInfo(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoCallInfo(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NCProtoCallInfo.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NCProtoCallInfo(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NCProtoCallInfo.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoCallInfo(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoCallInfo.displayName.modify;
}

Swift::Void __swiftcall NCProtoCallInfo.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for NCProtoCallInfo(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for NCProtoCallInfo.isBranded : NCProtoCallInfo@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  *a2 = *(a1 + *(result + 36)) & 1;
  return result;
}

uint64_t key path setter for NCProtoCallInfo.isBranded : NCProtoCallInfo(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoCallInfo(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t NCProtoCallInfo.isBranded.setter(char a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*NCProtoCallInfo.isBranded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoCallInfo(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoCallInfo.contactIdentifiersByHandle.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NCProtoCallInfo.senderIdentity.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for NCProtoCallInfo(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 40), v5, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v7 = type metadata accessor for NCProtoSenderIdentity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoSenderIdentity);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v9 = a1 + *(v7 + 24);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  }

  return result;
}

uint64_t key path getter for NCProtoCallInfo.senderIdentity : NCProtoCallInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NCProtoCallInfo(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v7 + 40), v6, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v8 = type metadata accessor for NCProtoSenderIdentity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoSenderIdentity);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v10 = a2 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoCallInfo.senderIdentity : NCProtoCallInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoSenderIdentity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoSenderIdentity);
  v9 = *(type metadata accessor for NCProtoCallInfo(0) + 40);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoSenderIdentity);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoCallInfo.senderIdentity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoCallInfo(0) + 40);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoSenderIdentity);
  v4 = type metadata accessor for NCProtoSenderIdentity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoCallInfo.senderIdentity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoSenderIdentity(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoCallInfo(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoSenderIdentity);
  }

  return NCProtoCallInfo.senderIdentity.modify;
}

void NCProtoCallInfo.senderIdentity.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoSenderIdentity);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoSenderIdentity);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoSenderIdentity);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoSenderIdentity);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NCProtoCallInfo.hasSenderIdentity.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for NCProtoCallInfo(0);
  outlined init with copy of NCProtoContactInfo?(v0 + *(v4 + 40), v3, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v5 = type metadata accessor for NCProtoSenderIdentity(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NCProtoContactInfo?(v3, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  return v6;
}

Swift::Void __swiftcall NCProtoCallInfo.clearSenderIdentity()()
{
  v1 = *(type metadata accessor for NCProtoCallInfo(0) + 40);
  outlined destroy of NCProtoContactInfo?(v0 + v1, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v2 = type metadata accessor for NCProtoSenderIdentity(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NCProtoCallInfo.handlesHash.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoCallInfo(0) + 44));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path getter for NCProtoCallInfo.handlesHash : NCProtoCallInfo@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoCallInfo(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for NCProtoCallInfo.handlesHash : NCProtoCallInfo(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoCallInfo(0) + 44));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NCProtoCallInfo.handlesHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NCProtoCallInfo(0) + 44);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NCProtoCallInfo.handlesHash.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoCallInfo(0) + 44);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NCProtoCallInfo.handlesHash.modify;
}

Swift::Void __swiftcall NCProtoCallInfo.clearHandlesHash()()
{
  v1 = v0 + *(type metadata accessor for NCProtoCallInfo(0) + 44);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_2255D3AC0;
}

uint64_t key path getter for NCProtoCallInfo.isEmergency : NCProtoCallInfo@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  *a2 = *(a1 + *(result + 48)) & 1;
  return result;
}

uint64_t key path setter for NCProtoCallInfo.isEmergency : NCProtoCallInfo(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoCallInfo(0);
  *(a2 + *(result + 48)) = v3;
  return result;
}

uint64_t NCProtoCallInfo.isEmergency.setter(char a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*NCProtoCallInfo.isEmergency.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoCallInfo(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoCallInfo.isEmergency.modify;
}

uint64_t key path getter for NCProtoCallInfo.handlesBlocked : NCProtoCallInfo@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  *a2 = *(a1 + *(result + 52)) & 1;
  return result;
}

uint64_t key path setter for NCProtoCallInfo.handlesBlocked : NCProtoCallInfo(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoCallInfo(0);
  *(a2 + *(result + 52)) = v3;
  return result;
}

uint64_t NCProtoCallInfo.handlesBlocked.setter(char a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*NCProtoCallInfo.handlesBlocked.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoCallInfo(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

void NCProtoUpdateBlockedStateRequest.request.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t NCProtoUpdateBlockedStateRequest.request.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t NCProtoUpdateBlockedStateRequest.spamCallModelInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  updated = type metadata accessor for NCProtoUpdateBlockedStateRequest(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(updated + 28), v5, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  v7 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoSpamCallModelInfo);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v9 = a1 + *(v7 + 36);
  UnknownStorage.init()();
  *(a1 + *(v7 + 40)) = xmmword_2255D3AC0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoUpdateBlockedStateRequest.spamCallModelInfo : NCProtoUpdateBlockedStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoSpamCallModelInfo);
  v9 = *(type metadata accessor for NCProtoUpdateBlockedStateRequest(0) + 28);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoSpamCallModelInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoUpdateBlockedStateRequest.spamCallModelInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoUpdateBlockedStateRequest(0) + 28);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoSpamCallModelInfo);
  v4 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double NCProtoSpamCallModelInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v3 = a1 + *(v2 + 36);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 40)) = xmmword_2255D3AC0;
  return result;
}

void (*NCProtoUpdateBlockedStateRequest.spamCallModelInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoUpdateBlockedStateRequest(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    v17 = v14 + *(v9 + 36);
    UnknownStorage.init()();
    *(v14 + *(v9 + 40)) = xmmword_2255D3AC0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoSpamCallModelInfo);
  }

  return NCProtoUpdateBlockedStateRequest.spamCallModelInfo.modify;
}

void NCProtoUpdateBlockedStateRequest.spamCallModelInfo.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoSpamCallModelInfo);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoSpamCallModelInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoSpamCallModelInfo);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoSpamCallModelInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoUpdateBlockedStateRequest.BlockRequest(uint64_t a1, uint64_t a2)
{
  updated = lazy protocol witness table accessor for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest();

  return MEMORY[0x28217E238](a1, a2, updated);
}

uint64_t NCProtoUpdateBlockedStateRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  updated = type metadata accessor for NCProtoUpdateBlockedStateRequest(0);
  v3 = a1 + *(updated + 24);
  UnknownStorage.init()();
  v4 = *(updated + 28);
  v5 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t NCProtoPolicyInfoUpdatedEvent.init()@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X8>)
{
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t (*NCProtoRingtoneConfiguration.identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoRingtoneConfiguration(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t NCProtoGetRingtoneConfigurationResponse.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  RingtoneConfigurationResponse = type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(RingtoneConfigurationResponse + 20), v5, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v7 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoRingtoneConfiguration);
  }

  UnknownStorage.init()();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  }

  return result;
}

uint64_t key path getter for NCProtoGetRingtoneConfigurationResponse.configuration : NCProtoGetRingtoneConfigurationResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  RingtoneConfigurationResponse = type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(RingtoneConfigurationResponse + 20), v6, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v8 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoRingtoneConfiguration);
  }

  UnknownStorage.init()();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoGetRingtoneConfigurationResponse.configuration : NCProtoGetRingtoneConfigurationResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoRingtoneConfiguration);
  v9 = *(type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoRingtoneConfiguration);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoGetRingtoneConfigurationResponse.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoRingtoneConfiguration);
  v4 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoGetRingtoneConfigurationResponse.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoRingtoneConfiguration);
  }

  return NCProtoGetRingtoneConfigurationResponse.configuration.modify;
}

void NCProtoGetRingtoneConfigurationResponse.configuration.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoRingtoneConfiguration);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoRingtoneConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoRingtoneConfiguration);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoRingtoneConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NCProtoSuggestionAdvertisementDidChangeEvent.hasAdvertisement.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of NCProtoContactInfo?(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NCProtoContactInfo?(v11, a1, a2);
  return v14;
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.clearAdvertisement()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of NCProtoContactInfo?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t NCProtoSpamCallModelInfo.initiatorHandle.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path getter for NCProtoSpamCallModelInfo.initiatorHandle : NCProtoSpamCallModelInfo@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for NCProtoSpamCallModelInfo.initiatorHandle : NCProtoSpamCallModelInfo(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NCProtoSpamCallModelInfo.initiatorHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NCProtoSpamCallModelInfo.initiatorHandle.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.modify;
}

Swift::Void __swiftcall NCProtoSpamCallModelInfo.clearInitiatorHandle()()
{
  v1 = v0 + *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_2255D3AC0;
}

uint64_t NCProtoSpamCallModelInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NCProtoSpamCallModelInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NCProtoLagunaConnectionRequest.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NCProtoLagunaConnectionRequest.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NCProtoStartLagunaSessionResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(v2);
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(v2);
  v3 = a1 + *(type metadata accessor for NCProtoStartLagunaSessionResponse(0) + 40);
  return UnknownStorage.init()();
}

uint64_t NCProtoStartConversationRequest.avMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NCProtoStartConversationRequest(0);
  v4 = (v1 + *(result + 20));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for NCProtoStartConversationRequest.avMode : NCProtoStartConversationRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for NCProtoStartConversationRequest(0);
  v5 = (a1 + *(result + 20));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t key path setter for NCProtoStartConversationRequest.avMode : NCProtoStartConversationRequest(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for NCProtoStartConversationRequest(0);
  v6 = a2 + *(result + 20);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t NCProtoStartConversationRequest.avMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NCProtoStartConversationRequest(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*NCProtoStartConversationRequest.avMode.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoStartConversationRequest(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

Swift::Void __swiftcall NCProtoStartConversationRequest.clearAvMode()()
{
  v1 = v0 + *(type metadata accessor for NCProtoStartConversationRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t NCProtoStartConversationRequest.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for NCProtoStartConversationRequest(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t NCProtoRingtoneConfiguration.identifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for NCProtoRingtoneConfiguration.identifier : NCProtoRingtoneConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for NCProtoRingtoneConfiguration.identifier : NCProtoRingtoneConfiguration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t NCProtoRingtoneConfiguration.identifier.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*NCProtoJoinActiveConversationRequest.activeConversationUuidString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoJoinActiveConversationRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t NCProtoRingtoneConfiguration.clearIdentifier()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t key path getter for NCProtoJoinActiveConversationRequest.isAudioEnabled : NCProtoJoinActiveConversationRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t key path setter for NCProtoJoinActiveConversationRequest.isAudioEnabled : NCProtoJoinActiveConversationRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t NCProtoJoinActiveConversationRequest.isAudioEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*NCProtoJoinActiveConversationRequest.isAudioEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoJoinActiveConversationRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t key path getter for NCProtoJoinActiveConversationRequest.isVideoEnabled : NCProtoJoinActiveConversationRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t key path setter for NCProtoJoinActiveConversationRequest.isVideoEnabled : NCProtoJoinActiveConversationRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t NCProtoJoinActiveConversationRequest.isVideoEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*NCProtoJoinActiveConversationRequest.isVideoEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoJoinActiveConversationRequest(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

int *NCProtoJoinActiveConversationRequest.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  return result;
}

uint64_t (*NCProtoCreateLinkConversationResponse.uuidString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoCreateLinkConversationResponse(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t NCProtoRingtoneConfiguration.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t (*NCProtoLinkConversationSendLetMeInRequest.uuidString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoLinkConversationSendLetMeInRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t (*NCProtoLinkConversationCancelRequest.uuidString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoLinkConversationCancelRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t (*NCProtoDeclineContinuityCallRequest.uuidString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoDeclineContinuityCallRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t NCProtoGetAddressableContactsResponse.contactSortOrder.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoGetAddressableContactsResponse(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for NCProtoGetAddressableContactsResponse.contactSortOrder : NCProtoGetAddressableContactsResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for NCProtoGetAddressableContactsResponse(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for NCProtoGetAddressableContactsResponse.contactSortOrder : NCProtoGetAddressableContactsResponse(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoGetAddressableContactsResponse(0);
  v5 = a2 + *(result + 24);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t NCProtoGetAddressableContactsResponse.contactSortOrder.setter(uint64_t a1)
{
  result = type metadata accessor for NCProtoGetAddressableContactsResponse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NCProtoGetAddressableContactsResponse.contactSortOrder.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NCProtoGetAddressableContactsResponse(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return NCProtoGetAddressableContactsResponse.contactSortOrder.modify;
}

Swift::Void __swiftcall NCProtoGetAddressableContactsResponse.clearContactSortOrder()()
{
  v1 = v0 + *(type metadata accessor for NCProtoGetAddressableContactsResponse(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NCProtoGetAddressableContactsResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  AddressableContactsResponse = type metadata accessor for NCProtoGetAddressableContactsResponse(0);
  v3 = a1 + *(AddressableContactsResponse + 20);
  result = UnknownStorage.init()();
  v5 = a1 + *(AddressableContactsResponse + 24);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t NCProtoGetImageForContactRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for NCProtoGetImageForContactRequest(0) + 24);
  return UnknownStorage.init()();
}

uint64_t NCProtoGetImageForContactResponse.imageData.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path getter for NCProtoGetImageForContactResponse.imageData : NCProtoGetImageForContactResponse@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for NCProtoGetImageForContactResponse.imageData : NCProtoGetImageForContactResponse(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NCProtoGetImageForContactResponse.imageData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NCProtoGetImageForContactResponse.imageData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.modify;
}

Swift::Void __swiftcall NCProtoGetImageForContactResponse.clearImageData()()
{
  v1 = v0 + *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_2255D3AC0;
}

uint64_t NCProtoPullLagunaSessionToTVRequest.reason.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1(0);
  v5 = (v2 + *(result + 24));
  if (*(v5 + 9))
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = *v5;
    v7 = *(v5 + 8);
  }

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t key path getter for NCProtoPullLagunaSessionToTVRequest.reason : NCProtoPullLagunaSessionToTVRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(0);
  v6 = (a1 + *(result + 24));
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 9);
  if (v9)
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = (v9 | v8) & 1;
  return result;
}

uint64_t key path setter for NCProtoPullLagunaSessionToTVRequest.reason : NCProtoPullLagunaSessionToTVRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  result = a5(0);
  v9 = a2 + *(result + 24);
  *v9 = v6;
  *(v9 + 8) = v7;
  *(v9 + 9) = 0;
  return result;
}

uint64_t NCProtoPullLagunaSessionToTVRequest.reason.setter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = a2(0);
  v6 = v2 + *(result + 24);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*NCProtoGetImageForContactResponse.imageType.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

uint64_t NCProtoPullLagunaSessionToTVRequest.clearReason()(uint64_t (*a1)(void))
{
  result = a1(0);
  v3 = v1 + *(result + 24);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

double NCProtoGetImageForContactResponse.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  ImageForContactResponse = type metadata accessor for NCProtoGetImageForContactResponse(0);
  result = 0.0;
  *(a1 + *(ImageForContactResponse + 20)) = xmmword_2255D3AC0;
  v4 = a1 + *(ImageForContactResponse + 24);
  *v4 = 0;
  *(v4 + 8) = 256;
  return result;
}

uint64_t NCProtoGetCallDisplayDetailsResponse.callInfo.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 20), v5, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v7 = type metadata accessor for NCProtoCallInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoCallInfo);
  }

  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = a1 + v7[5];
  UnknownStorage.init()();
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v7[9]) = 2;
  v13 = v7[10];
  v14 = type metadata accessor for NCProtoSenderIdentity(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  *(a1 + v7[11]) = xmmword_2255D3AC0;
  *(a1 + v7[12]) = 2;
  *(a1 + v7[13]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoGetCallDisplayDetailsResponse.callInfo : NCProtoGetCallDisplayDetailsResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoCallInfo);
  v9 = *(type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoCallInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoGetCallDisplayDetailsResponse.callInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoCallInfo);
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoGetCallDisplayDetailsResponse.callInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoCallInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v17 = v14 + v9[5];
    UnknownStorage.init()();
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    *(v14 + v9[9]) = 2;
    v21 = v9[10];
    v22 = type metadata accessor for NCProtoSenderIdentity(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    *(v14 + v9[11]) = xmmword_2255D3AC0;
    *(v14 + v9[12]) = 2;
    *(v14 + v9[13]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoCallInfo);
  }

  return NCProtoGetCallDisplayDetailsResponse.callInfo.modify;
}

void NCProtoGetCallDisplayDetailsResponse.callInfo.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoCallInfo);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoCallInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoCallInfo);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoCallInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t NCProtoDestinationCapabilities.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  v1 = a1 + *(type metadata accessor for NCProtoDestinationCapabilities(0) + 28);
  return UnknownStorage.init()();
}

uint64_t (*NCProtoGetDestinationCapabilitiesRequest.destinationType.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesRequest(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoActiveConversation.avMode.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType(uint64_t a1, uint64_t a2)
{
  DestinationCapabilities = lazy protocol witness table accessor for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType();

  return MEMORY[0x28217E238](a1, a2, DestinationCapabilities);
}

uint64_t NCProtoPullLagunaSessionToTVRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v3 = a1(0);
  v4 = a2 + *(v3 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(v3 + 24);
  *v6 = 0;
  *(v6 + 4) = 256;
  return result;
}

uint64_t NCProtoGetDestinationCapabilitiesResponse.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  DestinationCapabilitiesResponse = type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(DestinationCapabilitiesResponse + 20), v5, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v7 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoDestinationCapabilities);
  }

  *a1 = 0;
  *(a1 + 2) = 0;
  v9 = a1 + *(v7 + 28);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  }

  return result;
}

uint64_t key path getter for NCProtoGetDestinationCapabilitiesResponse.capabilities : NCProtoGetDestinationCapabilitiesResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  DestinationCapabilitiesResponse = type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(DestinationCapabilitiesResponse + 20), v6, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v8 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoDestinationCapabilities);
  }

  *a2 = 0;
  *(a2 + 2) = 0;
  v10 = a2 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  }

  return result;
}

uint64_t key path setter for NCProtoGetDestinationCapabilitiesResponse.capabilities : NCProtoGetDestinationCapabilitiesResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoDestinationCapabilities);
  v9 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoDestinationCapabilities);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoGetDestinationCapabilitiesResponse.capabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoDestinationCapabilities);
  v4 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoGetDestinationCapabilitiesResponse.capabilities.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of NCProtoContactInfo?(v1 + v15, v8, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 2) = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
    }
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v8, v14, type metadata accessor for NCProtoDestinationCapabilities);
  }

  return NCProtoGetDestinationCapabilitiesResponse.capabilities.modify;
}

void NCProtoGetDestinationCapabilitiesResponse.capabilities.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoDestinationCapabilities);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoDestinationCapabilities);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoDestinationCapabilities);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoDestinationCapabilities);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t (*NCProtoIncomingCallBannerActionRequest.routeIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NCProtoIncomingCallBannerActionRequest(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NCProtoContactInfo.organizationName.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIncomingCallBannerActionRequest.Action(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoIncomingCallBannerActionRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoIncomingCallBannerActionRequest(0);
  v3 = a1 + *(v2 + 24);
  result = UnknownStorage.init()();
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t key path getter for NCProtoCallState.isVideoEnabled : NCProtoCallState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoCallState(0);
  *a2 = *(a1 + *(result + 20)) & 1;
  return result;
}

uint64_t key path setter for NCProtoCallState.isVideoEnabled : NCProtoCallState(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoCallState(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t NCProtoCallState.isVideoEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoCallState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*NCProtoCallState.isVideoEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoCallState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t key path getter for NCProtoCallState.isAudioEnabled : NCProtoCallState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoCallState(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t key path setter for NCProtoCallState.isAudioEnabled : NCProtoCallState(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoCallState(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t NCProtoCallState.isAudioEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoCallState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*NCProtoCallState.isAudioEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoCallState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t (*NCProtoCallState.avMode.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoCallState(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return NCProtoCallState.avMode.modify;
}

uint64_t key path getter for NCProtoCallState.isCaptioningEnabled : NCProtoCallState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoCallState(0);
  *a2 = *(a1 + *(result + 32)) & 1;
  return result;
}

uint64_t key path setter for NCProtoCallState.isCaptioningEnabled : NCProtoCallState(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoCallState(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t NCProtoCallState.isCaptioningEnabled.setter(char a1)
{
  result = type metadata accessor for NCProtoCallState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*NCProtoCallState.isCaptioningEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoCallState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoCallStateRequest.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  v1 = a1 + *(type metadata accessor for NCProtoCallStateRequest(0) + 20);
  return UnknownStorage.init()();
}

uint64_t NCProtoCallStateResponse.callState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for NCProtoCallStateResponse(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 20), v5, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v7 = type metadata accessor for NCProtoCallState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v5, a1, type metadata accessor for NCProtoCallState);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 2;
  *(a1 + v7[6]) = 2;
  v9 = a1 + v7[7];
  *v9 = 0;
  *(v9 + 8) = 256;
  *(a1 + v7[8]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v5, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  return result;
}

uint64_t key path getter for NCProtoCallStateResponse.callState : NCProtoCallStateResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NCProtoCallStateResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v7 + 20), v6, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v8 = type metadata accessor for NCProtoCallState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoCallState);
  }

  UnknownStorage.init()();
  *(a2 + v8[5]) = 2;
  *(a2 + v8[6]) = 2;
  v10 = a2 + v8[7];
  *v10 = 0;
  *(v10 + 8) = 256;
  *(a2 + v8[8]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  return result;
}